; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

    ld l, d                                       ; $4000: $6a
    ld [c], a                                     ; $4001: $e2
    ld hl, $9ee5                                  ; $4002: $21 $e5 $9e
    dec a                                         ; $4005: $3d
    call $93a8                                    ; $4006: $cd $a8 $93
    ld a, l                                       ; $4009: $7d
    add hl, de                                    ; $400a: $19
    or d                                          ; $400b: $b2
    ld c, b                                       ; $400c: $48
    cp c                                          ; $400d: $b9
    rst $20                                       ; $400e: $e7
    xor a                                         ; $400f: $af
    xor l                                         ; $4010: $ad
    or b                                          ; $4011: $b0
    call c, $a44d                                 ; $4012: $dc $4d $a4
    or c                                          ; $4015: $b1
    ld c, b                                       ; $4016: $48
    cp c                                          ; $4017: $b9
    rst $20                                       ; $4018: $e7
    db $d3                                        ; $4019: $d3
    ld [$5f64], a                                 ; $401a: $ea $64 $5f
    add [hl]                                      ; $401d: $86
    inc d                                         ; $401e: $14
    push de                                       ; $401f: $d5
    or a                                          ; $4020: $b7
    daa                                           ; $4021: $27
    pop de                                        ; $4022: $d1
    ld [hl], e                                    ; $4023: $73
    ld h, $0b                                     ; $4024: $26 $0b
    and a                                         ; $4026: $a7
    dec sp                                        ; $4027: $3b
    ld [hl-], a                                   ; $4028: $32
    dec l                                         ; $4029: $2d
    rst $10                                       ; $402a: $d7
    and a                                         ; $402b: $a7
    or c                                          ; $402c: $b1
    ld a, a                                       ; $402d: $7f
    sub d                                         ; $402e: $92
    sub d                                         ; $402f: $92
    sub $e9                                       ; $4030: $d6 $e9
    ld d, [hl]                                    ; $4032: $56
    ld b, h                                       ; $4033: $44
    rst $10                                       ; $4034: $d7
    ld b, h                                       ; $4035: $44
    ld a, e                                       ; $4036: $7b
    pop af                                        ; $4037: $f1
    ld a, a                                       ; $4038: $7f
    ld a, $97                                     ; $4039: $3e $97
    ld b, d                                       ; $403b: $42
    ld d, h                                       ; $403c: $54
    ret z                                         ; $403d: $c8

    ld a, [hl+]                                   ; $403e: $2a
    jp nc, Jump_000_05ee                          ; $403f: $d2 $ee $05

    adc d                                         ; $4042: $8a
    xor d                                         ; $4043: $aa
    ld e, b                                       ; $4044: $58
    ldh a, [rIE]                                  ; $4045: $f0 $ff
    ld l, a                                       ; $4047: $6f
    ld [hl+], a                                   ; $4048: $22
    sbc e                                         ; $4049: $9b
    and b                                         ; $404a: $a0
    sbc c                                         ; $404b: $99
    ld h, c                                       ; $404c: $61
    adc [hl]                                      ; $404d: $8e
    ld c, [hl]                                    ; $404e: $4e
    ld c, b                                       ; $404f: $48
    cp c                                          ; $4050: $b9
    rst $20                                       ; $4051: $e7
    rst $18                                       ; $4052: $df
    ld c, l                                       ; $4053: $4d
    and h                                         ; $4054: $a4
    or c                                          ; $4055: $b1
    add hl, bc                                    ; $4056: $09
    add hl, hl                                    ; $4057: $29
    rst $30                                       ; $4058: $f7
    ld a, h                                       ; $4059: $7c
    ld e, d                                       ; $405a: $5a
    and a                                         ; $405b: $a7
    cpl                                           ; $405c: $2f
    ld b, e                                       ; $405d: $43
    adc d                                         ; $405e: $8a
    ld l, d                                       ; $405f: $6a
    ldh [$b2], a                                  ; $4060: $e0 $b2
    sbc [hl]                                      ; $4062: $9e
    sbc l                                         ; $4063: $9d
    ld [$f96e], a                                 ; $4064: $ea $6e $f9
    ld c, l                                       ; $4067: $4d
    inc hl                                        ; $4068: $23

Jump_06a_4069:
    ei                                            ; $4069: $fb
    inc h                                         ; $406a: $24
    db $d3                                        ; $406b: $d3

Call_06a_406c:
    sub b                                         ; $406c: $90
    dec c                                         ; $406d: $0d
    db $d3                                        ; $406e: $d3
    dec l                                         ; $406f: $2d
    inc [hl]                                      ; $4070: $34
    db $db                                        ; $4071: $db
    ld e, c                                       ; $4072: $59
    sbc a                                         ; $4073: $9f
    add $4e                                       ; $4074: $c6 $4e
    inc c                                         ; $4076: $0c
    jr z, @+$18                                   ; $4077: $28 $16

    inc [hl]                                      ; $4079: $34
    ld h, b                                       ; $407a: $60
    add l                                         ; $407b: $85
    ld a, $2b                                     ; $407c: $3e $2b
    ld [$93db], a                                 ; $407e: $ea $db $93
    add sp, -$0c                                  ; $4081: $e8 $f4
    sbc h                                         ; $4083: $9c
    ret                                           ; $4084: $c9


    jp nz, $f8a9                                  ; $4085: $c2 $a9 $f8

    db $dd                                        ; $4088: $dd
    inc b                                         ; $4089: $04
    call Call_06a_7e28                            ; $408a: $cd $28 $7e
    inc de                                        ; $408d: $13
    ld [hl], $53                                  ; $408e: $36 $53
    ld a, d                                       ; $4090: $7a
    sub $c9                                       ; $4091: $d6 $c9
    ld h, [hl]                                    ; $4093: $66
    call nc, Call_000_163b                        ; $4094: $d4 $3b $16
    pop af                                        ; $4097: $f1
    and e                                         ; $4098: $a3
    cpl                                           ; $4099: $2f
    ld a, d                                       ; $409a: $7a
    rst $00                                       ; $409b: $c7
    inc h                                         ; $409c: $24
    rst $10                                       ; $409d: $d7
    rra                                           ; $409e: $1f
    inc c                                         ; $409f: $0c
    dec l                                         ; $40a0: $2d
    ld a, a                                       ; $40a1: $7f
    ret c                                         ; $40a2: $d8

    rst $08                                       ; $40a3: $cf
    ld b, $6a                                     ; $40a4: $06 $6a
    and c                                         ; $40a6: $a1
    sbc c                                         ; $40a7: $99
    ld a, c                                       ; $40a8: $79
    scf                                           ; $40a9: $37
    call $a7ef                                    ; $40aa: $cd $ef $a7
    adc d                                         ; $40ad: $8a
    cp d                                          ; $40ae: $ba
    ld l, l                                       ; $40af: $6d
    or a                                          ; $40b0: $b7
    dec d                                         ; $40b1: $15
    ld d, $51                                     ; $40b2: $16 $51
    inc de                                        ; $40b4: $13
    inc b                                         ; $40b5: $04
    ei                                            ; $40b6: $fb
    or b                                          ; $40b7: $b0
    ld [hl], a                                    ; $40b8: $77
    ld h, b                                       ; $40b9: $60
    db $fc                                        ; $40ba: $fc
    rra                                           ; $40bb: $1f
    adc e                                         ; $40bc: $8b
    ld e, [hl]                                    ; $40bd: $5e
    adc h                                         ; $40be: $8c
    add e                                         ; $40bf: $83
    and c                                         ; $40c0: $a1
    rst $30                                       ; $40c1: $f7
    rlca                                          ; $40c2: $07
    adc c                                         ; $40c3: $89
    inc [hl]                                      ; $40c4: $34
    sub $e5                                       ; $40c5: $d6 $e5
    or a                                          ; $40c7: $b7
    cp h                                          ; $40c8: $bc
    ld e, l                                       ; $40c9: $5d
    or h                                          ; $40ca: $b4
    ld a, [hl-]                                   ; $40cb: $3a
    reti                                          ; $40cc: $d9


    sub a                                         ; $40cd: $97
    ld hl, $f545                                  ; $40ce: $21 $45 $f5
    db $ed                                        ; $40d1: $ed
    ld c, c                                       ; $40d2: $49
    db $f4                                        ; $40d3: $f4
    sbc h                                         ; $40d4: $9c
    ret                                           ; $40d5: $c9


    jp nz, $8ee9                                  ; $40d6: $c2 $e9 $8e

    ld c, h                                       ; $40d9: $4c
    set 6, l                                      ; $40da: $cb $f5
    ld l, c                                       ; $40dc: $69
    db $ec                                        ; $40dd: $ec
    sbc a                                         ; $40de: $9f
    and h                                         ; $40df: $a4
    and h                                         ; $40e0: $a4
    ld [hl], l                                    ; $40e1: $75
    cp d                                          ; $40e2: $ba
    dec d                                         ; $40e3: $15
    pop de                                        ; $40e4: $d1
    dec [hl]                                      ; $40e5: $35
    pop de                                        ; $40e6: $d1
    ld e, [hl]                                    ; $40e7: $5e
    db $fc                                        ; $40e8: $fc
    sbc a                                         ; $40e9: $9f
    rst $08                                       ; $40ea: $cf

jr_06a_40eb:
    and l                                         ; $40eb: $a5
    db $10                                        ; $40ec: $10
    dec d                                         ; $40ed: $15
    or d                                          ; $40ee: $b2
    adc d                                         ; $40ef: $8a
    or h                                          ; $40f0: $b4
    ld a, e                                       ; $40f1: $7b
    add c                                         ; $40f2: $81
    and d                                         ; $40f3: $a2
    ld a, [hl+]                                   ; $40f4: $2a
    ld d, $fc                                     ; $40f5: $16 $fc
    rst $38                                       ; $40f7: $ff
    sbc e                                         ; $40f8: $9b
    ret z                                         ; $40f9: $c8

    ld e, [hl]                                    ; $40fa: $5e
    sub b                                         ; $40fb: $90
    ld hl, $d3eb                                  ; $40fc: $21 $eb $d3
    ret c                                         ; $40ff: $d8

    dec d                                         ; $4100: $15
    xor h                                         ; $4101: $ac
    and e                                         ; $4102: $a3
    ld a, l                                       ; $4103: $7d
    add hl, de                                    ; $4104: $19
    ld d, c                                       ; $4105: $51
    sbc e                                         ; $4106: $9b
    ld [hl], d                                    ; $4107: $72
    ld l, b                                       ; $4108: $68
    ld b, [hl]                                    ; $4109: $46
    call nc, $97bb                                ; $410a: $d4 $bb $97
    add d                                         ; $410d: $82
    bit 7, d                                      ; $410e: $cb $7a
    halt                                          ; $4110: $76
    ld a, [$6432]                                 ; $4111: $fa $32 $64
    ld d, e                                       ; $4114: $53
    ld c, $f5                                     ; $4115: $0e $f5
    dec c                                         ; $4117: $0d
    add hl, de                                    ; $4118: $19
    ld sp, $eb40                                  ; $4119: $31 $40 $eb
    ld a, [c]                                     ; $411c: $f2
    ld e, e                                       ; $411d: $5b
    sbc $2e                                       ; $411e: $de $2e
    ld e, d                                       ; $4120: $5a
    ld d, c                                       ; $4121: $51
    rst $18                                       ; $4122: $df
    sbc [hl]                                      ; $4123: $9e
    ld b, h                                       ; $4124: $44
    and a                                         ; $4125: $a7
    rst $20                                       ; $4126: $e7
    ld c, h                                       ; $4127: $4c
    ld d, $4e                                     ; $4128: $16 $4e
    push bc                                       ; $412a: $c5
    rst $28                                       ; $412b: $ef
    rrca                                          ; $412c: $0f
    sub a                                         ; $412d: $97
    ld c, l                                       ; $412e: $4d
    and b                                         ; $412f: $a0
    sub [hl]                                      ; $4130: $96
    jp c, Jump_06a_59c4                           ; $4131: $da $c4 $59

    ld a, a                                       ; $4134: $7f
    jr nc, jr_06a_40eb                            ; $4135: $30 $b4

    ld a, [hl+]                                   ; $4137: $2a
    sbc h                                         ; $4138: $9c
    ld a, d                                       ; $4139: $7a
    pop af                                        ; $413a: $f1
    ld [hl-], a                                   ; $413b: $32
    or l                                          ; $413c: $b5
    sub b                                         ; $413d: $90
    db $dd                                        ; $413e: $dd
    call z, $e025                                 ; $413f: $cc $25 $e0
    reti                                          ; $4142: $d9


    pop bc                                        ; $4143: $c1
    ret nc                                        ; $4144: $d0

    cp e                                          ; $4145: $bb
    dec sp                                        ; $4146: $3b
    ld d, b                                       ; $4147: $50
    push bc                                       ; $4148: $c5
    add d                                         ; $4149: $82
    rst $38                                       ; $414a: $ff
    ld a, a                                       ; $414b: $7f
    inc de                                        ; $414c: $13
    ld l, c                                       ; $414d: $69
    ret nc                                        ; $414e: $d0

    and d                                         ; $414f: $a2
    ld l, $bf                                     ; $4150: $2e $bf
    push hl                                       ; $4152: $e5
    db $ed                                        ; $4153: $ed
    and d                                         ; $4154: $a2
    ld b, c                                       ; $4155: $41
    dec sp                                        ; $4156: $3b
    call $dd70                                    ; $4157: $cd $70 $dd
    call z, $e025                                 ; $415a: $cc $25 $e0
    sbc c                                         ; $415d: $99
    ld [hl], b                                    ; $415e: $70

jr_06a_415f:
    ld b, h                                       ; $415f: $44
    ld e, l                                       ; $4160: $5d

Jump_06a_4161:
    ld d, a                                       ; $4161: $57
    ld a, [$4506]                                 ; $4162: $fa $06 $45
    call z, $530c                                 ; $4165: $cc $0c $53
    daa                                           ; $4168: $27
    adc e                                         ; $4169: $8b
    rst $18                                       ; $416a: $df
    add h                                         ; $416b: $84
    db $fd                                        ; $416c: $fd
    ld b, a                                       ; $416d: $47
    ld [hl], $4f                                  ; $416e: $36 $4f
    jr jr_06a_415f                                ; $4170: $18 $ed

    ld l, b                                       ; $4172: $68
    ld e, a                                       ; $4173: $5f
    ld c, h                                       ; $4174: $4c
    dec de                                        ; $4175: $1b
    jp nz, $cc43                                  ; $4176: $c2 $43 $cc

    ret nc                                        ; $4179: $d0

    and [hl]                                      ; $417a: $a6
    inc e                                         ; $417b: $1c
    sbc d                                         ; $417c: $9a
    ld de, $eef5                                  ; $417d: $11 $f5 $ee
    ld c, $2c                                     ; $4180: $0e $2c
    ld hl, sp-$01                                 ; $4182: $f8 $ff
    scf                                           ; $4184: $37
    sub c                                         ; $4185: $91
    dec e                                         ; $4186: $1d
    db $ed                                        ; $4187: $ed
    adc e                                         ; $4188: $8b
    ld l, c                                       ; $4189: $69
    ld b, e                                       ; $418a: $43
    ld a, b                                       ; $418b: $78
    adc b                                         ; $418c: $88
    add hl, de                                    ; $418d: $19
    ld e, d                                       ; $418e: $5a
    rst $18                                       ; $418f: $df
    sub b                                         ; $4190: $90
    ld de, $0bc3                                  ; $4191: $11 $c3 $0b
    and e                                         ; $4194: $a3
    add l                                         ; $4195: $85
    xor b                                         ; $4196: $a8
    sub b                                         ; $4197: $90
    ld d, l                                       ; $4198: $55
    and h                                         ; $4199: $a4
    db $dd                                        ; $419a: $dd
    dec bc                                        ; $419b: $0b
    inc d                                         ; $419c: $14
    push de                                       ; $419d: $d5
    or a                                          ; $419e: $b7
    daa                                           ; $419f: $27
    pop de                                        ; $41a0: $d1
    ld [hl], e                                    ; $41a1: $73
    ld h, $0b                                     ; $41a2: $26 $0b
    and a                                         ; $41a4: $a7
    dec sp                                        ; $41a5: $3b
    ld [hl-], a                                   ; $41a6: $32
    dec l                                         ; $41a7: $2d
    rst $10                                       ; $41a8: $d7
    and a                                         ; $41a9: $a7
    or c                                          ; $41aa: $b1
    and e                                         ; $41ab: $a3
    sub l                                         ; $41ac: $95
    ld c, a                                       ; $41ad: $4f
    or e                                          ; $41ae: $b3
    inc sp                                        ; $41af: $33
    jp c, Jump_000_01fd                           ; $41b0: $da $fd $01

    sub a                                         ; $41b3: $97
    ld hl, $d96a                                  ; $41b4: $21 $6a $d9
    add h                                         ; $41b7: $84
    ld hl, sp-$41                                 ; $41b8: $f8 $bf
    ld a, a                                       ; $41ba: $7f
    add hl, de                                    ; $41bb: $19
    ld a, a                                       ; $41bc: $7f
    ld e, l                                       ; $41bd: $5d
    ld a, b                                       ; $41be: $78
    ld l, h                                       ; $41bf: $6c
    ld b, b                                       ; $41c0: $40
    cpl                                           ; $41c1: $2f
    adc b                                         ; $41c2: $88
    ld l, c                                       ; $41c3: $69
    ld b, e                                       ; $41c4: $43
    ld a, b                                       ; $41c5: $78
    adc b                                         ; $41c6: $88
    add hl, de                                    ; $41c7: $19
    ld a, d                                       ; $41c8: $7a
    scf                                           ; $41c9: $37
    ld [hl], c                                    ; $41ca: $71
    ld [bc], a                                    ; $41cb: $02
    or h                                          ; $41cc: $b4
    ld c, h                                       ; $41cd: $4c
    adc a                                         ; $41ce: $8f
    or c                                          ; $41cf: $b1
    add [hl]                                      ; $41d0: $86
    ld a, a                                       ; $41d1: $7f
    sub [hl]                                      ; $41d2: $96
    inc h                                         ; $41d3: $24
    xor h                                         ; $41d4: $ac
    cpl                                           ; $41d5: $2f
    and [hl]                                      ; $41d6: $a6
    dec c                                         ; $41d7: $0d
    pop hl                                        ; $41d8: $e1
    ld hl, $6866                                  ; $41d9: $21 $66 $68
    ld a, l                                       ; $41dc: $7d
    ld a, [de]                                    ; $41dd: $1a
    db $eb                                        ; $41de: $eb
    rst $08                                       ; $41df: $cf
    ld a, [$a183]                                 ; $41e0: $fa $83 $a1
    ld b, l                                       ; $41e3: $45
    ld l, c                                       ; $41e4: $69
    sub d                                         ; $41e5: $92
    cp e                                          ; $41e6: $bb
    db $10                                        ; $41e7: $10
    ld l, c                                       ; $41e8: $69
    dec [hl]                                      ; $41e9: $35
    db $fc                                        ; $41ea: $fc
    ld a, b                                       ; $41eb: $78
    sbc c                                         ; $41ec: $99
    jp c, $fa80                                   ; $41ed: $da $80 $fa

    or e                                          ; $41f0: $b3
    cp $60                                        ; $41f1: $fe $60
    add sp, -$23                                  ; $41f3: $e8 $dd
    ld b, h                                       ; $41f5: $44
    ld a, e                                       ; $41f6: $7b
    ld [de], a                                    ; $41f7: $12
    dec a                                         ; $41f8: $3d
    ld h, a                                       ; $41f9: $67
    or d                                          ; $41fa: $b2
    ld [hl], b                                    ; $41fb: $70
    cp d                                          ; $41fc: $ba
    inc hl                                        ; $41fd: $23
    db $d3                                        ; $41fe: $d3
    or d                                          ; $41ff: $b2
    xor b                                         ; $4200: $a8
    adc d                                         ; $4201: $8a
    dec b                                         ; $4202: $05
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    ld h, $b2                                     ; $4205: $26 $b2
    ld l, h                                       ; $4207: $6c
    ld b, d                                       ; $4208: $42
    db $fc                                        ; $4209: $fc
    rst $18                                       ; $420a: $df
    cp a                                          ; $420b: $bf
    adc h                                         ; $420c: $8c
    cp a                                          ; $420d: $bf
    ld l, $3c                                     ; $420e: $2e $3c
    ld [hl], $a0                                  ; $4210: $36 $a0
    rla                                           ; $4212: $17
    call nz, Call_000_21b4                        ; $4213: $c4 $b4 $21
    inc a                                         ; $4216: $3c
    call nz, Call_06a_6d0c                        ; $4217: $c4 $0c $6d
    sbc b                                         ; $421a: $98
    ld l, [hl]                                    ; $421b: $6e
    ld b, l                                       ; $421c: $45
    ld [hl], h                                    ; $421d: $74
    ld c, l                                       ; $421e: $4d
    or h                                          ; $421f: $b4
    rla                                           ; $4220: $17
    rst $38                                       ; $4221: $ff
    rst $20                                       ; $4222: $e7
    ld [hl], e                                    ; $4223: $73
    xor c                                         ; $4224: $a9
    ld c, a                                       ; $4225: $4f
    ld h, e                                       ; $4226: $63
    ld d, a                                       ; $4227: $57
    or b                                          ; $4228: $b0
    adc [hl]                                      ; $4229: $8e
    ld [hl], $c3                                  ; $422a: $36 $c3
    ld l, c                                       ; $422c: $69
    ld e, a                                       ; $422d: $5f
    ld c, h                                       ; $422e: $4c
    dec de                                        ; $422f: $1b
    jp nz, $cc43                                  ; $4230: $c2 $43 $cc

    ret nc                                        ; $4233: $d0

    and d                                         ; $4234: $a2
    dec hl                                        ; $4235: $2b
    ld e, b                                       ; $4236: $58
    and a                                         ; $4237: $a7
    add hl, de                                    ; $4238: $19
    xor [hl]                                      ; $4239: $ae
    bit 3, e                                      ; $423a: $cb $5b
    reti                                          ; $423c: $d9


    inc [hl]                                      ; $423d: $34
    and b                                         ; $423e: $a0
    add [hl]                                      ; $423f: $86
    rra                                           ; $4240: $1f
    cpl                                           ; $4241: $2f
    ld d, e                                       ; $4242: $53
    rst $28                                       ; $4243: $ef
    rrca                                          ; $4244: $0f
    adc c                                         ; $4245: $89
    inc [hl]                                      ; $4246: $34
    halt                                          ; $4247: $76
    dec b                                         ; $4248: $05
    add e                                         ; $4249: $83
    halt                                          ; $424a: $76
    sbc d                                         ; $424b: $9a
    pop hl                                        ; $424c: $e1
    ld a, d                                       ; $424d: $7a
    sbc $2c                                       ; $424e: $de $2c
    ld l, a                                       ; $4250: $6f
    cp d                                          ; $4251: $ba
    sub l                                         ; $4252: $95
    jp hl                                         ; $4253: $e9


    ld d, a                                       ; $4254: $57
    db $f4                                        ; $4255: $f4
    cp h                                          ; $4256: $bc
    ld e, c                                       ; $4257: $59
    sbc $f4                                       ; $4258: $de $f4
    ld [hl-], a                                   ; $425a: $32
    ld a, e                                       ; $425b: $7b
    cp $f2                                        ; $425c: $fe $f2
    ld a, [hl]                                    ; $425e: $7e
    and a                                         ; $425f: $a7
    and d                                         ; $4260: $a2
    ld a, [$24f6]                                 ; $4261: $fa $f6 $24
    ld a, d                                       ; $4264: $7a
    adc $64                                       ; $4265: $ce $64
    pop hl                                        ; $4267: $e1
    ld [hl], h                                    ; $4268: $74
    ld b, a                                       ; $4269: $47
    and [hl]                                      ; $426a: $a6
    push hl                                       ; $426b: $e5
    ld a, [$f634]                                 ; $426c: $fa $34 $f6
    ld c, a                                       ; $426f: $4f
    ld d, d                                       ; $4270: $52
    jp nc, $dd3a                                  ; $4271: $d2 $3a $dd

    adc d                                         ; $4274: $8a
    add sp, -$16                                  ; $4275: $e8 $ea
    db $db                                        ; $4277: $db
    adc e                                         ; $4278: $8b
    rst $38                                       ; $4279: $ff
    di                                            ; $427a: $f3
    cp c                                          ; $427b: $b9
    inc d                                         ; $427c: $14
    dec c                                         ; $427d: $0d
    ldh a, [$e7]                                  ; $427e: $f0 $e7
    ld l, c                                       ; $4280: $69
    dec d                                         ; $4281: $15
    dec bc                                        ; $4282: $0b
    cp $ff                                        ; $4283: $fe $ff
    ld c, l                                       ; $4285: $4d
    ld h, h                                       ; $4286: $64
    rst $08                                       ; $4287: $cf
    sbc e                                         ; $4288: $9b
    push hl                                       ; $4289: $e5
    ld c, l                                       ; $428a: $4d
    or a                                          ; $428b: $b7
    ld [hl-], a                                   ; $428c: $32
    db $fd                                        ; $428d: $fd
    ld a, [hl-]                                   ; $428e: $3a
    xor [hl]                                      ; $428f: $ae
    rst $20                                       ; $4290: $e7
    call $a6f2                                    ; $4291: $cd $f2 $a6
    sub a                                         ; $4294: $97
    reti                                          ; $4295: $d9


    di                                            ; $4296: $f3
    sub a                                         ; $4297: $97
    rst $30                                       ; $4298: $f7
    dec sp                                        ; $4299: $3b
    cp l                                          ; $429a: $bd
    ccf                                           ; $429b: $3f
    add hl, bc                                    ; $429c: $09
    sbc d                                         ; $429d: $9a
    rst $10                                       ; $429e: $d7
    or h                                          ; $429f: $b4
    cp [hl]                                       ; $42a0: $be
    ld b, c                                       ; $42a1: $41
    inc sp                                        ; $42a2: $33
    or h                                          ; $42a3: $b4
    inc l                                         ; $42a4: $2c
    ld h, d                                       ; $42a5: $62
    ld [hl], $5a                                  ; $42a6: $36 $5a
    and e                                         ; $42a8: $a3
    sub e                                         ; $42a9: $93
    ld c, l                                       ; $42aa: $4d
    adc b                                         ; $42ab: $88
    rst $38                                       ; $42ac: $ff
    call nz, $d36c                                ; $42ad: $c4 $6c $d3
    xor l                                         ; $42b0: $ad
    ld l, e                                       ; $42b1: $6b
    jp hl                                         ; $42b2: $e9


    rst $30                                       ; $42b3: $f7
    ld c, a                                       ; $42b4: $4f
    pop de                                        ; $42b5: $d1
    adc h                                         ; $42b6: $8c
    xor b                                         ; $42b7: $a8
    ld e, l                                       ; $42b8: $5d
    xor l                                         ; $42b9: $ad
    reti                                          ; $42ba: $d9


    and e                                         ; $42bb: $a3
    halt                                          ; $42bc: $76
    db $fc                                        ; $42bd: $fc
    push af                                       ; $42be: $f5
    rlca                                          ; $42bf: $07
    ld b, e                                       ; $42c0: $43
    ld c, a                                       ; $42c1: $4f
    db $eb                                        ; $42c2: $eb
    ld a, c                                       ; $42c3: $79
    ld a, b                                       ; $42c4: $78
    ld sp, hl                                     ; $42c5: $f9
    xor l                                         ; $42c6: $ad
    sbc a                                         ; $42c7: $9f
    ld a, [$f930]                                 ; $42c8: $fa $30 $f9
    ld [hl-], a                                   ; $42cb: $32
    ld [hl], $66                                  ; $42cc: $36 $66
    ld [hl], h                                    ; $42ce: $74
    ld h, c                                       ; $42cf: $61
    ld e, h                                       ; $42d0: $5c
    ld c, a                                       ; $42d1: $4f
    xor e                                         ; $42d2: $ab
    sub e                                         ; $42d3: $93
    push af                                       ; $42d4: $f5
    ld [c], a                                     ; $42d5: $e2
    push hl                                       ; $42d6: $e5
    or a                                          ; $42d7: $b7
    ld a, [hl]                                    ; $42d8: $7e
    ld c, [hl]                                    ; $42d9: $4e
    rst $28                                       ; $42da: $ef
    dec b                                         ; $42db: $05
    add hl, de                                    ; $42dc: $19
    or d                                          ; $42dd: $b2
    ld a, $4c                                     ; $42de: $3e $4c
    cp [hl]                                       ; $42e0: $be
    adc h                                         ; $42e1: $8c
    adc l                                         ; $42e2: $8d
    add hl, de                                    ; $42e3: $19
    ld [hl], l                                    ; $42e4: $75
    ld sp, hl                                     ; $42e5: $f9
    dec l                                         ; $42e6: $2d
    ld l, a                                       ; $42e7: $6f
    rla                                           ; $42e8: $17
    xor l                                         ; $42e9: $ad
    ld c, [hl]                                    ; $42ea: $4e
    or $65                                        ; $42eb: $f6 $65
    ret z                                         ; $42ed: $c8

    db $d3                                        ; $42ee: $d3
    cp e                                          ; $42ef: $bb
    reti                                          ; $42f0: $d9


    ld b, [hl]                                    ; $42f1: $46
    ld c, [hl]                                    ; $42f2: $4e
    ld a, l                                       ; $42f3: $7d
    sbc b                                         ; $42f4: $98
    ld a, h                                       ; $42f5: $7c
    add hl, de                                    ; $42f6: $19
    dec de                                        ; $42f7: $1b
    inc sp                                        ; $42f8: $33
    ld a, [$a3db]                                 ; $42f9: $fa $db $a3
    push de                                       ; $42fc: $d5
    ret                                           ; $42fd: $c9


    jp nz, $978b                                  ; $42fe: $c2 $8b $97

    and a                                         ; $4301: $a7
    ld bc, $6dfd                                  ; $4302: $01 $fd $6d
    db $e4                                        ; $4305: $e4
    ld l, b                                       ; $4306: $68
    rst $38                                       ; $4307: $ff
    sub c                                         ; $4308: $91
    db $dd                                        ; $4309: $dd
    ld l, h                                       ; $430a: $6c
    inc hl                                        ; $430b: $23
    ld b, a                                       ; $430c: $47
    dec de                                        ; $430d: $1b
    ret nc                                        ; $430e: $d0

    di                                            ; $430f: $f3
    ldh a, [$f2]                                  ; $4310: $f0 $f2
    ei                                            ; $4312: $fb
    pop af                                        ; $4313: $f1
    ld l, h                                       ; $4314: $6c

jr_06a_4315:
    or h                                          ; $4315: $b4
    add sp, $39                                   ; $4316: $e8 $39
    and $04                                       ; $4318: $e6 $04
    ld d, e                                       ; $431a: $53
    ld a, e                                       ; $431b: $7b
    ld e, $e5                                     ; $431c: $1e $e5
    jr z, jr_06a_4315                             ; $431e: $28 $f5

    db $f4                                        ; $4320: $f4
    and d                                         ; $4321: $a2
    rst $20                                       ; $4322: $e7
    cp c                                          ; $4323: $b9
    db $f4                                        ; $4324: $f4
    or e                                          ; $4325: $b3
    ld a, [$f930]                                 ; $4326: $fa $30 $f9
    ld [hl-], a                                   ; $4329: $32
    ld [hl], $66                                  ; $432a: $36 $66
    inc [hl]                                      ; $432c: $34
    inc hl                                        ; $432d: $23
    ld h, [hl]                                    ; $432e: $66
    ld e, d                                       ; $432f: $5a
    and c                                         ; $4330: $a1
    ccf                                           ; $4331: $3f
    ld a, l                                       ; $4332: $7d
    ld e, d                                       ; $4333: $5a
    ld e, c                                       ; $4334: $59
    ld l, b                                       ; $4335: $68
    ld b, [hl]                                    ; $4336: $46
    ld de, $89ff                                  ; $4337: $11 $ff $89
    reti                                          ; $433a: $d9


    and $ee                                       ; $433b: $e6 $ee
    halt                                          ; $433d: $76
    ld l, l                                       ; $433e: $6d
    add [hl]                                      ; $433f: $86
    db $d3                                        ; $4340: $d3
    ld h, $4e                                     ; $4341: $26 $4e
    call z, Call_000_0da3                         ; $4343: $cc $a3 $0d
    add sp, $56                                   ; $4346: $e8 $56
    and [hl]                                      ; $4348: $a6
    rra                                           ; $4349: $1f
    adc e                                         ; $434a: $8b
    ld e, [hl]                                    ; $434b: $5e
    ld a, [bc]                                    ; $434c: $0a
    ld a, l                                       ; $434d: $7d
    sbc d                                         ; $434e: $9a
    rrca                                          ; $434f: $0f
    adc h                                         ; $4350: $8c
    rst $38                                       ; $4351: $ff
    ld h, e                                       ; $4352: $63
    ld d, l                                       ; $4353: $55
    jr c, @-$59                                   ; $4354: $38 $a5

    ld l, a                                       ; $4356: $6f
    ld d, b                                       ; $4357: $50
    call nz, Call_000_30cc                        ; $4358: $c4 $cc $30
    jp c, $c538                                   ; $435b: $da $38 $c5

    ld l, a                                       ; $435e: $6f
    jp nz, $dfee                                  ; $435f: $c2 $ee $df

    ldh a, [$0c]                                  ; $4362: $f0 $0c
    cpl                                           ; $4364: $2f
    di                                            ; $4365: $f3
    cp $00                                        ; $4366: $fe $00
    rst $20                                       ; $4368: $e7
    ld b, b                                       ; $4369: $40
    ld l, [hl]                                    ; $436a: $6e
    ld e, h                                       ; $436b: $5c
    cp l                                          ; $436c: $bd
    jr jr_06a_43b5                                ; $436d: $18 $46

    cp e                                          ; $436f: $bb
    ld a, a                                       ; $4370: $7f
    jp hl                                         ; $4371: $e9


    ld d, $36                                     ; $4372: $16 $36
    and b                                         ; $4374: $a0
    add hl, bc                                    ; $4375: $09
    pop af                                        ; $4376: $f1
    ld h, a                                       ; $4377: $67
    call z, $8894                                 ; $4378: $cc $94 $88
    ld a, c                                       ; $437b: $79
    db $f4                                        ; $437c: $f4
    xor $e6                                       ; $437d: $ee $e6
    pop af                                        ; $437f: $f1
    rra                                           ; $4380: $1f
    ld h, h                                       ; $4381: $64
    ld b, a                                       ; $4382: $47
    dec hl                                        ; $4383: $2b
    pop hl                                        ; $4384: $e1
    or h                                          ; $4385: $b4
    ld [hl], d                                    ; $4386: $72
    ld d, [hl]                                    ; $4387: $56
    ld c, a                                       ; $4388: $4f
    ld [hl+], a                                   ; $4389: $22
    and $d1                                       ; $438a: $e6 $d1
    ld a, [$7634]                                 ; $438c: $fa $34 $76
    pop bc                                        ; $438f: $c1
    ld [$5a65], a                                 ; $4390: $ea $65 $5a
    sbc l                                         ; $4393: $9d

Jump_06a_4394:
    ld h, h                                       ; $4394: $64
    ld [hl], l                                    ; $4395: $75
    sbc l                                         ; $4396: $9d
    dec a                                         ; $4397: $3d
    inc [hl]                                      ; $4398: $34
    and b                                         ; $4399: $a0
    db $e3                                        ; $439a: $e3
    ld de, $3f80                                  ; $439b: $11 $80 $3f
    adc a                                         ; $439e: $8f
    sbc $dd                                       ; $439f: $de $dd
    add c                                         ; $43a1: $81
    cp $13                                        ; $43a2: $fe $13
    dec d                                         ; $43a4: $15
    ld l, c                                       ; $43a5: $69
    rst $30                                       ; $43a6: $f7
    inc c                                         ; $43a7: $0c
    or d                                          ; $43a8: $b2
    or b                                          ; $43a9: $b0
    or h                                          ; $43aa: $b4
    add e                                         ; $43ab: $83
    ld [hl], l                                    ; $43ac: $75
    ld a, [hl-]                                   ; $43ad: $3a
    ld e, $01                                     ; $43ae: $1e $01
    ld hl, sp-$0d                                 ; $43b0: $f8 $f3
    ld [hl], h                                    ; $43b2: $74
    rst $38                                       ; $43b3: $ff
    ld [hl], d                                    ; $43b4: $72

jr_06a_43b5:
    ret                                           ; $43b5: $c9


    adc $d8                                       ; $43b6: $ce $d8
    rra                                           ; $43b8: $1f
    sub [hl]                                      ; $43b9: $96
    add hl, hl                                    ; $43ba: $29
    xor d                                         ; $43bb: $aa
    ccf                                           ; $43bc: $3f
    ld bc, $3eb2                                  ; $43bd: $01 $b2 $3e
    ld d, l                                       ; $43c0: $55
    ld l, c                                       ; $43c1: $69
    ld h, l                                       ; $43c2: $65
    sbc l                                         ; $43c3: $9d
    db $ec                                        ; $43c4: $ec
    ld a, b                                       ; $43c5: $78
    inc b                                         ; $43c6: $04
    ldh [$cf], a                                  ; $43c7: $e0 $cf
    ld d, e                                       ; $43c9: $53
    ret                                           ; $43ca: $c9


    and a                                         ; $43cb: $a7
    push af                                       ; $43cc: $f5
    and c                                         ; $43cd: $a1
    inc c                                         ; $43ce: $0c
    ld [hl], e                                    ; $43cf: $73
    ld [hl], a                                    ; $43d0: $77
    rlca                                          ; $43d1: $07
    xor d                                         ; $43d2: $aa
    jr z, jr_06a_4437                             ; $43d3: $28 $62

    sbc d                                         ; $43d5: $9a
    sub c                                         ; $43d6: $91
    ld b, $d9                                     ; $43d7: $06 $d9
    nop                                           ; $43d9: $00
    ld c, c                                       ; $43da: $49
    ld a, l                                       ; $43db: $7d
    inc c                                         ; $43dc: $0c
    call nc, $b0ae                                ; $43dd: $d4 $ae $b0
    dec bc                                        ; $43e0: $0b
    jp c, $a07c                                   ; $43e1: $da $7c $a0

    ld l, h                                       ; $43e4: $6c
    ld b, b                                       ; $43e5: $40
    rst $38                                       ; $43e6: $ff
    sub c                                         ; $43e7: $91
    ld e, b                                       ; $43e8: $58
    ld c, a                                       ; $43e9: $4f
    ld l, e                                       ; $43ea: $6b
    ld b, b                                       ; $43eb: $40
    db $e3                                        ; $43ec: $e3
    xor h                                         ; $43ed: $ac
    and $fe                                       ; $43ee: $e6 $fe
    nop                                           ; $43f0: $00
    dec sp                                        ; $43f1: $3b
    or b                                          ; $43f2: $b0
    ldh [rIE], a                                  ; $43f3: $e0 $ff
    rst $18                                       ; $43f5: $df
    ld b, h                                       ; $43f6: $44
    sub [hl]                                      ; $43f7: $96
    db $fd                                        ; $43f8: $fd
    ld b, a                                       ; $43f9: $47
    ld a, d                                       ; $43fa: $7a
    ld e, [hl]                                    ; $43fb: $5e
    db $e4                                        ; $43fc: $e4
    ld a, d                                       ; $43fd: $7a
    pop hl                                        ; $43fe: $e1
    db $f4                                        ; $43ff: $f4
    add a                                         ; $4400: $87
    ld h, l                                       ; $4401: $65
    ld [hl], $a0                                  ; $4402: $36 $a0
    cpl                                           ; $4404: $2f
    and [hl]                                      ; $4405: $a6
    dec c                                         ; $4406: $0d
    pop hl                                        ; $4407: $e1
    ld hl, $6866                                  ; $4408: $21 $66 $68
    pop de                                        ; $440b: $d1
    sbc a                                         ; $440c: $9f
    ld c, e                                       ; $440d: $4b
    ret nz                                        ; $440e: $c0

    inc sp                                        ; $440f: $33
    pop hl                                        ; $4410: $e1
    call nc, $b1a7                                ; $4411: $d4 $a7 $b1
    ld b, $9d                                     ; $4414: $06 $9d
    ld h, l                                       ; $4416: $65
    dec b                                         ; $4417: $05
    add e                                         ; $4418: $83
    halt                                          ; $4419: $76
    ld a, d                                       ; $441a: $7a
    ld l, $94                                     ; $441b: $2e $94
    sbc $37                                       ; $441d: $de $37
    dec c                                         ; $441f: $0d
    ld l, h                                       ; $4420: $6c
    ld [c], a                                     ; $4421: $e2
    xor h                                         ; $4422: $ac
    rla                                           ; $4423: $17
    adc $dd                                       ; $4424: $ce $dd
    ld b, h                                       ; $4426: $44
    ld a, e                                       ; $4427: $7b
    ld [de], a                                    ; $4428: $12

jr_06a_4429:
    ld c, l                                       ; $4429: $4d
    and h                                         ; $442a: $a4
    or c                                          ; $442b: $b1
    sbc e                                         ; $442c: $9b
    sbc a                                         ; $442d: $9f
    ld h, h                                       ; $442e: $64
    rst $00                                       ; $442f: $c7
    dec [hl]                                      ; $4430: $35
    sub c                                         ; $4431: $91
    add $9e                                       ; $4432: $c6 $9e
    jp Jump_06a_7827                              ; $4434: $c3 $27 $78


jr_06a_4437:
    ld [$58d3], a                                 ; $4437: $ea $d3 $58
    cpl                                           ; $443a: $2f
    ld [hl], a                                    ; $443b: $77
    pop bc                                        ; $443c: $c1
    and b                                         ; $443d: $a0
    ld h, l                                       ; $443e: $65
    or e                                          ; $443f: $b3
    ld h, e                                       ; $4440: $63
    and c                                         ; $4441: $a1
    rst $38                                       ; $4442: $ff
    inc l                                         ; $4443: $2c
    ld c, c                                       ; $4444: $49
    sbc $6d                                       ; $4445: $de $6d
    and d                                         ; $4447: $a2
    dec a                                         ; $4448: $3d
    adc c                                         ; $4449: $89
    sbc [hl]                                      ; $444a: $9e
    ei                                            ; $444b: $fb
    inc c                                         ; $444c: $0c
    cpl                                           ; $444d: $2f
    or e                                          ; $444e: $b3
    ld a, $8d                                     ; $444f: $3e $8d
    push af                                       ; $4451: $f5
    xor c                                         ; $4452: $a9
    ld c, d                                       ; $4453: $4a
    db $eb                                        ; $4454: $eb
    ld e, d                                       ; $4455: $5a
    and c                                         ; $4456: $a1
    rst $38                                       ; $4457: $ff
    inc l                                         ; $4458: $2c
    ld c, c                                       ; $4459: $49
    ld d, [hl]                                    ; $445a: $56
    sub c                                         ; $445b: $91
    halt                                          ; $445c: $76
    cpl                                           ; $445d: $2f
    ld h, [hl]                                    ; $445e: $66
    adc b                                         ; $445f: $88
    ld a, [hl-]                                   ; $4460: $3a
    xor [hl]                                      ; $4461: $ae
    cp [hl]                                       ; $4462: $be
    dec a                                         ; $4463: $3d
    adc c                                         ; $4464: $89
    ld h, $68                                     ; $4465: $26 $68
    jp z, $02c1                                   ; $4467: $ca $c1 $02

    db $eb                                        ; $446a: $eb
    db $d3                                        ; $446b: $d3
    ret c                                         ; $446c: $d8

    push de                                       ; $446d: $d5
    inc l                                         ; $446e: $2c
    sbc c                                         ; $446f: $99
    ld d, [hl]                                    ; $4470: $56
    ld h, [hl]                                    ; $4471: $66
    ld e, e                                       ; $4472: $5b
    db $d3                                        ; $4473: $d3
    and d                                         ; $4474: $a2
    jp nc, $1a05                                  ; $4475: $d2 $05 $1a

    or h                                          ; $4478: $b4
    ld bc, $017d                                  ; $4479: $01 $7d $01
    adc a                                         ; $447c: $8f
    ld a, d                                       ; $447d: $7a
    rst $30                                       ; $447e: $f7
    ld [de], a                                    ; $447f: $12
    rst $00                                       ; $4480: $c7
    jr jr_06a_4429                                ; $4481: $18 $a6

    ret nc                                        ; $4483: $d0

    db $fc                                        ; $4484: $fc
    ld d, [hl]                                    ; $4485: $56
    jr nc, jr_06a_44f0                            ; $4486: $30 $68

    sub l                                         ; $4488: $95
    ld sp, hl                                     ; $4489: $f9
    xor c                                         ; $448a: $a9
    rla                                           ; $448b: $17
    cpl                                           ; $448c: $2f
    ld c, a                                       ; $448d: $4f
    rst $38                                       ; $448e: $ff
    sub c                                         ; $448f: $91
    and l                                         ; $4490: $a5
    ld [hl], $3b                                  ; $4491: $36 $3b
    ld l, d                                       ; $4493: $6a
    and c                                         ; $4494: $a1
    rst $38                                       ; $4495: $ff
    inc l                                         ; $4496: $2c
    ld c, c                                       ; $4497: $49
    xor d                                         ; $4498: $aa
    xor b                                         ; $4499: $a8
    cp [hl]                                       ; $449a: $be
    dec a                                         ; $449b: $3d
    adc c                                         ; $449c: $89
    ld c, [hl]                                    ; $449d: $4e
    rst $08                                       ; $449e: $cf
    sbc c                                         ; $449f: $99
    inc l                                         ; $44a0: $2c
    sbc h                                         ; $44a1: $9c
    adc d                                         ; $44a2: $8a
    rst $10                                       ; $44a3: $d7
    and a                                         ; $44a4: $a7
    or c                                          ; $44a5: $b1
    call nc, Call_000_13fe                        ; $44a6: $d4 $fe $13
    cp l                                          ; $44a9: $bd
    rst $08                                       ; $44aa: $cf
    inc h                                         ; $44ab: $24
    dec c                                         ; $44ac: $0d
    ld a, d                                       ; $44ad: $7a
    or a                                          ; $44ae: $b7
    ld [c], a                                     ; $44af: $e2
    ld e, d                                       ; $44b0: $5a
    ld c, c                                       ; $44b1: $49
    ei                                            ; $44b2: $fb
    xor c                                         ; $44b3: $a9
    ld h, l                                       ; $44b4: $65
    inc hl                                        ; $44b5: $23
    jp nc, $e536                                  ; $44b6: $d2 $36 $e5

    ld [hl], h                                    ; $44b9: $74
    ld h, c                                       ; $44ba: $61
    sbc b                                         ; $44bb: $98
    ld b, $36                                     ; $44bc: $06 $36
    dec sp                                        ; $44be: $3b
    ld d, $fa                                     ; $44bf: $16 $fa
    rst $08                                       ; $44c1: $cf
    sub d                                         ; $44c2: $92
    ld h, h                                       ; $44c3: $64
    ld e, a                                       ; $44c4: $5f
    inc c                                         ; $44c5: $0c
    rst $28                                       ; $44c6: $ef
    and a                                         ; $44c7: $a7
    xor h                                         ; $44c8: $ac
    ld b, c                                       ; $44c9: $41
    db $fd                                        ; $44ca: $fd
    pop de                                        ; $44cb: $d1
    ld c, h                                       ; $44cc: $4c
    db $ed                                        ; $44cd: $ed
    ccf                                           ; $44ce: $3f
    ld h, [hl]                                    ; $44cf: $66
    ld hl, sp+$33                                 ; $44d0: $f8 $33
    or l                                          ; $44d2: $b5
    dec de                                        ; $44d3: $1b
    sbc e                                         ; $44d4: $9b
    ld [hl], d                                    ; $44d5: $72
    adc h                                         ; $44d6: $8c
    ld a, c                                       ; $44d7: $79
    ld a, [hl+]                                   ; $44d8: $2a
    ld sp, hl                                     ; $44d9: $f9
    ld d, h                                       ; $44da: $54
    ld d, h                                       ; $44db: $54
    adc c                                         ; $44dc: $89
    dec h                                         ; $44dd: $25
    add hl, sp                                    ; $44de: $39
    or [hl]                                       ; $44df: $b6
    and c                                         ; $44e0: $a1
    db $dd                                        ; $44e1: $dd
    add c                                         ; $44e2: $81
    ld a, d                                       ; $44e3: $7a
    rst $18                                       ; $44e4: $df
    ld c, a                                       ; $44e5: $4f
    add e                                         ; $44e6: $83
    or $1f                                        ; $44e7: $f6 $1f
    reti                                          ; $44e9: $d9


    jp hl                                         ; $44ea: $e9


    rst $08                                       ; $44eb: $cf
    dec h                                         ; $44ec: $25
    ldh [$99], a                                  ; $44ed: $e0 $99
    ld [hl], b                                    ; $44ef: $70

jr_06a_44f0:
    ld a, [$f2c3]                                 ; $44f0: $fa $c3 $f2
    inc d                                         ; $44f3: $14
    dec e                                         ; $44f4: $1d
    db $ed                                        ; $44f5: $ed
    adc e                                         ; $44f6: $8b
    ld l, c                                       ; $44f7: $69
    ld b, e                                       ; $44f8: $43
    ld a, b                                       ; $44f9: $78
    adc b                                         ; $44fa: $88
    add hl, de                                    ; $44fb: $19
    jp c, $961f                                   ; $44fc: $da $1f $96

    ld b, a                                       ; $44ff: $47
    cp e                                          ; $4500: $bb
    ld b, d                                       ; $4501: $42
    db $fc                                        ; $4502: $fc
    and c                                         ; $4503: $a1
    sbc l                                         ; $4504: $9d
    ld b, $28                                     ; $4505: $06 $28
    cp l                                          ; $4507: $bd
    ld l, a                                       ; $4508: $6f
    ld [hl], $f4                                  ; $4509: $36 $f4
    ld [hl-], a                                   ; $450b: $32
    ld b, h                                       ; $450c: $44
    db $ed                                        ; $450d: $ed
    or c                                          ; $450e: $b1
    rst $00                                       ; $450f: $c7
    dec [hl]                                      ; $4510: $35
    ld sp, hl                                     ; $4511: $f9
    db $fc                                        ; $4512: $fc
    db $dd                                        ; $4513: $dd
    inc sp                                        ; $4514: $33

jr_06a_4515:
    inc d                                         ; $4515: $14
    ld e, d                                       ; $4516: $5a
    sbc a                                         ; $4517: $9f
    add $22                                       ; $4518: $c6 $22
    cp $13                                        ; $451a: $fe $13
    or e                                          ; $451c: $b3
    pop de                                        ; $451d: $d1
    jp z, $23fe                                   ; $451e: $ca $fe $23

    dec a                                         ; $4521: $3d
    cpl                                           ; $4522: $2f
    ld [hl], d                                    ; $4523: $72
    cp l                                          ; $4524: $bd
    ld [hl], b                                    ; $4525: $70
    ld a, [$32c3]                                 ; $4526: $fa $c3 $32
    rst $28                                       ; $4529: $ef
    rrca                                          ; $452a: $0f
    sub a                                         ; $452b: $97
    ld hl, $d666                                  ; $452c: $21 $66 $d6
    bit 3, l                                      ; $452f: $cb $5d
    or b                                          ; $4531: $b0
    cp $63                                        ; $4532: $fe $63
    ld b, $f5                                     ; $4534: $06 $f5
    daa                                           ; $4536: $27
    ld b, $58                                     ; $4537: $06 $58
    ld b, a                                       ; $4539: $47
    db $eb                                        ; $453a: $eb
    db $d3                                        ; $453b: $d3
    and b                                         ; $453c: $a0
    dec c                                         ; $453d: $0d
    add sp, $6f                                   ; $453e: $e8 $6f
    inc hl                                        ; $4540: $23
    ld b, a                                       ; $4541: $47
    rst $28                                       ; $4542: $ef
    ld h, $da                                     ; $4543: $26 $da
    sub e                                         ; $4545: $93
    ld a, b                                       ; $4546: $78
    ld [hl], $95                                  ; $4547: $36 $95
    or e                                          ; $4549: $b3
    ld b, d                                       ; $454a: $42
    and a                                         ; $454b: $a7
    cp a                                          ; $454c: $bf
    inc sp                                        ; $454d: $33
    dec e                                         ; $454e: $1d
    dec hl                                        ; $454f: $2b
    ld [$93db], a                                 ; $4550: $ea $db $93
    add sp, -$0c                                  ; $4553: $e8 $f4
    sbc h                                         ; $4555: $9c
    ret                                           ; $4556: $c9


    jp nz, Jump_06a_78a9                          ; $4557: $c2 $a9 $78

    ld a, l                                       ; $455a: $7d
    ld a, [de]                                    ; $455b: $1a
    cp e                                          ; $455c: $bb
    ld a, d                                       ; $455d: $7a
    ld b, [hl]                                    ; $455e: $46
    xor e                                         ; $455f: $ab
    sub e                                         ; $4560: $93
    db $ec                                        ; $4561: $ec
    ld c, a                                       ; $4562: $4f
    res 7, h                                      ; $4563: $cb $bc
    ld a, e                                       ; $4565: $7b
    push bc                                       ; $4566: $c5
    inc sp                                        ; $4567: $33
    sub $49                                       ; $4568: $d6 $49
    ld d, [hl]                                    ; $456a: $56
    sub c                                         ; $456b: $91
    halt                                          ; $456c: $76
    ld sp, $3fb0                                  ; $456d: $31 $b0 $3f
    dec l                                         ; $4570: $2d
    or e                                          ; $4571: $b3
    ld b, $1f                                     ; $4572: $06 $1f
    ld sp, hl                                     ; $4574: $f9
    push bc                                       ; $4575: $c5
    jr nc, jr_06a_4515                            ; $4576: $30 $9d

    ld c, d                                       ; $4578: $4a
    xor b                                         ; $4579: $a8
    sbc h                                         ; $457a: $9c
    ld a, [$3f36]                                 ; $457b: $fa $36 $3f
    ld d, h                                       ; $457e: $54
    rst $20                                       ; $457f: $e7
    xor $0e                                       ; $4580: $ee $0e
    call nc, Call_000_063b                        ; $4582: $d4 $3b $06
    reti                                          ; $4585: $d9


    sub a                                         ; $4586: $97
    halt                                          ; $4587: $76
    ld a, h                                       ; $4588: $7c
    ld a, [hl+]                                   ; $4589: $2a
    ld [$7f68], a                                 ; $458a: $ea $68 $7f
    dec de                                        ; $458d: $1b
    add hl, sp                                    ; $458e: $39
    ld e, d                                       ; $458f: $5a
    dec d                                         ; $4590: $15
    ld c, [hl]                                    ; $4591: $4e
    dec c                                         ; $4592: $0d
    ld [hl], d                                    ; $4593: $72
    ld d, [hl]                                    ; $4594: $56
    cpl                                           ; $4595: $2f
    adc h                                         ; $4596: $8c
    sbc $4d                                       ; $4597: $de $4d
    and h                                         ; $4599: $a4
    or c                                          ; $459a: $b1
    ld l, c                                       ; $459b: $69
    add $24                                       ; $459c: $c6 $24
    ld c, l                                       ; $459e: $4d
    ld d, h                                       ; $459f: $54
    cpl                                           ; $45a0: $2f
    ld [hl], a                                    ; $45a1: $77
    push af                                       ; $45a2: $f5
    rra                                           ; $45a3: $1f
    inc sp                                        ; $45a4: $33
    xor b                                         ; $45a5: $a8
    ccf                                           ; $45a6: $3f
    ld sp, $8ac0                                  ; $45a7: $31 $c0 $8a
    ld a, [de]                                    ; $45aa: $1a
    db $e4                                        ; $45ab: $e4
    xor h                                         ; $45ac: $ac
    ret nc                                        ; $45ad: $d0

    inc a                                         ; $45ae: $3c
    ld h, c                                       ; $45af: $61
    or h                                          ; $45b0: $b4
    and e                                         ; $45b1: $a3
    push af                                       ; $45b2: $f5
    ld l, c                                       ; $45b3: $69
    ret nc                                        ; $45b4: $d0

    ld b, $f4                                     ; $45b5: $06 $f4
    and a                                         ; $45b7: $a7
    ld h, l                                       ; $45b8: $65
    ld [$01fd], a                                 ; $45b9: $ea $fd $01
    dec sp                                        ; $45bc: $3b
    ret nc                                        ; $45bd: $d0

    adc h                                         ; $45be: $8c
    ld a, [$00b0]                                 ; $45bf: $fa $b0 $00
    add e                                         ; $45c2: $83
    adc d                                         ; $45c3: $8a
    ld [$93db], a                                 ; $45c4: $ea $db $93
    add sp, $39                                   ; $45c7: $e8 $39
    sub e                                         ; $45c9: $93
    add l                                         ; $45ca: $85
    db $d3                                        ; $45cb: $d3
    dec e                                         ; $45cc: $1d
    ld e, b                                       ; $45cd: $58
    ldh a, [$e7]                                  ; $45ce: $f0 $e7
    ld a, [$d634]                                 ; $45d0: $fa $34 $d6
    bit 3, l                                      ; $45d3: $cb $5d
    or b                                          ; $45d5: $b0
    jp nc, $e1a7                                  ; $45d6: $d2 $a7 $e1

    add a                                         ; $45d9: $87
    push de                                       ; $45da: $d5
    ld c, c                                       ; $45db: $49
    ld d, [hl]                                    ; $45dc: $56
    ld [hl+], a                                   ; $45dd: $22
    ld a, [hl+]                                   ; $45de: $2a
    db $d3                                        ; $45df: $d3
    sub b                                         ; $45e0: $90
    push de                                       ; $45e1: $d5
    pop af                                        ; $45e2: $f1
    jr jr_06a_461f                                ; $45e3: $18 $3a

    ld sp, $19a0                                  ; $45e5: $31 $a0 $19
    ld b, l                                       ; $45e8: $45
    db $fc                                        ; $45e9: $fc
    daa                                           ; $45ea: $27
    ld h, [hl]                                    ; $45eb: $66
    and e                                         ; $45ec: $a3
    sbc $1f                                       ; $45ed: $de $1f
    adc c                                         ; $45ef: $89
    or $24                                        ; $45f0: $f6 $24
    ld a, [hl-]                                   ; $45f2: $3a
    dec a                                         ; $45f3: $3d
    ld h, a                                       ; $45f4: $67
    or d                                          ; $45f5: $b2
    ld [hl], b                                    ; $45f6: $70
    ld a, [hl+]                                   ; $45f7: $2a
    ld e, [hl]                                    ; $45f8: $5e
    sbc a                                         ; $45f9: $9f
    add $fa                                       ; $45fa: $c6 $fa

jr_06a_45fc:
    ld [hl], $bf                                  ; $45fc: $36 $bf
    inc sp                                        ; $45fe: $33
    ld e, d                                       ; $45ff: $5a
    ld e, a                                       ; $4600: $5f
    ld b, [hl]                                    ; $4601: $46
    call nc, $ff42                                ; $4602: $d4 $42 $ff
    adc c                                         ; $4605: $89
    pop hl                                        ; $4606: $e1
    add l                                         ; $4607: $85
    pop de                                        ; $4608: $d1
    ld a, [$f563]                                 ; $4609: $fa $63 $f5
    ld h, c                                       ; $460c: $61
    ld a, c                                       ; $460d: $79
    cp d                                          ; $460e: $ba
    ld a, a                                       ; $460f: $7f
    or e                                          ; $4610: $b3
    ld h, e                                       ; $4611: $63
    cp l                                          ; $4612: $bd
    add [hl]                                      ; $4613: $86
    sbc b                                         ; $4614: $98
    ld [hl], c                                    ; $4615: $71
    or a                                          ; $4616: $b7
    dec sp                                        ; $4617: $3b
    ld d, b                                       ; $4618: $50
    daa                                           ; $4619: $27
    ei                                            ; $461a: $fb
    ld [hl-], a                                   ; $461b: $32
    ld h, h                                       ; $461c: $64
    and c                                         ; $461d: $a1
    ld sp, hl                                     ; $461e: $f9

jr_06a_461f:
    xor l                                         ; $461f: $ad
    ld h, b                                       ; $4620: $60
    push af                                       ; $4621: $f5
    dec c                                         ; $4622: $0d
    adc d                                         ; $4623: $8a
    sbc b                                         ; $4624: $98
    ld hl, $7d2a                                  ; $4625: $21 $2a $7d
    ld a, [de]                                    ; $4628: $1a
    ld a, [hl]                                    ; $4629: $7e
    call nc, Call_06a_5649                        ; $462a: $d4 $49 $56
    ld [hl+], a                                   ; $462d: $22
    ld a, [hl+]                                   ; $462e: $2a
    db $d3                                        ; $462f: $d3
    sub b                                         ; $4630: $90
    ld c, l                                       ; $4631: $4d
    add hl, sp                                    ; $4632: $39
    inc [hl]                                      ; $4633: $34
    and e                                         ; $4634: $a3
    pop hl                                        ; $4635: $e1
    db $ed                                        ; $4636: $ed
    ld [$e534], a                                 ; $4637: $ea $34 $e5
    ld d, b                                       ; $463a: $50
    call nz, Call_06a_627f                        ; $463b: $c4 $7f $62
    ld [hl], $6a                                  ; $463e: $36 $6a
    add $fd                                       ; $4640: $c6 $fd
    ld bc, $0889                                  ; $4642: $01 $89 $08
    jr z, jr_06a_45fc                             ; $4645: $28 $b5

    reti                                          ; $4647: $d9


    ld d, c                                       ; $4648: $51
    ld l, e                                       ; $4649: $6b
    ld hl, sp-$0f                                 ; $464a: $f8 $f1
    ld [hl-], a                                   ; $464c: $32
    or l                                          ; $464d: $b5
    ld bc, $67f5                                  ; $464e: $01 $f5 $67
    db $fd                                        ; $4651: $fd
    pop bc                                        ; $4652: $c1
    ret nc                                        ; $4653: $d0

    ld [hl], d                                    ; $4654: $72
    sbc d                                         ; $4655: $9a
    ld l, b                                       ; $4656: $68
    db $e3                                        ; $4657: $e3
    add l                                         ; $4658: $85
    ld [$7758], a                                 ; $4659: $ea $58 $77
    ld b, h                                       ; $465c: $44
    ld a, [$7510]                                 ; $465d: $fa $10 $75
    dec bc                                        ; $4660: $0b
    call $de76                                    ; $4661: $cd $76 $de
    rra                                           ; $4664: $1f
    adc c                                         ; $4665: $89
    ld [hl], $bf                                  ; $4666: $36 $bf
    inc sp                                        ; $4668: $33
    ld [hl], $52                                  ; $4669: $36 $52

Call_06a_466b:
    db $eb                                        ; $466b: $eb
    dec de                                        ; $466c: $1b
    inc sp                                        ; $466d: $33
    ld d, $3c                                     ; $466e: $16 $3c
    and e                                         ; $4670: $a3
    halt                                          ; $4671: $76
    rst $38                                       ; $4672: $ff
    xor [hl]                                      ; $4673: $ae
    ld h, $66                                     ; $4674: $26 $66
    ld b, $dc                                     ; $4676: $06 $dc

Call_06a_4678:
    db $ed                                        ; $4678: $ed
    ld [hl], $17                                  ; $4679: $36 $17
    ld a, a                                       ; $467b: $7f
    ld d, [hl]                                    ; $467c: $56
    ld d, c                                       ; $467d: $51
    and l                                         ; $467e: $a5
    rlca                                          ; $467f: $07
    ld c, l                                       ; $4680: $4d
    add hl, sp                                    ; $4681: $39
    db $f4                                        ; $4682: $f4
    sbc a                                         ; $4683: $9f
    and a                                         ; $4684: $a7
    call nc, $98be                                ; $4685: $d4 $be $98
    ld h, c                                       ; $4688: $61
    ld d, b                                       ; $4689: $50
    ld h, l                                       ; $468a: $65
    call z, $fad0                                 ; $468b: $cc $d0 $fa
    inc de                                        ; $468e: $13
    and b                                         ; $468f: $a0
    ld b, l                                       ; $4690: $45
    db $fc                                        ; $4691: $fc
    daa                                           ; $4692: $27
    ld h, [hl]                                    ; $4693: $66
    and e                                         ; $4694: $a3
    db $dd                                        ; $4695: $dd
    rra                                           ; $4696: $1f
    db $db                                        ; $4697: $db
    ld e, [hl]                                    ; $4698: $5e
    ld c, h                                       ; $4699: $4c
    cp e                                          ; $469a: $bb
    ld [hl], l                                    ; $469b: $75
    or d                                          ; $469c: $b2
    cp $04                                        ; $469d: $fe $04
    inc d                                         ; $469f: $14
    ld sp, $ad1b                                  ; $46a0: $31 $1b $ad
    sub c                                         ; $46a3: $91
    dec a                                         ; $46a4: $3d
    call nc, Call_06a_5ec0                        ; $46a5: $d4 $c0 $5e
    ld a, [bc]                                    ; $46a8: $0a
    add l                                         ; $46a9: $85
    xor l                                         ; $46aa: $ad
    jr jr_06a_4705                                ; $46ab: $18 $58

    add l                                         ; $46ad: $85

Jump_06a_46ae:
jr_06a_46ae:
    inc l                                         ; $46ae: $2c
    ld e, l                                       ; $46af: $5d
    ld e, $7b                                     ; $46b0: $1e $7b
    cp e                                          ; $46b2: $bb
    cp b                                          ; $46b3: $b8
    ld e, [hl]                                    ; $46b4: $5e
    jr c, jr_06a_46ae                             ; $46b5: $38 $f7

    rlca                                          ; $46b7: $07
    rst $20                                       ; $46b8: $e7
    ld h, d                                       ; $46b9: $62
    push af                                       ; $46ba: $f5
    xor b                                         ; $46bb: $a8
    ld a, l                                       ; $46bc: $7d
    sub $f0                                       ; $46bd: $d6 $f0
    halt                                          ; $46bf: $76
    pop bc                                        ; $46c0: $c1
    jp z, $a269                                   ; $46c1: $ca $69 $a2

    adc l                                         ; $46c4: $8d
    rla                                           ; $46c5: $17
    xor d                                         ; $46c6: $aa
    ld h, e                                       ; $46c7: $63
    cp l                                          ; $46c8: $bd
    call nz, $333d                                ; $46c9: $c4 $3d $33
    inc l                                         ; $46cc: $2c
    ld c, e                                       ; $46cd: $4b
    ld d, e                                       ; $46ce: $53
    ld c, $45                                     ; $46cf: $0e $45
    db $fc                                        ; $46d1: $fc
    daa                                           ; $46d2: $27
    ld h, [hl]                                    ; $46d3: $66
    and e                                         ; $46d4: $a3
    ld h, [hl]                                    ; $46d5: $66
    sub h                                         ; $46d6: $94
    db $fd                                        ; $46d7: $fd
    sbc l                                         ; $46d8: $9d
    or c                                          ; $46d9: $b1

jr_06a_46da:
    ld a, $8d                                     ; $46da: $3e $8d
    ld h, l                                       ; $46dc: $65
    or e                                          ; $46dd: $b3
    ld h, e                                       ; $46de: $63
    jp $ae20                                      ; $46df: $c3 $20 $ae


    rst $20                                       ; $46e2: $e7
    db $fd                                        ; $46e3: $fd
    ld bc, $8fe7                                  ; $46e4: $01 $e7 $8f
    ld h, [hl]                                    ; $46e7: $66
    xor [hl]                                      ; $46e8: $ae
    ret c                                         ; $46e9: $d8

    sub h                                         ; $46ea: $94
    ld b, e                                       ; $46eb: $43
    sub e                                         ; $46ec: $93
    db $e3                                        ; $46ed: $e3
    ld d, [hl]                                    ; $46ee: $56
    ld d, b                                       ; $46ef: $50

jr_06a_46f0:
    ld b, l                                       ; $46f0: $45
    dec h                                         ; $46f1: $25
    ld [c], a                                     ; $46f2: $e2
    ld l, b                                       ; $46f3: $68
    db $d3                                        ; $46f4: $d3
    ld e, h                                       ; $46f5: $5c
    ld e, [hl]                                    ; $46f6: $5e
    ld c, h                                       ; $46f7: $4c
    ld d, d                                       ; $46f8: $52
    dec de                                        ; $46f9: $1b
    ld b, a                                       ; $46fa: $47
    sbc e                                         ; $46fb: $9b
    ld h, c                                       ; $46fc: $61
    add [hl]                                      ; $46fd: $86
    jr c, jr_06a_477a                             ; $46fe: $38 $7a

    ld a, a                                       ; $4700: $7f
    ld [c], a                                     ; $4701: $e2
    add hl, hl                                    ; $4702: $29
    add a                                         ; $4703: $87
    add l                                         ; $4704: $85

jr_06a_4705:
    jp c, $9734                                   ; $4705: $da $34 $97

    rla                                           ; $4708: $17
    sub e                                         ; $4709: $93
    call nc, $09e6                                ; $470a: $d4 $e6 $09
    call nc, Call_06a_6366                        ; $470d: $d4 $66 $63
    ld d, h                                       ; $4710: $54
    rst $28                                       ; $4711: $ef
    sbc b                                         ; $4712: $98
    and h                                         ; $4713: $a4
    xor h                                         ; $4714: $ac
    sub e                                         ; $4715: $93
    push af                                       ; $4716: $f5
    xor c                                         ; $4717: $a9
    adc d                                         ; $4718: $8a
    scf                                           ; $4719: $37
    adc l                                         ; $471a: $8d
    ld c, [hl]                                    ; $471b: $4e
    sub $87                                       ; $471c: $d6 $87
    ld [hl-], a                                   ; $471e: $32
    ld h, b                                       ; $471f: $60
    sbc c                                         ; $4720: $99
    ei                                            ; $4721: $fb
    inc bc                                        ; $4722: $03
    add hl, bc                                    ; $4723: $09
    sbc d                                         ; $4724: $9a
    adc l                                         ; $4725: $8d
    ld l, c                                       ; $4726: $69
    add a                                         ; $4727: $87
    rst $10                                       ; $4728: $d7
    pop de                                        ; $4729: $d1
    ld c, d                                       ; $472a: $4a
    jr c, jr_06a_46da                             ; $472b: $38 $ad

    jp nc, $1e67                                  ; $472d: $d2 $67 $1e

    ld l, l                                       ; $4730: $6d
    sbc h                                         ; $4731: $9c
    push de                                       ; $4732: $d5
    ld l, b                                       ; $4733: $68
    inc bc                                        ; $4734: $03
    ld a, [$3a53]                                 ; $4735: $fa $53 $3a
    ld e, e                                       ; $4738: $5b
    rst $08                                       ; $4739: $cf
    ld [hl], d                                    ; $473a: $72
    ld [$a53f], a                                 ; $473b: $ea $3f $a5
    dec [hl]                                      ; $473e: $35
    adc [hl]                                      ; $473f: $8e
    halt                                          ; $4740: $76
    ld d, [hl]                                    ; $4741: $56
    and e                                         ; $4742: $a3
    rst $30                                       ; $4743: $f7
    rlca                                          ; $4744: $07
    db $db                                        ; $4745: $db
    add h                                         ; $4746: $84
    ld d, e                                       ; $4747: $53
    push bc                                       ; $4748: $c5
    xor e                                         ; $4749: $ab
    ccf                                           ; $474a: $3f
    sub $94                                       ; $474b: $d6 $94
    ld b, e                                       ; $474d: $43
    adc l                                         ; $474e: $8d
    cp e                                          ; $474f: $bb
    add h                                         ; $4750: $84
    db $d3                                        ; $4751: $d3
    jr z, jr_06a_46f0                             ; $4752: $28 $9c

    ld a, [hl+]                                   ; $4754: $2a
    ld l, h                                       ; $4755: $6c
    dec b                                         ; $4756: $05
    ld e, c                                       ; $4757: $59
    ret                                           ; $4758: $c9


    and a                                         ; $4759: $a7
    ld c, l                                       ; $475a: $4d
    ld [hl], e                                    ; $475b: $73
    ld a, c                                       ; $475c: $79
    ld sp, $2d49                                  ; $475d: $31 $49 $2d
    and a                                         ; $4760: $a7
    ld [bc], a                                    ; $4761: $02
    jr jr_06a_4797                                ; $4762: $18 $33

    db $ed                                        ; $4764: $ed

jr_06a_4765:
    cp $00                                        ; $4765: $fe $00
    ld [c], a                                     ; $4767: $e2

Jump_06a_4768:
    jp hl                                         ; $4768: $e9


    ld sp, $c9d6                                  ; $4769: $31 $d6 $c9
    ld a, d                                       ; $476c: $7a
    adc l                                         ; $476d: $8d
    ld sp, $a53d                                  ; $476e: $31 $3d $a5
    ld a, [hl+]                                   ; $4771: $2a
    jp Jump_06a_7994                              ; $4772: $c3 $94 $79


    ld e, l                                       ; $4775: $5d
    ld a, a                                       ; $4776: $7f
    xor $c6                                       ; $4777: $ee $c6
    ld a, d                                       ; $4779: $7a

jr_06a_477a:
    jr nz, @-$0f                                  ; $477a: $20 $ef

    rrca                                          ; $477c: $0f
    rla                                           ; $477d: $17
    xor [hl]                                      ; $477e: $ae
    ld [hl], l                                    ; $477f: $75
    sub [hl]                                      ; $4780: $96
    inc h                                         ; $4781: $24
    dec [hl]                                      ; $4782: $35
    and e                                         ; $4783: $a3
    ld a, $8d                                     ; $4784: $3e $8d
    ld [hl], l                                    ; $4786: $75
    sub d                                         ; $4787: $92
    ld c, l                                       ; $4788: $4d
    ld [hl], e                                    ; $4789: $73
    ld a, c                                       ; $478a: $79
    ld sp, $7ac9                                  ; $478b: $31 $c9 $7a
    jr nz, jr_06a_47ab                            ; $478e: $20 $1b

    ld b, a                                       ; $4790: $47
    dec sp                                        ; $4791: $3b
    ld c, e                                       ; $4792: $4b
    ld [hl], d                                    ; $4793: $72
    ld [hl], h                                    ; $4794: $74
    ld d, e                                       ; $4795: $53
    rst $08                                       ; $4796: $cf

jr_06a_4797:
    jr z, @-$31                                   ; $4797: $28 $cd

    ldh [$3f], a                                  ; $4799: $e0 $3f
    add $8c                                       ; $479b: $c6 $8c
    ei                                            ; $479d: $fb

Call_06a_479e:
    inc bc                                        ; $479e: $03
    adc c                                         ; $479f: $89
    ld h, e                                       ; $47a0: $63
    add hl, hl                                    ; $47a1: $29
    add a                                         ; $47a2: $87
    xor [hl]                                      ; $47a3: $ae
    ld l, e                                       ; $47a4: $6b
    jp z, Jump_06a_79a1                           ; $47a5: $ca $a1 $79

    ld [bc], a                                    ; $47a8: $02
    res 4, [hl]                                   ; $47a9: $cb $a6

jr_06a_47ab:
    ld de, $0a33                                  ; $47ab: $11 $33 $0a
    call Call_06a_656b                            ; $47ae: $cd $6b $65
    cp l                                          ; $47b1: $bd
    ld e, h                                       ; $47b2: $5c
    ld l, b                                       ; $47b3: $68
    dec c                                         ; $47b4: $0d
    ld l, b                                       ; $47b5: $68
    sbc d                                         ; $47b6: $9a
    res 1, e                                      ; $47b7: $cb $8b
    ld c, c                                       ; $47b9: $49
    ld [$0fa6], a                                 ; $47ba: $ea $a6 $0f
    sub a                                         ; $47bd: $97
    ld hl, $a726                                  ; $47be: $21 $26 $a7
    ld c, d                                       ; $47c1: $4a
    rla                                           ; $47c2: $17
    jr jr_06a_4765                                ; $47c3: $18 $a0

    dec c                                         ; $47c5: $0d
    xor h                                         ; $47c6: $ac
    ld [hl], d                                    ; $47c7: $72
    ld h, c                                       ; $47c8: $61
    ld h, b                                       ; $47c9: $60
    inc bc                                        ; $47ca: $03
    ld [$c635], a                                 ; $47cb: $ea $35 $c6
    db $f4                                        ; $47ce: $f4
    inc [hl]                                      ; $47cf: $34
    or b                                          ; $47d0: $b0
    ld a, [c]                                     ; $47d1: $f2
    push bc                                       ; $47d2: $c5
    inc h                                         ; $47d3: $24
    dec hl                                        ; $47d4: $2b
    add l                                         ; $47d5: $85
    cp b                                          ; $47d6: $b8
    ccf                                           ; $47d7: $3f
    db $db                                        ; $47d8: $db
    ld e, b                                       ; $47d9: $58
    rst $18                                       ; $47da: $df
    halt                                          ; $47db: $76
    rla                                           ; $47dc: $17
    db $fc                                        ; $47dd: $fc
    inc h                                         ; $47de: $24
    cp e                                          ; $47df: $bb
    jp nz, $a6ae                                  ; $47e0: $c2 $ae $a6

    inc e                                         ; $47e3: $1c
    ld a, [$658f]                                 ; $47e4: $fa $8f $65
    ld e, d                                       ; $47e7: $5a
    and a                                         ; $47e8: $a7
    ccf                                           ; $47e9: $3f
    dec a                                         ; $47ea: $3d
    ld e, b                                       ; $47eb: $58
    ld b, [hl]                                    ; $47ec: $46
    ld d, h                                       ; $47ed: $54
    cp $c9                                        ; $47ee: $fe $c9
    ld l, c                                       ; $47f0: $69
    jp z, $aba1                                   ; $47f1: $ca $a1 $ab

    ld [hl], c                                    ; $47f4: $71
    push af                                       ; $47f5: $f5
    rrca                                          ; $47f6: $0f
    or c                                          ; $47f7: $b1
    ld a, [$d488]                                 ; $47f8: $fa $88 $d4
    ei                                            ; $47fb: $fb
    inc bc                                        ; $47fc: $03
    ld [c], a                                     ; $47fd: $e2
    add hl, hl                                    ; $47fe: $29
    add a                                         ; $47ff: $87
    dec b                                         ; $4800: $05
    jp c, $cb1d                                   ; $4801: $da $1d $cb

    adc $9c                                       ; $4804: $ce $9c
    add h                                         ; $4806: $84
    cp l                                          ; $4807: $bd
    xor b                                         ; $4808: $a8
    add l                                         ; $4809: $85
    db $f4                                        ; $480a: $f4
    ld h, c                                       ; $480b: $61
    ld sp, hl                                     ; $480c: $f9
    and l                                         ; $480d: $a5
    add hl, de                                    ; $480e: $19
    ld b, [hl]                                    ; $480f: $46
    scf                                           ; $4810: $37
    ld d, h                                       ; $4811: $54
    inc a                                         ; $4812: $3c
    ld b, $5a                                     ; $4813: $06 $5a
    db $fd                                        ; $4815: $fd
    or c                                          ; $4816: $b1
    ld [hl], d                                    ; $4817: $72
    or a                                          ; $4818: $b7
    cp $23                                        ; $4819: $fe $23
    and a                                         ; $481b: $a7
    ld l, c                                       ; $481c: $69
    ld l, $2f                                     ; $481d: $2e $2f
    ld h, $a9                                     ; $481f: $26 $a9
    rst $30                                       ; $4821: $f7
    rlca                                          ; $4822: $07
    db $db                                        ; $4823: $db
    cp e                                          ; $4824: $bb
    sub l                                         ; $4825: $95
    adc e                                         ; $4826: $8b
    ld [hl], a                                    ; $4827: $77
    halt                                          ; $4828: $76
    ld [hl], $40                                  ; $4829: $36 $40
    jp hl                                         ; $482b: $e9


    ld a, l                                       ; $482c: $7d
    db $e3                                        ; $482d: $e3
    ld [hl], $4a                                  ; $482e: $36 $4a
    call nc, $b1a7                                ; $4830: $d4 $a7 $b1
    ld [bc], a                                    ; $4833: $02
    ld h, $4d                                     ; $4834: $26 $4d
    dec hl                                        ; $4836: $2b
    ld b, a                                       ; $4837: $47
    db $eb                                        ; $4838: $eb
    dec [hl]                                      ; $4839: $35
    add $f4                                       ; $483a: $c6 $f4
    ld l, b                                       ; $483c: $68
    inc hl                                        ; $483d: $23
    or l                                          ; $483e: $b5
    dec hl                                        ; $483f: $2b
    xor d                                         ; $4840: $aa
    adc [hl]                                      ; $4841: $8e
    inc sp                                        ; $4842: $33
    ld [$6ddd], a                                 ; $4843: $ea $dd $6d
    sub b                                         ; $4846: $90
    push af                                       ; $4847: $f5
    ld de, $2695                                  ; $4848: $11 $95 $26
    ld [$9d53], a                                 ; $484b: $ea $53 $9d
    ld a, [hl+]                                   ; $484e: $2a
    db $ec                                        ; $484f: $ec
    or c                                          ; $4850: $b1
    ld a, $ec                                     ; $4851: $3e $ec
    and l                                         ; $4853: $a5
    ld b, a                                       ; $4854: $47
    ld h, a                                       ; $4855: $67
    jp $e207                                      ; $4856: $c3 $07 $e2


    sub l                                         ; $4859: $95
    cpl                                           ; $485a: $2f
    ld h, $59                                     ; $485b: $26 $59
    xor [hl]                                      ; $485d: $ae
    halt                                          ; $485e: $76
    xor a                                         ; $485f: $af
    sub a                                         ; $4860: $97
    cp e                                          ; $4861: $bb
    ld [$9b24], a                                 ; $4862: $ea $24 $9b
    and $f2                                       ; $4865: $e6 $f2
    ld h, d                                       ; $4867: $62
    sub d                                         ; $4868: $92
    dec c                                         ; $4869: $0d
    xor b                                         ; $486a: $a8
    rst $10                                       ; $486b: $d7
    sbc $4f                                       ; $486c: $de $4f
    push de                                       ; $486e: $d5
    ld [hl], l                                    ; $486f: $75
    dec c                                         ; $4870: $0d
    ld e, b                                       ; $4871: $58
    sbc $ff                                       ; $4872: $de $ff
    ld b, [hl]                                    ; $4874: $46
    ld a, c                                       ; $4875: $79
    ld a, a                                       ; $4876: $7f
    db $db                                        ; $4877: $db
    add h                                         ; $4878: $84
    db $d3                                        ; $4879: $d3
    ld [hl], l                                    ; $487a: $75
    ld c, l                                       ; $487b: $4d
    jp nc, $b2f3                                  ; $487c: $d2 $f3 $b2

    db $e3                                        ; $487f: $e3
    jp nc, $ac15                                  ; $4880: $d2 $15 $ac

    ld l, c                                       ; $4883: $69
    ld l, $2f                                     ; $4884: $2e $2f
    ld h, $a9                                     ; $4886: $26 $a9
    push hl                                       ; $4888: $e5
    rst $38                                       ; $4889: $ff
    inc h                                         ; $488a: $24
    dec de                                        ; $488b: $1b
    and [hl]                                      ; $488c: $a6
    sub a                                         ; $488d: $97
    xor [hl]                                      ; $488e: $ae
    db $d3                                        ; $488f: $d3
    adc l                                         ; $4890: $8d
    ld h, c                                       ; $4891: $61
    ld [hl], $fe                                  ; $4892: $36 $fe
    ld c, c                                       ; $4894: $49
    pop hl                                        ; $4895: $e1
    call c, $ef3d                                 ; $4896: $dc $3d $ef
    db $fd                                        ; $4899: $fd
    sub h                                         ; $489a: $94
    db $fd                                        ; $489b: $fd
    daa                                           ; $489c: $27
    ld a, d                                       ; $489d: $7a
    sbc l                                         ; $489e: $9d
    ld d, d                                       ; $489f: $52
    db $eb                                        ; $48a0: $eb
    adc a                                         ; $48a1: $8f
    push af                                       ; $48a2: $f5
    and a                                         ; $48a3: $a7
    ld d, e                                       ; $48a4: $53
    ld [hl], $50                                  ; $48a5: $36 $50
    dec bc                                        ; $48a7: $0b
    db $fd                                        ; $48a8: $fd
    add hl, de                                    ; $48a9: $19
    xor b                                         ; $48aa: $a8
    rst $30                                       ; $48ab: $f7
    rlca                                          ; $48ac: $07
    db $db                                        ; $48ad: $db
    dec hl                                        ; $48ae: $2b
    pop hl                                        ; $48af: $e1
    ld [$35f3], a                                 ; $48b0: $ea $f3 $35
    dec de                                        ; $48b3: $1b
    dec a                                         ; $48b4: $3d
    ld e, h                                       ; $48b5: $5c
    sub d                                         ; $48b6: $92
    xor h                                         ; $48b7: $ac
    ld [hl+], a                                   ; $48b8: $22
    and e                                         ; $48b9: $a3
    pop hl                                        ; $48ba: $e1
    ld d, c                                       ; $48bb: $51
    db $eb                                        ; $48bc: $eb
    adc a                                         ; $48bd: $8f
    ld d, l                                       ; $48be: $55
    ld hl, $2919                                  ; $48bf: $21 $19 $29
    ld a, [hl+]                                   ; $48c2: $2a
    sbc e                                         ; $48c3: $9b
    ld de, $ad33                                  ; $48c4: $11 $33 $ad
    ld [bc], a                                    ; $48c7: $02
    ld e, h                                       ; $48c8: $5c
    call z, Call_000_3ab4                         ; $48c9: $cc $b4 $3a
    ld e, c                                       ; $48cc: $59
    ld a, a                                       ; $48cd: $7f
    db $dd                                        ; $48ce: $dd
    add $80                                       ; $48cf: $c6 $80
    adc l                                         ; $48d1: $8d
    ld [de], a                                    ; $48d2: $12
    adc a                                         ; $48d3: $8f
    rst $30                                       ; $48d4: $f7
    rlca                                          ; $48d5: $07
    sub a                                         ; $48d6: $97
    ld hl, $a726                                  ; $48d7: $21 $26 $a7
    ld c, d                                       ; $48da: $4a
    rla                                           ; $48db: $17
    jr @-$5e                                      ; $48dc: $18 $a0

    dec c                                         ; $48de: $0d
    add sp, -$4d                                  ; $48df: $e8 $b3
    ld a, [$7634]                                 ; $48e1: $fa $34 $76
    sbc d                                         ; $48e4: $9a
    ld [hl], $20                                  ; $48e5: $36 $20
    or $1f                                        ; $48e7: $f6 $1f
    reti                                          ; $48e9: $d9


    xor c                                         ; $48ea: $a9
    add h                                         ; $48eb: $84
    xor e                                         ; $48ec: $ab
    rst $08                                       ; $48ed: $cf
    ld [hl], a                                    ; $48ee: $77
    scf                                           ; $48ef: $37
    ld h, c                                       ; $48f0: $61
    ld b, c                                       ; $48f1: $41
    ld sp, hl                                     ; $48f2: $f9
    adc a                                         ; $48f3: $8f
    dec b                                         ; $48f4: $05
    or $1f                                        ; $48f5: $f6 $1f
    ld e, c                                       ; $48f7: $59
    ld l, d                                       ; $48f8: $6a
    db $d3                                        ; $48f9: $d3
    ld e, h                                       ; $48fa: $5c
    ld e, [hl]                                    ; $48fb: $5e
    ld c, h                                       ; $48fc: $4c
    ld d, d                                       ; $48fd: $52
    db $eb                                        ; $48fe: $eb
    db $d3                                        ; $48ff: $d3
    ret c                                         ; $4900: $d8

    ld h, a                                       ; $4901: $67
    dec d                                         ; $4902: $15
    jr nc, @+$6b                                  ; $4903: $30 $69

    ld e, d                                       ; $4905: $5a
    db $d3                                        ; $4906: $d3
    or e                                          ; $4907: $b3
    ld a, b                                       ; $4908: $78
    ld [hl], c                                    ; $4909: $71
    ld a, a                                       ; $490a: $7f
    dec sp                                        ; $490b: $3b
    ld h, b                                       ; $490c: $60
    ld l, e                                       ; $490d: $6b
    ld c, l                                       ; $490e: $4d
    add hl, sp                                    ; $490f: $39
    sub h                                         ; $4910: $94
    db $dd                                        ; $4911: $dd
    ld l, d                                       ; $4912: $6a
    ld a, d                                       ; $4913: $7a
    ld [hl], a                                    ; $4914: $77
    db $db                                        ; $4915: $db
    sbc b                                         ; $4916: $98
    dec a                                         ; $4917: $3d
    ld l, l                                       ; $4918: $6d
    sbc d                                         ; $4919: $9a
    ld sp, $15c9                                  ; $491a: $31 $c9 $15
    db $eb                                        ; $491d: $eb
    inc h                                         ; $491e: $24
    cp e                                          ; $491f: $bb
    cp b                                          ; $4920: $b8
    call z, Call_06a_700a                         ; $4921: $cc $0a $70
    sbc d                                         ; $4924: $9a
    reti                                          ; $4925: $d9


    ld a, a                                       ; $4926: $7f
    ld h, d                                       ; $4927: $62
    ld [hl], $d6                                  ; $4928: $36 $d6
    ld c, c                                       ; $492a: $49
    ld [hl], $cd                                  ; $492b: $36 $cd
    push hl                                       ; $492d: $e5
    push bc                                       ; $492e: $c5
    inc h                                         ; $492f: $24
    scf                                           ; $4930: $37
    ld a, l                                       ; $4931: $7d
    ld [c], a                                     ; $4932: $e2
    call $a58e                                    ; $4933: $cd $8e $a5
    ld a, h                                       ; $4936: $7c
    ld l, c                                       ; $4937: $69
    halt                                          ; $4938: $76
    dec bc                                        ; $4939: $0b
    ld c, h                                       ; $493a: $4c
    cp [hl]                                       ; $493b: $be
    adc c                                         ; $493c: $89
    jr z, @+$01                                   ; $493d: $28 $ff

    or c                                          ; $493f: $b1
    ret nz                                        ; $4940: $c0

    cp $23                                        ; $4941: $fe $23
    ld c, e                                       ; $4943: $4b
    ld l, l                                       ; $4944: $6d
    sbc d                                         ; $4945: $9a
    res 1, e                                      ; $4946: $cb $8b
    ld c, c                                       ; $4948: $49
    ld l, d                                       ; $4949: $6a
    ld a, l                                       ; $494a: $7d
    ld a, [de]                                    ; $494b: $1a
    dec bc                                        ; $494c: $0b
    call $d02e                                    ; $494d: $cd $2e $d0
    xor $0f                                       ; $4950: $ee $0f
    sub a                                         ; $4952: $97
    ld hl, $a726                                  ; $4953: $21 $26 $a7
    xor h                                         ; $4956: $ac
    ld [hl+], a                                   ; $4957: $22
    ld a, [hl+]                                   ; $4958: $2a
    rst $10                                       ; $4959: $d7
    dec bc                                        ; $495a: $0b
    and a                                         ; $495b: $a7
    ld bc, $394d                                  ; $495c: $01 $4d $39
    adc b                                         ; $495f: $88
    ld a, [de]                                    ; $4960: $1a
    and b                                         ; $4961: $a0
    ld bc, $394d                                  ; $4962: $01 $4d $39
    ld [hl], h                                    ; $4965: $74
    push af                                       ; $4966: $f5
    ld h, h                                       ; $4967: $64
    ld a, l                                       ; $4968: $7d
    ld a, [de]                                    ; $4969: $1a
    cp e                                          ; $496a: $bb
    ld h, l                                       ; $496b: $65
    jp nc, Jump_06a_6882                          ; $496c: $d2 $82 $68

    ld e, c                                       ; $496f: $59
    ld b, l                                       ; $4970: $45

Jump_06a_4971:
    ld h, l                                       ; $4971: $65
    inc c                                         ; $4972: $0c
    ld d, e                                       ; $4973: $53
    push hl                                       ; $4974: $e5
    ld l, [hl]                                    ; $4975: $6e
    ld h, c                                       ; $4976: $61
    ld a, [de]                                    ; $4977: $1a
    ret c                                         ; $4978: $d8

    sbc a                                         ; $4979: $9f
    ld a, [$fef3]                                 ; $497a: $fa $f3 $fe
    nop                                           ; $497d: $00
    add hl, bc                                    ; $497e: $09
    ld c, a                                       ; $497f: $4f
    call nc, $8394                                ; $4980: $d4 $94 $83
    db $ec                                        ; $4983: $ec
    cp d                                          ; $4984: $ba
    and [hl]                                      ; $4985: $a6
    inc e                                         ; $4986: $1c
    sbc d                                         ; $4987: $9a
    sbc a                                         ; $4988: $9f
    adc l                                         ; $4989: $8d
    db $eb                                        ; $498a: $eb
    ld l, b                                       ; $498b: $68
    dec h                                         ; $498c: $25
    sbc h                                         ; $498d: $9c
    sub $33                                       ; $498e: $d6 $33
    bit 5, b                                      ; $4990: $cb $68
    inc bc                                        ; $4992: $03
    ld a, [$0973]                                 ; $4993: $fa $73 $09
    ld a, b                                       ; $4996: $78
    ld h, $9c                                     ; $4997: $26 $9c
    ld c, l                                       ; $4999: $4d
    rra                                           ; $499a: $1f
    db $db                                        ; $499b: $db
    xor b                                         ; $499c: $a8
    and l                                         ; $499d: $a5
    ld e, e                                       ; $499e: $5b
    xor b                                         ; $499f: $a8
    dec c                                         ; $49a0: $0d
    db $d3                                        ; $49a1: $d3
    dec e                                         ; $49a2: $1d
    sub c                                         ; $49a3: $91
    ld a, $44                                     ; $49a4: $3e $44

jr_06a_49a6:
    call $c988                                    ; $49a6: $cd $88 $c9
    add hl, hl                                    ; $49a9: $29
    xor e                                         ; $49aa: $ab
    adc b                                         ; $49ab: $88
    jp z, $c2f5                                   ; $49ac: $ca $f5 $c2

    ld l, c                                       ; $49af: $69
    ld b, b                                       ; $49b0: $40
    ld d, e                                       ; $49b1: $53
    ld c, $65                                     ; $49b2: $0e $65
    inc c                                         ; $49b4: $0c
    ld d, e                                       ; $49b5: $53
    sub $7f                                       ; $49b6: $d6 $7f
    ld c, d                                       ; $49b8: $4a
    db $eb                                        ; $49b9: $eb
    xor h                                         ; $49ba: $ac
    ld b, [hl]                                    ; $49bb: $46
    rst $28                                       ; $49bc: $ef
    rrca                                          ; $49bd: $0f
    add hl, bc                                    ; $49be: $09
    sbc d                                         ; $49bf: $9a
    rst $00                                       ; $49c0: $c7
    dec [hl]                                      ; $49c1: $35
    dec bc                                        ; $49c2: $0b
    and a                                         ; $49c3: $a7
    ccf                                           ; $49c4: $3f
    and e                                         ; $49c5: $a3
    ld [hl-], a                                   ; $49c6: $32
    adc h                                         ; $49c7: $8c
    xor b                                         ; $49c8: $a8
    cp d                                          ; $49c9: $ba
    ld a, e                                       ; $49ca: $7b
    ld d, e                                       ; $49cb: $53
    ld c, $36                                     ; $49cc: $0e $36
    and l                                         ; $49ce: $a5
    rst $10                                       ; $49cf: $d7
    push bc                                       ; $49d0: $c5
    ld b, b                                       ; $49d1: $40
    db $db                                        ; $49d2: $db
    jr z, jr_06a_49a6                             ; $49d3: $28 $d1

    add sp, $24                                   ; $49d5: $e8 $24
    db $eb                                        ; $49d7: $eb
    pop bc                                        ; $49d8: $c1
    jp nz, $9172                                  ; $49d9: $c2 $72 $91

    db $e3                                        ; $49dc: $e3
    ld h, l                                       ; $49dd: $65
    ld h, b                                       ; $49de: $60
    inc bc                                        ; $49df: $03
    ld [$5223], a                                 ; $49e0: $ea $23 $52
    rst $28                                       ; $49e3: $ef
    rrca                                          ; $49e4: $0f
    db $db                                        ; $49e5: $db
    db $eb                                        ; $49e6: $eb
    db $db                                        ; $49e7: $db
    ld a, b                                       ; $49e8: $78
    ld d, $48                                     ; $49e9: $16 $48
    ld [hl], $50                                  ; $49eb: $36 $50
    sbc e                                         ; $49ed: $9b
    and $f2                                       ; $49ee: $e6 $f2
    ld h, d                                       ; $49f0: $62
    sub d                                         ; $49f1: $92
    jp c, $ad65                                   ; $49f2: $da $65 $ad

    sbc $31                                       ; $49f5: $de $31
    ld d, $9a                                     ; $49f7: $16 $9a
    rst $10                                       ; $49f9: $d7
    jp z, $df7a                                   ; $49fa: $ca $7a $df

    ld c, a                                       ; $49fd: $4f
    xor e                                         ; $49fe: $ab
    xor [hl]                                      ; $49ff: $ae
    or e                                          ; $4a00: $b3
    scf                                           ; $4a01: $37
    rst $30                                       ; $4a02: $f7
    rlca                                          ; $4a03: $07
    rst $20                                       ; $4a04: $e7
    ld b, d                                       ; $4a05: $42
    ld a, a                                       ; $4a06: $7f
    or a                                          ; $4a07: $b7
    ld hl, sp+$14                                 ; $4a08: $f8 $14
    dec [hl]                                      ; $4a0a: $35
    ld a, [bc]                                    ; $4a0b: $0a
    and a                                         ; $4a0c: $a7
    ld [de], a                                    ; $4a0d: $12
    and l                                         ; $4a0e: $a5
    adc a                                         ; $4a0f: $8f
    adc h                                         ; $4a10: $8c
    rra                                           ; $4a11: $1f
    db $fd                                        ; $4a12: $fd
    daa                                           ; $4a13: $27
    xor [hl]                                      ; $4a14: $ae
    ld h, b                                       ; $4a15: $60
    ld c, d                                       ; $4a16: $4a
    cp e                                          ; $4a17: $bb
    cp e                                          ; $4a18: $bb
    ld h, l                                       ; $4a19: $65
    inc b                                         ; $4a1a: $04
    and b                                         ; $4a1b: $a0
    ld a, [$9e62]                                 ; $4a1c: $fa $62 $9e
    adc l                                         ; $4a1f: $8d
    ld [de], a                                    ; $4a20: $12
    sub l                                         ; $4a21: $95
    xor $e5                                       ; $4a22: $ee $e5
    add hl, hl                                    ; $4a24: $29
    ld h, h                                       ; $4a25: $64
    dec a                                         ; $4a26: $3d
    ld a, h                                       ; $4a27: $7c
    add d                                         ; $4a28: $82
    rst $20                                       ; $4a29: $e7
    cp $00                                        ; $4a2a: $fe $00
    add hl, bc                                    ; $4a2c: $09
    xor [hl]                                      ; $4a2d: $ae
    rst $38                                       ; $4a2e: $ff
    ld e, d                                       ; $4a2f: $5a
    ld sp, hl                                     ; $4a30: $f9
    daa                                           ; $4a31: $27
    and a                                         ; $4a32: $a7
    add hl, hl                                    ; $4a33: $29
    add a                                         ; $4a34: $87
    ld c, [hl]                                    ; $4a35: $4e
    ld [hl], a                                    ; $4a36: $77
    ld b, h                                       ; $4a37: $44
    ld a, [$3428]                                 ; $4a38: $fa $28 $34
    xor a                                         ; $4a3b: $af
    ld d, l                                       ; $4a3c: $55
    ld [hl], a                                    ; $4a3d: $77
    cpl                                           ; $4a3e: $2f
    sbc e                                         ; $4a3f: $9b
    ld de, $ad33                                  ; $4a40: $11 $33 $ad
    sbc $31                                       ; $4a43: $de $31
    and e                                         ; $4a45: $a3
    ld [hl], l                                    ; $4a46: $75
    xor d                                         ; $4a47: $aa
    ld [hl], b                                    ; $4a48: $70
    adc l                                         ; $4a49: $8d
    cpl                                           ; $4a4a: $2f
    ld h, $e7                                     ; $4a4b: $26 $e7
    cp $00                                        ; $4a4d: $fe $00
    ld d, a                                       ; $4a4f: $57
    adc h                                         ; $4a50: $8c
    xor e                                         ; $4a51: $ab
    ld c, a                                       ; $4a52: $4f
    ld h, e                                       ; $4a53: $63
    ld e, c                                       ; $4a54: $59
    push hl                                       ; $4a55: $e5
    jp nz, Jump_06a_5406                          ; $4a56: $c2 $06 $54

    xor $a1                                       ; $4a59: $ee $a1
    rst $28                                       ; $4a5b: $ef
    ld h, a                                       ; $4a5c: $67
    ld hl, $87d8                                  ; $4a5d: $21 $d8 $87
    dec a                                         ; $4a60: $3d
    adc c                                         ; $4a61: $89
    sbc b                                         ; $4a62: $98
    ld l, c                                       ; $4a63: $69
    and l                                         ; $4a64: $a5
    ld d, [hl]                                    ; $4a65: $56
    cp [hl]                                       ; $4a66: $be
    sbc b                                         ; $4a67: $98
    and h                                         ; $4a68: $a4
    sub $c3                                       ; $4a69: $d6 $c3
    sub h                                         ; $4a6b: $94
    ld b, e                                       ; $4a6c: $43
    and [hl]                                      ; $4a6d: $a6
    ld [hl], $ce                                  ; $4a6e: $36 $ce
    adc d                                         ; $4a70: $8a
    ld a, d                                       ; $4a71: $7a
    ld a, a                                       ; $4a72: $7f
    db $db                                        ; $4a73: $db
    add h                                         ; $4a74: $84
    ld d, e                                       ; $4a75: $53
    ld l, b                                       ; $4a76: $68
    halt                                          ; $4a77: $76
    ld bc, $53af                                  ; $4a78: $01 $af $53
    ld [hl], l                                    ; $4a7b: $75
    sbc $f7                                       ; $4a7c: $de $f7
    ccf                                           ; $4a7e: $3f
    call nz, $fa8c                                ; $4a7f: $c4 $8c $fa
    inc [hl]                                      ; $4a82: $34
    halt                                          ; $4a83: $76
    sbc d                                         ; $4a84: $9a
    and c                                         ; $4a85: $a1
    add hl, de                                    ; $4a86: $19
    ld [hl], a                                    ; $4a87: $77
    push bc                                       ; $4a88: $c5
    rst $38                                       ; $4a89: $ff
    db $e4                                        ; $4a8a: $e4
    inc [hl]                                      ; $4a8b: $34
    push hl                                       ; $4a8c: $e5
    ret nc                                        ; $4a8d: $d0

    push de                                       ; $4a8e: $d5
    cp b                                          ; $4a8f: $b8
    ld h, [hl]                                    ; $4a90: $66
    ld e, b                                       ; $4a91: $58
    inc bc                                        ; $4a92: $03
    ld a, [$6fa4]                                 ; $4a93: $fa $a4 $6f
    or e                                          ; $4a96: $b3
    ld a, d                                       ; $4a97: $7a
    ld c, d                                       ; $4a98: $4a
    cp e                                          ; $4a99: $bb
    ccf                                           ; $4a9a: $3f
    db $db                                        ; $4a9b: $db
    db $dd                                        ; $4a9c: $dd
    ld [$bc35], a                                 ; $4a9d: $ea $35 $bc
    ld e, l                                       ; $4aa0: $5d
    or b                                          ; $4aa1: $b0
    and [hl]                                      ; $4aa2: $a6
    inc e                                         ; $4aa3: $1c
    ld a, [hl-]                                   ; $4aa4: $3a
    cp l                                          ; $4aa5: $bd
    call nz, $333d                                ; $4aa6: $c4 $3d $33
    inc l                                         ; $4aa9: $2c
    ld c, e                                       ; $4aaa: $4b
    ld sp, hl                                     ; $4aab: $f9
    ld h, d                                       ; $4aac: $62
    ld h, b                                       ; $4aad: $60
    cp l                                          ; $4aae: $bd
    rst $28                                       ; $4aaf: $ef
    ld h, a                                       ; $4ab0: $67
    dec d                                         ; $4ab1: $15
    or d                                          ; $4ab2: $b2
    ccf                                           ; $4ab3: $3f

Call_06a_4ab4:
Jump_06a_4ab4:
    dec a                                         ; $4ab4: $3d
    ld e, b                                       ; $4ab5: $58
    rst $08                                       ; $4ab6: $cf
    ld a, [hl+]                                   ; $4ab7: $2a
    ld c, d                                       ; $4ab8: $4a
    xor l                                         ; $4ab9: $ad
    ld a, [hl-]                                   ; $4aba: $3a
    ld l, d                                       ; $4abb: $6a
    jp hl                                         ; $4abc: $e9


    ld d, $6a                                     ; $4abd: $16 $6a
    and e                                         ; $4abf: $a3
    ld [hl], b                                    ; $4ac0: $70
    ld a, [hl+]                                   ; $4ac1: $2a
    or c                                          ; $4ac2: $b1
    inc h                                         ; $4ac3: $24
    rst $00                                       ; $4ac4: $c7
    ld l, b                                       ; $4ac5: $68
    sub b                                         ; $4ac6: $90
    rst $30                                       ; $4ac7: $f7
    rlca                                          ; $4ac8: $07
    ld [c], a                                     ; $4ac9: $e2
    ld c, l                                       ; $4aca: $4d
    or h                                          ; $4acb: $b4
    pop af                                        ; $4acc: $f1
    ld b, d                                       ; $4acd: $42
    ld [hl], l                                    ; $4ace: $75
    adc h                                         ; $4acf: $8c
    db $dd                                        ; $4ad0: $dd
    ld a, [$3f9f]                                 ; $4ad1: $fa $9f $3f
    sub c                                         ; $4ad4: $91
    ld l, c                                       ; $4ad5: $69
    ld l, $4b                                     ; $4ad6: $2e $4b
    rst $10                                       ; $4ad8: $d7

jr_06a_4ad9:
    push af                                       ; $4ad9: $f5
    rra                                           ; $4ada: $1f
    add hl, sp                                    ; $4adb: $39
    ld [hl], l                                    ; $4adc: $75
    sub d                                         ; $4add: $92
    sub l                                         ; $4ade: $95
    ld b, d                                       ; $4adf: $42
    ld l, h                                       ; $4ae0: $6c
    ld c, h                                       ; $4ae1: $4c
    ld [hl], e                                    ; $4ae2: $73
    ld a, c                                       ; $4ae3: $79
    ld sp, $fac9                                  ; $4ae4: $31 $c9 $fa
    inc [hl]                                      ; $4ae7: $34
    ld [hl], $4f                                  ; $4ae8: $36 $4f
    jr jr_06a_4ad9                                ; $4aea: $18 $ed

    ld l, b                                       ; $4aec: $68
    rst $08                                       ; $4aed: $cf
    or a                                          ; $4aee: $b7
    sbc l                                         ; $4aef: $9d
    ld e, [hl]                                    ; $4af0: $5e
    rst $28                                       ; $4af1: $ef
    adc e                                         ; $4af2: $8b
    ld h, c                                       ; $4af3: $61
    ld c, h                                       ; $4af4: $4c
    rst $28                                       ; $4af5: $ef
    rrca                                          ; $4af6: $0f
    ld [c], a                                     ; $4af7: $e2
    db $fd                                        ; $4af8: $fd
    add hl, de                                    ; $4af9: $19
    dec b                                         ; $4afa: $05
    or b                                          ; $4afb: $b0
    ld bc, $734d                                  ; $4afc: $01 $4d $73
    ld a, c                                       ; $4aff: $79
    ld sp, $a6c9                                  ; $4b00: $31 $c9 $a6
    inc e                                         ; $4b03: $1c
    sbc d                                         ; $4b04: $9a
    rst $18                                       ; $4b05: $df
    ld a, [bc]                                    ; $4b06: $0a

jr_06a_4b07:
    ld [hl], d                                    ; $4b07: $72
    or h                                          ; $4b08: $b4
    ret                                           ; $4b09: $c9


Jump_06a_4b0a:
    ld de, $7280                                  ; $4b0a: $11 $80 $72
    jp z, $ce45                                   ; $4b0d: $ca $45 $ce

    ld a, [$3429]                                 ; $4b10: $fa $29 $34
    ld [hl], e                                    ; $4b13: $73
    push bc                                       ; $4b14: $c5
    ld b, d                                       ; $4b15: $42
    ldh a, [$8f]                                  ; $4b16: $f0 $8f
    dec b                                         ; $4b18: $05
    ld sp, $c363                                  ; $4b19: $31 $63 $c3
    rlca                                          ; $4b1c: $07
    add hl, bc                                    ; $4b1d: $09
    sbc d                                         ; $4b1e: $9a
    rst $00                                       ; $4b1f: $c7
    ld d, l                                       ; $4b20: $55
    ld b, d                                       ; $4b21: $42
    push hl                                       ; $4b22: $e5
    sub h                                         ; $4b23: $94
    ld c, l                                       ; $4b24: $4d
    adc a                                         ; $4b25: $8f
    ld h, [hl]                                    ; $4b26: $66
    ld e, d                                       ; $4b27: $5a
    inc bc                                        ; $4b28: $03
    ld a, [bc]                                    ; $4b29: $0a
    db $fd                                        ; $4b2a: $fd
    dec c                                         ; $4b2b: $0d
    dec hl                                        ; $4b2c: $2b
    ld e, b                                       ; $4b2d: $58
    rst $38                                       ; $4b2e: $ff
    sub c                                         ; $4b2f: $91
    ld [hl], l                                    ; $4b30: $75
    sub d                                         ; $4b31: $92
    push af                                       ; $4b32: $f5
    ld de, $7f79                                  ; $4b33: $11 $79 $7f
    rst $20                                       ; $4b36: $e7
    adc h                                         ; $4b37: $8c
    ld l, h                                       ; $4b38: $6c
    ld [hl], $7a                                  ; $4b39: $36 $7a
    cp b                                          ; $4b3b: $b8
    inc h                                         ; $4b3c: $24
    ld b, a                                       ; $4b3d: $47
    call nc, $342d                                ; $4b3e: $d4 $2d $34
    db $db                                        ; $4b41: $db
    cp c                                          ; $4b42: $b9
    pop hl                                        ; $4b43: $e1
    inc bc                                        ; $4b44: $03
    ld e, e                                       ; $4b45: $5b
    cp c                                          ; $4b46: $b9
    call nc, $d51f                                ; $4b47: $d4 $1f $d5
    add hl, hl                                    ; $4b4a: $29
    call nc, $d187                                ; $4b4b: $d4 $87 $d1
    sbc d                                         ; $4b4e: $9a
    ld [hl], d                                    ; $4b4f: $72
    jr z, jr_06a_4b07                             ; $4b50: $28 $b5

    ld [hl], h                                    ; $4b52: $74
    dec bc                                        ; $4b53: $0b
    or l                                          ; $4b54: $b5
    rst $38                                       ; $4b55: $ff
    ld c, b                                       ; $4b56: $48
    db $fc                                        ; $4b57: $fc
    sub b                                         ; $4b58: $90
    dec de                                        ; $4b59: $1b
    ld a, d                                       ; $4b5a: $7a
    reti                                          ; $4b5b: $d9


    add h                                         ; $4b5c: $84
    pop de                                        ; $4b5d: $d1
    adc [hl]                                      ; $4b5e: $8e
    or $4a                                        ; $4b5f: $f6 $4a
    ld d, b                                       ; $4b61: $50
    rla                                           ; $4b62: $17
    db $ec                                        ; $4b63: $ec
    call nc, $84ae                                ; $4b64: $d4 $ae $84
    ld d, e                                       ; $4b67: $53
    sbc a                                         ; $4b68: $9f
    add $6e                                       ; $4b69: $c6 $6e
    sbc c                                         ; $4b6b: $99
    or h                                          ; $4b6c: $b4
    jr nz, jr_06a_4bc9                            ; $4b6d: $20 $5a

    sub $fb                                       ; $4b6f: $d6 $fb
    inc bc                                        ; $4b71: $03
    ld e, e                                       ; $4b72: $5b
    db $dd                                        ; $4b73: $dd
    bit 2, e                                      ; $4b74: $cb $53
    rrca                                          ; $4b76: $0f
    db $e4                                        ; $4b77: $e4
    add [hl]                                      ; $4b78: $86
    ld h, $a8                                     ; $4b79: $26 $a8
    rrca                                          ; $4b7b: $0f
    sbc e                                         ; $4b7c: $9b
    and [hl]                                      ; $4b7d: $a6
    inc e                                         ; $4b7e: $1c
    sbc d                                         ; $4b7f: $9a
    add hl, hl                                    ; $4b80: $29
    dec a                                         ; $4b81: $3d
    db $eb                                        ; $4b82: $eb
    ld h, h                                       ; $4b83: $64
    cp l                                          ; $4b84: $bd
    cpl                                           ; $4b85: $2f
    push hl                                       ; $4b86: $e5
    ld d, b                                       ; $4b87: $50
    ret z                                         ; $4b88: $c8

    sbc [hl]                                      ; $4b89: $9e
    ld l, a                                       ; $4b8a: $6f
    dec sp                                        ; $4b8b: $3b
    cp l                                          ; $4b8c: $bd
    sbc $17                                       ; $4b8d: $de $17
    jp $86d8                                      ; $4b8f: $c3 $d8 $86


    rrca                                          ; $4b92: $0f
    ld [c], a                                     ; $4b93: $e2
    ld c, e                                       ; $4b94: $4b
    jp c, Jump_06a_6d45                           ; $4b95: $da $45 $6d

    jp c, Jump_06a_779e                           ; $4b98: $da $9e $77

    or h                                          ; $4b9b: $b4
    ld sp, hl                                     ; $4b9c: $f9
    ld b, b                                       ; $4b9d: $40
    reti                                          ; $4b9e: $d9


    add b                                         ; $4b9f: $80
    sbc b                                         ; $4ba0: $98
    and c                                         ; $4ba1: $a1
    and d                                         ; $4ba2: $a2
    ld [hl], d                                    ; $4ba3: $72
    ld e, c                                       ; $4ba4: $59
    daa                                           ; $4ba5: $27
    dec de                                        ; $4ba6: $1b
    ld d, b                                       ; $4ba7: $50
    rst $08                                       ; $4ba8: $cf
    ei                                            ; $4ba9: $fb
    ld b, a                                       ; $4baa: $47
    rst $28                                       ; $4bab: $ef
    rrca                                          ; $4bac: $0f
    ld [c], a                                     ; $4bad: $e2
    jp c, $9734                                   ; $4bae: $da $34 $97

    rla                                           ; $4bb1: $17
    sub e                                         ; $4bb2: $93
    call nc, Call_000_13fa                        ; $4bb3: $d4 $fa $13
    jr nz, jr_06a_4bd3                            ; $4bb6: $20 $1b

    add l                                         ; $4bb8: $85
    db $d3                                        ; $4bb9: $d3
    inc c                                         ; $4bba: $0c
    db $eb                                        ; $4bbb: $eb
    or d                                          ; $4bbc: $b2
    and $79                                       ; $4bbd: $e6 $79
    and e                                         ; $4bbf: $a3
    and d                                         ; $4bc0: $a2
    ld c, d                                       ; $4bc1: $4a
    ld l, d                                       ; $4bc2: $6a
    cp c                                          ; $4bc3: $b9
    and h                                         ; $4bc4: $a4
    ld e, l                                       ; $4bc5: $5d
    call nc, $eda6                                ; $4bc6: $d4 $a6 $ed

jr_06a_4bc9:
    ld a, c                                       ; $4bc9: $79
    ld b, a                                       ; $4bca: $47
    sbc e                                         ; $4bcb: $9b
    rrca                                          ; $4bcc: $0f
    sub h                                         ; $4bcd: $94

Call_06a_4bce:
    dec c                                         ; $4bce: $0d
    adc b                                         ; $4bcf: $88
    add hl, de                                    ; $4bd0: $19
    ld a, d                                       ; $4bd1: $7a
    ld a, a                                       ; $4bd2: $7f

jr_06a_4bd3:
    add hl, bc                                    ; $4bd3: $09
    sbc d                                         ; $4bd4: $9a
    rst $00                                       ; $4bd5: $c7
    dec [hl]                                      ; $4bd6: $35
    dec bc                                        ; $4bd7: $0b
    and a                                         ; $4bd8: $a7
    rst $38                                       ; $4bd9: $ff
    call nz, $988c                                ; $4bda: $c4 $8c $98
    ld d, c                                       ; $4bdd: $51
    ld a, a                                       ; $4bde: $7f
    xor h                                         ; $4bdf: $ac
    ret nc                                        ; $4be0: $d0

    ld c, h                                       ; $4be1: $4c
    dec hl                                        ; $4be2: $2b
    ld d, e                                       ; $4be3: $53
    xor $6d                                       ; $4be4: $ee $6d
    add sp, $15                                   ; $4be6: $e8 $15
    db $e3                                        ; $4be8: $e3
    ld c, d                                       ; $4be9: $4a
    rst $18                                       ; $4bea: $df
    db $10                                        ; $4beb: $10
    inc bc                                        ; $4bec: $03
    xor h                                         ; $4bed: $ac
    sbc c                                         ; $4bee: $99
    ld sp, $d14f                                  ; $4bef: $31 $4f $d1
    inc c                                         ; $4bf2: $0c
    ld l, e                                       ; $4bf3: $6b
    ld d, $4e                                     ; $4bf4: $16 $4e
    dec a                                         ; $4bf6: $3d
    ld b, e                                       ; $4bf7: $43
    ld l, l                                       ; $4bf8: $6d
    sbc h                                         ; $4bf9: $9c
    ld c, h                                       ; $4bfa: $4c
    db $dd                                        ; $4bfb: $dd
    ldh a, [rSB]                                  ; $4bfc: $f0 $01
    adc c                                         ; $4bfe: $89
    ld h, e                                       ; $4bff: $63
    add hl, hl                                    ; $4c00: $29
    add a                                         ; $4c01: $87
    xor [hl]                                      ; $4c02: $ae
    ld l, e                                       ; $4c03: $6b
    jp z, $d4a1                                   ; $4c04: $ca $a1 $d4

    ld c, d                                       ; $4c07: $4a
    add $a4                                       ; $4c08: $c6 $a4
    ld d, b                                       ; $4c0a: $50
    ei                                            ; $4c0b: $fb
    daa                                           ; $4c0c: $27
    sub c                                         ; $4c0d: $91
    and [hl]                                      ; $4c0e: $a6
    ld l, h                                       ; $4c0f: $6c
    ld d, $4e                                     ; $4c10: $16 $4e
    ld a, a                                       ; $4c12: $7f
    add h                                         ; $4c13: $84
    reti                                          ; $4c14: $d9


    db $f4                                        ; $4c15: $f4
    ld bc, $ae09                                  ; $4c16: $01 $09 $ae
    sbc $f7                                       ; $4c19: $de $f7
    ld c, a                                       ; $4c1b: $4f
    ld de, $d3b3                                  ; $4c1c: $11 $b3 $d3
    ld b, a                                       ; $4c1f: $47
    sub l                                         ; $4c20: $95
    inc c                                         ; $4c21: $0c
    db $d3                                        ; $4c22: $d3
    ld a, a                                       ; $4c23: $7f
    ld h, h                                       ; $4c24: $64
    and a                                         ; $4c25: $a7
    cp [hl]                                       ; $4c26: $be
    dec a                                         ; $4c27: $3d
    adc c                                         ; $4c28: $89
    ld h, a                                       ; $4c29: $67
    db $d3                                        ; $4c2a: $d3
    ldh a, [$d8]                                  ; $4c2b: $f0 $d8
    add b                                         ; $4c2d: $80

Call_06a_4c2e:
    jp nc, $d42d                                  ; $4c2e: $d2 $2d $d4

    ld l, $93                                     ; $4c31: $2e $93
    sbc [hl]                                      ; $4c33: $9e
    ld d, d                                       ; $4c34: $52
    push af                                       ; $4c35: $f5
    ret                                           ; $4c36: $c9


    and [hl]                                      ; $4c37: $a6
    inc e                                         ; $4c38: $1c
    jp z, $2c7f                                   ; $4c39: $ca $7f $2c

    ret nc                                        ; $4c3c: $d0

    xor $0f                                       ; $4c3d: $ee $0f
    db $db                                        ; $4c3f: $db
    add h                                         ; $4c40: $84
    ld d, e                                       ; $4c41: $53
    and l                                         ; $4c42: $a5
    rlca                                          ; $4c43: $07
    jp c, $9888                                   ; $4c44: $da $88 $98

    ld [hl], h                                    ; $4c47: $74
    sub d                                         ; $4c48: $92
    db $dd                                        ; $4c49: $dd
    inc a                                         ; $4c4a: $3c
    jp nc, Jump_000_22f3                          ; $4c4b: $d2 $f3 $22

    rst $10                                       ; $4c4e: $d7
    dec bc                                        ; $4c4f: $0b
    and a                                         ; $4c50: $a7
    ld bc, $6cdd                                  ; $4c51: $01 $dd $6c
    inc hl                                        ; $4c54: $23
    ld b, a                                       ; $4c55: $47
    scf                                           ; $4c56: $37
    ld a, h                                       ; $4c57: $7c
    rst $20                                       ; $4c58: $e7
    ld b, b                                       ; $4c59: $40
    ld l, [hl]                                    ; $4c5a: $6e
    ld e, h                                       ; $4c5b: $5c
    cp l                                          ; $4c5c: $bd
    jr jr_06a_4ca5                                ; $4c5d: $18 $46

    call nc, $342d                                ; $4c5f: $d4 $2d $34
    db $db                                        ; $4c62: $db
    ld a, c                                       ; $4c63: $79
    or a                                          ; $4c64: $b7
    adc c                                         ; $4c65: $89
    ld h, e                                       ; $4c66: $63
    call $8668                                    ; $4c67: $cd $68 $86
    ld b, c                                       ; $4c6a: $41
    db $eb                                        ; $4c6b: $eb
    adc a                                         ; $4c6c: $8f
    ld h, l                                       ; $4c6d: $65
    add [hl]                                      ; $4c6e: $86
    ld l, c                                       ; $4c6f: $69
    ld d, $4e                                     ; $4c70: $16 $4e
    dec a                                         ; $4c72: $3d
    sub b                                         ; $4c73: $90
    db $fd                                        ; $4c74: $fd
    ld b, a                                       ; $4c75: $47
    sub [hl]                                      ; $4c76: $96
    call Call_06a_5d8e                            ; $4c77: $cd $8e $5d
    ld d, c                                       ; $4c7a: $51
    ld [hl], l                                    ; $4c7b: $75
    sbc h                                         ; $4c7c: $9c
    or c                                          ; $4c7d: $b1
    ret                                           ; $4c7e: $c9


    or l                                          ; $4c7f: $b5
    ld a, [$fee3]                                 ; $4c80: $fa $e3 $fe
    ld de, $9595                                  ; $4c83: $11 $95 $95
    cpl                                           ; $4c86: $2f
    ld h, $59                                     ; $4c87: $26 $59
    jp $d23f                                      ; $4c89: $c3 $3f $d2


    ld b, a                                       ; $4c8c: $47
    ld d, h                                       ; $4c8d: $54
    halt                                          ; $4c8e: $76
    ld e, l                                       ; $4c8f: $5d
    or e                                          ; $4c90: $b3
    pop hl                                        ; $4c91: $e1
    ld b, l                                       ; $4c92: $45
    ld a, [de]                                    ; $4c93: $1a
    or h                                          ; $4c94: $b4
    xor h                                         ; $4c95: $ac
    rrca                                          ; $4c96: $0f
    ld d, e                                       ; $4c97: $53
    and h                                         ; $4c98: $a4
    db $dd                                        ; $4c99: $dd
    or e                                          ; $4c9a: $b3
    ld a, [hl-]                                   ; $4c9b: $3a
    ret                                           ; $4c9c: $c9


    cp $63                                        ; $4c9d: $fe $63
    ld c, [hl]                                    ; $4c9f: $4e
    nop                                           ; $4ca0: $00
    rst $28                                       ; $4ca1: $ef
    rrca                                          ; $4ca2: $0f
    rst $20                                       ; $4ca3: $e7
    adc h                                         ; $4ca4: $8c

jr_06a_4ca5:
    ld l, h                                       ; $4ca5: $6c
    ld [hl], $7a                                  ; $4ca6: $36 $7a
    cp b                                          ; $4ca8: $b8
    inc h                                         ; $4ca9: $24
    ld b, a                                       ; $4caa: $47
    call nc, $342d                                ; $4cab: $d4 $2d $34
    db $db                                        ; $4cae: $db
    ld a, c                                       ; $4caf: $79
    or a                                          ; $4cb0: $b7
    ld d, a                                       ; $4cb1: $57

jr_06a_4cb2:
    call z, $5992                                 ; $4cb2: $cc $92 $59
    add l                                         ; $4cb5: $85
    db $f4                                        ; $4cb6: $f4
    dec c                                         ; $4cb7: $0d
    ld c, l                                       ; $4cb8: $4d
    add hl, sp                                    ; $4cb9: $39
    inc [hl]                                      ; $4cba: $34

jr_06a_4cbb:
    push hl                                       ; $4cbb: $e5
    sbc [hl]                                      ; $4cbc: $9e
    jp nz, $f5a0                                  ; $4cbd: $c2 $a0 $f5

    ld l, c                                       ; $4cc0: $69
    db $ec                                        ; $4cc1: $ec
    ld l, d                                       ; $4cc2: $6a
    ld l, b                                       ; $4cc3: $68
    sub l                                         ; $4cc4: $95
    ld a, h                                       ; $4cc5: $7c
    ld e, d                                       ; $4cc6: $5a
    daa                                           ; $4cc7: $27
    db $eb                                        ; $4cc8: $eb
    adc a                                         ; $4cc9: $8f
    ei                                            ; $4cca: $fb
    rst $20                                       ; $4ccb: $e7
    cp $00                                        ; $4ccc: $fe $00
    ld [c], a                                     ; $4cce: $e2
    ld c, e                                       ; $4ccf: $4b
    jp c, $93ad                                   ; $4cd0: $da $ad $93

    dec c                                         ; $4cd3: $0d
    ld c, a                                       ; $4cd4: $4f
    dec d                                         ; $4cd5: $15
    push af                                       ; $4cd6: $f5
    ld l, c                                       ; $4cd7: $69
    xor h                                         ; $4cd8: $ac
    ld l, a                                       ; $4cd9: $6f
    di                                            ; $4cda: $f3
    dec sp                                        ; $4cdb: $3b
    and e                                         ; $4cdc: $a3
    ld [hl], l                                    ; $4cdd: $75
    ld [$cc65], a                                 ; $4cde: $ea $65 $cc
    ld d, h                                       ; $4ce1: $54
    ret                                           ; $4ce2: $c9


    ld b, $f4                                     ; $4ce3: $06 $f4
    ld a, h                                       ; $4ce5: $7c
    db $db                                        ; $4ce6: $db
    jp hl                                         ; $4ce7: $e9


    push af                                       ; $4ce8: $f5
    cp [hl]                                       ; $4ce9: $be
    jr jr_06a_4cb2                                ; $4cea: $18 $c6

    xor $6e                                       ; $4cec: $ee $6e
    inc de                                        ; $4cee: $13
    ld c, [hl]                                    ; $4cef: $4e
    and a                                         ; $4cf0: $a7
    dec hl                                        ; $4cf1: $2b
    ld [$fe98], sp                                ; $4cf2: $08 $98 $fe
    ld l, e                                       ; $4cf5: $6b
    add l                                         ; $4cf6: $85
    db $ec                                        ; $4cf7: $ec
    rst $38                                       ; $4cf8: $ff
    inc h                                         ; $4cf9: $24
    rst $28                                       ; $4cfa: $ef
    rrca                                          ; $4cfb: $0f
    db $db                                        ; $4cfc: $db
    db $eb                                        ; $4cfd: $eb
    ld h, l                                       ; $4cfe: $65
    call z, $c954                                 ; $4cff: $cc $54 $c9
    ld a, [hl+]                                   ; $4d02: $2a
    dec a                                         ; $4d03: $3d
    jr z, jr_06a_4cbb                             ; $4d04: $28 $b5

    adc d                                         ; $4d06: $8a
    sbc b                                         ; $4d07: $98
    and h                                         ; $4d08: $a4
    adc d                                         ; $4d09: $8a
    ld a, [hl+]                                   ; $4d0a: $2a
    xor c                                         ; $4d0b: $a9
    call $c988                                    ; $4d0c: $cd $88 $c9
    ld l, c                                       ; $4d0f: $69
    add b                                         ; $4d10: $80
    and h                                         ; $4d11: $a4
    ld a, $86                                     ; $4d12: $3e $86
    xor c                                         ; $4d14: $a9
    ld b, h                                       ; $4d15: $44
    sbc b                                         ; $4d16: $98
    ld a, [$d634]                                 ; $4d17: $fa $34 $d6
    add a                                         ; $4d1a: $87
    and l                                         ; $4d1b: $a5
    ld e, l                                       ; $4d1c: $5d
    call z, $fbb4                                 ; $4d1d: $cc $b4 $fb
    inc bc                                        ; $4d20: $03
    db $db                                        ; $4d21: $db
    or l                                          ; $4d22: $b5
    ld e, [hl]                                    ; $4d23: $5e
    add $4c                                       ; $4d24: $c6 $4c
    sub l                                         ; $4d26: $95
    call nc, Call_000_3d2a                        ; $4d27: $d4 $2a $3d
    sub b                                         ; $4d2a: $90
    and l                                         ; $4d2b: $a5
    ld d, [hl]                                    ; $4d2c: $56
    ld de, $d493                                  ; $4d2d: $11 $93 $d4
    ld b, $6a                                     ; $4d30: $06 $6a
    push de                                       ; $4d32: $d5
    ld d, c                                       ; $4d33: $51
    adc e                                         ; $4d34: $8b
    sub h                                         ; $4d35: $94
    ld a, e                                       ; $4d36: $7b
    ld a, $f5                                     ; $4d37: $3e $f5
    ld l, [hl]                                    ; $4d39: $6e
    and d                                         ; $4d3a: $a2
    call $8cef                                    ; $4d3b: $cd $ef $8c
    push hl                                       ; $4d3e: $e5
    sub d                                         ; $4d3f: $92
    halt                                          ; $4d40: $76
    db $eb                                        ; $4d41: $eb
    ld h, h                                       ; $4d42: $64
    ld d, e                                       ; $4d43: $53
    ld c, $85                                     ; $4d44: $0e $85
    ld h, [hl]                                    ; $4d46: $66
    ld [$e560], sp                                ; $4d47: $08 $60 $e5
    ld e, b                                       ; $4d4a: $58
    sbc [hl]                                      ; $4d4b: $9e
    and d                                         ; $4d4c: $a2
    ld a, $2c                                     ; $4d4d: $3e $2c
    db $ed                                        ; $4d4f: $ed
    ld h, d                                       ; $4d50: $62
    and $fd                                       ; $4d51: $e6 $fd
    ld bc, $b5db                                  ; $4d53: $01 $db $b5
    ld e, [hl]                                    ; $4d56: $5e
    add $4c                                       ; $4d57: $c6 $4c
    sub l                                         ; $4d59: $95
    call nc, $0632                                ; $4d5a: $d4 $32 $06
    jp z, $dfee                                   ; $4d5d: $ca $ee $df

    jr c, jr_06a_4d91                             ; $4d60: $38 $2f

    and e                                         ; $4d62: $a3
    xor b                                         ; $4d63: $a8
    jp nc, Jump_06a_5903                          ; $4d64: $d2 $03 $59

    jp hl                                         ; $4d67: $e9


    ld e, [hl]                                    ; $4d68: $5e
    ld e, $ad                                     ; $4d69: $1e $ad
    ld a, h                                       ; $4d6b: $7c
    sbc d                                         ; $4d6c: $9a
    rst $10                                       ; $4d6d: $d7
    reti                                          ; $4d6e: $d9


jr_06a_4d6f:
    dec de                                        ; $4d6f: $1b
    cp l                                          ; $4d70: $bd
    ld a, e                                       ; $4d71: $7b
    add hl, de                                    ; $4d72: $19
    sub a                                         ; $4d73: $97
    dec d                                         ; $4d74: $15

Call_06a_4d75:
    halt                                          ; $4d75: $76
    dec [hl]                                      ; $4d76: $35
    ld d, e                                       ; $4d77: $53
    ld a, d                                       ; $4d78: $7a
    sub $c9                                       ; $4d79: $d6 $c9
    ld a, [hl+]                                   ; $4d7b: $2a
    sbc a                                         ; $4d7c: $9f
    add a                                         ; $4d7d: $87
    or d                                          ; $4d7e: $b2
    adc d                                         ; $4d7f: $8a
    sbc b                                         ; $4d80: $98
    and h                                         ; $4d81: $a4
    sbc $1f                                       ; $4d82: $de $1f
    ld d, a                                       ; $4d84: $57
    ldh a, [$95]                                  ; $4d85: $f0 $95
    db $d3                                        ; $4d87: $d3
    sub e                                         ; $4d88: $93
    or $2c                                        ; $4d89: $f6 $2c
    ld h, e                                       ; $4d8b: $63
    and b                                         ; $4d8c: $a0
    dec d                                         ; $4d8d: $15
    push af                                       ; $4d8e: $f5
    ld h, c                                       ; $4d8f: $61
    ld l, c                                       ; $4d90: $69

jr_06a_4d91:
    rla                                           ; $4d91: $17
    inc sp                                        ; $4d92: $33
    res 5, c                                      ; $4d93: $cb $a9
    ld l, a                                       ; $4d95: $6f
    ld c, a                                       ; $4d96: $4f
    ld [c], a                                     ; $4d97: $e2
    reti                                          ; $4d98: $d9


    call nc, $98cb                                ; $4d99: $d4 $cb $98
    xor c                                         ; $4d9c: $a9
    sub d                                         ; $4d9d: $92
    ld c, l                                       ; $4d9e: $4d
    add hl, sp                                    ; $4d9f: $39
    inc d                                         ; $4da0: $14
    pop af                                        ; $4da1: $f1
    sbc a                                         ; $4da2: $9f
    sbc b                                         ; $4da3: $98
    adc l                                         ; $4da4: $8d
    ld b, $bd                                     ; $4da5: $06 $bd
    ccf                                           ; $4da7: $3f
    db $db                                        ; $4da8: $db
    cp e                                          ; $4da9: $bb
    db $ed                                        ; $4daa: $ed
    db $fd                                        ; $4dab: $fd
    ld [bc], a                                    ; $4dac: $02
    ld a, e                                       ; $4dad: $7b
    adc c                                         ; $4dae: $89
    and e                                         ; $4daf: $a3
    and d                                         ; $4db0: $a2
    dec sp                                        ; $4db1: $3b
    jr nz, jr_06a_4d6f                            ; $4db2: $20 $bb

    sbc c                                         ; $4db4: $99
    ld e, $ac                                     ; $4db5: $1e $ac
    ld h, a                                       ; $4db7: $67
    and c                                         ; $4db8: $a1
    ld a, c                                       ; $4db9: $79
    xor l                                         ; $4dba: $ad
    sub b                                         ; $4dbb: $90
    dec a                                         ; $4dbc: $3d
    rst $18                                       ; $4dbd: $df
    halt                                          ; $4dbe: $76
    ld a, d                                       ; $4dbf: $7a
    cp l                                          ; $4dc0: $bd
    cpl                                           ; $4dc1: $2f
    add [hl]                                      ; $4dc2: $86
    or c                                          ; $4dc3: $b1
    ld h, $d7                                     ; $4dc4: $26 $d7
    ld a, [hl+]                                   ; $4dc6: $2a
    ld sp, hl                                     ; $4dc7: $f9
    or h                                          ; $4dc8: $b4
    add hl, de                                    ; $4dc9: $19
    jp nc, $a69f                                  ; $4dca: $d2 $9f $a6

    inc e                                         ; $4dcd: $1c
    sbc d                                         ; $4dce: $9a
    ld [hl], d                                    ; $4dcf: $72
    ld e, h                                       ; $4dd0: $5c
    ld d, d                                       ; $4dd1: $52
    ld c, $d6                                     ; $4dd2: $0e $d6
    ld [hl], c                                    ; $4dd4: $71
    reti                                          ; $4dd5: $d9


    ld e, b                                       ; $4dd6: $58
    rra                                           ; $4dd7: $1f
    xor d                                         ; $4dd8: $aa
    jp Jump_000_09bb                              ; $4dd9: $c3 $bb $09


    dec bc                                        ; $4ddc: $0b
    ld [$acdb], a                                 ; $4ddd: $ea $db $ac
    cp b                                          ; $4de0: $b8
    jp nz, Jump_000_1122                          ; $4de1: $c2 $22 $11

    inc sp                                        ; $4de4: $33
    xor d                                         ; $4de5: $aa
    db $f4                                        ; $4de6: $f4
    ldh [$fe], a                                  ; $4de7: $e0 $fe
    nop                                           ; $4de9: $00
    adc c                                         ; $4dea: $89
    ld [hl], $bf                                  ; $4deb: $36 $bf
    inc sp                                        ; $4ded: $33
    halt                                          ; $4dee: $76
    ld [$cc65], a                                 ; $4def: $ea $65 $cc
    ld d, h                                       ; $4df2: $54
    ret                                           ; $4df3: $c9


    ld b, $16                                     ; $4df4: $06 $16
    add hl, hl                                    ; $4df6: $29
    rst $30                                       ; $4df7: $f7
    ld a, h                                       ; $4df8: $7c
    ld [hl], $a0                                  ; $4df9: $36 $a0
    rst $20                                       ; $4dfb: $e7
    db $db                                        ; $4dfc: $db
    ld c, [hl]                                    ; $4dfd: $4e
    xor a                                         ; $4dfe: $af
    rst $30                                       ; $4dff: $f7
    push bc                                       ; $4e00: $c5
    jr nc, jr_06a_4e29                            ; $4e01: $30 $26

    ld l, d                                       ; $4e03: $6a
    or [hl]                                       ; $4e04: $b6
    inc bc                                        ; $4e05: $03
    or l                                          ; $4e06: $b5
    adc h                                         ; $4e07: $8c
    add c                                         ; $4e08: $81
    ld b, $2d                                     ; $4e09: $06 $2d
    rst $38                                       ; $4e0b: $ff
    daa                                           ; $4e0c: $27
    ld a, c                                       ; $4e0d: $79
    ld a, a                                       ; $4e0e: $7f
    sub a                                         ; $4e0f: $97
    ld hl, $d666                                  ; $4e10: $21 $66 $d6
    add a                                         ; $4e13: $87
    and l                                         ; $4e14: $a5
    ld e, l                                       ; $4e15: $5d
    call z, Call_06a_4ab4                         ; $4e16: $cc $b4 $4a
    ld a, $ad                                     ; $4e19: $3e $ad
    rrca                                          ; $4e1b: $0f
    set 2, e                                      ; $4e1c: $cb $d3
    add b                                         ; $4e1e: $80
    sbc [hl]                                      ; $4e1f: $9e
    ld l, a                                       ; $4e20: $6f
    dec sp                                        ; $4e21: $3b
    cp l                                          ; $4e22: $bd
    sbc $17                                       ; $4e23: $de $17
    jp $a898                                      ; $4e25: $c3 $98 $a8


    sbc c                                         ; $4e28: $99

jr_06a_4e29:
    rrc d                                         ; $4e29: $cb $0a
    cp e                                          ; $4e2b: $bb
    ld a, [de]                                    ; $4e2c: $1a
    and a                                         ; $4e2d: $a7
    ld [hl], c                                    ; $4e2e: $71
    ld [c], a                                     ; $4e2f: $e2
    sub h                                         ; $4e30: $94
    ld sp, $3ad0                                  ; $4e31: $31 $d0 $3a
    xor [hl]                                      ; $4e34: $ae
    rst $38                                       ; $4e35: $ff
    inc a                                         ; $4e36: $3c
    ld h, l                                       ; $4e37: $65
    ld a, l                                       ; $4e38: $7d
    ld a, [de]                                    ; $4e39: $1a
    cp $17                                        ; $4e3a: $fe $17
    ld a, b                                       ; $4e3c: $78
    ld a, a                                       ; $4e3d: $7f
    sub a                                         ; $4e3e: $97
    ld hl, $036a                                  ; $4e3f: $21 $6a $03
    ld [$d2c3], a                                 ; $4e42: $ea $c3 $d2
    ld l, $66                                     ; $4e45: $2e $66
    ld e, d                                       ; $4e47: $5a
    add hl, sp                                    ; $4e48: $39
    db $dd                                        ; $4e49: $dd
    or $7e                                        ; $4e4a: $f6 $7e
    add c                                         ; $4e4c: $81
    cp l                                          ; $4e4d: $bd
    call nz, $d151                                ; $4e4e: $c4 $51 $d1
    dec e                                         ; $4e51: $1d
    sub b                                         ; $4e52: $90
    db $dd                                        ; $4e53: $dd
    ld c, h                                       ; $4e54: $4c
    rrca                                          ; $4e55: $0f
    sub $53                                       ; $4e56: $d6 $53
    call nc, $ad65                                ; $4e58: $d4 $65 $ad
    sub b                                         ; $4e5b: $90
    db $fd                                        ; $4e5c: $fd
    sbc a                                         ; $4e5d: $9f
    db $e4                                        ; $4e5e: $e4
    db $fd                                        ; $4e5f: $fd
    ld bc, $b089                                  ; $4e60: $01 $89 $b0
    or h                                          ; $4e63: $b4
    adc e                                         ; $4e64: $8b
    sbc c                                         ; $4e65: $99
    push hl                                       ; $4e66: $e5
    call c, $adf7                                 ; $4e67: $dc $f7 $ad
    db $f4                                        ; $4e6a: $f4
    ld b, b                                       ; $4e6b: $40
    ld b, l                                       ; $4e6c: $45
    ld h, l                                       ; $4e6d: $65
    jp z, Jump_06a_4161                           ; $4e6e: $ca $61 $41

    cp l                                          ; $4e71: $bd
    adc h                                         ; $4e72: $8c
    sbc c                                         ; $4e73: $99
    ld a, [hl+]                                   ; $4e74: $2a
    ld a, c                                       ; $4e75: $79
    rst $18                                       ; $4e76: $df
    rst $30                                       ; $4e77: $f7
    ld [hl], h                                    ; $4e78: $74
    dec de                                        ; $4e79: $1b
    ld b, d                                       ; $4e7a: $42
    cpl                                           ; $4e7b: $2f
    ld [hl], c                                    ; $4e7c: $71
    ld d, h                                       ; $4e7d: $54
    ld [hl], h                                    ; $4e7e: $74
    rlca                                          ; $4e7f: $07
    ld h, h                                       ; $4e80: $64
    inc de                                        ; $4e81: $13
    and c                                         ; $4e82: $a1
    rst $38                                       ; $4e83: $ff
    xor h                                         ; $4e84: $ac
    sbc a                                         ; $4e85: $9f
    ld c, l                                       ; $4e86: $4d
    db $dd                                        ; $4e87: $dd
    xor $fa                                       ; $4e88: $ee $fa
    rst $08                                       ; $4e8a: $cf
    ld d, e                                       ; $4e8b: $53
    sub $a7                                       ; $4e8c: $d6 $a7
    pop hl                                        ; $4e8e: $e1
    ld a, a                                       ; $4e8f: $7f
    add c                                         ; $4e90: $81
    rst $30                                       ; $4e91: $f7
    rlca                                          ; $4e92: $07
    adc c                                         ; $4e93: $89
    ld h, e                                       ; $4e94: $63
    add hl, hl                                    ; $4e95: $29
    add a                                         ; $4e96: $87
    ld a, [$bf36]                                 ; $4e97: $fa $36 $bf
    inc sp                                        ; $4e9a: $33
    ld l, d                                       ; $4e9b: $6a
    rst $38                                       ; $4e9c: $ff
    or l                                          ; $4e9d: $b5
    ld b, d                                       ; $4e9e: $42
    sub $c3                                       ; $4e9f: $d6 $c3
    daa                                           ; $4ea1: $27
    ld a, b                                       ; $4ea2: $78
    ld [hl], $35                                  ; $4ea3: $36 $35
    ld de, $7696                                  ; $4ea5: $11 $96 $76
    ld sp, $9cb3                                  ; $4ea8: $31 $b3 $9c
    ld l, [hl]                                    ; $4eab: $6e
    ld a, e                                       ; $4eac: $7b
    cp a                                          ; $4ead: $bf
    ret nz                                        ; $4eae: $c0

    add $a9                                       ; $4eaf: $c6 $a9
    ld b, d                                       ; $4eb1: $42
    ld [hl], b                                    ; $4eb2: $70
    sbc [hl]                                      ; $4eb3: $9e
    ld [hl-], a                                   ; $4eb4: $32
    ld b, $da                                     ; $4eb5: $06 $da
    db $fd                                        ; $4eb7: $fd
    ld bc, $b5db                                  ; $4eb8: $01 $db $b5
    ld e, [hl]                                    ; $4ebb: $5e
    add $4c                                       ; $4ebc: $c6 $4c
    sub l                                         ; $4ebe: $95
    call nc, Call_06a_6a06                        ; $4ebf: $d4 $06 $6a
    sub c                                         ; $4ec2: $91
    ld [hl], d                                    ; $4ec3: $72
    rst $08                                       ; $4ec4: $cf
    and a                                         ; $4ec5: $a7
    ld d, [hl]                                    ; $4ec6: $56
    jp hl                                         ; $4ec7: $e9


    add c                                         ; $4ec8: $81
    inc l                                         ; $4ec9: $2c
    or l                                          ; $4eca: $b5
    adc d                                         ; $4ecb: $8a
    sbc b                                         ; $4ecc: $98
    and h                                         ; $4ecd: $a4
    sbc $4d                                       ; $4ece: $de $4d
    db $10                                        ; $4ed0: $10
    ld d, l                                       ; $4ed1: $55
    rst $00                                       ; $4ed2: $c7
    ld [hl-], a                                   ; $4ed3: $32
    jp z, $4766                                   ; $4ed4: $ca $66 $47

    ld d, c                                       ; $4ed7: $51
    and a                                         ; $4ed8: $a7
    add hl, de                                    ; $4ed9: $19
    xor [hl]                                      ; $4eda: $ae
    ld e, [hl]                                    ; $4edb: $5e
    add $4c                                       ; $4edc: $c6 $4c
    sub l                                         ; $4ede: $95
    xor h                                         ; $4edf: $ac
    sub a                                         ; $4ee0: $97
    dec bc                                        ; $4ee1: $0b
    rst $28                                       ; $4ee2: $ef
    ld h, $da                                     ; $4ee3: $26 $da
    db $fc                                        ; $4ee5: $fc
    adc $b8                                       ; $4ee6: $ce $b8
    ld [hl], c                                    ; $4ee8: $71
    ld a, [de]                                    ; $4ee9: $1a
    and a                                         ; $4eea: $a7
    ld a, [bc]                                    ; $4eeb: $0a
    pop bc                                        ; $4eec: $c1
    ld a, c                                       ; $4eed: $79
    jp z, Jump_06a_6818                           ; $4eee: $ca $18 $68

    rst $30                                       ; $4ef1: $f7
    rlca                                          ; $4ef2: $07
    dec sp                                        ; $4ef3: $3b
    sbc [hl]                                      ; $4ef4: $9e
    ld [hl], l                                    ; $4ef5: $75
    db $db                                        ; $4ef6: $db
    ei                                            ; $4ef7: $fb
    sub e                                         ; $4ef8: $93
    or e                                          ; $4ef9: $b3
    ld d, b                                       ; $4efa: $50
    dec de                                        ; $4efb: $1b
    ret nc                                        ; $4efc: $d0

    xor l                                         ; $4efd: $ad
    ld c, a                                       ; $4efe: $4f
    ld [$8dce], a                                 ; $4eff: $ea $ce $8d
    adc c                                         ; $4f02: $89
    ld h, e                                       ; $4f03: $63
    cp $8b                                        ; $4f04: $fe $8b
    jp hl                                         ; $4f06: $e9


    inc a                                         ; $4f07: $3c
    ld d, c                                       ; $4f08: $51
    call nc, Call_06a_4d75                        ; $4f09: $d4 $75 $4d
    add hl, sp                                    ; $4f0c: $39
    ret z                                         ; $4f0d: $c8

    ld b, $ac                                     ; $4f0e: $06 $ac
    and b                                         ; $4f10: $a0
    push af                                       ; $4f11: $f5
    ld l, l                                       ; $4f12: $6d
    ld a, [hl]                                    ; $4f13: $7e
    ld h, a                                       ; $4f14: $67

Call_06a_4f15:
    or h                                          ; $4f15: $b4
    cp e                                          ; $4f16: $bb
    adc c                                         ; $4f17: $89
    ld [hl], $bf                                  ; $4f18: $36 $bf
    inc sp                                        ; $4f1a: $33
    ld [hl], $4e                                  ; $4f1b: $36 $4e
    dec d                                         ; $4f1d: $15
    add d                                         ; $4f1e: $82
    di                                            ; $4f1f: $f3
    sub h                                         ; $4f20: $94
    ld sp, $eed0                                  ; $4f21: $31 $d0 $ee
    rrca                                          ; $4f24: $0f
    adc c                                         ; $4f25: $89
    ld [hl], $bf                                  ; $4f26: $36 $bf
    inc sp                                        ; $4f28: $33
    halt                                          ; $4f29: $76
    ld [$cc65], a                                 ; $4f2a: $ea $65 $cc
    ld d, h                                       ; $4f2d: $54
    ret                                           ; $4f2e: $c9


    cp $23                                        ; $4f2f: $fe $23
    set 7, [hl]                                   ; $4f31: $cb $fe
    db $f4                                        ; $4f33: $f4
    ld h, b                                       ; $4f34: $60
    dec a                                         ; $4f35: $3d
    dec de                                        ; $4f36: $1b
    and b                                         ; $4f37: $a0
    sbc c                                         ; $4f38: $99
    rst $38                                       ; $4f39: $ff
    jp c, Jump_06a_4b0a                           ; $4f3a: $da $0a $4b

    db $e3                                        ; $4f3d: $e3
    ld d, h                                       ; $4f3e: $54
    ld hl, $4f38                                  ; $4f3f: $21 $38 $4f
    add hl, de                                    ; $4f42: $19
    inc bc                                        ; $4f43: $03
    db $ed                                        ; $4f44: $ed
    ld l, [hl]                                    ; $4f45: $6e
    jp nz, $ae82                                  ; $4f46: $c2 $82 $ae

    dec hl                                        ; $4f49: $2b
    db $eb                                        ; $4f4a: $eb
    ld b, e                                       ; $4f4b: $43
    ld [hl], l                                    ; $4f4c: $75
    ret c                                         ; $4f4d: $d8

    rla                                           ; $4f4e: $17
    jp $19fb                                      ; $4f4f: $c3 $fb $19


    ld a, b                                       ; $4f52: $78
    ld a, a                                       ; $4f53: $7f
    db $db                                        ; $4f54: $db
    dec a                                         ; $4f55: $3d
    or $d2                                        ; $4f56: $f6 $d2
    inc c                                         ; $4f58: $0c
    xor h                                         ; $4f59: $ac
    ccf                                           ; $4f5a: $3f
    ld d, [hl]                                    ; $4f5b: $56
    cpl                                           ; $4f5c: $2f
    ld [hl], a                                    ; $4f5d: $77
    pop bc                                        ; $4f5e: $c1
    and b                                         ; $4f5f: $a0
    ld [hl], l                                    ; $4f60: $75
    sub d                                         ; $4f61: $92
    dec c                                         ; $4f62: $0d
    sub b                                         ; $4f63: $90
    inc de                                        ; $4f64: $13
    dec [hl]                                      ; $4f65: $35
    dec de                                        ; $4f66: $1b
    rst $10                                       ; $4f67: $d7
    dec bc                                        ; $4f68: $0b
    and a                                         ; $4f69: $a7
    ld a, $8d                                     ; $4f6a: $3e $8d
    ld h, l                                       ; $4f6c: $65
    or e                                          ; $4f6d: $b3
    inc sp                                        ; $4f6e: $33
    ld c, c                                       ; $4f6f: $49
    ld d, c                                       ; $4f70: $51
    or a                                          ; $4f71: $b7
    ret nc                                        ; $4f72: $d0

    ld l, h                                       ; $4f73: $6c
    rst $20                                       ; $4f74: $e7
    db $dd                                        ; $4f75: $dd
    adc d                                         ; $4f76: $8a
    and a                                         ; $4f77: $a7

jr_06a_4f78:
    call c, Call_06a_466b                         ; $4f78: $dc $6b $46
    call nc, Call_06a_593a                        ; $4f7b: $d4 $3a $59
    cpl                                           ; $4f7e: $2f
    ld e, [hl]                                    ; $4f7f: $5e
    ld a, [hl]                                    ; $4f80: $7e
    db $eb                                        ; $4f81: $eb
    and a                                         ; $4f82: $a7
    rst $38                                       ; $4f83: $ff
    ret z                                         ; $4f84: $c8

    xor c                                         ; $4f85: $a9
    pop hl                                        ; $4f86: $e1
    rra                                           ; $4f87: $1f
    jp hl                                         ; $4f88: $e9


    inc hl                                        ; $4f89: $23
    ld a, [hl+]                                   ; $4f8a: $2a
    rst $28                                       ; $4f8b: $ef
    rrca                                          ; $4f8c: $0f
    rst $20                                       ; $4f8d: $e7
    ld e, a                                       ; $4f8e: $5f
    ld a, d                                       ; $4f8f: $7a
    ld b, c                                       ; $4f90: $41
    ld [c], a                                     ; $4f91: $e2
    ld h, l                                       ; $4f92: $65
    db $db                                        ; $4f93: $db
    or a                                          ; $4f94: $b7
    ld e, l                                       ; $4f95: $5d
    ld [hl], b                                    ; $4f96: $70
    ld e, c                                       ; $4f97: $59
    ld b, d                                       ; $4f98: $42
    rst $08                                       ; $4f99: $cf
    rla                                           ; $4f9a: $17
    rst $18                                       ; $4f9b: $df
    sbc d                                         ; $4f9c: $9a
    or b                                          ; $4f9d: $b0
    db $e3                                        ; $4f9e: $e3
    inc bc                                        ; $4f9f: $03
    db $fd                                        ; $4fa0: $fd

Jump_06a_4fa1:
    nop                                           ; $4fa1: $00
    adc c                                         ; $4fa2: $89
    ld [hl], $c1                                  ; $4fa3: $36 $c1
    push hl                                       ; $4fa5: $e5
    or c                                          ; $4fa6: $b1
    ld h, $08                                     ; $4fa7: $26 $08
    add $ef                                       ; $4fa9: $c6 $ef
    ld a, [c]                                     ; $4fab: $f2
    ld e, e                                       ; $4fac: $5b
    call Call_000_3b07                            ; $4fad: $cd $07 $3b
    ld [hl-], a                                   ; $4fb0: $32
    ld d, [hl]                                    ; $4fb1: $56
    ld l, b                                       ; $4fb2: $68
    ld b, d                                       ; $4fb3: $42
    adc $2f                                       ; $4fb4: $ce $2f
    and [hl]                                      ; $4fb6: $a6
    ld h, c                                       ; $4fb7: $61
    rra                                           ; $4fb8: $1f
    db $fd                                        ; $4fb9: $fd
    nop                                           ; $4fba: $00
    adc c                                         ; $4fbb: $89
    ld [hl], $69                                  ; $4fbc: $36 $69
    and e                                         ; $4fbe: $a3
    ld h, h                                       ; $4fbf: $64
    jr jr_06a_502d                                ; $4fc0: $18 $6b

    and d                                         ; $4fc2: $a2
    cp l                                          ; $4fc3: $bd
    ld hl, sp+$3f                                 ; $4fc4: $f8 $3f
    sbc a                                         ; $4fc6: $9f
    rlc a                                         ; $4fc7: $cb $07
    ld e, e                                       ; $4fc9: $5b
    rst $18                                       ; $4fca: $df
    sbc a                                         ; $4fcb: $9f
    inc h                                         ; $4fcc: $24
    sub [hl]                                      ; $4fcd: $96
    sbc [hl]                                      ; $4fce: $9e
    dec sp                                        ; $4fcf: $3b
    sub [hl]                                      ; $4fd0: $96
    ld h, [hl]                                    ; $4fd1: $66
    db $fc                                        ; $4fd2: $fc
    nop                                           ; $4fd3: $00
    db $fd                                        ; $4fd4: $fd
    nop                                           ; $4fd5: $00
    ld [c], a                                     ; $4fd6: $e2
    sub [hl]                                      ; $4fd7: $96
    sbc a                                         ; $4fd8: $9f
    ld h, [hl]                                    ; $4fd9: $66
    ld [hl], $d1                                  ; $4fda: $36 $d1
    ld e, [hl]                                    ; $4fdc: $5e
    db $fc                                        ; $4fdd: $fc
    sbc a                                         ; $4fde: $9f
    rst $08                                       ; $4fdf: $cf
    push hl                                       ; $4fe0: $e5
    inc bc                                        ; $4fe1: $03
    ld e, e                                       ; $4fe2: $5b
    sbc a                                         ; $4fe3: $9f
    ld b, b                                       ; $4fe4: $40
    inc [hl]                                      ; $4fe5: $34
    ld [hl], c                                    ; $4fe6: $71
    ld h, c                                       ; $4fe7: $61
    adc $c8                                       ; $4fe8: $ce $c8
    or b                                          ; $4fea: $b0
    rrca                                          ; $4feb: $0f
    db $fd                                        ; $4fec: $fd
    nop                                           ; $4fed: $00
    adc c                                         ; $4fee: $89
    ld [hl], $69                                  ; $4fef: $36 $69
    and e                                         ; $4ff1: $a3
    ld h, h                                       ; $4ff2: $64
    jr jr_06a_4f78                                ; $4ff3: $18 $83

    ld a, [hl]                                    ; $4ff5: $7e
    rla                                           ; $4ff6: $17
    adc [hl]                                      ; $4ff7: $8e
    ld h, $1d                                     ; $4ff8: $26 $1d
    cp e                                          ; $4ffa: $bb
    dec d                                         ; $4ffb: $15
    ld [$01fa], sp                                ; $4ffc: $08 $fa $01
    dec sp                                        ; $4fff: $3b
    ld [hl-], a                                   ; $5000: $32
    ld d, [hl]                                    ; $5001: $56
    add sp, $15                                   ; $5002: $e8 $15
    ld e, h                                       ; $5004: $5c
    sub [hl]                                      ; $5005: $96
    ld [hl], l                                    ; $5006: $75
    ld hl, sp+$00                                 ; $5007: $f8 $00
    rst $20                                       ; $5009: $e7
    adc [hl]                                      ; $500a: $8e
    ld c, e                                       ; $500b: $4b
    ld [hl], a                                    ; $500c: $77
    rst $00                                       ; $500d: $c7
    sbc a                                         ; $500e: $9f
    ld a, h                                       ; $500f: $7c
    set 6, d                                      ; $5010: $cb $f2
    ld h, d                                       ; $5012: $62
    ld a, [$3b03]                                 ; $5013: $fa $03 $3b
    ld [hl-], a                                   ; $5016: $32
    ld d, [hl]                                    ; $5017: $56
    ld l, b                                       ; $5018: $68
    ld b, d                                       ; $5019: $42
    adc $2f                                       ; $501a: $ce $2f
    and [hl]                                      ; $501c: $a6
    ld h, c                                       ; $501d: $61
    rra                                           ; $501e: $1f
    db $fd                                        ; $501f: $fd
    nop                                           ; $5020: $00
    ld [c], a                                     ; $5021: $e2
    sub [hl]                                      ; $5022: $96
    ld d, c                                       ; $5023: $51
    ld d, h                                       ; $5024: $54
    inc a                                         ; $5025: $3c
    ld a, $c9                                     ; $5026: $3e $c9
    push af                                       ; $5028: $f5
    jp nz, Jump_000_00f9                          ; $5029: $c2 $f9 $00

    add hl, bc                                    ; $502c: $09

jr_06a_502d:
    or $fe                                        ; $502d: $f6 $fe
    ld l, [hl]                                    ; $502f: $6e
    pop bc                                        ; $5030: $c1
    res 2, d                                      ; $5031: $cb $92
    pop af                                        ; $5033: $f1
    inc bc                                        ; $5034: $03
    sub a                                         ; $5035: $97
    adc [hl]                                      ; $5036: $8e
    rst $00                                       ; $5037: $c7
    db $d3                                        ; $5038: $d3
    dec hl                                        ; $5039: $2b
    and b                                         ; $503a: $a0
    ld sp, hl                                     ; $503b: $f9
    inc bc                                        ; $503c: $03
    rla                                           ; $503d: $17
    jp nz, Jump_06a_676c                          ; $503e: $c2 $6c $67

    xor a                                         ; $5041: $af
    jr jr_06a_508f                                ; $5042: $18 $4b

    ld a, $e8                                     ; $5044: $3e $e8
    rlca                                          ; $5046: $07
    db $fd                                        ; $5047: $fd
    nop                                           ; $5048: $00
    add hl, bc                                    ; $5049: $09
    ld a, [$cbdb]                                 ; $504a: $fa $db $cb
    ld h, e                                       ; $504d: $63
    dec a                                         ; $504e: $3d
    cp d                                          ; $504f: $ba
    rst $20                                       ; $5050: $e7
    ld b, d                                       ; $5051: $42
    ld e, a                                       ; $5052: $5f
    ld a, [hl-]                                   ; $5053: $3a
    jp nz, $689a                                  ; $5054: $c2 $9a $68

    cpl                                           ; $5057: $2f
    cp $cf                                        ; $5058: $fe $cf

jr_06a_505a:
    rst $20                                       ; $505a: $e7
    ld a, [c]                                     ; $505b: $f2
    ld bc, $df5b                                  ; $505c: $01 $5b $df
    sbc a                                         ; $505f: $9f
    inc h                                         ; $5060: $24
    sub [hl]                                      ; $5061: $96
    ld l, [hl]                                    ; $5062: $6e
    ld [hl], c                                    ; $5063: $71
    ld [de], a                                    ; $5064: $12
    ld a, [$fd01]                                 ; $5065: $fa $01 $fd
    nop                                           ; $5068: $00
    adc c                                         ; $5069: $89
    ld [hl], $c1                                  ; $506a: $36 $c1
    push hl                                       ; $506c: $e5
    or c                                          ; $506d: $b1
    adc d                                         ; $506e: $8a
    xor e                                         ; $506f: $ab
    adc $ff                                       ; $5070: $ce $ff
    jr jr_06a_505a                                ; $5072: $18 $e6

    inc bc                                        ; $5074: $03
    sbc e                                         ; $5075: $9b
    ld l, c                                       ; $5076: $69
    db $ec                                        ; $5077: $ec
    cp c                                          ; $5078: $b9
    rrca                                          ; $5079: $0f
    ld c, c                                       ; $507a: $49
    ld sp, hl                                     ; $507b: $f9
    ld bc, $00fd                                  ; $507c: $01 $fd $00
    ld e, e                                       ; $507f: $5b
    rst $30                                       ; $5080: $f7
    ret nc                                        ; $5081: $d0

    rst $30                                       ; $5082: $f7
    or e                                          ; $5083: $b3
    ld l, b                                       ; $5084: $68
    add d                                         ; $5085: $82
    rla                                           ; $5086: $17
    cpl                                           ; $5087: $2f
    adc a                                         ; $5088: $8f
    halt                                          ; $5089: $76
    rst $00                                       ; $508a: $c7
    call nz, $d1b1                                ; $508b: $c4 $b1 $d1
    rrca                                          ; $508e: $0f

jr_06a_508f:
    ld e, e                                       ; $508f: $5b
    ld l, c                                       ; $5090: $69
    ld [bc], a                                    ; $5091: $02
    ld a, e                                       ; $5092: $7b
    dec [hl]                                      ; $5093: $35
    db $10                                        ; $5094: $10
    jp $e707                                      ; $5095: $c3 $07 $e7


jr_06a_5098:
    ld a, [de]                                    ; $5098: $1a
    inc b                                         ; $5099: $04
    ld [hl], l                                    ; $509a: $75
    inc sp                                        ; $509b: $33
    jp $0fce                                      ; $509c: $c3 $ce $0f


    rla                                           ; $509f: $17
    jr nc, jr_06a_5098                            ; $50a0: $30 $f6

    jp nc, $8f09                                  ; $50a2: $d2 $09 $8f

    rra                                           ; $50a5: $1f
    db $fd                                        ; $50a6: $fd
    nop                                           ; $50a7: $00
    sub a                                         ; $50a8: $97
    ld b, c                                       ; $50a9: $41
    inc sp                                        ; $50aa: $33
    db $f4                                        ; $50ab: $f4
    inc bc                                        ; $50ac: $03
    rla                                           ; $50ad: $17
    cp a                                          ; $50ae: $bf
    ld e, l                                       ; $50af: $5d
    cp e                                          ; $50b0: $bb
    cp d                                          ; $50b1: $ba
    reti                                          ; $50b2: $d9


    ld c, c                                       ; $50b3: $49
    ld sp, hl                                     ; $50b4: $f9
    and d                                         ; $50b5: $a2
    ld a, [hl]                                    ; $50b6: $7e
    rst $20                                       ; $50b7: $e7
    ret c                                         ; $50b8: $d8

    ld h, e                                       ; $50b9: $63
    db $ec                                        ; $50ba: $ec
    ld b, l                                       ; $50bb: $45
    rst $08                                       ; $50bc: $cf
    inc b                                         ; $50bd: $04
    ld b, [hl]                                    ; $50be: $46
    xor b                                         ; $50bf: $a8
    ld a, [hl]                                    ; $50c0: $7e
    sbc e                                         ; $50c1: $9b
    sub e                                         ; $50c2: $93
    or b                                          ; $50c3: $b0
    sbc l                                         ; $50c4: $9d
    ld c, e                                       ; $50c5: $4b
    inc de                                        ; $50c6: $13
    ld de, $2fdf                                  ; $50c7: $11 $df $2f
    ldh a, [$03]                                  ; $50ca: $f0 $03
    ld [c], a                                     ; $50cc: $e2
    pop af                                        ; $50cd: $f1
    dec l                                         ; $50ce: $2d
    cp l                                          ; $50cf: $bd
    ld [hl], b                                    ; $50d0: $70
    inc [hl]                                      ; $50d1: $34
    ld sp, hl                                     ; $50d2: $f9
    ld a, $fd                                     ; $50d3: $3e $fd
    nop                                           ; $50d5: $00
    db $fd                                        ; $50d6: $fd
    nop                                           ; $50d7: $00
    ld [c], a                                     ; $50d8: $e2
    ld e, e                                       ; $50d9: $5b
    push bc                                       ; $50da: $c5
    xor a                                         ; $50db: $af
    ld c, c                                       ; $50dc: $49
    ld l, b                                       ; $50dd: $68
    jp nz, $cbb6                                  ; $50de: $c2 $b6 $cb

    ld [de], a                                    ; $50e1: $12
    ld l, $bd                                     ; $50e2: $2e $bd
    ld c, h                                       ; $50e4: $4c
    db $fc                                        ; $50e5: $fc
    add d                                         ; $50e6: $82
    ld l, l                                       ; $50e7: $6d
    ld e, e                                       ; $50e8: $5b
    inc de                                        ; $50e9: $13
    or [hl]                                       ; $50ea: $b6
    ld e, l                                       ; $50eb: $5d
    or $01                                        ; $50ec: $f6 $01
    db $fd                                        ; $50ee: $fd
    nop                                           ; $50ef: $00
    adc c                                         ; $50f0: $89
    ld [hl], $c1                                  ; $50f1: $36 $c1
    push hl                                       ; $50f3: $e5
    ld sp, $1368                                  ; $50f4: $31 $68 $13
    inc b                                         ; $50f7: $04
    db $e3                                        ; $50f8: $e3
    ld [hl], a                                    ; $50f9: $77
    ld sp, hl                                     ; $50fa: $f9
    xor l                                         ; $50fb: $ad
    ld b, [hl]                                    ; $50fc: $46
    ccf                                           ; $50fd: $3f
    rst $20                                       ; $50fe: $e7
    ld [hl-], a                                   ; $50ff: $32
    ld [hl], $61                                  ; $5100: $36 $61
    ld b, c                                       ; $5102: $41
    db $f4                                        ; $5103: $f4
    sub b                                         ; $5104: $90
    ld a, [$e701]                                 ; $5105: $fa $01 $e7
    ld [hl], d                                    ; $5108: $72
    push af                                       ; $5109: $f5
    ld b, d                                       ; $510a: $42
    or a                                          ; $510b: $b7

Call_06a_510c:
    ld [hl-], a                                   ; $510c: $32
    add $0f                                       ; $510d: $c6 $0f
    db $fd                                        ; $510f: $fd
    nop                                           ; $5110: $00
    rst $20                                       ; $5111: $e7
    ld a, $c3                                     ; $5112: $3e $c3
    sbc a                                         ; $5114: $9f
    rst $00                                       ; $5115: $c7
    ld a, [de]                                    ; $5116: $1a
    ret nc                                        ; $5117: $d0

    res 4, b                                      ; $5118: $cb $a0
    add hl, de                                    ; $511a: $19
    ld a, [$1701]                                 ; $511b: $fa $01 $17
    ld a, [c]                                     ; $511e: $f2
    rla                                           ; $511f: $17
    ret c                                         ; $5120: $d8

    ld [hl], e                                    ; $5121: $73
    call z, $8949                                 ; $5122: $cc $49 $89
    db $fc                                        ; $5125: $fc
    ld bc, $00fd                                  ; $5126: $01 $fd $00
    rst $20                                       ; $5129: $e7
    ld a, $c3                                     ; $512a: $3e $c3
    sbc a                                         ; $512c: $9f
    rst $00                                       ; $512d: $c7
    cp d                                          ; $512e: $ba
    reti                                          ; $512f: $d9


    ld e, $f3                                     ; $5130: $1e $f3
    ld e, e                                       ; $5132: $5b
    call $8907                                    ; $5133: $cd $07 $89
    ret                                           ; $5136: $c9


    or a                                          ; $5137: $b7
    db $f4                                        ; $5138: $f4
    ld [hl-], a                                   ; $5139: $32
    ld [hl], e                                    ; $513a: $73
    jp nc, $1f33                                  ; $513b: $d2 $33 $1f

    db $fd                                        ; $513e: $fd
    nop                                           ; $513f: $00
    ld [c], a                                     ; $5140: $e2
    rst $20                                       ; $5141: $e7
    ld e, a                                       ; $5142: $5f
    ld a, [hl+]                                   ; $5143: $2a
    ld a, [hl]                                    ; $5144: $7e
    ld l, [hl]                                    ; $5145: $6e
    jp nz, $0be6                                  ; $5146: $c2 $e6 $0b

    or [hl]                                       ; $5149: $b6
    ld h, $6c                                     ; $514a: $26 $6c
    cp e                                          ; $514c: $bb
    ld l, h                                       ; $514d: $6c
    ei                                            ; $514e: $fb
    adc [hl]                                      ; $514f: $8e
    ld h, $ec                                     ; $5150: $26 $ec
    ld c, b                                       ; $5152: $48
    ld c, h                                       ; $5153: $4c
    ret c                                         ; $5154: $d8

    ld a, h                                       ; $5155: $7c
    add c                                         ; $5156: $81
    ld hl, sp+$05                                 ; $5157: $f8 $05
    dec sp                                        ; $5159: $3b
    ld a, $3b                                     ; $515a: $3e $3b
    ld [hl-], a                                   ; $515c: $32
    db $fc                                        ; $515d: $fc
    inc h                                         ; $515e: $24
    db $e3                                        ; $515f: $e3
    ld b, e                                       ; $5160: $43
    or a                                          ; $5161: $b7
    ret nz                                        ; $5162: $c0

    ld [hl-], a                                   ; $5163: $32
    db $d3                                        ; $5164: $d3
    or b                                          ; $5165: $b0
    rrca                                          ; $5166: $0f
    dec sp                                        ; $5167: $3b
    sbc h                                         ; $5168: $9c
    ld [hl-], a                                   ; $5169: $32
    or $5c                                        ; $516a: $f6 $5c
    ld l, h                                       ; $516c: $6c
    add l                                         ; $516d: $85
    cp l                                          ; $516e: $bd
    db $fc                                        ; $516f: $fc
    ld bc, $9f5b                                  ; $5170: $01 $5b $9f
    ld b, b                                       ; $5173: $40
    db $f4                                        ; $5174: $f4
    ld e, h                                       ; $5175: $5c
    jr nc, jr_06a_51f6                            ; $5176: $30 $7e

    ld [c], a                                     ; $5178: $e2
    or h                                          ; $5179: $b4
    adc c                                         ; $517a: $89
    cp l                                          ; $517b: $bd
    db $f4                                        ; $517c: $f4
    db $fd                                        ; $517d: $fd
    ld hl, sp+$00                                 ; $517e: $f8 $00
    rla                                           ; $5180: $17
    ld h, c                                       ; $5181: $61
    push af                                       ; $5182: $f5
    ld h, d                                       ; $5183: $62
    rst $08                                       ; $5184: $cf
    ld [hl], c                                    ; $5185: $71
    ld d, $de                                     ; $5186: $16 $de
    cpl                                           ; $5188: $2f
    ldh a, [$03]                                  ; $5189: $f0 $03
    rla                                           ; $518b: $17
    reti                                          ; $518c: $d9


    db $d3                                        ; $518d: $d3
    xor $70                                       ; $518e: $ee $70
    ld d, d                                       ; $5190: $52
    jp nz, $03f4                                  ; $5191: $c2 $f4 $03

    db $fd                                        ; $5194: $fd
    nop                                           ; $5195: $00
    db $fd                                        ; $5196: $fd
    nop                                           ; $5197: $00
    db $fd                                        ; $5198: $fd
    nop                                           ; $5199: $00
    add hl, bc                                    ; $519a: $09
    rla                                           ; $519b: $17
    daa                                           ; $519c: $27
    ld l, h                                       ; $519d: $6c
    cp [hl]                                       ; $519e: $be
    db $ec                                        ; $519f: $ec
    jp nc, $dbed                                  ; $51a0: $d2 $ed $db

    ld l, $d8                                     ; $51a3: $2e $d8
    ld e, h                                       ; $51a5: $5c
    pop af                                        ; $51a6: $f1
    ld c, e                                       ; $51a7: $4b
    cpl                                           ; $51a8: $2f
    db $db                                        ; $51a9: $db
    pop af                                        ; $51aa: $f1
    ld bc, $00fd                                  ; $51ab: $01 $fd $00
    add hl, bc                                    ; $51ae: $09
    add hl, hl                                    ; $51af: $29
    rst $30                                       ; $51b0: $f7
    ld a, h                                       ; $51b1: $7c
    ld [hl], $a0                                  ; $51b2: $36 $a0
    adc c                                         ; $51b4: $89
    ld [hl], $c1                                  ; $51b5: $36 $c1
    xor l                                         ; $51b7: $ad
    rla                                           ; $51b8: $17
    adc $07                                       ; $51b9: $ce $07
    sbc e                                         ; $51bb: $9b
    sub e                                         ; $51bc: $93
    or $b4                                        ; $51bd: $f6 $b4
    rst $20                                       ; $51bf: $e7
    dec de                                        ; $51c0: $1b
    ld [hl], a                                    ; $51c1: $77
    ld a, [hl]                                    ; $51c2: $7e
    sbc e                                         ; $51c3: $9b
    ld h, a                                       ; $51c4: $67
    ld a, c                                       ; $51c5: $79
    or c                                          ; $51c6: $b1
    sub a                                         ; $51c7: $97
    adc [hl]                                      ; $51c8: $8e
    rst $20                                       ; $51c9: $e7
    ld b, l                                       ; $51ca: $45
    sbc l                                         ; $51cb: $9d
    ld hl, sp+$01                                 ; $51cc: $f8 $01
    rla                                           ; $51ce: $17
    jp nz, $edeb                                  ; $51cf: $c2 $eb $ed

    ld sp, hl                                     ; $51d2: $f9
    sub h                                         ; $51d3: $94
    inc de                                        ; $51d4: $13
    ccf                                           ; $51d5: $3f
    db $db                                        ; $51d6: $db
    dec b                                         ; $51d7: $05
    ld hl, $fb76                                  ; $51d8: $21 $76 $fb
    pop hl                                        ; $51db: $e1
    rst $20                                       ; $51dc: $e7
    ret c                                         ; $51dd: $d8

    ld b, e                                       ; $51de: $43
    db $fc                                        ; $51df: $fc
    nop                                           ; $51e0: $00
    sub a                                         ; $51e1: $97
    adc [hl]                                      ; $51e2: $8e
    and a                                         ; $51e3: $a7
    db $db                                        ; $51e4: $db
    rrca                                          ; $51e5: $0f
    ccf                                           ; $51e6: $3f
    adc a                                         ; $51e7: $8f
    ld h, [hl]                                    ; $51e8: $66
    ld e, b                                       ; $51e9: $58
    sub [hl]                                      ; $51ea: $96
    rrca                                          ; $51eb: $0f
    dec sp                                        ; $51ec: $3b
    sbc [hl]                                      ; $51ed: $9e
    sbc h                                         ; $51ee: $9c
    ret c                                         ; $51ef: $d8

    dec l                                         ; $51f0: $2d
    inc [hl]                                      ; $51f1: $34
    ld a, e                                       ; $51f2: $7b
    ld a, [$5701]                                 ; $51f3: $fa $01 $57

jr_06a_51f6:
    ld [hl], d                                    ; $51f6: $72

jr_06a_51f7:
    ld h, a                                       ; $51f7: $67
    ld b, h                                       ; $51f8: $44
    rst $08                                       ; $51f9: $cf
    or e                                          ; $51fa: $b3
    pop de                                        ; $51fb: $d1
    db $fc                                        ; $51fc: $fc
    ld bc, $00fd                                  ; $51fd: $01 $fd $00
    adc c                                         ; $5200: $89
    ld [hl], $69                                  ; $5201: $36 $69
    and e                                         ; $5203: $a3
    db $e4                                        ; $5204: $e4
    ld a, d                                       ; $5205: $7a
    pop hl                                        ; $5206: $e1
    ld d, h                                       ; $5207: $54
    inc a                                         ; $5208: $3c
    cp h                                          ; $5209: $bc
    rst $38                                       ; $520a: $ff
    ld c, l                                       ; $520b: $4d
    db $e4                                        ; $520c: $e4
    ld a, [c]                                     ; $520d: $f2
    ld bc, $20e7                                  ; $520e: $01 $e7 $20
    or $5c                                        ; $5211: $f6 $5c
    jr nc, jr_06a_51f7                            ; $5213: $30 $e2

    inc bc                                        ; $5215: $03
    db $fd                                        ; $5216: $fd
    nop                                           ; $5217: $00
    add hl, bc                                    ; $5218: $09
    add hl, hl                                    ; $5219: $29
    rst $30                                       ; $521a: $f7
    sub [hl]                                      ; $521b: $96
    db $dd                                        ; $521c: $dd
    inc a                                         ; $521d: $3c
    or $a6                                        ; $521e: $f6 $a6
    ld h, c                                       ; $5220: $61
    ld a, d                                       ; $5221: $7a
    pop hl                                        ; $5222: $e1
    and h                                         ; $5223: $a4
    rst $20                                       ; $5224: $e7
    inc bc                                        ; $5225: $03
    rst $20                                       ; $5226: $e7
    ld [hl-], a                                   ; $5227: $32
    or $d2                                        ; $5228: $f6 $d2
    or a                                          ; $522a: $b7
    ld h, b                                       ; $522b: $60
    rst $20                                       ; $522c: $e7
    rlca                                          ; $522d: $07
    db $fd                                        ; $522e: $fd
    nop                                           ; $522f: $00
    add hl, bc                                    ; $5230: $09
    add hl, hl                                    ; $5231: $29
    rst $30                                       ; $5232: $f7
    ld a, h                                       ; $5233: $7c
    ld [hl], $a0                                  ; $5234: $36 $a0
    dec sp                                        ; $5236: $3b
    ld b, [hl]                                    ; $5237: $46
    ld a, [hl]                                    ; $5238: $7e
    ld [c], a                                     ; $5239: $e2
    ld bc, $7a0b                                  ; $523a: $01 $0b $7a
    ld de, $0596                                  ; $523d: $11 $96 $05
    add hl, sp                                    ; $5240: $39
    ld a, a                                       ; $5241: $7f
    rst $20                                       ; $5242: $e7
    cp h                                          ; $5243: $bc
    ld h, l                                       ; $5244: $65
    jp hl                                         ; $5245: $e9


    push bc                                       ; $5246: $c5
    ld c, [hl]                                    ; $5247: $4e
    di                                            ; $5248: $f3
    adc $0f                                       ; $5249: $ce $0f
    rla                                           ; $524b: $17
    jp nz, Jump_06a_7720                          ; $524c: $c2 $20 $77

    halt                                          ; $524f: $76
    rst $00                                       ; $5250: $c7
    cp b                                          ; $5251: $b8
    dec b                                         ; $5252: $05
    rra                                           ; $5253: $1f
    db $db                                        ; $5254: $db
    sbc $2f                                       ; $5255: $de $2f
    or b                                          ; $5257: $b0
    rla                                           ; $5258: $17
    ld [hl], e                                    ; $5259: $73
    push af                                       ; $525a: $f5
    ld h, b                                       ; $525b: $60
    ld a, [$fd01]                                 ; $525c: $fa $01 $fd
    nop                                           ; $525f: $00
    rst $20                                       ; $5260: $e7
    jp nz, Jump_06a_65a7                          ; $5261: $c2 $a7 $65

    ld c, d                                       ; $5264: $4a
    call nz, Call_000_0d3c                        ; $5265: $c4 $3c $0d
    add sp, -$1a                                  ; $5268: $e8 $e6
    ld c, e                                       ; $526a: $4b
    ld a, $e2                                     ; $526b: $3e $e2
    ld sp, $ecec                                  ; $526d: $31 $ec $ec
    sub $b7                                       ; $5270: $d6 $b7
    inc l                                         ; $5272: $2c
    or b                                          ; $5273: $b0
    rrca                                          ; $5274: $0f
    rst $20                                       ; $5275: $e7
    jp nc, $b10c                                  ; $5276: $d2 $0c $b1

    sub a                                         ; $5279: $97
    cp c                                          ; $527a: $b9
    ld e, a                                       ; $527b: $5f
    jr nz, jr_06a_52f4                            ; $527c: $20 $76

    ld a, [hl]                                    ; $527e: $7e
    rla                                           ; $527f: $17
    ld c, $ba                                     ; $5280: $0e $ba
    call $f8c5                                    ; $5282: $cd $c5 $f8
    ld bc, $0317                                  ; $5285: $01 $17 $03
    db $dd                                        ; $5288: $dd
    jp z, $b018                                   ; $5289: $ca $18 $b0

    ld a, d                                       ; $528c: $7a
    res 0, d                                      ; $528d: $cb $82
    rrca                                          ; $528f: $0f
    ld e, e                                       ; $5290: $5b
    sbc c                                         ; $5291: $99
    ld [hl], e                                    ; $5292: $73
    rst $08                                       ; $5293: $cf
    ld b, c                                       ; $5294: $41
    adc h                                         ; $5295: $8c
    ret z                                         ; $5296: $c8

    ld sp, hl                                     ; $5297: $f9
    inc bc                                        ; $5298: $03
    adc c                                         ; $5299: $89
    ret z                                         ; $529a: $c8

    add sp, $0e                                   ; $529b: $e8 $0e
    ld c, d                                       ; $529d: $4a
    add a                                         ; $529e: $87
    ld b, l                                       ; $529f: $45
    ccf                                           ; $52a0: $3f
    adc c                                         ; $52a1: $89
    rrca                                          ; $52a2: $0f
    and [hl]                                      ; $52a3: $a6
    cp l                                          ; $52a4: $bd
    sbc b                                         ; $52a5: $98
    ld sp, $2f6d                                  ; $52a6: $31 $6d $2f
    and h                                         ; $52a9: $a4
    pop af                                        ; $52aa: $f1
    ld bc, $be97                                  ; $52ab: $01 $97 $be
    ccf                                           ; $52ae: $3f
    ld c, c                                       ; $52af: $49
    dec bc                                        ; $52b0: $0b
    cp l                                          ; $52b1: $bd
    ld a, [c]                                     ; $52b2: $f2
    dec l                                         ; $52b3: $2d
    ld bc, $fea6                                  ; $52b4: $01 $a6 $fe
    adc e                                         ; $52b7: $8b
    rra                                           ; $52b8: $1f
    sub a                                         ; $52b9: $97
    adc [hl]                                      ; $52ba: $8e
    ld l, d                                       ; $52bb: $6a
    rst $08                                       ; $52bc: $cf
    dec e                                         ; $52bd: $1d
    sub a                                         ; $52be: $97
    ld e, [hl]                                    ; $52bf: $5e
    xor b                                         ; $52c0: $a8
    rra                                           ; $52c1: $1f
    dec sp                                        ; $52c2: $3b
    or d                                          ; $52c3: $b2
    db $eb                                        ; $52c4: $eb
    sub l                                         ; $52c5: $95
    ld l, a                                       ; $52c6: $6f
    ld e, c                                       ; $52c7: $59
    ld e, $a5                                     ; $52c8: $1e $a5
    ld a, [hl]                                    ; $52ca: $7e
    db $fd                                        ; $52cb: $fd
    nop                                           ; $52cc: $00
    sbc e                                         ; $52cd: $9b
    cpl                                           ; $52ce: $2f
    jp hl                                         ; $52cf: $e9


    ld h, l                                       ; $52d0: $65
    db $eb                                        ; $52d1: $eb
    cp $f8                                        ; $52d2: $fe $f8
    cp $f9                                        ; $52d4: $fe $f9
    nop                                           ; $52d6: $00
    rla                                           ; $52d7: $17
    ld c, $7a                                     ; $52d8: $0e $7a
    cp [hl]                                       ; $52da: $be
    ld sp, $0fe6                                  ; $52db: $31 $e6 $0f
    ld e, e                                       ; $52de: $5b
    ld l, c                                       ; $52df: $69
    cp a                                          ; $52e0: $bf
    db $d3                                        ; $52e1: $d3
    ld h, $3a                                     ; $52e2: $26 $3a
    ld e, e                                       ; $52e4: $5b
    dec a                                         ; $52e5: $3d
    db $fd                                        ; $52e6: $fd
    nop                                           ; $52e7: $00
    ld d, a                                       ; $52e8: $57
    ld [hl], d                                    ; $52e9: $72
    ld h, a                                       ; $52ea: $67
    ld b, h                                       ; $52eb: $44
    rst $08                                       ; $52ec: $cf
    sbc c                                         ; $52ed: $99
    sbc l                                         ; $52ee: $9d
    ccf                                           ; $52ef: $3f
    ld a, $e7                                     ; $52f0: $3e $e7
    ld c, [hl]                                    ; $52f2: $4e
    adc h                                         ; $52f3: $8c

jr_06a_52f4:
    db $ec                                        ; $52f4: $ec
    sub [hl]                                      ; $52f5: $96
    rst $30                                       ; $52f6: $f7
    dec bc                                        ; $52f7: $0b
    call nc, $fd0f                                ; $52f8: $d4 $0f $fd
    nop                                           ; $52fb: $00
    add hl, bc                                    ; $52fc: $09
    dec bc                                        ; $52fd: $0b
    cp $6c                                        ; $52fe: $fe $6c
    inc de                                        ; $5300: $13
    rst $18                                       ; $5301: $df
    ld e, a                                       ; $5302: $5f
    ld [hl], c                                    ; $5303: $71
    set 3, d                                      ; $5304: $cb $da
    adc l                                         ; $5306: $8d
    dec d                                         ; $5307: $15
    ld c, a                                       ; $5308: $4f
    dec de                                        ; $5309: $1b
    inc bc                                        ; $530a: $03
    cp $27                                        ; $530b: $fe $27
    ld de, $68f3                                  ; $530d: $11 $f3 $68
    inc de                                        ; $5310: $13
    call nc, $ffc7                                ; $5311: $d4 $c7 $ff
    ld hl, sp-$0c                                 ; $5314: $f8 $f4
    inc bc                                        ; $5316: $03
    rst $20                                       ; $5317: $e7
    sbc b                                         ; $5318: $98
    ei                                            ; $5319: $fb
    pop de                                        ; $531a: $d1
    xor l                                         ; $531b: $ad
    rst $38                                       ; $531c: $ff
    sub $b7                                       ; $531d: $d6 $b7
    inc l                                         ; $531f: $2c
    adc h                                         ; $5320: $8c
    rra                                           ; $5321: $1f
    sbc e                                         ; $5322: $9b
    sub e                                         ; $5323: $93
    xor $17                                       ; $5324: $ee $17
    ret c                                         ; $5326: $d8

    call $630b                                    ; $5327: $cd $0b $63
    sbc [hl]                                      ; $532a: $9e
    ld hl, sp+$01                                 ; $532b: $f8 $01
    rst $20                                       ; $532d: $e7
    ld [hl-], a                                   ; $532e: $32
    add $9d                                       ; $532f: $c6 $9d
    dec a                                         ; $5331: $3d
    rst $20                                       ; $5332: $e7
    dec l                                         ; $5333: $2d
    ld a, [hl-]                                   ; $5334: $3a
    pop af                                        ; $5335: $f1
    inc bc                                        ; $5336: $03
    rst $20                                       ; $5337: $e7
    ld [hl], d                                    ; $5338: $72
    push af                                       ; $5339: $f5
    ld b, d                                       ; $533a: $42
    rst $08                                       ; $533b: $cf
    reti                                          ; $533c: $d9


    ld l, c                                       ; $533d: $69
    ld de, $e71f                                  ; $533e: $11 $1f $e7
    cp e                                          ; $5341: $bb
    sbc l                                         ; $5342: $9d
    db $dd                                        ; $5343: $dd
    ld a, [$0596]                                 ; $5344: $fa $96 $05
    or $01                                        ; $5347: $f6 $01
    rla                                           ; $5349: $17
    jr nc, jr_06a_53c2                            ; $534a: $30 $76

    ld b, a                                       ; $534c: $47
    sub d                                         ; $534d: $92
    add d                                         ; $534e: $82
    ld a, $17                                     ; $534f: $3e $17
    ld c, [hl]                                    ; $5351: $4e
    ld [hl-], a                                   ; $5352: $32
    or $62                                        ; $5353: $f6 $62
    ld a, [bc]                                    ; $5355: $0a
    ld [hl-], a                                   ; $5356: $32
    call nz, Call_000_1f1f                        ; $5357: $c4 $1f $1f
    rla                                           ; $535a: $17
    ccf                                           ; $535b: $3f
    ld h, l                                       ; $535c: $65
    ld [hl], a                                    ; $535d: $77
    db $e4                                        ; $535e: $e4
    ld de, $fd08                                  ; $535f: $11 $08 $fd
    nop                                           ; $5362: $00
    rla                                           ; $5363: $17
    ccf                                           ; $5364: $3f
    ld h, l                                       ; $5365: $65
    xor a                                         ; $5366: $af
    ld h, h                                       ; $5367: $64
    adc $1f                                       ; $5368: $ce $1f
    adc c                                         ; $536a: $89
    ld [hl], h                                    ; $536b: $74
    ld c, e                                       ; $536c: $4b
    rst $08                                       ; $536d: $cf
    push bc                                       ; $536e: $c5
    ld d, [hl]                                    ; $536f: $56
    call z, $8907                                 ; $5370: $cc $07 $89
    ld [hl], h                                    ; $5373: $74
    ld c, e                                       ; $5374: $4b
    or a                                          ; $5375: $b7
    jp nc, Jump_000_2034                          ; $5376: $d2 $34 $20

    ld a, [hl]                                    ; $5379: $7e
    dec sp                                        ; $537a: $3b
    sbc [hl]                                      ; $537b: $9e
    sbc h                                         ; $537c: $9c
    ret c                                         ; $537d: $d8

    call nz, $f3e4                                ; $537e: $c4 $e4 $f3
    ld a, l                                       ; $5381: $7d
    db $fd                                        ; $5382: $fd
    nop                                           ; $5383: $00
    db $fd                                        ; $5384: $fd
    nop                                           ; $5385: $00
    db $fd                                        ; $5386: $fd
    nop                                           ; $5387: $00
    db $fd                                        ; $5388: $fd
    nop                                           ; $5389: $00
    db $fd                                        ; $538a: $fd
    nop                                           ; $538b: $00
    db $fd                                        ; $538c: $fd
    nop                                           ; $538d: $00
    db $fd                                        ; $538e: $fd
    nop                                           ; $538f: $00
    db $fd                                        ; $5390: $fd
    nop                                           ; $5391: $00
    db $fd                                        ; $5392: $fd
    nop                                           ; $5393: $00
    db $fd                                        ; $5394: $fd
    nop                                           ; $5395: $00
    db $fd                                        ; $5396: $fd
    nop                                           ; $5397: $00
    db $fd                                        ; $5398: $fd
    nop                                           ; $5399: $00
    db $fd                                        ; $539a: $fd
    nop                                           ; $539b: $00
    db $fd                                        ; $539c: $fd
    nop                                           ; $539d: $00
    db $fd                                        ; $539e: $fd
    nop                                           ; $539f: $00
    db $fd                                        ; $53a0: $fd
    nop                                           ; $53a1: $00
    db $fd                                        ; $53a2: $fd
    nop                                           ; $53a3: $00
    db $fd                                        ; $53a4: $fd
    nop                                           ; $53a5: $00
    db $fd                                        ; $53a6: $fd
    nop                                           ; $53a7: $00
    db $fd                                        ; $53a8: $fd
    nop                                           ; $53a9: $00
    db $fd                                        ; $53aa: $fd
    nop                                           ; $53ab: $00
    db $fd                                        ; $53ac: $fd
    nop                                           ; $53ad: $00
    db $fd                                        ; $53ae: $fd
    nop                                           ; $53af: $00
    db $fd                                        ; $53b0: $fd
    nop                                           ; $53b1: $00
    db $fd                                        ; $53b2: $fd
    nop                                           ; $53b3: $00
    db $fd                                        ; $53b4: $fd
    nop                                           ; $53b5: $00
    db $fd                                        ; $53b6: $fd
    nop                                           ; $53b7: $00
    db $fd                                        ; $53b8: $fd
    nop                                           ; $53b9: $00
    db $fd                                        ; $53ba: $fd
    nop                                           ; $53bb: $00
    db $fd                                        ; $53bc: $fd
    nop                                           ; $53bd: $00
    db $fd                                        ; $53be: $fd
    nop                                           ; $53bf: $00
    db $fd                                        ; $53c0: $fd
    nop                                           ; $53c1: $00

jr_06a_53c2:
    db $fd                                        ; $53c2: $fd
    nop                                           ; $53c3: $00
    db $fd                                        ; $53c4: $fd
    nop                                           ; $53c5: $00
    db $fd                                        ; $53c6: $fd
    nop                                           ; $53c7: $00
    add hl, bc                                    ; $53c8: $09
    ld c, a                                       ; $53c9: $4f
    call nc, $1aec                                ; $53ca: $d4 $ec $1a
    add l                                         ; $53cd: $85
    db $d3                                        ; $53ce: $d3
    ld [hl], l                                    ; $53cf: $75
    jp c, $efb9                                   ; $53d0: $da $b9 $ef

    ld a, e                                       ; $53d3: $7b
    dec bc                                        ; $53d4: $0b
    call $3676                                    ; $53d5: $cd $76 $36
    ld [hl], c                                    ; $53d8: $71
    ld [hl], d                                    ; $53d9: $72
    add [hl]                                      ; $53da: $86
    ld l, l                                       ; $53db: $6d
    ld a, [$e700]                                 ; $53dc: $fa $00 $e7
    ld b, b                                       ; $53df: $40
    sbc $f7                                       ; $53e0: $de $f7
    db $fd                                        ; $53e2: $fd
    ld bc, $a867                                  ; $53e3: $01 $67 $a8
    xor b                                         ; $53e6: $a8
    ld d, c                                       ; $53e7: $51
    jr c, jr_06a_5447                             ; $53e8: $38 $5d

    and a                                         ; $53ea: $a7
    sbc e                                         ; $53eb: $9b
    sbc d                                         ; $53ec: $9a
    ld d, b                                       ; $53ed: $50
    ld b, l                                       ; $53ee: $45
    and c                                         ; $53ef: $a1
    ld a, c                                       ; $53f0: $79
    ld c, l                                       ; $53f1: $4d
    res 2, h                                      ; $53f2: $cb $94
    ld a, e                                       ; $53f4: $7b
    and d                                         ; $53f5: $a2
    and [hl]                                      ; $53f6: $a6
    inc e                                         ; $53f7: $1c
    xor h                                         ; $53f8: $ac
    pop hl                                        ; $53f9: $e1
    db $ed                                        ; $53fa: $ed
    add d                                         ; $53fb: $82
    dec [hl]                                      ; $53fc: $35
    push hl                                       ; $53fd: $e5
    ld d, b                                       ; $53fe: $50
    rst $28                                       ; $53ff: $ef
    adc e                                         ; $5400: $8b
    ld e, h                                       ; $5401: $5c
    inc h                                         ; $5402: $24
    ld h, d                                       ; $5403: $62
    ld b, [hl]                                    ; $5404: $46
    ld d, a                                       ; $5405: $57

Jump_06a_5406:
    ld a, h                                       ; $5406: $7c
    ld e, d                                       ; $5407: $5a
    sbc a                                         ; $5408: $9f
    add $6e                                       ; $5409: $c6 $6e
    sbc c                                         ; $540b: $99
    or h                                          ; $540c: $b4
    jr nz, @+$5c                                  ; $540d: $20 $5a

    sub $0d                                       ; $540f: $d6 $0d
    rra                                           ; $5411: $1f
    ld e, e                                       ; $5412: $5b
    xor c                                         ; $5413: $a9
    call Call_06a_5813                            ; $5414: $cd $13 $58
    ld [hl], $8d                                  ; $5417: $36 $8d
    sbc b                                         ; $5419: $98
    ld d, c                                       ; $541a: $51
    and l                                         ; $541b: $a5
    rlca                                          ; $541c: $07
    call Call_06a_4c2e                            ; $541d: $cd $2e $4c
    ld e, c                                       ; $5420: $59
    add hl, bc                                    ; $5421: $09
    ld d, a                                       ; $5422: $57
    add e                                         ; $5423: $83
    ld a, [$7978]                                 ; $5424: $fa $78 $79
    ld [hl], $7d                                  ; $5427: $36 $7d
    rla                                           ; $5429: $17
    ld l, b                                       ; $542a: $68
    sbc [hl]                                      ; $542b: $9e
    xor [hl]                                      ; $542c: $ae
    ld hl, sp-$56                                 ; $542d: $f8 $aa
    or b                                          ; $542f: $b0
    ld a, d                                       ; $5430: $7a
    add hl, de                                    ; $5431: $19
    di                                            ; $5432: $f3
    sbc d                                         ; $5433: $9a
    and $f7                                       ; $5434: $e6 $f7
    rst $08                                       ; $5436: $cf
    add [hl]                                      ; $5437: $86
    ld l, [hl]                                    ; $5438: $6e
    and c                                         ; $5439: $a1
    reti                                          ; $543a: $d9


    adc $26                                       ; $543b: $ce $26
    ld c, [hl]                                    ; $543d: $4e
    adc $30                                       ; $543e: $ce $30
    ld d, c                                       ; $5440: $51
    ld hl, $65bb                                  ; $5441: $21 $bb $65
    jp nc, Jump_06a_6882                          ; $5444: $d2 $82 $68

jr_06a_5447:
    ld e, c                                       ; $5447: $59
    scf                                           ; $5448: $37
    inc [hl]                                      ; $5449: $34
    ld [hl], c                                    ; $544a: $71
    ld d, h                                       ; $544b: $54
    and a                                         ; $544c: $a7
    inc d                                         ; $544d: $14
    ldh [rSC], a                                  ; $544e: $e0 $02
    ld l, l                                       ; $5450: $6d
    ld h, e                                       ; $5451: $63
    ld b, [hl]                                    ; $5452: $46
    ld hl, $25cb                                  ; $5453: $21 $cb $25
    db $ed                                        ; $5456: $ed
    inc h                                         ; $5457: $24
    ei                                            ; $5458: $fb
    rst $08                                       ; $5459: $cf
    ld d, e                                       ; $545a: $53
    ld l, [hl]                                    ; $545b: $6e
    ld [$5c79], a                                 ; $545c: $ea $79 $5c
    ld [hl-], a                                   ; $545f: $32
    push hl                                       ; $5460: $e5
    add $8c                                       ; $5461: $c6 $8c
    ld l, [hl]                                    ; $5463: $6e
    or [hl]                                       ; $5464: $b6
    sub c                                         ; $5465: $91
    and e                                         ; $5466: $a3
    dec c                                         ; $5467: $0d
    add sp, $79                                   ; $5468: $e8 $79
    ld a, b                                       ; $546a: $78
    ld sp, hl                                     ; $546b: $f9

Jump_06a_546c:
    db $fd                                        ; $546c: $fd
    ld a, b                                       ; $546d: $78
    ld [hl], $5a                                  ; $546e: $36 $5a
    db $f4                                        ; $5470: $f4
    inc e                                         ; $5471: $1c
    ld [hl], e                                    ; $5472: $73
    add d                                         ; $5473: $82
    xor c                                         ; $5474: $a9
    dec a                                         ; $5475: $3d
    adc a                                         ; $5476: $8f
    ld [hl], d                                    ; $5477: $72
    ld [hl], h                                    ; $5478: $74
    ld [hl], h                                    ; $5479: $74
    db $d3                                        ; $547a: $d3
    rlca                                          ; $547b: $07
    db $db                                        ; $547c: $db
    add h                                         ; $547d: $84
    ld d, e                                       ; $547e: $53
    push bc                                       ; $547f: $c5
    cp e                                          ; $5480: $bb
    rst $28                                       ; $5481: $ef
    ld a, e                                       ; $5482: $7b
    sbc d                                         ; $5483: $9a
    ld [hl], d                                    ; $5484: $72
    add sp, -$46                                  ; $5485: $e8 $ba
    ld a, $d5                                     ; $5487: $3e $d5
    reti                                          ; $5489: $d9


    db $f4                                        ; $548a: $f4
    ld bc, $93db                                  ; $548b: $01 $db $93
    and d                                         ; $548e: $a2
    xor d                                         ; $548f: $aa
    ld [hl], b                                    ; $5490: $70
    ld a, [de]                                    ; $5491: $1a
    and [hl]                                      ; $5492: $a6
    ld [de], a                                    ; $5493: $12
    ld c, e                                       ; $5494: $4b
    ld [hl], d                                    ; $5495: $72
    ld l, h                                       ; $5496: $6c
    ld b, e                                       ; $5497: $43
    ld [hl], a                                    ; $5498: $77
    ld [$bfa7], sp                                ; $5499: $08 $a7 $bf
    adc l                                         ; $549c: $8d
    inc e                                         ; $549d: $1c
    ld l, l                                       ; $549e: $6d
    jp z, $ffa1                                   ; $549f: $ca $a1 $ff

    inc l                                         ; $54a2: $2c
    ld hl, sp-$01                                 ; $54a3: $f8 $ff
    scf                                           ; $54a5: $37
    sub c                                         ; $54a6: $91
    ld e, d                                       ; $54a7: $5a
    inc [hl]                                      ; $54a8: $34
    db $db                                        ; $54a9: $db
    db $fc                                        ; $54aa: $fc
    call nc, Call_000_09bb                        ; $54ab: $d4 $bb $09
    push af                                       ; $54ae: $f5
    daa                                           ; $54af: $27
    ld b, b                                       ; $54b0: $40
    db $eb                                        ; $54b1: $eb
    push hl                                       ; $54b2: $e5
    ld l, $58                                     ; $54b3: $2e $58
    rst $38                                       ; $54b5: $ff
    sub c                                         ; $54b6: $91
    sbc [hl]                                      ; $54b7: $9e
    rla                                           ; $54b8: $17
    cp c                                          ; $54b9: $b9
    cp $60                                        ; $54ba: $fe $60
    ld l, b                                       ; $54bc: $68
    cp l                                          ; $54bd: $bd
    adc h                                         ; $54be: $8c
    ld a, c                                       ; $54bf: $79
    ld c, l                                       ; $54c0: $4d
    di                                            ; $54c1: $f3
    ei                                            ; $54c2: $fb
    xor c                                         ; $54c3: $a9
    dec c                                         ; $54c4: $0d
    add sp, $6f                                   ; $54c5: $e8 $6f
    inc hl                                        ; $54c7: $23
    ld b, a                                       ; $54c8: $47
    sbc e                                         ; $54c9: $9b
    ld [hl], d                                    ; $54ca: $72
    add sp, $6f                                   ; $54cb: $e8 $6f
    adc a                                         ; $54cd: $8f
    or d                                          ; $54ce: $b2
    sub d                                         ; $54cf: $92
    jp hl                                         ; $54d0: $e9


    rst $00                                       ; $54d1: $c7
    dec c                                         ; $54d2: $0d
    rra                                           ; $54d3: $1f
    adc c                                         ; $54d4: $89
    inc [hl]                                      ; $54d5: $34
    db $fc                                        ; $54d6: $fc
    xor b                                         ; $54d7: $a8
    call nz, $1c92                                ; $54d8: $c4 $92 $1c
    ld l, e                                       ; $54db: $6b
    sbc b                                         ; $54dc: $98
    and [hl]                                      ; $54dd: $a6
    inc e                                         ; $54de: $1c
    ld [$2ee5], a                                 ; $54df: $ea $e5 $2e
    ld e, b                                       ; $54e2: $58
    ld a, l                                       ; $54e3: $7d
    cp $ef                                        ; $54e4: $fe $ef
    ret nz                                        ; $54e6: $c0

    ld hl, sp+$3f                                 ; $54e7: $f8 $3f
    ld [$04dd], a                                 ; $54e9: $ea $dd $04
    rst $10                                       ; $54ec: $d7
    ld a, a                                       ; $54ed: $7f
    inc [hl]                                      ; $54ee: $34
    dec sp                                        ; $54ef: $3b
    ret                                           ; $54f0: $c9


    dec d                                         ; $54f1: $15
    dec hl                                        ; $54f2: $2b
    ld h, b                                       ; $54f3: $60
    jp nc, Jump_06a_4ab4                          ; $54f4: $d2 $b4 $4a

    rst $30                                       ; $54f7: $f7
    ld a, [c]                                     ; $54f8: $f2
    inc [hl]                                      ; $54f9: $34
    inc a                                         ; $54fa: $3c
    push de                                       ; $54fb: $d5
    cp c                                          ; $54fc: $b9
    ccf                                           ; $54fd: $3f
    sub a                                         ; $54fe: $97
    ld hl, $a726                                  ; $54ff: $21 $26 $a7
    ld c, a                                       ; $5502: $4f
    ld [hl+], a                                   ; $5503: $22
    ld [$7f68], a                                 ; $5504: $ea $68 $7f
    dec de                                        ; $5507: $1b
    add hl, sp                                    ; $5508: $39
    ld e, d                                       ; $5509: $5a
    add e                                         ; $550a: $83
    adc a                                         ; $550b: $8f
    db $fc                                        ; $550c: $fc
    jp nz, $dde8                                  ; $550d: $c2 $e8 $dd

Call_06a_5510:
    dec e                                         ; $5510: $1d
    or b                                          ; $5511: $b0
    rst $00                                       ; $5512: $c7
    ld a, [hl-]                                   ; $5513: $3a
    ret                                           ; $5514: $c9


    ld h, $27                                     ; $5515: $26 $27
    ld a, [de]                                    ; $5517: $1a
    dec de                                        ; $5518: $1b
    ld l, b                                       ; $5519: $68
    dec de                                        ; $551a: $1b
    inc sp                                        ; $551b: $33
    jp z, $ed25                                   ; $551c: $ca $25 $ed

    and d                                         ; $551f: $a2
    sbc $dd                                       ; $5520: $de $dd
    or d                                          ; $5522: $b2
    sub $94                                       ; $5523: $d6 $94
    ld h, e                                       ; $5525: $63
    or [hl]                                       ; $5526: $b6
    xor c                                         ; $5527: $a9
    add a                                         ; $5528: $87
    add $25                                       ; $5529: $c6 $25
    add hl, sp                                    ; $552b: $39
    jp c, $bcf0                                   ; $552c: $da $f0 $bc

    jr nc, @-$3a                                  ; $552f: $30 $c4

    inc c                                         ; $5531: $0c
    xor l                                         ; $5532: $ad
    ld c, a                                       ; $5533: $4f
    ld h, e                                       ; $5534: $63
    rst $38                                       ; $5535: $ff
    ld e, c                                       ; $5536: $59
    ldh a, [rIE]                                  ; $5537: $f0 $ff
    ld l, a                                       ; $5539: $6f
    ld [hl+], a                                   ; $553a: $22
    dec c                                         ; $553b: $0d
    ld a, d                                       ; $553c: $7a
    scf                                           ; $553d: $37
    ld b, c                                       ; $553e: $41
    rst $38                                       ; $553f: $ff
    ld e, c                                       ; $5540: $59
    sub d                                         ; $5541: $92
    jr z, @+$55                                   ; $5542: $28 $53

    ld c, $0b                                     ; $5544: $0e $0b
    or h                                          ; $5546: $b4
    rst $38                                       ; $5547: $ff
    ret z                                         ; $5548: $c8

    and [hl]                                      ; $5549: $a6
    inc e                                         ; $554a: $1c
    sbc d                                         ; $554b: $9a
    ld [hl], d                                    ; $554c: $72
    jr nc, jr_06a_55b7                            ; $554d: $30 $68

    rst $38                                       ; $554f: $ff
    sub c                                         ; $5550: $91
    ld e, b                                       ; $5551: $58
    ld c, a                                       ; $5552: $4f
    cp e                                          ; $5553: $bb
    ccf                                           ; $5554: $3f
    add hl, bc                                    ; $5555: $09
    sbc d                                         ; $5556: $9a
    ld d, c                                       ; $5557: $51
    rrca                                          ; $5558: $0f
    adc l                                         ; $5559: $8d
    ld c, e                                       ; $555a: $4b
    ld [hl], d                                    ; $555b: $72
    ld [$f0d3], a                                 ; $555c: $ea $d3 $f0
    and e                                         ; $555f: $a3
    cpl                                           ; $5560: $2f
    ld h, [hl]                                    ; $5561: $66
    jr jr_06a_55b8                                ; $5562: $18 $54

    add hl, de                                    ; $5564: $19
    inc sp                                        ; $5565: $33
    xor $0f                                       ; $5566: $ee $0f
    ld d, a                                       ; $5568: $57
    ldh a, [rBCPD]                                ; $5569: $f0 $69
    ld a, l                                       ; $556b: $7d
    jp $94ff                                      ; $556c: $c3 $ff $94


    sub $80                                       ; $556f: $d6 $80
    ld c, d                                       ; $5571: $4a
    ld a, $6d                                     ; $5572: $3e $6d
    ld [hl], b                                    ; $5574: $70
    call nc, $f3fe                                ; $5575: $d4 $fe $f3
    sub h                                         ; $5578: $94
    ld a, d                                       ; $5579: $7a
    rst $30                                       ; $557a: $f7
    ld [hl], d                                    ; $557b: $72
    ret                                           ; $557c: $c9


    xor [hl]                                      ; $557d: $ae
    db $eb                                        ; $557e: $eb
    db $f4                                        ; $557f: $f4
    cp h                                          ; $5580: $bc
    ld e, c                                       ; $5581: $59
    sbc $74                                       ; $5582: $de $74
    dec hl                                        ; $5584: $2b
    db $d3                                        ; $5585: $d3
    ld c, a                                       ; $5586: $4f
    call nc, $0189                                ; $5587: $d4 $89 $01
    ld c, l                                       ; $558a: $4d
    dec sp                                        ; $558b: $3b
    ld e, d                                       ; $558c: $5a
    and b                                         ; $558d: $a0
    sub [hl]                                      ; $558e: $96
    call $fd8e                                    ; $558f: $cd $8e $fd
    ld h, a                                       ; $5592: $67
    pop bc                                        ; $5593: $c1
    cp a                                          ; $5594: $bf
    ld e, [hl]                                    ; $5595: $5e
    jr c, @+$0f                                   ; $5596: $38 $0d

    add sp, $6f                                   ; $5598: $e8 $6f
    inc hl                                        ; $559a: $23
    ld b, a                                       ; $559b: $47
    rst $28                                       ; $559c: $ef
    rrca                                          ; $559d: $0f
    ld [c], a                                     ; $559e: $e2
    dec e                                         ; $559f: $1d
    sub a                                         ; $55a0: $97
    adc l                                         ; $55a1: $8d
    dec c                                         ; $55a2: $0d
    ld l, b                                       ; $55a3: $68
    jp z, $bea1                                   ; $55a4: $ca $a1 $be

    pop hl                                        ; $55a7: $e1
    ld a, a                                       ; $55a8: $7f
    ld c, d                                       ; $55a9: $4a
    db $ed                                        ; $55aa: $ed
    cp d                                          ; $55ab: $ba
    ld a, [hl-]                                   ; $55ac: $3a
    reti                                          ; $55ad: $d9


    di                                            ; $55ae: $f3
    ld h, [hl]                                    ; $55af: $66
    ld a, c                                       ; $55b0: $79
    db $d3                                        ; $55b1: $d3
    set 5, h                                      ; $55b2: $cb $ec
    ld sp, hl                                     ; $55b4: $f9
    set 7, e                                      ; $55b5: $cb $fb

jr_06a_55b7:
    sbc l                                         ; $55b7: $9d

jr_06a_55b8:
    sbc $3d                                       ; $55b8: $de $3d
    and e                                         ; $55ba: $a3
    call c, Call_000_29ad                         ; $55bb: $dc $ad $29
    add a                                         ; $55be: $87
    and [hl]                                      ; $55bf: $a6
    dec e                                         ; $55c0: $1d
    dec l                                         ; $55c1: $2d
    ld d, b                                       ; $55c2: $50
    ld c, e                                       ; $55c3: $4b
    ld l, l                                       ; $55c4: $6d
    halt                                          ; $55c5: $76
    call nc, $23fe                                ; $55c6: $d4 $fe $23
    dec a                                         ; $55c9: $3d
    cpl                                           ; $55ca: $2f
    ld [hl], d                                    ; $55cb: $72
    db $fd                                        ; $55cc: $fd
    pop bc                                        ; $55cd: $c1
    ret nc                                        ; $55ce: $d0

    ld b, $f4                                     ; $55cf: $06 $f4
    or a                                          ; $55d1: $b7
    sub c                                         ; $55d2: $91
    and e                                         ; $55d3: $a3
    ld [hl], a                                    ; $55d4: $77
    inc de                                        ; $55d5: $13
    ld e, h                                       ; $55d6: $5c
    sbc c                                         ; $55d7: $99
    rst $10                                       ; $55d8: $d7
    dec [hl]                                      ; $55d9: $35
    and e                                         ; $55da: $a3
    ld h, c                                       ; $55db: $61
    ld e, h                                       ; $55dc: $5c
    cp c                                          ; $55dd: $b9
    and h                                         ; $55de: $a4
    sbc l                                         ; $55df: $9d
    and h                                         ; $55e0: $a4
    or $1f                                        ; $55e1: $f6 $1f
    jp hl                                         ; $55e3: $e9


    ld a, c                                       ; $55e4: $79
    sub c                                         ; $55e5: $91
    db $eb                                        ; $55e6: $eb
    rrca                                          ; $55e7: $0f

jr_06a_55e8:
    add [hl]                                      ; $55e8: $86
    ld [hl], $a0                                  ; $55e9: $36 $a0
    ld l, c                                       ; $55eb: $69
    db $e3                                        ; $55ec: $e3
    ld a, d                                       ; $55ed: $7a
    ld l, [hl]                                    ; $55ee: $6e
    ld hl, sp+$00                                 ; $55ef: $f8 $00
    db $db                                        ; $55f1: $db
    dec a                                         ; $55f2: $3d
    or $d2                                        ; $55f3: $f6 $d2
    inc c                                         ; $55f5: $0c
    inc hl                                        ; $55f6: $23
    ld [$9d53], a                                 ; $55f7: $ea $53 $9d
    xor [hl]                                      ; $55fa: $ae
    xor e                                         ; $55fb: $ab
    ld [hl], h                                    ; $55fc: $74
    cpl                                           ; $55fd: $2f
    ld c, a                                       ; $55fe: $4f
    db $d3                                        ; $55ff: $d3
    adc b                                         ; $5600: $88
    or b                                          ; $5601: $b0
    pop de                                        ; $5602: $d1
    cp c                                          ; $5603: $b9
    ccf                                           ; $5604: $3f
    db $db                                        ; $5605: $db
    db $eb                                        ; $5606: $eb
    dec de                                        ; $5607: $1b
    ld [hl], a                                    ; $5608: $77
    pop bc                                        ; $5609: $c1
    cp d                                          ; $560a: $ba
    xor [hl]                                      ; $560b: $ae
    ld [de], a                                    ; $560c: $12
    xor $6e                                       ; $560d: $ee $6e
    add d                                         ; $560f: $82
    ld a, [$5630]                                 ; $5610: $fa $30 $56
    ld [hl], a                                    ; $5613: $77
    cpl                                           ; $5614: $2f
    di                                            ; $5615: $f3
    cp d                                          ; $5616: $ba
    adc [hl]                                      ; $5617: $8e
    halt                                          ; $5618: $76
    ld e, h                                       ; $5619: $5c
    or [hl]                                       ; $561a: $b6
    pop de                                        ; $561b: $d1
    ld a, [hl+]                                   ; $561c: $2a
    dec a                                         ; $561d: $3d
    jr nc, jr_06a_55e8                            ; $561e: $30 $c8

    and [hl]                                      ; $5620: $a6
    inc e                                         ; $5621: $1c
    ld c, d                                       ; $5622: $4a
    ld bc, $e02e                                  ; $5623: $01 $2e $e0
    ld [hl], l                                    ; $5626: $75
    cp d                                          ; $5627: $ba
    add l                                         ; $5628: $85
    ld h, [hl]                                    ; $5629: $66
    dec sp                                        ; $562a: $3b
    sbc e                                         ; $562b: $9b
    jr c, @+$3b                                   ; $562c: $38 $39

    jp Jump_06a_7c36                              ; $562e: $c3 $36 $7c


    add hl, bc                                    ; $5631: $09
    ld [$a6c3], a                                 ; $5632: $ea $c3 $a6
    add hl, hl                                    ; $5635: $29
    add a                                         ; $5636: $87
    and [hl]                                      ; $5637: $a6
    ld b, a                                       ; $5638: $47
    inc sp                                        ; $5639: $33
    or h                                          ; $563a: $b4
    ld h, c                                       ; $563b: $61
    or h                                          ; $563c: $b4
    cp a                                          ; $563d: $bf
    adc l                                         ; $563e: $8d
    inc e                                         ; $563f: $1c
    db $dd                                        ; $5640: $dd
    ret nc                                        ; $5641: $d0

    add h                                         ; $5642: $84
    ld hl, sp+$4f                                 ; $5643: $f8 $4f
    call z, $3946                                 ; $5645: $cc $46 $39
    dec de                                        ; $5648: $1b

Call_06a_5649:
    db $e3                                        ; $5649: $e3
    ld l, b                                       ; $564a: $68
    ld hl, $65bb                                  ; $564b: $21 $bb $65
    jp nc, Jump_06a_6882                          ; $564e: $d2 $82 $68

    ld e, c                                       ; $5651: $59
    scf                                           ; $5652: $37
    ld a, h                                       ; $5653: $7c
    ld h, a                                       ; $5654: $67
    ld d, h                                       ; $5655: $54
    ld h, d                                       ; $5656: $62
    ld c, c                                       ; $5657: $49
    adc [hl]                                      ; $5658: $8e
    dec [hl]                                      ; $5659: $35
    ld a, [bc]                                    ; $565a: $0a
    and a                                         ; $565b: $a7
    rst $08                                       ; $565c: $cf
    cp d                                          ; $565d: $ba
    xor h                                         ; $565e: $ac
    sub l                                         ; $565f: $95
    rst $38                                       ; $5660: $ff

jr_06a_5661:
    sub e                                         ; $5661: $93
    cp h                                          ; $5662: $bc
    dec hl                                        ; $5663: $2b
    sbc $2d                                       ; $5664: $de $2d
    jr nc, jr_06a_5661                            ; $5666: $30 $f9

    ld h, $a2                                     ; $5668: $26 $a2
    dec hl                                        ; $566a: $2b
    cp [hl]                                       ; $566b: $be
    ld b, $28                                     ; $566c: $06 $28
    inc sp                                        ; $566e: $33
    xor l                                         ; $566f: $ad
    inc e                                         ; $5670: $1c
    ld l, l                                       ; $5671: $6d
    jp c, $1e5e                                   ; $5672: $da $5e $1e

    cp l                                          ; $5675: $bd
    ccf                                           ; $5676: $3f
    add a                                         ; $5677: $87
    adc e                                         ; $5678: $8b
    and a                                         ; $5679: $a7
    rst $00                                       ; $567a: $c7
    ld e, b                                       ; $567b: $58
    halt                                          ; $567c: $76
    add l                                         ; $567d: $85
    jr @+$62                                      ; $567e: $18 $60

    ld a, l                                       ; $5680: $7d
    add hl, de                                    ; $5681: $19
    ld d, c                                       ; $5682: $51
    set 7, d                                      ; $5683: $cb $fa
    add [hl]                                      ; $5685: $86
    push af                                       ; $5686: $f5
    and e                                         ; $5687: $a3
    dec [hl]                                      ; $5688: $35
    xor $9a                                       ; $5689: $ee $9a
    or l                                          ; $568b: $b5
    dec d                                         ; $568c: $15
    sbc [hl]                                      ; $568d: $9e
    ld [hl], $4e                                  ; $568e: $36 $4e
    scf                                           ; $5690: $37
    cpl                                           ; $5691: $2f
    adc $83                                       ; $5692: $ce $83
    add [hl]                                      ; $5694: $86
    pop de                                        ; $5695: $d1
    ld l, [hl]                                    ; $5696: $6e
    or [hl]                                       ; $5697: $b6
    sub c                                         ; $5698: $91
    and e                                         ; $5699: $a3
    ld [hl], a                                    ; $569a: $77
    push bc                                       ; $569b: $c5
    ld a, l                                       ; $569c: $7d
    sbc e                                         ; $569d: $9b
    dec d                                         ; $569e: $15
    ld e, [hl]                                    ; $569f: $5e
    add [hl]                                      ; $56a0: $86
    inc l                                         ; $56a1: $2c
    ld h, d                                       ; $56a2: $62
    jp z, $e631                                   ; $56a3: $ca $31 $e6

    add hl, hl                                    ; $56a6: $29
    ld e, a                                       ; $56a7: $5f
    inc c                                         ; $56a8: $0c
    ld l, h                                       ; $56a9: $6c
    ld [hl], d                                    ; $56aa: $72
    db $ed                                        ; $56ab: $ed
    xor [hl]                                      ; $56ac: $ae
    cp b                                          ; $56ad: $b8
    ld [$0c8b], a                                 ; $56ae: $ea $8b $0c
    inc hl                                        ; $56b1: $23
    ld [$8679], a                                 ; $56b2: $ea $79 $86
    ld d, b                                       ; $56b5: $50
    db $f4                                        ; $56b6: $f4
    ld a, h                                       ; $56b7: $7c
    adc h                                         ; $56b8: $8c
    and l                                         ; $56b9: $a5
    ld [hl], c                                    ; $56ba: $71
    ld hl, sp+$07                                 ; $56bb: $f8 $07
    add hl, bc                                    ; $56bd: $09
    ld a, [$92cf]                                 ; $56be: $fa $cf $92
    ld b, h                                       ; $56c1: $44
    and a                                         ; $56c2: $a7
    add hl, de                                    ; $56c3: $19
    xor [hl]                                      ; $56c4: $ae
    ld e, $1a                                     ; $56c5: $1e $1a
    sub a                                         ; $56c7: $97
    db $e4                                        ; $56c8: $e4
    call c, $e71f                                 ; $56c9: $dc $1f $e7
    ret nc                                        ; $56cc: $d0

    cp b                                          ; $56cd: $b8
    inc h                                         ; $56ce: $24
    and a                                         ; $56cf: $a7
    add a                                         ; $56d0: $87
    ld e, a                                       ; $56d1: $5f
    add sp, $34                                   ; $56d2: $e8 $34
    dec sp                                        ; $56d4: $3b
    ld l, l                                       ; $56d5: $6d
    ld [c], a                                     ; $56d6: $e2
    ld e, e                                       ; $56d7: $5b
    sub [hl]                                      ; $56d8: $96
    daa                                           ; $56d9: $27
    add sp, -$03                                  ; $56da: $e8 $fd
    ld [bc], a                                    ; $56dc: $02
    rla                                           ; $56dd: $17
    inc e                                         ; $56de: $1c
    cp $01                                        ; $56df: $fe $01
    rst $20                                       ; $56e1: $e7
    ret nc                                        ; $56e2: $d0

    cp b                                          ; $56e3: $b8
    inc h                                         ; $56e4: $24
    and a                                         ; $56e5: $a7
    add a                                         ; $56e6: $87
    sbc a                                         ; $56e7: $9f
    rst $28                                       ; $56e8: $ef
    sub [hl]                                      ; $56e9: $96
    push hl                                       ; $56ea: $e5
    xor l                                         ; $56eb: $ad
    ld h, b                                       ; $56ec: $60
    ld c, l                                       ; $56ed: $4d
    inc e                                         ; $56ee: $1c
    add c                                         ; $56ef: $81
    ldh a, [$ec]                                  ; $56f0: $f0 $ec
    inc a                                         ; $56f2: $3c
    db $fc                                        ; $56f3: $fc
    inc bc                                        ; $56f4: $03
    rst $20                                       ; $56f5: $e7
    ret nc                                        ; $56f6: $d0

    cp b                                          ; $56f7: $b8
    inc h                                         ; $56f8: $24
    and a                                         ; $56f9: $a7
    add a                                         ; $56fa: $87
    sbc a                                         ; $56fb: $9f
    ld l, a                                       ; $56fc: $6f
    ld c, b                                       ; $56fd: $48
    adc a                                         ; $56fe: $8f
    db $ed                                        ; $56ff: $ed
    db $ec                                        ; $5700: $ec
    db $f4                                        ; $5701: $f4
    inc e                                         ; $5702: $1c
    ld a, [bc]                                    ; $5703: $0a
    ld [hl], b                                    ; $5704: $70
    dec bc                                        ; $5705: $0b
    jp $e1d8                                      ; $5706: $c3 $d8 $e1


    rra                                           ; $5709: $1f
    rst $20                                       ; $570a: $e7
    ret nc                                        ; $570b: $d0

    cp b                                          ; $570c: $b8
    inc h                                         ; $570d: $24
    and a                                         ; $570e: $a7
    add a                                         ; $570f: $87
    ld l, a                                       ; $5710: $6f
    add l                                         ; $5711: $85
    add hl, bc                                    ; $5712: $09
    jp c, Jump_000_3b19                           ; $5713: $da $19 $3b

    db $dd                                        ; $5716: $dd
    jp z, $fde5                                   ; $5717: $ca $e5 $fd

    ld l, a                                       ; $571a: $6f
    ld [hl], h                                    ; $571b: $74
    ld c, $ff                                     ; $571c: $0e $ff
    nop                                           ; $571e: $00
    add hl, bc                                    ; $571f: $09
    dec c                                         ; $5720: $0d
    adc b                                         ; $5721: $88
    add hl, de                                    ; $5722: $19
    jp c, $fe80                                   ; $5723: $da $80 $fe

    db $e3                                        ; $5726: $e3
    ld sp, $ea6e                                  ; $5727: $31 $6e $ea
    ld c, $7a                                     ; $572a: $0e $7a
    and b                                         ; $572c: $a0
    push hl                                       ; $572d: $e5
    sub d                                         ; $572e: $92
    halt                                          ; $572f: $76
    sub d                                         ; $5730: $92
    db $fd                                        ; $5731: $fd
    rst $20                                       ; $5732: $e7
    add hl, hl                                    ; $5733: $29
    xor e                                         ; $5734: $ab
    db $e3                                        ; $5735: $e3
    ld sp, $0b14                                  ; $5736: $31 $14 $0b
    ld [hl], h                                    ; $5739: $74
    db $d3                                        ; $573a: $d3
    rlca                                          ; $573b: $07
    rst $20                                       ; $573c: $e7
    ld b, b                                       ; $573d: $40
    adc d                                         ; $573e: $8a
    jp z, $da26                                   ; $573f: $ca $26 $da

    ld a, b                                       ; $5742: $78
    and c                                         ; $5743: $a1
    ld a, [hl-]                                   ; $5744: $3a
    add $ee                                       ; $5745: $c6 $ee
    ldh a, [$6d]                                  ; $5747: $f0 $6d
    ld e, h                                       ; $5749: $5c
    ld l, $34                                     ; $574a: $2e $34
    xor a                                         ; $574c: $af
    dec [hl]                                      ; $574d: $35
    ld d, d                                       ; $574e: $52
    dec bc                                        ; $574f: $0b
    call Call_06a_4bce                            ; $5750: $cd $ce $4b
    dec l                                         ; $5753: $2d
    sbc e                                         ; $5754: $9b
    ld h, c                                       ; $5755: $61
    push hl                                       ; $5756: $e5
    sub d                                         ; $5757: $92
    halt                                          ; $5758: $76
    sub d                                         ; $5759: $92
    dec c                                         ; $575a: $0d
    rst $08                                       ; $575b: $cf
    ei                                            ; $575c: $fb
    ld a, [hl]                                    ; $575d: $7e
    or a                                          ; $575e: $b7
    inc b                                         ; $575f: $04
    ld b, $14                                     ; $5760: $06 $14
    or d                                          ; $5762: $b2
    db $f4                                        ; $5763: $f4
    ld d, d                                       ; $5764: $52
    inc sp                                        ; $5765: $33
    xor l                                         ; $5766: $ad
    call nc, $e3fe                                ; $5767: $d4 $fe $e3
    ld sp, $ddea                                  ; $576a: $31 $ea $dd
    add h                                         ; $576d: $84
    add l                                         ; $576e: $85
    ld e, d                                       ; $576f: $5a
    ld a, a                                       ; $5770: $7f
    ld [bc], a                                    ; $5771: $02
    ld h, h                                       ; $5772: $64
    inc sp                                        ; $5773: $33
    xor h                                         ; $5774: $ac
    ld bc, $304f                                  ; $5775: $01 $4f $30
    jp $e7f4                                      ; $5778: $c3 $f4 $e7


    or e                                          ; $577b: $b3
    ld [hl], d                                    ; $577c: $72
    ld c, c                                       ; $577d: $49
    cp e                                          ; $577e: $bb
    xor b                                         ; $577f: $a8
    dec c                                         ; $5780: $0d
    adc b                                         ; $5781: $88

jr_06a_5782:
    add hl, de                                    ; $5782: $19
    ld a, d                                       ; $5783: $7a
    ld a, a                                       ; $5784: $7f
    db $db                                        ; $5785: $db
    dec a                                         ; $5786: $3d
    or $d2                                        ; $5787: $f6 $d2
    inc c                                         ; $5789: $0c
    inc hl                                        ; $578a: $23
    ld [$a616], a                                 ; $578b: $ea $16 $a6
    db $ed                                        ; $578e: $ed
    add l                                         ; $578f: $85
    ei                                            ; $5790: $fb
    inc bc                                        ; $5791: $03
    rst $20                                       ; $5792: $e7
    ld e, $1e                                     ; $5793: $1e $1e
    add hl, de                                    ; $5795: $19
    jr z, jr_06a_5782                             ; $5796: $28 $ea

    ld d, $9a                                     ; $5798: $16 $9a
    db $ed                                        ; $579a: $ed
    cp h                                          ; $579b: $bc
    sbc e                                         ; $579c: $9b
    ldh [$7a], a                                  ; $579d: $e0 $7a
    ld a, b                                       ; $579f: $78
    ld e, [hl]                                    ; $57a0: $5e
    rst $10                                       ; $57a1: $d7
    ld a, h                                       ; $57a2: $7c
    jr c, jr_06a_57aa                             ; $57a3: $38 $05

    cp b                                          ; $57a5: $b8
    ret nz                                        ; $57a6: $c0

    dec d                                         ; $57a7: $15
    set 7, d                                      ; $57a8: $cb $fa

jr_06a_57aa:
    ld [hl], $bf                                  ; $57aa: $36 $bf
    inc sp                                        ; $57ac: $33
    sbc d                                         ; $57ad: $9a
    xor b                                         ; $57ae: $a8
    cp d                                          ; $57af: $ba
    ld a, e                                       ; $57b0: $7b
    ld d, e                                       ; $57b1: $53

jr_06a_57b2:
    ld c, $cd                                     ; $57b2: $0e $cd
    adc b                                         ; $57b4: $88
    ret                                           ; $57b5: $c9


    jp hl                                         ; $57b6: $e9


    pop hl                                        ; $57b7: $e1
    sbc c                                         ; $57b8: $99
    ld h, c                                       ; $57b9: $61
    jp z, $87fa                                   ; $57ba: $ca $fa $87

    ld e, b                                       ; $57bd: $58
    ld e, a                                       ; $57be: $5f
    ld d, h                                       ; $57bf: $54
    db $fc                                        ; $57c0: $fc
    ld sp, hl                                     ; $57c1: $f9
    db $fd                                        ; $57c2: $fd
    cpl                                           ; $57c3: $2f
    or b                                          ; $57c4: $b0
    sub c                                         ; $57c5: $91
    jp c, Jump_06a_546c                           ; $57c6: $da $6c $54

    inc a                                         ; $57c9: $3c
    and e                                         ; $57ca: $a3
    ld d, $65                                     ; $57cb: $16 $65
    ld a, d                                       ; $57cd: $7a
    adc h                                         ; $57ce: $8c
    push af                                       ; $57cf: $f5
    dec c                                         ; $57d0: $0d
    rst $38                                       ; $57d1: $ff
    db $d3                                        ; $57d2: $d3
    ld l, c                                       ; $57d3: $69
    jr c, jr_06a_57b2                             ; $57d4: $38 $dc

    ld c, c                                       ; $57d6: $49
    ld d, [hl]                                    ; $57d7: $56
    and c                                         ; $57d8: $a1
    sbc c                                         ; $57d9: $99
    rst $30                                       ; $57da: $f7
    rlca                                          ; $57db: $07
    db $db                                        ; $57dc: $db
    sub a                                         ; $57dd: $97
    dec [hl]                                      ; $57de: $35
    ld d, c                                       ; $57df: $51
    inc de                                        ; $57e0: $13
    ld l, l                                       ; $57e1: $6d
    cp h                                          ; $57e2: $bc
    ld d, b                                       ; $57e3: $50
    dec e                                         ; $57e4: $1d
    ld h, e                                       ; $57e5: $63
    ld [hl], a                                    ; $57e6: $77
    ld hl, sp+$36                                 ; $57e7: $f8 $36
    ld l, $df                                     ; $57e9: $2e $df
    rra                                           ; $57eb: $1f
    db $db                                        ; $57ec: $db
    sub a                                         ; $57ed: $97
    dec [hl]                                      ; $57ee: $35
    ld d, c                                       ; $57ef: $51
    or a                                          ; $57f0: $b7
    ret nc                                        ; $57f1: $d0

    ld l, h                                       ; $57f2: $6c
    and a                                         ; $57f3: $a7
    xor b                                         ; $57f4: $a8
    db $d3                                        ; $57f5: $d3
    sub h                                         ; $57f6: $94
    ld b, e                                       ; $57f7: $43
    inc sp                                        ; $57f8: $33
    sbc d                                         ; $57f9: $9a
    adc l                                         ; $57fa: $8d
    cp e                                          ; $57fb: $bb
    ld [$f58f], a                                 ; $57fc: $ea $8f $f5
    ld e, a                                       ; $57ff: $5f
    db $db                                        ; $5800: $db
    db $f4                                        ; $5801: $f4
    ld bc, $9bdb                                  ; $5802: $01 $db $9b
    ld l, b                                       ; $5805: $68
    db $e3                                        ; $5806: $e3
    add l                                         ; $5807: $85
    ld [$7758], a                                 ; $5808: $ea $58 $77
    ld b, h                                       ; $580b: $44
    ld a, [$64a8]                                 ; $580c: $fa $a8 $64
    inc c                                         ; $580f: $0c
    db $e3                                        ; $5810: $e3
    ld [hl], $4a                                  ; $5811: $36 $4a

Call_06a_5813:
    call nc, $f9b7                                ; $5813: $d4 $b7 $f9
    sbc l                                         ; $5816: $9d
    pop de                                        ; $5817: $d1
    ld a, [de]                                    ; $5818: $1a
    db $10                                        ; $5819: $10
    inc sp                                        ; $581a: $33
    or h                                          ; $581b: $b4
    ld bc, $c7fd                                  ; $581c: $01 $fd $c7
    ld h, e                                       ; $581f: $63
    inc d                                         ; $5820: $14
    dec d                                         ; $5821: $15
    sbc l                                         ; $5822: $9d
    ld l, [hl]                                    ; $5823: $6e
    ld h, c                                       ; $5824: $61
    jp c, Jump_06a_685e                           ; $5825: $da $5e $68

    ld a, b                                       ; $5828: $78
    xor d                                         ; $5829: $aa
    ret c                                         ; $582a: $d8

    jr z, @-$2d                                   ; $582b: $28 $d1

    sub h                                         ; $582d: $94
    ld b, e                                       ; $582e: $43
    inc sp                                        ; $582f: $33
    sub a                                         ; $5830: $97
    dec d                                         ; $5831: $15
    halt                                          ; $5832: $76
    dec [hl]                                      ; $5833: $35
    add hl, sp                                    ; $5834: $39
    ld l, [hl]                                    ; $5835: $6e
    dec b                                         ; $5836: $05
    ld d, l                                       ; $5837: $55
    sub h                                         ; $5838: $94
    ld c, e                                       ; $5839: $4b
    jp c, $ad45                                   ; $583a: $da $45 $ad

    ccf                                           ; $583d: $3f
    ld d, [hl]                                    ; $583e: $56
    and [hl]                                      ; $583f: $a6
    call c, Call_000_3fbb                         ; $5840: $dc $bb $3f
    dec sp                                        ; $5843: $3b
    jr nz, jr_06a_5861                            ; $5844: $20 $1b

    or $58                                        ; $5846: $f6 $58
    cp l                                          ; $5848: $bd
    ld b, b                                       ; $5849: $40
    ld d, c                                       ; $584a: $51
    inc sp                                        ; $584b: $33
    sub a                                         ; $584c: $97
    dec d                                         ; $584d: $15
    halt                                          ; $584e: $76
    adc c                                         ; $584f: $89
    sbc d                                         ; $5850: $9a
    and h                                         ; $5851: $a4
    nop                                           ; $5852: $00
    sbc $f7                                       ; $5853: $de $f7
    call $9d65                                    ; $5855: $cd $65 $9d
    ld l, h                                       ; $5858: $6c
    and b                                         ; $5859: $a0
    or $1f                                        ; $585a: $f6 $1f
    adc a                                         ; $585c: $8f
    ld d, c                                       ; $585d: $51
    sbc e                                         ; $585e: $9b
    ld [hl], d                                    ; $585f: $72
    ld l, b                                       ; $5860: $68

jr_06a_5861:
    and [hl]                                      ; $5861: $a6
    db $f4                                        ; $5862: $f4
    xor h                                         ; $5863: $ac
    sub e                                         ; $5864: $93
    push af                                       ; $5865: $f5
    dec c                                         ; $5866: $0d
    rst $38                                       ; $5867: $ff
    ld d, e                                       ; $5868: $53
    jp z, $2c06                                   ; $5869: $ca $06 $2c

    ret nc                                        ; $586c: $d0

    ei                                            ; $586d: $fb
    inc bc                                        ; $586e: $03
    rla                                           ; $586f: $17
    ld c, b                                       ; $5870: $48
    ld a, a                                       ; $5871: $7f
    inc l                                         ; $5872: $2c
    ld [hl], e                                    ; $5873: $73
    and e                                         ; $5874: $a3
    and d                                         ; $5875: $a2
    add hl, hl                                    ; $5876: $29
    add a                                         ; $5877: $87
    jp nz, $b7d5                                  ; $5878: $c2 $d5 $b7

    ld sp, hl                                     ; $587b: $f9
    sbc l                                         ; $587c: $9d
    and c                                         ; $587d: $a1
    ld e, h                                       ; $587e: $5c
    jp nc, $ea2e                                  ; $587f: $d2 $2e $ea

    and [hl]                                      ; $5882: $a6
    rrca                                          ; $5883: $0f
    sbc e                                         ; $5884: $9b
    ld b, a                                       ; $5885: $47
    or $87                                        ; $5886: $f6 $87
    ld h, l                                       ; $5888: $65
    db $ec                                        ; $5889: $ec
    and d                                         ; $588a: $a2
    xor b                                         ; $588b: $a8

jr_06a_588c:
    sub d                                         ; $588c: $92
    jp c, $d90c                                   ; $588d: $da $0c $d9

    rst $18                                       ; $5890: $df
    cp l                                          ; $5891: $bd
    ret nz                                        ; $5892: $c0

    jr nc, jr_06a_588c                            ; $5893: $30 $f7

    rlca                                          ; $5895: $07
    add hl, bc                                    ; $5896: $09
    add d                                         ; $5897: $82
    ld a, a                                       ; $5898: $7f
    inc l                                         ; $5899: $2c
    adc b                                         ; $589a: $88
    add hl, de                                    ; $589b: $19
    call Call_000_0f46                            ; $589c: $cd $46 $0f
    sub a                                         ; $589f: $97
    db $e4                                        ; $58a0: $e4
    adc b                                         ; $58a1: $88
    cp d                                          ; $58a2: $ba
    add l                                         ; $58a3: $85
    ld h, [hl]                                    ; $58a4: $66
    dec sp                                        ; $58a5: $3b
    rst $28                                       ; $58a6: $ef
    sbc [hl]                                      ; $58a7: $9e
    dec sp                                        ; $58a8: $3b
    xor [hl]                                      ; $58a9: $ae
    rst $00                                       ; $58aa: $c7
    ld [hl], $71                                  ; $58ab: $36 $71
    ld h, d                                       ; $58ad: $62
    sbc [hl]                                      ; $58ae: $9e
    ld a, [$a658]                                 ; $58af: $fa $58 $a6
    sbc [hl]                                      ; $58b2: $9e
    sub c                                         ; $58b3: $91
    call Call_000_0f46                            ; $58b4: $cd $46 $0f
    sub a                                         ; $58b7: $97
    db $e4                                        ; $58b8: $e4
    call c, $e21f                                 ; $58b9: $dc $1f $e2
    add hl, hl                                    ; $58bc: $29
    rst $30                                       ; $58bd: $f7
    ld a, [bc]                                    ; $58be: $0a
    call $e9c2                                    ; $58bf: $cd $c2 $e9
    ld l, b                                       ; $58c2: $68
    inc bc                                        ; $58c3: $03
    ld h, d                                       ; $58c4: $62
    add [hl]                                      ; $58c5: $86
    ld [hl], $a0                                  ; $58c6: $36 $a0
    add hl, hl                                    ; $58c8: $29
    add a                                         ; $58c9: $87
    ld a, [$ff86]                                 ; $58ca: $fa $86 $ff
    jp hl                                         ; $58cd: $e9


    call c, Call_000_091f                         ; $58ce: $dc $1f $09
    ld sp, $a70b                                  ; $58d1: $31 $0b $a7
    ld c, a                                       ; $58d4: $4f
    di                                            ; $58d5: $f3
    ld [hl], h                                    ; $58d6: $74
    ld e, l                                       ; $58d7: $5d
    ld d, e                                       ; $58d8: $53
    ld c, $5d                                     ; $58d9: $0e $5d
    rst $10                                       ; $58db: $d7
    or b                                          ; $58dc: $b0
    db $db                                        ; $58dd: $db
    sbc a                                         ; $58de: $9f
    add hl, hl                                    ; $58df: $29
    rst $20                                       ; $58e0: $e7
    cp $00                                        ; $58e1: $fe $00
    rst $20                                       ; $58e3: $e7
    adc h                                         ; $58e4: $8c
    inc d                                         ; $58e5: $14
    ld d, l                                       ; $58e6: $55
    ld a, [c]                                     ; $58e7: $f2
    ld l, c                                       ; $58e8: $69
    jp Jump_06a_7f6e                              ; $58e9: $c3 $6e $7f


    and [hl]                                      ; $58ec: $a6
    sbc h                                         ; $58ed: $9c
    ei                                            ; $58ee: $fb
    inc bc                                        ; $58ef: $03
    db $db                                        ; $58f0: $db
    ld e, h                                       ; $58f1: $5c
    db $fc                                        ; $58f2: $fc
    ld e, c                                       ; $58f3: $59
    ld b, l                                       ; $58f4: $45
    inc sp                                        ; $58f5: $33
    ld h, h                                       ; $58f6: $64
    jp Jump_06a_7f6e                              ; $58f7: $c3 $6e $7f


    and [hl]                                      ; $58fa: $a6
    sbc h                                         ; $58fb: $9c
    or d                                          ; $58fc: $b2
    sub d                                         ; $58fd: $92
    ld c, a                                       ; $58fe: $4f
    rst $28                                       ; $58ff: $ef
    rrca                                          ; $5900: $0f
    ld [c], a                                     ; $5901: $e2
    jp hl                                         ; $5902: $e9


Jump_06a_5903:
    ld sp, $2336                                  ; $5903: $31 $36 $23
    ld h, $a7                                     ; $5906: $26 $a7
    ld c, a                                       ; $5908: $4f
    ld [hl+], a                                   ; $5909: $22
    ld [$ec34], a                                 ; $590a: $ea $34 $ec
    or $67                                        ; $590d: $f6 $67
    jp z, Jump_000_3fb9                           ; $590f: $ca $b9 $3f

    ld h, a                                       ; $5912: $67
    sub h                                         ; $5913: $94
    rst $38                                       ; $5914: $ff
    xor $f1                                       ; $5915: $ee $f1
    push hl                                       ; $5917: $e5
    cp c                                          ; $5918: $b9
    ccf                                           ; $5919: $3f
    rst $20                                       ; $591a: $e7
    adc h                                         ; $591b: $8c
    inc d                                         ; $591c: $14
    ld d, l                                       ; $591d: $55
    ld a, [c]                                     ; $591e: $f2
    ld l, c                                       ; $591f: $69
    ld sp, hl                                     ; $5920: $f9
    rst $28                                       ; $5921: $ef
    ld e, $5f                                     ; $5922: $1e $5f
    sbc [hl]                                      ; $5924: $9e
    ei                                            ; $5925: $fb
    inc bc                                        ; $5926: $03
    db $db                                        ; $5927: $db
    ld e, h                                       ; $5928: $5c
    db $fc                                        ; $5929: $fc
    ld e, c                                       ; $592a: $59
    ld b, l                                       ; $592b: $45
    inc sp                                        ; $592c: $33
    ld h, h                                       ; $592d: $64
    ld sp, hl                                     ; $592e: $f9
    rst $28                                       ; $592f: $ef
    ld e, $5f                                     ; $5930: $1e $5f
    sbc [hl]                                      ; $5932: $9e
    or d                                          ; $5933: $b2
    sub d                                         ; $5934: $92
    ld c, a                                       ; $5935: $4f
    rst $28                                       ; $5936: $ef
    rrca                                          ; $5937: $0f
    ld [c], a                                     ; $5938: $e2
    jp hl                                         ; $5939: $e9


Call_06a_593a:
    ld sp, $2336                                  ; $593a: $31 $36 $23
    ld h, $a7                                     ; $593d: $26 $a7
    ld c, a                                       ; $593f: $4f
    ld [hl+], a                                   ; $5940: $22
    ld [$ff94], a                                 ; $5941: $ea $94 $ff
    xor $f1                                       ; $5944: $ee $f1
    push hl                                       ; $5946: $e5
    cp c                                          ; $5947: $b9
    ccf                                           ; $5948: $3f
    db $db                                        ; $5949: $db
    ld e, h                                       ; $594a: $5c
    db $fc                                        ; $594b: $fc
    ld e, c                                       ; $594c: $59
    ld b, l                                       ; $594d: $45
    inc sp                                        ; $594e: $33
    ld h, h                                       ; $594f: $64
    ld sp, hl                                     ; $5950: $f9
    rst $28                                       ; $5951: $ef
    ld e, $5f                                     ; $5952: $1e $5f
    sbc [hl]                                      ; $5954: $9e
    or d                                          ; $5955: $b2
    sub d                                         ; $5956: $92
    ld c, a                                       ; $5957: $4f
    rst $28                                       ; $5958: $ef
    rrca                                          ; $5959: $0f
    rst $20                                       ; $595a: $e7
    adc h                                         ; $595b: $8c
    inc d                                         ; $595c: $14
    ld d, l                                       ; $595d: $55
    ld a, [c]                                     ; $595e: $f2
    ld l, c                                       ; $595f: $69
    ld sp, hl                                     ; $5960: $f9
    rst $28                                       ; $5961: $ef
    ld e, $5f                                     ; $5962: $1e $5f
    sbc [hl]                                      ; $5964: $9e
    ei                                            ; $5965: $fb
    inc bc                                        ; $5966: $03
    ld [c], a                                     ; $5967: $e2
    jp hl                                         ; $5968: $e9


    ld sp, $2336                                  ; $5969: $31 $36 $23
    ld h, $a7                                     ; $596c: $26 $a7
    ld c, a                                       ; $596e: $4f
    ld [hl+], a                                   ; $596f: $22
    ld [$ff94], a                                 ; $5970: $ea $94 $ff
    xor $f1                                       ; $5973: $ee $f1
    push hl                                       ; $5975: $e5
    cp c                                          ; $5976: $b9
    ccf                                           ; $5977: $3f
    sub a                                         ; $5978: $97
    ld e, e                                       ; $5979: $5b
    ld a, [hl]                                    ; $597a: $7e
    ld l, c                                       ; $597b: $69
    ld [$eddd], a                                 ; $597c: $ea $dd $ed
    dec d                                         ; $597f: $15
    ld b, b                                       ; $5980: $40
    dec bc                                        ; $5981: $0b
    ld c, a                                       ; $5982: $4f
    ld [hl], $8c                                  ; $5983: $36 $8c
    or $5c                                        ; $5985: $f6 $5c
    ld h, a                                       ; $5987: $67
    cp d                                          ; $5988: $ba
    ld h, b                                       ; $5989: $60
    and a                                         ; $598a: $a7
    ld d, $9a                                     ; $598b: $16 $9a
    cp c                                          ; $598d: $b9
    ld h, d                                       ; $598e: $62
    rst $38                                       ; $598f: $ff
    inc h                                         ; $5990: $24
    sbc $34                                       ; $5991: $de $34
    ld h, b                                       ; $5993: $60
    and c                                         ; $5994: $a1
    sbc $1f                                       ; $5995: $de $1f
    rst $20                                       ; $5997: $e7
    adc h                                         ; $5998: $8c
    inc d                                         ; $5999: $14
    ld d, l                                       ; $599a: $55
    ld a, [c]                                     ; $599b: $f2
    ld l, c                                       ; $599c: $69
    sbc l                                         ; $599d: $9d
    push hl                                       ; $599e: $e5
    sub a                                         ; $599f: $97
    and [hl]                                      ; $59a0: $a6
    sbc $1f                                       ; $59a1: $de $1f
    db $db                                        ; $59a3: $db
    cp e                                          ; $59a4: $bb
    cp h                                          ; $59a5: $bc
    sub l                                         ; $59a6: $95
    ld c, l                                       ; $59a7: $4d
    jp $d5db                                      ; $59a8: $c3 $db $d5


    sub h                                         ; $59ab: $94
    ld b, e                                       ; $59ac: $43
    rst $10                                       ; $59ad: $d7
    push de                                       ; $59ae: $d5
    ld hl, sp+$76                                 ; $59af: $f8 $76
    dec [hl]                                      ; $59b1: $35
    and b                                         ; $59b2: $a0
    sub d                                         ; $59b3: $92
    ld sp, $5ad8                                  ; $59b4: $31 $d8 $5a
    ld a, d                                       ; $59b7: $7a
    adc h                                         ; $59b8: $8c
    rst $30                                       ; $59b9: $f7
    rlca                                          ; $59ba: $07
    rst $20                                       ; $59bb: $e7
    adc h                                         ; $59bc: $8c
    inc d                                         ; $59bd: $14
    ld d, l                                       ; $59be: $55
    ld a, [c]                                     ; $59bf: $f2
    ld l, c                                       ; $59c0: $69
    adc l                                         ; $59c1: $8d
    ld l, a                                       ; $59c2: $6f
    ld d, a                                       ; $59c3: $57

Jump_06a_59c4:
    inc bc                                        ; $59c4: $03
    ld a, [hl+]                                   ; $59c5: $2a
    add hl, de                                    ; $59c6: $19
    add e                                         ; $59c7: $83
    xor l                                         ; $59c8: $ad
    and l                                         ; $59c9: $a5
    rst $00                                       ; $59ca: $c7
    ld a, b                                       ; $59cb: $78
    ld a, a                                       ; $59cc: $7f
    db $db                                        ; $59cd: $db
    ld e, h                                       ; $59ce: $5c
    db $fc                                        ; $59cf: $fc
    ld e, c                                       ; $59d0: $59
    ld b, l                                       ; $59d1: $45
    inc sp                                        ; $59d2: $33
    ld h, h                                       ; $59d3: $64
    adc l                                         ; $59d4: $8d
    ld l, a                                       ; $59d5: $6f
    ld d, a                                       ; $59d6: $57
    inc bc                                        ; $59d7: $03
    ld a, [hl+]                                   ; $59d8: $2a
    add hl, de                                    ; $59d9: $19
    add e                                         ; $59da: $83
    xor l                                         ; $59db: $ad
    and l                                         ; $59dc: $a5
    rst $00                                       ; $59dd: $c7
    ld e, b                                       ; $59de: $58
    ld d, [hl]                                    ; $59df: $56
    ld a, [c]                                     ; $59e0: $f2
    jp hl                                         ; $59e1: $e9


    db $fd                                        ; $59e2: $fd
    ld bc, $e9e2                                  ; $59e3: $01 $e2 $e9
    ld sp, $2336                                  ; $59e6: $31 $36 $23
    ld h, $a7                                     ; $59e9: $26 $a7
    ld c, a                                       ; $59eb: $4f
    ld [hl+], a                                   ; $59ec: $22
    ld a, [hl+]                                   ; $59ed: $2a
    ld l, e                                       ; $59ee: $6b
    ld a, h                                       ; $59ef: $7c
    cp e                                          ; $59f0: $bb
    ld a, [de]                                    ; $59f1: $1a
    ld d, b                                       ; $59f2: $50
    ret                                           ; $59f3: $c9


    jr jr_06a_5a62                                ; $59f4: $18 $6c

    dec l                                         ; $59f6: $2d
    dec a                                         ; $59f7: $3d
    add $fb                                       ; $59f8: $c6 $fb
    inc bc                                        ; $59fa: $03
    ld e, e                                       ; $59fb: $5b
    daa                                           ; $59fc: $27
    ld a, [bc]                                    ; $59fd: $0a
    call nc, $4ce4                                ; $59fe: $d4 $e4 $4c
    cp b                                          ; $5a01: $b8
    ld a, e                                       ; $5a02: $7b
    ld e, $97                                     ; $5a03: $1e $97
    call z, $c44a                                 ; $5a05: $cc $4a $c4
    pop de                                        ; $5a08: $d1
    ld a, [hl-]                                   ; $5a09: $3a
    ret                                           ; $5a0a: $c9


    ei                                            ; $5a0b: $fb
    inc bc                                        ; $5a0c: $03
    ld [c], a                                     ; $5a0d: $e2
    ld e, $7d                                     ; $5a0e: $1e $7d
    ld sp, $ddcf                                  ; $5a10: $31 $cf $dd
    ld c, e                                       ; $5a13: $4b
    inc e                                         ; $5a14: $1c
    ld a, [de]                                    ; $5a15: $1a
    ld b, a                                       ; $5a16: $47
    and d                                         ; $5a17: $a2
    ret nc                                        ; $5a18: $d0

    ld l, h                                       ; $5a19: $6c
    adc h                                         ; $5a1a: $8c
    ret                                           ; $5a1b: $c9


    cp c                                          ; $5a1c: $b9
    ccf                                           ; $5a1d: $3f
    rst $20                                       ; $5a1e: $e7
    adc h                                         ; $5a1f: $8c
    inc d                                         ; $5a20: $14
    ld d, l                                       ; $5a21: $55
    ld a, [c]                                     ; $5a22: $f2
    ld l, c                                       ; $5a23: $69
    jp hl                                         ; $5a24: $e9


    pop de                                        ; $5a25: $d1
    rla                                           ; $5a26: $17
    di                                            ; $5a27: $f3
    call c, $db1f                                 ; $5a28: $dc $1f $db
    ld e, h                                       ; $5a2b: $5c
    db $fc                                        ; $5a2c: $fc
    ld e, c                                       ; $5a2d: $59
    ld b, l                                       ; $5a2e: $45
    inc sp                                        ; $5a2f: $33
    ld h, h                                       ; $5a30: $64
    jp hl                                         ; $5a31: $e9


    pop de                                        ; $5a32: $d1
    rla                                           ; $5a33: $17
    di                                            ; $5a34: $f3
    sub h                                         ; $5a35: $94
    sub l                                         ; $5a36: $95
    ld a, h                                       ; $5a37: $7c
    ld a, d                                       ; $5a38: $7a
    ld d, a                                       ; $5a39: $57
    cp h                                          ; $5a3a: $bc
    ld d, c                                       ; $5a3b: $51
    jr c, jr_06a_5a93                             ; $5a3c: $38 $55

    ld e, b                                       ; $5a3e: $58
    ld d, e                                       ; $5a3f: $53
    ld c, $cd                                     ; $5a40: $0e $cd
    adc b                                         ; $5a42: $88

jr_06a_5a43:
    ld c, c                                       ; $5a43: $49
    ld d, [hl]                                    ; $5a44: $56
    ret nz                                        ; $5a45: $c0

    ld e, d                                       ; $5a46: $5a
    dec a                                         ; $5a47: $3d
    rst $28                                       ; $5a48: $ef
    ld c, a                                       ; $5a49: $4f
    adc [hl]                                      ; $5a4a: $8e
    sbc $1f                                       ; $5a4b: $de $1f
    ld [c], a                                     ; $5a4d: $e2
    jp hl                                         ; $5a4e: $e9


    ld sp, $2336                                  ; $5a4f: $31 $36 $23
    ld h, $a7                                     ; $5a52: $26 $a7
    ld c, a                                       ; $5a54: $4f
    ld [hl+], a                                   ; $5a55: $22
    ld [$1e94], a                                 ; $5a56: $ea $94 $1e
    ld a, l                                       ; $5a59: $7d
    ld sp, $fdcf                                  ; $5a5a: $31 $cf $fd
    ld bc, $3109                                  ; $5a5d: $01 $09 $31
    dec bc                                        ; $5a60: $0b
    and a                                         ; $5a61: $a7

jr_06a_5a62:
    ld c, h                                       ; $5a62: $4c
    adc a                                         ; $5a63: $8f
    or c                                          ; $5a64: $b1
    add hl, de                                    ; $5a65: $19
    ld sp, $3539                                  ; $5a66: $31 $39 $35
    cp [hl]                                       ; $5a69: $be
    ld e, l                                       ; $5a6a: $5d
    dec c                                         ; $5a6b: $0d
    jr z, jr_06a_5a43                             ; $5a6c: $28 $d5

    cp e                                          ; $5a6e: $bb
    ld a, e                                       ; $5a6f: $7b
    ret nz                                        ; $5a70: $c0

    ld [hl-], a                                   ; $5a71: $32
    rst $30                                       ; $5a72: $f7
    rlca                                          ; $5a73: $07
    db $db                                        ; $5a74: $db
    ld e, h                                       ; $5a75: $5c
    db $fc                                        ; $5a76: $fc
    ld e, c                                       ; $5a77: $59
    ld b, l                                       ; $5a78: $45
    inc sp                                        ; $5a79: $33
    ld h, h                                       ; $5a7a: $64
    adc l                                         ; $5a7b: $8d
    ld l, a                                       ; $5a7c: $6f
    ld d, a                                       ; $5a7d: $57
    inc bc                                        ; $5a7e: $03
    ld c, d                                       ; $5a7f: $4a
    push af                                       ; $5a80: $f5
    xor $1e                                       ; $5a81: $ee $1e
    or b                                          ; $5a83: $b0
    ld c, h                                       ; $5a84: $4c
    ld e, c                                       ; $5a85: $59
    ret                                           ; $5a86: $c9


    and a                                         ; $5a87: $a7
    rst $30                                       ; $5a88: $f7
    rlca                                          ; $5a89: $07
    ld [c], a                                     ; $5a8a: $e2
    jp hl                                         ; $5a8b: $e9


    ld sp, $2336                                  ; $5a8c: $31 $36 $23
    ld h, $a7                                     ; $5a8f: $26 $a7
    ld c, a                                       ; $5a91: $4f
    ld [hl+], a                                   ; $5a92: $22

jr_06a_5a93:
    ld a, [hl+]                                   ; $5a93: $2a
    ld l, e                                       ; $5a94: $6b
    ld a, h                                       ; $5a95: $7c
    cp e                                          ; $5a96: $bb
    ld a, [de]                                    ; $5a97: $1a
    ld d, b                                       ; $5a98: $50
    xor d                                         ; $5a99: $aa
    ld [hl], a                                    ; $5a9a: $77
    rst $30                                       ; $5a9b: $f7
    add b                                         ; $5a9c: $80
    ld h, l                                       ; $5a9d: $65
    xor $0f                                       ; $5a9e: $ee $0f
    ld [c], a                                     ; $5aa0: $e2
    cpl                                           ; $5aa1: $2f
    ld b, $d6                                     ; $5aa2: $06 $d6
    inc bc                                        ; $5aa4: $03
    reti                                          ; $5aa5: $d9


    sub h                                         ; $5aa6: $94
    ld b, e                                       ; $5aa7: $43
    dec b                                         ; $5aa8: $05
    xor h                                         ; $5aa9: $ac
    dec [hl]                                      ; $5aaa: $35
    inc hl                                        ; $5aab: $23
    ld h, $a7                                     ; $5aac: $26 $a7
    ld bc, $4331                                  ; $5aae: $01 $31 $43
    dec de                                        ; $5ab1: $1b
    ret nc                                        ; $5ab2: $d0

    ld a, a                                       ; $5ab3: $7f
    inc a                                         ; $5ab4: $3c

jr_06a_5ab5:
    ld b, [hl]                                    ; $5ab5: $46
    ld d, c                                       ; $5ab6: $51
    dec h                                         ; $5ab7: $25
    or l                                          ; $5ab8: $b5
    ret nc                                        ; $5ab9: $d0

    inc a                                         ; $5aba: $3c
    xor [hl]                                      ; $5abb: $ae
    rst $38                                       ; $5abc: $ff
    ret z                                         ; $5abd: $c8

    ld a, [$6c88]                                 ; $5abe: $fa $88 $6c
    ld h, b                                       ; $5ac1: $60
    rst $38                                       ; $5ac2: $ff
    pop af                                        ; $5ac3: $f1
    jr jr_06a_5ab5                                ; $5ac4: $18 $ef

    rrca                                          ; $5ac6: $0f
    rst $20                                       ; $5ac7: $e7
    adc h                                         ; $5ac8: $8c
    inc d                                         ; $5ac9: $14
    ld d, l                                       ; $5aca: $55
    ld a, [c]                                     ; $5acb: $f2
    ld l, c                                       ; $5acc: $69
    inc bc                                        ; $5acd: $03
    ld h, d                                       ; $5ace: $62
    add [hl]                                      ; $5acf: $86
    ld [hl], $a0                                  ; $5ad0: $36 $a0
    rst $38                                       ; $5ad2: $ff
    ld a, b                                       ; $5ad3: $78
    adc h                                         ; $5ad4: $8c
    rst $30                                       ; $5ad5: $f7
    rlca                                          ; $5ad6: $07
    db $db                                        ; $5ad7: $db
    ld e, h                                       ; $5ad8: $5c
    db $fc                                        ; $5ad9: $fc
    ld e, c                                       ; $5ada: $59
    ld b, l                                       ; $5adb: $45
    inc sp                                        ; $5adc: $33
    ld h, h                                       ; $5add: $64
    inc bc                                        ; $5ade: $03
    ld h, d                                       ; $5adf: $62
    add [hl]                                      ; $5ae0: $86
    ld [hl], $a0                                  ; $5ae1: $36 $a0
    rst $38                                       ; $5ae3: $ff
    ld a, b                                       ; $5ae4: $78
    adc h                                         ; $5ae5: $8c
    ld h, l                                       ; $5ae6: $65
    dec h                                         ; $5ae7: $25
    sbc a                                         ; $5ae8: $9f
    sbc $f7                                       ; $5ae9: $de $f7
    call $e146                                    ; $5aeb: $cd $46 $e1
    ld d, h                                       ; $5aee: $54
    ld h, c                                       ; $5aef: $61
    ld c, l                                       ; $5af0: $4d
    add hl, sp                                    ; $5af1: $39
    sub h                                         ; $5af2: $94
    jp c, $3c7f                                   ; $5af3: $da $7f $3c

    ld b, [hl]                                    ; $5af6: $46
    dec l                                         ; $5af7: $2d
    ld e, a                                       ; $5af8: $5f
    inc c                                         ; $5af9: $0c
    db $ec                                        ; $5afa: $ec
    ld l, b                                       ; $5afb: $68
    inc sp                                        ; $5afc: $33
    ld h, d                                       ; $5afd: $62
    sub d                                         ; $5afe: $92
    or d                                          ; $5aff: $b2
    sub c                                         ; $5b00: $91
    push af                                       ; $5b01: $f5

jr_06a_5b02:
    call z, $fbcf                                 ; $5b02: $cc $cf $fb
    inc bc                                        ; $5b05: $03
    ld [c], a                                     ; $5b06: $e2
    jp hl                                         ; $5b07: $e9


    ld sp, $2336                                  ; $5b08: $31 $36 $23
    ld h, $a7                                     ; $5b0b: $26 $a7
    ld c, a                                       ; $5b0d: $4f
    ld [hl+], a                                   ; $5b0e: $22
    ld [$0368], a                                 ; $5b0f: $ea $68 $03
    ld h, d                                       ; $5b12: $62
    add [hl]                                      ; $5b13: $86
    ld [hl], $a0                                  ; $5b14: $36 $a0
    rst $38                                       ; $5b16: $ff
    ld a, b                                       ; $5b17: $78
    adc h                                         ; $5b18: $8c
    rst $30                                       ; $5b19: $f7
    rlca                                          ; $5b1a: $07
    ld [c], a                                     ; $5b1b: $e2
    add hl, hl                                    ; $5b1c: $29
    rst $30                                       ; $5b1d: $f7
    ld a, [bc]                                    ; $5b1e: $0a
    call $e56b                                    ; $5b1f: $cd $6b $e5
    sub d                                         ; $5b22: $92
    halt                                          ; $5b23: $76
    sub d                                         ; $5b24: $92
    push af                                       ; $5b25: $f5
    or c                                          ; $5b26: $b1
    and b                                         ; $5b27: $a0
    ld bc, $ccf5                                  ; $5b28: $01 $f5 $cc
    ld c, b                                       ; $5b2b: $48
    ld e, l                                       ; $5b2c: $5d
    jr jr_06a_5b02                                ; $5b2d: $18 $d3

    rst $30                                       ; $5b2f: $f7
    rlca                                          ; $5b30: $07
    add hl, bc                                    ; $5b31: $09
    ld [$98bf], a                                 ; $5b32: $ea $bf $98
    inc e                                         ; $5b35: $1c
    ld l, l                                       ; $5b36: $6d
    ld b, b                                       ; $5b37: $40
    db $fd                                        ; $5b38: $fd
    or c                                          ; $5b39: $b1
    ld a, a                                       ; $5b3a: $7f
    ld [hl], $42                                  ; $5b3b: $36 $42
    db $fd                                        ; $5b3d: $fd
    rla                                           ; $5b3e: $17
    sub e                                         ; $5b3f: $93
    ld [hl], e                                    ; $5b40: $73
    ld a, d                                       ; $5b41: $7a
    ld a, a                                       ; $5b42: $7f
    rst $30                                       ; $5b43: $f7
    ld [bc], a                                    ; $5b44: $02
    jp $1ff4                                      ; $5b45: $c3 $f4 $1f


    ld e, c                                       ; $5b48: $59
    inc l                                         ; $5b49: $2c
    ret nc                                        ; $5b4a: $d0

    ei                                            ; $5b4b: $fb
    inc bc                                        ; $5b4c: $03
    sbc e                                         ; $5b4d: $9b
    ld b, a                                       ; $5b4e: $47
    ld c, [hl]                                    ; $5b4f: $4e
    dec d                                         ; $5b50: $15
    or [hl]                                       ; $5b51: $b6
    sub $94                                       ; $5b52: $d6 $94
    ld b, e                                       ; $5b54: $43
    and c                                         ; $5b55: $a1
    add hl, de                                    ; $5b56: $19
    push af                                       ; $5b57: $f5
    ld [hl], a                                    ; $5b58: $77
    ld l, a                                       ; $5b59: $6f
    ld b, b                                       ; $5b5a: $40
    db $fd                                        ; $5b5b: $fd
    ld e, c                                       ; $5b5c: $59
    ld d, [hl]                                    ; $5b5d: $56
    db $d3                                        ; $5b5e: $d3
    dec d                                         ; $5b5f: $15
    sbc $d4                                       ; $5b60: $de $d4
    and a                                         ; $5b62: $a7
    pop de                                        ; $5b63: $d1
    ld a, [$d5af]                                 ; $5b64: $fa $af $d5
    dec sp                                        ; $5b67: $3b
    add $4d                                       ; $5b68: $c6 $4d
    rra                                           ; $5b6a: $1f
    db $db                                        ; $5b6b: $db
    sub a                                         ; $5b6c: $97
    db $e4                                        ; $5b6d: $e4
    ld l, b                                       ; $5b6e: $68
    inc bc                                        ; $5b6f: $03
    ld a, [bc]                                    ; $5b70: $0a
    db $fd                                        ; $5b71: $fd
    ld l, c                                       ; $5b72: $69
    ld e, h                                       ; $5b73: $5c
    ld h, c                                       ; $5b74: $61
    ld c, c                                       ; $5b75: $49
    adc $7d                                       ; $5b76: $ce $7d
    rst $18                                       ; $5b78: $df
    ld [hl], b                                    ; $5b79: $70
    dec d                                         ; $5b7a: $15
    or b                                          ; $5b7b: $b0
    sub $d5                                       ; $5b7c: $d6 $d5
    db $eb                                        ; $5b7e: $eb
    db $d3                                        ; $5b7f: $d3
    inc a                                         ; $5b80: $3c
    rst $30                                       ; $5b81: $f7
    rlca                                          ; $5b82: $07
    rst $20                                       ; $5b83: $e7
    adc h                                         ; $5b84: $8c
    inc d                                         ; $5b85: $14
    ld d, l                                       ; $5b86: $55
    ld a, [c]                                     ; $5b87: $f2
    ld l, c                                       ; $5b88: $69
    ld h, a                                       ; $5b89: $67
    ld c, c                                       ; $5b8a: $49
    adc [hl]                                      ; $5b8b: $8e
    ld [hl], $a0                                  ; $5b8c: $36 $a0
    ret nc                                        ; $5b8e: $d0

    sbc a                                         ; $5b8f: $9f
    add $15                                       ; $5b90: $c6 $15
    sub [hl]                                      ; $5b92: $96
    db $e4                                        ; $5b93: $e4
    call c, $db1f                                 ; $5b94: $dc $1f $db
    ld e, h                                       ; $5b97: $5c
    db $fc                                        ; $5b98: $fc
    ld e, c                                       ; $5b99: $59
    ld b, l                                       ; $5b9a: $45
    inc sp                                        ; $5b9b: $33
    ld h, h                                       ; $5b9c: $64
    ld h, a                                       ; $5b9d: $67
    ld c, c                                       ; $5b9e: $49
    adc [hl]                                      ; $5b9f: $8e
    ld [hl], $a0                                  ; $5ba0: $36 $a0
    ret nc                                        ; $5ba2: $d0

    sbc a                                         ; $5ba3: $9f
    add $15                                       ; $5ba4: $c6 $15
    sub [hl]                                      ; $5ba6: $96
    db $e4                                        ; $5ba7: $e4
    sub h                                         ; $5ba8: $94
    sub l                                         ; $5ba9: $95
    ld a, h                                       ; $5baa: $7c
    ld a, d                                       ; $5bab: $7a
    ld a, a                                       ; $5bac: $7f
    ld [c], a                                     ; $5bad: $e2
    jp hl                                         ; $5bae: $e9


    ld sp, $2336                                  ; $5baf: $31 $36 $23
    ld h, $a7                                     ; $5bb2: $26 $a7
    ld c, a                                       ; $5bb4: $4f
    ld [hl+], a                                   ; $5bb5: $22
    ld [$6768], a                                 ; $5bb6: $ea $68 $67
    ld c, c                                       ; $5bb9: $49
    adc [hl]                                      ; $5bba: $8e
    ld [hl], $a0                                  ; $5bbb: $36 $a0
    ret nc                                        ; $5bbd: $d0

    sbc a                                         ; $5bbe: $9f
    add $15                                       ; $5bbf: $c6 $15
    sub [hl]                                      ; $5bc1: $96
    db $e4                                        ; $5bc2: $e4
    call c, $e21f                                 ; $5bc3: $dc $1f $e2
    jp hl                                         ; $5bc6: $e9


    ld sp, $2336                                  ; $5bc7: $31 $36 $23
    ld h, $a7                                     ; $5bca: $26 $a7
    rst $38                                       ; $5bcc: $ff
    ld e, b                                       ; $5bcd: $58
    sbc h                                         ; $5bce: $9c
    ld b, $d4                                     ; $5bcf: $06 $d4
    di                                            ; $5bd1: $f3
    cp $dd                                        ; $5bd2: $fe $dd
    dec l                                         ; $5bd4: $2d
    cp [hl]                                       ; $5bd5: $be
    cp c                                          ; $5bd6: $b9
    ccf                                           ; $5bd7: $3f
    rst $20                                       ; $5bd8: $e7
    adc h                                         ; $5bd9: $8c
    inc d                                         ; $5bda: $14
    ld d, l                                       ; $5bdb: $55
    ld a, [c]                                     ; $5bdc: $f2
    ld l, c                                       ; $5bdd: $69
    rst $38                                       ; $5bde: $ff
    or c                                          ; $5bdf: $b1
    jr c, jr_06a_5bef                             ; $5be0: $38 $0d

    xor b                                         ; $5be2: $a8
    rst $20                                       ; $5be3: $e7
    db $fd                                        ; $5be4: $fd
    cp e                                          ; $5be5: $bb
    ld e, e                                       ; $5be6: $5b
    ld a, h                                       ; $5be7: $7c
    ld [hl], e                                    ; $5be8: $73
    ld a, a                                       ; $5be9: $7f
    db $db                                        ; $5bea: $db
    ld e, h                                       ; $5beb: $5c
    db $fc                                        ; $5bec: $fc
    ld e, c                                       ; $5bed: $59
    ld b, l                                       ; $5bee: $45

jr_06a_5bef:
    inc sp                                        ; $5bef: $33
    ld h, h                                       ; $5bf0: $64
    rst $38                                       ; $5bf1: $ff
    or c                                          ; $5bf2: $b1
    jr c, @+$0f                                   ; $5bf3: $38 $0d

    xor b                                         ; $5bf5: $a8
    rst $20                                       ; $5bf6: $e7
    db $fd                                        ; $5bf7: $fd
    cp e                                          ; $5bf8: $bb
    ld e, e                                       ; $5bf9: $5b
    ld a, h                                       ; $5bfa: $7c
    ld d, e                                       ; $5bfb: $53
    ld d, [hl]                                    ; $5bfc: $56
    ld a, [c]                                     ; $5bfd: $f2
    jp hl                                         ; $5bfe: $e9


    db $fd                                        ; $5bff: $fd
    ld bc, $e9e2                                  ; $5c00: $01 $e2 $e9
    ld sp, $2336                                  ; $5c03: $31 $36 $23
    ld h, $a7                                     ; $5c06: $26 $a7
    ld c, a                                       ; $5c08: $4f
    ld [hl+], a                                   ; $5c09: $22
    ld [$1ff4], a                                 ; $5c0a: $ea $f4 $1f
    adc e                                         ; $5c0d: $8b
    db $d3                                        ; $5c0e: $d3
    add b                                         ; $5c0f: $80
    ld a, d                                       ; $5c10: $7a
    sbc $bf                                       ; $5c11: $de $bf
    cp e                                          ; $5c13: $bb
    push bc                                       ; $5c14: $c5
    scf                                           ; $5c15: $37
    rst $30                                       ; $5c16: $f7
    rlca                                          ; $5c17: $07
    adc c                                         ; $5c18: $89
    ld [$7ac6], sp                                ; $5c19: $08 $c6 $7a
    or b                                          ; $5c1c: $b0
    ld l, e                                       ; $5c1d: $6b
    ld l, b                                       ; $5c1e: $68
    rst $30                                       ; $5c1f: $f7
    ld a, l                                       ; $5c20: $7d
    ld c, a                                       ; $5c21: $4f
    ld [hl], a                                    ; $5c22: $77
    ld b, h                                       ; $5c23: $44
    ld a, [$7868]                                 ; $5c24: $fa $68 $78
    xor d                                         ; $5c27: $aa
    ld l, b                                       ; $5c28: $68
    jp z, Jump_06a_4fa1                           ; $5c29: $ca $a1 $4f

    di                                            ; $5c2c: $f3
    ld [hl], h                                    ; $5c2d: $74
    ld e, l                                       ; $5c2e: $5d
    sbc l                                         ; $5c2f: $9d
    ld [hl-], a                                   ; $5c30: $32
    ld c, h                                       ; $5c31: $4c
    ld hl, $98cb                                  ; $5c32: $21 $cb $98
    ld [hl], a                                    ; $5c35: $77
    dec bc                                        ; $5c36: $0b
    sub e                                         ; $5c37: $93
    ld b, a                                       ; $5c38: $47
    rst $28                                       ; $5c39: $ef
    rrca                                          ; $5c3a: $0f
    rst $20                                       ; $5c3b: $e7
    adc h                                         ; $5c3c: $8c
    inc d                                         ; $5c3d: $14
    ld d, l                                       ; $5c3e: $55
    ld a, [c]                                     ; $5c3f: $f2
    ld l, c                                       ; $5c40: $69
    ld a, l                                       ; $5c41: $7d
    inc b                                         ; $5c42: $04
    and e                                         ; $5c43: $a3
    sub $83                                       ; $5c44: $d6 $83
    ld e, l                                       ; $5c46: $5d
    ld b, e                                       ; $5c47: $43
    cp e                                          ; $5c48: $bb
    ccf                                           ; $5c49: $3f
    db $db                                        ; $5c4a: $db
    ld e, h                                       ; $5c4b: $5c
    db $fc                                        ; $5c4c: $fc
    ld e, c                                       ; $5c4d: $59
    ld b, l                                       ; $5c4e: $45
    inc sp                                        ; $5c4f: $33
    ld h, h                                       ; $5c50: $64
    ld a, l                                       ; $5c51: $7d
    inc b                                         ; $5c52: $04
    and e                                         ; $5c53: $a3
    sub $83                                       ; $5c54: $d6 $83
    ld e, l                                       ; $5c56: $5d
    ld b, e                                       ; $5c57: $43
    dec hl                                        ; $5c58: $2b
    dec hl                                        ; $5c59: $2b
    ld sp, hl                                     ; $5c5a: $f9
    db $f4                                        ; $5c5b: $f4
    cp $00                                        ; $5c5c: $fe $00
    ld [c], a                                     ; $5c5e: $e2
    jp hl                                         ; $5c5f: $e9


    ld sp, $2336                                  ; $5c60: $31 $36 $23
    ld h, $a7                                     ; $5c63: $26 $a7
    ld c, a                                       ; $5c65: $4f
    ld [hl+], a                                   ; $5c66: $22
    ld a, [hl+]                                   ; $5c67: $2a
    or l                                          ; $5c68: $b5
    ld a, $82                                     ; $5c69: $3e $82
    ld d, c                                       ; $5c6b: $51
    db $eb                                        ; $5c6c: $eb
    pop bc                                        ; $5c6d: $c1
    xor [hl]                                      ; $5c6e: $ae
    and c                                         ; $5c6f: $a1
    db $dd                                        ; $5c70: $dd
    rra                                           ; $5c71: $1f
    sbc e                                         ; $5c72: $9b
    rst $00                                       ; $5c73: $c7
    ld [c], a                                     ; $5c74: $e2
    inc [hl]                                      ; $5c75: $34
    and b                                         ; $5c76: $a0
    cp [hl]                                       ; $5c77: $be
    ld sp, $01b3                                  ; $5c78: $31 $b3 $01
    ld [hl], l                                    ; $5c7b: $75
    pop af                                        ; $5c7c: $f1
    db $fd                                        ; $5c7d: $fd
    cp e                                          ; $5c7e: $bb
    ld e, e                                       ; $5c7f: $5b
    ld a, h                                       ; $5c80: $7c
    or e                                          ; $5c81: $b3
    and c                                         ; $5c82: $a1
    ld [c], a                                     ; $5c83: $e2
    cp $68                                        ; $5c84: $fe $68
    sbc [hl]                                      ; $5c86: $9e
    and [hl]                                      ; $5c87: $a6
    inc e                                         ; $5c88: $1c
    ld a, [$4f34]                                 ; $5c89: $fa $34 $4f
    rst $10                                       ; $5c8c: $d7
    ld [hl], l                                    ; $5c8d: $75
    push bc                                       ; $5c8e: $c5
    push hl                                       ; $5c8f: $e5
    adc l                                         ; $5c90: $8d
    adc $86                                       ; $5c91: $ce $86
    rrca                                          ; $5c93: $0f
    rst $20                                       ; $5c94: $e7
    adc h                                         ; $5c95: $8c
    inc d                                         ; $5c96: $14
    ld d, l                                       ; $5c97: $55
    ld a, [c]                                     ; $5c98: $f2
    ld l, c                                       ; $5c99: $69
    rst $38                                       ; $5c9a: $ff
    or c                                          ; $5c9b: $b1
    jr c, @+$0f                                   ; $5c9c: $38 $0d

    xor b                                         ; $5c9e: $a8
    ld l, a                                       ; $5c9f: $6f
    call z, Call_06a_406c                         ; $5ca0: $cc $6c $40
    ld e, l                                       ; $5ca3: $5d
    ld a, h                                       ; $5ca4: $7c
    rst $38                                       ; $5ca5: $ff
    xor $16                                       ; $5ca6: $ee $16
    rst $18                                       ; $5ca8: $df
    call c, $db1f                                 ; $5ca9: $dc $1f $db
    ld e, h                                       ; $5cac: $5c
    db $fc                                        ; $5cad: $fc
    ld e, c                                       ; $5cae: $59
    ld b, l                                       ; $5caf: $45
    inc sp                                        ; $5cb0: $33
    ld h, h                                       ; $5cb1: $64
    rst $38                                       ; $5cb2: $ff
    or c                                          ; $5cb3: $b1
    jr c, @-$09                                   ; $5cb4: $38 $f5

    adc l                                         ; $5cb6: $8d
    sbc c                                         ; $5cb7: $99
    dec c                                         ; $5cb8: $0d
    xor b                                         ; $5cb9: $a8
    adc e                                         ; $5cba: $8b
    rst $28                                       ; $5cbb: $ef
    rst $18                                       ; $5cbc: $df
    db $dd                                        ; $5cbd: $dd
    ld [c], a                                     ; $5cbe: $e2
    sbc e                                         ; $5cbf: $9b
    or d                                          ; $5cc0: $b2
    sub d                                         ; $5cc1: $92
    ld c, a                                       ; $5cc2: $4f
    rst $28                                       ; $5cc3: $ef
    rrca                                          ; $5cc4: $0f
    ld [c], a                                     ; $5cc5: $e2
    jp hl                                         ; $5cc6: $e9


    ld sp, $2336                                  ; $5cc7: $31 $36 $23
    ld h, $a7                                     ; $5cca: $26 $a7
    ld c, a                                       ; $5ccc: $4f
    ld [hl+], a                                   ; $5ccd: $22
    ld [$1ff4], a                                 ; $5cce: $ea $f4 $1f
    adc e                                         ; $5cd1: $8b
    ld d, e                                       ; $5cd2: $53
    rst $18                                       ; $5cd3: $df
    sbc b                                         ; $5cd4: $98
    reti                                          ; $5cd5: $d9


    add b                                         ; $5cd6: $80
    cp d                                          ; $5cd7: $ba
    ld hl, sp-$02                                 ; $5cd8: $f8 $fe
    db $dd                                        ; $5cda: $dd
    dec l                                         ; $5cdb: $2d
    cp [hl]                                       ; $5cdc: $be
    cp c                                          ; $5cdd: $b9
    ccf                                           ; $5cde: $3f
    ld d, a                                       ; $5cdf: $57
    ldh a, [$35]                                  ; $5ce0: $f0 $35
    ret nz                                        ; $5ce2: $c0

    scf                                           ; $5ce3: $37
    xor b                                         ; $5ce4: $a8
    or d                                          ; $5ce5: $b2
    ld a, $8d                                     ; $5ce6: $3e $8d
    ld h, l                                       ; $5ce8: $65
    or e                                          ; $5ce9: $b3
    ld h, e                                       ; $5cea: $63
    dec h                                         ; $5ceb: $25
    sub h                                         ; $5cec: $94
    and d                                         ; $5ced: $a2
    ld l, [hl]                                    ; $5cee: $6e
    and c                                         ; $5cef: $a1
    reti                                          ; $5cf0: $d9


    adc $fb                                       ; $5cf1: $ce $fb
    inc bc                                        ; $5cf3: $03

Jump_06a_5cf4:
    ld h, a                                       ; $5cf4: $67
    ld l, b                                       ; $5cf5: $68
    dec h                                         ; $5cf6: $25
    sub [hl]                                      ; $5cf7: $96
    db $e4                                        ; $5cf8: $e4
    ld e, b                                       ; $5cf9: $58
    jp $e534                                      ; $5cfa: $c3 $34 $e5


    ld d, b                                       ; $5cfd: $50
    sbc a                                         ; $5cfe: $9f
    add [hl]                                      ; $5cff: $86
    rra                                           ; $5d00: $1f
    ld a, [hl+]                                   ; $5d01: $2a
    ld l, d                                       ; $5d02: $6a
    ld [c], a                                     ; $5d03: $e2
    db $e4                                        ; $5d04: $e4
    inc c                                         ; $5d05: $0c
    cp e                                          ; $5d06: $bb
    sbc e                                         ; $5d07: $9b
    ld c, b                                       ; $5d08: $48
    ld h, e                                       ; $5d09: $63
    push hl                                       ; $5d0a: $e5
    ld l, b                                       ; $5d0b: $68
    ld [hl], $5a                                  ; $5d0c: $36 $5a
    ld d, e                                       ; $5d0e: $53
    ld c, $8d                                     ; $5d0f: $0e $8d
    jp nz, $da69                                  ; $5d11: $c2 $69 $da

    pop de                                        ; $5d14: $d1
    jp nz, Jump_000_18d4                          ; $5d15: $c2 $d4 $18

    rst $38                                       ; $5d18: $ff
    ld sp, $a8a8                                  ; $5d19: $31 $a8 $a8
    ld c, h                                       ; $5d1c: $4c
    cp c                                          ; $5d1d: $b9
    ld d, a                                       ; $5d1e: $57
    ld l, b                                       ; $5d1f: $68
    ld e, [hl]                                    ; $5d20: $5e
    xor e                                         ; $5d21: $ab
    sub e                                         ; $5d22: $93
    db $ec                                        ; $5d23: $ec
    ccf                                           ; $5d24: $3f
    jp nc, Jump_000_22f3                          ; $5d25: $d2 $f3 $22

    rst $10                                       ; $5d28: $d7
    dec bc                                        ; $5d29: $0b
    and a                                         ; $5d2a: $a7
    ld a, $8d                                     ; $5d2b: $3e $8d
    sbc l                                         ; $5d2d: $9d
    ld h, [hl]                                    ; $5d2e: $66
    cp b                                          ; $5d2f: $b8
    sbc [hl]                                      ; $5d30: $9e
    scf                                           ; $5d31: $37
    res 3, e                                      ; $5d32: $cb $9b
    ld e, [hl]                                    ; $5d34: $5e
    ld h, [hl]                                    ; $5d35: $66
    rst $08                                       ; $5d36: $cf
    ld e, a                                       ; $5d37: $5f
    sbc $ef                                       ; $5d38: $de $ef

Jump_06a_5d3a:
    db $f4                                        ; $5d3a: $f4
    xor $e5                                       ; $5d3b: $ee $e5
    jp z, $ac8d                                   ; $5d3d: $ca $8d $ac

    ld c, a                                       ; $5d40: $4f
    ld h, e                                       ; $5d41: $63
    ld de, $86bd                                  ; $5d42: $11 $bd $86
    sbc b                                         ; $5d45: $98
    ld l, c                                       ; $5d46: $69
    ld c, l                                       ; $5d47: $4d
    dec de                                        ; $5d48: $1b
    ld h, e                                       ; $5d49: $63
    add b                                         ; $5d4a: $80
    sub $87                                       ; $5d4b: $d6 $87
    cp l                                          ; $5d4d: $bd
    db $f4                                        ; $5d4e: $f4
    add sp, -$03                                  ; $5d4f: $e8 $fd
    ld bc, $8889                                  ; $5d51: $01 $89 $88
    adc d                                         ; $5d54: $8a
    rst $10                                       ; $5d55: $d7
    sub h                                         ; $5d56: $94
    ld b, e                                       ; $5d57: $43
    dec d                                         ; $5d58: $15
    or $a8                                        ; $5d59: $f6 $a8
    sub l                                         ; $5d5b: $95
    ld e, b                                       ; $5d5c: $58
    sub d                                         ; $5d5d: $92
    ld h, e                                       ; $5d5e: $63
    adc l                                         ; $5d5f: $8d
    and e                                         ; $5d60: $a3
    push af                                       ; $5d61: $f5
    ld [c], a                                     ; $5d62: $e2
    push hl                                       ; $5d63: $e5
    or a                                          ; $5d64: $b7
    ld a, [hl]                                    ; $5d65: $7e
    ld d, h                                       ; $5d66: $54
    call nc, $c9c4                                ; $5d67: $d4 $c4 $c9
    add hl, de                                    ; $5d6a: $19
    halt                                          ; $5d6b: $76
    ld d, a                                       ; $5d6c: $57
    cp h                                          ; $5d6d: $bc
    reti                                          ; $5d6e: $d9


    or c                                          ; $5d6f: $b1
    ld e, [hl]                                    ; $5d70: $5e
    ld h, e                                       ; $5d71: $63
    jp z, $1761                                   ; $5d72: $ca $61 $17

    ei                                            ; $5d75: $fb
    adc a                                         ; $5d76: $8f
    sbc h                                         ; $5d77: $9c
    dec d                                         ; $5d78: $15
    ld [hl], $4a                                  ; $5d79: $36 $4a
    call c, Call_06a_4f15                         ; $5d7b: $dc $15 $4f
    cp c                                          ; $5d7e: $b9
    ld d, a                                       ; $5d7f: $57
    ld l, b                                       ; $5d80: $68
    ld e, [hl]                                    ; $5d81: $5e
    xor e                                         ; $5d82: $ab
    sub e                                         ; $5d83: $93
    db $ec                                        ; $5d84: $ec
    ccf                                           ; $5d85: $3f
    jp nc, Jump_000_22f3                          ; $5d86: $d2 $f3 $22

    rst $10                                       ; $5d89: $d7
    dec bc                                        ; $5d8a: $0b
    and a                                         ; $5d8b: $a7
    ld a, $8d                                     ; $5d8c: $3e $8d

Call_06a_5d8e:
    sbc l                                         ; $5d8e: $9d
    ld h, [hl]                                    ; $5d8f: $66
    cp b                                          ; $5d90: $b8
    sbc [hl]                                      ; $5d91: $9e
    scf                                           ; $5d92: $37
    res 3, e                                      ; $5d93: $cb $9b
    ld e, [hl]                                    ; $5d95: $5e
    ld h, [hl]                                    ; $5d96: $66
    rst $08                                       ; $5d97: $cf
    ld e, a                                       ; $5d98: $5f
    sbc $ef                                       ; $5d99: $de $ef
    db $f4                                        ; $5d9b: $f4
    xor $e5                                       ; $5d9c: $ee $e5
    jp z, $ac8d                                   ; $5d9e: $ca $8d $ac

    ld c, a                                       ; $5da1: $4f
    ld h, e                                       ; $5da2: $63

Call_06a_5da3:
    ld de, $86bd                                  ; $5da3: $11 $bd $86
    sbc b                                         ; $5da6: $98
    ld l, c                                       ; $5da7: $69
    ld c, l                                       ; $5da8: $4d
    dec de                                        ; $5da9: $1b
    ld h, e                                       ; $5daa: $63
    add b                                         ; $5dab: $80
    sub $87                                       ; $5dac: $d6 $87
    cp l                                          ; $5dae: $bd
    db $f4                                        ; $5daf: $f4
    add sp, -$03                                  ; $5db0: $e8 $fd
    ld bc, $29e2                                  ; $5db2: $01 $e2 $29
    rst $30                                       ; $5db5: $f7
    ld a, [bc]                                    ; $5db6: $0a
    call Call_06a_656b                            ; $5db7: $cd $6b $65
    or e                                          ; $5dba: $b3
    ld h, e                                       ; $5dbb: $63
    db $e3                                        ; $5dbc: $e3
    xor h                                         ; $5dbd: $ac
    ret c                                         ; $5dbe: $d8

    ld a, a                                       ; $5dbf: $7f
    and h                                         ; $5dc0: $a4
    rst $20                                       ; $5dc1: $e7
    ld b, l                                       ; $5dc2: $45
    xor [hl]                                      ; $5dc3: $ae
    rla                                           ; $5dc4: $17
    ld c, [hl]                                    ; $5dc5: $4e
    inc bc                                        ; $5dc6: $03
    ld a, [$c8db]                                 ; $5dc7: $fa $db $c8
    ld d, c                                       ; $5dca: $51
    ld d, c                                       ; $5dcb: $51
    or a                                          ; $5dcc: $b7
    ret nc                                        ; $5dcd: $d0

    ld l, h                                       ; $5dce: $6c
    rst $20                                       ; $5dcf: $e7
    db $fd                                        ; $5dd0: $fd
    ld bc, $29e2                                  ; $5dd1: $01 $e2 $29
    rst $30                                       ; $5dd4: $f7
    ld a, [bc]                                    ; $5dd5: $0a
    call Call_06a_756b                            ; $5dd6: $cd $6b $75
    sub d                                         ; $5dd9: $92
    adc l                                         ; $5dda: $8d
    or e                                          ; $5ddb: $b3
    ld h, d                                       ; $5ddc: $62
    rst $38                                       ; $5ddd: $ff
    sub c                                         ; $5dde: $91
    sbc [hl]                                      ; $5ddf: $9e
    rla                                           ; $5de0: $17
    cp c                                          ; $5de1: $b9
    ld e, [hl]                                    ; $5de2: $5e
    jr c, jr_06a_5df2                             ; $5de3: $38 $0d

    add sp, $6f                                   ; $5de5: $e8 $6f
    inc hl                                        ; $5de7: $23
    ld b, a                                       ; $5de8: $47
    ld b, l                                       ; $5de9: $45
    push hl                                       ; $5dea: $e5
    ld c, a                                       ; $5deb: $4f
    rst $08                                       ; $5dec: $cf
    cp b                                          ; $5ded: $b8
    ld b, $f4                                     ; $5dee: $06 $f4
    ld c, a                                       ; $5df0: $4f
    ld [hl+], a                                   ; $5df1: $22

jr_06a_5df2:
    ld c, l                                       ; $5df2: $4d
    ld l, e                                       ; $5df3: $6b
    ld [hl], h                                    ; $5df4: $74
    sub d                                         ; $5df5: $92
    db $fd                                        ; $5df6: $fd
    rst $00                                       ; $5df7: $c7
    sbc h                                         ; $5df8: $9c
    nop                                           ; $5df9: $00
    sbc $1f                                       ; $5dfa: $de $1f
    sbc e                                         ; $5dfc: $9b
    ld b, a                                       ; $5dfd: $47
    ld a, d                                       ; $5dfe: $7a
    ld e, [hl]                                    ; $5dff: $5e
    db $e4                                        ; $5e00: $e4
    ld a, d                                       ; $5e01: $7a
    pop hl                                        ; $5e02: $e1
    inc [hl]                                      ; $5e03: $34
    and b                                         ; $5e04: $a0
    cp a                                          ; $5e05: $bf

jr_06a_5e06:
    adc l                                         ; $5e06: $8d
    inc e                                         ; $5e07: $1c
    ld l, l                                       ; $5e08: $6d
    sbc h                                         ; $5e09: $9c
    push de                                       ; $5e0a: $d5
    adc e                                         ; $5e0b: $8b
    ld c, c                                       ; $5e0c: $49
    ld d, $b2                                     ; $5e0d: $16 $b2
    sbc $59                                       ; $5e0f: $de $59
    sub d                                         ; $5e11: $92
    inc d                                         ; $5e12: $14
    ld [hl], l                                    ; $5e13: $75
    dec bc                                        ; $5e14: $0b
    call $de76                                    ; $5e15: $cd $76 $de
    ld c, l                                       ; $5e18: $4d
    ld d, b                                       ; $5e19: $50
    rra                                           ; $5e1a: $1f
    ld [hl], $4d                                  ; $5e1b: $36 $4d
    add hl, sp                                    ; $5e1d: $39
    ld d, h                                       ; $5e1e: $54
    ld hl, $f580                                  ; $5e1f: $21 $80 $f5
    inc c                                         ; $5e22: $0c
    rst $28                                       ; $5e23: $ef
    rrca                                          ; $5e24: $0f
    sbc e                                         ; $5e25: $9b
    sub e                                         ; $5e26: $93
    ld c, b                                       ; $5e27: $48
    ld d, e                                       ; $5e28: $53
    dec hl                                        ; $5e29: $2b
    and c                                         ; $5e2a: $a1
    ld [hl], d                                    ; $5e2b: $72
    jp z, $4866                                   ; $5e2c: $ca $66 $48

    ld a, a                                       ; $5e2f: $7f
    ld [$58d3], a                                 ; $5e30: $ea $d3 $58
    ld [hl], $ce                                  ; $5e33: $36 $ce
    adc d                                         ; $5e35: $8a
    db $fd                                        ; $5e36: $fd
    ld b, a                                       ; $5e37: $47
    ld a, d                                       ; $5e38: $7a
    ld e, [hl]                                    ; $5e39: $5e
    db $e4                                        ; $5e3a: $e4
    ld a, d                                       ; $5e3b: $7a
    pop hl                                        ; $5e3c: $e1
    inc [hl]                                      ; $5e3d: $34
    and b                                         ; $5e3e: $a0
    cp a                                          ; $5e3f: $bf
    adc l                                         ; $5e40: $8d
    inc e                                         ; $5e41: $1c
    dec d                                         ; $5e42: $15
    ld [hl], l                                    ; $5e43: $75
    dec bc                                        ; $5e44: $0b
    call $de76                                    ; $5e45: $cd $76 $de
    ld l, l                                       ; $5e48: $6d
    add d                                         ; $5e49: $82
    ld a, [$69b0]                                 ; $5e4a: $fa $b0 $69
    jp z, $0aa1                                   ; $5e4d: $ca $a1 $0a

    ld bc, $1eec                                  ; $5e50: $01 $ec $1e
    ld sp, hl                                     ; $5e53: $f9
    dec l                                         ; $5e54: $2d
    rst $30                                       ; $5e55: $f7
    rlca                                          ; $5e56: $07
    ld [c], a                                     ; $5e57: $e2
    add hl, hl                                    ; $5e58: $29
    rst $30                                       ; $5e59: $f7
    ld a, [bc]                                    ; $5e5a: $0a
    call Call_06a_656b                            ; $5e5b: $cd $6b $65
    or e                                          ; $5e5e: $b3
    ld h, e                                       ; $5e5f: $63
    ld a, l                                       ; $5e60: $7d
    db $db                                        ; $5e61: $db
    ld e, l                                       ; $5e62: $5d
    ldh a, [$93]                                  ; $5e63: $f0 $93
    db $ec                                        ; $5e65: $ec
    ccf                                           ; $5e66: $3f
    jp nc, Jump_000_22f3                          ; $5e67: $d2 $f3 $22

    rst $10                                       ; $5e6a: $d7
    dec bc                                        ; $5e6b: $0b
    and a                                         ; $5e6c: $a7
    ld bc, $6dfd                                  ; $5e6d: $01 $fd $6d
    db $e4                                        ; $5e70: $e4
    xor b                                         ; $5e71: $a8
    xor b                                         ; $5e72: $a8
    ld e, e                                       ; $5e73: $5b
    ld l, b                                       ; $5e74: $68
    or [hl]                                       ; $5e75: $b6
    di                                            ; $5e76: $f3
    ld l, [hl]                                    ; $5e77: $6e
    add d                                         ; $5e78: $82
    ld a, [$69b0]                                 ; $5e79: $fa $b0 $69
    jp z, $51a1                                   ; $5e7c: $ca $a1 $51

    jr c, jr_06a_5e06                             ; $5e7f: $38 $85

    ld h, [hl]                                    ; $5e81: $66
    ld [$96a0], sp                                ; $5e82: $08 $a0 $96
    dec [hl]                                      ; $5e85: $35
    db $fc                                        ; $5e86: $fc
    ldh a, [$c0]                                  ; $5e87: $f0 $c0
    ld a, [hl+]                                   ; $5e89: $2a
    rst $10                                       ; $5e8a: $d7
    or h                                          ; $5e8b: $b4
    rst $38                                       ; $5e8c: $ff
    ld c, b                                       ; $5e8d: $48
    rst $08                                       ; $5e8e: $cf
    adc e                                         ; $5e8f: $8b
    ld e, h                                       ; $5e90: $5c
    ld a, a                                       ; $5e91: $7f
    jr nc, @-$0a                                  ; $5e92: $30 $f4

    cp $00                                        ; $5e94: $fe $00
    add hl, bc                                    ; $5e96: $09
    xor [hl]                                      ; $5e97: $ae
    ld c, d                                       ; $5e98: $4a
    rst $08                                       ; $5e99: $cf
    ld h, e                                       ; $5e9a: $63
    ld d, e                                       ; $5e9b: $53
    ld c, $fd                                     ; $5e9c: $0e $fd
    sub e                                         ; $5e9e: $93
    ld c, b                                       ; $5e9f: $48
    ld [hl], e                                    ; $5ea0: $73
    ld b, l                                       ; $5ea1: $45
    dec l                                         ; $5ea2: $2d
    sbc e                                         ; $5ea3: $9b
    ld hl, $a9fd                                  ; $5ea4: $21 $fd $a9
    ld c, a                                       ; $5ea7: $4f
    ld h, e                                       ; $5ea8: $63
    reti                                          ; $5ea9: $d9


    jr c, jr_06a_5ed7                             ; $5eaa: $38 $2b

    or $1f                                        ; $5eac: $f6 $1f
    jp hl                                         ; $5eae: $e9


    ld a, c                                       ; $5eaf: $79
    sub c                                         ; $5eb0: $91
    db $eb                                        ; $5eb1: $eb
    add l                                         ; $5eb2: $85
    db $d3                                        ; $5eb3: $d3
    add b                                         ; $5eb4: $80
    cp $36                                        ; $5eb5: $fe $36
    ld [hl], d                                    ; $5eb7: $72
    ld d, h                                       ; $5eb8: $54
    call nc, $342d                                ; $5eb9: $d4 $2d $34
    db $db                                        ; $5ebc: $db
    ld a, c                                       ; $5ebd: $79
    ld a, a                                       ; $5ebe: $7f
    db $db                                        ; $5ebf: $db

Call_06a_5ec0:
    ld h, [hl]                                    ; $5ec0: $66
    ld b, l                                       ; $5ec1: $45
    db $ed                                        ; $5ec2: $ed
    ccf                                           ; $5ec3: $3f
    jp nc, Jump_000_22f3                          ; $5ec4: $d2 $f3 $22

    rst $10                                       ; $5ec7: $d7
    dec bc                                        ; $5ec8: $0b
    and a                                         ; $5ec9: $a7
    ld bc, $6dfd                                  ; $5eca: $01 $fd $6d
    db $e4                                        ; $5ecd: $e4
    add sp, -$7a                                  ; $5ece: $e8 $86
    ld e, [hl]                                    ; $5ed0: $5e
    ld [hl], $81                                  ; $5ed1: $36 $81
    ld e, d                                       ; $5ed3: $5a
    ld l, d                                       ; $5ed4: $6a
    and l                                         ; $5ed5: $a5
    ld [hl], b                                    ; $5ed6: $70

jr_06a_5ed7:
    or h                                          ; $5ed7: $b4
    ld a, [hl+]                                   ; $5ed8: $2a
    sbc h                                         ; $5ed9: $9c
    xor [hl]                                      ; $5eda: $ae
    db $10                                        ; $5edb: $10
    ld a, a                                       ; $5edc: $7f
    add h                                         ; $5edd: $84
    ld sp, $86ea                                  ; $5ede: $31 $ea $86
    rrca                                          ; $5ee1: $0f
    db $db                                        ; $5ee2: $db
    ld h, [hl]                                    ; $5ee3: $66
    ld b, l                                       ; $5ee4: $45
    db $ed                                        ; $5ee5: $ed
    ccf                                           ; $5ee6: $3f
    jp nc, Jump_000_22f3                          ; $5ee7: $d2 $f3 $22

    rst $10                                       ; $5eea: $d7
    dec bc                                        ; $5eeb: $0b
    and a                                         ; $5eec: $a7
    ld bc, $6dfd                                  ; $5eed: $01 $fd $6d
    db $e4                                        ; $5ef0: $e4
    add sp, -$7a                                  ; $5ef1: $e8 $86
    ld l, [hl]                                    ; $5ef3: $6e
    inc de                                        ; $5ef4: $13
    ld c, [hl]                                    ; $5ef5: $4e
    cp l                                          ; $5ef6: $bd
    cpl                                           ; $5ef7: $2f
    push hl                                       ; $5ef8: $e5
    and b                                         ; $5ef9: $a0
    push af                                       ; $5efa: $f5
    ret nc                                        ; $5efb: $d0

    cp b                                          ; $5efc: $b8
    inc h                                         ; $5efd: $24
    add hl, de                                    ; $5efe: $19
    ld h, [hl]                                    ; $5eff: $66
    jp Jump_000_0907                              ; $5f00: $c3 $07 $09


    ld [$a6c3], a                                 ; $5f03: $ea $c3 $a6
    add hl, hl                                    ; $5f06: $29
    add a                                         ; $5f07: $87
    ld c, [hl]                                    ; $5f08: $4e
    inc sp                                        ; $5f09: $33
    ld e, h                                       ; $5f0a: $5c
    dec a                                         ; $5f0b: $3d
    inc [hl]                                      ; $5f0c: $34
    ld l, $c9                                     ; $5f0d: $2e $c9
    add hl, hl                                    ; $5f0f: $29
    ld a, a                                       ; $5f10: $7f
    cp h                                          ; $5f11: $bc
    adc h                                         ; $5f12: $8c
    ld b, d                                       ; $5f13: $42
    inc sp                                        ; $5f14: $33
    dec de                                        ; $5f15: $1b
    ld h, a                                       ; $5f16: $67
    push bc                                       ; $5f17: $c5
    cp $23                                        ; $5f18: $fe $23
    dec a                                         ; $5f1a: $3d
    cpl                                           ; $5f1b: $2f
    ld [hl], d                                    ; $5f1c: $72
    cp l                                          ; $5f1d: $bd
    ld [hl], b                                    ; $5f1e: $70
    ld a, [de]                                    ; $5f1f: $1a
    ret nc                                        ; $5f20: $d0

    rst $18                                       ; $5f21: $df
    ld b, [hl]                                    ; $5f22: $46
    adc [hl]                                      ; $5f23: $8e
    adc d                                         ; $5f24: $8a
    cp d                                          ; $5f25: $ba
    add l                                         ; $5f26: $85
    ld h, [hl]                                    ; $5f27: $66
    dec sp                                        ; $5f28: $3b
    rst $28                                       ; $5f29: $ef
    rrca                                          ; $5f2a: $0f
    dec sp                                        ; $5f2b: $3b
    ld d, b                                       ; $5f2c: $50
    cp b                                          ; $5f2d: $b8
    ld a, d                                       ; $5f2e: $7a
    ld b, a                                       ; $5f2f: $47
    dec d                                         ; $5f30: $15

jr_06a_5f31:
    dec c                                         ; $5f31: $0d
    jr z, jr_06a_5f31                             ; $5f32: $28 $fd

    pop de                                        ; $5f34: $d1
    ld c, h                                       ; $5f35: $4c
    inc de                                        ; $5f36: $13
    dec d                                         ; $5f37: $15
    xor [hl]                                      ; $5f38: $ae
    pop hl                                        ; $5f39: $e1
    reti                                          ; $5f3a: $d9


    ld h, e                                       ; $5f3b: $63
    ld d, e                                       ; $5f3c: $53
    ld c, $85                                     ; $5f3d: $0e $85
    ld h, [hl]                                    ; $5f3f: $66
    halt                                          ; $5f40: $76
    ld e, l                                       ; $5f41: $5d
    sbc l                                         ; $5f42: $9d
    ld h, h                                       ; $5f43: $64
    dec a                                         ; $5f44: $3d
    jp $23fe                                      ; $5f45: $c3 $fe $23


    dec a                                         ; $5f48: $3d
    cpl                                           ; $5f49: $2f
    ld [hl], d                                    ; $5f4a: $72
    cp l                                          ; $5f4b: $bd
    ld [hl], b                                    ; $5f4c: $70
    ld a, [de]                                    ; $5f4d: $1a
    ret nc                                        ; $5f4e: $d0

    rst $18                                       ; $5f4f: $df
    ld b, [hl]                                    ; $5f50: $46
    adc [hl]                                      ; $5f51: $8e
    adc d                                         ; $5f52: $8a
    cp d                                          ; $5f53: $ba
    add l                                         ; $5f54: $85
    ld h, [hl]                                    ; $5f55: $66
    dec sp                                        ; $5f56: $3b
    rst $28                                       ; $5f57: $ef
    rrca                                          ; $5f58: $0f
    db $db                                        ; $5f59: $db
    halt                                          ; $5f5a: $76
    rst $10                                       ; $5f5b: $d7
    ld [hl], d                                    ; $5f5c: $72
    push af                                       ; $5f5d: $f5
    sub h                                         ; $5f5e: $94
    ld [hl], d                                    ; $5f5f: $72
    ld [hl], h                                    ; $5f60: $74
    ld h, e                                       ; $5f61: $63
    ld b, [hl]                                    ; $5f62: $46
    ld d, e                                       ; $5f63: $53
    adc [hl]                                      ; $5f64: $8e
    ld sp, $ff4c                                  ; $5f65: $31 $4c $ff
    inc h                                         ; $5f68: $24
    jp nc, Jump_000_3ab4                          ; $5f69: $d2 $b4 $3a

    ret                                           ; $5f6c: $c9


    add $59                                       ; $5f6d: $c6 $59
    or c                                          ; $5f6f: $b1
    rst $38                                       ; $5f70: $ff
    ld c, b                                       ; $5f71: $48
    rst $08                                       ; $5f72: $cf
    adc e                                         ; $5f73: $8b
    ld e, h                                       ; $5f74: $5c
    cpl                                           ; $5f75: $2f
    sbc h                                         ; $5f76: $9c
    ld b, $f4                                     ; $5f77: $06 $f4
    or a                                          ; $5f79: $b7
    sub c                                         ; $5f7a: $91
    and e                                         ; $5f7b: $a3
    rst $30                                       ; $5f7c: $f7
    rlca                                          ; $5f7d: $07
    ld [c], a                                     ; $5f7e: $e2
    jp hl                                         ; $5f7f: $e9


    ld sp, $7756                                  ; $5f80: $31 $56 $77
    ld l, a                                       ; $5f83: $6f
    ld b, [hl]                                    ; $5f84: $46
    ld c, h                                       ; $5f85: $4c
    ld c, [hl]                                    ; $5f86: $4e
    sbc a                                         ; $5f87: $9f
    and $11                                       ; $5f88: $e6 $11
    ld [hl], l                                    ; $5f8a: $75
    dec bc                                        ; $5f8b: $0b
    call $de76                                    ; $5f8c: $cd $76 $de
    rra                                           ; $5f8f: $1f
    ld [c], a                                     ; $5f90: $e2
    jp hl                                         ; $5f91: $e9


    ld sp, $c056                                  ; $5f92: $31 $56 $c0
    ld e, d                                       ; $5f95: $5a
    and e                                         ; $5f96: $a3
    ld [hl], b                                    ; $5f97: $70
    sbc d                                         ; $5f98: $9a
    ld de, $5393                                  ; $5f99: $11 $93 $53
    ret                                           ; $5f9c: $c9


    and a                                         ; $5f9d: $a7
    db $fd                                        ; $5f9e: $fd
    ld b, a                                       ; $5f9f: $47
    ld a, d                                       ; $5fa0: $7a
    ld e, [hl]                                    ; $5fa1: $5e
    db $e4                                        ; $5fa2: $e4
    ld a, [$a183]                                 ; $5fa3: $fa $83 $a1
    and d                                         ; $5fa6: $a2
    ld l, [hl]                                    ; $5fa7: $6e
    and c                                         ; $5fa8: $a1
    reti                                          ; $5fa9: $d9


    adc $fb                                       ; $5faa: $ce $fb
    inc bc                                        ; $5fac: $03
    ld d, a                                       ; $5fad: $57
    call z, $5992                                 ; $5fae: $cc $92 $59
    ret                                           ; $5fb1: $c9


    and a                                         ; $5fb2: $a7
    call $00b4                                    ; $5fb3: $cd $b4 $00
    ld d, c                                       ; $5fb6: $51
    or a                                          ; $5fb7: $b7
    ret nc                                        ; $5fb8: $d0

    ld l, h                                       ; $5fb9: $6c
    rst $20                                       ; $5fba: $e7
    db $dd                                        ; $5fbb: $dd
    inc b                                         ; $5fbc: $04
    call $a9c2                                    ; $5fbd: $cd $c2 $a9
    ld b, d                                       ; $5fc0: $42
    ld a, [$b286]                                 ; $5fc1: $fa $86 $b2
    ld a, a                                       ; $5fc4: $7f
    ld [de], a                                    ; $5fc5: $12
    ld l, c                                       ; $5fc6: $69
    ld e, d                                       ; $5fc7: $5a
    db $e3                                        ; $5fc8: $e3
    xor h                                         ; $5fc9: $ac
    xor b                                         ; $5fca: $a8
    db $fd                                        ; $5fcb: $fd
    ld b, a                                       ; $5fcc: $47
    ld a, d                                       ; $5fcd: $7a
    ld e, [hl]                                    ; $5fce: $5e
    db $e4                                        ; $5fcf: $e4
    ld a, [$a183]                                 ; $5fd0: $fa $83 $a1
    rst $30                                       ; $5fd3: $f7
    rlca                                          ; $5fd4: $07
    ld e, e                                       ; $5fd5: $5b
    call nz, $bd2f                                ; $5fd6: $c4 $2f $bd
    db $f4                                        ; $5fd9: $f4
    ld [$6e26], a                                 ; $5fda: $ea $26 $6e
    cp a                                          ; $5fdd: $bf
    db $ec                                        ; $5fde: $ec
    or d                                          ; $5fdf: $b2
    add h                                         ; $5fe0: $84
    ld c, e                                       ; $5fe1: $4b
    ld b, l                                       ; $5fe2: $45
    db $fd                                        ; $5fe3: $fd
    sub e                                         ; $5fe4: $93
    inc [hl]                                      ; $5fe5: $34
    cp $19                                        ; $5fe6: $fe $19
    and [hl]                                      ; $5fe8: $a6
    and d                                         ; $5fe9: $a2
    ld b, [hl]                                    ; $5fea: $46
    ld c, d                                       ; $5feb: $4a
    ld l, b                                       ; $5fec: $68
    add hl, de                                    ; $5fed: $19
    ld b, e                                       ; $5fee: $43
    dec c                                         ; $5fef: $0d
    dec bc                                        ; $5ff0: $0b
    inc sp                                        ; $5ff1: $33
    ld b, d                                       ; $5ff2: $42
    ld e, a                                       ; $5ff3: $5f
    inc c                                         ; $5ff4: $0c
    rst $28                                       ; $5ff5: $ef
    ld a, a                                       ; $5ff6: $7f
    inc l                                         ; $5ff7: $2c
    dec c                                         ; $5ff8: $0d
    call $00c6                                    ; $5ff9: $cd $c6 $00
    ld c, c                                       ; $5ffc: $49
    inc de                                        ; $5ffd: $13
    xor b                                         ; $5ffe: $a8
    dec e                                         ; $5fff: $1d
    ld l, a                                       ; $6000: $6f
    add hl, de                                    ; $6001: $19
    ld b, e                                       ; $6002: $43
    push bc                                       ; $6003: $c5
    db $f4                                        ; $6004: $f4
    ld c, d                                       ; $6005: $4a
    ld e, d                                       ; $6006: $5a
    add h                                         ; $6007: $84
    push af                                       ; $6008: $f5
    inc e                                         ; $6009: $1c
    dec de                                        ; $600a: $1b
    cp l                                          ; $600b: $bd
    ld a, e                                       ; $600c: $7b
    db $dd                                        ; $600d: $dd
    ld de, $cc7a                                  ; $600e: $11 $7a $cc
    or c                                          ; $6011: $b1
    ld b, a                                       ; $6012: $47
    ld a, [hl]                                    ; $6013: $7e
    sub a                                         ; $6014: $97
    ld [c], a                                     ; $6015: $e2
    add a                                         ; $6016: $87
    rlca                                          ; $6017: $07
    sbc d                                         ; $6018: $9a
    ld d, c                                       ; $6019: $51
    ld [hl], $3b                                  ; $601a: $36 $3b
    halt                                          ; $601c: $76
    ld b, l                                       ; $601d: $45
    ld a, e                                       ; $601e: $7b
    ld sp, $5149                                  ; $601f: $31 $49 $51
    and a                                         ; $6022: $a7
    ld c, b                                       ; $6023: $48
    cp c                                          ; $6024: $b9
    rst $20                                       ; $6025: $e7
    ld d, e                                       ; $6026: $53
    ld [hl+], a                                   ; $6027: $22
    and $a9                                       ; $6028: $e6 $a9
    db $e4                                        ; $602a: $e4
    db $d3                                        ; $602b: $d3
    ld b, [hl]                                    ; $602c: $46
    db $fc                                        ; $602d: $fc
    ld d, b                                       ; $602e: $50
    ld e, l                                       ; $602f: $5d
    or e                                          ; $6030: $b3
    scf                                           ; $6031: $37
    push af                                       ; $6032: $f5
    ld l, c                                       ; $6033: $69
    ld l, h                                       ; $6034: $6c
    jp z, Jump_06a_4971                           ; $6035: $ca $71 $49

    add hl, sp                                    ; $6038: $39
    ld e, b                                       ; $6039: $58
    dec a                                         ; $603a: $3d
    and $04                                       ; $603b: $e6 $04
    or e                                          ; $603d: $b3
    db $e3                                        ; $603e: $e3
    ld [$cbc5], a                                 ; $603f: $ea $c5 $cb
    rst $28                                       ; $6042: $ef
    rst $00                                       ; $6043: $c7
    or e                                          ; $6044: $b3
    reti                                          ; $6045: $d9


    ld d, b                                       ; $6046: $50
    pop af                                        ; $6047: $f1
    db $f4                                        ; $6048: $f4
    jr @-$13                                      ; $6049: $18 $eb

    ld c, a                                       ; $604b: $4f
    add b                                         ; $604c: $80
    halt                                          ; $604d: $76
    ld h, c                                       ; $604e: $61
    ld e, h                                       ; $604f: $5c
    ld c, a                                       ; $6050: $4f
    db $eb                                        ; $6051: $eb
    call nc, Call_000_27b7                        ; $6052: $d4 $b7 $27
    pop af                                        ; $6055: $f1
    ld l, h                                       ; $6056: $6c
    ld a, [de]                                    ; $6057: $1a
    ld d, b                                       ; $6058: $50
    jp hl                                         ; $6059: $e9


    ld e, [hl]                                    ; $605a: $5e
    ld e, $ad                                     ; $605b: $1e $ad
    rla                                           ; $605d: $17
    cpl                                           ; $605e: $2f
    cp a                                          ; $605f: $bf
    push af                                       ; $6060: $f5
    and e                                         ; $6061: $a3
    ld c, l                                       ; $6062: $4d
    add hl, sp                                    ; $6063: $39
    db $f4                                        ; $6064: $f4
    reti                                          ; $6065: $d9


    sbc d                                         ; $6066: $9a
    sub [hl]                                      ; $6067: $96
    cp [hl]                                       ; $6068: $be
    ld hl, $d806                                  ; $6069: $21 $06 $d8
    db $fd                                        ; $606c: $fd
    ld bc, $9a09                                  ; $606d: $01 $09 $9a
    rst $10                                       ; $6070: $d7
    or h                                          ; $6071: $b4
    sbc $17                                       ; $6072: $de $17
    cp c                                          ; $6074: $b9
    ld c, b                                       ; $6075: $48
    call nz, $068c                                ; $6076: $c4 $8c $06
    call nz, $d36c                                ; $6079: $c4 $6c $d3
    jr nc, @-$01                                  ; $607c: $30 $fd

    rst $00                                       ; $607e: $c7
    ld l, e                                       ; $607f: $6b
    ld l, b                                       ; $6080: $68
    ld h, b                                       ; $6081: $60
    or e                                          ; $6082: $b3
    ld h, e                                       ; $6083: $63
    cp l                                          ; $6084: $bd
    sub h                                         ; $6085: $94
    cp e                                          ; $6086: $bb
    dec l                                         ; $6087: $2d
    adc a                                         ; $6088: $8f
    dec de                                        ; $6089: $1b
    cp d                                          ; $608a: $ba
    reti                                          ; $608b: $d9


    ld l, c                                       ; $608c: $69
    ld h, [hl]                                    ; $608d: $66
    ld e, c                                       ; $608e: $59
    cp $86                                        ; $608f: $fe $86
    ldh a, [$32]                                  ; $6091: $f0 $32
    xor l                                         ; $6093: $ad
    add hl, hl                                    ; $6094: $29
    add a                                         ; $6095: $87
    ld b, [hl]                                    ; $6096: $46
    ret z                                         ; $6097: $c8

    ld a, [hl+]                                   ; $6098: $2a
    dec a                                         ; $6099: $3d
    adc a                                         ; $609a: $8f
    jp c, $aac0                                   ; $609b: $da $c0 $aa

    ld h, e                                       ; $609e: $63
    ld hl, $69f8                                  ; $609f: $21 $f8 $69
    ld a, $30                                     ; $60a2: $3e $30
    cp $8f                                        ; $60a4: $fe $8f
    dec de                                        ; $60a6: $1b
    ld a, $e2                                     ; $60a7: $3e $e2
    ccf                                           ; $60a9: $3f
    dec a                                         ; $60aa: $3d
    call nc, $068c                                ; $60ab: $d4 $8c $06
    db $f4                                        ; $60ae: $f4
    rra                                           ; $60af: $1f
    jp hl                                         ; $60b0: $e9


    dec de                                        ; $60b1: $1b
    xor l                                         ; $60b2: $ad
    ld a, c                                       ; $60b3: $79
    jp nz, Jump_06a_4768                          ; $60b4: $c2 $68 $47

    ei                                            ; $60b7: $fb
    ld [hl-], a                                   ; $60b8: $32
    and d                                         ; $60b9: $a2
    ld [hl], $b2                                  ; $60ba: $36 $b2
    reti                                          ; $60bc: $d9


    or c                                          ; $60bd: $b1
    set 2, e                                      ; $60be: $cb $d3
    call z, $1606                                 ; $60c0: $cc $06 $16
    ld a, [$c2cf]                                 ; $60c3: $fa $cf $c2
    dec c                                         ; $60c6: $0d
    dec d                                         ; $60c7: $15
    ld c, a                                       ; $60c8: $4f
    adc a                                         ; $60c9: $8f
    or c                                          ; $60ca: $b1
    cp $04                                        ; $60cb: $fe $04
    ld l, b                                       ; $60cd: $68
    ld a, l                                       ; $60ce: $7d
    ld e, d                                       ; $60cf: $5a
    ld a, [hl]                                    ; $60d0: $7e
    ld d, [hl]                                    ; $60d1: $56
    sbc a                                         ; $60d2: $9f
    add $6e                                       ; $60d3: $c6 $6e
    sbc c                                         ; $60d5: $99
    or h                                          ; $60d6: $b4
    jr nz, jr_06a_6133                            ; $60d7: $20 $5a

    sub $0d                                       ; $60d9: $d6 $0d
    rra                                           ; $60db: $1f
    rst $20                                       ; $60dc: $e7
    jp nz, Jump_000_326c                          ; $60dd: $c2 $6c $32

    dec [hl]                                      ; $60e0: $35
    and e                                         ; $60e1: $a3
    ld c, h                                       ; $60e2: $4c
    add hl, sp                                    ; $60e3: $39
    inc l                                         ; $60e4: $2c
    xor b                                         ; $60e5: $a8
    ld l, a                                       ; $60e6: $6f
    ld d, b                                       ; $60e7: $50
    rla                                           ; $60e8: $17
    rst $10                                       ; $60e9: $d7
    adc a                                         ; $60ea: $8f
    ld c, [hl]                                    ; $60eb: $4e
    jp Jump_06a_5cf4                              ; $60ec: $c3 $f4 $5c


    db $e3                                        ; $60ef: $e3
    ccf                                           ; $60f0: $3f
    db $fd                                        ; $60f1: $fd
    ld b, a                                       ; $60f2: $47
    sub $8b                                       ; $60f3: $d6 $8b
    sub a                                         ; $60f5: $97
    rst $18                                       ; $60f6: $df
    ld a, [$0dd1]                                 ; $60f7: $fa $d1 $0d
    dec a                                         ; $60fa: $3d
    and e                                         ; $60fb: $a3
    ld e, $c8                                     ; $60fc: $1e $c8
    ld a, d                                       ; $60fe: $7a
    pop af                                        ; $60ff: $f1
    ld a, [c]                                     ; $6100: $f2
    call nc, $b1a7                                ; $6101: $d4 $a7 $b1
    ld e, b                                       ; $6104: $58
    ld d, b                                       ; $6105: $50
    ld a, [$1886]                                 ; $6106: $fa $86 $18
    ld h, b                                       ; $6109: $60
    ld h, l                                       ; $610a: $65
    and e                                         ; $610b: $a3
    ld [hl], b                                    ; $610c: $70
    ld [$42e5], a                                 ; $610d: $ea $e5 $42
    dec hl                                        ; $6110: $2b
    ld d, l                                       ; $6111: $55
    sbc a                                         ; $6112: $9f
    ld l, h                                       ; $6113: $6c
    jr jr_06a_6183                                ; $6114: $18 $6d

    add [hl]                                      ; $6116: $86
    db $d3                                        ; $6117: $d3
    ld d, d                                       ; $6118: $52
    cp [hl]                                       ; $6119: $be
    db $f4                                        ; $611a: $f4
    add sp, -$7a                                  ; $611b: $e8 $86
    rrca                                          ; $611d: $0f
    sbc e                                         ; $611e: $9b
    daa                                           ; $611f: $27
    ld a, [hl+]                                   ; $6120: $2a
    jp nc, Jump_06a_69ee                          ; $6121: $d2 $ee $69

    ld b, [hl]                                    ; $6124: $46
    sbc c                                         ; $6125: $99
    adc l                                         ; $6126: $8d
    dec hl                                        ; $6127: $2b
    xor b                                         ; $6128: $a8
    jp nc, Jump_06a_5d3a                          ; $6129: $d2 $3a $5d

    sbc b                                         ; $612c: $98
    sbc [hl]                                      ; $612d: $9e
    and d                                         ; $612e: $a2
    ld a, $ec                                     ; $612f: $3e $ec
    rra                                           ; $6131: $1f
    inc sp                                        ; $6132: $33

jr_06a_6133:
    ld e, b                                       ; $6133: $58
    ld e, c                                       ; $6134: $59
    ld c, c                                       ; $6135: $49
    sub l                                         ; $6136: $95
    ld h, e                                       ; $6137: $63
    add $bb                                       ; $6138: $c6 $bb
    ld [c], a                                     ; $613a: $e2
    jp hl                                         ; $613b: $e9


    ld sp, $9a16                                  ; $613c: $31 $16 $9a
    rst $10                                       ; $613f: $d7
    or h                                          ; $6140: $b4
    sbc $17                                       ; $6141: $de $17
    cp c                                          ; $6143: $b9
    ld c, b                                       ; $6144: $48
    call nz, $328c                                ; $6145: $c4 $8c $32
    push hl                                       ; $6148: $e5
    sbc $7d                                       ; $6149: $de $7d
    rst $18                                       ; $614b: $df
    sub b                                         ; $614c: $90
    db $dd                                        ; $614d: $dd
    ld [hl-], a                                   ; $614e: $32
    ld l, c                                       ; $614f: $69
    ld b, c                                       ; $6150: $41
    or h                                          ; $6151: $b4
    xor h                                         ; $6152: $ac
    dec de                                        ; $6153: $1b
    ld a, $3b                                     ; $6154: $3e $3b
    db $10                                        ; $6156: $10
    inc sp                                        ; $6157: $33
    or h                                          ; $6158: $b4
    add hl, hl                                    ; $6159: $29
    add a                                         ; $615a: $87
    ld a, [$a013]                                 ; $615b: $fa $13 $a0
    add l                                         ; $615e: $85
    ld h, [hl]                                    ; $615f: $66
    ld e, d                                       ; $6160: $5a
    rst $00                                       ; $6161: $c7
    jp nc, $496e                                  ; $6162: $d2 $6e $49

    adc [hl]                                      ; $6165: $8e
    ld c, [hl]                                    ; $6166: $4e
    inc bc                                        ; $6167: $03
    sbc d                                         ; $6168: $9a
    ld h, c                                       ; $6169: $61
    ret nc                                        ; $616a: $d0

    ld [$530b], a                                 ; $616b: $ea $0b $53
    push bc                                       ; $616e: $c5
    add d                                         ; $616f: $82
    rst $38                                       ; $6170: $ff
    ld a, a                                       ; $6171: $7f
    inc de                                        ; $6172: $13
    add hl, de                                    ; $6173: $19
    and [hl]                                      ; $6174: $a6
    ld a, $8d                                     ; $6175: $3e $8d
    dec a                                         ; $6177: $3d
    rst $18                                       ; $6178: $df
    halt                                          ; $6179: $76
    ld a, d                                       ; $617a: $7a
    cp l                                          ; $617b: $bd
    cpl                                           ; $617c: $2f
    add [hl]                                      ; $617d: $86
    or c                                          ; $617e: $b1
    cp e                                          ; $617f: $bb
    db $db                                        ; $6180: $db
    db $dd                                        ; $6181: $dd
    ld a, [bc]                                    ; $6182: $0a

jr_06a_6183:
    ld e, d                                       ; $6183: $5a
    daa                                           ; $6184: $27
    ld l, e                                       ; $6185: $6b
    ld c, [hl]                                    ; $6186: $4e
    adc [hl]                                      ; $6187: $8e
    dec [hl]                                      ; $6188: $35
    and b                                         ; $6189: $a0
    add hl, hl                                    ; $618a: $29
    add a                                         ; $618b: $87
    ld b, d                                       ; $618c: $42
    di                                            ; $618d: $f3
    ld e, d                                       ; $618e: $5a
    jp Jump_06a_7f53                              ; $618f: $c3 $53 $7f


    ld [c], a                                     ; $6192: $e2
    ld l, [hl]                                    ; $6193: $6e
    dec hl                                        ; $6194: $2b
    inc l                                         ; $6195: $2c
    ld [hl], l                                    ; $6196: $75
    sub d                                         ; $6197: $92
    adc l                                         ; $6198: $8d
    or e                                          ; $6199: $b3
    ld h, d                                       ; $619a: $62
    rst $38                                       ; $619b: $ff
    sub c                                         ; $619c: $91
    sbc [hl]                                      ; $619d: $9e
    rla                                           ; $619e: $17
    cp c                                          ; $619f: $b9
    ld e, [hl]                                    ; $61a0: $5e
    jr c, jr_06a_61b0                             ; $61a1: $38 $0d

    add sp, $6f                                   ; $61a3: $e8 $6f
    inc hl                                        ; $61a5: $23
    ld b, a                                       ; $61a6: $47
    dec de                                        ; $61a7: $1b
    and a                                         ; $61a8: $a7
    sbc e                                         ; $61a9: $9b
    rla                                           ; $61aa: $17
    rst $20                                       ; $61ab: $e7
    ld b, c                                       ; $61ac: $41
    inc bc                                        ; $61ad: $03
    cp d                                          ; $61ae: $ba
    ld a, c                                       ; $61af: $79

jr_06a_61b0:
    ld d, $fc                                     ; $61b0: $16 $fc
    rst $38                                       ; $61b2: $ff
    sbc e                                         ; $61b3: $9b
    ret z                                         ; $61b4: $c8

    jr nc, jr_06a_61bd                            ; $61b5: $30 $06

    ld l, l                                       ; $61b7: $6d
    ld b, b                                       ; $61b8: $40
    scf                                           ; $61b9: $37
    db $db                                        ; $61ba: $db
    ret z                                         ; $61bb: $c8

    pop de                                        ; $61bc: $d1

jr_06a_61bd:
    ld b, $f4                                     ; $61bd: $06 $f4
    inc a                                         ; $61bf: $3c
    cp h                                          ; $61c0: $bc
    db $fc                                        ; $61c1: $fc
    ld a, [hl]                                    ; $61c2: $7e
    inc a                                         ; $61c3: $3c
    dec de                                        ; $61c4: $1b
    cp l                                          ; $61c5: $bd
    ccf                                           ; $61c6: $3f
    sub a                                         ; $61c7: $97
    ld hl, $f36a                                  ; $61c8: $21 $6a $f3
    add h                                         ; $61cb: $84
    pop de                                        ; $61cc: $d1
    adc [hl]                                      ; $61cd: $8e
    or $c5                                        ; $61ce: $f6 $c5
    or h                                          ; $61d0: $b4
    ld hl, $c43c                                  ; $61d1: $21 $3c $c4
    inc c                                         ; $61d4: $0c
    ld l, l                                       ; $61d5: $6d
    jp z, $d3a1                                   ; $61d6: $ca $a1 $d3

    dec e                                         ; $61d9: $1d
    sub c                                         ; $61da: $91
    ld a, $ea                                     ; $61db: $3e $ea
    inc hl                                        ; $61dd: $23
    inc a                                         ; $61de: $3c
    or a                                          ; $61df: $b7
    and c                                         ; $61e0: $a1
    ld [c], a                                     ; $61e1: $e2
    ld c, e                                       ; $61e2: $4b
    jp c, $93ad                                   ; $61e3: $da $ad $93

    call Call_06a_7868                            ; $61e6: $cd $68 $78
    cp e                                          ; $61e9: $bb
    sbc d                                         ; $61ea: $9a
    ld [hl], d                                    ; $61eb: $72
    jr z, @+$36                                   ; $61ec: $28 $34

    xor a                                         ; $61ee: $af
    dec [hl]                                      ; $61ef: $35
    inc a                                         ; $61f0: $3c
    push af                                       ; $61f1: $f5
    daa                                           ; $61f2: $27
    xor $b6                                       ; $61f3: $ee $b6
    jp nz, Jump_000_2752                          ; $61f5: $c2 $52 $27

    reti                                          ; $61f8: $d9


    jr c, jr_06a_6226                             ; $61f9: $38 $2b

    or $1f                                        ; $61fb: $f6 $1f
    jp hl                                         ; $61fd: $e9


    ld a, c                                       ; $61fe: $79
    sub c                                         ; $61ff: $91
    db $eb                                        ; $6200: $eb
    add l                                         ; $6201: $85
    db $d3                                        ; $6202: $d3
    add b                                         ; $6203: $80
    cp $36                                        ; $6204: $fe $36
    ld [hl], d                                    ; $6206: $72
    or h                                          ; $6207: $b4
    ld [hl], c                                    ; $6208: $71
    cp d                                          ; $6209: $ba
    ld a, c                                       ; $620a: $79
    ld [hl], c                                    ; $620b: $71
    ld e, $34                                     ; $620c: $1e $34
    and b                                         ; $620e: $a0
    sbc e                                         ; $620f: $9b
    ld h, a                                       ; $6210: $67
    pop bc                                        ; $6211: $c1
    rst $38                                       ; $6212: $ff
    cp a                                          ; $6213: $bf
    adc c                                         ; $6214: $89
    inc c                                         ; $6215: $0c
    ld h, e                                       ; $6216: $63
    ret nc                                        ; $6217: $d0

    ld b, $74                                     ; $6218: $06 $74
    or e                                          ; $621a: $b3
    adc l                                         ; $621b: $8d
    inc e                                         ; $621c: $1c
    ld l, l                                       ; $621d: $6d
    ld b, b                                       ; $621e: $40
    rst $08                                       ; $621f: $cf
    jp $efcb                                      ; $6220: $c3 $cb $ef


    rst $00                                       ; $6223: $c7
    or e                                          ; $6224: $b3
    pop de                                        ; $6225: $d1

jr_06a_6226:
    ei                                            ; $6226: $fb
    inc bc                                        ; $6227: $03
    dec sp                                        ; $6228: $3b
    cp b                                          ; $6229: $b8
    xor h                                         ; $622a: $ac
    xor b                                         ; $622b: $a8
    add hl, de                                    ; $622c: $19
    db $dd                                        ; $622d: $dd
    ld [hl-], a                                   ; $622e: $32
    ld l, c                                       ; $622f: $69
    ld b, c                                       ; $6230: $41
    or h                                          ; $6231: $b4
    xor h                                         ; $6232: $ac
    dec c                                         ; $6233: $0d
    inc l                                         ; $6234: $2c
    dec h                                         ; $6235: $25
    cp b                                          ; $6236: $b8
    sbc [hl]                                      ; $6237: $9e
    dec c                                         ; $6238: $0d
    xor b                                         ; $6239: $a8
    sub e                                         ; $623a: $93
    db $fd                                        ; $623b: $fd
    rlca                                          ; $623c: $07
    ld c, e                                       ; $623d: $4b
    ld [hl], d                                    ; $623e: $72
    ld l, d                                       ; $623f: $6a
    inc hl                                        ; $6240: $23
    ld a, b                                       ; $6241: $78
    ld a, [bc]                                    ; $6242: $0a
    reti                                          ; $6243: $d9


    ccf                                           ; $6244: $3f
    ld c, c                                       ; $6245: $49
    ld c, c                                       ; $6246: $49
    db $dd                                        ; $6247: $dd
    ret nc                                        ; $6248: $d0

    db $ed                                        ; $6249: $ed
    dec [hl]                                      ; $624a: $35
    daa                                           ; $624b: $27
    rst $00                                       ; $624c: $c7
    ld a, [de]                                    ; $624d: $1a
    ld d, b                                       ; $624e: $50
    daa                                           ; $624f: $27
    reti                                          ; $6250: $d9


    jr c, jr_06a_627e                             ; $6251: $38 $2b

    or $1f                                        ; $6253: $f6 $1f
    jp hl                                         ; $6255: $e9


    ld a, c                                       ; $6256: $79
    sub c                                         ; $6257: $91
    db $eb                                        ; $6258: $eb
    add l                                         ; $6259: $85
    db $d3                                        ; $625a: $d3
    add b                                         ; $625b: $80
    cp $36                                        ; $625c: $fe $36
    ld [hl], d                                    ; $625e: $72
    or h                                          ; $625f: $b4
    ld [hl], c                                    ; $6260: $71
    cp d                                          ; $6261: $ba
    ld a, c                                       ; $6262: $79
    ld [hl], c                                    ; $6263: $71
    ld e, $34                                     ; $6264: $1e $34
    and b                                         ; $6266: $a0
    sbc e                                         ; $6267: $9b
    ld h, a                                       ; $6268: $67
    pop bc                                        ; $6269: $c1
    rst $38                                       ; $626a: $ff
    cp a                                          ; $626b: $bf
    adc c                                         ; $626c: $89
    inc c                                         ; $626d: $0c
    ld h, e                                       ; $626e: $63
    ret nc                                        ; $626f: $d0

    ld b, $74                                     ; $6270: $06 $74
    or e                                          ; $6272: $b3
    adc l                                         ; $6273: $8d
    inc e                                         ; $6274: $1c
    ld l, l                                       ; $6275: $6d
    ld b, b                                       ; $6276: $40
    rst $08                                       ; $6277: $cf
    jp $efcb                                      ; $6278: $c3 $cb $ef


    rst $00                                       ; $627b: $c7
    or e                                          ; $627c: $b3
    pop de                                        ; $627d: $d1

jr_06a_627e:
    ld b, d                                       ; $627e: $42

Call_06a_627f:
    ld a, l                                       ; $627f: $7d
    ld l, $49                                     ; $6280: $2e $49
    ld l, [hl]                                    ; $6282: $6e
    ld d, h                                       ; $6283: $54
    call nc, $c2c7                                ; $6284: $d4 $c7 $c2
    ld b, d                                       ; $6287: $42
    rst $38                                       ; $6288: $ff
    ld e, c                                       ; $6289: $59
    ret c                                         ; $628a: $d8

    ld a, a                                       ; $628b: $7f
    db $e4                                        ; $628c: $e4
    ld [hl], h                                    ; $628d: $74
    cp d                                          ; $628e: $ba
    ld b, d                                       ; $628f: $42
    call z, Call_06a_7f73                         ; $6290: $cc $73 $7f
    sub a                                         ; $6293: $97
    dec hl                                        ; $6294: $2b
    or l                                          ; $6295: $b5
    and e                                         ; $6296: $a3
    ld e, l                                       ; $6297: $5d
    add $d9                                       ; $6298: $c6 $d9
    ld l, b                                       ; $629a: $68
    inc bc                                        ; $629b: $03
    cp e                                          ; $629c: $bb
    ld a, d                                       ; $629d: $7a
    ld a, c                                       ; $629e: $79
    ld [hl], a                                    ; $629f: $77
    ld a, e                                       ; $62a0: $7b
    xor h                                         ; $62a1: $ac
    ccf                                           ; $62a2: $3f
    sub $0c                                       ; $62a3: $d6 $0c
    db $eb                                        ; $62a5: $eb
    ccf                                           ; $62a6: $3f
    jp nc, $905f                                  ; $62a7: $d2 $5f $90

    add hl, de                                    ; $62aa: $19
    and [hl]                                      ; $62ab: $a6
    call nc, Call_000_2dd2                        ; $62ac: $d4 $d2 $2d
    call nc, Call_06a_7406                        ; $62af: $d4 $06 $74
    dec bc                                        ; $62b2: $0b
    call z, $cb33                                 ; $62b3: $cc $33 $cb
    and h                                         ; $62b6: $a4
    rra                                           ; $62b7: $1f
    adc e                                         ; $62b8: $8b
    ld a, [$cd63]                                 ; $62b9: $fa $63 $cd
    jr nc, @+$6a                                  ; $62bc: $30 $68

    rst $38                                       ; $62be: $ff
    adc c                                         ; $62bf: $89
    adc d                                         ; $62c0: $8a
    or h                                          ; $62c1: $b4
    ld a, e                                       ; $62c2: $7b
    ld h, c                                       ; $62c3: $61
    ld a, [hl-]                                   ; $62c4: $3a
    sbc [hl]                                      ; $62c5: $9e
    inc c                                         ; $62c6: $0c
    dec hl                                        ; $62c7: $2b
    or l                                          ; $62c8: $b5
    add [hl]                                      ; $62c9: $86
    rra                                           ; $62ca: $1f
    cpl                                           ; $62cb: $2f
    ld d, e                                       ; $62cc: $53
    dec de                                        ; $62cd: $1b
    xor b                                         ; $62ce: $a8
    push af                                       ; $62cf: $f5
    ld h, a                                       ; $62d0: $67
    db $fd                                        ; $62d1: $fd
    pop bc                                        ; $62d2: $c1
    ret nc                                        ; $62d3: $d0

    dec c                                         ; $62d4: $0d
    ld c, l                                       ; $62d5: $4d
    jr z, @+$36                                   ; $62d6: $28 $34

    xor a                                         ; $62d8: $af
    dec [hl]                                      ; $62d9: $35
    inc a                                         ; $62da: $3c
    push af                                       ; $62db: $f5
    daa                                           ; $62dc: $27
    xor $b6                                       ; $62dd: $ee $b6
    jp nz, Jump_000_2752                          ; $62df: $c2 $52 $27

    reti                                          ; $62e2: $d9


    jr c, jr_06a_6310                             ; $62e3: $38 $2b

    or $1f                                        ; $62e5: $f6 $1f
    jp hl                                         ; $62e7: $e9


    ld a, c                                       ; $62e8: $79
    sub c                                         ; $62e9: $91
    db $eb                                        ; $62ea: $eb
    add l                                         ; $62eb: $85
    db $d3                                        ; $62ec: $d3
    add b                                         ; $62ed: $80
    cp $36                                        ; $62ee: $fe $36
    ld [hl], d                                    ; $62f0: $72
    or h                                          ; $62f1: $b4
    ld [hl], c                                    ; $62f2: $71
    cp d                                          ; $62f3: $ba
    ld a, c                                       ; $62f4: $79
    ld [hl], c                                    ; $62f5: $71
    ld e, $34                                     ; $62f6: $1e $34
    and b                                         ; $62f8: $a0
    sbc e                                         ; $62f9: $9b
    ld h, a                                       ; $62fa: $67
    pop bc                                        ; $62fb: $c1
    rst $38                                       ; $62fc: $ff
    cp a                                          ; $62fd: $bf
    adc c                                         ; $62fe: $89
    inc c                                         ; $62ff: $0c
    ld h, e                                       ; $6300: $63
    ret nc                                        ; $6301: $d0

    ld b, $74                                     ; $6302: $06 $74
    or e                                          ; $6304: $b3
    adc l                                         ; $6305: $8d

jr_06a_6306:
    inc e                                         ; $6306: $1c
    ld l, l                                       ; $6307: $6d
    ld b, b                                       ; $6308: $40
    rst $08                                       ; $6309: $cf
    jp $efcb                                      ; $630a: $c3 $cb $ef


    rst $00                                       ; $630d: $c7
    or e                                          ; $630e: $b3
    pop de                                        ; $630f: $d1

jr_06a_6310:
    ei                                            ; $6310: $fb
    inc bc                                        ; $6311: $03
    sbc e                                         ; $6312: $9b
    daa                                           ; $6313: $27
    ld a, [hl+]                                   ; $6314: $2a
    jp nc, Jump_06a_69ee                          ; $6315: $d2 $ee $69

    ld b, [hl]                                    ; $6318: $46
    ld de, $8cd3                                  ; $6319: $11 $d3 $8c
    or h                                          ; $631c: $b4
    ld c, [hl]                                    ; $631d: $4e
    inc de                                        ; $631e: $13
    add c                                         ; $631f: $81
    dec d                                         ; $6320: $15
    or h                                          ; $6321: $b4
    jr z, jr_06a_6306                             ; $6322: $28 $e2

    ccf                                           ; $6324: $3f
    ld sp, $351b                                  ; $6325: $31 $1b $35
    and e                                         ; $6328: $a3
    db $d3                                        ; $6329: $d3
    push hl                                       ; $632a: $e5
    xor l                                         ; $632b: $ad
    ld l, h                                       ; $632c: $6c
    sbc d                                         ; $632d: $9a
    ld [hl], d                                    ; $632e: $72
    xor b                                         ; $632f: $a8
    ld [hl], a                                    ; $6330: $77
    ld e, [hl]                                    ; $6331: $5e
    ld l, l                                       ; $6332: $6d
    sbc h                                         ; $6333: $9c
    add a                                         ; $6334: $87
    ld h, c                                       ; $6335: $61
    cp d                                          ; $6336: $ba
    ld a, a                                       ; $6337: $7f
    dec a                                         ; $6338: $3d
    rst $08                                       ; $6339: $cf
    or e                                          ; $633a: $b3
    cp h                                          ; $633b: $bc
    ret                                           ; $633c: $c9


    ld hl, sp-$47                                 ; $633d: $f8 $b9
    and c                                         ; $633f: $a1
    ld [c], a                                     ; $6340: $e2
    adc l                                         ; $6341: $8d
    sub e                                         ; $6342: $93
    ld [hl], a                                    ; $6343: $77
    ei                                            ; $6344: $fb
    rra                                           ; $6345: $1f
    dec de                                        ; $6346: $1b
    ld d, b                                       ; $6347: $50
    daa                                           ; $6348: $27
    reti                                          ; $6349: $d9


    jr c, jr_06a_6377                             ; $634a: $38 $2b

    or $1f                                        ; $634c: $f6 $1f
    jp hl                                         ; $634e: $e9


    ld a, c                                       ; $634f: $79
    sub c                                         ; $6350: $91
    db $eb                                        ; $6351: $eb
    add l                                         ; $6352: $85
    db $d3                                        ; $6353: $d3
    add b                                         ; $6354: $80
    cp $36                                        ; $6355: $fe $36
    ld [hl], d                                    ; $6357: $72
    or h                                          ; $6358: $b4
    ld [hl], c                                    ; $6359: $71
    cp d                                          ; $635a: $ba
    ld a, c                                       ; $635b: $79
    ld [hl], c                                    ; $635c: $71
    ld e, $34                                     ; $635d: $1e $34
    and b                                         ; $635f: $a0
    sbc e                                         ; $6360: $9b
    ld h, a                                       ; $6361: $67
    pop bc                                        ; $6362: $c1
    rst $38                                       ; $6363: $ff
    cp a                                          ; $6364: $bf
    adc c                                         ; $6365: $89

Call_06a_6366:
    inc c                                         ; $6366: $0c
    ld h, e                                       ; $6367: $63
    ret nc                                        ; $6368: $d0

    ld b, $74                                     ; $6369: $06 $74
    or e                                          ; $636b: $b3
    adc l                                         ; $636c: $8d
    inc e                                         ; $636d: $1c
    ld l, l                                       ; $636e: $6d
    ld b, b                                       ; $636f: $40
    rst $08                                       ; $6370: $cf
    jp $efcb                                      ; $6371: $c3 $cb $ef


    rst $00                                       ; $6374: $c7
    or e                                          ; $6375: $b3
    pop de                                        ; $6376: $d1

jr_06a_6377:
    xor [hl]                                      ; $6377: $ae
    xor e                                         ; $6378: $ab
    sub e                                         ; $6379: $93
    db $ec                                        ; $637a: $ec
    add d                                         ; $637b: $82

jr_06a_637c:
    sub a                                         ; $637c: $97
    sbc l                                         ; $637d: $9d
    or c                                          ; $637e: $b1
    cpl                                           ; $637f: $2f
    ld h, [hl]                                    ; $6380: $66
    jr jr_06a_63d7                                ; $6381: $18 $54

    add hl, de                                    ; $6383: $19
    inc sp                                        ; $6384: $33
    xor $0f                                       ; $6385: $ee $0f
    ld [c], a                                     ; $6387: $e2
    ld a, $ec                                     ; $6388: $3e $ec
    add a                                         ; $638a: $87
    rlca                                          ; $638b: $07
    cp d                                          ; $638c: $ba
    ld sp, $01a3                                  ; $638d: $31 $a3 $01
    adc l                                         ; $6390: $8d
    or e                                          ; $6391: $b3
    and d                                         ; $6392: $a2
    sub $1f                                       ; $6393: $d6 $1f
    push de                                       ; $6395: $d5
    rst $20                                       ; $6396: $e7
    ld a, c                                       ; $6397: $79
    rrc e                                         ; $6398: $cb $0b
    inc c                                         ; $639a: $0c
    ret nc                                        ; $639b: $d0

    ld b, $f8                                     ; $639c: $06 $f8
    di                                            ; $639e: $f3
    or h                                          ; $639f: $b4
    ld bc, $47fd                                  ; $63a0: $01 $fd $47
    ld a, [$320b]                                 ; $63a3: $fa $0b $32
    dec c                                         ; $63a6: $0d
    ld e, d                                       ; $63a7: $5a
    ld [hl], $d3                                  ; $63a8: $36 $d3
    ldh [$65], a                                  ; $63aa: $e0 $65
    ld d, e                                       ; $63ac: $53
    ld c, $9d                                     ; $63ad: $0e $9d
    ld h, $da                                     ; $63af: $26 $da
    ld a, b                                       ; $63b1: $78
    and c                                         ; $63b2: $a1
    ld a, [hl-]                                   ; $63b3: $3a
    sub $73                                       ; $63b4: $d6 $73
    ld e, [hl]                                    ; $63b6: $5e
    adc h                                         ; $63b7: $8c
    jp c, $068c                                   ; $63b8: $da $8c $06

    cp b                                          ; $63bb: $b8
    dec c                                         ; $63bc: $0d
    db $dd                                        ; $63bd: $dd
    add $2a                                       ; $63be: $c6 $2a
    ld d, d                                       ; $63c0: $52
    xor $c0                                       ; $63c1: $ee $c0
    ld hl, sp+$3f                                 ; $63c3: $f8 $3f
    ld [hl], $4c                                  ; $63c5: $36 $4c
    inc sp                                        ; $63c7: $33
    ld e, h                                       ; $63c8: $5c
    push de                                       ; $63c9: $d5
    db $fd                                        ; $63ca: $fd
    ld d, b                                       ; $63cb: $50
    dec e                                         ; $63cc: $1d
    ld d, c                                       ; $63cd: $51
    and c                                         ; $63ce: $a1
    ld a, c                                       ; $63cf: $79
    xor l                                         ; $63d0: $ad
    pop hl                                        ; $63d1: $e1
    xor c                                         ; $63d2: $a9
    ccf                                           ; $63d3: $3f
    ld [hl], c                                    ; $63d4: $71
    or a                                          ; $63d5: $b7
    dec d                                         ; $63d6: $15

jr_06a_63d7:
    sub [hl]                                      ; $63d7: $96
    ld a, [hl-]                                   ; $63d8: $3a
    ret                                           ; $63d9: $c9


    add $59                                       ; $63da: $c6 $59
    or c                                          ; $63dc: $b1
    rst $38                                       ; $63dd: $ff

jr_06a_63de:
    ld c, b                                       ; $63de: $48
    rst $08                                       ; $63df: $cf
    adc e                                         ; $63e0: $8b
    ld e, h                                       ; $63e1: $5c
    cpl                                           ; $63e2: $2f
    sbc h                                         ; $63e3: $9c
    ld b, $f4                                     ; $63e4: $06 $f4
    or a                                          ; $63e6: $b7
    sub c                                         ; $63e7: $91
    and e                                         ; $63e8: $a3
    adc l                                         ; $63e9: $8d
    db $d3                                        ; $63ea: $d3
    call $f38b                                    ; $63eb: $cd $8b $f3
    and b                                         ; $63ee: $a0
    ld bc, $3cdd                                  ; $63ef: $01 $dd $3c
    dec bc                                        ; $63f2: $0b
    cp $ff                                        ; $63f3: $fe $ff
    ld c, l                                       ; $63f5: $4d
    ld h, h                                       ; $63f6: $64
    jr jr_06a_637c                                ; $63f7: $18 $83

    ld [hl], $a0                                  ; $63f9: $36 $a0
    sbc e                                         ; $63fb: $9b
    ld l, l                                       ; $63fc: $6d
    db $e4                                        ; $63fd: $e4
    ld l, b                                       ; $63fe: $68
    inc bc                                        ; $63ff: $03
    ld a, d                                       ; $6400: $7a
    ld e, $5e                                     ; $6401: $1e $5e
    ld a, [hl]                                    ; $6403: $7e
    ccf                                           ; $6404: $3f
    sbc [hl]                                      ; $6405: $9e
    adc l                                         ; $6406: $8d
    sbc $1f                                       ; $6407: $de $1f
    sbc e                                         ; $6409: $9b
    daa                                           ; $640a: $27
    ld a, [hl+]                                   ; $640b: $2a
    jp nc, Jump_06a_69ee                          ; $640c: $d2 $ee $69

    ld b, [hl]                                    ; $640f: $46
    dec c                                         ; $6410: $0d
    cp a                                          ; $6411: $bf
    di                                            ; $6412: $f3
    ld h, c                                       ; $6413: $61
    or h                                          ; $6414: $b4
    ld c, [hl]                                    ; $6415: $4e
    cpl                                           ; $6416: $2f
    add [hl]                                      ; $6417: $86
    db $f4                                        ; $6418: $f4
    jr jr_06a_63de                                ; $6419: $18 $c3

    ld e, b                                       ; $641b: $58
    jp Jump_000_1b74                              ; $641c: $c3 $74 $1b


    ld d, [hl]                                    ; $641f: $56
    ld l, a                                       ; $6420: $6f
    ld e, c                                       ; $6421: $59
    or b                                          ; $6422: $b0
    and c                                         ; $6423: $a1
    ld [c], a                                     ; $6424: $e2
    adc l                                         ; $6425: $8d
    sub e                                         ; $6426: $93
    ld [hl], a                                    ; $6427: $77
    ei                                            ; $6428: $fb
    rra                                           ; $6429: $1f
    dec de                                        ; $642a: $1b
    ld d, b                                       ; $642b: $50
    daa                                           ; $642c: $27
    reti                                          ; $642d: $d9


    jr c, jr_06a_645b                             ; $642e: $38 $2b

    or $1f                                        ; $6430: $f6 $1f
    jp hl                                         ; $6432: $e9


    ld a, c                                       ; $6433: $79
    sub c                                         ; $6434: $91
    db $eb                                        ; $6435: $eb
    add l                                         ; $6436: $85
    db $d3                                        ; $6437: $d3
    add b                                         ; $6438: $80
    cp $36                                        ; $6439: $fe $36
    ld [hl], d                                    ; $643b: $72
    or h                                          ; $643c: $b4
    ld [hl], c                                    ; $643d: $71
    cp d                                          ; $643e: $ba
    ld a, c                                       ; $643f: $79
    ld [hl], c                                    ; $6440: $71
    ld e, $34                                     ; $6441: $1e $34
    and b                                         ; $6443: $a0
    sbc e                                         ; $6444: $9b
    ld h, a                                       ; $6445: $67
    pop bc                                        ; $6446: $c1
    rst $38                                       ; $6447: $ff
    cp a                                          ; $6448: $bf
    adc c                                         ; $6449: $89
    inc c                                         ; $644a: $0c
    ld h, e                                       ; $644b: $63
    ret nc                                        ; $644c: $d0

    ld b, $74                                     ; $644d: $06 $74
    or e                                          ; $644f: $b3
    adc l                                         ; $6450: $8d
    inc e                                         ; $6451: $1c
    ld l, l                                       ; $6452: $6d
    ld b, b                                       ; $6453: $40
    rst $08                                       ; $6454: $cf
    jp $efcb                                      ; $6455: $c3 $cb $ef


    rst $00                                       ; $6458: $c7
    or e                                          ; $6459: $b3
    pop de                                        ; $645a: $d1

jr_06a_645b:
    ld b, d                                       ; $645b: $42
    ld a, l                                       ; $645c: $7d
    ld l, $49                                     ; $645d: $2e $49
    ld l, [hl]                                    ; $645f: $6e
    ld d, h                                       ; $6460: $54
    inc [hl]                                      ; $6461: $34
    and b                                         ; $6462: $a0
    ld e, h                                       ; $6463: $5c
    ld e, h                                       ; $6464: $5c
    sbc h                                         ; $6465: $9c
    ld a, [$9634]                                 ; $6466: $fa $34 $96
    adc e                                         ; $6469: $8b
    adc e                                         ; $646a: $8b
    ld [hl], e                                    ; $646b: $73
    ld a, a                                       ; $646c: $7f
    sbc e                                         ; $646d: $9b
    ld b, a                                       ; $646e: $47
    ld a, [$320b]                                 ; $646f: $fa $0b $32
    xor l                                         ; $6472: $ad
    db $ec                                        ; $6473: $ec
    ld a, [c]                                     ; $6474: $f2
    sub $0b                                       ; $6475: $d6 $0b
    and a                                         ; $6477: $a7
    ld bc, $884d                                  ; $6478: $01 $4d $88
    ccf                                           ; $647b: $3f
    ld h, e                                       ; $647c: $63
    and [hl]                                      ; $647d: $a6
    ld b, h                                       ; $647e: $44
    call z, Call_06a_5da3                         ; $647f: $cc $a3 $5d
    ld d, a                                       ; $6482: $57
    add [hl]                                      ; $6483: $86
    rst $30                                       ; $6484: $f7
    cp a                                          ; $6485: $bf
    adc c                                         ; $6486: $89
    inc c                                         ; $6487: $0c
    db $d3                                        ; $6488: $d3
    db $fd                                        ; $6489: $fd
    sbc e                                         ; $648a: $9b
    dec e                                         ; $648b: $1d
    cp e                                          ; $648c: $bb
    inc a                                         ; $648d: $3c
    call Call_06a_406c                            ; $648e: $cd $6c $40
    ld d, a                                       ; $6491: $57
    cpl                                           ; $6492: $2f
    rst $28                                       ; $6493: $ef
    ld l, [hl]                                    ; $6494: $6e
    adc a                                         ; $6495: $8f
    ld e, d                                       ; $6496: $5a
    cp $0c                                        ; $6497: $fe $0c
    db $eb                                        ; $6499: $eb
    db $e4                                        ; $649a: $e4
    ei                                            ; $649b: $fb
    xor c                                         ; $649c: $a9
    ld [hl], a                                    ; $649d: $77
    push bc                                       ; $649e: $c5
    dec bc                                        ; $649f: $0b
    db $fd                                        ; $64a0: $fd
    ld h, a                                       ; $64a1: $67
    ld c, c                                       ; $64a2: $49
    or d                                          ; $64a3: $b2
    ld e, [hl]                                    ; $64a4: $5e
    ret c                                         ; $64a5: $d8

    ld [$492d], a                                 ; $64a6: $ea $2d $49
    or $1f                                        ; $64a9: $f6 $1f
    ld e, c                                       ; $64ab: $59
    ld [hl], $4e                                  ; $64ac: $36 $4e
    sbc $ed                                       ; $64ae: $de $ed
    ld a, a                                       ; $64b0: $7f
    ld l, h                                       ; $64b1: $6c
    ld b, b                                       ; $64b2: $40
    ld d, e                                       ; $64b3: $53
    ld c, $85                                     ; $64b4: $0e $85
    and $b5                                       ; $64b6: $e6 $b5
    add [hl]                                      ; $64b8: $86
    and a                                         ; $64b9: $a7
    cp $c4                                        ; $64ba: $fe $c4
    db $dd                                        ; $64bc: $dd
    ld d, [hl]                                    ; $64bd: $56
    ld e, b                                       ; $64be: $58
    ld [$1b24], a                                 ; $64bf: $ea $24 $1b
    ld h, a                                       ; $64c2: $67
    push bc                                       ; $64c3: $c5
    cp $23                                        ; $64c4: $fe $23
    dec a                                         ; $64c6: $3d
    cpl                                           ; $64c7: $2f
    ld [hl], d                                    ; $64c8: $72
    cp l                                          ; $64c9: $bd
    ld [hl], b                                    ; $64ca: $70
    ld a, [de]                                    ; $64cb: $1a
    ret nc                                        ; $64cc: $d0

    rst $18                                       ; $64cd: $df
    ld b, [hl]                                    ; $64ce: $46
    adc [hl]                                      ; $64cf: $8e
    ld [hl], $4e                                  ; $64d0: $36 $4e
    scf                                           ; $64d2: $37
    cpl                                           ; $64d3: $2f
    adc $83                                       ; $64d4: $ce $83
    ld b, $74                                     ; $64d6: $06 $74
    di                                            ; $64d8: $f3
    inc l                                         ; $64d9: $2c
    ld hl, sp-$01                                 ; $64da: $f8 $ff
    scf                                           ; $64dc: $37
    sub c                                         ; $64dd: $91
    ld h, c                                       ; $64de: $61
    inc c                                         ; $64df: $0c
    jp c, Jump_06a_6e80                           ; $64e0: $da $80 $6e

    or [hl]                                       ; $64e3: $b6
    sub c                                         ; $64e4: $91
    and e                                         ; $64e5: $a3
    dec c                                         ; $64e6: $0d
    add sp, $79                                   ; $64e7: $e8 $79
    ld a, b                                       ; $64e9: $78
    ld sp, hl                                     ; $64ea: $f9
    db $fd                                        ; $64eb: $fd
    ld a, b                                       ; $64ec: $78
    ld [hl], $7a                                  ; $64ed: $36 $7a
    ld a, a                                       ; $64ef: $7f
    adc c                                         ; $64f0: $89
    inc [hl]                                      ; $64f1: $34
    ld a, d                                       ; $64f2: $7a
    sub $45                                       ; $64f3: $d6 $45
    dec d                                         ; $64f5: $15
    dec [hl]                                      ; $64f6: $35
    call $a498                                    ; $64f7: $cd $98 $a4
    ld h, [hl]                                    ; $64fa: $66
    sub h                                         ; $64fb: $94
    ld c, l                                       ; $64fc: $4d
    add h                                         ; $64fd: $84
    add hl, hl                                    ; $64fe: $29
    jp nc, $adee                                  ; $64ff: $d2 $ee $ad

    rla                                           ; $6502: $17
    ld c, [hl]                                    ; $6503: $4e
    rst $30                                       ; $6504: $f7
    rst $28                                       ; $6505: $ef
    and $31                                       ; $6506: $e6 $31
    daa                                           ; $6508: $27
    add b                                         ; $6509: $80
    dec de                                        ; $650a: $1b
    ld a, [hl+]                                   ; $650b: $2a
    sbc $38                                       ; $650c: $de $38
    ld a, c                                       ; $650e: $79
    or a                                          ; $650f: $b7
    rst $38                                       ; $6510: $ff
    or c                                          ; $6511: $b1
    ld bc, $9275                                  ; $6512: $01 $75 $92
    adc l                                         ; $6515: $8d
    or e                                          ; $6516: $b3
    ld h, d                                       ; $6517: $62
    rst $38                                       ; $6518: $ff
    sub c                                         ; $6519: $91
    sbc [hl]                                      ; $651a: $9e
    rla                                           ; $651b: $17
    cp c                                          ; $651c: $b9
    ld e, [hl]                                    ; $651d: $5e
    jr c, jr_06a_652d                             ; $651e: $38 $0d

    add sp, $6f                                   ; $6520: $e8 $6f
    inc hl                                        ; $6522: $23
    ld b, a                                       ; $6523: $47
    dec de                                        ; $6524: $1b
    sbc [hl]                                      ; $6525: $9e
    ld a, [$7713]                                 ; $6526: $fa $13 $77
    ld e, e                                       ; $6529: $5b
    ld h, c                                       ; $652a: $61
    ld l, c                                       ; $652b: $69
    sbc h                                         ; $652c: $9c

jr_06a_652d:
    ld l, [hl]                                    ; $652d: $6e
    ld e, [hl]                                    ; $652e: $5e
    sbc h                                         ; $652f: $9c
    rlca                                          ; $6530: $07
    dec c                                         ; $6531: $0d
    add sp, -$1a                                  ; $6532: $e8 $e6
    ld e, c                                       ; $6534: $59
    ldh a, [rIE]                                  ; $6535: $f0 $ff
    ld l, a                                       ; $6537: $6f
    ld [hl+], a                                   ; $6538: $22
    jp $b418                                      ; $6539: $c3 $18 $b4


    ld bc, $6cdd                                  ; $653c: $01 $dd $6c
    inc hl                                        ; $653f: $23
    ld b, a                                       ; $6540: $47

jr_06a_6541:
    dec de                                        ; $6541: $1b
    ret nc                                        ; $6542: $d0

    di                                            ; $6543: $f3
    ldh a, [$f2]                                  ; $6544: $f0 $f2
    ei                                            ; $6546: $fb
    pop af                                        ; $6547: $f1
    ld l, h                                       ; $6548: $6c
    or h                                          ; $6549: $b4
    ld e, [hl]                                    ; $654a: $5e
    xor $da                                       ; $654b: $ee $da
    sbc b                                         ; $654d: $98
    ld d, c                                       ; $654e: $51
    rst $28                                       ; $654f: $ef
    ei                                            ; $6550: $fb
    ld l, c                                       ; $6551: $69
    push hl                                       ; $6552: $e5
    ld [bc], a                                    ; $6553: $02
    res 7, h                                      ; $6554: $cb $bc
    ccf                                           ; $6556: $3f
    sub a                                         ; $6557: $97
    jp nz, $e0bb                                  ; $6558: $c2 $bb $e0

    rst $08                                       ; $655b: $cf
    ret nc                                        ; $655c: $d0

    ld [$0c78], a                                 ; $655d: $ea $78 $0c
    dec e                                         ; $6560: $1d
    dec l                                         ; $6561: $2d
    rst $38                                       ; $6562: $ff
    adc c                                         ; $6563: $89
    add hl, de                                    ; $6564: $19
    rst $38                                       ; $6565: $ff
    sub e                                         ; $6566: $93
    adc b                                         ; $6567: $88
    ld a, c                                       ; $6568: $79
    or h                                          ; $6569: $b4
    add [hl]                                      ; $656a: $86

Call_06a_656b:
    rra                                           ; $656b: $1f
    ld sp, $1b43                                  ; $656c: $31 $43 $1b
    ldh [$cf], a                                  ; $656f: $e0 $cf
    db $d3                                        ; $6571: $d3
    ld b, $74                                     ; $6572: $06 $74
    dec [hl]                                      ; $6574: $35
    ld c, e                                       ; $6575: $4b
    and [hl]                                      ; $6576: $a6
    ld b, c                                       ; $6577: $41
    res 3, [hl]                                   ; $6578: $cb $9e
    ld l, a                                       ; $657a: $6f
    dec sp                                        ; $657b: $3b
    cp l                                          ; $657c: $bd
    sbc $17                                       ; $657d: $de $17
    jp Jump_000_0358                              ; $657f: $c3 $58 $03


    db $fc                                        ; $6582: $fc
    ld a, c                                       ; $6583: $79
    jp c, $ae80                                   ; $6584: $da $80 $ae

    ld h, b                                       ; $6587: $60
    sbc l                                         ; $6588: $9d
    ld h, $a8                                     ; $6589: $26 $a8
    adc a                                         ; $658b: $8f
    dec h                                         ; $658c: $25
    add hl, sp                                    ; $658d: $39
    dec c                                         ; $658e: $0d
    and e                                         ; $658f: $a3
    cp l                                          ; $6590: $bd
    jr nz, jr_06a_6541                            ; $6591: $20 $ae

    sbc [hl]                                      ; $6593: $9e
    xor $b6                                       ; $6594: $ee $b6
    jp nz, $bbd3                                  ; $6596: $c2 $d3 $bb

    ld e, e                                       ; $6599: $5b
    cp b                                          ; $659a: $b8
    add d                                         ; $659b: $82
    xor l                                         ; $659c: $ad
    push de                                       ; $659d: $d5
    ld c, c                                       ; $659e: $49
    ld [hl], $ce                                  ; $659f: $36 $ce
    adc d                                         ; $65a1: $8a
    db $fd                                        ; $65a2: $fd
    ld b, a                                       ; $65a3: $47
    ld a, d                                       ; $65a4: $7a
    ld e, [hl]                                    ; $65a5: $5e
    db $e4                                        ; $65a6: $e4

Jump_06a_65a7:
    ld a, d                                       ; $65a7: $7a
    pop hl                                        ; $65a8: $e1
    inc [hl]                                      ; $65a9: $34
    and b                                         ; $65aa: $a0
    cp a                                          ; $65ab: $bf
    adc l                                         ; $65ac: $8d
    inc e                                         ; $65ad: $1c
    ld l, l                                       ; $65ae: $6d
    sbc h                                         ; $65af: $9c
    ld l, [hl]                                    ; $65b0: $6e
    ld e, [hl]                                    ; $65b1: $5e
    sbc h                                         ; $65b2: $9c
    rlca                                          ; $65b3: $07
    dec c                                         ; $65b4: $0d
    add sp, -$1a                                  ; $65b5: $e8 $e6
    ld e, c                                       ; $65b7: $59
    ldh a, [rIE]                                  ; $65b8: $f0 $ff
    ld l, a                                       ; $65ba: $6f
    ld [hl+], a                                   ; $65bb: $22
    jp $b418                                      ; $65bc: $c3 $18 $b4


    ld bc, $6cdd                                  ; $65bf: $01 $dd $6c
    inc hl                                        ; $65c2: $23
    ld b, a                                       ; $65c3: $47
    dec de                                        ; $65c4: $1b
    ret nc                                        ; $65c5: $d0

    di                                            ; $65c6: $f3
    ldh a, [$f2]                                  ; $65c7: $f0 $f2
    ei                                            ; $65c9: $fb
    pop af                                        ; $65ca: $f1
    ld l, h                                       ; $65cb: $6c
    ld d, h                                       ; $65cc: $54
    call nc, $cd71                                ; $65cd: $d4 $71 $cd
    or b                                          ; $65d0: $b0
    dec [hl]                                      ; $65d1: $35
    xor l                                         ; $65d2: $ad
    ld c, [hl]                                    ; $65d3: $4e
    ld c, h                                       ; $65d4: $4c
    ld [hl-], a                                   ; $65d5: $32
    call z, Call_000_0fa6                         ; $65d6: $cc $a6 $0f
    ld d, a                                       ; $65d9: $57
    call z, $a992                                 ; $65da: $cc $92 $a9
    add hl, de                                    ; $65dd: $19
    ld h, l                                       ; $65de: $65
    rst $08                                       ; $65df: $cf
    or a                                          ; $65e0: $b7
    sbc l                                         ; $65e1: $9d
    ld e, [hl]                                    ; $65e2: $5e
    rst $28                                       ; $65e3: $ef
    adc e                                         ; $65e4: $8b
    ld h, c                                       ; $65e5: $61
    xor h                                         ; $65e6: $ac
    add c                                         ; $65e7: $81
    push hl                                       ; $65e8: $e5
    ld a, [bc]                                    ; $65e9: $0a
    ld sp, $633b                                  ; $65ea: $31 $3b $63
    jp Jump_06a_5cf4                              ; $65ed: $c3 $f4 $5c


    add a                                         ; $65f0: $87
    ld h, l                                       ; $65f1: $65
    cp d                                          ; $65f2: $ba
    ld a, a                                       ; $65f3: $7f
    or a                                          ; $65f4: $b7
    ld [c], a                                     ; $65f5: $e2
    ld [hl], c                                    ; $65f6: $71
    db $e3                                        ; $65f7: $e3
    or [hl]                                       ; $65f8: $b6
    ld a, c                                       ; $65f9: $79
    add hl, de                                    ; $65fa: $19
    ld [hl], a                                    ; $65fb: $77
    dec hl                                        ; $65fc: $2b
    sbc [hl]                                      ; $65fd: $9e
    ld e, $a3                                     ; $65fe: $1e $a3
    xor b                                         ; $6600: $a8
    and e                                         ; $6601: $a3
    db $fd                                        ; $6602: $fd
    rst $00                                       ; $6603: $c7
    inc c                                         ; $6604: $0c
    ld h, c                                       ; $6605: $61
    inc c                                         ; $6606: $0c
    jp c, Jump_06a_6e80                           ; $6607: $da $80 $6e

    sbc c                                         ; $660a: $99
    or h                                          ; $660b: $b4

jr_06a_660c:
    jr nz, jr_06a_6668                            ; $660c: $20 $5a

    sub $ee                                       ; $660e: $d6 $ee
    rst $18                                       ; $6610: $df
    jr c, jr_06a_6642                             ; $6611: $38 $2f

    and e                                         ; $6613: $a3
    ld d, c                                       ; $6614: $51
    jr c, jr_06a_660c                             ; $6615: $38 $f5

    ld l, c                                       ; $6617: $69
    ld hl, sp+$21                                 ; $6618: $f8 $21
    sbc e                                         ; $661a: $9b
    add l                                         ; $661b: $85
    ld d, e                                       ; $661c: $53
    xor d                                         ; $661d: $aa
    ld a, [hl-]                                   ; $661e: $3a
    call $630c                                    ; $661f: $cd $0c $63
    ret nc                                        ; $6622: $d0

    ei                                            ; $6623: $fb
    inc bc                                        ; $6624: $03
    rst $20                                       ; $6625: $e7
    jp nz, Jump_000_326c                          ; $6626: $c2 $6c $32

    dec [hl]                                      ; $6629: $35
    and e                                         ; $662a: $a3
    db $d3                                        ; $662b: $d3
    di                                            ; $662c: $f3
    ld e, a                                       ; $662d: $5f
    sbc d                                         ; $662e: $9a
    ld sp, $a8a3                                  ; $662f: $31 $a3 $a8
    ld [hl], d                                    ; $6632: $72
    ld e, c                                       ; $6633: $59
    ld d, c                                       ; $6634: $51
    inc sp                                        ; $6635: $33
    jp z, $816e                                   ; $6636: $ca $6e $81

    ret                                           ; $6639: $c9


    scf                                           ; $663a: $37
    ld de, $ba1b                                  ; $663b: $11 $1b $ba
    inc bc                                        ; $663e: $03
    ld sp, $9b43                                  ; $663f: $31 $43 $9b

jr_06a_6642:
    ld [hl], d                                    ; $6642: $72
    xor b                                         ; $6643: $a8
    sub e                                         ; $6644: $93
    ld l, h                                       ; $6645: $6c
    sbc h                                         ; $6646: $9c
    dec d                                         ; $6647: $15
    ei                                            ; $6648: $fb
    adc a                                         ; $6649: $8f
    db $f4                                        ; $664a: $f4

jr_06a_664b:
    cp h                                          ; $664b: $bc
    ret z                                         ; $664c: $c8

    push af                                       ; $664d: $f5
    jp nz, Jump_06a_4069                          ; $664e: $c2 $69 $40

    ld a, a                                       ; $6651: $7f
    dec de                                        ; $6652: $1b
    add hl, sp                                    ; $6653: $39
    jp c, $d4f0                                   ; $6654: $da $f0 $d4

    sbc a                                         ; $6657: $9f
    cp b                                          ; $6658: $b8
    db $db                                        ; $6659: $db
    ld a, [bc]                                    ; $665a: $0a
    ld c, e                                       ; $665b: $4b
    db $e3                                        ; $665c: $e3
    ld [hl], h                                    ; $665d: $74
    di                                            ; $665e: $f3
    ld [c], a                                     ; $665f: $e2
    inc a                                         ; $6660: $3c
    ld l, b                                       ; $6661: $68
    ld b, b                                       ; $6662: $40
    scf                                           ; $6663: $37
    rst $08                                       ; $6664: $cf
    add d                                         ; $6665: $82
    rst $38                                       ; $6666: $ff
    ld a, a                                       ; $6667: $7f

jr_06a_6668:
    inc de                                        ; $6668: $13
    add hl, de                                    ; $6669: $19
    add $a0                                       ; $666a: $c6 $a0
    dec c                                         ; $666c: $0d
    add sp, $66                                   ; $666d: $e8 $66
    dec de                                        ; $666f: $1b
    add hl, sp                                    ; $6670: $39
    jp c, $9e80                                   ; $6671: $da $80 $9e

    add a                                         ; $6674: $87
    sub a                                         ; $6675: $97
    rst $18                                       ; $6676: $df
    adc a                                         ; $6677: $8f
    ld h, a                                       ; $6678: $67
    and e                                         ; $6679: $a3
    ld e, l                                       ; $667a: $5d
    ld d, a                                       ; $667b: $57
    daa                                           ; $667c: $27
    ld e, c                                       ; $667d: $59
    jp $d23f                                      ; $667e: $c3 $3f $d2


    ld b, a                                       ; $6681: $47
    ld d, h                                       ; $6682: $54
    ld d, [hl]                                    ; $6683: $56
    add b                                         ; $6684: $80
    db $d3                                        ; $6685: $d3
    call z, Call_000_34fa                         ; $6686: $cc $fa $34
    sub [hl]                                      ; $6689: $96
    call Call_06a_5d8e                            ; $668a: $cd $8e $5d
    ld [hl], c                                    ; $668d: $71
    ld b, c                                       ; $668e: $41
    call z, $f78f                                 ; $668f: $cc $8f $f7
    rlca                                          ; $6692: $07
    sub a                                         ; $6693: $97
    ld [c], a                                     ; $6694: $e2
    ld [hl], a                                    ; $6695: $77
    ld a, $8c                                     ; $6696: $3e $8c
    sbc d                                         ; $6698: $9a
    pop de                                        ; $6699: $d1
    pop de                                        ; $669a: $d1
    ld h, [hl]                                    ; $669b: $66
    jr c, jr_06a_664b                             ; $669c: $38 $ad

    ld l, a                                       ; $669e: $6f
    ld d, b                                       ; $669f: $50
    call nz, Call_06a_6d0c                        ; $66a0: $c4 $0c $6d
    ld b, b                                       ; $66a3: $40
    inc hl                                        ; $66a4: $23
    inc sp                                        ; $66a5: $33
    sub a                                         ; $66a6: $97
    dec c                                         ; $66a7: $0d
    db $dd                                        ; $66a8: $dd
    ld [hl], $85                                  ; $66a9: $36 $85
    ld a, [$d9bb]                                 ; $66ab: $fa $bb $d9
    set 2, e                                      ; $66ae: $cb $d3
    ret nz                                        ; $66b0: $c0

    ld e, [hl]                                    ; $66b1: $5e
    ld [c], a                                     ; $66b2: $e2
    jr @-$72                                      ; $66b3: $18 $8c

    db $dd                                        ; $66b5: $dd
    add $cc                                       ; $66b6: $c6 $cc
    ld h, l                                       ; $66b8: $65
    or a                                          ; $66b9: $b7
    rst $38                                       ; $66ba: $ff
    ld d, c                                       ; $66bb: $51
    ld d, h                                       ; $66bc: $54
    ld l, b                                       ; $66bd: $68
    ld e, [hl]                                    ; $66be: $5e
    ld l, e                                       ; $66bf: $6b
    ld a, b                                       ; $66c0: $78
    ld [$dc4f], a                                 ; $66c1: $ea $4f $dc
    ld l, l                                       ; $66c4: $6d
    add l                                         ; $66c5: $85
    and l                                         ; $66c6: $a5
    ld c, [hl]                                    ; $66c7: $4e
    or d                                          ; $66c8: $b2
    ld [hl], c                                    ; $66c9: $71
    ld d, [hl]                                    ; $66ca: $56
    db $ec                                        ; $66cb: $ec
    ccf                                           ; $66cc: $3f
    jp nc, Jump_000_22f3                          ; $66cd: $d2 $f3 $22

    rst $10                                       ; $66d0: $d7
    dec bc                                        ; $66d1: $0b
    and a                                         ; $66d2: $a7
    ld bc, $6dfd                                  ; $66d3: $01 $fd $6d
    db $e4                                        ; $66d6: $e4
    ld l, b                                       ; $66d7: $68
    db $e3                                        ; $66d8: $e3
    ld [hl], h                                    ; $66d9: $74
    di                                            ; $66da: $f3
    ld [c], a                                     ; $66db: $e2
    inc a                                         ; $66dc: $3c
    ld l, b                                       ; $66dd: $68
    ld b, b                                       ; $66de: $40
    scf                                           ; $66df: $37
    rst $08                                       ; $66e0: $cf
    add d                                         ; $66e1: $82
    rst $38                                       ; $66e2: $ff
    ld a, a                                       ; $66e3: $7f
    inc de                                        ; $66e4: $13
    add hl, de                                    ; $66e5: $19
    add $a0                                       ; $66e6: $c6 $a0
    dec c                                         ; $66e8: $0d
    add sp, $66                                   ; $66e9: $e8 $66
    dec de                                        ; $66eb: $1b
    add hl, sp                                    ; $66ec: $39
    jp c, $9e80                                   ; $66ed: $da $80 $9e

    add a                                         ; $66f0: $87
    sub a                                         ; $66f1: $97
    rst $18                                       ; $66f2: $df
    adc a                                         ; $66f3: $8f
    ld h, a                                       ; $66f4: $67
    and e                                         ; $66f5: $a3
    rst $30                                       ; $66f6: $f7
    rlca                                          ; $66f7: $07
    ld [c], a                                     ; $66f8: $e2
    ld a, $63                                     ; $66f9: $3e $63
    sub d                                         ; $66fb: $92
    sbc d                                         ; $66fc: $9a
    pop de                                        ; $66fd: $d1
    inc [hl]                                      ; $66fe: $34
    sub a                                         ; $66ff: $97
    rla                                           ; $6700: $17
    sub e                                         ; $6701: $93
    call nc, Call_000_34fa                        ; $6702: $d4 $fa $34
    halt                                          ; $6705: $76
    ld a, [de]                                    ; $6706: $1a
    ld h, a                                       ; $6707: $67
    dec [hl]                                      ; $6708: $35
    and l                                         ; $6709: $a5
    ld a, h                                       ; $670a: $7c
    jp hl                                         ; $670b: $e9


    add hl, hl                                    ; $670c: $29
    db $f4                                        ; $670d: $f4
    and a                                         ; $670e: $a7
    inc e                                         ; $670f: $1c
    sbc l                                         ; $6710: $9d
    add [hl]                                      ; $6711: $86
    jp hl                                         ; $6712: $e9


    ld d, $a6                                     ; $6713: $16 $a6
    db $ed                                        ; $6715: $ed
    dec b                                         ; $6716: $05
    ld d, c                                       ; $6717: $51
    and a                                         ; $6718: $a7
    db $db                                        ; $6719: $db
    add $3c                                       ; $671a: $c6 $3c
    or b                                          ; $671c: $b0
    cp h                                          ; $671d: $bc
    and c                                         ; $671e: $a1
    adc c                                         ; $671f: $89
    ld h, e                                       ; $6720: $63
    db $fd                                        ; $6721: $fd
    rst $20                                       ; $6722: $e7
    push bc                                       ; $6723: $c5
    rst $38                                       ; $6724: $ff
    add l                                         ; $6725: $85
    inc bc                                        ; $6726: $03
    db $e3                                        ; $6727: $e3
    rst $38                                       ; $6728: $ff
    jr z, jr_06a_6755                             ; $6729: $28 $2a

    inc [hl]                                      ; $672b: $34
    xor a                                         ; $672c: $af
    sub l                                         ; $672d: $95
    jp hl                                         ; $672e: $e9


    ld sp, $3c36                                  ; $672f: $31 $36 $3c
    push af                                       ; $6732: $f5
    daa                                           ; $6733: $27
    xor $b6                                       ; $6734: $ee $b6
    jp nz, Jump_000_2752                          ; $6736: $c2 $52 $27

    reti                                          ; $6739: $d9


    jr c, jr_06a_6767                             ; $673a: $38 $2b

    or $1f                                        ; $673c: $f6 $1f
    jp hl                                         ; $673e: $e9


    ld a, c                                       ; $673f: $79
    sub c                                         ; $6740: $91
    db $eb                                        ; $6741: $eb
    add l                                         ; $6742: $85
    db $d3                                        ; $6743: $d3
    add b                                         ; $6744: $80
    cp $36                                        ; $6745: $fe $36
    ld [hl], d                                    ; $6747: $72
    or h                                          ; $6748: $b4
    ld [hl], c                                    ; $6749: $71
    cp d                                          ; $674a: $ba
    ld a, c                                       ; $674b: $79
    ld [hl], c                                    ; $674c: $71
    ld e, $34                                     ; $674d: $1e $34
    and b                                         ; $674f: $a0
    sbc e                                         ; $6750: $9b
    ld h, a                                       ; $6751: $67
    pop bc                                        ; $6752: $c1
    rst $38                                       ; $6753: $ff
    cp a                                          ; $6754: $bf

jr_06a_6755:
    adc c                                         ; $6755: $89
    inc c                                         ; $6756: $0c
    ld h, e                                       ; $6757: $63
    ret nc                                        ; $6758: $d0

    ld b, $74                                     ; $6759: $06 $74
    or e                                          ; $675b: $b3
    adc l                                         ; $675c: $8d
    inc e                                         ; $675d: $1c
    ld l, l                                       ; $675e: $6d
    ld b, b                                       ; $675f: $40
    rst $08                                       ; $6760: $cf
    jp $efcb                                      ; $6761: $c3 $cb $ef


    rst $00                                       ; $6764: $c7
    or e                                          ; $6765: $b3
    pop de                                        ; $6766: $d1

jr_06a_6767:
    ei                                            ; $6767: $fb
    inc bc                                        ; $6768: $03
    ld [c], a                                     ; $6769: $e2
    ld a, $63                                     ; $676a: $3e $63

Jump_06a_676c:
    sub d                                         ; $676c: $92
    sbc d                                         ; $676d: $9a
    pop de                                        ; $676e: $d1
    jp hl                                         ; $676f: $e9


    or [hl]                                       ; $6770: $b6
    ld sp, $2c0f                                  ; $6771: $31 $0f $2c
    rla                                           ; $6774: $17
    ld e, l                                       ; $6775: $5d
    sbc $ca                                       ; $6776: $de $ca
    xor b                                         ; $6778: $a8
    add hl, de                                    ; $6779: $19
    sbc l                                         ; $677a: $9d
    ld l, [hl]                                    ; $677b: $6e
    ld h, c                                       ; $677c: $61
    jp c, Jump_06a_685e                           ; $677d: $da $5e $68

    ld b, b                                       ; $6780: $40
    sbc l                                         ; $6781: $9d
    ld h, h                                       ; $6782: $64
    ld a, a                                       ; $6783: $7f
    ld e, d                                       ; $6784: $5a
    sbc d                                         ; $6785: $9a
    dec c                                         ; $6786: $0d
    ld l, b                                       ; $6787: $68
    ld [hl], $7a                                  ; $6788: $36 $7a
    cp b                                          ; $678a: $b8
    inc h                                         ; $678b: $24
    ld b, a                                       ; $678c: $47
    rst $28                                       ; $678d: $ef
    ld l, [hl]                                    ; $678e: $6e
    inc de                                        ; $678f: $13
    ld c, [hl]                                    ; $6790: $4e
    sub e                                         ; $6791: $93
    ld l, e                                       ; $6792: $6b
    ld c, l                                       ; $6793: $4d
    add hl, sp                                    ; $6794: $39
    ld l, $29                                     ; $6795: $2e $29
    rlca                                          ; $6797: $07
    db $eb                                        ; $6798: $eb
    ld a, [c]                                     ; $6799: $f2
    jp nc, Jump_000_2f5c                          ; $679a: $d2 $5c $2f

    sbc h                                         ; $679d: $9c
    ld [hl+], a                                   ; $679e: $22
    ld h, [hl]                                    ; $679f: $66
    ld b, e                                       ; $67a0: $43
    and c                                         ; $67a1: $a1
    add hl, de                                    ; $67a2: $19
    push hl                                       ; $67a3: $e5
    ccf                                           ; $67a4: $3f
    ld sp, $7fe3                                  ; $67a5: $31 $e3 $7f
    ld [de], a                                    ; $67a8: $12
    ld sp, $514f                                  ; $67a9: $31 $4f $51
    ld l, b                                       ; $67ac: $68
    and [hl]                                      ; $67ad: $a6
    dec [hl]                                      ; $67ae: $35
    inc a                                         ; $67af: $3c
    push af                                       ; $67b0: $f5
    daa                                           ; $67b1: $27
    xor $b6                                       ; $67b2: $ee $b6
    jp nz, Jump_000_2752                          ; $67b4: $c2 $52 $27

    reti                                          ; $67b7: $d9


    jr c, jr_06a_67e5                             ; $67b8: $38 $2b

    or $1f                                        ; $67ba: $f6 $1f
    jp hl                                         ; $67bc: $e9


    ld a, c                                       ; $67bd: $79
    sub c                                         ; $67be: $91
    db $eb                                        ; $67bf: $eb
    add l                                         ; $67c0: $85
    db $d3                                        ; $67c1: $d3
    add b                                         ; $67c2: $80
    cp $36                                        ; $67c3: $fe $36
    ld [hl], d                                    ; $67c5: $72
    or h                                          ; $67c6: $b4
    ld [hl], c                                    ; $67c7: $71
    cp d                                          ; $67c8: $ba
    ld a, c                                       ; $67c9: $79
    ld [hl], c                                    ; $67ca: $71
    ld e, $34                                     ; $67cb: $1e $34
    and b                                         ; $67cd: $a0
    sbc e                                         ; $67ce: $9b
    ld h, a                                       ; $67cf: $67
    pop bc                                        ; $67d0: $c1
    rst $38                                       ; $67d1: $ff
    cp a                                          ; $67d2: $bf
    adc c                                         ; $67d3: $89
    inc c                                         ; $67d4: $0c
    ld h, e                                       ; $67d5: $63
    ret nc                                        ; $67d6: $d0

    ld b, $74                                     ; $67d7: $06 $74
    or e                                          ; $67d9: $b3
    adc l                                         ; $67da: $8d
    inc e                                         ; $67db: $1c
    ld l, l                                       ; $67dc: $6d
    ld b, b                                       ; $67dd: $40
    rst $08                                       ; $67de: $cf
    jp $efcb                                      ; $67df: $c3 $cb $ef


    rst $00                                       ; $67e2: $c7
    or e                                          ; $67e3: $b3
    pop de                                        ; $67e4: $d1

jr_06a_67e5:
    ei                                            ; $67e5: $fb
    inc bc                                        ; $67e6: $03
    sbc e                                         ; $67e7: $9b
    daa                                           ; $67e8: $27
    ld a, [hl+]                                   ; $67e9: $2a
    jp nc, Jump_06a_69ee                          ; $67ea: $d2 $ee $69

    ld b, [hl]                                    ; $67ed: $46
    cp c                                          ; $67ee: $b9
    db $fc                                        ; $67ef: $fc
    adc h                                         ; $67f0: $8c
    db $eb                                        ; $67f1: $eb
    ld l, c                                       ; $67f2: $69
    ld h, l                                       ; $67f3: $65
    di                                            ; $67f4: $f3
    sbc b                                         ; $67f5: $98
    and c                                         ; $67f6: $a1
    rst $38                                       ; $67f7: $ff
    ret z                                         ; $67f8: $c8

    ld c, [hl]                                    ; $67f9: $4e
    or a                                          ; $67fa: $b7
    adc l                                         ; $67fb: $8d
    ld a, c                                       ; $67fc: $79
    ld h, b                                       ; $67fd: $60
    cp c                                          ; $67fe: $b9
    ld l, b                                       ; $67ff: $68
    add b                                         ; $6800: $80
    ld b, d                                       ; $6801: $42
    nop                                           ; $6802: $00
    ld [hl], l                                    ; $6803: $75
    db $e3                                        ; $6804: $e3
    sub d                                         ; $6805: $92
    ld b, h                                       ; $6806: $44
    dec a                                         ; $6807: $3d
    jp $1eae                                      ; $6808: $c3 $ae $1e


    db $d3                                        ; $680b: $d3
    sub b                                         ; $680c: $90
    dec de                                        ; $680d: $1b
    ld a, [hl+]                                   ; $680e: $2a
    cp [hl]                                       ; $680f: $be
    cp h                                          ; $6810: $bc
    push de                                       ; $6811: $d5
    ld h, e                                       ; $6812: $63
    jr jr_06a_6866                                ; $6813: $18 $51

    rla                                           ; $6815: $17
    ld c, b                                       ; $6816: $48
    adc a                                         ; $6817: $8f

Jump_06a_6818:
    ld d, c                                       ; $6818: $51
    scf                                           ; $6819: $37
    ld h, [hl]                                    ; $681a: $66
    inc [hl]                                      ; $681b: $34
    and b                                         ; $681c: $a0
    add hl, hl                                    ; $681d: $29
    add a                                         ; $681e: $87
    ld b, $54                                     ; $681f: $06 $54
    ld [hl-], a                                   ; $6821: $32
    ld h, $85                                     ; $6822: $26 $85
    add l                                         ; $6824: $85
    ld h, [hl]                                    ; $6825: $66
    jp c, $c35a                                   ; $6826: $da $5a $c3

    ld d, e                                       ; $6829: $53
    ld a, a                                       ; $682a: $7f
    ld [c], a                                     ; $682b: $e2
    ld l, [hl]                                    ; $682c: $6e
    dec hl                                        ; $682d: $2b
    inc l                                         ; $682e: $2c
    ld [hl], l                                    ; $682f: $75
    sub d                                         ; $6830: $92
    adc l                                         ; $6831: $8d
    or e                                          ; $6832: $b3
    ld h, d                                       ; $6833: $62
    rst $38                                       ; $6834: $ff
    sub c                                         ; $6835: $91
    sbc [hl]                                      ; $6836: $9e
    rla                                           ; $6837: $17
    cp c                                          ; $6838: $b9
    ld e, [hl]                                    ; $6839: $5e
    jr c, jr_06a_6849                             ; $683a: $38 $0d

    add sp, $6f                                   ; $683c: $e8 $6f
    inc hl                                        ; $683e: $23
    ld b, a                                       ; $683f: $47
    dec de                                        ; $6840: $1b
    and a                                         ; $6841: $a7
    sbc e                                         ; $6842: $9b
    rla                                           ; $6843: $17
    rst $20                                       ; $6844: $e7
    ld b, c                                       ; $6845: $41
    inc bc                                        ; $6846: $03
    cp d                                          ; $6847: $ba
    ld a, c                                       ; $6848: $79

jr_06a_6849:
    ld d, $fc                                     ; $6849: $16 $fc
    rst $38                                       ; $684b: $ff
    sbc e                                         ; $684c: $9b
    ret z                                         ; $684d: $c8

    jr nc, jr_06a_6856                            ; $684e: $30 $06

    ld l, l                                       ; $6850: $6d
    ld b, b                                       ; $6851: $40
    scf                                           ; $6852: $37
    db $db                                        ; $6853: $db
    ret z                                         ; $6854: $c8

    pop de                                        ; $6855: $d1

jr_06a_6856:
    ld b, $f4                                     ; $6856: $06 $f4
    inc a                                         ; $6858: $3c
    cp h                                          ; $6859: $bc
    db $fc                                        ; $685a: $fc
    ld a, [hl]                                    ; $685b: $7e
    inc a                                         ; $685c: $3c
    dec de                                        ; $685d: $1b

Jump_06a_685e:
    cp l                                          ; $685e: $bd
    ccf                                           ; $685f: $3f
    dec sp                                        ; $6860: $3b
    add $63                                       ; $6861: $c6 $63
    ld e, b                                       ; $6863: $58
    cp l                                          ; $6864: $bd
    dec d                                         ; $6865: $15

jr_06a_6866:
    inc [hl]                                      ; $6866: $34
    and e                                         ; $6867: $a3
    ei                                            ; $6868: $fb
    rst $30                                       ; $6869: $f7
    cp h                                          ; $686a: $bc
    ld h, l                                       ; $686b: $65
    inc c                                         ; $686c: $0c
    sbc d                                         ; $686d: $9a
    reti                                          ; $686e: $d9


    ld b, h                                       ; $686f: $44
    sbc e                                         ; $6870: $9b
    rst $20                                       ; $6871: $e7
    ld a, c                                       ; $6872: $79
    add c                                         ; $6873: $81
    ld b, l                                       ; $6874: $45
    ld de, $89ff                                  ; $6875: $11 $ff $89
    reti                                          ; $6878: $d9


    xor b                                         ; $6879: $a8
    add hl, de                                    ; $687a: $19
    sbc l                                         ; $687b: $9d
    cp d                                          ; $687c: $ba
    ld hl, sp-$02                                 ; $687d: $f8 $fe
    db $dd                                        ; $687f: $dd
    dec l                                         ; $6880: $2d
    cp [hl]                                       ; $6881: $be

Jump_06a_6882:
    xor c                                         ; $6882: $a9
    rla                                           ; $6883: $17
    or $c2                                        ; $6884: $f6 $c2
    ld l, h                                       ; $6886: $6c
    add sp, -$0a                                  ; $6887: $e8 $f6
    ld l, [hl]                                    ; $6889: $6e
    ld e, [hl]                                    ; $688a: $5e
    sbc h                                         ; $688b: $9c
    rlca                                          ; $688c: $07
    dec c                                         ; $688d: $0d
    add sp, -$1a                                  ; $688e: $e8 $e6
    ld e, c                                       ; $6890: $59
    ldh a, [rIE]                                  ; $6891: $f0 $ff
    ld l, a                                       ; $6893: $6f
    ld [hl+], a                                   ; $6894: $22
    jp $b418                                      ; $6895: $c3 $18 $b4


    ld bc, $6cdd                                  ; $6898: $01 $dd $6c
    inc hl                                        ; $689b: $23
    ld b, a                                       ; $689c: $47
    dec de                                        ; $689d: $1b
    ret nc                                        ; $689e: $d0

    di                                            ; $689f: $f3
    ldh a, [$f2]                                  ; $68a0: $f0 $f2
    ei                                            ; $68a2: $fb
    pop af                                        ; $68a3: $f1
    ld l, h                                       ; $68a4: $6c
    or h                                          ; $68a5: $b4
    adc h                                         ; $68a6: $8c

jr_06a_68a7:
    ld l, $fe                                     ; $68a7: $2e $fe
    adc a                                         ; $68a9: $8f
    ld c, l                                       ; $68aa: $4d
    add hl, sp                                    ; $68ab: $39
    inc d                                         ; $68ac: $14
    sbc d                                         ; $68ad: $9a
    rst $10                                       ; $68ae: $d7
    ld a, [de]                                    ; $68af: $1a
    sbc [hl]                                      ; $68b0: $9e
    ld a, [$7713]                                 ; $68b1: $fa $13 $77
    ld e, e                                       ; $68b4: $5b
    ld h, c                                       ; $68b5: $61
    xor c                                         ; $68b6: $a9
    sub e                                         ; $68b7: $93
    ld l, h                                       ; $68b8: $6c
    sbc h                                         ; $68b9: $9c
    dec d                                         ; $68ba: $15
    ei                                            ; $68bb: $fb
    adc a                                         ; $68bc: $8f
    db $f4                                        ; $68bd: $f4
    cp h                                          ; $68be: $bc
    ret z                                         ; $68bf: $c8

    push af                                       ; $68c0: $f5
    jp nz, Jump_06a_4069                          ; $68c1: $c2 $69 $40

    ld a, a                                       ; $68c4: $7f
    dec de                                        ; $68c5: $1b
    add hl, sp                                    ; $68c6: $39
    ld a, d                                       ; $68c7: $7a
    ld a, a                                       ; $68c8: $7f
    rst $20                                       ; $68c9: $e7
    db $db                                        ; $68ca: $db
    ld c, [hl]                                    ; $68cb: $4e
    xor a                                         ; $68cc: $af
    rst $30                                       ; $68cd: $f7
    push bc                                       ; $68ce: $c5
    jr nc, jr_06a_68a7                            ; $68cf: $30 $d6

    inc [hl]                                      ; $68d1: $34
    ld h, e                                       ; $68d2: $63
    ld [hl], d                                    ; $68d3: $72
    ld e, h                                       ; $68d4: $5c
    reti                                          ; $68d5: $d9


    res 7, b                                      ; $68d6: $cb $b8
    sbc [hl]                                      ; $68d8: $9e
    dec c                                         ; $68d9: $0d
    ld l, h                                       ; $68da: $6c
    ld b, d                                       ; $68db: $42
    jp z, $9f3d                                   ; $68dc: $ca $3d $9f

    dec de                                        ; $68df: $1b
    ld a, d                                       ; $68e0: $7a
    adc c                                         ; $68e1: $89
    add e                                         ; $68e2: $83
    rst $00                                       ; $68e3: $c7
    cp b                                          ; $68e4: $b8
    ld d, c                                       ; $68e5: $51
    ld d, c                                       ; $68e6: $51
    ld d, [hl]                                    ; $68e7: $56
    sub c                                         ; $68e8: $91
    ld [hl], d                                    ; $68e9: $72
    rlca                                          ; $68ea: $07
    add $ff                                       ; $68eb: $c6 $ff
    or c                                          ; $68ed: $b1
    ld bc, $bd5d                                  ; $68ee: $01 $5d $bd
    cp h                                          ; $68f1: $bc
    cp e                                          ; $68f2: $bb
    dec a                                         ; $68f3: $3d
    ld l, d                                       ; $68f4: $6a
    inc bc                                        ; $68f5: $03
    cp d                                          ; $68f6: $ba
    ld h, e                                       ; $68f7: $63
    reti                                          ; $68f8: $d9


    sbc c                                         ; $68f9: $99
    sub e                                         ; $68fa: $93
    or b                                          ; $68fb: $b0
    rla                                           ; $68fc: $17
    scf                                           ; $68fd: $37
    db $f4                                        ; $68fe: $f4
    ld e, h                                       ; $68ff: $5c
    daa                                           ; $6900: $27
    dec a                                         ; $6901: $3d
    dec bc                                        ; $6902: $0b
    jp nz, $1a18                                  ; $6903: $c2 $18 $1a

    sub $36                                       ; $6906: $d6 $36
    ld h, [hl]                                    ; $6908: $66
    ld [hl], h                                    ; $6909: $74
    ld a, [hl+]                                   ; $690a: $2a
    or c                                          ; $690b: $b1
    inc h                                         ; $690c: $24
    rst $00                                       ; $690d: $c7
    cp d                                          ; $690e: $ba
    reti                                          ; $690f: $d9


    ld b, [hl]                                    ; $6910: $46
    ld c, [hl]                                    ; $6911: $4e
    inc bc                                        ; $6912: $03
    ld a, d                                       ; $6913: $7a
    ld e, $5e                                     ; $6914: $1e $5e
    ld a, [hl]                                    ; $6916: $7e
    ccf                                           ; $6917: $3f
    sbc [hl]                                      ; $6918: $9e
    adc l                                         ; $6919: $8d

jr_06a_691a:
    ld d, $3d                                     ; $691a: $16 $3d
    rst $00                                       ; $691c: $c7
    sbc h                                         ; $691d: $9c
    ld h, b                                       ; $691e: $60
    ld l, d                                       ; $691f: $6a
    rst $08                                       ; $6920: $cf
    and e                                         ; $6921: $a3
    inc e                                         ; $6922: $1c
    dec e                                         ; $6923: $1d
    ld l, l                                       ; $6924: $6d
    ld b, b                                       ; $6925: $40
    di                                            ; $6926: $f3
    add h                                         ; $6927: $84
    pop de                                        ; $6928: $d1
    ei                                            ; $6929: $fb
    cp [hl]                                       ; $692a: $be
    and a                                         ; $692b: $a7
    cp a                                          ; $692c: $bf
    adc l                                         ; $692d: $8d
    sbc h                                         ; $692e: $9c
    add [hl]                                      ; $692f: $86
    jp hl                                         ; $6930: $e9


    ld d, $9a                                     ; $6931: $16 $9a
    db $ed                                        ; $6933: $ed
    ld l, h                                       ; $6934: $6c
    ld [c], a                                     ; $6935: $e2
    db $e4                                        ; $6936: $e4
    inc c                                         ; $6937: $0c
    db $db                                        ; $6938: $db
    ldh a, [rSB]                                  ; $6939: $f0 $01
    add hl, bc                                    ; $693b: $09
    pop af                                        ; $693c: $f1
    sbc a                                         ; $693d: $9f
    sbc b                                         ; $693e: $98
    adc l                                         ; $693f: $8d
    sbc d                                         ; $6940: $9a
    pop de                                        ; $6941: $d1
    di                                            ; $6942: $f3
    ld l, l                                       ; $6943: $6d
    and a                                         ; $6944: $a7
    rst $10                                       ; $6945: $d7
    ei                                            ; $6946: $fb
    ld h, d                                       ; $6947: $62
    jr jr_06a_695d                                ; $6948: $18 $13

    sub l                                         ; $694a: $95

Jump_06a_694b:
    call $fd8e                                    ; $694b: $cd $8e $fd
    xor c                                         ; $694e: $a9
    inc l                                         ; $694f: $2c
    ld h, h                                       ; $6950: $64
    or a                                          ; $6951: $b7
    ld c, h                                       ; $6952: $4c
    ld e, d                                       ; $6953: $5a
    db $10                                        ; $6954: $10
    dec l                                         ; $6955: $2d
    xor e                                         ; $6956: $ab
    xor b                                         ; $6957: $a8
    inc de                                        ; $6958: $13
    inc bc                                        ; $6959: $03
    ld a, [$4d6c]                                 ; $695a: $fa $6c $4d

jr_06a_695d:
    cp e                                          ; $695d: $bb
    ld a, d                                       ; $695e: $7a
    dec hl                                        ; $695f: $2b
    ld e, b                                       ; $6960: $58
    ld d, c                                       ; $6961: $51
    ld l, b                                       ; $6962: $68
    halt                                          ; $6963: $76
    add c                                         ; $6964: $81
    or [hl]                                       ; $6965: $b6
    and c                                         ; $6966: $a1
    adc c                                         ; $6967: $89
    inc [hl]                                      ; $6968: $34
    ld [hl], $4f                                  ; $6969: $36 $4f
    jr jr_06a_691a                                ; $696b: $18 $ad

    and d                                         ; $696d: $a2
    adc d                                         ; $696e: $8a
    sbc b                                         ; $696f: $98
    sbc a                                         ; $6970: $9f
    ld b, c                                       ; $6971: $41
    ld d, $b2                                     ; $6972: $16 $b2
    ccf                                           ; $6974: $3f
    sub l                                         ; $6975: $95
    and d                                         ; $6976: $a2
    ld b, d                                       ; $6977: $42
    di                                            ; $6978: $f3
    ld e, d                                       ; $6979: $5a
    sbc c                                         ; $697a: $99
    ld e, $63                                     ; $697b: $1e $63
    jp Jump_06a_7f53                              ; $697d: $c3 $53 $7f


    ld [c], a                                     ; $6980: $e2
    ld l, [hl]                                    ; $6981: $6e
    dec hl                                        ; $6982: $2b
    inc l                                         ; $6983: $2c
    ld [hl], l                                    ; $6984: $75
    sub d                                         ; $6985: $92
    adc l                                         ; $6986: $8d
    or e                                          ; $6987: $b3
    ld h, d                                       ; $6988: $62
    rst $38                                       ; $6989: $ff
    sub c                                         ; $698a: $91
    sbc [hl]                                      ; $698b: $9e
    rla                                           ; $698c: $17
    cp c                                          ; $698d: $b9
    ld e, [hl]                                    ; $698e: $5e
    jr c, jr_06a_699e                             ; $698f: $38 $0d

    add sp, $6f                                   ; $6991: $e8 $6f
    inc hl                                        ; $6993: $23
    ld b, a                                       ; $6994: $47
    dec de                                        ; $6995: $1b
    and a                                         ; $6996: $a7
    sbc e                                         ; $6997: $9b
    rla                                           ; $6998: $17
    rst $20                                       ; $6999: $e7
    ld b, c                                       ; $699a: $41
    inc bc                                        ; $699b: $03
    cp d                                          ; $699c: $ba
    ld a, c                                       ; $699d: $79

jr_06a_699e:
    ld d, $fc                                     ; $699e: $16 $fc
    rst $38                                       ; $69a0: $ff
    sbc e                                         ; $69a1: $9b
    ret z                                         ; $69a2: $c8

    jr nc, jr_06a_69ab                            ; $69a3: $30 $06

    ld l, l                                       ; $69a5: $6d
    ld b, b                                       ; $69a6: $40
    scf                                           ; $69a7: $37
    db $db                                        ; $69a8: $db
    ret z                                         ; $69a9: $c8

    pop de                                        ; $69aa: $d1

jr_06a_69ab:
    ld b, $f4                                     ; $69ab: $06 $f4
    inc a                                         ; $69ad: $3c
    cp h                                          ; $69ae: $bc
    db $fc                                        ; $69af: $fc

jr_06a_69b0:
    ld a, [hl]                                    ; $69b0: $7e
    inc a                                         ; $69b1: $3c
    dec de                                        ; $69b2: $1b
    cp l                                          ; $69b3: $bd
    ccf                                           ; $69b4: $3f
    ld [c], a                                     ; $69b5: $e2
    jp hl                                         ; $69b6: $e9


    ld sp, $c576                                  ; $69b7: $31 $76 $c5
    and a                                         ; $69ba: $a7
    push af                                       ; $69bb: $f5
    rrca                                          ; $69bc: $0f
    or a                                          ; $69bd: $b7
    or l                                          ; $69be: $b5
    ld b, d                                       ; $69bf: $42
    inc sp                                        ; $69c0: $33
    rst $10                                       ; $69c1: $d7
    dec bc                                        ; $69c2: $0b
    and a                                         ; $69c3: $a7
    ld bc, $e8bd                                  ; $69c4: $01 $bd $e8
    push bc                                       ; $69c7: $c5
    db $f4                                        ; $69c8: $f4
    pop hl                                        ; $69c9: $e1
    jp c, Jump_000_36cd                           ; $69ca: $da $cd $36

    xor d                                         ; $69cd: $aa
    and d                                         ; $69ce: $a2
    ld l, [hl]                                    ; $69cf: $6e
    and c                                         ; $69d0: $a1
    reti                                          ; $69d1: $d9


    adc $bb                                       ; $69d2: $ce $bb
    ld d, a                                       ; $69d4: $57
    ldh a, [$d5]                                  ; $69d5: $f0 $d5
    and a                                         ; $69d7: $a7
    or c                                          ; $69d8: $b1
    xor h                                         ; $69d9: $ac
    cp a                                          ; $69da: $bf
    jr nc, jr_06a_69b0                            ; $69db: $30 $d3

    dec sp                                        ; $69dd: $3b
    ld h, $d9                                     ; $69de: $26 $d9
    jr c, jr_06a_6a0d                             ; $69e0: $38 $2b

    inc d                                         ; $69e2: $14
    call $a076                                    ; $69e3: $cd $76 $a0
    ld [hl], $e5                                  ; $69e6: $36 $e5
    ld l, b                                       ; $69e8: $68
    ld a, c                                       ; $69e9: $79
    or h                                          ; $69ea: $b4
    xor b                                         ; $69eb: $a8
    ld l, a                                       ; $69ec: $6f
    di                                            ; $69ed: $f3

Jump_06a_69ee:
    dec sp                                        ; $69ee: $3b
    ld h, e                                       ; $69ef: $63
    and a                                         ; $69f0: $a7
    add hl, bc                                    ; $69f1: $09
    add d                                         ; $69f2: $82
    ld a, l                                       ; $69f3: $7d
    add e                                         ; $69f4: $83
    ld [$a034], a                                 ; $69f5: $ea $34 $a0
    ld e, e                                       ; $69f8: $5b
    ld h, $2d                                     ; $69f9: $26 $2d
    adc b                                         ; $69fb: $88
    sub [hl]                                      ; $69fc: $96
    push af                                       ; $69fd: $f5
    cp $00                                        ; $69fe: $fe $00
    ld [c], a                                     ; $6a00: $e2
    rst $38                                       ; $6a01: $ff
    add $7f                                       ; $6a02: $c6 $7f
    inc hl                                        ; $6a04: $23
    dec a                                         ; $6a05: $3d

Call_06a_6a06:
    db $e3                                        ; $6a06: $e3
    jp z, Jump_000_2dd2                           ; $6a07: $ca $d2 $2d

    cp h                                          ; $6a0a: $bc
    ccf                                           ; $6a0b: $3f
    ld b, a                                       ; $6a0c: $47

jr_06a_6a0d:
    sbc l                                         ; $6a0d: $9d
    ld a, l                                       ; $6a0e: $7d
    ld l, h                                       ; $6a0f: $6c
    ccf                                           ; $6a10: $3f
    dec de                                        ; $6a11: $1b
    rst $08                                       ; $6a12: $cf
    ld a, $b6                                     ; $6a13: $3e $b6
    rra                                           ; $6a15: $1f
    adc c                                         ; $6a16: $89
    or b                                          ; $6a17: $b0
    nop                                           ; $6a18: $00
    dec a                                         ; $6a19: $3d
    db $ed                                        ; $6a1a: $ed
    inc bc                                        ; $6a1b: $03
    adc c                                         ; $6a1c: $89
    or b                                          ; $6a1d: $b0
    nop                                           ; $6a1e: $00
    db $ed                                        ; $6a1f: $ed
    reti                                          ; $6a20: $d9


    rst $00                                       ; $6a21: $c7
    ld [hl], $f1                                  ; $6a22: $36 $f1
    jp nc, $1f0d                                  ; $6a24: $d2 $0d $1f

    rst $20                                       ; $6a27: $e7
    inc sp                                        ; $6a28: $33

jr_06a_6a29:
    ld h, $a9                                     ; $6a29: $26 $a9
    dec a                                         ; $6a2b: $3d
    ei                                            ; $6a2c: $fb
    ret c                                         ; $6a2d: $d8

    ld h, $5e                                     ; $6a2e: $26 $5e
    cp d                                          ; $6a30: $ba
    pop hl                                        ; $6a31: $e1
    inc bc                                        ; $6a32: $03
    dec sp                                        ; $6a33: $3b
    ret nc                                        ; $6a34: $d0

    jr z, @-$62                                   ; $6a35: $28 $9c

    cp $b3                                        ; $6a37: $fe $b3
    ldh [rIE], a                                  ; $6a39: $e0 $ff
    rst $18                                       ; $6a3b: $df
    ld b, h                                       ; $6a3c: $44
    ld l, d                                       ; $6a3d: $6a
    scf                                           ; $6a3e: $37
    db $db                                        ; $6a3f: $db
    ret z                                         ; $6a40: $c8

    pop de                                        ; $6a41: $d1
    ld b, $f4                                     ; $6a42: $06 $f4
    inc a                                         ; $6a44: $3c
    cp h                                          ; $6a45: $bc
    db $fc                                        ; $6a46: $fc
    ld a, [hl]                                    ; $6a47: $7e
    inc a                                         ; $6a48: $3c
    dec de                                        ; $6a49: $1b
    dec l                                         ; $6a4a: $2d
    ld a, d                                       ; $6a4b: $7a
    adc [hl]                                      ; $6a4c: $8e
    add hl, sp                                    ; $6a4d: $39
    pop bc                                        ; $6a4e: $c1
    call nc, Call_06a_479e                        ; $6a4f: $d4 $9e $47
    add hl, sp                                    ; $6a52: $39
    ld c, d                                       ; $6a53: $4a
    dec d                                         ; $6a54: $15
    dec [hl]                                      ; $6a55: $35
    ld h, b                                       ; $6a56: $60
    push af                                       ; $6a57: $f5
    xor b                                         ; $6a58: $a8
    db $fd                                        ; $6a59: $fd
    ld b, a                                       ; $6a5a: $47
    ld h, d                                       ; $6a5b: $62
    dec a                                         ; $6a5c: $3d
    db $ed                                        ; $6a5d: $ed
    cp $00                                        ; $6a5e: $fe $00
    sub a                                         ; $6a60: $97
    jr c, jr_06a_6a29                             ; $6a61: $38 $c6

    jr nc, @+$57                                  ; $6a63: $30 $55

    sub h                                         ; $6a65: $94
    ccf                                           ; $6a66: $3f
    dec a                                         ; $6a67: $3d
    inc [hl]                                      ; $6a68: $34
    ret z                                         ; $6a69: $c8

    adc [hl]                                      ; $6a6a: $8e
    ld [hl], $c3                                  ; $6a6b: $36 $c3
    ld l, c                                       ; $6a6d: $69
    cp l                                          ; $6a6e: $bd
    ld a, b                                       ; $6a6f: $78
    ld sp, hl                                     ; $6a70: $f9
    xor l                                         ; $6a71: $ad
    rra                                           ; $6a72: $1f
    dec d                                         ; $6a73: $15
    ld [hl], l                                    ; $6a74: $75
    or h                                          ; $6a75: $b4
    sbc e                                         ; $6a76: $9b
    ld l, l                                       ; $6a77: $6d
    db $e4                                        ; $6a78: $e4
    ld l, b                                       ; $6a79: $68
    inc bc                                        ; $6a7a: $03
    ld a, d                                       ; $6a7b: $7a
    ld e, $5e                                     ; $6a7c: $1e $5e
    ld a, [hl]                                    ; $6a7e: $7e
    ccf                                           ; $6a7f: $3f
    sbc [hl]                                      ; $6a80: $9e
    adc l                                         ; $6a81: $8d
    ld d, $3d                                     ; $6a82: $16 $3d
    rst $00                                       ; $6a84: $c7
    sbc h                                         ; $6a85: $9c
    ld h, b                                       ; $6a86: $60
    ld l, d                                       ; $6a87: $6a
    rst $08                                       ; $6a88: $cf
    and e                                         ; $6a89: $a3
    inc e                                         ; $6a8a: $1c
    dec e                                         ; $6a8b: $1d
    xor l                                         ; $6a8c: $ad
    ccf                                           ; $6a8d: $3f
    ld bc, $0ab2                                  ; $6a8e: $01 $b2 $0a
    xor e                                         ; $6a91: $ab
    sub e                                         ; $6a92: $93
    ld l, h                                       ; $6a93: $6c
    jp c, $0318                                   ; $6a94: $da $18 $03

    ld c, d                                       ; $6a97: $4a
    ld bc, $f02e                                  ; $6a98: $01 $2e $f0
    cp $00                                        ; $6a9b: $fe $00
    rst $20                                       ; $6a9d: $e7
    dec sp                                        ; $6a9e: $3b
    ld e, d                                       ; $6a9f: $5a
    ld h, b                                       ; $6aa0: $60
    ld b, a                                       ; $6aa1: $47
    cp e                                          ; $6aa2: $bb
    reti                                          ; $6aa3: $d9


    ld b, [hl]                                    ; $6aa4: $46
    adc [hl]                                      ; $6aa5: $8e
    ld [hl], $a0                                  ; $6aa6: $36 $a0
    rst $20                                       ; $6aa8: $e7
    pop hl                                        ; $6aa9: $e1
    push hl                                       ; $6aaa: $e5
    rst $30                                       ; $6aab: $f7
    db $e3                                        ; $6aac: $e3
    reti                                          ; $6aad: $d9


    ld l, b                                       ; $6aae: $68
    pop de                                        ; $6aaf: $d1
    ld [hl], e                                    ; $6ab0: $73
    call z, $a609                                 ; $6ab1: $cc $09 $a6
    or $3c                                        ; $6ab4: $f6 $3c
    jp z, $d1d1                                   ; $6ab6: $ca $d1 $d1

    cp $23                                        ; $6ab9: $fe $23
    ld e, l                                       ; $6abb: $5d
    call nc, $dbbb                                ; $6abc: $d4 $bb $db
    or l                                          ; $6abf: $b5
    cp a                                          ; $6ac0: $bf
    adc l                                         ; $6ac1: $8d
    inc e                                         ; $6ac2: $1c
    db $ed                                        ; $6ac3: $ed
    ccf                                           ; $6ac4: $3f
    jp nc, Jump_06a_6d45                          ; $6ac5: $d2 $45 $6d

    jp z, $49e1                                   ; $6ac8: $ca $e1 $49

    jp z, $8a8d                                   ; $6acb: $ca $8d $8a

    ld a, [hl+]                                   ; $6ace: $2a
    ld a, [hl-]                                   ; $6acf: $3a
    ld e, d                                       ; $6ad0: $5a
    and a                                         ; $6ad1: $a7
    inc [hl]                                      ; $6ad2: $34
    ld l, b                                       ; $6ad3: $68
    rst $38                                       ; $6ad4: $ff
    sub c                                         ; $6ad5: $91
    ld d, l                                       ; $6ad6: $55
    rst $30                                       ; $6ad7: $f7
    ld b, e                                       ; $6ad8: $43
    ld [hl], l                                    ; $6ad9: $75
    ld a, [de]                                    ; $6ada: $1a
    sbc l                                         ; $6adb: $9d
    ld h, h                                       ; $6adc: $64
    rst $38                                       ; $6add: $ff
    sub c                                         ; $6ade: $91
    sbc [hl]                                      ; $6adf: $9e
    rla                                           ; $6ae0: $17
    cp c                                          ; $6ae1: $b9
    ld e, [hl]                                    ; $6ae2: $5e
    jr c, jr_06a_6af2                             ; $6ae3: $38 $0d

    add sp, $6f                                   ; $6ae5: $e8 $6f
    inc hl                                        ; $6ae7: $23
    ld b, a                                       ; $6ae8: $47
    rst $28                                       ; $6ae9: $ef
    rrca                                          ; $6aea: $0f
    db $db                                        ; $6aeb: $db
    db $dd                                        ; $6aec: $dd
    ld [$bc35], a                                 ; $6aed: $ea $35 $bc
    ld e, l                                       ; $6af0: $5d
    or b                                          ; $6af1: $b0

jr_06a_6af2:
    and [hl]                                      ; $6af2: $a6
    inc e                                         ; $6af3: $1c
    ld a, [hl-]                                   ; $6af4: $3a
    jp c, $3af4                                   ; $6af5: $da $f4 $3a

    adc c                                         ; $6af8: $89
    pop de                                        ; $6af9: $d1
    ld e, [hl]                                    ; $6afa: $5e
    add hl, bc                                    ; $6afb: $09
    ld [$9d82], a                                 ; $6afc: $ea $82 $9d
    ld e, l                                       ; $6aff: $5d
    ld hl, $c806                                  ; $6b00: $21 $06 $c8
    ld l, [hl]                                    ; $6b03: $6e
    or [hl]                                       ; $6b04: $b6
    sub c                                         ; $6b05: $91
    and e                                         ; $6b06: $a3
    dec c                                         ; $6b07: $0d
    add sp, $79                                   ; $6b08: $e8 $79
    ld a, b                                       ; $6b0a: $78
    ld sp, hl                                     ; $6b0b: $f9
    db $fd                                        ; $6b0c: $fd
    ld a, b                                       ; $6b0d: $78
    ld [hl], $5a                                  ; $6b0e: $36 $5a
    db $f4                                        ; $6b10: $f4
    inc e                                         ; $6b11: $1c

jr_06a_6b12:
    ld [hl], e                                    ; $6b12: $73
    add d                                         ; $6b13: $82
    xor c                                         ; $6b14: $a9
    dec a                                         ; $6b15: $3d
    adc a                                         ; $6b16: $8f
    ld [hl], d                                    ; $6b17: $72
    ld [hl], h                                    ; $6b18: $74
    or h                                          ; $6b19: $b4
    sub b                                         ; $6b1a: $90
    push af                                       ; $6b1b: $f5
    ld sp, hl                                     ; $6b1c: $f9
    ld c, a                                       ; $6b1d: $4f
    add [hl]                                      ; $6b1e: $86
    ld [hl], $a0                                  ; $6b1f: $36 $a0
    dec sp                                        ; $6b21: $3b
    add sp, -$71                                  ; $6b22: $e8 $8f
    ld [hl], $a0                                  ; $6b24: $36 $a0
    sbc e                                         ; $6b26: $9b
    sub e                                         ; $6b27: $93
    di                                            ; $6b28: $f3
    rst $08                                       ; $6b29: $cf
    jp nz, $fb8c                                  ; $6b2a: $c2 $8c $fb

    inc bc                                        ; $6b2d: $03
    ld [c], a                                     ; $6b2e: $e2
    jp c, $a47f                                   ; $6b2f: $da $7f $a4

    rst $20                                       ; $6b32: $e7
    ld b, l                                       ; $6b33: $45
    xor [hl]                                      ; $6b34: $ae
    ccf                                           ; $6b35: $3f
    jr jr_06a_6b12                                ; $6b36: $18 $da

    add b                                         ; $6b38: $80
    ld l, [hl]                                    ; $6b39: $6e
    or [hl]                                       ; $6b3a: $b6
    sub c                                         ; $6b3b: $91
    and e                                         ; $6b3c: $a3
    dec c                                         ; $6b3d: $0d
    add sp, $79                                   ; $6b3e: $e8 $79
    ld a, b                                       ; $6b40: $78
    ld sp, hl                                     ; $6b41: $f9
    db $fd                                        ; $6b42: $fd
    ld a, b                                       ; $6b43: $78
    ld [hl], $5a                                  ; $6b44: $36 $5a
    db $f4                                        ; $6b46: $f4
    inc e                                         ; $6b47: $1c
    ld [hl], e                                    ; $6b48: $73
    add d                                         ; $6b49: $82
    xor c                                         ; $6b4a: $a9
    dec a                                         ; $6b4b: $3d
    adc a                                         ; $6b4c: $8f
    ld [hl], d                                    ; $6b4d: $72
    ld [hl], h                                    ; $6b4e: $74
    or h                                          ; $6b4f: $b4
    sub d                                         ; $6b50: $92
    ld c, a                                       ; $6b51: $4f
    db $eb                                        ; $6b52: $eb
    ld c, a                                       ; $6b53: $4f
    add b                                         ; $6b54: $80
    adc l                                         ; $6b55: $8d
    ld d, d                                       ; $6b56: $52
    ld l, e                                       ; $6b57: $6b
    ld c, b                                       ; $6b58: $48
    add hl, sp                                    ; $6b59: $39
    jr @+$66                                      ; $6b5a: $18 $64

    ld a, a                                       ; $6b5c: $7f
    dec de                                        ; $6b5d: $1b
    add hl, sp                                    ; $6b5e: $39
    jp c, Jump_06a_694b                           ; $6b5f: $da $4b $69

    and e                                         ; $6b62: $a3
    dec e                                         ; $6b63: $1d
    rst $10                                       ; $6b64: $d7
    dec bc                                        ; $6b65: $0b
    ld [c], a                                     ; $6b66: $e2
    ccf                                           ; $6b67: $3f
    jp nc, $bd45                                  ; $6b68: $d2 $45 $bd

    rst $28                                       ; $6b6b: $ef
    ld a, e                                       ; $6b6c: $7b
    sbc h                                         ; $6b6d: $9c
    xor b                                         ; $6b6e: $a8
    cp $58                                        ; $6b6f: $fe $58
    ld d, a                                       ; $6b71: $57
    ret c                                         ; $6b72: $d8

    dec b                                         ; $6b73: $05
    dec d                                         ; $6b74: $15
    sub l                                         ; $6b75: $95
    jp nc, Jump_06a_7a33                          ; $6b76: $d2 $33 $7a

    ld a, a                                       ; $6b79: $7f
    add hl, bc                                    ; $6b7a: $09
    add d                                         ; $6b7b: $82
    sbc a                                         ; $6b7c: $9f
    ld h, [hl]                                    ; $6b7d: $66
    ret z                                         ; $6b7e: $c8

    ld e, $7b                                     ; $6b7f: $1e $7b
    call z, $fdb1                                 ; $6b81: $cc $b1 $fd
    ld l, l                                       ; $6b84: $6d
    db $e4                                        ; $6b85: $e4
    ld l, b                                       ; $6b86: $68
    inc bc                                        ; $6b87: $03
    ld a, d                                       ; $6b88: $7a
    ld e, $5e                                     ; $6b89: $1e $5e
    ld a, [hl]                                    ; $6b8b: $7e
    ccf                                           ; $6b8c: $3f
    sbc [hl]                                      ; $6b8d: $9e
    adc l                                         ; $6b8e: $8d
    ld d, $3d                                     ; $6b8f: $16 $3d
    rst $00                                       ; $6b91: $c7
    sbc h                                         ; $6b92: $9c
    ld h, b                                       ; $6b93: $60
    ld l, d                                       ; $6b94: $6a
    rst $08                                       ; $6b95: $cf
    and e                                         ; $6b96: $a3
    inc e                                         ; $6b97: $1c
    dec e                                         ; $6b98: $1d
    dec d                                         ; $6b99: $15
    dec [hl]                                      ; $6b9a: $35
    cp h                                          ; $6b9b: $bc
    push de                                       ; $6b9c: $d5
    dec bc                                        ; $6b9d: $0b
    cpl                                           ; $6b9e: $2f
    adc h                                         ; $6b9f: $8c
    ld d, $b2                                     ; $6ba0: $16 $b2
    rst $00                                       ; $6ba2: $c7
    ld e, $db                                     ; $6ba3: $1e $db
    ret z                                         ; $6ba5: $c8

    rst $20                                       ; $6ba6: $e7
    ld b, e                                       ; $6ba7: $43
    rst $28                                       ; $6ba8: $ef
    rrca                                          ; $6ba9: $0f
    add hl, bc                                    ; $6baa: $09
    add d                                         ; $6bab: $82
    sbc a                                         ; $6bac: $9f
    ld h, [hl]                                    ; $6bad: $66
    ret z                                         ; $6bae: $c8

    sbc [hl]                                      ; $6baf: $9e
    ld a, b                                       ; $6bb0: $78
    ld c, h                                       ; $6bb1: $4c
    rst $38                                       ; $6bb2: $ff
    sub c                                         ; $6bb3: $91
    sbc [hl]                                      ; $6bb4: $9e
    rla                                           ; $6bb5: $17
    cp c                                          ; $6bb6: $b9
    cp $60                                        ; $6bb7: $fe $60
    ld l, b                                       ; $6bb9: $68
    inc bc                                        ; $6bba: $03
    cp d                                          ; $6bbb: $ba
    reti                                          ; $6bbc: $d9


    ld b, [hl]                                    ; $6bbd: $46
    adc [hl]                                      ; $6bbe: $8e
    ld [hl], $a0                                  ; $6bbf: $36 $a0
    rst $20                                       ; $6bc1: $e7
    pop hl                                        ; $6bc2: $e1
    push hl                                       ; $6bc3: $e5
    rst $30                                       ; $6bc4: $f7
    db $e3                                        ; $6bc5: $e3
    reti                                          ; $6bc6: $d9


    ld l, b                                       ; $6bc7: $68
    pop de                                        ; $6bc8: $d1
    ld [hl], e                                    ; $6bc9: $73
    call z, $a609                                 ; $6bca: $cc $09 $a6
    or $3c                                        ; $6bcd: $f6 $3c
    jp z, $d1d1                                   ; $6bcf: $ca $d1 $d1

    cp e                                          ; $6bd2: $bb
    ld [c], a                                     ; $6bd3: $e2
    sub l                                         ; $6bd4: $95
    ld a, h                                       ; $6bd5: $7c
    ld h, e                                       ; $6bd6: $63
    push af                                       ; $6bd7: $f5
    ld l, c                                       ; $6bd8: $69
    add hl, de                                    ; $6bd9: $19
    ld d, l                                       ; $6bda: $55
    pop hl                                        ; $6bdb: $e1
    ld [hl], h                                    ; $6bdc: $74
    adc a                                         ; $6bdd: $8f
    adc h                                         ; $6bde: $8c
    and a                                         ; $6bdf: $a7
    and d                                         ; $6be0: $a2
    ld [hl], d                                    ; $6be1: $72
    ld c, c                                       ; $6be2: $49
    dec sp                                        ; $6be3: $3b
    ld c, c                                       ; $6be4: $49
    xor l                                         ; $6be5: $ad
    ld a, [bc]                                    ; $6be6: $0a
    and a                                         ; $6be7: $a7
    or $c2                                        ; $6be8: $f6 $c2
    ld l, [hl]                                    ; $6bea: $6e
    cp a                                          ; $6beb: $bf
    ld e, e                                       ; $6bec: $5b
    xor b                                         ; $6bed: $a8
    ld b, l                                       ; $6bee: $45
    sbc l                                         ; $6bef: $9d
    and h                                         ; $6bf0: $a4
    sub $1f                                       ; $6bf1: $d6 $1f
    rst $30                                       ; $6bf3: $f7
    ld d, e                                       ; $6bf4: $53
    db $eb                                        ; $6bf5: $eb
    ld c, a                                       ; $6bf6: $4f
    add b                                         ; $6bf7: $80
    inc l                                         ; $6bf8: $2c
    di                                            ; $6bf9: $f3
    cp d                                          ; $6bfa: $ba

jr_06a_6bfb:
    ld a, [hl+]                                   ; $6bfb: $2a
    xor h                                         ; $6bfc: $ac
    ld a, $ec                                     ; $6bfd: $3e $ec
    and l                                         ; $6bff: $a5
    ld b, a                                       ; $6c00: $47
    xor c                                         ; $6c01: $a9
    rst $30                                       ; $6c02: $f7
    rlca                                          ; $6c03: $07
    ld e, e                                       ; $6c04: $5b
    sub $ca                                       ; $6c05: $d6 $ca
    dec h                                         ; $6c07: $25
    db $ed                                        ; $6c08: $ed
    and d                                         ; $6c09: $a2
    halt                                          ; $6c0a: $76
    or e                                          ; $6c0b: $b3
    adc l                                         ; $6c0c: $8d
    inc e                                         ; $6c0d: $1c
    ld l, l                                       ; $6c0e: $6d
    ld b, b                                       ; $6c0f: $40
    rst $08                                       ; $6c10: $cf
    jp $efcb                                      ; $6c11: $c3 $cb $ef


    rst $00                                       ; $6c14: $c7
    or e                                          ; $6c15: $b3
    pop de                                        ; $6c16: $d1
    and d                                         ; $6c17: $a2
    rst $20                                       ; $6c18: $e7
    sbc b                                         ; $6c19: $98
    inc de                                        ; $6c1a: $13
    ld c, h                                       ; $6c1b: $4c
    db $ed                                        ; $6c1c: $ed
    ld a, c                                       ; $6c1d: $79
    sub h                                         ; $6c1e: $94
    and e                                         ; $6c1f: $a3
    and e                                         ; $6c20: $a3
    add l                                         ; $6c21: $85
    cp $13                                        ; $6c22: $fe $13
    jp $a30b                                      ; $6c24: $c3 $0b $a3


    add l                                         ; $6c27: $85
    db $ec                                        ; $6c28: $ec
    sub [hl]                                      ; $6c29: $96
    ld c, c                                       ; $6c2a: $49
    dec bc                                        ; $6c2b: $0b
    and d                                         ; $6c2c: $a2
    ld h, l                                       ; $6c2d: $65
    cp l                                          ; $6c2e: $bd
    sbc e                                         ; $6c2f: $9b
    ld l, b                                       ; $6c30: $68
    di                                            ; $6c31: $f3
    dec sp                                        ; $6c32: $3b
    ld h, e                                       ; $6c33: $63
    rst $38                                       ; $6c34: $ff
    sub c                                         ; $6c35: $91
    ld h, l                                       ; $6c36: $65
    ld b, [hl]                                    ; $6c37: $46
    ld e, h                                       ; $6c38: $5c
    cpl                                           ; $6c39: $2f
    sbc h                                         ; $6c3a: $9c
    and d                                         ; $6c3b: $a2
    sbc c                                         ; $6c3c: $99
    rrc d                                         ; $6c3d: $cb $0a
    cp e                                          ; $6c3f: $bb
    ld a, [de]                                    ; $6c40: $1a
    and b                                         ; $6c41: $a0
    cp a                                          ; $6c42: $bf
    di                                            ; $6c43: $f3
    jr jr_06a_6bfb                                ; $6c44: $18 $b5

    ld e, h                                       ; $6c46: $5c
    jp nc, $ea2e                                  ; $6c47: $d2 $2e $ea

    db $fd                                        ; $6c4a: $fd
    ld bc, $503b                                  ; $6c4b: $01 $3b $50
    rst $28                                       ; $6c4e: $ef
    db $db                                        ; $6c4f: $db
    dec b                                         ; $6c50: $05
    add e                                         ; $6c51: $83
    ld [hl], $db                                  ; $6c52: $36 $db
    db $fc                                        ; $6c54: $fc
    call nc, Call_000_34fa                        ; $6c55: $d4 $fa $34
    ld [hl], $c3                                  ; $6c58: $36 $c3
    and b                                         ; $6c5a: $a0
    sub l                                         ; $6c5b: $95
    ld a, h                                       ; $6c5c: $7c
    jp c, Jump_000_36cd                           ; $6c5d: $da $cd $36

    ld [hl], d                                    ; $6c60: $72
    or h                                          ; $6c61: $b4
    ld bc, $0f3d                                  ; $6c62: $01 $3d $0f
    cpl                                           ; $6c65: $2f
    cp a                                          ; $6c66: $bf
    rra                                           ; $6c67: $1f
    rst $08                                       ; $6c68: $cf
    ld b, [hl]                                    ; $6c69: $46
    adc e                                         ; $6c6a: $8b
    sbc [hl]                                      ; $6c6b: $9e
    ld h, e                                       ; $6c6c: $63
    ld c, [hl]                                    ; $6c6d: $4e
    jr nc, @-$49                                  ; $6c6e: $30 $b5

    rst $20                                       ; $6c70: $e7
    ld d, c                                       ; $6c71: $51
    adc [hl]                                      ; $6c72: $8e
    adc [hl]                                      ; $6c73: $8e
    adc d                                         ; $6c74: $8a
    ld [$804f], a                                 ; $6c75: $ea $4f $80
    sub $29                                       ; $6c78: $d6 $29
    xor l                                         ; $6c7a: $ad
    sub d                                         ; $6c7b: $92
    ld c, a                                       ; $6c7c: $4f
    ei                                            ; $6c7d: $fb
    adc a                                         ; $6c7e: $8f
    db $f4                                        ; $6c7f: $f4
    cp h                                          ; $6c80: $bc
    ret z                                         ; $6c81: $c8

    push af                                       ; $6c82: $f5
    rlca                                          ; $6c83: $07
    ld b, e                                       ; $6c84: $43
    rst $28                                       ; $6c85: $ef
    rrca                                          ; $6c86: $0f
    dec sp                                        ; $6c87: $3b
    ld h, b                                       ; $6c88: $60
    ld [hl], l                                    ; $6c89: $75
    or d                                          ; $6c8a: $b2
    ld e, $a7                                     ; $6c8b: $1e $a7
    ld a, c                                       ; $6c8d: $79
    ld a, [de]                                    ; $6c8e: $1a
    add l                                         ; $6c8f: $85
    db $d3                                        ; $6c90: $d3
    ld [hl], l                                    ; $6c91: $75
    sub l                                         ; $6c92: $95
    xor $e5                                       ; $6c93: $ee $e5
    xor c                                         ; $6c95: $a9
    and h                                         ; $6c96: $a4
    cp e                                          ; $6c97: $bb
    cp e                                          ; $6c98: $bb
    ld a, c                                       ; $6c99: $79
    inc h                                         ; $6c9a: $24
    ld a, [hl]                                    ; $6c9b: $7e
    cp h                                          ; $6c9c: $bc
    ld a, [$5563]                                 ; $6c9d: $fa $63 $55
    ld e, b                                       ; $6ca0: $58
    sbc l                                         ; $6ca1: $9d
    xor h                                         ; $6ca2: $ac
    rrca                                          ; $6ca3: $0f
    push hl                                       ; $6ca4: $e5
    ld b, [hl]                                    ; $6ca5: $46
    sbc a                                         ; $6ca6: $9f
    cp $ba                                        ; $6ca7: $fe $ba
    and a                                         ; $6ca9: $a7
    rst $30                                       ; $6caa: $f7
    rlca                                          ; $6cab: $07
    db $db                                        ; $6cac: $db
    or l                                          ; $6cad: $b5
    add [hl]                                      ; $6cae: $86
    ld l, h                                       ; $6caf: $6c
    call z, $a5a3                                 ; $6cb0: $cc $a3 $a5
    xor d                                         ; $6cb3: $aa
    db $d3                                        ; $6cb4: $d3
    ld c, h                                       ; $6cb5: $4c
    cp c                                          ; $6cb6: $b9
    ld d, c                                       ; $6cb7: $51
    ld [c], a                                     ; $6cb8: $e2
    xor $76                                       ; $6cb9: $ee $76
    db $ed                                        ; $6cbb: $ed
    inc l                                         ; $6cbc: $2c
    ret                                           ; $6cbd: $c9


    pop de                                        ; $6cbe: $d1
    ld b, $2c                                     ; $6cbf: $06 $2c
    ret nc                                        ; $6cc1: $d0

    ld a, [hl+]                                   ; $6cc2: $2a
    jp nc, Jump_06a_720e                          ; $6cc3: $d2 $0e $72

    ld h, e                                       ; $6cc6: $63
    inc e                                         ; $6cc7: $1c
    xor l                                         ; $6cc8: $ad
    adc a                                         ; $6cc9: $8f
    add l                                         ; $6cca: $85
    ld d, l                                       ; $6ccb: $55
    ld l, $bc                                     ; $6ccc: $2e $bc
    ccf                                           ; $6cce: $3f
    db $db                                        ; $6ccf: $db
    add h                                         ; $6cd0: $84
    db $d3                                        ; $6cd1: $d3
    push hl                                       ; $6cd2: $e5
    and l                                         ; $6cd3: $a5
    dec e                                         ; $6cd4: $1d
    or h                                          ; $6cd5: $b4
    inc e                                         ; $6cd6: $1c
    xor l                                         ; $6cd7: $ad
    rst $00                                       ; $6cd8: $c7
    ld l, c                                       ; $6cd9: $69
    ld e, $6d                                     ; $6cda: $1e $6d
    ld b, b                                       ; $6cdc: $40
    db $d3                                        ; $6cdd: $d3
    add $f8                                       ; $6cde: $c6 $f8
    ld a, [c]                                     ; $6ce0: $f2
    call c, Call_000_21dd                         ; $6ce1: $dc $dd $21
    sbc h                                         ; $6ce4: $9c
    ld c, d                                       ; $6ce5: $4a
    rst $30                                       ; $6ce6: $f7
    ld a, [c]                                     ; $6ce7: $f2
    ld [hl], h                                    ; $6ce8: $74
    inc a                                         ; $6ce9: $3c
    reti                                          ; $6cea: $d9


    jp hl                                         ; $6ceb: $e9


    add sp, -$03                                  ; $6cec: $e8 $fd
    ld bc, $479b                                  ; $6cee: $01 $9b $47
    ld [c], a                                     ; $6cf1: $e2
    rst $00                                       ; $6cf2: $c7
    xor e                                         ; $6cf3: $ab
    ccf                                           ; $6cf4: $3f
    ld d, [hl]                                    ; $6cf5: $56
    add l                                         ; $6cf6: $85
    push de                                       ; $6cf7: $d5
    ld c, c                                       ; $6cf8: $49
    ld d, $9a                                     ; $6cf9: $16 $9a
    rst $10                                       ; $6cfb: $d7
    or d                                          ; $6cfc: $b2
    ld h, e                                       ; $6cfd: $63
    ld e, a                                       ; $6cfe: $5f
    call z, Call_06a_4678                         ; $6cff: $cc $78 $46
    ld d, c                                       ; $6d02: $51
    dec h                                         ; $6d03: $25
    or l                                          ; $6d04: $b5
    ld [hl], c                                    ; $6d05: $71
    ld [$b27d], a                                 ; $6d06: $ea $7d $b2
    cp d                                          ; $6d09: $ba
    ld a, e                                       ; $6d0a: $7b
    cp l                                          ; $6d0b: $bd

Call_06a_6d0c:
    cpl                                           ; $6d0c: $2f
    push hl                                       ; $6d0d: $e5
    ldh a, [$fa]                                  ; $6d0e: $f0 $fa
    adc a                                         ; $6d10: $8f
    inc l                                         ; $6d11: $2c
    ei                                            ; $6d12: $fb
    db $d3                                        ; $6d13: $d3
    add e                                         ; $6d14: $83
    push af                                       ; $6d15: $f5
    cp h                                          ; $6d16: $bc
    ccf                                           ; $6d17: $3f
    adc c                                         ; $6d18: $89
    inc [hl]                                      ; $6d19: $34
    ld d, [hl]                                    ; $6d1a: $56
    ld a, $29                                     ; $6d1b: $3e $29
    ld a, [hl+]                                   ; $6d1d: $2a
    ld d, h                                       ; $6d1e: $54
    and c                                         ; $6d1f: $a1
    dec [hl]                                      ; $6d20: $35
    ld h, h                                       ; $6d21: $64

jr_06a_6d22:
    ld h, e                                       ; $6d22: $63
    ld e, $ad                                     ; $6d23: $1e $ad
    ld a, [bc]                                    ; $6d25: $0a
    and a                                         ; $6d26: $a7
    ld c, [hl]                                    ; $6d27: $4e
    sub $33                                       ; $6d28: $d6 $33
    ccf                                           ; $6d2a: $3f
    jp $c98b                                      ; $6d2b: $c3 $8b $c9


    jp hl                                         ; $6d2e: $e9


    inc l                                         ; $6d2f: $2c
    jr jr_06a_6d4f                                ; $6d30: $18 $1d

jr_06a_6d32:
    cp l                                          ; $6d32: $bd
    ccf                                           ; $6d33: $3f
    dec sp                                        ; $6d34: $3b
    jr nz, jr_06a_6db4                            ; $6d35: $20 $7d

    ld b, e                                       ; $6d37: $43
    dec h                                         ; $6d38: $25
    ld [$d2c3], a                                 ; $6d39: $ea $c3 $d2

jr_06a_6d3c:
    ld l, $66                                     ; $6d3c: $2e $66
    cp h                                          ; $6d3e: $bc
    cp $23                                        ; $6d3f: $fe $23
    and a                                         ; $6d41: $a7
    ld a, [bc]                                    ; $6d42: $0a
    ld a, e                                       ; $6d43: $7b
    ld l, h                                       ; $6d44: $6c

Jump_06a_6d45:
    add [hl]                                      ; $6d45: $86
    ld [hl], l                                    ; $6d46: $75
    and h                                         ; $6d47: $a4
    rst $00                                       ; $6d48: $c7
    ld b, [hl]                                    ; $6d49: $46
    rst $28                                       ; $6d4a: $ef
    rrca                                          ; $6d4b: $0f
    ld [c], a                                     ; $6d4c: $e2
    sub l                                         ; $6d4d: $95
    cpl                                           ; $6d4e: $2f

jr_06a_6d4f:
    ld h, $d9                                     ; $6d4f: $26 $d9
    dec a                                         ; $6d51: $3d
    ld [c], a                                     ; $6d52: $e2
    ei                                            ; $6d53: $fb
    reti                                          ; $6d54: $d9


    ldh a, [rRP]                                  ; $6d55: $f0 $56
    jr nc, jr_06a_6d6e                            ; $6d57: $30 $15

    ld c, [hl]                                    ; $6d59: $4e
    rst $10                                       ; $6d5a: $d7
    dec [hl]                                      ; $6d5b: $35
    push hl                                       ; $6d5c: $e5
    jr jr_06a_6d22                                ; $6d5d: $18 $c3

    ld d, h                                       ; $6d5f: $54
    rst $00                                       ; $6d60: $c7
    push de                                       ; $6d61: $d5
    sbc a                                         ; $6d62: $9f
    push hl                                       ; $6d63: $e5
    add l                                         ; $6d64: $85
    cp c                                          ; $6d65: $b9
    ccf                                           ; $6d66: $3f
    sub a                                         ; $6d67: $97
    jr c, jr_06a_6d32                             ; $6d68: $38 $c8

    ld c, d                                       ; $6d6a: $4a
    inc [hl]                                      ; $6d6b: $34
    ret nz                                        ; $6d6c: $c0

    ret c                                         ; $6d6d: $d8

jr_06a_6d6e:
    inc c                                         ; $6d6e: $0c
    xor e                                         ; $6d6f: $ab
    sub e                                         ; $6d70: $93
    dec [hl]                                      ; $6d71: $35
    inc l                                         ; $6d72: $2c
    cp e                                          ; $6d73: $bb
    and a                                         ; $6d74: $a7
    rst $18                                       ; $6d75: $df
    inc [hl]                                      ; $6d76: $34
    or d                                          ; $6d77: $b2
    add hl, de                                    ; $6d78: $19
    sbc d                                         ; $6d79: $9a
    add hl, hl                                    ; $6d7a: $29
    ld [$feb8], a                                 ; $6d7b: $ea $b8 $fe
    di                                            ; $6d7e: $f3
    sub h                                         ; $6d7f: $94
    push af                                       ; $6d80: $f5
    ld l, c                                       ; $6d81: $69
    ld hl, sp+$5f                                 ; $6d82: $f8 $5f
    ldh [$dd], a                                  ; $6d84: $e0 $dd
    dec e                                         ; $6d86: $1d
    adc b                                         ; $6d87: $88
    ld sp, hl                                     ; $6d88: $f9
    ld [hl], c                                    ; $6d89: $71
    and e                                         ; $6d8a: $a3
    ld b, h                                       ; $6d8b: $44
    and l                                         ; $6d8c: $a5
    ld a, e                                       ; $6d8d: $7b
    ld a, c                                       ; $6d8e: $79
    ld a, [hl+]                                   ; $6d8f: $2a
    ld sp, hl                                     ; $6d90: $f9
    or h                                          ; $6d91: $b4
    ld a, e                                       ; $6d92: $7b
    db $e4                                        ; $6d93: $e4
    or a                                          ; $6d94: $b7
    call c, Call_000_3b1f                         ; $6d95: $dc $1f $3b
    ld h, b                                       ; $6d98: $60
    dec c                                         ; $6d99: $0d
    ld l, b                                       ; $6d9a: $68
    ld a, [de]                                    ; $6d9b: $1a
    xor d                                         ; $6d9c: $aa
    db $d3                                        ; $6d9d: $d3
    jr z, jr_06a_6d3c                             ; $6d9e: $28 $9c

    xor [hl]                                      ; $6da0: $ae
    xor e                                         ; $6da1: $ab
    ld [hl], h                                    ; $6da2: $74
    cpl                                           ; $6da3: $2f
    ld c, a                                       ; $6da4: $4f
    dec h                                         ; $6da5: $25
    db $dd                                        ; $6da6: $dd
    db $fd                                        ; $6da7: $fd
    ld bc, $c63b                                  ; $6da8: $01 $3b $c6
    push de                                       ; $6dab: $d5
    ret                                           ; $6dac: $c9


    ld a, [$a16f]                                 ; $6dad: $fa $6f $a1
    dec [hl]                                      ; $6db0: $35
    or b                                          ; $6db1: $b0
    rst $38                                       ; $6db2: $ff
    ld c, b                                       ; $6db3: $48

jr_06a_6db4:
    rla                                           ; $6db4: $17
    ld e, a                                       ; $6db5: $5f
    ld h, b                                       ; $6db6: $60
    ret nz                                        ; $6db7: $c0

jr_06a_6db8:
    db $fd                                        ; $6db8: $fd
    ld bc, $2197                                  ; $6db9: $01 $97 $21
    ld h, $a7                                     ; $6dbc: $26 $a7
    ld a, [$d4c2]                                 ; $6dbe: $fa $c2 $d4
    ret                                           ; $6dc1: $c9


    ld a, [$fee3]                                 ; $6dc2: $fa $e3 $fe
    jp hl                                         ; $6dc5: $e9


    sbc a                                         ; $6dc6: $9f
    ld h, h                                       ; $6dc7: $64
    sbc [hl]                                      ; $6dc8: $9e
    ei                                            ; $6dc9: $fb
    inc bc                                        ; $6dca: $03
    dec sp                                        ; $6dcb: $3b
    add $d5                                       ; $6dcc: $c6 $d5
    ld a, a                                       ; $6dce: $7f
    ld sp, $4c33                                  ; $6dcf: $31 $33 $4c
    ld [hl], l                                    ; $6dd2: $75
    inc a                                         ; $6dd3: $3c
    add [hl]                                      ; $6dd4: $86
    ld a, [hl-]                                   ; $6dd5: $3a
    ret                                           ; $6dd6: $c9


    ld a, [$ca7c]                                 ; $6dd7: $fa $7c $ca
    inc [hl]                                      ; $6dda: $34
    and h                                         ; $6ddb: $a4
    xor b                                         ; $6ddc: $a8
    add sp, -$02                                  ; $6ddd: $e8 $fe
    jp c, Jump_06a_7615                           ; $6ddf: $da $15 $76

    ld b, c                                       ; $6de2: $41
    adc e                                         ; $6de3: $8b
    add l                                         ; $6de4: $85
    push af                                       ; $6de5: $f5
    jr nc, jr_06a_6e4b                            ; $6de6: $30 $63

    and e                                         ; $6de8: $a3
    ld b, h                                       ; $6de9: $44
    inc hl                                        ; $6dea: $23
    or l                                          ; $6deb: $b5
    rst $38                                       ; $6dec: $ff
    ld l, b                                       ; $6ded: $68
    and [hl]                                      ; $6dee: $a6
    sbc $1f                                       ; $6def: $de $1f
    sbc e                                         ; $6df1: $9b
    ld b, a                                       ; $6df2: $47
    ld [c], a                                     ; $6df3: $e2
    rst $00                                       ; $6df4: $c7
    xor e                                         ; $6df5: $ab
    ccf                                           ; $6df6: $3f
    ld d, [hl]                                    ; $6df7: $56
    add l                                         ; $6df8: $85
    push de                                       ; $6df9: $d5
    ret                                           ; $6dfa: $c9


    ld b, d                                       ; $6dfb: $42
    dec a                                         ; $6dfc: $3d
    or e                                          ; $6dfd: $b3
    ld a, [hl]                                    ; $6dfe: $7e
    ld b, h                                       ; $6dff: $44
    sub l                                         ; $6e00: $95
    call nc, $a366                                ; $6e01: $d4 $66 $a3
    add a                                         ; $6e04: $87
    ld c, e                                       ; $6e05: $4b
    ld [de], a                                    ; $6e06: $12
    xor a                                         ; $6e07: $af
    xor h                                         ; $6e08: $ac
    xor [hl]                                      ; $6e09: $ae
    or e                                          ; $6e0a: $b3
    scf                                           ; $6e0b: $37
    push af                                       ; $6e0c: $f5
    ld l, c                                       ; $6e0d: $69
    xor h                                         ; $6e0e: $ac
    ld b, h                                       ; $6e0f: $44
    inc bc                                        ; $6e10: $03
    cp h                                          ; $6e11: $bc
    cpl                                           ; $6e12: $2f
    ld a, $ab                                     ; $6e13: $3e $ab
    call nz, $1c92                                ; $6e15: $c4 $92 $1c
    cp e                                          ; $6e18: $bb
    ccf                                           ; $6e19: $3f
    db $db                                        ; $6e1a: $db
    jr nz, jr_06a_6db8                            ; $6e1b: $20 $9b

    daa                                           ; $6e1d: $27
    adc h                                         ; $6e1e: $8c
    halt                                          ; $6e1f: $76
    or h                                          ; $6e20: $b4
    add [hl]                                      ; $6e21: $86
    ld l, h                                       ; $6e22: $6c
    call z, $f5a3                                 ; $6e23: $cc $a3 $f5
    cp [hl]                                       ; $6e26: $be
    sbc a                                         ; $6e27: $9f
    or d                                          ; $6e28: $b2
    sub b                                         ; $6e29: $90
    add l                                         ; $6e2a: $85
    ld h, b                                       ; $6e2b: $60
    ld a, a                                       ; $6e2c: $7f
    db $f4                                        ; $6e2d: $f4
    xor l                                         ; $6e2e: $ad
    rla                                           ; $6e2f: $17
    ld c, [hl]                                    ; $6e30: $4e
    ld a, l                                       ; $6e31: $7d
    sbc b                                         ; $6e32: $98
    ld h, h                                       ; $6e33: $64
    ld b, h                                       ; $6e34: $44
    call z, Call_06a_5510                         ; $6e35: $cc $10 $55
    jp hl                                         ; $6e38: $e9


    add c                                         ; $6e39: $81
    ld l, [hl]                                    ; $6e3a: $6e
    ld a, [$0900]                                 ; $6e3b: $fa $00 $09
    xor [hl]                                      ; $6e3e: $ae
    db $fc                                        ; $6e3f: $fc
    sub e                                         ; $6e40: $93
    db $d3                                        ; $6e41: $d3
    sub h                                         ; $6e42: $94
    ld b, e                                       ; $6e43: $43
    ld e, c                                       ; $6e44: $59
    add hl, sp                                    ; $6e45: $39
    ld c, e                                       ; $6e46: $4b
    ld [hl], b                                    ; $6e47: $70
    add $ae                                       ; $6e48: $c6 $ae
    db $eb                                        ; $6e4a: $eb

jr_06a_6e4b:
    inc [hl]                                      ; $6e4b: $34
    push hl                                       ; $6e4c: $e5
    ret nc                                        ; $6e4d: $d0

    adc h                                         ; $6e4e: $8c
    sbc b                                         ; $6e4f: $98
    sbc h                                         ; $6e50: $9c
    ld b, $54                                     ; $6e51: $06 $54
    ld h, d                                       ; $6e53: $62
    ld c, c                                       ; $6e54: $49
    adc [hl]                                      ; $6e55: $8e
    db $dd                                        ; $6e56: $dd
    rra                                           ; $6e57: $1f
    adc c                                         ; $6e58: $89
    ld h, e                                       ; $6e59: $63
    ld e, l                                       ; $6e5a: $5d
    ld h, c                                       ; $6e5b: $61
    rla                                           ; $6e5c: $17
    or h                                          ; $6e5d: $b4
    add hl, de                                    ; $6e5e: $19
    ld sp, $5539                                  ; $6e5f: $31 $39 $55
    cp d                                          ; $6e62: $ba
    ret nz                                        ; $6e63: $c0

    nop                                           ; $6e64: $00
    ld l, l                                       ; $6e65: $6d
    jr jr_06a_6ed5                                ; $6e66: $18 $6d

    ld a, b                                       ; $6e68: $78
    call nc, $93ea                                ; $6e69: $d4 $ea $93
    cp $02                                        ; $6e6c: $fe $02
    ld l, l                                       ; $6e6e: $6d
    ld h, b                                       ; $6e6f: $60
    push hl                                       ; $6e70: $e5
    adc e                                         ; $6e71: $8b
    ld c, c                                       ; $6e72: $49
    ld d, [hl]                                    ; $6e73: $56
    add b                                         ; $6e74: $80
    ld e, e                                       ; $6e75: $5b
    ld hl, $1766                                  ; $6e76: $21 $66 $17
    jr nz, jr_06a_6ee5                            ; $6e79: $20 $6a

    jp z, $8631                                   ; $6e7b: $ca $31 $86

    add hl, hl                                    ; $6e7e: $29
    adc h                                         ; $6e7f: $8c

Jump_06a_6e80:
    and l                                         ; $6e80: $a5
    adc a                                         ; $6e81: $8f
    ld c, b                                       ; $6e82: $48
    xor l                                         ; $6e83: $ad
    sub e                                         ; $6e84: $93
    dec c                                         ; $6e85: $0d
    ld d, b                                       ; $6e86: $50
    call nz, $94e4                                ; $6e87: $c4 $e4 $94
    ld e, l                                       ; $6e8a: $5d
    sub $fc                                       ; $6e8b: $d6 $fc
    and a                                         ; $6e8d: $a7
    rst $30                                       ; $6e8e: $f7
    rlca                                          ; $6e8f: $07
    add hl, bc                                    ; $6e90: $09
    sbc d                                         ; $6e91: $9a
    rst $00                                       ; $6e92: $c7
    sub l                                         ; $6e93: $95
    call $9988                                    ; $6e94: $cd $88 $99
    sub $7f                                       ; $6e97: $d6 $7f
    ld h, d                                       ; $6e99: $62
    and $9f                                       ; $6e9a: $e6 $9f
    ld l, c                                       ; $6e9c: $69
    ld h, l                                       ; $6e9d: $65
    push hl                                       ; $6e9e: $e5
    adc e                                         ; $6e9f: $8b
    ld c, c                                       ; $6ea0: $49
    sub [hl]                                      ; $6ea1: $96
    ld l, c                                       ; $6ea2: $69
    ld b, a                                       ; $6ea3: $47
    jp $bec2                                      ; $6ea4: $c3 $c2 $be


    sbc b                                         ; $6ea7: $98
    ld h, c                                       ; $6ea8: $61
    ld l, a                                       ; $6ea9: $6f
    db $ec                                        ; $6eaa: $ec
    cp $00                                        ; $6eab: $fe $00
    adc c                                         ; $6ead: $89
    and e                                         ; $6eae: $a3
    ld a, [hl-]                                   ; $6eaf: $3a
    ld d, l                                       ; $6eb0: $55
    ld e, b                                       ; $6eb1: $58
    jp hl                                         ; $6eb2: $e9


    inc hl                                        ; $6eb3: $23
    ld d, d                                       ; $6eb4: $52
    db $eb                                        ; $6eb5: $eb
    ld h, h                                       ; $6eb6: $64
    dec c                                         ; $6eb7: $0d
    reti                                          ; $6eb8: $d9


    sbc b                                         ; $6eb9: $98
    ld b, a                                       ; $6eba: $47
    ld d, h                                       ; $6ebb: $54
    ld c, c                                       ; $6ebc: $49
    xor l                                         ; $6ebd: $ad

jr_06a_6ebe:
    rst $10                                       ; $6ebe: $d7
    jr @+$81                                      ; $6ebf: $18 $7f

    ld c, d                                       ; $6ec1: $4a
    call nz, Call_06a_510c                        ; $6ec2: $c4 $0c $51
    ld [hl], l                                    ; $6ec5: $75
    ld e, h                                       ; $6ec6: $5c
    dec h                                         ; $6ec7: $25
    sbc a                                         ; $6ec8: $9f
    sub $33                                       ; $6ec9: $d6 $33
    pop af                                        ; $6ecb: $f1
    push hl                                       ; $6ecc: $e5
    ld l, c                                       ; $6ecd: $69
    jp z, $aca1                                   ; $6ece: $ca $a1 $ac

    rrca                                          ; $6ed1: $0f
    push de                                       ; $6ed2: $d5
    ld h, c                                       ; $6ed3: $61
    ld d, e                                       ; $6ed4: $53

jr_06a_6ed5:
    ld c, $55                                     ; $6ed5: $0e $55
    ret c                                         ; $6ed7: $d8

    ld [$06b9], a                                 ; $6ed8: $ea $b9 $06
    ld d, h                                       ; $6edb: $54
    ld c, [hl]                                    ; $6edc: $4e
    ret nz                                        ; $6edd: $c0

    ld [hl-], a                                   ; $6ede: $32
    rst $30                                       ; $6edf: $f7
    rlca                                          ; $6ee0: $07
    sub a                                         ; $6ee1: $97
    ld c, e                                       ; $6ee2: $4b
    halt                                          ; $6ee3: $76
    add l                                         ; $6ee4: $85

jr_06a_6ee5:
    ld e, l                                       ; $6ee5: $5d
    add l                                         ; $6ee6: $85
    and $b7                                       ; $6ee7: $e6 $b7
    ld b, d                                       ; $6ee9: $42
    and e                                         ; $6eea: $a3
    sub e                                         ; $6eeb: $93
    inc l                                         ; $6eec: $2c
    inc b                                         ; $6eed: $04
    ei                                            ; $6eee: $fb
    and e                                         ; $6eef: $a3
    ld l, a                                       ; $6ef0: $6f
    cp l                                          ; $6ef1: $bd
    ld [hl], b                                    ; $6ef2: $70
    ld a, [$8bf2]                                 ; $6ef3: $fa $f2 $8b
    jr nc, jr_06a_6ebe                            ; $6ef6: $30 $c6

    inc c                                         ; $6ef8: $0c
    ld d, c                                       ; $6ef9: $51
    dec h                                         ; $6efa: $25
    or l                                          ; $6efb: $b5
    call nc, $1eae                                ; $6efc: $d4 $ae $1e
    db $d3                                        ; $6eff: $d3
    adc b                                         ; $6f00: $88
    ld e, d                                       ; $6f01: $5a
    ld b, h                                       ; $6f02: $44
    ld bc, $a343                                  ; $6f03: $01 $43 $a3
    call c, Call_06a_7128                         ; $6f06: $dc $28 $71
    ld a, a                                       ; $6f09: $7f
    adc c                                         ; $6f0a: $89
    add $5d                                       ; $6f0b: $c6 $5d
    or b                                          ; $6f0d: $b0
    ld b, d                                       ; $6f0e: $42
    halt                                          ; $6f0f: $76
    dec b                                         ; $6f10: $05
    db $db                                        ; $6f11: $db
    sbc b                                         ; $6f12: $98
    ld [hl], c                                    ; $6f13: $71
    ld [hl], a                                    ; $6f14: $77
    sbc e                                         ; $6f15: $9b
    ld [hl], b                                    ; $6f16: $70
    sbc d                                         ; $6f17: $9a
    ld hl, $2b47                                  ; $6f18: $21 $47 $2b
    db $dd                                        ; $6f1b: $dd
    res 4, e                                      ; $6f1c: $cb $a3
    ld e, l                                       ; $6f1e: $5d
    dec a                                         ; $6f1f: $3d
    ld a, l                                       ; $6f20: $7d
    sbc c                                         ; $6f21: $99
    ld sp, $ef43                                  ; $6f22: $31 $43 $ef
    rrca                                          ; $6f25: $0f
    ld [c], a                                     ; $6f26: $e2
    ld a, a                                       ; $6f27: $7f
    sub d                                         ; $6f28: $92
    jp c, Jump_06a_4394                           ; $6f29: $da $94 $43

    and c                                         ; $6f2c: $a1
    sbc c                                         ; $6f2d: $99
    sub l                                         ; $6f2e: $95
    or e                                          ; $6f2f: $b3
    inc b                                         ; $6f30: $04
    ld h, a                                       ; $6f31: $67
    xor h                                         ; $6f32: $ac
    sub a                                         ; $6f33: $97
    xor e                                         ; $6f34: $ab
    ld sp, $28fc                                  ; $6f35: $31 $fc $28
    dec hl                                        ; $6f38: $2b
    ld e, a                                       ; $6f39: $5f
    ld c, h                                       ; $6f3a: $4c
    or d                                          ; $6f3b: $b2
    sbc $97                                       ; $6f3c: $de $97
    halt                                          ; $6f3e: $76
    add $4d                                       ; $6f3f: $c6 $4d
    rra                                           ; $6f41: $1f
    rla                                           ; $6f42: $17
    ld d, e                                       ; $6f43: $53
    ld [hl+], a                                   ; $6f44: $22
    and $11                                       ; $6f45: $e6 $11
    push de                                       ; $6f47: $d5
    add a                                         ; $6f48: $87
    dec b                                         ; $6f49: $05
    ld l, b                                       ; $6f4a: $68
    add $dd                                       ; $6f4b: $c6 $dd
    rl b                                          ; $6f4d: $cb $10
    inc sp                                        ; $6f4f: $33
    dec sp                                        ; $6f50: $3b
    ld l, $1b                                     ; $6f51: $2e $1b
    cp e                                          ; $6f53: $bb
    jp nz, $fbae                                  ; $6f54: $c2 $ae $fb

    inc bc                                        ; $6f57: $03
    rst $20                                       ; $6f58: $e7
    inc c                                         ; $6f59: $0c
    sbc e                                         ; $6f5a: $9b
    ld de, $f333                                  ; $6f5b: $11 $33 $f3
    ld e, e                                       ; $6f5e: $5b
    pop af                                        ; $6f5f: $f1
    xor $65                                       ; $6f60: $ee $65
    adc b                                         ; $6f62: $88
    sbc c                                         ; $6f63: $99
    adc l                                         ; $6f64: $8d
    or e                                          ; $6f65: $b3
    and d                                         ; $6f66: $a2
    ld b, h                                       ; $6f67: $44
    call z, Call_000_3fb8                         ; $6f68: $cc $b8 $3f
    rst $20                                       ; $6f6b: $e7
    ld b, d                                       ; $6f6c: $42
    inc sp                                        ; $6f6d: $33
    cp e                                          ; $6f6e: $bb
    jp nz, Jump_06a_46ae                          ; $6f6f: $c2 $ae $46

    pop hl                                        ; $6f72: $e1
    db $f4                                        ; $6f73: $f4
    sbc a                                         ; $6f74: $9f
    xor b                                         ; $6f75: $a8
    ld c, b                                       ; $6f76: $48
    cp e                                          ; $6f77: $bb
    and a                                         ; $6f78: $a7
    add hl, de                                    ; $6f79: $19
    ld [hl], a                                    ; $6f7a: $77
    or a                                          ; $6f7b: $b7
    ld d, d                                       ; $6f7c: $52
    dec de                                        ; $6f7d: $1b
    add l                                         ; $6f7e: $85
    db $d3                                        ; $6f7f: $d3
    nop                                           ; $6f80: $00
    ld a, l                                       ; $6f81: $7d
    sbc d                                         ; $6f82: $9a
    xor c                                         ; $6f83: $a9
    rst $30                                       ; $6f84: $f7
    rlca                                          ; $6f85: $07
    add hl, bc                                    ; $6f86: $09
    or d                                          ; $6f87: $b2
    rst $38                                       ; $6f88: $ff
    ld c, b                                       ; $6f89: $48
    ret z                                         ; $6f8a: $c8

    ld sp, $17ae                                  ; $6f8b: $31 $ae $17
    ld c, [hl]                                    ; $6f8e: $4e
    jp $c334                                      ; $6f8f: $c3 $34 $c3


    push de                                       ; $6f92: $d5

Jump_06a_6f93:
    or a                                          ; $6f93: $b7
    daa                                           ; $6f94: $27
    pop af                                        ; $6f95: $f1
    ld l, h                                       ; $6f96: $6c
    jp z, $5538                                   ; $6f97: $ca $38 $55

    ret z                                         ; $6f9a: $c8

    cp [hl]                                       ; $6f9b: $be
    or h                                          ; $6f9c: $b4
    db $e3                                        ; $6f9d: $e3
    ld d, d                                       ; $6f9e: $52
    ret z                                         ; $6f9f: $c8

    ld l, [hl]                                    ; $6fa0: $6e
    sbc c                                         ; $6fa1: $99
    or h                                          ; $6fa2: $b4
    jr nz, jr_06a_6fff                            ; $6fa3: $20 $5a

    ld d, [hl]                                    ; $6fa5: $56
    ld d, c                                       ; $6fa6: $51
    jp $8db8                                      ; $6fa7: $c3 $b8 $8d


    add hl, de                                    ; $6faa: $19
    ld [hl], l                                    ; $6fab: $75
    or d                                          ; $6fac: $b2
    cp [hl]                                       ; $6fad: $be
    xor l                                         ; $6fae: $ad
    sub e                                         ; $6faf: $93
    ld l, a                                       ; $6fb0: $6f
    xor d                                         ; $6fb1: $aa
    sub b                                         ; $6fb2: $90
    ld a, l                                       ; $6fb3: $7d
    ld l, c                                       ; $6fb4: $69
    rst $00                                       ; $6fb5: $c7
    push hl                                       ; $6fb6: $e5
    or h                                          ; $6fb7: $b4
    ld a, [hl-]                                   ; $6fb8: $3a
    reti                                          ; $6fb9: $d9


    call Call_06a_7236                            ; $6fba: $cd $36 $72
    ld a, [de]                                    ; $6fbd: $1a
    ret nc                                        ; $6fbe: $d0

    di                                            ; $6fbf: $f3
    ldh a, [$f2]                                  ; $6fc0: $f0 $f2
    ei                                            ; $6fc2: $fb
    pop af                                        ; $6fc3: $f1
    ld l, h                                       ; $6fc4: $6c
    or h                                          ; $6fc5: $b4
    add sp, $39                                   ; $6fc6: $e8 $39
    and $04                                       ; $6fc8: $e6 $04
    ld d, e                                       ; $6fca: $53
    ld a, e                                       ; $6fcb: $7b
    ld e, $e5                                     ; $6fcc: $1e $e5
    add sp, $68                                   ; $6fce: $e8 $68
    jp $0b74                                      ; $6fd0: $c3 $74 $0b


    call $3676                                    ; $6fd3: $cd $76 $36
    ld [hl], c                                    ; $6fd6: $71
    ld [hl], d                                    ; $6fd7: $72
    add [hl]                                      ; $6fd8: $86
    ld l, l                                       ; $6fd9: $6d
    ld l, b                                       ; $6fda: $68
    ld [hl+], a                                   ; $6fdb: $22
    adc l                                         ; $6fdc: $8d
    sbc [hl]                                      ; $6fdd: $9e
    ld [hl], l                                    ; $6fde: $75
    ld d, c                                       ; $6fdf: $51
    scf                                           ; $6fe0: $37
    ld a, h                                       ; $6fe1: $7c
    db $db                                        ; $6fe2: $db
    cp e                                          ; $6fe3: $bb
    cp h                                          ; $6fe4: $bc
    sub l                                         ; $6fe5: $95
    ld c, l                                       ; $6fe6: $4d
    and e                                         ; $6fe7: $a3
    ld [hl], b                                    ; $6fe8: $70
    ld [$f0d3], a                                 ; $6fe9: $ea $d3 $f0
    and e                                         ; $6fec: $a3
    ld a, [bc]                                    ; $6fed: $0a
    db $eb                                        ; $6fee: $eb
    add d                                         ; $6fef: $82
    sub a                                         ; $6ff0: $97
    sbc l                                         ; $6ff1: $9d
    or c                                          ; $6ff2: $b1
    jp nc, Jump_000_3cbd                          ; $6ff3: $d2 $bd $3c

    ld e, l                                       ; $6ff6: $5d
    or b                                          ; $6ff7: $b0
    jp nz, $cbdd                                  ; $6ff8: $c2 $dd $cb

    db $10                                        ; $6ffb: $10
    inc sp                                        ; $6ffc: $33
    dec de                                        ; $6ffd: $1b
    ld h, a                                       ; $6ffe: $67

jr_06a_6fff:
    ld b, l                                       ; $6fff: $45
    adc c                                         ; $7000: $89
    sbc b                                         ; $7001: $98
    ld hl, $16ea                                  ; $7002: $21 $ea $16
    sbc d                                         ; $7005: $9a
    db $ed                                        ; $7006: $ed
    cp h                                          ; $7007: $bc
    ccf                                           ; $7008: $3f
    db $db                                        ; $7009: $db

Call_06a_700a:
    db $eb                                        ; $700a: $eb
    ld h, c                                       ; $700b: $61
    db $fc                                        ; $700c: $fc
    and a                                         ; $700d: $a7
    ld a, h                                       ; $700e: $7c
    ld sp, $d0b0                                  ; $700f: $31 $b0 $d0
    cp h                                          ; $7012: $bc
    ld d, [hl]                                    ; $7013: $56
    ld [hl], $1b                                  ; $7014: $36 $1b
    dec a                                         ; $7016: $3d
    ld e, h                                       ; $7017: $5c
    sub d                                         ; $7018: $92
    or h                                          ; $7019: $b4
    ld a, [hl+]                                   ; $701a: $2a
    ld h, d                                       ; $701b: $62
    ld h, [hl]                                    ; $701c: $66
    sbc b                                         ; $701d: $98
    cp e                                          ; $701e: $bb
    sub a                                         ; $701f: $97
    ld hl, $7666                                  ; $7020: $21 $66 $76
    ld e, h                                       ; $7023: $5c
    ld [hl], $76                                  ; $7024: $36 $76
    add l                                         ; $7026: $85
    ld e, l                                       ; $7027: $5d
    and d                                         ; $7028: $a2
    ld l, [hl]                                    ; $7029: $6e
    and c                                         ; $702a: $a1
    reti                                          ; $702b: $d9


    adc $fb                                       ; $702c: $ce $fb
    inc bc                                        ; $702e: $03
    sub a                                         ; $702f: $97
    ld a, [c]                                     ; $7030: $f2
    db $ed                                        ; $7031: $ed
    ld l, d                                       ; $7032: $6a
    ld b, b                                       ; $7033: $40
    push bc                                       ; $7034: $c5
    push de                                       ; $7035: $d5
    cp e                                          ; $7036: $bb
    ld a, e                                       ; $7037: $7b
    ret nz                                        ; $7038: $c0

    ld [hl-], a                                   ; $7039: $32
    rra                                           ; $703a: $1f
    sub a                                         ; $703b: $97
    ld e, e                                       ; $703c: $5b
    ld a, [hl]                                    ; $703d: $7e
    ld l, c                                       ; $703e: $69
    ld l, d                                       ; $703f: $6a
    ld [hl], a                                    ; $7040: $77
    ldh [$a7], a                                  ; $7041: $e0 $a7
    ld a, [hl]                                    ; $7043: $7e
    rst $20                                       ; $7044: $e7
    xor $f6                                       ; $7045: $ee $f6
    ld h, a                                       ; $7047: $67
    jp z, Jump_000_00f9                           ; $7048: $ca $f9 $00

    ld [c], a                                     ; $704b: $e2
    ld e, $7d                                     ; $704c: $1e $7d
    ld sp, $07cf                                  ; $704e: $31 $cf $07
    sub a                                         ; $7051: $97
    ld a, [c]                                     ; $7052: $f2
    db $ed                                        ; $7053: $ed
    ld l, d                                       ; $7054: $6a
    ld b, b                                       ; $7055: $40
    or a                                          ; $7056: $b7
    ld [hl-], a                                   ; $7057: $32
    ld b, $5b                                     ; $7058: $06 $5b
    ld c, e                                       ; $705a: $4b
    adc a                                         ; $705b: $8f
    pop af                                        ; $705c: $f1
    inc bc                                        ; $705d: $03
    ld [c], a                                     ; $705e: $e2
    rst $38                                       ; $705f: $ff
    xor $f1                                       ; $7060: $ee $f1
    push hl                                       ; $7062: $e5
    ld sp, hl                                     ; $7063: $f9
    nop                                           ; $7064: $00
    db $db                                        ; $7065: $db
    sub a                                         ; $7066: $97
    dec [hl]                                      ; $7067: $35
    ld d, c                                       ; $7068: $51
    or a                                          ; $7069: $b7
    ret nc                                        ; $706a: $d0

    ld l, h                                       ; $706b: $6c
    rst $20                                       ; $706c: $e7
    db $fd                                        ; $706d: $fd
    ld bc, $d65b                                  ; $706e: $01 $5b $d6
    ld a, [de]                                    ; $7071: $1a
    ld h, a                                       ; $7072: $67
    push af                                       ; $7073: $f5
    ld [bc], a                                    ; $7074: $02
    inc bc                                        ; $7075: $03
    ld d, h                                       ; $7076: $54
    call nc, $342d                                ; $7077: $d4 $2d $34
    db $db                                        ; $707a: $db
    cp c                                          ; $707b: $b9
    jp hl                                         ; $707c: $e9


    inc bc                                        ; $707d: $03
    adc c                                         ; $707e: $89
    add $5d                                       ; $707f: $c6 $5d
    or b                                          ; $7081: $b0
    ld b, d                                       ; $7082: $42
    halt                                          ; $7083: $76
    dec b                                         ; $7084: $05
    db $db                                        ; $7085: $db
    sbc b                                         ; $7086: $98
    ld hl, $16ea                                  ; $7087: $21 $ea $16
    sbc d                                         ; $708a: $9a
    db $ed                                        ; $708b: $ed
    cp h                                          ; $708c: $bc
    ccf                                           ; $708d: $3f
    sub a                                         ; $708e: $97
    dec a                                         ; $708f: $3d
    ld h, e                                       ; $7090: $63
    sbc l                                         ; $7091: $9d
    ld h, h                                       ; $7092: $64
    cp l                                          ; $7093: $bd
    sub e                                         ; $7094: $93
    daa                                           ; $7095: $27
    ld l, l                                       ; $7096: $6d
    db $f4                                        ; $7097: $f4
    ld a, $8a                                     ; $7098: $3e $8a
    ld a, [de]                                    ; $709a: $1a
    sbc h                                         ; $709b: $9c
    or c                                          ; $709c: $b1
    sub d                                         ; $709d: $92
    ld c, a                                       ; $709e: $4f
    sbc e                                         ; $709f: $9b
    ld hl, $b9fd                                  ; $70a0: $21 $fd $b9
    ccf                                           ; $70a3: $3f
    db $db                                        ; $70a4: $db
    sub a                                         ; $70a5: $97
    dec [hl]                                      ; $70a6: $35
    ld d, c                                       ; $70a7: $51
    or a                                          ; $70a8: $b7
    ret nc                                        ; $70a9: $d0

    ld l, h                                       ; $70aa: $6c
    rst $20                                       ; $70ab: $e7
    db $fd                                        ; $70ac: $fd
    ld bc, $e83b                                  ; $70ad: $01 $3b $e8
    ld [bc], a                                    ; $70b0: $02
    rst $10                                       ; $70b1: $d7
    rra                                           ; $70b2: $1f
    inc c                                         ; $70b3: $0c
    dec d                                         ; $70b4: $15
    ld [hl], l                                    ; $70b5: $75
    dec bc                                        ; $70b6: $0b
    call $de76                                    ; $70b7: $cd $76 $de
    rra                                           ; $70ba: $1f
    sbc e                                         ; $70bb: $9b
    ld b, a                                       ; $70bc: $47
    ld c, [hl]                                    ; $70bd: $4e
    ld d, a                                       ; $70be: $57
    ld a, h                                       ; $70bf: $7c
    ld a, [hl+]                                   ; $70c0: $2a
    ld [$9a16], a                                 ; $70c1: $ea $16 $9a
    db $ed                                        ; $70c4: $ed
    cp h                                          ; $70c5: $bc
    ccf                                           ; $70c6: $3f
    dec sp                                        ; $70c7: $3b
    jr nz, jr_06a_7147                            ; $70c8: $20 $7d

    ld b, e                                       ; $70ca: $43
    sbc l                                         ; $70cb: $9d
    xor h                                         ; $70cc: $ac
    ld l, a                                       ; $70cd: $6f
    call c, $eb05                                 ; $70ce: $dc $05 $eb
    ld a, [bc]                                    ; $70d1: $0a
    or [hl]                                       ; $70d2: $b6
    ld sp, $d443                                  ; $70d3: $31 $43 $d4
    dec l                                         ; $70d6: $2d
    inc [hl]                                      ; $70d7: $34
    db $db                                        ; $70d8: $db
    ld a, c                                       ; $70d9: $79
    ld a, a                                       ; $70da: $7f
    ld h, a                                       ; $70db: $67
    inc [hl]                                      ; $70dc: $34
    cp h                                          ; $70dd: $bc
    dec d                                         ; $70de: $15
    inc l                                         ; $70df: $2c
    cp a                                          ; $70e0: $bf
    jr nc, jr_06a_7140                            ; $70e1: $30 $5d

    ld sp, $40ed                                  ; $70e3: $31 $ed $40
    xor e                                         ; $70e6: $ab
    ccf                                           ; $70e7: $3f
    ld d, [hl]                                    ; $70e8: $56
    xor $26                                       ; $70e9: $ee $26
    ld l, d                                       ; $70eb: $6a
    inc d                                         ; $70ec: $14
    ld c, [hl]                                    ; $70ed: $4e
    rst $10                                       ; $70ee: $d7
    ld l, l                                       ; $70ef: $6d
    ld a, [$9700]                                 ; $70f0: $fa $00 $97
    ld hl, $a726                                  ; $70f3: $21 $26 $a7
    ld a, [hl-]                                   ; $70f6: $3a
    ld sp, $30c9                                  ; $70f7: $31 $c9 $30
    db $fd                                        ; $70fa: $fd
    ld b, a                                       ; $70fb: $47
    ld [hl], $cd                                  ; $70fc: $36 $cd
    push hl                                       ; $70fe: $e5
    push bc                                       ; $70ff: $c5
    inc h                                         ; $7100: $24
    push af                                       ; $7101: $f5
    xor $f6                                       ; $7102: $ee $f6
    and [hl]                                      ; $7104: $a6
    inc e                                         ; $7105: $1c
    xor d                                         ; $7106: $aa
    or b                                          ; $7107: $b0
    or l                                          ; $7108: $b5
    and [hl]                                      ; $7109: $a6
    inc e                                         ; $710a: $1c
    ld a, [$a754]                                 ; $710b: $fa $54 $a7
    ld a, [$f1d2]                                 ; $710e: $fa $d2 $f1

jr_06a_7111:
    ld a, c                                       ; $7111: $79
    rst $18                                       ; $7112: $df
    rst $08                                       ; $7113: $cf
    ld c, l                                       ; $7114: $4d
    rra                                           ; $7115: $1f
    rst $20                                       ; $7116: $e7
    ld a, $f6                                     ; $7117: $3e $f6
    rst $20                                       ; $7119: $e7
    ld [hl+], a                                   ; $711a: $22
    ld b, a                                       ; $711b: $47
    call nc, $9c28                                ; $711c: $d4 $28 $9c
    ld b, d                                       ; $711f: $42
    di                                            ; $7120: $f3
    sbc d                                         ; $7121: $9a
    xor b                                         ; $7122: $a8
    ld e, e                                       ; $7123: $5b
    ld l, b                                       ; $7124: $68
    or [hl]                                       ; $7125: $b6
    ld [hl], e                                    ; $7126: $73
    db $d3                                        ; $7127: $d3

Call_06a_7128:
    rlca                                          ; $7128: $07
    sub a                                         ; $7129: $97
    jr c, @-$36                                   ; $712a: $38 $c8

    ld c, d                                       ; $712c: $4a
    inc [hl]                                      ; $712d: $34
    ret nz                                        ; $712e: $c0

    ld e, b                                       ; $712f: $58
    ld a, a                                       ; $7130: $7f
    ld [bc], a                                    ; $7131: $02
    xor h                                         ; $7132: $ac
    xor e                                         ; $7133: $ab
    ld e, c                                       ; $7134: $59

jr_06a_7135:
    ld [hl-], a                                   ; $7135: $32
    xor l                                         ; $7136: $ad
    ld a, $8d                                     ; $7137: $3e $8d
    ld h, l                                       ; $7139: $65
    ld a, a                                       ; $713a: $7f
    ld c, d                                       ; $713b: $4a
    sbc $1f                                       ; $713c: $de $1f
    add hl, bc                                    ; $713e: $09
    xor [hl]                                      ; $713f: $ae

jr_06a_7140:
    ld a, h                                       ; $7140: $7c
    ld sp, $ffb0                                  ; $7141: $31 $b0 $ff
    call nz, $a2fc                                ; $7144: $c4 $fc $a2

jr_06a_7147:
    sbc e                                         ; $7147: $9b
    or d                                          ; $7148: $b2
    ld a, $2c                                     ; $7149: $3e $2c
    ret nz                                        ; $714b: $c0

    ld [hl], $4a                                  ; $714c: $36 $4a
    call c, $db1f                                 ; $714e: $dc $1f $db
    ld h, e                                       ; $7151: $63
    ld b, b                                       ; $7152: $40
    dec d                                         ; $7153: $15
    or [hl]                                       ; $7154: $b6
    sub $94                                       ; $7155: $d6 $94
    ld b, e                                       ; $7157: $43
    and a                                         ; $7158: $a7
    ld e, e                                       ; $7159: $5b
    sbc b                                         ; $715a: $98
    or [hl]                                       ; $715b: $b6
    rla                                           ; $715c: $17
    jp z, $c618                                   ; $715d: $ca $18 $c6

    ld l, l                                       ; $7160: $6d
    ld a, [$e700]                                 ; $7161: $fa $00 $e7
    ld [hl], c                                    ; $7164: $71
    and c                                         ; $7165: $a1
    ld h, [hl]                                    ; $7166: $66
    db $f4                                        ; $7167: $f4
    rra                                           ; $7168: $1f
    reti                                          ; $7169: $d9


    jp hl                                         ; $716a: $e9


    ld d, $a6                                     ; $716b: $16 $a6
    db $ed                                        ; $716d: $ed
    add l                                         ; $716e: $85
    ld c, l                                       ; $716f: $4d
    ld c, l                                       ; $7170: $4d
    ld e, b                                       ; $7171: $58
    ret nc                                        ; $7172: $d0

    jr z, jr_06a_7111                             ; $7173: $28 $9c

    ld h, [hl]                                    ; $7175: $66
    ret z                                         ; $7176: $c8

    ld a, [hl+]                                   ; $7177: $2a
    ld [hl], a                                    ; $7178: $77
    dec bc                                        ; $7179: $0b
    ld d, e                                       ; $717a: $53
    jp hl                                         ; $717b: $e9


    ld e, [hl]                                    ; $717c: $5e
    sbc [hl]                                      ; $717d: $9e
    ld b, $56                                     ; $717e: $06 $56
    dec e                                         ; $7180: $1d
    ei                                            ; $7181: $fb
    db $d3                                        ; $7182: $d3
    jp $fbc8                                      ; $7183: $c3 $c8 $fb


    inc bc                                        ; $7186: $03
    db $db                                        ; $7187: $db
    cp e                                          ; $7188: $bb
    add l                                         ; $7189: $85
    ld l, c                                       ; $718a: $69
    ld a, e                                       ; $718b: $7b
    and c                                         ; $718c: $a1
    ret nc                                        ; $718d: $d0

    cp h                                          ; $718e: $bc
    sub $30                                       ; $718f: $d6 $30
    adc b                                         ; $7191: $88
    add hl, de                                    ; $7192: $19
    sbc e                                         ; $7193: $9b
    cp d                                          ; $7194: $ba
    ld c, l                                       ; $7195: $4d
    jr c, jr_06a_7135                             ; $7196: $38 $9d

    xor [hl]                                      ; $7198: $ae
    jr nz, jr_06a_71fb                            ; $7199: $20 $60

    sbc d                                         ; $719b: $9a
    ld e, h                                       ; $719c: $5c
    ld l, e                                       ; $719d: $6b
    jp z, Jump_000_19a1                           ; $719e: $ca $a1 $19

    jp nc, $bd1f                                  ; $71a1: $d2 $1f $bd

    ccf                                           ; $71a4: $3f
    sub a                                         ; $71a5: $97
    ld c, e                                       ; $71a6: $4b
    or $9f                                        ; $71a7: $f6 $9f
    and a                                         ; $71a9: $a7
    db $ec                                        ; $71aa: $ec
    cp d                                          ; $71ab: $ba
    cp $b0                                        ; $71ac: $fe $b0
    call z, $ec6e                                 ; $71ae: $cc $6e $ec
    ld [hl], h                                    ; $71b1: $74
    dec bc                                        ; $71b2: $0b
    db $d3                                        ; $71b3: $d3
    or $42                                        ; $71b4: $f6 $42
    and e                                         ; $71b6: $a3
    ld [hl], b                                    ; $71b7: $70
    cp d                                          ; $71b8: $ba
    xor [hl]                                      ; $71b9: $ae
    rst $38                                       ; $71ba: $ff
    ld b, d                                       ; $71bb: $42

jr_06a_71bc:
    and a                                         ; $71bc: $a7
    reti                                          ; $71bd: $d9


    add $bb                                       ; $71be: $c6 $bb
    cp e                                          ; $71c0: $bb
    rst $20                                       ; $71c1: $e7
    db $fd                                        ; $71c2: $fd
    ld [hl], e                                    ; $71c3: $73
    rst $30                                       ; $71c4: $f7
    ld a, [c]                                     ; $71c5: $f2
    dec h                                         ; $71c6: $25
    ccf                                           ; $71c7: $3f
    ld c, c                                       ; $71c8: $49
    adc c                                         ; $71c9: $89
    sbc b                                         ; $71ca: $98
    pop de                                        ; $71cb: $d1

jr_06a_71cc:
    ld [$e559], sp                                ; $71cc: $08 $59 $e5
    ld l, e                                       ; $71cf: $6b
    ld h, b                                       ; $71d0: $60
    push de                                       ; $71d1: $d5
    or c                                          ; $71d2: $b1
    ccf                                           ; $71d3: $3f
    dec a                                         ; $71d4: $3d
    adc h                                         ; $71d5: $8c
    cp h                                          ; $71d6: $bc
    ccf                                           ; $71d7: $3f
    db $db                                        ; $71d8: $db
    cp e                                          ; $71d9: $bb
    add l                                         ; $71da: $85
    ld l, c                                       ; $71db: $69
    ld a, e                                       ; $71dc: $7b
    and c                                         ; $71dd: $a1
    sbc $79                                       ; $71de: $de $79
    push af                                       ; $71e0: $f5
    ld l, l                                       ; $71e1: $6d
    sbc [hl]                                      ; $71e2: $9e
    rst $20                                       ; $71e3: $e7
    add l                                         ; $71e4: $85
    ld l, c                                       ; $71e5: $69
    ld b, b                                       ; $71e6: $40
    sub l                                         ; $71e7: $95
    rst $08                                       ; $71e8: $cf
    ld a, [de]                                    ; $71e9: $1a
    ret c                                         ; $71ea: $d8

    sbc a                                         ; $71eb: $9f
    ld e, $46                                     ; $71ec: $1e $46
    ld l, [hl]                                    ; $71ee: $6e
    ld a, [$a700]                                 ; $71ef: $fa $00 $a7
    sbc [hl]                                      ; $71f2: $9e
    jp c, $cd34                                   ; $71f3: $da $34 $cd

    add sp, -$5b                                  ; $71f6: $e8 $a5
    ld [hl], $a0                                  ; $71f8: $36 $a0
    adc c                                         ; $71fa: $89

jr_06a_71fb:
    or e                                          ; $71fb: $b3
    ld e, [hl]                                    ; $71fc: $5e
    jr c, jr_06a_71bc                             ; $71fd: $38 $bd

    ld a, [c]                                     ; $71ff: $f2
    and l                                         ; $7200: $a5
    db $d3                                        ; $7201: $d3
    adc b                                         ; $7202: $88
    add d                                         ; $7203: $82
    or b                                          ; $7204: $b0
    add h                                         ; $7205: $84
    ld b, [hl]                                    ; $7206: $46
    sub $a7                                       ; $7207: $d6 $a7
    ld hl, $d440                                  ; $7209: $21 $40 $d4
    ld d, e                                       ; $720c: $53
    ld c, a                                       ; $720d: $4f

Jump_06a_720e:
    ld l, l                                       ; $720e: $6d
    sbc d                                         ; $720f: $9a
    ld h, [hl]                                    ; $7210: $66
    db $f4                                        ; $7211: $f4
    ld d, d                                       ; $7212: $52
    dec de                                        ; $7213: $1b
    ret nc                                        ; $7214: $d0

    call nz, $2f59                                ; $7215: $c4 $59 $2f
    sbc h                                         ; $7218: $9c
    ld e, [hl]                                    ; $7219: $5e
    ld sp, hl                                     ; $721a: $f9
    jp nc, $4469                                  ; $721b: $d2 $69 $44

    ld b, c                                       ; $721e: $41

jr_06a_721f:
    ld e, b                                       ; $721f: $58
    jp nz, $df7d                                  ; $7220: $c2 $7d $df

    rra                                           ; $7223: $1f
    sub a                                         ; $7224: $97
    ld hl, $a726                                  ; $7225: $21 $26 $a7
    ld c, d                                       ; $7228: $4a
    rla                                           ; $7229: $17
    jr jr_06a_71cc                                ; $722a: $18 $a0

    dec c                                         ; $722c: $0d
    xor h                                         ; $722d: $ac
    ld a, h                                       ; $722e: $7c
    ld sp, $4ac9                                  ; $722f: $31 $c9 $4a
    ld hl, $0fee                                  ; $7232: $21 $ee $0f
    sub a                                         ; $7235: $97

Call_06a_7236:
    pop de                                        ; $7236: $d1
    ldh [$65], a                                  ; $7237: $e0 $65
    push bc                                       ; $7239: $c5
    rst $38                                       ; $723a: $ff
    db $ec                                        ; $723b: $ec
    cp b                                          ; $723c: $b8
    ld a, h                                       ; $723d: $7c
    ld [c], a                                     ; $723e: $e2
    cp [hl]                                       ; $723f: $be
    ld hl, $6806                                  ; $7240: $21 $06 $68
    sbc l                                         ; $7243: $9d
    xor h                                         ; $7244: $ac
    rla                                           ; $7245: $17
    cpl                                           ; $7246: $2f
    cp a                                          ; $7247: $bf
    push af                                       ; $7248: $f5
    db $d3                                        ; $7249: $d3
    jr c, @-$53                                   ; $724a: $38 $ab

    reti                                          ; $724c: $d9


    ldh a, [rSB]                                  ; $724d: $f0 $01

jr_06a_724f:
    ld [c], a                                     ; $724f: $e2
    dec a                                         ; $7250: $3d
    rst $18                                       ; $7251: $df
    pop de                                        ; $7252: $d1
    ld [bc], a                                    ; $7253: $02
    xor l                                         ; $7254: $ad
    db $d3                                        ; $7255: $d3
    dec bc                                        ; $7256: $0b
    daa                                           ; $7257: $27
    dec a                                         ; $7258: $3d
    rst $30                                       ; $7259: $f7
    ld a, l                                       ; $725a: $7d
    ld a, a                                       ; $725b: $7f
    rla                                           ; $725c: $17
    ld c, [hl]                                    ; $725d: $4e
    ld a, d                                       ; $725e: $7a
    ld a, d                                       ; $725f: $7a
    cp [hl]                                       ; $7260: $be
    and e                                         ; $7261: $a3
    dec b                                         ; $7262: $05
    add [hl]                                      ; $7263: $86
    reti                                          ; $7264: $d9


    ldh a, [rSB]                                  ; $7265: $f0 $01
    db $db                                        ; $7267: $db
    add h                                         ; $7268: $84
    db $d3                                        ; $7269: $d3
    ld a, a                                       ; $726a: $7f
    ld d, $fc                                     ; $726b: $16 $fc
    rst $38                                       ; $726d: $ff
    sbc e                                         ; $726e: $9b
    ld c, b                                       ; $726f: $48
    call $9e68                                    ; $7270: $cd $68 $9e
    jr nc, jr_06a_724f                            ; $7273: $30 $da

    pop de                                        ; $7275: $d1
    ld l, [hl]                                    ; $7276: $6e
    or [hl]                                       ; $7277: $b6
    sub c                                         ; $7278: $91
    and e                                         ; $7279: $a3
    dec c                                         ; $727a: $0d
    add sp, $79                                   ; $727b: $e8 $79
    ld a, b                                       ; $727d: $78
    ld sp, hl                                     ; $727e: $f9
    db $fd                                        ; $727f: $fd
    ld a, b                                       ; $7280: $78
    ld [hl], $5a                                  ; $7281: $36 $5a
    db $f4                                        ; $7283: $f4
    inc e                                         ; $7284: $1c
    ld [hl], e                                    ; $7285: $73
    add d                                         ; $7286: $82
    xor c                                         ; $7287: $a9
    dec a                                         ; $7288: $3d
    adc a                                         ; $7289: $8f
    ld [hl], d                                    ; $728a: $72
    sub h                                         ; $728b: $94
    jp c, Jump_06a_4394                           ; $728c: $da $94 $43

    ld d, l                                       ; $728f: $55
    jr c, jr_06a_721f                             ; $7290: $38 $8d

    ld hl, sp-$5f                                 ; $7292: $f8 $a1
    cp d                                          ; $7294: $ba
    ld h, [hl]                                    ; $7295: $66
    ld l, a                                       ; $7296: $6f
    or h                                          ; $7297: $b4
    ld a, $8d                                     ; $7298: $3e $8d
    add l                                         ; $729a: $85
    ld h, [hl]                                    ; $729b: $66
    or $1f                                        ; $729c: $f6 $1f
    jp hl                                         ; $729e: $e9


    ld a, c                                       ; $729f: $79
    sub c                                         ; $72a0: $91
    db $eb                                        ; $72a1: $eb
    add l                                         ; $72a2: $85
    ld [hl], e                                    ; $72a3: $73
    ld a, a                                       ; $72a4: $7f
    sub a                                         ; $72a5: $97
    ld hl, $036a                                  ; $72a6: $21 $6a $03
    xor d                                         ; $72a9: $aa
    ld e, b                                       ; $72aa: $58
    ldh a, [rIE]                                  ; $72ab: $f0 $ff
    ld l, a                                       ; $72ad: $6f
    ld [hl+], a                                   ; $72ae: $22
    xor l                                         ; $72af: $ad
    add a                                         ; $72b0: $87
    ld l, a                                       ; $72b1: $6f
    or [hl]                                       ; $72b2: $b6
    sub c                                         ; $72b3: $91
    ld [hl], e                                    ; $72b4: $73
    ld a, b                                       ; $72b5: $78
    add e                                         ; $72b6: $83
    inc sp                                        ; $72b7: $33
    add $8c                                       ; $72b8: $c6 $8c
    ld a, [hl-]                                   ; $72ba: $3a
    ld e, c                                       ; $72bb: $59
    call nz, Call_06a_627f                        ; $72bc: $c4 $7f $62
    or [hl]                                       ; $72bf: $b6
    xor c                                         ; $72c0: $a9
    ld e, h                                       ; $72c1: $5c
    ld c, e                                       ; $72c2: $4b

jr_06a_72c3:
    cp a                                          ; $72c3: $bf
    ld a, a                                       ; $72c4: $7f
    ld [$d8d3], a                                 ; $72c5: $ea $d3 $d8
    rst $18                                       ; $72c8: $df
    ld e, $ad                                     ; $72c9: $1e $ad
    ld c, [hl]                                    ; $72cb: $4e
    or d                                          ; $72cc: $b2
    rst $38                                       ; $72cd: $ff
    ld c, b                                       ; $72ce: $48
    rst $08                                       ; $72cf: $cf
    adc e                                         ; $72d0: $8b
    ld e, h                                       ; $72d1: $5c
    cpl                                           ; $72d2: $2f
    sbc h                                         ; $72d3: $9c
    ld b, $f4                                     ; $72d4: $06 $f4
    or a                                          ; $72d6: $b7
    sub c                                         ; $72d7: $91
    and e                                         ; $72d8: $a3
    rst $30                                       ; $72d9: $f7
    rlca                                          ; $72da: $07
    db $db                                        ; $72db: $db
    add h                                         ; $72dc: $84
    db $d3                                        ; $72dd: $d3
    ld a, a                                       ; $72de: $7f
    ld d, $fc                                     ; $72df: $16 $fc
    rst $38                                       ; $72e1: $ff
    sbc e                                         ; $72e2: $9b
    ld c, b                                       ; $72e3: $48
    call $9e68                                    ; $72e4: $cd $68 $9e
    jr nc, jr_06a_72c3                            ; $72e7: $30 $da

    pop de                                        ; $72e9: $d1
    ld l, [hl]                                    ; $72ea: $6e
    or [hl]                                       ; $72eb: $b6
    sub c                                         ; $72ec: $91
    and e                                         ; $72ed: $a3
    dec c                                         ; $72ee: $0d
    add sp, $79                                   ; $72ef: $e8 $79
    ld a, b                                       ; $72f1: $78
    ld sp, hl                                     ; $72f2: $f9
    db $fd                                        ; $72f3: $fd
    ld a, b                                       ; $72f4: $78
    ld [hl], $5a                                  ; $72f5: $36 $5a
    db $f4                                        ; $72f7: $f4
    inc e                                         ; $72f8: $1c
    ld [hl], e                                    ; $72f9: $73
    add d                                         ; $72fa: $82
    xor c                                         ; $72fb: $a9
    dec a                                         ; $72fc: $3d
    adc a                                         ; $72fd: $8f
    ld [hl], d                                    ; $72fe: $72
    sub h                                         ; $72ff: $94
    jp c, Jump_06a_4394                           ; $7300: $da $94 $43

    ld d, l                                       ; $7303: $55
    jr c, @-$71                                   ; $7304: $38 $8d

    ld hl, sp-$5f                                 ; $7306: $f8 $a1
    cp d                                          ; $7308: $ba
    ld h, [hl]                                    ; $7309: $66
    ld l, a                                       ; $730a: $6f
    or h                                          ; $730b: $b4
    ld a, $8d                                     ; $730c: $3e $8d
    add l                                         ; $730e: $85
    ld h, [hl]                                    ; $730f: $66
    or $1f                                        ; $7310: $f6 $1f
    jp hl                                         ; $7312: $e9


    ld a, c                                       ; $7313: $79
    sub c                                         ; $7314: $91
    db $eb                                        ; $7315: $eb
    add l                                         ; $7316: $85
    db $d3                                        ; $7317: $d3
    add b                                         ; $7318: $80
    cp $36                                        ; $7319: $fe $36
    ld [hl], d                                    ; $731b: $72
    db $f4                                        ; $731c: $f4
    ld l, [hl]                                    ; $731d: $6e
    ld b, d                                       ; $731e: $42
    inc sp                                        ; $731f: $33
    and d                                         ; $7320: $a2
    ld [hl], $a0                                  ; $7321: $36 $a0
    adc d                                         ; $7323: $8a
    dec b                                         ; $7324: $05
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    ld h, $d2                                     ; $7327: $26 $d2
    ld a, d                                       ; $7329: $7a
    ld hl, sp+$66                                 ; $732a: $f8 $66
    dec de                                        ; $732c: $1b
    add hl, sp                                    ; $732d: $39
    add a                                         ; $732e: $87
    scf                                           ; $732f: $37
    jr c, jr_06a_7395                             ; $7330: $38 $63

    call z, $93a8                                 ; $7332: $cc $a8 $93
    ld b, l                                       ; $7335: $45
    db $fc                                        ; $7336: $fc
    daa                                           ; $7337: $27
    ld h, [hl]                                    ; $7338: $66
    sbc e                                         ; $7339: $9b
    jp z, $f4b5                                   ; $733a: $ca $b5 $f4

    ei                                            ; $733d: $fb
    and a                                         ; $733e: $a7
    ld a, $8d                                     ; $733f: $3e $8d
    db $fd                                        ; $7341: $fd
    db $ed                                        ; $7342: $ed
    pop de                                        ; $7343: $d1
    ld [$fb24], a                                 ; $7344: $ea $24 $fb
    adc a                                         ; $7347: $8f
    db $f4                                        ; $7348: $f4
    cp h                                          ; $7349: $bc
    ret z                                         ; $734a: $c8

    push af                                       ; $734b: $f5
    jp nz, Jump_06a_4069                          ; $734c: $c2 $69 $40

    ld a, a                                       ; $734f: $7f
    dec de                                        ; $7350: $1b
    add hl, sp                                    ; $7351: $39
    ld a, d                                       ; $7352: $7a
    ld a, a                                       ; $7353: $7f
    ld [c], a                                     ; $7354: $e2
    jp hl                                         ; $7355: $e9


    ld sp, $2a8a                                  ; $7356: $31 $8a $2a
    ld h, b                                       ; $7359: $60
    xor l                                         ; $735a: $ad
    db $ec                                        ; $735b: $ec
    ccf                                           ; $735c: $3f
    ld h, [hl]                                    ; $735d: $66
    or b                                          ; $735e: $b0
    ld a, [$9634]                                 ; $735f: $fa $34 $96
    db $fd                                        ; $7362: $fd
    add hl, hl                                    ; $7363: $29
    add hl, hl                                    ; $7364: $29
    ld [$9a16], a                                 ; $7365: $ea $16 $9a
    db $ed                                        ; $7368: $ed
    cp h                                          ; $7369: $bc
    ccf                                           ; $736a: $3f
    sbc e                                         ; $736b: $9b
    ld l, c                                       ; $736c: $69
    db $d3                                        ; $736d: $d3
    dec e                                         ; $736e: $1d
    halt                                          ; $736f: $76
    scf                                           ; $7370: $37
    ld [hl], c                                    ; $7371: $71
    ld [hl], d                                    ; $7372: $72
    add [hl]                                      ; $7373: $86
    adc c                                         ; $7374: $89
    ld a, $e7                                     ; $7375: $3e $e7
    call Call_06a_7f2b                            ; $7377: $cd $2b $7f
    cp h                                          ; $737a: $bc
    adc h                                         ; $737b: $8c
    ld b, [hl]                                    ; $737c: $46
    ld [hl], $41                                  ; $737d: $36 $41
    rst $38                                       ; $737f: $ff
    ld e, c                                       ; $7380: $59
    ret c                                         ; $7381: $d8

    add b                                         ; $7382: $80
    ld l, [hl]                                    ; $7383: $6e
    ld h, l                                       ; $7384: $65
    ld a, [$e8b1]                                 ; $7385: $fa $b1 $e8
    ld a, c                                       ; $7388: $79
    ld a, b                                       ; $7389: $78
    ld sp, hl                                     ; $738a: $f9
    xor l                                         ; $738b: $ad
    and a                                         ; $738c: $a7
    dec a                                         ; $738d: $3d
    ld [hl], $a0                                  ; $738e: $36 $a0
    ld e, e                                       ; $7390: $5b
    ld h, $2d                                     ; $7391: $26 $2d
    adc b                                         ; $7393: $88
    sub [hl]                                      ; $7394: $96

jr_06a_7395:
    push af                                       ; $7395: $f5
    cp $00                                        ; $7396: $fe $00
    ld [c], a                                     ; $7398: $e2
    add hl, de                                    ; $7399: $19
    pop af                                        ; $739a: $f1
    ld a, a                                       ; $739b: $7f
    and e                                         ; $739c: $a3
    sub h                                         ; $739d: $94
    adc b                                         ; $739e: $88
    add hl, de                                    ; $739f: $19
    and d                                         ; $73a0: $a2
    rrca                                          ; $73a1: $0f
    ld [c], a                                     ; $73a2: $e2
    adc e                                         ; $73a3: $8b
    rst $00                                       ; $73a4: $c7
    ld l, c                                       ; $73a5: $69
    rst $08                                       ; $73a6: $cf
    ld [hl], l                                    ; $73a7: $75
    jp nc, Jump_000_20b3                          ; $73a8: $d2 $b3 $20

    adc h                                         ; $73ab: $8c
    pop hl                                        ; $73ac: $e1
    inc bc                                        ; $73ad: $03
    rst $20                                       ; $73ae: $e7
    ld a, $c3                                     ; $73af: $3e $c3
    sbc a                                         ; $73b1: $9f
    rst $00                                       ; $73b2: $c7
    ld a, $3b                                     ; $73b3: $3e $3b
    db $10                                        ; $73b5: $10
    inc sp                                        ; $73b6: $33
    or h                                          ; $73b7: $b4
    ld c, [hl]                                    ; $73b8: $4e
    or d                                          ; $73b9: $b2
    db $10                                        ; $73ba: $10
    db $ec                                        ; $73bb: $ec
    cpl                                           ; $73bc: $2f
    and e                                         ; $73bd: $a3
    jp nz, Jump_06a_4069                          ; $73be: $c2 $69 $40

    ld de, $e961                                  ; $73c1: $11 $61 $e9
    rst $00                                       ; $73c4: $c7
    ei                                            ; $73c5: $fb
    inc bc                                        ; $73c6: $03
    add hl, bc                                    ; $73c7: $09
    adc $a5                                       ; $73c8: $ce $a5
    db $d3                                        ; $73ca: $d3
    ret                                           ; $73cb: $c9


    db $e4                                        ; $73cc: $e4
    add [hl]                                      ; $73cd: $86
    sbc [hl]                                      ; $73ce: $9e
    pop de                                        ; $73cf: $d1
    jr c, jr_06a_73d4                             ; $73d0: $38 $02

    db $10                                        ; $73d2: $10
    di                                            ; $73d3: $f3

jr_06a_73d4:
    call c, $971f                                 ; $73d4: $dc $1f $97
    ld [c], a                                     ; $73d7: $e2
    rst $00                                       ; $73d8: $c7
    bit 5, h                                      ; $73d9: $cb $6c
    ld h, b                                       ; $73db: $60
    inc de                                        ; $73dc: $13
    ld h, a                                       ; $73dd: $67
    cp l                                          ; $73de: $bd
    ld [hl], b                                    ; $73df: $70
    ld a, $e7                                     ; $73e0: $3e $e7
    dec l                                         ; $73e2: $2d
    rst $08                                       ; $73e3: $cf
    ld b, a                                       ; $73e4: $47
    inc c                                         ; $73e5: $0c
    di                                            ; $73e6: $f3
    ld bc, $c057                                  ; $73e7: $01 $57 $c0
    db $e4                                        ; $73ea: $e4
    ld e, e                                       ; $73eb: $5b
    sub [hl]                                      ; $73ec: $96
    scf                                           ; $73ed: $37
    ld c, [hl]                                    ; $73ee: $4e
    ccf                                           ; $73ef: $3f
    ld d, a                                       ; $73f0: $57
    ret nz                                        ; $73f1: $c0

    jp nz, Jump_06a_6f93                          ; $73f2: $c2 $93 $6f

    ld e, c                                       ; $73f5: $59
    sbc $38                                       ; $73f6: $de $38
    db $fd                                        ; $73f8: $fd
    nop                                           ; $73f9: $00
    rla                                           ; $73fa: $17
    call nz, $311f                                ; $73fb: $c4 $1f $31
    cp h                                          ; $73fe: $bc
    ld sp, hl                                     ; $73ff: $f9
    nop                                           ; $7400: $00
    db $fd                                        ; $7401: $fd
    nop                                           ; $7402: $00
    db $fd                                        ; $7403: $fd
    nop                                           ; $7404: $00
    db $fd                                        ; $7405: $fd

Call_06a_7406:
    nop                                           ; $7406: $00
    db $fd                                        ; $7407: $fd
    nop                                           ; $7408: $00
    db $fd                                        ; $7409: $fd
    nop                                           ; $740a: $00
    db $fd                                        ; $740b: $fd
    nop                                           ; $740c: $00
    db $fd                                        ; $740d: $fd
    nop                                           ; $740e: $00
    db $fd                                        ; $740f: $fd
    nop                                           ; $7410: $00
    db $fd                                        ; $7411: $fd
    nop                                           ; $7412: $00
    db $fd                                        ; $7413: $fd
    nop                                           ; $7414: $00
    db $fd                                        ; $7415: $fd
    nop                                           ; $7416: $00
    db $fd                                        ; $7417: $fd
    nop                                           ; $7418: $00
    db $fd                                        ; $7419: $fd
    nop                                           ; $741a: $00
    db $fd                                        ; $741b: $fd
    nop                                           ; $741c: $00
    db $fd                                        ; $741d: $fd

jr_06a_741e:
    nop                                           ; $741e: $00
    db $fd                                        ; $741f: $fd
    nop                                           ; $7420: $00
    db $fd                                        ; $7421: $fd
    nop                                           ; $7422: $00
    db $fd                                        ; $7423: $fd
    nop                                           ; $7424: $00
    db $fd                                        ; $7425: $fd
    nop                                           ; $7426: $00
    db $fd                                        ; $7427: $fd
    nop                                           ; $7428: $00
    db $fd                                        ; $7429: $fd
    nop                                           ; $742a: $00
    db $fd                                        ; $742b: $fd
    nop                                           ; $742c: $00
    db $fd                                        ; $742d: $fd
    nop                                           ; $742e: $00
    db $fd                                        ; $742f: $fd
    nop                                           ; $7430: $00
    db $fd                                        ; $7431: $fd
    nop                                           ; $7432: $00
    db $fd                                        ; $7433: $fd
    nop                                           ; $7434: $00
    db $fd                                        ; $7435: $fd
    nop                                           ; $7436: $00
    db $fd                                        ; $7437: $fd
    nop                                           ; $7438: $00
    db $fd                                        ; $7439: $fd
    nop                                           ; $743a: $00
    db $fd                                        ; $743b: $fd
    nop                                           ; $743c: $00
    db $fd                                        ; $743d: $fd
    nop                                           ; $743e: $00
    db $fd                                        ; $743f: $fd
    nop                                           ; $7440: $00
    db $fd                                        ; $7441: $fd
    nop                                           ; $7442: $00
    db $fd                                        ; $7443: $fd
    nop                                           ; $7444: $00
    db $fd                                        ; $7445: $fd
    nop                                           ; $7446: $00

jr_06a_7447:
    db $fd                                        ; $7447: $fd
    nop                                           ; $7448: $00
    db $fd                                        ; $7449: $fd
    nop                                           ; $744a: $00
    db $fd                                        ; $744b: $fd
    nop                                           ; $744c: $00
    db $fd                                        ; $744d: $fd
    nop                                           ; $744e: $00
    db $fd                                        ; $744f: $fd
    nop                                           ; $7450: $00
    db $fd                                        ; $7451: $fd
    nop                                           ; $7452: $00
    db $fd                                        ; $7453: $fd
    nop                                           ; $7454: $00
    ld [c], a                                     ; $7455: $e2
    ld sp, $16ef                                  ; $7456: $31 $ef $16
    ld h, $cf                                     ; $7459: $26 $cf
    rlca                                          ; $745b: $07

jr_06a_745c:
    adc c                                         ; $745c: $89
    or e                                          ; $745d: $b3
    ld e, [hl]                                    ; $745e: $5e
    jr c, jr_06a_741e                             ; $745f: $38 $bd

    ld a, [c]                                     ; $7461: $f2
    and l                                         ; $7462: $a5
    db $d3                                        ; $7463: $d3
    adc b                                         ; $7464: $88
    add d                                         ; $7465: $82
    or b                                          ; $7466: $b0
    add h                                         ; $7467: $84
    rrca                                          ; $7468: $0f
    rst $20                                       ; $7469: $e7
    ld e, e                                       ; $746a: $5b
    cp b                                          ; $746b: $b8
    sbc e                                         ; $746c: $9b
    jr c, @-$13                                   ; $746d: $38 $eb

    add l                                         ; $746f: $85
    db $d3                                        ; $7470: $d3
    dec hl                                        ; $7471: $2b
    ld e, a                                       ; $7472: $5f
    ld a, [hl-]                                   ; $7473: $3a
    adc l                                         ; $7474: $8d
    jr z, jr_06a_747f                             ; $7475: $28 $08

    ld c, e                                       ; $7477: $4b
    ld hl, sp+$00                                 ; $7478: $f8 $00
    adc c                                         ; $747a: $89
    or e                                          ; $747b: $b3
    ld e, [hl]                                    ; $747c: $5e
    jr c, jr_06a_745c                             ; $747d: $38 $dd

jr_06a_747f:
    ld [bc], a                                    ; $747f: $02
    di                                            ; $7480: $f3
    cp h                                          ; $7481: $bc
    rst $38                                       ; $7482: $ff
    dec b                                         ; $7483: $05
    ld a, [hl]                                    ; $7484: $7e
    adc c                                         ; $7485: $89
    or e                                          ; $7486: $b3
    ld e, [hl]                                    ; $7487: $5e
    jr c, jr_06a_7447                             ; $7488: $38 $bd

    ld [c], a                                     ; $748a: $e2
    ld h, l                                       ; $748b: $65
    jp z, $f827                                   ; $748c: $ca $27 $f8

    inc bc                                        ; $748f: $03
    adc c                                         ; $7490: $89
    or e                                          ; $7491: $b3
    ld e, [hl]                                    ; $7492: $5e
    jr c, jr_06a_74aa                             ; $7493: $38 $15

    rst $30                                       ; $7495: $f7
    sbc a                                         ; $7496: $9f
    ld b, h                                       ; $7497: $44
    call z, $fc0c                                 ; $7498: $cc $0c $fc
    nop                                           ; $749b: $00
    rst $20                                       ; $749c: $e7
    ld e, e                                       ; $749d: $5b
    cp b                                          ; $749e: $b8
    sbc e                                         ; $749f: $9b
    jr c, @-$13                                   ; $74a0: $38 $eb

    add l                                         ; $74a2: $85
    ld d, e                                       ; $74a3: $53
    ld [hl], c                                    ; $74a4: $71
    rst $38                                       ; $74a5: $ff
    ld c, c                                       ; $74a6: $49
    call nz, $c0cc                                ; $74a7: $c4 $cc $c0

jr_06a_74aa:
    rrca                                          ; $74aa: $0f
    db $fd                                        ; $74ab: $fd
    nop                                           ; $74ac: $00
    db $fd                                        ; $74ad: $fd
    nop                                           ; $74ae: $00
    db $fd                                        ; $74af: $fd
    nop                                           ; $74b0: $00
    db $fd                                        ; $74b1: $fd
    nop                                           ; $74b2: $00
    db $fd                                        ; $74b3: $fd
    nop                                           ; $74b4: $00
    db $fd                                        ; $74b5: $fd
    nop                                           ; $74b6: $00
    db $fd                                        ; $74b7: $fd
    nop                                           ; $74b8: $00
    db $fd                                        ; $74b9: $fd
    nop                                           ; $74ba: $00
    db $fd                                        ; $74bb: $fd
    nop                                           ; $74bc: $00
    db $fd                                        ; $74bd: $fd
    nop                                           ; $74be: $00
    db $fd                                        ; $74bf: $fd
    nop                                           ; $74c0: $00
    rla                                           ; $74c1: $17
    cp a                                          ; $74c2: $bf
    sub l                                         ; $74c3: $95
    ld c, l                                       ; $74c4: $4d
    inc bc                                        ; $74c5: $03
    cp d                                          ; $74c6: $ba
    sub l                                         ; $74c7: $95
    ld c, e                                       ; $74c8: $4b
    ld a, b                                       ; $74c9: $78
    db $eb                                        ; $74ca: $eb
    rrca                                          ; $74cb: $0f
    add [hl]                                      ; $74cc: $86
    ld a, [hl]                                    ; $74cd: $7e
    db $fd                                        ; $74ce: $fd
    nop                                           ; $74cf: $00
    db $fd                                        ; $74d0: $fd
    nop                                           ; $74d1: $00
    db $fd                                        ; $74d2: $fd
    nop                                           ; $74d3: $00
    db $fd                                        ; $74d4: $fd
    nop                                           ; $74d5: $00
    db $fd                                        ; $74d6: $fd
    nop                                           ; $74d7: $00
    db $fd                                        ; $74d8: $fd
    nop                                           ; $74d9: $00
    db $fd                                        ; $74da: $fd
    nop                                           ; $74db: $00
    db $fd                                        ; $74dc: $fd
    nop                                           ; $74dd: $00
    db $fd                                        ; $74de: $fd
    nop                                           ; $74df: $00
    db $fd                                        ; $74e0: $fd
    nop                                           ; $74e1: $00
    db $fd                                        ; $74e2: $fd
    nop                                           ; $74e3: $00
    db $fd                                        ; $74e4: $fd
    nop                                           ; $74e5: $00
    db $fd                                        ; $74e6: $fd
    nop                                           ; $74e7: $00
    db $fd                                        ; $74e8: $fd
    nop                                           ; $74e9: $00
    db $fd                                        ; $74ea: $fd
    nop                                           ; $74eb: $00
    db $fd                                        ; $74ec: $fd
    nop                                           ; $74ed: $00
    db $fd                                        ; $74ee: $fd
    nop                                           ; $74ef: $00
    db $fd                                        ; $74f0: $fd
    nop                                           ; $74f1: $00
    db $fd                                        ; $74f2: $fd
    nop                                           ; $74f3: $00
    db $fd                                        ; $74f4: $fd
    nop                                           ; $74f5: $00
    db $fd                                        ; $74f6: $fd
    nop                                           ; $74f7: $00
    rst $20                                       ; $74f8: $e7
    pop hl                                        ; $74f9: $e1
    add hl, bc                                    ; $74fa: $09
    jr c, jr_06a_7515                             ; $74fb: $38 $18

    jp c, $26cb                                   ; $74fd: $da $cb $26

    adc h                                         ; $7500: $8c
    halt                                          ; $7501: $76
    rlca                                          ; $7502: $07
    dec a                                         ; $7503: $3d
    ld h, e                                       ; $7504: $63
    ret nc                                        ; $7505: $d0

    rrca                                          ; $7506: $0f
    db $fd                                        ; $7507: $fd
    nop                                           ; $7508: $00
    adc c                                         ; $7509: $89
    call nc, $96fc                                ; $750a: $d4 $fc $96
    inc h                                         ; $750d: $24
    or l                                          ; $750e: $b5
    add hl, bc                                    ; $750f: $09
    res 3, d                                      ; $7510: $cb $9a
    and $f7                                       ; $7512: $e6 $f7
    ld d, e                                       ; $7514: $53

jr_06a_7515:
    ccf                                           ; $7515: $3f
    adc c                                         ; $7516: $89
    call nc, $eebc                                ; $7517: $d4 $bc $ee
    ld l, c                                       ; $751a: $69
    inc bc                                        ; $751b: $03
    ld a, [hl+]                                   ; $751c: $2a
    xor $d9                                       ; $751d: $ee $d9
    db $dd                                        ; $751f: $dd
    inc sp                                        ; $7520: $33
    add $0f                                       ; $7521: $c6 $0f
    rst $20                                       ; $7523: $e7
    call z, $da32                                 ; $7524: $cc $32 $da
    add b                                         ; $7527: $80
    ld l, [hl]                                    ; $7528: $6e
    and $12                                       ; $7529: $e6 $12
    ldh a, [$4c]                                  ; $752b: $f0 $4c
    jr c, jr_06a_754e                             ; $752d: $38 $1f

    ld d, a                                       ; $752f: $57
    ret nc                                        ; $7530: $d0

    ld e, [hl]                                    ; $7531: $5e
    ld c, h                                       ; $7532: $4c
    ld d, d                                       ; $7533: $52
    cp e                                          ; $7534: $bb
    ld [hl], l                                    ; $7535: $75
    dec l                                         ; $7536: $2d
    ld a, l                                       ; $7537: $7d
    ld d, a                                       ; $7538: $57
    ld a, h                                       ; $7539: $7c
    ld sp, hl                                     ; $753a: $f9
    cp c                                          ; $753b: $b9
    sbc $ed                                       ; $753c: $de $ed
    ld a, [$fd00]                                 ; $753e: $fa $00 $fd
    nop                                           ; $7541: $00
    db $fd                                        ; $7542: $fd
    nop                                           ; $7543: $00
    db $fd                                        ; $7544: $fd
    nop                                           ; $7545: $00
    db $fd                                        ; $7546: $fd
    nop                                           ; $7547: $00
    db $fd                                        ; $7548: $fd
    nop                                           ; $7549: $00
    db $fd                                        ; $754a: $fd
    nop                                           ; $754b: $00
    db $fd                                        ; $754c: $fd
    nop                                           ; $754d: $00

jr_06a_754e:
    db $fd                                        ; $754e: $fd
    nop                                           ; $754f: $00
    db $fd                                        ; $7550: $fd
    nop                                           ; $7551: $00
    db $fd                                        ; $7552: $fd
    nop                                           ; $7553: $00
    db $fd                                        ; $7554: $fd
    nop                                           ; $7555: $00
    db $fd                                        ; $7556: $fd
    nop                                           ; $7557: $00
    db $fd                                        ; $7558: $fd
    nop                                           ; $7559: $00
    db $fd                                        ; $755a: $fd
    nop                                           ; $755b: $00
    db $fd                                        ; $755c: $fd
    nop                                           ; $755d: $00
    db $fd                                        ; $755e: $fd
    nop                                           ; $755f: $00
    db $fd                                        ; $7560: $fd
    nop                                           ; $7561: $00
    db $fd                                        ; $7562: $fd
    nop                                           ; $7563: $00
    rst $20                                       ; $7564: $e7
    dec l                                         ; $7565: $2d
    ld [hl], h                                    ; $7566: $74
    sbc c                                         ; $7567: $99
    rra                                           ; $7568: $1f
    db $fd                                        ; $7569: $fd
    nop                                           ; $756a: $00

Call_06a_756b:
    db $fd                                        ; $756b: $fd
    nop                                           ; $756c: $00
    db $fd                                        ; $756d: $fd
    nop                                           ; $756e: $00
    db $fd                                        ; $756f: $fd
    nop                                           ; $7570: $00
    db $fd                                        ; $7571: $fd
    nop                                           ; $7572: $00
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

Jump_06a_7615:
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
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
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

Jump_06a_7720:
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

Jump_06a_779e:
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

Jump_06a_7827:
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

Call_06a_7868:
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

Jump_06a_78a9:
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

Jump_06a_7994:
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

Jump_06a_79a1:
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
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
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

Jump_06a_7a33:
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
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
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

Jump_06a_7c36:
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

Call_06a_7e28:
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
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
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

Call_06a_7f2b:
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

Jump_06a_7f53:
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

Jump_06a_7f6e:
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff

Call_06a_7f73:
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
