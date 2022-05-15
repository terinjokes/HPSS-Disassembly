; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    ld a, $81                                     ; $4000: $3e $81
    or [hl]                                       ; $4002: $b6
    dec h                                         ; $4003: $25
    rla                                           ; $4004: $17
    ld a, [hl-]                                   ; $4005: $3a
    ld a, d                                       ; $4006: $7a
    ld [$5188], a                                 ; $4007: $ea $88 $51
    ld e, [hl]                                    ; $400a: $5e
    ld b, [hl]                                    ; $400b: $46
    ld e, h                                       ; $400c: $5c
    ld [hl], h                                    ; $400d: $74
    inc sp                                        ; $400e: $33
    ld e, l                                       ; $400f: $5d
    push af                                       ; $4010: $f5
    set 3, a                                      ; $4011: $cb $df
    nop                                           ; $4013: $00
    db $dd                                        ; $4014: $dd
    db $ed                                        ; $4015: $ed
    ld [hl], h                                    ; $4016: $74
    ld d, $c7                                     ; $4017: $16 $c7
    and c                                         ; $4019: $a1
    ld b, e                                       ; $401a: $43
    di                                            ; $401b: $f3
    xor e                                         ; $401c: $ab
    cp h                                          ; $401d: $bc
    xor $57                                       ; $401e: $ee $57
    ld a, [bc]                                    ; $4020: $0a
    and c                                         ; $4021: $a1
    sub a                                         ; $4022: $97
    db $fd                                        ; $4023: $fd
    and d                                         ; $4024: $a2
    sbc e                                         ; $4025: $9b
    jp hl                                         ; $4026: $e9


    xor d                                         ; $4027: $aa
    ld e, a                                       ; $4028: $5f
    cp [hl]                                       ; $4029: $be
    daa                                           ; $402a: $27
    nop                                           ; $402b: $00
    halt                                          ; $402c: $76
    ld a, [de]                                    ; $402d: $1a
    ld a, a                                       ; $402e: $7f
    and c                                         ; $402f: $a1
    and e                                         ; $4030: $a3
    call nz, Call_000_351f                        ; $4031: $c4 $1f $35
    halt                                          ; $4034: $76
    xor l                                         ; $4035: $ad
    xor $d2                                       ; $4036: $ee $d2
    add hl, de                                    ; $4038: $19
    adc d                                         ; $4039: $8a
    cp h                                          ; $403a: $bc
    rst $38                                       ; $403b: $ff
    ld e, c                                       ; $403c: $59
    inc e                                         ; $403d: $1c
    ld d, a                                       ; $403e: $57
    ld a, [hl]                                    ; $403f: $7e
    and $25                                       ; $4040: $e6 $25
    ld d, d                                       ; $4042: $52
    ld a, [hl]                                    ; $4043: $7e
    sbc [hl]                                      ; $4044: $9e
    adc e                                         ; $4045: $8b
    ld [hl], $b9                                  ; $4046: $36 $b9
    dec hl                                        ; $4048: $2b
    db $28, $98                                   ; $4049: $28 $98
    ld a, b                                       ; $404b: $78
    inc bc                                        ; $404c: $03
    cp l                                          ; $404d: $bd
    jp z, Jump_03e_626a                           ; $404e: $ca $6a $62

    ld [$e24c], a                                 ; $4051: $ea $4c $e2
    ld [c], a                                     ; $4054: $e2
    ld h, e                                       ; $4055: $63
    db $fc                                        ; $4056: $fc
    add l                                         ; $4057: $85
    adc [hl]                                      ; $4058: $8e
    ld [de], a                                    ; $4059: $12
    ld a, a                                       ; $405a: $7f
    add [hl]                                      ; $405b: $86
    ld [hl+], a                                   ; $405c: $22
    rst $28                                       ; $405d: $ef
    ld a, a                                       ; $405e: $7f
    jp c, $9188                                   ; $405f: $da $88 $91

    ld a, [hl-]                                   ; $4062: $3a
    adc e                                         ; $4063: $8b
    db $e3                                        ; $4064: $e3
    and d                                         ; $4065: $a2
    sbc e                                         ; $4066: $9b
    jp hl                                         ; $4067: $e9


    xor d                                         ; $4068: $aa
    ld e, a                                       ; $4069: $5f
    ld a, [hl]                                    ; $406a: $7e
    call nc, Call_000_2129                        ; $406b: $d4 $29 $21
    daa                                           ; $406e: $27
    ld a, a                                       ; $406f: $7f
    inc bc                                        ; $4070: $03
    sub a                                         ; $4071: $97
    cp b                                          ; $4072: $b8
    xor d                                         ; $4073: $aa
    inc sp                                        ; $4074: $33
    inc d                                         ; $4075: $14
    ld a, c                                       ; $4076: $79
    rst $38                                       ; $4077: $ff
    and e                                         ; $4078: $a3
    add $ae                                       ; $4079: $c6 $ae
    ld d, c                                       ; $407b: $51
    db $e3                                        ; $407c: $e3
    cpl                                           ; $407d: $2f
    ld [hl], h                                    ; $407e: $74
    sub h                                         ; $407f: $94
    ld hl, sp+$37                                 ; $4080: $f8 $37
    nop                                           ; $4082: $00
    rst $20                                       ; $4083: $e7
    ld d, b                                       ; $4084: $50
    adc l                                         ; $4085: $8d
    db $eb                                        ; $4086: $eb
    ld [$1675], sp                                ; $4087: $08 $75 $16
    rst $00                                       ; $408a: $c7
    ld d, c                                       ; $408b: $51
    db $e3                                        ; $408c: $e3
    cpl                                           ; $408d: $2f
    ld [hl], h                                    ; $408e: $74
    sub h                                         ; $408f: $94
    ld hl, sp-$5d                                 ; $4090: $f8 $a3
    add $ae                                       ; $4092: $c6 $ae
    push de                                       ; $4094: $d5
    adc $ba                                       ; $4095: $ce $ba
    ld c, [hl]                                    ; $4097: $4e
    inc hl                                        ; $4098: $23
    adc $50                                       ; $4099: $ce $50
    db $e4                                        ; $409b: $e4
    db $fd                                        ; $409c: $fd
    rst $18                                       ; $409d: $df
    nop                                           ; $409e: $00
    ld a, l                                       ; $409f: $7d
    db $db                                        ; $40a0: $db
    db $ec                                        ; $40a1: $ec
    rra                                           ; $40a2: $1f
    sub d                                         ; $40a3: $92
    and $17                                       ; $40a4: $e6 $17
    and [hl]                                      ; $40a6: $a6
    rla                                           ; $40a7: $17
    sbc e                                         ; $40a8: $9b
    rst $18                                       ; $40a9: $df
    ld [hl], a                                    ; $40aa: $77
    and h                                         ; $40ab: $a4
    ret                                           ; $40ac: $c9


    xor b                                         ; $40ad: $a8
    pop af                                        ; $40ae: $f1
    rla                                           ; $40af: $17
    ld a, [hl-]                                   ; $40b0: $3a
    ld c, d                                       ; $40b1: $4a
    db $fc                                        ; $40b2: $fc
    dec de                                        ; $40b3: $1b
    nop                                           ; $40b4: $00
    db $dd                                        ; $40b5: $dd
    ld [bc], a                                    ; $40b6: $02
    jp nc, $cd8b                                  ; $40b7: $d2 $8b $cd

    cpl                                           ; $40ba: $2f
    ld hl, sp+$1d                                 ; $40bb: $f8 $1d
    jp z, $fb8c                                   ; $40bd: $ca $8c $fb

    ld h, d                                       ; $40c0: $62
    ld [hl], c                                    ; $40c1: $71
    adc l                                         ; $40c2: $8d

jr_03e_40c3:
    ld [hl-], a                                   ; $40c3: $32
    sub e                                         ; $40c4: $93
    ld a, [$f28b]                                 ; $40c5: $fa $8b $f2
    cp d                                          ; $40c8: $ba
    ld a, [c]                                     ; $40c9: $f2
    dec bc                                        ; $40ca: $0b
    dec e                                         ; $40cb: $1d
    dec h                                         ; $40cc: $25
    cp $0c                                        ; $40cd: $fe $0c
    ld b, l                                       ; $40cf: $45
    sbc $7f                                       ; $40d0: $de $7f
    adc a                                         ; $40d2: $8f
    sbc l                                         ; $40d3: $9d
    jp $f4c5                                      ; $40d4: $c3 $c5 $f4


    cp c                                          ; $40d7: $b9
    sbc d                                         ; $40d8: $9a
    sbc b                                         ; $40d9: $98
    cp d                                          ; $40da: $ba
    ld a, b                                       ; $40db: $78
    nop                                           ; $40dc: $00
    ld a, h                                       ; $40dd: $7c
    and [hl]                                      ; $40de: $a6
    cp h                                          ; $40df: $bc

jr_03e_40e0:
    db $e4                                        ; $40e0: $e4
    dec c                                         ; $40e1: $0d
    nop                                           ; $40e2: $00
    sub a                                         ; $40e3: $97
    dec a                                         ; $40e4: $3d
    add $d7                                       ; $40e5: $c6 $d7
    add l                                         ; $40e7: $85
    adc [hl]                                      ; $40e8: $8e
    ld [de], a                                    ; $40e9: $12
    ld e, a                                       ; $40ea: $5f
    ld h, a                                       ; $40eb: $67
    jr z, jr_03e_40e0                             ; $40ec: $28 $f2

    cp $f5                                        ; $40ee: $fe $f5
    cp [hl]                                       ; $40f0: $be
    rst $28                                       ; $40f1: $ef
    ld hl, sp-$48                                 ; $40f2: $f8 $b8
    jr nc, jr_03e_40c3                            ; $40f4: $30 $cd

    db $eb                                        ; $40f6: $eb
    ld c, d                                       ; $40f7: $4a
    ld sp, hl                                     ; $40f8: $f9
    ld a, [bc]                                    ; $40f9: $0a
    push af                                       ; $40fa: $f5
    ld b, $7d                                     ; $40fb: $06 $7d
    ld [hl], e                                    ; $40fd: $73
    ld h, c                                       ; $40fe: $61
    ld a, d                                       ; $40ff: $7a
    jp hl                                         ; $4100: $e9


    jp nc, $a311                                  ; $4101: $d2 $11 $a3

    cp h                                          ; $4104: $bc
    adc h                                         ; $4105: $8c
    jr c, jr_03e_4174                             ; $4106: $38 $6c

    ld [$fc39], sp                                ; $4108: $08 $39 $fc
    sbc c                                         ; $410b: $99
    xor [hl]                                      ; $410c: $ae
    ld a, [$e1e5]                                 ; $410d: $fa $e5 $e1
    db $d3                                        ; $4110: $d3
    cpl                                           ; $4111: $2f
    sub l                                         ; $4112: $95
    ld e, h                                       ; $4113: $5c
    ld sp, hl                                     ; $4114: $f9
    ld b, l                                       ; $4115: $45
    ld h, a                                       ; $4116: $67
    db $fd                                        ; $4117: $fd
    dec de                                        ; $4118: $1b
    nop                                           ; $4119: $00
    db $dd                                        ; $411a: $dd
    inc bc                                        ; $411b: $03
    jp nc, $cd8b                                  ; $411c: $d2 $8b $cd

    ld c, a                                       ; $411f: $4f
    add hl, hl                                    ; $4120: $29
    or e                                          ; $4121: $b3
    dec bc                                        ; $4122: $0b
    cp h                                          ; $4123: $bc
    xor h                                         ; $4124: $ac
    rst $10                                       ; $4125: $d7
    jp z, Jump_03e_74cf                           ; $4126: $ca $cf $74

    push de                                       ; $4129: $d5
    cpl                                           ; $412a: $2f
    ccf                                           ; $412b: $3f
    rst $08                                       ; $412c: $cf

jr_03e_412d:
    reti                                          ; $412d: $d9


    cp a                                          ; $412e: $bf
    adc b                                         ; $412f: $88
    ld [hl], l                                    ; $4130: $75
    ld bc, $2319                                  ; $4131: $01 $19 $23
    and l                                         ; $4134: $a5
    rst $20                                       ; $4135: $e7
    ld a, [$7c26]                                 ; $4136: $fa $26 $7c
    xor l                                         ; $4139: $ad
    ld c, $53                                     ; $413a: $0e $53
    ld e, e                                       ; $413c: $5b
    and a                                         ; $413d: $a7
    ldh a, [rTMA]                                 ; $413e: $f0 $06
    ld a, l                                       ; $4140: $7d
    ld [hl], e                                    ; $4141: $73
    and c                                         ; $4142: $a1
    and e                                         ; $4143: $a3
    and a                                         ; $4144: $a7
    adc [hl]                                      ; $4145: $8e
    jr jr_03e_412d                                ; $4146: $18 $e5

    dec b                                         ; $4148: $05
    cp [hl]                                       ; $4149: $be
    ld l, [hl]                                    ; $414a: $6e
    ld hl, $f725                                  ; $414b: $21 $25 $f7
    ld h, l                                       ; $414e: $65
    dec [hl]                                      ; $414f: $35
    ld sp, $9875                                  ; $4150: $31 $75 $98
    adc e                                         ; $4153: $8b
    adc l                                         ; $4154: $8d
    ld c, b                                       ; $4155: $48
    sbc l                                         ; $4156: $9d
    push bc                                       ; $4157: $c5
    ld [hl], c                                    ; $4158: $71
    dec c                                         ; $4159: $0d
    inc hl                                        ; $415a: $23
    ld sp, $4cbe                                  ; $415b: $31 $be $4c
    cp a                                          ; $415e: $bf
    inc [hl]                                      ; $415f: $34
    jp hl                                         ; $4160: $e9


    ld bc, $9700                                  ; $4161: $01 $00 $97
    cp b                                          ; $4164: $b8
    xor d                                         ; $4165: $aa
    db $d3                                        ; $4166: $d3
    sub h                                         ; $4167: $94
    ld d, b                                       ; $4168: $50
    xor b                                         ; $4169: $a8
    ld a, a                                       ; $416a: $7f
    rst $18                                       ; $416b: $df
    scf                                           ; $416c: $37
    dec [hl]                                      ; $416d: $35
    cp $42                                        ; $416e: $fe $42
    ld b, a                                       ; $4170: $47
    adc c                                         ; $4171: $89
    ccf                                           ; $4172: $3f
    ld l, d                                       ; $4173: $6a

jr_03e_4174:
    db $ec                                        ; $4174: $ec
    sbc d                                         ; $4175: $9a
    and c                                         ; $4176: $a1
    ret z                                         ; $4177: $c8

    ei                                            ; $4178: $fb
    cp a                                          ; $4179: $bf
    ld bc, $4717                                  ; $417a: $01 $17 $47
    ld sp, hl                                     ; $417d: $f9
    sbc c                                         ; $417e: $99
    xor [hl]                                      ; $417f: $ae
    ld a, [$47e5]                                 ; $4180: $fa $e5 $47
    ld e, h                                       ; $4183: $5c
    ld sp, hl                                     ; $4184: $f9
    ld e, c                                       ; $4185: $59
    inc e                                         ; $4186: $1c
    add a                                         ; $4187: $87
    cp c                                          ; $4188: $b9
    ret nc                                        ; $4189: $d0

    pop de                                        ; $418a: $d1
    ld d, e                                       ; $418b: $53
    ld b, a                                       ; $418c: $47
    adc h                                         ; $418d: $8c
    ld a, [c]                                     ; $418e: $f2
    ld [hl], d                                    ; $418f: $72
    inc bc                                        ; $4190: $03
    halt                                          ; $4191: $76
    ld a, [de]                                    ; $4192: $1a
    ld a, a                                       ; $4193: $7f
    and c                                         ; $4194: $a1
    and e                                         ; $4195: $a3
    call nz, Call_000_351f                        ; $4196: $c4 $1f $35
    halt                                          ; $4199: $76
    xor l                                         ; $419a: $ad
    db $d3                                        ; $419b: $d3
    adc b                                         ; $419c: $88
    inc sp                                        ; $419d: $33
    inc d                                         ; $419e: $14
    ld a, c                                       ; $419f: $79
    rst $38                                       ; $41a0: $ff
    scf                                           ; $41a1: $37
    nop                                           ; $41a2: $00
    halt                                          ; $41a3: $76
    ld l, d                                       ; $41a4: $6a
    ld [de], a                                    ; $41a5: $12
    ld [c], a                                     ; $41a6: $e2
    ld c, d                                       ; $41a7: $4a
    ld [$421a], a                                 ; $41a8: $ea $1a $42
    ld b, d                                       ; $41ab: $42
    rst $18                                       ; $41ac: $df
    adc b                                         ; $41ad: $88
    sub c                                         ; $41ae: $91
    ld a, [hl-]                                   ; $41af: $3a
    db $eb                                        ; $41b0: $eb
    ld b, d                                       ; $41b1: $42
    ld d, a                                       ; $41b2: $57
    db $f4                                        ; $41b3: $f4
    rla                                           ; $41b4: $17
    jr jr_03e_4216                                ; $41b5: $18 $5f

    ld [c], a                                     ; $41b7: $e2
    jp nz, Jump_03e_5f97                          ; $41b8: $c2 $97 $5f

    call $a6fe                                    ; $41bb: $cd $fe $a6
    cp h                                          ; $41be: $bc
    sub h                                         ; $41bf: $94
    call nc, $001b                                ; $41c0: $d4 $1b $00
    inc bc                                        ; $41c3: $03
    inc bc                                        ; $41c4: $03
    ld a, l                                       ; $41c5: $7d
    ld [hl], e                                    ; $41c6: $73
    ld [$3d0c], a                                 ; $41c7: $ea $0c $3d
    add a                                         ; $41ca: $87
    rst $28                                       ; $41cb: $ef
    rst $38                                       ; $41cc: $ff
    ld e, [hl]                                    ; $41cd: $5e
    ld b, b                                       ; $41ce: $40
    and e                                         ; $41cf: $a3
    ld a, b                                       ; $41d0: $78
    ld [$d3a2], a                                 ; $41d1: $ea $a2 $d3
    dec [hl]                                      ; $41d4: $35
    add h                                         ; $41d5: $84

jr_03e_41d6:
    add h                                         ; $41d6: $84
    cp [hl]                                       ; $41d7: $be
    ld de, $f523                                  ; $41d8: $11 $23 $f5
    ld b, $dd                                     ; $41db: $06 $dd
    adc $6e                                       ; $41dd: $ce $6e
    call nz, $b31e                                ; $41df: $c4 $1e $b3
    ld a, a                                       ; $41e2: $7f
    sbc l                                         ; $41e3: $9d
    ld de, $cfbe                                  ; $41e4: $11 $be $cf
    ld d, e                                       ; $41e7: $53
    ld bc, $1d7d                                  ; $41e8: $01 $7d $1d
    dec hl                                        ; $41eb: $2b
    cp a                                          ; $41ec: $bf
    add b                                         ; $41ed: $80
    sub a                                         ; $41ee: $97
    ret c                                         ; $41ef: $d8

    db $fc                                        ; $41f0: $fc
    inc bc                                        ; $41f1: $03
    cp l                                          ; $41f2: $bd
    ld e, a                                       ; $41f3: $5f
    and b                                         ; $41f4: $a0
    sub a                                         ; $41f5: $97
    dec b                                         ; $41f6: $05
    cp h                                          ; $41f7: $bc
    call nz, $1fe6                                ; $41f8: $c4 $e6 $1f
    nop                                           ; $41fb: $00
    add c                                         ; $41fc: $81
    inc l                                         ; $41fd: $2c
    inc [hl]                                      ; $41fe: $34
    and $de                                       ; $41ff: $e6 $de
    ld sp, hl                                     ; $4201: $f9
    cp [hl]                                       ; $4202: $be
    ld h, l                                       ; $4203: $65
    db $fd                                        ; $4204: $fd
    nop                                           ; $4205: $00
    ld bc, $b12f                                  ; $4206: $01 $2f $b1
    ld sp, hl                                     ; $4209: $f9
    rst $10                                       ; $420a: $d7
    sbc l                                         ; $420b: $9d
    sbc l                                         ; $420c: $9d
    add sp, $14                                   ; $420d: $e8 $14
    nop                                           ; $420f: $00
    db $dd                                        ; $4210: $dd
    ei                                            ; $4211: $fb
    and $a8                                       ; $4212: $e6 $a8
    or c                                          ; $4214: $b1
    ld c, e                                       ; $4215: $4b

jr_03e_4216:
    rla                                           ; $4216: $17
    ld a, h                                       ; $4217: $7c
    adc c                                         ; $4218: $89
    add hl, sp                                    ; $4219: $39
    rst $08                                       ; $421a: $cf
    reti                                          ; $421b: $d9


    ld d, e                                       ; $421c: $53
    ld [$c896], a                                 ; $421d: $ea $96 $c8
    sbc [hl]                                      ; $4220: $9e
    dec bc                                        ; $4221: $0b
    db $e4                                        ; $4222: $e4
    adc h                                         ; $4223: $8c
    sub b                                         ; $4224: $90
    or e                                          ; $4225: $b3
    jr c, jr_03e_41d6                             ; $4226: $38 $ae

    db $e4                                        ; $4228: $e4
    db $f4                                        ; $4229: $f4
    dec sp                                        ; $422a: $3b
    ld e, h                                       ; $422b: $5c
    ld c, h                                       ; $422c: $4c
    sbc a                                         ; $422d: $9f
    scf                                           ; $422e: $37
    nop                                           ; $422f: $00
    ld a, l                                       ; $4230: $7d
    ld [hl], e                                    ; $4231: $73
    dec [hl]                                      ; $4232: $35
    and a                                         ; $4233: $a7
    add hl, hl                                    ; $4234: $29
    and c                                         ; $4235: $a1
    db $10                                        ; $4236: $10
    dec a                                         ; $4237: $3d
    ld h, a                                       ; $4238: $67
    ld [hl], c                                    ; $4239: $71
    inc e                                         ; $423a: $1c
    cp [hl]                                       ; $423b: $be
    ld l, a                                       ; $423c: $6f
    ld e, h                                       ; $423d: $5c
    ld sp, hl                                     ; $423e: $f9
    dec a                                         ; $423f: $3d
    db $e4                                        ; $4240: $e4
    ld e, $23                                     ; $4241: $1e $23
    ld l, a                                       ; $4243: $6f
    nop                                           ; $4244: $00
    ld bc, $bc94                                  ; $4245: $01 $94 $bc
    rst $28                                       ; $4248: $ef
    cp e                                          ; $4249: $bb
    cp e                                          ; $424a: $bb
    or c                                          ; $424b: $b1

jr_03e_424c:
    xor l                                         ; $424c: $ad
    ld [hl], e                                    ; $424d: $73
    pop bc                                        ; $424e: $c1
    rst $00                                       ; $424f: $c7
    add l                                         ; $4250: $85
    jp hl                                         ; $4251: $e9


    sbc e                                         ; $4252: $9b
    rst $08                                       ; $4253: $cf
    ld a, c                                       ; $4254: $79
    sbc d                                         ; $4255: $9a
    ld h, $a3                                     ; $4256: $26 $a3
    and $3c                                       ; $4258: $e6 $3c
    ld d, a                                       ; $425a: $57
    db $db                                        ; $425b: $db
    db $f4                                        ; $425c: $f4
    cp h                                          ; $425d: $bc
    rst $28                                       ; $425e: $ef
    dec de                                        ; $425f: $1b
    nop                                           ; $4260: $00
    cp l                                          ; $4261: $bd
    add l                                         ; $4262: $85
    add hl, sp                                    ; $4263: $39
    adc e                                         ; $4264: $8b
    db $e3                                        ; $4265: $e3
    jr nc, jr_03e_42dd                            ; $4266: $30 $75

    pop bc                                        ; $4268: $c1
    ld e, a                                       ; $4269: $5f
    jp c, $bcf8                                   ; $426a: $da $f8 $bc

    rst $28                                       ; $426d: $ef
    dec de                                        ; $426e: $1b
    nop                                           ; $426f: $00
    db $dd                                        ; $4270: $dd
    db $ed                                        ; $4271: $ed
    ld e, a                                       ; $4272: $5f
    ld d, a                                       ; $4273: $57
    ld l, c                                       ; $4274: $69
    ld a, [de]                                    ; $4275: $1a
    ld [hl], e                                    ; $4276: $73
    ccf                                           ; $4277: $3f
    ld a, e                                       ; $4278: $7b
    ld c, d                                       ; $4279: $4a
    db $dd                                        ; $427a: $dd
    ld [de], a                                    ; $427b: $12
    cp c                                          ; $427c: $b9
    di                                            ; $427d: $f3
    db $e4                                        ; $427e: $e4
    ld de, $f4a2                                  ; $427f: $11 $a2 $f4
    inc b                                         ; $4282: $04
    rla                                           ; $4283: $17
    db $fd                                        ; $4284: $fd
    sbc $7c                                       ; $4285: $de $7c
    daa                                           ; $4287: $27
    rst $20                                       ; $4288: $e7
    cp c                                          ; $4289: $b9
    ld a, [bc]                                    ; $428a: $0a
    dec b                                         ; $428b: $05
    cp [hl]                                       ; $428c: $be
    sub b                                         ; $428d: $90
    sub d                                         ; $428e: $92
    jp $569c                                      ; $428f: $c3 $9c $56


    sbc l                                         ; $4292: $9d
    or a                                          ; $4293: $b7
    ld b, l                                       ; $4294: $45
    rst $08                                       ; $4295: $cf
    dec b                                         ; $4296: $05
    ld a, a                                       ; $4297: $7f
    call $0de7                                    ; $4298: $cd $e7 $0d
    nop                                           ; $429b: $00
    ld bc, $ba8e                                  ; $429c: $01 $8e $ba
    adc $01                                       ; $429f: $ce $01
    ld l, d                                       ; $42a1: $6a
    cp [hl]                                       ; $42a2: $be
    db $fc                                        ; $42a3: $fc
    dec a                                         ; $42a4: $3d
    ei                                            ; $42a5: $fb
    or a                                          ; $42a6: $b7
    adc $e2                                       ; $42a7: $ce $e2
    jr c, jr_03e_424c                             ; $42a9: $38 $a1

    jp $ca26                                      ; $42ab: $c3 $26 $ca


    add l                                         ; $42ae: $85

Call_03e_42af:
    cpl                                           ; $42af: $2f
    cp a                                          ; $42b0: $bf
    ld a, [c]                                     ; $42b1: $f2
    xor e                                         ; $42b2: $ab
    ld l, [hl]                                    ; $42b3: $6e
    call nc, $f3f8                                ; $42b4: $d4 $f8 $f3
    sbc h                                         ; $42b7: $9c
    db $fd                                        ; $42b8: $fd
    sub a                                         ; $42b9: $97
    sub d                                         ; $42ba: $92
    jr nc, jr_03e_4306                            ; $42bb: $30 $49

    cp h                                          ; $42bd: $bc
    ld bc, $cfdd                                  ; $42be: $01 $dd $cf
    rst $00                                       ; $42c1: $c7
    ld c, b                                       ; $42c2: $48
    adc h                                         ; $42c3: $8c
    xor a                                         ; $42c4: $af
    and e                                         ; $42c5: $a3
    sbc d                                         ; $42c6: $9a
    rst $28                                       ; $42c7: $ef
    cp b                                          ; $42c8: $b8
    ld d, d                                       ; $42c9: $52
    sbc d                                         ; $42ca: $9a
    ld b, h                                       ; $42cb: $44
    or $5c                                        ; $42cc: $f6 $5c
    rst $18                                       ; $42ce: $df
    sbc h                                         ; $42cf: $9c
    ld h, a                                       ; $42d0: $67
    ld a, c                                       ; $42d1: $79
    adc h                                         ; $42d2: $8c
    sbc h                                         ; $42d3: $9c
    rst $20                                       ; $42d4: $e7

jr_03e_42d5:
    ld l, d                                       ; $42d5: $6a
    sbc e                                         ; $42d6: $9b
    ld a, e                                       ; $42d7: $7b
    sub a                                         ; $42d8: $97
    cp b                                          ; $42d9: $b8
    xor d                                         ; $42da: $aa
    cp $23                                        ; $42db: $fe $23

jr_03e_42dd:
    rst $30                                       ; $42dd: $f7
    ld h, l                                       ; $42de: $65
    sbc l                                         ; $42df: $9d
    ld b, a                                       ; $42e0: $47
    adc e                                         ; $42e1: $8b
    ld h, e                                       ; $42e2: $63
    db $e4                                        ; $42e3: $e4
    dec c                                         ; $42e4: $0d
    nop                                           ; $42e5: $00
    ld d, a                                       ; $42e6: $57
    inc [hl]                                      ; $42e7: $34
    xor b                                         ; $42e8: $a8
    sub l                                         ; $42e9: $95
    inc e                                         ; $42ea: $1c
    dec [hl]                                      ; $42eb: $35
    cp $42                                        ; $42ec: $fe $42
    ld b, a                                       ; $42ee: $47
    adc c                                         ; $42ef: $89
    cp a                                          ; $42f0: $bf
    ldh [rOCPD], a                                ; $42f1: $e0 $6b
    db $fc                                        ; $42f3: $fc
    ld e, c                                       ; $42f4: $59
    inc e                                         ; $42f5: $1c
    rst $00                                       ; $42f6: $c7
    ld a, [hl-]                                   ; $42f7: $3a
    ld l, h                                       ; $42f8: $6c
    inc [hl]                                      ; $42f9: $34
    inc e                                         ; $42fa: $1c
    srl d                                         ; $42fb: $cb $3a
    adc a                                         ; $42fd: $8f
    ld d, $c7                                     ; $42fe: $16 $c7
    ret z                                         ; $4300: $c8

    ld a, e                                       ; $4301: $7b
    ld a, l                                       ; $4302: $7d
    ld [hl], e                                    ; $4303: $73
    xor c                                         ; $4304: $a9
    dec bc                                        ; $4305: $0b

jr_03e_4306:
    db $d3                                        ; $4306: $d3
    ld d, a                                       ; $4307: $57
    ld l, l                                       ; $4308: $6d
    ld a, [hl-]                                   ; $4309: $3a
    dec h                                         ; $430a: $25
    db $e4                                        ; $430b: $e4

jr_03e_430c:
    sbc d                                         ; $430c: $9a
    adc h                                         ; $430d: $8c
    ld l, d                                       ; $430e: $6a
    cp [hl]                                       ; $430f: $be
    db $e3                                        ; $4310: $e3
    ld c, d                                       ; $4311: $4a
    ld hl, $bcfa                                  ; $4312: $21 $fa $bc
    ld bc, $737d                                  ; $4315: $01 $7d $73
    pop bc                                        ; $4318: $c1
    or a                                          ; $4319: $b7
    ld c, $df                                     ; $431a: $0e $df
    rst $38                                       ; $431c: $ff
    inc l                                         ; $431d: $2c
    adc [hl]                                      ; $431e: $8e
    xor e                                         ; $431f: $ab
    ld d, b                                       ; $4320: $50
    or $22                                        ; $4321: $f6 $22

Jump_03e_4323:
    xor l                                         ; $4323: $ad
    di                                            ; $4324: $f3
    ldh a, [$d9]                                  ; $4325: $f0 $d9
    cp a                                          ; $4327: $bf
    adc b                                         ; $4328: $88
    push af                                       ; $4329: $f5
    ld e, [hl]                                    ; $432a: $5e
    or a                                          ; $432b: $b7
    adc e                                         ; $432c: $8b
    ld a, [hl]                                    ; $432d: $7e
    cp [hl]                                       ; $432e: $be
    ld d, l                                       ; $432f: $55
    jr z, jr_03e_430c                             ; $4330: $28 $da

    ld l, h                                       ; $4332: $6c
    ld [hl], c                                    ; $4333: $71
    call nc, $b5d8                                ; $4334: $d4 $d8 $b5
    or a                                          ; $4337: $b7
    jr c, jr_03e_42d5                             ; $4338: $38 $9b

    ld a, l                                       ; $433a: $7d
    rst $20                                       ; $433b: $e7
    ei                                            ; $433c: $fb
    ld h, l                                       ; $433d: $65
    rrca                                          ; $433e: $0f
    nop                                           ; $433f: $00
    ld a, l                                       ; $4340: $7d
    ld [hl], e                                    ; $4341: $73
    sub l                                         ; $4342: $95
    rst $10                                       ; $4343: $d7
    db $fd                                        ; $4344: $fd
    inc a                                         ; $4345: $3c
    dec [hl]                                      ; $4346: $35
    push bc                                       ; $4347: $c5
    inc de                                        ; $4348: $13
    ld e, a                                       ; $4349: $5f
    ld d, [hl]                                    ; $434a: $56
    or a                                          ; $434b: $b7
    ld [hl], l                                    ; $434c: $75
    ld [de], a                                    ; $434d: $12
    ld e, e                                       ; $434e: $5b
    db $fc                                        ; $434f: $fc
    ld e, c                                       ; $4350: $59

Call_03e_4351:
    ld d, a                                       ; $4351: $57
    ld e, d                                       ; $4352: $5a
    dec e                                         ; $4353: $1d
    or [hl]                                       ; $4354: $b6
    ld e, a                                       ; $4355: $5f
    db $fd                                        ; $4356: $fd
    db $fd                                        ; $4357: $fd
    db $eb                                        ; $4358: $eb
    inc d                                         ; $4359: $14
    ld sp, hl                                     ; $435a: $f9
    ld a, e                                       ; $435b: $7b
    sub a                                         ; $435c: $97
    cp b                                          ; $435d: $b8
    xor d                                         ; $435e: $aa
    cp $23                                        ; $435f: $fe $23
    rst $30                                       ; $4361: $f7
    ld d, $67                                     ; $4362: $16 $67
    or e                                          ; $4364: $b3
    rla                                           ; $4365: $17
    ld l, c                                       ; $4366: $69
    sbc l                                         ; $4367: $9d
    rra                                           ; $4368: $1f
    ld [hl], c                                    ; $4369: $71
    pop de                                        ; $436a: $d1
    xor l                                         ; $436b: $ad
    cp d                                          ; $436c: $ba
    ld d, c                                       ; $436d: $51
    db $e3                                        ; $436e: $e3
    rst $18                                       ; $436f: $df
    rst $30                                       ; $4370: $f7
    ld l, l                                       ; $4371: $6d
    ld [hl], c                                    ; $4372: $71
    ld e, h                                       ; $4373: $5c
    ld [hl], c                                    ; $4374: $71
    add h                                         ; $4375: $84
    ld [hl], d                                    ; $4376: $72
    sub c                                         ; $4377: $91
    add sp, -$5b                                  ; $4378: $e8 $a5
    ld [$8e2c], a                                 ; $437a: $ea $2c $8e
    dec hl                                        ; $437d: $2b
    xor l                                         ; $437e: $ad
    ld c, $db                                     ; $437f: $0e $db
    rrc l                                         ; $4381: $cb $0d
    nop                                           ; $4383: $00
    ld a, l                                       ; $4384: $7d
    ld [hl], e                                    ; $4385: $73
    call nz, $d428                                ; $4386: $c4 $28 $d4
    db $fd                                        ; $4389: $fd
    ld bc, $ef78                                  ; $438a: $01 $78 $ef
    and d                                         ; $438d: $a2
    sbc a                                         ; $438e: $9f
    and a                                         ; $438f: $a7
    ld c, c                                       ; $4390: $49
    ld a, c                                       ; $4391: $79
    db $d3                                        ; $4392: $d3
    ld l, h                                       ; $4393: $6c
    ld [hl], c                                    ; $4394: $71
    sbc b                                         ; $4395: $98
    and e                                         ; $4396: $a3
    add $ae                                       ; $4397: $c6 $ae
    sub l                                         ; $4399: $95
    and [hl]                                      ; $439a: $a6
    pop af                                        ; $439b: $f1
    ld l, a                                       ; $439c: $6f
    nop                                           ; $439d: $00
    ld a, l                                       ; $439e: $7d
    ld [hl], e                                    ; $439f: $73
    and c                                         ; $43a0: $a1
    and e                                         ; $43a1: $a3
    and a                                         ; $43a2: $a7
    xor $d1                                       ; $43a3: $ee $d1
    cp a                                          ; $43a5: $bf
    call z, $fa3f                                 ; $43a6: $cc $3f $fa
    ld e, h                                       ; $43a9: $5c
    push bc                                       ; $43aa: $c5
    or c                                          ; $43ab: $b1
    call nz, $fdd7                                ; $43ac: $c4 $d7 $fd
    xor b                                         ; $43af: $a8
    pop af                                        ; $43b0: $f1
    ld h, l                                       ; $43b1: $65
    pop bc                                        ; $43b2: $c1
    sub h                                         ; $43b3: $94
    ld d, a                                       ; $43b4: $57
    ld hl, sp-$14                                 ; $43b5: $f8 $ec
    ld e, a                                       ; $43b7: $5f
    call nz, Call_000_037a                        ; $43b8: $c4 $7a $03
    db $dd                                        ; $43bb: $dd
    db $ed                                        ; $43bc: $ed
    ld e, a                                       ; $43bd: $5f
    ld d, a                                       ; $43be: $57
    ld l, c                                       ; $43bf: $69
    ld a, [de]                                    ; $43c0: $1a
    ld [hl], e                                    ; $43c1: $73
    ccf                                           ; $43c2: $3f
    ld a, e                                       ; $43c3: $7b
    ld c, d                                       ; $43c4: $4a
    db $dd                                        ; $43c5: $dd
    ld [de], a                                    ; $43c6: $12
    reti                                          ; $43c7: $d9


    inc de                                        ; $43c8: $13
    nop                                           ; $43c9: $00
    cp l                                          ; $43ca: $bd
    add l                                         ; $43cb: $85
    cp c                                          ; $43cc: $b9
    ldh [rPCM34], a                               ; $43cd: $e0 $77
    jr z, @-$19                                   ; $43cf: $28 $e5

    ld d, a                                       ; $43d1: $57
    ld l, c                                       ; $43d2: $69
    ld a, [de]                                    ; $43d3: $1a
    ld [hl], e                                    ; $43d4: $73
    call nz, $ecb1                                ; $43d5: $c4 $b1 $ec
    and l                                         ; $43d8: $a5
    ld a, [hl]                                    ; $43d9: $7e
    ld l, c                                       ; $43da: $69
    add hl, sp                                    ; $43db: $39
    rst $08                                       ; $43dc: $cf
    sub l                                         ; $43dd: $95
    rst $10                                       ; $43de: $d7
    ld d, c                                       ; $43df: $51
    ld c, l                                       ; $43e0: $4d
    halt                                          ; $43e1: $76
    ld e, [hl]                                    ; $43e2: $5e
    ld l, a                                       ; $43e3: $6f
    nop                                           ; $43e4: $00
    sub a                                         ; $43e5: $97
    ld de, $74bd                                  ; $43e6: $11 $bd $74
    xor l                                         ; $43e9: $ad
    db $fc                                        ; $43ea: $fc
    ldh a, [$a5]                                  ; $43eb: $f0 $a5
    push af                                       ; $43ed: $f5
    ld e, a                                       ; $43ee: $5f
    call $fcd8                                    ; $43ef: $cd $d8 $fc
    adc a                                         ; $43f2: $8f
    jr c, @-$77                                   ; $43f3: $38 $87

    dec hl                                        ; $43f5: $2b
    xor l                                         ; $43f6: $ad
    inc hl                                        ; $43f7: $23
    add hl, bc                                    ; $43f8: $09
    ld e, a                                       ; $43f9: $5f
    ld c, b                                       ; $43fa: $48
    ret                                           ; $43fb: $c9


    ld h, c                                       ; $43fc: $61
    ld c, [hl]                                    ; $43fd: $4e
    xor e                                         ; $43fe: $ab
    adc $db                                       ; $43ff: $ce $db
    and d                                         ; $4401: $a2
    rst $20                                       ; $4402: $e7
    ld e, $fd                                     ; $4403: $1e $fd
    ld c, e                                       ; $4405: $4b
    rst $10                                       ; $4406: $d7
    ld e, b                                       ; $4407: $58
    ld h, $d4                                     ; $4408: $26 $d4
    sbc b                                         ; $440a: $98
    scf                                           ; $440b: $37
    nop                                           ; $440c: $00
    sub a                                         ; $440d: $97
    ld a, l                                       ; $440e: $7d
    ld e, c                                       ; $440f: $59
    add l                                         ; $4410: $85
    db $fd                                        ; $4411: $fd
    ld b, a                                       ; $4412: $47
    adc l                                         ; $4413: $8d
    ld e, l                                       ; $4414: $5d
    inc sp                                        ; $4415: $33
    adc c                                         ; $4416: $89
    ld h, e                                       ; $4417: $63
    sbc c                                         ; $4418: $99
    ld a, [hl]                                    ; $4419: $7e
    sbc b                                         ; $441a: $98
    di                                            ; $441b: $f3
    ld e, h                                       ; $441c: $5c
    ld e, a                                       ; $441d: $5f
    ld d, [hl]                                    ; $441e: $56
    ld e, d                                       ; $441f: $5a
    add hl, hl                                    ; $4420: $29
    sbc h                                         ; $4421: $9c
    ld [hl], l                                    ; $4422: $75
    jp z, Jump_000_1f05                           ; $4423: $ca $05 $1f

    rla                                           ; $4426: $17
    ld d, d                                       ; $4427: $52
    ld a, h                                       ; $4428: $7c
    di                                            ; $4429: $f3
    cp c                                          ; $442a: $b9
    sub d                                         ; $442b: $92
    ld a, [hl-]                                   ; $442c: $3a
    sbc a                                         ; $442d: $9f
    ld a, d                                       ; $442e: $7a
    inc bc                                        ; $442f: $03
    halt                                          ; $4430: $76
    ld a, [de]                                    ; $4431: $1a
    cp e                                          ; $4432: $bb
    ld b, [hl]                                    ; $4433: $46
    ld e, h                                       ; $4434: $5c
    ld c, c                                       ; $4435: $49
    db $dd                                        ; $4436: $dd
    dec hl                                        ; $4437: $2b
    ld d, e                                       ; $4438: $53
    rst $20                                       ; $4439: $e7
    ld e, c                                       ; $443a: $59
    ld d, $4a                                     ; $443b: $16 $4a
    xor e                                         ; $443d: $ab
    add hl, hl                                    ; $443e: $29
    dec bc                                        ; $443f: $0b
    sbc e                                         ; $4440: $9b
    ld h, $7c                                     ; $4441: $26 $7c
    db $dd                                        ; $4443: $dd
    ld c, d                                       ; $4444: $4a
    ld c, c                                       ; $4445: $49
    ld a, c                                       ; $4446: $79
    db $f4                                        ; $4447: $f4
    cp c                                          ; $4448: $b9
    jr nc, jr_03e_44b0                            ; $4449: $30 $65

    pop de                                        ; $444b: $d1
    call $12b8                                    ; $444c: $cd $b8 $12
    ld a, [hl]                                    ; $444f: $7e
    rrca                                          ; $4450: $0f
    nop                                           ; $4451: $00
    db $dd                                        ; $4452: $dd
    ld l, $0e                                     ; $4453: $2e $0e
    jp nz, $d987                                  ; $4455: $c2 $87 $d9

    ld h, e                                       ; $4458: $63
    ld a, l                                       ; $4459: $7d
    ld [hl], e                                    ; $445a: $73
    ld d, $47                                     ; $445b: $16 $47
    or c                                          ; $445d: $b1
    ld sp, hl                                     ; $445e: $f9
    ld e, c                                       ; $445f: $59
    inc e                                         ; $4460: $1c
    rla                                           ; $4461: $17
    cp [hl]                                       ; $4462: $be
    cp [hl]                                       ; $4463: $be
    db $fc                                        ; $4464: $fc
    xor b                                         ; $4465: $a8
    ld sp, $006f                                  ; $4466: $31 $6f $00
    ld a, l                                       ; $4469: $7d
    ld d, e                                       ; $446a: $53
    rst $20                                       ; $446b: $e7
    sbc e                                         ; $446c: $9b
    ld a, [de]                                    ; $446d: $1a
    ld d, a                                       ; $446e: $57
    jp nz, $d617                                  ; $446f: $c2 $17 $d6

    xor c                                         ; $4472: $a9
    inc sp                                        ; $4473: $33
    xor $d1                                       ; $4474: $ee $d1
    rst $20                                       ; $4476: $e7
    ld a, [hl+]                                   ; $4477: $2a
    adc [hl]                                      ; $4478: $8e
    and l                                         ; $4479: $a5
    ld a, [c]                                     ; $447a: $f2
    scf                                           ; $447b: $37
    nop                                           ; $447c: $00
    db $dd                                        ; $447d: $dd
    ld l, $4b                                     ; $447e: $2e $4b
    sbc a                                         ; $4480: $9f
    cp d                                          ; $4481: $ba
    cpl                                           ; $4482: $2f
    dec sp                                        ; $4483: $3b
    ld c, a                                       ; $4484: $4f
    ld e, $d7                                     ; $4485: $1e $d7
    dec sp                                        ; $4487: $3b
    ld l, e                                       ; $4488: $6b
    ld a, [$1e94]                                 ; $4489: $fa $94 $1e
    db $eb                                        ; $448c: $eb
    halt                                          ; $448d: $76
    adc c                                         ; $448e: $89
    db $e3                                        ; $448f: $e3
    ld e, b                                       ; $4490: $58
    add a                                         ; $4491: $87
    adc l                                         ; $4492: $8d
    add [hl]                                      ; $4493: $86
    dec hl                                        ; $4494: $2b
    cp a                                          ; $4495: $bf
    ld [hl], e                                    ; $4496: $73
    dec de                                        ; $4497: $1b
    dec [hl]                                      ; $4498: $35

Jump_03e_4499:
    cp $3c                                        ; $4499: $fe $3c
    ld h, a                                       ; $449b: $67
    rst $38                                       ; $449c: $ff
    and l                                         ; $449d: $a5
    inc h                                         ; $449e: $24
    ld c, h                                       ; $449f: $4c
    ld [de], a                                    ; $44a0: $12
    ld a, e                                       ; $44a1: $7b
    nop                                           ; $44a2: $00
    sub a                                         ; $44a3: $97
    dec e                                         ; $44a4: $1d
    add hl, de                                    ; $44a5: $19
    adc a                                         ; $44a6: $8f
    adc h                                         ; $44a7: $8c
    sub d                                         ; $44a8: $92
    and l                                         ; $44a9: $a5
    call c, Call_03e_4df7                         ; $44aa: $dc $f7 $4d
    inc e                                         ; $44ad: $1c
    set 0, d                                      ; $44ae: $cb $c2

jr_03e_44b0:
    inc hl                                        ; $44b0: $23
    jp Jump_03e_4323                              ; $44b1: $c3 $23 $43


Jump_03e_44b4:
    ld l, c                                       ; $44b4: $69
    dec [hl]                                      ; $44b5: $35
    ld h, l                                       ; $44b6: $65
    pop hl                                        ; $44b7: $e1
    sub c                                         ; $44b8: $91
    pop hl                                        ; $44b9: $e1
    sub c                                         ; $44ba: $91
    ld h, c                                       ; $44bb: $61
    db $d3                                        ; $44bc: $d3
    cp h                                          ; $44bd: $bc
    rst $28                                       ; $44be: $ef
    dec sp                                        ; $44bf: $3b
    inc h                                         ; $44c0: $24
    ld l, d                                       ; $44c1: $6a
    push de                                       ; $44c2: $d5
    ld e, c                                       ; $44c3: $59
    inc e                                         ; $44c4: $1c
    and a                                         ; $44c5: $a7
    ld e, h                                       ; $44c6: $5c
    inc h                                         ; $44c7: $24
    jp c, $2cfc                                   ; $44c8: $da $fc $2c

    adc [hl]                                      ; $44cb: $8e
    db $d3                                        ; $44cc: $d3
    rst $28                                       ; $44cd: $ef
    ld d, b                                       ; $44ce: $50
    ld l, [hl]                                    ; $44cf: $6e
    nop                                           ; $44d0: $00
    ld bc, $6ac2                                  ; $44d1: $01 $c2 $6a
    sbc d                                         ; $44d4: $9a
    sbc b                                         ; $44d5: $98
    ld a, [bc]                                    ; $44d6: $0a
    ld e, a                                       ; $44d7: $5f
    or a                                          ; $44d8: $b7
    ld d, d                                       ; $44d9: $52
    ld e, b                                       ; $44da: $58
    ld a, c                                       ; $44db: $79
    cp a                                          ; $44dc: $bf
    ld e, a                                       ; $44dd: $5f
    push bc                                       ; $44de: $c5
    ld d, c                                       ; $44df: $51
    and e                                         ; $44e0: $a3
    cp h                                          ; $44e1: $bc
    adc $bc                                       ; $44e2: $ce $bc
    cp [hl]                                       ; $44e4: $be

jr_03e_44e5:
    xor $57                                       ; $44e5: $ee $57
    ld d, d                                       ; $44e7: $52
    rst $20                                       ; $44e8: $e7
    ld d, e                                       ; $44e9: $53
    ld [$5316], a                                 ; $44ea: $ea $16 $53
    ld e, d                                       ; $44ed: $5a
    ld [$d61a], a                                 ; $44ee: $ea $1a $d6
    db $f4                                        ; $44f1: $f4
    db $ed                                        ; $44f2: $ed
    db $e3                                        ; $44f3: $e3
    rst $10                                       ; $44f4: $d7
    call nz, Call_000_1ec8                        ; $44f5: $c4 $c8 $1e
    nop                                           ; $44f8: $00
    rla                                           ; $44f9: $17
    and l                                         ; $44fa: $a5
    adc $73                                       ; $44fb: $ce $73
    and c                                         ; $44fd: $a1
    or h                                          ; $44fe: $b4
    sbc d                                         ; $44ff: $9a
    or d                                          ; $4500: $b2
    ccf                                           ; $4501: $3f
    jr c, jr_03e_44e5                             ; $4502: $38 $e1

    db $eb                                        ; $4504: $eb
    ld d, $d3                                     ; $4505: $16 $d3
    and a                                         ; $4507: $a7

jr_03e_4508:
    xor [hl]                                      ; $4508: $ae
    sbc a                                         ; $4509: $9f
    jp $da98                                      ; $450a: $c3 $98 $da


    ld h, e                                       ; $450d: $63
    db $dd                                        ; $450e: $dd
    ld [bc], a                                    ; $450f: $02
    add hl, bc                                    ; $4510: $09
    cp c                                          ; $4511: $b9
    and $6b                                       ; $4512: $e6 $6b
    or $00                                        ; $4514: $f6 $00
    db $dd                                        ; $4516: $dd
    ld a, e                                       ; $4517: $7b
    db $db                                        ; $4518: $db
    sub $b9                                       ; $4519: $d6 $b9
    ldh [$2f], a                                  ; $451b: $e0 $2f
    ld c, h                                       ; $451d: $4c
    rst $18                                       ; $451e: $df
    ld a, h                                       ; $451f: $7c
    adc [hl]                                      ; $4520: $8e
    jr jr_03e_4508                                ; $4521: $18 $e5

    ld h, l                                       ; $4523: $65
    ld c, $17                                     ; $4524: $0e $17
    dec h                                         ; $4526: $25
    ld c, e                                       ; $4527: $4b
    jp hl                                         ; $4528: $e9


    add hl, bc                                    ; $4529: $09
    nop                                           ; $452a: $00
    sub a                                         ; $452b: $97
    ld a, l                                       ; $452c: $7d
    ld e, c                                       ; $452d: $59
    add l                                         ; $452e: $85
    db $fd                                        ; $452f: $fd
    ld d, a                                       ; $4530: $57
    ld [hl], d                                    ; $4531: $72
    sbc [hl]                                      ; $4532: $9e
    db $fd                                        ; $4533: $fd
    ld l, h                                       ; $4534: $6c
    ld b, a                                       ; $4535: $47
    adc h                                         ; $4536: $8c
    ld a, [c]                                     ; $4537: $f2
    or d                                          ; $4538: $b2
    nop                                           ; $4539: $00
    or d                                          ; $453a: $b2
    ld b, d                                       ; $453b: $42
    ld e, l                                       ; $453c: $5d
    ld hl, sp-$0e                                 ; $453d: $f8 $f2
    add e                                         ; $453f: $83
    ld e, [hl]                                    ; $4540: $5e
    db $e3                                        ; $4541: $e3
    dec bc                                        ; $4542: $0b
    and [hl]                                      ; $4543: $a6
    adc $e1                                       ; $4544: $ce $e1
    xor a                                         ; $4546: $af
    inc hl                                        ; $4547: $23
    ld e, c                                       ; $4548: $59
    rst $38                                       ; $4549: $ff
    inc a                                         ; $454a: $3c
    ld h, a                                       ; $454b: $67

jr_03e_454c:
    rst $38                                       ; $454c: $ff
    and l                                         ; $454d: $a5
    inc h                                         ; $454e: $24
    ld c, h                                       ; $454f: $4c
    ld [de], a                                    ; $4550: $12
    ld l, a                                       ; $4551: $6f
    nop                                           ; $4552: $00
    sub a                                         ; $4553: $97
    db $e3                                        ; $4554: $e3
    ld [$89ac], a                                 ; $4555: $ea $ac $89
    ld sp, $fbef                                  ; $4558: $31 $ef $fb
    xor $66                                       ; $455b: $ee $66
    ld c, a                                       ; $455d: $4f
    xor c                                         ; $455e: $a9
    ld e, e                                       ; $455f: $5b
    ld [hl+], a                                   ; $4560: $22
    add a                                         ; $4561: $87
    add hl, sp                                    ; $4562: $39
    db $fd                                        ; $4563: $fd
    ld c, $57                                     ; $4564: $0e $57
    ld [hl], d                                    ; $4566: $72
    sbc [hl]                                      ; $4567: $9e
    ld h, l                                       ; $4568: $65
    ld d, c                                       ; $4569: $51
    or d                                          ; $456a: $b2
    sub h                                         ; $456b: $94
    ld e, $eb                                     ; $456c: $1e $eb
    halt                                          ; $456e: $76
    add hl, de                                    ; $456f: $19
    sub c                                         ; $4570: $91
    ld [hl], l                                    ; $4571: $75
    ld [$8e2c], a                                 ; $4572: $ea $2c $8e
    ei                                            ; $4575: $fb
    ld c, d                                       ; $4576: $4a
    db $d3                                        ; $4577: $d3
    sub a                                         ; $4578: $97
    ld a, [c]                                     ; $4579: $f2
    dec a                                         ; $457a: $3d
    nop                                           ; $457b: $00
    db $dd                                        ; $457c: $dd
    cpl                                           ; $457d: $2f
    ld [hl], c                                    ; $457e: $71
    ld d, l                                       ; $457f: $55
    ld b, a                                       ; $4580: $47
    adc l                                         ; $4581: $8d
    rst $18                                       ; $4582: $df
    ld sp, hl                                     ; $4583: $f9
    dec b                                         ; $4584: $05
    rst $18                                       ; $4585: $df
    inc [hl]                                      ; $4586: $34
    and d                                         ; $4587: $a2
    rst $08                                       ; $4588: $cf
    dec b                                         ; $4589: $05
    ld [c], a                                     ; $458a: $e2
    add a                                         ; $458b: $87
    call c, $9c5b                                 ; $458c: $dc $5b $9c
    call $a45e                                    ; $458f: $cd $5e $a4
    ld [hl], l                                    ; $4592: $75
    cp [hl]                                       ; $4593: $be
    daa                                           ; $4594: $27
    nop                                           ; $4595: $00
    cp l                                          ; $4596: $bd
    add d                                         ; $4597: $82
    add hl, hl                                    ; $4598: $29
    ccf                                           ; $4599: $3f
    call z, Call_000_3ab5                         ; $459a: $cc $b5 $3a
    ld c, h                                       ; $459d: $4c
    adc c                                         ; $459e: $89
    cp a                                          ; $459f: $bf
    xor d                                         ; $45a0: $aa
    push hl                                       ; $45a1: $e5
    ld e, [hl]                                    ; $45a2: $5e
    scf                                           ; $45a3: $37
    ei                                            ; $45a4: $fb
    or a                                          ; $45a5: $b7

jr_03e_45a6:
    adc $e2                                       ; $45a6: $ce $e2
    jr c, jr_03e_454c                             ; $45a8: $38 $a2

    ld c, c                                       ; $45aa: $49
    adc h                                         ; $45ab: $8c
    ld a, [c]                                     ; $45ac: $f2
    or d                                          ; $45ad: $b2
    sbc a                                         ; $45ae: $9f
    dec a                                         ; $45af: $3d
    and l                                         ; $45b0: $a5
    ld l, [hl]                                    ; $45b1: $6e
    adc c                                         ; $45b2: $89
    db $ec                                        ; $45b3: $ec
    ld bc, $dd00                                  ; $45b4: $01 $00 $dd
    db $ed                                        ; $45b7: $ed
    dec e                                         ; $45b8: $1d
    dec bc                                        ; $45b9: $0b
    ld [hl], l                                    ; $45ba: $75
    ld e, a                                       ; $45bb: $5f
    and b                                         ; $45bc: $a0
    db $ec                                        ; $45bd: $ec
    add hl, bc                                    ; $45be: $09
    nop                                           ; $45bf: $00
    add c                                         ; $45c0: $81
    ld [hl], $f7                                  ; $45c1: $36 $f7
    ld a, l                                       ; $45c3: $7d
    sbc e                                         ; $45c4: $9b
    xor h                                         ; $45c5: $ac
    ld [hl], e                                    ; $45c6: $73
    ccf                                           ; $45c7: $3f
    di                                            ; $45c8: $f3
    push bc                                       ; $45c9: $c5
    jr nc, jr_03e_45a6                            ; $45ca: $30 $da

    ldh [$9c], a                                  ; $45cc: $e0 $9c
    cp [hl]                                       ; $45ce: $be
    rst $08                                       ; $45cf: $cf
    ld e, c                                       ; $45d0: $59
    rst $30                                       ; $45d1: $f7
    inc de                                        ; $45d2: $13
    ld b, [hl]                                    ; $45d3: $46
    ld h, c                                       ; $45d4: $61
    db $e4                                        ; $45d5: $e4
    jp nz, $3a03                                  ; $45d6: $c2 $03 $3a

    and l                                         ; $45d9: $a5
    sbc c                                         ; $45da: $99
    cp h                                          ; $45db: $bc
    rst $10                                       ; $45dc: $d7
    ld l, e                                       ; $45dd: $6b
    dec h                                         ; $45de: $25
    ld d, a                                       ; $45df: $57
    or e                                          ; $45e0: $b3
    ld e, a                                       ; $45e1: $5f
    jp z, $f1a8                                   ; $45e2: $ca $a8 $f1

    db $eb                                        ; $45e5: $eb
    call nc, $8a19                                ; $45e6: $d4 $19 $8a
    ld sp, hl                                     ; $45e9: $f9
    ld a, c                                       ; $45ea: $79
    ld l, $b0                                     ; $45eb: $2e $b0
    ld e, b                                       ; $45ed: $58
    ld h, e                                       ; $45ee: $63
    sub b                                         ; $45ef: $90
    jp nc, Jump_000_06f0                          ; $45f0: $d2 $f0 $06

    sub a                                         ; $45f3: $97
    ld h, $de                                     ; $45f4: $26 $de
    rst $30                                       ; $45f6: $f7
    db $dd                                        ; $45f7: $dd
    xor l                                         ; $45f8: $ad
    ld l, [hl]                                    ; $45f9: $6e
    ld a, [c]                                     ; $45fa: $f2
    dec a                                         ; $45fb: $3d
    nop                                           ; $45fc: $00
    db $dd                                        ; $45fd: $dd
    rst $08                                       ; $45fe: $cf
    or c                                          ; $45ff: $b1
    ld b, l                                       ; $4600: $45
    rst $08                                       ; $4601: $cf
    dec [hl]                                      ; $4602: $35
    jp hl                                         ; $4603: $e9


    ld [$0009], a                                 ; $4604: $ea $09 $00
    db $dd                                        ; $4607: $dd
    cp d                                          ; $4608: $ba
    ld [hl], l                                    ; $4609: $75
    db $eb                                        ; $460a: $eb
    push af                                       ; $460b: $f5
    rst $38                                       ; $460c: $ff
    rst $18                                       ; $460d: $df
    and e                                         ; $460e: $a3
    ld b, a                                       ; $460f: $47
    rrca                                          ; $4610: $0f
    nop                                           ; $4611: $00
    db $dd                                        ; $4612: $dd
    cpl                                           ; $4613: $2f
    ld [hl], c                                    ; $4614: $71
    ld d, l                                       ; $4615: $55
    rla                                           ; $4616: $17
    db $fc                                        ; $4617: $fc
    ld l, c                                       ; $4618: $69
    di                                            ; $4619: $f3
    add hl, sp                                    ; $461a: $39
    ld l, d                                       ; $461b: $6a
    or $04                                        ; $461c: $f6 $04
    db $dd                                        ; $461e: $dd
    db $ec                                        ; $461f: $ec
    add hl, hl                                    ; $4620: $29
    ld [hl], l                                    ; $4621: $75
    ld c, e                                       ; $4622: $4b
    ld h, h                                       ; $4623: $64
    adc a                                         ; $4624: $8f
    ld [hl], l                                    ; $4625: $75
    or e                                          ; $4626: $b3
    dec hl                                        ; $4627: $2b
    adc e                                         ; $4628: $8b
    sub d                                         ; $4629: $92
    and l                                         ; $462a: $a5
    xor h                                         ; $462b: $ac
    db $fc                                        ; $462c: $fc
    add d                                         ; $462d: $82
    ccf                                           ; $462e: $3f
    and d                                         ; $462f: $a2
    ld c, c                                       ; $4630: $49
    adc h                                         ; $4631: $8c
    ld a, [c]                                     ; $4632: $f2
    ld a, $7b                                     ; $4633: $3e $7b
    nop                                           ; $4635: $00
    or $2f                                        ; $4636: $f6 $2f
    ld h, d                                       ; $4638: $62
    add l                                         ; $4639: $85
    xor a                                         ; $463a: $af
    ld e, e                                       ; $463b: $5b
    ld l, h                                       ; $463c: $6c
    ld b, h                                       ; $463d: $44
    ld [$8e2c], a                                 ; $463e: $ea $2c $8e
    db $d3                                        ; $4641: $d3
    cpl                                           ; $4642: $2f
    sub l                                         ; $4643: $95
    sub a                                         ; $4644: $97
    ld a, [c]                                     ; $4645: $f2
    dec a                                         ; $4646: $3d
    nop                                           ; $4647: $00
    db $dd                                        ; $4648: $dd
    ld l, $e3                                     ; $4649: $2e $e3
    add d                                         ; $464b: $82
    sbc h                                         ; $464c: $9c
    cp [hl]                                       ; $464d: $be
    ld a, c                                       ; $464e: $79
    sbc a                                         ; $464f: $9f
    ei                                            ; $4650: $fb
    push bc                                       ; $4651: $c5
    add $3a                                       ; $4652: $c6 $3a
    call z, $eb1e                                 ; $4654: $cc $1e $eb
    ld b, e                                       ; $4657: $43
    ld c, h                                       ; $4658: $4c
    ld e, l                                       ; $4659: $5d
    db $fd                                        ; $465a: $fd
    ld h, l                                       ; $465b: $65
    ld d, $c7                                     ; $465c: $16 $c7
    ld b, l                                       ; $465e: $45
    and d                                         ; $465f: $a2
    call $e1cf                                    ; $4660: $cd $cf $e1
    cpl                                           ; $4663: $2f
    jr nz, jr_03e_46b3                            ; $4664: $20 $4d

    or e                                          ; $4666: $b3
    push bc                                       ; $4667: $c5
    reti                                          ; $4668: $d9


    ld d, e                                       ; $4669: $53
    ld a, [hl-]                                   ; $466a: $3a
    ld e, c                                       ; $466b: $59
    ld l, c                                       ; $466c: $69
    pop af                                        ; $466d: $f1
    ld c, e                                       ; $466e: $4b
    db $eb                                        ; $466f: $eb
    rst $38                                       ; $4670: $ff
    jr jr_03e_46ec                                ; $4671: $18 $79

    cpl                                           ; $4673: $2f
    add b                                         ; $4674: $80
    sub d                                         ; $4675: $92
    or e                                          ; $4676: $b3
    and a                                         ; $4677: $a7
    call nc, $912d                                ; $4678: $d4 $2d $91
    db $d3                                        ; $467b: $d3
    ld b, $39                                     ; $467c: $06 $39
    xor $2d                                       ; $467e: $ee $2d
    adc $e6                                       ; $4680: $ce $e6
    ld e, [hl]                                    ; $4682: $5e
    or a                                          ; $4683: $b7
    rr d                                          ; $4684: $cb $1a
    sub c                                         ; $4686: $91
    ld a, [hl-]                                   ; $4687: $3a
    adc e                                         ; $4688: $8b
    db $e3                                        ; $4689: $e3
    db $f4                                        ; $468a: $f4
    ld c, e                                       ; $468b: $4b
    push hl                                       ; $468c: $e5
    and l                                         ; $468d: $a5
    ld a, h                                       ; $468e: $7c
    rrca                                          ; $468f: $0f
    nop                                           ; $4690: $00
    db $dd                                        ; $4691: $dd
    ld l, $e3                                     ; $4692: $2e $e3
    add d                                         ; $4694: $82
    sbc h                                         ; $4695: $9c
    cp [hl]                                       ; $4696: $be
    ld a, c                                       ; $4697: $79
    sbc a                                         ; $4698: $9f
    ei                                            ; $4699: $fb
    push bc                                       ; $469a: $c5
    add $3a                                       ; $469b: $c6 $3a
    call z, $eb1e                                 ; $469d: $cc $1e $eb
    ld b, e                                       ; $46a0: $43
    ld c, h                                       ; $46a1: $4c
    ld e, l                                       ; $46a2: $5d
    db $fd                                        ; $46a3: $fd
    ld h, l                                       ; $46a4: $65

jr_03e_46a5:
    ld d, $c7                                     ; $46a5: $16 $c7
    ld b, l                                       ; $46a7: $45
    and d                                         ; $46a8: $a2
    call $a32f                                    ; $46a9: $cd $2f $a3
    db $fc                                        ; $46ac: $fc
    ld [bc], a                                    ; $46ad: $02
    jp nc, Jump_03e_5b34                          ; $46ae: $d2 $34 $5b

    sbc h                                         ; $46b1: $9c
    dec a                                         ; $46b2: $3d

jr_03e_46b3:
    and l                                         ; $46b3: $a5
    sub e                                         ; $46b4: $93
    sub l                                         ; $46b5: $95
    ld d, $bf                                     ; $46b6: $16 $bf
    or h                                          ; $46b8: $b4
    cp $8f                                        ; $46b9: $fe $8f
    sub c                                         ; $46bb: $91
    rst $30                                       ; $46bc: $f7
    cp d                                          ; $46bd: $ba
    dec b                                         ; $46be: $05
    ld d, b                                       ; $46bf: $50
    ld [hl], d                                    ; $46c0: $72

jr_03e_46c1:
    ld a, a                                       ; $46c1: $7f
    nop                                           ; $46c2: $00
    ld l, $36                                     ; $46c3: $2e $36
    ld [hl+], a                                   ; $46c5: $22
    ld [hl], l                                    ; $46c6: $75
    ld d, $c7                                     ; $46c7: $16 $c7
    add hl, bc                                    ; $46c9: $09
    push de                                       ; $46ca: $d5
    ld a, h                                       ; $46cb: $7c
    ld a, h                                       ; $46cc: $7c
    reti                                          ; $46cd: $d9


    rst $08                                       ; $46ce: $cf
    sbc [hl]                                      ; $46cf: $9e
    ld d, d                                       ; $46d0: $52
    or a                                          ; $46d1: $b7
    ld b, h                                       ; $46d2: $44
    or $00                                        ; $46d3: $f6 $00
    db $dd                                        ; $46d5: $dd
    db $ec                                        ; $46d6: $ec
    add hl, hl                                    ; $46d7: $29
    ld [hl], l                                    ; $46d8: $75
    ld c, e                                       ; $46d9: $4b
    ld h, h                                       ; $46da: $64
    adc a                                         ; $46db: $8f
    ld [hl], l                                    ; $46dc: $75
    or e                                          ; $46dd: $b3
    db $d3                                        ; $46de: $d3
    ret c                                         ; $46df: $d8

    and l                                         ; $46e0: $a5
    db $eb                                        ; $46e1: $eb
    inc [hl]                                      ; $46e2: $34
    ld h, d                                       ; $46e3: $62
    ld c, a                                       ; $46e4: $4f
    nop                                           ; $46e5: $00
    add c                                         ; $46e6: $81
    ld [hl], $f7                                  ; $46e7: $36 $f7
    ld a, l                                       ; $46e9: $7d
    dec de                                        ; $46ea: $1b
    ld h, c                                       ; $46eb: $61

jr_03e_46ec:
    adc $e2                                       ; $46ec: $ce $e2
    jr c, jr_03e_46a5                             ; $46ee: $38 $b5

    cp c                                          ; $46f0: $b9
    rst $28                                       ; $46f1: $ef
    dec de                                        ; $46f2: $1b
    nop                                           ; $46f3: $00
    sub a                                         ; $46f4: $97
    cp b                                          ; $46f5: $b8
    xor d                                         ; $46f6: $aa
    dec bc                                        ; $46f7: $0b
    ld e, a                                       ; $46f8: $5f
    ld l, l                                       ; $46f9: $6d
    rst $28                                       ; $46fa: $ef
    ei                                            ; $46fb: $fb
    cp $7e                                        ; $46fc: $fe $7e
    db $fd                                        ; $46fe: $fd
    ldh [$a3], a                                  ; $46ff: $e0 $a3
    add $af                                       ; $4701: $c6 $af
    ld d, e                                       ; $4703: $53
    ld b, a                                       ; $4704: $47
    inc e                                         ; $4705: $1c
    bit 3, [hl]                                   ; $4706: $cb $5e
    sbc c                                         ; $4708: $99
    di                                            ; $4709: $f3
    sbc h                                         ; $470a: $9c
    add hl, bc                                    ; $470b: $09
    ld [hl], $f3                                  ; $470c: $36 $f3
    ld a, d                                       ; $470e: $7a
    inc bc                                        ; $470f: $03
    db $dd                                        ; $4710: $dd

Call_03e_4711:
    rst $08                                       ; $4711: $cf
    ld [hl], l                                    ; $4712: $75
    ld c, l                                       ; $4713: $4d
    inc hl                                        ; $4714: $23
    sbc e                                         ; $4715: $9b
    xor [hl]                                      ; $4716: $ae
    and h                                         ; $4717: $a4
    ld l, $0a                                     ; $4718: $2e $0a
    ld [hl], l                                    ; $471a: $75
    call nz, $9c75                                ; $471b: $c4 $75 $9c
    sbc d                                         ; $471e: $9a
    sbc a                                         ; $471f: $9f
    rst $20                                       ; $4720: $e7
    xor b                                         ; $4721: $a8
    ld e, h                                       ; $4722: $5c
    sub h                                         ; $4723: $94
    inc l                                         ; $4724: $2c
    and l                                         ; $4725: $a5
    rst $20                                       ; $4726: $e7
    cp d                                          ; $4727: $ba
    ld e, l                                       ; $4728: $5d
    ld b, [hl]                                    ; $4729: $46
    xor h                                         ; $472a: $ac
    jp c, $ea74                                   ; $472b: $da $74 $ea

    jr z, jr_03e_46c1                             ; $472e: $28 $91

    di                                            ; $4730: $f3
    inc e                                         ; $4731: $1c
    and $a8                                       ; $4732: $e6 $a8
    pop af                                        ; $4734: $f1
    ld h, l                                       ; $4735: $65
    or l                                          ; $4736: $b5
    and e                                         ; $4737: $a3
    call nz, $1ed4                                ; $4738: $c4 $d4 $1e
    nop                                           ; $473b: $00
    rst $20                                       ; $473c: $e7
    cp d                                          ; $473d: $ba
    ld [hl], $6b                                  ; $473e: $36 $6b
    ld c, [hl]                                    ; $4740: $4e
    or e                                          ; $4741: $b3
    db $fc                                        ; $4742: $fc
    ld a, [hl]                                    ; $4743: $7e
    dec e                                         ; $4744: $1d
    and a                                         ; $4745: $a7
    and $a5                                       ; $4746: $e6 $a5
    db $e4                                        ; $4748: $e4
    cp l                                          ; $4749: $bd
    nop                                           ; $474a: $00
    and d                                         ; $474b: $a2
    ld d, [hl]                                    ; $474c: $56
    sbc l                                         ; $474d: $9d
    push bc                                       ; $474e: $c5
    ld [hl], c                                    ; $474f: $71
    ld h, c                                       ; $4750: $61
    ld a, d                                       ; $4751: $7a
    or c                                          ; $4752: $b1
    ld sp, hl                                     ; $4753: $f9
    cp l                                          ; $4754: $bd
    ld sp, hl                                     ; $4755: $f9
    adc $cb                                       ; $4756: $ce $cb
    ld c, h                                       ; $4758: $4c
    ld [c], a                                     ; $4759: $e2
    xor d                                         ; $475a: $aa
    ld d, $f8                                     ; $475b: $16 $f8
    ld b, d                                       ; $475d: $42
    ld b, a                                       ; $475e: $47
    adc l                                         ; $475f: $8d
    add hl, sp                                    ; $4760: $39
    adc e                                         ; $4761: $8b
    db $e3                                        ; $4762: $e3
    ld c, d                                       ; $4763: $4a

jr_03e_4764:
    ld l, $c8                                     ; $4764: $2e $c8
    dec d                                         ; $4766: $15
    jp c, Jump_03e_5cf8                           ; $4767: $da $f8 $5c

    ld c, h                                       ; $476a: $4c
    sbc a                                         ; $476b: $9f
    db $d3                                        ; $476c: $d3
    db $ec                                        ; $476d: $ec

jr_03e_476e:
    ld [$52c7], sp                                ; $476e: $08 $c7 $52
    ld d, d                                       ; $4771: $52
    rst $28                                       ; $4772: $ef
    dec b                                         ; $4773: $05
    or [hl]                                       ; $4774: $b6
    ld e, l                                       ; $4775: $5d
    sbc d                                         ; $4776: $9a
    jr c, jr_03e_4764                             ; $4777: $38 $eb

    db $ec                                        ; $4779: $ec
    ld e, a                                       ; $477a: $5f
    call nz, $cc3a                                ; $477b: $c4 $3a $cc
    push de                                       ; $477e: $d5
    ld e, h                                       ; $477f: $5c
    ret nc                                        ; $4780: $d0

    ld [hl], l                                    ; $4781: $75
    ld a, [de]                                    ; $4782: $1a
    push hl                                       ; $4783: $e5
    ld [hl], c                                    ; $4784: $71
    ld b, h                                       ; $4785: $44
    sub e                                         ; $4786: $93
    jr jr_03e_476e                                ; $4787: $18 $e5

    ld a, l                                       ; $4789: $7d
    jp nz, $8d47                                  ; $478a: $c2 $47 $8d

    cpl                                           ; $478d: $2f
    ld [hl], $bf                                  ; $478e: $36 $bf
    jp c, $e251                                   ; $4790: $da $51 $e2

    rst $18                                       ; $4793: $df
    nop                                           ; $4794: $00
    db $dd                                        ; $4795: $dd
    ld a, d                                       ; $4796: $7a
    xor c                                         ; $4797: $a9
    call $8e2c                                    ; $4798: $cd $2c $8e
    adc e                                         ; $479b: $8b
    rlca                                          ; $479c: $07
    xor h                                         ; $479d: $ac
    jp c, $8d35                                   ; $479e: $da $35 $8d

    ld e, h                                       ; $47a1: $5c
    ld sp, hl                                     ; $47a2: $f9
    add hl, bc                                    ; $47a3: $09
    dec [hl]                                      ; $47a4: $35
    ld c, h                                       ; $47a5: $4c
    call nc, $14ef                                ; $47a6: $d4 $ef $14
    or $58                                        ; $47a9: $f6 $58
    rst $28                                       ; $47ab: $ef
    add [hl]                                      ; $47ac: $86
    ld h, $17                                     ; $47ad: $26 $17
    ld a, [hl-]                                   ; $47af: $3a
    adc h                                         ; $47b0: $8c
    xor c                                         ; $47b1: $a9
    xor e                                         ; $47b2: $ab
    adc c                                         ; $47b3: $89
    xor c                                         ; $47b4: $a9

jr_03e_47b5:
    dec bc                                        ; $47b5: $0b
    ld e, a                                       ; $47b6: $5f
    ld a, [hl]                                    ; $47b7: $7e
    rst $20                                       ; $47b8: $e7
    adc c                                         ; $47b9: $89
    or l                                          ; $47ba: $b5
    cp d                                          ; $47bb: $ba
    cp d                                          ; $47bc: $ba
    and c                                         ; $47bd: $a1
    ld c, a                                       ; $47be: $4f
    cp c                                          ; $47bf: $b9
    ld [hl], a                                    ; $47c0: $77
    add l                                         ; $47c1: $85

jr_03e_47c2:
    ld h, e                                       ; $47c2: $63
    xor c                                         ; $47c3: $a9
    ld [hl], b                                    ; $47c4: $70
    cp a                                          ; $47c5: $bf
    add sp, -$1a                                  ; $47c6: $e8 $e6
    ld d, e                                       ; $47c8: $53
    ld [$5316], a                                 ; $47c9: $ea $16 $53
    ld e, d                                       ; $47cc: $5a
    sbc $00                                       ; $47cd: $de $00
    halt                                          ; $47cf: $76
    jr c, jr_03e_47b5                             ; $47d0: $38 $e3

    ld e, $63                                     ; $47d2: $1e $63
    xor $57                                       ; $47d4: $ee $57
    ld c, c                                       ; $47d6: $49
    call $a928                                    ; $47d7: $cd $28 $a9
    di                                            ; $47da: $f3
    xor c                                         ; $47db: $a9

jr_03e_47dc:
    ldh a, [$61]                                  ; $47dc: $f0 $61
    xor [hl]                                      ; $47de: $ae
    halt                                          ; $47df: $76
    ld h, $98                                     ; $47e0: $26 $98
    cp d                                          ; $47e2: $ba
    cpl                                           ; $47e3: $2f
    xor [hl]                                      ; $47e4: $ae
    add $d4                                       ; $47e5: $c6 $d4
    ld a, c                                       ; $47e7: $79
    ld l, $94                                     ; $47e8: $2e $94
    ld d, [hl]                                    ; $47ea: $56
    ld d, e                                       ; $47eb: $53
    or $07                                        ; $47ec: $f6 $07
    rst $20                                       ; $47ee: $e7
    jp nz, Jump_03e_62f4                          ; $47ef: $c2 $f4 $62

    di                                            ; $47f2: $f3
    cp b                                          ; $47f3: $b8
    ldh [rPCM34], a                               ; $47f4: $e0 $77
    jr z, jr_03e_47c2                             ; $47f6: $28 $ca

    ld de, $85ab                                  ; $47f8: $11 $ab $85
    jr jr_03e_47dc                                ; $47fb: $18 $df

    rst $20                                       ; $47fd: $e7
    ld a, [hl]                                    ; $47fe: $7e
    ld c, $17                                     ; $47ff: $0e $17
    dec h                                         ; $4801: $25
    srl h                                         ; $4802: $cb $3c
    ld d, a                                       ; $4804: $57
    ld a, [hl]                                    ; $4805: $7e
    ld [hl], l                                    ; $4806: $75
    ld h, d                                       ; $4807: $62
    db $fc                                        ; $4808: $fc
    add e                                         ; $4809: $83
    rst $38                                       ; $480a: $ff

Call_03e_480b:
    sbc [hl]                                      ; $480b: $9e
    db $fd                                        ; $480c: $fd
    ld [hl], a                                    ; $480d: $77
    xor d                                         ; $480e: $aa
    ld [hl], $1d                                  ; $480f: $36 $1d
    db $f4                                        ; $4811: $f4
    ld hl, sp+$3e                                 ; $4812: $f8 $3e
    ld h, a                                       ; $4814: $67
    ld a, [de]                                    ; $4815: $1a
    sbc d                                         ; $4816: $9a
    ld e, h                                       ; $4817: $5c
    add sp, $30                                   ; $4818: $e8 $30
    and [hl]                                      ; $481a: $a6
    adc $bc                                       ; $481b: $ce $bc
    rst $38                                       ; $481d: $ff
    add hl, sp                                    ; $481e: $39
    call z, $2f85                                 ; $481f: $cc $85 $2f
    cp a                                          ; $4822: $bf
    di                                            ; $4823: $f3
    call nz, Call_03e_5d5a                        ; $4824: $c4 $5a $5d
    db $dd                                        ; $4827: $dd
    ret nc                                        ; $4828: $d0

    and a                                         ; $4829: $a7
    call c, Call_03e_480b                         ; $482a: $dc $0b $48
    ld e, a                                       ; $482d: $5f
    or l                                          ; $482e: $b5
    jp hl                                         ; $482f: $e9


    sbc d                                         ; $4830: $9a
    and h                                         ; $4831: $a4
    sbc $00                                       ; $4832: $de $00
    or $af                                        ; $4834: $f6 $af

jr_03e_4836:
    db $d3                                        ; $4836: $d3
    and $73                                       ; $4837: $e6 $73
    or l                                          ; $4839: $b5
    or e                                          ; $483a: $b3
    xor $eb                                       ; $483b: $ee $eb
    rst $28                                       ; $483d: $ef
    inc d                                         ; $483e: $14
    ld c, [hl]                                    ; $483f: $4e
    rst $18                                       ; $4840: $df
    ld [hl], h                                    ; $4841: $74
    and c                                         ; $4842: $a1
    ld c, a                                       ; $4843: $4f
    ld c, h                                       ; $4844: $4c
    sbc l                                         ; $4845: $9d
    rst $20                                       ; $4846: $e7
    xor b                                         ; $4847: $a8
    sub c                                         ; $4848: $91
    dec hl                                        ; $4849: $2b
    ld [hl], $09                                  ; $484a: $36 $09
    sbc a                                         ; $484c: $9f
    ld h, [hl]                                    ; $484d: $66
    ld b, a                                       ; $484e: $47
    cp b                                          ; $484f: $b8
    sbc b                                         ; $4850: $98
    ld a, $e7                                     ; $4851: $3e $e7
    xor c                                         ; $4853: $a9
    and c                                         ; $4854: $a1
    xor e                                         ; $4855: $ab
    xor d                                         ; $4856: $aa
    di                                            ; $4857: $f3
    ld e, h                                       ; $4858: $5c
    ld a, c                                       ; $4859: $79
    sbc l                                         ; $485a: $9d
    ld c, c                                       ; $485b: $49
    ld a, l                                       ; $485c: $7d
    sbc l                                         ; $485d: $9d
    and a                                         ; $485e: $a7
    ld a, $24                                     ; $485f: $3e $24
    rst $28                                       ; $4861: $ef
    cp a                                          ; $4862: $bf
    ld d, e                                       ; $4863: $53
    xor b                                         ; $4864: $a8
    or e                                          ; $4865: $b3
    jr c, jr_03e_4836                             ; $4866: $38 $ce

    or a                                          ; $4868: $b7
    ld a, [hl]                                    ; $4869: $7e
    cp h                                          ; $486a: $bc
    ld bc, $3b67                                  ; $486b: $01 $67 $3b
    ld h, d                                       ; $486e: $62
    jp nz, Jump_03e_7357                          ; $486f: $c2 $57 $73

    pop bc                                        ; $4872: $c1
    rst $28                                       ; $4873: $ef
    ld d, h                                       ; $4874: $54
    ld l, l                                       ; $4875: $6d
    ld a, [hl-]                                   ; $4876: $3a
    db $fd                                        ; $4877: $fd
    ld d, d                                       ; $4878: $52
    ld a, c                                       ; $4879: $79
    sbc a                                         ; $487a: $9f
    ldh a, [$35]                                  ; $487b: $f0 $35
    inc [hl]                                      ; $487d: $34
    push bc                                       ; $487e: $c5
    ld l, c                                       ; $487f: $69
    adc $53                                       ; $4880: $ce $53
    ld b, e                                       ; $4882: $43
    ld d, a                                       ; $4883: $57
    ld d, l                                       ; $4884: $55
    rst $28                                       ; $4885: $ef
    ei                                            ; $4886: $fb
    sbc [hl]                                      ; $4887: $9e
    rst $20                                       ; $4888: $e7
    adc h                                         ; $4889: $8c
    ld l, l                                       ; $488a: $6d
    sbc l                                         ; $488b: $9d
    dec bc                                        ; $488c: $0b
    ld [hl], d                                    ; $488d: $72
    ld l, a                                       ; $488e: $6f
    and d                                         ; $488f: $a2
    ld a, e                                       ; $4890: $7b
    sbc a                                         ; $4891: $9f
    scf                                           ; $4892: $37
    nop                                           ; $4893: $00
    rla                                           ; $4894: $17
    ld e, e                                       ; $4895: $5b
    add hl, bc                                    ; $4896: $09
    sbc a                                         ; $4897: $9f
    ld h, a                                       ; $4898: $67
    add a                                         ; $4899: $87
    ld h, d                                       ; $489a: $62
    di                                            ; $489b: $f3
    ld [hl], l                                    ; $489c: $75
    ld [$b294], a                                 ; $489d: $ea $94 $b2
    xor a                                         ; $48a0: $af
    dec de                                        ; $48a1: $1b
    sub h                                         ; $48a2: $94
    ld a, [hl-]                                   ; $48a3: $3a
    db $eb                                        ; $48a4: $eb
    sbc $ea                                       ; $48a5: $de $ea
    db $fc                                        ; $48a7: $fc
    dec bc                                        ; $48a8: $0b
    and [hl]                                      ; $48a9: $a6
    xor [hl]                                      ; $48aa: $ae
    and h                                         ; $48ab: $a4
    ld l, $0a                                     ; $48ac: $2e $0a
    push af                                       ; $48ae: $f5
    sbc $39                                       ; $48af: $de $39
    inc d                                         ; $48b1: $14
    ret                                           ; $48b2: $c9


    ld hl, sp-$4e                                 ; $48b3: $f8 $b2
    sbc a                                         ; $48b5: $9f
    jp $c945                                      ; $48b6: $c3 $45 $c9


    ld d, d                                       ; $48b9: $52
    ld b, [hl]                                    ; $48ba: $46
    db $dd                                        ; $48bb: $dd
    rla                                           ; $48bc: $17
    jr z, jr_03e_4926                             ; $48bd: $28 $67

    ld [hl], c                                    ; $48bf: $71
    sbc h                                         ; $48c0: $9c
    ld b, e                                       ; $48c1: $43
    xor $57                                       ; $48c2: $ee $57
    ld a, [hl]                                    ; $48c4: $7e
    db $10                                        ; $48c5: $10
    ld sp, $06f2                                  ; $48c6: $31 $f2 $06
    db $dd                                        ; $48c9: $dd
    ld a, d                                       ; $48ca: $7a
    push de                                       ; $48cb: $d5
    dec c                                         ; $48cc: $0d
    ld c, d                                       ; $48cd: $4a
    ld e, l                                       ; $48ce: $5d
    add sp, -$58                                  ; $48cf: $e8 $a8
    dec a                                         ; $48d1: $3d
    nop                                           ; $48d2: $00
    ld a, l                                       ; $48d3: $7d
    ld d, e                                       ; $48d4: $53
    rla                                           ; $48d5: $17
    adc c                                         ; $48d6: $89
    ld e, [hl]                                    ; $48d7: $5e
    ld l, h                                       ; $48d8: $6c
    ld e, $67                                     ; $48d9: $1e $67
    ld [hl], c                                    ; $48db: $71
    ld e, h                                       ; $48dc: $5c
    ldh a, [$3b]                                  ; $48dd: $f0 $3b
    sub h                                         ; $48df: $94
    ld sp, hl                                     ; $48e0: $f9
    rst $30                                       ; $48e1: $f7
    cp c                                          ; $48e2: $b9
    cp d                                          ; $48e3: $ba
    ld c, e                                       ; $48e4: $4b
    rla                                           ; $48e5: $17
    ld a, [hl-]                                   ; $48e6: $3a
    adc h                                         ; $48e7: $8c
    xor c                                         ; $48e8: $a9
    dec bc                                        ; $48e9: $0b
    ld d, e                                       ; $48ea: $53
    ld b, [hl]                                    ; $48eb: $46
    ld c, l                                       ; $48ec: $4d
    ld hl, sp-$46                                 ; $48ed: $f8 $ba
    db $eb                                        ; $48ef: $eb
    ld [hl], a                                    ; $48f0: $77
    xor b                                         ; $48f1: $a8
    dec a                                         ; $48f2: $3d
    ld bc, $5c81                                  ; $48f3: $01 $81 $5c
    call Call_03e_7f05                            ; $48f6: $cd $05 $7f
    ld l, c                                       ; $48f9: $69
    sbc h                                         ; $48fa: $9c
    ld c, b                                       ; $48fb: $48
    di                                            ; $48fc: $f3
    ld a, c                                       ; $48fd: $79
    rst $18                                       ; $48fe: $df
    or a                                          ; $48ff: $b7
    push bc                                       ; $4900: $c5
    ld [hl], c                                    ; $4901: $71
    sbc [hl]                                      ; $4902: $9e
    dec e                                         ; $4903: $1d
    adc d                                         ; $4904: $8a
    call $a9d7                                    ; $4905: $cd $d7 $a9
    dec bc                                        ; $4908: $0b

jr_03e_4909:
    ld a, [hl]                                    ; $4909: $7e
    and a                                         ; $490a: $a7
    cp h                                          ; $490b: $bc
    call z, $ce24                                 ; $490c: $cc $24 $ce
    cp $21                                        ; $490f: $fe $21
    ld l, c                                       ; $4911: $69
    cp $9e                                        ; $4912: $fe $9e
    sbc l                                         ; $4914: $9d
    adc [hl]                                      ; $4915: $8e
    ld h, l                                       ; $4916: $65
    sub b                                         ; $4917: $90
    ld a, e                                       ; $4918: $7b
    pop af                                        ; $4919: $f1
    rst $18                                       ; $491a: $df
    ld c, c                                       ; $491b: $49
    or l                                          ; $491c: $b5
    jr c, jr_03e_4909                             ; $491d: $38 $ea

    xor h                                         ; $491f: $ac
    db $d3                                        ; $4920: $d3
    rst $28                                       ; $4921: $ef
    ld [hl], b                                    ; $4922: $70
    sbc [hl]                                      ; $4923: $9e
    ld a, e                                       ; $4924: $7b
    ld l, h                                       ; $4925: $6c

jr_03e_4926:
    push af                                       ; $4926: $f5
    rla                                           ; $4927: $17
    ld [$cbbd], a                                 ; $4928: $ea $bd $cb
    cp [hl]                                       ; $492b: $be
    xor h                                         ; $492c: $ac
    jp nz, Jump_03e_53fe                          ; $492d: $c2 $fe $53

    add [hl]                                      ; $4930: $86
    cp a                                          ; $4931: $bf
    cpl                                           ; $4932: $2f
    ld d, b                                       ; $4933: $50
    adc $b3                                       ; $4934: $ce $b3
    inc l                                         ; $4936: $2c
    and h                                         ; $4937: $a4
    ld c, b                                       ; $4938: $48
    adc $73                                       ; $4939: $ce $73
    ld d, c                                       ; $493b: $51
    xor b                                         ; $493c: $a8
    inc sp                                        ; $493d: $33
    rst $18                                       ; $493e: $df
    ld h, c                                       ; $493f: $61
    rst $38                                       ; $4940: $ff
    rst $10                                       ; $4941: $d7
    dec de                                        ; $4942: $1b
    nop                                           ; $4943: $00
    ld a, l                                       ; $4944: $7d
    ld [hl], e                                    ; $4945: $73
    dec h                                         ; $4946: $25
    rla                                           ; $4947: $17
    db $fc                                        ; $4948: $fc
    adc [hl]                                      ; $4949: $8e
    call Call_000_242f                            ; $494a: $cd $2f $24
    ld [$bcfb], a                                 ; $494d: $ea $fb $bc
    rla                                           ; $4950: $17
    ret c                                         ; $4951: $d8

    add [hl]                                      ; $4952: $86
    cp c                                          ; $4953: $b9
    sub d                                         ; $4954: $92
    db $d3                                        ; $4955: $d3
    rst $28                                       ; $4956: $ef
    ld [hl], b                                    ; $4957: $70
    sub $87                                       ; $4958: $d6 $87
    ld c, a                                       ; $495a: $4f
    add hl, bc                                    ; $495b: $09
    add hl, sp                                    ; $495c: $39
    ret                                           ; $495d: $c9


    ld e, c                                       ; $495e: $59
    inc e                                         ; $495f: $1c
    ld d, a                                       ; $4960: $57
    ld [hl], d                                    ; $4961: $72
    ld e, a                                       ; $4962: $5f
    and c                                         ; $4963: $a1
    inc [hl]                                      ; $4964: $34
    ret z                                         ; $4965: $c8

    db $fd                                        ; $4966: $fd
    cp l                                          ; $4967: $bd
    dec hl                                        ; $4968: $2b
    cp [hl]                                       ; $4969: $be
    ld c, [hl]                                    ; $496a: $4e
    cp l                                          ; $496b: $bd
    ld bc, $3767                                  ; $496c: $01 $67 $37
    inc de                                        ; $496f: $13
    call z, Call_000_3d11                         ; $4970: $cc $11 $3d
    db $eb                                        ; $4973: $eb
    call nz, Call_000_3ef6                        ; $4974: $c4 $f6 $3e
    pop hl                                        ; $4977: $e1
    xor e                                         ; $4978: $ab
    ld d, e                                       ; $4979: $53
    inc a                                         ; $497a: $3c
    and l                                         ; $497b: $a5
    and $3c                                       ; $497c: $e6 $3c
    ld b, a                                       ; $497e: $47
    db $fd                                        ; $497f: $fd
    ld d, l                                       ; $4980: $55
    and a                                         ; $4981: $a7
    call nc, $af7f                                ; $4982: $d4 $7f $af
    ld a, e                                       ; $4985: $7b
    ld l, a                                       ; $4986: $6f
    db $db                                        ; $4987: $db
    ld a, [hl-]                                   ; $4988: $3a
    rla                                           ; $4989: $17
    ld a, h                                       ; $498a: $7c
    ld b, e                                       ; $498b: $43
    ld e, l                                       ; $498c: $5d
    ld hl, sp-$0e                                 ; $498d: $f8 $f2
    xor e                                         ; $498f: $ab
    sbc e                                         ; $4990: $9b
    cp h                                          ; $4991: $bc
    call z, $ae24                                 ; $4992: $cc $24 $ae
    and h                                         ; $4995: $a4
    ld l, $fb                                     ; $4996: $2e $fb
    and l                                         ; $4998: $a5
    adc $73                                       ; $4999: $ce $73
    push hl                                       ; $499b: $e5
    ld [hl], l                                    ; $499c: $75
    ld d, c                                       ; $499d: $51
    xor b                                         ; $499e: $a8
    inc sp                                        ; $499f: $33
    rst $18                                       ; $49a0: $df
    ld h, c                                       ; $49a1: $61
    rst $38                                       ; $49a2: $ff
    rst $10                                       ; $49a3: $d7
    ld a, l                                       ; $49a4: $7d
    ld e, c                                       ; $49a5: $59
    db $dd                                        ; $49a6: $dd
    or h                                          ; $49a7: $b4
    adc $c5                                       ; $49a8: $ce $c5
    add $3a                                       ; $49aa: $c6 $3a
    call z, Call_000_009e                         ; $49ac: $cc $9e $00
    rst $20                                       ; $49af: $e7
    inc [hl]                                      ; $49b0: $34
    dec [hl]                                      ; $49b1: $35
    xor [hl]                                      ; $49b2: $ae
    add h                                         ; $49b3: $84
    add h                                         ; $49b4: $84
    xor a                                         ; $49b5: $af
    cp e                                          ; $49b6: $bb
    ld [hl], d                                    ; $49b7: $72
    ld b, h                                       ; $49b8: $44
    db $e3                                        ; $49b9: $e3
    adc b                                         ; $49ba: $88
    ld d, c                                       ; $49bb: $51
    ld a, [hl]                                    ; $49bc: $7e
    sbc l                                         ; $49bd: $9d
    ld b, [hl]                                    ; $49be: $46
    db $ec                                        ; $49bf: $ec
    add hl, sp                                    ; $49c0: $39
    dec sp                                        ; $49c1: $3b
    adc l                                         ; $49c2: $8d
    ld e, l                                       ; $49c3: $5d
    inc sp                                        ; $49c4: $33
    reti                                          ; $49c5: $d9


    adc a                                         ; $49c6: $8f
    adc a                                         ; $49c7: $8f
    ld a, $6f                                     ; $49c8: $3e $6f
    nop                                           ; $49ca: $00
    db $dd                                        ; $49cb: $dd
    ei                                            ; $49cc: $fb
    ld [hl], b                                    ; $49cd: $70
    call nc, $a5d8                                ; $49ce: $d4 $d8 $a5

jr_03e_49d1:
    and e                                         ; $49d1: $a3
    add [hl]                                      ; $49d2: $86
    db $ed                                        ; $49d3: $ed
    pop de                                        ; $49d4: $d1
    daa                                           ; $49d5: $27
    ld a, h                                       ; $49d6: $7c
    ld bc, $2319                                  ; $49d7: $01 $19 $23
    and l                                         ; $49da: $a5
    rst $20                                       ; $49db: $e7
    adc $61                                       ; $49dc: $ce $61
    add a                                         ; $49de: $87
    ld h, d                                       ; $49df: $62
    di                                            ; $49e0: $f3
    cp d                                          ; $49e1: $ba
    ld d, b                                       ; $49e2: $50
    xor b                                         ; $49e3: $a8
    pop af                                        ; $49e4: $f1
    and l                                         ; $49e5: $a5
    ld [hl], b                                    ; $49e6: $70
    ld [hl], l                                    ; $49e7: $75
    sub a                                         ; $49e8: $97
    xor $23                                       ; $49e9: $ee $23
    pop de                                        ; $49eb: $d1
    inc [hl]                                      ; $49ec: $34
    ld e, e                                       ; $49ed: $5b
    call c, $a4af                                 ; $49ee: $dc $af $a4
    adc [hl]                                      ; $49f1: $8e
    ld a, [de]                                    ; $49f2: $1a
    sbc l                                         ; $49f3: $9d
    ld l, a                                       ; $49f4: $6f
    xor c                                         ; $49f5: $a9
    or e                                          ; $49f6: $b3
    xor [hl]                                      ; $49f7: $ae
    ld h, $a6                                     ; $49f8: $26 $a6
    xor $57                                       ; $49fa: $ee $57
    ld d, d                                       ; $49fc: $52
    rst $30                                       ; $49fd: $f7
    ld [$a630], a                                 ; $49fe: $ea $30 $a6
    adc $e2                                       ; $4a01: $ce $e2
    jr c, jr_03e_49d1                             ; $4a03: $38 $cc

    ld l, c                                       ; $4a05: $69
    ld [c], a                                     ; $4a06: $e2
    inc a                                         ; $4a07: $3c
    rla                                           ; $4a08: $17
    db $dd                                        ; $4a09: $dd
    ld a, [de]                                    ; $4a0a: $1a
    ld a, [de]                                    ; $4a0b: $1a
    ld d, a                                       ; $4a0c: $57
    ld [hl], a                                    ; $4a0d: $77
    adc b                                         ; $4a0e: $88
    and [hl]                                      ; $4a0f: $a6
    db $fd                                        ; $4a10: $fd
    dec c                                         ; $4a11: $0d
    nop                                           ; $4a12: $00
    db $dd                                        ; $4a13: $dd
    cpl                                           ; $4a14: $2f
    inc de                                        ; $4a15: $13
    ld [$77cc], a                                 ; $4a16: $ea $cc $77
    ret c                                         ; $4a19: $d8

    rst $38                                       ; $4a1a: $ff
    or l                                          ; $4a1b: $b5
    rst $20                                       ; $4a1c: $e7
    cp d                                          ; $4a1d: $ba
    sbc l                                         ; $4a1e: $9d
    adc a                                         ; $4a1f: $8f
    sub c                                         ; $4a20: $91
    jr @+$6f                                      ; $4a21: $18 $6d

    rla                                           ; $4a23: $17
    cp [hl]                                       ; $4a24: $be
    cp [hl]                                       ; $4a25: $be
    call z, Call_000_3cb3                         ; $4a26: $cc $b3 $3c
    ld b, [hl]                                    ; $4a29: $46
    adc $b3                                       ; $4a2a: $ce $b3
    inc l                                         ; $4a2c: $2c
    and h                                         ; $4a2d: $a4
    ld c, b                                       ; $4a2e: $48
    adc $73                                       ; $4a2f: $ce $73
    ld d, c                                       ; $4a31: $51
    xor b                                         ; $4a32: $a8
    inc sp                                        ; $4a33: $33
    rst $18                                       ; $4a34: $df
    ld h, c                                       ; $4a35: $61
    rst $38                                       ; $4a36: $ff
    rst $10                                       ; $4a37: $d7
    ld de, $ff67                                  ; $4a38: $11 $67 $ff
    and l                                         ; $4a3b: $a5
    inc h                                         ; $4a3c: $24
    ld c, h                                       ; $4a3d: $4c
    ld [de], a                                    ; $4a3e: $12
    ld a, e                                       ; $4a3f: $7b
    xor h                                         ; $4a40: $ac
    db $db                                        ; $4a41: $db
    push de                                       ; $4a42: $d5
    xor e                                         ; $4a43: $ab
    cp c                                          ; $4a44: $b9
    rrca                                          ; $4a45: $0f
    dec e                                         ; $4a46: $1d
    dec [hl]                                      ; $4a47: $35
    and $7e                                       ; $4a48: $e6 $7e
    ld d, $c7                                     ; $4a4a: $16 $c7
    ld a, c                                       ; $4a4c: $79
    or $b3                                        ; $4a4d: $f6 $b3
    dec e                                         ; $4a4f: $1d
    ld sp, $cbca                                  ; $4a50: $31 $ca $cb
    cp [hl]                                       ; $4a53: $be
    inc l                                         ; $4a54: $2c
    ld c, d                                       ; $4a55: $4a
    sub [hl]                                      ; $4a56: $96
    add l                                         ; $4a57: $85
    cpl                                           ; $4a58: $2f
    ccf                                           ; $4a59: $3f
    ld c, a                                       ; $4a5a: $4f
    xor l                                         ; $4a5b: $ad
    or h                                          ; $4a5c: $b4
    sub a                                         ; $4a5d: $97
    sub l                                         ; $4a5e: $95
    rst $18                                       ; $4a5f: $df
    ld b, a                                       ; $4a60: $47
    and d                                         ; $4a61: $a2
    ld l, c                                       ; $4a62: $69
    or [hl]                                       ; $4a63: $b6
    ret c                                         ; $4a64: $d8

    ld h, e                                       ; $4a65: $63
    db $dd                                        ; $4a66: $dd
    xor [hl]                                      ; $4a67: $ae
    ld hl, sp+$3a                                 ; $4a68: $f8 $3a
    ld [hl], l                                    ; $4a6a: $75
    cp a                                          ; $4a6b: $bf
    ld a, [bc]                                    ; $4a6c: $0a
    ld h, l                                       ; $4a6d: $65
    ccf                                           ; $4a6e: $3f
    ei                                            ; $4a6f: $fb
    add a                                         ; $4a70: $87
    and h                                         ; $4a71: $a4
    ld sp, hl                                     ; $4a72: $f9
    ld e, $00                                     ; $4a73: $1e $00
    db $dd                                        ; $4a75: $dd
    db $ec                                        ; $4a76: $ec

Jump_03e_4a77:
    or e                                          ; $4a77: $b3
    ld a, h                                       ; $4a78: $7c
    adc a                                         ; $4a79: $8f
    push af                                       ; $4a7a: $f5

Call_03e_4a7b:
    call Call_03e_4351                            ; $4a7b: $cd $51 $43
    jp z, Jump_03e_7e77                           ; $4a7e: $ca $77 $7e

    dec d                                         ; $4a81: $15
    ld c, d                                       ; $4a82: $4a
    ld [$6982], a                                 ; $4a83: $ea $82 $69
    cp l                                          ; $4a86: $bd
    ld bc, $f881                                  ; $4a87: $01 $81 $f8
    ld hl, $fc17                                  ; $4a8a: $21 $17 $fc
    dec [hl]                                      ; $4a8d: $35
    adc h                                         ; $4a8e: $8c
    call nz, Call_000_3ef8                        ; $4a8f: $c4 $f8 $3e
    rla                                           ; $4a92: $17
    cp [hl]                                       ; $4a93: $be
    cp [hl]                                       ; $4a94: $be
    call z, Call_000_3cb3                         ; $4a95: $cc $b3 $3c
    ld b, [hl]                                    ; $4a98: $46
    adc $b3                                       ; $4a99: $ce $b3
    inc l                                         ; $4a9b: $2c
    and h                                         ; $4a9c: $a4
    ld c, b                                       ; $4a9d: $48
    adc $73                                       ; $4a9e: $ce $73
    ld d, c                                       ; $4aa0: $51
    xor b                                         ; $4aa1: $a8
    inc sp                                        ; $4aa2: $33
    rst $18                                       ; $4aa3: $df
    ld h, c                                       ; $4aa4: $61
    rst $38                                       ; $4aa5: $ff
    rst $10                                       ; $4aa6: $d7
    ld a, c                                       ; $4aa7: $79
    sub [hl]                                      ; $4aa8: $96
    add l                                         ; $4aa9: $85
    xor a                                         ; $4aaa: $af
    xor l                                         ; $4aab: $ad
    sub h                                         ; $4aac: $94
    ld e, h                                       ; $4aad: $5c
    jr z, jr_03e_4ac9                             ; $4aae: $28 $19

    ld l, h                                       ; $4ab0: $6c
    sbc l                                         ; $4ab1: $9d
    and $f3                                       ; $4ab2: $e6 $f3
    sbc $d5                                       ; $4ab4: $de $d5
    dec hl                                        ; $4ab6: $2b
    ld e, h                                       ; $4ab7: $5c
    ldh a, [$57]                                  ; $4ab8: $f0 $57
    and a                                         ; $4aba: $a7
    ld hl, sp-$1a                                 ; $4abb: $f8 $e6
    di                                            ; $4abd: $f3
    ld e, [hl]                                    ; $4abe: $5e
    ld l, a                                       ; $4abf: $6f
    ld hl, $d4eb                                  ; $4ac0: $21 $eb $d4
    ld e, c                                       ; $4ac3: $59
    inc e                                         ; $4ac4: $1c
    ld b, a                                       ; $4ac5: $47
    adc l                                         ; $4ac6: $8d
    rst $18                                       ; $4ac7: $df
    ld sp, hl                                     ; $4ac8: $f9

Jump_03e_4ac9:
jr_03e_4ac9:
    dec [hl]                                      ; $4ac9: $35
    adc h                                         ; $4aca: $8c
    call nz, Call_000_3ef8                        ; $4acb: $c4 $f8 $3e
    daa                                           ; $4ace: $27
    reti                                          ; $4acf: $d9


    ld a, c                                       ; $4ad0: $79
    ld e, c                                       ; $4ad1: $59
    ret                                           ; $4ad2: $c9


    ld e, c                                       ; $4ad3: $59
    inc e                                         ; $4ad4: $1c
    ld b, a                                       ; $4ad5: $47
    adc l                                         ; $4ad6: $8d
    ld d, l                                       ; $4ad7: $55
    ld d, a                                       ; $4ad8: $57
    ld l, c                                       ; $4ad9: $69
    ld d, b                                       ; $4ada: $50
    dec hl                                        ; $4adb: $2b
    adc a                                         ; $4adc: $8f
    ld a, $6f                                     ; $4add: $3e $6f
    nop                                           ; $4adf: $00
    db $dd                                        ; $4ae0: $dd
    ld a, e                                       ; $4ae1: $7b
    db $db                                        ; $4ae2: $db
    sub $39                                       ; $4ae3: $d6 $39
    db $fd                                        ; $4ae5: $fd
    ld c, [hl]                                    ; $4ae6: $4e
    push de                                       ; $4ae7: $d5
    and [hl]                                      ; $4ae8: $a6
    dec hl                                        ; $4ae9: $2b
    add hl, sp                                    ; $4aea: $39
    rst $08                                       ; $4aeb: $cf
    sbc l                                         ; $4aec: $9d
    ld e, e                                       ; $4aed: $5b
    ld e, h                                       ; $4aee: $5c
    ld [hl], l                                    ; $4aef: $75
    or l                                          ; $4af0: $b5
    dec d                                         ; $4af1: $15
    cp [hl]                                       ; $4af2: $be
    cp d                                          ; $4af3: $ba
    dec l                                         ; $4af4: $2d
    and h                                         ; $4af5: $a4
    ld c, b                                       ; $4af6: $48
    adc $73                                       ; $4af7: $ce $73
    ld d, c                                       ; $4af9: $51
    xor b                                         ; $4afa: $a8
    inc sp                                        ; $4afb: $33
    rst $18                                       ; $4afc: $df
    ld h, c                                       ; $4afd: $61
    rst $38                                       ; $4afe: $ff
    rst $10                                       ; $4aff: $d7
    sbc [hl]                                      ; $4b00: $9e
    dec bc                                        ; $4b01: $0b
    db $e4                                        ; $4b02: $e4
    ld c, d                                       ; $4b03: $4a
    adc $64                                       ; $4b04: $ce $64
    dec e                                         ; $4b06: $1d
    ld c, d                                       ; $4b07: $4a
    push de                                       ; $4b08: $d5
    db $fd                                        ; $4b09: $fd
    inc e                                         ; $4b0a: $1c
    ld l, $b6                                     ; $4b0b: $2e $b6
    jr nc, jr_03e_4b16                            ; $4b0d: $30 $07

    ld c, c                                       ; $4b0f: $49
    inc hl                                        ; $4b10: $23
    sub h                                         ; $4b11: $94
    ld h, e                                       ; $4b12: $63
    reti                                          ; $4b13: $d9


    rra                                           ; $4b14: $1f
    sbc h                                         ; $4b15: $9c

jr_03e_4b16:
    dec bc                                        ; $4b16: $0b
    ld e, a                                       ; $4b17: $5f
    rst $18                                       ; $4b18: $df
    rst $20                                       ; $4b19: $e7
    xor h                                         ; $4b1a: $ac
    ld d, e                                       ; $4b1b: $53
    xor [hl]                                      ; $4b1c: $ae
    db $e4                                        ; $4b1d: $e4
    ld b, d                                       ; $4b1e: $42
    and c                                         ; $4b1f: $a1
    add $aa                                       ; $4b20: $c6 $aa
    ei                                            ; $4b22: $fb
    sbc l                                         ; $4b23: $9d
    db $e3                                        ; $4b24: $e3
    ld [$a14e], a                                 ; $4b25: $ea $4e $a1
    ld c, a                                       ; $4b28: $4f
    pop hl                                        ; $4b29: $e1
    jp nz, Jump_03e_5f97                          ; $4b2a: $c2 $97 $5f

    and l                                         ; $4b2d: $a5
    ld b, c                                       ; $4b2e: $41
    xor l                                         ; $4b2f: $ad
    cp h                                          ; $4b30: $bc
    xor h                                         ; $4b31: $ac
    db $fc                                        ; $4b32: $fc
    ld a, l                                       ; $4b33: $7d
    rst $18                                       ; $4b34: $df
    ld [hl], l                                    ; $4b35: $75
    ld e, l                                       ; $4b36: $5d
    jp Jump_03e_7fe7                              ; $4b37: $c3 $e7 $7f


    dec c                                         ; $4b3a: $0d
    ld [hl], d                                    ; $4b3b: $72
    ld e, a                                       ; $4b3c: $5f
    ld l, [hl]                                    ; $4b3d: $6e
    nop                                           ; $4b3e: $00
    db $dd                                        ; $4b3f: $dd
    xor a                                         ; $4b40: $af
    ld l, b                                       ; $4b41: $68
    ld d, b                                       ; $4b42: $50
    dec hl                                        ; $4b43: $2b
    cpl                                           ; $4b44: $2f
    dec hl                                        ; $4b45: $2b
    ccf                                           ; $4b46: $3f
    adc e                                         ; $4b47: $8b
    xor e                                         ; $4b48: $ab
    jp c, Jump_000_0013                           ; $4b49: $da $13 $00

    ld a, l                                       ; $4b4c: $7d
    sbc d                                         ; $4b4d: $9a
    cp h                                          ; $4b4e: $bc
    add a                                         ; $4b4f: $87
    cpl                                           ; $4b50: $2f
    ld [hl], l                                    ; $4b51: $75
    call nc, $d5d8                                ; $4b52: $d4 $d8 $d5
    ld [hl], h                                    ; $4b55: $74
    dec [hl]                                      ; $4b56: $35
    ld h, e                                       ; $4b57: $63
    inc hl                                        ; $4b58: $23
    ld a, [$711c]                                 ; $4b59: $fa $1c $71
    xor a                                         ; $4b5c: $af
    ld c, $63                                     ; $4b5d: $0e $63
    ld [$8e2c], a                                 ; $4b5f: $ea $2c $8e
    jp Jump_000_269c                              ; $4b62: $c3 $9c $26


    adc $73                                       ; $4b65: $ce $73
    dec d                                         ; $4b67: $15
    ld b, a                                       ; $4b68: $47
    adc l                                         ; $4b69: $8d
    ld a, [c]                                     ; $4b6a: $f2
    ld l, e                                       ; $4b6b: $6b
    ld l, b                                       ; $4b6c: $68
    ld e, h                                       ; $4b6d: $5c
    db $dd                                        ; $4b6e: $dd
    ld hl, $f69a                                  ; $4b6f: $21 $9a $f6
    rst $30                                       ; $4b72: $f7
    ld l, $2e                                     ; $4b73: $2e $2e
    sub l                                         ; $4b75: $95
    and $3f                                       ; $4b76: $e6 $3f
    ld [hl], l                                    ; $4b78: $75
    sbc [hl]                                      ; $4b79: $9e
    ld h, l                                       ; $4b7a: $65
    ld hl, $7245                                  ; $4b7b: $21 $45 $72
    sub $79                                       ; $4b7e: $d6 $79
    xor [hl]                                      ; $4b80: $ae
    db $e4                                        ; $4b81: $e4
    inc l                                         ; $4b82: $2c
    adc [hl]                                      ; $4b83: $8e
    add e                                         ; $4b84: $83
    call c, $ff8b                                 ; $4b85: $dc $8b $ff
    ei                                            ; $4b88: $fb
    cp [hl]                                       ; $4b89: $be
    xor c                                         ; $4b8a: $a9
    ei                                            ; $4b8b: $fb
    ld [bc], a                                    ; $4b8c: $02
    push hl                                       ; $4b8d: $e5
    adc b                                         ; $4b8e: $88
    ld d, c                                       ; $4b8f: $51
    cp b                                          ; $4b90: $b8
    ld [hl], e                                    ; $4b91: $73
    ld e, h                                       ; $4b92: $5c
    db $dd                                        ; $4b93: $dd
    add hl, hl                                    ; $4b94: $29
    db $f4                                        ; $4b95: $f4
    add hl, hl                                    ; $4b96: $29
    sbc h                                         ; $4b97: $9c
    ld [hl], l                                    ; $4b98: $75
    ld a, l                                       ; $4b99: $7d
    sbc e                                         ; $4b9a: $9b
    ret                                           ; $4b9b: $c9


    jp nc, $3ba5                                  ; $4b9c: $d2 $a5 $3b

    or a                                          ; $4b9f: $b7
    ld a, h                                       ; $4ba0: $7c
    call $0372                                    ; $4ba1: $cd $72 $03
    cp l                                          ; $4ba4: $bd
    call nc, $1666                                ; $4ba5: $d4 $66 $16
    rst $00                                       ; $4ba8: $c7
    dec b                                         ; $4ba9: $05
    rst $18                                       ; $4baa: $df
    ld a, [hl-]                                   ; $4bab: $3a
    add a                                         ; $4bac: $87
    adc e                                         ; $4bad: $8b
    ld e, a                                       ; $4bae: $5f
    sub $b7                                       ; $4baf: $d6 $b7
    sbc c                                         ; $4bb1: $99
    inc l                                         ; $4bb2: $2c
    ld e, l                                       ; $4bb3: $5d
    cp d                                          ; $4bb4: $ba
    ld [hl], e                                    ; $4bb5: $73
    set 2, a                                      ; $4bb6: $cb $d7
    inc l                                         ; $4bb8: $2c
    xor e                                         ; $4bb9: $ab
    add hl, de                                    ; $4bba: $19
    sbc e                                         ; $4bbb: $9b

jr_03e_4bbc:
    rst $08                                       ; $4bbc: $cf
    ld de, $8d47                                  ; $4bbd: $11 $47 $8d
    ld a, c                                       ; $4bc0: $79
    inc bc                                        ; $4bc1: $03
    db $dd                                        ; $4bc2: $dd
    xor [hl]                                      ; $4bc3: $ae
    cp $61                                        ; $4bc4: $fe $61
    adc $37                                       ; $4bc6: $ce $37
    xor c                                         ; $4bc8: $a9
    ld a, [hl-]                                   ; $4bc9: $3a
    ld a, h                                       ; $4bca: $7c
    rst $38                                       ; $4bcb: $ff
    xor e                                         ; $4bcc: $ab
    cp e                                          ; $4bcd: $bb
    or h                                          ; $4bce: $b4
    rlca                                          ; $4bcf: $07
    nop                                           ; $4bd0: $00
    sub a                                         ; $4bd1: $97
    ld de, $a759                                  ; $4bd2: $11 $59 $a7
    adc $e2                                       ; $4bd5: $ce $e2
    jr c, @+$01                                   ; $4bd7: $38 $ff

    add d                                         ; $4bd9: $82
    xor c                                         ; $4bda: $a9
    dec bc                                        ; $4bdb: $0b
    and l                                         ; $4bdc: $a5
    jp hl                                         ; $4bdd: $e9


    rst $08                                       ; $4bde: $cf
    ld a, [hl-]                                   ; $4bdf: $3a
    and d                                         ; $4be0: $a2
    ld c, c                                       ; $4be1: $49
    adc h                                         ; $4be2: $8c
    ld a, [c]                                     ; $4be3: $f2
    or d                                          ; $4be4: $b2
    sbc a                                         ; $4be5: $9f
    dec a                                         ; $4be6: $3d
    and l                                         ; $4be7: $a5
    ld l, [hl]                                    ; $4be8: $6e
    adc c                                         ; $4be9: $89
    add h                                         ; $4bea: $84
    rst $08                                       ; $4beb: $cf
    cp $45                                        ; $4bec: $fe $45
    xor h                                         ; $4bee: $ac
    rst $30                                       ; $4bef: $f7
    cp d                                          ; $4bf0: $ba
    dec b                                         ; $4bf1: $05
    ld a, [hl]                                    ; $4bf2: $7e
    add a                                         ; $4bf3: $87
    ld [hl], l                                    ; $4bf4: $75
    ld [$8e2c], a                                 ; $4bf5: $ea $2c $8e
    and e                                         ; $4bf8: $a3
    add $ae                                       ; $4bf9: $c6 $ae
    ld de, $b2c7                                  ; $4bfb: $11 $c7 $b2
    ld d, b                                       ; $4bfe: $50
    ld e, d                                       ; $4bff: $5a
    ld c, l                                       ; $4c00: $4d
    ld e, c                                       ; $4c01: $59
    ret c                                         ; $4c02: $d8

    inc [hl]                                      ; $4c03: $34
    ld a, e                                       ; $4c04: $7b
    nop                                           ; $4c05: $00
    db $dd                                        ; $4c06: $dd
    db $ec                                        ; $4c07: $ec
    jp z, $e502                                   ; $4c08: $ca $02 $e5

    sbc $b9                                       ; $4c0b: $de $b9
    xor l                                         ; $4c0d: $ad
    sbc b                                         ; $4c0e: $98
    ldh [rNR43], a                                ; $4c0f: $e0 $22
    ld b, a                                       ; $4c11: $47
    inc [hl]                                      ; $4c12: $34
    adc c                                         ; $4c13: $89
    ld d, c                                       ; $4c14: $51
    ld l, h                                       ; $4c15: $6c
    ld b, a                                       ; $4c16: $47
    ld e, h                                       ; $4c17: $5c
    ld sp, hl                                     ; $4c18: $f9
    push bc                                       ; $4c19: $c5
    inc d                                         ; $4c1a: $14
    pop hl                                        ; $4c1b: $e1
    inc a                                         ; $4c1c: $3c
    rst $10                                       ; $4c1d: $d7
    ld c, e                                       ; $4c1e: $4b
    and e                                         ; $4c1f: $a3
    inc h                                         ; $4c20: $24
    ld h, [hl]                                    ; $4c21: $66
    ld l, l                                       ; $4c22: $6d
    di                                            ; $4c23: $f3
    dec a                                         ; $4c24: $3d
    nop                                           ; $4c25: $00
    db $dd                                        ; $4c26: $dd
    db $ec                                        ; $4c27: $ec
    ld e, a                                       ; $4c28: $5f
    call nz, Call_03e_63da                        ; $4c29: $c4 $da $63
    halt                                          ; $4c2c: $76
    ld a, [de]                                    ; $4c2d: $1a
    cp a                                          ; $4c2e: $bf
    di                                            ; $4c2f: $f3
    ld l, e                                       ; $4c30: $6b
    jr jr_03e_4bbc                                ; $4c31: $18 $89

    pop af                                        ; $4c33: $f1
    pop de                                        ; $4c34: $d1
    rst $20                                       ; $4c35: $e7
    ld b, d                                       ; $4c36: $42
    ld h, c                                       ; $4c37: $61
    add l                                         ; $4c38: $85
    ret c                                         ; $4c39: $d8

    inc h                                         ; $4c3a: $24
    ld [de], a                                    ; $4c3b: $12
    cp [hl]                                       ; $4c3c: $be
    ld [hl], e                                    ; $4c3d: $73
    db $e4                                        ; $4c3e: $e4
    ld c, l                                       ; $4c3f: $4d
    adc $b7                                       ; $4c40: $ce $b7
    ld a, [hl]                                    ; $4c42: $7e
    add hl, sp                                    ; $4c43: $39
    adc e                                         ; $4c44: $8b
    db $e3                                        ; $4c45: $e3
    ld [hl+], a                                   ; $4c46: $22
    pop de                                        ; $4c47: $d1
    and $75                                       ; $4c48: $e6 $75
    ld c, $e7                                     ; $4c4a: $0e $e7
    push hl                                       ; $4c4c: $e5
    and c                                         ; $4c4d: $a1
    ei                                            ; $4c4e: $fb
    cp [hl]                                       ; $4c4f: $be
    ld bc, $02dd                                  ; $4c50: $01 $dd $02
    add e                                         ; $4c53: $83
    pop bc                                        ; $4c54: $c1
    ld e, $00                                     ; $4c55: $1e $00
    rla                                           ; $4c57: $17
    ld [hl], c                                    ; $4c58: $71
    ld h, $31                                     ; $4c59: $26 $31
    cp [hl]                                       ; $4c5b: $be
    ld b, [hl]                                    ; $4c5c: $46
    xor $77                                       ; $4c5d: $ee $77
    adc [hl]                                      ; $4c5f: $8e
    cp h                                          ; $4c60: $bc
    ret                                           ; $4c61: $c9


    add hl, sp                                    ; $4c62: $39
    db $fc                                        ; $4c63: $fc
    dec b                                         ; $4c64: $05
    sbc e                                         ; $4c65: $9b
    add $94                                       ; $4c66: $c6 $94
    or $d3                                        ; $4c68: $f6 $d3
    db $ec                                        ; $4c6a: $ec
    ld [$70e7], sp                                ; $4c6b: $08 $e7 $70
    ld e, [hl]                                    ; $4c6e: $5e
    ld e, $b2                                     ; $4c6f: $1e $b2
    push bc                                       ; $4c71: $c5
    add l                                         ; $4c72: $85
    cpl                                           ; $4c73: $2f
    ccf                                           ; $4c74: $3f
    ld a, l                                       ; $4c75: $7d
    di                                            ; $4c76: $f3
    ld d, d                                       ; $4c77: $52
    ld [hl], d                                    ; $4c78: $72
    sbc [hl]                                      ; $4c79: $9e
    dec hl                                        ; $4c7a: $2b
    ccf                                           ; $4c7b: $3f
    di                                            ; $4c7c: $f3
    push af                                       ; $4c7d: $f5
    rst $08                                       ; $4c7e: $cf
    cp d                                          ; $4c7f: $ba
    sbc d                                         ; $4c80: $9a
    sub c                                         ; $4c81: $91
    ld d, d                                       ; $4c82: $52
    jr c, @-$1c                                   ; $4c83: $38 $e2

    adc d                                         ; $4c85: $8a
    ld c, l                                       ; $4c86: $4d
    sbc $bb                                       ; $4c87: $de $bb
    ld a, [$7257]                                 ; $4c89: $fa $57 $72
    ld b, c                                       ; $4c8c: $41
    ld l, $6c                                     ; $4c8d: $2e $6c
    and l                                         ; $4c8f: $a5
    cp h                                          ; $4c90: $bc
    rst $08                                       ; $4c91: $cf
    ld a, e                                       ; $4c92: $7b
    ld a, l                                       ; $4c93: $7d
    ld e, c                                       ; $4c94: $59
    ld l, c                                       ; $4c95: $69
    and l                                         ; $4c96: $a5
    ld [hl], b                                    ; $4c97: $70
    pop af                                        ; $4c98: $f1
    db $eb                                        ; $4c99: $eb
    ld c, [hl]                                    ; $4c9a: $4e
    xor e                                         ; $4c9b: $ab
    adc d                                         ; $4c9c: $8a
    dec hl                                        ; $4c9d: $2b
    add hl, sp                                    ; $4c9e: $39
    inc hl                                        ; $4c9f: $23
    or h                                          ; $4ca0: $b4
    jp c, $3ace                                   ; $4ca1: $da $ce $3a

    push hl                                       ; $4ca4: $e5
    ld a, [bc]                                    ; $4ca5: $0a
    dec hl                                        ; $4ca6: $2b
    adc a                                         ; $4ca7: $8f
    pop de                                        ; $4ca8: $d1
    or $06                                        ; $4ca9: $f6 $06
    ld bc, $bc94                                  ; $4cab: $01 $94 $bc
    rst $28                                       ; $4cae: $ef
    dec de                                        ; $4caf: $1b
    nop                                           ; $4cb0: $00
    rla                                           ; $4cb1: $17
    and l                                         ; $4cb2: $a5
    ld l, $0a                                     ; $4cb3: $2e $0a
    ld [hl], l                                    ; $4cb5: $75
    call nc, $d5d8                                ; $4cb6: $d4 $d8 $d5
    ld [hl], h                                    ; $4cb9: $74
    and $35                                       ; $4cba: $e6 $35
    ld [hl], $e8                                  ; $4cbc: $36 $e8
    ld a, l                                       ; $4cbe: $7d
    ld [$4bac], a                                 ; $4cbf: $ea $ac $4b
    sbc l                                         ; $4cc2: $9d
    push bc                                       ; $4cc3: $c5
    or l                                          ; $4cc4: $b5
    ld hl, sp+$52                                 ; $4cc5: $f8 $52
    ld [hl], l                                    ; $4cc7: $75
    daa                                           ; $4cc8: $27
    inc e                                         ; $4cc9: $1c
    cp l                                          ; $4cca: $bd

Jump_03e_4ccb:
    ret nc                                        ; $4ccb: $d0

    ld h, c                                       ; $4ccc: $61
    ld c, h                                       ; $4ccd: $4c
    ld e, l                                       ; $4cce: $5d
    ld hl, sp-$0e                                 ; $4ccf: $f8 $f2
    dec sp                                        ; $4cd1: $3b
    ld c, a                                       ; $4cd2: $4f
    xor h                                         ; $4cd3: $ac
    push de                                       ; $4cd4: $d5
    push de                                       ; $4cd5: $d5
    dec c                                         ; $4cd6: $0d
    ld a, l                                       ; $4cd7: $7d
    jp z, $df7d                                   ; $4cd8: $ca $7d $df

jr_03e_4cdb:
    db $dd                                        ; $4cdb: $dd
    ld c, [hl]                                    ; $4cdc: $4e
    jr c, jr_03e_4d59                             ; $4cdd: $38 $7a

    and c                                         ; $4cdf: $a1
    jp $ba98                                      ; $4ce0: $c3 $98 $ba


    jr nc, jr_03e_4d4a                            ; $4ce3: $30 $65

    and $3b                                       ; $4ce5: $e6 $3b
    db $ec                                        ; $4ce7: $ec
    rst $38                                       ; $4ce8: $ff
    dec a                                         ; $4ce9: $3d
    nop                                           ; $4cea: $00

Jump_03e_4ceb:
    db $dd                                        ; $4ceb: $dd
    ld c, [hl]                                    ; $4cec: $4e
    jr c, jr_03e_4d69                             ; $4ced: $38 $7a

    and $fd                                       ; $4cef: $e6 $fd
    rst $08                                       ; $4cf1: $cf
    ld h, c                                       ; $4cf2: $61
    or $00                                        ; $4cf3: $f6 $00
    ld d, a                                       ; $4cf5: $57
    jr c, jr_03e_4d62                             ; $4cf6: $38 $6a

    sub h                                         ; $4cf8: $94
    sbc h                                         ; $4cf9: $9c
    ld a, c                                       ; $4cfa: $79
    adc l                                         ; $4cfb: $8d
    dec c                                         ; $4cfc: $0d
    jp z, $a245                                   ; $4cfd: $ca $45 $a2

    sub a                                         ; $4d00: $97
    xor [hl]                                      ; $4d01: $ae
    dec d                                         ; $4d02: $15
    rlca                                          ; $4d03: $07
    cp l                                          ; $4d04: $bd
    db $ec                                        ; $4d05: $ec
    ld d, a                                       ; $4d06: $57
    ld e, [hl]                                    ; $4d07: $5e
    sub a                                         ; $4d08: $97
    ld l, b                                       ; $4d09: $68
    jr c, jr_03e_4cdb                             ; $4d0a: $38 $cf

    sub l                                         ; $4d0c: $95
    rra                                           ; $4d0d: $1f
    and [hl]                                      ; $4d0e: $a6
    add hl, bc                                    ; $4d0f: $09
    ld [hl], d                                    ; $4d10: $72
    push af                                       ; $4d11: $f5
    rra                                           ; $4d12: $1f
    db $fc                                        ; $4d13: $fc
    ld hl, sp-$09                                 ; $4d14: $f8 $f7

Call_03e_4d16:
    db $ec                                        ; $4d16: $ec
    jp z, Jump_000_0794                           ; $4d17: $ca $94 $07

    and a                                         ; $4d1a: $a7
    db $ec                                        ; $4d1b: $ec
    call c, $4c56                                 ; $4d1c: $dc $56 $4c
    ld [hl], b                                    ; $4d1f: $70
    xor c                                         ; $4d20: $a9
    and e                                         ; $4d21: $a3
    add [hl]                                      ; $4d22: $86
    sub h                                         ; $4d23: $94
    rra                                           ; $4d24: $1f
    ld [hl], c                                    ; $4d25: $71
    inc l                                         ; $4d26: $2c
    xor e                                         ; $4d27: $ab
    ld d, b                                       ; $4d28: $50
    and e                                         ; $4d29: $a3
    ld c, l                                       ; $4d2a: $4d
    rst $00                                       ; $4d2b: $c7
    sub l                                         ; $4d2c: $95
    sbc h                                         ; $4d2d: $9c
    rst $20                                       ; $4d2e: $e7
    adc b                                         ; $4d2f: $88
    ld d, c                                       ; $4d30: $51
    sbc $ff                                       ; $4d31: $de $ff
    cp l                                          ; $4d33: $bd
    ld e, [hl]                                    ; $4d34: $5e
    pop bc                                        ; $4d35: $c1
    sub h                                         ; $4d36: $94
    ld e, a                                       ; $4d37: $5f
    dec h                                         ; $4d38: $25
    ld c, e                                       ; $4d39: $4b
    add l                                         ; $4d3a: $85
    ld a, [hl]                                    ; $4d3b: $7e
    cp a                                          ; $4d3c: $bf
    ld a, [c]                                     ; $4d3d: $f2
    inc sp                                        ; $4d3e: $33
    ld e, a                                       ; $4d3f: $5f
    ccf                                           ; $4d40: $3f
    ld a, h                                       ; $4d41: $7c
    ld sp, $ea7d                                  ; $4d42: $31 $7d $ea
    cp l                                          ; $4d45: $bd
    cp [hl]                                       ; $4d46: $be
    ld c, $cd                                     ; $4d47: $0e $cd
    xor a                                         ; $4d49: $af

jr_03e_4d4a:
    and $82                                       ; $4d4a: $e6 $82
    sbc h                                         ; $4d4c: $9c
    ld [de], a                                    ; $4d4d: $12
    ld h, e                                       ; $4d4e: $63
    di                                            ; $4d4f: $f3
    cp c                                          ; $4d50: $b9
    ld hl, sp-$48                                 ; $4d51: $f8 $b8
    xor a                                         ; $4d53: $af
    ld d, b                                       ; $4d54: $50
    and b                                         ; $4d55: $a0
    call nz, $effe                                ; $4d56: $c4 $fe $ef

jr_03e_4d59:
    ld a, a                                       ; $4d59: $7f
    sbc [hl]                                      ; $4d5a: $9e
    dec hl                                        ; $4d5b: $2b
    xor c                                         ; $4d5c: $a9
    ei                                            ; $4d5d: $fb
    ld [c], a                                     ; $4d5e: $e2
    ld l, d                                       ; $4d5f: $6a
    ld c, h                                       ; $4d60: $4c
    sbc l                                         ; $4d61: $9d

jr_03e_4d62:
    rst $20                                       ; $4d62: $e7
    adc $13                                       ; $4d63: $ce $13
    ld l, e                                       ; $4d65: $6b
    ld [hl], l                                    ; $4d66: $75
    ld [hl], l                                    ; $4d67: $75
    ld b, e                                       ; $4d68: $43

jr_03e_4d69:
    sbc a                                         ; $4d69: $9f
    ld [hl], d                                    ; $4d6a: $72
    inc bc                                        ; $4d6b: $03
    or $3f                                        ; $4d6c: $f6 $3f
    ld l, l                                       ; $4d6e: $6d
    ld a, $c7                                     ; $4d6f: $3e $c7
    or d                                          ; $4d71: $b2
    sub b                                         ; $4d72: $90
    add hl, hl                                    ; $4d73: $29
    di                                            ; $4d74: $f3
    ld [hl], $3f                                  ; $4d75: $36 $3f
    rst $08                                       ; $4d77: $cf
    push de                                       ; $4d78: $d5
    ld l, l                                       ; $4d79: $6d
    sub l                                         ; $4d7a: $95
    and $ff                                       ; $4d7b: $e6 $ff
    sbc $65                                       ; $4d7d: $de $65
    jp hl                                         ; $4d7f: $e9


    ld [hl], e                                    ; $4d80: $73
    inc l                                         ; $4d81: $2c
    xor e                                         ; $4d82: $ab
    dec e                                         ; $4d83: $1d
    ld a, [$7e9c]                                 ; $4d84: $fa $9c $7e
    add a                                         ; $4d87: $87
    or e                                          ; $4d88: $b3
    jr c, jr_03e_4db9                             ; $4d89: $38 $2e

    ret z                                         ; $4d8b: $c8

    ld a, [hl-]                                   ; $4d8c: $3a
    ld [hl], l                                    ; $4d8d: $75
    ld hl, $37c5                                  ; $4d8e: $21 $c5 $37
    sbc a                                         ; $4d91: $9f
    dec sp                                        ; $4d92: $3b
    and $84                                       ; $4d93: $e6 $84
    and e                                         ; $4d95: $a3
    rla                                           ; $4d96: $17
    ld a, [hl-]                                   ; $4d97: $3a
    adc h                                         ; $4d98: $8c
    xor c                                         ; $4d99: $a9
    dec bc                                        ; $4d9a: $0b
    ld e, a                                       ; $4d9b: $5f
    ld a, [hl]                                    ; $4d9c: $7e
    rst $20                                       ; $4d9d: $e7
    adc c                                         ; $4d9e: $89
    or l                                          ; $4d9f: $b5
    cp d                                          ; $4da0: $ba
    cp d                                          ; $4da1: $ba
    and c                                         ; $4da2: $a1
    ld c, a                                       ; $4da3: $4f
    cp c                                          ; $4da4: $b9
    ld bc, $aff6                                  ; $4da5: $01 $f6 $af
    pop af                                        ; $4da8: $f1
    ld d, a                                       ; $4da9: $57

Call_03e_4daa:
    ld d, d                                       ; $4daa: $52
    ld h, a                                       ; $4dab: $67
    rst $28                                       ; $4dac: $ef
    xor d                                         ; $4dad: $aa
    xor e                                         ; $4dae: $ab
    dec bc                                        ; $4daf: $0b
    ld b, e                                       ; $4db0: $43
    ld d, a                                       ; $4db1: $57
    ld e, l                                       ; $4db2: $5d
    xor l                                         ; $4db3: $ad
    or e                                          ; $4db4: $b3
    xor $d2                                       ; $4db5: $ee $d2
    xor a                                         ; $4db7: $af
    db $10                                        ; $4db8: $10

jr_03e_4db9:
    ld c, l                                       ; $4db9: $4d
    ld a, c                                       ; $4dba: $79
    sbc b                                         ; $4dbb: $98
    ld a, [hl-]                                   ; $4dbc: $3a
    ld l, d                                       ; $4dbd: $6a
    db $ec                                        ; $4dbe: $ec
    jp nz, $ab11                                  ; $4dbf: $c2 $11 $ab

    rst $18                                       ; $4dc2: $df
    cp a                                          ; $4dc3: $bf
    ld c, a                                       ; $4dc4: $4f
    sbc l                                         ; $4dc5: $9d
    ld c, c                                       ; $4dc6: $49
    inc e                                         ; $4dc7: $1c
    and [hl]                                      ; $4dc8: $a6
    ld h, [hl]                                    ; $4dc9: $66
    sub h                                         ; $4dca: $94
    call nc, Call_000_017b                        ; $4dcb: $d4 $7b $01
    ld b, h                                       ; $4dce: $44
    db $fd                                        ; $4dcf: $fd
    adc $e3                                       ; $4dd0: $ce $e3
    inc l                                         ; $4dd2: $2c
    adc [hl]                                      ; $4dd3: $8e
    xor e                                         ; $4dd4: $ab

Call_03e_4dd5:
    ld a, [hl+]                                   ; $4dd5: $2a
    ld e, a                                       ; $4dd6: $5f

Jump_03e_4dd7:
    and a                                         ; $4dd7: $a7
    xor [hl]                                      ; $4dd8: $ae
    and h                                         ; $4dd9: $a4
    xor $00                                       ; $4dda: $ee $00
    ld l, h                                       ; $4ddc: $6c
    ld h, $75                                     ; $4ddd: $26 $75
    ld d, $c7                                     ; $4ddf: $16 $c7
    add l                                         ; $4de1: $85
    jp hl                                         ; $4de2: $e9


    push bc                                       ; $4de3: $c5
    and $eb                                       ; $4de4: $e6 $eb
    call nc, $8855                                ; $4de6: $d4 $55 $88
    add [hl]                                      ; $4de9: $86
    or d                                          ; $4dea: $b2
    ld e, a                                       ; $4deb: $5f
    ld h, b                                       ; $4dec: $60
    or c                                          ; $4ded: $b1
    add $20                                       ; $4dee: $c6 $20
    and l                                         ; $4df0: $a5
    pop hl                                        ; $4df1: $e1
    xor h                                         ; $4df2: $ac
    add e                                         ; $4df3: $83
    ld e, $5f                                     ; $4df4: $1e $5f
    halt                                          ; $4df6: $76

Call_03e_4df7:
    pop de                                        ; $4df7: $d1
    rst $08                                       ; $4df8: $cf
    ld h, h                                       ; $4df9: $64
    ld hl, sp-$0d                                 ; $4dfa: $f8 $f3
    ld e, h                                       ; $4dfc: $5c
    ld sp, hl                                     ; $4dfd: $f9
    sbc c                                         ; $4dfe: $99
    rst $10                                       ; $4dff: $d7
    cp a                                          ; $4e00: $bf
    rst $10                                       ; $4e01: $d7
    scf                                           ; $4e02: $37
    ld [hl], l                                    ; $4e03: $75
    dec d                                         ; $4e04: $15
    sub $a9                                       ; $4e05: $d6 $a9
    ei                                            ; $4e07: $fb
    adc $f7                                       ; $4e08: $ce $f7
    rr e                                          ; $4e0a: $cb $1b
    nop                                           ; $4e0c: $00
    ld a, l                                       ; $4e0d: $7d
    inc de                                        ; $4e0e: $13
    ld a, $4c                                     ; $4e0f: $3e $4c
    ld hl, sp+$32                                 ; $4e11: $f8 $32
    jp z, $c2af                                   ; $4e13: $ca $af $c2

    cp $c3                                        ; $4e16: $fe $c3
    add h                                         ; $4e18: $84
    cpl                                           ; $4e19: $2f
    ld c, h                                       ; $4e1a: $4c
    ld e, c                                       ; $4e1b: $59
    push af                                       ; $4e1c: $f5
    ld d, a                                       ; $4e1d: $57
    ld d, d                                       ; $4e1e: $52
    xor $fb                                       ; $4e1f: $ee $fb
    ld b, $01                                     ; $4e21: $06 $01
    cpl                                           ; $4e23: $2f
    inc [hl]                                      ; $4e24: $34
    call c, $ae25                                 ; $4e25: $dc $25 $ae
    adc c                                         ; $4e28: $89
    or b                                          ; $4e29: $b0
    sub h                                         ; $4e2a: $94
    dec de                                        ; $4e2b: $1b
    nop                                           ; $4e2c: $00
    rst $20                                       ; $4e2d: $e7
    adc c                                         ; $4e2e: $89
    ret nz                                        ; $4e2f: $c0

    rlca                                          ; $4e30: $07
    adc c                                         ; $4e31: $89
    ld [$907c], sp                                ; $4e32: $08 $7c $90
    ret z                                         ; $4e35: $c8

    dec c                                         ; $4e36: $0d
    nop                                           ; $4e37: $00
    halt                                          ; $4e38: $76
    ld a, [de]                                    ; $4e39: $1a
    cp e                                          ; $4e3a: $bb
    sub $69                                       ; $4e3b: $d6 $69
    call nz, $befb                                ; $4e3d: $c4 $fb $be
    dec a                                         ; $4e40: $3d
    rst $30                                       ; $4e41: $f7
    add $51                                       ; $4e42: $c6 $51
    ld a, h                                       ; $4e44: $7c
    sbc $f7                                       ; $4e45: $de $f7
    ld a, l                                       ; $4e47: $7d
    add hl, de                                    ; $4e48: $19
    ld d, a                                       ; $4e49: $57
    ld [hl], d                                    ; $4e4a: $72

jr_03e_4e4b:
    cp [hl]                                       ; $4e4b: $be
    ld c, c                                       ; $4e4c: $49
    push de                                       ; $4e4d: $d5
    ei                                            ; $4e4e: $fb
    cp [hl]                                       ; $4e4f: $be
    ld bc, $aa01                                  ; $4e50: $01 $01 $aa
    rst $30                                       ; $4e53: $f7
    ld a, l                                       ; $4e54: $7d
    db $db                                        ; $4e55: $db
    ld d, e                                       ; $4e56: $53
    ld [$c896], a                                 ; $4e57: $ea $96 $c8
    ei                                            ; $4e5a: $fb
    cp [hl]                                       ; $4e5b: $be
    rst $18                                       ; $4e5c: $df
    ld a, h                                       ; $4e5d: $7c
    daa                                           ; $4e5e: $27
    rst $20                                       ; $4e5f: $e7
    cp c                                          ; $4e60: $b9
    or h                                          ; $4e61: $b4
    sub c                                         ; $4e62: $91
    db $fd                                        ; $4e63: $fd
    ld l, $71                                     ; $4e64: $2e $71
    ld c, l                                       ; $4e66: $4d
    add h                                         ; $4e67: $84
    and l                                         ; $4e68: $a5
    inc l                                         ; $4e69: $2c
    ld hl, sp-$63                                 ; $4e6a: $f8 $9d
    ld a, [c]                                     ; $4e6c: $f2
    add sp, $73                                   ; $4e6d: $e8 $73
    ld h, $71                                     ; $4e6f: $26 $71
    ld e, a                                       ; $4e71: $5f
    jr nz, jr_03e_4e4b                            ; $4e72: $20 $d7

    adc b                                         ; $4e74: $88
    rst $30                                       ; $4e75: $f7
    ld [bc], a                                    ; $4e76: $02
    ld e, [hl]                                    ; $4e77: $5e
    ld l, b                                       ; $4e78: $68
    ld l, h                                       ; $4e79: $6c
    ld a, [hl]                                    ; $4e7a: $7e
    xor a                                         ; $4e7b: $af
    ld c, [hl]                                    ; $4e7c: $4e
    db $e3                                        ; $4e7d: $e3
    ei                                            ; $4e7e: $fb
    cp h                                          ; $4e7f: $bc
    ld bc, $cedd                                  ; $4e80: $01 $dd $ce
    ld h, c                                       ; $4e83: $61
    add a                                         ; $4e84: $87
    ld d, e                                       ; $4e85: $53
    jp z, $f102                                   ; $4e86: $ca $02 $f1

    ld b, e                                       ; $4e89: $43
    ld l, $a3                                     ; $4e8a: $2e $a3
    db $fc                                        ; $4e8c: $fc

jr_03e_4e8d:
    ld a, [hl+]                                   ; $4e8d: $2a
    db $ec                                        ; $4e8e: $ec
    rst $18                                       ; $4e8f: $df
    inc bc                                        ; $4e90: $03
    nop                                           ; $4e91: $00
    db $dd                                        ; $4e92: $dd
    ld a, d                                       ; $4e93: $7a
    dec bc                                        ; $4e94: $0b
    ld [hl], e                                    ; $4e95: $73
    ld d, $c7                                     ; $4e96: $16 $c7
    dec d                                         ; $4e98: $15
    xor [hl]                                      ; $4e99: $ae
    ld a, [c]                                     ; $4e9a: $f2
    ei                                            ; $4e9b: $fb
    ld a, c                                       ; $4e9c: $79
    sbc d                                         ; $4e9d: $9a
    ld h, $fb                                     ; $4e9e: $26 $fb
    dec b                                         ; $4ea0: $05
    ld [c], a                                     ; $4ea1: $e2
    add a                                         ; $4ea2: $87
    sbc h                                         ; $4ea3: $9c
    or c                                          ; $4ea4: $b1
    xor l                                         ; $4ea5: $ad
    ld [hl], e                                    ; $4ea6: $73
    and l                                         ; $4ea7: $a5
    db $10                                        ; $4ea8: $10
    ld a, d                                       ; $4ea9: $7a
    reti                                          ; $4eaa: $d9


    xor a                                         ; $4eab: $af
    db $fc                                        ; $4eac: $fc
    ld [bc], a                                    ; $4ead: $02
    ld a, [de]                                    ; $4eae: $1a
    cp l                                          ; $4eaf: $bd
    ld a, h                                       ; $4eb0: $7c
    rrca                                          ; $4eb1: $0f
    nop                                           ; $4eb2: $00
    sub a                                         ; $4eb3: $97
    ld de, $a759                                  ; $4eb4: $11 $59 $a7
    adc $e2                                       ; $4eb7: $ce $e2
    cp b                                          ; $4eb9: $b8
    ldh [rPCM34], a                               ; $4eba: $e0 $77
    jp z, Jump_03e_4ccb                           ; $4ebc: $ca $cb $4c

    ld [c], a                                     ; $4ebf: $e2
    adc $71                                       ; $4ec0: $ce $71
    ld [hl], l                                    ; $4ec2: $75
    and a                                         ; $4ec3: $a7
    ret nc                                        ; $4ec4: $d0

    and a                                         ; $4ec5: $a7
    ldh a, [$9e]                                  ; $4ec6: $f0 $9e
    sbc l                                         ; $4ec8: $9d
    xor [hl]                                      ; $4ec9: $ae
    db $e4                                        ; $4eca: $e4
    inc l                                         ; $4ecb: $2c
    adc [hl]                                      ; $4ecc: $8e
    di                                            ; $4ecd: $f3
    db $ec                                        ; $4ece: $ec
    ld d, b                                       ; $4ecf: $50
    ld l, h                                       ; $4ed0: $6c
    cp [hl]                                       ; $4ed1: $be
    ld c, [hl]                                    ; $4ed2: $4e
    ld e, l                                       ; $4ed3: $5d
    ldh a, [$3b]                                  ; $4ed4: $f0 $3b
    sub h                                         ; $4ed6: $94
    dec b                                         ; $4ed7: $05
    ld l, c                                       ; $4ed8: $69
    add d                                         ; $4ed9: $82
    cp c                                          ; $4eda: $b9
    ldh [rNR31], a                                ; $4edb: $e0 $1b
    xor [hl]                                      ; $4edd: $ae
    halt                                          ; $4ede: $76
    ld h, $98                                     ; $4edf: $26 $98
    adc e                                         ; $4ee1: $8b
    adc l                                         ; $4ee2: $8d
    ld [hl], l                                    ; $4ee3: $75
    sbc b                                         ; $4ee4: $98
    scf                                           ; $4ee5: $37
    nop                                           ; $4ee6: $00
    db $dd                                        ; $4ee7: $dd
    ld [bc], a                                    ; $4ee8: $02
    jr z, @+$3b                                   ; $4ee9: $28 $39

    call z, Call_000_2245                         ; $4eeb: $cc $45 $22
    db $eb                                        ; $4eee: $eb
    call nc, $e285                                ; $4eef: $d4 $85 $e2
    ret c                                         ; $4ef2: $d8

    ld a, c                                       ; $4ef3: $79
    db $ed                                        ; $4ef4: $ed
    or c                                          ; $4ef5: $b1
    xor e                                         ; $4ef6: $ab
    and a                                         ; $4ef7: $a7

Call_03e_4ef8:
    sbc h                                         ; $4ef8: $9c
    cp d                                          ; $4ef9: $ba
    jr nc, jr_03e_4e8d                            ; $4efa: $30 $91

    or e                                          ; $4efc: $b3
    jr c, jr_03e_4f0d                             ; $4efd: $38 $0e

    ld [hl], e                                    ; $4eff: $73
    ld a, [$d61d]                                 ; $4f00: $fa $1d $d6
    xor c                                         ; $4f03: $a9
    jp Jump_000_3ff7                              ; $4f04: $c3 $f7 $3f


    rst $08                                       ; $4f07: $cf
    sub l                                         ; $4f08: $95
    ld e, a                                       ; $4f09: $5f
    ld b, b                                       ; $4f0a: $40
    and e                                         ; $4f0b: $a3
    sub a                                         ; $4f0c: $97

jr_03e_4f0d:
    rra                                           ; $4f0d: $1f
    or [hl]                                       ; $4f0e: $b6
    ld a, c                                       ; $4f0f: $79
    xor $dc                                       ; $4f10: $ee $dc
    ld [c], a                                     ; $4f12: $e2
    xor d                                         ; $4f13: $aa
    xor e                                         ; $4f14: $ab
    xor l                                         ; $4f15: $ad
    scf                                           ; $4f16: $37
    nop                                           ; $4f17: $00
    add c                                         ; $4f18: $81
    add h                                         ; $4f19: $84
    ld e, h                                       ; $4f1a: $5c
    di                                            ; $4f1b: $f3
    dec [hl]                                      ; $4f1c: $35
    rst $28                                       ; $4f1d: $ef
    dec b                                         ; $4f1e: $05
    ld [de], a                                    ; $4f1f: $12
    ld [hl], d                                    ; $4f20: $72
    sub d                                         ; $4f21: $92
    or e                                          ; $4f22: $b3
    jr c, jr_03e_4f53                             ; $4f23: $38 $2e

    ld [hl], l                                    ; $4f25: $75
    dec h                                         ; $4f26: $25
    rla                                           ; $4f27: $17
    ld [de], a                                    ; $4f28: $12
    push af                                       ; $4f29: $f5
    and l                                         ; $4f2a: $a5
    ld l, d                                       ; $4f2b: $6a
    db $d3                                        ; $4f2c: $d3
    ld sp, hl                                     ; $4f2d: $f9
    call nc, Call_03e_6855                        ; $4f2e: $d4 $55 $68
    xor b                                         ; $4f31: $a8
    dec hl                                        ; $4f32: $2b
    cp a                                          ; $4f33: $bf
    ld d, b                                       ; $4f34: $50
    ld l, h                                       ; $4f35: $6c
    ld h, c                                       ; $4f36: $61
    or l                                          ; $4f37: $b5
    ld a, [$7167]                                 ; $4f38: $fa $67 $71
    ld e, h                                       ; $4f3b: $5c
    push hl                                       ; $4f3c: $e5
    xor l                                         ; $4f3d: $ad
    ld e, l                                       ; $4f3e: $5d
    ld c, l                                       ; $4f3f: $4d
    rst $10                                       ; $4f40: $d7
    or b                                          ; $4f41: $b0
    ld e, d                                       ; $4f42: $5a
    ld a, [de]                                    ; $4f43: $1a
    ld b, d                                       ; $4f44: $42
    ld c, l                                       ; $4f45: $4d
    and $f0                                       ; $4f46: $e6 $f0
    add a                                         ; $4f48: $87
    add hl, hl                                    ; $4f49: $29
    push af                                       ; $4f4a: $f5
    rst $08                                       ; $4f4b: $cf
    or e                                          ; $4f4c: $b3
    call z, $2164                                 ; $4f4d: $cc $64 $21
    call nc, $be12                                ; $4f50: $d4 $12 $be

jr_03e_4f53:
    xor $15                                       ; $4f53: $ee $15
    adc d                                         ; $4f55: $8a
    ld a, a                                       ; $4f56: $7f
    rst $18                                       ; $4f57: $df
    inc de                                        ; $4f58: $13
    nop                                           ; $4f59: $00
    halt                                          ; $4f5a: $76
    ld a, [hl-]                                   ; $4f5b: $3a
    add a                                         ; $4f5c: $87
    cp a                                          ; $4f5d: $bf
    sub b                                         ; $4f5e: $90
    ld hl, sp-$4d                                 ; $4f5f: $f8 $b3
    jr c, jr_03e_4f91                             ; $4f61: $38 $2e

    sub h                                         ; $4f63: $94
    inc c                                         ; $4f64: $0c
    or [hl]                                       ; $4f65: $b6
    ld c, [hl]                                    ; $4f66: $4e
    and e                                         ; $4f67: $a3
    inc a                                         ; $4f68: $3c
    xor [hl]                                      ; $4f69: $ae
    and h                                         ; $4f6a: $a4
    adc $bc                                       ; $4f6b: $ce $bc
    add $06                                       ; $4f6d: $c6 $06
    and l                                         ; $4f6f: $a5
    xor $57                                       ; $4f70: $ee $57
    ld a, [hl]                                    ; $4f72: $7e
    adc a                                         ; $4f73: $8f
    or c                                          ; $4f74: $b1
    ld b, c                                       ; $4f75: $41
    xor $e7                                       ; $4f76: $ee $e7
    db $f4                                        ; $4f78: $f4
    or c                                          ; $4f79: $b1
    rst $38                                       ; $4f7a: $ff
    rst $18                                       ; $4f7b: $df
    db $eb                                        ; $4f7c: $eb
    ld [hl], l                                    ; $4f7d: $75
    nop                                           ; $4f7e: $00
    ld l, $12                                     ; $4f7f: $2e $12
    and c                                         ; $4f81: $a1
    ld e, h                                       ; $4f82: $5c
    ld a, c                                       ; $4f83: $79
    sbc l                                         ; $4f84: $9d
    ld a, c                                       ; $4f85: $79
    ld c, a                                       ; $4f86: $4f
    ld a, h                                       ; $4f87: $7c
    dec e                                         ; $4f88: $1d
    ld [hl], c                                    ; $4f89: $71
    ld [hl], l                                    ; $4f8a: $75
    sbc e                                         ; $4f8b: $9b
    and a                                         ; $4f8c: $a7
    add [hl]                                      ; $4f8d: $86
    ld l, a                                       ; $4f8e: $6f
    add d                                         ; $4f8f: $82
    ld a, c                                       ; $4f90: $79

jr_03e_4f91:
    inc bc                                        ; $4f91: $03
    ld h, a                                       ; $4f92: $67
    dec sp                                        ; $4f93: $3b
    ld h, d                                       ; $4f94: $62
    jp nz, $b2c7                                  ; $4f95: $c2 $c7 $b2

    set 2, d                                      ; $4f98: $cb $d2
    ld h, a                                       ; $4f9a: $67
    sbc b                                         ; $4f9b: $98
    sbc [hl]                                      ; $4f9c: $9e
    sub d                                         ; $4f9d: $92
    sbc d                                         ; $4f9e: $9a
    ld d, e                                       ; $4f9f: $53
    ld e, $9c                                     ; $4fa0: $1e $9c
    ld [hl-], a                                   ; $4fa2: $32
    ei                                            ; $4fa3: $fb
    rla                                           ; $4fa4: $17
    or c                                          ; $4fa5: $b1
    ld l, $20                                     ; $4fa6: $2e $20
    ld h, e                                       ; $4fa8: $63
    and h                                         ; $4fa9: $a4
    ld c, h                                       ; $4faa: $4c

jr_03e_4fab:
    add hl, sp                                    ; $4fab: $39
    rst $18                                       ; $4fac: $df
    jr nz, jr_03e_4fab                            ; $4fad: $20 $fc

    db $fd                                        ; $4faf: $fd
    add h                                         ; $4fb0: $84
    ld c, $9b                                     ; $4fb1: $0e $9b
    jr z, jr_03e_501c                             ; $4fb3: $28 $67

    ld [de], a                                    ; $4fb5: $12
    add a                                         ; $4fb6: $87
    xor c                                         ; $4fb7: $a9
    add hl, de                                    ; $4fb8: $19
    dec h                                         ; $4fb9: $25
    push af                                       ; $4fba: $f5
    sbc [hl]                                      ; $4fbb: $9e
    sbc l                                         ; $4fbc: $9d
    add [hl]                                      ; $4fbd: $86
    sub h                                         ; $4fbe: $94
    rst $18                                       ; $4fbf: $df
    ld e, e                                       ; $4fc0: $5b
    sbc h                                         ; $4fc1: $9c
    call $167e                                    ; $4fc2: $cd $7e $16
    rst $00                                       ; $4fc5: $c7
    ld d, l                                       ; $4fc6: $55
    adc b                                         ; $4fc7: $88
    ret nc                                        ; $4fc8: $d0

    rst $08                                       ; $4fc9: $cf
    cp $21                                        ; $4fca: $fe $21
    ld l, c                                       ; $4fcc: $69
    cp $de                                        ; $4fcd: $fe $de
    push de                                       ; $4fcf: $d5
    jp $e45c                                      ; $4fd0: $c3 $5c $e4


    xor b                                         ; $4fd3: $a8
    and $43                                       ; $4fd4: $e6 $43
    ld [$40bd], a                                 ; $4fd6: $ea $bd $40
    adc d                                         ; $4fd9: $8a
    call Call_03e_76af                            ; $4fda: $cd $af $76
    ld h, $98                                     ; $4fdd: $26 $98
    dec bc                                        ; $4fdf: $0b
    sbc c                                         ; $4fe0: $99
    or d                                          ; $4fe1: $b2
    ldh a, [$e5]                                  ; $4fe2: $f0 $e5
    rla                                           ; $4fe4: $17
    db $db                                        ; $4fe5: $db
    dec c                                         ; $4fe6: $0d
    nop                                           ; $4fe7: $00
    ld h, a                                       ; $4fe8: $67
    dec sp                                        ; $4fe9: $3b
    ld [c], a                                     ; $4fea: $e2
    db $eb                                        ; $4feb: $eb
    jr nc, jr_03e_503b                            ; $4fec: $30 $4d

    sub b                                         ; $4fee: $90
    ld a, d                                       ; $4fef: $7a
    xor a                                         ; $4ff0: $af
    ei                                            ; $4ff1: $fb
    ld b, l                                       ; $4ff2: $45
    ld c, l                                       ; $4ff3: $4d
    ld h, e                                       ; $4ff4: $63
    ld [$97c2], a                                 ; $4ff5: $ea $c2 $97
    sbc a                                         ; $4ff8: $9f
    ld a, a                                       ; $4ff9: $7f
    sbc c                                         ; $4ffa: $99
    jp $c55f                                      ; $4ffb: $c3 $5f $c5


    or c                                          ; $4ffe: $b1
    call nz, $985f                                ; $4fff: $c4 $5f $98
    ld [hl-], a                                   ; $5002: $32
    sub [hl]                                      ; $5003: $96
    ld [hl], l                                    ; $5004: $75
    ld d, d                                       ; $5005: $52
    dec l                                         ; $5006: $2d
    adc [hl]                                      ; $5007: $8e
    dec a                                         ; $5008: $3d
    ld bc, $aedd                                  ; $5009: $01 $dd $ae
    adc $61                                       ; $500c: $ce $61
    xor [hl]                                      ; $500e: $ae
    and $6a                                       ; $500f: $e6 $6a
    add $1c                                       ; $5011: $c6 $1c
    ld [hl], c                                    ; $5013: $71
    inc l                                         ; $5014: $2c
    db $eb                                        ; $5015: $eb
    and h                                         ; $5016: $a4
    ld e, d                                       ; $5017: $5a
    inc e                                         ; $5018: $1c
    ld a, e                                       ; $5019: $7b
    nop                                           ; $501a: $00
    db $dd                                        ; $501b: $dd

jr_03e_501c:
    ld [bc], a                                    ; $501c: $02
    ld l, l                                       ; $501d: $6d
    ld d, [hl]                                    ; $501e: $56
    ld [hl], d                                    ; $501f: $72
    pop bc                                        ; $5020: $c1
    sub a                                         ; $5021: $97
    ld l, $9d                                     ; $5022: $2e $9d
    or [hl]                                       ; $5024: $b6
    ld b, l                                       ; $5025: $45
    adc $e2                                       ; $5026: $ce $e2
    ld a, [de]                                    ; $5028: $1a
    add l                                         ; $5029: $85
    ld a, [hl-]                                   ; $502a: $3a
    adc e                                         ; $502b: $8b
    and e                                         ; $502c: $a3
    ld a, a                                       ; $502d: $7f
    add hl, de                                    ; $502e: $19
    ld [hl], c                                    ; $502f: $71
    or $09                                        ; $5030: $f6 $09
    pop bc                                        ; $5032: $c1
    ld a, h                                       ; $5033: $7c
    adc c                                         ; $5034: $89
    jp c, Jump_03e_7d63                           ; $5035: $da $63 $7d

    sbc d                                         ; $5038: $9a
    cp h                                          ; $5039: $bc
    cp a                                          ; $503a: $bf

jr_03e_503b:
    ld h, a                                       ; $503b: $67
    and a                                         ; $503c: $a7
    cp a                                          ; $503d: $bf
    ld a, [$04d1]                                 ; $503e: $fa $d1 $04

Jump_03e_5041:
    ld a, a                                       ; $5041: $7f
    ld h, c                                       ; $5042: $61
    ld sp, hl                                     ; $5043: $f9
    ret z                                         ; $5044: $c8

    rst $30                                       ; $5045: $f7
    ccf                                           ; $5046: $3f
    rst $08                                       ; $5047: $cf
    ld [hl-], a                                   ; $5048: $32
    ld [hl], l                                    ; $5049: $75
    inc l                                         ; $504a: $2c
    add hl, sp                                    ; $504b: $39
    ld [$11f4], a                                 ; $504c: $ea $f4 $11
    ld [de], a                                    ; $504f: $12
    adc $73                                       ; $5050: $ce $73
    ld c, $9b                                     ; $5052: $0e $9b
    ld c, c                                       ; $5054: $49
    pop bc                                        ; $5055: $c1
    sub [hl]                                      ; $5056: $96
    rst $30                                       ; $5057: $f7
    db $ec                                        ; $5058: $ec
    rst $18                                       ; $5059: $df
    ld a, [hl-]                                   ; $505a: $3a
    add a                                         ; $505b: $87
    ld [hl], e                                    ; $505c: $73
    ret c                                         ; $505d: $d8

    ld c, h                                       ; $505e: $4c
    ld a, [bc]                                    ; $505f: $0a
    or [hl]                                       ; $5060: $b6
    inc e                                         ; $5061: $1c
    inc h                                         ; $5062: $24
    ld e, a                                       ; $5063: $5f
    ld h, c                                       ; $5064: $61
    ld c, l                                       ; $5065: $4d
    adc h                                         ; $5066: $8c
    ld e, h                                       ; $5067: $5c
    sub b                                         ; $5068: $90
    jp nc, Jump_000_2e7c                          ; $5069: $d2 $7c $2e

jr_03e_506c:
    ld c, h                                       ; $506c: $4c
    reti                                          ; $506d: $d9


    ld e, e                                       ; $506e: $5b
    sbc h                                         ; $506f: $9c
    call $2bbd                                    ; $5070: $cd $bd $2b
    cp [hl]                                       ; $5073: $be
    ld c, [hl]                                    ; $5074: $4e
    db $dd                                        ; $5075: $dd
    xor a                                         ; $5076: $af
    ld b, d                                       ; $5077: $42
    sbc c                                         ; $5078: $99
    or [hl]                                       ; $5079: $b6
    sub l                                         ; $507a: $95
    inc e                                         ; $507b: $1c
    pop de                                        ; $507c: $d1
    inc h                                         ; $507d: $24
    ld b, [hl]                                    ; $507e: $46
    ld sp, hl                                     ; $507f: $f9
    ld a, [hl-]                                   ; $5080: $3a
    dec d                                         ; $5081: $15
    cp [hl]                                       ; $5082: $be
    cpl                                           ; $5083: $2f
    dec bc                                        ; $5084: $0b
    or e                                          ; $5085: $b3
    inc hl                                        ; $5086: $23
    cp h                                          ; $5087: $bc
    ld bc, $2fdd                                  ; $5088: $01 $dd $2f
    ld [hl], c                                    ; $508b: $71
    ld d, l                                       ; $508c: $55
    rla                                           ; $508d: $17
    cp [hl]                                       ; $508e: $be
    cp $b4                                        ; $508f: $fe $b4
    xor l                                         ; $5091: $ad
    db $e4                                        ; $5092: $e4
    inc l                                         ; $5093: $2c
    adc [hl]                                      ; $5094: $8e
    dec bc                                        ; $5095: $0b
    ld [hl], $69                                  ; $5096: $36 $69
    or [hl]                                       ; $5098: $b6
    ei                                            ; $5099: $fb
    ld [hl-], a                                   ; $509a: $32
    add a                                         ; $509b: $87
    call Call_03e_60a4                            ; $509c: $cd $a4 $60
    bit 4, c                                      ; $509f: $cb $61
    ld [$c688], a                                 ; $50a1: $ea $88 $c6
    ld de, $fca3                                  ; $50a4: $11 $a3 $fc
    ld b, d                                       ; $50a7: $42
    ld l, c                                       ; $50a8: $69
    dec [hl]                                      ; $50a9: $35
    dec h                                         ; $50aa: $25
    ld a, e                                       ; $50ab: $7b
    ld [bc], a                                    ; $50ac: $02
    ld a, l                                       ; $50ad: $7d
    rst $18                                       ; $50ae: $df
    rst $38                                       ; $50af: $ff
    inc l                                         ; $50b0: $2c
    adc [hl]                                      ; $50b1: $8e
    dec bc                                        ; $50b2: $0b
    cp [hl]                                       ; $50b3: $be
    push af                                       ; $50b4: $f5
    ld b, a                                       ; $50b5: $47
    inc e                                         ; $50b6: $1c
    set 1, [hl]                                   ; $50b7: $cb $ce
    ld c, [hl]                                    ; $50b9: $4e
    or l                                          ; $50ba: $b5
    jr c, jr_03e_50eb                             ; $50bb: $38 $2e

    ld [hl], l                                    ; $50bd: $75
    pop bc                                        ; $50be: $c1
    sub a                                         ; $50bf: $97
    xor [hl]                                      ; $50c0: $ae
    ld sp, hl                                     ; $50c1: $f9
    ccf                                           ; $50c2: $3f
    jr c, jr_03e_506c                             ; $50c3: $38 $a7

    ld l, l                                       ; $50c5: $6d
    call nc, $d5d8                                ; $50c6: $d4 $d8 $d5
    ld [hl], h                                    ; $50c9: $74
    ld h, $b1                                     ; $50ca: $26 $b1
    ld l, [hl]                                    ; $50cc: $6e
    ld d, b                                       ; $50cd: $50

jr_03e_50ce:
    ld l, $67                                     ; $50ce: $2e $67
    ld [de], a                                    ; $50d0: $12
    ld [hl], a                                    ; $50d1: $77
    xor $23                                       ; $50d2: $ee $23
    ld [hl], h                                    ; $50d4: $74
    xor a                                         ; $50d5: $af
    ld l, a                                       ; $50d6: $6f
    ld l, $75                                     ; $50d7: $2e $75
    rra                                           ; $50d9: $1f
    cp [hl]                                       ; $50da: $be
    call nz, Call_03e_4daa                        ; $50db: $c4 $aa $4d
    rst $20                                       ; $50de: $e7
    ld e, c                                       ; $50df: $59
    ld h, [hl]                                    ; $50e0: $66
    cp [hl]                                       ; $50e1: $be
    ld l, [hl]                                    ; $50e2: $6e
    sbc b                                         ; $50e3: $98
    rst $30                                       ; $50e4: $f7
    xor [hl]                                      ; $50e5: $ae
    ld hl, sp+$3a                                 ; $50e6: $f8 $3a
    ld [hl], l                                    ; $50e8: $75
    ccf                                           ; $50e9: $3f
    rst $18                                       ; $50ea: $df

jr_03e_50eb:
    ld a, [hl+]                                   ; $50eb: $2a
    call $c137                                    ; $50ec: $cd $37 $c1
    call nc, $e711                                ; $50ef: $d4 $11 $e7
    ld d, e                                       ; $50f2: $53
    rla                                           ; $50f3: $17
    cp [hl]                                       ; $50f4: $be
    db $fc                                        ; $50f5: $fc
    ld a, [hl-]                                   ; $50f6: $3a
    ld c, [hl]                                    ; $50f7: $4e
    call $0dcb                                    ; $50f8: $cd $cb $0d
    nop                                           ; $50fb: $00
    add c                                         ; $50fc: $81
    ld l, l                                       ; $50fd: $6d
    dec [hl]                                      ; $50fe: $35
    rla                                           ; $50ff: $17
    adc c                                         ; $5100: $89
    ld d, b                                       ; $5101: $50
    adc $e2                                       ; $5102: $ce $e2
    cp b                                          ; $5104: $b8
    rst $30                                       ; $5105: $f7
    call nz, $2f28                                ; $5106: $c4 $28 $2f
    inc hl                                        ; $5109: $23
    adc [hl]                                      ; $510a: $8e
    ld h, l                                       ; $510b: $65
    sbc l                                         ; $510c: $9d
    ld d, h                                       ; $510d: $54
    adc e                                         ; $510e: $8b
    inc hl                                        ; $510f: $23
    ld a, h                                       ; $5110: $7c
    ld d, $d7                                     ; $5111: $16 $d7
    jr z, jr_03e_50ce                             ; $5113: $28 $b9

    ld h, $33                                     ; $5115: $26 $33

jr_03e_5117:
    adc c                                         ; $5117: $89
    dec sp                                        ; $5118: $3b
    rst $30                                       ; $5119: $f7
    ld de, $01ba                                  ; $511a: $11 $ba $01
    halt                                          ; $511d: $76
    ld a, [de]                                    ; $511e: $1a
    cp e                                          ; $511f: $bb
    sub $69                                       ; $5120: $d6 $69
    call nz, Call_000_017b                        ; $5122: $c4 $7b $01
    adc [hl]                                      ; $5125: $8e
    ld a, [hl-]                                   ; $5126: $3a
    ld l, e                                       ; $5127: $6b
    jp nz, $ff67                                  ; $5128: $c2 $67 $ff

    ld [hl+], a                                   ; $512b: $22
    sub $59                                       ; $512c: $d6 $59
    ld h, a                                       ; $512e: $67
    ld c, a                                       ; $512f: $4f
    xor c                                         ; $5130: $a9
    ld e, e                                       ; $5131: $5b
    ld [hl+], a                                   ; $5132: $22
    rst $10                                       ; $5133: $d7
    add h                                         ; $5134: $84
    ld [hl], l                                    ; $5135: $75
    ld [$94c2], a                                 ; $5136: $ea $c2 $94
    add hl, sp                                    ; $5139: $39
    ld e, h                                       ; $513a: $5c
    ld a, c                                       ; $513b: $79
    sbc a                                         ; $513c: $9f
    rst $30                                       ; $513d: $f7
    adc $91                                       ; $513e: $ce $91
    scf                                           ; $5140: $37
    add hl, bc                                    ; $5141: $09
    ld e, a                                       ; $5142: $5f
    inc a                                         ; $5143: $3c
    ld h, b                                       ; $5144: $60
    sub l                                         ; $5145: $95
    rst $10                                       ; $5146: $d7
    sbc c                                         ; $5147: $99
    call nz, Call_03e_65f5                        ; $5148: $c4 $f5 $65
    and l                                         ; $514b: $a5
    sub l                                         ; $514c: $95
    jp nz, Jump_03e_7759                          ; $514d: $c2 $59 $77

    xor $23                                       ; $5150: $ee $23
    ld [hl], h                                    ; $5152: $74
    cpl                                           ; $5153: $2f
    or b                                          ; $5154: $b0
    adc l                                         ; $5155: $8d
    ld a, [de]                                    ; $5156: $1a
    cp e                                          ; $5157: $bb
    sbc d                                         ; $5158: $9a
    adc [hl]                                      ; $5159: $8e
    cp b                                          ; $515a: $b8
    rrca                                          ; $515b: $0f
    sbc l                                         ; $515c: $9d
    and h                                         ; $515d: $a4
    jp nz, Jump_000_1e57                          ; $515e: $c2 $57 $1e

    ei                                            ; $5161: $fb
    cp a                                          ; $5162: $bf
    sbc a                                         ; $5163: $9f
    add hl, bc                                    ; $5164: $09
    ld [hl], $0d                                  ; $5165: $36 $0d
    ld e, a                                       ; $5167: $5f
    daa                                           ; $5168: $27
    reti                                          ; $5169: $d9


    rst $28                                       ; $516a: $ef
    ld [hl], l                                    ; $516b: $75
    ld h, $71                                     ; $516c: $26 $71
    push hl                                       ; $516e: $e5
    ld d, a                                       ; $516f: $57
    ld a, c                                       ; $5170: $79
    ld l, c                                       ; $5171: $69
    pop af                                        ; $5172: $f1
    ld l, a                                       ; $5173: $6f
    nop                                           ; $5174: $00
    ld a, l                                       ; $5175: $7d
    ld [hl], e                                    ; $5176: $73
    sub c                                         ; $5177: $91
    ld d, e                                       ; $5178: $53
    add [hl]                                      ; $5179: $86
    cpl                                           ; $517a: $2f
    ld d, h                                       ; $517b: $54
    ld hl, sp-$14                                 ; $517c: $f8 $ec
    ld e, a                                       ; $517e: $5f
    call nz, $cf7a                                ; $517f: $c4 $7a $cf
    ld c, [hl]                                    ; $5182: $4e
    inc hl                                        ; $5183: $23
    rst $10                                       ; $5184: $d7
    ld c, c                                       ; $5185: $49
    or l                                          ; $5186: $b5
    jr c, jr_03e_5117                             ; $5187: $38 $8e

    cp d                                          ; $5189: $ba
    sub b                                         ; $518a: $90
    and l                                         ; $518b: $a5
    ld b, c                                       ; $518c: $41
    sub d                                         ; $518d: $92
    sbc d                                         ; $518e: $9a
    scf                                           ; $518f: $37
    nop                                           ; $5190: $00
    db $dd                                        ; $5191: $dd
    cpl                                           ; $5192: $2f
    ld [hl], c                                    ; $5193: $71
    xor l                                         ; $5194: $ad
    ld a, [hl+]                                   ; $5195: $2a
    xor $d1                                       ; $5196: $ee $d1
    rst $38                                       ; $5198: $ff
    ld a, $68                                     ; $5199: $3e $68
    db $d3                                        ; $519b: $d3
    di                                            ; $519c: $f3
    cp [hl]                                       ; $519d: $be
    rst $28                                       ; $519e: $ef
    ld e, [hl]                                    ; $519f: $5e
    ld b, c                                       ; $51a0: $41
    ld hl, sp+$28                                 ; $51a1: $f8 $28
    call nc, Call_000_03c5                        ; $51a3: $d4 $c5 $03
    ld l, [hl]                                    ; $51a6: $6e
    nop                                           ; $51a7: $00
    ld h, a                                       ; $51a8: $67
    dec sp                                        ; $51a9: $3b
    ld [c], a                                     ; $51aa: $e2
    db $eb                                        ; $51ab: $eb
    jr nc, jr_03e_51fb                            ; $51ac: $30 $4d

    sub b                                         ; $51ae: $90
    ld a, [bc]                                    ; $51af: $0a
    sbc a                                         ; $51b0: $9f
    db $fd                                        ; $51b1: $fd
    ld b, e                                       ; $51b2: $43
    jp nc, Jump_000_0dfc                          ; $51b3: $d2 $fc $0d

    nop                                           ; $51b6: $00
    halt                                          ; $51b7: $76
    ld a, [de]                                    ; $51b8: $1a
    ld d, e                                       ; $51b9: $53
    and a                                         ; $51ba: $a7
    adc c                                         ; $51bb: $89
    or e                                          ; $51bc: $b3
    ld a, a                                       ; $51bd: $7f
    ld de, $02eb                                  ; $51be: $11 $eb $02
    ld [hl-], a                                   ; $51c1: $32
    ld b, [hl]                                    ; $51c2: $46
    jp z, $b3ac                                   ; $51c3: $ca $ac $b3

    and a                                         ; $51c6: $a7
    call nc, $912d                                ; $51c7: $d4 $2d $91
    dec sp                                        ; $51ca: $3b
    ld c, a                                       ; $51cb: $4f
    ld e, $21                                     ; $51cc: $1e $21
    ld a, [bc]                                    ; $51ce: $0a
    ld a, h                                       ; $51cf: $7c
    ld e, a                                       ; $51d0: $5f
    ld e, h                                       ; $51d1: $5c
    adc l                                         ; $51d2: $8d
    xor c                                         ; $51d3: $a9
    di                                            ; $51d4: $f3
    inc l                                         ; $51d5: $2c
    inc sp                                        ; $51d6: $33
    ld e, c                                       ; $51d7: $59
    ld [$bcb5], sp                                ; $51d8: $08 $b5 $bc
    ld [hl], a                                    ; $51db: $77
    push af                                       ; $51dc: $f5
    xor b                                         ; $51dd: $a8
    sub c                                         ; $51de: $91
    and e                                         ; $51df: $a3
    xor $d2                                       ; $51e0: $ee $d2
    call nz, $f847                                ; $51e2: $c4 $47 $f8
    inc e                                         ; $51e5: $1c
    adc $10                                       ; $51e6: $ce $10
    db $e3                                        ; $51e8: $e3
    dec sp                                        ; $51e9: $3b
    ret                                           ; $51ea: $c9


    dec de                                        ; $51eb: $1b
    nop                                           ; $51ec: $00
    ld a, l                                       ; $51ed: $7d
    ld d, e                                       ; $51ee: $53
    rla                                           ; $51ef: $17
    ld h, h                                       ; $51f0: $64
    sbc l                                         ; $51f1: $9d
    ld a, [hl-]                                   ; $51f2: $3a
    rst $38                                       ; $51f3: $ff
    ld a, $67                                     ; $51f4: $3e $67
    inc e                                         ; $51f6: $1c

jr_03e_51f7:
    ld sp, $0dfe                                  ; $51f7: $31 $fe $0d
    nop                                           ; $51fa: $00

jr_03e_51fb:
    or $6f                                        ; $51fb: $f6 $6f
    sbc l                                         ; $51fd: $9d
    jp $6c39                                      ; $51fe: $c3 $39 $6c


    ld h, $05                                     ; $5201: $26 $05
    ld e, e                                       ; $5203: $5b
    ld l, $48                                     ; $5204: $2e $48
    ld l, c                                       ; $5206: $69
    ld a, $e1                                     ; $5207: $3e $e1
    db $eb                                        ; $5209: $eb
    ld e, $7c                                     ; $520a: $1e $7c
    dec e                                         ; $520c: $1d
    ld h, [hl]                                    ; $520d: $66
    ld a, h                                       ; $520e: $7c
    sbc a                                         ; $520f: $9f
    ei                                            ; $5210: $fb
    ld [bc], a                                    ; $5211: $02
    push hl                                       ; $5212: $e5
    db $e4                                        ; $5213: $e4
    dec h                                         ; $5214: $25
    ld a, e                                       ; $5215: $7b
    ld [bc], a                                    ; $5216: $02

Jump_03e_5217:
    ld a, l                                       ; $5217: $7d
    ld e, [hl]                                    ; $5218: $5e
    ld [hl+], a                                   ; $5219: $22
    rst $10                                       ; $521a: $d7
    sub c                                         ; $521b: $91
    ld d, [hl]                                    ; $521c: $56
    jp z, Jump_03e_76af                           ; $521d: $ca $af $76

    ld h, $98                                     ; $5220: $26 $98
    and e                                         ; $5222: $a3
    add $1f                                       ; $5223: $c6 $1f
    and [hl]                                      ; $5225: $a6
    add hl, bc                                    ; $5226: $09
    ld a, [c]                                     ; $5227: $f2
    ld b, $7d                                     ; $5228: $06 $7d
    jr c, jr_03e_528d                             ; $522a: $38 $61

    ld [hl], l                                    ; $522c: $75
    and e                                         ; $522d: $a3
    db $e4                                        ; $522e: $e4
    ld a, [hl]                                    ; $522f: $7e
    ld e, a                                       ; $5230: $5f
    and b                                         ; $5231: $a0
    sbc h                                         ; $5232: $9c
    push bc                                       ; $5233: $c5
    ld [hl], c                                    ; $5234: $71
    call nc, Call_03e_7558                        ; $5235: $d4 $58 $75
    push af                                       ; $5238: $f5
    db $eb                                        ; $5239: $eb
    inc c                                         ; $523a: $0c
    push bc                                       ; $523b: $c5
    db $fc                                        ; $523c: $fc
    dec c                                         ; $523d: $0d
    nop                                           ; $523e: $00
    halt                                          ; $523f: $76
    ld h, l                                       ; $5240: $65
    sbc l                                         ; $5241: $9d
    ld d, h                                       ; $5242: $54
    adc e                                         ; $5243: $8b
    db $e3                                        ; $5244: $e3
    xor b                                         ; $5245: $a8
    ld h, $d1                                     ; $5246: $26 $d1
    ld [hl], e                                    ; $5248: $73
    or l                                          ; $5249: $b5
    inc sp                                        ; $524a: $33

jr_03e_524b:
    pop bc                                        ; $524b: $c1
    call nc, $8d29                                ; $524c: $d4 $29 $8d
    jr nc, jr_03e_51f7                            ; $524f: $30 $a6

    sbc $00                                       ; $5251: $de $00
    rst $20                                       ; $5253: $e7
    ret                                           ; $5254: $c9


    sbc e                                         ; $5255: $9b
    or $ba                                        ; $5256: $f6 $ba
    jr nc, jr_03e_52bf                            ; $5258: $30 $65

    jp nz, $cb0a                                  ; $525a: $c2 $0a $cb

    dec bc                                        ; $525d: $0b
    and [hl]                                      ; $525e: $a6
    adc [hl]                                      ; $525f: $8e
    jp z, $8d29                                   ; $5260: $ca $29 $8d

    jr nc, jr_03e_524b                            ; $5263: $30 $e6

    dec c                                         ; $5265: $0d

Jump_03e_5266:
    nop                                           ; $5266: $00
    or $59                                        ; $5267: $f6 $59
    ld e, $3e                                     ; $5269: $1e $3e
    ei                                            ; $526b: $fb
    add a                                         ; $526c: $87
    and h                                         ; $526d: $a4
    ld sp, hl                                     ; $526e: $f9
    dec de                                        ; $526f: $1b
    nop                                           ; $5270: $00
    or $59                                        ; $5271: $f6 $59
    ld e, $be                                     ; $5273: $1e $be
    or e                                          ; $5275: $b3
    rra                                           ; $5276: $1f
    ld a, c                                       ; $5277: $79
    rst $28                                       ; $5278: $ef
    ld [hl+], a                                   ; $5279: $22
    adc [hl]                                      ; $527a: $8e
    ld a, [de]                                    ; $527b: $1a
    cp a                                          ; $527c: $bf
    di                                            ; $527d: $f3
    dec bc                                        ; $527e: $0b
    add l                                         ; $527f: $85
    sub b                                         ; $5280: $90
    jp $e8f8                                      ; $5281: $c3 $f8 $e8


    ld [hl], e                                    ; $5284: $73
    cp a                                          ; $5285: $bf
    ld c, e                                       ; $5286: $4b
    inc de                                        ; $5287: $13
    rra                                           ; $5288: $1f
    and a                                         ; $5289: $a7
    ld l, l                                       ; $528a: $6d
    pop bc                                        ; $528b: $c1
    rst $28                                       ; $528c: $ef

jr_03e_528d:
    ret c                                         ; $528d: $d8

    ld a, h                                       ; $528e: $7c
    db $d3                                        ; $528f: $d3
    ld d, l                                       ; $5290: $55
    sbc d                                         ; $5291: $9a
    add $dc                                       ; $5292: $c6 $dc
    rla                                           ; $5294: $17
    jr z, jr_03e_52be                             ; $5295: $28 $27

    cpl                                           ; $5297: $2f
    ld a, c                                       ; $5298: $79
    inc bc                                        ; $5299: $03
    ld a, l                                       ; $529a: $7d
    ld e, [hl]                                    ; $529b: $5e
    ld [hl+], a                                   ; $529c: $22
    rst $10                                       ; $529d: $d7
    sub c                                         ; $529e: $91
    ld d, [hl]                                    ; $529f: $56
    jp z, Jump_03e_76af                           ; $52a0: $ca $af $76

    ld h, $98                                     ; $52a3: $26 $98
    and e                                         ; $52a5: $a3
    add $1f                                       ; $52a6: $c6 $1f
    and [hl]                                      ; $52a8: $a6
    add hl, bc                                    ; $52a9: $09
    ld a, [c]                                     ; $52aa: $f2
    ld b, $01                                     ; $52ab: $06 $01
    cpl                                           ; $52ad: $2f
    inc [hl]                                      ; $52ae: $34
    inc e                                         ; $52af: $1c
    dec hl                                        ; $52b0: $2b
    call $2313                                    ; $52b1: $cd $13 $23
    ld h, a                                       ; $52b4: $67
    ld [hl], c                                    ; $52b5: $71
    inc e                                         ; $52b6: $1c
    dec [hl]                                      ; $52b7: $35
    halt                                          ; $52b8: $76
    dec [hl]                                      ; $52b9: $35
    sbc l                                         ; $52ba: $9d
    rst $20                                       ; $52bb: $e7
    sbc $38                                       ; $52bc: $de $38

jr_03e_52be:
    adc d                                         ; $52be: $8a

jr_03e_52bf:
    rst $08                                       ; $52bf: $cf
    ld a, e                                       ; $52c0: $7b
    sub a                                         ; $52c1: $97
    ld de, $a759                                  ; $52c2: $11 $59 $a7
    adc $e2                                       ; $52c5: $ce $e2
    cp b                                          ; $52c7: $b8
    ld h, $98                                     ; $52c8: $26 $98
    ld a, d                                       ; $52ca: $7a
    cpl                                           ; $52cb: $2f
    or b                                          ; $52cc: $b0
    xor l                                         ; $52cd: $ad
    jp nz, $fba6                                  ; $52ce: $c2 $a6 $fb

    ld [bc], a                                    ; $52d1: $02
    push hl                                       ; $52d2: $e5
    db $e4                                        ; $52d3: $e4
    dec h                                         ; $52d4: $25
    rst $20                                       ; $52d5: $e7
    add hl, sp                                    ; $52d6: $39
    db $fc                                        ; $52d7: $fc
    add sp, -$1c                                  ; $52d8: $e8 $e4
    dec bc                                        ; $52da: $0b
    ei                                            ; $52db: $fb
    rst $38                                       ; $52dc: $ff
    ld [hl+], a                                   ; $52dd: $22
    ld b, l                                       ; $52de: $45
    adc b                                         ; $52df: $88
    ld e, a                                       ; $52e0: $5f
    ldh [$ab], a                                  ; $52e1: $e0 $ab
    cp c                                          ; $52e3: $b9
    sub d                                         ; $52e4: $92
    di                                            ; $52e5: $f3
    inc [hl]                                      ; $52e6: $34
    ld [hl], $7a                                  ; $52e7: $36 $7a
    inc bc                                        ; $52e9: $03
    rla                                           ; $52ea: $17
    cp l                                          ; $52eb: $bd
    adc [hl]                                      ; $52ec: $8e
    ld a, [de]                                    ; $52ed: $1a
    add l                                         ; $52ee: $85
    and l                                         ; $52ef: $a5
    cp h                                          ; $52f0: $bc
    ld l, $14                                     ; $52f1: $2e $14
    ld a, [$8866]                                 ; $52f3: $fa $66 $88
    ld b, e                                       ; $52f6: $43
    ld b, a                                       ; $52f7: $47
    adc l                                         ; $52f8: $8d
    sub d                                         ; $52f9: $92
    di                                            ; $52fa: $f3
    call nc, $30d8                                ; $52fb: $d4 $d8 $30
    rst $28                                       ; $52fe: $ef
    sbc l                                         ; $52ff: $9d
    jp $eb0e                                      ; $5300: $c3 $0e $eb


    call nc, Call_03e_61bd                        ; $5303: $d4 $bd $61
    jr jr_03e_5367                                ; $5306: $18 $5f

    ld c, d                                       ; $5308: $4a
    sbc $00                                       ; $5309: $de $00
    rla                                           ; $530b: $17
    push hl                                       ; $530c: $e5
    inc l                                         ; $530d: $2c
    adc [hl]                                      ; $530e: $8e
    dec bc                                        ; $530f: $0b
    add l                                         ; $5310: $85
    cp [hl]                                       ; $5311: $be
    add hl, de                                    ; $5312: $19
    ld [c], a                                     ; $5313: $e2
    jp z, $a8eb                                   ; $5314: $ca $eb $a8

    ld d, c                                       ; $5317: $51
    ld e, b                                       ; $5318: $58
    jp z, Jump_000_30eb                           ; $5319: $ca $eb $30

jr_03e_531c:
    and a                                         ; $531c: $a7
    adc l                                         ; $531d: $8d
    ld [hl], l                                    ; $531e: $75
    jr z, jr_03e_533d                             ; $531f: $28 $1c

    ld [hl], l                                    ; $5321: $75
    rrca                                          ; $5322: $0f
    ret                                           ; $5323: $c9


    ei                                            ; $5324: $fb
    rst $28                                       ; $5325: $ef
    inc d                                         ; $5326: $14
    sbc $00                                       ; $5327: $de $00
    ld a, l                                       ; $5329: $7d
    add hl, de                                    ; $532a: $19
    ld b, [hl]                                    ; $532b: $46
    add a                                         ; $532c: $87
    add hl, sp                                    ; $532d: $39
    call z, $6351                                 ; $532e: $cc $51 $63
    rst $10                                       ; $5331: $d7
    ld l, d                                       ; $5332: $6a
    ld h, a                                       ; $5333: $67
    ld e, l                                       ; $5334: $5d
    ld b, a                                       ; $5335: $47
    ld e, d                                       ; $5336: $5a
    add hl, hl                                    ; $5337: $29
    adc a                                         ; $5338: $8f
    sub c                                         ; $5339: $91
    and e                                         ; $533a: $a3
    add $1f                                       ; $533b: $c6 $1f

jr_03e_533d:
    and [hl]                                      ; $533d: $a6
    add hl, bc                                    ; $533e: $09
    ld [de], a                                    ; $533f: $12
    cp [hl]                                       ; $5340: $be
    sub b                                         ; $5341: $90
    sub d                                         ; $5342: $92
    db $eb                                        ; $5343: $eb
    ld c, b                                       ; $5344: $48
    dec hl                                        ; $5345: $2b
    push hl                                       ; $5346: $e5
    ld d, a                                       ; $5347: $57
    ld [hl], a                                    ; $5348: $77
    jp hl                                         ; $5349: $e9


    inc l                                         ; $534a: $2c
    adc [hl]                                      ; $534b: $8e
    di                                            ; $534c: $f3
    sbc h                                         ; $534d: $9c
    ld c, c                                       ; $534e: $49
    adc l                                         ; $534f: $8d
    xor [hl]                                      ; $5350: $ae
    xor $08                                       ; $5351: $ee $08
    ld l, a                                       ; $5353: $6f
    nop                                           ; $5354: $00
    ld a, l                                       ; $5355: $7d
    ld [hl], e                                    ; $5356: $73
    sbc [hl]                                      ; $5357: $9e
    dec e                                         ; $5358: $1d
    adc d                                         ; $5359: $8a
    call $a9d7                                    ; $535a: $cd $d7 $a9
    ld a, e                                       ; $535d: $7b
    xor e                                         ; $535e: $ab
    di                                            ; $535f: $f3
    cpl                                           ; $5360: $2f
    ei                                            ; $5361: $fb
    sub l                                         ; $5362: $95
    call nc, Call_000_1c59                        ; $5363: $d4 $59 $1c
    ld d, a                                       ; $5366: $57

jr_03e_5367:
    ld e, [hl]                                    ; $5367: $5e
    ld b, a                                       ; $5368: $47
    adc l                                         ; $5369: $8d
    jp nz, Jump_03e_5e52                          ; $536a: $c2 $52 $5e

    rst $20                                       ; $536d: $e7
    sbc e                                         ; $536e: $9b
    ld hl, $e2ce                                  ; $536f: $21 $ce $e2
    jr c, jr_03e_53de                             ; $5372: $38 $6a

    db $ec                                        ; $5374: $ec
    jp nz, Jump_03e_4499                          ; $5375: $c2 $99 $44

    ld c, a                                       ; $5378: $4f
    ld a, h                                       ; $5379: $7c
    sbc a                                         ; $537a: $9f
    ld a, d                                       ; $537b: $7a
    inc bc                                        ; $537c: $03
    rst $20                                       ; $537d: $e7
    or b                                          ; $537e: $b0
    jp Jump_03e_753a                              ; $537f: $c3 $3a $75


    dec c                                         ; $5382: $0d
    ld c, l                                       ; $5383: $4d
    ld l, c                                       ; $5384: $69
    ld hl, sp-$7e                                 ; $5385: $f8 $82
    xor c                                         ; $5387: $a9
    ld a, e                                       ; $5388: $7b
    adc h                                         ; $5389: $8c
    ld e, h                                       ; $538a: $5c
    ld sp, hl                                     ; $538b: $f9
    ld d, l                                       ; $538c: $55
    or d                                          ; $538d: $b2
    jr c, jr_03e_531c                             ; $538e: $38 $8c

jr_03e_5390:
    rst $28                                       ; $5390: $ef
    rst $20                                       ; $5391: $e7
    cp c                                          ; $5392: $b9
    ld a, [c]                                     ; $5393: $f2
    ld a, [hl-]                                   ; $5394: $3a
    ld l, d                                       ; $5395: $6a
    inc d                                         ; $5396: $14
    sub [hl]                                      ; $5397: $96
    ld a, [c]                                     ; $5398: $f2
    ld a, d                                       ; $5399: $7a
    inc bc                                        ; $539a: $03
    halt                                          ; $539b: $76
    ld h, l                                       ; $539c: $65
    sbc l                                         ; $539d: $9d
    ld d, h                                       ; $539e: $54
    adc e                                         ; $539f: $8b
    db $e3                                        ; $53a0: $e3
    xor b                                         ; $53a1: $a8
    ld [hl], e                                    ; $53a2: $73
    cp b                                          ; $53a3: $b8
    ld [c], a                                     ; $53a4: $e2
    and b                                         ; $53a5: $a0
    sub a                                         ; $53a6: $97
    push de                                       ; $53a7: $d5
    ld c, l                                       ; $53a8: $4d
    inc hl                                        ; $53a9: $23
    and l                                         ; $53aa: $a5
    and l                                         ; $53ab: $a5
    and $0d                                       ; $53ac: $e6 $0d
    nop                                           ; $53ae: $00
    db $dd                                        ; $53af: $dd
    db $ec                                        ; $53b0: $ec
    rra                                           ; $53b1: $1f
    sub d                                         ; $53b2: $92
    and $e1                                       ; $53b3: $e6 $e1
    xor e                                         ; $53b5: $ab
    sbc e                                         ; $53b6: $9b
    inc a                                         ; $53b7: $3c
    ld a, h                                       ; $53b8: $7c
    ld h, $d8                                     ; $53b9: $26 $d8
    inc [hl]                                      ; $53bb: $34
    ld a, h                                       ; $53bc: $7c
    sbc l                                         ; $53bd: $9d
    ld h, h                                       ; $53be: $64
    cp a                                          ; $53bf: $bf
    rst $10                                       ; $53c0: $d7
    ld e, $b3                                     ; $53c1: $1e $b3
    dec hl                                        ; $53c3: $2b
    inc de                                        ; $53c4: $13
    ld l, d                                       ; $53c5: $6a
    call z, $6351                                 ; $53c6: $cc $51 $63
    rst $10                                       ; $53c9: $d7
    adc b                                         ; $53ca: $88
    ei                                            ; $53cb: $fb
    ret nc                                        ; $53cc: $d0

    ld c, c                                       ; $53cd: $49
    ld [$000d], a                                 ; $53ce: $ea $0d $00
    halt                                          ; $53d1: $76
    ld a, [de]                                    ; $53d2: $1a
    ld d, d                                       ; $53d3: $52
    sbc $ef                                       ; $53d4: $de $ef
    dec l                                         ; $53d6: $2d
    adc $e6                                       ; $53d7: $ce $e6
    ld b, $dd                                     ; $53d9: $06 $dd
    db $ec                                        ; $53db: $ec
    inc [hl]                                      ; $53dc: $34
    and h                                         ; $53dd: $a4

jr_03e_53de:
    db $e4                                        ; $53de: $e4
    inc l                                         ; $53df: $2c
    adc [hl]                                      ; $53e0: $8e
    jp $f05c                                      ; $53e1: $c3 $5c $f0


    xor l                                         ; $53e4: $ad
    ccf                                           ; $53e5: $3f
    ld a, h                                       ; $53e6: $7c
    rst $18                                       ; $53e7: $df
    cp b                                          ; $53e8: $b8
    jr nz, jr_03e_5390                            ; $53e9: $20 $a5

    ld sp, hl                                     ; $53eb: $f9
    db $ec                                        ; $53ec: $ec
    ld bc, $7600                                  ; $53ed: $01 $00 $76
    or b                                          ; $53f0: $b0
    inc c                                         ; $53f1: $0c
    jp Jump_000_3b98                              ; $53f2: $c3 $98 $3b


    ld b, a                                       ; $53f5: $47
    sbc $24                                       ; $53f6: $de $24
    ld a, h                                       ; $53f8: $7c
    pop af                                        ; $53f9: $f1
    sra d                                         ; $53fa: $cb $2a
    db $ec                                        ; $53fc: $ec
    ld a, a                                       ; $53fd: $7f

Jump_03e_53fe:
    rst $18                                       ; $53fe: $df
    scf                                           ; $53ff: $37
    nop                                           ; $5400: $00
    db $dd                                        ; $5401: $dd
    cpl                                           ; $5402: $2f
    ld [hl], c                                    ; $5403: $71
    ld d, l                                       ; $5404: $55
    rla                                           ; $5405: $17
    db $fc                                        ; $5406: $fc
    add l                                         ; $5407: $85
    xor a                                         ; $5408: $af
    rst $28                                       ; $5409: $ef
    or e                                          ; $540a: $b3
    daa                                           ; $540b: $27
    nop                                           ; $540c: $00
    rst $20                                       ; $540d: $e7
    ret z                                         ; $540e: $c8

    sbc e                                         ; $540f: $9b
    ld e, h                                       ; $5410: $5c
    call $8499                                    ; $5411: $cd $99 $84
    sbc d                                         ; $5414: $9a
    db $ed                                        ; $5415: $ed
    jp nz, Jump_03e_7994                          ; $5416: $c2 $94 $79

    ld b, [hl]                                    ; $5419: $46
    jp hl                                         ; $541a: $e9


    jp nc, $2f85                                  ; $541b: $d2 $85 $2f

    ccf                                           ; $541e: $3f
    add sp, $35                                   ; $541f: $e8 $35
    cp [hl]                                       ; $5421: $be
    call nc, $c39c                                ; $5422: $d4 $9c $c3
    ld e, a                                       ; $5425: $5f
    ld b, a                                       ; $5426: $47
    or d                                          ; $5427: $b2
    cp $59                                        ; $5428: $fe $59
    rst $28                                       ; $542a: $ef
    ei                                            ; $542b: $fb
    xor $38                                       ; $542c: $ee $38
    ld h, d                                       ; $542e: $62
    jp nz, Jump_03e_7357                          ; $542f: $c2 $57 $73

    call nz, $b628                                ; $5432: $c4 $28 $b6
    ld h, e                                       ; $5435: $63
    ld e, c                                       ; $5436: $59
    ret c                                         ; $5437: $d8

    add l                                         ; $5438: $85
    call $0de4                                    ; $5439: $cd $e4 $0d
    nop                                           ; $543c: $00
    cp l                                          ; $543d: $bd
    cp a                                          ; $543e: $bf
    xor $b4                                       ; $543f: $ee $b4
    xor a                                         ; $5441: $af
    ld d, e                                       ; $5442: $53
    rst $20                                       ; $5443: $e7
    add hl, sp                                    ; $5444: $39
    ld c, b                                       ; $5445: $48
    ld e, h                                       ; $5446: $5c
    sbc b                                         ; $5447: $98
    rst $30                                       ; $5448: $f7
    ld a, [$d2b2]                                 ; $5449: $fa $b2 $d2
    ld c, d                                       ; $544c: $4a
    pop hl                                        ; $544d: $e1
    xor h                                         ; $544e: $ac
    or e                                          ; $544f: $b3
    and a                                         ; $5450: $a7
    call nc, $912d                                ; $5451: $d4 $2d $91
    ldh a, [rHDMA5]                               ; $5454: $f0 $55
    adc b                                         ; $5456: $88
    call $24cf                                    ; $5457: $cd $cf $24
    sub $0d                                       ; $545a: $d6 $0d
    jp z, $f67b                                   ; $545c: $ca $7b $f6

    cpl                                           ; $545f: $2f
    ld h, d                                       ; $5460: $62
    add l                                         ; $5461: $85
    cpl                                           ; $5462: $2f
    ld e, $b0                                     ; $5463: $1e $b0
    jp z, Jump_03e_4ceb                           ; $5465: $ca $eb $4c

    ld [c], a                                     ; $5468: $e2
    adc $91                                       ; $5469: $ce $91
    scf                                           ; $546b: $37
    add hl, sp                                    ; $546c: $39
    db $eb                                        ; $546d: $eb
    adc $7d                                       ; $546e: $ce $7d
    add h                                         ; $5470: $84
    xor $05                                       ; $5471: $ee $05
    ld d, d                                       ; $5473: $52
    cp d                                          ; $5474: $ba
    ld d, [hl]                                    ; $5475: $56
    ld [hl], a                                    ; $5476: $77
    jp hl                                         ; $5477: $e9


    ld a, h                                       ; $5478: $7c
    xor e                                         ; $5479: $ab
    or [hl]                                       ; $547a: $b6
    ld sp, $ccad                                  ; $547b: $31 $ad $cc
    ld [c], a                                     ; $547e: $e2
    jr c, jr_03e_54eb                             ; $547f: $38 $6a

    db $e4                                        ; $5481: $e4
    ld e, d                                       ; $5482: $5a
    db $dd                                        ; $5483: $dd
    xor c                                         ; $5484: $a9
    ld l, d                                       ; $5485: $6a
    ld e, d                                       ; $5486: $5a
    ld e, c                                       ; $5487: $59
    db $e4                                        ; $5488: $e4
    ld e, [hl]                                    ; $5489: $5e
    sbc l                                         ; $548a: $9d
    ld b, [hl]                                    ; $548b: $46
    sbc $00                                       ; $548c: $de $00
    db $dd                                        ; $548e: $dd
    ld a, [$f934]                                 ; $548f: $fa $34 $f9
    ld e, $3b                                     ; $5492: $1e $3b
    add a                                         ; $5494: $87
    dec e                                         ; $5495: $1d
    ld c, [hl]                                    ; $5496: $4e
    add hl, hl                                    ; $5497: $29
    ld h, e                                       ; $5498: $63
    sbc c                                         ; $5499: $99
    jp Jump_03e_5266                              ; $549a: $c3 $66 $52


    or b                                          ; $549d: $b0
    push hl                                       ; $549e: $e5
    cp l                                          ; $549f: $bd
    ld l, [hl]                                    ; $54a0: $6e
    halt                                          ; $54a1: $76
    ld a, [de]                                    ; $54a2: $1a
    cp e                                          ; $54a3: $bb
    ld d, [hl]                                    ; $54a4: $56
    dec sp                                        ; $54a5: $3b
    ld c, d                                       ; $54a6: $4a
    call z, $001e                                 ; $54a7: $cc $1e $00
    db $dd                                        ; $54aa: $dd
    ld a, d                                       ; $54ab: $7a
    db $fd                                        ; $54ac: $fd
    ld b, e                                       ; $54ad: $43
    db $10                                        ; $54ae: $10
    inc d                                         ; $54af: $14
    inc c                                         ; $54b0: $0c
    ld b, $83                                     ; $54b1: $06 $83
    dec a                                         ; $54b3: $3d
    nop                                           ; $54b4: $00
    sub a                                         ; $54b5: $97
    rlca                                          ; $54b6: $07
    add e                                         ; $54b7: $83
    pop bc                                        ; $54b8: $c1
    ei                                            ; $54b9: $fb
    cp [hl]                                       ; $54ba: $be
    ld l, e                                       ; $54bb: $6b
    adc $3b                                       ; $54bc: $ce $3b
    ld d, $de                                     ; $54be: $16 $de
    rst $30                                       ; $54c0: $f7
    ld e, l                                       ; $54c1: $5d
    ld a, [hl]                                    ; $54c2: $7e
    and $3b                                       ; $54c3: $e6 $3b
    db $ec                                        ; $54c5: $ec
    rst $38                                       ; $54c6: $ff
    rst $30                                       ; $54c7: $f7
    ld a, l                                       ; $54c8: $7d
    inc bc                                        ; $54c9: $03
    db $dd                                        ; $54ca: $dd
    cpl                                           ; $54cb: $2f
    ld [hl], c                                    ; $54cc: $71
    ld d, l                                       ; $54cd: $55
    rla                                           ; $54ce: $17
    db $fc                                        ; $54cf: $fc
    add l                                         ; $54d0: $85
    xor a                                         ; $54d1: $af
    rst $28                                       ; $54d2: $ef
    or e                                          ; $54d3: $b3
    daa                                           ; $54d4: $27
    nop                                           ; $54d5: $00
    add c                                         ; $54d6: $81
    ld e, h                                       ; $54d7: $5c
    ldh a, [$d7]                                  ; $54d8: $f0 $d7
    ld a, h                                       ; $54da: $7c
    sbc $eb                                       ; $54db: $de $eb
    jp $f295                                      ; $54dd: $c3 $95 $f2


    ld [hl], l                                    ; $54e0: $75
    xor $dc                                       ; $54e1: $ee $dc
    ld h, $c4                                     ; $54e3: $26 $c4
    cp $bc                                        ; $54e5: $fe $bc
    ld [hl], a                                    ; $54e7: $77
    add hl, de                                    ; $54e8: $19
    sub c                                         ; $54e9: $91
    ld [hl], l                                    ; $54ea: $75

jr_03e_54eb:
    ld [$8e2c], a                                 ; $54eb: $ea $2c $8e
    xor e                                         ; $54ee: $ab
    ld h, h                                       ; $54ef: $64
    xor c                                         ; $54f0: $a9
    ld d, b                                       ; $54f1: $50
    ld h, [hl]                                    ; $54f2: $66
    ld [de], a                                    ; $54f3: $12
    ld h, a                                       ; $54f4: $67
    rst $38                                       ; $54f5: $ff
    sub b                                         ; $54f6: $90
    inc [hl]                                      ; $54f7: $34
    ld a, a                                       ; $54f8: $7f
    inc bc                                        ; $54f9: $03
    halt                                          ; $54fa: $76
    ld a, [de]                                    ; $54fb: $1a
    ld d, d                                       ; $54fc: $52
    cp $be                                        ; $54fd: $fe $be
    rst $28                                       ; $54ff: $ef
    xor $fa                                       ; $5500: $ee $fa
    dec e                                         ; $5502: $1d
    ld [$ce4a], a                                 ; $5503: $ea $4a $ce
    ld [c], a                                     ; $5506: $e2
    jr c, @+$6c                                   ; $5507: $38 $6a

    db $ec                                        ; $5509: $ec
    ld e, d                                       ; $550a: $5a
    db $fd                                        ; $550b: $fd
    pop af                                        ; $550c: $f1
    pop de                                        ; $550d: $d1
    rst $20                                       ; $550e: $e7
    ld a, [hl]                                    ; $550f: $7e
    dec h                                         ; $5510: $25
    ld [hl], l                                    ; $5511: $75
    ld c, $9b                                     ; $5512: $0e $9b
    ld c, c                                       ; $5514: $49
    pop bc                                        ; $5515: $c1

jr_03e_5516:
    sub [hl]                                      ; $5516: $96
    jp c, Jump_000_0013                           ; $5517: $da $13 $00

    cp l                                          ; $551a: $bd
    ld a, [bc]                                    ; $551b: $0a
    db $e4                                        ; $551c: $e4
    ld a, [de]                                    ; $551d: $1a

jr_03e_551e:
    ld [hl], c                                    ; $551e: $71
    ld d, $c7                                     ; $551f: $16 $c7
    ld e, c                                       ; $5521: $59
    ld e, h                                       ; $5522: $5c
    and e                                         ; $5523: $a3
    db $fc                                        ; $5524: $fc
    call nc, Call_000_1f4d                        ; $5525: $d4 $4d $1f
    ld hl, $bde1                                  ; $5528: $21 $e1 $bd
    ld e, [hl]                                    ; $552b: $5e
    ld h, l                                       ; $552c: $65
    dec e                                         ; $552d: $1d
    halt                                          ; $552e: $76
    jr z, jr_03e_5516                             ; $552f: $28 $e5

    pop hl                                        ; $5531: $e1
    ld [hl], e                                    ; $5532: $73
    sbc b                                         ; $5533: $98
    ld d, e                                       ; $5534: $53
    xor [hl]                                      ; $5535: $ae
    ld a, [hl]                                    ; $5536: $7e
    adc h                                         ; $5537: $8c
    adc l                                         ; $5538: $8d
    ret z                                         ; $5539: $c8

    sbc c                                         ; $553a: $99
    call nz, $9a55                                ; $553b: $c4 $55 $9a
    ld a, a                                       ; $553e: $7f
    ld hl, sp-$22                                 ; $553f: $f8 $de
    and c                                         ; $5541: $a1
    push bc                                       ; $5542: $c5
    ld [hl], c                                    ; $5543: $71
    call nc, Call_03e_7558                        ; $5544: $d4 $58 $75
    push af                                       ; $5547: $f5
    rla                                           ; $5548: $17
    rst $18                                       ; $5549: $df
    ld h, d                                       ; $554a: $62
    ld l, $7c                                     ; $554b: $2e $7c
    ld sp, hl                                     ; $554d: $f9
    sub l                                         ; $554e: $95
    rra                                           ; $554f: $1f
    inc hl                                        ; $5550: $23
    dec b                                         ; $5551: $05
    sbc e                                         ; $5552: $9b
    ld a, a                                       ; $5553: $7f
    ld a, a                                       ; $5554: $7f
    cpl                                           ; $5555: $2f
    add b                                         ; $5556: $80
    sub d                                         ; $5557: $92
    inc hl                                        ; $5558: $23
    ld a, [hl+]                                   ; $5559: $2a
    ld hl, $fcd7                                  ; $555a: $21 $d7 $fc
    cpl                                           ; $555d: $2f
    ld l, h                                       ; $555e: $6c
    ld b, h                                       ; $555f: $44
    db $fd                                        ; $5560: $fd
    ld e, c                                       ; $5561: $59
    inc e                                         ; $5562: $1c
    rla                                           ; $5563: $17
    and [hl]                                      ; $5564: $a6
    sub a                                         ; $5565: $97
    xor [hl]                                      ; $5566: $ae
    ld [hl], l                                    ; $5567: $75
    ret c                                         ; $5568: $d8

    and c                                         ; $5569: $a1
    db $ec                                        ; $556a: $ec
    dec bc                                        ; $556b: $0b
    sub h                                         ; $556c: $94
    or e                                          ; $556d: $b3
    jr c, jr_03e_551e                             ; $556e: $38 $ae

    ld [hl], b                                    ; $5570: $70
    cp [hl]                                       ; $5571: $be
    ld [$afca], a                                 ; $5572: $ea $ca $af
    jp nc, $8ffc                                  ; $5575: $d2 $fc $8f

    sub c                                         ; $5578: $91
    add d                                         ; $5579: $82
    ld a, a                                       ; $557a: $7f
    inc bc                                        ; $557b: $03
    cp l                                          ; $557c: $bd
    bit 1, e                                      ; $557d: $cb $4b
    jp nz, $8dd7                                  ; $557f: $c2 $d7 $8d

    ld h, l                                       ; $5582: $65
    halt                                          ; $5583: $76
    and l                                         ; $5584: $a5
    pop bc                                        ; $5585: $c1
    ld l, d                                       ; $5586: $6a
    ld [hl-], a                                   ; $5587: $32
    rst $08                                       ; $5588: $cf
    sub l                                         ; $5589: $95
    rst $18                                       ; $558a: $df
    dec d                                         ; $558b: $15
    call Call_000_3cff                            ; $558c: $cd $ff $3c
    ld d, a                                       ; $558f: $57
    ld a, [hl]                                    ; $5590: $7e
    ld bc, $5e8d                                  ; $5591: $01 $8d $5e
    ld a, [hl]                                    ; $5594: $7e
    rst $20                                       ; $5595: $e7
    or [hl]                                       ; $5596: $b6
    sub d                                         ; $5597: $92
    sbc d                                         ; $5598: $9a
    push de                                       ; $5599: $d5
    ld e, a                                       ; $559a: $5f
    ld a, d                                       ; $559b: $7a
    inc l                                         ; $559c: $2c
    add b                                         ; $559d: $80
    sub d                                         ; $559e: $92
    db $eb                                        ; $559f: $eb
    ld l, [hl]                                    ; $55a0: $6e
    ld [hl], c                                    ; $55a1: $71
    xor l                                         ; $55a2: $ad
    ld a, [hl+]                                   ; $55a3: $2a
    ld l, $4c                                     ; $55a4: $2e $4c
    cpl                                           ; $55a6: $2f
    ld [hl], $3f                                  ; $55a7: $36 $3f
    ld l, d                                       ; $55a9: $6a
    ld a, h                                       ; $55aa: $7c
    ld e, c                                       ; $55ab: $59
    ld a, h                                       ; $55ac: $7c
    sbc h                                         ; $55ad: $9c
    and a                                         ; $55ae: $a7
    ld d, d                                       ; $55af: $52
    ld b, e                                       ; $55b0: $43
    jp z, $ecfb                                   ; $55b1: $ca $fb $ec

    add hl, bc                                    ; $55b4: $09
    nop                                           ; $55b5: $00
    halt                                          ; $55b6: $76
    ld h, l                                       ; $55b7: $65
    ld [hl], l                                    ; $55b8: $75
    db $d3                                        ; $55b9: $d3
    ld a, [hl-]                                   ; $55ba: $3a
    ld h, a                                       ; $55bb: $67
    ld [hl], c                                    ; $55bc: $71
    call c, $c817                                 ; $55bd: $dc $17 $c8
    ld h, c                                       ; $55c0: $61
    ld [$310c], a                                 ; $55c1: $ea $0c $31
    cp [hl]                                       ; $55c4: $be
    sub e                                         ; $55c5: $93
    call nc, $2119                                ; $55c6: $d4 $19 $21
    ld [hl], c                                    ; $55c9: $71
    ld d, $c7                                     ; $55ca: $16 $c7
    sub l                                         ; $55cc: $95
    rst $10                                       ; $55cd: $d7
    ld d, c                                       ; $55ce: $51
    and e                                         ; $55cf: $a3
    or b                                          ; $55d0: $b0
    sub h                                         ; $55d1: $94
    rst $10                                       ; $55d2: $d7
    dec b                                         ; $55d3: $05
    rra                                           ; $55d4: $1f
    rst $20                                       ; $55d5: $e7
    sbc e                                         ; $55d6: $9b
    add hl, bc                                    ; $55d7: $09
    and $2c                                       ; $55d8: $e6 $2c
    adc [hl]                                      ; $55da: $8e
    adc e                                         ; $55db: $8b
    ld e, h                                       ; $55dc: $5c
    db $fd                                        ; $55dd: $fd
    pop af                                        ; $55de: $f1
    and l                                         ; $55df: $a5
    db $eb                                        ; $55e0: $eb
    sbc [hl]                                      ; $55e1: $9e
    ld e, l                                       ; $55e2: $5d
    ld e, c                                       ; $55e3: $59
    db $dd                                        ; $55e4: $dd
    or h                                          ; $55e5: $b4
    adc $59                                       ; $55e6: $ce $59
    inc e                                         ; $55e8: $1c
    and a                                         ; $55e9: $a7
    ld e, h                                       ; $55ea: $5c
    ldh a, [$f7]                                  ; $55eb: $f0 $f7
    push de                                       ; $55ed: $d5
    inc d                                         ; $55ee: $14
    ld a, c                                       ; $55ef: $79
    sbc a                                         ; $55f0: $9f
    ei                                            ; $55f1: $fb
    sub l                                         ; $55f2: $95
    ld e, a                                       ; $55f3: $5f
    and l                                         ; $55f4: $a5
    ld sp, hl                                     ; $55f5: $f9
    sbc a                                         ; $55f6: $9f
    ld h, a                                       ; $55f7: $67
    db $fd                                        ; $55f8: $fd

Jump_03e_55f9:
    jp c, $e7de                                   ; $55f9: $da $de $e7

    ld h, d                                       ; $55fc: $62
    ld h, e                                       ; $55fd: $63
    dec e                                         ; $55fe: $1d
    ld h, $7c                                     ; $55ff: $26 $7c
    call nc, $f290                                ; $5601: $d4 $90 $f2
    add sp, $73                                   ; $5604: $e8 $73
    ld b, d                                       ; $5606: $42
    ld c, b                                       ; $5607: $48
    xor b                                         ; $5608: $a8
    cpl                                           ; $5609: $2f
    ei                                            ; $560a: $fb
    or d                                          ; $560b: $b2
    jr nc, jr_03e_564b                            ; $560c: $30 $3d

    push hl                                       ; $560e: $e5
    cp [hl]                                       ; $560f: $be
    ld bc, $aedd                                  ; $5610: $01 $dd $ae
    ret z                                         ; $5613: $c8

    ld [c], a                                     ; $5614: $e2
    ld e, c                                       ; $5615: $59
    and a                                         ; $5616: $a7
    call nz, $001e                                ; $5617: $c4 $1e $00
    db $dd                                        ; $561a: $dd
    db $ec                                        ; $561b: $ec
    ld e, a                                       ; $561c: $5f
    call nz, Call_03e_63da                        ; $561d: $c4 $da $63
    db $dd                                        ; $5620: $dd
    db $ed                                        ; $5621: $ed
    inc [hl]                                      ; $5622: $34
    halt                                          ; $5623: $76
    jp hl                                         ; $5624: $e9


    ld a, [hl-]                                   ; $5625: $3a
    adc l                                         ; $5626: $8d
    ret c                                         ; $5627: $d8

    inc de                                        ; $5628: $13
    nop                                           ; $5629: $00
    add c                                         ; $562a: $81
    ld [hl], $f7                                  ; $562b: $36 $f7
    ld [bc], a                                    ; $562d: $02
    jr z, jr_03e_5669                             ; $562e: $28 $39

    sub [hl]                                      ; $5630: $96
    add hl, sp                                    ; $5631: $39
    ld l, h                                       ; $5632: $6c
    ld h, $05                                     ; $5633: $26 $05
    ld e, e                                       ; $5635: $5b
    adc [hl]                                      ; $5636: $8e
    ld a, [de]                                    ; $5637: $1a
    cp e                                          ; $5638: $bb
    or $a5                                        ; $5639: $f6 $a5
    ret c                                         ; $563b: $d8

    ret nz                                        ; $563c: $c0

    ld d, a                                       ; $563d: $57
    dec sp                                        ; $563e: $3b
    ld c, d                                       ; $563f: $4a
    call z, $001b                                 ; $5640: $cc $1b $00
    halt                                          ; $5643: $76
    cp d                                          ; $5644: $ba
    ld h, b                                       ; $5645: $60
    jp z, Jump_03e_73cf                           ; $5646: $ca $cf $73

    ld d, $c7                                     ; $5649: $16 $c7

jr_03e_564b:
    push de                                       ; $564b: $d5
    ld e, h                                       ; $564c: $5c
    db $fd                                        ; $564d: $fd
    ld h, d                                       ; $564e: $62
    add d                                         ; $564f: $82
    add h                                         ; $5650: $84
    rst $08                                       ; $5651: $cf
    cp $45                                        ; $5652: $fe $45
    xor h                                         ; $5654: $ac
    rst $30                                       ; $5655: $f7
    ld a, d                                       ; $5656: $7a
    dec b                                         ; $5657: $05
    ld d, e                                       ; $5658: $53
    ld a, [hl]                                    ; $5659: $7e
    call nc, $a5d8                                ; $565a: $d4 $d8 $a5
    ei                                            ; $565d: $fb
    jp hl                                         ; $565e: $e9


    sub a                                         ; $565f: $97
    ld c, d                                       ; $5660: $4a
    sbc $bb                                       ; $5661: $de $bb
    ld a, d                                       ; $5663: $7a
    ld b, d                                       ; $5664: $42
    db $e3                                        ; $5665: $e3

jr_03e_5666:
    jr z, jr_03e_5666                             ; $5666: $28 $fe

    ld h, a                                       ; $5668: $67

jr_03e_5669:
    ld [hl], c                                    ; $5669: $71
    call c, Call_03e_42af                         ; $566a: $dc $af $42
    ld b, e                                       ; $566d: $43
    ld e, l                                       ; $566e: $5d
    ld a, c                                       ; $566f: $79
    dec e                                         ; $5670: $1d
    dec [hl]                                      ; $5671: $35
    ld a, [bc]                                    ; $5672: $0a
    ld c, e                                       ; $5673: $4b
    ld a, c                                       ; $5674: $79
    sbc l                                         ; $5675: $9d
    ld [hl], d                                    ; $5676: $72
    or h                                          ; $5677: $b4
    cp b                                          ; $5678: $b8
    ld d, [hl]                                    ; $5679: $56
    ld c, c                                       ; $567a: $49
    di                                            ; $567b: $f3
    ld a, b                                       ; $567c: $78
    inc bc                                        ; $567d: $03
    ld d, a                                       ; $567e: $57
    ld h, h                                       ; $567f: $64
    xor c                                         ; $5680: $a9
    ld a, h                                       ; $5681: $7c
    sbc l                                         ; $5682: $9d
    cp d                                          ; $5683: $ba
    sbc a                                         ; $5684: $9f
    ld a, c                                       ; $5685: $79
    db $fd                                        ; $5686: $fd
    ld a, e                                       ; $5687: $7b
    add c                                         ; $5688: $81
    add h                                         ; $5689: $84
    sbc h                                         ; $568a: $9c
    db $e4                                        ; $568b: $e4
    inc l                                         ; $568c: $2c
    adc [hl]                                      ; $568d: $8e
    dec hl                                        ; $568e: $2b
    xor c                                         ; $568f: $a9
    sra b                                         ; $5690: $cb $28
    xor c                                         ; $5692: $a9
    or e                                          ; $5693: $b3
    cp $a8                                        ; $5694: $fe $a8
    or c                                          ; $5696: $b1
    dec bc                                        ; $5697: $0b
    rst $30                                       ; $5698: $f7
    and l                                         ; $5699: $a5
    ret c                                         ; $569a: $d8

    call c, Call_03e_7d00                         ; $569b: $dc $00 $7d
    adc b                                         ; $569e: $88
    xor c                                         ; $569f: $a9
    xor e                                         ; $56a0: $ab
    cp a                                          ; $56a1: $bf
    call z, $38e2                                 ; $56a2: $cc $e2 $38
    ei                                            ; $56a5: $fb
    add a                                         ; $56a6: $87
    and h                                         ; $56a7: $a4
    ld sp, hl                                     ; $56a8: $f9
    ld b, l                                       ; $56a9: $45
    adc [hl]                                      ; $56aa: $8e
    ld l, b                                       ; $56ab: $68
    ld [de], a                                    ; $56ac: $12
    and e                                         ; $56ad: $a3
    ret c                                         ; $56ae: $d8

    adc [hl]                                      ; $56af: $8e
    jr c, @-$68                                   ; $56b0: $38 $96

    ld [hl], l                                    ; $56b2: $75
    ld d, d                                       ; $56b3: $52
    dec l                                         ; $56b4: $2d
    adc [hl]                                      ; $56b5: $8e
    rst $30                                       ; $56b6: $f7
    ld a, d                                       ; $56b7: $7a
    dec b                                         ; $56b8: $05
    ld d, e                                       ; $56b9: $53
    ld a, [hl]                                    ; $56ba: $7e
    ld c, d                                       ; $56bb: $4a
    jp hl                                         ; $56bc: $e9


    ld e, d                                       ; $56bd: $5a
    call Call_000_297e                            ; $56be: $cd $7e $29
    or e                                          ; $56c1: $b3
    jr c, jr_03e_56f2                             ; $56c2: $38 $2e

    ld [hl], d                                    ; $56c4: $72
    sub l                                         ; $56c5: $95
    or a                                          ; $56c6: $b7
    cp [hl]                                       ; $56c7: $be
    adc $37                                       ; $56c8: $ce $37
    and c                                         ; $56ca: $a1
    adc c                                         ; $56cb: $89
    cp c                                          ; $56cc: $b9
    rst $18                                       ; $56cd: $df
    ld a, c                                       ; $56ce: $79
    ld h, d                                       ; $56cf: $62
    xor l                                         ; $56d0: $ad
    xor [hl]                                      ; $56d1: $ae
    ld l, [hl]                                    ; $56d2: $6e
    add sp, $53                                   ; $56d3: $e8 $53
    ld l, [hl]                                    ; $56d5: $6e
    nop                                           ; $56d6: $00
    cp l                                          ; $56d7: $bd
    ld d, [hl]                                    ; $56d8: $56
    ld a, [hl]                                    ; $56d9: $7e
    and $eb                                       ; $56da: $e6 $eb
    rst $18                                       ; $56dc: $df
    rlca                                          ; $56dd: $07
    ld d, e                                       ; $56de: $53
    ld a, [hl]                                    ; $56df: $7e
    ld [hl], l                                    ; $56e0: $75
    db $d3                                        ; $56e1: $d3
    ld a, [hl-]                                   ; $56e2: $3a
    pop hl                                        ; $56e3: $e1
    dec bc                                        ; $56e4: $0b
    ret z                                         ; $56e5: $c8

    jr jr_03e_5711                                ; $56e6: $18 $29

    scf                                           ; $56e8: $37
    nop                                           ; $56e9: $00
    or $af                                        ; $56ea: $f6 $af
    inc sp                                        ; $56ec: $33
    xor [hl]                                      ; $56ed: $ae
    ld c, $4b                                     ; $56ee: $0e $4b
    di                                            ; $56f0: $f3
    cp c                                          ; $56f1: $b9

jr_03e_56f2:
    add sp, $66                                   ; $56f2: $e8 $66
    ld e, [hl]                                    ; $56f4: $5e
    ld h, e                                       ; $56f5: $63
    add e                                         ; $56f6: $83
    ld [de], a                                    ; $56f7: $12
    ld a, $fb                                     ; $56f8: $3e $fb
    rla                                           ; $56fa: $17
    or c                                          ; $56fb: $b1
    sbc $bb                                       ; $56fc: $de $bb
    add d                                         ; $56fe: $82
    sub c                                         ; $56ff: $91

Call_03e_5700:
    di                                            ; $5700: $f3
    ld c, l                                       ; $5701: $4d
    ld l, b                                       ; $5702: $68
    ld [c], a                                     ; $5703: $e2
    rst $10                                       ; $5704: $d7
    call nz, $fdc8                                ; $5705: $c4 $c8 $fd
    adc $13                                       ; $5708: $ce $13
    ld l, e                                       ; $570a: $6b
    ld [hl], l                                    ; $570b: $75
    ld [hl], l                                    ; $570c: $75
    ld b, e                                       ; $570d: $43
    sbc a                                         ; $570e: $9f
    ld [hl], d                                    ; $570f: $72
    inc bc                                        ; $5710: $03

jr_03e_5711:
    or $69                                        ; $5711: $f6 $69
    sbc d                                         ; $5713: $9a
    ret                                           ; $5714: $c9


    ld a, c                                       ; $5715: $79

Call_03e_5716:
    adc $50                                       ; $5716: $ce $50
    ld a, h                                       ; $5718: $7c
    sbc $00                                       ; $5719: $de $00
    db $dd                                        ; $571b: $dd
    db $ec                                        ; $571c: $ec
    ld e, a                                       ; $571d: $5f
    call nz, Call_03e_63da                        ; $571e: $c4 $da $63
    db $dd                                        ; $5721: $dd
    cpl                                           ; $5722: $2f
    ld [hl], c                                    ; $5723: $71
    ld d, l                                       ; $5724: $55
    rla                                           ; $5725: $17
    db $fc                                        ; $5726: $fc
    add l                                         ; $5727: $85
    xor a                                         ; $5728: $af
    rst $28                                       ; $5729: $ef
    or e                                          ; $572a: $b3
    daa                                           ; $572b: $27
    nop                                           ; $572c: $00
    ld d, a                                       ; $572d: $57
    ld h, h                                       ; $572e: $64
    pop af                                        ; $572f: $f1
    xor h                                         ; $5730: $ac
    ld d, e                                       ; $5731: $53
    ld [c], a                                     ; $5732: $e2
    xor b                                         ; $5733: $a8
    or c                                          ; $5734: $b1
    ld l, e                                       ; $5735: $6b
    call nz, $acb1                                ; $5736: $c4 $b1 $ac
    sub e                                         ; $5739: $93
    ld l, d                                       ; $573a: $6a
    ld [hl], c                                    ; $573b: $71
    add h                                         ; $573c: $84
    adc a                                         ; $573d: $8f
    ld a, [de]                                    ; $573e: $1a
    ld d, d                                       ; $573f: $52
    ld e, $7d                                     ; $5740: $1e $7d
    adc $24                                       ; $5742: $ce $24
    ld b, h                                       ; $5744: $44
    ld e, c                                       ; $5745: $59
    ld sp, hl                                     ; $5746: $f9
    dec b                                         ; $5747: $05
    inc [hl]                                      ; $5748: $34
    ld a, d                                       ; $5749: $7a
    ld sp, hl                                     ; $574a: $f9
    sbc l                                         ; $574b: $9d
    db $db                                        ; $574c: $db
    ld c, d                                       ; $574d: $4a
    ld l, d                                       ; $574e: $6a
    ld d, [hl]                                    ; $574f: $56
    ld a, a                                       ; $5750: $7f
    cp c                                          ; $5751: $b9
    ld [hl], a                                    ; $5752: $77
    push af                                       ; $5753: $f5
    adc h                                         ; $5754: $8c
    jr nc, jr_03e_57be                            ; $5755: $30 $67

    ld [hl], c                                    ; $5757: $71
    ld e, h                                       ; $5758: $5c
    jr nz, jr_03e_57d9                            ; $5759: $20 $7e

    ret z                                         ; $575b: $c8

    dec b                                         ; $575c: $05
    ld a, a                                       ; $575d: $7f
    call nc, Call_000_3ef8                        ; $575e: $d4 $f8 $3e
    rst $30                                       ; $5761: $f7
    dec [hl]                                      ; $5762: $35
    pop af                                        ; $5763: $f1
    ei                                            ; $5764: $fb
    ccf                                           ; $5765: $3f
    ld a, [$efdc]                                 ; $5766: $fa $dc $ef
    ld [de], a                                    ; $5769: $12
    rst $10                                       ; $576a: $d7
    ld b, h                                       ; $576b: $44
    ld e, b                                       ; $576c: $58
    jp z, $97c2                                   ; $576d: $ca $c2 $97

    sbc a                                         ; $5770: $9f
    push bc                                       ; $5771: $c5
    ld [hl], c                                    ; $5772: $71
    dec h                                         ; $5773: $25
    rst $30                                       ; $5774: $f7
    ld d, [hl]                                    ; $5775: $56
    rst $20                                       ; $5776: $e7
    ld a, c                                       ; $5777: $79
    inc bc                                        ; $5778: $03
    db $dd                                        ; $5779: $dd
    ld a, [$42e6]                                 ; $577a: $fa $e6 $42
    ld c, c                                       ; $577d: $49
    ld [hl], h                                    ; $577e: $74
    ld l, b                                       ; $577f: $68
    ld a, [de]                                    ; $5780: $1a
    ld [hl], l                                    ; $5781: $75
    ld [$5986], a                                 ; $5782: $ea $86 $59
    ld [hl], a                                    ; $5785: $77
    add h                                         ; $5786: $84
    dec a                                         ; $5787: $3d
    nop                                           ; $5788: $00
    rst $20                                       ; $5789: $e7
    ld [hl], $21                                  ; $578a: $36 $21
    or $27                                        ; $578c: $f6 $27
    ld a, h                                       ; $578e: $7c
    inc l                                         ; $578f: $2c
    inc sp                                        ; $5790: $33
    call nz, Call_03e_4ef8                        ; $5791: $c4 $f8 $4e
    ld [de], a                                    ; $5794: $12
    cp [hl]                                       ; $5795: $be
    sbc d                                         ; $5796: $9a
    dec bc                                        ; $5797: $0b
    cp $f4                                        ; $5798: $fe $f4
    ld c, e                                       ; $579a: $4b
    push hl                                       ; $579b: $e5
    ld a, l                                       ; $579c: $7d
    ld l, $a4                                     ; $579d: $2e $a4
    db $e4                                        ; $579f: $e4
    ld c, d                                       ; $57a0: $4a
    ld [$4a32], a                                 ; $57a1: $ea $32 $4a
    ld [$310c], a                                 ; $57a4: $ea $0c $31
    cp [hl]                                       ; $57a7: $be
    sub e                                         ; $57a8: $93
    call nc, $2119                                ; $57a9: $d4 $19 $21
    ld [hl], c                                    ; $57ac: $71
    ld d, $c7                                     ; $57ad: $16 $c7
    ld e, l                                       ; $57af: $5d
    sub c                                         ; $57b0: $91
    push bc                                       ; $57b1: $c5
    or e                                          ; $57b2: $b3
    ld c, [hl]                                    ; $57b3: $4e
    adc c                                         ; $57b4: $89
    xor e                                         ; $57b5: $ab
    cp c                                          ; $57b6: $b9
    ld a, [$4be3]                                 ; $57b7: $fa $e3 $4b
    rst $10                                       ; $57ba: $d7
    cp l                                          ; $57bb: $bd
    adc e                                         ; $57bc: $8b
    ld [hl], d                                    ; $57bd: $72

jr_03e_57be:
    cp [hl]                                       ; $57be: $be
    add hl, de                                    ; $57bf: $19
    ld [c], a                                     ; $57c0: $e2
    jp z, $a8eb                                   ; $57c1: $ca $eb $a8

    ld d, c                                       ; $57c4: $51
    ld e, b                                       ; $57c5: $58
    jp z, Jump_000_0deb                           ; $57c6: $ca $eb $0d

    nop                                           ; $57c9: $00
    db $dd                                        ; $57ca: $dd
    ld a, [$cea6]                                 ; $57cb: $fa $a6 $ce
    inc h                                         ; $57ce: $24
    ld b, h                                       ; $57cf: $44
    jp hl                                         ; $57d0: $e9


    jp c, $a62f                                   ; $57d1: $da $2f $a6

    ld c, a                                       ; $57d4: $4f
    sbc l                                         ; $57d5: $9d
    or [hl]                                       ; $57d6: $b6
    ld l, c                                       ; $57d7: $69
    add e                                         ; $57d8: $83

jr_03e_57d9:
    inc e                                         ; $57d9: $1c
    ld [hl], l                                    ; $57da: $75
    cp [hl]                                       ; $57db: $be
    sbc c                                         ; $57dc: $99
    ld b, [hl]                                    ; $57dd: $46
    db $f4                                        ; $57de: $f4
    add hl, sp                                    ; $57df: $39
    ld [hl], l                                    ; $57e0: $75
    jp $3bac                                      ; $57e1: $c3 $ac $3b


    jp nz, $001e                                  ; $57e4: $c2 $1e $00

    or $2f                                        ; $57e7: $f6 $2f
    ld h, d                                       ; $57e9: $62
    add l                                         ; $57ea: $85
    cpl                                           ; $57eb: $2f
    ret z                                         ; $57ec: $c8

    and l                                         ; $57ed: $a5
    adc l                                         ; $57ee: $8d
    rst $08                                       ; $57ef: $cf
    ld e, c                                       ; $57f0: $59
    inc e                                         ; $57f1: $1c
    ld [hl], a                                    ; $57f2: $77
    ld b, l                                       ; $57f3: $45
    ld d, $cf                                     ; $57f4: $16 $cf
    ld a, [hl-]                                   ; $57f6: $3a
    dec h                                         ; $57f7: $25
    ld l, $b2                                     ; $57f8: $2e $b2
    and $7e                                       ; $57fa: $e6 $7e
    rst $20                                       ; $57fc: $e7
    cp b                                          ; $57fd: $b8
    cp d                                          ; $57fe: $ba
    ld d, e                                       ; $57ff: $53
    add sp, $53                                   ; $5800: $e8 $53
    ld a, b                                       ; $5802: $78
    xor a                                         ; $5803: $af
    ld c, a                                       ; $5804: $4f
    inc hl                                        ; $5805: $23
    ld b, [hl]                                    ; $5806: $46
    ld a, c                                       ; $5807: $79
    sbc l                                         ; $5808: $9d
    ld [hl], $e8                                  ; $5809: $36 $e8
    rla                                           ; $580b: $17
    and [hl]                                      ; $580c: $a6
    db $ec                                        ; $580d: $ec
    dec l                                         ; $580e: $2d
    adc $06                                       ; $580f: $ce $06
    ld a, $6a                                     ; $5811: $3e $6a
    ld a, h                                       ; $5813: $7c
    jp hl                                         ; $5814: $e9


    jp nc, $f4fd                                  ; $5815: $d2 $fd $f4

    ld c, e                                       ; $5818: $4b
    dec h                                         ; $5819: $25
    pop hl                                        ; $581a: $e1
    db $eb                                        ; $581b: $eb
    dec d                                         ; $581c: $15
    ld c, h                                       ; $581d: $4c
    ld sp, hl                                     ; $581e: $f9
    ld d, l                                       ; $581f: $55
    cp [hl]                                       ; $5820: $be
    ld c, [hl]                                    ; $5821: $4e
    db $dd                                        ; $5822: $dd
    rst $08                                       ; $5823: $cf
    ld d, e                                       ; $5824: $53
    call $bea3                                    ; $5825: $cd $a3 $be
    call z, $c2e1                                 ; $5828: $cc $e1 $c2
    inc [hl]                                      ; $582b: $34
    ld a, c                                       ; $582c: $79
    inc bc                                        ; $582d: $03
    ld a, l                                       ; $582e: $7d
    jp c, Jump_03e_7f7a                           ; $582f: $da $7a $7f

    ld hl, sp-$0d                                 ; $5832: $f8 $f3
    ld e, h                                       ; $5834: $5c
    jp $d34a                                      ; $5835: $c3 $4a $d3


    sub $69                                       ; $5838: $d6 $69
    and l                                         ; $583a: $a5
    ld sp, hl                                     ; $583b: $f9
    rst $30                                       ; $583c: $f7
    rst $30                                       ; $583d: $f7
    ld a, l                                       ; $583e: $7d
    ld [hl], a                                    ; $583f: $77
    dec bc                                        ; $5840: $0b
    cp $2a                                        ; $5841: $fe $2a
    adc [hl]                                      ; $5843: $8e
    dec h                                         ; $5844: $25
    ld h, [hl]                                    ; $5845: $66
    adc a                                         ; $5846: $8f
    ld e, l                                       ; $5847: $5d
    cp l                                          ; $5848: $bd
    ld d, d                                       ; $5849: $52
    ld e, b                                       ; $584a: $58
    ld sp, hl                                     ; $584b: $f9
    add hl, sp                                    ; $584c: $39
    db $fc                                        ; $584d: $fc
    ld h, c                                       ; $584e: $61
    add $bf                                       ; $584f: $c6 $bf
    ld bc, $2901                                  ; $5851: $01 $01 $29
    db $d3                                        ; $5854: $d3
    or [hl]                                       ; $5855: $b6
    scf                                           ; $5856: $37
    xor a                                         ; $5857: $af
    ld a, c                                       ; $5858: $79
    inc bc                                        ; $5859: $03
    halt                                          ; $585a: $76
    ld l, b                                       ; $585b: $68
    inc e                                         ; $585c: $1c
    ld sp, $efca                                  ; $585d: $31 $ca $ef
    ld h, a                                       ; $5860: $67
    rst $38                                       ; $5861: $ff
    sub b                                         ; $5862: $90
    inc [hl]                                      ; $5863: $34
    ccf                                           ; $5864: $3f
    ld [c], a                                     ; $5865: $e2
    jp z, Jump_000_188f                           ; $5866: $ca $8f $18

    push hl                                       ; $5869: $e5
    db $fd                                        ; $586a: $fd
    rst $08                                       ; $586b: $cf
    ld [hl], e                                    ; $586c: $73
    rst $20                                       ; $586d: $e7
    ld c, c                                       ; $586e: $49
    ld b, e                                       ; $586f: $43
    jr z, jr_03e_58d5                             ; $5870: $28 $63

    call nc, $001b                                ; $5872: $d4 $1b $00
    cp l                                          ; $5875: $bd
    or e                                          ; $5876: $b3
    ld c, $e5                                     ; $5877: $0e $e5
    rst $10                                       ; $5879: $d7
    rst $20                                       ; $587a: $e7
    inc hl                                        ; $587b: $23
    and l                                         ; $587c: $a5
    ld a, l                                       ; $587d: $7d
    sbc c                                         ; $587e: $99
    sbc l                                         ; $587f: $9d
    sbc d                                         ; $5880: $9a
    inc l                                         ; $5881: $2c
    cpl                                           ; $5882: $2f
    inc hl                                        ; $5883: $23
    adc [hl]                                      ; $5884: $8e
    ld h, l                                       ; $5885: $65
    cp l                                          ; $5886: $bd
    cp a                                          ; $5887: $bf
    inc d                                         ; $5888: $14
    or $b3                                        ; $5889: $f6 $b3
    push bc                                       ; $588b: $c5
    sbc l                                         ; $588c: $9d
    db $d3                                        ; $588d: $d3
    ld e, $4a                                     ; $588e: $1e $4a
    cp h                                          ; $5890: $bc
    ld bc, $ae81                                  ; $5891: $01 $81 $ae
    jp $997d                                      ; $5894: $c3 $7d $99


    dec e                                         ; $5897: $1d
    xor h                                         ; $5898: $ac
    ld d, b                                       ; $5899: $50
    xor b                                         ; $589a: $a8
    add hl, sp                                    ; $589b: $39
    rst $08                                       ; $589c: $cf
    reti                                          ; $589d: $d9


    daa                                           ; $589e: $27
    inc b                                         ; $589f: $04
    di                                            ; $58a0: $f3
    dec h                                         ; $58a1: $25
    ld [$000d], a                                 ; $58a2: $ea $0d $00
    ld h, a                                       ; $58a5: $67
    dec sp                                        ; $58a6: $3b
    dec [hl]                                      ; $58a7: $35
    cp a                                          ; $58a8: $bf
    rst $10                                       ; $58a9: $d7
    ld b, [hl]                                    ; $58aa: $46
    adc h                                         ; $58ab: $8c
    add hl, sp                                    ; $58ac: $39
    ld [c], a                                     ; $58ad: $e2
    ld e, b                                       ; $58ae: $58
    ld h, [hl]                                    ; $58af: $66
    rlca                                          ; $58b0: $07
    dec hl                                        ; $58b1: $2b
    inc d                                         ; $58b2: $14
    ld l, d                                       ; $58b3: $6a
    adc $73                                       ; $58b4: $ce $73
    or $09                                        ; $58b6: $f6 $09
    pop bc                                        ; $58b8: $c1
    ld a, h                                       ; $58b9: $7c
    adc c                                         ; $58ba: $89
    ld a, d                                       ; $58bb: $7a
    inc bc                                        ; $58bc: $03
    cp l                                          ; $58bd: $bd
    push bc                                       ; $58be: $c5
    push af                                       ; $58bf: $f5
    rst $38                                       ; $58c0: $ff
    or c                                          ; $58c1: $b1
    xor h                                         ; $58c2: $ac
    inc a                                         ; $58c3: $3c
    sub h                                         ; $58c4: $94
    inc hl                                        ; $58c5: $23
    adc [hl]                                      ; $58c6: $8e
    ld h, l                                       ; $58c7: $65
    rst $20                                       ; $58c8: $e7
    ld d, b                                       ; $58c9: $50
    ld e, c                                       ; $58ca: $59
    ld [hl], a                                    ; $58cb: $77
    ld e, [hl]                                    ; $58cc: $5e
    call z, Call_03e_4a7b                         ; $58cd: $cc $7b $4a
    adc $73                                       ; $58d0: $ce $73
    or $09                                        ; $58d2: $f6 $09
    pop bc                                        ; $58d4: $c1

jr_03e_58d5:
    ld a, h                                       ; $58d5: $7c

jr_03e_58d6:
    adc c                                         ; $58d6: $89
    ld a, d                                       ; $58d7: $7a
    inc bc                                        ; $58d8: $03
    cp l                                          ; $58d9: $bd
    and d                                         ; $58da: $a2
    ld a, h                                       ; $58db: $7c
    and l                                         ; $58dc: $a5
    ld d, c                                       ; $58dd: $51
    ld a, a                                       ; $58de: $7f
    push hl                                       ; $58df: $e5
    ld [hl], l                                    ; $58e0: $75
    push af                                       ; $58e1: $f5
    rst $30                                       ; $58e2: $f7
    xor a                                         ; $58e3: $af
    ld d, e                                       ; $58e4: $53
    db $e4                                        ; $58e5: $e4
    ld [hl], l                                    ; $58e6: $75
    sbc [hl]                                      ; $58e7: $9e
    or e                                          ; $58e8: $b3
    ld c, a                                       ; $58e9: $4f
    ld [$4be6], sp                                ; $58ea: $08 $e6 $4b
    call nc, $001b                                ; $58ed: $d4 $1b $00
    ld bc, $bfaf                                  ; $58f0: $01 $af $bf
    ld a, [c]                                     ; $58f3: $f2
    ld d, e                                       ; $58f4: $53
    ld d, $1a                                     ; $58f5: $16 $1a
    db $d3                                        ; $58f7: $d3
    ld l, h                                       ; $58f8: $6c
    ld [hl], c                                    ; $58f9: $71
    sbc [hl]                                      ; $58fa: $9e
    dec hl                                        ; $58fb: $2b
    xor a                                         ; $58fc: $af
    db $eb                                        ; $58fd: $eb
    db $fd                                        ; $58fe: $fd
    ld a, [$037a]                                 ; $58ff: $fa $7a $03
    halt                                          ; $5902: $76
    ld l, b                                       ; $5903: $68
    inc e                                         ; $5904: $1c
    ld sp, $efca                                  ; $5905: $31 $ca $ef
    inc a                                         ; $5908: $3c
    or c                                          ; $5909: $b1
    ld d, [hl]                                    ; $590a: $56
    ld d, a                                       ; $590b: $57
    scf                                           ; $590c: $37
    db $f4                                        ; $590d: $f4
    add hl, hl                                    ; $590e: $29
    nop                                           ; $590f: $00
    ld h, a                                       ; $5910: $67
    dec sp                                        ; $5911: $3b
    dec [hl]                                      ; $5912: $35
    cpl                                           ; $5913: $2f
    dec hl                                        ; $5914: $2b
    ccf                                           ; $5915: $3f
    ld d, e                                       ; $5916: $53
    ld e, [hl]                                    ; $5917: $5e
    add hl, sp                                    ; $5918: $39
    rst $08                                       ; $5919: $cf
    dec b                                         ; $591a: $05
    and h                                         ; $591b: $a4
    ld l, c                                       ; $591c: $69
    adc c                                         ; $591d: $89
    call nc, $001b                                ; $591e: $d4 $1b $00
    halt                                          ; $5921: $76
    ld l, b                                       ; $5922: $68
    ld [de], a                                    ; $5923: $12
    and e                                         ; $5924: $a3
    cp h                                          ; $5925: $bc
    xor h                                         ; $5926: $ac
    ld hl, $f424                                  ; $5927: $21 $24 $f4
    adc l                                         ; $592a: $8d
    jr jr_03e_58d6                                ; $592b: $18 $a9

    dec bc                                        ; $592d: $0b
    ld e, a                                       ; $592e: $5f
    ld a, [hl]                                    ; $592f: $7e
    add c                                         ; $5930: $81
    ld hl, sp+$21                                 ; $5931: $f8 $21
    ld l, a                                       ; $5933: $6f
    nop                                           ; $5934: $00
    inc bc                                        ; $5935: $03
    cp l                                          ; $5936: $bd
    ccf                                           ; $5937: $3f
    adc h                                         ; $5938: $8c
    ld c, [hl]                                    ; $5939: $4e
    ld e, [hl]                                    ; $593a: $5e
    or $65                                        ; $593b: $f6 $65
    ld h, $91                                     ; $593d: $26 $91
    db $fd                                        ; $593f: $fd
    ld [hl], d                                    ; $5940: $72
    pop hl                                        ; $5941: $e1
    ld bc, $3a12                                  ; $5942: $01 $12 $3a
    ld sp, hl                                     ; $5945: $f9
    dec de                                        ; $5946: $1b
    nop                                           ; $5947: $00
    ld h, a                                       ; $5948: $67
    dec sp                                        ; $5949: $3b
    dec [hl]                                      ; $594a: $35
    cp a                                          ; $594b: $bf
    inc de                                        ; $594c: $13
    rla                                           ; $594d: $17
    sub [hl]                                      ; $594e: $96
    rst $00                                       ; $594f: $c7
    ld hl, sp-$46                                 ; $5950: $f8 $ba
    ldh a, [$e5]                                  ; $5952: $f0 $e5
    ld d, a                                       ; $5954: $57
    ld a, [hl]                                    ; $5955: $7e
    cp l                                          ; $5956: $bd
    sra e                                         ; $5957: $cb $2b

jr_03e_5959:
    rst $20                                       ; $5959: $e7
    add hl, sp                                    ; $595a: $39
    ld a, e                                       ; $595b: $7b
    ld c, d                                       ; $595c: $4a
    daa                                           ; $595d: $27
    ld c, e                                       ; $595e: $4b
    ld b, d                                       ; $595f: $42
    ld [hl], $0f                                  ; $5960: $36 $0f
    nop                                           ; $5962: $00
    ld h, a                                       ; $5963: $67
    dec sp                                        ; $5964: $3b
    dec [hl]                                      ; $5965: $35
    cp a                                          ; $5966: $bf
    inc de                                        ; $5967: $13
    rla                                           ; $5968: $17
    sub [hl]                                      ; $5969: $96
    rst $00                                       ; $596a: $c7
    ld hl, sp-$46                                 ; $596b: $f8 $ba
    ldh a, [$e5]                                  ; $596d: $f0 $e5
    ld d, a                                       ; $596f: $57

jr_03e_5970:
    ld a, [hl]                                    ; $5970: $7e
    cp l                                          ; $5971: $bd
    sra e                                         ; $5972: $cb $2b
    rst $20                                       ; $5974: $e7
    add hl, sp                                    ; $5975: $39
    ld a, e                                       ; $5976: $7b
    ld c, d                                       ; $5977: $4a
    daa                                           ; $5978: $27
    ld c, e                                       ; $5979: $4b
    ld b, d                                       ; $597a: $42
    ld [hl], $0f                                  ; $597b: $36 $0f

Jump_03e_597d:
    nop                                           ; $597d: $00
    inc bc                                        ; $597e: $03
    inc bc                                        ; $597f: $03
    halt                                          ; $5980: $76
    ld l, b                                       ; $5981: $68
    inc e                                         ; $5982: $1c
    ld sp, $afca                                  ; $5983: $31 $ca $af
    db $fc                                        ; $5986: $fc
    ld a, d                                       ; $5987: $7a
    sub a                                         ; $5988: $97
    ld d, a                                       ; $5989: $57
    adc $73                                       ; $598a: $ce $73
    rst $20                                       ; $598c: $e7
    or b                                          ; $598d: $b0
    sbc d                                         ; $598e: $9a
    xor b                                         ; $598f: $a8
    cp a                                          ; $5990: $bf
    sbc $89                                       ; $5991: $de $89
    ld d, c                                       ; $5993: $51
    ld a, [hl]                                    ; $5994: $7e
    push hl                                       ; $5995: $e5
    ld [hl], l                                    ; $5996: $75
    cp l                                          ; $5997: $bd
    inc h                                         ; $5998: $24
    ld d, d                                       ; $5999: $52
    ld [hl], a                                    ; $599a: $77
    or c                                          ; $599b: $b1
    ld a, [de]                                    ; $599c: $1a
    daa                                           ; $599d: $27
    xor a                                         ; $599e: $af
    scf                                           ; $599f: $37
    nop                                           ; $59a0: $00
    ld h, a                                       ; $59a1: $67
    dec sp                                        ; $59a2: $3b
    dec [hl]                                      ; $59a3: $35
    cp a                                          ; $59a4: $bf
    ld a, [c]                                     ; $59a5: $f2
    xor e                                         ; $59a6: $ab
    ld c, [hl]                                    ; $59a7: $4e
    xor c                                         ; $59a8: $a9
    ld a, a                                       ; $59a9: $7f
    sbc [hl]                                      ; $59aa: $9e
    or e                                          ; $59ab: $b3
    cp b                                          ; $59ac: $b8
    ld d, $5f                                     ; $59ad: $16 $5f
    ld [hl+], a                                   ; $59af: $22
    ld d, a                                       ; $59b0: $57
    ld a, [hl]                                    ; $59b1: $7e
    ld a, l                                       ; $59b2: $7d
    cp [hl]                                       ; $59b3: $be
    ld hl, sp+$66                                 ; $59b4: $f8 $66
    sbc d                                         ; $59b6: $9a
    dec l                                         ; $59b7: $2d
    sbc $00                                       ; $59b8: $de $00
    inc bc                                        ; $59ba: $03
    sub a                                         ; $59bb: $97
    jr c, jr_03e_5959                             ; $59bc: $38 $9b

    ld hl, sp-$7b                                 ; $59be: $f8 $85
    dec hl                                        ; $59c0: $2b
    cp a                                          ; $59c1: $bf
    ld c, e                                       ; $59c2: $4b
    ld l, c                                       ; $59c3: $69
    ld d, d                                       ; $59c4: $52
    db $fc                                        ; $59c5: $fc
    ei                                            ; $59c6: $fb
    sub h                                         ; $59c7: $94
    sbc a                                         ; $59c8: $9f
    rst $20                                       ; $59c9: $e7
    ld a, [$d2b2]                                 ; $59ca: $fa $b2 $d2
    ld c, d                                       ; $59cd: $4a
    pop hl                                        ; $59ce: $e1
    ld a, [hl]                                    ; $59cf: $7e
    rst $20                                       ; $59d0: $e7
    ret z                                         ; $59d1: $c8

    sbc e                                         ; $59d2: $9b
    cp h                                          ; $59d3: $bc
    ld bc, $0303                                  ; $59d4: $01 $03 $03

Call_03e_59d7:
    ld d, a                                       ; $59d7: $57
    jr c, jr_03e_5970                             ; $59d8: $38 $96

    ld a, [bc]                                    ; $59da: $0a
    rst $30                                       ; $59db: $f7
    dec hl                                        ; $59dc: $2b
    cp a                                          ; $59dd: $bf
    sbc $e5                                       ; $59de: $de $e5
    sub l                                         ; $59e0: $95
    di                                            ; $59e1: $f3
    sbc h                                         ; $59e2: $9c
    ld a, l                                       ; $59e3: $7d
    db $d3                                        ; $59e4: $d3
    sbc b                                         ; $59e5: $98
    jp nc, $9e7e                                  ; $59e6: $d2 $7e $9e

    dec hl                                        ; $59e9: $2b
    cp a                                          ; $59ea: $bf
    ld a, $0f                                     ; $59eb: $3e $0f
    or l                                          ; $59ed: $b5
    cp a                                          ; $59ee: $bf
    ld bc, $6876                                  ; $59ef: $01 $76 $68
    ld [de], a                                    ; $59f2: $12
    and e                                         ; $59f3: $a3
    cp h                                          ; $59f4: $bc
    adc h                                         ; $59f5: $8c
    ld h, l                                       ; $59f6: $65
    ld b, [hl]                                    ; $59f7: $46
    or d                                          ; $59f8: $b2
    adc $79                                       ; $59f9: $ce $79
    xor [hl]                                      ; $59fb: $ae
    ld [hl], a                                    ; $59fc: $77
    inc de                                        ; $59fd: $13
    jp $001b                                      ; $59fe: $c3 $1b $00


    halt                                          ; $5a01: $76
    ld l, b                                       ; $5a02: $68
    ld [de], a                                    ; $5a03: $12
    and e                                         ; $5a04: $a3
    cp h                                          ; $5a05: $bc
    adc h                                         ; $5a06: $8c
    ld h, l                                       ; $5a07: $65
    ld b, [hl]                                    ; $5a08: $46
    or d                                          ; $5a09: $b2
    adc $79                                       ; $5a0a: $ce $79
    xor [hl]                                      ; $5a0c: $ae
    ld [hl], a                                    ; $5a0d: $77
    inc de                                        ; $5a0e: $13
    jp $001b                                      ; $5a0f: $c3 $1b $00


    inc bc                                        ; $5a12: $03
    inc bc                                        ; $5a13: $03
    inc bc                                        ; $5a14: $03
    ld d, a                                       ; $5a15: $57
    jr c, @-$68                                   ; $5a16: $38 $96

    ld a, [bc]                                    ; $5a18: $0a
    rst $30                                       ; $5a19: $f7
    dec hl                                        ; $5a1a: $2b
    cp a                                          ; $5a1b: $bf
    sbc $e5                                       ; $5a1c: $de $e5
    sub l                                         ; $5a1e: $95
    di                                            ; $5a1f: $f3
    sbc h                                         ; $5a20: $9c
    ld a, l                                       ; $5a21: $7d
    db $d3                                        ; $5a22: $d3
    sbc b                                         ; $5a23: $98
    jp nc, $9e7e                                  ; $5a24: $d2 $7e $9e

    dec hl                                        ; $5a27: $2b
    cp a                                          ; $5a28: $bf
    ld a, $0f                                     ; $5a29: $3e $0f
    or l                                          ; $5a2b: $b5
    cp a                                          ; $5a2c: $bf
    ld bc, $0303                                  ; $5a2d: $01 $03 $03
    inc bc                                        ; $5a30: $03
    inc bc                                        ; $5a31: $03
    inc bc                                        ; $5a32: $03
    inc bc                                        ; $5a33: $03
    inc bc                                        ; $5a34: $03
    inc bc                                        ; $5a35: $03
    halt                                          ; $5a36: $76
    ld e, b                                       ; $5a37: $58
    dec l                                         ; $5a38: $2d
    call nz, $a2f8                                ; $5a39: $c4 $f8 $a2
    call c, Call_000_1cef                         ; $5a3c: $dc $ef $1c
    ld a, c                                       ; $5a3f: $79
    sub e                                         ; $5a40: $93
    scf                                           ; $5a41: $37
    nop                                           ; $5a42: $00
    ld d, a                                       ; $5a43: $57
    jr nc, jr_03e_5ab8                            ; $5a44: $30 $72

    ld e, a                                       ; $5a46: $5f
    ld d, $f8                                     ; $5a47: $16 $f8
    push bc                                       ; $5a49: $c5
    ld d, $e7                                     ; $5a4a: $16 $e7
    cp c                                          ; $5a4c: $b9
    sub d                                         ; $5a4d: $92
    cp d                                          ; $5a4e: $ba
    sla h                                         ; $5a4f: $cb $24
    xor e                                         ; $5a51: $ab
    sbc c                                         ; $5a52: $99
    cp d                                          ; $5a53: $ba
    ldh a, [$e5]                                  ; $5a54: $f0 $e5
    rst $00                                       ; $5a56: $c7
    or d                                          ; $5a57: $b2
    ld [hl], e                                    ; $5a58: $73
    inc e                                         ; $5a59: $1c
    ld c, e                                       ; $5a5a: $4b
    xor $d7                                       ; $5a5b: $ee $d7
    add a                                         ; $5a5d: $87
    cp [hl]                                       ; $5a5e: $be
    dec a                                         ; $5a5f: $3d
    and [hl]                                      ; $5a60: $a6
    add hl, bc                                    ; $5a61: $09
    ld [de], a                                    ; $5a62: $12
    nop                                           ; $5a63: $00
    ld d, a                                       ; $5a64: $57
    ld h, h                                       ; $5a65: $64
    xor c                                         ; $5a66: $a9
    ld d, b                                       ; $5a67: $50
    or $3b                                        ; $5a68: $f6 $3b
    ld c, a                                       ; $5a6a: $4f
    xor h                                         ; $5a6b: $ac
    push de                                       ; $5a6c: $d5
    push de                                       ; $5a6d: $d5
    dec c                                         ; $5a6e: $0d
    ld a, l                                       ; $5a6f: $7d
    jp z, Jump_000_000d                           ; $5a70: $ca $0d $00

    inc bc                                        ; $5a73: $03
    inc bc                                        ; $5a74: $03
    inc bc                                        ; $5a75: $03
    inc bc                                        ; $5a76: $03
    inc bc                                        ; $5a77: $03
    inc bc                                        ; $5a78: $03
    inc bc                                        ; $5a79: $03
    inc bc                                        ; $5a7a: $03
    inc bc                                        ; $5a7b: $03
    inc bc                                        ; $5a7c: $03
    ld d, a                                       ; $5a7d: $57
    jr nc, jr_03e_5af2                            ; $5a7e: $30 $72

    ld e, a                                       ; $5a80: $5f
    halt                                          ; $5a81: $76
    or $a3                                        ; $5a82: $f6 $a3
    push bc                                       ; $5a84: $c5
    ld sp, $9e72                                  ; $5a85: $31 $72 $9e
    or e                                          ; $5a88: $b3
    rst $38                                       ; $5a89: $ff
    ld d, d                                       ; $5a8a: $52
    ld [de], a                                    ; $5a8b: $12
    ld h, $89                                     ; $5a8c: $26 $89
    scf                                           ; $5a8e: $37
    nop                                           ; $5a8f: $00
    add c                                         ; $5a90: $81
    ld e, a                                       ; $5a91: $5f
    ld a, [hl+]                                   ; $5a92: $2a
    cp a                                          ; $5a93: $bf
    sbc a                                         ; $5a94: $9f
    dec a                                         ; $5a95: $3d
    and l                                         ; $5a96: $a5
    ld l, [hl]                                    ; $5a97: $6e
    adc c                                         ; $5a98: $89
    sbc h                                         ; $5a99: $9c
    ld h, a                                       ; $5a9a: $67
    reti                                          ; $5a9b: $d9


    ld h, l                                       ; $5a9c: $65
    sub d                                         ; $5a9d: $92
    push hl                                       ; $5a9e: $e5
    ld b, $e7                                     ; $5a9f: $06 $e7
    bit 7, [hl]                                   ; $5aa1: $cb $7e
    push hl                                       ; $5aa3: $e5
    ld h, a                                       ; $5aa4: $67
    cp [hl]                                       ; $5aa5: $be
    di                                            ; $5aa6: $f3
    rlca                                          ; $5aa7: $07
    rst $38                                       ; $5aa8: $ff
    inc a                                         ; $5aa9: $3c
    ld h, a                                       ; $5aaa: $67
    rst $38                                       ; $5aab: $ff
    sub b                                         ; $5aac: $90
    inc [hl]                                      ; $5aad: $34
    ld a, a                                       ; $5aae: $7f
    inc bc                                        ; $5aaf: $03
    rst $20                                       ; $5ab0: $e7
    bit 7, [hl]                                   ; $5ab1: $cb $7e
    rst $20                                       ; $5ab3: $e7
    adc c                                         ; $5ab4: $89
    or l                                          ; $5ab5: $b5
    cp d                                          ; $5ab6: $ba
    cp d                                          ; $5ab7: $ba

jr_03e_5ab8:
    and c                                         ; $5ab8: $a1
    ld c, a                                       ; $5ab9: $4f
    cp c                                          ; $5aba: $b9
    ld bc, $d297                                  ; $5abb: $01 $97 $d2
    or h                                          ; $5abe: $b4
    ld c, $17                                     ; $5abf: $0e $17
    db $dd                                        ; $5ac1: $dd
    ld l, $25                                     ; $5ac2: $2e $25
    db $f4                                        ; $5ac4: $f4
    dec h                                         ; $5ac5: $25
    rst $20                                       ; $5ac6: $e7
    cp c                                          ; $5ac7: $b9
    cp [hl]                                       ; $5ac8: $be
    ld e, a                                       ; $5ac9: $5f
    ld l, c                                       ; $5aca: $69
    cp $fd                                        ; $5acb: $fe $fd
    dec c                                         ; $5acd: $0d
    nop                                           ; $5ace: $00
    halt                                          ; $5acf: $76
    or b                                          ; $5ad0: $b0
    jp nz, $f292                                  ; $5ad1: $c2 $92 $f2

    or e                                          ; $5ad4: $b3
    ld c, a                                       ; $5ad5: $4f
    ld [$4be6], sp                                ; $5ad6: $08 $e6 $4b
    call nc, Call_03e_7d39                        ; $5ad9: $d4 $39 $7d
    db $f4                                        ; $5adc: $f4
    cp c                                          ; $5add: $b9
    ld a, [c]                                     ; $5ade: $f2
    db $eb                                        ; $5adf: $eb
    db $fd                                        ; $5ae0: $fd
    pop hl                                        ; $5ae1: $e1
    xor a                                         ; $5ae2: $af
    ld h, c                                       ; $5ae3: $61
    and l                                         ; $5ae4: $a5
    ld l, c                                       ; $5ae5: $69
    db $eb                                        ; $5ae6: $eb
    inc d                                         ; $5ae7: $14
    sbc $00                                       ; $5ae8: $de $00
    inc bc                                        ; $5aea: $03
    halt                                          ; $5aeb: $76
    ld l, d                                       ; $5aec: $6a
    cp d                                          ; $5aed: $ba
    jp nz, $9c8f                                  ; $5aee: $c2 $8f $9c

    rst $20                                       ; $5af1: $e7

jr_03e_5af2:
    jp z, $ecef                                   ; $5af2: $ca $ef $ec

jr_03e_5af5:
    sub $29                                       ; $5af5: $d6 $29
    dec l                                         ; $5af7: $2d
    inc hl                                        ; $5af8: $23
    call Call_000_00df                            ; $5af9: $cd $df $00
    inc bc                                        ; $5afc: $03
    halt                                          ; $5afd: $76
    ld l, b                                       ; $5afe: $68
    inc e                                         ; $5aff: $1c
    ld sp, $8fca                                  ; $5b00: $31 $ca $8f
    ld h, l                                       ; $5b03: $65

Jump_03e_5b04:
    halt                                          ; $5b04: $76
    ld a, [de]                                    ; $5b05: $1a
    or d                                          ; $5b06: $b2
    ld e, a                                       ; $5b07: $5f
    adc $73                                       ; $5b08: $ce $73
    rla                                           ; $5b0a: $17
    ld d, e                                       ; $5b0b: $53
    jp hl                                         ; $5b0c: $e9


    ld l, a                                       ; $5b0d: $6f
    nop                                           ; $5b0e: $00
    inc bc                                        ; $5b0f: $03
    ld d, a                                       ; $5b10: $57
    jr nc, jr_03e_5b85                            ; $5b11: $30 $72

    cp a                                          ; $5b13: $bf
    ld a, [c]                                     ; $5b14: $f2
    db $eb                                        ; $5b15: $eb
    db $fd                                        ; $5b16: $fd
    sbc l                                         ; $5b17: $9d
    ccf                                           ; $5b18: $3f
    ld hl, sp-$19                                 ; $5b19: $f8 $e7
    add hl, sp                                    ; $5b1b: $39
    ei                                            ; $5b1c: $fb
    add a                                         ; $5b1d: $87
    and h                                         ; $5b1e: $a4
    ld sp, hl                                     ; $5b1f: $f9
    dec de                                        ; $5b20: $1b
    nop                                           ; $5b21: $00
    inc bc                                        ; $5b22: $03
    ld h, a                                       ; $5b23: $67
    dec sp                                        ; $5b24: $3b
    dec [hl]                                      ; $5b25: $35
    cp a                                          ; $5b26: $bf
    inc de                                        ; $5b27: $13
    ld d, $66                                     ; $5b28: $16 $66
    add hl, hl                                    ; $5b2a: $29
    xor c                                         ; $5b2b: $a9
    dec bc                                        ; $5b2c: $0b
    ld e, a                                       ; $5b2d: $5f
    ld a, [hl]                                    ; $5b2e: $7e
    ld a, l                                       ; $5b2f: $7d
    ld d, e                                       ; $5b30: $53
    ld a, [hl-]                                   ; $5b31: $3a
    sub h                                         ; $5b32: $94
    sbc b                                         ; $5b33: $98

Call_03e_5b34:
Jump_03e_5b34:
    scf                                           ; $5b34: $37
    nop                                           ; $5b35: $00
    cp l                                          ; $5b36: $bd
    and d                                         ; $5b37: $a2
    ld a, h                                       ; $5b38: $7c
    ld hl, sp-$05                                 ; $5b39: $f8 $fb
    push af                                       ; $5b3b: $f5
    ld c, l                                       ; $5b3c: $4d
    jp hl                                         ; $5b3d: $e9


    ld d, b                                       ; $5b3e: $50
    ld h, d                                       ; $5b3f: $62
    sbc $00                                       ; $5b40: $de $00
    rla                                           ; $5b42: $17
    dec d                                         ; $5b43: $15
    ld d, [hl]                                    ; $5b44: $56
    ld a, [hl]                                    ; $5b45: $7e
    cp a                                          ; $5b46: $bf
    cp [hl]                                       ; $5b47: $be
    add hl, hl                                    ; $5b48: $29
    dec e                                         ; $5b49: $1d
    ld c, d                                       ; $5b4a: $4a
    call z, $cafd                                 ; $5b4b: $cc $fd $ca
    rst $28                                       ; $5b4e: $ef
    or d                                          ; $5b4f: $b2
    inc d                                         ; $5b50: $14
    pop hl                                        ; $5b51: $e1
    inc a                                         ; $5b52: $3c
    rst $10                                       ; $5b53: $d7
    ld c, e                                       ; $5b54: $4b
    and e                                         ; $5b55: $a3
    inc h                                         ; $5b56: $24
    ld h, [hl]                                    ; $5b57: $66
    ld l, l                                       ; $5b58: $6d
    di                                            ; $5b59: $f3
    scf                                           ; $5b5a: $37
    nop                                           ; $5b5b: $00
    ld d, a                                       ; $5b5c: $57
    jr c, jr_03e_5af5                             ; $5b5d: $38 $96

    ld a, [bc]                                    ; $5b5f: $0a
    rst $30                                       ; $5b60: $f7
    dec sp                                        ; $5b61: $3b
    ld c, a                                       ; $5b62: $4f
    xor h                                         ; $5b63: $ac
    push de                                       ; $5b64: $d5
    push de                                       ; $5b65: $d5
    dec c                                         ; $5b66: $0d
    ld a, l                                       ; $5b67: $7d
    jp z, Jump_000_000d                           ; $5b68: $ca $0d $00

    halt                                          ; $5b6b: $76
    ld l, b                                       ; $5b6c: $68
    inc e                                         ; $5b6d: $1c
    ld sp, $8fca                                  ; $5b6e: $31 $ca $8f
    ld h, l                                       ; $5b71: $65
    sub a                                         ; $5b72: $97
    ld h, e                                       ; $5b73: $63
    inc sp                                        ; $5b74: $33
    add hl, hl                                    ; $5b75: $29
    ret c                                         ; $5b76: $d8

    ld [hl], d                                    ; $5b77: $72
    ld b, c                                       ; $5b78: $41
    ld c, d                                       ; $5b79: $4a
    di                                            ; $5b7a: $f3
    ld a, c                                       ; $5b7b: $79
    inc bc                                        ; $5b7c: $03
    inc bc                                        ; $5b7d: $03
    inc bc                                        ; $5b7e: $03
    inc bc                                        ; $5b7f: $03
    inc bc                                        ; $5b80: $03
    ld d, a                                       ; $5b81: $57
    jr nc, jr_03e_5bf6                            ; $5b82: $30 $72

    ld e, a                                       ; $5b84: $5f

jr_03e_5b85:
    ld d, $f0                                     ; $5b85: $16 $f0
    jp c, $c94a                                   ; $5b87: $da $4a $c9

    dec b                                         ; $5b8a: $05
    ld c, b                                       ; $5b8b: $48
    ld b, $5b                                     ; $5b8c: $06 $5b
    and a                                         ; $5b8e: $a7
    ld sp, hl                                     ; $5b8f: $f9
    cp h                                          ; $5b90: $bc
    ld bc, $50e7                                  ; $5b91: $01 $e7 $50
    inc h                                         ; $5b94: $24
    db $e3                                        ; $5b95: $e3
    rst $28                                       ; $5b96: $ef
    sra [hl]                                      ; $5b97: $cb $2e
    ld a, [$39fe]                                 ; $5b99: $fa $fe $39
    rst $08                                       ; $5b9c: $cf
    or d                                          ; $5b9d: $b2
    ld [hl], e                                    ; $5b9e: $73
    jp c, Jump_03e_4a77                           ; $5b9f: $da $77 $4a

    sbc $00                                       ; $5ba2: $de $00
    halt                                          ; $5ba4: $76
    ld l, b                                       ; $5ba5: $68
    inc e                                         ; $5ba6: $1c
    ld sp, $afca                                  ; $5ba7: $31 $ca $af
    db $fc                                        ; $5baa: $fc
    ld l, $2a                                     ; $5bab: $2e $2a
    ld e, a                                       ; $5bad: $5f
    pop hl                                        ; $5bae: $e1
    ld a, d                                       ; $5baf: $7a
    sub l                                         ; $5bb0: $95
    rst $30                                       ; $5bb1: $f7
    ccf                                           ; $5bb2: $3f
    sub e                                         ; $5bb3: $93
    ld [hl+], a                                   ; $5bb4: $22
    inc [hl]                                      ; $5bb5: $34
    pop af                                        ; $5bb6: $f1
    ld l, a                                       ; $5bb7: $6f
    nop                                           ; $5bb8: $00
    rla                                           ; $5bb9: $17
    add hl, sp                                    ; $5bba: $39
    inc de                                        ; $5bbb: $13
    db $fc                                        ; $5bbc: $fc
    sbc c                                         ; $5bbd: $99
    call nz, $bf28                                ; $5bbe: $c4 $28 $bf
    ld a, [c]                                     ; $5bc1: $f2
    cp d                                          ; $5bc2: $ba
    add b                                         ; $5bc3: $80
    add $fe                                       ; $5bc4: $c6 $fe
    xor a                                         ; $5bc6: $af
    cp e                                          ; $5bc7: $bb
    and d                                         ; $5bc8: $a2
    ld d, l                                       ; $5bc9: $55
    ld e, [hl]                                    ; $5bca: $5e
    rst $20                                       ; $5bcb: $e7
    cp c                                          ; $5bcc: $b9
    ld e, [hl]                                    ; $5bcd: $5e
    db $fd                                        ; $5bce: $fd
    add sp, -$7b                                  ; $5bcf: $e8 $85
    db $fd                                        ; $5bd1: $fd
    ld l, a                                       ; $5bd2: $6f
    nop                                           ; $5bd3: $00
    sub a                                         ; $5bd4: $97
    ld d, d                                       ; $5bd5: $52
    dec e                                         ; $5bd6: $1d
    ld c, e                                       ; $5bd7: $4b
    add l                                         ; $5bd8: $85
    ld h, e                                       ; $5bd9: $63
    sbc c                                         ; $5bda: $99
    dec e                                         ; $5bdb: $1d
    ld [hl], $a8                                  ; $5bdc: $36 $a8
    cp $79                                        ; $5bde: $fe $79
    xor [hl]                                      ; $5be0: $ae
    rrca                                          ; $5be1: $0f
    ei                                            ; $5be2: $fb
    sbc e                                         ; $5be3: $9b
    ld a, [c]                                     ; $5be4: $f2
    or d                                          ; $5be5: $b2
    add b                                         ; $5be6: $80
    inc [hl]                                      ; $5be7: $34
    dec l                                         ; $5be8: $2d
    sub c                                         ; $5be9: $91
    ld a, d                                       ; $5bea: $7a
    inc bc                                        ; $5beb: $03
    sub a                                         ; $5bec: $97
    ld d, d                                       ; $5bed: $52
    dec e                                         ; $5bee: $1d
    ld c, e                                       ; $5bef: $4b
    add l                                         ; $5bf0: $85
    ld h, e                                       ; $5bf1: $63
    sbc c                                         ; $5bf2: $99
    dec e                                         ; $5bf3: $1d
    ld [hl], $a8                                  ; $5bf4: $36 $a8

jr_03e_5bf6:
    cp $79                                        ; $5bf6: $fe $79
    xor [hl]                                      ; $5bf8: $ae
    rrca                                          ; $5bf9: $0f
    ei                                            ; $5bfa: $fb
    sbc e                                         ; $5bfb: $9b
    ld a, [c]                                     ; $5bfc: $f2
    or d                                          ; $5bfd: $b2
    add b                                         ; $5bfe: $80
    inc [hl]                                      ; $5bff: $34
    dec l                                         ; $5c00: $2d
    sub c                                         ; $5c01: $91
    ld a, d                                       ; $5c02: $7a
    inc bc                                        ; $5c03: $03
    halt                                          ; $5c04: $76
    ld l, b                                       ; $5c05: $68
    ld [de], a                                    ; $5c06: $12
    and e                                         ; $5c07: $a3
    cp h                                          ; $5c08: $bc
    xor h                                         ; $5c09: $ac
    db $fc                                        ; $5c0a: $fc
    ld [bc], a                                    ; $5c0b: $02
    ld a, [de]                                    ; $5c0c: $1a
    cp l                                          ; $5c0d: $bd
    db $fc                                        ; $5c0e: $fc
    adc $6d                                       ; $5c0f: $ce $6d
    dec h                                         ; $5c11: $25
    dec [hl]                                      ; $5c12: $35
    xor e                                         ; $5c13: $ab
    cp a                                          ; $5c14: $bf
    call c, Call_03e_5700                         ; $5c15: $dc $00 $57
    jr nc, jr_03e_5c8c                            ; $5c18: $30 $72

    ld e, a                                       ; $5c1a: $5f
    halt                                          ; $5c1b: $76
    sbc [hl]                                      ; $5c1c: $9e
    inc a                                         ; $5c1d: $3c
    xor [hl]                                      ; $5c1e: $ae
    ld [hl], a                                    ; $5c1f: $77
    sub $f4                                       ; $5c20: $d6 $f4
    add hl, hl                                    ; $5c22: $29
    scf                                           ; $5c23: $37
    nop                                           ; $5c24: $00
    halt                                          ; $5c25: $76
    ld l, b                                       ; $5c26: $68
    ld [de], a                                    ; $5c27: $12
    and e                                         ; $5c28: $a3
    cp h                                          ; $5c29: $bc
    adc h                                         ; $5c2a: $8c
    ld h, l                                       ; $5c2b: $65
    ld b, [hl]                                    ; $5c2c: $46
    or d                                          ; $5c2d: $b2
    adc $79                                       ; $5c2e: $ce $79
    adc $fe                                       ; $5c30: $ce $fe
    ld b, l                                       ; $5c32: $45
    xor h                                         ; $5c33: $ac
    scf                                           ; $5c34: $37
    nop                                           ; $5c35: $00
    halt                                          ; $5c36: $76
    ld l, b                                       ; $5c37: $68
    ld [de], a                                    ; $5c38: $12

Call_03e_5c39:
    and e                                         ; $5c39: $a3
    cp h                                          ; $5c3a: $bc
    db $ec                                        ; $5c3b: $ec
    ld h, a                                       ; $5c3c: $67
    rst $38                                       ; $5c3d: $ff
    sub b                                         ; $5c3e: $90
    inc [hl]                                      ; $5c3f: $34
    ccf                                           ; $5c40: $3f
    ld [c], a                                     ; $5c41: $e2
    jp z, Jump_03e_74cf                           ; $5c42: $ca $cf $74

    push de                                       ; $5c45: $d5
    cpl                                           ; $5c46: $2f
    ld a, a                                       ; $5c47: $7f
    inc bc                                        ; $5c48: $03
    cp l                                          ; $5c49: $bd
    ld a, h                                       ; $5c4a: $7c
    xor e                                         ; $5c4b: $ab
    inc [hl]                                      ; $5c4c: $34
    ld a, h                                       ; $5c4d: $7c
    add hl, de                                    ; $5c4e: $19
    set 6, h                                      ; $5c4f: $cb $f4
    ld sp, $ace6                                  ; $5c51: $31 $e6 $ac
    ld d, e                                       ; $5c54: $53
    ld e, $fc                                     ; $5c55: $1e $fc
    di                                            ; $5c57: $f3
    call c, Call_03e_6279                         ; $5c58: $dc $79 $62
    xor l                                         ; $5c5b: $ad
    xor [hl]                                      ; $5c5c: $ae
    ld l, [hl]                                    ; $5c5d: $6e
    add sp, $53                                   ; $5c5e: $e8 $53
    ld l, [hl]                                    ; $5c60: $6e
    nop                                           ; $5c61: $00
    ld h, a                                       ; $5c62: $67
    dec sp                                        ; $5c63: $3b
    dec [hl]                                      ; $5c64: $35
    cp a                                          ; $5c65: $bf
    add sp, $16                                   ; $5c66: $e8 $16
    adc d                                         ; $5c68: $8a
    dec l                                         ; $5c69: $2d
    xor h                                         ; $5c6a: $ac
    ld d, [hl]                                    ; $5c6b: $56
    rst $38                                       ; $5c6c: $ff
    ld c, h                                       ; $5c6d: $4c
    ld a, c                                       ; $5c6e: $79
    push hl                                       ; $5c6f: $e5
    dec c                                         ; $5c70: $0d
    nop                                           ; $5c71: $00
    rst $20                                       ; $5c72: $e7
    or b                                          ; $5c73: $b0
    ld [c], a                                     ; $5c74: $e2
    ld e, b                                       ; $5c75: $58
    ld a, [hl+]                                   ; $5c76: $2a
    inc e                                         ; $5c77: $1c
    sra [hl]                                      ; $5c78: $cb $2e
    ld l, d                                       ; $5c7a: $6a
    dec e                                         ; $5c7b: $1d
    ret                                           ; $5c7c: $c9


    ld a, c                                       ; $5c7d: $79
    xor [hl]                                      ; $5c7e: $ae
    rst $08                                       ; $5c7f: $cf
    rla                                           ; $5c80: $17
    rst $18                                       ; $5c81: $df
    ld c, h                                       ; $5c82: $4c
    ld c, e                                       ; $5c83: $4b
    and h                                         ; $5c84: $a4
    ld c, [hl]                                    ; $5c85: $4e
    or d                                          ; $5c86: $b2
    di                                            ; $5c87: $f3
    ld a, $f7                                     ; $5c88: $3e $f7
    dec hl                                        ; $5c8a: $2b
    cp a                                          ; $5c8b: $bf

jr_03e_5c8c:
    or e                                          ; $5c8c: $b3
    ld e, e                                       ; $5c8d: $5b
    and a                                         ; $5c8e: $a7
    or h                                          ; $5c8f: $b4
    adc h                                         ; $5c90: $8c
    inc [hl]                                      ; $5c91: $34
    ld a, a                                       ; $5c92: $7f
    inc bc                                        ; $5c93: $03
    inc bc                                        ; $5c94: $03

jr_03e_5c95:
    cp l                                          ; $5c95: $bd
    inc de                                        ; $5c96: $13
    ld [c], a                                     ; $5c97: $e2
    jp z, $aaeb                                   ; $5c98: $ca $eb $aa

    ld l, l                                       ; $5c9b: $6d
    and l                                         ; $5c9c: $a5
    halt                                          ; $5c9d: $76
    push hl                                       ; $5c9e: $e5
    ld [hl], l                                    ; $5c9f: $75
    pop hl                                        ; $5ca0: $e1
    sra a                                         ; $5ca1: $cb $2f
    ld c, h                                       ; $5ca3: $4c
    db $d3                                        ; $5ca4: $d3
    ld [de], a                                    ; $5ca5: $12
    xor c                                         ; $5ca6: $a9
    or e                                          ; $5ca7: $b3
    jr c, jr_03e_5cd8                             ; $5ca8: $38 $2e

    ld [hl], d                                    ; $5caa: $72
    cp [hl]                                       ; $5cab: $be
    ld [$f102], a                                 ; $5cac: $ea $02 $f1
    ld b, e                                       ; $5caf: $43
    sbc $00                                       ; $5cb0: $de $00

jr_03e_5cb2:
    halt                                          ; $5cb2: $76
    ld l, d                                       ; $5cb3: $6a
    ld a, $7c                                     ; $5cb4: $3e $7c
    sbc c                                         ; $5cb6: $99
    ld h, a                                       ; $5cb7: $67
    ld e, c                                       ; $5cb8: $59
    ldh [rNR22], a                                ; $5cb9: $e0 $17
    ld e, e                                       ; $5cbb: $5b
    sbc h                                         ; $5cbc: $9c
    rst $20                                       ; $5cbd: $e7
    ld c, d                                       ; $5cbe: $4a
    ld [$932e], a                                 ; $5cbf: $ea $2e $93
    xor h                                         ; $5cc2: $ac
    ld h, [hl]                                    ; $5cc3: $66
    ld [$000d], a                                 ; $5cc4: $ea $0d $00
    halt                                          ; $5cc7: $76
    ld l, b                                       ; $5cc8: $68
    inc e                                         ; $5cc9: $1c
    ld sp, $8fca                                  ; $5cca: $31 $ca $8f
    ld h, l                                       ; $5ccd: $65
    ld bc, $716f                                  ; $5cce: $01 $6f $71
    adc h                                         ; $5cd1: $8c
    call c, $c6c5                                 ; $5cd2: $dc $c5 $c6
    sub l                                         ; $5cd5: $95
    sbc b                                         ; $5cd6: $98
    scf                                           ; $5cd7: $37

jr_03e_5cd8:
    nop                                           ; $5cd8: $00
    cp l                                          ; $5cd9: $bd
    or e                                          ; $5cda: $b3
    ld c, $e5                                     ; $5cdb: $0e $e5
    rla                                           ; $5cdd: $17
    db $dd                                        ; $5cde: $dd
    ld a, [hl+]                                   ; $5cdf: $2a
    cpl                                           ; $5ce0: $2f
    dec l                                         ; $5ce1: $2d
    cp $88                                        ; $5ce2: $fe $88
    cp e                                          ; $5ce4: $bb
    cp b                                          ; $5ce5: $b8
    sub h                                         ; $5ce6: $94
    ld d, [hl]                                    ; $5ce7: $56
    ld a, c                                       ; $5ce8: $79
    db $f4                                        ; $5ce9: $f4
    sub h                                         ; $5cea: $94
    dec de                                        ; $5ceb: $1b
    nop                                           ; $5cec: $00
    ld d, a                                       ; $5ced: $57
    ld h, h                                       ; $5cee: $64
    xor c                                         ; $5cef: $a9
    ld d, b                                       ; $5cf0: $50
    or $3b                                        ; $5cf1: $f6 $3b
    ld c, a                                       ; $5cf3: $4f
    xor h                                         ; $5cf4: $ac
    push de                                       ; $5cf5: $d5
    push de                                       ; $5cf6: $d5
    dec c                                         ; $5cf7: $0d

Jump_03e_5cf8:
    ld a, l                                       ; $5cf8: $7d
    jp z, Jump_000_000d                           ; $5cf9: $ca $0d $00

    ld d, a                                       ; $5cfc: $57
    jr c, jr_03e_5c95                             ; $5cfd: $38 $96

    ld a, [bc]                                    ; $5cff: $0a
    rst $30                                       ; $5d00: $f7
    dec sp                                        ; $5d01: $3b
    ld c, a                                       ; $5d02: $4f
    xor h                                         ; $5d03: $ac
    push de                                       ; $5d04: $d5
    push de                                       ; $5d05: $d5
    dec c                                         ; $5d06: $0d
    ld a, l                                       ; $5d07: $7d
    jp z, Jump_000_000d                           ; $5d08: $ca $0d $00

    ld h, a                                       ; $5d0b: $67
    dec sp                                        ; $5d0c: $3b
    dec [hl]                                      ; $5d0d: $35
    cpl                                           ; $5d0e: $2f
    ei                                            ; $5d0f: $fb
    sbc l                                         ; $5d10: $9d
    db $e3                                        ; $5d11: $e3
    ld [$a14e], a                                 ; $5d12: $ea $4e $a1
    ld c, a                                       ; $5d15: $4f
    pop hl                                        ; $5d16: $e1
    dec c                                         ; $5d17: $0d
    nop                                           ; $5d18: $00
    ld d, a                                       ; $5d19: $57
    jr c, jr_03e_5cb2                             ; $5d1a: $38 $96

    ld a, [bc]                                    ; $5d1c: $0a
    rst $30                                       ; $5d1d: $f7
    ld h, l                                       ; $5d1e: $65
    add c                                         ; $5d1f: $81
    ld e, a                                       ; $5d20: $5f
    ld l, h                                       ; $5d21: $6c
    ld [hl], c                                    ; $5d22: $71
    sbc [hl]                                      ; $5d23: $9e
    dec hl                                        ; $5d24: $2b
    xor c                                         ; $5d25: $a9
    cp e                                          ; $5d26: $bb
    ld c, h                                       ; $5d27: $4c
    or d                                          ; $5d28: $b2
    sbc d                                         ; $5d29: $9a
    xor c                                         ; $5d2a: $a9
    scf                                           ; $5d2b: $37
    nop                                           ; $5d2c: $00
    halt                                          ; $5d2d: $76
    ld l, b                                       ; $5d2e: $68
    ld [de], a                                    ; $5d2f: $12
    and e                                         ; $5d30: $a3
    cp h                                          ; $5d31: $bc
    adc h                                         ; $5d32: $8c
    ld h, l                                       ; $5d33: $65
    ld b, [hl]                                    ; $5d34: $46
    or d                                          ; $5d35: $b2
    adc $79                                       ; $5d36: $ce $79
    xor [hl]                                      ; $5d38: $ae
    ld [hl], a                                    ; $5d39: $77
    inc de                                        ; $5d3a: $13
    jp $001b                                      ; $5d3b: $c3 $1b $00


    cp l                                          ; $5d3e: $bd
    cp a                                          ; $5d3f: $bf
    inc d                                         ; $5d40: $14
    or $b3                                        ; $5d41: $f6 $b3
    push bc                                       ; $5d43: $c5
    sbc l                                         ; $5d44: $9d
    db $d3                                        ; $5d45: $d3
    ld e, $4a                                     ; $5d46: $1e $4a
    inc b                                         ; $5d48: $04
    sub a                                         ; $5d49: $97
    dec [hl]                                      ; $5d4a: $35
    and d                                         ; $5d4b: $a2
    rst $38                                       ; $5d4c: $ff
    ld a, c                                       ; $5d4d: $79
    xor [hl]                                      ; $5d4e: $ae
    rst $30                                       ; $5d4f: $f7
    rla                                           ; $5d50: $17
    ld c, a                                       ; $5d51: $4f
    ld c, c                                       ; $5d52: $49
    dec b                                         ; $5d53: $05
    rst $20                                       ; $5d54: $e7
    ld c, b                                       ; $5d55: $48
    ld b, d                                       ; $5d56: $42
    adc [hl]                                      ; $5d57: $8e
    ld h, d                                       ; $5d58: $62
    di                                            ; $5d59: $f3

Call_03e_5d5a:
    nop                                           ; $5d5a: $00
    sub a                                         ; $5d5b: $97
    dec [hl]                                      ; $5d5c: $35
    and d                                         ; $5d5d: $a2
    rst $38                                       ; $5d5e: $ff
    ld a, c                                       ; $5d5f: $79
    xor $22                                       ; $5d60: $ee $22
    sbc d                                         ; $5d62: $9a
    and b                                         ; $5d63: $a0
    db $eb                                        ; $5d64: $eb
    rst $38                                       ; $5d65: $ff
    ld a, [bc]                                    ; $5d66: $0a
    nop                                           ; $5d67: $00
    sub a                                         ; $5d68: $97
    dec [hl]                                      ; $5d69: $35
    and d                                         ; $5d6a: $a2
    rst $38                                       ; $5d6b: $ff
    ld a, c                                       ; $5d6c: $79
    xor $8a                                       ; $5d6d: $ee $8a
    sub a                                         ; $5d6f: $97
    ld d, $5f                                     ; $5d70: $16 $5f
    rlca                                          ; $5d72: $07
    nop                                           ; $5d73: $00
    rla                                           ; $5d74: $17
    or l                                          ; $5d75: $b5
    adc [hl]                                      ; $5d76: $8e
    ld d, b                                       ; $5d77: $50
    ld l, h                                       ; $5d78: $6c
    ld e, $00                                     ; $5d79: $1e $00

jr_03e_5d7b:
    sub a                                         ; $5d7b: $97
    dec [hl]                                      ; $5d7c: $35
    and d                                         ; $5d7d: $a2
    rst $38                                       ; $5d7e: $ff
    ld a, c                                       ; $5d7f: $79
    xor $b2                                       ; $5d80: $ee $b2
    inc bc                                        ; $5d82: $03
    or b                                          ; $5d83: $b0
    sbc c                                         ; $5d84: $99
    ld d, a                                       ; $5d85: $57
    nop                                           ; $5d86: $00
    sub a                                         ; $5d87: $97
    dec [hl]                                      ; $5d88: $35
    and d                                         ; $5d89: $a2
    rst $38                                       ; $5d8a: $ff
    ld a, c                                       ; $5d8b: $79
    xor [hl]                                      ; $5d8c: $ae
    rst $30                                       ; $5d8d: $f7
    set 2, a                                      ; $5d8e: $cb $d7
    inc l                                         ; $5d90: $2c
    xor c                                         ; $5d91: $a9
    nop                                           ; $5d92: $00
    halt                                          ; $5d93: $76
    jr jr_03e_5d7b                                ; $5d94: $18 $e5

    db $fd                                        ; $5d96: $fd
    rst $28                                       ; $5d97: $ef
    ld [hl], a                                    ; $5d98: $77
    sbc [hl]                                      ; $5d99: $9e
    inc [hl]                                      ; $5d9a: $34
    add h                                         ; $5d9b: $84
    ld [hl-], a                                   ; $5d9c: $32
    ld b, [hl]                                    ; $5d9d: $46
    dec b                                         ; $5d9e: $05
    ld a, l                                       ; $5d9f: $7d
    cp [hl]                                       ; $5da0: $be
    ld a, a                                       ; $5da1: $7f
    sbc l                                         ; $5da2: $9d
    ld [hl+], a                                   ; $5da3: $22
    cp a                                          ; $5da4: $bf
    ld h, e                                       ; $5da5: $63
    and $b9                                       ; $5da6: $e6 $b9
    di                                            ; $5da8: $f3
    and h                                         ; $5da9: $a4
    ld hl, $3194                                  ; $5daa: $21 $94 $31
    ld a, [hl+]                                   ; $5dad: $2a
    nop                                           ; $5dae: $00
    cp l                                          ; $5daf: $bd
    push bc                                       ; $5db0: $c5
    push af                                       ; $5db1: $f5
    ld a, a                                       ; $5db2: $7f
    add hl, de                                    ; $5db3: $19
    sra [hl]                                      ; $5db4: $cb $2e
    ld a, d                                       ; $5db6: $7a
    jr z, jr_03e_5dc0                             ; $5db7: $28 $07

    nop                                           ; $5db9: $00
    ld a, l                                       ; $5dba: $7d
    cp [hl]                                       ; $5dbb: $be
    ld a, a                                       ; $5dbc: $7f
    sbc l                                         ; $5dbd: $9d
    ld [hl+], a                                   ; $5dbe: $22
    ccf                                           ; $5dbf: $3f

jr_03e_5dc0:
    rst $08                                       ; $5dc0: $cf
    reti                                          ; $5dc1: $d9


    daa                                           ; $5dc2: $27
    inc b                                         ; $5dc3: $04
    di                                            ; $5dc4: $f3
    dec h                                         ; $5dc5: $25
    ld [$018e], a                                 ; $5dc6: $ea $8e $01
    ld a, l                                       ; $5dc9: $7d
    cp [hl]                                       ; $5dca: $be
    ld a, a                                       ; $5dcb: $7f
    sbc l                                         ; $5dcc: $9d
    ld [hl+], a                                   ; $5dcd: $22
    ccf                                           ; $5dce: $3f
    rst $08                                       ; $5dcf: $cf
    reti                                          ; $5dd0: $d9


    daa                                           ; $5dd1: $27
    inc b                                         ; $5dd2: $04
    di                                            ; $5dd3: $f3
    dec h                                         ; $5dd4: $25

Call_03e_5dd5:
    ld [$058e], a                                 ; $5dd5: $ea $8e $05
    ld a, l                                       ; $5dd8: $7d
    cp [hl]                                       ; $5dd9: $be
    ld a, a                                       ; $5dda: $7f
    sbc l                                         ; $5ddb: $9d
    ld [hl+], a                                   ; $5ddc: $22
    ccf                                           ; $5ddd: $3f
    rst $08                                       ; $5dde: $cf
    reti                                          ; $5ddf: $d9


    daa                                           ; $5de0: $27
    inc b                                         ; $5de1: $04
    di                                            ; $5de2: $f3
    dec h                                         ; $5de3: $25
    ld [$038e], a                                 ; $5de4: $ea $8e $03
    halt                                          ; $5de7: $76
    or b                                          ; $5de8: $b0
    ld b, d                                       ; $5de9: $42
    and c                                         ; $5dea: $a1
    and $3c                                       ; $5deb: $e6 $3c
    ld h, a                                       ; $5ded: $67
    sbc a                                         ; $5dee: $9f
    db $10                                        ; $5def: $10
    call z, $a897                                 ; $5df0: $cc $97 $a8
    nop                                           ; $5df3: $00
    cp l                                          ; $5df4: $bd
    sra e                                         ; $5df5: $cb $2b
    rst $20                                       ; $5df7: $e7
    cp c                                          ; $5df8: $b9
    ld c, e                                       ; $5df9: $4b
    dec e                                         ; $5dfa: $1d
    cp [hl]                                       ; $5dfb: $be
    xor [hl]                                      ; $5dfc: $ae
    rla                                           ; $5dfd: $17
    add $06                                       ; $5dfe: $c6 $06
    cp c                                          ; $5e00: $b9
    ld d, a                                       ; $5e01: $57
    nop                                           ; $5e02: $00
    cp l                                          ; $5e03: $bd
    sra e                                         ; $5e04: $cb $2b
    rst $20                                       ; $5e06: $e7
    cp c                                          ; $5e07: $b9
    ld e, [hl]                                    ; $5e08: $5e
    jp nc, $fd62                                  ; $5e09: $d2 $62 $fd

    ld l, b                                       ; $5e0c: $68
    jp c, $e703                                   ; $5e0d: $da $03 $e7

    ld a, l                                       ; $5e10: $7d
    and c                                         ; $5e11: $a1
    ret c                                         ; $5e12: $d8

    db $fc                                        ; $5e13: $fc
    inc a                                         ; $5e14: $3c
    rst $30                                       ; $5e15: $f7
    ld d, d                                       ; $5e16: $52
    cp a                                          ; $5e17: $bf
    ld [hl], a                                    ; $5e18: $77
    ld a, [c]                                     ; $5e19: $f2
    ld a, [bc]                                    ; $5e1a: $0a
    nop                                           ; $5e1b: $00
    cp l                                          ; $5e1c: $bd
    sra e                                         ; $5e1d: $cb $2b
    rst $20                                       ; $5e1f: $e7
    cp c                                          ; $5e20: $b9
    ld e, [hl]                                    ; $5e21: $5e
    ld a, [de]                                    ; $5e22: $1a
    dec h                                         ; $5e23: $25
    ld sp, $9b6b                                  ; $5e24: $31 $6b $9b
    rlca                                          ; $5e27: $07
    add c                                         ; $5e28: $81
    ld e, a                                       ; $5e29: $5f
    ld a, [hl]                                    ; $5e2a: $7e
    sbc [hl]                                      ; $5e2b: $9e
    ld c, e                                       ; $5e2c: $4b
    ld l, c                                       ; $5e2d: $69
    ld hl, sp-$7b                                 ; $5e2e: $f8 $85
    ld a, [bc]                                    ; $5e30: $0a
    nop                                           ; $5e31: $00
    sub a                                         ; $5e32: $97
    dec [hl]                                      ; $5e33: $35
    and d                                         ; $5e34: $a2
    rst $38                                       ; $5e35: $ff
    ld a, c                                       ; $5e36: $79
    adc $4e                                       ; $5e37: $ce $4e
    ld c, l                                       ; $5e39: $4d
    halt                                          ; $5e3a: $76
    ld e, [hl]                                    ; $5e3b: $5e
    ld bc, $cbbd                                  ; $5e3c: $01 $bd $cb
    dec hl                                        ; $5e3f: $2b
    rst $20                                       ; $5e40: $e7
    add hl, sp                                    ; $5e41: $39
    dec sp                                        ; $5e42: $3b
    inc [hl]                                      ; $5e43: $34
    adc a                                         ; $5e44: $8f
    pop af                                        ; $5e45: $f1
    db $eb                                        ; $5e46: $eb
    ld b, [hl]                                    ; $5e47: $46
    adc h                                         ; $5e48: $8c
    xor c                                         ; $5e49: $a9
    nop                                           ; $5e4a: $00
    cp l                                          ; $5e4b: $bd
    sra e                                         ; $5e4c: $cb $2b
    rst $20                                       ; $5e4e: $e7
    cp c                                          ; $5e4f: $b9
    ld e, [hl]                                    ; $5e50: $5e
    ld [de], a                                    ; $5e51: $12

Jump_03e_5e52:
    xor c                                         ; $5e52: $a9
    cp e                                          ; $5e53: $bb
    ld e, b                                       ; $5e54: $58
    adc l                                         ; $5e55: $8d
    sub e                                         ; $5e56: $93
    ld d, a                                       ; $5e57: $57
    nop                                           ; $5e58: $00
    halt                                          ; $5e59: $76
    ld a, [de]                                    ; $5e5a: $1a
    or d                                          ; $5e5b: $b2
    ld e, a                                       ; $5e5c: $5f
    adc $73                                       ; $5e5d: $ce $73
    rla                                           ; $5e5f: $17
    ld d, e                                       ; $5e60: $53
    jp hl                                         ; $5e61: $e9


    ld bc, $a767                                  ; $5e62: $01 $67 $a7
    ld e, d                                       ; $5e65: $5a
    inc e                                         ; $5e66: $1c
    rla                                           ; $5e67: $17
    ld c, d                                       ; $5e68: $4a
    ld b, $5b                                     ; $5e69: $06 $5b
    and a                                         ; $5e6b: $a7
    ld sp, hl                                     ; $5e6c: $f9
    call c, Call_000_0031                         ; $5e6d: $dc $31 $00
    ld h, a                                       ; $5e70: $67
    and a                                         ; $5e71: $a7
    push bc                                       ; $5e72: $c5
    ld [hl], c                                    ; $5e73: $71
    and c                                         ; $5e74: $a1
    ld h, h                                       ; $5e75: $64
    or b                                          ; $5e76: $b0
    ld [hl], l                                    ; $5e77: $75
    sbc d                                         ; $5e78: $9a
    rst $08                                       ; $5e79: $cf
    dec e                                         ; $5e7a: $1d
    dec bc                                        ; $5e7b: $0b
    nop                                           ; $5e7c: $00
    ld h, a                                       ; $5e7d: $67
    and a                                         ; $5e7e: $a7
    ld e, d                                       ; $5e7f: $5a
    inc e                                         ; $5e80: $1c
    rla                                           ; $5e81: $17
    ld c, d                                       ; $5e82: $4a
    ld b, $5b                                     ; $5e83: $06 $5b
    and a                                         ; $5e85: $a7
    ld sp, hl                                     ; $5e86: $f9
    call c, $0071                                 ; $5e87: $dc $71 $00
    ld h, a                                       ; $5e8a: $67
    and a                                         ; $5e8b: $a7
    ld e, d                                       ; $5e8c: $5a
    inc e                                         ; $5e8d: $1c
    rla                                           ; $5e8e: $17
    ld c, d                                       ; $5e8f: $4a
    ld b, $5b                                     ; $5e90: $06 $5b
    and a                                         ; $5e92: $a7
    ld sp, hl                                     ; $5e93: $f9
    call c, Call_000_00f1                         ; $5e94: $dc $f1 $00
    ld h, a                                       ; $5e97: $67
    and a                                         ; $5e98: $a7
    ld e, d                                       ; $5e99: $5a
    inc e                                         ; $5e9a: $1c
    rla                                           ; $5e9b: $17
    ld c, d                                       ; $5e9c: $4a
    ld b, $5b                                     ; $5e9d: $06 $5b
    and a                                         ; $5e9f: $a7
    ld sp, hl                                     ; $5ea0: $f9
    call c, Call_000_0009                         ; $5ea1: $dc $09 $00
    ld h, a                                       ; $5ea4: $67
    and a                                         ; $5ea5: $a7
    ld e, d                                       ; $5ea6: $5a
    inc e                                         ; $5ea7: $1c
    rla                                           ; $5ea8: $17
    ld c, d                                       ; $5ea9: $4a
    ld b, $5b                                     ; $5eaa: $06 $5b
    and a                                         ; $5eac: $a7
    ld sp, hl                                     ; $5ead: $f9
    call c, $0089                                 ; $5eae: $dc $89 $00
    ld a, l                                       ; $5eb1: $7d
    cp [hl]                                       ; $5eb2: $be
    ld a, a                                       ; $5eb3: $7f
    sbc l                                         ; $5eb4: $9d
    ld [hl+], a                                   ; $5eb5: $22
    cp a                                          ; $5eb6: $bf
    ld [$5f86], a                                 ; $5eb7: $ea $86 $5f
    halt                                          ; $5eba: $76
    inc c                                         ; $5ebb: $0c
    nop                                           ; $5ebc: $00
    ld a, l                                       ; $5ebd: $7d
    cp [hl]                                       ; $5ebe: $be
    ld a, a                                       ; $5ebf: $7f
    sbc l                                         ; $5ec0: $9d
    ld [hl+], a                                   ; $5ec1: $22
    cp a                                          ; $5ec2: $bf
    ld [$5f86], a                                 ; $5ec3: $ea $86 $5f
    halt                                          ; $5ec6: $76
    inc l                                         ; $5ec7: $2c
    nop                                           ; $5ec8: $00
    ld a, l                                       ; $5ec9: $7d
    cp [hl]                                       ; $5eca: $be
    ld a, a                                       ; $5ecb: $7f
    sbc l                                         ; $5ecc: $9d
    ld [hl+], a                                   ; $5ecd: $22
    cp a                                          ; $5ece: $bf
    ld [$5f86], a                                 ; $5ecf: $ea $86 $5f
    halt                                          ; $5ed2: $76
    inc e                                         ; $5ed3: $1c
    nop                                           ; $5ed4: $00
    ld a, l                                       ; $5ed5: $7d
    cp [hl]                                       ; $5ed6: $be
    ld a, a                                       ; $5ed7: $7f
    sbc l                                         ; $5ed8: $9d
    ld [hl+], a                                   ; $5ed9: $22
    cp a                                          ; $5eda: $bf
    ld [$5f86], a                                 ; $5edb: $ea $86 $5f
    halt                                          ; $5ede: $76
    inc a                                         ; $5edf: $3c
    nop                                           ; $5ee0: $00
    ld a, l                                       ; $5ee1: $7d
    cp [hl]                                       ; $5ee2: $be
    ld a, a                                       ; $5ee3: $7f
    sbc l                                         ; $5ee4: $9d
    ld [hl+], a                                   ; $5ee5: $22
    cp a                                          ; $5ee6: $bf
    ld [$5f86], a                                 ; $5ee7: $ea $86 $5f
    halt                                          ; $5eea: $76
    ld [bc], a                                    ; $5eeb: $02
    nop                                           ; $5eec: $00
    ld a, l                                       ; $5eed: $7d
    cp [hl]                                       ; $5eee: $be
    ld a, a                                       ; $5eef: $7f
    sbc l                                         ; $5ef0: $9d
    ld [hl+], a                                   ; $5ef1: $22
    cp a                                          ; $5ef2: $bf
    ld [$5f86], a                                 ; $5ef3: $ea $86 $5f
    halt                                          ; $5ef6: $76
    ld [hl+], a                                   ; $5ef7: $22
    nop                                           ; $5ef8: $00
    rst $20                                       ; $5ef9: $e7
    ld d, b                                       ; $5efa: $50
    jp $c137                                      ; $5efb: $c3 $37 $c1


    sbc h                                         ; $5efe: $9c
    rst $20                                       ; $5eff: $e7
    adc $2d                                       ; $5f00: $ce $2d
    dec l                                         ; $5f02: $2d
    jp nz, Jump_000_066c                          ; $5f03: $c2 $6c $06

    ld b, $00                                     ; $5f06: $06 $00
    cp l                                          ; $5f08: $bd
    sra e                                         ; $5f09: $cb $2b
    ld d, a                                       ; $5f0b: $57
    ld a, c                                       ; $5f0c: $79
    ld h, e                                       ; $5f0d: $63
    di                                            ; $5f0e: $f3
    nop                                           ; $5f0f: $00
    cp l                                          ; $5f10: $bd
    sra e                                         ; $5f11: $cb $2b
    ld d, a                                       ; $5f13: $57
    ld a, c                                       ; $5f14: $79
    ld h, e                                       ; $5f15: $63
    di                                            ; $5f16: $f3
    nop                                           ; $5f17: $00
    ld bc, $adaf                                  ; $5f18: $01 $af $ad
    sub h                                         ; $5f1b: $94
    ld e, h                                       ; $5f1c: $5c
    jr z, jr_03e_5f38                             ; $5f1d: $28 $19

    ld l, h                                       ; $5f1f: $6c
    sbc l                                         ; $5f20: $9d
    and $13                                       ; $5f21: $e6 $13
    nop                                           ; $5f23: $00
    rst $20                                       ; $5f24: $e7
    ld h, e                                       ; $5f25: $63
    add l                                         ; $5f26: $85
    add d                                         ; $5f27: $82
    rst $28                                       ; $5f28: $ef
    add hl, hl                                    ; $5f29: $29
    add hl, bc                                    ; $5f2a: $09
    nop                                           ; $5f2b: $00
    cp l                                          ; $5f2c: $bd
    sub h                                         ; $5f2d: $94
    add hl, sp                                    ; $5f2e: $39
    rst $08                                       ; $5f2f: $cf
    sbc c                                         ; $5f30: $99
    ld h, b                                       ; $5f31: $60
    inc sp                                        ; $5f32: $33
    xor a                                         ; $5f33: $af
    nop                                           ; $5f34: $00
    sub a                                         ; $5f35: $97
    ld d, c                                       ; $5f36: $51
    add h                                         ; $5f37: $84

jr_03e_5f38:
    sbc b                                         ; $5f38: $98
    ld a, [hl-]                                   ; $5f39: $3a
    rst $08                                       ; $5f3a: $cf
    reti                                          ; $5f3b: $d9


    daa                                           ; $5f3c: $27
    inc b                                         ; $5f3d: $04
    di                                            ; $5f3e: $f3
    dec h                                         ; $5f3f: $25
    ld [$018e], a                                 ; $5f40: $ea $8e $01
    rst $20                                       ; $5f43: $e7
    ld h, e                                       ; $5f44: $63
    and h                                         ; $5f45: $a4
    or h                                          ; $5f46: $b4
    sub h                                         ; $5f47: $94
    sbc c                                         ; $5f48: $99
    rst $28                                       ; $5f49: $ef
    db $fc                                        ; $5f4a: $fc
    pop bc                                        ; $5f4b: $c1
    ccf                                           ; $5f4c: $3f
    rst $08                                       ; $5f4d: $cf
    reti                                          ; $5f4e: $d9


    ccf                                           ; $5f4f: $3f
    inc h                                         ; $5f50: $24
    call $0103                                    ; $5f51: $cd $03 $01
    xor a                                         ; $5f54: $af
    xor l                                         ; $5f55: $ad
    sub h                                         ; $5f56: $94
    ld e, h                                       ; $5f57: $5c
    ret c                                         ; $5f58: $d8

    inc [hl]                                      ; $5f59: $34
    ld [hl], a                                    ; $5f5a: $77
    inc c                                         ; $5f5b: $0c
    nop                                           ; $5f5c: $00
    ld bc, $adaf                                  ; $5f5d: $01 $af $ad
    sub h                                         ; $5f60: $94
    ld e, h                                       ; $5f61: $5c
    ret c                                         ; $5f62: $d8

    inc [hl]                                      ; $5f63: $34
    ld [hl], a                                    ; $5f64: $77
    inc l                                         ; $5f65: $2c
    nop                                           ; $5f66: $00
    ld bc, $adaf                                  ; $5f67: $01 $af $ad
    sub h                                         ; $5f6a: $94
    ld e, h                                       ; $5f6b: $5c
    ret c                                         ; $5f6c: $d8

    inc [hl]                                      ; $5f6d: $34
    ld [hl], a                                    ; $5f6e: $77
    inc e                                         ; $5f6f: $1c
    nop                                           ; $5f70: $00
    ld bc, $adaf                                  ; $5f71: $01 $af $ad
    sub h                                         ; $5f74: $94
    ld e, h                                       ; $5f75: $5c
    ret c                                         ; $5f76: $d8

    inc [hl]                                      ; $5f77: $34
    ld [hl], a                                    ; $5f78: $77
    inc a                                         ; $5f79: $3c
    nop                                           ; $5f7a: $00
    ld bc, $adaf                                  ; $5f7b: $01 $af $ad
    sub h                                         ; $5f7e: $94
    ld e, h                                       ; $5f7f: $5c
    ret c                                         ; $5f80: $d8

    inc [hl]                                      ; $5f81: $34
    ld [hl], a                                    ; $5f82: $77
    ld [bc], a                                    ; $5f83: $02
    nop                                           ; $5f84: $00
    ld bc, $adaf                                  ; $5f85: $01 $af $ad
    sub h                                         ; $5f88: $94
    ld e, h                                       ; $5f89: $5c
    ret c                                         ; $5f8a: $d8

    inc [hl]                                      ; $5f8b: $34
    ld [hl], a                                    ; $5f8c: $77
    ld [hl+], a                                   ; $5f8d: $22
    nop                                           ; $5f8e: $00
    ld bc, $adaf                                  ; $5f8f: $01 $af $ad
    sub h                                         ; $5f92: $94
    ld e, h                                       ; $5f93: $5c
    ret c                                         ; $5f94: $d8

Call_03e_5f95:
    inc [hl]                                      ; $5f95: $34
    ld [hl], a                                    ; $5f96: $77

Jump_03e_5f97:
    ld [de], a                                    ; $5f97: $12
    nop                                           ; $5f98: $00
    sub a                                         ; $5f99: $97
    dec [hl]                                      ; $5f9a: $35
    and d                                         ; $5f9b: $a2
    rst $38                                       ; $5f9c: $ff
    ld a, c                                       ; $5f9d: $79
    sub [hl]                                      ; $5f9e: $96
    push af                                       ; $5f9f: $f5
    halt                                          ; $5fa0: $76
    ld a, [c]                                     ; $5fa1: $f2
    add sp, $29                                   ; $5fa2: $e8 $29
    add hl, bc                                    ; $5fa4: $09
    nop                                           ; $5fa5: $00
    cp l                                          ; $5fa6: $bd
    sra e                                         ; $5fa7: $cb $2b
    rst $20                                       ; $5fa9: $e7
    add hl, sp                                    ; $5faa: $39
    ei                                            ; $5fab: $fb
    and [hl]                                      ; $5fac: $a6
    ld sp, $fda5                                  ; $5fad: $31 $a5 $fd
    inc a                                         ; $5fb0: $3c
    ld d, a                                       ; $5fb1: $57
    ld a, [hl]                                    ; $5fb2: $7e
    ld a, l                                       ; $5fb3: $7d
    ld e, $6a                                     ; $5fb4: $1e $6a
    rrca                                          ; $5fb6: $0f
    nop                                           ; $5fb7: $00
    halt                                          ; $5fb8: $76
    ld e, b                                       ; $5fb9: $58
    ld c, l                                       ; $5fba: $4d
    xor c                                         ; $5fbb: $a9
    add hl, hl                                    ; $5fbc: $29
    ld [hl], $0f                                  ; $5fbd: $36 $0f
    nop                                           ; $5fbf: $00
    ld h, a                                       ; $5fc0: $67
    or a                                          ; $5fc1: $b7
    ld c, [hl]                                    ; $5fc2: $4e
    ld l, c                                       ; $5fc3: $69
    add hl, de                                    ; $5fc4: $19
    ld l, c                                       ; $5fc5: $69
    ld a, [hl]                                    ; $5fc6: $7e
    rst $00                                       ; $5fc7: $c7
    nop                                           ; $5fc8: $00
    ld h, a                                       ; $5fc9: $67
    or a                                          ; $5fca: $b7
    ld c, [hl]                                    ; $5fcb: $4e
    ld l, c                                       ; $5fcc: $69
    add hl, de                                    ; $5fcd: $19
    ld l, c                                       ; $5fce: $69
    ld a, [hl]                                    ; $5fcf: $7e
    rst $00                                       ; $5fd0: $c7
    ld [bc], a                                    ; $5fd1: $02
    rst $20                                       ; $5fd2: $e7
    ld d, b                                       ; $5fd3: $50
    jp $c137                                      ; $5fd4: $c3 $37 $c1


    sbc h                                         ; $5fd7: $9c
    rst $20                                       ; $5fd8: $e7
    ld a, [$f398]                                 ; $5fd9: $fa $98 $f3
    ld [de], a                                    ; $5fdc: $12
    rra                                           ; $5fdd: $1f
    ld a, [$0052]                                 ; $5fde: $fa $52 $00
    cp l                                          ; $5fe1: $bd
    sra e                                         ; $5fe2: $cb $2b
    rst $20                                       ; $5fe4: $e7
    add hl, sp                                    ; $5fe5: $39
    dec sp                                        ; $5fe6: $3b
    adc l                                         ; $5fe7: $8d
    adc $b7                                       ; $5fe8: $ce $b7
    call nc, Call_03e_71f5                        ; $5fea: $d4 $f5 $71
    db $10                                        ; $5fed: $10
    ld d, h                                       ; $5fee: $54
    xor b                                         ; $5fef: $a8
    nop                                           ; $5ff0: $00
    rst $20                                       ; $5ff1: $e7
    ld d, b                                       ; $5ff2: $50
    jp $c137                                      ; $5ff3: $c3 $37 $c1


    sbc h                                         ; $5ff6: $9c
    rst $20                                       ; $5ff7: $e7
    ld [bc], a                                    ; $5ff8: $02
    or d                                          ; $5ff9: $b2
    xor [hl]                                      ; $5ffa: $ae
    ld d, $5a                                     ; $5ffb: $16 $5a
    ld bc, $cbbd                                  ; $5ffd: $01 $bd $cb
    dec hl                                        ; $6000: $2b
    rst $20                                       ; $6001: $e7
    cp c                                          ; $6002: $b9
    jr nc, jr_03e_6052                            ; $6003: $30 $4d

    ld c, e                                       ; $6005: $4b
    and h                                         ; $6006: $a4
    ld [bc], a                                    ; $6007: $02
    rst $20                                       ; $6008: $e7
    ld d, b                                       ; $6009: $50
    jp $c137                                      ; $600a: $c3 $37 $c1


    sbc h                                         ; $600d: $9c
    rst $20                                       ; $600e: $e7
    ld l, $71                                     ; $600f: $2e $71
    ld c, l                                       ; $6011: $4d
    add h                                         ; $6012: $84
    and l                                         ; $6013: $a5
    nop                                           ; $6014: $00
    rst $20                                       ; $6015: $e7
    ld d, b                                       ; $6016: $50
    jp $c137                                      ; $6017: $c3 $37 $c1


    sbc h                                         ; $601a: $9c
    rst $20                                       ; $601b: $e7
    ld [bc], a                                    ; $601c: $02
    pop af                                        ; $601d: $f1
    ld b, e                                       ; $601e: $43
    ld [bc], a                                    ; $601f: $02
    rst $20                                       ; $6020: $e7
    ld d, b                                       ; $6021: $50
    jp $c137                                      ; $6022: $c3 $37 $c1


    sbc h                                         ; $6025: $9c
    rst $20                                       ; $6026: $e7
    ld [bc], a                                    ; $6027: $02
    ld b, e                                       ; $6028: $43
    ld c, c                                       ; $6029: $49
    rla                                           ; $602a: $17
    ld bc, $4abd                                  ; $602b: $01 $bd $4a
    db $fd                                        ; $602e: $fd
    and [hl]                                      ; $602f: $a6
    ld a, [hl+]                                   ; $6030: $2a
    ld [bc], a                                    ; $6031: $02
    cp l                                          ; $6032: $bd
    sra e                                         ; $6033: $cb $2b
    rst $20                                       ; $6035: $e7
    cp c                                          ; $6036: $b9
    set 4, h                                      ; $6037: $cb $e4
    ld d, c                                       ; $6039: $51
    xor e                                         ; $603a: $ab
    ld d, e                                       ; $603b: $53
    ld [$2d37], a                                 ; $603c: $ea $37 $2d
    sub c                                         ; $603f: $91
    ld a, [bc]                                    ; $6040: $0a
    nop                                           ; $6041: $00
    add c                                         ; $6042: $81
    ld e, a                                       ; $6043: $5f
    ld l, h                                       ; $6044: $6c
    ld [hl], c                                    ; $6045: $71
    sbc [hl]                                      ; $6046: $9e
    ld h, l                                       ; $6047: $65
    sub a                                         ; $6048: $97
    ld c, c                                       ; $6049: $49
    ld d, [hl]                                    ; $604a: $56
    inc sp                                        ; $604b: $33
    ld bc, $be7d                                  ; $604c: $01 $7d $be
    ld a, a                                       ; $604f: $7f
    sbc l                                         ; $6050: $9d
    ld [hl+], a                                   ; $6051: $22

jr_03e_6052:
    ccf                                           ; $6052: $3f
    rst $08                                       ; $6053: $cf
    sbc l                                         ; $6054: $9d
    daa                                           ; $6055: $27
    dec c                                         ; $6056: $0d
    and c                                         ; $6057: $a1
    adc h                                         ; $6058: $8c
    ld d, c                                       ; $6059: $51
    ld [hl], a                                    ; $605a: $77
    inc l                                         ; $605b: $2c
    nop                                           ; $605c: $00
    cp l                                          ; $605d: $bd
    ret nc                                        ; $605e: $d0

    ld d, a                                       ; $605f: $57
    push bc                                       ; $6060: $c5
    sbc l                                         ; $6061: $9d
    or d                                          ; $6062: $b2
    db $e3                                        ; $6063: $e3
    adc [hl]                                      ; $6064: $8e
    ld a, [hl-]                                   ; $6065: $3a
    ld e, $00                                     ; $6066: $1e $00
    rla                                           ; $6068: $17
    ld c, e                                       ; $6069: $4b
    dec hl                                        ; $606a: $2b
    push hl                                       ; $606b: $e5
    rst $20                                       ; $606c: $e7
    ld e, c                                       ; $606d: $59
    halt                                          ; $606e: $76
    pop de                                        ; $606f: $d1
    ld b, e                                       ; $6070: $43
    add hl, bc                                    ; $6071: $09
    nop                                           ; $6072: $00
    ld d, a                                       ; $6073: $57
    ld d, b                                       ; $6074: $50
    and e                                         ; $6075: $a3
    ld c, l                                       ; $6076: $4d
    rst $00                                       ; $6077: $c7
    sub l                                         ; $6078: $95
    sbc h                                         ; $6079: $9c
    rst $20                                       ; $607a: $e7
    db $ec                                        ; $607b: $ec
    inc de                                        ; $607c: $13
    add d                                         ; $607d: $82
    ld sp, hl                                     ; $607e: $f9
    ld [de], a                                    ; $607f: $12
    dec d                                         ; $6080: $15
    nop                                           ; $6081: $00
    rst $20                                       ; $6082: $e7
    and h                                         ; $6083: $a4
    call nc, $a62d                                ; $6084: $d4 $2d $a6
    or h                                          ; $6087: $b4
    sbc h                                         ; $6088: $9c
    rst $20                                       ; $6089: $e7
    ld c, h                                       ; $608a: $4c
    or b                                          ; $608b: $b0
    sbc c                                         ; $608c: $99
    call nc, $ee79                                ; $608d: $d4 $79 $ee
    inc a                                         ; $6090: $3c
    or c                                          ; $6091: $b1
    ld d, [hl]                                    ; $6092: $56
    ld d, a                                       ; $6093: $57
    scf                                           ; $6094: $37
    db $f4                                        ; $6095: $f4
    add hl, hl                                    ; $6096: $29
    nop                                           ; $6097: $00
    add c                                         ; $6098: $81
    ld e, a                                       ; $6099: $5f
    ld a, [hl]                                    ; $609a: $7e
    ld h, $eb                                     ; $609b: $26 $eb
    inc bc                                        ; $609d: $03
    ld [hl], b                                    ; $609e: $70
    sbc [hl]                                      ; $609f: $9e
    dec sp                                        ; $60a0: $3b
    ld c, a                                       ; $60a1: $4f
    xor h                                         ; $60a2: $ac
    push de                                       ; $60a3: $d5

Call_03e_60a4:
    push de                                       ; $60a4: $d5
    dec c                                         ; $60a5: $0d
    ld a, l                                       ; $60a6: $7d
    ld a, [bc]                                    ; $60a7: $0a
    nop                                           ; $60a8: $00
    cp l                                          ; $60a9: $bd
    and h                                         ; $60aa: $a4
    ld a, [hl]                                    ; $60ab: $7e
    ld l, c                                       ; $60ac: $69
    add hl, sp                                    ; $60ad: $39
    rst $08                                       ; $60ae: $cf
    ld d, c                                       ; $60af: $51
    ld c, l                                       ; $60b0: $4d
    halt                                          ; $60b1: $76
    ld e, [hl]                                    ; $60b2: $5e
    ld bc, $50e7                                  ; $60b3: $01 $e7 $50
    jp $c137                                      ; $60b6: $c3 $37 $c1


    call c, $adb9                                 ; $60b9: $dc $b9 $ad
    sbc b                                         ; $60bc: $98
    jr nz, jr_03e_60bf                            ; $60bd: $20 $00

jr_03e_60bf:
    rst $20                                       ; $60bf: $e7
    ret                                           ; $60c0: $c9


    db $e3                                        ; $60c1: $e3
    ld a, d                                       ; $60c2: $7a
    ld h, a                                       ; $60c3: $67
    ld c, l                                       ; $60c4: $4d
    sbc a                                         ; $60c5: $9f
    ld [hl-], a                                   ; $60c6: $32
    rst $08                                       ; $60c7: $cf
    reti                                          ; $60c8: $d9


    daa                                           ; $60c9: $27
    inc b                                         ; $60ca: $04
    di                                            ; $60cb: $f3
    dec h                                         ; $60cc: $25
    ld a, [hl+]                                   ; $60cd: $2a
    nop                                           ; $60ce: $00
    add c                                         ; $60cf: $81
    ld e, a                                       ; $60d0: $5f
    ld a, [hl]                                    ; $60d1: $7e
    sbc [hl]                                      ; $60d2: $9e
    dec bc                                        ; $60d3: $0b
    dec h                                         ; $60d4: $25
    xor e                                         ; $60d5: $ab
    xor c                                         ; $60d6: $a9
    add hl, hl                                    ; $60d7: $29
    call nc, $ce79                                ; $60d8: $d4 $79 $ce
    ld a, $21                                     ; $60db: $3e $21
    sbc b                                         ; $60dd: $98
    cpl                                           ; $60de: $2f
    ld d, c                                       ; $60df: $51
    ld bc, $5f81                                  ; $60e0: $01 $81 $5f
    ld a, [hl]                                    ; $60e3: $7e
    sbc [hl]                                      ; $60e4: $9e
    cp e                                          ; $60e5: $bb
    sub h                                         ; $60e6: $94
    ld d, c                                       ; $60e7: $51
    ld a, $a6                                     ; $60e8: $3e $a6
    ld [bc], a                                    ; $60ea: $02
    ld a, l                                       ; $60eb: $7d
    cp [hl]                                       ; $60ec: $be
    ld a, a                                       ; $60ed: $7f
    sbc l                                         ; $60ee: $9d
    ld [hl+], a                                   ; $60ef: $22
    xor a                                         ; $60f0: $af
    dec bc                                        ; $60f1: $0b
    ld l, b                                       ; $60f2: $68
    sbc d                                         ; $60f3: $9a
    dec sp                                        ; $60f4: $3b
    ld a, [de]                                    ; $60f5: $1a
    nop                                           ; $60f6: $00
    ld bc, $9a69                                  ; $60f7: $01 $69 $9a
    dec l                                         ; $60fa: $2d
    xor $58                                       ; $60fb: $ee $58
    nop                                           ; $60fd: $00
    cp l                                          ; $60fe: $bd
    cp e                                          ; $60ff: $bb
    ld [$9f97], a                                 ; $6100: $ea $97 $9f
    rst $20                                       ; $6103: $e7
    adc $93                                       ; $6104: $ce $93
    add [hl]                                      ; $6106: $86
    ld d, b                                       ; $6107: $50
    add $a8                                       ; $6108: $c6 $a8
    nop                                           ; $610a: $00
    ld bc, $adaf                                  ; $610b: $01 $af $ad
    sub h                                         ; $610e: $94
    sbc h                                         ; $610f: $9c
    rst $20                                       ; $6110: $e7
    ld a, d                                       ; $6111: $7a
    ld l, c                                       ; $6112: $69
    sub h                                         ; $6113: $94
    call nz, Call_03e_6dac                        ; $6114: $c4 $ac $6d
    ld e, $00                                     ; $6117: $1e $00
    sub a                                         ; $6119: $97
    ld d, c                                       ; $611a: $51
    add h                                         ; $611b: $84
    sbc b                                         ; $611c: $98
    ld a, [hl-]                                   ; $611d: $3a
    rst $08                                       ; $611e: $cf
    reti                                          ; $611f: $d9


    daa                                           ; $6120: $27
    inc b                                         ; $6121: $04
    di                                            ; $6122: $f3
    dec h                                         ; $6123: $25
    ld [$058e], a                                 ; $6124: $ea $8e $05
    sub a                                         ; $6127: $97
    ld d, c                                       ; $6128: $51
    add h                                         ; $6129: $84
    sbc b                                         ; $612a: $98
    ld a, [hl-]                                   ; $612b: $3a
    rst $08                                       ; $612c: $cf
    reti                                          ; $612d: $d9


    daa                                           ; $612e: $27
    inc b                                         ; $612f: $04
    di                                            ; $6130: $f3
    dec h                                         ; $6131: $25
    ld [$038e], a                                 ; $6132: $ea $8e $03
    sub a                                         ; $6135: $97
    ld d, c                                       ; $6136: $51
    add h                                         ; $6137: $84
    sbc b                                         ; $6138: $98
    ld a, [hl-]                                   ; $6139: $3a
    rst $08                                       ; $613a: $cf
    reti                                          ; $613b: $d9


    daa                                           ; $613c: $27
    inc b                                         ; $613d: $04
    di                                            ; $613e: $f3
    dec h                                         ; $613f: $25
    ld [$078e], a                                 ; $6140: $ea $8e $07
    halt                                          ; $6143: $76
    or b                                          ; $6144: $b0
    ld [hl+], a                                   ; $6145: $22
    and l                                         ; $6146: $a5
    and l                                         ; $6147: $a5
    xor h                                         ; $6148: $ac
    rst $30                                       ; $6149: $f7
    ld [hl], a                                    ; $614a: $77
    cp $e0                                        ; $614b: $fe $e0
    sbc a                                         ; $614d: $9f
    rst $20                                       ; $614e: $e7
    db $ec                                        ; $614f: $ec
    rra                                           ; $6150: $1f
    sub d                                         ; $6151: $92
    and $01                                       ; $6152: $e6 $01
    cp l                                          ; $6154: $bd
    adc e                                         ; $6155: $8b
    db $eb                                        ; $6156: $eb
    call z, $e773                                 ; $6157: $cc $73 $e7
    ld h, e                                       ; $615a: $63
    and h                                         ; $615b: $a4
    sbc b                                         ; $615c: $98
    xor a                                         ; $615d: $af
    dec sp                                        ; $615e: $3b
    dec l                                         ; $615f: $2d
    rst $20                                       ; $6160: $e7
    cp c                                          ; $6161: $b9
    sbc $92                                       ; $6162: $de $92
    ld [hl], l                                    ; $6164: $75
    ld a, [hl+]                                   ; $6165: $2a
    nop                                           ; $6166: $00
    rst $20                                       ; $6167: $e7
    ret                                           ; $6168: $c9


    db $e3                                        ; $6169: $e3
    ld a, d                                       ; $616a: $7a
    ld h, a                                       ; $616b: $67
    ld c, l                                       ; $616c: $4d
    sbc a                                         ; $616d: $9f
    or d                                          ; $616e: $b2
    inc hl                                        ; $616f: $23
    ld [hl], a                                    ; $6170: $77
    push bc                                       ; $6171: $c5
    dec de                                        ; $6172: $1b
    sbc e                                         ; $6173: $9b
    inc b                                         ; $6174: $04
    add c                                         ; $6175: $81
    ld e, a                                       ; $6176: $5f
    ld a, [hl]                                    ; $6177: $7e
    ld c, d                                       ; $6178: $4a
    inc hl                                        ; $6179: $23
    adc h                                         ; $617a: $8c
    cp a                                          ; $617b: $bf
    jp c, Jump_03e_5041                           ; $617c: $da $41 $50

    ld hl, $7d00                                  ; $617f: $21 $00 $7d
    ld a, $52                                     ; $6182: $3e $52
    jp c, Jump_03e_7997                           ; $6184: $da $97 $79

    adc [hl]                                      ; $6187: $8e
    ld l, d                                       ; $6188: $6a
    and h                                         ; $6189: $a4
    push bc                                       ; $618a: $c5
    sub h                                         ; $618b: $94
    sub [hl]                                      ; $618c: $96
    nop                                           ; $618d: $00
    cp l                                          ; $618e: $bd
    sub h                                         ; $618f: $94
    add hl, sp                                    ; $6190: $39
    rst $08                                       ; $6191: $cf
    sbc c                                         ; $6192: $99
    ld h, b                                       ; $6193: $60
    inc sp                                        ; $6194: $33
    xor c                                         ; $6195: $a9
    nop                                           ; $6196: $00
    cp l                                          ; $6197: $bd
    sra e                                         ; $6198: $cb $2b
    rst $20                                       ; $619a: $e7
    cp c                                          ; $619b: $b9
    ld a, $07                                     ; $619c: $3e $07
    ld l, b                                       ; $619e: $68
    inc sp                                        ; $619f: $33
    cp a                                          ; $61a0: $bf
    jp c, Jump_03e_5041                           ; $61a1: $da $41 $50

    ld hl, $bd00                                  ; $61a4: $21 $00 $bd
    sra e                                         ; $61a7: $cb $2b
    rst $20                                       ; $61a9: $e7
    cp c                                          ; $61aa: $b9
    ld e, [hl]                                    ; $61ab: $5e
    ld [de], a                                    ; $61ac: $12
    cp c                                          ; $61ad: $b9
    jp c, Jump_03e_5041                           ; $61ae: $da $41 $50

    ld hl, $bd00                                  ; $61b1: $21 $00 $bd
    cp e                                          ; $61b4: $bb
    ld [$9f97], a                                 ; $61b5: $ea $97 $9f
    rst $20                                       ; $61b8: $e7
    adc h                                         ; $61b9: $8c
    ld h, h                                       ; $61ba: $64
    sbc l                                         ; $61bb: $9d
    ld a, [bc]                                    ; $61bc: $0a

Call_03e_61bd:
    nop                                           ; $61bd: $00
    ld bc, $adaf                                  ; $61be: $01 $af $ad
    sub h                                         ; $61c1: $94
    sbc h                                         ; $61c2: $9c
    jp nc, Jump_03e_6308                          ; $61c3: $d2 $08 $63

    ld l, $6c                                     ; $61c6: $2e $6c
    sbc d                                         ; $61c8: $9a
    dec sp                                        ; $61c9: $3b
    ld de, $e700                                  ; $61ca: $11 $00 $e7
    ld d, b                                       ; $61cd: $50
    jp $c137                                      ; $61ce: $c3 $37 $c1


    sbc h                                         ; $61d1: $9c
    rst $20                                       ; $61d2: $e7
    adc $6e                                       ; $61d3: $ce $6e
    adc b                                         ; $61d5: $88
    ld a, [bc]                                    ; $61d6: $0a
    nop                                           ; $61d7: $00
    cp l                                          ; $61d8: $bd
    sra e                                         ; $61d9: $cb $2b
    ld d, a                                       ; $61db: $57
    ld a, c                                       ; $61dc: $79
    ld h, e                                       ; $61dd: $63
    di                                            ; $61de: $f3
    nop                                           ; $61df: $00
    ld a, l                                       ; $61e0: $7d
    ld a, $fc                                     ; $61e1: $3e $fc
    ld a, c                                       ; $61e3: $79
    xor [hl]                                      ; $61e4: $ae
    sub h                                         ; $61e5: $94
    xor a                                         ; $61e6: $af
    ld d, b                                       ; $61e7: $50
    rst $30                                       ; $61e8: $f7
    push hl                                       ; $61e9: $e5
    db $fd                                        ; $61ea: $fd
    dec hl                                        ; $61eb: $2b
    nop                                           ; $61ec: $00
    rst $20                                       ; $61ed: $e7
    ret                                           ; $61ee: $c9


    db $e3                                        ; $61ef: $e3
    ld a, d                                       ; $61f0: $7a
    ld h, a                                       ; $61f1: $67
    ld c, l                                       ; $61f2: $4d
    sbc a                                         ; $61f3: $9f
    ld [hl], d                                    ; $61f4: $72
    rst $28                                       ; $61f5: $ef
    call c, $f386                                 ; $61f6: $dc $86 $f3
    inc l                                         ; $61f9: $2c
    db $eb                                        ; $61fa: $eb
    rst $20                                       ; $61fb: $e7
    ld [$0025], sp                                ; $61fc: $08 $25 $00
    add c                                         ; $61ff: $81
    jp hl                                         ; $6200: $e9


    ret nc                                        ; $6201: $d0

    rra                                           ; $6202: $1f
    push de                                       ; $6203: $d5
    rst $00                                       ; $6204: $c7
    ld l, c                                       ; $6205: $69
    inc sp                                        ; $6206: $33
    and a                                         ; $6207: $a7
    xor $ac                                       ; $6208: $ee $ac
    ld h, e                                       ; $620a: $63
    ld b, $00                                     ; $620b: $06 $00
    halt                                          ; $620d: $76
    ld a, [de]                                    ; $620e: $1a
    cp e                                          ; $620f: $bb
    ld [hl], h                                    ; $6210: $74
    call nz, $acb1                                ; $6211: $c4 $b1 $ac
    rst $30                                       ; $6214: $f7
    sub a                                         ; $6215: $97
    jp nz, $b67e                                  ; $6216: $c2 $7e $b6

    cp b                                          ; $6219: $b8
    ld [hl], e                                    ; $621a: $73
    jp c, $8943                                   ; $621b: $da $43 $89

    scf                                           ; $621e: $37
    nop                                           ; $621f: $00
    halt                                          ; $6220: $76
    ld a, [de]                                    ; $6221: $1a
    cp e                                          ; $6222: $bb
    ld [hl], h                                    ; $6223: $74
    call nz, $df95                                ; $6224: $c4 $95 $df
    ld h, l                                       ; $6227: $65
    adc l                                         ; $6228: $8d
    add sp, $7f                                   ; $6229: $e8 $7f
    sbc [hl]                                      ; $622b: $9e
    db $eb                                        ; $622c: $eb
    db $fd                                        ; $622d: $fd
    push bc                                       ; $622e: $c5
    ld d, e                                       ; $622f: $53
    ld d, d                                       ; $6230: $52
    rla                                           ; $6231: $17
    sub b                                         ; $6232: $90
    pop af                                        ; $6233: $f1
    ld hl, $00de                                  ; $6234: $21 $de $00
    halt                                          ; $6237: $76
    ld a, [de]                                    ; $6238: $1a
    cp e                                          ; $6239: $bb
    ld [hl], h                                    ; $623a: $74
    call nz, $df95                                ; $623b: $c4 $95 $df
    add hl, sp                                    ; $623e: $39
    sub d                                         ; $623f: $92
    sub b                                         ; $6240: $90
    and e                                         ; $6241: $a3
    ret c                                         ; $6242: $d8

    db $fc                                        ; $6243: $fc
    dec c                                         ; $6244: $0d
    nop                                           ; $6245: $00
    halt                                          ; $6246: $76
    ld a, [de]                                    ; $6247: $1a
    cp e                                          ; $6248: $bb
    ld [hl], h                                    ; $6249: $74
    call nz, $95d9                                ; $624a: $c4 $d9 $95
    or c                                          ; $624d: $b1
    ld c, $53                                     ; $624e: $0e $53
    ld e, d                                       ; $6250: $5a
    adc $73                                       ; $6251: $ce $73
    push hl                                       ; $6253: $e5
    ld [hl], l                                    ; $6254: $75
    add l                                         ; $6255: $85
    ld h, $e8                                     ; $6256: $26 $e8
    ld a, [$debf]                                 ; $6258: $fa $bf $de
    nop                                           ; $625b: $00
    halt                                          ; $625c: $76
    ld a, [de]                                    ; $625d: $1a
    cp e                                          ; $625e: $bb
    ld [hl], h                                    ; $625f: $74
    call nz, $df95                                ; $6260: $c4 $95 $df
    ld h, l                                       ; $6263: $65
    adc l                                         ; $6264: $8d
    add sp, $7f                                   ; $6265: $e8 $7f
    sbc [hl]                                      ; $6267: $9e
    xor e                                         ; $6268: $ab
    cp h                                          ; $6269: $bc

Jump_03e_626a:
    or h                                          ; $626a: $b4
    ld hl, sp+$3a                                 ; $626b: $f8 $3a
    rst $08                                       ; $626d: $cf
    ld e, l                                       ; $626e: $5d
    ld e, h                                       ; $626f: $5c
    ld c, d                                       ; $6270: $4a
    xor e                                         ; $6271: $ab
    inc a                                         ; $6272: $3c
    ld a, d                                       ; $6273: $7a
    jp z, Jump_000_000d                           ; $6274: $ca $0d $00

    halt                                          ; $6277: $76
    ld a, [de]                                    ; $6278: $1a

Call_03e_6279:
    cp e                                          ; $6279: $bb
    ld [hl], h                                    ; $627a: $74
    call nz, $df95                                ; $627b: $c4 $95 $df
    ld b, l                                       ; $627e: $45
    xor l                                         ; $627f: $ad
    inc hl                                        ; $6280: $23
    inc d                                         ; $6281: $14
    sbc e                                         ; $6282: $9b
    rst $18                                       ; $6283: $df
    cp c                                          ; $6284: $b9
    dec h                                         ; $6285: $25
    sbc l                                         ; $6286: $9d
    inc [hl]                                      ; $6287: $34
    dec c                                         ; $6288: $0d
    adc $ba                                       ; $6289: $ce $ba
    or e                                          ; $628b: $b3
    ld c, e                                       ; $628c: $4b
    add $a8                                       ; $628d: $c6 $a8
    scf                                           ; $628f: $37
    nop                                           ; $6290: $00
    halt                                          ; $6291: $76
    ld a, [de]                                    ; $6292: $1a
    cp e                                          ; $6293: $bb
    ld [hl], h                                    ; $6294: $74
    call nz, Call_03e_79f5                        ; $6295: $c4 $f5 $79
    rst $38                                       ; $6298: $ff
    push af                                       ; $6299: $f5
    ld a, [$817c]                                 ; $629a: $fa $7c $81
    pop de                                        ; $629d: $d1
    db $10                                        ; $629e: $10
    cp [hl]                                       ; $629f: $be
    ld a, b                                       ; $62a0: $78
    nop                                           ; $62a1: $00
    ld [hl], $f3                                  ; $62a2: $36 $f3
    cp d                                          ; $62a4: $ba
    ldh a, [$e5]                                  ; $62a5: $f0 $e5
    rla                                           ; $62a7: $17
    db $d3                                        ; $62a8: $d3
    cp a                                          ; $62a9: $bf
    xor [hl]                                      ; $62aa: $ae
    cp h                                          ; $62ab: $bc
    ld l, $cd                                     ; $62ac: $2e $cd
    ld l, e                                       ; $62ae: $6b
    ld c, e                                       ; $62af: $4b
    and h                                         ; $62b0: $a4
    sbc $00                                       ; $62b1: $de $00
    halt                                          ; $62b3: $76
    ld a, [de]                                    ; $62b4: $1a
    cp e                                          ; $62b5: $bb
    ld [hl], h                                    ; $62b6: $74
    call nz, $df95                                ; $62b7: $c4 $95 $df
    ld h, l                                       ; $62ba: $65
    adc l                                         ; $62bb: $8d
    add sp, $7f                                   ; $62bc: $e8 $7f
    sbc [hl]                                      ; $62be: $9e
    dec sp                                        ; $62bf: $3b
    cpl                                           ; $62c0: $2f
    ld c, e                                       ; $62c1: $4b
    ld l, d                                       ; $62c2: $6a
    jp Jump_000_05d7                              ; $62c3: $c3 $d7 $05


    ld a, [hl-]                                   ; $62c6: $3a
    add sp, $25                                   ; $62c7: $e8 $25
    inc l                                         ; $62c9: $2c
    xor [hl]                                      ; $62ca: $ae
    cp [hl]                                       ; $62cb: $be
    ld bc, $1a76                                  ; $62cc: $01 $76 $1a
    cp e                                          ; $62cf: $bb
    ld [hl], h                                    ; $62d0: $74
    call nz, Call_000_279d                        ; $62d1: $c4 $9d $27
    dec c                                         ; $62d4: $0d
    and c                                         ; $62d5: $a1
    adc h                                         ; $62d6: $8c
    ld d, c                                       ; $62d7: $51
    pop hl                                        ; $62d8: $e1
    ld h, e                                       ; $62d9: $63
    ld e, c                                       ; $62da: $59
    rst $20                                       ; $62db: $e7
    pop de                                        ; $62dc: $d1
    db $e4                                        ; $62dd: $e4
    inc a                                         ; $62de: $3c
    ld d, a                                       ; $62df: $57
    ld d, d                                       ; $62e0: $52
    ld d, a                                       ; $62e1: $57
    ccf                                           ; $62e2: $3f
    sub h                                         ; $62e3: $94
    ld a, d                                       ; $62e4: $7a
    inc bc                                        ; $62e5: $03
    halt                                          ; $62e6: $76
    ld a, [de]                                    ; $62e7: $1a
    cp e                                          ; $62e8: $bb
    ld [hl], h                                    ; $62e9: $74
    call nz, $fc39                                ; $62ea: $c4 $39 $fc
    push de                                       ; $62ed: $d5
    rst $18                                       ; $62ee: $df
    cp a                                          ; $62ef: $bf
    ld c, [hl]                                    ; $62f0: $4e
    sub c                                         ; $62f1: $91
    ld e, a                                       ; $62f2: $5f
    rst $20                                       ; $62f3: $e7

Jump_03e_62f4:
    ei                                            ; $62f4: $fb
    push hl                                       ; $62f5: $e5
    adc $93                                       ; $62f6: $ce $93
    add [hl]                                      ; $62f8: $86
    ld d, b                                       ; $62f9: $50
    add $a8                                       ; $62fa: $c6 $a8
    scf                                           ; $62fc: $37
    nop                                           ; $62fd: $00
    halt                                          ; $62fe: $76
    ld a, [de]                                    ; $62ff: $1a
    cp e                                          ; $6300: $bb
    ld [hl], h                                    ; $6301: $74
    ld b, [hl]                                    ; $6302: $46
    ld e, h                                       ; $6303: $5c
    rst $38                                       ; $6304: $ff
    ld b, a                                       ; $6305: $47
    sbc a                                         ; $6306: $9f
    ld h, e                                       ; $6307: $63

Jump_03e_6308:
    reti                                          ; $6308: $d9


    ld b, l                                       ; $6309: $45
    rrca                                          ; $630a: $0f
    push hl                                       ; $630b: $e5
    dec c                                         ; $630c: $0d
    nop                                           ; $630d: $00
    halt                                          ; $630e: $76
    ld a, [de]                                    ; $630f: $1a
    cp e                                          ; $6310: $bb
    ld [hl], h                                    ; $6311: $74
    call nz, $fc39                                ; $6312: $c4 $39 $fc
    push de                                       ; $6315: $d5
    rst $18                                       ; $6316: $df

jr_03e_6317:
    cp a                                          ; $6317: $bf
    ld c, [hl]                                    ; $6318: $4e
    sub c                                         ; $6319: $91
    cp a                                          ; $631a: $bf
    ld bc, $1a76                                  ; $631b: $01 $76 $1a
    cp e                                          ; $631e: $bb
    ld [hl], h                                    ; $631f: $74
    call nz, $fc39                                ; $6320: $c4 $39 $fc
    push de                                       ; $6323: $d5
    rst $18                                       ; $6324: $df
    cp a                                          ; $6325: $bf
    ld c, [hl]                                    ; $6326: $4e
    sub c                                         ; $6327: $91
    cp a                                          ; $6328: $bf
    ld bc, $1a76                                  ; $6329: $01 $76 $1a
    cp e                                          ; $632c: $bb
    ld [hl], h                                    ; $632d: $74
    call nz, $fc39                                ; $632e: $c4 $39 $fc
    push de                                       ; $6331: $d5
    rst $18                                       ; $6332: $df
    cp a                                          ; $6333: $bf
    ld c, [hl]                                    ; $6334: $4e
    sub c                                         ; $6335: $91
    cp a                                          ; $6336: $bf
    ld bc, $1a76                                  ; $6337: $01 $76 $1a
    cp e                                          ; $633a: $bb
    ld [hl], h                                    ; $633b: $74
    call nz, $ccb1                                ; $633c: $c4 $b1 $cc
    ld c, $56                                     ; $633f: $0e $56
    jr z, jr_03e_6317                             ; $6341: $28 $d4

    sbc h                                         ; $6343: $9c
    rst $20                                       ; $6344: $e7
    db $ec                                        ; $6345: $ec
    inc de                                        ; $6346: $13
    add d                                         ; $6347: $82
    ld sp, hl                                     ; $6348: $f9
    ld [de], a                                    ; $6349: $12
    push af                                       ; $634a: $f5
    ld b, $76                                     ; $634b: $06 $76
    ld a, [de]                                    ; $634d: $1a
    cp e                                          ; $634e: $bb
    ld [hl], h                                    ; $634f: $74
    call nz, $9f95                                ; $6350: $c4 $95 $9f
    add hl, hl                                    ; $6353: $29
    xor a                                         ; $6354: $af
    sbc h                                         ; $6355: $9c
    rst $20                                       ; $6356: $e7
    ld l, $75                                     ; $6357: $2e $75
    ld hl, sp-$46                                 ; $6359: $f8 $ba
    ld e, [hl]                                    ; $635b: $5e
    jr @+$1d                                      ; $635c: $18 $1b

    db $e4                                        ; $635e: $e4
    ld e, [hl]                                    ; $635f: $5e
    ld l, a                                       ; $6360: $6f
    nop                                           ; $6361: $00
    halt                                          ; $6362: $76
    ld a, [de]                                    ; $6363: $1a
    cp e                                          ; $6364: $bb
    ld [hl], h                                    ; $6365: $74
    call nz, $9f95                                ; $6366: $c4 $95 $9f
    add hl, hl                                    ; $6369: $29
    xor a                                         ; $636a: $af
    ld e, h                                       ; $636b: $5c
    cpl                                           ; $636c: $2f
    ld l, c                                       ; $636d: $69
    or c                                          ; $636e: $b1
    ld a, [hl]                                    ; $636f: $7e
    inc [hl]                                      ; $6370: $34
    db $ed                                        ; $6371: $ed
    ld l, a                                       ; $6372: $6f
    nop                                           ; $6373: $00
    halt                                          ; $6374: $76
    ld a, [de]                                    ; $6375: $1a
    cp e                                          ; $6376: $bb
    ld [hl], h                                    ; $6377: $74
    call nz, $df95                                ; $6378: $c4 $95 $df
    ld a, c                                       ; $637b: $79
    ld e, a                                       ; $637c: $5f
    jr z, jr_03e_63b5                             ; $637d: $28 $36

    ccf                                           ; $637f: $3f
    rst $08                                       ; $6380: $cf
    push af                                       ; $6381: $f5
    sub d                                         ; $6382: $92
    ld a, [$93bd]                                 ; $6383: $fa $bd $93
    rst $10                                       ; $6386: $d7
    dec de                                        ; $6387: $1b
    nop                                           ; $6388: $00
    halt                                          ; $6389: $76
    ld a, [de]                                    ; $638a: $1a
    cp e                                          ; $638b: $bb
    ld [hl], h                                    ; $638c: $74
    call nz, $9f95                                ; $638d: $c4 $95 $9f
    add hl, hl                                    ; $6390: $29
    xor a                                         ; $6391: $af
    sbc h                                         ; $6392: $9c
    rst $20                                       ; $6393: $e7
    ld a, d                                       ; $6394: $7a
    ld l, c                                       ; $6395: $69
    sub h                                         ; $6396: $94
    call nz, Call_03e_6dac                        ; $6397: $c4 $ac $6d
    cp $06                                        ; $639a: $fe $06
    halt                                          ; $639c: $76
    ld a, [de]                                    ; $639d: $1a
    cp e                                          ; $639e: $bb
    ld [hl], h                                    ; $639f: $74
    call nz, $9f95                                ; $63a0: $c4 $95 $9f
    ld a, [hl]                                    ; $63a3: $7e
    ld sp, hl                                     ; $63a4: $f9
    ld a, c                                       ; $63a5: $79
    ld l, $a5                                     ; $63a6: $2e $a5
    pop hl                                        ; $63a8: $e1
    rla                                           ; $63a9: $17
    ld [$000d], a                                 ; $63aa: $ea $0d $00
    halt                                          ; $63ad: $76
    ld a, [de]                                    ; $63ae: $1a
    cp e                                          ; $63af: $bb
    ld [hl], h                                    ; $63b0: $74
    call nz, Call_03e_5f95                        ; $63b1: $c4 $95 $5f
    ld l, h                                       ; $63b4: $6c

jr_03e_63b5:
    ld b, h                                       ; $63b5: $44
    rst $38                                       ; $63b6: $ff
    di                                            ; $63b7: $f3
    inc e                                         ; $63b8: $1c
    push de                                       ; $63b9: $d5
    ld h, h                                       ; $63ba: $64
    rst $20                                       ; $63bb: $e7
    push af                                       ; $63bc: $f5
    ld b, $76                                     ; $63bd: $06 $76
    ld a, [de]                                    ; $63bf: $1a
    cp e                                          ; $63c0: $bb
    ld [hl], h                                    ; $63c1: $74
    call nz, $9f95                                ; $63c2: $c4 $95 $9f
    add hl, hl                                    ; $63c5: $29
    xor a                                         ; $63c6: $af
    sbc h                                         ; $63c7: $9c
    rst $20                                       ; $63c8: $e7
    db $ec                                        ; $63c9: $ec
    ret nc                                        ; $63ca: $d0

    inc a                                         ; $63cb: $3c
    add $af                                       ; $63cc: $c6 $af
    dec de                                        ; $63ce: $1b
    ld sp, $dea6                                  ; $63cf: $31 $a6 $de

Jump_03e_63d2:
    nop                                           ; $63d2: $00
    halt                                          ; $63d3: $76
    ld a, [de]                                    ; $63d4: $1a
    cp e                                          ; $63d5: $bb
    ld [hl], h                                    ; $63d6: $74
    call nz, $9f95                                ; $63d7: $c4 $95 $9f

Call_03e_63da:
    add hl, hl                                    ; $63da: $29
    xor a                                         ; $63db: $af
    sbc h                                         ; $63dc: $9c
    rst $20                                       ; $63dd: $e7
    ld a, d                                       ; $63de: $7a
    ld c, c                                       ; $63df: $49
    and h                                         ; $63e0: $a4
    xor $62                                       ; $63e1: $ee $62
    dec [hl]                                      ; $63e3: $35
    ld c, [hl]                                    ; $63e4: $4e
    ld e, [hl]                                    ; $63e5: $5e
    ld l, a                                       ; $63e6: $6f
    nop                                           ; $63e7: $00
    or $af                                        ; $63e8: $f6 $af
    inc hl                                        ; $63ea: $23
    sbc d                                         ; $63eb: $9a
    call nz, $ef28                                ; $63ec: $c4 $28 $ef
    ld [hl], e                                    ; $63ef: $73
    inc l                                         ; $63f0: $2c
    or e                                          ; $63f1: $b3
    db $d3                                        ; $63f2: $d3
    sub b                                         ; $63f3: $90
    db $fd                                        ; $63f4: $fd
    ld [hl], d                                    ; $63f5: $72
    sbc [hl]                                      ; $63f6: $9e
    cp e                                          ; $63f7: $bb
    sbc b                                         ; $63f8: $98
    ld c, d                                       ; $63f9: $4a
    ld a, a                                       ; $63fa: $7f
    inc bc                                        ; $63fb: $03
    halt                                          ; $63fc: $76
    ld a, [de]                                    ; $63fd: $1a
    cp e                                          ; $63fe: $bb
    ld [hl], h                                    ; $63ff: $74
    call nz, $9f95                                ; $6400: $c4 $95 $9f
    jp nc, $6698                                  ; $6403: $d2 $98 $66

    adc e                                         ; $6406: $8b
    dec sp                                        ; $6407: $3b
    ld h, [hl]                                    ; $6408: $66
    sbc [hl]                                      ; $6409: $9e
    ld h, l                                       ; $640a: $65
    sbc l                                         ; $640b: $9d
    ld d, h                                       ; $640c: $54
    adc e                                         ; $640d: $8b
    db $e3                                        ; $640e: $e3
    ld b, d                                       ; $640f: $42
    ret                                           ; $6410: $c9


    ld h, b                                       ; $6411: $60
    db $eb                                        ; $6412: $eb
    inc [hl]                                      ; $6413: $34
    sbc a                                         ; $6414: $9f
    scf                                           ; $6415: $37
    nop                                           ; $6416: $00
    halt                                          ; $6417: $76
    ld a, [de]                                    ; $6418: $1a
    cp e                                          ; $6419: $bb
    ld [hl], h                                    ; $641a: $74
    call nz, $9f95                                ; $641b: $c4 $95 $9f
    jp nc, $6698                                  ; $641e: $d2 $98 $66

    adc e                                         ; $6421: $8b
    dec sp                                        ; $6422: $3b
    halt                                          ; $6423: $76
    sbc [hl]                                      ; $6424: $9e
    ld h, l                                       ; $6425: $65
    sbc l                                         ; $6426: $9d
    ld d, h                                       ; $6427: $54
    adc e                                         ; $6428: $8b
    db $e3                                        ; $6429: $e3
    ld b, d                                       ; $642a: $42
    ret                                           ; $642b: $c9


    ld h, b                                       ; $642c: $60
    db $eb                                        ; $642d: $eb
    inc [hl]                                      ; $642e: $34
    sbc a                                         ; $642f: $9f
    scf                                           ; $6430: $37
    nop                                           ; $6431: $00
    halt                                          ; $6432: $76
    ld a, [de]                                    ; $6433: $1a
    cp e                                          ; $6434: $bb
    ld [hl], h                                    ; $6435: $74
    call nz, $9f95                                ; $6436: $c4 $95 $9f
    jp nc, $6698                                  ; $6439: $d2 $98 $66

    adc e                                         ; $643c: $8b
    dec sp                                        ; $643d: $3b
    ld l, [hl]                                    ; $643e: $6e
    sbc [hl]                                      ; $643f: $9e
    ld h, l                                       ; $6440: $65
    sbc l                                         ; $6441: $9d
    ld d, h                                       ; $6442: $54
    adc e                                         ; $6443: $8b
    db $e3                                        ; $6444: $e3
    ld b, d                                       ; $6445: $42
    ret                                           ; $6446: $c9


    ld h, b                                       ; $6447: $60
    db $eb                                        ; $6448: $eb
    inc [hl]                                      ; $6449: $34
    sbc a                                         ; $644a: $9f
    scf                                           ; $644b: $37
    nop                                           ; $644c: $00
    halt                                          ; $644d: $76
    ld a, [de]                                    ; $644e: $1a
    cp e                                          ; $644f: $bb
    ld [hl], h                                    ; $6450: $74
    call nz, $9f95                                ; $6451: $c4 $95 $9f
    jp nc, $6698                                  ; $6454: $d2 $98 $66

    adc e                                         ; $6457: $8b
    dec sp                                        ; $6458: $3b
    ld a, [hl]                                    ; $6459: $7e
    sbc [hl]                                      ; $645a: $9e
    ld h, l                                       ; $645b: $65
    sbc l                                         ; $645c: $9d
    ld d, h                                       ; $645d: $54
    adc e                                         ; $645e: $8b
    db $e3                                        ; $645f: $e3
    ld b, d                                       ; $6460: $42
    ret                                           ; $6461: $c9


    ld h, b                                       ; $6462: $60
    db $eb                                        ; $6463: $eb
    inc [hl]                                      ; $6464: $34
    sbc a                                         ; $6465: $9f
    scf                                           ; $6466: $37
    nop                                           ; $6467: $00
    halt                                          ; $6468: $76
    ld a, [de]                                    ; $6469: $1a
    cp e                                          ; $646a: $bb
    ld [hl], h                                    ; $646b: $74
    call nz, $9f95                                ; $646c: $c4 $95 $9f
    jp nc, $6698                                  ; $646f: $d2 $98 $66

    adc e                                         ; $6472: $8b
    dec sp                                        ; $6473: $3b
    ld h, c                                       ; $6474: $61
    sbc [hl]                                      ; $6475: $9e
    ld h, l                                       ; $6476: $65
    sbc l                                         ; $6477: $9d
    ld d, h                                       ; $6478: $54
    adc e                                         ; $6479: $8b
    db $e3                                        ; $647a: $e3
    ld b, d                                       ; $647b: $42
    ret                                           ; $647c: $c9


    ld h, b                                       ; $647d: $60
    db $eb                                        ; $647e: $eb
    inc [hl]                                      ; $647f: $34
    sbc a                                         ; $6480: $9f
    scf                                           ; $6481: $37
    nop                                           ; $6482: $00
    halt                                          ; $6483: $76
    ld a, [de]                                    ; $6484: $1a
    cp e                                          ; $6485: $bb
    ld [hl], h                                    ; $6486: $74
    call nz, $9f95                                ; $6487: $c4 $95 $9f
    jp nc, $6698                                  ; $648a: $d2 $98 $66

    adc e                                         ; $648d: $8b
    dec sp                                        ; $648e: $3b
    ld [hl], c                                    ; $648f: $71
    sbc [hl]                                      ; $6490: $9e
    ld h, l                                       ; $6491: $65
    sbc l                                         ; $6492: $9d
    ld d, h                                       ; $6493: $54
    adc e                                         ; $6494: $8b
    db $e3                                        ; $6495: $e3
    ld b, d                                       ; $6496: $42
    ret                                           ; $6497: $c9


    ld h, b                                       ; $6498: $60
    db $eb                                        ; $6499: $eb
    inc [hl]                                      ; $649a: $34
    sbc a                                         ; $649b: $9f
    scf                                           ; $649c: $37
    nop                                           ; $649d: $00
    halt                                          ; $649e: $76
    ld a, [de]                                    ; $649f: $1a
    cp e                                          ; $64a0: $bb
    ld [hl], h                                    ; $64a1: $74
    call nz, $fc39                                ; $64a2: $c4 $39 $fc
    push de                                       ; $64a5: $d5
    rst $18                                       ; $64a6: $df
    cp a                                          ; $64a7: $bf
    ld c, [hl]                                    ; $64a8: $4e
    sub c                                         ; $64a9: $91
    cp a                                          ; $64aa: $bf
    ld bc, $1a76                                  ; $64ab: $01 $76 $1a
    cp e                                          ; $64ae: $bb
    ld [hl], h                                    ; $64af: $74
    call nz, $fc39                                ; $64b0: $c4 $39 $fc
    push de                                       ; $64b3: $d5
    rst $18                                       ; $64b4: $df
    cp a                                          ; $64b5: $bf
    ld c, [hl]                                    ; $64b6: $4e
    sub c                                         ; $64b7: $91
    cp a                                          ; $64b8: $bf
    ld bc, $1a76                                  ; $64b9: $01 $76 $1a
    cp e                                          ; $64bc: $bb
    ld [hl], h                                    ; $64bd: $74
    call nz, $fc39                                ; $64be: $c4 $39 $fc
    push de                                       ; $64c1: $d5
    rst $18                                       ; $64c2: $df
    cp a                                          ; $64c3: $bf
    ld c, [hl]                                    ; $64c4: $4e
    sub c                                         ; $64c5: $91
    cp a                                          ; $64c6: $bf
    ld bc, $1a76                                  ; $64c7: $01 $76 $1a
    cp e                                          ; $64ca: $bb
    ld [hl], h                                    ; $64cb: $74
    call nz, $fc39                                ; $64cc: $c4 $39 $fc
    push de                                       ; $64cf: $d5
    rst $18                                       ; $64d0: $df
    cp a                                          ; $64d1: $bf
    ld c, [hl]                                    ; $64d2: $4e
    sub c                                         ; $64d3: $91
    cp a                                          ; $64d4: $bf
    ld bc, $1a76                                  ; $64d5: $01 $76 $1a
    cp e                                          ; $64d8: $bb
    ld [hl], h                                    ; $64d9: $74
    call nz, $fc39                                ; $64da: $c4 $39 $fc
    push de                                       ; $64dd: $d5
    rst $18                                       ; $64de: $df
    cp a                                          ; $64df: $bf
    ld c, [hl]                                    ; $64e0: $4e
    sub c                                         ; $64e1: $91
    cp a                                          ; $64e2: $bf
    ld bc, $1a76                                  ; $64e3: $01 $76 $1a
    cp e                                          ; $64e6: $bb
    ld [hl], h                                    ; $64e7: $74
    call nz, $fc39                                ; $64e8: $c4 $39 $fc
    push de                                       ; $64eb: $d5
    rst $18                                       ; $64ec: $df
    cp a                                          ; $64ed: $bf
    ld c, [hl]                                    ; $64ee: $4e
    sub c                                         ; $64ef: $91
    cp a                                          ; $64f0: $bf
    ld bc, $1a76                                  ; $64f1: $01 $76 $1a
    cp e                                          ; $64f4: $bb
    ld [hl], h                                    ; $64f5: $74
    call nz, $ccb1                                ; $64f6: $c4 $b1 $cc
    ld d, e                                       ; $64f9: $53
    jp $c137                                      ; $64fa: $c3 $37 $c1


    sbc h                                         ; $64fd: $9c
    rst $20                                       ; $64fe: $e7
    adc $2d                                       ; $64ff: $ce $2d
    dec l                                         ; $6501: $2d
    jp nz, Jump_000_066c                          ; $6502: $c2 $6c $06

    add $0d                                       ; $6505: $c6 $0d
    nop                                           ; $6507: $00
    halt                                          ; $6508: $76
    ld a, [de]                                    ; $6509: $1a
    cp e                                          ; $650a: $bb
    ld [hl], h                                    ; $650b: $74
    call nz, $fc39                                ; $650c: $c4 $39 $fc
    sbc c                                         ; $650f: $99
    ld a, [c]                                     ; $6510: $f2
    jp z, $de55                                   ; $6511: $ca $55 $de

    ret c                                         ; $6514: $d8

    db $fc                                        ; $6515: $fc
    dec c                                         ; $6516: $0d
    nop                                           ; $6517: $00
    halt                                          ; $6518: $76
    ld a, [de]                                    ; $6519: $1a
    cp e                                          ; $651a: $bb
    ld [hl], h                                    ; $651b: $74
    call nz, $fc39                                ; $651c: $c4 $39 $fc
    sbc c                                         ; $651f: $99
    ld a, [c]                                     ; $6520: $f2
    jp z, $de55                                   ; $6521: $ca $55 $de

    ret c                                         ; $6524: $d8

    db $fc                                        ; $6525: $fc
    dec c                                         ; $6526: $0d
    nop                                           ; $6527: $00
    halt                                          ; $6528: $76
    ld a, [de]                                    ; $6529: $1a
    cp e                                          ; $652a: $bb
    ld [hl], h                                    ; $652b: $74
    call nz, Call_000_2cb1                        ; $652c: $c4 $b1 $2c
    ldh [$b5], a                                  ; $652f: $e0 $b5
    sub l                                         ; $6531: $95
    sub d                                         ; $6532: $92
    dec bc                                        ; $6533: $0b
    dec h                                         ; $6534: $25
    add e                                         ; $6535: $83
    xor l                                         ; $6536: $ad
    db $d3                                        ; $6537: $d3
    ld a, h                                       ; $6538: $7c
    sbc $00                                       ; $6539: $de $00
    halt                                          ; $653b: $76
    ld a, [de]                                    ; $653c: $1a
    cp e                                          ; $653d: $bb
    ld [hl], h                                    ; $653e: $74
    call nz, $ecb1                                ; $653f: $c4 $b1 $ec
    ld a, h                                       ; $6542: $7c
    xor h                                         ; $6543: $ac
    ld d, b                                       ; $6544: $50
    ldh a, [$3d]                                  ; $6545: $f0 $3d
    dec h                                         ; $6547: $25
    ld l, a                                       ; $6548: $6f
    nop                                           ; $6549: $00
    halt                                          ; $654a: $76
    ld a, [de]                                    ; $654b: $1a
    cp e                                          ; $654c: $bb
    ld [hl], h                                    ; $654d: $74
    call nz, $acb1                                ; $654e: $c4 $b1 $ac
    sub a                                         ; $6551: $97
    ld [hl-], a                                   ; $6552: $32
    rst $20                                       ; $6553: $e7
    add hl, sp                                    ; $6554: $39
    inc de                                        ; $6555: $13
    ld l, h                                       ; $6556: $6c
    and $f5                                       ; $6557: $e6 $f5
    ld b, $76                                     ; $6559: $06 $76
    ld a, [de]                                    ; $655b: $1a
    cp e                                          ; $655c: $bb
    ld [hl], h                                    ; $655d: $74
    push de                                       ; $655e: $d5
    adc [hl]                                      ; $655f: $8e
    ld a, [c]                                     ; $6560: $f2
    di                                            ; $6561: $f3
    sbc h                                         ; $6562: $9c
    ld a, l                                       ; $6563: $7d
    ld b, d                                       ; $6564: $42
    jr nc, @+$61                                  ; $6565: $30 $5f

    and d                                         ; $6567: $a2
    sbc $00                                       ; $6568: $de $00
    halt                                          ; $656a: $76
    ld a, [de]                                    ; $656b: $1a
    cp e                                          ; $656c: $bb
    ld [hl], h                                    ; $656d: $74
    sbc [hl]                                      ; $656e: $9e
    jr jr_03e_6596                                ; $656f: $18 $25

    rst $20                                       ; $6571: $e7
    cp c                                          ; $6572: $b9
    ld a, [c]                                     ; $6573: $f2
    inc sp                                        ; $6574: $33
    rst $18                                       ; $6575: $df
    ld sp, hl                                     ; $6576: $f9
    add e                                         ; $6577: $83
    ld a, a                                       ; $6578: $7f
    sbc [hl]                                      ; $6579: $9e
    or e                                          ; $657a: $b3
    ld a, a                                       ; $657b: $7f
    ld c, b                                       ; $657c: $48
    sbc d                                         ; $657d: $9a
    cp a                                          ; $657e: $bf
    ld bc, $1a76                                  ; $657f: $01 $76 $1a
    cp e                                          ; $6582: $bb
    ld [hl], h                                    ; $6583: $74
    call nz, Call_000_2cb1                        ; $6584: $c4 $b1 $2c
    ld a, h                                       ; $6587: $7c
    ld l, l                                       ; $6588: $6d
    and l                                         ; $6589: $a5
    db $e4                                        ; $658a: $e4
    inc a                                         ; $658b: $3c
    res 1, [hl]                                   ; $658c: $cb $8e
    ld e, c                                       ; $658e: $59

Call_03e_658f:
    ret c                                         ; $658f: $d8

    inc [hl]                                      ; $6590: $34
    ld l, a                                       ; $6591: $6f
    nop                                           ; $6592: $00
    halt                                          ; $6593: $76
    ld a, [de]                                    ; $6594: $1a
    cp e                                          ; $6595: $bb

jr_03e_6596:
    ld [hl], h                                    ; $6596: $74

Call_03e_6597:
    call nz, Call_000_2cb1                        ; $6597: $c4 $b1 $2c
    ld a, h                                       ; $659a: $7c
    ld l, l                                       ; $659b: $6d
    and l                                         ; $659c: $a5
    db $e4                                        ; $659d: $e4
    inc a                                         ; $659e: $3c
    res 1, [hl]                                   ; $659f: $cb $8e
    ld e, l                                       ; $65a1: $5d
    ret c                                         ; $65a2: $d8

    inc [hl]                                      ; $65a3: $34
    ld l, a                                       ; $65a4: $6f
    nop                                           ; $65a5: $00
    halt                                          ; $65a6: $76
    ld a, [de]                                    ; $65a7: $1a
    cp e                                          ; $65a8: $bb
    ld [hl], h                                    ; $65a9: $74
    call nz, Call_000_2cb1                        ; $65aa: $c4 $b1 $2c
    ld a, h                                       ; $65ad: $7c
    ld l, l                                       ; $65ae: $6d
    and l                                         ; $65af: $a5
    db $e4                                        ; $65b0: $e4
    inc a                                         ; $65b1: $3c
    res 1, [hl]                                   ; $65b2: $cb $8e
    ld e, e                                       ; $65b4: $5b
    ret c                                         ; $65b5: $d8

    inc [hl]                                      ; $65b6: $34
    ld l, a                                       ; $65b7: $6f
    nop                                           ; $65b8: $00
    halt                                          ; $65b9: $76
    ld a, [de]                                    ; $65ba: $1a
    cp e                                          ; $65bb: $bb
    ld [hl], h                                    ; $65bc: $74
    call nz, Call_000_2cb1                        ; $65bd: $c4 $b1 $2c
    ld a, h                                       ; $65c0: $7c
    ld l, l                                       ; $65c1: $6d
    and l                                         ; $65c2: $a5
    db $e4                                        ; $65c3: $e4
    inc a                                         ; $65c4: $3c
    res 1, [hl]                                   ; $65c5: $cb $8e
    ld e, a                                       ; $65c7: $5f
    ret c                                         ; $65c8: $d8

    inc [hl]                                      ; $65c9: $34
    ld l, a                                       ; $65ca: $6f
    nop                                           ; $65cb: $00
    halt                                          ; $65cc: $76
    ld a, [de]                                    ; $65cd: $1a
    cp e                                          ; $65ce: $bb
    ld [hl], h                                    ; $65cf: $74
    call nz, Call_000_2cb1                        ; $65d0: $c4 $b1 $2c
    ld a, h                                       ; $65d3: $7c
    ld l, l                                       ; $65d4: $6d
    and l                                         ; $65d5: $a5
    db $e4                                        ; $65d6: $e4
    inc a                                         ; $65d7: $3c
    bit 1, [hl]                                   ; $65d8: $cb $4e
    ld e, b                                       ; $65da: $58
    ret c                                         ; $65db: $d8

    inc [hl]                                      ; $65dc: $34
    ld l, a                                       ; $65dd: $6f
    nop                                           ; $65de: $00
    halt                                          ; $65df: $76
    ld a, [de]                                    ; $65e0: $1a
    cp e                                          ; $65e1: $bb
    ld [hl], h                                    ; $65e2: $74
    call nz, Call_000_2cb1                        ; $65e3: $c4 $b1 $2c
    ld a, h                                       ; $65e6: $7c
    ld l, l                                       ; $65e7: $6d
    and l                                         ; $65e8: $a5
    db $e4                                        ; $65e9: $e4
    inc a                                         ; $65ea: $3c
    bit 1, [hl]                                   ; $65eb: $cb $4e
    ld e, h                                       ; $65ed: $5c
    ret c                                         ; $65ee: $d8

    inc [hl]                                      ; $65ef: $34
    ld l, a                                       ; $65f0: $6f
    nop                                           ; $65f1: $00
    halt                                          ; $65f2: $76
    ld a, [de]                                    ; $65f3: $1a
    cp e                                          ; $65f4: $bb

Call_03e_65f5:
    ld [hl], h                                    ; $65f5: $74
    call nz, Call_000_2cb1                        ; $65f6: $c4 $b1 $2c
    ld a, h                                       ; $65f9: $7c
    ld l, l                                       ; $65fa: $6d
    and l                                         ; $65fb: $a5
    db $e4                                        ; $65fc: $e4
    inc a                                         ; $65fd: $3c
    bit 1, [hl]                                   ; $65fe: $cb $4e
    ld e, d                                       ; $6600: $5a
    ret c                                         ; $6601: $d8

    inc [hl]                                      ; $6602: $34
    ld l, a                                       ; $6603: $6f
    nop                                           ; $6604: $00
    halt                                          ; $6605: $76
    ld a, [de]                                    ; $6606: $1a
    cp e                                          ; $6607: $bb
    ld [hl], h                                    ; $6608: $74
    call nz, Call_03e_5f95                        ; $6609: $c4 $95 $5f
    ld l, h                                       ; $660c: $6c
    ld b, h                                       ; $660d: $44
    rst $38                                       ; $660e: $ff
    di                                            ; $660f: $f3
    inc l                                         ; $6610: $2c
    db $eb                                        ; $6611: $eb
    db $ed                                        ; $6612: $ed
    db $e4                                        ; $6613: $e4
    pop de                                        ; $6614: $d1
    ld d, e                                       ; $6615: $53
    ld a, [c]                                     ; $6616: $f2
    ld b, $76                                     ; $6617: $06 $76
    ld a, [de]                                    ; $6619: $1a
    cp e                                          ; $661a: $bb
    ld [hl], h                                    ; $661b: $74
    call nz, $9f95                                ; $661c: $c4 $95 $9f
    add hl, hl                                    ; $661f: $29
    xor a                                         ; $6620: $af
    sbc h                                         ; $6621: $9c
    rst $20                                       ; $6622: $e7
    db $ec                                        ; $6623: $ec
    sbc e                                         ; $6624: $9b
    add $94                                       ; $6625: $c6 $94
    or $f3                                        ; $6627: $f6 $f3
    ld e, h                                       ; $6629: $5c
    ld sp, hl                                     ; $662a: $f9
    push af                                       ; $662b: $f5
    ld a, c                                       ; $662c: $79
    xor b                                         ; $662d: $a8
    db $fd                                        ; $662e: $fd
    dec c                                         ; $662f: $0d
    nop                                           ; $6630: $00
    halt                                          ; $6631: $76
    ld a, [de]                                    ; $6632: $1a
    cp e                                          ; $6633: $bb
    ld [hl], h                                    ; $6634: $74
    call nz, $9f95                                ; $6635: $c4 $95 $9f
    dec e                                         ; $6638: $1d
    ld d, [hl]                                    ; $6639: $56
    ld d, e                                       ; $663a: $53
    ld l, d                                       ; $663b: $6a
    adc d                                         ; $663c: $8a
    call Call_000_00df                            ; $663d: $cd $df $00
    halt                                          ; $6640: $76
    ld a, [de]                                    ; $6641: $1a
    cp e                                          ; $6642: $bb
    ld [hl], h                                    ; $6643: $74
    call nz, $df95                                ; $6644: $c4 $95 $df
    reti                                          ; $6647: $d9


    xor l                                         ; $6648: $ad
    ld d, e                                       ; $6649: $53
    ld e, d                                       ; $664a: $5a
    ld b, [hl]                                    ; $664b: $46
    sbc d                                         ; $664c: $9a
    cp a                                          ; $664d: $bf
    ld bc, $1a76                                  ; $664e: $01 $76 $1a
    cp e                                          ; $6651: $bb
    ld [hl], h                                    ; $6652: $74
    call nz, $df95                                ; $6653: $c4 $95 $df
    reti                                          ; $6656: $d9


    xor l                                         ; $6657: $ad
    ld d, e                                       ; $6658: $53
    ld e, d                                       ; $6659: $5a
    ld b, [hl]                                    ; $665a: $46
    sbc d                                         ; $665b: $9a
    cp a                                          ; $665c: $bf
    ld bc, $1a76                                  ; $665d: $01 $76 $1a
    cp e                                          ; $6660: $bb
    ld [hl], h                                    ; $6661: $74
    call nz, $ccb1                                ; $6662: $c4 $b1 $cc
    ld d, e                                       ; $6665: $53
    jp $c137                                      ; $6666: $c3 $37 $c1


    sbc h                                         ; $6669: $9c
    rst $20                                       ; $666a: $e7
    jp z, $942f                                   ; $666b: $ca $2f $94

    xor h                                         ; $666e: $ac
    and [hl]                                      ; $666f: $a6
    and [hl]                                      ; $6670: $a6
    db $fc                                        ; $6671: $fc
    ld a, [$f398]                                 ; $6672: $fa $98 $f3
    ld [de], a                                    ; $6675: $12
    rra                                           ; $6676: $1f
    ld a, [$6e52]                                 ; $6677: $fa $52 $6e
    nop                                           ; $667a: $00
    halt                                          ; $667b: $76
    ld a, [de]                                    ; $667c: $1a
    cp e                                          ; $667d: $bb
    ld [hl], h                                    ; $667e: $74
    call nz, $9f95                                ; $667f: $c4 $95 $9f
    add hl, hl                                    ; $6682: $29
    xor a                                         ; $6683: $af
    sbc h                                         ; $6684: $9c
    rst $20                                       ; $6685: $e7
    db $ec                                        ; $6686: $ec
    inc [hl]                                      ; $6687: $34
    ld a, [hl-]                                   ; $6688: $3a
    rst $18                                       ; $6689: $df
    ld d, d                                       ; $668a: $52
    rst $10                                       ; $668b: $d7
    rst $00                                       ; $668c: $c7
    ld b, c                                       ; $668d: $41
    ld d, b                                       ; $668e: $50
    and c                                         ; $668f: $a1
    sbc $00                                       ; $6690: $de $00
    halt                                          ; $6692: $76
    ld a, [de]                                    ; $6693: $1a
    cp e                                          ; $6694: $bb
    ld [hl], h                                    ; $6695: $74
    call nz, $ccb1                                ; $6696: $c4 $b1 $cc
    ld d, e                                       ; $6699: $53
    jp $c137                                      ; $669a: $c3 $37 $c1


    sbc h                                         ; $669d: $9c
    rst $20                                       ; $669e: $e7
    jp z, Jump_03e_794f                           ; $669f: $ca $4f $79

    ld [hl], b                                    ; $66a2: $70
    jp z, $202f                                   ; $66a3: $ca $2f $20

    db $eb                                        ; $66a6: $eb
    ld l, d                                       ; $66a7: $6a
    and c                                         ; $66a8: $a1
    push af                                       ; $66a9: $f5
    ld b, $76                                     ; $66aa: $06 $76
    ld a, [de]                                    ; $66ac: $1a
    cp e                                          ; $66ad: $bb
    ld [hl], h                                    ; $66ae: $74
    call nz, $9f95                                ; $66af: $c4 $95 $9f
    add hl, hl                                    ; $66b2: $29
    xor a                                         ; $66b3: $af
    sbc h                                         ; $66b4: $9c
    rst $20                                       ; $66b5: $e7
    ld [bc], a                                    ; $66b6: $02
    jp nc, Jump_03e_44b4                          ; $66b7: $d2 $b4 $44

    ld [$000d], a                                 ; $66ba: $ea $0d $00
    halt                                          ; $66bd: $76
    ld a, [de]                                    ; $66be: $1a
    cp e                                          ; $66bf: $bb
    ld [hl], h                                    ; $66c0: $74
    call nz, $ccb1                                ; $66c1: $c4 $b1 $cc
    ld d, e                                       ; $66c4: $53
    jp $c137                                      ; $66c5: $c3 $37 $c1


    sbc h                                         ; $66c8: $9c
    ld h, a                                       ; $66c9: $67
    ld e, c                                       ; $66ca: $59
    jr z, jr_03e_6726                             ; $66cb: $28 $59

    ld c, l                                       ; $66cd: $4d
    ld c, l                                       ; $66ce: $4d
    reti                                          ; $66cf: $d9


    dec h                                         ; $66d0: $25
    xor [hl]                                      ; $66d1: $ae
    adc c                                         ; $66d2: $89
    or b                                          ; $66d3: $b0
    sub h                                         ; $66d4: $94
    dec de                                        ; $66d5: $1b
    nop                                           ; $66d6: $00
    halt                                          ; $66d7: $76
    ld a, [de]                                    ; $66d8: $1a
    cp e                                          ; $66d9: $bb
    ld [hl], h                                    ; $66da: $74
    call nz, $ccb1                                ; $66db: $c4 $b1 $cc
    ld d, e                                       ; $66de: $53
    jp $c137                                      ; $66df: $c3 $37 $c1


    sbc h                                         ; $66e2: $9c
    ld h, a                                       ; $66e3: $67
    ld e, c                                       ; $66e4: $59
    jr z, @+$5b                                   ; $66e5: $28 $59

    ld c, l                                       ; $66e7: $4d
    ld c, l                                       ; $66e8: $4d
    ld e, c                                       ; $66e9: $59
    jr nz, jr_03e_676a                            ; $66ea: $20 $7e

    ret z                                         ; $66ec: $c8

    dec de                                        ; $66ed: $1b

jr_03e_66ee:
    nop                                           ; $66ee: $00
    halt                                          ; $66ef: $76
    ld a, [de]                                    ; $66f0: $1a
    cp e                                          ; $66f1: $bb
    ld [hl], h                                    ; $66f2: $74
    call nz, $ccb1                                ; $66f3: $c4 $b1 $cc
    ld d, e                                       ; $66f6: $53
    jp $c137                                      ; $66f7: $c3 $37 $c1


    sbc h                                         ; $66fa: $9c
    ld h, a                                       ; $66fb: $67
    ld e, c                                       ; $66fc: $59
    jr z, jr_03e_6758                             ; $66fd: $28 $59

    ld c, l                                       ; $66ff: $4d
    ld c, l                                       ; $6700: $4d
    ld e, c                                       ; $6701: $59
    ld h, b                                       ; $6702: $60
    jr z, jr_03e_66ee                             ; $6703: $28 $e9

    ld [c], a                                     ; $6705: $e2
    dec c                                         ; $6706: $0d
    nop                                           ; $6707: $00
    halt                                          ; $6708: $76
    ld a, [de]                                    ; $6709: $1a
    cp e                                          ; $670a: $bb
    ld [hl], h                                    ; $670b: $74
    call nz, $dc39                                ; $670c: $c4 $39 $dc
    sub a                                         ; $670f: $97
    ld a, [$554d]                                 ; $6710: $fa $4d $55
    cp h                                          ; $6713: $bc
    ld bc, $1a76                                  ; $6714: $01 $76 $1a
    cp e                                          ; $6717: $bb
    ld [hl], h                                    ; $6718: $74
    call nz, $9f95                                ; $6719: $c4 $95 $9f
    add hl, hl                                    ; $671c: $29
    xor a                                         ; $671d: $af
    sbc h                                         ; $671e: $9c
    rst $20                                       ; $671f: $e7
    ld l, $93                                     ; $6720: $2e $93
    ld b, a                                       ; $6722: $47
    xor l                                         ; $6723: $ad
    ld c, [hl]                                    ; $6724: $4e
    xor c                                         ; $6725: $a9

jr_03e_6726:
    rst $18                                       ; $6726: $df
    or h                                          ; $6727: $b4
    ld b, h                                       ; $6728: $44
    ld [$000d], a                                 ; $6729: $ea $0d $00
    halt                                          ; $672c: $76
    ld a, [de]                                    ; $672d: $1a
    cp e                                          ; $672e: $bb
    ld [hl], b                                    ; $672f: $70
    call nz, Call_000_2cb1                        ; $6730: $c4 $b1 $2c
    ldh a, [$8b]                                  ; $6733: $f0 $8b
    dec l                                         ; $6735: $2d
    adc $73                                       ; $6736: $ce $73
    dec h                                         ; $6738: $25
    ld [hl], l                                    ; $6739: $75
    sub a                                         ; $673a: $97
    ld c, c                                       ; $673b: $49
    ld d, [hl]                                    ; $673c: $56
    inc sp                                        ; $673d: $33
    push af                                       ; $673e: $f5
    ld b, $76                                     ; $673f: $06 $76
    ld a, [de]                                    ; $6741: $1a
    cp e                                          ; $6742: $bb
    ld [hl], h                                    ; $6743: $74
    call nz, $fc39                                ; $6744: $c4 $39 $fc
    push de                                       ; $6747: $d5
    rst $18                                       ; $6748: $df
    cp a                                          ; $6749: $bf
    ld c, [hl]                                    ; $674a: $4e
    sub c                                         ; $674b: $91
    sbc a                                         ; $674c: $9f
    ld h, a                                       ; $674d: $67
    rst $20                                       ; $674e: $e7
    ei                                            ; $674f: $fb
    push hl                                       ; $6750: $e5
    inc a                                         ; $6751: $3c
    ld [hl], a                                    ; $6752: $77
    sbc [hl]                                      ; $6753: $9e
    inc [hl]                                      ; $6754: $34
    add h                                         ; $6755: $84
    ld [hl-], a                                   ; $6756: $32
    ld b, [hl]                                    ; $6757: $46

jr_03e_6758:
    cp l                                          ; $6758: $bd
    ld bc, $1a76                                  ; $6759: $01 $76 $1a
    cp e                                          ; $675c: $bb
    ld [hl], h                                    ; $675d: $74
    call nz, $acb1                                ; $675e: $c4 $b1 $ac
    rla                                           ; $6761: $17
    ld a, [$b8aa]                                 ; $6762: $fa $aa $b8
    cp [hl]                                       ; $6765: $be
    adc [hl]                                      ; $6766: $8e
    dec d                                         ; $6767: $15
    adc $ba                                       ; $6768: $ce $ba

jr_03e_676a:
    res 0, h                                      ; $676a: $cb $84
    cp d                                          ; $676c: $ba
    sbc $ee                                       ; $676d: $de $ee
    dec h                                         ; $676f: $25
    and [hl]                                      ; $6770: $a6
    sbc $00                                       ; $6771: $de $00
    halt                                          ; $6773: $76
    ld a, [de]                                    ; $6774: $1a
    cp e                                          ; $6775: $bb
    ld [hl], h                                    ; $6776: $74
    call nz, Call_03e_5f95                        ; $6777: $c4 $95 $5f
    ld c, d                                       ; $677a: $4a
    dec hl                                        ; $677b: $2b
    push hl                                       ; $677c: $e5
    rst $20                                       ; $677d: $e7
    ld e, c                                       ; $677e: $59
    halt                                          ; $677f: $76
    pop de                                        ; $6780: $d1
    ld b, e                                       ; $6781: $43
    ld a, c                                       ; $6782: $79
    inc bc                                        ; $6783: $03
    halt                                          ; $6784: $76
    ld a, [de]                                    ; $6785: $1a
    cp e                                          ; $6786: $bb
    ld [hl], h                                    ; $6787: $74
    call nz, $acb1                                ; $6788: $c4 $b1 $ac
    ld b, d                                       ; $678b: $42
    adc l                                         ; $678c: $8d
    ld [hl], $1d                                  ; $678d: $36 $1d
    ld d, a                                       ; $678f: $57
    ld [hl], d                                    ; $6790: $72
    sbc [hl]                                      ; $6791: $9e
    or e                                          ; $6792: $b3
    ld c, a                                       ; $6793: $4f
    ld [$4be6], sp                                ; $6794: $08 $e6 $4b
    call nc, $001b                                ; $6797: $d4 $1b $00
    halt                                          ; $679a: $76
    ld a, [de]                                    ; $679b: $1a
    cp e                                          ; $679c: $bb
    ld [hl], h                                    ; $679d: $74
    call nz, $ccb1                                ; $679e: $c4 $b1 $cc
    and a                                         ; $67a1: $a7
    call nc, $a62d                                ; $67a2: $d4 $2d $a6
    or h                                          ; $67a5: $b4
    sbc h                                         ; $67a6: $9c
    rst $20                                       ; $67a7: $e7
    ld c, d                                       ; $67a8: $4a
    ld [$b04c], a                                 ; $67a9: $ea $4c $b0
    sbc c                                         ; $67ac: $99
    call nc, $ee79                                ; $67ad: $d4 $79 $ee
    inc a                                         ; $67b0: $3c
    or c                                          ; $67b1: $b1
    ld d, [hl]                                    ; $67b2: $56
    ld d, a                                       ; $67b3: $57
    scf                                           ; $67b4: $37
    db $f4                                        ; $67b5: $f4
    add hl, hl                                    ; $67b6: $29
    scf                                           ; $67b7: $37
    nop                                           ; $67b8: $00
    halt                                          ; $67b9: $76
    ld a, [de]                                    ; $67ba: $1a
    cp e                                          ; $67bb: $bb
    ld [hl], h                                    ; $67bc: $74
    call nz, Call_03e_5f95                        ; $67bd: $c4 $95 $5f
    ldh [$97], a                                  ; $67c0: $e0 $97
    sbc a                                         ; $67c2: $9f
    ret                                           ; $67c3: $c9


    ld a, [$9c00]                                 ; $67c4: $fa $00 $9c
    rst $20                                       ; $67c7: $e7
    adc $13                                       ; $67c8: $ce $13
    ld l, e                                       ; $67ca: $6b
    ld [hl], l                                    ; $67cb: $75
    ld [hl], l                                    ; $67cc: $75
    ld b, e                                       ; $67cd: $43
    sbc a                                         ; $67ce: $9f
    ld [hl], d                                    ; $67cf: $72
    inc bc                                        ; $67d0: $03
    halt                                          ; $67d1: $76
    ld a, [de]                                    ; $67d2: $1a
    cp e                                          ; $67d3: $bb
    ld [hl], h                                    ; $67d4: $74
    call nz, $dc39                                ; $67d5: $c4 $39 $dc
    ld c, e                                       ; $67d8: $4b
    db $fd                                        ; $67d9: $fd
    jp nc, $9e72                                  ; $67da: $d2 $72 $9e

    and e                                         ; $67dd: $a3
    sbc d                                         ; $67de: $9a
    db $ec                                        ; $67df: $ec
    cp h                                          ; $67e0: $bc
    sbc $00                                       ; $67e1: $de $00
    halt                                          ; $67e3: $76
    ld a, [de]                                    ; $67e4: $1a
    cp e                                          ; $67e5: $bb
    ld [hl], h                                    ; $67e6: $74
    call nz, $ccb1                                ; $67e7: $c4 $b1 $cc
    ld d, e                                       ; $67ea: $53
    jp $c137                                      ; $67eb: $c3 $37 $c1


    sbc h                                         ; $67ee: $9c
    rst $20                                       ; $67ef: $e7
    adc $6d                                       ; $67f0: $ce $6d
    push bc                                       ; $67f2: $c5
    inc b                                         ; $67f3: $04
    ld l, a                                       ; $67f4: $6f
    nop                                           ; $67f5: $00
    halt                                          ; $67f6: $76
    ld a, [de]                                    ; $67f7: $1a
    cp e                                          ; $67f8: $bb
    ld [hl], h                                    ; $67f9: $74
    call nz, $ecb1                                ; $67fa: $c4 $b1 $ec
    inc a                                         ; $67fd: $3c
    ld a, c                                       ; $67fe: $79
    ld e, h                                       ; $67ff: $5c
    rst $28                                       ; $6800: $ef
    xor h                                         ; $6801: $ac
    jp hl                                         ; $6802: $e9


    ld d, e                                       ; $6803: $53
    ld l, [hl]                                    ; $6804: $6e
    nop                                           ; $6805: $00
    halt                                          ; $6806: $76
    ld a, [de]                                    ; $6807: $1a
    cp e                                          ; $6808: $bb
    ld [hl], h                                    ; $6809: $74
    call nz, $9f95                                ; $680a: $c4 $95 $9f
    ld a, [hl]                                    ; $680d: $7e
    ld sp, hl                                     ; $680e: $f9
    ld a, c                                       ; $680f: $79
    ld l, $94                                     ; $6810: $2e $94
    xor h                                         ; $6812: $ac
    and [hl]                                      ; $6813: $a6
    and [hl]                                      ; $6814: $a6
    ld d, b                                       ; $6815: $50
    ld l, a                                       ; $6816: $6f
    nop                                           ; $6817: $00
    halt                                          ; $6818: $76
    ld a, [de]                                    ; $6819: $1a
    cp e                                          ; $681a: $bb
    ld [hl], h                                    ; $681b: $74
    call nz, Call_03e_5f95                        ; $681c: $c4 $95 $5f
    ldh [$97], a                                  ; $681f: $e0 $97
    sbc a                                         ; $6821: $9f
    rst $20                                       ; $6822: $e7
    ld c, d                                       ; $6823: $4a
    ld [$652e], a                                 ; $6824: $ea $2e $65
    sub h                                         ; $6827: $94
    adc a                                         ; $6828: $8f
    xor c                                         ; $6829: $a9
    scf                                           ; $682a: $37
    nop                                           ; $682b: $00
    halt                                          ; $682c: $76
    ld a, [de]                                    ; $682d: $1a
    cp e                                          ; $682e: $bb
    ld [hl], h                                    ; $682f: $74
    call nz, $d795                                ; $6830: $c4 $95 $d7
    push af                                       ; $6833: $f5
    ld sp, hl                                     ; $6834: $f9
    cp $75                                        ; $6835: $fe $75
    adc d                                         ; $6837: $8a
    cp h                                          ; $6838: $bc
    sbc $00                                       ; $6839: $de $00
    halt                                          ; $683b: $76
    ld a, [de]                                    ; $683c: $1a
    cp e                                          ; $683d: $bb
    ld [hl], h                                    ; $683e: $74
    call nz, $9f95                                ; $683f: $c4 $95 $9f
    ld a, [hl]                                    ; $6842: $7e
    ld sp, hl                                     ; $6843: $f9
    add l                                         ; $6844: $85
    cpl                                           ; $6845: $2f
    cp a                                          ; $6846: $bf
    sbc d                                         ; $6847: $9a
    db $fd                                        ; $6848: $fd
    ld c, l                                       ; $6849: $4d
    ld a, c                                       ; $684a: $79
    ld e, c                                       ; $684b: $59
    sbc b                                         ; $684c: $98
    and [hl]                                      ; $684d: $a6
    dec h                                         ; $684e: $25
    ld d, d                                       ; $684f: $52
    ld l, a                                       ; $6850: $6f
    nop                                           ; $6851: $00
    halt                                          ; $6852: $76
    ld a, [de]                                    ; $6853: $1a
    cp e                                          ; $6854: $bb

Call_03e_6855:
    ld [hl], h                                    ; $6855: $74
    call nz, $9f95                                ; $6856: $c4 $95 $9f
    jp hl                                         ; $6859: $e9


    xor d                                         ; $685a: $aa
    ld e, a                                       ; $685b: $5f
    ld a, [hl]                                    ; $685c: $7e
    sbc [hl]                                      ; $685d: $9e
    or e                                          ; $685e: $b3
    ld a, a                                       ; $685f: $7f
    ld de, $0deb                                  ; $6860: $11 $eb $0d
    nop                                           ; $6863: $00
    halt                                          ; $6864: $76
    ld a, [de]                                    ; $6865: $1a
    cp e                                          ; $6866: $bb
    ld [hl], h                                    ; $6867: $74
    call nz, Call_000_2cb1                        ; $6868: $c4 $b1 $2c
    ld a, h                                       ; $686b: $7c
    ld l, l                                       ; $686c: $6d
    and l                                         ; $686d: $a5
    db $e4                                        ; $686e: $e4
    inc a                                         ; $686f: $3c
    rst $10                                       ; $6870: $d7
    ld c, e                                       ; $6871: $4b
    and e                                         ; $6872: $a3
    inc h                                         ; $6873: $24
    ld h, [hl]                                    ; $6874: $66
    ld l, l                                       ; $6875: $6d
    di                                            ; $6876: $f3
    scf                                           ; $6877: $37
    nop                                           ; $6878: $00
    halt                                          ; $6879: $76
    ld a, [de]                                    ; $687a: $1a
    cp e                                          ; $687b: $bb
    ld [hl], h                                    ; $687c: $74
    push de                                       ; $687d: $d5
    adc [hl]                                      ; $687e: $8e
    ld a, [c]                                     ; $687f: $f2
    di                                            ; $6880: $f3
    sbc h                                         ; $6881: $9c
    ld a, l                                       ; $6882: $7d
    ld b, d                                       ; $6883: $42
    jr nc, jr_03e_68e5                            ; $6884: $30 $5f

    and d                                         ; $6886: $a2
    sbc $00                                       ; $6887: $de $00
    halt                                          ; $6889: $76
    ld a, [de]                                    ; $688a: $1a
    cp e                                          ; $688b: $bb
    ld [hl], h                                    ; $688c: $74
    push de                                       ; $688d: $d5
    adc [hl]                                      ; $688e: $8e
    ld a, [c]                                     ; $688f: $f2
    di                                            ; $6890: $f3
    sbc h                                         ; $6891: $9c
    ld a, l                                       ; $6892: $7d
    ld b, d                                       ; $6893: $42
    jr nc, @+$61                                  ; $6894: $30 $5f

    and d                                         ; $6896: $a2
    sbc $00                                       ; $6897: $de $00
    halt                                          ; $6899: $76
    ld a, [de]                                    ; $689a: $1a
    cp e                                          ; $689b: $bb
    ld [hl], h                                    ; $689c: $74
    push de                                       ; $689d: $d5
    adc [hl]                                      ; $689e: $8e
    ld a, [c]                                     ; $689f: $f2
    di                                            ; $68a0: $f3
    sbc h                                         ; $68a1: $9c
    ld a, l                                       ; $68a2: $7d
    ld b, d                                       ; $68a3: $42
    jr nc, @+$61                                  ; $68a4: $30 $5f

    and d                                         ; $68a6: $a2
    sbc $00                                       ; $68a7: $de $00
    halt                                          ; $68a9: $76
    ld a, [de]                                    ; $68aa: $1a
    cp e                                          ; $68ab: $bb
    ld [hl], h                                    ; $68ac: $74
    push de                                       ; $68ad: $d5
    adc [hl]                                      ; $68ae: $8e
    ld a, [c]                                     ; $68af: $f2
    di                                            ; $68b0: $f3
    ld e, h                                       ; $68b1: $5c
    ld sp, hl                                     ; $68b2: $f9
    sbc c                                         ; $68b3: $99
    rst $28                                       ; $68b4: $ef
    db $fc                                        ; $68b5: $fc
    pop bc                                        ; $68b6: $c1
    ccf                                           ; $68b7: $3f
    ei                                            ; $68b8: $fb
    add a                                         ; $68b9: $87
    and h                                         ; $68ba: $a4
    ld sp, hl                                     ; $68bb: $f9
    dec de                                        ; $68bc: $1b
    nop                                           ; $68bd: $00
    halt                                          ; $68be: $76
    ld a, [de]                                    ; $68bf: $1a
    cp e                                          ; $68c0: $bb
    ld [hl], h                                    ; $68c1: $74
    call nz, $9f95                                ; $68c2: $c4 $95 $9f
    ld a, [hl]                                    ; $68c5: $7e
    ld sp, hl                                     ; $68c6: $f9
    ld a, c                                       ; $68c7: $79
    sub [hl]                                      ; $68c8: $96
    push af                                       ; $68c9: $f5
    ld l, $ae                                     ; $68ca: $2e $ae
    inc sp                                        ; $68cc: $33
    rst $08                                       ; $68cd: $cf
    sbc l                                         ; $68ce: $9d
    adc a                                         ; $68cf: $8f
    sub c                                         ; $68d0: $91
    ld h, d                                       ; $68d1: $62
    cp [hl]                                       ; $68d2: $be
    xor $b4                                       ; $68d3: $ee $b4
    sbc h                                         ; $68d5: $9c
    rst $20                                       ; $68d6: $e7
    ld a, d                                       ; $68d7: $7a
    ld c, e                                       ; $68d8: $4b
    sub $a9                                       ; $68d9: $d6 $a9
    scf                                           ; $68db: $37
    nop                                           ; $68dc: $00
    halt                                          ; $68dd: $76
    ld a, [de]                                    ; $68de: $1a
    cp e                                          ; $68df: $bb
    ld [hl], h                                    ; $68e0: $74
    call nz, $ecb1                                ; $68e1: $c4 $b1 $ec
    inc a                                         ; $68e4: $3c

jr_03e_68e5:
    ld a, c                                       ; $68e5: $79
    ld e, h                                       ; $68e6: $5c
    rst $28                                       ; $68e7: $ef
    xor h                                         ; $68e8: $ac
    jp hl                                         ; $68e9: $e9


    ld d, e                                       ; $68ea: $53
    ld l, [hl]                                    ; $68eb: $6e
    nop                                           ; $68ec: $00
    halt                                          ; $68ed: $76
    ld a, [de]                                    ; $68ee: $1a
    cp e                                          ; $68ef: $bb
    ld [hl], h                                    ; $68f0: $74
    call nz, Call_03e_5f95                        ; $68f1: $c4 $95 $5f
    ldh [$97], a                                  ; $68f4: $e0 $97
    sbc a                                         ; $68f6: $9f
    jp nc, $e308                                  ; $68f7: $d2 $08 $e3

    rst $08                                       ; $68fa: $cf
    ld [hl], e                                    ; $68fb: $73
    dec h                                         ; $68fc: $25
    ld [hl], l                                    ; $68fd: $75
    or l                                          ; $68fe: $b5
    add e                                         ; $68ff: $83
    and b                                         ; $6900: $a0
    ld b, d                                       ; $6901: $42
    cp l                                          ; $6902: $bd
    ld bc, $1a76                                  ; $6903: $01 $76 $1a
    cp e                                          ; $6906: $bb
    ld [hl], h                                    ; $6907: $74
    call nz, $ecb1                                ; $6908: $c4 $b1 $ec
    inc e                                         ; $690b: $1c
    ld l, d                                       ; $690c: $6a
    ld hl, sp+$26                                 ; $690d: $f8 $26
    sbc b                                         ; $690f: $98
    di                                            ; $6910: $f3
    ld e, h                                       ; $6911: $5c
    db $fd                                        ; $6912: $fd
    sub c                                         ; $6913: $91
    jp nc, $ccbe                                  ; $6914: $d2 $be $cc

    ld [hl], e                                    ; $6917: $73
    ld d, h                                       ; $6918: $54
    inc hl                                        ; $6919: $23
    dec l                                         ; $691a: $2d
    and [hl]                                      ; $691b: $a6
    or h                                          ; $691c: $b4
    cp h                                          ; $691d: $bc
    ld bc, $1a76                                  ; $691e: $01 $76 $1a
    cp e                                          ; $6921: $bb
    ld [hl], h                                    ; $6922: $74
    call nz, $acb1                                ; $6923: $c4 $b1 $ac
    sub a                                         ; $6926: $97
    ld [hl-], a                                   ; $6927: $32
    rst $20                                       ; $6928: $e7
    add hl, sp                                    ; $6929: $39
    inc de                                        ; $692a: $13
    ld l, h                                       ; $692b: $6c
    ld h, $f5                                     ; $692c: $26 $f5
    ld b, $76                                     ; $692e: $06 $76
    ld a, [de]                                    ; $6930: $1a
    cp e                                          ; $6931: $bb
    ld [hl], h                                    ; $6932: $74
    call nz, $9f95                                ; $6933: $c4 $95 $9f
    add hl, hl                                    ; $6936: $29
    xor a                                         ; $6937: $af
    sbc h                                         ; $6938: $9c
    rst $20                                       ; $6939: $e7
    ld a, [$a01c]                                 ; $693a: $fa $1c $a0
    call Call_03e_6afc                            ; $693d: $cd $fc $6a
    rlca                                          ; $6940: $07
    ld b, c                                       ; $6941: $41
    add l                                         ; $6942: $85
    scf                                           ; $6943: $37
    nop                                           ; $6944: $00
    halt                                          ; $6945: $76
    ld a, [de]                                    ; $6946: $1a
    cp e                                          ; $6947: $bb
    ld [hl], h                                    ; $6948: $74
    call nz, $9f95                                ; $6949: $c4 $95 $9f
    add hl, hl                                    ; $694c: $29
    xor a                                         ; $694d: $af
    sbc h                                         ; $694e: $9c
    rst $20                                       ; $694f: $e7
    ld a, d                                       ; $6950: $7a
    ld c, c                                       ; $6951: $49
    db $e4                                        ; $6952: $e4
    ld l, d                                       ; $6953: $6a
    rlca                                          ; $6954: $07
    ld b, c                                       ; $6955: $41
    add l                                         ; $6956: $85
    scf                                           ; $6957: $37
    nop                                           ; $6958: $00
    halt                                          ; $6959: $76
    ld a, [de]                                    ; $695a: $1a
    cp e                                          ; $695b: $bb
    ld [hl], h                                    ; $695c: $74
    call nz, Call_03e_5f95                        ; $695d: $c4 $95 $5f

jr_03e_6960:
    rst $28                                       ; $6960: $ef
    xor [hl]                                      ; $6961: $ae
    ld a, [$e7e5]                                 ; $6962: $fa $e5 $e7
    add hl, sp                                    ; $6965: $39
    inc hl                                        ; $6966: $23
    ld e, c                                       ; $6967: $59
    and a                                         ; $6968: $a7
    sbc $00                                       ; $6969: $de $00
    halt                                          ; $696b: $76
    ld a, [de]                                    ; $696c: $1a
    cp e                                          ; $696d: $bb
    ld [hl], h                                    ; $696e: $74
    call nz, Call_03e_5c39                        ; $696f: $c4 $39 $5c
    ld hl, sp-$26                                 ; $6972: $f8 $da
    ld c, d                                       ; $6974: $4a
    ret                                           ; $6975: $c9


    add hl, hl                                    ; $6976: $29
    adc l                                         ; $6977: $8d
    jr nc, jr_03e_6960                            ; $6978: $30 $e6

    dec c                                         ; $697a: $0d
    nop                                           ; $697b: $00
    halt                                          ; $697c: $76
    ld a, [de]                                    ; $697d: $1a
    cp e                                          ; $697e: $bb
    ld [hl], h                                    ; $697f: $74
    call nz, $ccb1                                ; $6980: $c4 $b1 $cc
    ld d, e                                       ; $6983: $53
    jp $c137                                      ; $6984: $c3 $37 $c1


    sbc h                                         ; $6987: $9c
    ld h, a                                       ; $6988: $67
    ld e, c                                       ; $6989: $59
    jr z, jr_03e_69e5                             ; $698a: $28 $59

    ld c, l                                       ; $698c: $4d
    ld c, l                                       ; $698d: $4d
    reti                                          ; $698e: $d9


    reti                                          ; $698f: $d9


    dec c                                         ; $6990: $0d
    ld d, c                                       ; $6991: $51
    ld l, a                                       ; $6992: $6f
    nop                                           ; $6993: $00
    halt                                          ; $6994: $76
    ld a, [de]                                    ; $6995: $1a
    cp e                                          ; $6996: $bb
    ld [hl], h                                    ; $6997: $74
    call nz, $fc39                                ; $6998: $c4 $39 $fc
    sbc c                                         ; $699b: $99
    ld a, [c]                                     ; $699c: $f2
    jp z, $de55                                   ; $699d: $ca $55 $de

    ret c                                         ; $69a0: $d8

    db $fc                                        ; $69a1: $fc
    dec c                                         ; $69a2: $0d
    nop                                           ; $69a3: $00
    halt                                          ; $69a4: $76
    ld a, [de]                                    ; $69a5: $1a
    cp e                                          ; $69a6: $bb
    ld [hl], h                                    ; $69a7: $74
    call nz, $9f95                                ; $69a8: $c4 $95 $9f
    ld a, [hl]                                    ; $69ab: $7e
    ld sp, hl                                     ; $69ac: $f9
    ld a, c                                       ; $69ad: $79
    xor [hl]                                      ; $69ae: $ae
    cp h                                          ; $69af: $bc
    xor $a2                                       ; $69b0: $ee $a2
    ld a, [c]                                     ; $69b2: $f2
    dec d                                         ; $69b3: $15
    ld [$957a], a                                 ; $69b4: $ea $7a $95
    rst $30                                       ; $69b7: $f7
    xor a                                         ; $69b8: $af
    scf                                           ; $69b9: $37
    nop                                           ; $69ba: $00
    halt                                          ; $69bb: $76
    ld a, [de]                                    ; $69bc: $1a
    cp e                                          ; $69bd: $bb
    ld [hl], h                                    ; $69be: $74
    call nz, $ecb1                                ; $69bf: $c4 $b1 $ec
    inc a                                         ; $69c2: $3c
    ld a, c                                       ; $69c3: $79
    ld e, h                                       ; $69c4: $5c
    rst $28                                       ; $69c5: $ef
    xor h                                         ; $69c6: $ac
    jp hl                                         ; $69c7: $e9


    ld d, e                                       ; $69c8: $53
    ld l, [hl]                                    ; $69c9: $6e
    nop                                           ; $69ca: $00
    cp l                                          ; $69cb: $bd
    add hl, hl                                    ; $69cc: $29
    pop af                                        ; $69cd: $f1
    dec de                                        ; $69ce: $1b
    ld l, $d2                                     ; $69cf: $2e $d2
    inc b                                         ; $69d1: $04
    ld sp, $424b                                  ; $69d2: $31 $4b $42
    sub $c1                                       ; $69d5: $d6 $c1
    sbc $b1                                       ; $69d7: $de $b1
    ld b, a                                       ; $69d9: $47
    rra                                           ; $69da: $1f
    ld a, l                                       ; $69db: $7d
    call z, $d57a                                 ; $69dc: $cc $7a $d5
    rst $18                                       ; $69df: $df
    sbc a                                         ; $69e0: $9f
    or e                                          ; $69e1: $b3
    jp $8948                                      ; $69e2: $c3 $48 $89


jr_03e_69e5:
    rst $18                                       ; $69e5: $df
    or b                                          ; $69e6: $b0
    ld h, $46                                     ; $69e7: $26 $46
    ld hl, sp-$32                                 ; $69e9: $f8 $ce
    ld b, a                                       ; $69eb: $47
    ld [hl], e                                    ; $69ec: $73
    rst $28                                       ; $69ed: $ef
    cp d                                          ; $69ee: $ba
    db $ed                                        ; $69ef: $ed
    cp d                                          ; $69f0: $ba
    ld e, [hl]                                    ; $69f1: $5e
    push af                                       ; $69f2: $f5
    rst $30                                       ; $69f3: $f7
    rst $20                                       ; $69f4: $e7
    db $ec                                        ; $69f5: $ec
    jr nc, jr_03e_6a4a                            ; $69f6: $30 $52

    ld [c], a                                     ; $69f8: $e2
    scf                                           ; $69f9: $37
    xor h                                         ; $69fa: $ac
    adc c                                         ; $69fb: $89
    ld [hl], c                                    ; $69fc: $71
    sub $b1                                       ; $69fd: $d6 $b1
    xor h                                         ; $69ff: $ac
    inc h                                         ; $6a00: $24
    sub h                                         ; $6a01: $94
    di                                            ; $6a02: $f3
    ld e, h                                       ; $6a03: $5c
    xor a                                         ; $6a04: $af
    ld a, [$73fb]                                 ; $6a05: $fa $fb $73
    halt                                          ; $6a08: $76
    jr jr_03e_6a34                                ; $6a09: $18 $29

    pop af                                        ; $6a0b: $f1
    dec de                                        ; $6a0c: $1b
    sub $c4                                       ; $6a0d: $d6 $c4
    cp b                                          ; $6a0f: $b8
    and e                                         ; $6a10: $a3
    halt                                          ; $6a11: $76
    sbc [hl]                                      ; $6a12: $9e
    or h                                          ; $6a13: $b4
    jr nc, jr_03e_6a3c                            ; $6a14: $30 $26

    or [hl]                                       ; $6a16: $b6
    ret z                                         ; $6a17: $c8

    ld l, c                                       ; $6a18: $69
    ld [c], a                                     ; $6a19: $e2
    ld [$f317], a                                 ; $6a1a: $ea $17 $f3
    ld a, [hl-]                                   ; $6a1d: $3a
    ld hl, $34d4                                  ; $6a1e: $21 $d4 $34
    jp z, $d7fb                                   ; $6a21: $ca $fb $d7

    ld a, c                                       ; $6a24: $79
    xor [hl]                                      ; $6a25: $ae
    ld d, a                                       ; $6a26: $57
    db $fd                                        ; $6a27: $fd
    db $fd                                        ; $6a28: $fd
    add hl, sp                                    ; $6a29: $39
    dec sp                                        ; $6a2a: $3b
    adc h                                         ; $6a2b: $8c
    sub h                                         ; $6a2c: $94
    ld hl, sp+$0d                                 ; $6a2d: $f8 $0d
    ld l, e                                       ; $6a2f: $6b
    ld h, d                                       ; $6a30: $62
    add h                                         ; $6a31: $84
    rst $28                                       ; $6a32: $ef
    ld a, h                                       ; $6a33: $7c

jr_03e_6a34:
    inc [hl]                                      ; $6a34: $34
    rst $30                                       ; $6a35: $f7
    adc b                                         ; $6a36: $88
    or e                                          ; $6a37: $b3
    db $d3                                        ; $6a38: $d3
    ld hl, sp+$3e                                 ; $6a39: $f8 $3e
    ld [hl], l                                    ; $6a3b: $75

jr_03e_6a3c:
    sub a                                         ; $6a3c: $97
    ld h, e                                       ; $6a3d: $63
    di                                            ; $6a3e: $f3
    xor c                                         ; $6a3f: $a9
    or e                                          ; $6a40: $b3
    ld e, $e5                                     ; $6a41: $1e $e5
    sub [hl]                                      ; $6a43: $96
    ld d, c                                       ; $6a44: $51
    ld d, d                                       ; $6a45: $52
    rla                                           ; $6a46: $17
    cp [hl]                                       ; $6a47: $be
    adc l                                         ; $6a48: $8d
    ld d, d                                       ; $6a49: $52

jr_03e_6a4a:
    rst $28                                       ; $6a4a: $ef
    ld e, l                                       ; $6a4b: $5d
    or a                                          ; $6a4c: $b7
    ld e, l                                       ; $6a4d: $5d
    rst $10                                       ; $6a4e: $d7
    rst $00                                       ; $6a4f: $c7
    xor c                                         ; $6a50: $a9
    push af                                       ; $6a51: $f5
    xor d                                         ; $6a52: $aa
    push af                                       ; $6a53: $f5
    ld [hl], d                                    ; $6a54: $72
    cp [hl]                                       ; $6a55: $be
    push hl                                       ; $6a56: $e5
    ld l, $cb                                     ; $6a57: $2e $cb
    inc l                                         ; $6a59: $2c
    cp d                                          ; $6a5a: $ba
    adc e                                         ; $6a5b: $8b
    sbc d                                         ; $6a5c: $9a
    ld hl, $f69a                                  ; $6a5d: $21 $9a $f6
    cp $75                                        ; $6a60: $fe $75
    ld h, c                                       ; $6a62: $61
    jp z, Jump_03e_7dce                           ; $6a63: $ca $ce $7d

    inc de                                        ; $6a66: $13
    ld d, e                                       ; $6a67: $53
    halt                                          ; $6a68: $76
    jp nz, $dbae                                  ; $6a69: $c2 $ae $db

    xor [hl]                                      ; $6a6c: $ae
    cp e                                          ; $6a6d: $bb
    add sp, -$04                                  ; $6a6e: $e8 $fc
    sbc $76                                       ; $6a70: $de $76
    ld a, l                                       ; $6a72: $7d
    inc bc                                        ; $6a73: $03
    db $ed                                        ; $6a74: $ed
    adc $d9                                       ; $6a75: $ce $d9
    reti                                          ; $6a77: $d9


    ld d, a                                       ; $6a78: $57
    xor a                                         ; $6a79: $af
    rst $28                                       ; $6a7a: $ef
    ld sp, hl                                     ; $6a7b: $f9
    ld a, l                                       ; $6a7c: $7d
    cpl                                           ; $6a7d: $2f
    or e                                          ; $6a7e: $b3
    db $eb                                        ; $6a7f: $eb
    ld a, e                                       ; $6a80: $7b
    adc $c5                                       ; $6a81: $ce $c5
    nop                                           ; $6a83: $00
    or b                                          ; $6a84: $b0
    ld [hl], a                                    ; $6a85: $77
    db $ec                                        ; $6a86: $ec
    pop de                                        ; $6a87: $d1
    ld b, a                                       ; $6a88: $47
    rra                                           ; $6a89: $1f
    inc sp                                        ; $6a8a: $33
    cp e                                          ; $6a8b: $bb
    ld b, d                                       ; $6a8c: $42
    inc de                                        ; $6a8d: $13
    dec h                                         ; $6a8e: $25
    or c                                          ; $6a8f: $b1
    sbc c                                         ; $6a90: $99
    push af                                       ; $6a91: $f5
    sub d                                         ; $6a92: $92
    xor b                                         ; $6a93: $a8
    dec sp                                        ; $6a94: $3b
    rra                                           ; $6a95: $1f
    call $ebbd                                    ; $6a96: $cd $bd $eb
    ld l, $4b                                     ; $6a99: $2e $4b
    sbc a                                         ; $6a9b: $9f
    cp d                                          ; $6a9c: $ba
    sub d                                         ; $6a9d: $92
    ld a, [hl-]                                   ; $6a9e: $3a
    ld c, a                                       ; $6a9f: $4f
    and c                                         ; $6aa0: $a1
    add hl, bc                                    ; $6aa1: $09
    and [hl]                                      ; $6aa2: $a6
    ld c, [hl]                                    ; $6aa3: $4e
    xor b                                         ; $6aa4: $a8
    sub h                                         ; $6aa5: $94
    jp z, $d4fb                                   ; $6aa6: $ca $fb $d4

    dec de                                        ; $6aa9: $1b
    nop                                           ; $6aaa: $00
    ld bc, $e8ae                                  ; $6aab: $01 $ae $e8
    cpl                                           ; $6aae: $2f
    jr nc, @-$40                                  ; $6aaf: $30 $be

    ld b, h                                       ; $6ab1: $44
    nop                                           ; $6ab2: $00
    ld a, l                                       ; $6ab3: $7d
    ld e, e                                       ; $6ab4: $5b
    add l                                         ; $6ab5: $85
    push hl                                       ; $6ab6: $e5
    call nc, $8eb3                                ; $6ab7: $d4 $b3 $8e
    add hl, de                                    ; $6aba: $19
    nop                                           ; $6abb: $00
    sub a                                         ; $6abc: $97
    dec [hl]                                      ; $6abd: $35
    sub $61                                       ; $6abe: $d6 $61
    sbc [hl]                                      ; $6ac0: $9e
    cp d                                          ; $6ac1: $ba
    or e                                          ; $6ac2: $b3
    adc [hl]                                      ; $6ac3: $8e
    add hl, sp                                    ; $6ac4: $39
    push af                                       ; $6ac5: $f5
    xor h                                         ; $6ac6: $ac
    ld h, e                                       ; $6ac7: $63
    ld c, a                                       ; $6ac8: $4f
    dec a                                         ; $6ac9: $3d
    db $eb                                        ; $6aca: $eb
    cp b                                          ; $6acb: $b8
    ld bc, $737d                                  ; $6acc: $01 $7d $73
    ld c, [hl]                                    ; $6acf: $4e
    rst $18                                       ; $6ad0: $df
    rst $20                                       ; $6ad1: $e7
    xor [hl]                                      ; $6ad2: $ae
    db $db                                        ; $6ad3: $db
    xor [hl]                                      ; $6ad4: $ae
    db $db                                        ; $6ad5: $db
    xor [hl]                                      ; $6ad6: $ae
    dec de                                        ; $6ad7: $1b
    nop                                           ; $6ad8: $00
    sub a                                         ; $6ad9: $97
    ld a, $3a                                     ; $6ada: $3e $3a
    ld sp, hl                                     ; $6adc: $f9
    ld de, $34e7                                  ; $6add: $11 $e7 $34
    rst $28                                       ; $6ae0: $ef
    ld e, l                                       ; $6ae1: $5d
    rst $10                                       ; $6ae2: $d7
    dec a                                         ; $6ae3: $3d
    jr nc, jr_03e_6b21                            ; $6ae4: $30 $3b

    ld b, d                                       ; $6ae6: $42
    xor d                                         ; $6ae7: $aa
    sub c                                         ; $6ae8: $91
    sub $69                                       ; $6ae9: $d6 $69
    jp nc, Jump_000_0013                          ; $6aeb: $d2 $13 $00

    ld d, a                                       ; $6aee: $57
    sbc l                                         ; $6aef: $9d
    ld a, d                                       ; $6af0: $7a
    sub $31                                       ; $6af1: $d6 $31
    cp e                                          ; $6af3: $bb
    ld a, [$b3d4]                                 ; $6af4: $fa $d4 $b3
    adc [hl]                                      ; $6af7: $8e
    dec e                                         ; $6af8: $1d
    nop                                           ; $6af9: $00
    db $dd                                        ; $6afa: $dd
    db $ec                                        ; $6afb: $ec

Call_03e_6afc:
    inc [hl]                                      ; $6afc: $34
    ld [hl], d                                    ; $6afd: $72
    ld h, $ab                                     ; $6afe: $26 $ab
    add l                                         ; $6b00: $85
    and e                                         ; $6b01: $a3
    add $ae                                       ; $6b02: $c6 $ae
    add hl, de                                    ; $6b04: $19
    adc d                                         ; $6b05: $8a
    cp h                                          ; $6b06: $bc
    rst $08                                       ; $6b07: $cf
    ld e, $00                                     ; $6b08: $1e $00
    sub a                                         ; $6b0a: $97
    dec hl                                        ; $6b0b: $2b
    ld c, a                                       ; $6b0c: $4f
    dec b                                         ; $6b0d: $05
    rst $00                                       ; $6b0e: $c7
    inc e                                         ; $6b0f: $1c
    cp [hl]                                       ; $6b10: $be
    or e                                          ; $6b11: $b3
    adc [hl]                                      ; $6b12: $8e
    add hl, de                                    ; $6b13: $19
    nop                                           ; $6b14: $00
    rst $00                                       ; $6b15: $c7
    ld e, $be                                     ; $6b16: $1e $be
    or e                                          ; $6b18: $b3
    adc [hl]                                      ; $6b19: $8e
    add hl, de                                    ; $6b1a: $19
    nop                                           ; $6b1b: $00
    rst $00                                       ; $6b1c: $c7
    dec e                                         ; $6b1d: $1d
    cp [hl]                                       ; $6b1e: $be
    or e                                          ; $6b1f: $b3
    adc [hl]                                      ; $6b20: $8e

jr_03e_6b21:
    add hl, de                                    ; $6b21: $19
    nop                                           ; $6b22: $00
    rst $00                                       ; $6b23: $c7
    rra                                           ; $6b24: $1f
    cp [hl]                                       ; $6b25: $be
    or e                                          ; $6b26: $b3
    adc [hl]                                      ; $6b27: $8e
    add hl, de                                    ; $6b28: $19
    nop                                           ; $6b29: $00
    ld bc, $bf2f                                  ; $6b2a: $01 $2f $bf
    ldh [rNR31], a                                ; $6b2d: $e0 $1b
    jp z, Jump_000_00a9                           ; $6b2f: $ca $a9 $00

    db $dd                                        ; $6b32: $dd
    ld a, d                                       ; $6b33: $7a
    dec e                                         ; $6b34: $1d
    add b                                         ; $6b35: $80
    jp $f05c                                      ; $6b36: $c3 $5c $f0


    ld [hl], l                                    ; $6b39: $75
    rra                                           ; $6b3a: $1f
    ld a, [bc]                                    ; $6b3b: $0a
    pop de                                        ; $6b3c: $d1
    scf                                           ; $6b3d: $37
    sbc a                                         ; $6b3e: $9f
    and e                                         ; $6b3f: $a3
    add $5f                                       ; $6b40: $c6 $5f
    or l                                          ; $6b42: $b5
    xor l                                         ; $6b43: $ad
    call nc, Call_03e_7cae                        ; $6b44: $d4 $ae $7c
    rrca                                          ; $6b47: $0f
    nop                                           ; $6b48: $00
    cp l                                          ; $6b49: $bd
    cp a                                          ; $6b4a: $bf
    ld a, b                                       ; $6b4b: $78
    ld c, d                                       ; $6b4c: $4a
    ld l, $2c                                     ; $6b4d: $2e $2c
    add h                                         ; $6b4f: $84
    cp [hl]                                       ; $6b50: $be
    ld d, e                                       ; $6b51: $53
    ld [$bd00], sp                                ; $6b52: $08 $00 $bd
    cp a                                          ; $6b55: $bf
    ld a, b                                       ; $6b56: $78
    ld c, d                                       ; $6b57: $4a
    adc $73                                       ; $6b58: $ce $73
    ld h, $3b                                     ; $6b5a: $26 $3b
    ld b, d                                       ; $6b5c: $42
    nop                                           ; $6b5d: $00
    cp l                                          ; $6b5e: $bd
    cp a                                          ; $6b5f: $bf
    ld a, b                                       ; $6b60: $78
    ld c, d                                       ; $6b61: $4a
    adc $73                                       ; $6b62: $ce $73
    push hl                                       ; $6b64: $e5
    and e                                         ; $6b65: $a3
    dec l                                         ; $6b66: $2d
    ld [bc], a                                    ; $6b67: $02
    cp l                                          ; $6b68: $bd
    cp a                                          ; $6b69: $bf
    ld a, b                                       ; $6b6a: $78
    ld c, d                                       ; $6b6b: $4a
    adc $73                                       ; $6b6c: $ce $73
    ld h, c                                       ; $6b6e: $61
    ld sp, hl                                     ; $6b6f: $f9
    ld hl, sp+$00                                 ; $6b70: $f8 $00
    cp l                                          ; $6b72: $bd
    cp a                                          ; $6b73: $bf
    ld a, b                                       ; $6b74: $78
    ld c, d                                       ; $6b75: $4a
    xor $5d                                       ; $6b76: $ee $5d
    call z, $2bba                                 ; $6b78: $cc $ba $2b
    ld [hl], $93                                  ; $6b7b: $36 $93
    nop                                           ; $6b7d: $00
    sub a                                         ; $6b7e: $97
    cp [hl]                                       ; $6b7f: $be
    ld c, l                                       ; $6b80: $4d
    rst $38                                       ; $6b81: $ff
    ld a, c                                       ; $6b82: $79
    xor $b5                                       ; $6b83: $ee $b5
    jp c, $b3d6                                   ; $6b85: $da $d6 $b3

    inc h                                         ; $6b88: $24
    nop                                           ; $6b89: $00
    cp l                                          ; $6b8a: $bd
    ldh a, [rSCX]                                 ; $6b8b: $f0 $43
    sub [hl]                                      ; $6b8d: $96
    inc b                                         ; $6b8e: $04
    rla                                           ; $6b8f: $17
    ld c, e                                       ; $6b90: $4b
    ld l, h                                       ; $6b91: $6c
    ret nc                                        ; $6b92: $d0

    db $eb                                        ; $6b93: $eb
    sub h                                         ; $6b94: $94
    and $15                                       ; $6b95: $e6 $15
    nop                                           ; $6b97: $00
    rst $20                                       ; $6b98: $e7
    ret c                                         ; $6b99: $d8

    sbc b                                         ; $6b9a: $98
    ld hl, sp+$75                                 ; $6b9b: $f8 $75
    ld [bc], a                                    ; $6b9d: $02
    cp l                                          ; $6b9e: $bd
    ld a, [$fb11]                                 ; $6b9f: $fa $11 $fb
    dec h                                         ; $6ba2: $25
    nop                                           ; $6ba3: $00
    sub a                                         ; $6ba4: $97
    cp [hl]                                       ; $6ba5: $be
    ld c, l                                       ; $6ba6: $4d
    rst $38                                       ; $6ba7: $ff
    ld a, c                                       ; $6ba8: $79
    xor [hl]                                      ; $6ba9: $ae
    ld a, [hl]                                    ; $6baa: $7e
    db $f4                                        ; $6bab: $f4
    jp nc, $a505                                  ; $6bac: $d2 $05 $a5

    inc a                                         ; $6baf: $3c
    nop                                           ; $6bb0: $00
    ld bc, $658d                                  ; $6bb1: $01 $8d $65
    sbc [hl]                                      ; $6bb4: $9e
    db $eb                                        ; $6bb5: $eb
    ld h, h                                       ; $6bb6: $64
    sub $5a                                       ; $6bb7: $d6 $5a
    ld e, $21                                     ; $6bb9: $1e $21
    nop                                           ; $6bbb: $00
    ld bc, $bc07                                  ; $6bbc: $01 $07 $bc
    adc $73                                       ; $6bbf: $ce $73
    and c                                         ; $6bc1: $a1
    and e                                         ; $6bc2: $a3
    sbc b                                         ; $6bc3: $98
    and h                                         ; $6bc4: $a4
    add [hl]                                      ; $6bc5: $86
    ld [hl], $08                                  ; $6bc6: $36 $08
    nop                                           ; $6bc8: $00
    ld bc, $2a59                                  ; $6bc9: $01 $59 $2a
    add hl, sp                                    ; $6bcc: $39
    rst $08                                       ; $6bcd: $cf
    add l                                         ; $6bce: $85
    xor [hl]                                      ; $6bcf: $ae
    add h                                         ; $6bd0: $84
    add hl, bc                                    ; $6bd1: $09
    nop                                           ; $6bd2: $00
    rla                                           ; $6bd3: $17
    rst $30                                       ; $6bd4: $f7
    bit 7, c                                      ; $6bd5: $cb $79
    adc [hl]                                      ; $6bd7: $8e
    ld l, d                                       ; $6bd8: $6a
    ld e, [hl]                                    ; $6bd9: $5e
    cp [hl]                                       ; $6bda: $be
    di                                            ; $6bdb: $f3
    db $fd                                        ; $6bdc: $fd
    ld [de], a                                    ; $6bdd: $12
    nop                                           ; $6bde: $00
    cp l                                          ; $6bdf: $bd
    dec e                                         ; $6be0: $1d
    dec b                                         ; $6be1: $05
    ld [hl], e                                    ; $6be2: $73
    sbc [hl]                                      ; $6be3: $9e
    db $eb                                        ; $6be4: $eb
    inc [hl]                                      ; $6be5: $34
    sub e                                         ; $6be6: $93
    add d                                         ; $6be7: $82
    dec l                                         ; $6be8: $2d
    ld bc, $b3bd                                  ; $6be9: $01 $bd $b3
    call nc, $94ad                                ; $6bec: $d4 $ad $94
    sbc h                                         ; $6bef: $9c
    rst $20                                       ; $6bf0: $e7
    sub h                                         ; $6bf1: $94
    ld [de], a                                    ; $6bf2: $12
    ld [hl], $62                                  ; $6bf3: $36 $62
    inc h                                         ; $6bf5: $24
    nop                                           ; $6bf6: $00
    ld bc, $5e8d                                  ; $6bf7: $01 $8d $5e
    ld a, [hl]                                    ; $6bfa: $7e
    dec e                                         ; $6bfb: $1d
    or $cf                                        ; $6bfc: $f6 $cf
    rla                                           ; $6bfe: $17
    nop                                           ; $6bff: $00
    cp l                                          ; $6c00: $bd
    dec e                                         ; $6c01: $1d
    dec b                                         ; $6c02: $05
    ld [hl], e                                    ; $6c03: $73
    ld c, d                                       ; $6c04: $4a
    add hl, bc                                    ; $6c05: $09
    dec de                                        ; $6c06: $1b
    ld sp, $6172                                  ; $6c07: $31 $72 $61
    ld sp, hl                                     ; $6c0a: $f9
    ret z                                         ; $6c0b: $c8

    rst $30                                       ; $6c0c: $f7
    rrca                                          ; $6c0d: $0f
    nop                                           ; $6c0e: $00
    rla                                           ; $6c0f: $17
    cp c                                          ; $6c10: $b9
    ldh a, [$a5]                                  ; $6c11: $f0 $a5
    dec a                                         ; $6c13: $3d
    nop                                           ; $6c14: $00
    cp l                                          ; $6c15: $bd
    adc h                                         ; $6c16: $8c
    dec l                                         ; $6c17: $2d
    or [hl]                                       ; $6c18: $b6
    sbc b                                         ; $6c19: $98
    nop                                           ; $6c1a: $00
    cp l                                          ; $6c1b: $bd
    jr nc, @-$24                                  ; $6c1c: $30 $da

    ld hl, sp-$74                                 ; $6c1e: $f8 $8c
    add hl, bc                                    ; $6c20: $09
    nop                                           ; $6c21: $00
    ld bc, $9a69                                  ; $6c22: $01 $69 $9a
    dec l                                         ; $6c25: $2d
    adc $9e                                       ; $6c26: $ce $9e
    jp nc, Jump_03e_4ac9                          ; $6c28: $d2 $c9 $4a

    adc e                                         ; $6c2b: $8b
    ld e, a                                       ; $6c2c: $5f
    ld e, d                                       ; $6c2d: $5a
    rst $38                                       ; $6c2e: $ff
    rst $00                                       ; $6c2f: $c7
    ld c, b                                       ; $6c30: $48
    nop                                           ; $6c31: $00
    ld bc, $9a69                                  ; $6c32: $01 $69 $9a
    dec l                                         ; $6c35: $2d
    adc $9e                                       ; $6c36: $ce $9e
    jp nc, Jump_03e_4ac9                          ; $6c38: $d2 $c9 $4a

    adc e                                         ; $6c3b: $8b
    ld e, a                                       ; $6c3c: $5f
    ld e, d                                       ; $6c3d: $5a
    rst $38                                       ; $6c3e: $ff
    rst $00                                       ; $6c3f: $c7
    ret z                                         ; $6c40: $c8

    xor c                                         ; $6c41: $a9
    dec bc                                        ; $6c42: $0b
    ld bc, $6901                                  ; $6c43: $01 $01 $69
    sbc d                                         ; $6c46: $9a
    dec l                                         ; $6c47: $2d
    xor $8a                                       ; $6c48: $ee $8a
    ld d, $bf                                     ; $6c4a: $16 $bf
    ld l, [hl]                                    ; $6c4c: $6e
    or b                                          ; $6c4d: $b0
    nop                                           ; $6c4e: $00
    ld bc, $9a69                                  ; $6c4f: $01 $69 $9a
    dec l                                         ; $6c52: $2d
    adc $9e                                       ; $6c53: $ce $9e
    jp nc, $a669                                  ; $6c55: $d2 $69 $a6

    ld sp, hl                                     ; $6c58: $f9
    rlca                                          ; $6c59: $07
    ld bc, $9a69                                  ; $6c5a: $01 $69 $9a
    dec l                                         ; $6c5d: $2d
    ld l, $a0                                     ; $6c5e: $2e $a0
    push de                                       ; $6c60: $d5
    call nz, $8b68                                ; $6c61: $c4 $68 $8b
    call Call_000_003c                            ; $6c64: $cd $3c $00
    ld bc, $9a69                                  ; $6c67: $01 $69 $9a
    dec l                                         ; $6c6a: $2d
    ld l, $a0                                     ; $6c6b: $2e $a0
    push de                                       ; $6c6d: $d5
    call nz, $8b68                                ; $6c6e: $c4 $68 $8b
    call $d4fc                                    ; $6c71: $cd $fc $d4
    add l                                         ; $6c74: $85
    nop                                           ; $6c75: $00
    halt                                          ; $6c76: $76
    db $fd                                        ; $6c77: $fd
    ld l, b                                       ; $6c78: $68
    ld e, h                                       ; $6c79: $5c
    ld a, h                                       ; $6c7a: $7c
    ld bc, $25bd                                  ; $6c7b: $01 $bd $25
    db $eb                                        ; $6c7e: $eb
    inc e                                         ; $6c7f: $1c
    ld e, $50                                     ; $6c80: $1e $50
    ld d, e                                       ; $6c82: $53
    ld a, [c]                                     ; $6c83: $f2
    call nc, Call_03e_759d                        ; $6c84: $d4 $9d $75
    call z, Call_03e_7600                         ; $6c87: $cc $00 $76
    add l                                         ; $6c8a: $85
    ld d, b                                       ; $6c8b: $50
    sub e                                         ; $6c8c: $93
    add hl, de                                    ; $6c8d: $19
    ret                                           ; $6c8e: $c9


    ld a, [hl-]                                   ; $6c8f: $3a
    ld bc, $bfbd                                  ; $6c90: $01 $bd $bf
    xor $b4                                       ; $6c93: $ee $b4
    rla                                           ; $6c95: $17
    nop                                           ; $6c96: $00
    add c                                         ; $6c97: $81
    ld e, a                                       ; $6c98: $5f
    sbc d                                         ; $6c99: $9a
    nop                                           ; $6c9a: $00
    db $dd                                        ; $6c9b: $dd
    ld l, $6a                                     ; $6c9c: $2e $6a
    ld a, [de]                                    ; $6c9e: $1a
    ld [hl], e                                    ; $6c9f: $73
    pop hl                                        ; $6ca0: $e1
    set 1, a                                      ; $6ca1: $cb $cf
    ld a, h                                       ; $6ca3: $7c
    db $dd                                        ; $6ca4: $dd
    ld l, c                                       ; $6ca5: $69
    cpl                                           ; $6ca6: $2f
    dec a                                         ; $6ca7: $3d
    nop                                           ; $6ca8: $00
    halt                                          ; $6ca9: $76
    ld a, [de]                                    ; $6caa: $1a
    ld d, d                                       ; $6cab: $52
    ld e, $7d                                     ; $6cac: $1e $7d
    xor $97                                       ; $6cae: $ee $97
    ld d, c                                       ; $6cb0: $51
    ld [hl], d                                    ; $6cb1: $72
    db $fd                                        ; $6cb2: $fd
    inc e                                         ; $6cb3: $1c
    db $f4                                        ; $6cb4: $f4
    ld a, $e5                                     ; $6cb5: $3e $e5
    ld e, [hl]                                    ; $6cb7: $5e
    add b                                         ; $6cb8: $80
    dec hl                                        ; $6cb9: $2b
    ld a, [$d963]                                 ; $6cba: $fa $63 $d9
    reti                                          ; $6cbd: $d9


    add hl, de                                    ; $6cbe: $19
    ld l, l                                       ; $6cbf: $6d
    ld [hl], c                                    ; $6cc0: $71
    ld h, a                                       ; $6cc1: $67
    cpl                                           ; $6cc2: $2f
    ld a, h                                       ; $6cc3: $7c
    ld sp, hl                                     ; $6cc4: $f9
    sbc c                                         ; $6cc5: $99
    ld b, a                                       ; $6cc6: $47
    jp Jump_000_32f2                              ; $6cc7: $c3 $f2 $32


    sub [hl]                                      ; $6cca: $96
    dec [hl]                                      ; $6ccb: $35
    adc h                                         ; $6ccc: $8c
    inc d                                         ; $6ccd: $14
    di                                            ; $6cce: $f3
    ld [hl], l                                    ; $6ccf: $75
    and a                                         ; $6cd0: $a7
    push hl                                       ; $6cd1: $e5
    dec c                                         ; $6cd2: $0d
    nop                                           ; $6cd3: $00
    db $dd                                        ; $6cd4: $dd
    adc $c7                                       ; $6cd5: $ce $c7
    ld c, b                                       ; $6cd7: $48
    ld sp, $775f                                  ; $6cd8: $31 $5f $77
    ld e, d                                       ; $6cdb: $5a
    xor [hl]                                      ; $6cdc: $ae
    rst $30                                       ; $6cdd: $f7
    and e                                         ; $6cde: $a3
    ld h, c                                       ; $6cdf: $61
    ld a, c                                       ; $6ce0: $79
    sbc a                                         ; $6ce1: $9f
    dec a                                         ; $6ce2: $3d
    nop                                           ; $6ce3: $00
    db $dd                                        ; $6ce4: $dd
    adc $c7                                       ; $6ce5: $ce $c7
    ld c, b                                       ; $6ce7: $48
    ld sp, $775f                                  ; $6ce8: $31 $5f $77
    ld e, d                                       ; $6ceb: $5a
    xor [hl]                                      ; $6cec: $ae
    ld [hl], a                                    ; $6ced: $77
    sub $61                                       ; $6cee: $d6 $61
    ld h, c                                       ; $6cf0: $61
    ld a, h                                       ; $6cf1: $7c
    sbc a                                         ; $6cf2: $9f
    dec a                                         ; $6cf3: $3d
    nop                                           ; $6cf4: $00
    db $dd                                        ; $6cf5: $dd
    ld a, [$42e6]                                 ; $6cf6: $fa $e6 $42
    ld b, a                                       ; $6cf9: $47
    ld c, a                                       ; $6cfa: $4f
    sbc l                                         ; $6cfb: $9d
    ld c, c                                       ; $6cfc: $49
    adc b                                         ; $6cfd: $88
    or d                                          ; $6cfe: $b2
    cp d                                          ; $6cff: $ba
    ld c, e                                       ; $6d00: $4b
    ld h, a                                       ; $6d01: $67
    inc h                                         ; $6d02: $24
    db $eb                                        ; $6d03: $eb
    call nc, $b31e                                ; $6d04: $d4 $1e $b3
    dec hl                                        ; $6d07: $2b
    dec sp                                        ; $6d08: $3b
    scf                                           ; $6d09: $37
    ld c, e                                       ; $6d0a: $4b
    res 3, l                                      ; $6d0b: $cb $9d
    dec l                                         ; $6d0d: $2d
    xor h                                         ; $6d0e: $ac
    inc [hl]                                      ; $6d0f: $34
    dec e                                         ; $6d10: $1d
    dec [hl]                                      ; $6d11: $35
    halt                                          ; $6d12: $76
    xor l                                         ; $6d13: $ad
    inc d                                         ; $6d14: $14
    ld h, d                                       ; $6d15: $62
    sbc $00                                       ; $6d16: $de $00
    db $dd                                        ; $6d18: $dd
    db $ec                                        ; $6d19: $ec
    ld e, a                                       ; $6d1a: $5f
    ld b, a                                       ; $6d1b: $47
    inc [hl]                                      ; $6d1c: $34
    adc c                                         ; $6d1d: $89
    ld d, c                                       ; $6d1e: $51
    sbc $e7                                       ; $6d1f: $de $e7
    inc e                                         ; $6d21: $1c
    adc $48                                       ; $6d22: $ce $48
    sub $39                                       ; $6d24: $d6 $39
    rst $08                                       ; $6d26: $cf
    ld [hl], l                                    ; $6d27: $75
    call nz, Call_03e_7bf5                        ; $6d28: $c4 $f5 $7b
    sbc l                                         ; $6d2b: $9d
    ld [hl], l                                    ; $6d2c: $75
    push af                                       ; $6d2d: $f5
    ld b, e                                       ; $6d2e: $43
    xor c                                         ; $6d2f: $a9
    xor e                                         ; $6d30: $ab
    cp $3a                                        ; $6d31: $fe $3a
    dec [hl]                                      ; $6d33: $35
    or l                                          ; $6d34: $b5
    rlca                                          ; $6d35: $07
    nop                                           ; $6d36: $00
    db $dd                                        ; $6d37: $dd
    ld l, $6b                                     ; $6d38: $2e $6b
    ld b, h                                       ; $6d3a: $44
    ld [$afca], a                                 ; $6d3b: $ea $ca $af
    ld [hl], a                                    ; $6d3e: $77
    ld d, $1a                                     ; $6d3f: $16 $1a
    db $d3                                        ; $6d41: $d3
    ld l, h                                       ; $6d42: $6c
    ld [hl], c                                    ; $6d43: $71
    sbc [hl]                                      ; $6d44: $9e
    dec sp                                        ; $6d45: $3b
    ld c, a                                       ; $6d46: $4f
    xor h                                         ; $6d47: $ac
    push de                                       ; $6d48: $d5
    push de                                       ; $6d49: $d5
    dec c                                         ; $6d4a: $0d
    ld a, l                                       ; $6d4b: $7d
    ld c, d                                       ; $6d4c: $4a
    rrca                                          ; $6d4d: $0f
    nop                                           ; $6d4e: $00
    db $dd                                        ; $6d4f: $dd
    ld l, $6b                                     ; $6d50: $2e $6b
    ld b, h                                       ; $6d52: $44
    ld [$afca], a                                 ; $6d53: $ea $ca $af
    ld [hl], a                                    ; $6d56: $77
    ld d, $1a                                     ; $6d57: $16 $1a
    db $d3                                        ; $6d59: $d3
    ld l, h                                       ; $6d5a: $6c
    ld [hl], c                                    ; $6d5b: $71
    sbc [hl]                                      ; $6d5c: $9e
    or e                                          ; $6d5d: $b3
    ld [hl], a                                    ; $6d5e: $77
    push de                                       ; $6d5f: $d5
    push de                                       ; $6d60: $d5
    add l                                         ; $6d61: $85
    and c                                         ; $6d62: $a1
    xor e                                         ; $6d63: $ab
    xor [hl]                                      ; $6d64: $ae
    xor $01                                       ; $6d65: $ee $01
    nop                                           ; $6d67: $00
    db $dd                                        ; $6d68: $dd
    ld l, $6b                                     ; $6d69: $2e $6b
    ld b, h                                       ; $6d6b: $44
    ld [$afca], a                                 ; $6d6c: $ea $ca $af
    ld [hl], a                                    ; $6d6f: $77
    ld d, $1a                                     ; $6d70: $16 $1a
    db $d3                                        ; $6d72: $d3
    ld l, h                                       ; $6d73: $6c
    ld [hl], c                                    ; $6d74: $71
    sbc [hl]                                      ; $6d75: $9e
    cp e                                          ; $6d76: $bb
    db $f4                                        ; $6d77: $f4
    dec hl                                        ; $6d78: $2b
    ld b, h                                       ; $6d79: $44
    ld d, e                                       ; $6d7a: $53
    ld e, $66                                     ; $6d7b: $1e $66
    rrca                                          ; $6d7d: $0f
    nop                                           ; $6d7e: $00
    db $dd                                        ; $6d7f: $dd
    ld l, $6b                                     ; $6d80: $2e $6b
    ld b, h                                       ; $6d82: $44
    ld [$afca], a                                 ; $6d83: $ea $ca $af
    ld [hl], a                                    ; $6d86: $77
    ld d, $1a                                     ; $6d87: $16 $1a
    db $d3                                        ; $6d89: $d3
    ld l, h                                       ; $6d8a: $6c
    ld [hl], c                                    ; $6d8b: $71
    sbc [hl]                                      ; $6d8c: $9e
    dec bc                                        ; $6d8d: $0b
    inc l                                         ; $6d8e: $2c
    sub $18                                       ; $6d8f: $d6 $18
    and h                                         ; $6d91: $a4
    inc [hl]                                      ; $6d92: $34
    db $ec                                        ; $6d93: $ec
    ld bc, $dd00                                  ; $6d94: $01 $00 $dd
    ld a, d                                       ; $6d97: $7a
    dec e                                         ; $6d98: $1d
    add b                                         ; $6d99: $80
    jp $f05c                                      ; $6d9a: $c3 $5c $f0


    ld [hl], l                                    ; $6d9d: $75
    ld b, d                                       ; $6d9e: $42
    ld [hl], l                                    ; $6d9f: $75
    inc l                                         ; $6da0: $2c
    ld sp, $8d47                                  ; $6da1: $31 $47 $8d
    cp a                                          ; $6da4: $bf
    ldh a, [rNR51]                                ; $6da5: $f0 $25
    ld [hl], $ff                                  ; $6da7: $36 $ff
    dec a                                         ; $6da9: $3d
    nop                                           ; $6daa: $00
    db $dd                                        ; $6dab: $dd

Call_03e_6dac:
    ld a, d                                       ; $6dac: $7a
    and a                                         ; $6dad: $a7
    ld [$e517], sp                                ; $6dae: $08 $17 $e5
    ld [hl], l                                    ; $6db1: $75
    rst $20                                       ; $6db2: $e7
    ret z                                         ; $6db3: $c8

    sbc e                                         ; $6db4: $9b
    ld e, h                                       ; $6db5: $5c
    ld hl, sp-$0e                                 ; $6db6: $f8 $f2
    inc de                                        ; $6db8: $13
    ld a, [de]                                    ; $6db9: $1a
    rla                                           ; $6dba: $17
    ld d, d                                       ; $6dbb: $52
    ld e, [hl]                                    ; $6dbc: $5e
    ld d, [hl]                                    ; $6dbd: $56
    ld a, [hl]                                    ; $6dbe: $7e
    sub a                                         ; $6dbf: $97
    jp nc, $f8a4                                  ; $6dc0: $d2 $a4 $f8

    rst $30                                       ; $6dc3: $f7
    add hl, hl                                    ; $6dc4: $29
    ccf                                           ; $6dc5: $3f
    rst $08                                       ; $6dc6: $cf
    push af                                       ; $6dc7: $f5
    ld h, l                                       ; $6dc8: $65
    and l                                         ; $6dc9: $a5
    sub l                                         ; $6dca: $95
    jp nz, $001e                                  ; $6dcb: $c2 $1e $00

    db $dd                                        ; $6dce: $dd
    ld a, [$74a6]                                 ; $6dcf: $fa $a6 $74
    jr z, jr_03e_6e05                             ; $6dd2: $28 $31

    and a                                         ; $6dd4: $a7
    ld e, h                                       ; $6dd5: $5c
    ldh a, [rBGP]                                 ; $6dd6: $f0 $47
    dec [hl]                                      ; $6dd8: $35
    rra                                           ; $6dd9: $1f
    cp [hl]                                       ; $6dda: $be
    rst $08                                       ; $6ddb: $cf
    ld e, $eb                                     ; $6ddc: $1e $eb
    sbc l                                         ; $6dde: $9d
    ld [hl+], a                                   ; $6ddf: $22
    ld e, h                                       ; $6de0: $5c
    sub h                                         ; $6de1: $94
    rst $10                                       ; $6de2: $d7
    ld d, l                                       ; $6de3: $55
    dec l                                         ; $6de4: $2d
    dec bc                                        ; $6de5: $0b
    ld e, a                                       ; $6de6: $5f
    ld a, [hl]                                    ; $6de7: $7e
    sbc [hl]                                      ; $6de8: $9e
    sub c                                         ; $6de9: $91
    ld c, b                                       ; $6dea: $48
    add hl, hl                                    ; $6deb: $29
    ld a, c                                       ; $6dec: $79
    inc bc                                        ; $6ded: $03
    db $dd                                        ; $6dee: $dd
    db $ec                                        ; $6def: $ec
    ret nc                                        ; $6df0: $d0

    jr c, jr_03e_6e55                             ; $6df1: $38 $62

    sub h                                         ; $6df3: $94
    ld e, a                                       ; $6df4: $5f
    ld sp, hl                                     ; $6df5: $f9
    sub l                                         ; $6df6: $95
    ld a, [c]                                     ; $6df7: $f2
    dec d                                         ; $6df8: $15
    adc $e2                                       ; $6df9: $ce $e2
    cp b                                          ; $6dfb: $b8
    rst $28                                       ; $6dfc: $ef
    ld [$7e57], sp                                ; $6dfd: $08 $57 $7e
    and c                                         ; $6e00: $a1
    and e                                         ; $6e01: $a3
    call nz, $01ef                                ; $6e02: $c4 $ef $01

jr_03e_6e05:
    nop                                           ; $6e05: $00
    db $dd                                        ; $6e06: $dd
    ld a, d                                       ; $6e07: $7a
    xor l                                         ; $6e08: $ad
    ld b, d                                       ; $6e09: $42
    sbc c                                         ; $6e0a: $99
    or [hl]                                       ; $6e0b: $b6
    add l                                         ; $6e0c: $85
    adc [hl]                                      ; $6e0d: $8e
    sbc [hl]                                      ; $6e0e: $9e
    ld a, [hl-]                                   ; $6e0f: $3a
    sub e                                         ; $6e10: $93
    db $10                                        ; $6e11: $10
    ld h, l                                       ; $6e12: $65
    push hl                                       ; $6e13: $e5
    ld d, a                                       ; $6e14: $57
    ld l, b                                       ; $6e15: $68
    add d                                         ; $6e16: $82
    xor [hl]                                      ; $6e17: $ae
    rst $38                                       ; $6e18: $ff
    rst $30                                       ; $6e19: $f7
    nop                                           ; $6e1a: $00
    db $dd                                        ; $6e1b: $dd
    ld [bc], a                                    ; $6e1c: $02
    dec de                                        ; $6e1d: $1b
    db $e4                                        ; $6e1e: $e4
    cp b                                          ; $6e1f: $b8
    sub d                                         ; $6e20: $92
    cp d                                          ; $6e21: $ba
    ldh a, [$35]                                  ; $6e22: $f0 $35
    ld [hl], l                                    ; $6e24: $75
    sbc [hl]                                      ; $6e25: $9e
    dec sp                                        ; $6e26: $3b
    or a                                          ; $6e27: $b7
    or h                                          ; $6e28: $b4
    ld [$19b3], sp                                ; $6e29: $08 $b3 $19
    jr jr_03e_6e6b                                ; $6e2c: $18 $3d

    nop                                           ; $6e2e: $00
    db $dd                                        ; $6e2f: $dd
    ld a, d                                       ; $6e30: $7a
    dec bc                                        ; $6e31: $0b
    ld a, a                                       ; $6e32: $7f
    push hl                                       ; $6e33: $e5
    rla                                           ; $6e34: $17
    and [hl]                                      ; $6e35: $a6
    ld l, c                                       ; $6e36: $69
    or [hl]                                       ; $6e37: $b6
    jr c, @-$6b                                   ; $6e38: $38 $93

    ld [hl+], a                                   ; $6e3a: $22
    inc [hl]                                      ; $6e3b: $34
    pop af                                        ; $6e3c: $f1
    ld a, e                                       ; $6e3d: $7b
    nop                                           ; $6e3e: $00
    db $dd                                        ; $6e3f: $dd
    ld a, d                                       ; $6e40: $7a
    ld h, a                                       ; $6e41: $67
    dec e                                         ; $6e42: $1d
    ld [hl-], a                                   ; $6e43: $32
    ld [hl], $d3                                  ; $6e44: $36 $d3
    ld l, h                                       ; $6e46: $6c
    ld [hl], c                                    ; $6e47: $71
    sbc [hl]                                      ; $6e48: $9e
    db $eb                                        ; $6e49: $eb
    dec l                                         ; $6e4a: $2d
    ld e, c                                       ; $6e4b: $59
    and a                                         ; $6e4c: $a7
    adc $73                                       ; $6e4d: $ce $73
    ld h, a                                       ; $6e4f: $67
    adc e                                         ; $6e50: $8b
    db $eb                                        ; $6e51: $eb
    rst $30                                       ; $6e52: $f7
    ld a, [hl-]                                   ; $6e53: $3a
    db $eb                                        ; $6e54: $eb

jr_03e_6e55:
    ld a, [$943c]                                 ; $6e55: $fa $3c $94
    cp d                                          ; $6e58: $ba
    ld [hl], e                                    ; $6e59: $73
    cp a                                          ; $6e5a: $bf
    ld c, [hl]                                    ; $6e5b: $4e
    ld c, l                                       ; $6e5c: $4d
    db $ed                                        ; $6e5d: $ed
    ld bc, $dd00                                  ; $6e5e: $01 $00 $dd
    db $ec                                        ; $6e61: $ec
    ld e, a                                       ; $6e62: $5f
    rlca                                          ; $6e63: $07
    dec a                                         ; $6e64: $3d
    cp [hl]                                       ; $6e65: $be
    rst $08                                       ; $6e66: $cf
    add hl, sp                                    ; $6e67: $39
    inc e                                         ; $6e68: $1c
    ld a, [hl-]                                   ; $6e69: $3a
    ld d, [hl]                                    ; $6e6a: $56

jr_03e_6e6b:
    ld [hl], d                                    ; $6e6b: $72
    ret c                                         ; $6e6c: $d8

    ld a, [hl+]                                   ; $6e6d: $2a
    inc l                                         ; $6e6e: $2c
    dec a                                         ; $6e6f: $3d
    nop                                           ; $6e70: $00
    db $dd                                        ; $6e71: $dd
    db $ec                                        ; $6e72: $ec
    ld e, a                                       ; $6e73: $5f
    rlca                                          ; $6e74: $07
    dec a                                         ; $6e75: $3d
    cp [hl]                                       ; $6e76: $be
    rst $08                                       ; $6e77: $cf
    add hl, sp                                    ; $6e78: $39
    inc e                                         ; $6e79: $1c
    ld a, [hl-]                                   ; $6e7a: $3a
    ld d, [hl]                                    ; $6e7b: $56
    ld [hl], d                                    ; $6e7c: $72
    ret c                                         ; $6e7d: $d8

    ld a, [hl+]                                   ; $6e7e: $2a
    inc l                                         ; $6e7f: $2c
    di                                            ; $6e80: $f3
    ld e, h                                       ; $6e81: $5c
    sub b                                         ; $6e82: $90
    ld h, $d8                                     ; $6e83: $26 $d8
    ld a, [$f6a7]                                 ; $6e85: $fa $a7 $f6
    nop                                           ; $6e88: $00
    rst $20                                       ; $6e89: $e7
    ld a, [hl-]                                   ; $6e8a: $3a
    ld c, d                                       ; $6e8b: $4a
    rst $38                                       ; $6e8c: $ff
    rst $18                                       ; $6e8d: $df
    ld de, $1d67                                  ; $6e8e: $11 $67 $1d
    inc sp                                        ; $6e91: $33
    nop                                           ; $6e92: $00
    rst $20                                       ; $6e93: $e7
    or b                                          ; $6e94: $b0
    sbc d                                         ; $6e95: $9a
    xor b                                         ; $6e96: $a8
    cp a                                          ; $6e97: $bf
    inc hl                                        ; $6e98: $23
    adc $3a                                       ; $6e99: $ce $3a
    ld h, [hl]                                    ; $6e9b: $66
    nop                                           ; $6e9c: $00
    rst $20                                       ; $6e9d: $e7
    ld a, [hl-]                                   ; $6e9e: $3a
    jp z, $babd                                   ; $6e9f: $ca $bd $ba

    dec bc                                        ; $6ea2: $0b
    ld l, d                                       ; $6ea3: $6a
    and $77                                       ; $6ea4: $e6 $77
    call nz, $c759                                ; $6ea6: $c4 $59 $c7
    inc c                                         ; $6ea9: $0c
    nop                                           ; $6eaa: $00
    rst $20                                       ; $6eab: $e7
    or b                                          ; $6eac: $b0
    ld a, [$dd5e]                                 ; $6ead: $fa $5e $dd
    dec b                                         ; $6eb0: $05
    dec [hl]                                      ; $6eb1: $35
    di                                            ; $6eb2: $f3
    dec sp                                        ; $6eb3: $3b
    ld [c], a                                     ; $6eb4: $e2
    xor h                                         ; $6eb5: $ac
    ld h, e                                       ; $6eb6: $63
    ld b, $00                                     ; $6eb7: $06 $00
    cp l                                          ; $6eb9: $bd
    and b                                         ; $6eba: $a0
    ld d, [hl]                                    ; $6ebb: $56
    sbc d                                         ; $6ebc: $9a
    ld a, a                                       ; $6ebd: $7f
    cp a                                          ; $6ebe: $bf
    inc hl                                        ; $6ebf: $23
    adc $3a                                       ; $6ec0: $ce $3a
    ld h, [hl]                                    ; $6ec2: $66
    nop                                           ; $6ec3: $00
    halt                                          ; $6ec4: $76
    ld c, b                                       ; $6ec5: $48
    add c                                         ; $6ec6: $81
    ld l, h                                       ; $6ec7: $6c
    ld a, [hl]                                    ; $6ec8: $7e
    ld b, a                                       ; $6ec9: $47
    sbc h                                         ; $6eca: $9c
    ld [hl], l                                    ; $6ecb: $75
    call z, $dd00                                 ; $6ecc: $cc $00 $dd
    ld [bc], a                                    ; $6ecf: $02
    cp a                                          ; $6ed0: $bf
    jp $ced5                                      ; $6ed1: $c3 $d5 $ce


    cp d                                          ; $6ed4: $ba
    ld c, [hl]                                    ; $6ed5: $4e
    inc hl                                        ; $6ed6: $23
    adc $ba                                       ; $6ed7: $ce $ba
    rst $30                                       ; $6ed9: $f7
    xor h                                         ; $6eda: $ac
    cp e                                          ; $6edb: $bb
    ld [hl], h                                    ; $6edc: $74
    and l                                         ; $6edd: $a5
    or b                                          ; $6ede: $b0
    ld a, [c]                                     ; $6edf: $f2
    ld [hl], e                                    ; $6ee0: $73
    jr c, jr_03e_6f06                             ; $6ee1: $38 $23

    ld e, c                                       ; $6ee3: $59
    rst $20                                       ; $6ee4: $e7
    inc a                                         ; $6ee5: $3c
    ld sp, $f64a                                  ; $6ee6: $31 $4a $f6
    nop                                           ; $6ee9: $00
    cp l                                          ; $6eea: $bd
    inc l                                         ; $6eeb: $2c
    adc $66                                       ; $6eec: $ce $66
    or c                                          ; $6eee: $b1
    ld de, $8ba9                                  ; $6eef: $11 $a9 $8b
    ld l, [hl]                                    ; $6ef2: $6e
    sub a                                         ; $6ef3: $97
    jp nc, $f8a4                                  ; $6ef4: $d2 $a4 $f8

    rst $30                                       ; $6ef7: $f7
    add hl, hl                                    ; $6ef8: $29
    ccf                                           ; $6ef9: $3f
    rst $08                                       ; $6efa: $cf
    ld d, l                                       ; $6efb: $55
    inc e                                         ; $6efc: $1c
    ld c, e                                       ; $6efd: $4b
    ld a, h                                       ; $6efe: $7c
    ld hl, sp-$06                                 ; $6eff: $f8 $fa
    or d                                          ; $6f01: $b2
    jp nc, $e14a                                  ; $6f02: $d2 $4a $e1

    dec c                                         ; $6f05: $0d

jr_03e_6f06:
    nop                                           ; $6f06: $00
    cp l                                          ; $6f07: $bd
    inc de                                        ; $6f08: $13
    or l                                          ; $6f09: $b5
    xor d                                         ; $6f0a: $aa
    ld d, h                                       ; $6f0b: $54
    cp [hl]                                       ; $6f0c: $be
    inc a                                         ; $6f0d: $3c
    ld a, h                                       ; $6f0e: $7c
    or $2f                                        ; $6f0f: $f6 $2f
    ld h, d                                       ; $6f11: $62
    cp l                                          ; $6f12: $bd
    rst $28                                       ; $6f13: $ef
    dec sp                                        ; $6f14: $3b
    sub h                                         ; $6f15: $94
    scf                                           ; $6f16: $37
    or c                                          ; $6f17: $b1
    sbc c                                         ; $6f18: $99
    rst $10                                       ; $6f19: $d7
    ret z                                         ; $6f1a: $c8

    push de                                       ; $6f1b: $d5
    adc $04                                       ; $6f1c: $ce $04
    ld [hl], e                                    ; $6f1e: $73
    pop hl                                        ; $6f1f: $e1
    set 1, a                                      ; $6f20: $cb $cf
    inc h                                         ; $6f22: $24
    ld a, [hl+]                                   ; $6f23: $2a
    ld hl, $a4d7                                  ; $6f24: $21 $d7 $a4
    db $fc                                        ; $6f27: $fc
    dec c                                         ; $6f28: $0d
    nop                                           ; $6f29: $00
    add c                                         ; $6f2a: $81
    ld l, l                                       ; $6f2b: $6d
    sbc b                                         ; $6f2c: $98
    xor e                                         ; $6f2d: $ab
    cp h                                          ; $6f2e: $bc
    xor $67                                       ; $6f2f: $ee $67
    or d                                          ; $6f31: $b2
    ld c, $e5                                     ; $6f32: $0e $e5
    ld h, l                                       ; $6f34: $65
    cp l                                          ; $6f35: $bd
    dec h                                         ; $6f36: $25
    db $eb                                        ; $6f37: $eb
    call nc, $e9f5                                ; $6f38: $d4 $f5 $e9
    add d                                         ; $6f3b: $82
    sbc d                                         ; $6f3c: $9a
    ld c, c                                       ; $6f3d: $49
    add l                                         ; $6f3e: $85
    rrca                                          ; $6f3f: $0f
    ld [hl], e                                    ; $6f40: $73
    sub c                                         ; $6f41: $91
    ret z                                         ; $6f42: $c8

    ld a, [hl-]                                   ; $6f43: $3a
    ld [hl], l                                    ; $6f44: $75
    ld hl, sp-$02                                 ; $6f45: $f8 $fe
    rst $20                                       ; $6f47: $e7
    add hl, sp                                    ; $6f48: $39
    adc e                                         ; $6f49: $8b
    xor e                                         ; $6f4a: $ab
    cp d                                          ; $6f4b: $ba
    ldh [rPCM34], a                               ; $6f4c: $e0 $77
    jp z, $0dcb                                   ; $6f4e: $ca $cb $0d

    nop                                           ; $6f51: $00
    ld bc, $342f                                  ; $6f52: $01 $2f $34
    sbc h                                         ; $6f55: $9c
    push bc                                       ; $6f56: $c5
    ld [hl], c                                    ; $6f57: $71
    sbc b                                         ; $6f58: $98
    dec hl                                        ; $6f59: $2b
    cp c                                          ; $6f5a: $b9
    ldh [$eb], a                                  ; $6f5b: $e0 $eb
    jp nz, $f7d7                                  ; $6f5d: $c2 $d7 $f7

    cp c                                          ; $6f60: $b9
    jp c, $d759                                   ; $6f61: $da $59 $d7

    ld l, c                                       ; $6f64: $69
    ld b, h                                       ; $6f65: $44
    ld hl, sp-$14                                 ; $6f66: $f8 $ec
    ld e, a                                       ; $6f68: $5f
    call nz, $af7a                                ; $6f69: $c4 $7a $af
    ei                                            ; $6f6c: $fb
    dec h                                         ; $6f6d: $25
    xor [hl]                                      ; $6f6e: $ae
    ld d, c                                       ; $6f6f: $51
    xor b                                         ; $6f70: $a8
    or e                                          ; $6f71: $b3
    jr c, jr_03e_6fa2                             ; $6f72: $38 $2e

    ld [hl], d                                    ; $6f74: $72
    jp c, $f2a4                                   ; $6f75: $da $a4 $f2

    ei                                            ; $6f78: $fb
    ld [bc], a                                    ; $6f79: $02
    ld h, l                                       ; $6f7a: $65
    ld c, a                                       ; $6f7b: $4f
    nop                                           ; $6f7c: $00
    add c                                         ; $6f7d: $81
    xor [hl]                                      ; $6f7e: $ae
    jp Jump_03e_597d                              ; $6f7f: $c3 $7d $59


    daa                                           ; $6f82: $27
    inc hl                                        ; $6f83: $23
    pop hl                                        ; $6f84: $e1
    or e                                          ; $6f85: $b3
    ld a, a                                       ; $6f86: $7f
    ld de, $0deb                                  ; $6f87: $11 $eb $0d
    nop                                           ; $6f8a: $00
    or b                                          ; $6f8b: $b0
    adc $3a                                       ; $6f8c: $ce $3a
    ld h, [hl]                                    ; $6f8e: $66
    add a                                         ; $6f8f: $87
    sbc l                                         ; $6f90: $9d
    ld [hl], l                                    ; $6f91: $75
    db $ec                                        ; $6f92: $ec
    ld [bc], a                                    ; $6f93: $02
    call $c662                                    ; $6f94: $cd $62 $c6
    cpl                                           ; $6f97: $2f
    add a                                         ; $6f98: $87
    inc bc                                        ; $6f99: $03
    cp l                                          ; $6f9a: $bd
    sra e                                         ; $6f9b: $cb $2b
    rst $20                                       ; $6f9d: $e7
    cp c                                          ; $6f9e: $b9
    set 4, h                                      ; $6f9f: $cb $e4
    ld d, c                                       ; $6fa1: $51

jr_03e_6fa2:
    xor e                                         ; $6fa2: $ab
    ld d, e                                       ; $6fa3: $53

jr_03e_6fa4:
    ld [$2d37], a                                 ; $6fa4: $ea $37 $2d
    sub c                                         ; $6fa7: $91
    ld a, [bc]                                    ; $6fa8: $0a
    nop                                           ; $6fa9: $00
    cp l                                          ; $6faa: $bd
    sra e                                         ; $6fab: $cb $2b
    rst $20                                       ; $6fad: $e7
    add hl, sp                                    ; $6fae: $39
    ld a, e                                       ; $6faf: $7b
    ld c, d                                       ; $6fb0: $4a
    daa                                           ; $6fb1: $27
    ld c, e                                       ; $6fb2: $4b
    ld b, d                                       ; $6fb3: $42
    ld [hl], $0f                                  ; $6fb4: $36 $0f
    nop                                           ; $6fb6: $00
    rst $20                                       ; $6fb7: $e7
    or b                                          ; $6fb8: $b0
    sbc d                                         ; $6fb9: $9a
    xor b                                         ; $6fba: $a8
    ccf                                           ; $6fbb: $3f
    sub e                                         ; $6fbc: $93
    jr jr_03e_6fa4                                ; $6fbd: $18 $e5

    rst $10                                       ; $6fbf: $d7
    ld c, e                                       ; $6fc0: $4b
    ld [hl+], a                                   ; $6fc1: $22
    ld [hl], l                                    ; $6fc2: $75
    rla                                           ; $6fc3: $17
    xor e                                         ; $6fc4: $ab
    ld [hl], c                                    ; $6fc5: $71
    ld a, [c]                                     ; $6fc6: $f2
    ld a, [bc]                                    ; $6fc7: $0a
    nop                                           ; $6fc8: $00
    cp l                                          ; $6fc9: $bd
    sra e                                         ; $6fca: $cb $2b
    rst $20                                       ; $6fcc: $e7
    cp c                                          ; $6fcd: $b9
    dec hl                                        ; $6fce: $2b
    inc e                                         ; $6fcf: $1c
    ld c, e                                       ; $6fd0: $4b
    ld [bc], a                                    ; $6fd1: $02
    cp l                                          ; $6fd2: $bd
    sra e                                         ; $6fd3: $cb $2b
    rst $20                                       ; $6fd5: $e7
    add hl, sp                                    ; $6fd6: $39
    dec sp                                        ; $6fd7: $3b
    inc [hl]                                      ; $6fd8: $34
    adc a                                         ; $6fd9: $8f
    pop af                                        ; $6fda: $f1
    db $eb                                        ; $6fdb: $eb
    ld b, [hl]                                    ; $6fdc: $46
    adc h                                         ; $6fdd: $8c
    xor c                                         ; $6fde: $a9
    nop                                           ; $6fdf: $00
    cp l                                          ; $6fe0: $bd
    sra e                                         ; $6fe1: $cb $2b
    rst $20                                       ; $6fe3: $e7
    add hl, sp                                    ; $6fe4: $39
    ei                                            ; $6fe5: $fb
    and [hl]                                      ; $6fe6: $a6
    ld sp, $fda5                                  ; $6fe7: $31 $a5 $fd
    inc a                                         ; $6fea: $3c
    ld d, a                                       ; $6feb: $57
    ld a, [hl]                                    ; $6fec: $7e
    ld a, l                                       ; $6fed: $7d
    ld e, $6a                                     ; $6fee: $1e $6a
    rrca                                          ; $6ff0: $0f
    nop                                           ; $6ff1: $00
    add c                                         ; $6ff2: $81
    sub h                                         ; $6ff3: $94
    xor [hl]                                      ; $6ff4: $ae
    push de                                       ; $6ff5: $d5
    db $ec                                        ; $6ff6: $ec
    sub a                                         ; $6ff7: $97
    ld [hl-], a                                   ; $6ff8: $32
    adc e                                         ; $6ff9: $8b
    db $e3                                        ; $6ffa: $e3
    jr nc, jr_03e_7054                            ; $6ffb: $30 $57

    ld a, c                                       ; $6ffd: $79
    db $eb                                        ; $6ffe: $eb
    cpl                                           ; $6fff: $2f
    ld c, h                                       ; $7000: $4c
    reti                                          ; $7001: $d9


    rlca                                          ; $7002: $07
    ld l, l                                       ; $7003: $6d
    xor $05                                       ; $7004: $ee $05
    ld [c], a                                     ; $7006: $e2
    add a                                         ; $7007: $87
    inc e                                         ; $7008: $1c
    dec [hl]                                      ; $7009: $35
    cp [hl]                                       ; $700a: $be
    ld [hl], h                                    ; $700b: $74
    db $ed                                        ; $700c: $ed
    set 3, [hl]                                   ; $700d: $cb $de
    ret nc                                        ; $700f: $d0

    inc b                                         ; $7010: $04
    di                                            ; $7011: $f3
    ld b, $97                                     ; $7012: $06 $97
    cp b                                          ; $7014: $b8
    xor d                                         ; $7015: $aa
    cp $23                                        ; $7016: $fe $23
    rst $30                                       ; $7018: $f7
    ld d, $67                                     ; $7019: $16 $67
    inc bc                                        ; $701b: $03
    sbc a                                         ; $701c: $9f
    db $fd                                        ; $701d: $fd
    adc e                                         ; $701e: $8b
    ld e, b                                       ; $701f: $58
    rst $28                                       ; $7020: $ef
    ld e, l                                       ; $7021: $5d
    db $f4                                        ; $7022: $f4
    inc sp                                        ; $7023: $33
    inc d                                         ; $7024: $14
    sub $89                                       ; $7025: $d6 $89
    db $ed                                        ; $7027: $ed
    rst $20                                       ; $7028: $e7
    ld e, c                                       ; $7029: $59
    ld d, $98                                     ; $702a: $16 $98
    ld [hl], l                                    ; $702c: $75
    ld b, a                                       ; $702d: $47
    jr z, @-$45                                   ; $702e: $28 $b9

    ld b, b                                       ; $7030: $40
    ld d, $1a                                     ; $7031: $16 $1a
    db $d3                                        ; $7033: $d3
    ld [de], a                                    ; $7034: $12
    rst $18                                       ; $7035: $df
    and a                                         ; $7036: $a7
    adc h                                         ; $7037: $8c
    ld a, [de]                                    ; $7038: $1a
    cp e                                          ; $7039: $bb
    or $0b                                        ; $703a: $f6 $0b
    dec e                                         ; $703c: $1d
    add $9c                                       ; $703d: $c6 $9c
    rst $20                                       ; $703f: $e7
    ld e, b                                       ; $7040: $58
    add a                                         ; $7041: $87
    db $ec                                        ; $7042: $ec
    rst $38                                       ; $7043: $ff
    ld [hl], d                                    ; $7044: $72
    inc bc                                        ; $7045: $03
    ld a, l                                       ; $7046: $7d
    ld [hl], e                                    ; $7047: $73
    sbc [hl]                                      ; $7048: $9e
    dec e                                         ; $7049: $1d
    adc d                                         ; $704a: $8a
    call $a9d7                                    ; $704b: $cd $d7 $a9
    db $eb                                        ; $704e: $eb
    ld a, h                                       ; $704f: $7c
    cp a                                          ; $7050: $bf
    sub a                                         ; $7051: $97
    ld a, l                                       ; $7052: $7d
    ret nc                                        ; $7053: $d0

jr_03e_7054:
    ld b, $3e                                     ; $7054: $06 $3e
    ei                                            ; $7056: $fb
    rla                                           ; $7057: $17
    or c                                          ; $7058: $b1
    sbc $bb                                       ; $7059: $de $bb
    adc h                                         ; $705b: $8c
    ret z                                         ; $705c: $c8

    ld a, [hl-]                                   ; $705d: $3a
    ld [hl], l                                    ; $705e: $75
    ld d, $c7                                     ; $705f: $16 $c7

jr_03e_7061:
    ld d, l                                       ; $7061: $55
    or d                                          ; $7062: $b2
    ld d, h                                       ; $7063: $54
    jr z, jr_03e_7061                             ; $7064: $28 $fb

    ld [hl-], a                                   ; $7066: $32
    sbc a                                         ; $7067: $9f
    ld d, d                                       ; $7068: $52
    or a                                          ; $7069: $b7
    sbc b                                         ; $706a: $98
    jp nc, $06f2                                  ; $706b: $d2 $f2 $06

    cp l                                          ; $706e: $bd
    add l                                         ; $706f: $85
    cp c                                          ; $7070: $b9
    ldh [rPCM34], a                               ; $7071: $e0 $77
    jr z, jr_03e_70c0                             ; $7073: $28 $4b

    dec de                                        ; $7075: $1b
    sbc a                                         ; $7076: $9f
    ei                                            ; $7077: $fb
    ld a, l                                       ; $7078: $7d
    add c                                         ; $7079: $81
    ld e, h                                       ; $707a: $5c
    inc hl                                        ; $707b: $23
    xor $3b                                       ; $707c: $ee $3b
    rst $18                                       ; $707e: $df
    cpl                                           ; $707f: $2f
    rst $28                                       ; $7080: $ef
    push af                                       ; $7081: $f5
    call Call_03e_7679                            ; $7082: $cd $79 $76
    jr z, jr_03e_70bd                             ; $7085: $28 $36

    cp a                                          ; $7087: $bf
    ld c, d                                       ; $7088: $4a
    sub [hl]                                      ; $7089: $96
    ld a, [bc]                                    ; $708a: $0a
    ld h, l                                       ; $708b: $65
    cp a                                          ; $708c: $bf
    adc $f7                                       ; $708d: $ce $f7
    ld a, e                                       ; $708f: $7b
    cp c                                          ; $7090: $b9
    ld bc, $16e7                                  ; $7091: $01 $e7 $16
    ld d, a                                       ; $7094: $57
    ld e, l                                       ; $7095: $5d
    ld l, l                                       ; $7096: $6d
    dec e                                         ; $7097: $1d
    dec [hl]                                      ; $7098: $35
    halt                                          ; $7099: $76
    adc l                                         ; $709a: $8d
    jr c, @+$6c                                   ; $709b: $38 $6a

    db $e4                                        ; $709d: $e4
    jp nz, Jump_03e_79a6                          ; $709e: $c2 $a6 $79

    rst $28                                       ; $70a1: $ef
    inc e                                         ; $70a2: $1c
    halt                                          ; $70a3: $76
    jr z, @+$38                                   ; $70a4: $28 $36

jr_03e_70a6:
    ld e, a                                       ; $70a6: $5f
    and a                                         ; $70a7: $a7
    xor [hl]                                      ; $70a8: $ae
    inc d                                         ; $70a9: $14
    ld b, d                                       ; $70aa: $42
    cpl                                           ; $70ab: $2f
    dec bc                                        ; $70ac: $0b
    cp [hl]                                       ; $70ad: $be
    add $5f                                       ; $70ae: $c6 $5f
    push de                                       ; $70b0: $d5
    or d                                          ; $70b1: $b2
    sub d                                         ; $70b2: $92
    ld a, e                                       ; $70b3: $7b
    adc h                                         ; $70b4: $8c
    call nc, $a985                                ; $70b5: $d4 $85 $a9
    xor l                                         ; $70b8: $ad
    ld d, e                                       ; $70b9: $53
    ld a, b                                       ; $70ba: $78
    inc bc                                        ; $70bb: $03
    ld d, a                                       ; $70bc: $57

jr_03e_70bd:
    cp h                                          ; $70bd: $bc
    push af                                       ; $70be: $f5
    pop hl                                        ; $70bf: $e1

jr_03e_70c0:
    xor e                                         ; $70c0: $ab
    cp h                                          ; $70c1: $bc
    push af                                       ; $70c2: $f5
    pop hl                                        ; $70c3: $e1
    dec bc                                        ; $70c4: $0b
    sub h                                         ; $70c5: $94
    ld a, e                                       ; $70c6: $7b
    ld bc, $2319                                  ; $70c7: $01 $19 $23
    dec b                                         ; $70ca: $05
    cp [hl]                                       ; $70cb: $be
    xor $9e                                       ; $70cc: $ee $9e
    dec bc                                        ; $70ce: $0b
    ld e, a                                       ; $70cf: $5f
    sbc c                                         ; $70d0: $99
    jp $d134                                      ; $70d1: $c3 $34 $d1


    add hl, bc                                    ; $70d4: $09
    ld h, [hl]                                    ; $70d5: $66
    rst $08                                       ; $70d6: $cf
    ld e, l                                       ; $70d7: $5d
    pop hl                                        ; $70d8: $e1
    ld e, b                                       ; $70d9: $58
    ld a, [hl+]                                   ; $70da: $2a
    call c, $ba2f                                 ; $70db: $dc $2f $ba
    ld sp, hl                                     ; $70de: $f9
    sub h                                         ; $70df: $94
    cp d                                          ; $70e0: $ba
    push bc                                       ; $70e1: $c5
    sub h                                         ; $70e2: $94
    sub [hl]                                      ; $70e3: $96
    ldh a, [$61]                                  ; $70e4: $f0 $61
    ld l, $72                                     ; $70e6: $2e $72
    dec h                                         ; $70e8: $25
    rst $20                                       ; $70e9: $e7
    sbc e                                         ; $70ea: $9b
    ld d, h                                       ; $70eb: $54
    sbc l                                         ; $70ec: $9d
    ld c, a                                       ; $70ed: $4f
    ld e, l                                       ; $70ee: $5d
    add l                                         ; $70ef: $85
    add [hl]                                      ; $70f0: $86
    ld a, d                                       ; $70f1: $7a
    inc bc                                        ; $70f2: $03
    ld d, a                                       ; $70f3: $57
    rst $38                                       ; $70f4: $ff
    ld [hl+], a                                   ; $70f5: $22
    rst $30                                       ; $70f6: $f7
    sub l                                         ; $70f7: $95
    and [hl]                                      ; $70f8: $a6
    ld d, l                                       ; $70f9: $55
    rst $30                                       ; $70fa: $f7
    jr jr_03e_70a6                                ; $70fb: $18 $a9

    rst $30                                       ; $70fd: $f7
    adc [hl]                                      ; $70fe: $8e
    ld e, c                                       ; $70ff: $59
    add sp, $30                                   ; $7100: $e8 $30
    and $6a                                       ; $7102: $e6 $6a
    ld h, d                                       ; $7104: $62
    ld [$97c2], a                                 ; $7105: $ea $c2 $97
    rst $18                                       ; $7108: $df
    ld a, c                                       ; $7109: $79
    ld h, d                                       ; $710a: $62
    xor l                                         ; $710b: $ad
    xor [hl]                                      ; $710c: $ae
    ld l, [hl]                                    ; $710d: $6e
    add sp, $53                                   ; $710e: $e8 $53
    xor $f5                                       ; $7110: $ee $f5
    ld a, [bc]                                    ; $7112: $0a
    and [hl]                                      ; $7113: $a6
    db $fc                                        ; $7114: $fc
    ld a, [hl+]                                   ; $7115: $2a
    adc [hl]                                      ; $7116: $8e
    and l                                         ; $7117: $a5
    jp nz, $cafd                                  ; $7118: $c2 $fd $ca

    rst $08                                       ; $711b: $cf
    ld a, h                                       ; $711c: $7c
    db $fd                                        ; $711d: $fd
    scf                                           ; $711e: $37
    nop                                           ; $711f: $00
    or $2f                                        ; $7120: $f6 $2f
    ld h, d                                       ; $7122: $62
    add l                                         ; $7123: $85
    xor a                                         ; $7124: $af
    db $db                                        ; $7125: $db
    xor a                                         ; $7126: $af
    db $fc                                        ; $7127: $fc
    call z, Call_000_3fd7                         ; $7128: $cc $d7 $3f
    db $eb                                        ; $712b: $eb
    rst $30                                       ; $712c: $f7
    ld e, b                                       ; $712d: $58
    rst $18                                       ; $712e: $df
    inc e                                         ; $712f: $1c
    dec [hl]                                      ; $7130: $35
    halt                                          ; $7131: $76
    jp hl                                         ; $7132: $e9


    ld a, [hl]                                    ; $7133: $7e
    ld a, [$92a5]                                 ; $7134: $fa $a5 $92
    dec bc                                        ; $7137: $0b
    ld d, e                                       ; $7138: $53
    or $16                                        ; $7139: $f6 $16
    ld h, a                                       ; $713b: $67
    ld [hl], e                                    ; $713c: $73
    rst $18                                       ; $713d: $df
    ld [hl], a                                    ; $713e: $77
    or a                                          ; $713f: $b7
    ldh [$5b], a                                  ; $7140: $e0 $5b
    rla                                           ; $7142: $17
    ld c, d                                       ; $7143: $4a
    ld d, [hl]                                    ; $7144: $56
    ld d, e                                       ; $7145: $53
    ld d, e                                       ; $7146: $53
    xor b                                         ; $7147: $a8
    dec a                                         ; $7148: $3d
    nop                                           ; $7149: $00
    db $dd                                        ; $714a: $dd
    xor [hl]                                      ; $714b: $ae
    cp $45                                        ; $714c: $fe $45
    ld l, $c8                                     ; $714e: $2e $c8
    ld a, l                                       ; $7150: $7d
    and l                                         ; $7151: $a5
    jp hl                                         ; $7152: $e9


    ei                                            ; $7153: $fb
    sbc h                                         ; $7154: $9c
    jp $855f                                      ; $7155: $c3 $5f $85


    db $fd                                        ; $7158: $fd
    ld a, e                                       ; $7159: $7b
    db $ec                                        ; $715a: $ec
    ld a, [bc]                                    ; $715b: $0a
    rst $00                                       ; $715c: $c7
    ld d, d                                       ; $715d: $52
    pop hl                                        ; $715e: $e1
    ld a, [hl]                                    ; $715f: $7e
    rst $20                                       ; $7160: $e7
    adc c                                         ; $7161: $89
    or l                                          ; $7162: $b5
    cp d                                          ; $7163: $ba
    cp d                                          ; $7164: $ba
    and c                                         ; $7165: $a1
    ld c, a                                       ; $7166: $4f
    add c                                         ; $7167: $81
    ld c, a                                       ; $7168: $4f
    cp a                                          ; $7169: $bf
    ld d, h                                       ; $716a: $54
    ld [hl], d                                    ; $716b: $72

Jump_03e_716c:
    ld d, $c7                                     ; $716c: $16 $c7
    ld e, c                                       ; $716e: $59
    ld e, h                                       ; $716f: $5c
    and e                                         ; $7170: $a3
    cp h                                          ; $7171: $bc
    ld l, $a4                                     ; $7172: $2e $a4
    ld a, b                                       ; $7174: $78
    jp z, Jump_000_2eea                           ; $7175: $ca $ea $2e

    ld e, l                                       ; $7178: $5d
    add sp, $30                                   ; $7179: $e8 $30
    and [hl]                                      ; $717b: $a6
    sbc $00                                       ; $717c: $de $00
    ld h, a                                       ; $717e: $67
    dec sp                                        ; $717f: $3b
    ld h, d                                       ; $7180: $62
    jp nz, Jump_000_3987                          ; $7181: $c2 $87 $39

    db $fd                                        ; $7184: $fd
    adc [hl]                                      ; $7185: $8e
    call $e2cf                                    ; $7186: $cd $cf $e2
    cp b                                          ; $7189: $b8
    ld l, d                                       ; $718a: $6a
    ld b, a                                       ; $718b: $47
    ld a, c                                       ; $718c: $79
    sbc l                                         ; $718d: $9d
    jp Jump_03e_755f                              ; $718e: $c3 $5f $75


    ld c, c                                       ; $7191: $49
    add hl, de                                    ; $7192: $19
    and [hl]                                      ; $7193: $a6
    adc c                                         ; $7194: $89
    ld c, [hl]                                    ; $7195: $4e
    ldh a, [$e1]                                  ; $7196: $f0 $e1
    or e                                          ; $7198: $b3
    ld a, a                                       ; $7199: $7f
    ld de, $bdeb                                  ; $719a: $11 $eb $bd
    cp [hl]                                       ; $719d: $be
    add hl, sp                                    ; $719e: $39
    push hl                                       ; $719f: $e5
    ld c, d                                       ; $71a0: $4a
    adc $37                                       ; $71a1: $ce $37
    xor c                                         ; $71a3: $a9
    cp d                                          ; $71a4: $ba
    rra                                           ; $71a5: $1f
    cp [hl]                                       ; $71a6: $be
    ld l, a                                       ; $71a7: $6f
    add h                                         ; $71a8: $84
    cpl                                           ; $71a9: $2f
    and h                                         ; $71aa: $a4
    db $e4                                        ; $71ab: $e4
    sub h                                         ; $71ac: $94
    jp nc, $9ab5                                  ; $71ad: $d2 $b5 $9a

    db $fd                                        ; $71b0: $fd
    ld d, d                                       ; $71b1: $52
    ld h, [hl]                                    ; $71b2: $66
    ld [hl], c                                    ; $71b3: $71
    ld e, h                                       ; $71b4: $5c
    db $e4                                        ; $71b5: $e4
    ld a, [hl+]                                   ; $71b6: $2a
    adc [hl]                                      ; $71b7: $8e
    and l                                         ; $71b8: $a5
    ld a, [c]                                     ; $71b9: $f2
    cp d                                          ; $71ba: $ba
    ld e, a                                       ; $71bb: $5f
    ld e, b                                       ; $71bc: $58
    ld e, $e3                                     ; $71bd: $1e $e3
    res 1, b                                      ; $71bf: $cb $88
    dec hl                                        ; $71c1: $2b
    ccf                                           ; $71c2: $3f
    di                                            ; $71c3: $f3
    push af                                       ; $71c4: $f5
    rst $18                                       ; $71c5: $df
    nop                                           ; $71c6: $00
    add c                                         ; $71c7: $81
    dec c                                         ; $71c8: $0d
    ld [hl], d                                    ; $71c9: $72
    call nc, $c835                                ; $71ca: $d4 $35 $c8
    ld a, l                                       ; $71cd: $7d
    add c                                         ; $71ce: $81
    cpl                                           ; $71cf: $2f
    ld c, h                                       ; $71d0: $4c
    ld e, c                                       ; $71d1: $59
    ret                                           ; $71d2: $c9


    ld e, c                                       ; $71d3: $59
    inc e                                         ; $71d4: $1c
    ld d, a                                       ; $71d5: $57
    ld h, c                                       ; $71d6: $61
    sbc $eb                                       ; $71d7: $de $eb
    jp $d645                                      ; $71d9: $c3 $45 $d6


    add hl, sp                                    ; $71dc: $39
    adc e                                         ; $71dd: $8b
    db $e3                                        ; $71de: $e3
    ld [hl+], a                                   ; $71df: $22
    pop de                                        ; $71e0: $d1
    ld c, e                                       ; $71e1: $4b
    push de                                       ; $71e2: $d5
    ld e, c                                       ; $71e3: $59
    inc e                                         ; $71e4: $1c
    rla                                           ; $71e5: $17
    and [hl]                                      ; $71e6: $a6
    ld a, a                                       ; $71e7: $7f
    add hl, hl                                    ; $71e8: $29
    call c, Call_000_0b31                         ; $71e9: $dc $31 $0b
    dec e                                         ; $71ec: $1d
    add $dc                                       ; $71ed: $c6 $dc
    rst $28                                       ; $71ef: $ef
    inc a                                         ; $71f0: $3c
    or c                                          ; $71f1: $b1
    ld d, [hl]                                    ; $71f2: $56
    ld d, a                                       ; $71f3: $57
    scf                                           ; $71f4: $37

Call_03e_71f5:
    db $f4                                        ; $71f5: $f4
    add hl, hl                                    ; $71f6: $29
    rst $30                                       ; $71f7: $f7
    ld a, d                                       ; $71f8: $7a
    dec b                                         ; $71f9: $05
    ld d, e                                       ; $71fa: $53
    ld a, [hl]                                    ; $71fb: $7e
    jp c, $c720                                   ; $71fc: $da $20 $c7

    ld d, l                                       ; $71ff: $55
    sub a                                         ; $7200: $97
    inc d                                         ; $7201: $14
    sbc d                                         ; $7202: $9a
    ld b, [hl]                                    ; $7203: $46

jr_03e_7204:
    db $f4                                        ; $7204: $f4
    add hl, sp                                    ; $7205: $39
    ld [c], a                                     ; $7206: $e2
    jp z, Jump_03e_7ccf                           ; $7207: $ca $cf $7c

    db $fd                                        ; $720a: $fd
    ldh a, [$3d]                                  ; $720b: $f0 $3d
    ld a, [$01bf]                                 ; $720d: $fa $bf $01
    sub a                                         ; $7210: $97
    ld [hl], c                                    ; $7211: $71
    add l                                         ; $7212: $85
    cp c                                          ; $7213: $b9
    sub d                                         ; $7214: $92
    cp d                                          ; $7215: $ba
    sub b                                         ; $7216: $90
    xor b                                         ; $7217: $a8
    ld e, a                                       ; $7218: $5f
    scf                                           ; $7219: $37
    ld h, d                                       ; $721a: $62
    ld c, h                                       ; $721b: $4c
    add l                                         ; $721c: $85
    xor a                                         ; $721d: $af
    sbc e                                         ; $721e: $9b
    db $fd                                        ; $721f: $fd
    adc e                                         ; $7220: $8b
    ld e, b                                       ; $7221: $58
    rla                                           ; $7222: $17
    sub b                                         ; $7223: $90
    ld sp, $7a52                                  ; $7224: $31 $52 $7a
    xor h                                         ; $7227: $ac
    db $db                                        ; $7228: $db
    dec d                                         ; $7229: $15
    adc [hl]                                      ; $722a: $8e
    and l                                         ; $722b: $a5
    jp nz, $cafd                                  ; $722c: $c2 $fd $ca

    rst $08                                       ; $722f: $cf
    ld a, h                                       ; $7230: $7c
    db $fd                                        ; $7231: $fd
    inc hl                                        ; $7232: $23
    adc [hl]                                      ; $7233: $8e
    ld a, [de]                                    ; $7234: $1a
    cp c                                          ; $7235: $b9
    cp d                                          ; $7236: $ba
    ld l, c                                       ; $7237: $69
    sbc l                                         ; $7238: $9d
    ld l, e                                       ; $7239: $6b
    xor b                                         ; $723a: $a8
    pop af                                        ; $723b: $f1
    ld sp, $07b2                                  ; $723c: $31 $b2 $07
    nop                                           ; $723f: $00
    db $dd                                        ; $7240: $dd
    db $ec                                        ; $7241: $ec
    inc [hl]                                      ; $7242: $34
    halt                                          ; $7243: $76
    jp hl                                         ; $7244: $e9


    adc b                                         ; $7245: $88
    ld [hl], e                                    ; $7246: $73
    cp b                                          ; $7247: $b8
    ld h, d                                       ; $7248: $62
    sub e                                         ; $7249: $93
    dec a                                         ; $724a: $3d
    halt                                          ; $724b: $76
    add hl, de                                    ; $724c: $19
    ld h, a                                       ; $724d: $67
    ld [hl], c                                    ; $724e: $71
    dec l                                         ; $724f: $2d
    and $8e                                       ; $7250: $e6 $8e
    ld e, c                                       ; $7252: $59
    add sp, $30                                   ; $7253: $e8 $30
    and $c2                                       ; $7255: $e6 $c2
    sub a                                         ; $7257: $97
    rst $18                                       ; $7258: $df
    ld a, c                                       ; $7259: $79
    ld h, d                                       ; $725a: $62
    xor l                                         ; $725b: $ad
    xor [hl]                                      ; $725c: $ae
    ld l, [hl]                                    ; $725d: $6e
    add sp, $53                                   ; $725e: $e8 $53
    xor $75                                       ; $7260: $ee $75
    cp e                                          ; $7262: $bb
    ld a, d                                       ; $7263: $7a
    dec d                                         ; $7264: $15
    rst $00                                       ; $7265: $c7
    ld d, d                                       ; $7266: $52
    pop hl                                        ; $7267: $e1
    ld a, [hl]                                    ; $7268: $7e
    push hl                                       ; $7269: $e5
    ld h, a                                       ; $726a: $67
    cp [hl]                                       ; $726b: $be
    cp $1e                                        ; $726c: $fe $1e
    nop                                           ; $726e: $00
    cp l                                          ; $726f: $bd
    jr nc, jr_03e_72c4                            ; $7270: $30 $52

    rst $20                                       ; $7272: $e7
    cp c                                          ; $7273: $b9
    ld h, $35                                     ; $7274: $26 $35
    pop hl                                        ; $7276: $e1
    or e                                          ; $7277: $b3
    jr c, jr_03e_7204                             ; $7278: $38 $8a

    ld [hl], h                                    ; $727a: $74
    jp hl                                         ; $727b: $e9


    ld a, [hl+]                                   ; $727c: $2a
    sub h                                         ; $727d: $94
    ld d, c                                       ; $727e: $51
    ld h, e                                       ; $727f: $63
    sbc $eb                                       ; $7280: $de $eb
    or l                                          ; $7282: $b5
    sbc b                                         ; $7283: $98
    ld a, $75                                     ; $7284: $3e $75
    dec h                                         ; $7286: $25
    ld [hl], l                                    ; $7287: $75
    ld e, a                                       ; $7288: $5f
    ld e, h                                       ; $7289: $5c
    adc l                                         ; $728a: $8d
    xor c                                         ; $728b: $a9
    di                                            ; $728c: $f3
    sbc h                                         ; $728d: $9c
    ld a, l                                       ; $728e: $7d
    ld b, d                                       ; $728f: $42
    jr nc, @+$61                                  ; $7290: $30 $5f

    and d                                         ; $7292: $a2
    xor [hl]                                      ; $7293: $ae
    ld d, b                                       ; $7294: $50
    ld b, a                                       ; $7295: $47
    inc [hl]                                      ; $7296: $34
    adc a                                         ; $7297: $8f
    pop af                                        ; $7298: $f1
    ld [hl], c                                    ; $7299: $71
    dec h                                         ; $729a: $25
    ld [hl], l                                    ; $729b: $75
    cp l                                          ; $729c: $bd
    dec h                                         ; $729d: $25
    db $eb                                        ; $729e: $eb
    call nc, $ee79                                ; $729f: $d4 $79 $ee
    ld l, h                                       ; $72a2: $6c
    ld [hl], c                                    ; $72a3: $71
    db $fd                                        ; $72a4: $fd
    ld e, [hl]                                    ; $72a5: $5e
    ld h, a                                       ; $72a6: $67
    ld e, l                                       ; $72a7: $5d
    sbc a                                         ; $72a8: $9f
    add a                                         ; $72a9: $87
    ld d, d                                       ; $72aa: $52
    ld [hl], a                                    ; $72ab: $77
    xor $d7                                       ; $72ac: $ee $d7
    xor c                                         ; $72ae: $a9
    xor c                                         ; $72af: $a9
    rst $30                                       ; $72b0: $f7
    db $ec                                        ; $72b1: $ec
    ld [hl], b                                    ; $72b2: $70
    call nc, $ba98                                ; $72b3: $d4 $98 $ba
    ld [hl], e                                    ; $72b6: $73
    or e                                          ; $72b7: $b3
    or h                                          ; $72b8: $b4
    call nc, $ee41                                ; $72b9: $d4 $41 $ee
    push bc                                       ; $72bc: $c5
    cp a                                          ; $72bd: $bf
    xor [hl]                                      ; $72be: $ae
    and h                                         ; $72bf: $a4
    adc $48                                       ; $72c0: $ce $48
    sub $a9                                       ; $72c2: $d6 $a9

jr_03e_72c4:
    rst $30                                       ; $72c4: $f7
    ld l, $2a                                     ; $72c5: $2e $2a
    xor h                                         ; $72c7: $ac
    cp h                                          ; $72c8: $bc
    adc $24                                       ; $72c9: $ce $24
    add $06                                       ; $72cb: $c6 $06
    push hl                                       ; $72cd: $e5
    ld e, b                                       ; $72ce: $58
    halt                                          ; $72cf: $76
    ld l, [hl]                                    ; $72d0: $6e
    sub [hl]                                      ; $72d1: $96
    sub [hl]                                      ; $72d2: $96
    dec sp                                        ; $72d3: $3b
    ld e, e                                       ; $72d4: $5b
    ld e, b                                       ; $72d5: $58
    ld l, c                                       ; $72d6: $69
    ld a, [bc]                                    ; $72d7: $0a
    ld e, a                                       ; $72d8: $5f
    ld c, b                                       ; $72d9: $48
    ret                                           ; $72da: $c9


    or c                                          ; $72db: $b1
    db $ec                                        ; $72dc: $ec
    call c, Call_000_2d2c                         ; $72dd: $dc $2c $2d
    rst $10                                       ; $72e0: $d7
    rst $20                                       ; $72e1: $e7
    and c                                         ; $72e2: $a1
    ld b, $1f                                     ; $72e3: $06 $1f
    res 7, d                                      ; $72e5: $cb $ba
    ld c, d                                       ; $72e7: $4a
    rst $00                                       ; $72e8: $c7
    push de                                       ; $72e9: $d5
    dec bc                                        ; $72ea: $0b
    and l                                         ; $72eb: $a5
    and c                                         ; $72ec: $a1
    ld l, c                                       ; $72ed: $69
    pop hl                                        ; $72ee: $e1
    rla                                           ; $72ef: $17
    ld hl, sp-$58                                 ; $72f0: $f8 $a8
    di                                            ; $72f2: $f3
    xor h                                         ; $72f3: $ac
    ld e, a                                       ; $72f4: $5f
    db $db                                        ; $72f5: $db
    ei                                            ; $72f6: $fb
    inc e                                         ; $72f7: $1c
    inc h                                         ; $72f8: $24
    adc a                                         ; $72f9: $8f
    sbc [hl]                                      ; $72fa: $9e
    rst $30                                       ; $72fb: $f7
    xor [hl]                                      ; $72fc: $ae
    cp $c5                                        ; $72fd: $fe $c5
    ld b, [hl]                                    ; $72ff: $46
    and h                                         ; $7300: $a4
    adc [hl]                                      ; $7301: $8e
    ld h, l                                       ; $7302: $65
    pop de                                        ; $7303: $d1
    ld e, c                                       ; $7304: $59
    ld [hl], e                                    ; $7305: $73
    call nz, Call_000_27d9                        ; $7306: $c4 $d9 $27
    inc b                                         ; $7309: $04
    di                                            ; $730a: $f3
    dec h                                         ; $730b: $25
    ld [$21a8], a                                 ; $730c: $ea $a8 $21
    and l                                         ; $730f: $a5
    dec bc                                        ; $7310: $0b
    ld a, l                                       ; $7311: $7d
    ld b, [hl]                                    ; $7312: $46
    jp nz, Jump_03e_5217                          ; $7313: $c2 $17 $52

    ld [hl], d                                    ; $7316: $72
    sbc [hl]                                      ; $7317: $9e
    adc e                                         ; $7318: $8b
    jp hl                                         ; $7319: $e9


    ld e, a                                       ; $731a: $5f
    ld d, a                                       ; $731b: $57
    sbc l                                         ; $731c: $9d
    ld d, d                                       ; $731d: $52

jr_03e_731e:
    cp a                                          ; $731e: $bf
    ld l, $74                                     ; $731f: $2e $74
    db $f4                                        ; $7321: $f4
    call nc, Call_03e_4dd5                        ; $7322: $d4 $d5 $4d
    ld e, [hl]                                    ; $7325: $5e
    ld c, d                                       ; $7326: $4a
    xor $83                                       ; $7327: $ee $83
    add hl, hl                                    ; $7329: $29
    rrca                                          ; $732a: $0f
    rst $18                                       ; $732b: $df
    dec sp                                        ; $732c: $3b
    or h                                          ; $732d: $b4
    jr c, jr_03e_731e                             ; $732e: $38 $ee

    rrca                                          ; $7330: $0f
    ret nz                                        ; $7331: $c0

    ld h, c                                       ; $7332: $61
    ld l, $74                                     ; $7333: $2e $74
    db $f4                                        ; $7335: $f4
    xor a                                         ; $7336: $af
    dec bc                                        ; $7337: $0b
    add hl, bc                                    ; $7338: $09
    cp l                                          ; $7339: $bd
    inc d                                         ; $733a: $14
    xor [hl]                                      ; $733b: $ae
    and h                                         ; $733c: $a4
    adc $48                                       ; $733d: $ce $48
    sub $a9                                       ; $733f: $d6 $a9
    scf                                           ; $7341: $37
    nop                                           ; $7342: $00
    cp l                                          ; $7343: $bd
    add l                                         ; $7344: $85
    cpl                                           ; $7345: $2f
    dec bc                                        ; $7346: $0b
    db $d3                                        ; $7347: $d3
    inc [hl]                                      ; $7348: $34

jr_03e_7349:
    ld e, e                                       ; $7349: $5b
    inc b                                         ; $734a: $04
    rst $20                                       ; $734b: $e7
    rst $10                                       ; $734c: $d7
    and c                                         ; $734d: $a1
    dec hl                                        ; $734e: $2b
    sbc d                                         ; $734f: $9a
    db $d3                                        ; $7350: $d3
    cpl                                           ; $7351: $2f
    adc $03                                       ; $7352: $ce $03
    ld a, l                                       ; $7354: $7d
    cp e                                          ; $7355: $bb
    sbc h                                         ; $7356: $9c

Jump_03e_7357:
    ld a, [c]                                     ; $7357: $f2
    ld bc, $1297                                  ; $7358: $01 $97 $12
    ld [hl+], a                                   ; $735b: $22
    ld d, d                                       ; $735c: $52
    sbc $34                                       ; $735d: $de $34
    ld e, e                                       ; $735f: $5b
    inc b                                         ; $7360: $04
    rla                                           ; $7361: $17
    dec d                                         ; $7362: $15
    ld d, a                                       ; $7363: $57
    ld l, c                                       ; $7364: $69
    ccf                                           ; $7365: $3f
    rst $08                                       ; $7366: $cf
    sbc l                                         ; $7367: $9d
    ld e, l                                       ; $7368: $5d
    sbc h                                         ; $7369: $9c
    add a                                         ; $736a: $87
    jr z, @+$0c                                   ; $736b: $28 $0a

    nop                                           ; $736d: $00
    rst $20                                       ; $736e: $e7
    ld h, l                                       ; $736f: $65
    add hl, bc                                    ; $7370: $09
    add hl, sp                                    ; $7371: $39
    rst $08                                       ; $7372: $cf
    dec b                                         ; $7373: $05
    ld h, d                                       ; $7374: $62
    adc e                                         ; $7375: $8b
    ld h, $08                                     ; $7376: $26 $08
    nop                                           ; $7378: $00
    or $df                                        ; $7379: $f6 $df
    ld a, a                                       ; $737b: $7f
    sbc [hl]                                      ; $737c: $9e
    dec bc                                        ; $737d: $0b
    call nz, Call_03e_4d16                        ; $737e: $c4 $16 $4d
    stop                                          ; $7381: $10 $00
    cp l                                          ; $7383: $bd
    inc de                                        ; $7384: $13
    ei                                            ; $7385: $fb
    add hl, sp                                    ; $7386: $39
    ld a, c                                       ; $7387: $79
    ld e, c                                       ; $7388: $59
    jr nz, jr_03e_7349                            ; $7389: $20 $be

    add c                                         ; $738b: $81
    ld bc, $bd00                                  ; $738c: $01 $00 $bd
    and l                                         ; $738f: $a5
    xor d                                         ; $7390: $aa
    ld l, a                                       ; $7391: $6f
    ld sp, $5847                                  ; $7392: $31 $47 $58
    ld d, c                                       ; $7395: $51
    ld e, $00                                     ; $7396: $1e $00
    cp l                                          ; $7398: $bd
    sbc l                                         ; $7399: $9d
    cp h                                          ; $739a: $bc
    xor h                                         ; $739b: $ac
    ld b, d                                       ; $739c: $42
    inc h                                         ; $739d: $24
    ld h, $00                                     ; $739e: $26 $00
    sub a                                         ; $73a0: $97
    cp b                                          ; $73a1: $b8
    ld d, $5f                                     ; $73a2: $16 $5f
    ld d, [hl]                                    ; $73a4: $56
    ld a, a                                       ; $73a5: $7f
    pop af                                        ; $73a6: $f1
    call Call_03e_5b34                            ; $73a7: $cd $34 $5b
    inc b                                         ; $73aa: $04
    ld bc, $9192                                  ; $73ab: $01 $92 $91
    db $10                                        ; $73ae: $10
    dec b                                         ; $73af: $05
    nop                                           ; $73b0: $00
    rst $20                                       ; $73b1: $e7
    ld d, b                                       ; $73b2: $50
    dec hl                                        ; $73b3: $2b
    db $ed                                        ; $73b4: $ed
    dec b                                         ; $73b5: $05
    nop                                           ; $73b6: $00
    rst $20                                       ; $73b7: $e7
    ld a, [hl-]                                   ; $73b8: $3a
    ld c, d                                       ; $73b9: $4a
    rst $38                                       ; $73ba: $ff
    rlca                                          ; $73bb: $07
    cp l                                          ; $73bc: $bd
    inc sp                                        ; $73bd: $33
    ld l, h                                       ; $73be: $6c
    cp a                                          ; $73bf: $bf
    ldh a, [rSCX]                                 ; $73c0: $f0 $43
    sub [hl]                                      ; $73c2: $96
    sbc c                                         ; $73c3: $99
    sub a                                         ; $73c4: $97
    adc [hl]                                      ; $73c5: $8e
    dec l                                         ; $73c6: $2d
    ld [bc], a                                    ; $73c7: $02
    rst $20                                       ; $73c8: $e7
    ld a, [hl-]                                   ; $73c9: $3a
    ld c, d                                       ; $73ca: $4a
    rst $38                                       ; $73cb: $ff
    rra                                           ; $73cc: $1f
    ld h, c                                       ; $73cd: $61
    ld b, l                                       ; $73ce: $45

Jump_03e_73cf:
    ld h, c                                       ; $73cf: $61
    db $fd                                        ; $73d0: $fd
    nop                                           ; $73d1: $00
    rst $20                                       ; $73d2: $e7
    and h                                         ; $73d3: $a4
    call nc, $004d                                ; $73d4: $d4 $4d $00
    rla                                           ; $73d7: $17
    ld [hl], a                                    ; $73d8: $77
    ld a, [$e631]                                 ; $73d9: $fa $31 $e6
    adc b                                         ; $73dc: $88
    dec bc                                        ; $73dd: $0b
    jr z, @-$50                                   ; $73de: $28 $ae

    ld a, [hl]                                    ; $73e0: $7e
    nop                                           ; $73e1: $00
    ld a, l                                       ; $73e2: $7d
    ld e, $6a                                     ; $73e3: $1e $6a
    cp a                                          ; $73e5: $bf
    sbc d                                         ; $73e6: $9a
    db $fd                                        ; $73e7: $fd
    ld d, d                                       ; $73e8: $52
    sbc $3f                                       ; $73e9: $de $3f
    nop                                           ; $73eb: $00
    rst $20                                       ; $73ec: $e7
    ld h, e                                       ; $73ed: $63
    db $ed                                        ; $73ee: $ed

Call_03e_73ef:
    or b                                          ; $73ef: $b0
    ld sp, hl                                     ; $73f0: $f9
    rst $30                                       ; $73f1: $f7
    ei                                            ; $73f2: $fb
    or d                                          ; $73f3: $b2
    ld a, [bc]                                    ; $73f4: $0a
    sub c                                         ; $73f5: $91
    sbc b                                         ; $73f6: $98
    nop                                           ; $73f7: $00
    rst $10                                       ; $73f8: $d7
    ld [hl], h                                    ; $73f9: $74
    ld hl, $98f4                                  ; $73fa: $21 $f4 $98
    nop                                           ; $73fd: $00
    rst $20                                       ; $73fe: $e7
    inc [hl]                                      ; $73ff: $34
    adc l                                         ; $7400: $8d
    ld a, [c]                                     ; $7401: $f2
    inc d                                         ; $7402: $14
    nop                                           ; $7403: $00
    ld a, l                                       ; $7404: $7d
    rra                                           ; $7405: $1f
    rra                                           ; $7406: $1f
    nop                                           ; $7407: $00
    or $8d                                        ; $7408: $f6 $8d
    jp nc, Jump_03e_55f9                          ; $740a: $d2 $f9 $55

    ld d, a                                       ; $740d: $57
    adc l                                         ; $740e: $8d
    call Call_000_003f                            ; $740f: $cd $3f $00
    rla                                           ; $7412: $17
    ld de, $0263                                  ; $7413: $11 $63 $02
    rst $20                                       ; $7416: $e7
    sub [hl]                                      ; $7417: $96
    db $ec                                        ; $7418: $ec
    sub a                                         ; $7419: $97
    nop                                           ; $741a: $00
    sub a                                         ; $741b: $97
    or c                                          ; $741c: $b1
    ld c, $a9                                     ; $741d: $0e $a9
    pop af                                        ; $741f: $f1
    dec a                                         ; $7420: $3d
    nop                                           ; $7421: $00
    cp l                                          ; $7422: $bd
    ld c, d                                       ; $7423: $4a
    and h                                         ; $7424: $a4
    cp h                                          ; $7425: $bc
    adc h                                         ; $7426: $8c
    ret z                                         ; $7427: $c8

    cp d                                          ; $7428: $ba
    ld b, c                                       ; $7429: $41
    add hl, bc                                    ; $742a: $09
    nop                                           ; $742b: $00
    ld bc, $ce97                                  ; $742c: $01 $97 $ce
    ld h, a                                       ; $742f: $67
    and a                                         ; $7430: $a7
    stop                                          ; $7431: $10 $00
    rst $20                                       ; $7433: $e7
    ld h, e                                       ; $7434: $63
    add l                                         ; $7435: $85
    and d                                         ; $7436: $a2
    call $0116                                    ; $7437: $cd $16 $01
    ld h, a                                       ; $743a: $67
    dec sp                                        ; $743b: $3b
    dec [hl]                                      ; $743c: $35
    cpl                                           ; $743d: $2f
    db $d3                                        ; $743e: $d3
    ld h, [hl]                                    ; $743f: $66
    ld h, b                                       ; $7440: $60
    inc d                                         ; $7441: $14
    ld [bc], a                                    ; $7442: $02
    halt                                          ; $7443: $76
    ld l, b                                       ; $7444: $68
    ld [de], a                                    ; $7445: $12
    and e                                         ; $7446: $a3
    cp h                                          ; $7447: $bc
    ld c, h                                       ; $7448: $4c
    ld e, h                                       ; $7449: $5c
    ld a, h                                       ; $744a: $7c
    nop                                           ; $744b: $00
    ld bc, $de84                                  ; $744c: $01 $84 $de
    rst $38                                       ; $744f: $ff
    ld [hl+], a                                   ; $7450: $22
    dec bc                                        ; $7451: $0b
    ld hl, $aae9                                  ; $7452: $21 $e9 $aa
    ld l, [hl]                                    ; $7455: $6e
    and $01                                       ; $7456: $e6 $01
    ld bc, $630e                                  ; $7458: $01 $0e $63
    adc $57                                       ; $745b: $ce $57
    db $ed                                        ; $745d: $ed
    or h                                          ; $745e: $b4
    ld [bc], a                                    ; $745f: $02
    nop                                           ; $7460: $00
    sub a                                         ; $7461: $97
    ld [hl-], a                                   ; $7462: $32
    ld c, h                                       ; $7463: $4c
    and h                                         ; $7464: $a4
    xor h                                         ; $7465: $ac
    ld a, [hl]                                    ; $7466: $7e
    xor b                                         ; $7467: $a8
    dec a                                         ; $7468: $3d
    nop                                           ; $7469: $00
    rst $20                                       ; $746a: $e7
    ld h, e                                       ; $746b: $63
    add l                                         ; $746c: $85
    and d                                         ; $746d: $a2
    call Call_03e_5716                            ; $746e: $cd $16 $57
    ld [hl], a                                    ; $7471: $77
    ld b, c                                       ; $7472: $41
    call Call_000_003c                            ; $7473: $cd $3c $00
    sub a                                         ; $7476: $97
    ld [hl-], a                                   ; $7477: $32
    ld c, h                                       ; $7478: $4c
    and h                                         ; $7479: $a4
    ld c, h                                       ; $747a: $4c
    xor b                                         ; $747b: $a8
    ld c, l                                       ; $747c: $4d
    inc hl                                        ; $747d: $23
    pop de                                        ; $747e: $d1
    or h                                          ; $747f: $b4
    rlca                                          ; $7480: $07
    rst $20                                       ; $7481: $e7
    ld h, e                                       ; $7482: $63
    dec h                                         ; $7483: $25
    call Call_000_02cb                            ; $7484: $cd $cb $02
    ld e, [hl]                                    ; $7487: $5e
    ld e, $72                                     ; $7488: $1e $72
    xor a                                         ; $748a: $af
    nop                                           ; $748b: $00
    halt                                          ; $748c: $76
    ld [c], a                                     ; $748d: $e2
    ld a, h                                       ; $748e: $7c
    inc sp                                        ; $748f: $33
    call $0116                                    ; $7490: $cd $16 $01
    cp l                                          ; $7493: $bd
    ld [c], a                                     ; $7494: $e2
    ld e, e                                       ; $7495: $5b
    inc e                                         ; $7496: $1c
    ld h, a                                       ; $7497: $67
    sbc h                                         ; $7498: $9c
    ld a, h                                       ; $7499: $7c
    ld l, h                                       ; $749a: $6c
    sub l                                         ; $749b: $95
    inc b                                         ; $749c: $04
    ld a, l                                       ; $749d: $7d
    ld e, e                                       ; $749e: $5b
    add l                                         ; $749f: $85
    ld h, l                                       ; $74a0: $65
    cpl                                           ; $74a1: $2f
    jp nc, $0f3a                                  ; $74a2: $d2 $3a $0f

    nop                                           ; $74a5: $00
    ld d, a                                       ; $74a6: $57
    db $10                                        ; $74a7: $10
    db $e3                                        ; $74a8: $e3
    rst $30                                       ; $74a9: $f7
    ei                                            ; $74aa: $fb
    dec b                                         ; $74ab: $05
    ld e, h                                       ; $74ac: $5c
    ld a, [bc]                                    ; $74ad: $0a
    nop                                           ; $74ae: $00
    ld d, a                                       ; $74af: $57
    db $10                                        ; $74b0: $10
    db $e3                                        ; $74b1: $e3
    rst $30                                       ; $74b2: $f7
    ei                                            ; $74b3: $fb
    dec b                                         ; $74b4: $05
    db $f4                                        ; $74b5: $f4
    ld bc, $a767                                  ; $74b6: $01 $67 $a7
    ret z                                         ; $74b9: $c8

    rlc d                                         ; $74ba: $cb $02
    ld a, [$9700]                                 ; $74bc: $fa $00 $97
    ld [hl-], a                                   ; $74bf: $32
    ld c, h                                       ; $74c0: $4c
    and h                                         ; $74c1: $a4
    inc l                                         ; $74c2: $2c
    and [hl]                                      ; $74c3: $a6
    ld c, a                                       ; $74c4: $4f
    nop                                           ; $74c5: $00
    rst $20                                       ; $74c6: $e7
    ld h, e                                       ; $74c7: $63
    db $ed                                        ; $74c8: $ed
    or b                                          ; $74c9: $b0
    ld sp, hl                                     ; $74ca: $f9
    rst $30                                       ; $74cb: $f7
    xor e                                         ; $74cc: $ab
    cp e                                          ; $74cd: $bb
    and b                                         ; $74ce: $a0

Jump_03e_74cf:
    ld h, [hl]                                    ; $74cf: $66
    ld e, $00                                     ; $74d0: $1e $00
    rst $20                                       ; $74d2: $e7
    ld h, e                                       ; $74d3: $63
    db $ed                                        ; $74d4: $ed
    or b                                          ; $74d5: $b0
    ld sp, hl                                     ; $74d6: $f9
    rst $30                                       ; $74d7: $f7
    nop                                           ; $74d8: $00
    cp l                                          ; $74d9: $bd
    and b                                         ; $74da: $a0
    adc h                                         ; $74db: $8c
    ld e, a                                       ; $74dc: $5f
    scf                                           ; $74dd: $37
    ld h, d                                       ; $74de: $62
    ld c, h                                       ; $74df: $4c
    nop                                           ; $74e0: $00
    ld a, l                                       ; $74e1: $7d
    cp [hl]                                       ; $74e2: $be
    ld hl, sp+$66                                 ; $74e3: $f8 $66
    sbc d                                         ; $74e5: $9a
    dec l                                         ; $74e6: $2d
    adc [hl]                                      ; $74e7: $8e
    or b                                          ; $74e8: $b0
    jp nz, $da92                                  ; $74e9: $c2 $92 $da

    ld a, [hl+]                                   ; $74ec: $2a
    rrca                                          ; $74ed: $0f
    nop                                           ; $74ee: $00
    rst $20                                       ; $74ef: $e7
    ld a, [hl-]                                   ; $74f0: $3a
    ld c, d                                       ; $74f1: $4a
    rst $38                                       ; $74f2: $ff
    ld e, a                                       ; $74f3: $5f
    sub b                                         ; $74f4: $90
    sub d                                         ; $74f5: $92
    call Call_000_003c                            ; $74f6: $cd $3c $00
    halt                                          ; $74f9: $76
    ld l, b                                       ; $74fa: $68
    ld e, $e3                                     ; $74fb: $1e $e3
    rst $10                                       ; $74fd: $d7
    adc l                                         ; $74fe: $8d
    jr jr_03e_7574                                ; $74ff: $18 $73

    ld h, $eb                                     ; $7501: $26 $eb
    or b                                          ; $7503: $b0
    jr nc, jr_03e_752c                            ; $7504: $30 $26

    nop                                           ; $7506: $00
    db $dd                                        ; $7507: $dd
    ld l, $4a                                     ; $7508: $2e $4a
    sbc l                                         ; $750a: $9d
    sub c                                         ; $750b: $91
    xor h                                         ; $750c: $ac
    ld d, e                                       ; $750d: $53
    rla                                           ; $750e: $17
    ld a, h                                       ; $750f: $7c
    sbc h                                         ; $7510: $9c
    ld de, $cfbe                                  ; $7511: $11 $be $cf
    add hl, sp                                    ; $7514: $39
    db $fc                                        ; $7515: $fc
    add l                                         ; $7516: $85
    ld l, c                                       ; $7517: $69
    sbc d                                         ; $7518: $9a
    dec l                                         ; $7519: $2d
    xor $cb                                       ; $751a: $ee $cb
    cp [hl]                                       ; $751c: $be
    rst $38                                       ; $751d: $ff
    ld c, e                                       ; $751e: $4b
    rrca                                          ; $751f: $0f
    nop                                           ; $7520: $00
    rla                                           ; $7521: $17
    and l                                         ; $7522: $a5
    adc $48                                       ; $7523: $ce $48
    sub $a9                                       ; $7525: $d6 $a9
    adc e                                         ; $7527: $8b
    ld e, h                                       ; $7528: $5c
    ldh a, [$71]                                  ; $7529: $f0 $71
    sbc [hl]                                      ; $752b: $9e

jr_03e_752c:
    dec d                                         ; $752c: $15
    rst $00                                       ; $752d: $c7
    ld [de], a                                    ; $752e: $12
    ld [hl], e                                    ; $752f: $73
    ld c, $7f                                     ; $7530: $0e $7f
    ld hl, $8e2d                                  ; $7532: $21 $2d $8e
    rlca                                          ; $7535: $07
    rst $38                                       ; $7536: $ff
    call z, $6c63                                 ; $7537: $cc $63 $6c

Jump_03e_753a:
    cp $fd                                        ; $753a: $fe $fd
    inc a                                         ; $753c: $3c
    rla                                           ; $753d: $17
    sbc l                                         ; $753e: $9d
    ld l, $e0                                     ; $753f: $2e $e0
    jp nc, $001b                                  ; $7541: $d2 $1b $00

    halt                                          ; $7544: $76
    ld a, [de]                                    ; $7545: $1a
    ld a, a                                       ; $7546: $7f
    dec d                                         ; $7547: $15
    or $5f                                        ; $7548: $f6 $5f
    ld c, c                                       ; $754a: $49
    sbc l                                         ; $754b: $9d
    sub c                                         ; $754c: $91
    xor h                                         ; $754d: $ac
    ld d, e                                       ; $754e: $53
    add a                                         ; $754f: $87
    cp c                                          ; $7550: $b9
    ret z                                         ; $7551: $c8

    dec b                                         ; $7552: $05
    rra                                           ; $7553: $1f
    and a                                         ; $7554: $a7
    sub h                                         ; $7555: $94
    ld c, d                                       ; $7556: $4a
    di                                            ; $7557: $f3

Call_03e_7558:
    ld a, c                                       ; $7558: $79
    rst $28                                       ; $7559: $ef
    ld [hl-], a                                   ; $755a: $32
    adc $3b                                       ; $755b: $ce $3b
    ld d, $ae                                     ; $755d: $16 $ae

Jump_03e_755f:
    db $fc                                        ; $755f: $fc
    ld a, [hl-]                                   ; $7560: $3a
    cpl                                           ; $7561: $2f
    jp nc, $9fa0                                  ; $7562: $d2 $a0 $9f

    ld [hl], l                                    ; $7565: $75
    call nc, $a5d8                                ; $7566: $d4 $d8 $a5
    xor e                                         ; $7569: $ab
    ld e, a                                       ; $756a: $5f
    ld hl, sp+$3e                                 ; $756b: $f8 $3e
    ld h, a                                       ; $756d: $67
    sbc l                                         ; $756e: $9d
    xor a                                         ; $756f: $af
    jp c, $e569                                   ; $7570: $da $69 $e5

    ld e, [hl]                                    ; $7573: $5e

jr_03e_7574:
    ld l, a                                       ; $7574: $6f
    ld hl, $1675                                  ; $7575: $21 $75 $16
    rst $00                                       ; $7578: $c7
    dec b                                         ; $7579: $05
    ld e, a                                       ; $757a: $5f
    rla                                           ; $757b: $17
    ld d, d                                       ; $757c: $52
    ld a, h                                       ; $757d: $7c
    di                                            ; $757e: $f3
    cp c                                          ; $757f: $b9
    cpl                                           ; $7580: $2f
    sub b                                         ; $7581: $90
    jp Jump_000_05d4                              ; $7582: $c3 $d4 $05


    ld e, h                                       ; $7585: $5c
    ld a, d                                       ; $7586: $7a
    inc bc                                        ; $7587: $03
    rla                                           ; $7588: $17
    and l                                         ; $7589: $a5
    adc $48                                       ; $758a: $ce $48
    sub $a9                                       ; $758c: $d6 $a9
    dec bc                                        ; $758e: $0b
    ld a, $ae                                     ; $758f: $3e $ae
    push de                                       ; $7591: $d5
    and c                                         ; $7592: $a1
    dec hl                                        ; $7593: $2b
    ld a, [$173e]                                 ; $7594: $fa $3e $17
    sbc l                                         ; $7597: $9d
    ld l, $e0                                     ; $7598: $2e $e0
    jp nc, $e77b                                  ; $759a: $d2 $7b $e7

Call_03e_759d:
    ld [hl], b                                    ; $759d: $70
    ld b, c                                       ; $759e: $41
    sbc d                                         ; $759f: $9a
    ld h, b                                       ; $75a0: $60
    jp nz, Jump_03e_4dd7                          ; $75a1: $c2 $d7 $4d

    dec de                                        ; $75a4: $1b
    ld sp, $6752                                  ; $75a5: $31 $52 $67
    or d                                          ; $75a8: $b2
    adc $69                                       ; $75a9: $ce $69
    sbc e                                         ; $75ab: $9b
    ld c, c                                       ; $75ac: $49
    call nc, $b906                                ; $75ad: $d4 $06 $b9
    ld b, [hl]                                    ; $75b0: $46
    ld a, c                                       ; $75b1: $79
    sbc l                                         ; $75b2: $9d
    ld a, c                                       ; $75b3: $79
    rst $38                                       ; $75b4: $ff
    xor e                                         ; $75b5: $ab
    or b                                          ; $75b6: $b0
    rst $38                                       ; $75b7: $ff
    ld [$5d2e], a                                 ; $75b8: $ea $2e $5d
    ret nz                                        ; $75bb: $c0

    and l                                         ; $75bc: $a5
    dec a                                         ; $75bd: $3d
    nop                                           ; $75be: $00
    rla                                           ; $75bf: $17
    and l                                         ; $75c0: $a5
    adc $48                                       ; $75c1: $ce $48
    sub $a9                                       ; $75c3: $d6 $a9
    inc sp                                        ; $75c5: $33
    jp nz, Jump_000_39c7                          ; $75c6: $c2 $c7 $39

    ld e, h                                       ; $75c9: $5c
    ld c, h                                       ; $75ca: $4c
    ld de, $e462                                  ; $75cb: $11 $62 $e4
    inc a                                         ; $75ce: $3c
    rst $10                                       ; $75cf: $d7
    add hl, hl                                    ; $75d0: $29
    adc $43                                       ; $75d1: $ce $43
    inc d                                         ; $75d3: $14
    sbc l                                         ; $75d4: $9d
    push bc                                       ; $75d5: $c5
    ld [hl], c                                    ; $75d6: $71
    and $89                                       ; $75d7: $e6 $89
    inc hl                                        ; $75d9: $23
    ld l, $6c                                     ; $75da: $2e $6c
    and $7d                                       ; $75dc: $e6 $7d
    ld c, [hl]                                    ; $75de: $4e
    or e                                          ; $75df: $b3
    inc hl                                        ; $75e0: $23
    inc e                                         ; $75e1: $1c
    swap d                                        ; $75e2: $cb $32
    ld c, h                                       ; $75e4: $4c
    inc h                                         ; $75e5: $24
    ld b, [hl]                                    ; $75e6: $46
    sbc $00                                       ; $75e7: $de $00
    rla                                           ; $75e9: $17
    and l                                         ; $75ea: $a5
    adc $48                                       ; $75eb: $ce $48
    sub $a9                                       ; $75ed: $d6 $a9
    dec bc                                        ; $75ef: $0b

jr_03e_75f0:
    ld a, $ce                                     ; $75f0: $3e $ce
    ld [$e7df], sp                                ; $75f2: $08 $df $e7
    inc e                                         ; $75f5: $1c
    cp $02                                        ; $75f6: $fe $02
    or c                                          ; $75f8: $b1
    ld b, l                                       ; $75f9: $45
    inc de                                        ; $75fa: $13
    sbc h                                         ; $75fb: $9c
    ld c, a                                       ; $75fc: $4f
    ld a, c                                       ; $75fd: $79
    rst $38                                       ; $75fe: $ff
    or e                                          ; $75ff: $b3

Call_03e_7600:
    jr c, jr_03e_75f0                             ; $7600: $38 $ee

    push de                                       ; $7602: $d5
    ld l, c                                       ; $7603: $69
    db $fc                                        ; $7604: $fc
    db $fd                                        ; $7605: $fd
    and d                                         ; $7606: $a2
    db $db                                        ; $7607: $db
    ei                                            ; $7608: $fb
    ld a, [bc]                                    ; $7609: $0a
    ld b, l                                       ; $760a: $45
    ld e, a                                       ; $760b: $5f
    ld e, d                                       ; $760c: $5a
    sbc $00                                       ; $760d: $de $00
    rla                                           ; $760f: $17
    and l                                         ; $7610: $a5
    adc $48                                       ; $7611: $ce $48
    sub $a9                                       ; $7613: $d6 $a9
    inc sp                                        ; $7615: $33
    jp nz, Jump_000_39c7                          ; $7616: $c2 $c7 $39

    db $fc                                        ; $7619: $fc
    add hl, hl                                    ; $761a: $29
    or [hl]                                       ; $761b: $b6
    ld l, b                                       ; $761c: $68
    add d                                         ; $761d: $82
    di                                            ; $761e: $f3
    add hl, hl                                    ; $761f: $29
    rst $28                                       ; $7620: $ef
    ld a, a                                       ; $7621: $7f
    ld d, $c7                                     ; $7622: $16 $c7
    ld c, c                                       ; $7624: $49
    ld a, d                                       ; $7625: $7a
    cp $ca                                        ; $7626: $fe $ca
    rst $08                                       ; $7628: $cf
    ld a, h                                       ; $7629: $7c
    add a                                         ; $762a: $87
    db $fd                                        ; $762b: $fd
    ld a, a                                       ; $762c: $7f
    sbc [hl]                                      ; $762d: $9e
    ld h, l                                       ; $762e: $65
    ld b, h                                       ; $762f: $44
    sub $0d                                       ; $7630: $d6 $0d
    ld c, d                                       ; $7632: $4a
    ld hl, sp+$7c                                 ; $7633: $f8 $7c
    db $d3                                        ; $7635: $d3
    jr z, @+$71                                   ; $7636: $28 $6f

    xor l                                         ; $7638: $ad
    adc d                                         ; $7639: $8a
    ld a, $4b                                     ; $763a: $3e $4b
    sbc $00                                       ; $763c: $de $00
    db $dd                                        ; $763e: $dd
    db $ec                                        ; $763f: $ec
    inc [hl]                                      ; $7640: $34
    ld [hl], d                                    ; $7641: $72
    ld b, [hl]                                    ; $7642: $46
    or d                                          ; $7643: $b2
    adc $45                                       ; $7644: $ce $45
    ld l, $f8                                     ; $7646: $2e $f8
    di                                            ; $7648: $f3
    rst $28                                       ; $7649: $ef
    ld [hl], e                                    ; $764a: $73
    ld c, $67                                     ; $764b: $0e $67
    ld e, [hl]                                    ; $764d: $5e
    cp [hl]                                       ; $764e: $be
    ld h, [hl]                                    ; $764f: $66
    ret                                           ; $7650: $c9


    ld e, $00                                     ; $7651: $1e $00
    rla                                           ; $7653: $17
    and l                                         ; $7654: $a5
    adc $48                                       ; $7655: $ce $48
    sub $a9                                       ; $7657: $d6 $a9
    dec bc                                        ; $7659: $0b
    ld a, $ee                                     ; $765a: $3e $ee
    ld e, l                                       ; $765c: $5d
    ld c, l                                       ; $765d: $4d
    adc h                                         ; $765e: $8c
    rst $28                                       ; $765f: $ef
    ld [hl], e                                    ; $7660: $73
    dec h                                         ; $7661: $25
    ld [hl], l                                    ; $7662: $75
    and c                                         ; $7663: $a1
    jp Jump_000_3a98                              ; $7664: $c3 $98 $3a


    rst $08                                       ; $7667: $cf
    ld de, $4856                                  ; $7668: $11 $56 $48
    ld l, c                                       ; $766b: $69
    ld b, h                                       ; $766c: $44
    db $d3                                        ; $766d: $d3
    ld a, [hl]                                    ; $766e: $7e
    ld d, $c7                                     ; $766f: $16 $c7
    add hl, bc                                    ; $7671: $09
    ld c, l                                       ; $7672: $4d
    db $eb                                        ; $7673: $eb
    inc [hl]                                      ; $7674: $34
    jp hl                                         ; $7675: $e9


    jp nc, Jump_000_1b69                          ; $7676: $d2 $69 $1b

Call_03e_7679:
    db $f4                                        ; $7679: $f4
    ld hl, sp+$3a                                 ; $767a: $f8 $3a
    ld l, d                                       ; $767c: $6a
    db $e4                                        ; $767d: $e4
    adc b                                         ; $767e: $88
    push de                                       ; $767f: $d5
    ld b, d                                       ; $7680: $42
    adc h                                         ; $7681: $8c
    ld e, a                                       ; $7682: $5f
    scf                                           ; $7683: $37
    ld h, d                                       ; $7684: $62
    call z, $001b                                 ; $7685: $cc $1b $00
    db $dd                                        ; $7688: $dd
    ld l, $4a                                     ; $7689: $2e $4a
    sbc l                                         ; $768b: $9d
    sub c                                         ; $768c: $91
    xor h                                         ; $768d: $ac
    ld d, e                                       ; $768e: $53
    rst $30                                       ; $768f: $f7
    add sp, -$36                                  ; $7690: $e8 $ca
    db $e3                                        ; $7692: $e3
    ld c, d                                       ; $7693: $4a
    ld [$4d58], a                                 ; $7694: $ea $58 $4d
    inc de                                        ; $7697: $13
    ld d, e                                       ; $7698: $53
    rst $20                                       ; $7699: $e7
    add hl, sp                                    ; $769a: $39
    db $e3                                        ; $769b: $e3
    cp [hl]                                       ; $769c: $be
    ld e, b                                       ; $769d: $58
    ld e, h                                       ; $769e: $5c
    and e                                         ; $769f: $a3
    db $ec                                        ; $76a0: $ec
    db $e3                                        ; $76a1: $e3
    ld e, e                                       ; $76a2: $5b
    inc e                                         ; $76a3: $1c
    ld d, a                                       ; $76a4: $57
    ld hl, $5312                                  ; $76a5: $21 $12 $53
    ld [hl], e                                    ; $76a8: $73
    sbc $c9                                       ; $76a9: $de $c9
    ld h, e                                       ; $76ab: $63
    db $e4                                        ; $76ac: $e4
    xor b                                         ; $76ad: $a8
    sub c                                         ; $76ae: $91

Call_03e_76af:
Jump_03e_76af:
    inc hl                                        ; $76af: $23
    ld a, [de]                                    ; $76b0: $1a
    ld b, a                                       ; $76b1: $47
    adc h                                         ; $76b2: $8c
    sub d                                         ; $76b3: $92
    dec a                                         ; $76b4: $3d
    nop                                           ; $76b5: $00
    db $dd                                        ; $76b6: $dd
    ld l, $4a                                     ; $76b7: $2e $4a
    sbc l                                         ; $76b9: $9d
    sub c                                         ; $76ba: $91

jr_03e_76bb:
    xor h                                         ; $76bb: $ac
    ld d, e                                       ; $76bc: $53
    rst $30                                       ; $76bd: $f7
    add sp, -$36                                  ; $76be: $e8 $ca
    db $e3                                        ; $76c0: $e3
    jp z, $eaeb                                   ; $76c1: $ca $eb $ea

    cpl                                           ; $76c4: $2f
    cp [hl]                                       ; $76c5: $be
    sbc c                                         ; $76c6: $99
    sub [hl]                                      ; $76c7: $96
    ld c, b                                       ; $76c8: $48
    sbc l                                         ; $76c9: $9d
    push bc                                       ; $76ca: $c5
    ld [hl], c                                    ; $76cb: $71
    sub c                                         ; $76cc: $91
    dec bc                                        ; $76cd: $0b
    cp [hl]                                       ; $76ce: $be
    push af                                       ; $76cf: $f5
    ld [hl], c                                    ; $76d0: $71
    inc [hl]                                      ; $76d1: $34
    pop bc                                        ; $76d2: $c1
    rst $30                                       ; $76d3: $f7
    reti                                          ; $76d4: $d9


    inc bc                                        ; $76d5: $03
    nop                                           ; $76d6: $00
    db $dd                                        ; $76d7: $dd
    ld l, $4a                                     ; $76d8: $2e $4a
    sbc l                                         ; $76da: $9d
    sub c                                         ; $76db: $91
    xor h                                         ; $76dc: $ac
    ld d, e                                       ; $76dd: $53
    rla                                           ; $76de: $17
    ld a, h                                       ; $76df: $7c
    ld b, e                                       ; $76e0: $43
    sbc h                                         ; $76e1: $9c
    push bc                                       ; $76e2: $c5
    ld [hl], c                                    ; $76e3: $71
    jp z, $dd5f                                   ; $76e4: $ca $5f $dd

    and l                                         ; $76e7: $a5
    di                                            ; $76e8: $f3
    xor l                                         ; $76e9: $ad
    jp c, $b4c6                                   ; $76ea: $da $c6 $b4

    or d                                          ; $76ed: $b2
    adc a                                         ; $76ee: $8f
    ld l, a                                       ; $76ef: $6f
    ld e, [hl]                                    ; $76f0: $5e
    ld [hl+], a                                   ; $76f1: $22
    ld a, e                                       ; $76f2: $7b
    nop                                           ; $76f3: $00
    db $dd                                        ; $76f4: $dd
    ld l, $4a                                     ; $76f5: $2e $4a
    sbc l                                         ; $76f7: $9d
    sub c                                         ; $76f8: $91
    xor h                                         ; $76f9: $ac
    ld d, e                                       ; $76fa: $53
    rst $20                                       ; $76fb: $e7
    xor c                                         ; $76fc: $a9
    sub l                                         ; $76fd: $95
    or $d2                                        ; $76fe: $f6 $d2
    add l                                         ; $7700: $85
    dec bc                                        ; $7701: $0b
    ld e, a                                       ; $7702: $5f
    ld [hl+], a                                   ; $7703: $22
    rst $20                                       ; $7704: $e7
    cp c                                          ; $7705: $b9
    sub d                                         ; $7706: $92
    ld a, [hl-]                                   ; $7707: $3a
    rst $38                                       ; $7708: $ff
    rlca                                          ; $7709: $07
    and a                                         ; $770a: $a7
    adc $73                                       ; $770b: $ce $73
    rra                                           ; $770d: $1f
    rst $18                                       ; $770e: $df
    ld [c], a                                     ; $770f: $e2
    xor b                                         ; $7710: $a8
    xor e                                         ; $7711: $ab
    or [hl]                                       ; $7712: $b6
    pop de                                        ; $7713: $d1
    ld h, [hl]                                    ; $7714: $66
    ld d, d                                       ; $7715: $52
    sub a                                         ; $7716: $97
    xor e                                         ; $7717: $ab
    cp e                                          ; $7718: $bb
    and b                                         ; $7719: $a0
    ld h, [hl]                                    ; $771a: $66
    ld d, d                                       ; $771b: $52
    ld a, e                                       ; $771c: $7b
    nop                                           ; $771d: $00
    sub a                                         ; $771e: $97
    ld [hl], c                                    ; $771f: $71
    jp c, $9188                                   ; $7720: $da $88 $91

    cp d                                          ; $7723: $ba
    cp d                                          ; $7724: $ba
    ld c, e                                       ; $7725: $4b
    ld d, a                                       ; $7726: $57
    db $ed                                        ; $7727: $ed
    jr z, jr_03e_76bb                             ; $7728: $28 $91

    rst $30                                       ; $772a: $f7
    ld a, d                                       ; $772b: $7a
    dec bc                                        ; $772c: $0b
    xor c                                         ; $772d: $a9
    or e                                          ; $772e: $b3
    jr c, jr_03e_775f                             ; $772f: $38 $2e

    cp d                                          ; $7731: $ba
    dec b                                         ; $7732: $05
    ld l, c                                       ; $7733: $69
    add d                                         ; $7734: $82
    xor l                                         ; $7735: $ad
    ld a, a                                       ; $7736: $7f
    xor $dc                                       ; $7737: $ee $dc
    jp nc, $a242                                  ; $7739: $d2 $42 $a2

    rst $08                                       ; $773c: $cf
    add hl, hl                                    ; $773d: $29
    ld a, a                                       ; $773e: $7f
    ld [hl], l                                    ; $773f: $75
    sub a                                         ; $7740: $97
    ld l, $4c                                     ; $7741: $2e $4c
    ld c, a                                       ; $7743: $4f
    ld c, c                                       ; $7744: $49
    call $307d                                    ; $7745: $cd $7d $30
    push hl                                       ; $7748: $e5
    ld l, a                                       ; $7749: $6f
    nop                                           ; $774a: $00
    db $dd                                        ; $774b: $dd
    ld l, $4a                                     ; $774c: $2e $4a
    sbc l                                         ; $774e: $9d
    sub c                                         ; $774f: $91
    xor h                                         ; $7750: $ac

jr_03e_7751:
    ld d, e                                       ; $7751: $53
    rla                                           ; $7752: $17
    ld a, h                                       ; $7753: $7c
    sbc h                                         ; $7754: $9c
    ld de, $cfbe                                  ; $7755: $11 $be $cf
    ld sp, hl                                     ; $7758: $f9

Jump_03e_7759:
    call nc, Call_000_0c99                        ; $7759: $d4 $99 $0c
    db $db                                        ; $775c: $db
    db $eb                                        ; $775d: $eb
    xor d                                         ; $775e: $aa

jr_03e_775f:
    rra                                           ; $775f: $1f
    db $e3                                        ; $7760: $e3
    ld l, e                                       ; $7761: $6b
    db $fd                                        ; $7762: $fd
    di                                            ; $7763: $f3
    ld e, h                                       ; $7764: $5c
    ld l, h                                       ; $7765: $6c
    dec a                                         ; $7766: $3d
    ld d, $f0                                     ; $7767: $16 $f0
    ld b, d                                       ; $7769: $42
    jp Jump_000_1c59                              ; $776a: $c3 $59 $1c


    ld b, a                                       ; $776d: $47
    adc l                                         ; $776e: $8d
    ld e, l                                       ; $776f: $5d
    jr c, jr_03e_7751                             ; $7770: $38 $df

    inc [hl]                                      ; $7772: $34
    jp z, $895b                                   ; $7773: $ca $5b $89

    ld a, $f7                                     ; $7776: $3e $f7
    ld h, l                                       ; $7778: $65
    ld b, h                                       ; $7779: $44
    sub $0d                                       ; $777a: $d6 $0d
    jp z, $001b                                   ; $777c: $ca $1b $00

    ld bc, $342f                                  ; $777f: $01 $2f $34
    sbc h                                         ; $7782: $9c
    push bc                                       ; $7783: $c5
    ld [hl], c                                    ; $7784: $71
    dec h                                         ; $7785: $25
    ld [hl], l                                    ; $7786: $75
    ld b, [hl]                                    ; $7787: $46
    or d                                          ; $7788: $b2
    ld c, [hl]                                    ; $7789: $4e
    dec e                                         ; $778a: $1d
    and $22                                       ; $778b: $e6 $22
    rla                                           ; $778d: $17
    ld a, h                                       ; $778e: $7c
    ld e, h                                       ; $778f: $5c
    sub b                                         ; $7790: $90
    ld h, $98                                     ; $7791: $26 $98
    jp Jump_03e_7ff7                              ; $7793: $c3 $f7 $7f


    cpl                                           ; $7796: $2f
    add b                                         ; $7797: $80
    sub d                                         ; $7798: $92
    ld h, e                                       ; $7799: $63
    add hl, de                                    ; $779a: $19
    sub c                                         ; $779b: $91
    ld [hl], l                                    ; $779c: $75
    add e                                         ; $779d: $83
    ld [hl], d                                    ; $779e: $72
    call nc, $b5d8                                ; $779f: $d4 $d8 $b5
    cpl                                           ; $77a2: $2f
    ld d, b                                       ; $77a3: $50

jr_03e_77a4:
    xor [hl]                                      ; $77a4: $ae
    xor $d2                                       ; $77a5: $ee $d2
    ld d, l                                       ; $77a7: $55
    dec sp                                        ; $77a8: $3b
    ld c, d                                       ; $77a9: $4a
    db $e4                                        ; $77aa: $e4
    dec c                                         ; $77ab: $0d
    nop                                           ; $77ac: $00
    db $dd                                        ; $77ad: $dd
    ld l, $4a                                     ; $77ae: $2e $4a
    sbc l                                         ; $77b0: $9d
    sub c                                         ; $77b1: $91
    xor h                                         ; $77b2: $ac
    ld d, e                                       ; $77b3: $53
    rla                                           ; $77b4: $17
    ld a, h                                       ; $77b5: $7c
    sbc h                                         ; $77b6: $9c
    ld c, a                                       ; $77b7: $4f
    xor c                                         ; $77b8: $a9
    sbc e                                         ; $77b9: $9b
    rst $08                                       ; $77ba: $cf
    db $fd                                        ; $77bb: $fd
    and d                                         ; $77bc: $a2
    db $d3                                        ; $77bd: $d3
    ld h, l                                       ; $77be: $65
    sbc b                                         ; $77bf: $98
    ld c, b                                       ; $77c0: $48
    adc h                                         ; $77c1: $8c
    call nc, $b31e                                ; $77c2: $d4 $1e $b3
    db $d3                                        ; $77c5: $d3
    ret c                                         ; $77c6: $d8

    dec [hl]                                      ; $77c7: $35
    ld d, e                                       ; $77c8: $53
    ld e, [hl]                                    ; $77c9: $5e
    ld [hl], d                                    ; $77ca: $72
    ld d, $c7                                     ; $77cb: $16 $c7
    ld h, c                                       ; $77cd: $61
    xor $e3                                       ; $77ce: $ee $e3
    sbc e                                         ; $77d0: $9b
    sub a                                         ; $77d1: $97
    ld l, $5c                                     ; $77d2: $2e $5c
    db $dd                                        ; $77d4: $dd
    adc b                                         ; $77d5: $88
    ld d, c                                       ; $77d6: $51
    ld e, [hl]                                    ; $77d7: $5e
    ld b, a                                       ; $77d8: $47
    inc de                                        ; $77d9: $13
    ld a, h                                       ; $77da: $7c
    sbc h                                         ; $77db: $9c
    jp $f99f                                      ; $77dc: $c3 $9f $f9


    ld c, $fb                                     ; $77df: $0e $fb
    cp a                                          ; $77e1: $bf
    ld l, a                                       ; $77e2: $6f
    pop af                                        ; $77e3: $f1
    ld l, a                                       ; $77e4: $6f
    nop                                           ; $77e5: $00
    rla                                           ; $77e6: $17
    and l                                         ; $77e7: $a5
    adc $48                                       ; $77e8: $ce $48
    sub $a9                                       ; $77ea: $d6 $a9
    dec bc                                        ; $77ec: $0b
    ld a, $ce                                     ; $77ed: $3e $ce
    inc h                                         ; $77ef: $24
    ld d, [hl]                                    ; $77f0: $56
    jr z, jr_03e_77a4                             ; $77f1: $28 $b1

    ld sp, hl                                     ; $77f3: $f9
    call c, Call_000_2817                         ; $77f4: $dc $17 $28
    rst $20                                       ; $77f7: $e7
    cp c                                          ; $77f8: $b9
    add sp, -$2a                                  ; $77f9: $e8 $d6
    or b                                          ; $77fb: $b0
    ld b, d                                       ; $77fc: $42
    adc h                                         ; $77fd: $8c
    cpl                                           ; $77fe: $2f
    dec l                                         ; $77ff: $2d
    ld b, a                                       ; $7800: $47
    cp h                                          ; $7801: $bc
    rst $28                                       ; $7802: $ef
    cp e                                          ; $7803: $bb
    ld a, e                                       ; $7804: $7b
    scf                                           ; $7805: $37
    add a                                         ; $7806: $87
    cp a                                          ; $7807: $bf
    or b                                          ; $7808: $b0
    cp b                                          ; $7809: $b8
    ld a, [$b9e7]                                 ; $780a: $fa $e7 $b9
    xor a                                         ; $780d: $af

jr_03e_780e:
    ld d, b                                       ; $780e: $50
    and e                                         ; $780f: $a3
    cp b                                          ; $7810: $b8
    cp $3d                                        ; $7811: $fe $3d
    ld a, e                                       ; $7813: $7b
    nop                                           ; $7814: $00
    rla                                           ; $7815: $17
    and l                                         ; $7816: $a5
    adc $48                                       ; $7817: $ce $48
    sub $a9                                       ; $7819: $d6 $a9
    dec bc                                        ; $781b: $0b
    ld a, $ae                                     ; $781c: $3e $ae
    ld h, [hl]                                    ; $781e: $66
    cp a                                          ; $781f: $bf
    sub h                                         ; $7820: $94
    rst $30                                       ; $7821: $f7
    add hl, sp                                    ; $7822: $39
    sub [hl]                                      ; $7823: $96
    ld sp, hl                                     ; $7824: $f9
    ccf                                           ; $7825: $3f
    jr c, @+$69                                   ; $7826: $38 $67

    ld [hl], c                                    ; $7828: $71
    ld e, h                                       ; $7829: $5c
    ldh a, [$a1]                                  ; $782a: $f0 $a1
    rst $00                                       ; $782c: $c7
    ld b, l                                       ; $782d: $45
    and a                                         ; $782e: $a7
    dec bc                                        ; $782f: $0b
    jp nc, Jump_03e_5b04                          ; $7830: $d2 $04 $5b

    rst $38                                       ; $7833: $ff
    call nc, Call_03e_4711                        ; $7834: $d4 $11 $47
    adc l                                         ; $7837: $8d
    inc e                                         ; $7838: $1c
    or c                                          ; $7839: $b1
    ld e, d                                       ; $783a: $5a
    adc b                                         ; $783b: $88
    pop af                                        ; $783c: $f1
    db $eb                                        ; $783d: $eb
    ld b, [hl]                                    ; $783e: $46
    adc h                                         ; $783f: $8c
    ld a, c                                       ; $7840: $79
    inc bc                                        ; $7841: $03
    rla                                           ; $7842: $17
    and l                                         ; $7843: $a5
    adc $48                                       ; $7844: $ce $48
    sub $a9                                       ; $7846: $d6 $a9
    adc e                                         ; $7848: $8b
    ld e, h                                       ; $7849: $5c
    ldh a, [$71]                                  ; $784a: $f0 $71
    ld b, c                                       ; $784c: $41
    sbc d                                         ; $784d: $9a
    ld h, b                                       ; $784e: $60
    xor [hl]                                      ; $784f: $ae
    ld h, c                                       ; $7850: $61
    db $ed                                        ; $7851: $ed
    sub b                                         ; $7852: $90
    ei                                            ; $7853: $fb
    or d                                          ; $7854: $b2
    ld a, [bc]                                    ; $7855: $0a
    sub c                                         ; $7856: $91
    sbc b                                         ; $7857: $98
    ldh a, [$a9]                                  ; $7858: $f0 $a9
    ld l, l                                       ; $785a: $6d
    ret                                           ; $785b: $c9


    ld de, $8d47                                  ; $785c: $11 $47 $8d
    inc e                                         ; $785f: $1c
    or c                                          ; $7860: $b1
    ld e, d                                       ; $7861: $5a
    adc b                                         ; $7862: $88
    pop af                                        ; $7863: $f1
    db $eb                                        ; $7864: $eb
    ld b, [hl]                                    ; $7865: $46
    adc h                                         ; $7866: $8c
    ld a, c                                       ; $7867: $79
    inc bc                                        ; $7868: $03
    rla                                           ; $7869: $17
    and l                                         ; $786a: $a5
    adc $48                                       ; $786b: $ce $48
    sub $a9                                       ; $786d: $d6 $a9
    inc sp                                        ; $786f: $33
    jp nz, Jump_000_39c7                          ; $7870: $c2 $c7 $39

    sbc h                                         ; $7873: $9c
    cp b                                          ; $7874: $b8
    and $73                                       ; $7875: $e6 $73
    sub c                                         ; $7877: $91
    ld [hl+], a                                   ; $7878: $22
    add hl, hl                                    ; $7879: $29
    ld [hl], $d5                                  ; $787a: $36 $d5
    call Call_000_2ce4                            ; $787c: $cd $e4 $2c
    adc [hl]                                      ; $787f: $8e
    dec bc                                        ; $7880: $0b
    cp [hl]                                       ; $7881: $be
    ld hl, $e2ce                                  ; $7882: $21 $ce $e2
    jr c, jr_03e_780e                             ; $7885: $38 $87

    swap b                                        ; $7887: $cb $30
    sub c                                         ; $7889: $91
    jr @-$45                                      ; $788a: $18 $b9

    and b                                         ; $788c: $a0
    or e                                          ; $788d: $b3
    cp $0d                                        ; $788e: $fe $0d
    nop                                           ; $7890: $00
    rla                                           ; $7891: $17
    and l                                         ; $7892: $a5
    adc $48                                       ; $7893: $ce $48
    sub $a9                                       ; $7895: $d6 $a9
    inc sp                                        ; $7897: $33
    jp nz, Jump_000_39c7                          ; $7898: $c2 $c7 $39

    db $fc                                        ; $789b: $fc
    push de                                       ; $789c: $d5
    rlca                                          ; $789d: $07
    ld l, b                                       ; $789e: $68
    inc sp                                        ; $789f: $33
    ccf                                           ; $78a0: $3f
    adc e                                         ; $78a1: $8b
    db $e3                                        ; $78a2: $e3
    ld a, h                                       ; $78a3: $7c
    db $d3                                        ; $78a4: $d3
    jr z, @-$2f                                   ; $78a5: $28 $cf

    db $fd                                        ; $78a7: $fd
    ld c, d                                       ; $78a8: $4a
    ld [$4c32], a                                 ; $78a9: $ea $32 $4c
    inc h                                         ; $78ac: $24
    ld b, [hl]                                    ; $78ad: $46
    ld a, [hl+]                                   ; $78ae: $2a
    ld a, h                                       ; $78af: $7c
    pop bc                                        ; $78b0: $c1
    scf                                           ; $78b1: $37
    xor l                                         ; $78b2: $ad
    ld a, [hl+]                                   ; $78b3: $2a
    ld a, [$d42c]                                 ; $78b4: $fa $2c $d4
    add l                                         ; $78b7: $85

jr_03e_78b8:
    inc d                                         ; $78b8: $14
    cpl                                           ; $78b9: $2f
    sbc h                                         ; $78ba: $9c
    jp $2745                                      ; $78bb: $c3 $45 $27


    sbc b                                         ; $78be: $98
    scf                                           ; $78bf: $37
    nop                                           ; $78c0: $00
    rla                                           ; $78c1: $17
    and l                                         ; $78c2: $a5
    adc $48                                       ; $78c3: $ce $48
    sub $a9                                       ; $78c5: $d6 $a9
    inc sp                                        ; $78c7: $33
    ld e, c                                       ; $78c8: $59
    add a                                         ; $78c9: $87
    adc c                                         ; $78ca: $89
    call nz, $fc39                                ; $78cb: $c4 $39 $fc
    push de                                       ; $78ce: $d5
    rlca                                          ; $78cf: $07
    ld l, b                                       ; $78d0: $68
    inc sp                                        ; $78d1: $33
    cp a                                          ; $78d2: $bf
    sbc d                                         ; $78d3: $9a
    dec h                                         ; $78d4: $25
    ld a, l                                       ; $78d5: $7d
    ld c, e                                       ; $78d6: $4b
    db $fd                                        ; $78d7: $fd
    ld e, c                                       ; $78d8: $59
    inc e                                         ; $78d9: $1c
    rla                                           ; $78da: $17
    ld a, h                                       ; $78db: $7c
    jp Jump_000_1c59                              ; $78dc: $c3 $59 $1c


    rst $20                                       ; $78df: $e7
    ld [hl], b                                    ; $78e0: $70
    ld b, h                                       ; $78e1: $44
    sub $0d                                       ; $78e2: $d6 $0d
    jp z, $e729                                   ; $78e4: $ca $29 $e7

    dec e                                         ; $78e7: $1d
    and l                                         ; $78e8: $a5
    cp $1b                                        ; $78e9: $fe $1b
    nop                                           ; $78eb: $00
    db $dd                                        ; $78ec: $dd
    ld l, $4a                                     ; $78ed: $2e $4a
    sbc l                                         ; $78ef: $9d
    sub c                                         ; $78f0: $91
    xor h                                         ; $78f1: $ac
    ld d, e                                       ; $78f2: $53
    rla                                           ; $78f3: $17
    ld a, h                                       ; $78f4: $7c
    sbc h                                         ; $78f5: $9c
    ld de, $cfbe                                  ; $78f6: $11 $be $cf
    ld d, l                                       ; $78f9: $55
    sub a                                         ; $78fa: $97
    inc d                                         ; $78fb: $14
    ld [$2eea], a                                 ; $78fc: $ea $ea $2e
    xor b                                         ; $78ff: $a8
    sbc c                                         ; $7900: $99
    rst $10                                       ; $7901: $d7
    ld e, $eb                                     ; $7902: $1e $eb
    halt                                          ; $7904: $76
    push af                                       ; $7905: $f5
    ld a, $a4                                     ; $7906: $3e $a4
    add $c7                                       ; $7908: $c6 $c7
    ld e, $bb                                     ; $790a: $1e $bb
    call z, $1a8d                                 ; $790c: $cc $8d $1a
    cp e                                          ; $790f: $bb
    ld [hl], h                                    ; $7910: $74
    sbc l                                         ; $7911: $9d
    ld b, [hl]                                    ; $7912: $46
    add h                                         ; $7913: $84
    cpl                                           ; $7914: $2f
    and h                                         ; $7915: $a4
    db $e4                                        ; $7916: $e4
    and d                                         ; $7917: $a2
    db $d3                                        ; $7918: $d3
    ld de, $3759                                  ; $7919: $11 $59 $37
    jr z, jr_03e_7993                             ; $791c: $28 $75

    sub l                                         ; $791e: $95
    rst $00                                       ; $791f: $c7
    db $fd                                        ; $7920: $fd
    ld a, [hl+]                                   ; $7921: $2a
    ld e, c                                       ; $7922: $59
    or a                                          ; $7923: $b7
    ld hl, sp+$72                                 ; $7924: $f8 $72
    inc bc                                        ; $7926: $03
    db $dd                                        ; $7927: $dd
    ld [bc], a                                    ; $7928: $02
    ld e, [hl]                                    ; $7929: $5e
    ld l, b                                       ; $792a: $68
    jr c, jr_03e_78b8                             ; $792b: $38 $8b

    db $e3                                        ; $792d: $e3
    ld c, d                                       ; $792e: $4a
    ld [$648c], a                                 ; $792f: $ea $8c $64
    sbc l                                         ; $7932: $9d
    cp d                                          ; $7933: $ba
    ldh [$e3], a                                  ; $7934: $e0 $e3
    inc a                                         ; $7936: $3c
    inc hl                                        ; $7937: $23
    or c                                          ; $7938: $b1
    ld sp, hl                                     ; $7939: $f9
    call c, Call_000_3a2f                         ; $793a: $dc $2f $3a
    ld e, l                                       ; $793d: $5d
    add [hl]                                      ; $793e: $86
    adc c                                         ; $793f: $89
    call nz, $ed48                                ; $7940: $c4 $48 $ed
    ld bc, $9700                                  ; $7943: $01 $00 $97
    ld [hl], c                                    ; $7946: $71
    call nc, $a5d8                                ; $7947: $d4 $d8 $a5
    xor e                                         ; $794a: $ab
    or e                                          ; $794b: $b3
    jp nc, Jump_000_3e88                          ; $794c: $d2 $88 $3e

Jump_03e_794f:
    ld d, a                                       ; $794f: $57
    dec sp                                        ; $7950: $3b
    db $eb                                        ; $7951: $eb
    inc a                                         ; $7952: $3c
    dec [hl]                                      ; $7953: $35
    ld a, h                                       ; $7954: $7c
    db $d3                                        ; $7955: $d3
    ld a, [c]                                     ; $7956: $f2
    ld e, [hl]                                    ; $7957: $5e
    or a                                          ; $7958: $b7
    ld c, e                                       ; $7959: $4b
    ld e, h                                       ; $795a: $5c
    db $eb                                        ; $795b: $eb
    rst $18                                       ; $795c: $df
    and l                                         ; $795d: $a5
    ld d, e                                       ; $795e: $53
    cp $c2                                        ; $795f: $fe $c2
    sub h                                         ; $7961: $94
    add hl, de                                    ; $7962: $19
    ld d, a                                       ; $7963: $57
    jp nz, $e79f                                  ; $7964: $c2 $9f $e7

    ld c, d                                       ; $7967: $4a
    ld [$648c], a                                 ; $7968: $ea $8c $64
    sbc l                                         ; $796b: $9d
    jp c, $0003                                   ; $796c: $da $03 $00

    db $dd                                        ; $796f: $dd
    ld l, $4a                                     ; $7970: $2e $4a
    sbc l                                         ; $7972: $9d
    sub c                                         ; $7973: $91
    xor h                                         ; $7974: $ac
    ld d, e                                       ; $7975: $53
    rla                                           ; $7976: $17
    ld a, h                                       ; $7977: $7c
    sbc h                                         ; $7978: $9c
    ld de, $cfbe                                  ; $7979: $11 $be $cf
    add hl, sp                                    ; $797c: $39
    sbc h                                         ; $797d: $9c
    ld [hl], h                                    ; $797e: $74
    ld d, l                                       ; $797f: $55
    ccf                                           ; $7980: $3f
    db $f4                                        ; $7981: $f4
    di                                            ; $7982: $f3
    ld e, h                                       ; $7983: $5c
    and l                                         ; $7984: $a5
    ld de, $ce63                                  ; $7985: $11 $63 $ce
    ld [c], a                                     ; $7988: $e2
    cp b                                          ; $7989: $b8
    rla                                           ; $798a: $17
    ld a, c                                       ; $798b: $79
    adc l                                         ; $798c: $8d
    ld a, [c]                                     ; $798d: $f2
    ei                                            ; $798e: $fb
    or d                                          ; $798f: $b2
    inc c                                         ; $7990: $0c
    inc de                                        ; $7991: $13
    adc c                                         ; $7992: $89

jr_03e_7993:
    sub c                                         ; $7993: $91

Jump_03e_7994:
    dec a                                         ; $7994: $3d
    nop                                           ; $7995: $00
    rla                                           ; $7996: $17

Jump_03e_7997:
    and l                                         ; $7997: $a5
    adc $48                                       ; $7998: $ce $48
    sub $a9                                       ; $799a: $d6 $a9
    dec bc                                        ; $799c: $0b
    ld a, $2e                                     ; $799d: $3e $2e
    jp z, $56a3                                   ; $799f: $ca $a3 $56

    and a                                         ; $79a2: $a7
    call nc, Call_03e_73ef                        ; $79a3: $d4 $ef $73

Jump_03e_79a6:
    ld e, a                                       ; $79a6: $5f
    sub [hl]                                      ; $79a7: $96
    ld h, c                                       ; $79a8: $61
    ld [hl+], a                                   ; $79a9: $22
    ld sp, $c472                                  ; $79aa: $31 $72 $c4
    ei                                            ; $79ad: $fb
    cp [hl]                                       ; $79ae: $be
    inc sp                                        ; $79af: $33
    jp z, $a4cf                                   ; $79b0: $ca $cf $a4

    cp $0d                                        ; $79b3: $fe $0d
    nop                                           ; $79b5: $00
    db $dd                                        ; $79b6: $dd
    ld l, $4a                                     ; $79b7: $2e $4a
    sbc l                                         ; $79b9: $9d
    sub c                                         ; $79ba: $91
    xor h                                         ; $79bb: $ac
    ld d, e                                       ; $79bc: $53
    rst $20                                       ; $79bd: $e7
    or e                                          ; $79be: $b3
    ld d, e                                       ; $79bf: $53
    ld e, $17                                     ; $79c0: $1e $17
    sbc l                                         ; $79c2: $9d
    ld l, $e0                                     ; $79c3: $2e $e0
    jp nc, Jump_000_2779                          ; $79c5: $d2 $79 $27

    adc a                                         ; $79c8: $8f
    sub c                                         ; $79c9: $91
    ld h, e                                       ; $79ca: $63
    add hl, de                                    ; $79cb: $19
    or c                                          ; $79cc: $b1
    ld e, d                                       ; $79cd: $5a
    adc b                                         ; $79ce: $88
    pop af                                        ; $79cf: $f1
    db $eb                                        ; $79d0: $eb
    ld b, [hl]                                    ; $79d1: $46
    adc h                                         ; $79d2: $8c
    reti                                          ; $79d3: $d9


    inc bc                                        ; $79d4: $03
    nop                                           ; $79d5: $00
    rla                                           ; $79d6: $17
    and l                                         ; $79d7: $a5
    adc $48                                       ; $79d8: $ce $48
    sub $a9                                       ; $79da: $d6 $a9
    ld b, e                                       ; $79dc: $43
    cp d                                          ; $79dd: $ba
    jr z, jr_03e_7a3f                             ; $79de: $28 $5f

    ld e, d                                       ; $79e0: $5a
    rst $38                                       ; $79e1: $ff
    rst $00                                       ; $79e2: $c7
    add hl, de                                    ; $79e3: $19
    rst $30                                       ; $79e4: $f7
    push bc                                       ; $79e5: $c5
    ld [c], a                                     ; $79e6: $e2
    ld a, [de]                                    ; $79e7: $1a
    ld h, l                                       ; $79e8: $65
    dec d                                         ; $79e9: $15
    ld [hl+], a                                   ; $79ea: $22
    ld sp, $ab97                                  ; $79eb: $31 $97 $ab
    rra                                           ; $79ee: $1f
    ld l, d                                       ; $79ef: $6a
    ccf                                           ; $79f0: $3f
    rst $38                                       ; $79f1: $ff
    rlca                                          ; $79f2: $07
    scf                                           ; $79f3: $37
    db $fc                                        ; $79f4: $fc

Call_03e_79f5:
    ld e, c                                       ; $79f5: $59
    inc e                                         ; $79f6: $1c
    rla                                           ; $79f7: $17
    add hl, sp                                    ; $79f8: $39
    ld l, d                                       ; $79f9: $6a
    xor h                                         ; $79fa: $ac
    cp d                                          ; $79fb: $ba
    xor a                                         ; $79fc: $af
    and [hl]                                      ; $79fd: $a6
    adc c                                         ; $79fe: $89
    adc a                                         ; $79ff: $8f
    ld a, $6f                                     ; $7a00: $3e $6f
    nop                                           ; $7a02: $00
    rla                                           ; $7a03: $17
    and l                                         ; $7a04: $a5
    adc $48                                       ; $7a05: $ce $48
    sub $a9                                       ; $7a07: $d6 $a9
    adc e                                         ; $7a09: $8b
    call c, $9d5b                                 ; $7a0a: $dc $5b $9d
    ld a, a                                       ; $7a0d: $7f
    call c, $e3af                                 ; $7a0e: $dc $af $e3
    call nc, $acbc                                ; $7a11: $d4 $bc $ac
    ld h, [hl]                                    ; $7a14: $66
    cp a                                          ; $7a15: $bf
    sub h                                         ; $7a16: $94
    ld l, c                                       ; $7a17: $69
    inc sp                                        ; $7a18: $33
    jr nc, jr_03e_7a25                            ; $7a19: $30 $0a

    ld [hl], l                                    ; $7a1b: $75
    sbc [hl]                                      ; $7a1c: $9e
    dec bc                                        ; $7a1d: $0b
    set 0, a                                      ; $7a1e: $cb $c7
    rst $28                                       ; $7a20: $ef
    ld bc, $1700                                  ; $7a21: $01 $00 $17
    and l                                         ; $7a24: $a5

jr_03e_7a25:
    adc $48                                       ; $7a25: $ce $48
    sub $a9                                       ; $7a27: $d6 $a9
    inc sp                                        ; $7a29: $33
    jp nz, Jump_000_39c7                          ; $7a2a: $c2 $c7 $39

    ld e, h                                       ; $7a2d: $5c
    sbc l                                         ; $7a2e: $9d
    xor b                                         ; $7a2f: $a8
    ld d, c                                       ; $7a30: $51
    ld e, h                                       ; $7a31: $5c
    ld c, [hl]                                    ; $7a32: $4e
    ld a, c                                       ; $7a33: $79
    or b                                          ; $7a34: $b0
    ld h, e                                       ; $7a35: $63
    ret                                           ; $7a36: $c9


    ld a, e                                       ; $7a37: $7b
    rst $20                                       ; $7a38: $e7
    jr c, @+$7b                                   ; $7a39: $38 $79

    adc h                                         ; $7a3b: $8c
    ld e, h                                       ; $7a3c: $5c
    ld b, a                                       ; $7a3d: $47
    ld e, b                                       ; $7a3e: $58

jr_03e_7a3f:
    and c                                         ; $7a3f: $a1
    xor [hl]                                      ; $7a40: $ae
    and c                                         ; $7a41: $a1
    add $c7                                       ; $7a42: $c6 $c7
    ld c, b                                       ; $7a44: $48
    add l                                         ; $7a45: $85
    cpl                                           ; $7a46: $2f
    ld [hl], d                                    ; $7a47: $72
    call nz, Call_000_216a                        ; $7a48: $c4 $6a $21
    add $97                                       ; $7a4b: $c6 $97
    ld l, $dd                                     ; $7a4d: $2e $dd
    xor a                                         ; $7a4f: $af
    xor $d2                                       ; $7a50: $ee $d2
    add hl, bc                                    ; $7a52: $09
    ld h, e                                       ; $7a53: $63
    ld [$2eea], a                                 ; $7a54: $ea $ea $2e
    xor b                                         ; $7a57: $a8
    sbc c                                         ; $7a58: $99
    call nc, Call_000_1c59                        ; $7a59: $d4 $59 $1c
    rst $20                                       ; $7a5c: $e7
    add hl, sp                                    ; $7a5d: $39
    sub e                                         ; $7a5e: $93
    ld a, [de]                                    ; $7a5f: $1a
    ld e, l                                       ; $7a60: $5d
    db $dd                                        ; $7a61: $dd
    ld de, $00de                                  ; $7a62: $11 $de $00
    rla                                           ; $7a65: $17
    and l                                         ; $7a66: $a5
    adc $48                                       ; $7a67: $ce $48
    sub $a9                                       ; $7a69: $d6 $a9

jr_03e_7a6b:
    di                                            ; $7a6b: $f3
    db $ec                                        ; $7a6c: $ec
    rst $30                                       ; $7a6d: $f7
    jr c, jr_03e_7a3f                             ; $7a6e: $38 $cf

    add hl, hl                                    ; $7a70: $29
    dec h                                         ; $7a71: $25
    ld [hl], d                                    ; $7a72: $72
    rlca                                          ; $7a73: $07
    call nz, $a856                                ; $7a74: $c4 $56 $a8
    or e                                          ; $7a77: $b3
    adc [hl]                                      ; $7a78: $8e
    ld e, b                                       ; $7a79: $58
    or c                                          ; $7a7a: $b1
    ld a, c                                       ; $7a7b: $79
    call c, Call_03e_6597                         ; $7a7c: $dc $97 $65
    sbc b                                         ; $7a7f: $98
    ld c, b                                       ; $7a80: $48
    adc h                                         ; $7a81: $8c
    sbc h                                         ; $7a82: $9c
    jp $d85f                                      ; $7a83: $c3 $5f $d8


    inc [hl]                                      ; $7a86: $34
    cp $34                                        ; $7a87: $fe $34
    dec sp                                        ; $7a89: $3b
    jp nz, $b745                                  ; $7a8a: $c2 $45 $b7

    ld d, b                                       ; $7a8d: $50
    ld l, h                                       ; $7a8e: $6c
    ld h, c                                       ; $7a8f: $61
    or l                                          ; $7a90: $b5
    ld a, [hl-]                                   ; $7a91: $3a
    rla                                           ; $7a92: $17
    cp [hl]                                       ; $7a93: $be
    ld h, $7c                                     ; $7a94: $26 $7c
    dec [hl]                                      ; $7a96: $35
    ei                                            ; $7a97: $fb
    and l                                         ; $7a98: $a5
    inc a                                         ; $7a99: $3c
    ld a, [$abdc]                                 ; $7a9a: $fa $dc $ab
    call $cdd4                                    ; $7a9d: $cd $d4 $cd
    or e                                          ; $7aa0: $b3
    sbc d                                         ; $7aa1: $9a
    xor b                                         ; $7aa2: $a8
    ld a, a                                       ; $7aa3: $7f
    inc bc                                        ; $7aa4: $03
    rla                                           ; $7aa5: $17
    and l                                         ; $7aa6: $a5
    adc $48                                       ; $7aa7: $ce $48
    sub $a9                                       ; $7aa9: $d6 $a9
    adc e                                         ; $7aab: $8b
    sbc h                                         ; $7aac: $9c
    or b                                          ; $7aad: $b0
    jp nz, $38f2                                  ; $7aae: $c2 $f2 $38

    sub [hl]                                      ; $7ab1: $96
    add l                                         ; $7ab2: $85
    ld c, $63                                     ; $7ab3: $0e $63
    adc $57                                       ; $7ab5: $ce $57
    db $ed                                        ; $7ab7: $ed
    or h                                          ; $7ab8: $b4
    ld [hl-], a                                   ; $7ab9: $32
    rst $08                                       ; $7aba: $cf
    ld b, l                                       ; $7abb: $45
    and a                                         ; $7abc: $a7
    swap b                                        ; $7abd: $cb $30
    sub c                                         ; $7abf: $91
    jr jr_03e_7a6b                                ; $7ac0: $18 $a9

    or e                                          ; $7ac2: $b3
    ld l, $4c                                     ; $7ac3: $2e $4c
    cpl                                           ; $7ac5: $2f
    ld e, l                                       ; $7ac6: $5d
    cp d                                          ; $7ac7: $ba
    ld a, [c]                                     ; $7ac8: $f2
    ret c                                         ; $7ac9: $d8

    rst $38                                       ; $7aca: $ff
    and l                                         ; $7acb: $a5
    ld d, b                                       ; $7acc: $50
    ld d, a                                       ; $7acd: $57
    or e                                          ; $7ace: $b3
    ld e, a                                       ; $7acf: $5f
    jp z, $fb8c                                   ; $7ad0: $ca $8c $fb

    ld h, d                                       ; $7ad3: $62
    ld [hl], c                                    ; $7ad4: $71
    adc l                                         ; $7ad5: $8d
    or d                                          ; $7ad6: $b2
    jr nz, jr_03e_7b26                            ; $7ad7: $20 $4d

    or b                                          ; $7ad9: $b0
    push af                                       ; $7ada: $f5
    rst $08                                       ; $7adb: $cf
    dec de                                        ; $7adc: $1b
    nop                                           ; $7add: $00
    db $dd                                        ; $7ade: $dd
    ld l, $4a                                     ; $7adf: $2e $4a
    sbc l                                         ; $7ae1: $9d

Jump_03e_7ae2:
    sub c                                         ; $7ae2: $91
    xor h                                         ; $7ae3: $ac
    ld d, e                                       ; $7ae4: $53
    rla                                           ; $7ae5: $17
    ld h, $12                                     ; $7ae6: $26 $12

jr_03e_7ae8:
    rst $30                                       ; $7ae8: $f7
    ld h, l                                       ; $7ae9: $65
    ld [hl], l                                    ; $7aea: $75
    rla                                           ; $7aeb: $17
    xor h                                         ; $7aec: $ac
    ld d, [hl]                                    ; $7aed: $56
    rst $20                                       ; $7aee: $e7
    and d                                         ; $7aef: $a2
    db $d3                                        ; $7af0: $d3
    dec b                                         ; $7af1: $05
    db $f4                                        ; $7af2: $f4
    jp hl                                         ; $7af3: $e9


    ld bc, $1700                                  ; $7af4: $01 $00 $17
    and l                                         ; $7af7: $a5
    adc $48                                       ; $7af8: $ce $48
    sub $a9                                       ; $7afa: $d6 $a9
    ld h, e                                       ; $7afc: $63
    ld l, c                                       ; $7afd: $69
    ld [hl], l                                    ; $7afe: $75
    jp $b1c7                                      ; $7aff: $c3 $c7 $b1


    adc h                                         ; $7b02: $8c
    push de                                       ; $7b03: $d5
    inc [hl]                                      ; $7b04: $34
    ld sp, $7757                                  ; $7b05: $31 $57 $77
    ld b, c                                       ; $7b08: $41
    call Call_000_3ce4                            ; $7b09: $cd $e4 $3c
    rst $20                                       ; $7b0c: $e7
    ld [hl], b                                    ; $7b0d: $70
    ld b, c                                       ; $7b0e: $41
    sbc d                                         ; $7b0f: $9a
    ld h, b                                       ; $7b10: $60
    db $eb                                        ; $7b11: $eb
    sbc a                                         ; $7b12: $9f
    or e                                          ; $7b13: $b3
    jr c, jr_03e_7b44                             ; $7b14: $38 $2e

    ld [hl], d                                    ; $7b16: $72
    pop bc                                        ; $7b17: $c1
    or a                                          ; $7b18: $b7
    ld a, $ae                                     ; $7b19: $3e $ae
    inc a                                         ; $7b1b: $3c
    or $7f                                        ; $7b1c: $f6 $7f
    sbc a                                         ; $7b1e: $9f
    ldh a, [$59]                                  ; $7b1f: $f0 $59
    ld a, a                                       ; $7b21: $7f
    jp z, $875f                                   ; $7b22: $ca $5f $87

    ret z                                         ; $7b25: $c8

jr_03e_7b26:
    ld [$5a66], a                                 ; $7b26: $ea $66 $5a
    ld l, d                                       ; $7b29: $6a
    ld l, $e7                                     ; $7b2a: $2e $e7
    rst $38                                       ; $7b2c: $ff
    ldh [$86], a                                  ; $7b2d: $e0 $86
    ld a, c                                       ; $7b2f: $79
    inc bc                                        ; $7b30: $03
    db $dd                                        ; $7b31: $dd
    ld l, $4a                                     ; $7b32: $2e $4a
    sbc l                                         ; $7b34: $9d
    sub c                                         ; $7b35: $91
    xor h                                         ; $7b36: $ac
    ld d, e                                       ; $7b37: $53
    ld h, a                                       ; $7b38: $67
    sbc h                                         ; $7b39: $9c
    inc a                                         ; $7b3a: $3c
    ld l, $a6                                     ; $7b3b: $2e $a6
    ld a, a                                       ; $7b3d: $7f
    ld e, l                                       ; $7b3e: $5d
    ld [hl], h                                    ; $7b3f: $74
    cp d                                          ; $7b40: $ba
    jr nz, jr_03e_7ae8                            ; $7b41: $20 $a5

    ld sp, hl                                     ; $7b43: $f9

jr_03e_7b44:
    rst $10                                       ; $7b44: $d7
    ld e, c                                       ; $7b45: $59
    rla                                           ; $7b46: $17
    ld h, $12                                     ; $7b47: $26 $12
    rst $30                                       ; $7b49: $f7
    ld h, l                                       ; $7b4a: $65
    ld [hl], l                                    ; $7b4b: $75
    rla                                           ; $7b4c: $17
    xor h                                         ; $7b4d: $ac
    ld d, [hl]                                    ; $7b4e: $56
    rst $20                                       ; $7b4f: $e7
    and d                                         ; $7b50: $a2
    db $d3                                        ; $7b51: $d3
    dec b                                         ; $7b52: $05
    db $f4                                        ; $7b53: $f4
    jp hl                                         ; $7b54: $e9


    ld bc, $1700                                  ; $7b55: $01 $00 $17
    and l                                         ; $7b58: $a5
    adc $48                                       ; $7b59: $ce $48
    sub $a9                                       ; $7b5b: $d6 $a9
    adc e                                         ; $7b5d: $8b
    ld e, h                                       ; $7b5e: $5c
    ldh a, [$71]                                  ; $7b5f: $f0 $71
    cp $7d                                        ; $7b61: $fe $7d
    sbc $f7                                       ; $7b63: $de $f7
    db $dd                                        ; $7b65: $dd
    xor l                                         ; $7b66: $ad
    cp e                                          ; $7b67: $bb
    jp $2f85                                      ; $7b68: $c3 $85 $2f


    rrca                                          ; $7b6b: $0f
    cp c                                          ; $7b6c: $b9
    rst $10                                       ; $7b6d: $d7
    sbc [hl]                                      ; $7b6e: $9e
    dec a                                         ; $7b6f: $3d
    nop                                           ; $7b70: $00
    db $dd                                        ; $7b71: $dd
    ld l, $4a                                     ; $7b72: $2e $4a
    sbc l                                         ; $7b74: $9d
    sub c                                         ; $7b75: $91
    xor h                                         ; $7b76: $ac
    ld d, e                                       ; $7b77: $53
    rla                                           ; $7b78: $17

jr_03e_7b79:
    cp c                                          ; $7b79: $b9
    ldh [$e3], a                                  ; $7b7a: $e0 $e3
    add d                                         ; $7b7c: $82
    inc [hl]                                      ; $7b7d: $34
    pop bc                                        ; $7b7e: $c1
    ld e, h                                       ; $7b7f: $5c
    db $dd                                        ; $7b80: $dd
    and l                                         ; $7b81: $a5
    dec hl                                        ; $7b82: $2b
    ld c, l                                       ; $7b83: $4d
    ld h, e                                       ; $7b84: $63
    or $58                                        ; $7b85: $f6 $58
    or a                                          ; $7b87: $b7
    adc e                                         ; $7b88: $8b
    ld d, d                                       ; $7b89: $52
    rla                                           ; $7b8a: $17
    ret nc                                        ; $7b8b: $d0

    ld h, a                                       ; $7b8c: $67
    ld d, $c7                                     ; $7b8d: $16 $c7
    add hl, hl                                    ; $7b8f: $29
    add a                                         ; $7b90: $87
    inc [hl]                                      ; $7b91: $34
    call nc, Call_000_1f16                        ; $7b92: $d4 $16 $1f
    rla                                           ; $7b95: $17
    cp [hl]                                       ; $7b96: $be
    db $fc                                        ; $7b97: $fc
    jp z, $ff63                                   ; $7b98: $ca $63 $ff

    sub a                                         ; $7b9b: $97
    dec b                                         ; $7b9c: $05
    ld l, c                                       ; $7b9d: $69
    add d                                         ; $7b9e: $82
    xor l                                         ; $7b9f: $ad
    ld a, a                                       ; $7ba0: $7f
    ld [$1394], a                                 ; $7ba1: $ea $94 $13
    ld a, d                                       ; $7ba4: $7a
    ld h, a                                       ; $7ba5: $67
    adc b                                         ; $7ba6: $88
    ei                                            ; $7ba7: $fb
    sub l                                         ; $7ba8: $95
    ld e, a                                       ; $7ba9: $5f
    db $dd                                        ; $7baa: $dd
    ld [c], a                                     ; $7bab: $e2
    ei                                            ; $7bac: $fb
    ld e, $00                                     ; $7bad: $1e $00
    rla                                           ; $7baf: $17
    and l                                         ; $7bb0: $a5
    adc $48                                       ; $7bb1: $ce $48
    sub $a9                                       ; $7bb3: $d6 $a9

jr_03e_7bb5:
    inc hl                                        ; $7bb5: $23
    sbc d                                         ; $7bb6: $9a
    rst $00                                       ; $7bb7: $c7
    ld hl, sp-$48                                 ; $7bb8: $f8 $b8
    cpl                                           ; $7bba: $2f
    swap b                                        ; $7bbb: $cb $30
    sub c                                         ; $7bbd: $91
    jr jr_03e_7b79                                ; $7bbe: $18 $b9

    ldh a, [$e5]                                  ; $7bc0: $f0 $e5
    ld h, a                                       ; $7bc2: $67
    ld [hl], c                                    ; $7bc3: $71
    sbc h                                         ; $7bc4: $9c
    ld a, [hl-]                                   ; $7bc5: $3a
    db $dd                                        ; $7bc6: $dd
    rst $00                                       ; $7bc7: $c7
    or a                                          ; $7bc8: $b7
    jr c, jr_03e_7bb5                             ; $7bc9: $38 $ea

    xor d                                         ; $7bcb: $aa
    ld l, l                                       ; $7bcc: $6d
    or h                                          ; $7bcd: $b4
    sbc c                                         ; $7bce: $99
    call nc, $ce45                                ; $7bcf: $d4 $45 $ce
    jr c, jr_03e_7bf5                             ; $7bd2: $38 $21

    sbc $00                                       ; $7bd4: $de $00
    db $dd                                        ; $7bd6: $dd
    ld l, $4a                                     ; $7bd7: $2e $4a
    sbc l                                         ; $7bd9: $9d
    sub c                                         ; $7bda: $91
    xor h                                         ; $7bdb: $ac
    ld d, e                                       ; $7bdc: $53
    rla                                           ; $7bdd: $17
    ld a, h                                       ; $7bde: $7c
    sbc h                                         ; $7bdf: $9c
    cp d                                          ; $7be0: $ba
    ld c, [hl]                                    ; $7be1: $4e
    di                                            ; $7be2: $f3
    cp c                                          ; $7be3: $b9
    add sp, -$7a                                  ; $7be4: $e8 $86
    xor l                                         ; $7be6: $ad
    jp nz, Jump_03e_63d2                          ; $7be7: $c2 $d2 $63

    halt                                          ; $7bea: $76
    ld a, [de]                                    ; $7beb: $1a
    ld a, a                                       ; $7bec: $7f
    ld h, $eb                                     ; $7bed: $26 $eb
    ld c, [hl]                                    ; $7bef: $4e
    jp $cd37                                      ; $7bf0: $c3 $37 $cd


    ld d, $a7                                     ; $7bf3: $16 $a7

Call_03e_7bf5:
jr_03e_7bf5:
    or [hl]                                       ; $7bf5: $b6
    dec h                                         ; $7bf6: $25
    ld d, a                                       ; $7bf7: $57
    db $ed                                        ; $7bf8: $ed
    ret nc                                        ; $7bf9: $d0

    or h                                          ; $7bfa: $b4
    call nz, $c39f                                ; $7bfb: $c4 $9f $c3
    ld e, a                                       ; $7bfe: $5f
    add l                                         ; $7bff: $85
    db $fd                                        ; $7c00: $fd
    ld l, a                                       ; $7c01: $6f
    nop                                           ; $7c02: $00
    db $dd                                        ; $7c03: $dd
    ld l, $4a                                     ; $7c04: $2e $4a
    sbc l                                         ; $7c06: $9d
    sub c                                         ; $7c07: $91
    xor h                                         ; $7c08: $ac
    ld d, e                                       ; $7c09: $53
    rla                                           ; $7c0a: $17
    add hl, sp                                    ; $7c0b: $39
    sub e                                         ; $7c0c: $93
    ld l, b                                       ; $7c0d: $68
    add sp, -$77                                  ; $7c0e: $e8 $89
    ld [hl], e                                    ; $7c10: $73
    cp b                                          ; $7c11: $b8
    ld [hl], a                                    ; $7c12: $77
    dec [hl]                                      ; $7c13: $35
    ld sp, $42e6                                  ; $7c14: $31 $e6 $42
    ld c, d                                       ; $7c17: $4a
    db $fd                                        ; $7c18: $fd
    ld c, b                                       ; $7c19: $48
    adc h                                         ; $7c1a: $8c
    sbc h                                         ; $7c1b: $9c
    rst $20                                       ; $7c1c: $e7
    ld [bc], a                                    ; $7c1d: $02
    ld l, $ed                                     ; $7c1e: $2e $ed
    ld sp, $8d3b                                  ; $7c20: $31 $3b $8d
    ccf                                           ; $7c23: $3f
    sub e                                         ; $7c24: $93
    ld [hl], l                                    ; $7c25: $75
    and a                                         ; $7c26: $a7
    pop hl                                        ; $7c27: $e1
    sbc e                                         ; $7c28: $9b
    ld h, [hl]                                    ; $7c29: $66
    adc e                                         ; $7c2a: $8b

Call_03e_7c2b:
    ld d, e                                       ; $7c2b: $53
    db $db                                        ; $7c2c: $db
    sub d                                         ; $7c2d: $92
    xor e                                         ; $7c2e: $ab
    halt                                          ; $7c2f: $76
    ld l, b                                       ; $7c30: $68
    ld e, d                                       ; $7c31: $5a
    ld [c], a                                     ; $7c32: $e2
    rst $08                                       ; $7c33: $cf
    pop hl                                        ; $7c34: $e1
    xor a                                         ; $7c35: $af
    jp nz, $37fe                                  ; $7c36: $c2 $fe $37

    nop                                           ; $7c39: $00
    db $dd                                        ; $7c3a: $dd
    ld l, $4a                                     ; $7c3b: $2e $4a
    sbc l                                         ; $7c3d: $9d
    sub c                                         ; $7c3e: $91
    xor h                                         ; $7c3f: $ac
    ld d, e                                       ; $7c40: $53
    rla                                           ; $7c41: $17
    add hl, sp                                    ; $7c42: $39
    sub e                                         ; $7c43: $93
    ld l, b                                       ; $7c44: $68
    add sp, -$77                                  ; $7c45: $e8 $89
    ld [hl], e                                    ; $7c47: $73
    cp b                                          ; $7c48: $b8
    ld [hl], a                                    ; $7c49: $77
    dec [hl]                                      ; $7c4a: $35
    ld sp, $42e6                                  ; $7c4b: $31 $e6 $42
    ld c, d                                       ; $7c4e: $4a
    db $fd                                        ; $7c4f: $fd
    ld c, b                                       ; $7c50: $48

jr_03e_7c51:
    adc h                                         ; $7c51: $8c
    sbc h                                         ; $7c52: $9c
    rst $20                                       ; $7c53: $e7
    ld [bc], a                                    ; $7c54: $02
    ld a, [$98f4]                                 ; $7c55: $fa $f4 $98
    sbc l                                         ; $7c58: $9d
    add $9f                                       ; $7c59: $c6 $9f
    ret                                           ; $7c5b: $c9


    cp d                                          ; $7c5c: $ba
    db $d3                                        ; $7c5d: $d3
    ldh a, [rKEY1]                                ; $7c5e: $f0 $4d
    or e                                          ; $7c60: $b3
    push bc                                       ; $7c61: $c5
    xor c                                         ; $7c62: $a9
    ld l, l                                       ; $7c63: $6d
    ret                                           ; $7c64: $c9


    ld d, l                                       ; $7c65: $55
    dec sp                                        ; $7c66: $3b
    inc [hl]                                      ; $7c67: $34
    dec l                                         ; $7c68: $2d
    pop af                                        ; $7c69: $f1
    rst $20                                       ; $7c6a: $e7
    ldh a, [$57]                                  ; $7c6b: $f0 $57
    ld h, c                                       ; $7c6d: $61
    rst $38                                       ; $7c6e: $ff
    dec de                                        ; $7c6f: $1b
    nop                                           ; $7c70: $00
    db $dd                                        ; $7c71: $dd
    ld [bc], a                                    ; $7c72: $02
    cp c                                          ; $7c73: $b9
    ldh [$e3], a                                  ; $7c74: $e0 $e3
    ld e, $ca                                     ; $7c76: $1e $ca
    ld hl, sp+$3e                                 ; $7c78: $f8 $3e
    rla                                           ; $7c7a: $17
    db $d3                                        ; $7c7b: $d3
    and a                                         ; $7c7c: $a7
    ld l, $3a                                     ; $7c7d: $2e $3a
    ld e, l                                       ; $7c7f: $5d
    ld b, b                                       ; $7c80: $40
    sbc a                                         ; $7c81: $9f
    ld e, $eb                                     ; $7c82: $1e $eb
    ld h, [hl]                                    ; $7c84: $66
    and a                                         ; $7c85: $a7
    ld sp, $9d47                                  ; $7c86: $31 $47 $9d
    jp $ea79                                      ; $7c89: $c3 $79 $ea


    ld l, e                                       ; $7c8c: $6b
    inc d                                         ; $7c8d: $14
    or $58                                        ; $7c8e: $f6 $58
    scf                                           ; $7c90: $37
    add a                                         ; $7c91: $87
    di                                            ; $7c92: $f3
    call nc, $28d7                                ; $7c93: $d4 $d7 $28
    db $ec                                        ; $7c96: $ec
    ld bc, $bd00                                  ; $7c97: $01 $00 $bd
    inc de                                        ; $7c9a: $13
    rst $20                                       ; $7c9b: $e7
    ldh a, [$a7]                                  ; $7c9c: $f0 $a7
    ld l, a                                       ; $7c9e: $6f
    sbc h                                         ; $7c9f: $9c
    ld l, a                                       ; $7ca0: $6f

jr_03e_7ca1:
    cp $e1                                        ; $7ca1: $fe $e1
    db $eb                                        ; $7ca3: $eb
    and [hl]                                      ; $7ca4: $a6
    adc l                                         ; $7ca5: $8d
    jr jr_03e_7c51                                ; $7ca6: $18 $a9

    or e                                          ; $7ca8: $b3
    jr c, @+$30                                   ; $7ca9: $38 $2e

    ld a, [hl-]                                   ; $7cab: $3a
    ld e, l                                       ; $7cac: $5d
    ret nz                                        ; $7cad: $c0

Call_03e_7cae:
    and l                                         ; $7cae: $a5
    or e                                          ; $7caf: $b3
    ld l, $a0                                     ; $7cb0: $2e $a0
    rst $08                                       ; $7cb2: $cf
    ld a, [hl+]                                   ; $7cb3: $2a
    adc [hl]                                      ; $7cb4: $8e
    and l                                         ; $7cb5: $a5
    ld b, d                                       ; $7cb6: $42
    call c, Call_000_1a8f                         ; $7cb7: $dc $8f $1a
    ld e, a                                       ; $7cba: $5f
    or $65                                        ; $7cbb: $f6 $65
    ld [hl], l                                    ; $7cbd: $75
    rla                                           ; $7cbe: $17
    xor h                                         ; $7cbf: $ac
    ld d, [hl]                                    ; $7cc0: $56
    ld h, a                                       ; $7cc1: $67
    rrca                                          ; $7cc2: $0f
    nop                                           ; $7cc3: $00
    sub a                                         ; $7cc4: $97
    ld [hl], c                                    ; $7cc5: $71
    cp $57                                        ; $7cc6: $fe $57
    ld a, [hl]                                    ; $7cc8: $7e
    xor l                                         ; $7cc9: $ad
    ld c, $85                                     ; $7cca: $0e $85
    jp c, Jump_03e_716c                           ; $7ccc: $da $6c $71

Jump_03e_7ccf:
    sbc [hl]                                      ; $7ccf: $9e
    or e                                          ; $7cd0: $b3
    jr c, jr_03e_7ca1                             ; $7cd1: $38 $ce

    dec sp                                        ; $7cd3: $3b
    ld a, c                                       ; $7cd4: $79
    adc h                                         ; $7cd5: $8c
    sbc h                                         ; $7cd6: $9c
    jp $c7c9                                      ; $7cd7: $c3 $c9 $c7


    inc e                                         ; $7cda: $1c
    add l                                         ; $7cdb: $85
    cp d                                          ; $7cdc: $ba
    add [hl]                                      ; $7cdd: $86
    or l                                          ; $7cde: $b5
    ld b, e                                       ; $7cdf: $43
    xor $17                                       ; $7ce0: $ee $17
    db $d3                                        ; $7ce2: $d3
    rst $20                                       ; $7ce3: $e7
    ld h, d                                       ; $7ce4: $62
    dec bc                                        ; $7ce5: $0b
    ld [hl], e                                    ; $7ce6: $73
    sbc [hl]                                      ; $7ce7: $9e
    xor e                                         ; $7ce8: $ab
    rra                                           ; $7ce9: $1f
    ld l, d                                       ; $7cea: $6a
    ld a, a                                       ; $7ceb: $7f
    inc bc                                        ; $7cec: $03
    halt                                          ; $7ced: $76
    ld a, [de]                                    ; $7cee: $1a
    ld a, a                                       ; $7cef: $7f
    ld h, $eb                                     ; $7cf0: $26 $eb
    ld c, [hl]                                    ; $7cf2: $4e
    jp $cd37                                      ; $7cf3: $c3 $37 $cd


    ld d, $e7                                     ; $7cf6: $16 $e7
    add hl, sp                                    ; $7cf8: $39
    inc hl                                        ; $7cf9: $23
    ld e, c                                       ; $7cfa: $59
    and a                                         ; $7cfb: $a7
    ld l, $72                                     ; $7cfc: $2e $72
    pop bc                                        ; $7cfe: $c1
    scf                                           ; $7cff: $37

Call_03e_7d00:
    ld e, h                                       ; $7d00: $5c
    jp Jump_000_21da                              ; $7d01: $c3 $da $21


    rst $30                                       ; $7d04: $f7
    adc e                                         ; $7d05: $8b
    jp hl                                         ; $7d06: $e9


    ld d, e                                       ; $7d07: $53
    ld d, a                                       ; $7d08: $57
    ld d, d                                       ; $7d09: $52
    rst $30                                       ; $7d0a: $f7
    pop af                                        ; $7d0b: $f1
    dec l                                         ; $7d0c: $2d
    adc [hl]                                      ; $7d0d: $8e
    ld a, [hl-]                                   ; $7d0e: $3a
    call z, Call_03e_5dd5                         ; $7d0f: $cc $d5 $5d
    ld d, b                                       ; $7d12: $50
    inc sp                                        ; $7d13: $33
    xor c                                         ; $7d14: $a9
    inc hl                                        ; $7d15: $23
    adc $e1                                       ; $7d16: $ce $e1
    adc b                                         ; $7d18: $88
    push de                                       ; $7d19: $d5
    ld b, d                                       ; $7d1a: $42
    adc h                                         ; $7d1b: $8c
    ld e, a                                       ; $7d1c: $5f
    scf                                           ; $7d1d: $37
    ld h, d                                       ; $7d1e: $62
    call z, $001b                                 ; $7d1f: $cc $1b $00
    rst $20                                       ; $7d22: $e7
    ld d, b                                       ; $7d23: $50
    ld b, e                                       ; $7d24: $43
    ld d, a                                       ; $7d25: $57
    ld d, l                                       ; $7d26: $55
    rst $20                                       ; $7d27: $e7
    add hl, sp                                    ; $7d28: $39
    sub e                                         ; $7d29: $93
    ld [hl], l                                    ; $7d2a: $75
    and a                                         ; $7d2b: $a7
    pop hl                                        ; $7d2c: $e1
    res 5, b                                      ; $7d2d: $cb $a8
    ld sp, $4675                                  ; $7d2f: $31 $75 $46
    or d                                          ; $7d32: $b2
    ld c, [hl]                                    ; $7d33: $4e
    add l                                         ; $7d34: $85
    cpl                                           ; $7d35: $2f
    ld a, [hl-]                                   ; $7d36: $3a
    ld e, l                                       ; $7d37: $5d
    add [hl]                                      ; $7d38: $86

Call_03e_7d39:
    adc c                                         ; $7d39: $89
    call nz, $9d48                                ; $7d3a: $c4 $48 $9d
    ld [hl], d                                    ; $7d3d: $72
    ld d, $47                                     ; $7d3e: $16 $47
    rst $38                                       ; $7d40: $ff
    cp b                                          ; $7d41: $b8
    jp c, $e159                                   ; $7d42: $da $59 $e1

    xor e                                         ; $7d45: $ab
    sbc l                                         ; $7d46: $9d
    ld [hl], l                                    ; $7d47: $75
    cp [hl]                                       ; $7d48: $be
    ld l, d                                       ; $7d49: $6a
    and a                                         ; $7d4a: $a7
    dec d                                         ; $7d4b: $15
    ld [$df7d], a                                 ; $7d4c: $ea $7d $df
    nop                                           ; $7d4f: $00
    rst $20                                       ; $7d50: $e7
    ld d, b                                       ; $7d51: $50
    ld b, e                                       ; $7d52: $43
    ld d, a                                       ; $7d53: $57
    ld d, l                                       ; $7d54: $55
    rst $20                                       ; $7d55: $e7
    add hl, sp                                    ; $7d56: $39
    sub e                                         ; $7d57: $93
    ld [hl], l                                    ; $7d58: $75
    and a                                         ; $7d59: $a7
    pop hl                                        ; $7d5a: $e1
    res 5, b                                      ; $7d5b: $cb $a8
    ld sp, $4675                                  ; $7d5d: $31 $75 $46
    or d                                          ; $7d60: $b2
    ld c, [hl]                                    ; $7d61: $4e
    add l                                         ; $7d62: $85

Jump_03e_7d63:
    ld c, a                                       ; $7d63: $4f
    dec de                                        ; $7d64: $1b
    ld sp, $6752                                  ; $7d65: $31 $52 $67
    ld [hl], c                                    ; $7d68: $71
    ld e, h                                       ; $7d69: $5c
    ld c, h                                       ; $7d6a: $4c
    sbc a                                         ; $7d6b: $9f
    cp d                                          ; $7d6c: $ba
    sub d                                         ; $7d6d: $92
    cp d                                          ; $7d6e: $ba
    jr nz, @+$4f                                  ; $7d6f: $20 $4d

    or b                                          ; $7d71: $b0

Jump_03e_7d72:
    push af                                       ; $7d72: $f5
    ld c, a                                       ; $7d73: $4f
    sbc l                                         ; $7d74: $9d
    push bc                                       ; $7d75: $c5
    ld [hl], c                                    ; $7d76: $71
    push hl                                       ; $7d77: $e5
    pop de                                        ; $7d78: $d1
    ld d, b                                       ; $7d79: $50
    and a                                         ; $7d7a: $a7
    sub h                                         ; $7d7b: $94
    ld l, $5c                                     ; $7d7c: $2e $5c
    db $ed                                        ; $7d7e: $ed
    ld c, h                                       ; $7d7f: $4c
    jr nc, jr_03e_7dd9                            ; $7d80: $30 $57

    ld [hl], a                                    ; $7d82: $77
    jp hl                                         ; $7d83: $e9


    jp nz, $c48c                                  ; $7d84: $c2 $8c $c4

    ld c, b                                       ; $7d87: $48
    cp l                                          ; $7d88: $bd
    ld bc, $a517                                  ; $7d89: $01 $17 $a5
    adc $48                                       ; $7d8c: $ce $48
    sub $a9                                       ; $7d8e: $d6 $a9
    dec bc                                        ; $7d90: $0b
    ld a, $ee                                     ; $7d91: $3e $ee
    ld e, l                                       ; $7d93: $5d
    ld c, l                                       ; $7d94: $4d
    adc h                                         ; $7d95: $8c
    rst $28                                       ; $7d96: $ef
    ld [hl], e                                    ; $7d97: $73
    ld h, $51                                     ; $7d98: $26 $51
    sbc e                                         ; $7d9a: $9b
    and a                                         ; $7d9b: $a7
    ld a, h                                       ; $7d9c: $7c
    and a                                         ; $7d9d: $a7
    or b                                          ; $7d9e: $b0
    ld h, $46                                     ; $7d9f: $26 $46
    adc [hl]                                      ; $7da1: $8e
    ld h, l                                       ; $7da2: $65
    cp $0f                                        ; $7da3: $fe $0f
    adc $59                                       ; $7da5: $ce $59
    inc e                                         ; $7da7: $1c
    rla                                           ; $7da8: $17
    ld a, h                                       ; $7da9: $7c
    add sp, $75                                   ; $7daa: $e8 $75
    call nz, Call_000_1c39                        ; $7dac: $c4 $39 $1c
    or c                                          ; $7daf: $b1
    ld e, d                                       ; $7db0: $5a
    adc b                                         ; $7db1: $88
    pop af                                        ; $7db2: $f1
    db $eb                                        ; $7db3: $eb
    ld b, [hl]                                    ; $7db4: $46
    adc h                                         ; $7db5: $8c
    ld a, c                                       ; $7db6: $79
    inc bc                                        ; $7db7: $03
    db $dd                                        ; $7db8: $dd
    ld l, $fa                                     ; $7db9: $2e $fa
    sbc c                                         ; $7dbb: $99
    sub a                                         ; $7dbc: $97
    ld hl, sp-$0d                                 ; $7dbd: $f8 $f3
    sbc h                                         ; $7dbf: $9c
    db $fd                                        ; $7dc0: $fd
    adc e                                         ; $7dc1: $8b
    ld e, b                                       ; $7dc2: $58
    rla                                           ; $7dc3: $17
    sub b                                         ; $7dc4: $90
    ld sp, $1652                                  ; $7dc5: $31 $52 $16
    cp c                                          ; $7dc8: $b9
    ldh [$2f], a                                  ; $7dc9: $e0 $2f
    sub h                                         ; $7dcb: $94
    inc c                                         ; $7dcc: $0c
    ld d, e                                       ; $7dcd: $53

Jump_03e_7dce:
    ld c, h                                       ; $7dce: $4c
    ld c, e                                       ; $7dcf: $4b
    ld a, h                                       ; $7dd0: $7c
    sbc a                                         ; $7dd1: $9f
    adc e                                         ; $7dd2: $8b
    jp hl                                         ; $7dd3: $e9


    ld d, e                                       ; $7dd4: $53
    ld d, a                                       ; $7dd5: $57
    ld d, d                                       ; $7dd6: $52
    rla                                           ; $7dd7: $17
    and h                                         ; $7dd8: $a4

jr_03e_7dd9:
    add hl, bc                                    ; $7dd9: $09
    or [hl]                                       ; $7dda: $b6
    cp $a9                                        ; $7ddb: $fe $a9
    ei                                            ; $7ddd: $fb
    or d                                          ; $7dde: $b2
    cp d                                          ; $7ddf: $ba
    dec bc                                        ; $7de0: $0b
    ld d, [hl]                                    ; $7de1: $56
    xor e                                         ; $7de2: $ab
    ld [hl], e                                    ; $7de3: $73
    ret c                                         ; $7de4: $d8

    ld a, [hl+]                                   ; $7de5: $2a
    inc l                                         ; $7de6: $2c
    or e                                          ; $7de7: $b3
    ld l, $f8                                     ; $7de8: $2e $f8
    inc sp                                        ; $7dea: $33
    push hl                                       ; $7deb: $e5
    or l                                          ; $7dec: $b5
    ld d, l                                       ; $7ded: $55
    scf                                           ; $7dee: $37
    di                                            ; $7def: $f3
    ld a, $67                                     ; $7df0: $3e $67
    ld [de], a                                    ; $7df2: $12
    ld h, a                                       ; $7df3: $67
    or d                                          ; $7df4: $b2
    and h                                         ; $7df5: $a4
    ld d, b                                       ; $7df6: $50
    ld d, a                                       ; $7df7: $57
    ld e, [hl]                                    ; $7df8: $5e
    ld h, a                                       ; $7df9: $67
    ld e, [hl]                                    ; $7dfa: $5e
    ld [c], a                                     ; $7dfb: $e2
    db $eb                                        ; $7dfc: $eb
    inc a                                         ; $7dfd: $3c
    rla                                           ; $7dfe: $17
    db $dd                                        ; $7dff: $dd
    adc $cd                                       ; $7e00: $ce $cd
    jp nc, Jump_03e_7d72                          ; $7e02: $d2 $72 $7d

    ld e, $6a                                     ; $7e05: $1e $6a
    dec bc                                        ; $7e07: $0b
    ld d, e                                       ; $7e08: $53
    ld h, [hl]                                    ; $7e09: $66
    or d                                          ; $7e0a: $b2
    ret nc                                        ; $7e0b: $d0

    sbc b                                         ; $7e0c: $98
    sub [hl]                                      ; $7e0d: $96
    ld c, b                                       ; $7e0e: $48
    db $ed                                        ; $7e0f: $ed
    ld bc, $f600                                  ; $7e10: $01 $00 $f6
    xor a                                         ; $7e13: $af
    ld a, e                                       ; $7e14: $7b
    ld l, a                                       ; $7e15: $6f
    ld [hl], c                                    ; $7e16: $71
    ld c, l                                       ; $7e17: $4d
    sbc d                                         ; $7e18: $9a
    rst $08                                       ; $7e19: $cf
    add hl, sp                                    ; $7e1a: $39
    ld e, h                                       ; $7e1b: $5c
    halt                                          ; $7e1c: $76
    ld a, [$e631]                                 ; $7e1d: $fa $31 $e6
    jp nz, Jump_03e_5f97                          ; $7e20: $c2 $97 $5f

    sbc b                                         ; $7e23: $98
    ld c, b                                       ; $7e24: $48
    adc c                                         ; $7e25: $89
    cp h                                          ; $7e26: $bc
    rla                                           ; $7e27: $17
    ldh a, [$f2]                                  ; $7e28: $f0 $f2
    dec bc                                        ; $7e2a: $0b
    cp [hl]                                       ; $7e2b: $be
    and c                                         ; $7e2c: $a1
    sub h                                         ; $7e2d: $94
    add h                                         ; $7e2e: $84

Jump_03e_7e2f:
    cpl                                           ; $7e2f: $2f
    ld [hl], h                                    ; $7e30: $74
    ld b, l                                       ; $7e31: $45
    ld a, a                                       ; $7e32: $7f
    add c                                         ; $7e33: $81
    pop af                                        ; $7e34: $f1
    dec h                                         ; $7e35: $25
    ld l, $7c                                     ; $7e36: $2e $7c
    ld sp, hl                                     ; $7e38: $f9
    ld e, c                                       ; $7e39: $59
    inc e                                         ; $7e3a: $1c
    and a                                         ; $7e3b: $a7
    ld e, a                                       ; $7e3c: $5f
    and b                                         ; $7e3d: $a0
    rra                                           ; $7e3e: $1f
    set 7, d                                      ; $7e3f: $cb $fa
    db $10                                        ; $7e41: $10
    rrca                                          ; $7e42: $0f
    ld e, b                                       ; $7e43: $58
    add b                                         ; $7e44: $80
    inc [hl]                                      ; $7e45: $34
    inc [hl]                                      ; $7e46: $34
    dec l                                         ; $7e47: $2d
    db $fc                                        ; $7e48: $fc
    ld [hl-], a                                   ; $7e49: $32
    db $eb                                        ; $7e4a: $eb
    sub h                                         ; $7e4b: $94
    add l                                         ; $7e4c: $85
    add $b4                                       ; $7e4d: $c6 $b4
    call nz, $9d9f                                ; $7e4f: $c4 $9f $9d
    add $f7                                       ; $7e52: $c6 $f7
    ld a, c                                       ; $7e54: $79
    ld d, h                                       ; $7e55: $54
    ld b, b                                       ; $7e56: $40
    ld [hl+], a                                   ; $7e57: $22
    ld b, l                                       ; $7e58: $45
    ld a, c                                       ; $7e59: $79
    cpl                                           ; $7e5a: $2f
    ldh [$e5], a                                  ; $7e5b: $e0 $e5
    rla                                           ; $7e5d: $17
    sub b                                         ; $7e5e: $90
    ld c, b                                       ; $7e5f: $48
    adc c                                         ; $7e60: $89
    inc e                                         ; $7e61: $1c
    res 6, d                                      ; $7e62: $cb $b2
    db $d3                                        ; $7e64: $d3
    adc a                                         ; $7e65: $8f
    ld sp, $abe1                                  ; $7e66: $31 $e1 $ab
    ld e, a                                       ; $7e69: $5f
    call z, Call_03e_658f                         ; $7e6a: $cc $8f $65
    push bc                                       ; $7e6d: $c5
    ld b, c                                       ; $7e6e: $41
    cpl                                           ; $7e6f: $2f
    di                                            ; $7e70: $f3
    adc c                                         ; $7e71: $89
    sbc [hl]                                      ; $7e72: $9e
    di                                            ; $7e73: $f3
    db $ec                                        ; $7e74: $ec
    ld d, b                                       ; $7e75: $50
    ld l, h                                       ; $7e76: $6c

Jump_03e_7e77:
    ld a, [hl]                                    ; $7e77: $7e
    ld c, l                                       ; $7e78: $4d
    ld b, [hl]                                    ; $7e79: $46
    ld e, h                                       ; $7e7a: $5c
    ld sp, hl                                     ; $7e7b: $f9
    or l                                          ; $7e7c: $b5
    ld a, [$e221]                                 ; $7e7d: $fa $21 $e2
    inc a                                         ; $7e80: $3c
    ld h, a                                       ; $7e81: $67
    rst $38                                       ; $7e82: $ff
    ld [hl+], a                                   ; $7e83: $22
    sub $59                                       ; $7e84: $d6 $59
    rla                                           ; $7e86: $17
    cp d                                          ; $7e87: $ba
    and d                                         ; $7e88: $a2
    cp a                                          ; $7e89: $bf
    or e                                          ; $7e8a: $b3
    inc sp                                        ; $7e8b: $33
    jp c, Jump_03e_7ae2                           ; $7e8c: $da $e2 $7a

    db $dd                                        ; $7e8f: $dd
    or e                                          ; $7e90: $b3
    jp $e351                                      ; $7e91: $c3 $51 $e3


    cpl                                           ; $7e94: $2f
    ld a, h                                       ; $7e95: $7c
    adc h                                         ; $7e96: $8c
    ld e, a                                       ; $7e97: $5f
    jp z, Jump_03e_7e2f                           ; $7e98: $ca $2f $7e

    db $dd                                        ; $7e9b: $dd
    ld l, c                                       ; $7e9c: $69
    ld d, l                                       ; $7e9d: $55
    ld [hl], c                                    ; $7e9e: $71
    ld b, d                                       ; $7e9f: $42
    db $d3                                        ; $7ea0: $d3
    ld a, [hl-]                                   ; $7ea1: $3a
    ld c, l                                       ; $7ea2: $4d
    cp d                                          ; $7ea3: $ba
    ld [hl], h                                    ; $7ea4: $74
    dec c                                         ; $7ea5: $0d
    xor e                                         ; $7ea6: $ab
    ld d, e                                       ; $7ea7: $53
    ld [$cd37], a                                 ; $7ea8: $ea $37 $cd
    ld d, $a7                                     ; $7eab: $16 $a7
    reti                                          ; $7ead: $d9


    ld de, $3a2e                                  ; $7eae: $11 $2e $3a
    dec e                                         ; $7eb1: $1d
    dec [hl]                                      ; $7eb2: $35
    cp [hl]                                       ; $7eb3: $be
    or a                                          ; $7eb4: $b7
    pop de                                        ; $7eb5: $d1
    ret c                                         ; $7eb6: $d8

    call z, Call_03e_7c2b                         ; $7eb7: $cc $2b $7c
    ld a, l                                       ; $7eba: $7d

jr_03e_7ebb:
    ld e, e                                       ; $7ebb: $5b
    add l                                         ; $7ebc: $85
    dec b                                         ; $7ebd: $05
    ld a, $3b                                     ; $7ebe: $3e $3b
    ld e, b                                       ; $7ec0: $58
    ld hl, $11a5                                  ; $7ec1: $21 $a5 $11
    ld c, l                                       ; $7ec4: $4d
    ei                                            ; $7ec5: $fb
    ld e, c                                       ; $7ec6: $59
    ld [hl], a                                    ; $7ec7: $77
    ld c, [hl]                                    ; $7ec8: $4e
    ld b, e                                       ; $7ec9: $43
    ld c, d                                       ; $7eca: $4a
    sbc $00                                       ; $7ecb: $de $00
    ld bc, $3f2f                                  ; $7ecd: $01 $2f $3f
    and a                                         ; $7ed0: $a7
    cpl                                           ; $7ed1: $2f
    ld [hl], e                                    ; $7ed2: $73
    cp b                                          ; $7ed3: $b8
    db $ec                                        ; $7ed4: $ec
    db $f4                                        ; $7ed5: $f4
    ld h, e                                       ; $7ed6: $63
    ld c, h                                       ; $7ed7: $4c
    ld hl, sp+$42                                 ; $7ed8: $f8 $42
    ld d, a                                       ; $7eda: $57
    db $f4                                        ; $7edb: $f4
    rla                                           ; $7edc: $17
    jr @+$61                                      ; $7edd: $18 $5f

    ld [c], a                                     ; $7edf: $e2
    jp nz, $9f97                                  ; $7ee0: $c2 $97 $9f

    push bc                                       ; $7ee3: $c5
    ld [hl], c                                    ; $7ee4: $71
    ld a, [$fa05]                                 ; $7ee5: $fa $05 $fa
    or c                                          ; $7ee8: $b1
    xor h                                         ; $7ee9: $ac
    rrca                                          ; $7eea: $0f
    pop af                                        ; $7eeb: $f1
    add b                                         ; $7eec: $80
    dec b                                         ; $7eed: $05
    ld c, b                                       ; $7eee: $48
    ld b, e                                       ; $7eef: $43
    db $d3                                        ; $7ef0: $d3
    jp nz, $b32f                                  ; $7ef1: $c2 $2f $b3

    xor [hl]                                      ; $7ef4: $ae
    jr c, jr_03e_7f39                             ; $7ef5: $38 $42

    add hl, sp                                    ; $7ef7: $39
    ld h, l                                       ; $7ef8: $65
    and c                                         ; $7ef9: $a1
    ld sp, $f12d                                  ; $7efa: $31 $2d $f1
    ld [hl], a                                    ; $7efd: $77
    ld [hl], c                                    ; $7efe: $71
    and a                                         ; $7eff: $a7
    rra                                           ; $7f00: $1f
    ld h, e                                       ; $7f01: $63
    ld l, $7c                                     ; $7f02: $2e $7c
    ld sp, hl                                     ; $7f04: $f9

Call_03e_7f05:
    ld d, l                                       ; $7f05: $55
    jr z, jr_03e_7ebb                             ; $7f06: $28 $b3

    cp b                                          ; $7f08: $b8
    xor d                                         ; $7f09: $aa
    bit 1, [hl]                                   ; $7f0a: $cb $4e
    ccf                                           ; $7f0c: $3f
    add $d4                                       ; $7f0d: $c6 $d4
    push bc                                       ; $7f0f: $c5
    ld b, [hl]                                    ; $7f10: $46
    and h                                         ; $7f11: $a4
    sbc $5b                                       ; $7f12: $de $5b
    sbc a                                         ; $7f14: $9f
    rla                                           ; $7f15: $17
    di                                            ; $7f16: $f3
    ld h, e                                       ; $7f17: $63
    ld e, c                                       ; $7f18: $59
    halt                                          ; $7f19: $76

jr_03e_7f1a:
    ld a, [$e631]                                 ; $7f1a: $fa $31 $e6
    inc l                                         ; $7f1d: $2c
    adc [hl]                                      ; $7f1e: $8e
    di                                            ; $7f1f: $f3
    ld d, h                                       ; $7f20: $54
    ld d, d                                       ; $7f21: $52
    rst $20                                       ; $7f22: $e7
    db $f4                                        ; $7f23: $f4
    ld h, l                                       ; $7f24: $65
    sub $85                                       ; $7f25: $d6 $85
    xor [hl]                                      ; $7f27: $ae
    add sp, -$11                                  ; $7f28: $e8 $ef
    db $ec                                        ; $7f2a: $ec
    adc h                                         ; $7f2b: $8c
    or [hl]                                       ; $7f2c: $b6
    cp b                                          ; $7f2d: $b8
    ld e, [hl]                                    ; $7f2e: $5e
    scf                                           ; $7f2f: $37
    nop                                           ; $7f30: $00
    sub a                                         ; $7f31: $97
    and l                                         ; $7f32: $a5
    ld a, a                                       ; $7f33: $7f
    ld e, l                                       ; $7f34: $5d
    ld a, c                                       ; $7f35: $79
    ld e, l                                       ; $7f36: $5d
    sbc b                                         ; $7f37: $98
    and [hl]                                      ; $7f38: $a6

jr_03e_7f39:
    dec h                                         ; $7f39: $25
    ld d, d                                       ; $7f3a: $52
    and a                                         ; $7f3b: $a7
    ld e, h                                       ; $7f3c: $5c
    ldh a, [$0d]                                  ; $7f3d: $f0 $0d
    ld [hl], c                                    ; $7f3f: $71
    call nz, $fef5                                ; $7f40: $c4 $f5 $fe
    ld [c], a                                     ; $7f43: $e2
    add hl, hl                                    ; $7f44: $29
    xor c                                         ; $7f45: $a9
    rst $30                                       ; $7f46: $f7
    ld [bc], a                                    ; $7f47: $02
    db $db                                        ; $7f48: $db
    sub h                                         ; $7f49: $94
    add l                                         ; $7f4a: $85
    add $b4                                       ; $7f4b: $c6 $b4
    call nz, Call_03e_59d7                        ; $7f4d: $c4 $d7 $59
    rst $20                                       ; $7f50: $e7
    db $f4                                        ; $7f51: $f4
    ld [hl], l                                    ; $7f52: $75
    pop de                                        ; $7f53: $d1
    xor l                                         ; $7f54: $ad
    rst $30                                       ; $7f55: $f7
    rla                                           ; $7f56: $17
    ld c, a                                       ; $7f57: $4f
    ld c, c                                       ; $7f58: $49
    ld hl, sp+$22                                 ; $7f59: $f8 $22
    and a                                         ; $7f5b: $a7
    ld e, a                                       ; $7f5c: $5f
    cp h                                          ; $7f5d: $bc
    ld [hl], h                                    ; $7f5e: $74
    call Call_000_2fe1                            ; $7f5f: $cd $e1 $2f
    ld a, h                                       ; $7f62: $7c
    adc h                                         ; $7f63: $8c
    ld e, a                                       ; $7f64: $5f
    jp z, $24cf                                   ; $7f65: $ca $cf $24

    xor [hl]                                      ; $7f68: $ae
    and h                                         ; $7f69: $a4
    xor [hl]                                      ; $7f6a: $ae
    ld hl, $f424                                  ; $7f6b: $21 $24 $f4
    adc l                                         ; $7f6e: $8d
    jr jr_03e_7f1a                                ; $7f6f: $18 $a9

    or e                                          ; $7f71: $b3
    jr c, jr_03e_7fa2                             ; $7f72: $38 $2e

    ld [de], a                                    ; $7f74: $12
    and c                                         ; $7f75: $a1
    rst $10                                       ; $7f76: $d7
    ld a, e                                       ; $7f77: $7b
    add c                                         ; $7f78: $81
    inc l                                         ; $7f79: $2c

Jump_03e_7f7a:
    inc [hl]                                      ; $7f7a: $34
    and [hl]                                      ; $7f7b: $a6
    dec h                                         ; $7f7c: $25
    cp $4a                                        ; $7f7d: $fe $4a
    ld [$421a], a                                 ; $7f7f: $ea $1a $42
    ld b, d                                       ; $7f82: $42
    rst $18                                       ; $7f83: $df
    adc b                                         ; $7f84: $88
    sub c                                         ; $7f85: $91
    ld a, [hl-]                                   ; $7f86: $3a
    adc e                                         ; $7f87: $8b
    db $e3                                        ; $7f88: $e3
    inc l                                         ; $7f89: $2c
    xor [hl]                                      ; $7f8a: $ae
    ld d, c                                       ; $7f8b: $51
    ld e, [hl]                                    ; $7f8c: $5e
    ld h, a                                       ; $7f8d: $67
    ld e, l                                       ; $7f8e: $5d
    add sp, -$76                                  ; $7f8f: $e8 $8a
    cp $02                                        ; $7f91: $fe $02
    db $e3                                        ; $7f93: $e3
    ld c, e                                       ; $7f94: $4b
    ld e, h                                       ; $7f95: $5c
    ld hl, sp-$0e                                 ; $7f96: $f8 $f2
    xor e                                         ; $7f98: $ab
    reti                                          ; $7f99: $d9


    rst $18                                       ; $7f9a: $df
    sub h                                         ; $7f9b: $94
    sub a                                         ; $7f9c: $97
    sub d                                         ; $7f9d: $92
    ld a, d                                       ; $7f9e: $7a
    inc bc                                        ; $7f9f: $03
    rst $38                                       ; $7fa0: $ff
    rst $38                                       ; $7fa1: $ff

jr_03e_7fa2:
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

Jump_03e_7fe7:
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

Jump_03e_7ff7:
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
