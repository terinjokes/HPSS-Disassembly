; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    ld c, c                                       ; $4000: $49
    cpl                                           ; $4001: $2f
    or l                                          ; $4002: $b5
    pop af                                        ; $4003: $f1
    sbc [hl]                                      ; $4004: $9e
    ret                                           ; $4005: $c9


    add hl, hl                                    ; $4006: $29
    ld l, [hl]                                    ; $4007: $6e
    push hl                                       ; $4008: $e5
    ld c, h                                       ; $4009: $4c
    xor e                                         ; $400a: $ab
    and b                                         ; $400b: $a0
    add d                                         ; $400c: $82
    add $8a                                       ; $400d: $c6 $8a
    ld a, b                                       ; $400f: $78
    adc c                                         ; $4010: $89
    push hl                                       ; $4011: $e5
    add l                                         ; $4012: $85
    xor l                                         ; $4013: $ad
    sbc $73                                       ; $4014: $de $73
    add h                                         ; $4016: $84
    ld [hl+], a                                   ; $4017: $22
    pop de                                        ; $4018: $d1
    ld l, a                                       ; $4019: $6f
    ld a, [$334f]                                 ; $401a: $fa $4f $33
    set 7, b                                      ; $401d: $cb $f8
    nop                                           ; $401f: $00
    ld d, a                                       ; $4020: $57
    adc l                                         ; $4021: $8d
    and a                                         ; $4022: $a7
    ld sp, $bc90                                  ; $4023: $31 $90 $bc
    xor b                                         ; $4026: $a8
    ld l, e                                       ; $4027: $6b
    ld [hl], e                                    ; $4028: $73
    ld l, $99                                     ; $4029: $2e $99
    add c                                         ; $402b: $81
    cp c                                          ; $402c: $b9
    rst $38                                       ; $402d: $ff
    db $d3                                        ; $402e: $d3
    jp c, Jump_000_2e9c                           ; $402f: $da $9c $2e

    sbc c                                         ; $4032: $99
    ld d, c                                       ; $4033: $51
    ld a, h                                       ; $4034: $7c
    nop                                           ; $4035: $00
    ld c, a                                       ; $4036: $4f
    jp hl                                         ; $4037: $e9


    rst $38                                       ; $4038: $ff
    ld e, c                                       ; $4039: $59
    ld [hl], c                                    ; $403a: $71
    or l                                          ; $403b: $b5
    ld l, [hl]                                    ; $403c: $6e
    adc $2c                                       ; $403d: $ce $2c
    rla                                           ; $403f: $17
    sbc c                                         ; $4040: $99
    and l                                         ; $4041: $a5
    ld b, [hl]                                    ; $4042: $46
    ld a, b                                       ; $4043: $78
    ret z                                         ; $4044: $c8

    pop af                                        ; $4045: $f1
    ld e, [hl]                                    ; $4046: $5e
    ld l, d                                       ; $4047: $6a
    cpl                                           ; $4048: $2f
    halt                                          ; $4049: $76
    ld [hl-], a                                   ; $404a: $32
    ld a, b                                       ; $404b: $78
    ret z                                         ; $404c: $c8

    rla                                           ; $404d: $17
    di                                            ; $404e: $f3
    add $43                                       ; $404f: $c6 $43
    dec [hl]                                      ; $4051: $35
    ld l, $68                                     ; $4052: $2e $68
    xor $44                                       ; $4054: $ee $44
    add $dc                                       ; $4056: $c6 $dc
    adc h                                         ; $4058: $8c
    rrca                                          ; $4059: $0f
    xor a                                         ; $405a: $af
    ld a, a                                       ; $405b: $7f
    ld [hl+], a                                   ; $405c: $22
    ld sp, $4317                                  ; $405d: $31 $17 $43
    cp c                                          ; $4060: $b9
    ret nc                                        ; $4061: $d0

    db $fc                                        ; $4062: $fc
    add d                                         ; $4063: $82
    ld c, $90                                     ; $4064: $0e $90
    add hl, de                                    ; $4066: $19
    ret c                                         ; $4067: $d8

    add hl, bc                                    ; $4068: $09
    or l                                          ; $4069: $b5
    ld l, [hl]                                    ; $406a: $6e
    ld l, $ac                                     ; $406b: $2e $ac
    add [hl]                                      ; $406d: $86
    sbc d                                         ; $406e: $9a
    pop af                                        ; $406f: $f1
    ld bc, $b5cf                                  ; $4070: $01 $cf $b5
    add hl, sp                                    ; $4073: $39
    db $f4                                        ; $4074: $f4
    ld l, l                                       ; $4075: $6d
    ld a, h                                       ; $4076: $7c
    nop                                           ; $4077: $00
    sub a                                         ; $4078: $97
    dec d                                         ; $4079: $15
    ld d, $74                                     ; $407a: $16 $74
    daa                                           ; $407c: $27
    db $e3                                        ; $407d: $e3
    jp nc, Jump_000_3b9a                          ; $407e: $d2 $9a $3b

    or a                                          ; $4081: $b7
    ret nc                                        ; $4082: $d0

    ld c, h                                       ; $4083: $4c
    xor a                                         ; $4084: $af
    ld c, l                                       ; $4085: $4d
    dec [hl]                                      ; $4086: $35
    ld d, b                                       ; $4087: $50
    adc b                                         ; $4088: $88
    cp [hl]                                       ; $4089: $be
    ret nc                                        ; $408a: $d0

    sub d                                         ; $408b: $92
    cp a                                          ; $408c: $bf
    ld [hl], d                                    ; $408d: $72
    nop                                           ; $408e: $00
    cpl                                           ; $408f: $2f
    or l                                          ; $4090: $b5
    pop af                                        ; $4091: $f1

Call_049_4092:
    ld e, [hl]                                    ; $4092: $5e
    ld b, h                                       ; $4093: $44
    and l                                         ; $4094: $a5
    ldh [rNR42], a                                ; $4095: $e0 $21
    ld [hl], $17                                  ; $4097: $36 $17
    db $fd                                        ; $4099: $fd
    ld a, [c]                                     ; $409a: $f2
    add d                                         ; $409b: $82
    ld l, $2c                                     ; $409c: $2e $2c
    rst $28                                       ; $409e: $ef
    ld b, e                                       ; $409f: $43
    rst $20                                       ; $40a0: $e7
    ld e, a                                       ; $40a1: $5f
    reti                                          ; $40a2: $d9


    adc h                                         ; $40a3: $8c
    rrca                                          ; $40a4: $0f
    rst $10                                       ; $40a5: $d7
    db $e4                                        ; $40a6: $e4
    ld c, [hl]                                    ; $40a7: $4e
    dec l                                         ; $40a8: $2d
    cpl                                           ; $40a9: $2f
    or c                                          ; $40aa: $b1
    cp h                                          ; $40ab: $bc
    ld [hl], $d5                                  ; $40ac: $36 $d5
    jp nz, $a1df                                  ; $40ae: $c2 $df $a1

    ld e, h                                       ; $40b1: $5c
    sbc e                                         ; $40b2: $9b
    adc e                                         ; $40b3: $8b
    adc h                                         ; $40b4: $8c
    and d                                         ; $40b5: $a2
    ld l, d                                       ; $40b6: $6a

jr_049_40b7:
    di                                            ; $40b7: $f3
    ld [hl], l                                    ; $40b8: $75
    ld [hl], l                                    ; $40b9: $75
    push hl                                       ; $40ba: $e5
    and d                                         ; $40bb: $a2
    ld e, a                                       ; $40bc: $5f
    sbc [hl]                                      ; $40bd: $9e
    ld e, e                                       ; $40be: $5b
    ld a, [hl-]                                   ; $40bf: $3a
    ld h, c                                       ; $40c0: $61
    ldh [rWX], a                                  ; $40c1: $e0 $4b
    call $00f8                                    ; $40c3: $cd $f8 $00
    rst $28                                       ; $40c6: $ef
    ld a, [hl-]                                   ; $40c7: $3a
    ld [hl-], a                                   ; $40c8: $32
    sbc $53                                       ; $40c9: $de $53
    ld a, [de]                                    ; $40cb: $1a
    inc bc                                        ; $40cc: $03
    pop de                                        ; $40cd: $d1
    inc e                                         ; $40ce: $1c
    db $e4                                        ; $40cf: $e4
    ld b, l                                       ; $40d0: $45
    jr jr_049_40b7                                ; $40d1: $18 $e4

    inc b                                         ; $40d3: $04
    rst $00                                       ; $40d4: $c7
    ld hl, $699e                                  ; $40d5: $21 $9e $69
    or l                                          ; $40d8: $b5
    and b                                         ; $40d9: $a0
    ld [hl], e                                    ; $40da: $73
    ld c, e                                       ; $40db: $4b
    xor [hl]                                      ; $40dc: $ae
    cp $95                                        ; $40dd: $fe $95
    inc a                                         ; $40df: $3c
    and c                                         ; $40e0: $a1
    ret                                           ; $40e1: $c9


    ld [c], a                                     ; $40e2: $e2
    rrca                                          ; $40e3: $0f
    rst $08                                       ; $40e4: $cf
    ld l, d                                       ; $40e5: $6a
    ld c, h                                       ; $40e6: $4c
    add hl, sp                                    ; $40e7: $39
    pop hl                                        ; $40e8: $e1
    scf                                           ; $40e9: $37
    sbc e                                         ; $40ea: $9b
    adc e                                         ; $40eb: $8b
    ld d, b                                       ; $40ec: $50
    add hl, hl                                    ; $40ed: $29
    ld a, b                                       ; $40ee: $78
    adc b                                         ; $40ef: $88
    call Call_000_072b                            ; $40f0: $cd $2b $07
    rst $10                                       ; $40f3: $d7
    db $e4                                        ; $40f4: $e4
    ld c, [hl]                                    ; $40f5: $4e
    xor b                                         ; $40f6: $a8
    sub a                                         ; $40f7: $97
    ld e, b                                       ; $40f8: $58
    ld d, [hl]                                    ; $40f9: $56
    db $e3                                        ; $40fa: $e3
    ld l, $32                                     ; $40fb: $2e $32
    reti                                          ; $40fd: $d9


    ld e, h                                       ; $40fe: $5c
    ld e, b                                       ; $40ff: $58
    ld b, c                                       ; $4100: $41
    ld l, b                                       ; $4101: $68
    ld l, $2a                                     ; $4102: $2e $2a
    rst $08                                       ; $4104: $cf
    dec l                                         ; $4105: $2d
    cp c                                          ; $4106: $b9
    ld a, [$6257]                                 ; $4107: $fa $57 $62
    add d                                         ; $410a: $82
    ld h, [hl]                                    ; $410b: $66
    ld a, h                                       ; $410c: $7c
    nop                                           ; $410d: $00
    cpl                                           ; $410e: $2f
    or l                                          ; $410f: $b5
    rla                                           ; $4110: $17
    adc e                                         ; $4111: $8b
    call z, $a568                                 ; $4112: $cc $68 $a5
    and c                                         ; $4115: $a1
    sbc d                                         ; $4116: $9a
    ld l, e                                       ; $4117: $6b
    adc d                                         ; $4118: $8a
    ld [hl], a                                    ; $4119: $77
    xor d                                         ; $411a: $aa
    ld e, [hl]                                    ; $411b: $5e
    add hl, bc                                    ; $411c: $09
    inc [hl]                                      ; $411d: $34
    push de                                       ; $411e: $d5
    jp c, $f09c                                   ; $411f: $da $9c $f0

    dec hl                                        ; $4122: $2b
    ld [hl], a                                    ; $4123: $77
    ld [hl-], a                                   ; $4124: $32
    and e                                         ; $4125: $a3
    add l                                         ; $4126: $85
    push hl                                       ; $4127: $e5
    ld h, c                                       ; $4128: $61
    ld a, [hl+]                                   ; $4129: $2a
    ld [hl], $e3                                  ; $412a: $36 $e3
    ld hl, sp+$00                                 ; $412c: $f8 $00
    rst $10                                       ; $412e: $d7
    dec sp                                        ; $412f: $3b
    and c                                         ; $4130: $a1
    ret                                           ; $4131: $c9


    ld [hl], e                                    ; $4132: $73
    ld c, e                                       ; $4133: $4b
    xor [hl]                                      ; $4134: $ae
    cp $95                                        ; $4135: $fe $95
    ld a, h                                       ; $4137: $7c
    ld h, l                                       ; $4138: $65
    xor a                                         ; $4139: $af
    dec sp                                        ; $413a: $3b
    ld d, b                                       ; $413b: $50

jr_049_413c:
    ld c, c                                       ; $413c: $49
    db $fc                                        ; $413d: $fc
    xor [hl]                                      ; $413e: $ae
    ld a, [de]                                    ; $413f: $1a
    rst $28                                       ; $4140: $ef
    add h                                         ; $4141: $84
    ld a, d                                       ; $4142: $7a
    jr z, jr_049_413c                             ; $4143: $28 $f7

    cp a                                          ; $4145: $bf
    inc d                                         ; $4146: $14
    ld a, a                                       ; $4147: $7f
    nop                                           ; $4148: $00
    ld d, a                                       ; $4149: $57
    or c                                          ; $414a: $b1
    db $d3                                        ; $414b: $d3
    ld d, l                                       ; $414c: $55
    dec bc                                        ; $414d: $0b
    dec hl                                        ; $414e: $2b
    inc c                                         ; $414f: $0c
    push hl                                       ; $4150: $e5
    ld a, [c]                                     ; $4151: $f2
    add e                                         ; $4152: $83
    dec h                                         ; $4153: $25
    sub [hl]                                      ; $4154: $96
    rlca                                          ; $4155: $07
    ld a, [de]                                    ; $4156: $1a
    sbc d                                         ; $4157: $9a
    adc a                                         ; $4158: $8f
    rrca                                          ; $4159: $0f
    cpl                                           ; $415a: $2f
    ld h, d                                       ; $415b: $62
    sub b                                         ; $415c: $90
    ei                                            ; $415d: $fb
    ccf                                           ; $415e: $3f
    jp c, $98db                                   ; $415f: $da $db $98

    adc d                                         ; $4162: $8a
    ld a, a                                       ; $4163: $7f
    xor $64                                       ; $4164: $ee $64
    ld l, d                                       ; $4166: $6a
    ld l, [hl]                                    ; $4167: $6e
    ret                                           ; $4168: $c9


    push de                                       ; $4169: $d5

Call_049_416a:
    cp a                                          ; $416a: $bf
    sub d                                         ; $416b: $92
    db $e3                                        ; $416c: $e3
    ld e, l                                       ; $416d: $5d
    ld h, d                                       ; $416e: $62
    jr nc, jr_049_41c5                            ; $416f: $30 $54

    dec hl                                        ; $4171: $2b

Call_049_4172:
    dec l                                         ; $4172: $2d
    rst $38                                       ; $4173: $ff
    ld b, a                                       ; $4174: $47
    ld e, [hl]                                    ; $4175: $5e
    call nc, $5cd2                                ; $4176: $d4 $d2 $5c
    ld c, e                                       ; $4179: $4b
    inc de                                        ; $417a: $13
    dec c                                         ; $417b: $0d
    ld d, h                                       ; $417c: $54

jr_049_417d:
    cp $a8                                        ; $417d: $fe $a8
    add hl, de                                    ; $417f: $19
    rra                                           ; $4180: $1f
    rst $10                                       ; $4181: $d7
    db $e4                                        ; $4182: $e4
    ld c, [hl]                                    ; $4183: $4e
    dec l                                         ; $4184: $2d
    cpl                                           ; $4185: $2f
    or c                                          ; $4186: $b1
    xor h                                         ; $4187: $ac
    and $5a                                       ; $4188: $e6 $5a
    adc $2d                                       ; $418a: $ce $2d
    cp c                                          ; $418c: $b9
    ld a, [$6257]                                 ; $418d: $fa $57 $62
    add d                                         ; $4190: $82
    ld h, [hl]                                    ; $4191: $66
    ld a, h                                       ; $4192: $7c
    nop                                           ; $4193: $00
    xor a                                         ; $4194: $af
    ret nc                                        ; $4195: $d0

    rla                                           ; $4196: $17
    ld d, l                                       ; $4197: $55
    xor c                                         ; $4198: $a9
    ld c, a                                       ; $4199: $4f
    ld a, e                                       ; $419a: $7b
    sbc [hl]                                      ; $419b: $9e
    jr nc, jr_049_4203                            ; $419c: $30 $65

    push af                                       ; $419e: $f5
    and d                                         ; $419f: $a2
    ld e, a                                       ; $41a0: $5f
    ld e, [hl]                                    ; $41a1: $5e
    ld e, b                                       ; $41a2: $58
    sbc $a9                                       ; $41a3: $de $a9
    call c, $0f8c                                 ; $41a5: $dc $8c $0f
    rst $10                                       ; $41a8: $d7
    ld sp, $7358                                  ; $41a9: $31 $58 $73
    ld b, c                                       ; $41ac: $41
    rst $20                                       ; $41ad: $e7
    sub [hl]                                      ; $41ae: $96

Call_049_41af:
    ld e, h                                       ; $41af: $5c
    db $fd                                        ; $41b0: $fd
    dec hl                                        ; $41b1: $2b
    ld sp, $c5c1                                  ; $41b2: $31 $c1 $c5
    add sp, -$0d                                  ; $41b5: $e8 $f3
    ld a, $24                                     ; $41b7: $3e $24
    cp $00                                        ; $41b9: $fe $00
    rst $10                                       ; $41bb: $d7
    db $e4                                        ; $41bc: $e4
    adc $df                                       ; $41bd: $ce $df
    ld e, c                                       ; $41bf: $59
    ld h, d                                       ; $41c0: $62
    ld a, c                                       ; $41c1: $79
    and a                                         ; $41c2: $a7
    ld [hl], d                                    ; $41c3: $72
    ld [hl], e                                    ; $41c4: $73

jr_049_41c5:
    daa                                           ; $41c5: $27
    inc sp                                        ; $41c6: $33
    ld a, [de]                                    ; $41c7: $1a
    jp z, $bf45                                   ; $41c8: $ca $45 $bf

    adc d                                         ; $41cb: $8a
    daa                                           ; $41cc: $27
    inc d                                         ; $41cd: $14
    ld h, b                                       ; $41ce: $60
    ld h, [hl]                                    ; $41cf: $66
    inc sp                                        ; $41d0: $33
    ld a, $00                                     ; $41d1: $3e $00
    rst $28                                       ; $41d3: $ef
    ld [hl], l                                    ; $41d4: $75
    jp nc, Jump_049_6cc9                          ; $41d5: $d2 $c9 $6c

    xor $27                                       ; $41d8: $ee $27
    xor b                                         ; $41da: $a8
    scf                                           ; $41db: $37
    res 0, c                                      ; $41dc: $cb $81
    ld b, [hl]                                    ; $41de: $46
    ld h, [hl]                                    ; $41df: $66
    sub d                                         ; $41e0: $92
    ld [hl], a                                    ; $41e1: $77
    ld a, [$9be4]                                 ; $41e2: $fa $e4 $9b
    ld d, a                                       ; $41e5: $57
    halt                                          ; $41e6: $76
    push de                                       ; $41e7: $d5
    ld a, b                                       ; $41e8: $78
    xor b                                         ; $41e9: $a8
    add [hl]                                      ; $41ea: $86
    ret                                           ; $41eb: $c9


    and l                                         ; $41ec: $a5
    ld a, [hl+]                                   ; $41ed: $2a
    ld h, l                                       ; $41ee: $65
    ret                                           ; $41ef: $c9


    pop af                                        ; $41f0: $f1
    ld bc, $63cf                                  ; $41f1: $01 $cf $63
    jr nz, jr_049_417d                            ; $41f4: $20 $87

    add hl, sp                                    ; $41f6: $39
    rst $18                                       ; $41f7: $df
    add hl, bc                                    ; $41f8: $09
    jr z, jr_049_4263                             ; $41f9: $28 $68

    db $fc                                        ; $41fb: $fc
    inc e                                         ; $41fc: $1c
    or [hl]                                       ; $41fd: $b6
    ld [hl-], a                                   ; $41fe: $32
    sbc $7b                                       ; $41ff: $de $7b
    ld e, l                                       ; $4201: $5d
    ld e, b                                       ; $4202: $58

jr_049_4203:
    ld b, c                                       ; $4203: $41
    ld l, b                                       ; $4204: $68
    ld c, [hl]                                    ; $4205: $4e
    ld hl, sp-$6b                                 ; $4206: $f8 $95
    call $b77d                                    ; $4208: $cd $7d $b7
    inc [hl]                                      ; $420b: $34
    rst $10                                       ; $420c: $d7
    ld [hl], d                                    ; $420d: $72
    and [hl]                                      ; $420e: $a6
    ld [hl], l                                    ; $420f: $75
    ld d, l                                       ; $4210: $55
    ld a, h                                       ; $4211: $7c
    nop                                           ; $4212: $00
    ld l, a                                       ; $4213: $6f
    sbc e                                         ; $4214: $9b
    pop de                                        ; $4215: $d1
    adc a                                         ; $4216: $8f
    ld d, $99                                     ; $4217: $16 $99
    ret                                           ; $4219: $c9


    dec b                                         ; $421a: $05
    ld e, l                                       ; $421b: $5d
    ret nc                                        ; $421c: $d0

    ld [hl], e                                    ; $421d: $73
    or l                                          ; $421e: $b5
    ld l, b                                       ; $421f: $68
    adc c                                         ; $4220: $89
    push hl                                       ; $4221: $e5
    db $fd                                        ; $4222: $fd
    inc b                                         ; $4223: $04
    push af                                       ; $4224: $f5
    ld h, [hl]                                    ; $4225: $66
    ld a, c                                       ; $4226: $79
    ld sp, $6ad3                                  ; $4227: $31 $d3 $6a
    cp a                                          ; $422a: $bf
    and d                                         ; $422b: $a2
    ld h, $26                                     ; $422c: $26 $26
    cp b                                          ; $422e: $b8
    ld [hl], d                                    ; $422f: $72
    nop                                           ; $4230: $00
    cpl                                           ; $4231: $2f
    and d                                         ; $4232: $a2
    ld d, d                                       ; $4233: $52
    ldh a, [rNR10]                                ; $4234: $f0 $10
    sbc e                                         ; $4236: $9b
    inc bc                                        ; $4237: $03
    ld h, [hl]                                    ; $4238: $66
    cp h                                          ; $4239: $bc
    db $10                                        ; $423a: $10
    add e                                         ; $423b: $83
    sbc l                                         ; $423c: $9d
    ld a, [bc]                                    ; $423d: $0a
    ld h, [hl]                                    ; $423e: $66
    ld e, d                                       ; $423f: $5a
    dec l                                         ; $4240: $2d
    add sp, $4a                                   ; $4241: $e8 $4a
    ld c, e                                       ; $4243: $4b
    inc l                                         ; $4244: $2c
    cpl                                           ; $4245: $2f
    ld l, d                                       ; $4246: $6a
    ld l, c                                       ; $4247: $69
    rra                                           ; $4248: $1f
    sbc d                                         ; $4249: $9a
    ld l, $5f                                     ; $424a: $2e $5f
    add hl, sp                                    ; $424c: $39
    nop                                           ; $424d: $00
    rst $10                                       ; $424e: $d7
    db $e4                                        ; $424f: $e4
    and d                                         ; $4250: $a2
    rrca                                          ; $4251: $0f
    rrca                                          ; $4252: $0f
    ld a, c                                       ; $4253: $79
    ld sp, hl                                     ; $4254: $f9
    ccf                                           ; $4255: $3f
    ld a, [c]                                     ; $4256: $f2
    ld e, h                                       ; $4257: $5c
    db $fd                                        ; $4258: $fd
    dec hl                                        ; $4259: $2b
    sbc e                                         ; $425a: $9b
    ld [hl], e                                    ; $425b: $73
    dec l                                         ; $425c: $2d
    rla                                           ; $425d: $17
    ld h, c                                       ; $425e: $61
    sub b                                         ; $425f: $90
    ei                                            ; $4260: $fb
    adc [hl]                                      ; $4261: $8e
    cpl                                           ; $4262: $2f

jr_049_4263:
    xor c                                         ; $4263: $a9
    adc e                                         ; $4264: $8b
    ld a, c                                       ; $4265: $79
    ld b, a                                       ; $4266: $47
    dec c                                         ; $4267: $0d

Call_049_4268:
    push hl                                       ; $4268: $e5
    ld c, [hl]                                    ; $4269: $4e
    dec l                                         ; $426a: $2d
    xor a                                         ; $426b: $af
    or h                                          ; $426c: $b4
    call nz, $9ab2                                ; $426d: $c4 $b2 $9a
    ld l, e                                       ; $4270: $6b
    ld l, c                                       ; $4271: $69
    and d                                         ; $4272: $a2
    ld hl, sp+$00                                 ; $4273: $f8 $00
    cpl                                           ; $4275: $2f
    or l                                          ; $4276: $b5
    rla                                           ; $4277: $17
    adc e                                         ; $4278: $8b
    call z, $2868                                 ; $4279: $cc $68 $28
    ld [hl], a                                    ; $427c: $77
    cp $ce                                        ; $427d: $fe $ce
    ld c, [hl]                                    ; $427f: $4e
    push de                                       ; $4280: $d5
    dec sp                                        ; $4281: $3b
    and c                                         ; $4282: $a1
    sub $cd                                       ; $4283: $d6 $cd
    sbc l                                         ; $4285: $9d
    jp z, $85cd                                   ; $4286: $ca $cd $85

    cp a                                          ; $4289: $bf
    ld b, e                                       ; $428a: $43
    cp c                                          ; $428b: $b9
    ld [hl], e                                    ; $428c: $73
    ld [hl], a                                    ; $428d: $77
    xor [hl]                                      ; $428e: $ae
    ld d, $4d                                     ; $428f: $16 $4d
    ld e, d                                       ; $4291: $5a
    adc $41                                       ; $4292: $ce $41
    ld d, [hl]                                    ; $4294: $56
    db $10                                        ; $4295: $10
    ld d, l                                       ; $4296: $55
    ld [hl], $e3                                  ; $4297: $36 $e3
    ld e, l                                       ; $4299: $5d
    dec [hl]                                      ; $429a: $35
    sbc $f9                                       ; $429b: $de $f9
    dec sp                                        ; $429d: $3b
    db $e3                                        ; $429e: $e3
    ld c, $54                                     ; $429f: $0e $54
    xor $8c                                       ; $42a1: $ee $8c
    ld b, c                                       ; $42a3: $41
    adc d                                         ; $42a4: $8a
    ccf                                           ; $42a5: $3f
    nop                                           ; $42a6: $00
    ld l, a                                       ; $42a7: $6f
    sub c                                         ; $42a8: $91
    add hl, de                                    ; $42a9: $19
    ld e, b                                       ; $42aa: $58
    ld e, b                                       ; $42ab: $58

jr_049_42ac:
    sbc [hl]                                      ; $42ac: $9e
    ld e, c                                       ; $42ad: $59
    ld l, $32                                     ; $42ae: $2e $32
    ld l, a                                       ; $42b0: $6f
    ld d, c                                       ; $42b1: $51
    rst $30                                       ; $42b2: $f7
    jp c, $a28f                                   ; $42b3: $da $8f $a2

    ld l, d                                       ; $42b6: $6a
    ld l, l                                       ; $42b7: $6d
    jp $ef9c                                      ; $42b8: $c3 $9c $ef


    inc b                                         ; $42bb: $04
    inc d                                         ; $42bc: $14
    inc [hl]                                      ; $42bd: $34
    ld a, [hl]                                    ; $42be: $7e
    ld c, $5b                                     ; $42bf: $0e $5b
    add hl, de                                    ; $42c1: $19
    rst $28                                       ; $42c2: $ef
    dec a                                         ; $42c3: $3d
    inc c                                         ; $42c4: $0c
    ld h, $2d                                     ; $42c5: $26 $2d
    rla                                           ; $42c7: $17
    ld [hl], h                                    ; $42c8: $74
    xor [hl]                                      ; $42c9: $ae
    add hl, hl                                    ; $42ca: $29
    sbc $a9                                       ; $42cb: $de $a9
    ld a, d                                       ; $42cd: $7a
    ld l, l                                       ; $42ce: $6d
    ld l, $c4                                     ; $42cf: $2e $c4
    db $e4                                        ; $42d1: $e4
    add c                                         ; $42d2: $81
    cp d                                          ; $42d3: $ba
    call $00f8                                    ; $42d4: $cd $f8 $00
    cpl                                           ; $42d7: $2f
    ld h, d                                       ; $42d8: $62
    sub b                                         ; $42d9: $90
    ei                                            ; $42da: $fb
    adc [hl]                                      ; $42db: $8e
    cpl                                           ; $42dc: $2f
    xor c                                         ; $42dd: $a9
    push hl                                       ; $42de: $e5
    ld l, a                                       ; $42df: $6f
    db $e4                                        ; $42e0: $e4
    sbc e                                         ; $42e1: $9b
    adc e                                         ; $42e2: $8b
    jr nc, jr_049_433d                            ; $42e3: $30 $58

    sbc e                                         ; $42e5: $9b
    ld [hl], e                                    ; $42e6: $73
    ld c, e                                       ; $42e7: $4b
    xor [hl]                                      ; $42e8: $ae
    cp $95                                        ; $42e9: $fe $95
    sbc b                                         ; $42eb: $98
    jr nz, @-$20                                  ; $42ec: $20 $de

    ld a, e                                       ; $42ee: $7b
    db $dd                                        ; $42ef: $dd
    add hl, de                                    ; $42f0: $19
    add e                                         ; $42f1: $83

Call_049_42f2:
    sbc h                                         ; $42f2: $9c
    ld l, e                                       ; $42f3: $6b
    cp c                                          ; $42f4: $b9
    ld [$9983], sp                                ; $42f5: $08 $83 $99
    ld [$fe54], sp                                ; $42f8: $08 $54 $fe
    xor b                                         ; $42fb: $a8
    add hl, sp                                    ; $42fc: $39
    rst $38                                       ; $42fd: $ff
    ccf                                           ; $42fe: $3f
    dec l                                         ; $42ff: $2d
    jp nz, Jump_000_2160                          ; $4300: $c2 $60 $21

    sub [hl]                                      ; $4303: $96
    jp nc, $f88c                                  ; $4304: $d2 $8c $f8

    ld [hl], a                                    ; $4307: $77
    call c, Call_049_7629                         ; $4308: $dc $29 $76
    xor b                                         ; $430b: $a8
    add hl, de                                    ; $430c: $19
    rra                                           ; $430d: $1f
    cpl                                           ; $430e: $2f
    or l                                          ; $430f: $b5
    rla                                           ; $4310: $17
    ld b, e                                       ; $4311: $43
    add hl, sp                                    ; $4312: $39
    and c                                         ; $4313: $a1
    cp c                                          ; $4314: $b9
    ld [hl], $d7                                  ; $4315: $36 $d7
    sub d                                         ; $4317: $92
    ld [c], a                                     ; $4318: $e2
    ld b, $66                                     ; $4319: $06 $66
    call nz, $9741                                ; $431b: $c4 $41 $97
    push hl                                       ; $431e: $e5
    sbc c                                         ; $431f: $99
    ld d, [hl]                                    ; $4320: $56
    dec bc                                        ; $4321: $0b
    jr nc, jr_049_42ac                            ; $4322: $30 $88

    rrca                                          ; $4324: $0f
    rst $10                                       ; $4325: $d7
    cp e                                          ; $4326: $bb
    add sp, -$69                                  ; $4327: $e8 $97
    ld [hl], a                                    ; $4329: $77
    ld [hl-], a                                   ; $432a: $32
    inc hl                                        ; $432b: $23
    dec b                                         ; $432c: $05
    rrca                                          ; $432d: $0f
    ld sp, $8d48                                  ; $432e: $31 $48 $8d
    add c                                         ; $4331: $81
    ld e, h                                       ; $4332: $5c
    ret c                                         ; $4333: $d8

    ld [$8c9d], a                                 ; $4334: $ea $9d $8c
    rst $30                                       ; $4337: $f7
    db $d3                                        ; $4338: $d3
    sub a                                         ; $4339: $97
    adc $bf                                       ; $433a: $ce $bf
    ld [hl], d                                    ; $433c: $72

jr_049_433d:
    cp $37                                        ; $433d: $fe $37
    rst $30                                       ; $433f: $f7
    and e                                         ; $4340: $a3
    ld a, c                                       ; $4341: $79
    inc sp                                        ; $4342: $33
    sbc d                                         ; $4343: $9a
    pop bc                                        ; $4344: $c1
    ld b, e                                       ; $4345: $43
    ld l, $8d                                     ; $4346: $2e $8d
    dec sp                                        ; $4348: $3b
    ld sp, hl                                     ; $4349: $f9
    and e                                         ; $434a: $a3
    ld h, [hl]                                    ; $434b: $66
    ld a, h                                       ; $434c: $7c
    nop                                           ; $434d: $00
    xor a                                         ; $434e: $af
    ld a, a                                       ; $434f: $7f
    ld [hl+], a                                   ; $4350: $22
    ld sp, $3b17                                  ; $4351: $31 $17 $3b
    ld [hl], l                                    ; $4354: $75
    ld h, a                                       ; $4355: $67
    inc c                                         ; $4356: $0c
    ld [hl], d                                    ; $4357: $72
    ld sp, hl                                     ; $4358: $f9
    pop bc                                        ; $4359: $c1
    ld [de], a                                    ; $435a: $12
    rl e                                          ; $435b: $cb $13
    jr nc, @-$66                                  ; $435d: $30 $98

    scf                                           ; $435f: $37
    ld e, [hl]                                    ; $4360: $5e
    ld hl, sp-$41                                 ; $4361: $f8 $bf
    ret z                                         ; $4363: $c8

    dec hl                                        ; $4364: $2b
    halt                                          ; $4365: $76
    ld h, h                                       ; $4366: $64
    ld a, h                                       ; $4367: $7c
    nop                                           ; $4368: $00
    ld l, a                                       ; $4369: $6f
    dec de                                        ; $436a: $1b
    cpl                                           ; $436b: $2f
    xor h                                         ; $436c: $ac
    or b                                          ; $436d: $b0
    and b                                         ; $436e: $a0
    di                                            ; $436f: $f3
    ld h, [hl]                                    ; $4370: $66
    ld [hl], h                                    ; $4371: $74
    or c                                          ; $4372: $b1
    rla                                           ; $4373: $17
    adc l                                         ; $4374: $8d
    ldh [$d5], a                                  ; $4375: $e0 $d5
    ld d, a                                       ; $4377: $57
    ld c, $cf                                     ; $4378: $0e $cf
    inc [hl]                                      ; $437a: $34
    rst $30                                       ; $437b: $f7
    ld e, h                                       ; $437c: $5c
    jp $a03a                                      ; $437d: $c3 $3a $a0


    xor c                                         ; $4380: $a9
    cp b                                          ; $4381: $b8
    call $ec79                                    ; $4382: $cd $79 $ec
    ld [hl+], a                                   ; $4385: $22
    inc c                                         ; $4386: $0c
    ld [hl], d                                    ; $4387: $72
    ccf                                           ; $4388: $3f
    or d                                          ; $4389: $b2
    ld b, l                                       ; $438a: $45
    ld e, l                                       ; $438b: $5d
    ret c                                         ; $438c: $d8

    adc d                                         ; $438d: $8a
    ld a, b                                       ; $438e: $78
    and b                                         ; $438f: $a0
    adc d                                         ; $4390: $8a
    dec e                                         ; $4391: $1d

jr_049_4392:
    add a                                         ; $4392: $87
    ld a, h                                       ; $4393: $7c
    cp h                                          ; $4394: $bc
    rst $30                                       ; $4395: $f7
    cp d                                          ; $4396: $ba
    ld d, e                                       ; $4397: $53
    set 6, e                                      ; $4398: $cb $f3
    add $43                                       ; $439a: $c6 $43
    add hl, sp                                    ; $439c: $39
    db $d3                                        ; $439d: $d3
    adc h                                         ; $439e: $8c
    add c                                         ; $439f: $81
    sbc a                                         ; $43a0: $9f
    ld l, c                                       ; $43a1: $69
    ld e, l                                       ; $43a2: $5d
    dec [hl]                                      ; $43a3: $35
    or a                                          ; $43a4: $b7
    inc b                                         ; $43a5: $04
    ld e, d                                       ; $43a6: $5a
    adc [hl]                                      ; $43a7: $8e
    rrca                                          ; $43a8: $0f
    rst $08                                       ; $43a9: $cf
    ld l, e                                       ; $43aa: $6b
    ld d, e                                       ; $43ab: $53
    ld [c], a                                     ; $43ac: $e2
    rst $30                                       ; $43ad: $f7
    sbc h                                         ; $43ae: $9c
    dec l                                         ; $43af: $2d
    call $2f14                                    ; $43b0: $cd $14 $2f
    add sp, -$7c                                  ; $43b3: $e8 $84
    sbc [hl]                                      ; $43b5: $9e
    dec de                                        ; $43b6: $1b
    ld c, l                                       ; $43b7: $4d
    or c                                          ; $43b8: $b1
    ld e, c                                       ; $43b9: $59
    adc d                                         ; $43ba: $8a
    ccf                                           ; $43bb: $3f
    nop                                           ; $43bc: $00
    sub a                                         ; $43bd: $97
    rst $18                                       ; $43be: $df
    ld e, c                                       ; $43bf: $59
    ret nc                                        ; $43c0: $d0

    ld d, c                                       ; $43c1: $51
    pop hl                                        ; $43c2: $e1
    ld hl, $4297                                  ; $43c3: $21 $97 $42
    ld c, e                                       ; $43c6: $4b
    ccf                                           ; $43c7: $3f
    pop hl                                        ; $43c8: $e1
    cp e                                          ; $43c9: $bb
    call $9d05                                    ; $43ca: $cd $05 $9d
    ret nc                                        ; $43cd: $d0

    ld [hl], e                                    ; $43ce: $73
    and e                                         ; $43cf: $a3
    dec [hl]                                      ; $43d0: $35
    ld [hl], a                                    ; $43d1: $77
    ld l, $d8                                     ; $43d2: $2e $d8
    ld l, l                                       ; $43d4: $6d
    cpl                                           ; $43d5: $2f
    ld b, a                                       ; $43d6: $47
    pop hl                                        ; $43d7: $e1
    rst $38                                       ; $43d8: $ff
    ld b, b                                       ; $43d9: $40
    db $fc                                        ; $43da: $fc
    ld l, l                                       ; $43db: $6d
    rlca                                          ; $43dc: $07
    cpl                                           ; $43dd: $2f
    ld b, a                                       ; $43de: $47
    pop hl                                        ; $43df: $e1
    rst $38                                       ; $43e0: $ff
    ld b, b                                       ; $43e1: $40
    db $fc                                        ; $43e2: $fc
    ld bc, $472f                                  ; $43e3: $01 $2f $47
    pop hl                                        ; $43e6: $e1
    rst $38                                       ; $43e7: $ff
    ld b, b                                       ; $43e8: $40
    db $fc                                        ; $43e9: $fc
    ld bc, $472f                                  ; $43ea: $01 $2f $47
    pop hl                                        ; $43ed: $e1
    rst $38                                       ; $43ee: $ff
    ld b, b                                       ; $43ef: $40
    db $fc                                        ; $43f0: $fc
    ld bc, $ffcf                                  ; $43f1: $01 $cf $ff
    ld l, b                                       ; $43f4: $68
    ld e, h                                       ; $43f5: $5c
    ld [hl], d                                    ; $43f6: $72
    ret nz                                        ; $43f7: $c0

    push bc                                       ; $43f8: $c5
    add d                                         ; $43f9: $82
    sbc a                                         ; $43fa: $9f
    and b                                         ; $43fb: $a0
    add hl, hl                                    ; $43fc: $29
    cp $00                                        ; $43fd: $fe $00
    ld c, a                                       ; $43ff: $4f
    ld a, [hl-]                                   ; $4400: $3a
    and a                                         ; $4401: $a7
    jr c, jr_049_4392                             ; $4402: $38 $8e

    db $e3                                        ; $4404: $e3
    ld hl, sp+$00                                 ; $4405: $f8 $00
    rst $08                                       ; $4407: $cf
    ld d, l                                       ; $4408: $55
    and b                                         ; $4409: $a0
    cpl                                           ; $440a: $2f
    sbc e                                         ; $440b: $9b
    add e                                         ; $440c: $83
    cp [hl]                                       ; $440d: $be
    ld d, [hl]                                    ; $440e: $56
    pop af                                        ; $440f: $f1
    ld e, [hl]                                    ; $4410: $5e
    jp nz, $9646                                  ; $4411: $c2 $46 $96

    ld a, [hl]                                    ; $4414: $7e
    xor [hl]                                      ; $4415: $ae
    push hl                                       ; $4416: $e5
    ld [bc], a                                    ; $4417: $02
    ld b, a                                       ; $4418: $47
    ld l, e                                       ; $4419: $6b
    db $ec                                        ; $441a: $ec
    call c, $fd12                                 ; $441b: $dc $12 $fd
    ld [de], a                                    ; $441e: $12
    xor a                                         ; $441f: $af
    call $98b9                                    ; $4420: $cd $b9 $98
    db $e3                                        ; $4423: $e3
    jp nc, $0309                                  ; $4424: $d2 $09 $03

    dec a                                         ; $4427: $3d
    sub h                                         ; $4428: $94
    di                                            ; $4429: $f3
    dec a                                         ; $442a: $3d
    ld [hl], a                                    ; $442b: $77
    pop bc                                        ; $442c: $c1
    ld c, a                                       ; $442d: $4f
    ret nc                                        ; $442e: $d0

    ld e, h                                       ; $442f: $5c
    sbc d                                         ; $4430: $9a
    pop de                                        ; $4431: $d1
    ld a, h                                       ; $4432: $7c
    ld [hl], a                                    ; $4433: $77
    add $ca                                       ; $4434: $c6 $ca
    and [hl]                                      ; $4436: $a6
    ldh a, [$0b]                                  ; $4437: $f0 $0b
    ld h, $50                                     ; $4439: $26 $50
    inc de                                        ; $443b: $13
    call nz, $9707                                ; $443c: $c4 $07 $97
    halt                                          ; $443f: $76
    or c                                          ; $4440: $b1
    ret nc                                        ; $4441: $d0

    ld l, $16                                     ; $4442: $2e $16
    sbc d                                         ; $4444: $9a
    ld hl, sp-$43                                 ; $4445: $f8 $bd
    ld h, a                                       ; $4447: $67
    ld h, b                                       ; $4448: $60
    ld b, c                                       ; $4449: $41
    ld [hl], a                                    ; $444a: $77
    add $20                                       ; $444b: $c6 $20
    and a                                         ; $444d: $a7
    and d                                         ; $444e: $a2
    ld e, a                                       ; $444f: $5f
    ld a, l                                       ; $4450: $7d
    or c                                          ; $4451: $b1
    sub e                                         ; $4452: $93
    pop af                                        ; $4453: $f1
    jp c, Jump_049_4fdc                           ; $4454: $da $dc $4f

    ld d, b                                       ; $4457: $50
    db $fd                                        ; $4458: $fd
    cp a                                          ; $4459: $bf
    ld c, b                                       ; $445a: $48
    ld h, e                                       ; $445b: $63
    jr nz, jr_049_4499                            ; $445c: $20 $3b

    xor c                                         ; $445e: $a9
    sbc l                                         ; $445f: $9d
    ld d, h                                       ; $4460: $54
    ld [c], a                                     ; $4461: $e2
    rrca                                          ; $4462: $0f
    sub a                                         ; $4463: $97
    rst $18                                       ; $4464: $df
    ld e, c                                       ; $4465: $59
    ret nc                                        ; $4466: $d0

    ret                                           ; $4467: $c9


    rrca                                          ; $4468: $0f
    ld e, l                                       ; $4469: $5d
    db $ec                                        ; $446a: $ec
    ld b, l                                       ; $446b: $45
    db $d3                                        ; $446c: $d3
    ld [hl+], a                                   ; $446d: $22
    db $f4                                        ; $446e: $f4
    adc [hl]                                      ; $446f: $8e
    ld [de], a                                    ; $4470: $12
    ld a, a                                       ; $4471: $7f
    nop                                           ; $4472: $00
    ld l, a                                       ; $4473: $6f
    dec de                                        ; $4474: $1b
    rrca                                          ; $4475: $0f
    push de                                       ; $4476: $d5
    inc a                                         ; $4477: $3c
    ld a, [c]                                     ; $4478: $f2
    sub l                                         ; $4479: $95
    inc bc                                        ; $447a: $03
    ld d, a                                       ; $447b: $57
    adc l                                         ; $447c: $8d
    add a                                         ; $447d: $87
    ld l, d                                       ; $447e: $6a
    sbc $78                                       ; $447f: $de $78
    adc d                                         ; $4481: $8a
    ld a, a                                       ; $4482: $7f
    inc d                                         ; $4483: $14
    ld [hl], l                                    ; $4484: $75
    ld e, $13                                     ; $4485: $1e $13
    call z, $ef1b                                 ; $4487: $cc $1b $ef
    dec b                                         ; $448a: $05
    ld b, a                                       ; $448b: $47
    db $10                                        ; $448c: $10
    ld c, d                                       ; $448d: $4a
    sub c                                         ; $448e: $91
    and l                                         ; $448f: $a5
    cp d                                          ; $4490: $ba
    ld l, l                                       ; $4491: $6d
    ccf                                           ; $4492: $3f
    or d                                          ; $4493: $b2
    add l                                         ; $4494: $85
    adc l                                         ; $4495: $8d
    ld d, $b6                                     ; $4496: $16 $b6
    ld [hl+], a                                   ; $4498: $22

jr_049_4499:
    ld e, $a8                                     ; $4499: $1e $a8
    ld h, d                                       ; $449b: $62
    rst $00                                       ; $449c: $c7
    ld hl, $1f1f                                  ; $449d: $21 $1f $1f
    cpl                                           ; $44a0: $2f
    ld a, [de]                                    ; $44a1: $1a
    pop bc                                        ; $44a2: $c1
    xor e                                         ; $44a3: $ab
    push de                                       ; $44a4: $d5
    sbc [hl]                                      ; $44a5: $9e
    ld l, e                                       ; $44a6: $6b
    ld e, b                                       ; $44a7: $58
    rlca                                          ; $44a8: $07
    inc [hl]                                      ; $44a9: $34
    dec d                                         ; $44aa: $15
    or a                                          ; $44ab: $b7
    add hl, hl                                    ; $44ac: $29
    ld a, [hl]                                    ; $44ad: $7e
    rst $08                                       ; $44ae: $cf
    or l                                          ; $44af: $b5
    and d                                         ; $44b0: $a2
    ld [hl], c                                    ; $44b1: $71
    ret                                           ; $44b2: $c9


    ld bc, $0fe2                                  ; $44b3: $01 $e2 $0f
    rst $08                                       ; $44b6: $cf
    rst $38                                       ; $44b7: $ff
    ld l, b                                       ; $44b8: $68
    sub c                                         ; $44b9: $91
    add hl, de                                    ; $44ba: $19
    dec l                                         ; $44bb: $2d
    inc [hl]                                      ; $44bc: $34
    db $dd                                        ; $44bd: $dd
    cp h                                          ; $44be: $bc
    ret c                                         ; $44bf: $d8

    dec hl                                        ; $44c0: $2b
    sbc a                                         ; $44c1: $9f
    cp c                                          ; $44c2: $b9
    inc h                                         ; $44c3: $24
    cp $00                                        ; $44c4: $fe $00
    rst $08                                       ; $44c6: $cf
    db $fd                                        ; $44c7: $fd
    ld a, [$ff9d]                                 ; $44c8: $fa $9d $ff
    push bc                                       ; $44cb: $c5
    ld l, $8d                                     ; $44cc: $2e $8d
    ld c, b                                       ; $44ce: $48
    adc h                                         ; $44cf: $8c
    ld hl, sp+$03                                 ; $44d0: $f8 $03
    sub a                                         ; $44d2: $97
    ld b, [hl]                                    ; $44d3: $46
    inc h                                         ; $44d4: $24
    and $62                                       ; $44d5: $e6 $62
    ld b, c                                       ; $44d7: $41
    rla                                           ; $44d8: $17
    sbc d                                         ; $44d9: $9a
    rst $18                                       ; $44da: $df
    ld c, a                                       ; $44db: $4f
    dec [hl]                                      ; $44dc: $35
    db $d3                                        ; $44dd: $d3
    cp d                                          ; $44de: $ba
    sub c                                         ; $44df: $91
    sbc c                                         ; $44e0: $99

jr_049_44e1:
    ld e, $e6                                     ; $44e1: $1e $e6
    ld a, h                                       ; $44e3: $7c
    rlca                                          ; $44e4: $07
    pop de                                        ; $44e5: $d1
    rla                                           ; $44e6: $17
    ld [hl], h                                    ; $44e7: $74
    and e                                         ; $44e8: $a3
    and $a4                                       ; $44e9: $e6 $a4
    sub e                                         ; $44eb: $93
    reti                                          ; $44ec: $d9


    sbc h                                         ; $44ed: $9c
    ld b, b                                       ; $44ee: $40
    ld c, l                                       ; $44ef: $4d
    ret nc                                        ; $44f0: $d0

    inc d                                         ; $44f1: $14
    ld a, a                                       ; $44f2: $7f
    nop                                           ; $44f3: $00
    cpl                                           ; $44f4: $2f
    ld a, [de]                                    ; $44f5: $1a
    pop bc                                        ; $44f6: $c1
    xor e                                         ; $44f7: $ab
    push bc                                       ; $44f8: $c5
    rst $28                                       ; $44f9: $ef
    ld a, [c]                                     ; $44fa: $f2
    ld [hl], a                                    ; $44fb: $77
    ret nz                                        ; $44fc: $c0

    adc h                                         ; $44fd: $8c
    rla                                           ; $44fe: $17
    sub [hl]                                      ; $44ff: $96
    xor a                                         ; $4500: $af
    inc e                                         ; $4501: $1c
    cpl                                           ; $4502: $2f
    sbc d                                         ; $4503: $9a
    or a                                          ; $4504: $b7
    xor b                                         ; $4505: $a8
    ld a, e                                       ; $4506: $7b
    ld b, l                                       ; $4507: $45
    ld h, e                                       ; $4508: $63
    and b                                         ; $4509: $a0
    cp b                                          ; $450a: $b8
    or h                                          ; $450b: $b4
    or b                                          ; $450c: $b0
    dec d                                         ; $450d: $15
    pop af                                        ; $450e: $f1
    and d                                         ; $450f: $a2
    ld c, $73                                     ; $4510: $0e $73
    cp [hl]                                       ; $4512: $be
    dec sp                                        ; $4513: $3b
    ld h, e                                       ; $4514: $63
    ld h, l                                       ; $4515: $65
    ld d, e                                       ; $4516: $53
    ld hl, sp+$05                                 ; $4517: $f8 $05
    dec sp                                        ; $4519: $3b
    or l                                          ; $451a: $b5
    or h                                          ; $451b: $b4
    or b                                          ; $451c: $b0
    cp d                                          ; $451d: $ba
    sub c                                         ; $451e: $91
    sbc c                                         ; $451f: $99
    sbc $87                                       ; $4520: $de $87
    ld b, b                                       ; $4522: $40
    or l                                          ; $4523: $b5
    ld b, c                                       ; $4524: $41
    inc e                                         ; $4525: $1c
    rra                                           ; $4526: $1f

jr_049_4527:
    sub a                                         ; $4527: $97
    ld b, [hl]                                    ; $4528: $46
    inc h                                         ; $4529: $24
    ld h, [hl]                                    ; $452a: $66
    xor a                                         ; $452b: $af
    ld a, h                                       ; $452c: $7c
    and $d2                                       ; $452d: $e6 $d2
    push bc                                       ; $452f: $c5
    ld d, b                                       ; $4530: $50
    ld l, $ac                                     ; $4531: $2e $ac
    or b                                          ; $4533: $b0
    and b                                         ; $4534: $a0
    ld [hl], e                                    ; $4535: $73
    dec [hl]                                      ; $4536: $35
    ld d, $98                                     ; $4537: $16 $98
    ei                                            ; $4539: $fb
    sub e                                         ; $453a: $93
    dec e                                         ; $453b: $1d
    add a                                         ; $453c: $87
    jr c, jr_049_4527                             ; $453d: $38 $e8

    ld b, b                                       ; $453f: $40
    rst $08                                       ; $4540: $cf
    ret c                                         ; $4541: $d8

    adc h                                         ; $4542: $8c
    rrca                                          ; $4543: $0f
    ld l, a                                       ; $4544: $6f
    ld b, [hl]                                    ; $4545: $46
    ld [hl], c                                    ; $4546: $71
    inc e                                         ; $4547: $1c
    xor a                                         ; $4548: $af

jr_049_4549:
    ld h, c                                       ; $4549: $61
    inc e                                         ; $454a: $1c
    rst $00                                       ; $454b: $c7
    ld b, e                                       ; $454c: $43
    cp c                                          ; $454d: $b9
    inc de                                        ; $454e: $13
    ld l, d                                       ; $454f: $6a
    rst $18                                       ; $4550: $df
    jr c, jr_049_44e1                             ; $4551: $38 $8e

    rrca                                          ; $4553: $0f
    ld d, a                                       ; $4554: $57
    ld a, a                                       ; $4555: $7f
    rst $20                                       ; $4556: $e7
    adc l                                         ; $4557: $8d
    sub a                                         ; $4558: $97
    rst $38                                       ; $4559: $ff
    inc hl                                        ; $455a: $23
    cpl                                           ; $455b: $2f
    ld l, d                                       ; $455c: $6a
    add hl, hl                                    ; $455d: $29
    sbc $db                                       ; $455e: $de $db
    dec e                                         ; $4560: $1d
    ld b, h                                       ; $4561: $44
    add $cd                                       ; $4562: $c6 $cd
    ld l, c                                       ; $4564: $69
    db $e3                                        ; $4565: $e3
    jp nc, $92dc                                  ; $4566: $d2 $dc $92

    cpl                                           ; $4569: $2f
    push bc                                       ; $456a: $c5
    cp e                                          ; $456b: $bb
    jp c, $aae9                                   ; $456c: $da $e9 $aa

    and c                                         ; $456f: $a1
    sbc d                                         ; $4570: $9a
    adc c                                         ; $4571: $89
    ld b, b                                       ; $4572: $40
    push af                                       ; $4573: $f5
    add a                                         ; $4574: $87
    sbc d                                         ; $4575: $9a
    pop af                                        ; $4576: $f1
    ld bc, $a697                                  ; $4577: $01 $97 $a6
    push af                                       ; $457a: $f5
    cp a                                          ; $457b: $bf
    ret c                                         ; $457c: $d8

    ld l, e                                       ; $457d: $6b
    ccf                                           ; $457e: $3f
    db $e3                                        ; $457f: $e3
    inc bc                                        ; $4580: $03
    xor a                                         ; $4581: $af
    jr z, jr_049_4549                             ; $4582: $28 $c5

    ld [hl], c                                    ; $4584: $71
    inc e                                         ; $4585: $1c
    rrca                                          ; $4586: $0f
    ret c                                         ; $4587: $d8

    ld [de], a                                    ; $4588: $12
    bit 1, e                                      ; $4589: $cb $4b

Call_049_458b:
    inc sp                                        ; $458b: $33
    push bc                                       ; $458c: $c5
    cp e                                          ; $458d: $bb
    inc l                                         ; $458e: $2c
    ld b, l                                       ; $458f: $45
    push de                                       ; $4590: $d5
    ret c                                         ; $4591: $d8

    call c, $9919                                 ; $4592: $dc $19 $99
    sbc e                                         ; $4595: $9b
    rla                                           ; $4596: $17
    dec sp                                        ; $4597: $3b
    ld [hl], a                                    ; $4598: $77
    xor b                                         ; $4599: $a8
    ld d, [hl]                                    ; $459a: $56
    ld [bc], a                                    ; $459b: $02
    dec sp                                        ; $459c: $3b
    ld h, c                                       ; $459d: $61
    and b                                         ; $459e: $a0
    or d                                          ; $459f: $b2
    adc $b9                                       ; $45a0: $ce $b9
    add h                                         ; $45a2: $84
    ld h, b                                       ; $45a3: $60
    ld h, [hl]                                    ; $45a4: $66
    cp c                                          ; $45a5: $b9
    or b                                          ; $45a6: $b0
    inc a                                         ; $45a7: $3c
    rst $38                                       ; $45a8: $ff
    sbc e                                         ; $45a9: $9b
    pop af                                        ; $45aa: $f1
    ld bc, $1b6f                                  ; $45ab: $01 $6f $1b
    rst $28                                       ; $45ae: $ef
    xor [hl]                                      ; $45af: $ae
    sbc c                                         ; $45b0: $99
    ld a, $b5                                     ; $45b1: $3e $b5
    ld [hl], h                                    ; $45b3: $74
    push hl                                       ; $45b4: $e5
    nop                                           ; $45b5: $00
    sub a                                         ; $45b6: $97
    ld b, [hl]                                    ; $45b7: $46
    inc h                                         ; $45b8: $24
    and $62                                       ; $45b9: $e6 $62
    ld a, [c]                                     ; $45bb: $f2
    ld b, a                                       ; $45bc: $47
    ld c, e                                       ; $45bd: $4b
    inc sp                                        ; $45be: $33
    push bc                                       ; $45bf: $c5
    adc e                                         ; $45c0: $8b
    cp d                                          ; $45c1: $ba
    inc sp                                        ; $45c2: $33
    ld [hl-], a                                   ; $45c3: $32
    scf                                           ; $45c4: $37
    db $e3                                        ; $45c5: $e3
    ld e, l                                       ; $45c6: $5d
    sub e                                         ; $45c7: $93
    dec sp                                        ; $45c8: $3b
    or l                                          ; $45c9: $b5
    inc a                                         ; $45ca: $3c
    db $d3                                        ; $45cb: $d3
    cp d                                          ; $45cc: $ba
    ld l, d                                       ; $45cd: $6a
    ld h, $9a                                     ; $45ce: $26 $9a
    ld l, e                                       ; $45d0: $6b
    cp c                                          ; $45d1: $b9
    rst $20                                       ; $45d2: $e7
    ret                                           ; $45d3: $c9


    ld b, c                                       ; $45d4: $41
    rst $18                                       ; $45d5: $df
    sub h                                         ; $45d6: $94
    ld c, [hl]                                    ; $45d7: $4e
    ld a, [$07c6]                                 ; $45d8: $fa $c6 $07
    rst $08                                       ; $45db: $cf
    reti                                          ; $45dc: $d9


    adc $c8                                       ; $45dd: $ce $c8
    call c, $98bc                                 ; $45df: $dc $bc $98
    ld l, [hl]                                    ; $45e2: $6e
    ld c, c                                       ; $45e3: $49
    ld h, e                                       ; $45e4: $63
    add d                                         ; $45e5: $82
    ld h, [hl]                                    ; $45e6: $66
    ld a, h                                       ; $45e7: $7c
    nop                                           ; $45e8: $00
    xor a                                         ; $45e9: $af
    adc b                                         ; $45ea: $88
    ld b, h                                       ; $45eb: $44
    rla                                           ; $45ec: $17
    di                                            ; $45ed: $f3
    add $03                                       ; $45ee: $c6 $03
    sbc b                                         ; $45f0: $98
    ld h, b                                       ; $45f1: $60
    sub c                                         ; $45f2: $91
    add hl, de                                    ; $45f3: $19
    dec l                                         ; $45f4: $2d
    rlc e                                         ; $45f5: $cb $03
    cp a                                          ; $45f7: $bf
    ld a, $3e                                     ; $45f8: $3e $3e
    nop                                           ; $45fa: $00
    rst $10                                       ; $45fb: $d7
    ld [hl], d                                    ; $45fc: $72
    cp [hl]                                       ; $45fd: $be
    ld l, e                                       ; $45fe: $6b
    ld c, c                                       ; $45ff: $49
    ld [hl], c                                    ; $4600: $71
    and a                                         ; $4601: $a7
    xor e                                         ; $4602: $ab
    or $3c                                        ; $4603: $f6 $3c
    add hl, sp                                    ; $4605: $39
    add sp, -$65                                  ; $4606: $e8 $9b
    jp nc, $df49                                  ; $4608: $d2 $49 $df

    cp c                                          ; $460b: $b9
    dec h                                         ; $460c: $25
    xor [hl]                                      ; $460d: $ae
    ld e, $ca                                     ; $460e: $1e $ca
    dec b                                         ; $4610: $05
    adc [hl]                                      ; $4611: $8e
    sub $d8                                       ; $4612: $d6 $d8
    add l                                         ; $4614: $85
    cp a                                          ; $4615: $bf
    dec bc                                        ; $4616: $0b
    ld a, [hl-]                                   ; $4617: $3a
    ld c, c                                       ; $4618: $49
    ld c, $fa                                     ; $4619: $0e $fa
    and $a2                                       ; $461b: $e6 $a2
    ld e, a                                       ; $461d: $5f
    ld e, $fa                                     ; $461e: $1e $fa
    ld h, $a3                                     ; $4620: $26 $a3
    ld [$a5e1], sp                                ; $4622: $08 $e1 $a5
    ld h, [hl]                                    ; $4625: $66
    cp h                                          ; $4626: $bc
    rst $20                                       ; $4627: $e7
    ret                                           ; $4628: $c9


    ld b, c                                       ; $4629: $41
    rst $18                                       ; $462a: $df
    call c, $8319                                 ; $462b: $dc $19 $83
    sbc h                                         ; $462e: $9c
    ld d, b                                       ; $462f: $50
    ld l, l                                       ; $4630: $6d
    add hl, bc                                    ; $4631: $09
    ld [$d903], sp                                ; $4632: $08 $03 $d9
    ld h, c                                       ; $4635: $61
    ld [bc], a                                    ; $4636: $02
    xor d                                         ; $4637: $aa
    rst $00                                       ; $4638: $c7
    sbc e                                         ; $4639: $9b
    sub d                                         ; $463a: $92
    sbc e                                         ; $463b: $9b
    ld [hl], e                                    ; $463c: $73
    rst $38                                       ; $463d: $ff
    and a                                         ; $463e: $a7
    cp c                                          ; $463f: $b9
    xor l                                         ; $4640: $ad
    ld e, $7f                                     ; $4641: $1e $7f
    or a                                          ; $4643: $b7
    db $e4                                        ; $4644: $e4
    ret                                           ; $4645: $c9


    ld d, d                                       ; $4646: $52
    ld [hl], $2f                                  ; $4647: $36 $2f
    and $1d                                       ; $4649: $e6 $1d
    or l                                          ; $464b: $b5
    and b                                         ; $464c: $a0
    adc e                                         ; $464d: $8b
    ld a, [hl]                                    ; $464e: $7e
    ld a, c                                       ; $464f: $79
    rst $20                                       ; $4650: $e7
    ld c, $fc                                     ; $4651: $0e $fc
    ld a, [$2749]                                 ; $4653: $fa $49 $27
    or e                                          ; $4656: $b3
    cp c                                          ; $4657: $b9
    sbc a                                         ; $4658: $9f
    cp [hl]                                       ; $4659: $be
    and h                                         ; $465a: $a4
    ldh [$61], a                                  ; $465b: $e0 $61
    pop de                                        ; $465d: $d1
    scf                                           ; $465e: $37
    db $e3                                        ; $465f: $e3
    inc bc                                        ; $4660: $03
    ld d, a                                       ; $4661: $57
    adc l                                         ; $4662: $8d
    ld [hl], a                                    ; $4663: $77
    ld l, d                                       ; $4664: $6a
    ld a, c                                       ; $4665: $79
    jr z, jr_049_46cf                             ; $4666: $28 $67

    ld e, d                                       ; $4668: $5a
    db $fc                                        ; $4669: $fc
    ld bc, $39ef                                  ; $466a: $01 $ef $39
    ldh a, [$90]                                  ; $466d: $f0 $90
    db $e3                                        ; $466f: $e3
    inc bc                                        ; $4670: $03
    ld l, a                                       ; $4671: $6f
    adc b                                         ; $4672: $88
    add c                                         ; $4673: $81
    ld d, b                                       ; $4674: $50
    pop bc                                        ; $4675: $c1
    jp $965d                                      ; $4676: $c3 $5d $96


    and d                                         ; $4679: $a2
    ld l, d                                       ; $467a: $6a
    ld l, h                                       ; $467b: $6c
    add $07                                       ; $467c: $c6 $07
    rst $10                                       ; $467e: $d7
    ld [$734b], a                                 ; $467f: $ea $4b $73
    dec l                                         ; $4682: $2d
    rla                                           ; $4683: $17
    jr c, jr_049_46e0                             ; $4684: $38 $5a

    ld h, e                                       ; $4686: $63
    daa                                           ; $4687: $27
    add hl, bc                                    ; $4688: $09
    inc bc                                        ; $4689: $03
    ret nz                                        ; $468a: $c0

    ld l, e                                       ; $468b: $6b
    ld [hl], e                                    ; $468c: $73
    rst $10                                       ; $468d: $d7
    ld [de], a                                    ; $468e: $12
    ld d, b                                       ; $468f: $50
    dec a                                         ; $4690: $3d
    sbc $94                                       ; $4691: $de $94
    call c, $33dc                                 ; $4693: $dc $dc $33
    add hl, bc                                    ; $4696: $09
    rla                                           ; $4697: $17
    inc bc                                        ; $4698: $03
    rst $10                                       ; $4699: $d7
    rra                                           ; $469a: $1f
    xor d                                         ; $469b: $aa
    rst $00                                       ; $469c: $c7
    add $bb                                       ; $469d: $c6 $bb
    sbc $49                                       ; $469f: $de $49
    daa                                           ; $46a1: $27
    ld a, c                                       ; $46a2: $79
    cp [hl]                                       ; $46a3: $be
    ld b, e                                       ; $46a4: $43
    xor l                                         ; $46a5: $ad
    dec e                                         ; $46a6: $1d
    push bc                                       ; $46a7: $c5
    ld h, h                                       ; $46a8: $64
    adc h                                         ; $46a9: $8c
    ld d, l                                       ; $46aa: $55
    inc bc                                        ; $46ab: $03
    dec d                                         ; $46ac: $15
    ret z                                         ; $46ad: $c8

    ld b, c                                       ; $46ae: $41
    reti                                          ; $46af: $d9


    call c, $868f                                 ; $46b0: $dc $8f $86
    add hl, bc                                    ; $46b3: $09
    xor b                                         ; $46b4: $a8
    ld e, $6f                                     ; $46b5: $1e $6f
    ld c, d                                       ; $46b7: $4a
    ld l, [hl]                                    ; $46b8: $6e
    adc [hl]                                      ; $46b9: $8e
    dec sp                                        ; $46ba: $3b
    db $f4                                        ; $46bb: $f4
    ld c, l                                       ; $46bc: $4d
    ld b, [hl]                                    ; $46bd: $46
    ld de, $4bc2                                  ; $46be: $11 $c2 $4b
    call $00f8                                    ; $46c1: $cd $f8 $00
    ld c, a                                       ; $46c4: $4f
    ld l, d                                       ; $46c5: $6a
    or l                                          ; $46c6: $b5
    and b                                         ; $46c7: $a0
    ld l, e                                       ; $46c8: $6b
    ld [hl], e                                    ; $46c9: $73
    sub d                                         ; $46ca: $92
    inc e                                         ; $46cb: $1c
    db $f4                                        ; $46cc: $f4
    ei                                            ; $46cd: $fb
    and d                                         ; $46ce: $a2

jr_049_46cf:
    ld h, c                                       ; $46cf: $61
    ld [bc], a                                    ; $46d0: $02
    xor d                                         ; $46d1: $aa
    rst $00                                       ; $46d2: $c7
    sbc e                                         ; $46d3: $9b
    sub d                                         ; $46d4: $92
    rst $20                                       ; $46d5: $e7
    ld h, d                                       ; $46d6: $62
    ld a, d                                       ; $46d7: $7a
    sbc [hl]                                      ; $46d8: $9e
    scf                                           ; $46d9: $37
    ld e, [hl]                                    ; $46da: $5e
    ret nc                                        ; $46db: $d0

    dec h                                         ; $46dc: $25
    sub [hl]                                      ; $46dd: $96
    rla                                           ; $46de: $17
    sub [hl]                                      ; $46df: $96

jr_049_46e0:
    ld h, h                                       ; $46e0: $64
    sub e                                         ; $46e1: $93
    cpl                                           ; $46e2: $2f
    and [hl]                                      ; $46e3: $a6
    dec bc                                        ; $46e4: $0b
    ld d, $74                                     ; $46e5: $16 $74
    ld h, c                                       ; $46e7: $61
    ld a, c                                       ; $46e8: $79
    sbc b                                         ; $46e9: $98
    dec bc                                        ; $46ea: $0b
    cp d                                          ; $46eb: $ba
    ld h, a                                       ; $46ec: $67
    ld [de], a                                    ; $46ed: $12
    ld l, $06                                     ; $46ee: $2e $06
    xor [hl]                                      ; $46f0: $ae
    ccf                                           ; $46f1: $3f
    ld d, h                                       ; $46f2: $54
    adc a                                         ; $46f3: $8f
    adc l                                         ; $46f4: $8d
    ld [hl], a                                    ; $46f5: $77
    ld e, c                                       ; $46f6: $59
    sbc $e9                                       ; $46f7: $de $e9
    sub e                                         ; $46f9: $93
    rst $20                                       ; $46fa: $e7
    ld a, c                                       ; $46fb: $79
    bit 0, l                                      ; $46fc: $cb $45
    ld b, $50                                     ; $46fe: $06 $50
    pop bc                                        ; $4700: $c1
    jp $de81                                      ; $4701: $c3 $81 $de


    db $ec                                        ; $4704: $ec
    sbc e                                         ; $4705: $9b
    adc h                                         ; $4706: $8c
    ld [hl+], a                                   ; $4707: $22
    add h                                         ; $4708: $84
    or a                                          ; $4709: $b7
    db $e4                                        ; $470a: $e4
    rst $10                                       ; $470b: $d7
    inc e                                         ; $470c: $1c
    xor b                                         ; $470d: $a8
    ld a, [$2dc4]                                 ; $470e: $fa $c4 $2d
    ld sp, hl                                     ; $4711: $f9
    ld a, b                                       ; $4712: $78
    xor a                                         ; $4713: $af
    sbc b                                         ; $4714: $98
    ld e, h                                       ; $4715: $5c
    ret nc                                        ; $4716: $d0

    dec a                                         ; $4717: $3d
    sub e                                         ; $4718: $93
    ld [hl], b                                    ; $4719: $70
    ld sp, $fd70                                  ; $471a: $31 $70 $fd
    and c                                         ; $471d: $a1
    ld a, d                                       ; $471e: $7a
    db $ec                                        ; $471f: $ec
    sbc d                                         ; $4720: $9a
    dec sp                                        ; $4721: $3b
    rst $38                                       ; $4722: $ff
    jp z, $e585                                   ; $4723: $ca $85 $e5

    add hl, hl                                    ; $4726: $29
    ld a, b                                       ; $4727: $78
    ld hl, sp-$41                                 ; $4728: $f8 $bf
    and $12                                       ; $472a: $e6 $12
    dec d                                         ; $472c: $15
    ld [hl], e                                    ; $472d: $73
    ld h, $5a                                     ; $472e: $26 $5a
    sbc d                                         ; $4730: $9a
    pop de                                        ; $4731: $d1
    inc h                                         ; $4732: $24
    add hl, sp                                    ; $4733: $39
    add sp, -$65                                  ; $4734: $e8 $9b
    pop af                                        ; $4736: $f1
    sbc [hl]                                      ; $4737: $9e
    or e                                          ; $4738: $b3
    dec h                                         ; $4739: $25
    sub [hl]                                      ; $473a: $96
    rla                                           ; $473b: $17
    sub [hl]                                      ; $473c: $96
    rst $30                                       ; $473d: $f7
    ld d, [hl]                                    ; $473e: $56
    ld c, c                                       ; $473f: $49
    ld hl, sp-$42                                 ; $4740: $f8 $be
    cp c                                          ; $4742: $b9
    and a                                         ; $4743: $a7
    cp [hl]                                       ; $4744: $be
    ld a, [de]                                    ; $4745: $1a
    ld h, [hl]                                    ; $4746: $66
    cp h                                          ; $4747: $bc
    ld h, a                                       ; $4748: $67
    ld [hl], d                                    ; $4749: $72
    ld a, [c]                                     ; $474a: $f2
    ld b, a                                       ; $474b: $47
    ld c, e                                       ; $474c: $4b
    inc l                                         ; $474d: $2c
    adc a                                         ; $474e: $8f
    ld c, e                                       ; $474f: $4b
    ld c, $98                                     ; $4750: $0e $98
    ei                                            ; $4752: $fb
    ccf                                           ; $4753: $3f
    ld a, c                                       ; $4754: $79
    db $e3                                        ; $4755: $e3
    dec b                                         ; $4756: $05
    sbc l                                         ; $4757: $9d
    rst $28                                       ; $4758: $ef
    adc $55                                       ; $4759: $ce $55
    sub e                                         ; $475b: $93
    db $e4                                        ; $475c: $e4
    and b                                         ; $475d: $a0
    ld l, a                                       ; $475e: $6f
    ld l, $ac                                     ; $475f: $2e $ac
    ret nz                                        ; $4761: $c0

    inc bc                                        ; $4762: $03
    ld [hl], l                                    ; $4763: $75
    ld a, a                                       ; $4764: $7f
    ld a, [$3ee6]                                 ; $4765: $fa $e6 $3e
    inc [hl]                                      ; $4768: $34
    rst $18                                       ; $4769: $df
    ld c, c                                       ; $476a: $49
    ld [hl], d                                    ; $476b: $72
    ret nc                                        ; $476c: $d0

    scf                                           ; $476d: $37
    dec [hl]                                      ; $476e: $35
    ld b, $8a                                     ; $476f: $06 $8a
    rst $20                                       ; $4771: $e7
    or c                                          ; $4772: $b1
    ld b, e                                       ; $4773: $43
    cp c                                          ; $4774: $b9
    and b                                         ; $4775: $a0
    dec bc                                        ; $4776: $0b
    dec hl                                        ; $4777: $2b
    inc c                                         ; $4778: $0c
    inc d                                         ; $4779: $14
    call nc, $c66d                                ; $477a: $d4 $6d $c6
    rlca                                          ; $477d: $07
    rst $10                                       ; $477e: $d7
    dec sp                                        ; $477f: $3b
    jp hl                                         ; $4780: $e9


    inc h                                         ; $4781: $24
    cpl                                           ; $4782: $2f
    ld a, [hl+]                                   ; $4783: $2a
    cpl                                           ; $4784: $2f
    jp nz, Jump_049_5160                          ; $4785: $c2 $60 $51

    dec sp                                        ; $4788: $3b
    db $d3                                        ; $4789: $d3
    ld l, d                                       ; $478a: $6a
    ld b, c                                       ; $478b: $41
    ld [hl], a                                    ; $478c: $77
    ld b, d                                       ; $478d: $42
    call $aef1                                    ; $478e: $cd $f1 $ae
    ret                                           ; $4791: $c9


    ret                                           ; $4792: $c9


    and $7c                                       ; $4793: $e6 $7c
    rla                                           ; $4795: $17
    or l                                          ; $4796: $b5
    adc d                                         ; $4797: $8a
    dec sp                                        ; $4798: $3b
    ld c, h                                       ; $4799: $4c
    ld b, b                                       ; $479a: $40
    push af                                       ; $479b: $f5
    ld a, b                                       ; $479c: $78
    ld d, e                                       ; $479d: $53
    ld [hl], d                                    ; $479e: $72
    ld [hl], e                                    ; $479f: $73
    and [hl]                                      ; $47a0: $a6
    db $e3                                        ; $47a1: $e3
    inc bc                                        ; $47a2: $03
    cpl                                           ; $47a3: $2f
    or l                                          ; $47a4: $b5
    rla                                           ; $47a5: $17
    ld b, e                                       ; $47a6: $43
    cp c                                          ; $47a7: $b9
    add sp, -$69                                  ; $47a8: $e8 $97
    rla                                           ; $47aa: $17
    sub [hl]                                      ; $47ab: $96
    rst $00                                       ; $47ac: $c7
    rra                                           ; $47ad: $1f
    ld e, $ee                                     ; $47ae: $1e $ee

jr_049_47b0:
    ld e, h                                       ; $47b0: $5c
    dec l                                         ; $47b1: $2d
    sbc d                                         ; $47b2: $9a
    ld l, $35                                     ; $47b3: $2e $35
    db $e3                                        ; $47b5: $e3
    inc bc                                        ; $47b6: $03
    xor a                                         ; $47b7: $af
    sbc b                                         ; $47b8: $98
    jp c, $e687                                   ; $47b9: $da $87 $e6

    adc l                                         ; $47bc: $8d
    rla                                           ; $47bd: $17
    ld [hl], h                                    ; $47be: $74
    and b                                         ; $47bf: $a0
    call $fff9                                    ; $47c0: $cd $f9 $ff
    add hl, hl                                    ; $47c3: $29
    push de                                       ; $47c4: $d5
    jr nz, @-$6b                                  ; $47c5: $20 $93

    inc l                                         ; $47c7: $2c
    cp $00                                        ; $47c8: $fe $00
    rst $28                                       ; $47ca: $ef
    ld a, l                                       ; $47cb: $7d
    db $d3                                        ; $47cc: $d3
    ld l, d                                       ; $47cd: $6a
    ld b, c                                       ; $47ce: $41
    ld [hl], a                                    ; $47cf: $77
    ld b, d                                       ; $47d0: $42
    call $01f1                                    ; $47d1: $cd $f1 $01
    ld l, a                                       ; $47d4: $6f
    ld a, h                                       ; $47d5: $7c
    sbc [hl]                                      ; $47d6: $9e
    ld h, d                                       ; $47d7: $62
    ld [hl-], a                                   ; $47d8: $32
    xor c                                         ; $47d9: $a9
    ld l, $76                                     ; $47da: $2e $76
    ld l, c                                       ; $47dc: $69
    ld b, h                                       ; $47dd: $44
    ld h, d                                       ; $47de: $62
    ld [c], a                                     ; $47df: $e2
    inc bc                                        ; $47e0: $03
    rst $10                                       ; $47e1: $d7
    cp e                                          ; $47e2: $bb
    add sp, -$69                                  ; $47e3: $e8 $97
    daa                                           ; $47e5: $27
    jr c, jr_049_47b0                             ; $47e6: $38 $c8

    call Call_000_0c49                            ; $47e8: $cd $49 $0c
    ld h, h                                       ; $47eb: $64
    di                                            ; $47ec: $f3
    ld h, d                                       ; $47ed: $62
    sub a                                         ; $47ee: $97
    ld b, [hl]                                    ; $47ef: $46
    inc h                                         ; $47f0: $24
    ld h, $3e                                     ; $47f1: $26 $3e
    nop                                           ; $47f3: $00
    sub a                                         ; $47f4: $97
    ld e, b                                       ; $47f5: $58
    jp c, $8319                                   ; $47f6: $da $19 $83

    inc e                                         ; $47f9: $1c
    ld l, b                                       ; $47fa: $68
    ld [hl], e                                    ; $47fb: $73
    sbc b                                         ; $47fc: $98
    add b                                         ; $47fd: $80
    ld [$a6f1], a                                 ; $47fe: $ea $f1 $a6
    db $e4                                        ; $4801: $e4
    and $c5                                       ; $4802: $e6 $c5
    ld l, $8d                                     ; $4804: $2e $8d
    ld c, b                                       ; $4806: $48
    ld c, h                                       ; $4807: $4c
    ld a, h                                       ; $4808: $7c
    nop                                           ; $4809: $00
    ld l, a                                       ; $480a: $6f
    db $fd                                        ; $480b: $fd
    ld c, a                                       ; $480c: $4f
    di                                            ; $480d: $f3
    dec a                                         ; $480e: $3d
    ld [hl], a                                    ; $480f: $77
    rra                                           ; $4810: $1f
    ld a, [c]                                     ; $4811: $f2
    ld h, h                                       ; $4812: $64
    ldh a, [$90]                                  ; $4813: $f0 $90
    rla                                           ; $4815: $17
    db $fd                                        ; $4816: $fd
    ld a, [c]                                     ; $4817: $f2
    add d                                         ; $4818: $82
    ld c, [hl]                                    ; $4819: $4e
    ld [hl], b                                    ; $481a: $70
    sub b                                         ; $481b: $90
    sbc e                                         ; $481c: $9b
    dec sp                                        ; $481d: $3b
    ld h, e                                       ; $481e: $63
    sub b                                         ; $481f: $90
    rla                                           ; $4820: $17
    cp e                                          ; $4821: $bb
    inc [hl]                                      ; $4822: $34
    ld [hl+], a                                   ; $4823: $22
    ld sp, $01f1                                  ; $4824: $31 $f1 $01
    ld l, a                                       ; $4827: $6f
    or a                                          ; $4828: $b7
    cp h                                          ; $4829: $bc
    and b                                         ; $482a: $a0
    dec sp                                        ; $482b: $3b
    sbc c                                         ; $482c: $99
    pop de                                        ; $482d: $d1
    ld d, b                                       ; $482e: $50
    ld c, $13                                     ; $482f: $0e $13
    ld d, b                                       ; $4831: $50
    dec a                                         ; $4832: $3d
    sbc $94                                       ; $4833: $de $94
    call c, $b49c                                 ; $4835: $dc $9c $b4
    sbc h                                         ; $4838: $9c
    adc e                                         ; $4839: $8b
    jp hl                                         ; $483a: $e9


jr_049_483b:
    sbc e                                         ; $483b: $9b
    ei                                            ; $483c: $fb
    ret nc                                        ; $483d: $d0

    jp nz, $14f2                                  ; $483e: $c2 $f2 $14

    inc a                                         ; $4841: $3c
    db $fc                                        ; $4842: $fc
    ld e, a                                       ; $4843: $5f
    ld [hl], e                                    ; $4844: $73
    adc c                                         ; $4845: $89
    adc d                                         ; $4846: $8a
    ld a, c                                       ; $4847: $79
    push hl                                       ; $4848: $e5
    nop                                           ; $4849: $00
    rst $08                                       ; $484a: $cf
    reti                                          ; $484b: $d9


    ld a, $b4                                     ; $484c: $3e $b4
    di                                            ; $484e: $f3
    xor a                                         ; $484f: $af
    ld e, h                                       ; $4850: $5c
    sbc d                                         ; $4851: $9a
    pop de                                        ; $4852: $d1
    ld a, [hl]                                    ; $4853: $7e
    add d                                         ; $4854: $82
    ld a, [bc]                                    ; $4855: $0a
    db $e4                                        ; $4856: $e4
    and b                                         ; $4857: $a0
    xor h                                         ; $4858: $ac
    add $40                                       ; $4859: $c6 $40
    halt                                          ; $485b: $76
    add b                                         ; $485c: $80
    ld c, h                                       ; $485d: $4c
    ld b, c                                       ; $485e: $41
    ld e, a                                       ; $485f: $5f
    db $eb                                        ; $4860: $eb
    ld [hl], d                                    ; $4861: $72
    ld d, b                                       ; $4862: $50
    dec d                                         ; $4863: $15
    rst $28                                       ; $4864: $ef
    ld a, [hl+]                                   ; $4865: $2a
    halt                                          ; $4866: $76
    and a                                         ; $4867: $a7
    sub d                                         ; $4868: $92
    ld l, h                                       ; $4869: $6c
    adc $b4                                       ; $486a: $ce $b4
    ld e, d                                       ; $486c: $5a
    ld h, h                                       ; $486d: $64
    jr nz, jr_049_483b                            ; $486e: $20 $cb

    call $ffb9                                    ; $4870: $cd $b9 $ff
    db $d3                                        ; $4873: $d3
    inc h                                         ; $4874: $24
    add hl, sp                                    ; $4875: $39
    add sp, -$65                                  ; $4876: $e8 $9b
    ld l, e                                       ; $4878: $6b
    adc $d2                                       ; $4879: $ce $d2
    sub a                                         ; $487b: $97
    ld a, [hl-]                                   ; $487c: $3a
    cp $6e                                        ; $487d: $fe $6e
    ret                                           ; $487f: $c9


    sub e                                         ; $4880: $93
    and l                                         ; $4881: $a5
    cp h                                          ; $4882: $bc
    dec bc                                        ; $4883: $0b
    inc de                                        ; $4884: $13
    ld d, b                                       ; $4885: $50
    dec a                                         ; $4886: $3d
    sbc $94                                       ; $4887: $de $94
    call c, $0f8c                                 ; $4889: $dc $8c $0f
    rst $28                                       ; $488c: $ef
    ld a, l                                       ; $488d: $7d
    ld [bc], a                                    ; $488e: $02
    dec hl                                        ; $488f: $2b
    cp c                                          ; $4890: $b9
    rst $38                                       ; $4891: $ff
    db $d3                                        ; $4892: $d3
    cp h                                          ; $4893: $bc
    pop af                                        ; $4894: $f1
    add d                                         ; $4895: $82
    ld l, $e8                                     ; $4896: $2e $e8
    ld b, d                                       ; $4898: $42
    ld c, e                                       ; $4899: $4b
    xor a                                         ; $489a: $af
    ldh [$e1], a                                  ; $489b: $e0 $e1
    ld l, a                                       ; $489d: $6f
    ld [hl], $e7                                  ; $489e: $36 $e7
    ld e, d                                       ; $48a0: $5a
    adc $93                                       ; $48a1: $ce $93
    ret                                           ; $48a3: $c9


    ld h, [hl]                                    ; $48a4: $66
    add sp, -$60                                  ; $48a5: $e8 $a0
    sbc a                                         ; $48a7: $9f
    ld e, c                                       ; $48a8: $59
    add [hl]                                      ; $48a9: $86
    dec d                                         ; $48aa: $15
    ld a, b                                       ; $48ab: $78
    and [hl]                                      ; $48ac: $a6
    push de                                       ; $48ad: $d5
    add d                                         ; $48ae: $82
    xor $dc                                       ; $48af: $ee $dc
    ld b, c                                       ; $48b1: $41
    jp c, $1c91                                   ; $48b2: $da $91 $1c

    rst $28                                       ; $48b5: $ef
    push af                                       ; $48b6: $f5
    rra                                           ; $48b7: $1f
    ld b, l                                       ; $48b8: $45
    ld [$4c3a], sp                                ; $48b9: $08 $3a $4c
    ld b, b                                       ; $48bc: $40
    push af                                       ; $48bd: $f5
    ld a, b                                       ; $48be: $78
    ld d, e                                       ; $48bf: $53
    ld [hl], d                                    ; $48c0: $72
    ld [hl], e                                    ; $48c1: $73
    jp nc, Jump_049_6cc9                          ; $48c2: $d2 $c9 $6c

    ld c, $c2                                     ; $48c5: $0e $c2
    jr nz, @-$17                                  ; $48c7: $20 $e7

    ld a, a                                       ; $48c9: $7f
    inc sp                                        ; $48ca: $33
    ld a, $00                                     ; $48cb: $3e $00
    sub a                                         ; $48cd: $97
    ld b, $08                                     ; $48ce: $06 $08
    db $fd                                        ; $48d0: $fd
    push bc                                       ; $48d1: $c5
    ld c, [hl]                                    ; $48d2: $4e
    ld h, [hl]                                    ; $48d3: $66
    inc [hl]                                      ; $48d4: $34
    ld l, c                                       ; $48d5: $69
    add hl, sp                                    ; $48d6: $39
    sub h                                         ; $48d7: $94
    jp Jump_049_5404                              ; $48d8: $c3 $04 $54


    adc a                                         ; $48db: $8f
    scf                                           ; $48dc: $37
    dec h                                         ; $48dd: $25
    scf                                           ; $48de: $37
    rst $20                                       ; $48df: $e7
    ld h, d                                       ; $48e0: $62
    ld a, [$3ee6]                                 ; $48e1: $fa $e6 $3e
    or h                                          ; $48e4: $b4
    or b                                          ; $48e5: $b0
    inc a                                         ; $48e6: $3c
    dec b                                         ; $48e7: $05
    rrca                                          ; $48e8: $0f
    rst $38                                       ; $48e9: $ff
    rst $10                                       ; $48ea: $d7
    ld e, h                                       ; $48eb: $5c
    and d                                         ; $48ec: $a2
    ld h, d                                       ; $48ed: $62
    ld e, [hl]                                    ; $48ee: $5e
    add hl, sp                                    ; $48ef: $39
    nop                                           ; $48f0: $00
    rst $10                                       ; $48f1: $d7
    cp e                                          ; $48f2: $bb
    ld h, a                                       ; $48f3: $67
    ld [de], a                                    ; $48f4: $12
    ld l, $06                                     ; $48f5: $2e $06
    xor [hl]                                      ; $48f7: $ae
    ccf                                           ; $48f8: $3f
    ld d, h                                       ; $48f9: $54
    adc a                                         ; $48fa: $8f
    sbc l                                         ; $48fb: $9d
    ld e, c                                       ; $48fc: $59
    ld l, $2c                                     ; $48fd: $2e $2c
    rst $08                                       ; $48ff: $cf
    ld [hl], l                                    ; $4900: $75
    or h                                          ; $4901: $b4
    ld l, [hl]                                    ; $4902: $6e
    ld e, [hl]                                    ; $4903: $5e
    inc l                                         ; $4904: $2c
    cp h                                          ; $4905: $bc
    pop af                                        ; $4906: $f1
    jp z, $c79e                                   ; $4907: $ca $9e $c7

    ld b, b                                       ; $490a: $40
    xor [hl]                                      ; $490b: $ae
    ld l, d                                       ; $490c: $6a
    sbc b                                         ; $490d: $98
    di                                            ; $490e: $f3
    ret c                                         ; $490f: $d8

    sub c                                         ; $4910: $91
    ld d, c                                       ; $4911: $51
    rlca                                          ; $4912: $07
    ret z                                         ; $4913: $c8

    inc d                                         ; $4914: $14
    db $f4                                        ; $4915: $f4
    or l                                          ; $4916: $b5
    ld l, $07                                     ; $4917: $2e $07
    ld d, l                                       ; $4919: $55
    di                                            ; $491a: $f3
    ret c                                         ; $491b: $d8

    dec b                                         ; $491c: $05
    ld e, l                                       ; $491d: $5d
    adc b                                         ; $491e: $88
    and l                                         ; $491f: $a5
    dec [hl]                                      ; $4920: $35
    rst $20                                       ; $4921: $e7
    call Call_049_6768                            ; $4922: $cd $68 $67
    inc l                                         ; $4925: $2c
    rst $00                                       ; $4926: $c7
    cp e                                          ; $4927: $bb
    ld h, $17                                     ; $4928: $26 $17
    ld d, [hl]                                    ; $492a: $56
    ret c                                         ; $492b: $d8

    ret                                           ; $492c: $c9


    ld a, b                                       ; $492d: $78
    xor [hl]                                      ; $492e: $ae
    db $e3                                        ; $492f: $e3
    ret nc                                        ; $4930: $d0

    xor c                                         ; $4931: $a9
    inc h                                         ; $4932: $24
    ld hl, $c96d                                  ; $4933: $21 $6d $c9
    inc bc                                        ; $4936: $03
    dec a                                         ; $4937: $3d
    ld h, e                                       ; $4938: $63
    di                                            ; $4939: $f3
    ld h, d                                       ; $493a: $62
    sub c                                         ; $493b: $91
    add hl, de                                    ; $493c: $19
    call $d19b                                    ; $493d: $cd $9b $d1
    and d                                         ; $4940: $a2
    rst $08                                       ; $4941: $cf
    call c, Call_000_279c                         ; $4942: $dc $9c $27
    sub e                                         ; $4945: $93
    call $96b9                                    ; $4946: $cd $b9 $96
    ld c, e                                       ; $4949: $4b
    db $ec                                        ; $494a: $ec
    cp c                                          ; $494b: $b9
    add hl, sp                                    ; $494c: $39
    rst $28                                       ; $494d: $ef
    xor b                                         ; $494e: $a8
    ld a, c                                       ; $494f: $79
    db $ec                                        ; $4950: $ec
    jp nz, $430a                                  ; $4951: $c2 $0a $43

    add hl, sp                                    ; $4954: $39
    ld a, a                                       ; $4955: $7f
    dec de                                        ; $4956: $1b
    call $0641                                    ; $4957: $cd $41 $06
    dec h                                         ; $495a: $25
    ld b, a                                       ; $495b: $47
    ld [hl], d                                    ; $495c: $72
    ld a, h                                       ; $495d: $7c
    nop                                           ; $495e: $00
    ld d, a                                       ; $495f: $57
    ret                                           ; $4960: $c9


    ld h, h                                       ; $4961: $64
    di                                            ; $4962: $f3
    jp z, $cf01                                   ; $4963: $ca $01 $cf

    add h                                         ; $4966: $84
    ld [hl], c                                    ; $4967: $71
    inc e                                         ; $4968: $1c
    rst $28                                       ; $4969: $ef
    ld e, h                                       ; $496a: $5c
    inc e                                         ; $496b: $1c
    jp z, Jump_000_3279                           ; $496c: $ca $79 $32

    reti                                          ; $496f: $d9


    cp h                                          ; $4970: $bc
    or d                                          ; $4971: $b2
    ld l, e                                       ; $4972: $6b
    ld [hl], d                                    ; $4973: $72
    ld b, d                                       ; $4974: $42
    db $fd                                        ; $4975: $fd
    xor a                                         ; $4976: $af
    or $5d                                        ; $4977: $f6 $5d
    add h                                         ; $4979: $84
    ld b, c                                       ; $497a: $41
    ld l, $fc                                     ; $497b: $2e $fc
    jp hl                                         ; $497d: $e9


    rst $30                                       ; $497e: $f7
    and d                                         ; $497f: $a2
    add e                                         ; $4980: $83
    ld a, [hl-]                                   ; $4981: $3a
    sbc $55                                       ; $4982: $de $55
    cp e                                          ; $4984: $bb
    ld c, l                                       ; $4985: $4d
    db $ed                                        ; $4986: $ed

jr_049_4987:
    ld h, h                                       ; $4987: $64
    ld b, [hl]                                    ; $4988: $46
    dec bc                                        ; $4989: $0b
    inc l                                         ; $498a: $2c
    adc [hl]                                      ; $498b: $8e
    db $e3                                        ; $498c: $e3
    cp l                                          ; $498d: $bd
    add sp, -$60                                  ; $498e: $e8 $a0
    ld e, [hl]                                    ; $4990: $5e
    db $f4                                        ; $4991: $f4
    sra e                                         ; $4992: $cb $2b
    cp c                                          ; $4994: $b9
    sub [hl]                                      ; $4995: $96
    ld c, e                                       ; $4996: $4b
    db $ec                                        ; $4997: $ec
    cp c                                          ; $4998: $b9
    add hl, de                                    ; $4999: $19
    rst $28                                       ; $499a: $ef
    adc l                                         ; $499b: $8d
    rst $08                                       ; $499c: $cf
    ld d, e                                       ; $499d: $53
    ld c, h                                       ; $499e: $4c
    ld h, $25                                     ; $499f: $26 $25
    ld d, [hl]                                    ; $49a1: $56
    ld e, l                                       ; $49a2: $5d
    db $ec                                        ; $49a3: $ec
    jp nc, $c488                                  ; $49a4: $d2 $88 $c4

    call nz, $9707                                ; $49a7: $c4 $07 $97
    and [hl]                                      ; $49aa: $a6
    push af                                       ; $49ab: $f5
    cp a                                          ; $49ac: $bf
    ret c                                         ; $49ad: $d8

    and l                                         ; $49ae: $a5
    ld de, $b989                                  ; $49af: $11 $89 $b9
    ret c                                         ; $49b2: $d8

    ret                                           ; $49b3: $c9


    ld a, b                                       ; $49b4: $78
    ld h, c                                       ; $49b5: $61
    add l                                         ; $49b6: $85
    dec b                                         ; $49b7: $05
    sbc l                                         ; $49b8: $9d
    add b                                         ; $49b9: $80
    pop bc                                        ; $49ba: $c1
    add d                                         ; $49bb: $82
    ld e, [hl]                                    ; $49bc: $5e
    add hl, sp                                    ; $49bd: $39
    nop                                           ; $49be: $00
    cpl                                           ; $49bf: $2f
    ld h, d                                       ; $49c0: $62
    sub b                                         ; $49c1: $90
    cp e                                          ; $49c2: $bb
    sub [hl]                                      ; $49c3: $96
    add b                                         ; $49c4: $80
    ld [$a6f1], a                                 ; $49c5: $ea $f1 $a6

jr_049_49c8:
    db $e4                                        ; $49c8: $e4
    and $9e                                       ; $49c9: $e6 $9e
    ld c, c                                       ; $49cb: $49
    cp b                                          ; $49cc: $b8
    jr jr_049_4987                                ; $49cd: $18 $b8

    cp $50                                        ; $49cf: $fe $50
    dec a                                         ; $49d1: $3d
    or $62                                        ; $49d2: $f6 $62
    xor $ff                                       ; $49d4: $ee $ff
    inc [hl]                                      ; $49d6: $34
    rst $18                                       ; $49d7: $df
    jp hl                                         ; $49d8: $e9


    xor d                                         ; $49d9: $aa
    dec a                                         ; $49da: $3d
    ld c, a                                       ; $49db: $4f
    ld c, $fa                                     ; $49dc: $0e $fa
    and [hl]                                      ; $49de: $a6
    ld [hl], h                                    ; $49df: $74
    jp nc, Jump_000_3e37                          ; $49e0: $d2 $37 $3e

    nop                                           ; $49e3: $00
    ld c, a                                       ; $49e4: $4f
    add [hl]                                      ; $49e5: $86
    rla                                           ; $49e6: $17
    dec bc                                        ; $49e7: $0b
    ld a, [hl-]                                   ; $49e8: $3a
    and c                                         ; $49e9: $a1
    ret                                           ; $49ea: $c9


    ei                                            ; $49eb: $fb
    ret nc                                        ; $49ec: $d0

    jr nc, jr_049_49f0                            ; $49ed: $30 $01

    push de                                       ; $49ef: $d5

jr_049_49f0:
    db $e3                                        ; $49f0: $e3
    ld c, l                                       ; $49f1: $4d
    ret                                           ; $49f2: $c9


    call $e0c0                                    ; $49f3: $cd $c0 $e0
    ld hl, $7bc7                                  ; $49f6: $21 $c7 $7b
    ld d, d                                       ; $49f9: $52
    xor e                                         ; $49fa: $ab
    dec b                                         ; $49fb: $05
    ld e, l                                       ; $49fc: $5d
    ld e, b                                       ; $49fd: $58
    ld e, $f8                                     ; $49fe: $1e $f8

jr_049_4a00:
    push af                                       ; $4a00: $f5
    dec sp                                        ; $4a01: $3b
    and c                                         ; $4a02: $a1
    and $f9                                       ; $4a03: $e6 $f9
    rst $18                                       ; $4a05: $df
    cp h                                          ; $4a06: $bc
    sbc b                                         ; $4a07: $98
    ld [hl], h                                    ; $4a08: $74
    ld [hl], d                                    ; $4a09: $72
    ld b, c                                       ; $4a0a: $41
    daa                                           ; $4a0b: $27
    sub h                                         ; $4a0c: $94
    ld c, e                                       ; $4a0d: $4b
    inc de                                        ; $4a0e: $13
    inc e                                         ; $4a0f: $1c
    db $e4                                        ; $4a10: $e4
    and $04                                       ; $4a11: $e6 $04
    adc l                                         ; $4a13: $8d
    add c                                         ; $4a14: $81
    db $db                                        ; $4a15: $db
    adc h                                         ; $4a16: $8c
    rrca                                          ; $4a17: $0f
    rst $10                                       ; $4a18: $d7
    db $e4                                        ; $4a19: $e4
    ld a, h                                       ; $4a1a: $7c
    ld d, e                                       ; $4a1b: $53
    adc $1b                                       ; $4a1c: $ce $1b
    rst $08                                       ; $4a1e: $cf
    inc hl                                        ; $4a1f: $23
    xor a                                         ; $4a20: $af
    call $96b9                                    ; $4a21: $cd $b9 $96
    di                                            ; $4a24: $f3
    dec e                                         ; $4a25: $1d
    ld h, $a0                                     ; $4a26: $26 $a0
    ld a, d                                       ; $4a28: $7a
    cp h                                          ; $4a29: $bc
    add hl, hl                                    ; $4a2a: $29
    cp c                                          ; $4a2b: $b9
    add hl, sp                                    ; $4a2c: $39
    ld d, h                                       ; $4a2d: $54
    pop af                                        ; $4a2e: $f1
    ld bc, $e4d7                                  ; $4a2f: $01 $d7 $e4
    ld b, d                                       ; $4a32: $42
    di                                            ; $4a33: $f3
    inc bc                                        ; $4a34: $03
    push de                                       ; $4a35: $d5
    jr jr_049_4a00                                ; $4a36: $18 $c8

    jr c, jr_049_49c8                             ; $4a38: $38 $8e

    rla                                           ; $4a3a: $17
    sub [hl]                                      ; $4a3b: $96
    add a                                         ; $4a3c: $87
    ld l, d                                       ; $4a3d: $6a
    ld h, $7f                                     ; $4a3e: $26 $7f

jr_049_4a40:
    ld h, d                                       ; $4a40: $62
    add hl, sp                                    ; $4a41: $39
    ld a, $00                                     ; $4a42: $3e $00
    rst $10                                       ; $4a44: $d7
    db $e4                                        ; $4a45: $e4
    ld e, h                                       ; $4a46: $5c
    ld [hl-], a                                   ; $4a47: $32
    inc bc                                        ; $4a48: $03
    adc e                                         ; $4a49: $8b
    ld a, [hl-]                                   ; $4a4a: $3a
    inc de                                        ; $4a4b: $13
    db $ed                                        ; $4a4c: $ed
    ld h, h                                       ; $4a4d: $64
    inc a                                         ; $4a4e: $3c
    rst $18                                       ; $4a4f: $df
    dec a                                         ; $4a50: $3d
    sub e                                         ; $4a51: $93
    ld [hl], b                                    ; $4a52: $70
    ld sp, $fd70                                  ; $4a53: $31 $70 $fd
    and c                                         ; $4a56: $a1
    ld a, d                                       ; $4a57: $7a
    db $ec                                        ; $4a58: $ec
    ld b, d                                       ; $4a59: $42
    inc l                                         ; $4a5a: $2c
    ld a, l                                       ; $4a5b: $7d
    or a                                          ; $4a5c: $b7
    inc [hl]                                      ; $4a5d: $34
    xor $dc                                       ; $4a5e: $ee $dc
    ld [de], a                                    ; $4a60: $12
    ld d, a                                       ; $4a61: $57
    db $eb                                        ; $4a62: $eb
    and $c2                                       ; $4a63: $e6 $c2
    ld d, [hl]                                    ; $4a65: $56
    call nz, $01f1                                ; $4a66: $c4 $f1 $01
    ld c, a                                       ; $4a69: $4f
    ld a, [hl-]                                   ; $4a6a: $3a
    daa                                           ; $4a6b: $27
    pop af                                        ; $4a6c: $f1
    cp e                                          ; $4a6d: $bb
    ld h, $17                                     ; $4a6e: $26 $17
    ld d, [hl]                                    ; $4a70: $56
    ld e, b                                       ; $4a71: $58
    call nc, Call_000_25b9                        ; $4a72: $d4 $b9 $25
    add c                                         ; $4a75: $81
    inc l                                         ; $4a76: $2c
    cp l                                          ; $4a77: $bd
    ld hl, sp+$03                                 ; $4a78: $f8 $03
    ld d, a                                       ; $4a7a: $57
    dec e                                         ; $4a7b: $1d
    dec [hl]                                      ; $4a7c: $35
    adc a                                         ; $4a7d: $8f
    inc a                                         ; $4a7e: $3c
    ld d, h                                       ; $4a7f: $54
    ld l, e                                       ; $4a80: $6b
    ld [hl], e                                    ; $4a81: $73
    xor [hl]                                      ; $4a82: $ae
    db $e3                                        ; $4a83: $e3
    ret nc                                        ; $4a84: $d0

    xor c                                         ; $4a85: $a9
    inc h                                         ; $4a86: $24
    ld hl, $c96d                                  ; $4a87: $21 $6d $c9
    pop af                                        ; $4a8a: $f1
    ld bc, $e4d7                                  ; $4a8b: $01 $d7 $e4
    ld a, h                                       ; $4a8e: $7c
    ld d, e                                       ; $4a8f: $53
    adc $1b                                       ; $4a90: $ce $1b
    rrca                                          ; $4a92: $0f
    push hl                                       ; $4a93: $e5
    ld a, h                                       ; $4a94: $7c
    rst $08                                       ; $4a95: $cf
    ld e, l                                       ; $4a96: $5d
    ld e, b                                       ; $4a97: $58
    sub d                                         ; $4a98: $92
    call $00f8                                    ; $4a99: $cd $f8 $00
    ld c, a                                       ; $4a9c: $4f
    ld a, [hl-]                                   ; $4a9d: $3a
    and a                                         ; $4a9e: $a7
    adc e                                         ; $4a9f: $8b
    ld a, c                                       ; $4aa0: $79
    db $e3                                        ; $4aa1: $e3
    ld b, c                                       ; $4aa2: $41
    add h                                         ; $4aa3: $84
    sub d                                         ; $4aa4: $92
    db $e3                                        ; $4aa5: $e3
    inc bc                                        ; $4aa6: $03
    rst $10                                       ; $4aa7: $d7
    db $e4                                        ; $4aa8: $e4
    cp h                                          ; $4aa9: $bc
    pop bc                                        ; $4aaa: $c1
    ld b, e                                       ; $4aab: $43
    ld e, [hl]                                    ; $4aac: $5e
    ld e, b                                       ; $4aad: $58
    sbc [hl]                                      ; $4aae: $9e
    jp hl                                         ; $4aaf: $e9


    jr c, jr_049_4a40                             ; $4ab0: $38 $8e

    daa                                           ; $4ab2: $27
    sub b                                         ; $4ab3: $90
    and l                                         ; $4ab4: $a5
    rst $08                                       ; $4ab5: $cf
    ld [hl], d                                    ; $4ab6: $72
    or l                                          ; $4ab7: $b5
    adc d                                         ; $4ab8: $8a
    ld [hl], a                                    ; $4ab9: $77
    or l                                          ; $4aba: $b5
    ld h, e                                       ; $4abb: $63
    rlca                                          ; $4abc: $07
    ld [hl], e                                    ; $4abd: $73
    xor [hl]                                      ; $4abe: $ae
    push hl                                       ; $4abf: $e5
    ld a, h                                       ; $4ac0: $7c
    ld [hl], a                                    ; $4ac1: $77
    push de                                       ; $4ac2: $d5
    ld de, $aa89                                  ; $4ac3: $11 $89 $aa
    ld sp, $7341                                  ; $4ac6: $31 $41 $73
    ld h, a                                       ; $4ac9: $67
    db $e3                                        ; $4aca: $e3
    sub l                                         ; $4acb: $95
    and $7e                                       ; $4acc: $e6 $7e
    cp l                                          ; $4ace: $bd
    xor b                                         ; $4acf: $a8
    adc l                                         ; $4ad0: $8d
    rrca                                          ; $4ad1: $0f
    ld d, a                                       ; $4ad2: $57
    sub c                                         ; $4ad3: $91
    ld [hl], a                                    ; $4ad4: $77
    add $f2                                       ; $4ad5: $c6 $f2
    ld c, d                                       ; $4ad7: $4a
    ld [hl], e                                    ; $4ad8: $73
    xor c                                         ; $4ad9: $a9
    adc l                                         ; $4ada: $8d
    db $fc                                        ; $4adb: $fc
    inc e                                         ; $4adc: $1c
    db $e4                                        ; $4add: $e4
    ld a, b                                       ; $4ade: $78
    rst $10                                       ; $4adf: $d7
    db $e4                                        ; $4ae0: $e4
    ld e, h                                       ; $4ae1: $5c
    ld [hl-], a                                   ; $4ae2: $32
    inc bc                                        ; $4ae3: $03
    adc e                                         ; $4ae4: $8b
    ld a, [hl-]                                   ; $4ae5: $3a
    inc de                                        ; $4ae6: $13
    db $ed                                        ; $4ae7: $ed
    ld h, h                                       ; $4ae8: $64
    cp h                                          ; $4ae9: $bc
    or b                                          ; $4aea: $b0
    inc a                                         ; $4aeb: $3c
    ld d, h                                       ; $4aec: $54
    pop af                                        ; $4aed: $f1
    ld bc, $7d6f                                  ; $4aee: $01 $6f $7d
    dec c                                         ; $4af1: $0d

Call_049_4af2:
    sbc d                                         ; $4af2: $9a
    ld l, d                                       ; $4af3: $6a
    ld h, c                                       ; $4af4: $61
    ld a, c                                       ; $4af5: $79
    jp nz, Jump_000_1caf                          ; $4af6: $c2 $af $1c

    xor d                                         ; $4af9: $aa

jr_049_4afa:
    add l                                         ; $4afa: $85
    push hl                                       ; $4afb: $e5
    sbc c                                         ; $4afc: $99
    ld h, $07                                     ; $4afd: $26 $07
    di                                            ; $4aff: $f3
    db $f4                                        ; $4b00: $f4
    adc c                                         ; $4b01: $89
    xor e                                         ; $4b02: $ab
    db $e3                                        ; $4b03: $e3
    inc bc                                        ; $4b04: $03
    cpl                                           ; $4b05: $2f
    cp $4c                                        ; $4b06: $fe $4c
    sub h                                         ; $4b08: $94
    ld c, d                                       ; $4b09: $4a

Jump_049_4b0a:
    ld a, [de]                                    ; $4b0a: $1a
    inc d                                         ; $4b0b: $14
    rst $28                                       ; $4b0c: $ef
    db $ed                                        ; $4b0d: $ed
    sub [hl]                                      ; $4b0e: $96
    sub $e6                                       ; $4b0f: $d6 $e6
    ld b, b                                       ; $4b11: $40
    db $dd                                        ; $4b12: $dd
    sbc a                                         ; $4b13: $9f
    cp [hl]                                       ; $4b14: $be
    add hl, de                                    ; $4b15: $19
    rra                                           ; $4b16: $1f
    ld c, a                                       ; $4b17: $4f
    ld l, d                                       ; $4b18: $6a
    push de                                       ; $4b19: $d5
    jr z, jr_049_4afa                             ; $4b1a: $28 $de

    ld c, e                                       ; $4b1c: $4b
    push hl                                       ; $4b1d: $e5
    add hl, bc                                    ; $4b1e: $09
    and [hl]                                      ; $4b1f: $a6
    ld d, l                                       ; $4b20: $55
    and e                                         ; $4b21: $a3
    ld b, l                                       ; $4b22: $45
    ld h, [hl]                                    ; $4b23: $66
    inc [hl]                                      ; $4b24: $34
    ld l, a                                       ; $4b25: $6f
    cp c                                          ; $4b26: $b9
    di                                            ; $4b27: $f3
    ld c, a                                       ; $4b28: $4f
    ld e, a                                       ; $4b29: $5f
    sbc d                                         ; $4b2a: $9a
    db $10                                        ; $4b2b: $10
    rra                                           ; $4b2c: $1f
    ld d, a                                       ; $4b2d: $57
    sub c                                         ; $4b2e: $91
    rla                                           ; $4b2f: $17
    db $fd                                        ; $4b30: $fd
    ld a, [c]                                     ; $4b31: $f2
    ld c, d                                       ; $4b32: $4a
    ld l, e                                       ; $4b33: $6b
    ld [hl], e                                    ; $4b34: $73
    ld h, a                                       ; $4b35: $67
    inc c                                         ; $4b36: $0c
    ld [hl-], a                                   ; $4b37: $32
    ld a, $00                                     ; $4b38: $3e $00
    cpl                                           ; $4b3a: $2f
    add hl, sp                                    ; $4b3b: $39
    dec bc                                        ; $4b3c: $0b
    dec hl                                        ; $4b3d: $2b
    inc c                                         ; $4b3e: $0c
    push hl                                       ; $4b3f: $e5
    cp h                                          ; $4b40: $bc
    and e                                         ; $4b41: $a3
    ld h, [hl]                                    ; $4b42: $66
    ld [hl+], a                                   ; $4b43: $22
    pop de                                        ; $4b44: $d1
    rst $30                                       ; $4b45: $f7
    xor b                                         ; $4b46: $a8
    ld c, a                                       ; $4b47: $4f
    sbc a                                         ; $4b48: $9f
    cp b                                          ; $4b49: $b8
    ld a, [hl-]                                   ; $4b4a: $3a
    ld a, $00                                     ; $4b4b: $3e $00
    rst $10                                       ; $4b4d: $d7
    dec sp                                        ; $4b4e: $3b
    and c                                         ; $4b4f: $a1
    ret                                           ; $4b50: $c9


    rrc a                                         ; $4b51: $cb $0f
    and [hl]                                      ; $4b53: $a6
    dec l                                         ; $4b54: $2d
    pop bc                                        ; $4b55: $c1
    ld [de], a                                    ; $4b56: $12
    res 2, e                                      ; $4b57: $cb $93
    jp c, $2e8c                                   ; $4b59: $da $8c $2e

    or $ca                                        ; $4b5c: $f6 $ca
    ld h, a                                       ; $4b5e: $67
    ld l, $c5                                     ; $4b5f: $2e $c5
    ld a, e                                       ; $4b61: $7b
    ret                                           ; $4b62: $c9


    adc h                                         ; $4b63: $8c
    ld h, $38                                     ; $4b64: $26 $38
    ret z                                         ; $4b66: $c8

    call Call_000_1805                            ; $4b67: $cd $05 $18
    call nz, Call_049_5707                        ; $4b6a: $c4 $07 $57
    sub c                                         ; $4b6d: $91
    and a                                         ; $4b6e: $a7
    or h                                          ; $4b6f: $b4
    add hl, de                                    ; $4b70: $19
    cpl                                           ; $4b71: $2f
    ld c, e                                       ; $4b72: $4b

Call_049_4b73:
    and b                                         ; $4b73: $a0
    xor c                                         ; $4b74: $a9
    or $a1                                        ; $4b75: $f6 $a1
    adc e                                         ; $4b77: $8b
    cp l                                          ; $4b78: $bd
    ld a, [c]                                     ; $4b79: $f2
    sbc c                                         ; $4b7a: $99
    ld c, e                                       ; $4b7b: $4b
    pop af                                        ; $4b7c: $f1
    ld e, [hl]                                    ; $4b7d: $5e
    and c                                         ; $4b7e: $a1
    cpl                                           ; $4b7f: $2f
    or h                                          ; $4b80: $b4
    or h                                          ; $4b81: $b4
    or b                                          ; $4b82: $b0
    cp h                                          ; $4b83: $bc
    db $fc                                        ; $4b84: $fc
    ld h, b                                       ; $4b85: $60
    sub c                                         ; $4b86: $91
    add hl, de                                    ; $4b87: $19
    xor l                                         ; $4b88: $ad
    ld c, l                                       ; $4b89: $4d
    dec d                                         ; $4b8a: $15
    rra                                           ; $4b8b: $1f
    ld d, a                                       ; $4b8c: $57
    sub c                                         ; $4b8d: $91
    add a                                         ; $4b8e: $87
    ld l, d                                       ; $4b8f: $6a
    cp [hl]                                       ; $4b90: $be
    di                                            ; $4b91: $f3
    dec h                                         ; $4b92: $25
    rst $18                                       ; $4b93: $df
    ret                                           ; $4b94: $c9


    sub [hl]                                      ; $4b95: $96
    and $8d                                       ; $4b96: $e6 $8d
    rla                                           ; $4b98: $17
    ld [hl], h                                    ; $4b99: $74
    sbc b                                         ; $4b9a: $98
    ldh a, [$1f]                                  ; $4b9b: $f0 $1f
    ld b, c                                       ; $4b9d: $41
    cp d                                          ; $4b9e: $ba
    push hl                                       ; $4b9f: $e5
    sbc l                                         ; $4ba0: $9d
    ld c, d                                       ; $4ba1: $4a
    ld [hl], d                                    ; $4ba2: $72
    sbc b                                         ; $4ba3: $98
    ld e, $9b                                     ; $4ba4: $1e $9b
    inc e                                         ; $4ba6: $1c
    rst $28                                       ; $4ba7: $ef
    sbc d                                         ; $4ba8: $9a
    inc e                                         ; $4ba9: $1c
    ld d, e                                       ; $4baa: $53
    push hl                                       ; $4bab: $e5
    call c, Call_049_69ff                         ; $4bac: $dc $ff $69
    adc d                                         ; $4baf: $8a
    ret                                           ; $4bb0: $c9


    ld b, h                                       ; $4bb1: $44
    cp e                                          ; $4bb2: $bb
    ld [hl], a                                    ; $4bb3: $77
    sub b                                         ; $4bb4: $90
    sub e                                         ; $4bb5: $93
    inc a                                         ; $4bb6: $3c
    inc de                                        ; $4bb7: $13
    ld e, l                                       ; $4bb8: $5d
    xor h                                         ; $4bb9: $ac
    ld e, d                                       ; $4bba: $5a
    halt                                          ; $4bbb: $76
    or d                                          ; $4bbc: $b2
    and l                                         ; $4bbd: $a5
    ld a, c                                       ; $4bbe: $79
    db $e3                                        ; $4bbf: $e3
    dec b                                         ; $4bc0: $05
    dec e                                         ; $4bc1: $1d
    sub a                                         ; $4bc2: $97
    inc e                                         ; $4bc3: $1c
    jr nz, jr_049_4c45                            ; $4bc4: $20 $7f

    call nz, $ff3b                                ; $4bc6: $c4 $3b $ff
    db $f4                                        ; $4bc9: $f4
    and l                                         ; $4bca: $a5
    ld a, c                                       ; $4bcb: $79
    db $e3                                        ; $4bcc: $e3
    dec b                                         ; $4bcd: $05
    db $dd                                        ; $4bce: $dd
    xor c                                         ; $4bcf: $a9
    inc h                                         ; $4bd0: $24
    rst $20                                       ; $4bd1: $e7
    ld a, [hl]                                    ; $4bd2: $7e
    call $a3ff                                    ; $4bd3: $cd $ff $a3
    rra                                           ; $4bd6: $1f
    xor d                                         ; $4bd7: $aa
    ld hl, sp+$00                                 ; $4bd8: $f8 $00
    ld l, a                                       ; $4bda: $6f
    ld [hl+], a                                   ; $4bdb: $22
    dec hl                                        ; $4bdc: $2b
    xor [hl]                                      ; $4bdd: $ae
    ld l, h                                       ; $4bde: $6c
    ld a, [$5d8b]                                 ; $4bdf: $fa $8b $5d
    ld a, [de]                                    ; $4be2: $1a
    sub c                                         ; $4be3: $91
    sbc b                                         ; $4be4: $98
    ld a, b                                       ; $4be5: $78
    rst $10                                       ; $4be6: $d7
    dec sp                                        ; $4be7: $3b
    and c                                         ; $4be8: $a1
    ret                                           ; $4be9: $c9


    di                                            ; $4bea: $f3
    ld e, l                                       ; $4beb: $5d
    ld c, e                                       ; $4bec: $4b
    adc d                                         ; $4bed: $8a
    dec sp                                        ; $4bee: $3b
    adc a                                         ; $4bef: $8f
    ld e, l                                       ; $4bf0: $5d
    ld d, h                                       ; $4bf1: $54
    sbc [hl]                                      ; $4bf2: $9e
    ld l, c                                       ; $4bf3: $69
    db $dd                                        ; $4bf4: $dd
    ld h, c                                       ; $4bf5: $61
    ld [bc], a                                    ; $4bf6: $02
    xor d                                         ; $4bf7: $aa
    rst $00                                       ; $4bf8: $c7
    sbc e                                         ; $4bf9: $9b
    sub d                                         ; $4bfa: $92
    sbc e                                         ; $4bfb: $9b
    db $e3                                        ; $4bfc: $e3
    sub d                                         ; $4bfd: $92
    inc bc                                        ; $4bfe: $03
    db $e4                                        ; $4bff: $e4
    adc a                                         ; $4c00: $8f
    jr c, @-$20                                   ; $4c01: $38 $de

    sub e                                         ; $4c03: $93
    ld e, d                                       ; $4c04: $5a
    ld c, l                                       ; $4c05: $4d
    xor b                                         ; $4c06: $a8
    cp $89                                        ; $4c07: $fe $89
    add hl, bc                                    ; $4c09: $09
    ld h, $09                                     ; $4c0a: $26 $09
    inc bc                                        ; $4c0c: $03
    or b                                          ; $4c0d: $b0
    and b                                         ; $4c0e: $a0
    db $e3                                        ; $4c0f: $e3
    ld d, e                                       ; $4c10: $53
    dec sp                                        ; $4c11: $3b
    cp $6e                                        ; $4c12: $fe $6e
    ret                                           ; $4c14: $c9


    sub e                                         ; $4c15: $93
    and l                                         ; $4c16: $a5
    inc d                                         ; $4c17: $14
    ld a, l                                       ; $4c18: $7d
    adc d                                         ; $4c19: $8a
    inc e                                         ; $4c1a: $1c
    ld e, l                                       ; $4c1b: $5d
    dec d                                         ; $4c1c: $15
    rst $28                                       ; $4c1d: $ef

jr_049_4c1e:
    add hl, sp                                    ; $4c1e: $39
    ld e, e                                       ; $4c1f: $5b
    sbc d                                         ; $4c20: $9a
    pop de                                        ; $4c21: $d1
    jr nz, jr_049_4c1e                            ; $4c22: $20 $fa

jr_049_4c24:
    and d                                         ; $4c24: $a2
    ld a, [hl+]                                   ; $4c25: $2a
    push af                                       ; $4c26: $f5
    ld l, c                                       ; $4c27: $69
    xor a                                         ; $4c28: $af
    ld h, a                                       ; $4c29: $67
    dec bc                                        ; $4c2a: $0b
    xor l                                         ; $4c2b: $ad
    cp c                                          ; $4c2c: $b9
    ld [hl], e                                    ; $4c2d: $73
    pop bc                                        ; $4c2e: $c1
    cp b                                          ; $4c2f: $b8
    and b                                         ; $4c30: $a0
    cp c                                          ; $4c31: $b9
    or b                                          ; $4c32: $b0
    pop de                                        ; $4c33: $d1
    cp h                                          ; $4c34: $bc
    pop af                                        ; $4c35: $f1
    ld d, b                                       ; $4c36: $50
    ld l, $e8                                     ; $4c37: $2e $e8
    jp nz, $030a                                  ; $4c39: $c2 $0a $03

    ld d, l                                       ; $4c3c: $55
    db $ec                                        ; $4c3d: $ec
    jr c, jr_049_4c24                             ; $4c3e: $38 $e4

    db $e3                                        ; $4c40: $e3
    inc bc                                        ; $4c41: $03
    xor a                                         ; $4c42: $af
    ret nc                                        ; $4c43: $d0

    rla                                           ; $4c44: $17

jr_049_4c45:
    ld d, l                                       ; $4c45: $55
    xor c                                         ; $4c46: $a9
    ld c, a                                       ; $4c47: $4f
    ld a, e                                       ; $4c48: $7b
    dec a                                         ; $4c49: $3d
    ld e, e                                       ; $4c4a: $5b
    add sp, -$76                                  ; $4c4b: $e8 $8a
    ld hl, sp+$03                                 ; $4c4d: $f8 $03
    ld l, a                                       ; $4c4f: $6f
    ld e, c                                       ; $4c50: $59
    xor $84                                       ; $4c51: $ee $84
    sbc l                                         ; $4c53: $9d
    and l                                         ; $4c54: $a5
    cpl                                           ; $4c55: $2f
    xor c                                         ; $4c56: $a9
    jp hl                                         ; $4c57: $e9


    sub [hl]                                      ; $4c58: $96
    ld d, $74                                     ; $4c59: $16 $74
    pop hl                                        ; $4c5b: $e1
    rst $28                                       ; $4c5c: $ef
    add d                                         ; $4c5d: $82
    xor [hl]                                      ; $4c5e: $ae
    call $77f1                                    ; $4c5f: $cd $f1 $77
    ld c, e                                       ; $4c62: $4b
    sbc [hl]                                      ; $4c63: $9e
    inc l                                         ; $4c64: $2c
    push hl                                       ; $4c65: $e5
    and d                                         ; $4c66: $a2
    ld e, a                                       ; $4c67: $5f
    ld e, [hl]                                    ; $4c68: $5e
    ld h, h                                       ; $4c69: $64
    or d                                          ; $4c6a: $b2
    ld a, c                                       ; $4c6b: $79
    ld h, l                                       ; $4c6c: $65
    xor a                                         ; $4c6d: $af
    db $fd                                        ; $4c6e: $fd
    db $f4                                        ; $4c6f: $f4
    di                                            ; $4c70: $f3
    dec a                                         ; $4c71: $3d
    ld [hl], a                                    ; $4c72: $77
    adc h                                         ; $4c73: $8c
    add c                                         ; $4c74: $81
    rst $18                                       ; $4c75: $df
    add hl, de                                    ; $4c76: $19
    ld a, c                                       ; $4c77: $79
    ld hl, $3306                                  ; $4c78: $21 $06 $33
    call $f818                                    ; $4c7b: $cd $18 $f8
    ld h, c                                       ; $4c7e: $61
    xor $8c                                       ; $4c7f: $ee $8c
    ld b, c                                       ; $4c81: $41
    ld c, [hl]                                    ; $4c82: $4e
    ld e, d                                       ; $4c83: $5a
    ld a, [c]                                     ; $4c84: $f2
    rst $38                                       ; $4c85: $ff
    inc d                                         ; $4c86: $14
    rst $28                                       ; $4c87: $ef
    add hl, sp                                    ; $4c88: $39
    ld e, e                                       ; $4c89: $5b
    ld a, [hl-]                                   ; $4c8a: $3a
    adc e                                         ; $4c8b: $8b

Call_049_4c8c:
    call z, Call_000_3e28                         ; $4c8c: $cc $28 $3e
    nop                                           ; $4c8f: $00
    ld l, a                                       ; $4c90: $6f
    dec de                                        ; $4c91: $1b
    rst $28                                       ; $4c92: $ef
    add h                                         ; $4c93: $84
    ld a, d                                       ; $4c94: $7a
    ld b, c                                       ; $4c95: $41
    cpl                                           ; $4c96: $2f
    or $ca                                        ; $4c97: $f6 $ca
    ld h, a                                       ; $4c99: $67
    ld l, $5d                                     ; $4c9a: $2e $5d
    add hl, sp                                    ; $4c9c: $39
    nop                                           ; $4c9d: $00
    rst $10                                       ; $4c9e: $d7
    db $e4                                        ; $4c9f: $e4
    jp nz, $f30a                                  ; $4ca0: $c2 $0a $f3

    db $dd                                        ; $4ca3: $dd
    add a                                         ; $4ca4: $87
    inc a                                         ; $4ca5: $3c
    add hl, de                                    ; $4ca6: $19
    inc a                                         ; $4ca7: $3c
    db $e4                                        ; $4ca8: $e4
    cp c                                          ; $4ca9: $b9
    sub [hl]                                      ; $4caa: $96
    ld a, e                                       ; $4cab: $7b
    sbc [hl]                                      ; $4cac: $9e
    inc e                                         ; $4cad: $1c
    db $f4                                        ; $4cae: $f4
    ld c, l                                       ; $4caf: $4d
    jp hl                                         ; $4cb0: $e9


    and h                                         ; $4cb1: $a4
    rst $28                                       ; $4cb2: $ef
    ld c, h                                       ; $4cb3: $4c
    xor e                                         ; $4cb4: $ab
    or l                                          ; $4cb5: $b5
    and h                                         ; $4cb6: $a4
    cp b                                          ; $4cb7: $b8
    inc sp                                        ; $4cb8: $33
    ld de, $6468                                  ; $4cb9: $11 $68 $64
    ld h, $79                                     ; $4cbc: $26 $79
    call $f441                                    ; $4cbe: $cd $41 $f4
    ld b, l                                       ; $4cc1: $45
    ld d, l                                       ; $4cc2: $55
    ld [$5ed3], a                                 ; $4cc3: $ea $d3 $5e
    ld h, a                                       ; $4cc6: $67
    ld a, [$a729]                                 ; $4cc7: $fa $29 $a7
    ret c                                         ; $4cca: $d8

    ld [hl], c                                    ; $4ccb: $71
    adc b                                         ; $4ccc: $88
    rla                                           ; $4ccd: $17
    ld [hl], l                                    ; $4cce: $75
    ld hl, $d296                                  ; $4ccf: $21 $96 $d2
    adc h                                         ; $4cd2: $8c
    ld hl, sp+$77                                 ; $4cd3: $f8 $77
    ccf                                           ; $4cd5: $3f
    ld a, [de]                                    ; $4cd6: $1a
    sbc a                                         ; $4cd7: $9f
    jp c, $77f1                                   ; $4cd8: $da $f1 $77

    ld c, e                                       ; $4cdb: $4b
    sbc [hl]                                      ; $4cdc: $9e
    inc l                                         ; $4cdd: $2c
    dec h                                         ; $4cde: $25
    dec d                                         ; $4cdf: $15
    ld e, [hl]                                    ; $4ce0: $5e
    adc b                                         ; $4ce1: $88
    sbc e                                         ; $4ce2: $9b
    inc sp                                        ; $4ce3: $33
    xor l                                         ; $4ce4: $ad
    ld h, $54                                     ; $4ce5: $26 $54
    rst $38                                       ; $4ce7: $ff
    call nz, $fb04                                ; $4ce8: $c4 $04 $fb
    ret nc                                        ; $4ceb: $d0

    cp b                                          ; $4cec: $b8
    dec bc                                        ; $4ced: $0b
    ld c, l                                       ; $4cee: $4d
    scf                                           ; $4cef: $37
    db $e3                                        ; $4cf0: $e3
    inc bc                                        ; $4cf1: $03
    ld d, a                                       ; $4cf2: $57
    adc l                                         ; $4cf3: $8d
    rla                                           ; $4cf4: $17
    dec [hl]                                      ; $4cf5: $35
    push de                                       ; $4cf6: $d5
    ld d, b                                       ; $4cf7: $50
    call $f56d                                    ; $4cf8: $cd $6d $f5
    cp b                                          ; $4cfb: $b8
    inc bc                                        ; $4cfc: $03
    adc [hl]                                      ; $4cfd: $8e
    adc [hl]                                      ; $4cfe: $8e
    rst $30                                       ; $4cff: $f7
    add d                                         ; $4d00: $82
    add hl, de                                    ; $4d01: $19
    cpl                                           ; $4d02: $2f
    ld [$ee82], a                                 ; $4d03: $ea $82 $ee
    sbc c                                         ; $4d06: $99
    add h                                         ; $4d07: $84
    adc e                                         ; $4d08: $8b
    add c                                         ; $4d09: $81
    db $eb                                        ; $4d0a: $eb
    rrca                                          ; $4d0b: $0f
    push de                                       ; $4d0c: $d5
    ld h, e                                       ; $4d0d: $63
    ld [hl], a                                    ; $4d0e: $77
    add $e6                                       ; $4d0f: $c6 $e6
    push bc                                       ; $4d11: $c5
    ld e, [hl]                                    ; $4d12: $5e
    ld sp, hl                                     ; $4d13: $f9
    call z, $f8a5                                 ; $4d14: $cc $a5 $f8
    nop                                           ; $4d17: $00
    sub a                                         ; $4d18: $97
    ld e, b                                       ; $4d19: $58
    ld e, d                                       ; $4d1a: $5a
    ld e, b                                       ; $4d1b: $58
    ld h, c                                       ; $4d1c: $61
    ld b, c                                       ; $4d1d: $41
    rla                                           ; $4d1e: $17
    ld [hl], h                                    ; $4d1f: $74
    and d                                         ; $4d20: $a2
    ld c, a                                       ; $4d21: $4f
    sub c                                         ; $4d22: $91
    and e                                         ; $4d23: $a3
    xor e                                         ; $4d24: $ab
    ld l, $f6                                     ; $4d25: $2e $f6
    jp z, $2e67                                   ; $4d27: $ca $67 $2e

    push bc                                       ; $4d2a: $c5
    db $db                                        ; $4d2b: $db
    inc sp                                        ; $4d2c: $33
    cp c                                          ; $4d2d: $b9
    ld [hl], h                                    ; $4d2e: $74
    halt                                          ; $4d2f: $76
    ld a, [hl+]                                   ; $4d30: $2a
    jr c, @-$09                                   ; $4d31: $38 $f5

    call c, $839c                                 ; $4d33: $dc $9c $83
    cp h                                          ; $4d36: $bc
    ld [$9c83], sp                                ; $4d37: $08 $83 $9c
    or h                                          ; $4d3a: $b4
    db $e4                                        ; $4d3b: $e4
    rst $38                                       ; $4d3c: $ff
    add hl, hl                                    ; $4d3d: $29
    ld a, $00                                     ; $4d3e: $3e $00
    rst $10                                       ; $4d40: $d7
    db $e4                                        ; $4d41: $e4
    jp nz, $3b0a                                  ; $4d42: $c2 $0a $3b

    ld [hl], a                                    ; $4d45: $77
    and [hl]                                      ; $4d46: $a6
    ld [hl], l                                    ; $4d47: $75
    inc hl                                        ; $4d48: $23
    inc sp                                        ; $4d49: $33
    dec l                                         ; $4d4a: $2d
    ld a, [hl]                                    ; $4d4b: $7e
    rst $10                                       ; $4d4c: $d7
    ld h, h                                       ; $4d4d: $64
    inc e                                         ; $4d4e: $1c
    rst $00                                       ; $4d4f: $c7
    ei                                            ; $4d50: $fb
    pop hl                                        ; $4d51: $e1
    push bc                                       ; $4d52: $c5
    ld l, $8d                                     ; $4d53: $2e $8d
    ld c, b                                       ; $4d55: $48
    ld c, h                                       ; $4d56: $4c
    cp h                                          ; $4d57: $bc
    ld l, e                                       ; $4d58: $6b
    ld [hl], d                                    ; $4d59: $72
    sbc $e0                                       ; $4d5a: $de $e0
    ld hl, $1bcf                                  ; $4d5c: $21 $cf $1b
    rrca                                          ; $4d5f: $0f
    push hl                                       ; $4d60: $e5
    ld c, h                                       ; $4d61: $4c
    xor e                                         ; $4d62: $ab
    or l                                          ; $4d63: $b5
    and h                                         ; $4d64: $a4
    cp b                                          ; $4d65: $b8
    sub e                                         ; $4d66: $93
    jp c, Jump_049_768c                           ; $4d67: $da $8c $76

    cp $ce                                        ; $4d6a: $fe $ce
    adc $18                                       ; $4d6c: $ce $18
    ld h, h                                       ; $4d6e: $64
    ld a, h                                       ; $4d6f: $7c
    nop                                           ; $4d70: $00
    cpl                                           ; $4d71: $2f
    or l                                          ; $4d72: $b5
    rla                                           ; $4d73: $17
    cp e                                          ; $4d74: $bb
    inc [hl]                                      ; $4d75: $34
    ld [hl+], a                                   ; $4d76: $22
    ld sp, $993b                                  ; $4d77: $31 $3b $99
    sbc d                                         ; $4d7a: $9a
    rst $28                                       ; $4d7b: $ef
    ld e, d                                       ; $4d7c: $5a
    ld d, d                                       ; $4d7d: $52
    call c, $1735                                 ; $4d7e: $dc $35 $17
    ld h, d                                       ; $4d81: $62
    or b                                          ; $4d82: $b0
    or b                                          ; $4d83: $b0
    dec d                                         ; $4d84: $15

jr_049_4d85:
    pop af                                        ; $4d85: $f1
    jp c, $829c                                   ; $4d86: $da $9c $82

    ld a, [bc]                                    ; $4d89: $0a
    ld b, a                                       ; $4d8a: $47
    db $d3                                        ; $4d8b: $d3
    sbc l                                         ; $4d8c: $9d
    ld d, b                                       ; $4d8d: $50
    db $fd                                        ; $4d8e: $fd
    inc de                                        ; $4d8f: $13
    inc de                                        ; $4d90: $13
    inc c                                         ; $4d91: $0c
    ld d, h                                       ; $4d92: $54
    ld d, d                                       ; $4d93: $52
    ld b, c                                       ; $4d94: $41
    inc sp                                        ; $4d95: $33
    ld a, $00                                     ; $4d96: $3e $00
    rst $08                                       ; $4d98: $cf
    inc de                                        ; $4d99: $13
    ld b, $60                                     ; $4d9a: $06 $60
    jr z, jr_049_4d85                             ; $4d9c: $28 $e7

    dec l                                         ; $4d9e: $2d
    rst $30                                       ; $4d9f: $f7
    cp a                                          ; $4da0: $bf
    inc e                                         ; $4da1: $1c
    sub [hl]                                      ; $4da2: $96
    push de                                       ; $4da3: $d5
    ld a, [hl]                                    ; $4da4: $7e
    db $e4                                        ; $4da5: $e4
    adc l                                         ; $4da6: $8d
    add a                                         ; $4da7: $87
    ld [hl], d                                    ; $4da8: $72
    ld a, h                                       ; $4da9: $7c
    ld l, d                                       ; $4daa: $6a
    ld a, l                                       ; $4dab: $7d
    daa                                           ; $4dac: $27
    inc [hl]                                      ; $4dad: $34
    xor a                                         ; $4dae: $af
    inc e                                         ; $4daf: $1c
    cpl                                           ; $4db0: $2f
    ld b, a                                       ; $4db1: $47
    sbc $78                                       ; $4db2: $de $78
    ld b, c                                       ; $4db4: $41
    ld [hl], a                                    ; $4db5: $77
    cp $73                                        ; $4db6: $fe $73
    ld e, e                                       ; $4db8: $5b
    cp l                                          ; $4db9: $bd
    rst $28                                       ; $4dba: $ef
    sub [hl]                                      ; $4dbb: $96
    or $3c                                        ; $4dbc: $f6 $3c
    add hl, sp                                    ; $4dbe: $39
    add sp, -$65                                  ; $4dbf: $e8 $9b
    jp nc, $df49                                  ; $4dc1: $d2 $49 $df

    sbc l                                         ; $4dc4: $9d
    ld e, d                                       ; $4dc5: $5a
    cp [hl]                                       ; $4dc6: $be
    sbc b                                         ; $4dc7: $98
    ld [hl], h                                    ; $4dc8: $74
    ld [hl], d                                    ; $4dc9: $72
    ld b, c                                       ; $4dca: $41
    rst $20                                       ; $4dcb: $e7
    sbc d                                         ; $4dcc: $9a
    ld [c], a                                     ; $4dcd: $e2
    add l                                         ; $4dce: $85
    xor l                                         ; $4dcf: $ad
    ld e, $f8                                     ; $4dd0: $1e $f8
    push af                                       ; $4dd2: $f5
    ei                                            ; $4dd3: $fb
    add hl, hl                                    ; $4dd4: $29
    ret                                           ; $4dd5: $c9


    ld b, c                                       ; $4dd6: $41
    cp a                                          ; $4dd7: $bf
    inc de                                        ; $4dd8: $13
    sub $37                                       ; $4dd9: $d6 $37
    db $e3                                        ; $4ddb: $e3
    ld e, l                                       ; $4ddc: $5d
    dec [hl]                                      ; $4ddd: $35
    ld e, $aa                                     ; $4dde: $1e $aa
    jp hl                                         ; $4de0: $e9


    ld a, [hl-]                                   ; $4de1: $3a
    ld a, [c]                                     ; $4de2: $f2
    ld h, d                                       ; $4de3: $62
    db $fc                                        ; $4de4: $fc
    pop hl                                        ; $4de5: $e1
    pop hl                                        ; $4de6: $e1
    sub l                                         ; $4de7: $95
    inc bc                                        ; $4de8: $03
    cpl                                           ; $4de9: $2f
    sbc d                                         ; $4dea: $9a
    ld d, c                                       ; $4deb: $51
    inc e                                         ; $4dec: $1c
    rst $00                                       ; $4ded: $c7
    rlca                                          ; $4dee: $07
    rst $08                                       ; $4def: $cf
    ld d, l                                       ; $4df0: $55
    ld d, h                                       ; $4df1: $54
    adc l                                         ; $4df2: $8d
    ld [hl], b                                    ; $4df3: $70
    db $e4                                        ; $4df4: $e4
    sub [hl]                                      ; $4df5: $96
    db $fc                                        ; $4df6: $fc
    push bc                                       ; $4df7: $c5
    ld l, $4b                                     ; $4df8: $2e $4b
    ld d, c                                       ; $4dfa: $51
    dec [hl]                                      ; $4dfb: $35
    ld [hl], $e3                                  ; $4dfc: $36 $e3
    inc bc                                        ; $4dfe: $03
    rst $10                                       ; $4dff: $d7
    db $e4                                        ; $4e00: $e4
    jp nz, $a1ff                                  ; $4e01: $c2 $ff $a1

    ld a, c                                       ; $4e04: $79
    db $e3                                        ; $4e05: $e3
    and c                                         ; $4e06: $a1
    ld e, h                                       ; $4e07: $5c
    ld h, d                                       ; $4e08: $62
    ld a, c                                       ; $4e09: $79
    and [hl]                                      ; $4e0a: $a6
    ld [hl], l                                    ; $4e0b: $75
    add hl, bc                                    ; $4e0c: $09
    and b                                         ; $4e0d: $a0
    add d                                         ; $4e0e: $82
    add a                                         ; $4e0f: $87
    inc de                                        ; $4e10: $13
    sbc d                                         ; $4e11: $9a
    ld [hl], e                                    ; $4e12: $73
    rst $38                                       ; $4e13: $ff
    and a                                         ; $4e14: $a7
    or l                                          ; $4e15: $b5
    add hl, sp                                    ; $4e16: $39
    rst $10                                       ; $4e17: $d7
    ld [hl], d                                    ; $4e18: $72
    ld e, $3b                                     ; $4e19: $1e $3b
    ld c, h                                       ; $4e1b: $4c
    ld b, b                                       ; $4e1c: $40
    push af                                       ; $4e1d: $f5
    ld a, b                                       ; $4e1e: $78
    ld d, e                                       ; $4e1f: $53
    ld [hl], d                                    ; $4e20: $72
    inc sp                                        ; $4e21: $33
    ld a, $00                                     ; $4e22: $3e $00
    ld l, a                                       ; $4e24: $6f
    ld d, a                                       ; $4e25: $57
    rrc [hl]                                      ; $4e26: $cb $0e
    sub b                                         ; $4e28: $90
    add hl, hl                                    ; $4e29: $29
    add sp, $6b                                   ; $4e2a: $e8 $6b
    ld e, l                                       ; $4e2c: $5d
    ld c, $aa                                     ; $4e2d: $0e $aa
    halt                                          ; $4e2f: $76
    add $20                                       ; $4e30: $c6 $20
    rst $20                                       ; $4e32: $e7
    dec sp                                        ; $4e33: $3b
    ld [hl-], a                                   ; $4e34: $32
    ld [$0395], a                                 ; $4e35: $ea $95 $03
    cpl                                           ; $4e38: $2f
    ld h, d                                       ; $4e39: $62
    sub b                                         ; $4e3a: $90
    ei                                            ; $4e3b: $fb
    sub c                                         ; $4e3c: $91
    call Call_049_7eb7                            ; $4e3d: $cd $b7 $7e
    ld [$1147], a                                 ; $4e40: $ea $47 $11
    add d                                         ; $4e43: $82
    adc $b5                                       ; $4e44: $ce $b5
    sbc h                                         ; $4e46: $9c
    rst $28                                       ; $4e47: $ef
    cp c                                          ; $4e48: $b9
    jp Jump_049_5404                              ; $4e49: $c3 $04 $54


    adc a                                         ; $4e4c: $8f
    scf                                           ; $4e4d: $37
    dec h                                         ; $4e4e: $25
    scf                                           ; $4e4f: $37
    add a                                         ; $4e50: $87
    add hl, sp                                    ; $4e51: $39
    rst $18                                       ; $4e52: $df
    xor c                                         ; $4e53: $a9
    ld e, a                                       ; $4e54: $5f
    jr z, jr_049_4e95                             ; $4e55: $28 $3e

    nop                                           ; $4e57: $00
    ld l, a                                       ; $4e58: $6f
    ld a, l                                       ; $4e59: $7d
    dec c                                         ; $4e5a: $0d
    sbc d                                         ; $4e5b: $9a
    ld l, d                                       ; $4e5c: $6a
    ld de, $3b06                                  ; $4e5d: $11 $06 $3b
    ld h, e                                       ; $4e60: $63
    sub b                                         ; $4e61: $90
    dec hl                                        ; $4e62: $2b
    call $d2c5                                    ; $4e63: $cd $c5 $d2
    nop                                           ; $4e66: $00
    sbc c                                         ; $4e67: $99
    add d                                         ; $4e68: $82
    cp [hl]                                       ; $4e69: $be
    sub $e5                                       ; $4e6a: $d6 $e5
    and b                                         ; $4e6c: $a0
    ld l, d                                       ; $4e6d: $6a
    ld d, c                                       ; $4e6e: $51
    ld a, c                                       ; $4e6f: $79
    sbc b                                         ; $4e70: $98
    add b                                         ; $4e71: $80
    ld [$a6f1], a                                 ; $4e72: $ea $f1 $a6
    db $e4                                        ; $4e75: $e4
    and $c5                                       ; $4e76: $e6 $c5
    ld [hl+], a                                   ; $4e78: $22
    inc sp                                        ; $4e79: $33
    ld a, [de]                                    ; $4e7a: $1a
    jp z, Jump_049_5a9d                           ; $4e7b: $ca $9d $5a

    ld e, [hl]                                    ; $4e7e: $5e
    ld e, b                                       ; $4e7f: $58
    ld e, [hl]                                    ; $4e80: $5e
    ld h, d                                       ; $4e81: $62
    ld a, c                                       ; $4e82: $79
    rst $20                                       ; $4e83: $e7
    jp z, Jump_049_7c52                           ; $4e84: $ca $52 $7c

    nop                                           ; $4e87: $00
    rst $10                                       ; $4e88: $d7
    ld [hl], d                                    ; $4e89: $72
    cp [hl]                                       ; $4e8a: $be
    ld h, e                                       ; $4e8b: $63
    rlca                                          ; $4e8c: $07
    ld [hl], e                                    ; $4e8d: $73
    adc d                                         ; $4e8e: $8a
    call $ae72                                    ; $4e8f: $cd $72 $ae
    add hl, hl                                    ; $4e92: $29
    ld e, $26                                     ; $4e93: $1e $26

jr_049_4e95:
    and b                                         ; $4e95: $a0
    ld a, d                                       ; $4e96: $7a
    cp h                                          ; $4e97: $bc
    add hl, hl                                    ; $4e98: $29
    cp c                                          ; $4e99: $b9
    add hl, de                                    ; $4e9a: $19
    rra                                           ; $4e9b: $1f
    sub a                                         ; $4e9c: $97
    and [hl]                                      ; $4e9d: $a6
    push af                                       ; $4e9e: $f5
    cp a                                          ; $4e9f: $bf
    ret c                                         ; $4ea0: $d8

    adc e                                         ; $4ea1: $8b
    ld b, [hl]                                    ; $4ea2: $46
    ldh a, [$ea]                                  ; $4ea3: $f0 $ea
    ld hl, sp+$00                                 ; $4ea5: $f8 $00
    xor a                                         ; $4ea7: $af
    dec hl                                        ; $4ea8: $2b
    ld d, $bf                                     ; $4ea9: $16 $bf
    ld c, e                                       ; $4eab: $4b
    inc c                                         ; $4eac: $0c
    and [hl]                                      ; $4ead: $a6
    or h                                          ; $4eae: $b4
    add hl, de                                    ; $4eaf: $19
    call nz, $01f1                                ; $4eb0: $c4 $f1 $01
    cpl                                           ; $4eb3: $2f
    ld h, c                                       ; $4eb4: $61
    ld a, c                                       ; $4eb5: $79
    daa                                           ; $4eb6: $27
    inc sp                                        ; $4eb7: $33
    cp d                                          ; $4eb8: $ba
    ld e, b                                       ; $4eb9: $58
    adc b                                         ; $4eba: $88
    pop bc                                        ; $4ebb: $c1
    inc d                                         ; $4ebc: $14
    sbc e                                         ; $4ebd: $9b
    pop af                                        ; $4ebe: $f1
    cp h                                          ; $4ebf: $bc
    add hl, de                                    ; $4ec0: $19
    xor l                                         ; $4ec1: $ad
    add hl, sp                                    ; $4ec2: $39
    adc c                                         ; $4ec3: $89
    add c                                         ; $4ec4: $81
    db $e4                                        ; $4ec5: $e4
    ld b, l                                       ; $4ec6: $45
    sbc l                                         ; $4ec7: $9d
    ld e, c                                       ; $4ec8: $59
    add $07                                       ; $4ec9: $c6 $07
    rst $10                                       ; $4ecb: $d7
    db $e4                                        ; $4ecc: $e4
    jp nz, Jump_000_0b0a                          ; $4ecd: $c2 $0a $0b

    bit 1, e                                      ; $4ed0: $cb $4b
    inc l                                         ; $4ed2: $2c
    rst $28                                       ; $4ed3: $ef
    cp e                                          ; $4ed4: $bb
    and l                                         ; $4ed5: $a5
    cp l                                          ; $4ed6: $bd
    ld l, b                                       ; $4ed7: $68
    inc b                                         ; $4ed8: $04
    xor a                                         ; $4ed9: $af
    cp [hl]                                       ; $4eda: $be
    ld e, b                                       ; $4edb: $58
    ld h, h                                       ; $4edc: $64
    ld b, [hl]                                    ; $4edd: $46
    ei                                            ; $4ede: $fb
    ld l, [hl]                                    ; $4edf: $6e
    ld l, c                                       ; $4ee0: $69
    db $10                                        ; $4ee1: $10
    ld a, l                                       ; $4ee2: $7d
    ld d, c                                       ; $4ee3: $51
    sub l                                         ; $4ee4: $95
    ld a, [$e7b4]                                 ; $4ee5: $fa $b4 $e7
    ld d, c                                       ; $4ee8: $51
    or c                                          ; $4ee9: $b1
    ld hl, sp+$03                                 ; $4eea: $f8 $03
    rst $28                                       ; $4eec: $ef
    sbc l                                         ; $4eed: $9d
    rst $08                                       ; $4eee: $cf
    rst $20                                       ; $4eef: $e7
    di                                            ; $4ef0: $f3
    ld sp, hl                                     ; $4ef1: $f9

Call_049_4ef2:
Jump_049_4ef2:
    ld a, h                                       ; $4ef2: $7c
    adc [hl]                                      ; $4ef3: $8e

Call_049_4ef4:
    db $e3                                        ; $4ef4: $e3
    jr c, @-$70                                   ; $4ef5: $38 $8e

    rrca                                          ; $4ef7: $0f
    cpl                                           ; $4ef8: $2f
    cp $72                                        ; $4ef9: $fe $72
    ld [hl], e                                    ; $4efb: $73
    and a                                         ; $4efc: $a7
    ld l, $6c                                     ; $4efd: $2e $6c
    or h                                          ; $4eff: $b4
    call nz, Call_049_4ef2                        ; $4f00: $c4 $f2 $4e
    ld h, $65                                     ; $4f03: $26 $65
    ld l, c                                       ; $4f05: $69
    sub c                                         ; $4f06: $91
    ret                                           ; $4f07: $c9


    and $95                                       ; $4f08: $e6 $95
    inc bc                                        ; $4f0a: $03
    rst $10                                       ; $4f0b: $d7
    db $e4                                        ; $4f0c: $e4
    ld c, [hl]                                    ; $4f0d: $4e
    dec l                                         ; $4f0e: $2d
    cpl                                           ; $4f0f: $2f
    or c                                          ; $4f10: $b1
    cp h                                          ; $4f11: $bc
    cpl                                           ; $4f12: $2f
    ld e, d                                       ; $4f13: $5a
    ret nc                                        ; $4f14: $d0

    or l                                          ; $4f15: $b5
    add hl, sp                                    ; $4f16: $39
    dec b                                         ; $4f17: $05
    db $fd                                        ; $4f18: $fd
    cpl                                           ; $4f19: $2f
    ld [hl], a                                    ; $4f1a: $77
    ld [hl-], a                                   ; $4f1b: $32
    add hl, hl                                    ; $4f1c: $29
    ld c, e                                       ; $4f1d: $4b
    ld a, e                                       ; $4f1e: $7b
    cp $cd                                        ; $4f1f: $fe $cd
    sub a                                         ; $4f21: $97
    sbc $58                                       ; $4f22: $de $58
    ld h, h                                       ; $4f24: $64
    or d                                          ; $4f25: $b2
    add hl, de                                    ; $4f26: $19
    rst $28                                       ; $4f27: $ef
    ld b, l                                       ; $4f28: $45
    ld d, h                                       ; $4f29: $54
    ld a, [bc]                                    ; $4f2a: $0a
    ld e, $62                                     ; $4f2b: $1e $62
    ld [hl], e                                    ; $4f2d: $73
    ret nz                                        ; $4f2e: $c0

    adc h                                         ; $4f2f: $8c
    rla                                           ; $4f30: $17
    ld [hl], h                                    ; $4f31: $74
    and c                                         ; $4f32: $a1
    and l                                         ; $4f33: $a5
    sbc a                                         ; $4f34: $9f
    ccf                                           ; $4f35: $3f
    add hl, de                                    ; $4f36: $19
    xor c                                         ; $4f37: $a9
    ld sp, hl                                     ; $4f38: $f9
    rst $38                                       ; $4f39: $ff
    ld l, c                                       ; $4f3a: $69
    ld h, c                                       ; $4f3b: $61
    and e                                         ; $4f3c: $a3
    add l                                         ; $4f3d: $85
    ld l, l                                       ; $4f3e: $6d
    adc $b4                                       ; $4f3f: $ce $b4
    ld e, d                                       ; $4f41: $5a
    ret nc                                        ; $4f42: $d0

    add l                                         ; $4f43: $85
    adc l                                         ; $4f44: $8d
    halt                                          ; $4f45: $76
    ld [hl-], a                                   ; $4f46: $32
    add hl, hl                                    ; $4f47: $29
    ld c, e                                       ; $4f48: $4b
    dec sp                                        ; $4f49: $3b
    and c                                         ; $4f4a: $a1

jr_049_4f4b:
    and $29                                       ; $4f4b: $e6 $29
    ld a, b                                       ; $4f4d: $78
    add sp, $78                                   ; $4f4e: $e8 $78
    rst $18                                       ; $4f50: $df
    adc h                                         ; $4f51: $8c
    rrca                                          ; $4f52: $0f
    rst $28                                       ; $4f53: $ef
    sbc l                                         ; $4f54: $9d
    rst $08                                       ; $4f55: $cf
    rst $20                                       ; $4f56: $e7
    di                                            ; $4f57: $f3
    add hl, sp                                    ; $4f58: $39
    adc [hl]                                      ; $4f59: $8e
    db $e3                                        ; $4f5a: $e3
    jr c, @-$70                                   ; $4f5b: $38 $8e

    rst $10                                       ; $4f5d: $d7
    inc e                                         ; $4f5e: $1c
    sub a                                         ; $4f5f: $97
    ld c, [hl]                                    ; $4f60: $4e
    jr jr_049_4f4b                                ; $4f61: $18 $e8

    add l                                         ; $4f63: $85
    push hl                                       ; $4f64: $e5
    dec d                                         ; $4f65: $15
    db $d3                                        ; $4f66: $d3
    ld [hl], a                                    ; $4f67: $77
    xor [hl]                                      ; $4f68: $ae
    push hl                                       ; $4f69: $e5
    ld a, h                                       ; $4f6a: $7c
    ld [hl], a                                    ; $4f6b: $77
    rst $28                                       ; $4f6c: $ef
    jp Jump_049_6bbe                              ; $4f6d: $c3 $be $6b


    sbc l                                         ; $4f70: $9d
    db $d3                                        ; $4f71: $d3
    add b                                         ; $4f72: $80
    cp $9f                                        ; $4f73: $fe $9f
    ld a, h                                       ; $4f75: $7c
    cpl                                           ; $4f76: $2f
    and $fe                                       ; $4f77: $e6 $fe
    db $f4                                        ; $4f79: $f4
    call $ba9d                                    ; $4f7a: $cd $9d $ba

jr_049_4f7d:
    or b                                          ; $4f7d: $b0
    cp h                                          ; $4f7e: $bc
    or b                                          ; $4f7f: $b0
    cp d                                          ; $4f80: $ba
    sub c                                         ; $4f81: $91
    sbc c                                         ; $4f82: $99
    ld e, [hl]                                    ; $4f83: $5e
    ld h, d                                       ; $4f84: $62
    ld a, c                                       ; $4f85: $79
    dec h                                         ; $4f86: $25
    db $10                                        ; $4f87: $10
    rst $00                                       ; $4f88: $c7
    pop af                                        ; $4f89: $f1
    ld l, $8d                                     ; $4f8a: $2e $8d
    ld c, b                                       ; $4f8c: $48
    call z, $f95e                                 ; $4f8d: $cc $5e $f9
    call z, $f125                                 ; $4f90: $cc $25 $f1
    ld a, e                                       ; $4f93: $7b
    add [hl]                                      ; $4f94: $86
    ret nz                                        ; $4f95: $c0

    ld b, h                                       ; $4f96: $44
    jr jr_049_4f7d                                ; $4f97: $18 $e4

    add d                                         ; $4f99: $82
    xor [hl]                                      ; $4f9a: $ae
    sbc b                                         ; $4f9b: $98
    cp [hl]                                       ; $4f9c: $be
    ld a, [de]                                    ; $4f9d: $1a
    inc bc                                        ; $4f9e: $03
    cp c                                          ; $4f9f: $b9
    db $10                                        ; $4fa0: $10
    ld c, e                                       ; $4fa1: $4b
    db $e3                                        ; $4fa2: $e3
    xor $8c                                       ; $4fa3: $ee $8c
    call $d778                                    ; $4fa5: $cd $78 $d7
    db $e4                                        ; $4fa8: $e4
    jp nz, Jump_049_6612                          ; $4fa9: $c2 $12 $66

    sub [hl]                                      ; $4fac: $96
    ld d, $75                                     ; $4fad: $16 $75

jr_049_4faf:
    ld b, c                                       ; $4faf: $41
    rst $20                                       ; $4fb0: $e7
    sbc d                                         ; $4fb1: $9a
    cpl                                           ; $4fb2: $2f
    dec l                                         ; $4fb3: $2d
    ccf                                           ; $4fb4: $3f
    jr jr_049_4faf                                ; $4fb5: $18 $f8

    push af                                       ; $4fb7: $f5
    pop af                                        ; $4fb8: $f1
    ld bc, $2d57                                  ; $4fb9: $01 $57 $2d
    push hl                                       ; $4fbc: $e5
    sbc h                                         ; $4fbd: $9c
    sbc l                                         ; $4fbe: $9d
    xor d                                         ; $4fbf: $aa
    cpl                                           ; $4fc0: $2f
    ld b, $d1                                     ; $4fc1: $06 $d1
    rla                                           ; $4fc3: $17
    ld d, l                                       ; $4fc4: $55
    xor c                                         ; $4fc5: $a9
    ld c, a                                       ; $4fc6: $4f
    ld a, e                                       ; $4fc7: $7b
    ld e, $15                                     ; $4fc8: $1e $15
    rst $00                                       ; $4fca: $c7
    rlca                                          ; $4fcb: $07
    ld l, a                                       ; $4fcc: $6f
    sub l                                         ; $4fcd: $95
    adc $16                                       ; $4fce: $ce $16
    ld d, l                                       ; $4fd0: $55
    cpl                                           ; $4fd1: $2f
    ret nz                                        ; $4fd2: $c0

    ld h, b                                       ; $4fd3: $60
    jp nc, $b88c                                  ; $4fd4: $d2 $8c $b8

    add hl, sp                                    ; $4fd7: $39
    rst $10                                       ; $4fd8: $d7
    ld [hl], d                                    ; $4fd9: $72
    ld c, a                                       ; $4fda: $4f
    sub l                                         ; $4fdb: $95

Jump_049_4fdc:
    ld a, [hl]                                    ; $4fdc: $7e
    inc hl                                        ; $4fdd: $23
    rst $18                                       ; $4fde: $df
    ld e, l                                       ; $4fdf: $5d
    ld d, [hl]                                    ; $4fe0: $56
    xor d                                         ; $4fe1: $aa
    and $9a                                       ; $4fe2: $e6 $9a
    ld a, e                                       ; $4fe4: $7b
    db $e3                                        ; $4fe5: $e3
    cp e                                          ; $4fe6: $bb
    ld c, l                                       ; $4fe7: $4d
    inc sp                                        ; $4fe8: $33
    ld d, d                                       ; $4fe9: $52
    rla                                           ; $4fea: $17
    cp e                                          ; $4feb: $bb
    inc [hl]                                      ; $4fec: $34
    ld [hl+], a                                   ; $4fed: $22
    ld sp, $7657                                  ; $4fee: $31 $57 $76
    push de                                       ; $4ff1: $d5
    ld a, b                                       ; $4ff2: $78
    cp [hl]                                       ; $4ff3: $be
    push af                                       ; $4ff4: $f5
    dec bc                                        ; $4ff5: $0b
    ld a, [hl-]                                   ; $4ff6: $3a
    rst $10                                       ; $4ff7: $d7
    ld a, h                                       ; $4ff8: $7c
    ld l, c                                       ; $4ff9: $69
    and a                                         ; $4ffa: $a7
    ld [$d778], a                                 ; $4ffb: $ea $78 $d7
    db $e4                                        ; $4ffe: $e4
    jp nz, Jump_000_0b0a                          ; $4fff: $c2 $0a $0b

    dec de                                        ; $5002: $1b
    xor l                                         ; $5003: $ad

jr_049_5004:
    ld c, l                                       ; $5004: $4d
    dec [hl]                                      ; $5005: $35
    rst $18                                       ; $5006: $df
    ld c, c                                       ; $5007: $49
    inc sp                                        ; $5008: $33
    ld [c], a                                     ; $5009: $e2
    cp c                                          ; $500a: $b9
    sub [hl]                                      ; $500b: $96
    ld a, e                                       ; $500c: $7b
    ld a, [de]                                    ; $500d: $1a
    add hl, bc                                    ; $500e: $09
    sbc $81                                       ; $500f: $de $81
    add d                                         ; $5011: $82
    cp d                                          ; $5012: $ba
    call $9778                                    ; $5013: $cd $78 $97
    jr jr_049_5004                                ; $5016: $18 $ec

    ld h, h                                       ; $5018: $64
    ld l, d                                       ; $5019: $6a
    and l                                         ; $501a: $a5
    sub l                                         ; $501b: $95
    ret nz                                        ; $501c: $c0

    ld a, $34                                     ; $501d: $3e $34
    ld d, b                                       ; $501f: $50
    push bc                                       ; $5020: $c5
    push de                                       ; $5021: $d5
    ld a, $de                                     ; $5022: $3e $de
    db $db                                        ; $5024: $db
    add $3b                                       ; $5025: $c6 $3b
    ld a, a                                       ; $5027: $7f
    ld h, a                                       ; $5028: $67
    and l                                         ; $5029: $a5
    xor b                                         ; $502a: $a8
    dec e                                         ; $502b: $1d
    xor b                                         ; $502c: $a8
    ld d, b                                       ; $502d: $50
    add a                                         ; $502e: $87
    db $fc                                        ; $502f: $fc
    adc $18                                       ; $5030: $ce $18
    ld h, h                                       ; $5032: $64
    inc e                                         ; $5033: $1c
    rst $00                                       ; $5034: $c7
    rlca                                          ; $5035: $07
    rst $10                                       ; $5036: $d7
    db $e4                                        ; $5037: $e4
    jp nz, Jump_049_6612                          ; $5038: $c2 $12 $66

    sub [hl]                                      ; $503b: $96
    ld d, $75                                     ; $503c: $16 $75
    jp hl                                         ; $503e: $e9


    call z, $0f1b                                 ; $503f: $cc $1b $0f
    push hl                                       ; $5042: $e5
    ld a, $34                                     ; $5043: $3e $34
    rst $18                                       ; $5045: $df
    cp l                                          ; $5046: $bd
    ld e, l                                       ; $5047: $5d
    add b                                         ; $5048: $80
    ld [$b054], a                                 ; $5049: $ea $54 $b0
    xor b                                         ; $504c: $a8
    inc a                                         ; $504d: $3c
    ld l, h                                       ; $504e: $6c

Jump_049_504f:
    ld h, h                                       ; $504f: $64
    jp hl                                         ; $5050: $e9


    rla                                           ; $5051: $17
    ld d, [hl]                                    ; $5052: $56
    jr jr_049_507d                                ; $5053: $18 $28

    ld b, h                                       ; $5055: $44
    ld h, [hl]                                    ; $5056: $66
    inc a                                         ; $5057: $3c
    adc a                                         ; $5058: $8f
    ld e, l                                       ; $5059: $5d
    add h                                         ; $505a: $84
    pop bc                                        ; $505b: $c1
    inc a                                         ; $505c: $3c
    halt                                          ; $505d: $76
    jp nc, $788c                                  ; $505e: $d2 $8c $78

    db $10                                        ; $5061: $10
    ld a, l                                       ; $5062: $7d
    and c                                         ; $5063: $a1
    dec h                                         ; $5064: $25
    rst $18                                       ; $5065: $df
    ld [hl], c                                    ; $5066: $71
    rst $20                                       ; $5067: $e7
    sub [hl]                                      ; $5068: $96
    db $e4                                        ; $5069: $e4
    add a                                         ; $506a: $87
    sbc d                                         ; $506b: $9a
    pop af                                        ; $506c: $f1
    ld bc, $e597                                  ; $506d: $01 $97 $e5
    and c                                         ; $5070: $a1
    ld e, d                                       ; $5071: $5a
    ld h, d                                       ; $5072: $62
    ld a, c                                       ; $5073: $79
    daa                                           ; $5074: $27
    inc sp                                        ; $5075: $33
    ld [de], a                                    ; $5076: $12
    cp a                                          ; $5077: $bf
    cp l                                          ; $5078: $bd
    adc b                                         ; $5079: $88
    ld c, d                                       ; $507a: $4a
    pop bc                                        ; $507b: $c1
    ld b, e                                       ; $507c: $43

jr_049_507d:
    ld l, h                                       ; $507d: $6c
    xor $64                                       ; $507e: $ee $64
    ld l, d                                       ; $5080: $6a
    ld h, c                                       ; $5081: $61
    ld a, c                                       ; $5082: $79
    and a                                         ; $5083: $a7
    ld [$9ef9], a                                 ; $5084: $ea $f9 $9e
    xor e                                         ; $5087: $ab
    ld b, l                                       ; $5088: $45
    cp [hl]                                       ; $5089: $be
    pop af                                        ; $508a: $f1
    sbc [hl]                                      ; $508b: $9e
    call nc, $286a                                ; $508c: $d4 $6a $28
    ld [hl], a                                    ; $508f: $77
    ld e, e                                       ; $5090: $5b
    or h                                          ; $5091: $b4
    di                                            ; $5092: $f3
    ld [hl], a                                    ; $5093: $77
    ld h, $9d                                     ; $5094: $26 $9d
    call z, $cee6                                 ; $5096: $cc $e6 $ce
    ret c                                         ; $5099: $d8

    cp h                                          ; $509a: $bc
    ret c                                         ; $509b: $d8

    ld sp, hl                                     ; $509c: $f9
    dec sp                                        ; $509d: $3b
    ld b, e                                       ; $509e: $43
    cp c                                          ; $509f: $b9
    or b                                          ; $50a0: $b0
    cp h                                          ; $50a1: $bc
    ld [hl], e                                    ; $50a2: $73
    ld h, l                                       ; $50a3: $65
    ld l, c                                       ; $50a4: $69
    and a                                         ; $50a5: $a7
    ld [hl], d                                    ; $50a6: $72
    inc sp                                        ; $50a7: $33
    ld a, $00                                     ; $50a8: $3e $00
    rst $28                                       ; $50aa: $ef
    sbc c                                         ; $50ab: $99
    ld e, $ca                                     ; $50ac: $1e $ca
    db $dd                                        ; $50ae: $dd
    ld d, $cd                                     ; $50af: $16 $cd
    db $fd                                        ; $50b1: $fd
    sbc a                                         ; $50b2: $9f
    and $0c                                       ; $50b3: $e6 $0c
    sbc b                                         ; $50b5: $98
    push hl                                       ; $50b6: $e5
    ld b, d                                       ; $50b7: $42
    db $d3                                        ; $50b8: $d3
    call Call_000_072b                            ; $50b9: $cd $2b $07
    xor a                                         ; $50bc: $af
    db $10                                        ; $50bd: $10
    ld b, [hl]                                    ; $50be: $46
    ld [hl], $f4                                  ; $50bf: $36 $f4
    ld l, l                                       ; $50c1: $6d
    cp h                                          ; $50c2: $bc
    or a                                          ; $50c3: $b7
    inc l                                         ; $50c4: $2c
    cp l                                          ; $50c5: $bd
    add hl, de                                    ; $50c6: $19
    sbc b                                         ; $50c7: $98
    ld d, b                                       ; $50c8: $50
    add b                                         ; $50c9: $80

jr_049_50ca:
    ret                                           ; $50ca: $c9


    di                                            ; $50cb: $f3
    sbc l                                         ; $50cc: $9d
    ld l, e                                       ; $50cd: $6b
    jp nc, $b192                                  ; $50ce: $d2 $92 $b1

    rla                                           ; $50d1: $17
    di                                            ; $50d2: $f3
    adc [hl]                                      ; $50d3: $8e
    ld e, d                                       ; $50d4: $5a
    ret nc                                        ; $50d5: $d0

    ld c, c                                       ; $50d6: $49
    daa                                           ; $50d7: $27
    ld a, c                                       ; $50d8: $79
    ld l, c                                       ; $50d9: $69
    ld b, [hl]                                    ; $50da: $46
    di                                            ; $50db: $f3
    db $dd                                        ; $50dc: $dd
    db $db                                        ; $50dd: $db
    dec b                                         ; $50de: $05
    xor b                                         ; $50df: $a8
    ld c, [hl]                                    ; $50e0: $4e
    dec b                                         ; $50e1: $05
    pop af                                        ; $50e2: $f1
    sbc [hl]                                      ; $50e3: $9e
    ld l, e                                       ; $50e4: $6b
    ld b, l                                       ; $50e5: $45
    di                                            ; $50e6: $f3
    ret z                                         ; $50e7: $c8

    add e                                         ; $50e8: $83
    ld c, h                                       ; $50e9: $4c
    dec b                                         ; $50ea: $05
    sbc l                                         ; $50eb: $9d
    ld e, c                                       ; $50ec: $59
    xor $d2                                       ; $50ed: $ee $d2
    nop                                           ; $50ef: $00
    and c                                         ; $50f0: $a1
    ld e, a                                       ; $50f1: $5f
    ld [hl], e                                    ; $50f2: $73
    ld hl, $3b06                                  ; $50f3: $21 $06 $3b
    sbc e                                         ; $50f6: $9b
    ld e, [hl]                                    ; $50f7: $5e
    ld d, h                                       ; $50f8: $54
    ld e, [hl]                                    ; $50f9: $5e
    ret nc                                        ; $50fa: $d0

    ld b, l                                       ; $50fb: $45
    dec l                                         ; $50fc: $2d
    jr nc, jr_049_50ca                            ; $50fd: $30 $cb

    ld a, b                                       ; $50ff: $78
    sub a                                         ; $5100: $97
    cp a                                          ; $5101: $bf
    dec bc                                        ; $5102: $0b
    ld e, e                                       ; $5103: $5b
    ld e, [hl]                                    ; $5104: $5e
    ret nc                                        ; $5105: $d0

    db $fd                                        ; $5106: $fd
    cpl                                           ; $5107: $2f
    ld h, a                                       ; $5108: $67
    ld a, [$d2d4]                                 ; $5109: $fa $d4 $d2
    sub l                                         ; $510c: $95
    inc bc                                        ; $510d: $03
    sub a                                         ; $510e: $97
    ld b, [hl]                                    ; $510f: $46
    inc h                                         ; $5110: $24
    ld h, [hl]                                    ; $5111: $66
    xor a                                         ; $5112: $af
    ld a, h                                       ; $5113: $7c
    and $52                                       ; $5114: $e6 $52
    ld a, h                                       ; $5116: $7c
    nop                                           ; $5117: $00
    rst $10                                       ; $5118: $d7
    db $ed                                        ; $5119: $ed
    ld h, d                                       ; $511a: $62
    sub a                                         ; $511b: $97
    ld b, [hl]                                    ; $511c: $46
    inc h                                         ; $511d: $24
    ld h, [hl]                                    ; $511e: $66
    xor a                                         ; $511f: $af
    ld a, h                                       ; $5120: $7c
    and $52                                       ; $5121: $e6 $52
    cp h                                          ; $5123: $bc
    rst $20                                       ; $5124: $e7
    xor d                                         ; $5125: $aa
    ldh [rNR42], a                                ; $5126: $e0 $21
    ld c, d                                       ; $5128: $4a
    xor $a0                                       ; $5129: $ee $a0
    sub [hl]                                      ; $512b: $96
    ld l, $86                                     ; $512c: $2e $86
    ld [hl], d                                    ; $512e: $72
    ld h, c                                       ; $512f: $61
    add l                                         ; $5130: $85
    ld h, l                                       ; $5131: $65
    ld a, c                                       ; $5132: $79
    ld sp, hl                                     ; $5133: $f9
    pop bc                                        ; $5134: $c1
    and d                                         ; $5135: $a2
    ld a, [c]                                     ; $5136: $f2
    jp nz, $0346                                  ; $5137: $c2 $46 $03

    ld d, l                                       ; $513a: $55
    db $10                                        ; $513b: $10
    ld a, l                                       ; $513c: $7d
    reti                                          ; $513d: $d9


    adc h                                         ; $513e: $8c
    rrca                                          ; $513f: $0f
    sub a                                         ; $5140: $97
    ld b, $08                                     ; $5141: $06 $08
    cp l                                          ; $5143: $bd
    ld hl, sp+$5d                                 ; $5144: $f8 $5d
    sub e                                         ; $5146: $93
    dec sp                                        ; $5147: $3b
    sbc c                                         ; $5148: $99
    ld e, d                                       ; $5149: $5a
    ret nc                                        ; $514a: $d0

    ld h, l                                       ; $514b: $65
    ld a, c                                       ; $514c: $79
    ld h, [hl]                                    ; $514d: $66
    cp c                                          ; $514e: $b9
    or b                                          ; $514f: $b0
    cp h                                          ; $5150: $bc
    di                                            ; $5151: $f3
    xor a                                         ; $5152: $af
    ld l, h                                       ; $5153: $6c
    add $07                                       ; $5154: $c6 $07
    sub a                                         ; $5156: $97
    and [hl]                                      ; $5157: $a6
    push af                                       ; $5158: $f5
    cp a                                          ; $5159: $bf
    ret c                                         ; $515a: $d8

    and l                                         ; $515b: $a5
    ld de, $8989                                  ; $515c: $11 $89 $89
    ld [hl], a                                    ; $515f: $77

Jump_049_5160:
    ld c, l                                       ; $5160: $4d
    xor $fc                                       ; $5161: $ee $fc
    dec hl                                        ; $5163: $2b
    ld [hl], a                                    ; $5164: $77
    ld sp, hl                                     ; $5165: $f9
    ld c, c                                       ; $5166: $49
    ld l, d                                       ; $5167: $6a
    daa                                           ; $5168: $27
    add d                                         ; $5169: $82
    ld d, h                                       ; $516a: $54
    cp h                                          ; $516b: $bc
    or a                                          ; $516c: $b7
    cp [hl]                                       ; $516d: $be
    ld b, $4d                                     ; $516e: $06 $4d
    or l                                          ; $5170: $b5
    ld [$5c83], sp                                ; $5171: $08 $83 $5c
    db $f4                                        ; $5174: $f4
    ld a, c                                       ; $5175: $79
    and l                                         ; $5176: $a5
    add l                                         ; $5177: $85
    ld e, b                                       ; $5178: $58
    ld e, d                                       ; $5179: $5a
    adc c                                         ; $517a: $89
    ld a, [bc]                                    ; $517b: $0a
    xor d                                         ; $517c: $aa
    add [hl]                                      ; $517d: $86
    cp c                                          ; $517e: $b9
    or b                                          ; $517f: $b0
    inc a                                         ; $5180: $3c
    ld d, b                                       ; $5181: $50
    pop hl                                        ; $5182: $e1
    dec sp                                        ; $5183: $3b
    and a                                         ; $5184: $a7
    or l                                          ; $5185: $b5
    cp c                                          ; $5186: $b9
    xor h                                         ; $5187: $ac
    ld [c], a                                     ; $5188: $e2
    sbc l                                         ; $5189: $9d
    sub c                                         ; $518a: $91
    cp c                                          ; $518b: $b9
    pop af                                        ; $518c: $f1
    ld bc, $d0af                                  ; $518d: $01 $af $d0
    rla                                           ; $5190: $17
    ld d, l                                       ; $5191: $55
    xor c                                         ; $5192: $a9
    ld c, a                                       ; $5193: $4f
    ld a, e                                       ; $5194: $7b
    ld e, $15                                     ; $5195: $1e $15
    cpl                                           ; $5197: $2f
    ld l, h                                       ; $5198: $6c
    ld b, l                                       ; $5199: $45
    cp h                                          ; $519a: $bc
    xor b                                         ; $519b: $a8
    ld l, e                                       ; $519c: $6b
    ld [hl], e                                    ; $519d: $73
    sub b                                         ; $519e: $90
    xor c                                         ; $519f: $a9
    and b                                         ; $51a0: $a0
    inc bc                                        ; $51a1: $03
    dec b                                         ; $51a2: $05
    ld [hl], l                                    ; $51a3: $75
    sbc e                                         ; $51a4: $9b
    ld [hl], e                                    ; $51a5: $73
    rst $38                                       ; $51a6: $ff
    and a                                         ; $51a7: $a7
    ld sp, hl                                     ; $51a8: $f9
    xor $ed                                       ; $51a9: $ee $ed
    ld [bc], a                                    ; $51ab: $02
    ld d, h                                       ; $51ac: $54
    and a                                         ; $51ad: $a7
    add d                                         ; $51ae: $82
    ld a, b                                       ; $51af: $78
    rst $10                                       ; $51b0: $d7
    db $e4                                        ; $51b1: $e4
    and d                                         ; $51b2: $a2
    ld e, a                                       ; $51b3: $5f
    push bc                                       ; $51b4: $c5
    dec bc                                        ; $51b5: $0b
    swap e                                        ; $51b6: $cb $33
    rlc l                                         ; $51b8: $cb $05
    rst $18                                       ; $51ba: $df
    add hl, de                                    ; $51bb: $19
    xor b                                         ; $51bc: $a8
    db $db                                        ; $51bd: $db
    adc h                                         ; $51be: $8c
    ld [hl], a                                    ; $51bf: $77
    ld c, l                                       ; $51c0: $4d
    ld c, $d8                                     ; $51c1: $0e $d8
    ld a, $b4                                     ; $51c3: $3e $b4
    di                                            ; $51c5: $f3
    xor a                                         ; $51c6: $af
    ld e, h                                       ; $51c7: $5c
    sbc d                                         ; $51c8: $9a
    pop de                                        ; $51c9: $d1
    ld a, h                                       ; $51ca: $7c
    daa                                           ; $51cb: $27
    call $e788                                    ; $51cc: $cd $88 $e7
    ld e, d                                       ; $51cf: $5a
    xor $a9                                       ; $51d0: $ee $a9
    jp nc, $e46f                                  ; $51d2: $d2 $6f $e4

    cp e                                          ; $51d5: $bb
    bit 1, d                                      ; $51d6: $cb $4a
    push de                                       ; $51d8: $d5
    ld e, h                                       ; $51d9: $5c
    ld [hl], e                                    ; $51da: $73
    ld l, a                                       ; $51db: $6f
    ld a, h                                       ; $51dc: $7c
    or a                                          ; $51dd: $b7
    ld l, c                                       ; $51de: $69
    ld b, [hl]                                    ; $51df: $46
    ld l, d                                       ; $51e0: $6a
    ld e, $bb                                     ; $51e1: $1e $bb
    rst $20                                       ; $51e3: $e7
    ld d, c                                       ; $51e4: $51
    pop af                                        ; $51e5: $f1
    call z, Call_000_1172                         ; $51e6: $cc $72 $11
    ld b, $39                                     ; $51e9: $06 $39
    rst $10                                       ; $51eb: $d7
    ld a, h                                       ; $51ec: $7c
    ld l, c                                       ; $51ed: $69
    ld h, c                                       ; $51ee: $61
    dec hl                                        ; $51ef: $2b
    ld [c], a                                     ; $51f0: $e2
    add c                                         ; $51f1: $81
    add d                                         ; $51f2: $82
    cp d                                          ; $51f3: $ba
    call $00f8                                    ; $51f4: $cd $f8 $00
    ld d, a                                       ; $51f7: $57
    or c                                          ; $51f8: $b1
    cp e                                          ; $51f9: $bb
    db $fc                                        ; $51fa: $fc
    inc h                                         ; $51fb: $24
    or l                                          ; $51fc: $b5
    inc de                                        ; $51fd: $13
    ld b, c                                       ; $51fe: $41
    ld l, d                                       ; $51ff: $6a
    or d                                          ; $5200: $b2
    sbc c                                         ; $5201: $99
    db $dd                                        ; $5202: $dd
    ret                                           ; $5203: $c9


    ldh [rNR42], a                                ; $5204: $e0 $21
    scf                                           ; $5206: $37
    db $e3                                        ; $5207: $e3
    cp l                                          ; $5208: $bd
    push af                                       ; $5209: $f5
    ccf                                           ; $520a: $3f
    add hl, sp                                    ; $520b: $39
    ret z                                         ; $520c: $c8

    adc e                                         ; $520d: $8b
    jp z, Jump_000_1df3                           ; $520e: $ca $f3 $1d

    jr z, @-$0c                                   ; $5211: $28 $f2

    push bc                                       ; $5213: $c5
    ld l, $8d                                     ; $5214: $2e $8d
    ld c, b                                       ; $5216: $48
    adc h                                         ; $5217: $8c
    ld hl, sp+$03                                 ; $5218: $f8 $03
    rst $10                                       ; $521a: $d7
    db $e4                                        ; $521b: $e4
    ld c, [hl]                                    ; $521c: $4e
    ld b, $0f                                     ; $521d: $06 $0f
    ld a, c                                       ; $521f: $79
    ld hl, $f696                                  ; $5220: $21 $96 $f6
    and c                                         ; $5223: $a1
    dec b                                         ; $5224: $05
    cp l                                          ; $5225: $bd
    ret c                                         ; $5226: $d8

    and l                                         ; $5227: $a5
    ld de, $8989                                  ; $5228: $11 $89 $89
    ld [hl], a                                    ; $522b: $77
    cp l                                          ; $522c: $bd
    dec bc                                        ; $522d: $0b
    dec bc                                        ; $522e: $0b

jr_049_522f:
    dec l                                         ; $522f: $2d
    jp nz, $8960                                  ; $5230: $c2 $60 $89

    push hl                                       ; $5233: $e5
    push hl                                       ; $5234: $e5
    rst $30                                       ; $5235: $f7
    ld [$fee6], sp                                ; $5236: $08 $e6 $fe
    ld c, a                                       ; $5239: $4f
    dec sp                                        ; $523a: $3b
    rst $38                                       ; $523b: $ff
    db $db                                        ; $523c: $db
    ld [hl], d                                    ; $523d: $72
    ld a, [bc]                                    ; $523e: $0a
    inc hl                                        ; $523f: $23
    xor b                                         ; $5240: $a8
    ld a, d                                       ; $5241: $7a
    db $e4                                        ; $5242: $e4
    and b                                         ; $5243: $a0
    ld c, $2d                                     ; $5244: $0e $2d
    ld a, l                                       ; $5246: $7d
    dec [hl]                                      ; $5247: $35
    rlca                                          ; $5248: $07
    adc l                                         ; $5249: $8d
    rrca                                          ; $524a: $0f
    sub a                                         ; $524b: $97
    xor l                                         ; $524c: $ad
    adc b                                         ; $524d: $88
    rst $20                                       ; $524e: $e7
    xor h                                         ; $524f: $ac
    call $9645                                    ; $5250: $cd $45 $96
    inc bc                                        ; $5253: $03
    dec a                                         ; $5254: $3d
    ld h, e                                       ; $5255: $63
    ld [hl], e                                    ; $5256: $73
    ld e, $bb                                     ; $5257: $1e $bb
    ld [hl], $27                                  ; $5259: $36 $27
    call $e788                                    ; $525b: $cd $88 $e7
    jr nz, jr_049_522f                            ; $525e: $20 $cf

    ld [hl], a                                    ; $5260: $77
    call nc, $b54a                                ; $5261: $d4 $4a $b5
    and a                                         ; $5264: $a7
    ld c, d                                       ; $5265: $4a
    cp a                                          ; $5266: $bf
    sub c                                         ; $5267: $91
    rst $28                                       ; $5268: $ef
    ld l, $2b                                     ; $5269: $2e $2b
    ld d, l                                       ; $526b: $55
    ld [hl], e                                    ; $526c: $73
    call $f1bd                                    ; $526d: $cd $bd $f1
    db $dd                                        ; $5270: $dd
    and [hl]                                      ; $5271: $a6
    add hl, de                                    ; $5272: $19
    xor c                                         ; $5273: $a9
    ld [hl], c                                    ; $5274: $71
    daa                                           ; $5275: $27
    rst $38                                       ; $5276: $ff

Call_049_5277:
    add a                                         ; $5277: $87
    ld h, [hl]                                    ; $5278: $66
    sub [hl]                                      ; $5279: $96
    ld [bc], a                                    ; $527a: $02
    sub $f3                                       ; $527b: $d6 $f3
    sub l                                         ; $527d: $95
    inc bc                                        ; $527e: $03
    ld l, a                                       ; $527f: $6f
    ld a, l                                       ; $5280: $7d
    dec c                                         ; $5281: $0d
    sbc d                                         ; $5282: $9a
    ld l, d                                       ; $5283: $6a
    ld de, $0b06                                  ; $5284: $11 $06 $0b
    dec l                                         ; $5287: $2d
    ld bc, $c42f                                  ; $5288: $01 $2f $c4
    ld h, b                                       ; $528b: $60
    rst $18                                       ; $528c: $df
    dec l                                         ; $528d: $2d
    ld a, c                                       ; $528e: $79
    inc bc                                        ; $528f: $03
    and e                                         ; $5290: $a3
    sbc a                                         ; $5291: $9f
    ld a, [hl]                                    ; $5292: $7e
    ld [bc], a                                    ; $5293: $02
    ld b, $7b                                     ; $5294: $06 $7b
    xor $3b                                       ; $5296: $ee $3b
    ld e, $10                                     ; $5298: $1e $10
    ld b, $50                                     ; $529a: $06 $50
    ld a, h                                       ; $529c: $7c
    nop                                           ; $529d: $00
    cpl                                           ; $529e: $2f
    or l                                          ; $529f: $b5
    rla                                           ; $52a0: $17
    di                                            ; $52a1: $f3
    ret c                                         ; $52a2: $d8

    add l                                         ; $52a3: $85
    dec d                                         ; $52a4: $15
    add [hl]                                      ; $52a5: $86
    ld [hl], d                                    ; $52a6: $72
    adc c                                         ; $52a7: $89
    push hl                                       ; $52a8: $e5
    add c                                         ; $52a9: $81
    sbc [hl]                                      ; $52aa: $9e
    or c                                          ; $52ab: $b1
    add hl, de                                    ; $52ac: $19
    rra                                           ; $52ad: $1f
    ld d, a                                       ; $52ae: $57
    call $a768                                    ; $52af: $cd $68 $a7
    sub [hl]                                      ; $52b2: $96
    add a                                         ; $52b3: $87
    ld [hl], d                                    ; $52b4: $72
    adc c                                         ; $52b5: $89
    ld h, l                                       ; $52b6: $65
    dec [hl]                                      ; $52b7: $35
    rst $10                                       ; $52b8: $d7
    jp nc, $f144                                  ; $52b9: $d2 $44 $f1

    ld bc, $e4d7                                  ; $52bc: $01 $d7 $e4
    adc $d8                                       ; $52bf: $ce $d8
    or l                                          ; $52c1: $b5
    cp c                                          ; $52c2: $b9
    or b                                          ; $52c3: $b0
    cp d                                          ; $52c4: $ba
    jp nz, Jump_049_5eaf                          ; $52c5: $c2 $af $5e

    call nc, $cd54                                ; $52c8: $d4 $54 $cd
    ld a, c                                       ; $52cb: $79
    db $ec                                        ; $52cc: $ec
    and h                                         ; $52cd: $a4
    add hl, de                                    ; $52ce: $19
    ld [hl], c                                    ; $52cf: $71
    ld [hl], e                                    ; $52d0: $73
    xor [hl]                                      ; $52d1: $ae
    push hl                                       ; $52d2: $e5
    sbc [hl]                                      ; $52d3: $9e
    ld a, [hl+]                                   ; $52d4: $2a
    db $fd                                        ; $52d5: $fd
    ld b, [hl]                                    ; $52d6: $46
    cp [hl]                                       ; $52d7: $be
    cp e                                          ; $52d8: $bb
    xor h                                         ; $52d9: $ac
    ld d, h                                       ; $52da: $54
    call $f735                                    ; $52db: $cd $35 $f7
    add $77                                       ; $52de: $c6 $77
    sbc e                                         ; $52e0: $9b
    ld h, [hl]                                    ; $52e1: $66
    and h                                         ; $52e2: $a4
    add $9d                                       ; $52e3: $c6 $9d
    db $fc                                        ; $52e5: $fc
    rra                                           ; $52e6: $1f
    sbc d                                         ; $52e7: $9a
    ld e, c                                       ; $52e8: $59
    ld a, [bc]                                    ; $52e9: $0a
    ld e, b                                       ; $52ea: $58
    rst $18                                       ; $52eb: $df
    adc h                                         ; $52ec: $8c
    rrca                                          ; $52ed: $0f
    ld d, a                                       ; $52ee: $57

jr_049_52ef:
    adc l                                         ; $52ef: $8d
    add a                                         ; $52f0: $87
    ld l, d                                       ; $52f1: $6a
    adc c                                         ; $52f2: $89
    push hl                                       ; $52f3: $e5
    ld h, c                                       ; $52f4: $61
    ld e, c                                       ; $52f5: $59
    db $ed                                        ; $52f6: $ed
    ld h, h                                       ; $52f7: $64
    ld b, [hl]                                    ; $52f8: $46
    ld b, e                                       ; $52f9: $43
    cp c                                          ; $52fa: $b9
    rrca                                          ; $52fb: $0f
    ld c, l                                       ; $52fc: $4d
    sub a                                         ; $52fd: $97
    db $e3                                        ; $52fe: $e3
    inc bc                                        ; $52ff: $03
    cpl                                           ; $5300: $2f
    or l                                          ; $5301: $b5

jr_049_5302:
    rla                                           ; $5302: $17
    adc e                                         ; $5303: $8b
    call z, Call_000_1168                         ; $5304: $cc $68 $11
    ld a, [hl+]                                   ; $5307: $2a

Call_049_5308:
    dec b                                         ; $5308: $05
    rrca                                          ; $5309: $0f
    or c                                          ; $530a: $b1
    cp c                                          ; $530b: $b9
    or b                                          ; $530c: $b0
    jp nz, Jump_000_2e50                          ; $530d: $c2 $50 $2e

    or c                                          ; $5310: $b1
    inc a                                         ; $5311: $3c
    ldh a, [$eb]                                  ; $5312: $f0 $eb
    rst $30                                       ; $5314: $f7
    ld hl, $5d50                                  ; $5315: $21 $50 $5d
    adc [hl]                                      ; $5318: $8e
    rrca                                          ; $5319: $0f
    ld l, a                                       ; $531a: $6f

jr_049_531b:
    ld a, l                                       ; $531b: $7d
    dec c                                         ; $531c: $0d
    sbc d                                         ; $531d: $9a
    ld l, d                                       ; $531e: $6a
    ld de, $3b06                                  ; $531f: $11 $06 $3b
    dec de                                        ; $5322: $1b
    jr jr_049_52ef                                ; $5323: $18 $ca

    sbc l                                         ; $5325: $9d
    rst $38                                       ; $5326: $ff
    or b                                          ; $5327: $b0
    sub c                                         ; $5328: $91
    and l                                         ; $5329: $a5
    rra                                           ; $532a: $1f
    and $7c                                       ; $532b: $e6 $7c
    daa                                           ; $532d: $27
    jr c, @+$10                                   ; $532e: $38 $0e

    pop af                                        ; $5330: $f1
    ld e, h                                       ; $5331: $5c
    set 7, c                                      ; $5332: $cb $f9
    ld c, [hl]                                    ; $5334: $4e
    or b                                          ; $5335: $b0
    sub h                                         ; $5336: $94
    pop af                                        ; $5337: $f1
    ld bc, $e4d7                                  ; $5338: $01 $d7 $e4
    sbc [hl]                                      ; $533b: $9e
    ld a, d                                       ; $533c: $7a
    and $a5                                       ; $533d: $e6 $a5
    or l                                          ; $533f: $b5
    cp c                                          ; $5340: $b9
    ret z                                         ; $5341: $c8

    ld [hl], d                                    ; $5342: $72
    ld e, $bb                                     ; $5343: $1e $bb
    ld [hl], $27                                  ; $5345: $36 $27
    call $e788                                    ; $5347: $cd $88 $e7
    jr nz, jr_049_531b                            ; $534a: $20 $cf

    ld [hl], a                                    ; $534c: $77
    call nc, $b54a                                ; $534d: $d4 $4a $b5
    and a                                         ; $5350: $a7
    ld c, d                                       ; $5351: $4a
    cp a                                          ; $5352: $bf
    sub c                                         ; $5353: $91

jr_049_5354:
    rst $28                                       ; $5354: $ef
    ld l, $2b                                     ; $5355: $2e $2b
    ld d, l                                       ; $5357: $55
    ld [hl], e                                    ; $5358: $73
    call $f1bd                                    ; $5359: $cd $bd $f1
    db $dd                                        ; $535c: $dd
    and [hl]                                      ; $535d: $a6
    add hl, de                                    ; $535e: $19
    xor c                                         ; $535f: $a9
    ld [hl], c                                    ; $5360: $71
    daa                                           ; $5361: $27
    rst $38                                       ; $5362: $ff
    add a                                         ; $5363: $87
    ld h, [hl]                                    ; $5364: $66

jr_049_5365:
    sub [hl]                                      ; $5365: $96
    ld [bc], a                                    ; $5366: $02
    sub $73                                       ; $5367: $d6 $73
    cp h                                          ; $5369: $bc
    rla                                           ; $536a: $17
    call Call_000_2168                            ; $536b: $cd $68 $21
    ld b, $3b                                     ; $536e: $06 $3b
    inc hl                                        ; $5370: $23
    rrca                                          ; $5371: $0f
    ld [hl], e                                    ; $5372: $73
    ld de, $3906                                  ; $5373: $11 $06 $39
    xor c                                         ; $5376: $a9
    dec e                                         ; $5377: $1d
    ld d, h                                       ; $5378: $54
    inc de                                        ; $5379: $13
    jr nc, jr_049_5354                            ; $537a: $30 $d8

    ld [hl], e                                    ; $537c: $73
    rst $18                                       ; $537d: $df
    pop af                                        ; $537e: $f1
    add b                                         ; $537f: $80
    jr nc, jr_049_5302                            ; $5380: $30 $80

    ld [c], a                                     ; $5382: $e2
    dec a                                         ; $5383: $3d
    xor c                                         ; $5384: $a9
    push de                                       ; $5385: $d5
    add d                                         ; $5386: $82
    xor $b6                                       ; $5387: $ee $b6
    ld l, b                                       ; $5389: $68
    rst $20                                       ; $538a: $e7
    ld l, d                                       ; $538b: $6a
    pop de                                        ; $538c: $d1
    ld b, d                                       ; $538d: $42
    inc sp                                        ; $538e: $33
    call Call_049_7317                            ; $538f: $cd $17 $73
    ld c, e                                       ; $5392: $4b
    jp c, $0c0c                                   ; $5393: $da $0c $0c

    push hl                                       ; $5396: $e5
    ld a, h                                       ; $5397: $7c
    rlca                                          ; $5398: $07
    ld de, $2a06                                  ; $5399: $11 $06 $2a
    sbc $b5                                       ; $539c: $de $b5
    inc e                                         ; $539e: $1c
    and h                                         ; $539f: $a4
    call $cd58                                    ; $53a0: $cd $58 $cd
    or l                                          ; $53a3: $b5
    ld e, h                                       ; $53a4: $5c
    sbc e                                         ; $53a5: $9b
    inc de                                        ; $53a6: $13
    ld a, d                                       ; $53a7: $7a
    cp $46                                        ; $53a8: $fe $46
    ld [hl], a                                    ; $53aa: $77
    add hl, hl                                    ; $53ab: $29
    ld l, [hl]                                    ; $53ac: $6e
    ld [hl], e                                    ; $53ad: $73
    pop hl                                        ; $53ae: $e1
    xor a                                         ; $53af: $af
    ld l, b                                       ; $53b0: $68
    jr z, jr_049_540a                             ; $53b1: $28 $57

    sbc d                                         ; $53b3: $9a
    or a                                          ; $53b4: $b7
    ld e, h                                       ; $53b5: $5c
    ld h, h                                       ; $53b6: $64
    ld b, [hl]                                    ; $53b7: $46
    cp e                                          ; $53b8: $bb
    rst $30                                       ; $53b9: $f7
    sbc [hl]                                      ; $53ba: $9e
    cp l                                          ; $53bb: $bd
    adc [hl]                                      ; $53bc: $8e
    ld d, d                                       ; $53bd: $52
    ld d, [hl]                                    ; $53be: $56
    xor e                                         ; $53bf: $ab
    cp c                                          ; $53c0: $b9
    rst $38                                       ; $53c1: $ff
    db $d3                                        ; $53c2: $d3
    cp b                                          ; $53c3: $b8
    dec bc                                        ; $53c4: $0b
    dec hl                                        ; $53c5: $2b
    ld [$f8cd], sp                                ; $53c6: $08 $cd $f8
    nop                                           ; $53c9: $00
    ld c, a                                       ; $53ca: $4f
    ld l, d                                       ; $53cb: $6a
    push bc                                       ; $53cc: $c5
    adc [hl]                                      ; $53cd: $8e
    and b                                         ; $53ce: $a0
    or c                                          ; $53cf: $b1
    ld [hl+], a                                   ; $53d0: $22
    adc [hl]                                      ; $53d1: $8e
    rrca                                          ; $53d2: $0f
    ld l, a                                       ; $53d3: $6f
    ld [hl+], a                                   ; $53d4: $22
    dec hl                                        ; $53d5: $2b
    xor [hl]                                      ; $53d6: $ae
    ld l, h                                       ; $53d7: $6c
    ld a, [$2f78]                                 ; $53d8: $fa $78 $2f
    ld b, e                                       ; $53db: $43
    ld c, e                                       ; $53dc: $4b
    inc sp                                        ; $53dd: $33
    jp c, $df73                                   ; $53de: $da $73 $df

    pop af                                        ; $53e1: $f1
    add b                                         ; $53e2: $80
    jr nc, jr_049_5365                            ; $53e3: $30 $80

    ld [c], a                                     ; $53e5: $e2
    ld e, l                                       ; $53e6: $5d
    sub e                                         ; $53e7: $93
    adc e                                         ; $53e8: $8b
    inc c                                         ; $53e9: $0c
    ld e, $32                                     ; $53ea: $1e $32
    add d                                         ; $53ec: $82
    dec b                                         ; $53ed: $05
    db $dd                                        ; $53ee: $dd
    adc a                                         ; $53ef: $8f
    ld d, $61                                     ; $53f0: $16 $61
    sub b                                         ; $53f2: $90
    sub e                                         ; $53f3: $93

jr_049_53f4:
    jp c, Jump_000_3541                           ; $53f4: $da $41 $35

jr_049_53f7:
    call z, $0771                                 ; $53f7: $cc $71 $07
    call z, Call_000_3e32                         ; $53fa: $cc $32 $3e
    nop                                           ; $53fd: $00
    sub a                                         ; $53fe: $97
    push de                                       ; $53ff: $d5
    ld h, [hl]                                    ; $5400: $66
    ld l, d                                       ; $5401: $6a
    ld h, c                                       ; $5402: $61
    add l                                         ; $5403: $85

Jump_049_5404:
    and c                                         ; $5404: $a1
    ld e, h                                       ; $5405: $5c
    ld h, d                                       ; $5406: $62
    ld a, c                                       ; $5407: $79
    rst $20                                       ; $5408: $e7
    ccf                                           ; $5409: $3f

jr_049_540a:
    or a                                          ; $540a: $b7
    push de                                       ; $540b: $d5
    inc de                                        ; $540c: $13
    jr nc, jr_049_5467                            ; $540d: $30 $58

    call nc, $00f8                                ; $540f: $d4 $f8 $00
    ld d, a                                       ; $5412: $57
    adc l                                         ; $5413: $8d
    add a                                         ; $5414: $87
    ld l, d                                       ; $5415: $6a
    sbc $72                                       ; $5416: $de $72
    add c                                         ; $5418: $81
    ld b, l                                       ; $5419: $45
    ld d, c                                       ; $541a: $51
    add hl, hl                                    ; $541b: $29
    sbc $f3                                       ; $541c: $de $f3
    ccf                                           ; $541e: $3f

jr_049_541f:
    ld a, [de]                                    ; $541f: $1a
    sub a                                         ; $5420: $97
    inc e                                         ; $5421: $1c
    jr nc, jr_049_53f7                            ; $5422: $30 $d3

    ld l, d                                       ; $5424: $6a
    ld b, c                                       ; $5425: $41
    rlca                                          ; $5426: $07
    sbc d                                         ; $5427: $9a
    cp a                                          ; $5428: $bf
    ld h, b                                       ; $5429: $60
    ld h, c                                       ; $542a: $61
    dec b                                         ; $542b: $05
    adc [hl]                                      ; $542c: $8e
    ld [hl], a                                    ; $542d: $77
    ld c, l                                       ; $542e: $4d
    xor $64                                       ; $542f: $ee $64
    ldh a, [$90]                                  ; $5431: $f0 $90
    rla                                           ; $5433: $17
    ld h, d                                       ; $5434: $62
    ld l, c                                       ; $5435: $69
    rra                                           ; $5436: $1f
    ld e, d                                       ; $5437: $5a
    ret nc                                        ; $5438: $d0

    ld hl, sp+$00                                 ; $5439: $f8 $00
    ld d, a                                       ; $543b: $57
    dec sp                                        ; $543c: $3b
    ld l, c                                       ; $543d: $69
    ld b, [hl]                                    ; $543e: $46
    inc a                                         ; $543f: $3c
    ld sp, hl                                     ; $5440: $f9
    dec d                                         ; $5441: $15
    rst $28                                       ; $5442: $ef
    sbc $7b                                       ; $5443: $de $7b
    or $3a                                        ; $5445: $f6 $3a
    ld c, d                                       ; $5447: $4a
    ld e, c                                       ; $5448: $59
    xor l                                         ; $5449: $ad
    ld d, $99                                     ; $544a: $16 $99
    pop de                                        ; $544c: $d1
    adc $7f                                       ; $544d: $ce $7f
    ld l, [hl]                                    ; $544f: $6e
    xor e                                         ; $5450: $ab
    rla                                           ; $5451: $17
    ld d, [hl]                                    ; $5452: $56
    jr jr_049_541f                                ; $5453: $18 $ca

    dec h                                         ; $5455: $25
    sub [hl]                                      ; $5456: $96
    daa                                           ; $5457: $27
    ld h, b                                       ; $5458: $60
    or b                                          ; $5459: $b0
    xor b                                         ; $545a: $a8
    pop af                                        ; $545b: $f1
    ld e, [hl]                                    ; $545c: $5e
    inc [hl]                                      ; $545d: $34
    jr nc, jr_049_53f4                            ; $545e: $30 $94

    cp e                                          ; $5460: $bb
    rst $30                                       ; $5461: $f7
    sbc [hl]                                      ; $5462: $9e
    cp l                                          ; $5463: $bd
    adc [hl]                                      ; $5464: $8e
    ld d, d                                       ; $5465: $52
    ld d, [hl]                                    ; $5466: $56

jr_049_5467:
    xor e                                         ; $5467: $ab
    cp c                                          ; $5468: $b9
    sub [hl]                                      ; $5469: $96
    dec bc                                        ; $546a: $0b
    ld a, d                                       ; $546b: $7a
    push hl                                       ; $546c: $e5
    nop                                           ; $546d: $00
    rst $10                                       ; $546e: $d7
    ld l, l                                       ; $546f: $6d
    pop hl                                        ; $5470: $e1
    rst $38                                       ; $5471: $ff
    inc d                                         ; $5472: $14
    rra                                           ; $5473: $1f
    sub a                                         ; $5474: $97
    cp a                                          ; $5475: $bf
    sub e                                         ; $5476: $93
    sub [hl]                                      ; $5477: $96
    ld b, e                                       ; $5478: $43
    add hl, sp                                    ; $5479: $39
    ld h, a                                       ; $547a: $67
    xor [hl]                                      ; $547b: $ae
    push hl                                       ; $547c: $e5
    inc a                                         ; $547d: $3c
    ld [hl], $15                                  ; $547e: $36 $15
    rst $28                                       ; $5480: $ef
    adc h                                         ; $5481: $8c
    ld b, c                                       ; $5482: $41
    ld e, [hl]                                    ; $5483: $5e
    add hl, sp                                    ; $5484: $39
    nop                                           ; $5485: $00
    cpl                                           ; $5486: $2f
    ld [hl], $5b                                  ; $5487: $36 $5b
    jp c, $9f2b                                   ; $5489: $da $2b $9f

    cp c                                          ; $548c: $b9
    inc [hl]                                      ; $548d: $34
    ld d, h                                       ; $548e: $54
    inc bc                                        ; $548f: $03
    adc l                                         ; $5490: $8d
    inc c                                         ; $5491: $0c
    ld e, $32                                     ; $5492: $1e $32
    ld [bc], a                                    ; $5494: $02
    cp a                                          ; $5495: $bf
    rra                                           ; $5496: $1f
    dec l                                         ; $5497: $2d
    jp nz, $2720                                  ; $5498: $c2 $20 $27

    or l                                          ; $549b: $b5
    add e                                         ; $549c: $83
    ld [$e962], a                                 ; $549d: $ea $62 $e9

jr_049_54a0:
    ld b, h                                       ; $54a0: $44
    ld d, c                                       ; $54a1: $51
    ld l, c                                       ; $54a2: $69
    adc a                                         ; $54a3: $8f
    ld a, $fa                                     ; $54a4: $3e $fa
    ret z                                         ; $54a6: $c8

    push bc                                       ; $54a7: $c5
    cp b                                          ; $54a8: $b8
    inc de                                        ; $54a9: $13
    jp z, $df54                                   ; $54aa: $ca $54 $df

    ld e, h                                       ; $54ad: $5c
    ld [hl], e                                    ; $54ae: $73
    cp [hl]                                       ; $54af: $be
    sub e                                         ; $54b0: $93
    ld h, [hl]                                    ; $54b1: $66
    call nz, $9073                                ; $54b2: $c4 $73 $90
    rst $20                                       ; $54b5: $e7
    dec sp                                        ; $54b6: $3b
    ld l, d                                       ; $54b7: $6a
    and l                                         ; $54b8: $a5
    jp c, $a553                                   ; $54b9: $da $53 $a5

    rst $18                                       ; $54bc: $df
    ret z                                         ; $54bd: $c8

    ld [hl], a                                    ; $54be: $77
    sub a                                         ; $54bf: $97
    sub l                                         ; $54c0: $95
    xor d                                         ; $54c1: $aa
    cp c                                          ; $54c2: $b9
    and $de                                       ; $54c3: $e6 $de
    ld hl, sp+$6e                                 ; $54c5: $f8 $6e
    db $d3                                        ; $54c7: $d3
    adc h                                         ; $54c8: $8c
    call nc, Call_049_76a2                        ; $54c9: $d4 $a2 $76
    call c, $a365                                 ; $54cc: $dc $65 $a3
    ld h, [hl]                                    ; $54cf: $66
    ld a, h                                       ; $54d0: $7c
    nop                                           ; $54d1: $00
    cpl                                           ; $54d2: $2f
    ld a, [de]                                    ; $54d3: $1a
    jr jr_049_54a0                                ; $54d4: $18 $ca

    add hl, sp                                    ; $54d6: $39
    and a                                         ; $54d7: $a7
    add hl, hl                                    ; $54d8: $29
    ld e, l                                       ; $54d9: $5d
    add a                                         ; $54da: $87
    xor e                                         ; $54db: $ab
    ld [hl], a                                    ; $54dc: $77
    add $e6                                       ; $54dd: $c6 $e6
    push bc                                       ; $54df: $c5
    and d                                         ; $54e0: $a2
    ld h, [hl]                                    ; $54e1: $66
    ld c, e                                       ; $54e2: $4b
    ld d, a                                       ; $54e3: $57
    ld c, $4f                                     ; $54e4: $0e $4f
    ld l, d                                       ; $54e6: $6a
    push bc                                       ; $54e7: $c5
    adc [hl]                                      ; $54e8: $8e
    and b                                         ; $54e9: $a0
    or c                                          ; $54ea: $b1
    ld [hl+], a                                   ; $54eb: $22
    adc [hl]                                      ; $54ec: $8e
    rst $30                                       ; $54ed: $f7
    ld h, d                                       ; $54ee: $62
    or e                                          ; $54ef: $b3
    and l                                         ; $54f0: $a5
    cp l                                          ; $54f1: $bd
    ld a, [c]                                     ; $54f2: $f2
    sbc c                                         ; $54f3: $99
    ld c, e                                       ; $54f4: $4b
    inc bc                                        ; $54f5: $03
    ld h, [hl]                                    ; $54f6: $66
    inc a                                         ; $54f7: $3c
    db $d3                                        ; $54f8: $d3
    cp d                                          ; $54f9: $ba
    call Call_000_19a5                            ; $54fa: $cd $a5 $19
    call Call_049_5277                            ; $54fd: $cd $77 $52
    dec sp                                        ; $5500: $3b
    xor b                                         ; $5501: $a8
    ld [c], a                                     ; $5502: $e2
    cp l                                          ; $5503: $bd
    pop af                                        ; $5504: $f1
    ld a, c                                       ; $5505: $79
    adc d                                         ; $5506: $8a
    ret                                           ; $5507: $c9


    and h                                         ; $5508: $a4
    cp d                                          ; $5509: $ba
    ret c                                         ; $550a: $d8

    and l                                         ; $550b: $a5
    ld de, $8989                                  ; $550c: $11 $89 $89
    rrca                                          ; $550f: $0f
    ld l, a                                       ; $5510: $6f
    ld [hl+], a                                   ; $5511: $22
    dec hl                                        ; $5512: $2b
    xor [hl]                                      ; $5513: $ae
    ld l, h                                       ; $5514: $6c
    ld a, [$6f78]                                 ; $5515: $fa $78 $6f
    ld [hl], a                                    ; $5518: $77
    ret nz                                        ; $5519: $c0

    inc l                                         ; $551a: $2c
    sub a                                         ; $551b: $97
    ld h, [hl]                                    ; $551c: $66
    inc [hl]                                      ; $551d: $34
    rst $18                                       ; $551e: $df
    dec h                                         ; $551f: $25
    sub $39                                       ; $5520: $d6 $39
    ld [hl], l                                    ; $5522: $75
    ld d, d                                       ; $5523: $52
    dec sp                                        ; $5524: $3b
    xor b                                         ; $5525: $a8
    ld c, h                                       ; $5526: $4c
    db $e4                                        ; $5527: $e4
    xor e                                         ; $5528: $ab
    ld sp, $bc41                                  ; $5529: $31 $41 $bc
    or a                                          ; $552c: $b7
    cp [hl]                                       ; $552d: $be
    ld b, $3c                                     ; $552e: $06 $3c
    ld h, a                                       ; $5530: $67
    ld de, $8b06                                  ; $5531: $11 $06 $8b
    call z, Call_000_3e28                         ; $5534: $cc $28 $3e
    nop                                           ; $5537: $00
    rst $08                                       ; $5538: $cf
    ld l, e                                       ; $5539: $6b
    rlca                                          ; $553a: $07
    push de                                       ; $553b: $d5
    ld e, $7d                                     ; $553c: $1e $7d
    db $f4                                        ; $553e: $f4
    sub c                                         ; $553f: $91
    and c                                         ; $5540: $a1

Jump_049_5541:
    sbc d                                         ; $5541: $9a
    scf                                           ; $5542: $37
    inc hl                                        ; $5543: $23
    ld l, l                                       ; $5544: $6d
    add hl, bc                                    ; $5545: $09
    ld d, h                                       ; $5546: $54
    cp h                                          ; $5547: $bc
    scf                                           ; $5548: $37
    rla                                           ; $5549: $17
    add hl, de                                    ; $554a: $19
    sbc b                                         ; $554b: $98
    ld l, c                                       ; $554c: $69
    db $dd                                        ; $554d: $dd
    and $7c                                       ; $554e: $e6 $7c
    daa                                           ; $5550: $27
    or l                                          ; $5551: $b5
    add e                                         ; $5552: $83
    ld l, d                                       ; $5553: $6a
    ld b, d                                       ; $5554: $42
    sbc c                                         ; $5555: $99
    ld [$3b9b], a                                 ; $5556: $ea $9b $3b
    sbc c                                         ; $5559: $99
    sub c                                         ; $555a: $91
    ei                                            ; $555b: $fb
    ccf                                           ; $555c: $3f
    call Call_049_6819                            ; $555d: $cd $19 $68
    ld h, h                                       ; $5560: $64
    ldh a, [$90]                                  ; $5561: $f0 $90
    ld de, $09f8                                  ; $5563: $11 $f8 $09
    ld c, l                                       ; $5566: $4d
    adc [hl]                                      ; $5567: $8e
    rst $30                                       ; $5568: $f7
    call c, $3c77                                 ; $5569: $dc $77 $3c
    jr nz, jr_049_557a                            ; $556c: $20 $0c

    and b                                         ; $556e: $a0
    and c                                         ; $556f: $a1
    ld e, d                                       ; $5570: $5a
    ld h, d                                       ; $5571: $62
    ld a, c                                       ; $5572: $79
    ld l, [hl]                                    ; $5573: $6e
    ret                                           ; $5574: $c9


    sub d                                         ; $5575: $92
    ld c, a                                       ; $5576: $4f
    rst $38                                       ; $5577: $ff
    sub e                                         ; $5578: $93
    xor a                                         ; $5579: $af

jr_049_557a:
    add $40                                       ; $557a: $c6 $40
    adc $fd                                       ; $557c: $ce $fd
    sbc a                                         ; $557e: $9f
    ld d, $96                                     ; $557f: $16 $96
    rst $20                                       ; $5581: $e7
    sub [hl]                                      ; $5582: $96
    inc [hl]                                      ; $5583: $34
    ld d, [hl]                                    ; $5584: $56
    call $9cb5                                    ; $5585: $cd $b5 $9c
    ei                                            ; $5588: $fb
    ccf                                           ; $5589: $3f
    sbc l                                         ; $558a: $9d
    ld c, d                                       ; $558b: $4a
    ld d, b                                       ; $558c: $50
    ld [hl], e                                    ; $558d: $73
    ld e, a                                       ; $558e: $5f
    inc [hl]                                      ; $558f: $34
    ld e, l                                       ; $5590: $5d
    rst $18                                       ; $5591: $df
    ret z                                         ; $5592: $c8

    cp b                                          ; $5593: $b8
    add hl, de                                    ; $5594: $19
    rra                                           ; $5595: $1f
    sub a                                         ; $5596: $97
    push hl                                       ; $5597: $e5
    add hl, hl                                    ; $5598: $29
    ld [$5e03], sp                                ; $5599: $08 $03 $5e
    call nc, $ad85                                ; $559c: $d4 $85 $ad
    ld e, [hl]                                    ; $559f: $5e
    add hl, bc                                    ; $55a0: $09
    ld e, h                                       ; $55a1: $5c
    inc l                                         ; $55a2: $2c
    ld l, d                                       ; $55a3: $6a
    or [hl]                                       ; $55a4: $b6
    ld [hl], h                                    ; $55a5: $74
    or c                                          ; $55a6: $b1
    ret z                                         ; $55a7: $c8

    adc h                                         ; $55a8: $8c
    add [hl]                                      ; $55a9: $86
    ld [hl], d                                    ; $55aa: $72
    pop de                                        ; $55ab: $d1
    cpl                                           ; $55ac: $2f
    adc a                                         ; $55ad: $8f
    ld c, e                                       ; $55ae: $4b
    ld c, $58                                     ; $55af: $0e $58
    sbc d                                         ; $55b1: $9a
    pop de                                        ; $55b2: $d1
    ld a, h                                       ; $55b3: $7c
    rla                                           ; $55b4: $17

jr_049_55b5:
    sbc d                                         ; $55b5: $9a
    adc [hl]                                      ; $55b6: $8e
    rrca                                          ; $55b7: $0f
    xor a                                         ; $55b8: $af
    ld a, a                                       ; $55b9: $7f
    ld [hl+], a                                   ; $55ba: $22
    ld sp, $f317                                  ; $55bb: $31 $17 $f3
    ret z                                         ; $55be: $c8

    db $d3                                        ; $55bf: $d3
    ld e, a                                       ; $55c0: $5f
    sub [hl]                                      ; $55c1: $96
    add a                                         ; $55c2: $87
    ld l, d                                       ; $55c3: $6a
    and b                                         ; $55c4: $a0
    ld c, d                                       ; $55c5: $4a
    ld a, a                                       ; $55c6: $7f
    ld l, [hl]                                    ; $55c7: $6e
    add $07                                       ; $55c8: $c6 $07
    ld l, a                                       ; $55ca: $6f
    ld l, $fa                                     ; $55cb: $2e $fa
    push hl                                       ; $55cd: $e5
    add hl, bc                                    ; $55ce: $09
    jr @-$32                                      ; $55cf: $18 $cc

    ld [hl], a                                    ; $55d1: $77
    xor $d7                                       ; $55d2: $ee $d7
    and b                                         ; $55d4: $a0
    jp hl                                         ; $55d5: $e9


    dec sp                                        ; $55d6: $3b
    ld l, c                                       ; $55d7: $69
    ld c, d                                       ; $55d8: $4a
    xor b                                         ; $55d9: $a8
    rst $00                                       ; $55da: $c7
    and [hl]                                      ; $55db: $a6
    rst $28                                       ; $55dc: $ef
    adc $18                                       ; $55dd: $ce $18
    ld h, h                                       ; $55df: $64
    ld a, h                                       ; $55e0: $7c
    nop                                           ; $55e1: $00
    ld l, a                                       ; $55e2: $6f
    ld l, $fa                                     ; $55e3: $2e $fa
    push hl                                       ; $55e5: $e5
    add hl, bc                                    ; $55e6: $09
    jr jr_049_55b5                                ; $55e7: $18 $cc

    ld [hl], a                                    ; $55e9: $77
    xor $27                                       ; $55ea: $ee $27
    inc b                                         ; $55ec: $04
    sbc l                                         ; $55ed: $9d
    inc [hl]                                      ; $55ee: $34
    dec h                                         ; $55ef: $25
    call nc, $d363                                ; $55f0: $d4 $63 $d3
    ld [hl], a                                    ; $55f3: $77
    ld h, a                                       ; $55f4: $67
    inc c                                         ; $55f5: $0c
    ld [hl-], a                                   ; $55f6: $32
    ld a, $00                                     ; $55f7: $3e $00
    xor a                                         ; $55f9: $af
    ld a, a                                       ; $55fa: $7f
    ld [hl+], a                                   ; $55fb: $22
    ld sp, $8b17                                  ; $55fc: $31 $17 $8b
    sbc d                                         ; $55ff: $9a
    dec l                                         ; $5600: $2d
    ld e, l                                       ; $5601: $5d
    inc l                                         ; $5602: $2c
    jp nz, $2720                                  ; $5603: $c2 $20 $27

    ld c, l                                       ; $5606: $4d
    add hl, hl                                    ; $5607: $29
    dec de                                        ; $5608: $1b
    xor d                                         ; $5609: $aa
    add hl, hl                                    ; $560a: $29
    halt                                          ; $560b: $76
    ld h, h                                       ; $560c: $64
    ld a, h                                       ; $560d: $7c
    nop                                           ; $560e: $00
    ld l, a                                       ; $560f: $6f
    db $fd                                        ; $5610: $fd
    ld c, a                                       ; $5611: $4f
    ld h, a                                       ; $5612: $67
    add h                                         ; $5613: $84
    add a                                         ; $5614: $87
    adc h                                         ; $5615: $8c
    ldh [$62], a                                  ; $5616: $e0 $62
    ld d, c                                       ; $5618: $51
    or e                                          ; $5619: $b3
    and l                                         ; $561a: $a5
    adc e                                         ; $561b: $8b
    db $fd                                        ; $561c: $fd
    inc a                                         ; $561d: $3c
    ld [hl], a                                    ; $561e: $77
    adc c                                         ; $561f: $89
    ld [hl], l                                    ; $5620: $75
    ld c, [hl]                                    ; $5621: $4e
    sbc l                                         ; $5622: $9d
    xor e                                         ; $5623: $ab
    ld a, a                                       ; $5624: $7f
    ld l, c                                       ; $5625: $69
    xor b                                         ; $5626: $a8
    sub [hl]                                      ; $5627: $96
    rra                                           ; $5628: $1f
    inc c                                         ; $5629: $0c
    ld l, b                                       ; $562a: $68
    di                                            ; $562b: $f3
    pop af                                        ; $562c: $f1
    ld bc, $1597                                  ; $562d: $01 $97 $15
    ld d, $74                                     ; $5630: $16 $74
    cp [hl]                                       ; $5632: $be
    sub e                                         ; $5633: $93
    ld h, [hl]                                    ; $5634: $66
    call nz, $0e57                                ; $5635: $c4 $57 $0e
    cpl                                           ; $5638: $2f
    or l                                          ; $5639: $b5
    pop af                                        ; $563a: $f1
    ld bc, $7d2f                                  ; $563b: $01 $2f $7d
    rst $20                                       ; $563e: $e7
    ld h, d                                       ; $563f: $62
    ld a, [bc]                                    ; $5640: $0a
    ld e, $62                                     ; $5641: $1e $62
    ld a, c                                       ; $5643: $79
    ld l, l                                       ; $5644: $6d
    ld c, [hl]                                    ; $5645: $4e
    ld l, b                                       ; $5646: $68
    add hl, sp                                    ; $5647: $39
    add sp, $3e                                   ; $5648: $e8 $3e
    inc [hl]                                      ; $564a: $34
    ld l, a                                       ; $564b: $6f
    add hl, de                                    ; $564c: $19
    rst $28                                       ; $564d: $ef
    sbc d                                         ; $564e: $9a
    sbc h                                         ; $564f: $9c
    or h                                          ; $5650: $b4
    ld e, h                                       ; $5651: $5c
    ld h, d                                       ; $5652: $62
    ld a, c                                       ; $5653: $79
    cp [hl]                                       ; $5654: $be
    dec bc                                        ; $5655: $0b
    xor e                                         ; $5656: $ab
    dec sp                                        ; $5657: $3b
    ld l, a                                       ; $5658: $6f
    ld h, b                                       ; $5659: $60
    daa                                           ; $565a: $27
    add e                                         ; $565b: $83
    add a                                         ; $565c: $87
    call c, $0f8c                                 ; $565d: $dc $8c $0f
    ld c, a                                       ; $5660: $4f
    ld l, d                                       ; $5661: $6a
    or l                                          ; $5662: $b5
    and b                                         ; $5663: $a0
    sub e                                         ; $5664: $93
    jp c, Jump_000_268c                           ; $5665: $da $8c $26

    inc [hl]                                      ; $5668: $34
    ld sp, hl                                     ; $5669: $f9
    ld h, d                                       ; $566a: $62
    sub a                                         ; $566b: $97
    ld b, [hl]                                    ; $566c: $46
    inc h                                         ; $566d: $24
    and $62                                       ; $566e: $e6 $62
    or d                                          ; $5670: $b2
    sbc c                                         ; $5671: $99
    db $dd                                        ; $5672: $dd
    xor c                                         ; $5673: $a9
    db $e3                                        ; $5674: $e3
    sub d                                         ; $5675: $92
    inc bc                                        ; $5676: $03
    sub [hl]                                      ; $5677: $96
    ld h, [hl]                                    ; $5678: $66
    or h                                          ; $5679: $b4
    rst $30                                       ; $567a: $f7
    ld c, [hl]                                    ; $567b: $4e
    push bc                                       ; $567c: $c5
    ld d, h                                       ; $567d: $54
    ld e, h                                       ; $567e: $5c
    call z, $00f8                                 ; $567f: $cc $f8 $00
    rst $10                                       ; $5682: $d7
    cp e                                          ; $5683: $bb
    sub e                                         ; $5684: $93
    xor c                                         ; $5685: $a9
    sub l                                         ; $5686: $95

jr_049_5687:
    ld d, d                                       ; $5687: $52
    ld sp, $8182                                  ; $5688: $31 $82 $81
    sbc [hl]                                      ; $568b: $9e
    ld a, [hl]                                    ; $568c: $7e
    ld a, [$458b]                                 ; $568d: $fa $8b $45
    ld h, [hl]                                    ; $5690: $66
    or h                                          ; $5691: $b4
    and b                                         ; $5692: $a0
    dec sp                                        ; $5693: $3b
    db $fd                                        ; $5694: $fd
    db $f4                                        ; $5695: $f4
    call Call_000_319d                            ; $5696: $cd $9d $31
    ret z                                         ; $5699: $c8

    and l                                         ; $569a: $a5
    inc sp                                        ; $569b: $33
    ret nc                                        ; $569c: $d0

    db $ec                                        ; $569d: $ec
    cp c                                          ; $569e: $b9
    add hl, de                                    ; $569f: $19
    rra                                           ; $56a0: $1f
    rst $28                                       ; $56a1: $ef
    ld d, l                                       ; $56a2: $55
    sub [hl]                                      ; $56a3: $96
    ld h, $60                                     ; $56a4: $26 $60
    jr nc, jr_049_5687                            ; $56a6: $30 $df

    dec a                                         ; $56a8: $3d
    rst $10                                       ; $56a9: $d7
    db $ec                                        ; $56aa: $ec
    cp c                                          ; $56ab: $b9
    inc [hl]                                      ; $56ac: $34
    ret nc                                        ; $56ad: $d0

    ld d, e                                       ; $56ae: $53
    xor e                                         ; $56af: $ab
    jr c, jr_049_56f0                             ; $56b0: $38 $3e

    nop                                           ; $56b2: $00
    ld l, a                                       ; $56b3: $6f
    xor $8c                                       ; $56b4: $ee $8c
    push hl                                       ; $56b6: $e5
    sub l                                         ; $56b7: $95
    sub $e6                                       ; $56b8: $d6 $e6
    inc d                                         ; $56ba: $14
    dec sp                                        ; $56bb: $3b
    ld [hl], d                                    ; $56bc: $72
    ld b, d                                       ; $56bd: $42
    cp c                                          ; $56be: $b9
    inc [hl]                                      ; $56bf: $34
    rlca                                          ; $56c0: $07
    ld a, c                                       ; $56c1: $79
    sbc $72                                       ; $56c2: $de $72
    cp [hl]                                       ; $56c4: $be
    db $d3                                        ; $56c5: $d3
    ld h, [hl]                                    ; $56c6: $66
    xor h                                         ; $56c7: $ac
    cp b                                          ; $56c8: $b8
    sub e                                         ; $56c9: $93
    dec l                                         ; $56ca: $2d
    call $0f1b                                    ; $56cb: $cd $1b $0f
    push hl                                       ; $56ce: $e5
    sbc h                                         ; $56cf: $9c
    sbc l                                         ; $56d0: $9d
    dec c                                         ; $56d1: $0d
    call nz, $d707                                ; $56d2: $c4 $07 $d7
    db $e4                                        ; $56d5: $e4
    jp nz, $a1ff                                  ; $56d6: $c2 $ff $a1

    ld a, c                                       ; $56d9: $79
    db $e3                                        ; $56da: $e3
    add hl, sp                                    ; $56db: $39
    di                                            ; $56dc: $f3
    dec a                                         ; $56dd: $3d
    ld [hl], a                                    ; $56de: $77
    or d                                          ; $56df: $b2
    and l                                         ; $56e0: $a5
    ld b, l                                       ; $56e1: $45
    dec l                                         ; $56e2: $2d
    ld c, l                                       ; $56e3: $4d
    add hl, sp                                    ; $56e4: $39
    ld [hl], b                                    ; $56e5: $70
    ld a, b                                       ; $56e6: $78
    push de                                       ; $56e7: $d5
    jp nz, $c456                                  ; $56e8: $c2 $56 $c4

    rla                                           ; $56eb: $17
    adc e                                         ; $56ec: $8b
    sbc d                                         ; $56ed: $9a
    dec l                                         ; $56ee: $2d
    push bc                                       ; $56ef: $c5

jr_049_56f0:
    rlca                                          ; $56f0: $07
    ld c, a                                       ; $56f1: $4f
    ld l, d                                       ; $56f2: $6a
    dec [hl]                                      ; $56f3: $35
    ld h, a                                       ; $56f4: $67
    add d                                         ; $56f5: $82
    add $40                                       ; $56f6: $c6 $40
    call nz, Call_049_4b73                        ; $56f8: $c4 $73 $4b
    ld a, [de]                                    ; $56fb: $1a
    ld a, e                                       ; $56fc: $7b
    ld l, [hl]                                    ; $56fd: $6e
    ld e, [hl]                                    ; $56fe: $5e
    db $ec                                        ; $56ff: $ec
    db $ec                                        ; $5700: $ec
    ld l, b                                       ; $5701: $68
    db $dd                                        ; $5702: $dd
    call c, $8309                                 ; $5703: $dc $09 $83
    ld [hl], c                                    ; $5706: $71

Call_049_5707:
    rst $20                                       ; $5707: $e7
    sbc h                                         ; $5708: $9c
    ld c, d                                       ; $5709: $4a
    ld c, e                                       ; $570a: $4b
    inc bc                                        ; $570b: $03
    push af                                       ; $570c: $f5
    ld b, $0f                                     ; $570d: $06 $0f
    cp c                                          ; $570f: $b9
    adc c                                         ; $5710: $89
    ld l, d                                       ; $5711: $6a
    ld l, l                                       ; $5712: $6d
    ld l, $2c                                     ; $5713: $2e $2c
    ld sp, hl                                     ; $5715: $f9
    and [hl]                                      ; $5716: $a6
    call nz, Call_000_2a04                        ; $5717: $c4 $04 $2a
    ld [hl], d                                    ; $571a: $72
    sub d                                         ; $571b: $92
    and a                                         ; $571c: $a7
    adc l                                         ; $571d: $8d
    sbc e                                         ; $571e: $9b
    ld d, e                                       ; $571f: $53
    jp c, $e32c                                   ; $5720: $da $2c $e3

    inc bc                                        ; $5723: $03
    rst $10                                       ; $5724: $d7
    db $e4                                        ; $5725: $e4

jr_049_5726:
    jp nz, $a1ff                                  ; $5726: $c2 $ff $a1

    ld a, c                                       ; $5729: $79
    db $e3                                        ; $572a: $e3
    add hl, sp                                    ; $572b: $39
    di                                            ; $572c: $f3
    dec a                                         ; $572d: $3d
    ld [hl], a                                    ; $572e: $77
    or d                                          ; $572f: $b2
    and l                                         ; $5730: $a5
    ld b, l                                       ; $5731: $45
    dec l                                         ; $5732: $2d
    dec c                                         ; $5733: $0d
    ld d, h                                       ; $5734: $54
    dec sp                                        ; $5735: $3b
    ld [hl], d                                    ; $5736: $72
    ld h, c                                       ; $5737: $61
    dec hl                                        ; $5738: $2b
    ld [c], a                                     ; $5739: $e2
    adc e                                         ; $573a: $8b
    ld b, l                                       ; $573b: $45
    call $e296                                    ; $573c: $cd $96 $e2
    inc bc                                        ; $573f: $03
    rst $10                                       ; $5740: $d7
    db $e4                                        ; $5741: $e4
    jp nz, $a1ff                                  ; $5742: $c2 $ff $a1

    ld a, c                                       ; $5745: $79
    db $e3                                        ; $5746: $e3
    add hl, sp                                    ; $5747: $39
    di                                            ; $5748: $f3
    dec a                                         ; $5749: $3d
    ld [hl], a                                    ; $574a: $77
    or d                                          ; $574b: $b2
    and l                                         ; $574c: $a5
    ld b, l                                       ; $574d: $45
    sbc b                                         ; $574e: $98
    cp [hl]                                       ; $574f: $be
    or h                                          ; $5750: $b4
    ld d, d                                       ; $5751: $52
    ld a, [hl+]                                   ; $5752: $2a
    ld b, [hl]                                    ; $5753: $46
    jr nc, jr_049_5726                            ; $5754: $30 $d0

    db $d3                                        ; $5756: $d3
    ld c, a                                       ; $5757: $4f
    ccf                                           ; $5758: $3f
    ld [hl-], a                                   ; $5759: $32
    sub e                                         ; $575a: $93
    ld a, h                                       ; $575b: $7c
    or c                                          ; $575c: $b1
    xor b                                         ; $575d: $a8
    reti                                          ; $575e: $d9


    ld d, d                                       ; $575f: $52
    ld a, h                                       ; $5760: $7c
    nop                                           ; $5761: $00
    ld l, a                                       ; $5762: $6f
    ld c, [hl]                                    ; $5763: $4e
    ld l, b                                       ; $5764: $68
    ld a, [c]                                     ; $5765: $f2
    ld c, d                                       ; $5766: $4a
    ld h, b                                       ; $5767: $60
    pop de                                        ; $5768: $d1
    xor a                                         ; $5769: $af
    ld b, a                                       ; $576a: $47
    ld [hl], b                                    ; $576b: $70
    or c                                          ; $576c: $b1
    xor b                                         ; $576d: $a8
    reti                                          ; $576e: $d9


    ld d, d                                       ; $576f: $52
    ld a, h                                       ; $5770: $7c
    nop                                           ; $5771: $00
    ld c, a                                       ; $5772: $4f
    sub c                                         ; $5773: $91
    cp c                                          ; $5774: $b9
    ld a, a                                       ; $5775: $7f
    ld d, c                                       ; $5776: $51
    or e                                          ; $5777: $b3

Call_049_5778:
    and l                                         ; $5778: $a5
    adc e                                         ; $5779: $8b
    ld a, c                                       ; $577a: $79
    db $e3                                        ; $577b: $e3
    add hl, sp                                    ; $577c: $39
    dec bc                                        ; $577d: $0b
    set 1, e                                      ; $577e: $cb $cb
    rrca                                          ; $5780: $0f
    sub $e6                                       ; $5781: $d6 $e6
    ld h, h                                       ; $5783: $64
    ld c, e                                       ; $5784: $4b
    inc sp                                        ; $5785: $33
    ld c, e                                       ; $5786: $4b
    rst $28                                       ; $5787: $ef
    sub b                                         ; $5788: $90
    adc b                                         ; $5789: $88
    push bc                                       ; $578a: $c5
    rra                                           ; $578b: $1f
    ld l, a                                       ; $578c: $6f
    ld c, $b4                                     ; $578d: $0e $b4
    ld [hl+], a                                   ; $578f: $22
    ld e, [hl]                                    ; $5790: $5e
    ld e, b                                       ; $5791: $58
    ld e, [hl]                                    ; $5792: $5e
    ld h, d                                       ; $5793: $62
    ld a, c                                       ; $5794: $79
    ld a, [hl+]                                   ; $5795: $2a
    xor e                                         ; $5796: $ab
    rst $30                                       ; $5797: $f7
    and c                                         ; $5798: $a1
    adc e                                         ; $5799: $8b
    ld b, l                                       ; $579a: $45
    call $e296                                    ; $579b: $cd $96 $e2
    inc bc                                        ; $579e: $03
    ld d, a                                       ; $579f: $57
    cp e                                          ; $57a0: $bb
    rst $20                                       ; $57a1: $e7

Jump_049_57a2:
    sbc d                                         ; $57a2: $9a
    dec a                                         ; $57a3: $3d
    sub a                                         ; $57a4: $97
    ld d, $fd                                     ; $57a5: $16 $fd
    ld a, [c]                                     ; $57a7: $f2
    jr nc, jr_049_57cd                            ; $57a8: $30 $23

    db $f4                                        ; $57aa: $f4
    cp [hl]                                       ; $57ab: $be
    ld e, d                                       ; $57ac: $5a
    xor l                                         ; $57ad: $ad
    call $c77d                                    ; $57ae: $cd $7d $c7
    ld [hl], a                                    ; $57b1: $77
    ld b, d                                       ; $57b2: $42
    ld h, l                                       ; $57b3: $65
    db $d3                                        ; $57b4: $d3
    ld [hl], a                                    ; $57b5: $77
    ld h, a                                       ; $57b6: $67
    inc c                                         ; $57b7: $0c
    ld a, [c]                                     ; $57b8: $f2
    ld h, d                                       ; $57b9: $62
    ld d, c                                       ; $57ba: $51
    or e                                          ; $57bb: $b3
    and l                                         ; $57bc: $a5
    ld hl, sp+$00                                 ; $57bd: $f8 $00
    ld l, a                                       ; $57bf: $6f
    ld c, [hl]                                    ; $57c0: $4e
    ld l, b                                       ; $57c1: $68
    ld a, [c]                                     ; $57c2: $f2
    ld b, d                                       ; $57c3: $42
    inc hl                                        ; $57c4: $23
    cp a                                          ; $57c5: $bf
    rrca                                          ; $57c6: $0f
    db $ed                                        ; $57c7: $ed
    ld d, h                                       ; $57c8: $54
    or b                                          ; $57c9: $b0
    sbc a                                         ; $57ca: $9f
    rst $20                                       ; $57cb: $e7
    ld c, [hl]                                    ; $57cc: $4e

jr_049_57cd:
    ld h, h                                       ; $57cd: $64
    xor $27                                       ; $57ce: $ee $27
    inc l                                         ; $57d0: $2c
    ld [hl], a                                    ; $57d1: $77
    ld d, d                                       ; $57d2: $52
    ld e, e                                       ; $57d3: $5b
    ld a, [c]                                     ; $57d4: $f2
    cp b                                          ; $57d5: $b8
    dec sp                                        ; $57d6: $3b
    ld a, l                                       ; $57d7: $7d
    ld a, [c]                                     ; $57d8: $f2
    call Call_049_458b                            ; $57d9: $cd $8b $45
    call $e296                                    ; $57dc: $cd $96 $e2
    inc bc                                        ; $57df: $03
    sub a                                         ; $57e0: $97
    dec d                                         ; $57e1: $15
    ld d, $74                                     ; $57e2: $16 $74
    cp [hl]                                       ; $57e4: $be
    sub e                                         ; $57e5: $93
    ld h, [hl]                                    ; $57e6: $66
    call nz, $0e57                                ; $57e7: $c4 $57 $0e
    rst $10                                       ; $57ea: $d7
    db $ed                                        ; $57eb: $ed
    ld h, d                                       ; $57ec: $62
    jr z, jr_049_5806                             ; $57ed: $28 $17

    ld d, [hl]                                    ; $57ef: $56
    ret c                                         ; $57f0: $d8

    ld l, l                                       ; $57f1: $6d
    ld d, c                                       ; $57f2: $51
    cp h                                          ; $57f3: $bc
    ld c, e                                       ; $57f4: $4b
    inc l                                         ; $57f5: $2c
    dec c                                         ; $57f6: $0d
    push de                                       ; $57f7: $d5
    sbc h                                         ; $57f8: $9c

Jump_049_57f9:
    db $d3                                        ; $57f9: $d3
    and h                                         ; $57fa: $a4
    halt                                          ; $57fb: $76
    ld d, b                                       ; $57fc: $50
    add hl, hl                                    ; $57fd: $29
    ld e, l                                       ; $57fe: $5d
    add a                                         ; $57ff: $87
    xor e                                         ; $5800: $ab
    db $e3                                        ; $5801: $e3
    cp l                                          ; $5802: $bd
    adc l                                         ; $5803: $8d
    adc d                                         ; $5804: $8a
    rst $20                                       ; $5805: $e7

jr_049_5806:
    call z, $af1b                                 ; $5806: $cc $1b $af
    or h                                          ; $5809: $b4
    ld [hl], $17                                  ; $580a: $36 $17
    db $fd                                        ; $580c: $fd
    ld d, h                                       ; $580d: $54
    ld e, h                                       ; $580e: $5c
    ld a, [de]                                    ; $580f: $1a
    and $9c                                       ; $5810: $e6 $9c
    db $d3                                        ; $5812: $d3
    and h                                         ; $5813: $a4
    halt                                          ; $5814: $76
    ld d, b                                       ; $5815: $50
    db $ed                                        ; $5816: $ed
    ld l, h                                       ; $5817: $6c
    ld a, h                                       ; $5818: $7c
    push hl                                       ; $5819: $e5
    nop                                           ; $581a: $00
    rst $10                                       ; $581b: $d7
    call nc, $f2c2                                ; $581c: $d4 $c2 $f2
    jp nz, $ea3a                                  ; $581f: $c2 $3a $ea

    jp z, $c9ae                                   ; $5822: $ca $ae $c9

    sbc l                                         ; $5825: $9d
    cp a                                          ; $5826: $bf
    inc sp                                        ; $5827: $33
    or a                                          ; $5828: $b7
    ld [hl], h                                    ; $5829: $74
    ld [hl-], a                                   ; $582a: $32
    ld a, b                                       ; $582b: $78
    ret z                                         ; $582c: $c8

    call $e379                                    ; $582d: $cd $79 $e3
    sbc l                                         ; $5830: $9d
    dec sp                                        ; $5831: $3b
    ld bc, $3d83                                  ; $5832: $01 $83 $3d
    rst $30                                       ; $5835: $f7
    dec e                                         ; $5836: $1d
    rrca                                          ; $5837: $0f
    ld [$6803], sp                                ; $5838: $08 $03 $68
    daa                                           ; $583b: $27
    db $e3                                        ; $583c: $e3
    ld b, l                                       ; $583d: $45
    dec l                                         ; $583e: $2d
    call $bd2c                                    ; $583f: $cd $2c $bd
    pop bc                                        ; $5842: $c1
    ld b, e                                       ; $5843: $43
    sbc [hl]                                      ; $5844: $9e
    ld e, c                                       ; $5845: $59
    xor $27                                       ; $5846: $ee $27
    xor b                                         ; $5848: $a8
    rst $00                                       ; $5849: $c7
    ld [de], a                                    ; $584a: $12
    ld d, a                                       ; $584b: $57
    xor b                                         ; $584c: $a8
    ld h, d                                       ; $584d: $62
    jp nz, Jump_049_63c0                          ; $584e: $c2 $c0 $63

    add d                                         ; $5851: $82
    sbc l                                         ; $5852: $9d
    cp a                                          ; $5853: $bf
    db $e3                                        ; $5854: $e3
    sbc e                                         ; $5855: $9b
    inc de                                        ; $5856: $13
    xor d                                         ; $5857: $aa
    cp b                                          ; $5858: $b8
    cp [hl]                                       ; $5859: $be
    add hl, de                                    ; $585a: $19
    rst $28                                       ; $585b: $ef
    push hl                                       ; $585c: $e5
    inc a                                         ; $585d: $3c
    ld [hl], a                                    ; $585e: $77
    and c                                         ; $585f: $a1
    and l                                         ; $5860: $a5
    xor a                                         ; $5861: $af
    ld e, $aa                                     ; $5862: $1e $aa
    add c                                         ; $5864: $81
    ld a, d                                       ; $5865: $7a
    or e                                          ; $5866: $b3
    adc h                                         ; $5867: $8c
    rst $30                                       ; $5868: $f7
    call c, $efaf                                 ; $5869: $dc $af $ef
    xor b                                         ; $586c: $a8
    xor b                                         ; $586d: $a8
    add $25                                       ; $586e: $c6 $25
    rlca                                          ; $5870: $07
    inc l                                         ; $5871: $2c
    call $ef68                                    ; $5872: $cd $68 $ef
    sbc l                                         ; $5875: $9d
    adc d                                         ; $5876: $8a
    xor c                                         ; $5877: $a9
    cp b                                          ; $5878: $b8
    sbc b                                         ; $5879: $98
    pop af                                        ; $587a: $f1
    ld bc, $354f                                  ; $587b: $01 $4f $35
    or e                                          ; $587e: $b3
    dec sp                                        ; $587f: $3b
    ld [hl], l                                    ; $5880: $75
    ld d, d                                       ; $5881: $52
    sbc e                                         ; $5882: $9b
    pop de                                        ; $5883: $d1
    push bc                                       ; $5884: $c5
    ld l, $8d                                     ; $5885: $2e $8d
    ld c, b                                       ; $5887: $48
    call z, $0395                                 ; $5888: $cc $95 $03
    rst $10                                       ; $588b: $d7
    db $e4                                        ; $588c: $e4
    ld a, h                                       ; $588d: $7c
    ld d, e                                       ; $588e: $53
    ld l, $2c                                     ; $588f: $2e $2c
    rst $28                                       ; $5891: $ef
    ld d, h                                       ; $5892: $54
    dec e                                         ; $5893: $1d
    rst $28                                       ; $5894: $ef
    ld b, l                                       ; $5895: $45
    inc sp                                        ; $5896: $33
    ld e, d                                       ; $5897: $5a
    ld e, b                                       ; $5898: $58
    ld e, $aa                                     ; $5899: $1e $aa
    sbc c                                         ; $589b: $99
    sub $8d                                       ; $589c: $d6 $8d
    call z, Call_049_4ef4                         ; $589e: $cc $f4 $4e
    push de                                       ; $58a1: $d5
    ld [hl], e                                    ; $58a2: $73
    xor c                                         ; $58a3: $a9
    adc l                                         ; $58a4: $8d
    db $fc                                        ; $58a5: $fc
    push bc                                       ; $58a6: $c5
    jp nz, Jump_000_29ff                          ; $58a7: $c2 $ff $29

    adc [hl]                                      ; $58aa: $8e
    db $e3                                        ; $58ab: $e3
    inc bc                                        ; $58ac: $03
    cpl                                           ; $58ad: $2f
    ld h, d                                       ; $58ae: $62
    sub b                                         ; $58af: $90
    ld [hl], e                                    ; $58b0: $73
    ld c, l                                       ; $58b1: $4d
    dec hl                                        ; $58b2: $2b
    ld h, $94                                     ; $58b3: $26 $94
    ld b, e                                       ; $58b5: $43
    or l                                          ; $58b6: $b5
    ld [$7695], sp                                ; $58b7: $08 $95 $76
    inc h                                         ; $58ba: $24
    rst $00                                       ; $58bb: $c7
    cp e                                          ; $58bc: $bb
    sbc $09                                       ; $58bd: $de $09
    ld c, l                                       ; $58bf: $4d
    sbc [hl]                                      ; $58c0: $9e

jr_049_58c1:
    ld [c], a                                     ; $58c1: $e2
    sub d                                         ; $58c2: $92
    inc l                                         ; $58c3: $2c
    call Call_000_0e5b                            ; $58c4: $cd $5b $0e
    push hl                                       ; $58c7: $e5
    cp h                                          ; $58c8: $bc
    pop bc                                        ; $58c9: $c1
    ld b, e                                       ; $58ca: $43
    cp [hl]                                       ; $58cb: $be
    ret c                                         ; $58cc: $d8

    and l                                         ; $58cd: $a5
    ld de, $d989                                  ; $58ce: $11 $89 $d9
    dec hl                                        ; $58d1: $2b
    sbc a                                         ; $58d2: $9f
    cp c                                          ; $58d3: $b9
    inc d                                         ; $58d4: $14
    rra                                           ; $58d5: $1f
    xor a                                         ; $58d6: $af
    sub b                                         ; $58d7: $90
    pop bc                                        ; $58d8: $c1
    ld b, e                                       ; $58d9: $43
    ld b, [hl]                                    ; $58da: $46
    ret nc                                        ; $58db: $d0

    ld a, c                                       ; $58dc: $79
    inc bc                                        ; $58dd: $03
    ld [hl], e                                    ; $58de: $73
    dec l                                         ; $58df: $2d
    cp l                                          ; $58e0: $bd
    add hl, de                                    ; $58e1: $19
    cp b                                          ; $58e2: $b8
    sbc b                                         ; $58e3: $98
    adc e                                         ; $58e4: $8b
    jp hl                                         ; $58e5: $e9


    ld a, c                                       ; $58e6: $79
    adc $12                                       ; $58e7: $ce $12
    bit 2, a                                      ; $58e9: $cb $57
    ld c, $d7                                     ; $58eb: $0e $d7
    db $e4                                        ; $58ed: $e4
    jp nz, Jump_049_6612                          ; $58ee: $c2 $12 $66

    sub [hl]                                      ; $58f1: $96
    ld d, $61                                     ; $58f2: $16 $61
    or b                                          ; $58f4: $b0
    db $fc                                        ; $58f5: $fc
    ld h, b                                       ; $58f6: $60
    ld de, $b906                                  ; $58f7: $11 $06 $b9
    ld [hl+], a                                   ; $58fa: $22
    ld l, b                                       ; $58fb: $68
    ld c, [hl]                                    ; $58fc: $4e
    or c                                          ; $58fd: $b1
    db $e3                                        ; $58fe: $e3
    sbc e                                         ; $58ff: $9b
    call c, Call_000_0c64                         ; $5900: $dc $64 $0c
    db $fc                                        ; $5903: $fc
    ld a, $b4                                     ; $5904: $3e $b4
    rst $30                                       ; $5906: $f7
    ld c, [hl]                                    ; $5907: $4e
    push bc                                       ; $5908: $c5
    ld d, h                                       ; $5909: $54
    ld e, h                                       ; $590a: $5c
    call z, Call_049_5778                         ; $590b: $cc $78 $57
    rst $38                                       ; $590e: $ff
    and a                                         ; $590f: $a7
    ld sp, hl                                     ; $5910: $f9
    ld c, $34                                     ; $5911: $0e $34
    inc l                                         ; $5913: $2c
    ld b, [hl]                                    ; $5914: $46
    dec e                                         ; $5915: $1d
    or b                                          ; $5916: $b0
    inc b                                         ; $5917: $04
    call $93c9                                    ; $5918: $cd $c9 $93
    ld b, l                                       ; $591b: $45
    dec bc                                        ; $591c: $0b
    cp d                                          ; $591d: $ba
    ld [hl], $a7                                  ; $591e: $36 $a7
    ret c                                         ; $5920: $d8

    sub c                                         ; $5921: $91
    ld d, e                                       ; $5922: $53
    ld e, c                                       ; $5923: $59
    xor l                                         ; $5924: $ad
    ld c, e                                       ; $5925: $4b
    inc de                                        ; $5926: $13
    jr nc, jr_049_58c1                            ; $5927: $30 $98

    rst $28                                       ; $5929: $ef
    db $f4                                        ; $592a: $f4
    sub a                                         ; $592b: $97
    and [hl]                                      ; $592c: $a6
    sbc e                                         ; $592d: $9b
    pop af                                        ; $592e: $f1
    ld bc, $d4d7                                  ; $592f: $01 $d7 $d4
    sbc [hl]                                      ; $5932: $9e
    daa                                           ; $5933: $27
    ld c, h                                       ; $5934: $4c
    ld e, c                                       ; $5935: $59
    cp l                                          ; $5936: $bd
    ld [hl], $e7                                  ; $5937: $36 $e7
    ld e, d                                       ; $5939: $5a
    ld l, $e8                                     ; $593a: $2e $e8
    ld [hl], h                                    ; $593c: $74
    ret                                           ; $593d: $c9


    xor b                                         ; $593e: $a8
    ld a, c                                       ; $593f: $79
    ld h, l                                       ; $5940: $65
    ld d, a                                       ; $5941: $57
    dec sp                                        ; $5942: $3b
    ld l, l                                       ; $5943: $6d
    add $8a                                       ; $5944: $c6 $8a
    dec sp                                        ; $5946: $3b
    reti                                          ; $5947: $d9


    jp nc, $f1bc                                  ; $5948: $d2 $bc $f1

    ld d, b                                       ; $594b: $50
    ld l, $6c                                     ; $594c: $2e $6c
    or h                                          ; $594e: $b4
    or e                                          ; $594f: $b3
    add c                                         ; $5950: $81
    adc e                                         ; $5951: $8b
    cp c                                          ; $5952: $b9
    ccf                                           ; $5953: $3f
    db $fd                                        ; $5954: $fd
    ld d, b                                       ; $5955: $50
    adc $1b                                       ; $5956: $ce $1b
    cpl                                           ; $5958: $2f
    call nz, $8960                                ; $5959: $c4 $60 $89
    push hl                                       ; $595c: $e5
    add l                                         ; $595d: $85
    push de                                       ; $595e: $d5
    adc l                                         ; $595f: $8d
    call z, Call_049_7cf4                         ; $5960: $cc $f4 $7c
    rst $30                                       ; $5963: $f7
    dec e                                         ; $5964: $1d
    rst $18                                       ; $5965: $df
    sbc l                                         ; $5966: $9d
    ld c, h                                       ; $5967: $4c
    push bc                                       ; $5968: $c5
    rlca                                          ; $5969: $07
    rst $08                                       ; $596a: $cf
    and c                                         ; $596b: $a1
    ld [c], a                                     ; $596c: $e2
    ld d, d                                       ; $596d: $52
    ld a, [de]                                    ; $596e: $1a
    inc a                                         ; $596f: $3c
    db $e4                                        ; $5970: $e4
    sbc l                                         ; $5971: $9d
    dec c                                         ; $5972: $0d
    inc c                                         ; $5973: $0c
    push hl                                       ; $5974: $e5
    ld b, d                                       ; $5975: $42
    inc l                                         ; $5976: $2c
    xor l                                         ; $5977: $ad
    call Call_000_0779                            ; $5978: $cd $79 $07

jr_049_597b:
    dec d                                         ; $597b: $15
    sub a                                         ; $597c: $97
    add $62                                       ; $597d: $c6 $62
    and b                                         ; $597f: $a0
    adc [hl]                                      ; $5980: $8e
    ld a, [hl]                                    ; $5981: $7e
    ld a, [$12d0]                                 ; $5982: $fa $d0 $12
    inc [hl]                                      ; $5985: $34
    db $e3                                        ; $5986: $e3
    cp l                                          ; $5987: $bd
    ld l, b                                       ; $5988: $68
    ld b, [hl]                                    ; $5989: $46
    adc e                                         ; $598a: $8b

Call_049_598b:
    ld d, b                                       ; $598b: $50
    add hl, hl                                    ; $598c: $29
    ld a, b                                       ; $598d: $78
    adc b                                         ; $598e: $88
    call Call_000_1585                            ; $598f: $cd $85 $15
    add [hl]                                      ; $5992: $86
    ld [hl], d                                    ; $5993: $72
    ld d, c                                       ; $5994: $51
    rst $20                                       ; $5995: $e7
    adc l                                         ; $5996: $8d
    rst $20                                       ; $5997: $e7
    sub [hl]                                      ; $5998: $96
    add h                                         ; $5999: $84
    ld d, [hl]                                    ; $599a: $56
    ei                                            ; $599b: $fb

Call_049_599c:
    ld hl, sp+$00                                 ; $599c: $f8 $00
    rst $08                                       ; $599e: $cf
    and c                                         ; $599f: $a1
    ld [c], a                                     ; $59a0: $e2
    sub d                                         ; $59a1: $92
    cp c                                          ; $59a2: $b9
    ccf                                           ; $59a3: $3f
    db $fd                                        ; $59a4: $fd
    inc b                                         ; $59a5: $04
    ld l, l                                       ; $59a6: $6d
    cp [hl]                                       ; $59a7: $be
    db $e4                                        ; $59a8: $e4
    dec sp                                        ; $59a9: $3b
    sub h                                         ; $59aa: $94
    dec sp                                        ; $59ab: $3b
    add hl, de                                    ; $59ac: $19
    rst $08                                       ; $59ad: $cf
    rst $38                                       ; $59ae: $ff
    ld c, a                                       ; $59af: $4f
    adc e                                         ; $59b0: $8b
    jr nc, jr_049_597b                            ; $59b1: $30 $c8

    ld a, l                                       ; $59b3: $7d
    rst $00                                       ; $59b4: $c7
    ld [hl], a                                    ; $59b5: $77
    rst $08                                       ; $59b6: $cf
    ld a, [hl]                                    ; $59b7: $7e
    adc l                                         ; $59b8: $8d
    ld a, a                                       ; $59b9: $7f
    cpl                                           ; $59ba: $2f
    ld a, [de]                                    ; $59bb: $1a
    ret nz                                        ; $59bc: $c0

    ld a, b                                       ; $59bd: $78
    cpl                                           ; $59be: $2f
    sbc d                                         ; $59bf: $9a
    pop de                                        ; $59c0: $d1
    ld d, b                                       ; $59c1: $50
    ld c, [hl]                                    ; $59c2: $4e
    ld l, b                                       ; $59c3: $68
    adc $b4                                       ; $59c4: $ce $b4
    xor $22                                       ; $59c6: $ee $22
    inc bc                                        ; $59c8: $03
    xor b                                         ; $59c9: $a8
    ldh [$61], a                                  ; $59ca: $e0 $61
    daa                                           ; $59cc: $27
    call $e188                                    ; $59cd: $cd $88 $e1
    ccf                                           ; $59d0: $3f
    ld [de], a                                    ; $59d1: $12
    jr nc, @-$71                                  ; $59d2: $30 $8d

    or c                                          ; $59d4: $b1
    ld l, d                                       ; $59d5: $6a
    ld l, [hl]                                    ; $59d6: $6e
    add hl, bc                                    ; $59d7: $09
    sub h                                         ; $59d8: $94
    sbc e                                         ; $59d9: $9b
    pop af                                        ; $59da: $f1
    ld bc, $354f                                  ; $59db: $01 $4f $35
    rla                                           ; $59de: $17

jr_049_59df:
    ld [hl], h                                    ; $59df: $74
    sbc $8c                                       ; $59e0: $de $8c
    halt                                          ; $59e2: $76
    ld l, d                                       ; $59e3: $6a
    jp hl                                         ; $59e4: $e9


    ld h, d                                       ; $59e5: $62
    sub a                                         ; $59e6: $97
    ld b, [hl]                                    ; $59e7: $46
    inc h                                         ; $59e8: $24
    and $ca                                       ; $59e9: $e6 $ca
    ld l, $cb                                     ; $59eb: $2e $cb
    ld b, e                                       ; $59ed: $43
    dec [hl]                                      ; $59ee: $35
    db $d3                                        ; $59ef: $d3
    adc h                                         ; $59f0: $8c
    add c                                         ; $59f1: $81
    rra                                           ; $59f2: $1f
    ld b, h                                       ; $59f3: $44
    ld h, l                                       ; $59f4: $65
    ld b, [hl]                                    ; $59f5: $46
    or b                                          ; $59f6: $b0
    rra                                           ; $59f7: $1f
    xor l                                         ; $59f8: $ad
    call $f2bd                                    ; $59f9: $cd $bd $f2
    sbc c                                         ; $59fc: $99
    ld c, e                                       ; $59fd: $4b
    db $e3                                        ; $59fe: $e3
    xor $8c                                       ; $59ff: $ee $8c
    call Call_049_687d                            ; $5a01: $cd $7d $68
    cp [hl]                                       ; $5a04: $be
    ld a, e                                       ; $5a05: $7b
    cp e                                          ; $5a06: $bb
    nop                                           ; $5a07: $00
    push de                                       ; $5a08: $d5
    xor c                                         ; $5a09: $a9
    jr nz, jr_049_5a4a                            ; $5a0a: $20 $3e

    nop                                           ; $5a0c: $00
    ld d, a                                       ; $5a0d: $57
    ld a, a                                       ; $5a0e: $7f
    rst $20                                       ; $5a0f: $e7
    dec sp                                        ; $5a10: $3b
    ld b, b                                       ; $5a11: $40
    cp a                                          ; $5a12: $bf
    call c, Call_049_599c                         ; $5a13: $dc $9c $59
    xor $95                                       ; $5a16: $ee $95
    sub d                                         ; $5a18: $92
    or h                                          ; $5a19: $b4
    xor b                                         ; $5a1a: $a8
    ret                                           ; $5a1b: $c9


    adc [hl]                                      ; $5a1c: $8e
    cp d                                          ; $5a1d: $ba
    ret c                                         ; $5a1e: $d8

    and l                                         ; $5a1f: $a5
    ld de, $8989                                  ; $5a20: $11 $89 $89
    rrca                                          ; $5a23: $0f
    cpl                                           ; $5a24: $2f
    ld a, l                                       ; $5a25: $7d
    or b                                          ; $5a26: $b0
    call nz, $c5f2                                ; $5a27: $c4 $f2 $c5
    ld d, b                                       ; $5a2a: $50
    ld l, $fa                                     ; $5a2b: $2e $fa
    push hl                                       ; $5a2d: $e5
    ld sp, hl                                     ; $5a2e: $f9
    sbc [hl]                                      ; $5a2f: $9e
    dec sp                                        ; $5a30: $3b
    and l                                         ; $5a31: $a5
    db $eb                                        ; $5a32: $eb
    ld [hl], b                                    ; $5a33: $70
    push af                                       ; $5a34: $f5
    ld a, [c]                                     ; $5a35: $f2
    add e                                         ; $5a36: $83
    ld [hl], c                                    ; $5a37: $71
    ret                                           ; $5a38: $c9


    ld bc, $6ea0                                  ; $5a39: $01 $a0 $6e
    inc sp                                        ; $5a3c: $33
    ld a, $00                                     ; $5a3d: $3e $00
    xor a                                         ; $5a3f: $af
    ret nc                                        ; $5a40: $d0

    rla                                           ; $5a41: $17
    ld d, l                                       ; $5a42: $55
    xor c                                         ; $5a43: $a9
    ld c, a                                       ; $5a44: $4f
    ld a, e                                       ; $5a45: $7b
    ld e, $15                                     ; $5a46: $1e $15
    ld e, a                                       ; $5a48: $5f
    add hl, sp                                    ; $5a49: $39

jr_049_5a4a:
    nop                                           ; $5a4a: $00
    rst $28                                       ; $5a4b: $ef
    sbc l                                         ; $5a4c: $9d
    rst $08                                       ; $5a4d: $cf
    rst $20                                       ; $5a4e: $e7
    jr c, jr_049_59df                             ; $5a4f: $38 $8e

    rst $10                                       ; $5a51: $d7
    call c, $0bb9                                 ; $5a52: $dc $b9 $0b
    dec hl                                        ; $5a55: $2b
    ld [$e5cd], sp                                ; $5a56: $08 $cd $e5
    rst $38                                       ; $5a59: $ff
    ret z                                         ; $5a5a: $c8

    inc de                                        ; $5a5b: $13
    xor d                                         ; $5a5c: $aa
    ld a, [hl+]                                   ; $5a5d: $2a
    ld [c], a                                     ; $5a5e: $e2
    ld a, c                                       ; $5a5f: $79
    db $e3                                        ; $5a60: $e3
    ld c, c                                       ; $5a61: $49
    ld [hl], e                                    ; $5a62: $73
    ld c, [hl]                                    ; $5a63: $4e
    ldh [rBGP], a                                 ; $5a64: $e0 $47
    jp $a89c                                      ; $5a66: $c3 $9c $a8


    ret z                                         ; $5a69: $c8

    ld e, l                                       ; $5a6a: $5d
    ld h, h                                       ; $5a6b: $64
    nop                                           ; $5a6c: $00
    dec d                                         ; $5a6d: $15
    inc a                                         ; $5a6e: $3c
    db $ec                                        ; $5a6f: $ec
    adc d                                         ; $5a70: $8a
    and b                                         ; $5a71: $a0
    xor c                                         ; $5a72: $a9
    ldh [$a1], a                                  ; $5a73: $e0 $a1
    ld b, c                                       ; $5a75: $41
    ld d, b                                       ; $5a76: $50
    inc sp                                        ; $5a77: $33
    adc [hl]                                      ; $5a78: $8e
    db $e3                                        ; $5a79: $e3
    cp l                                          ; $5a7a: $bd
    inc e                                         ; $5a7b: $1c
    ld e, [hl]                                    ; $5a7c: $5e
    inc l                                         ; $5a7d: $2c
    inc [hl]                                      ; $5a7e: $34
    xor l                                         ; $5a7f: $ad
    rst $38                                       ; $5a80: $ff
    ld l, $8d                                     ; $5a81: $2e $8d
    ld c, b                                       ; $5a83: $48
    ld c, h                                       ; $5a84: $4c
    ld a, h                                       ; $5a85: $7c
    nop                                           ; $5a86: $00
    rst $10                                       ; $5a87: $d7
    db $e4                                        ; $5a88: $e4
    jp nz, $f30a                                  ; $5a89: $c2 $0a $f3

    sbc l                                         ; $5a8c: $9d
    inc [hl]                                      ; $5a8d: $34
    inc hl                                        ; $5a8e: $23
    sbc [hl]                                      ; $5a8f: $9e
    ld l, e                                       ; $5a90: $6b
    cp c                                          ; $5a91: $b9
    and a                                         ; $5a92: $a7
    sub c                                         ; $5a93: $91
    ldh [$9d], a                                  ; $5a94: $e0 $9d
    add e                                         ; $5a96: $83
    inc a                                         ; $5a97: $3c
    rst $18                                       ; $5a98: $df
    ld d, c                                       ; $5a99: $51
    dec hl                                        ; $5a9a: $2b
    push de                                       ; $5a9b: $d5
    sbc [hl]                                      ; $5a9c: $9e

Jump_049_5a9d:
    ld a, [hl+]                                   ; $5a9d: $2a
    db $fd                                        ; $5a9e: $fd
    ld b, [hl]                                    ; $5a9f: $46
    cp [hl]                                       ; $5aa0: $be
    cp e                                          ; $5aa1: $bb
    xor h                                         ; $5aa2: $ac
    ld d, h                                       ; $5aa3: $54
    call $f735                                    ; $5aa4: $cd $35 $f7
    add $77                                       ; $5aa7: $c6 $77
    sbc e                                         ; $5aa9: $9b
    ld h, [hl]                                    ; $5aaa: $66
    and h                                         ; $5aab: $a4
    ld [c], a                                     ; $5aac: $e2
    inc bc                                        ; $5aad: $03
    rst $10                                       ; $5aae: $d7
    db $ed                                        ; $5aaf: $ed
    ld h, d                                       ; $5ab0: $62
    xor $d7                                       ; $5ab1: $ee $d7
    and b                                         ; $5ab3: $a0
    xor c                                         ; $5ab4: $a9
    ld d, $61                                     ; $5ab5: $16 $61
    jr nc, @+$56                                  ; $5ab7: $30 $54

    dec bc                                        ; $5ab9: $0b
    set 6, e                                      ; $5aba: $cb $f3
    dec a                                         ; $5abc: $3d
    ld d, a                                       ; $5abd: $57
    adc e                                         ; $5abe: $8b
    ld a, h                                       ; $5abf: $7c
    daa                                           ; $5ac0: $27
    call $e388                                    ; $5ac1: $cd $88 $e3
    cp l                                          ; $5ac4: $bd
    ld l, b                                       ; $5ac5: $68
    ld b, [hl]                                    ; $5ac6: $46
    ld b, e                                       ; $5ac7: $43
    add hl, sp                                    ; $5ac8: $39
    rst $18                                       ; $5ac9: $df
    sub h                                         ; $5aca: $94
    di                                            ; $5acb: $f3
    add $0b                                       ; $5acc: $c6 $0b
    ld a, [hl-]                                   ; $5ace: $3a
    rst $10                                       ; $5acf: $d7
    ld a, h                                       ; $5ad0: $7c
    ld l, c                                       ; $5ad1: $69
    and c                                         ; $5ad2: $a1
    ld sp, hl                                     ; $5ad3: $f9
    add c                                         ; $5ad4: $81
    sbc [hl]                                      ; $5ad5: $9e
    ld d, b                                       ; $5ad6: $50
    ei                                            ; $5ad7: $fb
    ld a, c                                       ; $5ad8: $79
    db $e3                                        ; $5ad9: $e3
    dec b                                         ; $5ada: $05
    jr jr_049_5b09                                ; $5adb: $18 $2c

    ld l, h                                       ; $5add: $6c
    or h                                          ; $5ade: $b4
    di                                            ; $5adf: $f3
    ld [hl], a                                    ; $5ae0: $77
    ld h, $09                                     ; $5ae1: $26 $09
    inc bc                                        ; $5ae3: $03
    ret nc                                        ; $5ae4: $d0

    adc h                                         ; $5ae5: $8c
    rrca                                          ; $5ae6: $0f
    ld d, a                                       ; $5ae7: $57
    dec l                                         ; $5ae8: $2d
    push hl                                       ; $5ae9: $e5
    sbc h                                         ; $5aea: $9c
    sbc l                                         ; $5aeb: $9d
    xor d                                         ; $5aec: $aa
    cpl                                           ; $5aed: $2f
    ld b, $d1                                     ; $5aee: $06 $d1
    rla                                           ; $5af0: $17
    ld d, l                                       ; $5af1: $55
    xor c                                         ; $5af2: $a9
    ld c, a                                       ; $5af3: $4f
    ld a, e                                       ; $5af4: $7b
    ld e, $15                                     ; $5af5: $1e $15
    adc e                                         ; $5af7: $8b
    ccf                                           ; $5af8: $3f
    nop                                           ; $5af9: $00
    ld d, a                                       ; $5afa: $57
    dec sp                                        ; $5afb: $3b
    ld e, l                                       ; $5afc: $5d
    dec [hl]                                      ; $5afd: $35
    ld d, h                                       ; $5afe: $54
    inc sp                                        ; $5aff: $33
    ld de, $fea8                                  ; $5b00: $11 $a8 $fe
    ld d, b                                       ; $5b03: $50
    inc sp                                        ; $5b04: $33
    adc [hl]                                      ; $5b05: $8e
    db $e3                                        ; $5b06: $e3
    ld a, b                                       ; $5b07: $78
    rst $20                                       ; $5b08: $e7

jr_049_5b09:
    di                                            ; $5b09: $f3
    ld sp, hl                                     ; $5b0a: $f9
    ld a, h                                       ; $5b0b: $7c
    ld a, $c7                                     ; $5b0c: $3e $c7
    ld [hl], c                                    ; $5b0e: $71
    inc e                                         ; $5b0f: $1c
    rst $00                                       ; $5b10: $c7
    rlca                                          ; $5b11: $07
    rst $28                                       ; $5b12: $ef
    sbc l                                         ; $5b13: $9d
    rst $08                                       ; $5b14: $cf
    rst $20                                       ; $5b15: $e7
    jr c, @-$70                                   ; $5b16: $38 $8e

    db $e3                                        ; $5b18: $e3
    inc bc                                        ; $5b19: $03
    rst $10                                       ; $5b1a: $d7
    call nc, $f23c                                ; $5b1b: $d4 $3c $f2
    jp c, $ae9c                                   ; $5b1e: $da $9c $ae

    jp c, $ad17                                   ; $5b21: $da $17 $ad

    call $bc29                                    ; $5b24: $cd $29 $bc
    ld c, c                                       ; $5b27: $49
    or c                                          ; $5b28: $b1
    ld e, l                                       ; $5b29: $5d
    add hl, sp                                    ; $5b2a: $39
    nop                                           ; $5b2b: $00
    ld l, a                                       ; $5b2c: $6f
    dec de                                        ; $5b2d: $1b
    xor a                                         ; $5b2e: $af
    call Call_000_3329                            ; $5b2f: $cd $29 $33
    db $ec                                        ; $5b32: $ec
    ld [hl], h                                    ; $5b33: $74
    ld d, l                                       ; $5b34: $55
    cp h                                          ; $5b35: $bc
    ld l, e                                       ; $5b36: $6b
    ld [hl], d                                    ; $5b37: $72
    and c                                         ; $5b38: $a1
    ld sp, hl                                     ; $5b39: $f9
    or l                                          ; $5b3a: $b5
    add hl, sp                                    ; $5b3b: $39
    pop hl                                        ; $5b3c: $e1
    ld d, a                                       ; $5b3d: $57
    ld l, $6a                                     ; $5b3e: $2e $6a
    rla                                           ; $5b40: $17
    db $fd                                        ; $5b41: $fd
    ld [hl], d                                    ; $5b42: $72
    ld [hl], e                                    ; $5b43: $73
    reti                                          ; $5b44: $d9


    xor b                                         ; $5b45: $a8
    add hl, de                                    ; $5b46: $19
    rra                                           ; $5b47: $1f
    sub a                                         ; $5b48: $97
    and [hl]                                      ; $5b49: $a6
    push af                                       ; $5b4a: $f5
    cp a                                          ; $5b4b: $bf
    jr @+$46                                      ; $5b4c: $18 $44

    ld e, a                                       ; $5b4e: $5f
    ld d, h                                       ; $5b4f: $54
    and l                                         ; $5b50: $a5
    ld a, $ed                                     ; $5b51: $3e $ed
    add hl, hl                                    ; $5b53: $29
    set 0, h                                      ; $5b54: $cb $c4
    inc b                                         ; $5b56: $04
    pop af                                        ; $5b57: $f1
    ld bc, $bb57                                  ; $5b58: $01 $57 $bb
    rrca                                          ; $5b5b: $0f
    ld a, c                                       ; $5b5c: $79
    ld [hl-], a                                   ; $5b5d: $32
    ld a, b                                       ; $5b5e: $78
    ret z                                         ; $5b5f: $c8

    ld [hl], e                                    ; $5b60: $73
    dec l                                         ; $5b61: $2d
    rst $20                                       ; $5b62: $e7
    ld e, d                                       ; $5b63: $5a
    ld a, d                                       ; $5b64: $7a
    inc sp                                        ; $5b65: $33
    jr nc, jr_049_5bbc                            ; $5b66: $30 $54

    ld l, e                                       ; $5b68: $6b
    ld [hl], e                                    ; $5b69: $73
    ld l, [hl]                                    ; $5b6a: $6e
    ld c, e                                       ; $5b6b: $4b
    db $e3                                        ; $5b6c: $e3
    ld c, [hl]                                    ; $5b6d: $4e
    add sp, -$07                                  ; $5b6e: $e8 $f9
    ld d, h                                       ; $5b70: $54
    ld l, d                                       ; $5b71: $6a
    xor $fc                                       ; $5b72: $ee $fc
    cp l                                          ; $5b74: $bd
    pop af                                        ; $5b75: $f1
    ld b, d                                       ; $5b76: $42
    inc c                                         ; $5b77: $0c
    ld b, $cc                                     ; $5b78: $06 $cc
    ld a, b                                       ; $5b7a: $78
    rst $20                                       ; $5b7b: $e7
    ld d, e                                       ; $5b7c: $53
    db $dd                                        ; $5b7d: $dd
    ld h, [hl]                                    ; $5b7e: $66
    cp h                                          ; $5b7f: $bc
    daa                                           ; $5b80: $27
    dec l                                         ; $5b81: $2d
    ld b, c                                       ; $5b82: $41
    rst $08                                       ; $5b83: $cf
    ret c                                         ; $5b84: $d8

    ld e, h                                       ; $5b85: $5c
    add b                                         ; $5b86: $80
    pop bc                                        ; $5b87: $c1
    cp h                                          ; $5b88: $bc
    add hl, de                                    ; $5b89: $19
    dec l                                         ; $5b8a: $2d
    sbc l                                         ; $5b8b: $9d
    pop af                                        ; $5b8c: $f1
    add a                                         ; $5b8d: $87
    add a                                         ; $5b8e: $87
    ld d, e                                       ; $5b8f: $53
    ld l, h                                       ; $5b90: $6c
    add $17                                       ; $5b91: $c6 $17
    cp e                                          ; $5b93: $bb
    inc [hl]                                      ; $5b94: $34
    ld [hl+], a                                   ; $5b95: $22
    ld sp, $8b17                                  ; $5b96: $31 $17 $8b
    inc c                                         ; $5b99: $0c
    inc l                                         ; $5b9a: $2c
    ret nz                                        ; $5b9b: $c0

    ld h, b                                       ; $5b9c: $60
    ld h, c                                       ; $5b9d: $61
    ld a, c                                       ; $5b9e: $79
    xor $ff                                       ; $5b9f: $ee $ff
    db $e4                                        ; $5ba1: $e4
    ld a, a                                       ; $5ba2: $7f
    inc sp                                        ; $5ba3: $33
    ld a, $00                                     ; $5ba4: $3e $00
    sub a                                         ; $5ba6: $97
    jr jr_049_5bd5                                ; $5ba7: $18 $2c

    inc [hl]                                      ; $5ba9: $34
    cp a                                          ; $5baa: $bf
    ld [$4583], sp                                ; $5bab: $08 $83 $45
    cp a                                          ; $5bae: $bf
    call c, $c49c                                 ; $5baf: $dc $9c $c4
    sbc [hl]                                      ; $5bb2: $9e
    sbc e                                         ; $5bb3: $9b
    pop af                                        ; $5bb4: $f1
    xor [hl]                                      ; $5bb5: $ae
    ret                                           ; $5bb6: $c9


    ld c, c                                       ; $5bb7: $49
    res 3, c                                      ; $5bb8: $cb $99
    sbc [hl]                                      ; $5bba: $9e
    add b                                         ; $5bbb: $80

jr_049_5bbc:
    ld b, c                                       ; $5bbc: $41
    jp c, $9cda                                   ; $5bbd: $da $da $9c

    db $db                                        ; $5bc0: $db
    jp nc, Jump_049_71b4                          ; $5bc1: $d2 $b4 $71

    ld [hl], e                                    ; $5bc4: $73
    rst $20                                       ; $5bc5: $e7
    ld d, e                                       ; $5bc6: $53
    db $dd                                        ; $5bc7: $dd
    ld h, [hl]                                    ; $5bc8: $66
    ld a, h                                       ; $5bc9: $7c
    nop                                           ; $5bca: $00
    cpl                                           ; $5bcb: $2f
    rst $38                                       ; $5bcc: $ff
    ld a, a                                       ; $5bcd: $7f
    or c                                          ; $5bce: $b1
    nop                                           ; $5bcf: $00
    add e                                         ; $5bd0: $83
    add hl, bc                                    ; $5bd1: $09
    ld c, l                                       ; $5bd2: $4d
    sbc $f9                                       ; $5bd3: $de $f9

jr_049_5bd5:
    rst $18                                       ; $5bd5: $df
    sub [hl]                                      ; $5bd6: $96
    ld [hl], e                                    ; $5bd7: $73
    ld c, e                                       ; $5bd8: $4b
    ld a, [bc]                                    ; $5bd9: $0a
    ld e, $12                                     ; $5bda: $1e $12
    ld c, d                                       ; $5bdc: $4a
    ld e, c                                       ; $5bdd: $59
    adc l                                         ; $5bde: $8d
    add c                                         ; $5bdf: $81
    ld e, h                                       ; $5be0: $5c
    ld h, h                                       ; $5be1: $64
    ldh a, [$90]                                  ; $5be2: $f0 $90
    ld de, $fc74                                  ; $5be4: $11 $74 $fc
    db $dd                                        ; $5be7: $dd
    and [hl]                                      ; $5be8: $a6
    add hl, de                                    ; $5be9: $19
    push bc                                       ; $5bea: $c5
    ld a, e                                       ; $5beb: $7b
    ld e, $03                                     ; $5bec: $1e $03
    ld a, c                                       ; $5bee: $79
    or c                                          ; $5bef: $b1
    add sp, -$4a                                  ; $5bf0: $e8 $b6
    call c, $cd07                                 ; $5bf2: $dc $07 $cd
    pop de                                        ; $5bf5: $d1
    rst $10                                       ; $5bf6: $d7
    cp d                                          ; $5bf7: $ba
    cp c                                          ; $5bf8: $b9
    sub d                                         ; $5bf9: $92
    ld l, e                                       ; $5bfa: $6b
    add hl, sp                                    ; $5bfb: $39
    rlca                                          ; $5bfc: $07
    ld a, c                                       ; $5bfd: $79
    ld de, $3906                                  ; $5bfe: $11 $06 $39
    ld l, c                                       ; $5c01: $69
    ld c, d                                       ; $5c02: $4a
    dec [hl]                                      ; $5c03: $35
    push bc                                       ; $5c04: $c5
    rra                                           ; $5c05: $1f
    rst $08                                       ; $5c06: $cf
    db $fd                                        ; $5c07: $fd
    ld a, [$7a81]                                 ; $5c08: $fa $81 $7a
    or e                                          ; $5c0b: $b3
    cp h                                          ; $5c0c: $bc
    ret c                                         ; $5c0d: $d8

    and l                                         ; $5c0e: $a5
    ld de, $8989                                  ; $5c0f: $11 $89 $89
    rst $30                                       ; $5c12: $f7
    ldh [rNR41], a                                ; $5c13: $e0 $20
    daa                                           ; $5c15: $27
    cp c                                          ; $5c16: $b9
    add hl, sp                                    ; $5c17: $39
    rst $30                                       ; $5c18: $f7
    ld a, a                                       ; $5c19: $7f
    ld e, d                                       ; $5c1a: $5a
    sbc e                                         ; $5c1b: $9b
    add e                                         ; $5c1c: $83
    ld [$9b23], sp                                ; $5c1d: $08 $23 $9b
    add e                                         ; $5c20: $83
    inc c                                         ; $5c21: $0c
    ld [$92fe], a                                 ; $5c22: $ea $fe $92
    rst $28                                       ; $5c25: $ef
    ld a, $e4                                     ; $5c26: $3e $e4
    ret                                           ; $5c28: $c9


    ldh [rNR42], a                                ; $5c29: $e0 $21
    rst $00                                       ; $5c2b: $c7
    rlca                                          ; $5c2c: $07
    xor a                                         ; $5c2d: $af
    sub h                                         ; $5c2e: $94
    ld b, h                                       ; $5c2f: $44
    add l                                         ; $5c30: $85
    or e                                          ; $5c31: $b3
    ld hl, sp-$43                                 ; $5c32: $f8 $bd
    db $dd                                        ; $5c34: $dd
    ld a, [c]                                     ; $5c35: $f2
    add d                                         ; $5c36: $82
    xor $5c                                       ; $5c37: $ee $5c
    ld e, c                                       ; $5c39: $59
    sbc d                                         ; $5c3a: $9a
    scf                                           ; $5c3b: $37
    ld e, [hl]                                    ; $5c3c: $5e
    ret nc                                        ; $5c3d: $d0

    push hl                                       ; $5c3e: $e5
    rlca                                          ; $5c3f: $07
    ld c, e                                       ; $5c40: $4b
    inc l                                         ; $5c41: $2c
    xor a                                         ; $5c42: $af
    dec h                                         ; $5c43: $25
    ld e, a                                       ; $5c44: $5f
    sbc d                                         ; $5c45: $9a
    ld e, e                                       ; $5c46: $5b
    ld l, d                                       ; $5c47: $6a
    ld l, $ac                                     ; $5c48: $2e $ac
    ret nz                                        ; $5c4a: $c0

    db $d3                                        ; $5c4b: $d3
    add $cd                                       ; $5c4c: $c6 $cd
    ld a, l                                       ; $5c4e: $7d
    ld c, b                                       ; $5c4f: $48
    ld sp, $a006                                  ; $5c50: $31 $06 $a0
    ld a, c                                       ; $5c53: $79
    ld h, l                                       ; $5c54: $65
    rst $30                                       ; $5c55: $f7
    sbc $33                                       ; $5c56: $de $33
    ret z                                         ; $5c58: $c8

    ld c, c                                       ; $5c59: $49
    ld l, [hl]                                    ; $5c5a: $6e
    adc $fd                                       ; $5c5b: $ce $fd
    sbc a                                         ; $5c5d: $9f
    sub $e6                                       ; $5c5e: $d6 $e6
    inc e                                         ; $5c60: $1c
    ld h, h                                       ; $5c61: $64
    push bc                                       ; $5c62: $c5
    sub l                                         ; $5c63: $95
    ld c, l                                       ; $5c64: $4d
    ccf                                           ; $5c65: $3f
    rlca                                          ; $5c66: $07
    add hl, de                                    ; $5c67: $19
    call nc, $25fd                                ; $5c68: $d4 $fd $25
    rst $18                                       ; $5c6b: $df
    ld a, l                                       ; $5c6c: $7d
    ret z                                         ; $5c6d: $c8

    sub e                                         ; $5c6e: $93
    pop bc                                        ; $5c6f: $c1
    ld b, e                                       ; $5c70: $43
    ld d, $7f                                     ; $5c71: $16 $7f
    nop                                           ; $5c73: $00
    rst $10                                       ; $5c74: $d7
    cp e                                          ; $5c75: $bb
    or b                                          ; $5c76: $b0
    ld [bc], a                                    ; $5c77: $02
    rst $08                                       ; $5c78: $cf
    ld [hl], a                                    ; $5c79: $77
    rra                                           ; $5c7a: $1f
    ld a, [c]                                     ; $5c7b: $f2
    ld h, h                                       ; $5c7c: $64
    ldh a, [$90]                                  ; $5c7d: $f0 $90
    rlca                                          ; $5c7f: $07
    sub l                                         ; $5c80: $95
    ld b, h                                       ; $5c81: $44
    add l                                         ; $5c82: $85
    di                                            ; $5c83: $f3
    inc e                                         ; $5c84: $1c
    ld h, h                                       ; $5c85: $64
    ld d, b                                       ; $5c86: $50
    rst $30                                       ; $5c87: $f7
    sub a                                         ; $5c88: $97
    db $fc                                        ; $5c89: $fc
    push bc                                       ; $5c8a: $c5
    ld l, $8d                                     ; $5c8b: $2e $8d
    ld c, b                                       ; $5c8d: $48
    adc h                                         ; $5c8e: $8c
    ld hl, sp-$23                                 ; $5c8f: $f8 $dd
    ei                                            ; $5c91: $fb
    ldh [rNR41], a                                ; $5c92: $e0 $20
    daa                                           ; $5c94: $27
    cp c                                          ; $5c95: $b9
    add hl, sp                                    ; $5c96: $39
    rst $30                                       ; $5c97: $f7
    ld a, a                                       ; $5c98: $7f
    sbc d                                         ; $5c99: $9a
    rst $28                                       ; $5c9a: $ef
    cp c                                          ; $5c9b: $b9
    ld [hl], e                                    ; $5c9c: $73
    sub b                                         ; $5c9d: $90
    rst $08                                       ; $5c9e: $cf
    ccf                                           ; $5c9f: $3f
    ld a, l                                       ; $5ca0: $7d
    ld c, c                                       ; $5ca1: $49
    ld h, e                                       ; $5ca2: $63
    jr nz, jr_049_5ce0                            ; $5ca3: $20 $3b

    adc b                                         ; $5ca5: $88
    xor d                                         ; $5ca6: $aa
    ret c                                         ; $5ca7: $d8

    jr jr_049_5cd5                                ; $5ca8: $18 $2b

    cp $00                                        ; $5caa: $fe $00
    rst $10                                       ; $5cac: $d7
    cp e                                          ; $5cad: $bb
    or b                                          ; $5cae: $b0
    ld [bc], a                                    ; $5caf: $02
    cpl                                           ; $5cb0: $2f
    ccf                                           ; $5cb1: $3f
    ld e, b                                       ; $5cb2: $58
    ld h, d                                       ; $5cb3: $62
    ld a, c                                       ; $5cb4: $79
    add l                                         ; $5cb5: $85
    add a                                         ; $5cb6: $87
    inc a                                         ; $5cb7: $3c
    rst $18                                       ; $5cb8: $df
    sbc c                                         ; $5cb9: $99
    and l                                         ; $5cba: $a5
    scf                                           ; $5cbb: $37
    ld a, b                                       ; $5cbc: $78
    ret z                                         ; $5cbd: $c8

    ld [hl], e                                    ; $5cbe: $73
    dec l                                         ; $5cbf: $2d
    rst $20                                       ; $5cc0: $e7
    dec sp                                        ; $5cc1: $3b
    or a                                          ; $5cc2: $b7
    and l                                         ; $5cc3: $a5
    ld [hl], c                                    ; $5cc4: $71
    rlca                                          ; $5cc5: $07
    sbc c                                         ; $5cc6: $99
    sub h                                         ; $5cc7: $94
    call $af78                                    ; $5cc8: $cd $78 $af
    ret nc                                        ; $5ccb: $d0

    rla                                           ; $5ccc: $17
    ld e, d                                       ; $5ccd: $5a
    ld e, d                                       ; $5cce: $5a
    ld a, [hl]                                    ; $5ccf: $7e
    or b                                          ; $5cd0: $b0
    ld [hl], $55                                  ; $5cd1: $36 $55
    ld a, h                                       ; $5cd3: $7c
    nop                                           ; $5cd4: $00

jr_049_5cd5:
    sub a                                         ; $5cd5: $97
    ld b, [hl]                                    ; $5cd6: $46
    inc h                                         ; $5cd7: $24
    and $62                                       ; $5cd8: $e6 $62
    cp $77                                        ; $5cda: $fe $77
    add l                                         ; $5cdc: $85
    ld l, l                                       ; $5cdd: $6d
    ld [hl], b                                    ; $5cde: $70
    sbc [hl]                                      ; $5cdf: $9e

jr_049_5ce0:
    rst $28                                       ; $5ce0: $ef
    add h                                         ; $5ce1: $84
    sbc [hl]                                      ; $5ce2: $9e
    ld a, [bc]                                    ; $5ce3: $0a
    jr nc, jr_049_5d27                            ; $5ce4: $30 $41

    ld [hl], e                                    ; $5ce6: $73
    xor [hl]                                      ; $5ce7: $ae
    push hl                                       ; $5ce8: $e5
    ld [hl+], a                                   ; $5ce9: $22
    inc c                                         ; $5cea: $0c
    ld [hl], d                                    ; $5ceb: $72
    db $fc                                        ; $5cec: $fc
    db $dd                                        ; $5ced: $dd
    sub d                                         ; $5cee: $92
    ld [c], a                                     ; $5cef: $e2
    cpl                                           ; $5cf0: $2f
    sub a                                         ; $5cf1: $97
    ld d, $ef                                     ; $5cf2: $16 $ef
    ld l, d                                       ; $5cf4: $6a
    ld b, a                                       ; $5cf5: $47
    ld d, l                                       ; $5cf6: $55
    inc a                                         ; $5cf7: $3c
    ld e, l                                       ; $5cf8: $5d
    ld e, $f8                                     ; $5cf9: $1e $f8
    push af                                       ; $5cfb: $f5
    ei                                            ; $5cfc: $fb
    ld d, b                                       ; $5cfd: $50
    ld a, h                                       ; $5cfe: $7c
    nop                                           ; $5cff: $00
    rst $08                                       ; $5d00: $cf
    db $fd                                        ; $5d01: $fd
    ld a, [$7a81]                                 ; $5d02: $fa $81 $7a
    or e                                          ; $5d05: $b3
    cp h                                          ; $5d06: $bc
    ret c                                         ; $5d07: $d8

    and l                                         ; $5d08: $a5
    ld de, $1189                                  ; $5d09: $11 $89 $11
    cp a                                          ; $5d0c: $bf
    rst $20                                       ; $5d0d: $e7
    ld [$a245], sp                                ; $5d0e: $08 $45 $a2
    rst $18                                       ; $5d11: $df
    db $f4                                        ; $5d12: $f4
    sbc a                                         ; $5d13: $9f
    ld h, $2d                                     ; $5d14: $26 $2d
    rst $00                                       ; $5d16: $c7
    db $f4                                        ; $5d17: $f4
    ld e, c                                       ; $5d18: $59
    db $ed                                        ; $5d19: $ed
    ld b, e                                       ; $5d1a: $43
    dec bc                                        ; $5d1b: $0b
    cp d                                          ; $5d1c: $ba
    inc sp                                        ; $5d1d: $33
    ld b, $29                                     ; $5d1e: $06 $29
    cp $00                                        ; $5d20: $fe $00
    rst $10                                       ; $5d22: $d7
    db $ed                                        ; $5d23: $ed
    ld h, d                                       ; $5d24: $62
    sub a                                         ; $5d25: $97
    ld b, [hl]                                    ; $5d26: $46

jr_049_5d27:
    inc h                                         ; $5d27: $24
    and $62                                       ; $5d28: $e6 $62
    jr z, jr_049_5d43                             ; $5d2a: $28 $17

    sbc d                                         ; $5d2c: $9a
    ld e, a                                       ; $5d2d: $5f
    ld e, b                                       ; $5d2e: $58
    sbc $b9                                       ; $5d2f: $de $b9
    ld e, d                                       ; $5d31: $5a
    or h                                          ; $5d32: $b4
    call nz, $84f2                                ; $5d33: $c4 $f2 $84
    ld [hl], d                                    ; $5d36: $72
    ld l, c                                       ; $5d37: $69
    jp nc, Jump_049_6cc9                          ; $5d38: $d2 $c9 $6c

    adc $ff                                       ; $5d3b: $ce $ff
    ld h, [hl]                                    ; $5d3d: $66
    ld a, h                                       ; $5d3e: $7c
    nop                                           ; $5d3f: $00
    cpl                                           ; $5d40: $2f
    or h                                          ; $5d41: $b4
    and h                                         ; $5d42: $a4

jr_049_5d43:
    ld sp, $f341                                  ; $5d43: $31 $41 $f3
    ld h, d                                       ; $5d46: $62
    cp a                                          ; $5d47: $bf
    and d                                         ; $5d48: $a2
    and $7c                                       ; $5d49: $e6 $7c
    rst $00                                       ; $5d4b: $c7
    rst $18                                       ; $5d4c: $df
    dec l                                         ; $5d4d: $2d
    add hl, hl                                    ; $5d4e: $29
    cp $52                                        ; $5d4f: $fe $52
    add sp, -$57                                  ; $5d51: $e8 $a9
    nop                                           ; $5d53: $00
    inc de                                        ; $5d54: $13
    inc [hl]                                      ; $5d55: $34
    rst $20                                       ; $5d56: $e7
    or c                                          ; $5d57: $b1
    cp e                                          ; $5d58: $bb
    inc [hl]                                      ; $5d59: $34
    ld [hl+], a                                   ; $5d5a: $22
    ld sp, $0e6b                                  ; $5d5b: $31 $6b $0e
    push hl                                       ; $5d5e: $e5
    ld [bc], a                                    ; $5d5f: $02
    ld b, a                                       ; $5d60: $47
    ld l, e                                       ; $5d61: $6b
    db $ec                                        ; $5d62: $ec
    jp nz, $420a                                  ; $5d63: $c2 $0a $42

    ld [hl], e                                    ; $5d66: $73
    jp c, $b9b8                                   ; $5d67: $da $b8 $b9

    inc sp                                        ; $5d6a: $33
    ld [hl], $e3                                  ; $5d6b: $36 $e3
    cp l                                          ; $5d6d: $bd
    push af                                       ; $5d6e: $f5
    ccf                                           ; $5d6f: $3f
    call $ee77                                    ; $5d70: $cd $77 $ee
    rst $10                                       ; $5d73: $d7
    and b                                         ; $5d74: $a0
    jp hl                                         ; $5d75: $e9


    dec sp                                        ; $5d76: $3b
    ld e, l                                       ; $5d77: $5d
    or l                                          ; $5d78: $b5
    add sp, -$69                                  ; $5d79: $e8 $97
    add a                                         ; $5d7b: $87
    push af                                       ; $5d7c: $f5
    and l                                         ; $5d7d: $a5
    ld [hl], $e7                                  ; $5d7e: $36 $e7
    dec sp                                        ; $5d80: $3b
    or a                                          ; $5d81: $b7
    and l                                         ; $5d82: $a5
    ld c, c                                       ; $5d83: $49
    daa                                           ; $5d84: $27
    or e                                          ; $5d85: $b3
    add hl, sp                                    ; $5d86: $39
    ld l, l                                       ; $5d87: $6d
    call c, $f9dc                                 ; $5d88: $dc $dc $f9

Call_049_5d8b:
    ld d, h                                       ; $5d8b: $54
    or a                                          ; $5d8c: $b7
    add hl, de                                    ; $5d8d: $19
    rst $28                                       ; $5d8e: $ef
    ld l, d                                       ; $5d8f: $6a
    and a                                         ; $5d90: $a7
    xor e                                         ; $5d91: $ab
    add [hl]                                      ; $5d92: $86
    ld l, d                                       ; $5d93: $6a
    ld h, $02                                     ; $5d94: $26 $02
    push de                                       ; $5d96: $d5
    rra                                           ; $5d97: $1f
    ld l, d                                       ; $5d98: $6a
    add $07                                       ; $5d99: $c6 $07
    xor a                                         ; $5d9b: $af
    jp $2c43                                      ; $5d9c: $c3 $43 $2c


    rst $28                                       ; $5d9f: $ef
    ld b, e                                       ; $5da0: $43
    rla                                           ; $5da1: $17
    cp e                                          ; $5da2: $bb
    inc [hl]                                      ; $5da3: $34
    ld [hl+], a                                   ; $5da4: $22
    ld sp, $9ef1                                  ; $5da5: $31 $f1 $9e

jr_049_5da8:
    call nc, Call_049_416a                        ; $5da8: $d4 $6a $41
    rst $00                                       ; $5dab: $c7
    sbc l                                         ; $5dac: $9d
    ld [hl], $e3                                  ; $5dad: $36 $e3
    ret                                           ; $5daf: $c9


    rra                                           ; $5db0: $1f
    pop af                                        ; $5db1: $f1
    push bc                                       ; $5db2: $c5
    ret z                                         ; $5db3: $c8

    ld c, h                                       ; $5db4: $4c
    ld l, $e8                                     ; $5db5: $2e $e8
    inc a                                         ; $5db7: $3c
    halt                                          ; $5db8: $76
    sub b                                         ; $5db9: $90
    sub e                                         ; $5dba: $93
    call c, $c79c                                 ; $5dbb: $dc $9c $c7
    ld l, $e8                                     ; $5dbe: $2e $e8
    or d                                          ; $5dc0: $b2
    cp h                                          ; $5dc1: $bc
    or b                                          ; $5dc2: $b0
    ld [bc], a                                    ; $5dc3: $02
    rst $08                                       ; $5dc4: $cf
    dec l                                         ; $5dc5: $2d
    ld a, c                                       ; $5dc6: $79
    ld l, h                                       ; $5dc7: $6c
    ld a, [$5a9d]                                 ; $5dc8: $fa $9d $5a
    sbc d                                         ; $5dcb: $9a
    inc a                                         ; $5dcc: $3c
    ld h, c                                       ; $5dcd: $61
    ret nz                                        ; $5dce: $c0

    pop af                                        ; $5dcf: $f1
    ld bc, $d9cf                                  ; $5dd0: $01 $cf $d9
    jp nc, $168c                                  ; $5dd3: $d2 $8c $16

    ld [hl], h                                    ; $5dd6: $74
    xor $d7                                       ; $5dd7: $ee $d7
    and b                                         ; $5dd9: $a0
    jp hl                                         ; $5dda: $e9


    dec sp                                        ; $5ddb: $3b
    ld e, l                                       ; $5ddc: $5d
    ld [hl], l                                    ; $5ddd: $75
    or c                                          ; $5dde: $b1
    ld c, e                                       ; $5ddf: $4b
    inc hl                                        ; $5de0: $23
    ld [de], a                                    ; $5de1: $12
    inc de                                        ; $5de2: $13
    rra                                           ; $5de3: $1f
    rst $08                                       ; $5de4: $cf
    or l                                          ; $5de5: $b5
    add hl, sp                                    ; $5de6: $39
    xor d                                         ; $5de7: $aa
    ld l, a                                       ; $5de8: $6f
    xor $47                                       ; $5de9: $ee $47
    db $e3                                        ; $5deb: $e3
    ld c, [hl]                                    ; $5dec: $4e
    ret nc                                        ; $5ded: $d0

    jr jr_049_5da8                                ; $5dee: $18 $b8

    call $33a5                                    ; $5df0: $cd $a5 $33
    rst $18                                       ; $5df3: $df
    jp hl                                         ; $5df4: $e9


    xor d                                         ; $5df5: $aa
    sbc c                                         ; $5df6: $99
    ld [$7f54], sp                                ; $5df7: $08 $54 $7f
    xor b                                         ; $5dfa: $a8
    add hl, sp                                    ; $5dfb: $39
    ld d, h                                       ; $5dfc: $54
    pop af                                        ; $5dfd: $f1
    xor [hl]                                      ; $5dfe: $ae
    ld [hl], a                                    ; $5dff: $77
    jp nc, Jump_049_5e49                          ; $5e00: $d2 $49 $5e

    add hl, bc                                    ; $5e03: $09
    inc [hl]                                      ; $5e04: $34
    push de                                       ; $5e05: $d5
    inc l                                         ; $5e06: $2c
    ld a, l                                       ; $5e07: $7d
    ld c, c                                       ; $5e08: $49
    dec l                                         ; $5e09: $2d
    ld l, d                                       ; $5e0a: $6a
    ld l, c                                       ; $5e0b: $69
    cp d                                          ; $5e0c: $ba
    call nc, $0f8c                                ; $5e0d: $d4 $8c $0f
    ld l, a                                       ; $5e10: $6f
    sbc e                                         ; $5e11: $9b
    pop de                                        ; $5e12: $d1
    adc a                                         ; $5e13: $8f
    and $7f                                       ; $5e14: $e6 $7f
    ld a, c                                       ; $5e16: $79
    db $10                                        ; $5e17: $10
    ld a, l                                       ; $5e18: $7d
    ld d, c                                       ; $5e19: $51
    sub l                                         ; $5e1a: $95
    ld a, [$e7b4]                                 ; $5e1b: $fa $b4 $e7
    add hl, bc                                    ; $5e1e: $09
    ld d, e                                       ; $5e1f: $53
    ld d, [hl]                                    ; $5e20: $56
    rst $08                                       ; $5e21: $cf
    inc [hl]                                      ; $5e22: $34
    ld h, e                                       ; $5e23: $63
    ldh [rPCM34], a                               ; $5e24: $e0 $77
    cp $3b                                        ; $5e26: $fe $3b
    scf                                           ; $5e28: $37
    sbc l                                         ; $5e29: $9d
    sub e                                         ; $5e2a: $93
    pop bc                                        ; $5e2b: $c1
    ld b, e                                       ; $5e2c: $43
    ld b, [hl]                                    ; $5e2d: $46
    ld [hl], b                                    ; $5e2e: $70
    push hl                                       ; $5e2f: $e5
    nop                                           ; $5e30: $00
    rst $08                                       ; $5e31: $cf
    inc de                                        ; $5e32: $13
    and [hl]                                      ; $5e33: $a6
    xor h                                         ; $5e34: $ac
    sbc $a9                                       ; $5e35: $de $a9
    push hl                                       ; $5e37: $e5
    sbc c                                         ; $5e38: $99
    ld h, [hl]                                    ; $5e39: $66
    inc c                                         ; $5e3a: $0c
    db $fc                                        ; $5e3b: $fc
    jr nz, jr_049_5e68                            ; $5e3c: $20 $2a

    inc e                                         ; $5e3e: $1c
    xor e                                         ; $5e3f: $ab
    halt                                          ; $5e40: $76
    ld [hl-], a                                   ; $5e41: $32
    ld e, [hl]                                    ; $5e42: $5e
    ret nc                                        ; $5e43: $d0

    sbc c                                         ; $5e44: $99
    push hl                                       ; $5e45: $e5
    jp nz, Jump_000_1cf2                          ; $5e46: $c2 $f2 $1c

Jump_049_5e49:
    ld h, h                                       ; $5e49: $64
    sub a                                         ; $5e4a: $97
    jp z, Jump_000_09cd                           ; $5e4b: $ca $cd $09

    ld c, l                                       ; $5e4e: $4d
    adc [hl]                                      ; $5e4f: $8e
    ld [hl], a                                    ; $5e50: $77
    ld e, c                                       ; $5e51: $59
    sbc [hl]                                      ; $5e52: $9e
    add $40                                       ; $5e53: $c6 $40
    ld a, [c]                                     ; $5e55: $f2
    ld c, [hl]                                    ; $5e56: $4e
    push de                                       ; $5e57: $d5
    inc sp                                        ; $5e58: $33
    xor l                                         ; $5e59: $ad
    cp [hl]                                       ; $5e5a: $be
    ld l, b                                       ; $5e5b: $68
    ld hl, $fb06                                  ; $5e5c: $21 $06 $fb
    and b                                         ; $5e5f: $a0
    add hl, sp                                    ; $5e60: $39
    call z, Call_000_319d                         ; $5e61: $cc $9d $31
    ret z                                         ; $5e64: $c8

    add hl, de                                    ; $5e65: $19
    inc a                                         ; $5e66: $3c
    db $e4                                        ; $5e67: $e4

jr_049_5e68:
    ld d, d                                       ; $5e68: $52
    ld hl, sp-$41                                 ; $5e69: $f8 $bf
    ret z                                         ; $5e6b: $c8

    cpl                                           ; $5e6c: $2f
    ld l, h                                       ; $5e6d: $6c
    ld b, l                                       ; $5e6e: $45
    inc e                                         ; $5e6f: $1c
    rra                                           ; $5e70: $1f
    rst $10                                       ; $5e71: $d7
    db $e4                                        ; $5e72: $e4
    ld e, h                                       ; $5e73: $5c
    ld [hl-], a                                   ; $5e74: $32
    inc bc                                        ; $5e75: $03
    adc e                                         ; $5e76: $8b
    ld a, [hl-]                                   ; $5e77: $3a
    inc de                                        ; $5e78: $13
    db $ed                                        ; $5e79: $ed
    adc e                                         ; $5e7a: $8b
    sub $e6                                       ; $5e7b: $d6 $e6
    ret c                                         ; $5e7d: $d8

    pop de                                        ; $5e7e: $d1
    add d                                         ; $5e7f: $82
    and l                                         ; $5e80: $a5
    ld e, a                                       ; $5e81: $5f
    add h                                         ; $5e82: $84
    pop bc                                        ; $5e83: $c1
    adc $df                                       ; $5e84: $ce $df
    sbc c                                         ; $5e86: $99
    ld h, d                                       ; $5e87: $62

jr_049_5e88:
    or e                                          ; $5e88: $b3
    cp h                                          ; $5e89: $bc
    ld [hl], d                                    ; $5e8a: $72
    nop                                           ; $5e8b: $00
    ld d, a                                       ; $5e8c: $57
    sub c                                         ; $5e8d: $91
    and a                                         ; $5e8e: $a7
    cp a                                          ; $5e8f: $bf
    inc [hl]                                      ; $5e90: $34
    db $d3                                        ; $5e91: $d3
    ld b, e                                       ; $5e92: $43
    or l                                          ; $5e93: $b5
    ld [hl], $27                                  ; $5e94: $36 $27
    or h                                          ; $5e96: $b4
    inc e                                         ; $5e97: $1c
    ld [hl], h                                    ; $5e98: $74
    add b                                         ; $5e99: $80
    or b                                          ; $5e9a: $b0
    rst $20                                       ; $5e9b: $e7
    ld l, d                                       ; $5e9c: $6a
    inc b                                         ; $5e9d: $04
    pop af                                        ; $5e9e: $f1
    ld bc, $4697                                  ; $5e9f: $01 $97 $46
    inc h                                         ; $5ea2: $24
    ld h, [hl]                                    ; $5ea3: $66
    xor a                                         ; $5ea4: $af
    ld a, h                                       ; $5ea5: $7c
    and $92                                       ; $5ea6: $e6 $92
    ld hl, sp+$3d                                 ; $5ea8: $f8 $3d
    rst $30                                       ; $5eaa: $f7
    db $fd                                        ; $5eab: $fd
    add hl, de                                    ; $5eac: $19
    inc bc                                        ; $5ead: $03
    ld l, a                                       ; $5eae: $6f

Jump_049_5eaf:
    add hl, hl                                    ; $5eaf: $29
    daa                                           ; $5eb0: $27
    inc [hl]                                      ; $5eb1: $34
    rla                                           ; $5eb2: $17
    ld [hl], h                                    ; $5eb3: $74
    dec h                                         ; $5eb4: $25
    pop af                                        ; $5eb5: $f1
    rlca                                          ; $5eb6: $07
    rst $08                                       ; $5eb7: $cf
    ret nc                                        ; $5eb8: $d0

    ld d, b                                       ; $5eb9: $50
    xor l                                         ; $5eba: $ad
    call $04fd                                    ; $5ebb: $cd $fd $04
    push de                                       ; $5ebe: $d5
    adc [hl]                                      ; $5ebf: $8e
    inc c                                         ; $5ec0: $0c
    ld a, [hl-]                                   ; $5ec1: $3a
    ld d, b                                       ; $5ec2: $50
    and c                                         ; $5ec3: $a1
    ld c, $f9                                     ; $5ec4: $0e $f9
    rst $00                                       ; $5ec6: $c7
    rst $10                                       ; $5ec7: $d7
    and $a4                                       ; $5ec8: $e6 $a4
    add hl, de                                    ; $5eca: $19
    xor c                                         ; $5ecb: $a9
    and c                                         ; $5ecc: $a1
    ld a, [de]                                    ; $5ecd: $1a
    and $da                                       ; $5ece: $e6 $da
    sbc h                                         ; $5ed0: $9c
    db $fc                                        ; $5ed1: $fc
    adc c                                         ; $5ed2: $89
    ld b, c                                       ; $5ed3: $41
    adc $2d                                       ; $5ed4: $ce $2d
    ld e, c                                       ; $5ed6: $59
    ld a, [$8f92]                                 ; $5ed7: $fa $92 $8f
    rrca                                          ; $5eda: $0f
    ld d, a                                       ; $5edb: $57
    adc l                                         ; $5edc: $8d
    add a                                         ; $5edd: $87
    ld l, d                                       ; $5ede: $6a
    sbc b                                         ; $5edf: $98
    cp [hl]                                       ; $5ee0: $be
    db $e4                                        ; $5ee1: $e4
    call $dafc                                    ; $5ee2: $cd $fc $da
    ld e, h                                       ; $5ee5: $5c
    sbc d                                         ; $5ee6: $9a
    pop de                                        ; $5ee7: $d1
    ld a, [hl]                                    ; $5ee8: $7e
    add d                                         ; $5ee9: $82
    ld l, d                                       ; $5eea: $6a
    ld b, a                                       ; $5eeb: $47
    ld b, $8d                                     ; $5eec: $06 $8d
    rrca                                          ; $5eee: $0f
    ld d, a                                       ; $5eef: $57
    dec sp                                        ; $5ef0: $3b
    ld l, c                                       ; $5ef1: $69
    ld b, [hl]                                    ; $5ef2: $46
    ld l, d                                       ; $5ef3: $6a
    ld [bc], a                                    ; $5ef4: $02
    ld e, c                                       ; $5ef5: $59
    ld a, d                                       ; $5ef6: $7a
    rst $18                                       ; $5ef7: $df
    jr c, jr_049_5e88                             ; $5ef8: $38 $8e

    rst $10                                       ; $5efa: $d7
    inc e                                         ; $5efb: $1c
    xor d                                         ; $5efc: $aa
    db $fd                                        ; $5efd: $fd
    ld h, h                                       ; $5efe: $64
    sub l                                         ; $5eff: $95
    ld b, $b1                                     ; $5f00: $06 $b1
    ld hl, sp+$5d                                 ; $5f02: $f8 $5d
    sub e                                         ; $5f04: $93
    inc de                                        ; $5f05: $13
    sbc d                                         ; $5f06: $9a
    inc de                                        ; $5f07: $13
    inc l                                         ; $5f08: $2c
    pop bc                                        ; $5f09: $c1
    cp h                                          ; $5f0a: $bc
    pop af                                        ; $5f0b: $f1
    jp nz, $40f2                                  ; $5f0c: $c2 $f2 $40

    add l                                         ; $5f0f: $85
    rst $28                                       ; $5f10: $ef
    sbc h                                         ; $5f11: $9c
    add [hl]                                      ; $5f12: $86
    add hl, sp                                    ; $5f13: $39
    ld d, a                                       ; $5f14: $57
    ld e, e                                       ; $5f15: $5b
    inc d                                         ; $5f16: $14
    dec [hl]                                      ; $5f17: $35
    rst $30                                       ; $5f18: $f7
    ld hl, $c660                                  ; $5f19: $21 $60 $c6
    pop af                                        ; $5f1c: $f1
    xor [hl]                                      ; $5f1d: $ae
    dec [hl]                                      ; $5f1e: $35
    or d                                          ; $5f1f: $b2
    db $f4                                        ; $5f20: $f4
    adc e                                         ; $5f21: $8b
    ld a, [hl]                                    ; $5f22: $7e
    ld a, c                                       ; $5f23: $79
    dec h                                         ; $5f24: $25

jr_049_5f25:
    add e                                         ; $5f25: $83
    add a                                         ; $5f26: $87
    ld e, h                                       ; $5f27: $5c
    ld [hl-], a                                   ; $5f28: $32
    bit 7, b                                      ; $5f29: $cb $78
    rst $10                                       ; $5f2b: $d7
    db $e4                                        ; $5f2c: $e4
    ld b, d                                       ; $5f2d: $42
    di                                            ; $5f2e: $f3
    dec bc                                        ; $5f2f: $0b
    cp [hl]                                       ; $5f30: $be
    inc sp                                        ; $5f31: $33
    call z, Call_049_7a81                         ; $5f32: $cc $81 $7a
    add e                                         ; $5f35: $83
    add a                                         ; $5f36: $87
    call c, $0f8c                                 ; $5f37: $dc $8c $0f
    sub a                                         ; $5f3a: $97
    cp a                                          ; $5f3b: $bf
    dec bc                                        ; $5f3c: $0b
    ld c, e                                       ; $5f3d: $4b
    or d                                          ; $5f3e: $b2
    add hl, sp                                    ; $5f3f: $39
    sub h                                         ; $5f40: $94
    dec bc                                        ; $5f41: $0b
    res 2, e                                      ; $5f42: $cb $93
    ccf                                           ; $5f44: $3f
    ld sp, $2bc8                                  ; $5f45: $31 $c8 $2b
    rlca                                          ; $5f48: $07
    sub a                                         ; $5f49: $97
    push hl                                       ; $5f4a: $e5
    and c                                         ; $5f4b: $a1
    ld a, [de]                                    ; $5f4c: $1a
    ld h, h                                       ; $5f4d: $64
    ld b, [hl]                                    ; $5f4e: $46
    ld a, [hl+]                                   ; $5f4f: $2a
    sbc $55                                       ; $5f50: $de $55
    db $e3                                        ; $5f52: $e3
    and c                                         ; $5f53: $a1
    jp c, Jump_049_504f                           ; $5f54: $da $4f $50

    add c                                         ; $5f57: $81
    inc e                                         ; $5f58: $1c
    sub h                                         ; $5f59: $94
    push de                                       ; $5f5a: $d5
    jr jr_049_5f25                                ; $5f5b: $18 $c8

    adc e                                         ; $5f5d: $8b
    sbc l                                         ; $5f5e: $9d
    xor e                                         ; $5f5f: $ab
    ld b, l                                       ; $5f60: $45
    ld l, d                                       ; $5f61: $6a
    rra                                           ; $5f62: $1f
    jp c, $a77b                                   ; $5f63: $da $7b $a7

    ld h, d                                       ; $5f66: $62

jr_049_5f67:
    ld a, [hl+]                                   ; $5f67: $2a
    ld l, $66                                     ; $5f68: $2e $66
    cp h                                          ; $5f6a: $bc
    daa                                           ; $5f6b: $27
    or l                                          ; $5f6c: $b5
    ld e, d                                       ; $5f6d: $5a
    ret nc                                        ; $5f6e: $d0

    add l                                         ; $5f6f: $85
    adc l                                         ; $5f70: $8d
    and $5a                                       ; $5f71: $e6 $5a
    ld [bc], a                                    ; $5f73: $02
    ld e, [hl]                                    ; $5f74: $5e
    ld [hl], e                                    ; $5f75: $73
    ld e, h                                       ; $5f76: $5c
    ld [hl], d                                    ; $5f77: $72
    add b                                         ; $5f78: $80
    ld b, b                                       ; $5f79: $40
    ld c, l                                       ; $5f7a: $4d
    ret nz                                        ; $5f7b: $c0

    rla                                           ; $5f7c: $17
    db $d3                                        ; $5f7d: $d3
    dec l                                         ; $5f7e: $2d
    dec c                                         ; $5f7f: $0d
    push hl                                       ; $5f80: $e5
    add d                                         ; $5f81: $82
    xor [hl]                                      ; $5f82: $ae
    call $d625                                    ; $5f83: $cd $25 $d6
    add hl, sp                                    ; $5f86: $39
    ld [hl], l                                    ; $5f87: $75
    ld a, [bc]                                    ; $5f88: $0a
    and d                                         ; $5f89: $a2
    ld a, [hl-]                                   ; $5f8a: $3a
    ld [hl-], a                                   ; $5f8b: $32
    ld a, $00                                     ; $5f8c: $3e $00
    rst $10                                       ; $5f8e: $d7
    db $e4                                        ; $5f8f: $e4
    ld c, [hl]                                    ; $5f90: $4e
    dec l                                         ; $5f91: $2d
    rst $28                                       ; $5f92: $ef
    ld e, h                                       ; $5f93: $5c
    ld e, c                                       ; $5f94: $59
    sbc d                                         ; $5f95: $9a
    scf                                           ; $5f96: $37
    ld e, [hl]                                    ; $5f97: $5e
    adc b                                         ; $5f98: $88
    pop bc                                        ; $5f99: $c1
    jp nc, Jump_000_268c                          ; $5f9a: $d2 $8c $26

    jr c, jr_049_5f67                             ; $5f9d: $38 $c8

    call $f441                                    ; $5f9f: $cd $41 $f4
    add l                                         ; $5fa2: $85
    sub [hl]                                      ; $5fa3: $96
    ld a, b                                       ; $5fa4: $78
    call c, Call_000_1fc9                         ; $5fa5: $dc $c9 $1f
    dec [hl]                                      ; $5fa8: $35
    db $e3                                        ; $5fa9: $e3
    inc bc                                        ; $5faa: $03
    ld l, a                                       ; $5fab: $6f
    or l                                          ; $5fac: $b5
    ld a, d                                       ; $5fad: $7a
    jp z, $c381                                   ; $5fae: $ca $81 $c3

    xor e                                         ; $5fb1: $ab
    ld l, $76                                     ; $5fb2: $2e $76
    ld l, c                                       ; $5fb4: $69
    ld b, h                                       ; $5fb5: $44
    ld h, d                                       ; $5fb6: $62
    ld [c], a                                     ; $5fb7: $e2
    cp l                                          ; $5fb8: $bd
    ld d, b                                       ; $5fb9: $50
    sbc $87                                       ; $5fba: $de $87
    and $8d                                       ; $5fbc: $e6 $8d
    rla                                           ; $5fbe: $17
    ld [hl], h                                    ; $5fbf: $74
    ld b, c                                       ; $5fc0: $41
    sub a                                         ; $5fc1: $97
    ld e, b                                       ; $5fc2: $58
    sbc [hl]                                      ; $5fc3: $9e
    ld b, b                                       ; $5fc4: $40
    sub [hl]                                      ; $5fc5: $96
    sbc [hl]                                      ; $5fc6: $9e
    db $e3                                        ; $5fc7: $e3
    inc bc                                        ; $5fc8: $03
    ld d, a                                       ; $5fc9: $57
    adc l                                         ; $5fca: $8d
    daa                                           ; $5fcb: $27
    ld a, a                                       ; $5fcc: $7f
    ld h, d                                       ; $5fcd: $62
    sub b                                         ; $5fce: $90
    ld b, e                                       ; $5fcf: $43
    or l                                          ; $5fd0: $b5
    call nz, Call_049_42f2                        ; $5fd1: $c4 $f2 $42
    inc l                                         ; $5fd4: $2c
    ld e, l                                       ; $5fd5: $5d
    db $ec                                        ; $5fd6: $ec
    jp nc, $c488                                  ; $5fd7: $d2 $88 $c4

    adc b                                         ; $5fda: $88
    rst $18                                       ; $5fdb: $df
    db $eb                                        ; $5fdc: $eb

jr_049_5fdd:
    ldh a, [rNR10]                                ; $5fdd: $f0 $10
    swap e                                        ; $5fdf: $cb $33
    xor l                                         ; $5fe1: $ad
    add d                                         ; $5fe2: $82
    ld a, [bc]                                    ; $5fe3: $0a
    ld a, [de]                                    ; $5fe4: $1a
    dec hl                                        ; $5fe5: $2b
    ld [c], a                                     ; $5fe6: $e2
    ld a, l                                       ; $5fe7: $7d
    ld l, b                                       ; $5fe8: $68
    call $98b9                                    ; $5fe9: $cd $b9 $98
    sbc [hl]                                      ; $5fec: $9e
    rla                                           ; $5fed: $17
    ld [hl], $12                                  ; $5fee: $36 $12

jr_049_5ff0:
    ld a, a                                       ; $5ff0: $7f
    nop                                           ; $5ff1: $00
    sub a                                         ; $5ff2: $97
    dec d                                         ; $5ff3: $15
    ld d, $60                                     ; $5ff4: $16 $60
    or b                                          ; $5ff6: $b0
    ld [hl], $07                                  ; $5ff7: $36 $07
    sbc c                                         ; $5ff9: $99
    sub c                                         ; $5ffa: $91
    sbc d                                         ; $5ffb: $9a
    db $fc                                        ; $5ffc: $fc
    adc c                                         ; $5ffd: $89
    ld b, c                                       ; $5ffe: $41
    ld c, $f4                                     ; $5fff: $0e $f4
    adc h                                         ; $6001: $8c
    call Call_000_072b                            ; $6002: $cd $2b $07
    rst $10                                       ; $6005: $d7
    db $ed                                        ; $6006: $ed
    ld h, d                                       ; $6007: $62
    ld hl, $0b06                                  ; $6008: $21 $06 $0b
    dec e                                         ; $600b: $1d
    ld [$f6aa], sp                                ; $600c: $08 $aa $f6
    dec e                                         ; $600f: $1d
    and $7c                                       ; $6010: $e6 $7c
    ld b, a                                       ; $6012: $47
    ld [$190f], sp                                ; $6013: $08 $0f $19
    inc de                                        ; $6016: $13
    call z, $9cb5                                 ; $6017: $cc $b5 $9c
    rst $28                                       ; $601a: $ef
    sbc b                                         ; $601b: $98
    inc c                                         ; $601c: $0c
    add d                                         ; $601d: $82
    sbc d                                         ; $601e: $9a
    pop af                                        ; $601f: $f1
    ld bc, $e4d7                                  ; $6020: $01 $d7 $e4
    jp nz, Jump_049_6b0a                          ; $6023: $c2 $0a $6b

    ld [hl], e                                    ; $6026: $73
    ld a, [c]                                     ; $6027: $f2
    daa                                           ; $6028: $27
    ld b, $39                                     ; $6029: $06 $39
    ret nc                                        ; $602b: $d0

    inc sp                                        ; $602c: $33
    ld [hl], $f7                                  ; $602d: $36 $f7
    and c                                         ; $602f: $a1
    ld sp, hl                                     ; $6030: $f9
    adc [hl]                                      ; $6031: $8e
    ret                                           ; $6032: $c9


    jr nz, jr_049_5fdd                            ; $6033: $20 $a8

    add hl, sp                                    ; $6035: $39
    adc a                                         ; $6036: $8f
    ld e, l                                       ; $6037: $5d
    sbc d                                         ; $6038: $9a
    pop de                                        ; $6039: $d1
    ld a, h                                       ; $603a: $7c
    daa                                           ; $603b: $27
    inc d                                         ; $603c: $14
    ld e, b                                       ; $603d: $58
    halt                                          ; $603e: $76
    add b                                         ; $603f: $80
    ld a, [hl]                                    ; $6040: $7e
    ld a, [$b301]                                 ; $6041: $fa $01 $b3
    adc h                                         ; $6044: $8c
    rst $30                                       ; $6045: $f7
    and d                                         ; $6046: $a2
    add hl, de                                    ; $6047: $19
    db $ed                                        ; $6048: $ed
    ld d, h                                       ; $6049: $54
    dec l                                         ; $604a: $2d
    dec sp                                        ; $604b: $3b
    xor c                                         ; $604c: $a9
    db $eb                                        ; $604d: $eb
    ret nc                                        ; $604e: $d0

    jp nz, Jump_049_4ef2                          ; $604f: $c2 $f2 $4e

    and [hl]                                      ; $6052: $a6
    ld l, $76                                     ; $6053: $2e $76
    ld l, d                                       ; $6055: $6a
    ld a, c                                       ; $6056: $79
    jr z, jr_049_5ff0                             ; $6057: $28 $97

    ld e, b                                       ; $6059: $58
    adc [hl]                                      ; $605a: $8e
    rrca                                          ; $605b: $0f
    rst $10                                       ; $605c: $d7
    dec sp                                        ; $605d: $3b
    add c                                         ; $605e: $81
    sbc d                                         ; $605f: $9a
    add b                                         ; $6060: $80
    ld [hl], a                                    ; $6061: $77
    ld a, [hl+]                                   ; $6062: $2a
    ld h, $82                                     ; $6063: $26 $82
    ld sp, $7e06                                  ; $6065: $31 $06 $7e
    cp $7f                                        ; $6068: $fe $7f
    ld a, [de]                                    ; $606a: $1a
    and $7c                                       ; $606b: $e6 $7c
    and a                                         ; $606d: $a7
    xor e                                         ; $606e: $ab
    db $f4                                        ; $606f: $f4
    sub a                                         ; $6070: $97
    and [hl]                                      ; $6071: $a6
    sbc e                                         ; $6072: $9b
    rla                                           ; $6073: $17
    cp e                                          ; $6074: $bb
    inc [hl]                                      ; $6075: $34
    ld [hl+], a                                   ; $6076: $22
    ld sp, $01f1                                  ; $6077: $31 $f1 $01
    xor a                                         ; $607a: $af
    sub h                                         ; $607b: $94
    ldh [$62], a                                  ; $607c: $e0 $62
    ld l, $16                                     ; $607e: $2e $16
    ld d, [hl]                                    ; $6080: $56
    ld e, b                                       ; $6081: $58
    add b                                         ; $6082: $80
    pop bc                                        ; $6083: $c1
    ld b, d                                       ; $6084: $42
    inc l                                         ; $6085: $2c
    xor l                                         ; $6086: $ad
    inc b                                         ; $6087: $04
    sbc d                                         ; $6088: $9a
    ld l, d                                       ; $6089: $6a
    ld l, l                                       ; $608a: $6d
    ld c, $32                                     ; $608b: $0e $32
    inc hl                                        ; $608d: $23
    dec [hl]                                      ; $608e: $35
    ld sp, hl                                     ; $608f: $f9
    inc de                                        ; $6090: $13
    add e                                         ; $6091: $83
    inc e                                         ; $6092: $1c
    add sp, $19                                   ; $6093: $e8 $19
    sbc e                                         ; $6095: $9b
    ld d, a                                       ; $6096: $57
    ld c, $d7                                     ; $6097: $0e $d7
    db $ed                                        ; $6099: $ed
    ld h, d                                       ; $609a: $62
    ld hl, $5306                                  ; $609b: $21 $06 $53
    db $10                                        ; $609e: $10
    db $fd                                        ; $609f: $fd
    inc b                                         ; $60a0: $04
    di                                            ; $60a1: $f3
    sbc l                                         ; $60a2: $9d
    xor a                                         ; $60a3: $af
    ld b, e                                       ; $60a4: $43
    ld [hl], e                                    ; $60a5: $73
    sub b                                         ; $60a6: $90
    sub a                                         ; $60a7: $97
    ld h, [hl]                                    ; $60a8: $66
    inc [hl]                                      ; $60a9: $34
    pop bc                                        ; $60aa: $c1
    ld b, c                                       ; $60ab: $41
    ld l, [hl]                                    ; $60ac: $6e
    add $7b                                       ; $60ad: $c6 $7b
    db $db                                        ; $60af: $db
    adc h                                         ; $60b0: $8c
    ld a, [hl]                                    ; $60b1: $7e
    inc [hl]                                      ; $60b2: $34
    ld d, h                                       ; $60b3: $54
    dec bc                                        ; $60b4: $0b
    ld sp, $6418                                  ; $60b5: $31 $18 $64
    ld b, [hl]                                    ; $60b8: $46
    ld [$01ca], a                                 ; $60b9: $ea $ca $01
    sub a                                         ; $60bc: $97
    push hl                                       ; $60bd: $e5
    and c                                         ; $60be: $a1
    ld e, d                                       ; $60bf: $5a
    sbc e                                         ; $60c0: $9b
    inc de                                        ; $60c1: $13
    ret z                                         ; $60c2: $c8

    jp nc, $7d37                                  ; $60c3: $d2 $37 $7d

    daa                                           ; $60c6: $27
    call $cd48                                    ; $60c7: $cd $48 $cd
    ld h, e                                       ; $60ca: $63
    rlca                                          ; $60cb: $07
    sub l                                         ; $60cc: $95
    or $13                                        ; $60cd: $f6 $13
    ld d, h                                       ; $60cf: $54
    dec sp                                        ; $60d0: $3b
    ld [hl], d                                    ; $60d1: $72
    sbc b                                         ; $60d2: $98
    ld l, e                                       ; $60d3: $6b
    ld [hl], e                                    ; $60d4: $73
    ld a, [c]                                     ; $60d5: $f2
    daa                                           ; $60d6: $27
    ld b, $39                                     ; $60d7: $06 $39
    ld d, h                                       ; $60d9: $54
    ld [hl], e                                    ; $60da: $73
    ld c, e                                       ; $60db: $4b
    sub [hl]                                      ; $60dc: $96
    cp [hl]                                       ; $60dd: $be
    db $e4                                        ; $60de: $e4
    db $e3                                        ; $60df: $e3
    inc bc                                        ; $60e0: $03
    ld d, a                                       ; $60e1: $57
    adc l                                         ; $60e2: $8d
    rst $20                                       ; $60e3: $e7
    sub [hl]                                      ; $60e4: $96
    and h                                         ; $60e5: $a4
    ld [hl], $23                                  ; $60e6: $36 $23
    sbc $c9                                       ; $60e8: $de $c9
    adc h                                         ; $60ea: $8c
    ld a, [hl]                                    ; $60eb: $7e
    or h                                          ; $60ec: $b4
    jp nc, Jump_000_19a4                          ; $60ed: $d2 $a4 $19

    add hl, hl                                    ; $60f0: $29
    or a                                          ; $60f1: $b7
    cp h                                          ; $60f2: $bc
    rrca                                          ; $60f3: $0f
    call $ae77                                    ; $60f4: $cd $77 $ae
    cp $a5                                        ; $60f7: $fe $a5
    ld l, c                                       ; $60f9: $69
    inc bc                                        ; $60fa: $03
    pop af                                        ; $60fb: $f1
    ld bc, $a64f                                  ; $60fc: $01 $4f $a6
    cpl                                           ; $60ff: $2f
    ld l, c                                       ; $6100: $69
    ld c, h                                       ; $6101: $4c
    or b                                          ; $6102: $b0
    inc de                                        ; $6103: $13
    ld [$e379], a                                 ; $6104: $ea $79 $e3
    and c                                         ; $6107: $a1
    ld e, h                                       ; $6108: $5c
    ret c                                         ; $6109: $d8

    ld l, b                                       ; $610a: $68
    xor [hl]                                      ; $610b: $ae
    dec h                                         ; $610c: $25
    adc b                                         ; $610d: $88
    rrca                                          ; $610e: $0f
    rst $10                                       ; $610f: $d7
    db $e4                                        ; $6110: $e4
    adc $06                                       ; $6111: $ce $06
    ld d, [hl]                                    ; $6113: $56
    ld e, d                                       ; $6114: $5a
    sub [hl]                                      ; $6115: $96
    rst $10                                       ; $6116: $d7
    and $3e                                       ; $6117: $e6 $3e
    inc [hl]                                      ; $6119: $34
    rst $18                                       ; $611a: $df
    add hl, bc                                    ; $611b: $09
    dec b                                         ; $611c: $05
    sub [hl]                                      ; $611d: $96
    dec e                                         ; $611e: $1d
    and b                                         ; $611f: $a0
    sbc a                                         ; $6120: $9f
    ld a, $3e                                     ; $6121: $3e $3e
    nop                                           ; $6123: $00
    cpl                                           ; $6124: $2f
    or l                                          ; $6125: $b5
    pop af                                        ; $6126: $f1
    sbc [hl]                                      ; $6127: $9e
    ret                                           ; $6128: $c9


    dec b                                         ; $6129: $05
    jr jr_049_6188                                ; $612a: $18 $5c

    add hl, sp                                    ; $612c: $39
    nop                                           ; $612d: $00
    ld d, a                                       ; $612e: $57
    call $a768                                    ; $612f: $cd $68 $a7
    sub [hl]                                      ; $6132: $96
    add a                                         ; $6133: $87
    ld [hl], d                                    ; $6134: $72
    adc c                                         ; $6135: $89
    ld h, l                                       ; $6136: $65
    dec [hl]                                      ; $6137: $35
    rst $10                                       ; $6138: $d7
    jp nc, $f144                                  ; $6139: $d2 $44 $f1

    ld bc, $b52f                                  ; $613c: $01 $2f $b5
    pop af                                        ; $613f: $f1
    ld l, $cd                                     ; $6140: $2e $cd
    rst $08                                       ; $6142: $cf
    dec de                                        ; $6143: $1b
    rrca                                          ; $6144: $0f
    inc [hl]                                      ; $6145: $34
    ld a, [$e6e5]                                 ; $6146: $fa $e5 $e6
    sub l                                         ; $6149: $95
    inc bc                                        ; $614a: $03
    rst $10                                       ; $614b: $d7
    db $e4                                        ; $614c: $e4
    jp nz, Jump_000_0b0a                          ; $614d: $c2 $0a $0b

    xor e                                         ; $6150: $ab
    dec de                                        ; $6151: $1b
    sbc c                                         ; $6152: $99
    jp hl                                         ; $6153: $e9


    add c                                         ; $6154: $81
    ld [hl], $27                                  ; $6155: $36 $27
    ld a, a                                       ; $6157: $7f
    ld h, d                                       ; $6158: $62
    sub b                                         ; $6159: $90
    inc bc                                        ; $615a: $03
    dec a                                         ; $615b: $3d

Jump_049_615c:
    ld h, e                                       ; $615c: $63
    inc sp                                        ; $615d: $33
    ld a, $00                                     ; $615e: $3e $00
    ld c, a                                       ; $6160: $4f
    ld l, d                                       ; $6161: $6a
    ld e, l                                       ; $6162: $5d
    or l                                          ; $6163: $b5
    cpl                                           ; $6164: $2f
    ld l, a                                       ; $6165: $6f
    cp b                                          ; $6166: $b8
    ret c                                         ; $6167: $d8

    and l                                         ; $6168: $a5
    ld de, $b989                                  ; $6169: $11 $89 $b9
    ld [hl], d                                    ; $616c: $72
    nop                                           ; $616d: $00
    rst $08                                       ; $616e: $cf
    reti                                          ; $616f: $d9


    add d                                         ; $6170: $82
    adc $ff                                       ; $6171: $ce $ff
    jr z, @-$14                                   ; $6173: $28 $ea

    ld e, h                                       ; $6175: $5c
    ld [hl-], a                                   ; $6176: $32
    ret nc                                        ; $6177: $d0

    sbc h                                         ; $6178: $9c
    ld e, c                                       ; $6179: $59
    ld c, $1b                                     ; $617a: $0e $1b
    ld e, c                                       ; $617c: $59
    ld a, [$fa59]                                 ; $617d: $fa $59 $fa
    sub d                                         ; $6180: $92
    sbc d                                         ; $6181: $9a
    ld [c], a                                     ; $6182: $e2
    ld l, d                                       ; $6183: $6a
    db $dd                                        ; $6184: $dd
    inc d                                         ; $6185: $14
    ld a, a                                       ; $6186: $7f
    nop                                           ; $6187: $00

jr_049_6188:
    xor a                                         ; $6188: $af
    and e                                         ; $6189: $a3
    ld d, d                                       ; $618a: $52
    pop af                                        ; $618b: $f1
    ld bc, $b52f                                  ; $618c: $01 $2f $b5
    rla                                           ; $618f: $17
    adc e                                         ; $6190: $8b
    call z, $de68                                 ; $6191: $cc $68 $de
    ld a, b                                       ; $6194: $78
    rst $20                                       ; $6195: $e7
    rst $28                                       ; $6196: $ef
    inc c                                         ; $6197: $0c
    push hl                                       ; $6198: $e5
    add h                                         ; $6199: $84
    ld a, [hl+]                                   ; $619a: $2a
    sbc $09                                       ; $619b: $de $09
    or l                                          ; $619d: $b5
    ld l, [hl]                                    ; $619e: $6e
    add $07                                       ; $619f: $c6 $07
    rst $10                                       ; $61a1: $d7
    db $e4                                        ; $61a2: $e4
    jp nz, $030a                                  ; $61a3: $c2 $0a $03

    ld l, l                                       ; $61a6: $6d
    adc [hl]                                      ; $61a7: $8e
    ld sp, $73f0                                  ; $61a8: $31 $f0 $73
    rst $38                                       ; $61ab: $ff
    and a                                         ; $61ac: $a7
    sub c                                         ; $61ad: $91
    sbc c                                         ; $61ae: $99
    ld d, a                                       ; $61af: $57
    push de                                       ; $61b0: $d5
    inc e                                         ; $61b1: $1c
    ld d, h                                       ; $61b2: $54
    ld e, l                                       ; $61b3: $5d
    db $ec                                        ; $61b4: $ec
    sub l                                         ; $61b5: $95
    rst $08                                       ; $61b6: $cf
    ld e, h                                       ; $61b7: $5c
    adc d                                         ; $61b8: $8a
    rrca                                          ; $61b9: $0f
    ld l, a                                       ; $61ba: $6f
    sub c                                         ; $61bb: $91
    add hl, de                                    ; $61bc: $19
    ld e, b                                       ; $61bd: $58
    ld e, b                                       ; $61be: $58
    sbc [hl]                                      ; $61bf: $9e
    ld e, c                                       ; $61c0: $59
    xor $d2                                       ; $61c1: $ee $d2
    nop                                           ; $61c3: $00
    and c                                         ; $61c4: $a1
    adc a                                         ; $61c5: $8f
    ld [hl], a                                    ; $61c6: $77
    adc c                                         ; $61c7: $89
    pop bc                                        ; $61c8: $c1
    ld c, [hl]                                    ; $61c9: $4e
    dec l                                         ; $61ca: $2d
    rst $08                                       ; $61cb: $cf
    inc [hl]                                      ; $61cc: $34
    ld h, e                                       ; $61cd: $63
    ldh [$67], a                                  ; $61ce: $e0 $67
    ld e, d                                       ; $61d0: $5a
    ld d, a                                       ; $61d1: $57
    db $ed                                        ; $61d2: $ed
    cp e                                          ; $61d3: $bb
    and l                                         ; $61d4: $a5
    sbc c                                         ; $61d5: $99
    sub $9d                                       ; $61d6: $d6 $9d
    rst $00                                       ; $61d8: $c7
    ld d, d                                       ; $61d9: $52
    ld [hl], e                                    ; $61da: $73
    rra                                           ; $61db: $1f
    ld e, d                                       ; $61dc: $5a
    ld e, b                                       ; $61dd: $58
    sbc [hl]                                      ; $61de: $9e
    add d                                         ; $61df: $82
    add a                                         ; $61e0: $87
    rst $38                                       ; $61e1: $ff
    ld l, e                                       ; $61e2: $6b
    ld l, $51                                     ; $61e3: $2e $51
    ld sp, $03e3                                  ; $61e5: $31 $e3 $03
    rst $08                                       ; $61e8: $cf
    sub c                                         ; $61e9: $91
    ld b, c                                       ; $61ea: $41
    db $10                                        ; $61eb: $10
    add d                                         ; $61ec: $82
    ld a, c                                       ; $61ed: $79
    db $e3                                        ; $61ee: $e3
    dec b                                         ; $61ef: $05
    sbc l                                         ; $61f0: $9d
    scf                                           ; $61f1: $37
    sbc [hl]                                      ; $61f2: $9e
    ld c, e                                       ; $61f3: $4b
    ld h, [hl]                                    ; $61f4: $66
    add b                                         ; $61f5: $80
    db $e3                                        ; $61f6: $e3
    ld e, l                                       ; $61f7: $5d
    cp l                                          ; $61f8: $bd
    adc l                                         ; $61f9: $8d
    ld d, $3a                                     ; $61fa: $16 $3a
    db $10                                        ; $61fc: $10
    ld d, h                                       ; $61fd: $54
    db $ed                                        ; $61fe: $ed
    cp e                                          ; $61ff: $bb
    inc l                                         ; $6200: $2c
    xor a                                         ; $6201: $af
    ld c, l                                       ; $6202: $4d
    ld c, $3a                                     ; $6203: $0e $3a
    rst $30                                       ; $6205: $f7
    ld a, a                                       ; $6206: $7f
    ld [de], a                                    ; $6207: $12
    jr nc, @-$76                                  ; $6208: $30 $88

    rst $30                                       ; $620a: $f7
    jp nc, $c8a7                                  ; $620b: $d2 $a7 $c8

    ld c, h                                       ; $620e: $4c
    rrca                                          ; $620f: $0f
    sbc b                                         ; $6210: $98
    pop af                                        ; $6211: $f1
    ld e, [hl]                                    ; $6212: $5e
    ld [hl], h                                    ; $6213: $74
    ld d, b                                       ; $6214: $50
    rst $28                                       ; $6215: $ef
    ld d, h                                       ; $6216: $54
    dec a                                         ; $6217: $3d
    add e                                         ; $6218: $83
    add a                                         ; $6219: $87
    ld e, h                                       ; $621a: $5c
    jp c, $dff9                                   ; $621b: $da $f9 $df

    sub [hl]                                      ; $621e: $96
    add e                                         ; $621f: $83
    or h                                          ; $6220: $b4
    add e                                         ; $6221: $83
    rst $20                                       ; $6222: $e7
    ld a, [bc]                                    ; $6223: $0a
    ld e, a                                       ; $6224: $5f
    rst $08                                       ; $6225: $cf
    inc l                                         ; $6226: $2c
    cpl                                           ; $6227: $2f
    ld d, $99                                     ; $6228: $16 $99
    pop de                                        ; $622a: $d1
    ld e, h                                       ; $622b: $5c
    set 7, c                                      ; $622c: $cb $f9
    sbc [hl]                                      ; $622e: $9e
    cp e                                          ; $622f: $bb
    add sp, $57                                   ; $6230: $e8 $57
    pop af                                        ; $6232: $f1
    or b                                          ; $6233: $b0
    ld c, e                                       ; $6234: $4b
    sub h                                         ; $6235: $94
    ld l, d                                       ; $6236: $6a
    ld h, c                                       ; $6237: $61
    dec b                                         ; $6238: $05
    and c                                         ; $6239: $a1
    add hl, de                                    ; $623a: $19
    rra                                           ; $623b: $1f
    sub a                                         ; $623c: $97
    push hl                                       ; $623d: $e5
    sbc l                                         ; $623e: $9d
    ld c, h                                       ; $623f: $4c
    dec c                                         ; $6240: $0d
    or h                                          ; $6241: $b4
    cp c                                          ; $6242: $b9
    jp nz, $9e43                                  ; $6243: $c2 $43 $9e

    db $fc                                        ; $6246: $fc
    adc c                                         ; $6247: $89
    ld b, c                                       ; $6248: $41
    ld e, [hl]                                    ; $6249: $5e
    inc l                                         ; $624a: $2c
    inc l                                         ; $624b: $2c
    rst $28                                       ; $624c: $ef
    ld h, h                                       ; $624d: $64
    ld l, d                                       ; $624e: $6a
    ld l, l                                       ; $624f: $6d
    ld c, [hl]                                    ; $6250: $4e
    jr nz, jr_049_629e                            ; $6251: $20 $4b

    rst $18                                       ; $6253: $df
    db $f4                                        ; $6254: $f4
    sbc l                                         ; $6255: $9d
    inc [hl]                                      ; $6256: $34
    inc hl                                        ; $6257: $23
    dec [hl]                                      ; $6258: $35
    adc a                                         ; $6259: $8f
    sbc l                                         ; $625a: $9d
    ld l, e                                       ; $625b: $6b
    add hl, sp                                    ; $625c: $39
    ld d, b                                       ; $625d: $50
    ld l, a                                       ; $625e: $6f
    sub [hl]                                      ; $625f: $96
    call c, $9aa1                                 ; $6260: $dc $a1 $9a
    ld e, e                                       ; $6263: $5b
    or d                                          ; $6264: $b2
    db $f4                                        ; $6265: $f4
    dec h                                         ; $6266: $25
    cpl                                           ; $6267: $2f
    cp $00                                        ; $6268: $fe $00
    cpl                                           ; $626a: $2f
    ld a, l                                       ; $626b: $7d
    ld h, a                                       ; $626c: $67
    ld a, [hl+]                                   ; $626d: $2a
    dec c                                         ; $626e: $0d
    ld a, [de]                                    ; $626f: $1a
    jp z, $ec79                                   ; $6270: $ca $79 $ec

    or h                                          ; $6273: $b4
    inc bc                                        ; $6274: $03
    rrca                                          ; $6275: $0f
    ld a, c                                       ; $6276: $79
    xor [hl]                                      ; $6277: $ae
    push hl                                       ; $6278: $e5
    call c, Call_049_4092                         ; $6279: $dc $92 $40
    sub [hl]                                      ; $627c: $96
    cp [hl]                                       ; $627d: $be
    dec bc                                        ; $627e: $0b
    adc l                                         ; $627f: $8d
    sbc d                                         ; $6280: $9a
    pop af                                        ; $6281: $f1
    ld bc, $9b6f                                  ; $6282: $01 $6f $9b
    pop de                                        ; $6285: $d1
    nop                                           ; $6286: $00
    ld h, $58                                     ; $6287: $26 $58
    adc b                                         ; $6289: $88
    pop bc                                        ; $628a: $c1
    jp nc, $f88c                                  ; $628b: $d2 $8c $f8

    rst $30                                       ; $628e: $f7
    jp z, Jump_000_2f01                           ; $628f: $ca $01 $2f

    sbc c                                         ; $6292: $99
    pop de                                        ; $6293: $d1
    ld a, h                                       ; $6294: $7c
    daa                                           ; $6295: $27
    ld c, l                                       ; $6296: $4d
    xor c                                         ; $6297: $a9
    ld h, [hl]                                    ; $6298: $66
    cp h                                          ; $6299: $bc
    sub a                                         ; $629a: $97
    and c                                         ; $629b: $a1
    sbc l                                         ; $629c: $9d
    ld a, a                                       ; $629d: $7f

jr_049_629e:
    push hl                                       ; $629e: $e5
    jp nc, Jump_000_268c                          ; $629f: $d2 $8c $26

    call $b948                                    ; $62a2: $cd $48 $b9
    ld h, l                                       ; $62a5: $65
    and l                                         ; $62a6: $a5
    ld l, l                                       ; $62a7: $6d
    and [hl]                                      ; $62a8: $a6
    push de                                       ; $62a9: $d5
    add d                                         ; $62aa: $82
    xor $36                                       ; $62ab: $ee $36
    ld e, [hl]                                    ; $62ad: $5e
    add h                                         ; $62ae: $84
    pop bc                                        ; $62af: $c1
    ld e, h                                       ; $62b0: $5c
    ld [hl-], a                                   ; $62b1: $32
    inc bc                                        ; $62b2: $03
    inc e                                         ; $62b3: $1c
    rra                                           ; $62b4: $1f
    ld d, a                                       ; $62b5: $57
    ld a, a                                       ; $62b6: $7f
    rla                                           ; $62b7: $17
    ld [hl], h                                    ; $62b8: $74
    ld b, d                                       ; $62b9: $42
    dec d                                         ; $62ba: $15
    rst $28                                       ; $62bb: $ef
    ld b, a                                       ; $62bc: $47
    dec bc                                        ; $62bd: $0b
    dec de                                        ; $62be: $1b
    ld c, l                                       ; $62bf: $4d
    ld h, l                                       ; $62c0: $65
    push af                                       ; $62c1: $f5
    cp b                                          ; $62c2: $b8
    ld [hl], e                                    ; $62c3: $73
    ld sp, $f37d                                  ; $62c4: $31 $7d $f3
    ld h, d                                       ; $62c7: $62
    sub a                                         ; $62c8: $97
    ld b, [hl]                                    ; $62c9: $46
    inc h                                         ; $62ca: $24
    ld h, $de                                     ; $62cb: $26 $de
    sbc [hl]                                      ; $62cd: $9e
    ld l, c                                       ; $62ce: $69
    ld c, [hl]                                    ; $62cf: $4e
    ld hl, sp+$4a                                 ; $62d0: $f8 $4a
    jr nz, @+$4d                                  ; $62d2: $20 $4b

    ccf                                           ; $62d4: $3f
    ld d, h                                       ; $62d5: $54

jr_049_62d6:
    dec bc                                        ; $62d6: $0b
    adc l                                         ; $62d7: $8d
    ld e, b                                       ; $62d8: $58
    ld sp, $d94a                                  ; $62d9: $31 $4a $d9
    ld l, c                                       ; $62dc: $69
    ld d, e                                       ; $62dd: $53
    adc h                                         ; $62de: $8c
    jr nz, @+$40                                  ; $62df: $20 $3e

    nop                                           ; $62e1: $00
    sub a                                         ; $62e2: $97
    ld d, c                                       ; $62e3: $51
    ld [hl], h                                    ; $62e4: $74
    or c                                          ; $62e5: $b1
    ld [$8295], sp                                ; $62e6: $08 $95 $82
    add a                                         ; $62e9: $87
    ret c                                         ; $62ea: $d8

    call c, $d4c9                                 ; $62eb: $dc $c9 $d4
    jp nz, $bcf2                                  ; $62ee: $c2 $f2 $bc

    pop af                                        ; $62f1: $f1
    jr nz, jr_049_6327                            ; $62f2: $20 $33

    ld d, d                                       ; $62f4: $52
    sbc l                                         ; $62f5: $9d
    rst $00                                       ; $62f6: $c7
    inc b                                         ; $62f7: $04
    di                                            ; $62f8: $f3
    add $0b                                       ; $62f9: $c6 $0b
    or c                                          ; $62fb: $b1
    inc [hl]                                      ; $62fc: $34
    ld a, [$15e9]                                 ; $62fd: $fa $e9 $15
    inc a                                         ; $6300: $3c
    xor h                                         ; $6301: $ac
    ld b, e                                       ; $6302: $43
    cp [hl]                                       ; $6303: $be
    pop af                                        ; $6304: $f1
    xor [hl]                                      ; $6305: $ae
    xor c                                         ; $6306: $a9
    add l                                         ; $6307: $85
    jr jr_049_62d6                                ; $6308: $18 $cc

    or l                                          ; $630a: $b5
    ld e, h                                       ; $630b: $5c
    ldh a, [$9d]                                  ; $630c: $f0 $9d

jr_049_630e:
    dec hl                                        ; $630e: $2b
    rlca                                          ; $630f: $07
    cpl                                           ; $6310: $2f
    or l                                          ; $6311: $b5
    rla                                           ; $6312: $17
    dec bc                                        ; $6313: $0b
    bit 0, e                                      ; $6314: $cb $43
    or l                                          ; $6316: $b5
    ld [hl], $c7                                  ; $6317: $36 $c7
    rst $18                                       ; $6319: $df
    dec l                                         ; $631a: $2d
    adc c                                         ; $631b: $89
    cp [hl]                                       ; $631c: $be
    jp $e341                                      ; $631d: $c3 $41 $e3


    cp l                                          ; $6320: $bd

jr_049_6321:
    ld b, d                                       ; $6321: $42
    ld e, a                                       ; $6322: $5f
    ld d, h                                       ; $6323: $54
    and l                                         ; $6324: $a5
    ld a, $ed                                     ; $6325: $3e $ed

jr_049_6327:
    ret                                           ; $6327: $c9


    db $f4                                        ; $6328: $f4
    dec h                                         ; $6329: $25
    adc l                                         ; $632a: $8d
    add hl, bc                                    ; $632b: $09
    ld d, $b6                                     ; $632c: $16 $b6
    ld [hl+], a                                   ; $632e: $22
    ld e, [hl]                                    ; $632f: $5e
    add h                                         ; $6330: $84
    pop bc                                        ; $6331: $c1
    ld c, d                                       ; $6332: $4a
    ld b, $0f                                     ; $6333: $06 $0f
    cp c                                          ; $6335: $b9
    ld h, h                                       ; $6336: $64
    sub [hl]                                      ; $6337: $96
    inc bc                                        ; $6338: $03
    ld d, l                                       ; $6339: $55
    db $ec                                        ; $633a: $ec
    jr c, jr_049_6321                             ; $633b: $38 $e4

    rst $30                                       ; $633d: $f7
    and e                                         ; $633e: $a3
    add l                                         ; $633f: $85
    push hl                                       ; $6340: $e5
    ld [hl], c                                    ; $6341: $71
    rst $20                                       ; $6342: $e7
    ld e, d                                       ; $6343: $5a
    add d                                         ; $6344: $82
    ld h, [hl]                                    ; $6345: $66
    ld a, h                                       ; $6346: $7c
    nop                                           ; $6347: $00
    cpl                                           ; $6348: $2f
    ld a, l                                       ; $6349: $7d
    rst $20                                       ; $634a: $e7
    ld h, d                                       ; $634b: $62
    ld l, [hl]                                    ; $634c: $6e
    xor e                                         ; $634d: $ab
    and a                                         ; $634e: $a7
    inc e                                         ; $634f: $1c
    jr c, jr_049_630e                             ; $6350: $38 $bc

    ld a, [hl+]                                   ; $6352: $2a
    sbc $35                                       ; $6353: $de $35
    cp c                                          ; $6355: $b9
    di                                            ; $6356: $f3
    ld [hl], a                                    ; $6357: $77
    ld d, $74                                     ; $6358: $16 $74
    and a                                         ; $635a: $a7
    ld [$509d], a                                 ; $635b: $ea $9d $50
    db $eb                                        ; $635e: $eb
    and $c2                                       ; $635f: $e6 $c2
    ld l, d                                       ; $6361: $6a
    xor b                                         ; $6362: $a8
    ld a, c                                       ; $6363: $79
    or c                                          ; $6364: $b1
    ret z                                         ; $6365: $c8

    adc h                                         ; $6366: $8c
    add [hl]                                      ; $6367: $86
    ld [hl], d                                    ; $6368: $72
    ld b, d                                       ; $6369: $42
    ld [hl], e                                    ; $636a: $73
    ld e, c                                       ; $636b: $59
    sbc $09                                       ; $636c: $de $09
    or l                                          ; $636e: $b5
    rst $28                                       ; $636f: $ef
    ld [$c503], sp                                ; $6370: $08 $03 $c5
    inc sp                                        ; $6373: $33
    res 0, l                                      ; $6374: $cb $85
    push hl                                       ; $6376: $e5
    ld [hl], c                                    ; $6377: $71
    and e                                         ; $6378: $a3
    xor b                                         ; $6379: $a8
    add hl, de                                    ; $637a: $19
    rra                                           ; $637b: $1f
    ld d, a                                       ; $637c: $57
    adc l                                         ; $637d: $8d
    rla                                           ; $637e: $17
    db $fd                                        ; $637f: $fd
    ld a, [c]                                     ; $6380: $f2
    jp nz, $3b46                                  ; $6381: $c2 $46 $3b

    ld h, e                                       ; $6384: $63
    sub b                                         ; $6385: $90
    ld [c], a                                     ; $6386: $e2
    rrca                                          ; $6387: $0f
    ld c, a                                       ; $6388: $4f
    ld l, d                                       ; $6389: $6a
    dec d                                         ; $638a: $15
    ld d, h                                       ; $638b: $54
    ret nc                                        ; $638c: $d0

    ld e, b                                       ; $638d: $58
    ld de, $ec5f                                  ; $638e: $11 $5f $ec
    jp nc, $c488                                  ; $6391: $d2 $88 $c4

    ld e, h                                       ; $6394: $5c
    db $ec                                        ; $6395: $ec
    call nc, $c2d2                                ; $6396: $d4 $d2 $c2
    ld [$6646], a                                 ; $6399: $ea $46 $66
    ld a, d                                       ; $639c: $7a
    sub b                                         ; $639d: $90
    sub e                                         ; $639e: $93
    inc c                                         ; $639f: $0c
    call z, $f144                                 ; $63a0: $cc $44 $f1
    ld bc, $9157                                  ; $63a3: $01 $57 $91
    add a                                         ; $63a6: $87
    ld l, d                                       ; $63a7: $6a
    ld h, c                                       ; $63a8: $61
    ld a, c                                       ; $63a9: $79
    ld c, l                                       ; $63aa: $4d
    inc b                                         ; $63ab: $04
    dec e                                         ; $63ac: $1d
    ld h, h                                       ; $63ad: $64
    ld b, [hl]                                    ; $63ae: $46
    xor d                                         ; $63af: $aa
    sub e                                         ; $63b0: $93
    ccf                                           ; $63b1: $3f
    ld sp, $79c8                                  ; $63b2: $31 $c8 $79
    db $e3                                        ; $63b5: $e3
    and c                                         ; $63b6: $a1
    sbc h                                         ; $63b7: $9c
    db $fc                                        ; $63b8: $fc
    add hl, sp                                    ; $63b9: $39
    rla                                           ; $63ba: $17
    db $d3                                        ; $63bb: $d3
    scf                                           ; $63bc: $37
    db $e3                                        ; $63bd: $e3
    inc bc                                        ; $63be: $03
    rst $08                                       ; $63bf: $cf

Jump_049_63c0:
    db $fd                                        ; $63c0: $fd
    ld a, [$7a81]                                 ; $63c1: $fa $81 $7a
    or e                                          ; $63c4: $b3
    cp h                                          ; $63c5: $bc
    ret c                                         ; $63c6: $d8

    and l                                         ; $63c7: $a5
    ld de, $1189                                  ; $63c8: $11 $89 $11
    cp a                                          ; $63cb: $bf
    ld l, e                                       ; $63cc: $6b
    ld [hl], d                                    ; $63cd: $72
    and b                                         ; $63ce: $a0
    dec d                                         ; $63cf: $15
    dec l                                         ; $63d0: $2d
    add sp, -$12                                  ; $63d1: $e8 $ee
    ld a, e                                       ; $63d3: $7b
    ld [hl], b                                    ; $63d4: $70
    sub b                                         ; $63d5: $90
    sub e                                         ; $63d6: $93
    call c, $fb9c                                 ; $63d7: $dc $9c $fb
    ccf                                           ; $63da: $3f
    db $ed                                        ; $63db: $ed
    add hl, sp                                    ; $63dc: $39
    ld b, d                                       ; $63dd: $42
    sub c                                         ; $63de: $91
    add sp, $37                                   ; $63df: $e8 $37
    db $fd                                        ; $63e1: $fd
    and a                                         ; $63e2: $a7
    dec [hl]                                      ; $63e3: $35
    ld d, a                                       ; $63e4: $57
    sbc d                                         ; $63e5: $9a
    ld h, d                                       ; $63e6: $62
    inc sp                                        ; $63e7: $33
    ld e, [hl]                                    ; $63e8: $5e
    sbc e                                         ; $63e9: $9b
    ld c, e                                       ; $63ea: $4b
    xor h                                         ; $63eb: $ac
    ld [hl], e                                    ; $63ec: $73
    ld [$4414], a                                 ; $63ed: $ea $14 $44
    ld [hl], l                                    ; $63f0: $75
    db $e4                                        ; $63f1: $e4
    jr nc, jr_049_640b                            ; $63f2: $30 $17

    ld [hl], h                                    ; $63f4: $74
    ld a, [bc]                                    ; $63f5: $0a
    and d                                         ; $63f6: $a2
    ld a, [hl-]                                   ; $63f7: $3a
    or d                                          ; $63f8: $b2
    add hl, hl                                    ; $63f9: $29
    db $fc                                        ; $63fa: $fc
    jp z, $00f8                                   ; $63fb: $ca $f8 $00

    sub a                                         ; $63fe: $97
    dec d                                         ; $63ff: $15
    ld d, $74                                     ; $6400: $16 $74
    ld h, c                                       ; $6402: $61
    ld a, c                                       ; $6403: $79
    ld a, [c]                                     ; $6404: $f2
    daa                                           ; $6405: $27
    ld b, $39                                     ; $6406: $06 $39
    ld d, b                                       ; $6408: $50
    rst $30                                       ; $6409: $f7
    and a                                         ; $640a: $a7

jr_049_640b:
    ld l, a                                       ; $640b: $6f
    ld e, [hl]                                    ; $640c: $5e
    db $ec                                        ; $640d: $ec
    jp nc, $c488                                  ; $640e: $d2 $88 $c4

    ld e, h                                       ; $6411: $5c

Call_049_6412:
    add hl, sp                                    ; $6412: $39
    nop                                           ; $6413: $00
    cpl                                           ; $6414: $2f
    or l                                          ; $6415: $b5
    rla                                           ; $6416: $17
    rl d                                          ; $6417: $cb $12
    ld l, b                                       ; $6419: $68
    xor d                                         ; $641a: $aa
    ld [hl], c                                    ; $641b: $71
    rst $20                                       ; $641c: $e7
    ld h, d                                       ; $641d: $62
    ld a, [$7c66]                                 ; $641e: $fa $66 $7c
    nop                                           ; $6421: $00
    xor a                                         ; $6422: $af
    ret nc                                        ; $6423: $d0

    rla                                           ; $6424: $17
    ld e, d                                       ; $6425: $5a
    ld e, d                                       ; $6426: $5a
    ld e, b                                       ; $6427: $58
    ld e, [hl]                                    ; $6428: $5e
    ld a, [hl]                                    ; $6429: $7e
    or b                                          ; $642a: $b0
    ld [hl], $55                                  ; $642b: $36 $55
    cp h                                          ; $642d: $bc
    ld l, e                                       ; $642e: $6b
    ld [hl], d                                    ; $642f: $72
    daa                                           ; $6430: $27
    call nc, Call_000_2c4b                        ; $6431: $d4 $4b $2c
    rst $08                                       ; $6434: $cf
    dec de                                        ; $6435: $1b
    cpl                                           ; $6436: $2f
    call nz, $be60                                ; $6437: $c4 $60 $be
    dec bc                                        ; $643a: $0b
    xor e                                         ; $643b: $ab
    dec sp                                        ; $643c: $3b
    dec b                                         ; $643d: $05
    rrca                                          ; $643e: $0f
    rst $38                                       ; $643f: $ff
    rst $10                                       ; $6440: $d7
    jp $ef9c                                      ; $6441: $c3 $9c $ef


    jp nz, $daa6                                  ; $6444: $c2 $a6 $da

    cp c                                          ; $6447: $b9
    inc l                                         ; $6448: $2c
    cp $00                                        ; $6449: $fe $00
    sub a                                         ; $644b: $97
    dec d                                         ; $644c: $15
    ld d, $74                                     ; $644d: $16 $74
    ld h, c                                       ; $644f: $61
    ld a, c                                       ; $6450: $79
    ld a, [c]                                     ; $6451: $f2
    daa                                           ; $6452: $27
    ld b, $b9                                     ; $6453: $06 $b9
    ld [hl], h                                    ; $6455: $74
    ld b, $ea                                     ; $6456: $06 $ea
    cp $f4                                        ; $6458: $fe $f4
    call Call_049_5d8b                            ; $645a: $cd $8b $5d
    ld a, [de]                                    ; $645d: $1a
    sub c                                         ; $645e: $91
    sbc b                                         ; $645f: $98
    dec hl                                        ; $6460: $2b
    rlca                                          ; $6461: $07
    cpl                                           ; $6462: $2f
    or l                                          ; $6463: $b5
    rla                                           ; $6464: $17
    dec bc                                        ; $6465: $0b
    ld sp, $fe98                                  ; $6466: $31 $98 $fe
    rra                                           ; $6469: $1f
    ld [c], a                                     ; $646a: $e2
    push hl                                       ; $646b: $e5
    rlca                                          ; $646c: $07
    ld d, e                                       ; $646d: $53
    call c, $b57a                                 ; $646e: $dc $7a $b5
    ld [de], a                                    ; $6471: $12
    ld l, b                                       ; $6472: $68
    xor d                                         ; $6473: $aa
    cp c                                          ; $6474: $b9
    add h                                         ; $6475: $84
    pop bc                                        ; $6476: $c1
    add sp, -$59                                  ; $6477: $e8 $a7
    adc a                                         ; $6479: $8f
    rrca                                          ; $647a: $0f
    rst $10                                       ; $647b: $d7
    cp e                                          ; $647c: $bb
    add sp, -$69                                  ; $647d: $e8 $97
    rla                                           ; $647f: $17
    ld [hl], $9a                                  ; $6480: $36 $9a
    adc e                                         ; $6482: $8b
    jp hl                                         ; $6483: $e9


    sbc e                                         ; $6484: $9b
    pop af                                        ; $6485: $f1
    ld e, [hl]                                    ; $6486: $5e
    rst $20                                       ; $6487: $e7
    ld [$9d45], a                                 ; $6488: $ea $45 $9d
    ld l, c                                       ; $648b: $69
    dec d                                         ; $648c: $15
    ld d, h                                       ; $648d: $54
    ret nc                                        ; $648e: $d0

    ld e, b                                       ; $648f: $58
    ld de, $b12f                                  ; $6490: $11 $2f $b1
    cp h                                          ; $6493: $bc
    db $fc                                        ; $6494: $fc
    ld h, b                                       ; $6495: $60
    ld l, l                                       ; $6496: $6d
    xor d                                         ; $6497: $aa
    ld [hl], c                                    ; $6498: $71
    ld [hl], l                                    ; $6499: $75
    dec e                                         ; $649a: $1d
    ld [de], a                                    ; $649b: $12
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00
    rst $10                                       ; $649e: $d7
    cp e                                          ; $649f: $bb
    or b                                          ; $64a0: $b0
    ld [bc], a                                    ; $64a1: $02
    cpl                                           ; $64a2: $2f
    add sp, $3e                                   ; $64a3: $e8 $3e
    db $e4                                        ; $64a5: $e4
    ret                                           ; $64a6: $c9


    ldh [rNR42], a                                ; $64a7: $e0 $21
    cpl                                           ; $64a9: $2f
    or c                                          ; $64aa: $b1
    inc a                                         ; $64ab: $3c
    rst $30                                       ; $64ac: $f7
    ld l, e                                       ; $64ad: $6b
    add c                                         ; $64ae: $81
    inc c                                         ; $64af: $0c
    ld e, $72                                     ; $64b0: $1e $72
    cp h                                          ; $64b2: $bc
    ld l, e                                       ; $64b3: $6b
    ld [hl], d                                    ; $64b4: $72
    ld c, h                                       ; $64b5: $4c
    sub l                                         ; $64b6: $95
    cp e                                          ; $64b7: $bb
    ld [hl], a                                    ; $64b8: $77
    sub b                                         ; $64b9: $90
    sub e                                         ; $64ba: $93
    inc a                                         ; $64bb: $3c
    inc de                                        ; $64bc: $13
    call $dcb5                                    ; $64bd: $cd $b5 $dc
    ld [hl], e                                    ; $64c0: $73
    add h                                         ; $64c1: $84
    ld [hl+], a                                   ; $64c2: $22
    pop de                                        ; $64c3: $d1
    ld l, a                                       ; $64c4: $6f
    ld a, [$6a4f]                                 ; $64c5: $fa $4f $6a
    ld a, [bc]                                    ; $64c8: $0a
    cp $a9                                        ; $64c9: $fe $a9
    pop af                                        ; $64cb: $f1
    ld bc, $1c71                                  ; $64cc: $01 $71 $1c
    ei                                            ; $64cf: $fb
    adc $6d                                       ; $64d0: $ce $6d
    adc c                                         ; $64d2: $89
    or c                                          ; $64d3: $b1
    jp hl                                         ; $64d4: $e9


    ld a, e                                       ; $64d5: $7b
    ld d, a                                       ; $64d6: $57
    db $eb                                        ; $64d7: $eb
    sbc h                                         ; $64d8: $9c
    ld d, h                                       ; $64d9: $54

jr_049_64da:
    ld d, a                                       ; $64da: $57
    ld hl, sp-$31                                 ; $64db: $f8 $cf
    rra                                           ; $64dd: $1f
    and c                                         ; $64de: $a1
    add d                                         ; $64df: $82
    add a                                         ; $64e0: $87
    sbc l                                         ; $64e1: $9d
    ld d, b                                       ; $64e2: $50
    dec a                                         ; $64e3: $3d
    pop bc                                        ; $64e4: $c1
    ld c, b                                       ; $64e5: $48
    ld sp, $6977                                  ; $64e6: $31 $77 $69
    di                                            ; $64e9: $f3
    db $dd                                        ; $64ea: $dd
    ld a, e                                       ; $64eb: $7b
    dec l                                         ; $64ec: $2d
    and h                                         ; $64ed: $a4
    ld hl, sp+$53                                 ; $64ee: $f8 $53
    inc [hl]                                      ; $64f0: $34
    rst $10                                       ; $64f1: $d7
    ld [hl], d                                    ; $64f2: $72
    rst $30                                       ; $64f3: $f7
    sbc $ff                                       ; $64f4: $de $ff
    ldh a, [rNR44]                                ; $64f6: $f0 $23
    ld [hl], c                                    ; $64f8: $71
    inc e                                         ; $64f9: $1c
    rra                                           ; $64fa: $1f
    sub a                                         ; $64fb: $97
    ld b, [hl]                                    ; $64fc: $46
    inc h                                         ; $64fd: $24
    and $62                                       ; $64fe: $e6 $62
    ld b, c                                       ; $6500: $41
    rla                                           ; $6501: $17
    ld d, [hl]                                    ; $6502: $56
    ldh [rLYC], a                                 ; $6503: $e0 $45
    sbc l                                         ; $6505: $9d
    ld [hl], $6e                                  ; $6506: $36 $6e
    ld c, [hl]                                    ; $6508: $4e
    pop bc                                        ; $6509: $c1
    ld b, e                                       ; $650a: $43
    ld b, d                                       ; $650b: $42
    add hl, hl                                    ; $650c: $29
    sbc e                                         ; $650d: $9b
    ld [c], a                                     ; $650e: $e2
    rst $30                                       ; $650f: $f7
    and d                                         ; $6510: $a2
    add hl, de                                    ; $6511: $19
    dec c                                         ; $6512: $0d
    push hl                                       ; $6513: $e5
    sbc b                                         ; $6514: $98
    ld a, [hl+]                                   ; $6515: $2a
    rlca                                          ; $6516: $07
    jp c, Jump_049_615c                           ; $6517: $da $5c $61

    inc sp                                        ; $651a: $33
    reti                                          ; $651b: $d9


    jr nz, jr_049_6545                            ; $651c: $20 $27

    cp c                                          ; $651e: $b9
    add hl, sp                                    ; $651f: $39
    inc de                                        ; $6520: $13
    ld e, l                                       ; $6521: $5d
    call z, Call_049_6eb4                         ; $6522: $cc $b4 $6e
    ld [hl], e                                    ; $6525: $73
    sub c                                         ; $6526: $91
    add hl, de                                    ; $6527: $19
    call $a077                                    ; $6528: $cd $77 $a0
    ld [bc], a                                    ; $652b: $02
    add hl, sp                                    ; $652c: $39
    jr z, jr_049_64da                             ; $652d: $28 $ab

    ld sp, $dd90                                  ; $652f: $31 $90 $dd
    add e                                         ; $6532: $83
    ld [hl], e                                    ; $6533: $73
    rst $38                                       ; $6534: $ff
    and a                                         ; $6535: $a7
    add l                                         ; $6536: $85
    push hl                                       ; $6537: $e5
    add hl, hl                                    ; $6538: $29
    cp $d4                                        ; $6539: $fe $d4
    adc h                                         ; $653b: $8c
    rrca                                          ; $653c: $0f
    ld c, a                                       ; $653d: $4f
    ld l, d                                       ; $653e: $6a
    add $c0                                       ; $653f: $c6 $c0
    xor a                                         ; $6541: $af
    call Call_000_34b5                            ; $6542: $cd $b5 $34

jr_049_6545:
    db $d3                                        ; $6545: $d3
    ld l, d                                       ; $6546: $6a
    ld b, c                                       ; $6547: $41
    rla                                           ; $6548: $17
    ld h, c                                       ; $6549: $61
    sub b                                         ; $654a: $90
    db $d3                                        ; $654b: $d3
    ld e, a                                       ; $654c: $5f
    sbc d                                         ; $654d: $9a
    jp hl                                         ; $654e: $e9


    add hl, bc                                    ; $654f: $09
    dec a                                         ; $6550: $3d
    rst $38                                       ; $6551: $ff
    ld c, d                                       ; $6552: $4a
    adc [hl]                                      ; $6553: $8e
    rst $30                                       ; $6554: $f7
    ld a, [$1227]                                 ; $6555: $fa $27 $12
    inc sp                                        ; $6558: $33
    rst $30                                       ; $6559: $f7
    ld a, a                                       ; $655a: $7f
    sbc d                                         ; $655b: $9a
    rst $28                                       ; $655c: $ef
    ld e, $9c                                     ; $655d: $1e $9c
    ld h, d                                       ; $655f: $62
    ld [hl-], a                                   ; $6560: $32
    ld de, $24e4                                  ; $6561: $11 $e4 $24
    scf                                           ; $6564: $37
    rst $20                                       ; $6565: $e7
    cp $4f                                        ; $6566: $fe $4f
    dec bc                                        ; $6568: $0b
    bit 6, e                                      ; $6569: $cb $73
    ld c, e                                       ; $656b: $4b
    adc d                                         ; $656c: $8a
    ccf                                           ; $656d: $3f
    dec [hl]                                      ; $656e: $35
    rst $20                                       ; $656f: $e7
    ld e, d                                       ; $6570: $5a
    adc $77                                       ; $6571: $ce $77
    cp d                                          ; $6573: $ba
    ld a, [hl+]                                   ; $6574: $2a
    ld a, $00                                     ; $6575: $3e $00
    rst $10                                       ; $6577: $d7
    db $e4                                        ; $6578: $e4
    jp nz, Jump_049_6b0a                          ; $6579: $c2 $0a $6b

    ld [hl], e                                    ; $657c: $73
    ld a, [c]                                     ; $657d: $f2
    daa                                           ; $657e: $27
    ld b, $39                                     ; $657f: $06 $39
    rst $18                                       ; $6581: $df
    cp c                                          ; $6582: $b9
    rst $38                                       ; $6583: $ff
    sub e                                         ; $6584: $93
    xor a                                         ; $6585: $af
    ld b, e                                       ; $6586: $43
    ld [hl], e                                    ; $6587: $73
    sub b                                         ; $6588: $90
    ld [hl], a                                    ; $6589: $77
    add $e6                                       ; $658a: $c6 $e6
    inc d                                         ; $658c: $14
    inc a                                         ; $658d: $3c
    call nz, $f372                                ; $658e: $c4 $72 $f3
    ld h, d                                       ; $6591: $62
    sub c                                         ; $6592: $91
    add hl, de                                    ; $6593: $19
    call Call_000_1afd                            ; $6594: $cd $fd $1a
    inc [hl]                                      ; $6597: $34
    push de                                       ; $6598: $d5
    ld [hl+], a                                   ; $6599: $22
    inc c                                         ; $659a: $0c
    halt                                          ; $659b: $76
    ld [hl-], a                                   ; $659c: $32
    or l                                          ; $659d: $b5
    or b                                          ; $659e: $b0
    cp h                                          ; $659f: $bc
    xor b                                         ; $65a0: $a8
    and l                                         ; $65a1: $a5
    ld l, c                                       ; $65a2: $69
    ld [hl], e                                    ; $65a3: $73
    sbc e                                         ; $65a4: $9b
    cp [hl]                                       ; $65a5: $be
    ld e, d                                       ; $65a6: $5a
    ld [$843a], a                                 ; $65a7: $ea $3a $84
    jr nz, jr_049_65ea                            ; $65aa: $20 $3e

    nop                                           ; $65ac: $00
    cpl                                           ; $65ad: $2f
    or l                                          ; $65ae: $b5
    rla                                           ; $65af: $17
    adc e                                         ; $65b0: $8b
    call z, $2868                                 ; $65b1: $cc $68 $28
    rla                                           ; $65b4: $17
    ld d, [hl]                                    ; $65b5: $56
    ld e, b                                       ; $65b6: $58
    ld h, d                                       ; $65b7: $62
    ld a, c                                       ; $65b8: $79
    add l                                         ; $65b9: $85
    add a                                         ; $65ba: $87
    cp h                                          ; $65bb: $bc
    rrca                                          ; $65bc: $0f
    add c                                         ; $65bd: $81
    ld [$7c72], a                                 ; $65be: $ea $72 $7c
    nop                                           ; $65c1: $00
    cpl                                           ; $65c2: $2f
    or l                                          ; $65c3: $b5
    pop af                                        ; $65c4: $f1
    ld e, [hl]                                    ; $65c5: $5e
    inc [hl]                                      ; $65c6: $34
    and e                                         ; $65c7: $a3
    sbc c                                         ; $65c8: $99
    ld d, [hl]                                    ; $65c9: $56
    dec hl                                        ; $65ca: $2b
    xor l                                         ; $65cb: $ad
    call $ce61                                    ; $65cc: $cd $61 $ce
    ld [hl], a                                    ; $65cf: $77
    ld a, [bc]                                    ; $65d0: $0a
    ld e, $fe                                     ; $65d1: $1e $fe
    xor a                                         ; $65d3: $af
    add a                                         ; $65d4: $87
    ld [$e762], a                                 ; $65d5: $ea $62 $e7
    ld e, a                                       ; $65d8: $5f
    ret                                           ; $65d9: $c9


    dec bc                                        ; $65da: $0b
    ld sp, $b9d8                                  ; $65db: $31 $d8 $b9
    or d                                          ; $65de: $b2
    or h                                          ; $65df: $b4
    ld [hl], $77                                  ; $65e0: $36 $77
    ld a, [hl+]                                   ; $65e2: $2a
    ld e, b                                       ; $65e3: $58
    sbc d                                         ; $65e4: $9a
    pop de                                        ; $65e5: $d1
    inc b                                         ; $65e6: $04
    rlca                                          ; $65e7: $07
    cp c                                          ; $65e8: $b9
    add hl, de                                    ; $65e9: $19

jr_049_65ea:
    rra                                           ; $65ea: $1f
    rst $10                                       ; $65eb: $d7
    db $e4                                        ; $65ec: $e4
    jp nz, $cb0a                                  ; $65ed: $c2 $0a $cb

    rrca                                          ; $65f0: $0f
    sub [hl]                                      ; $65f1: $96
    rst $38                                       ; $65f2: $ff
    inc hl                                        ; $65f3: $23
    xor a                                         ; $65f4: $af
    call Call_049_6641                            ; $65f5: $cd $41 $66
    and h                                         ; $65f8: $a4
    ld h, $7f                                     ; $65f9: $26 $7f
    ld h, d                                       ; $65fb: $62
    sub b                                         ; $65fc: $90
    inc bc                                        ; $65fd: $03
    dec a                                         ; $65fe: $3d
    ld h, e                                       ; $65ff: $63
    inc sp                                        ; $6600: $33
    sbc $33                                       ; $6601: $de $33
    add hl, sp                                    ; $6603: $39
    sub h                                         ; $6604: $94
    dec bc                                        ; $6605: $0b
    rst $38                                       ; $6606: $ff
    add a                                         ; $6607: $87
    ld d, [hl]                                    ; $6608: $56
    jp c, Jump_049_72ff                           ; $6609: $da $ff $72

    ld sp, hl                                     ; $660c: $f9
    ccf                                           ; $660d: $3f
    ld a, [c]                                     ; $660e: $f2
    jp c, Jump_000_171c                           ; $660f: $da $1c $17

Jump_049_6612:
    inc [hl]                                      ; $6612: $34
    rst $00                                       ; $6613: $c7
    sbc l                                         ; $6614: $9d
    db $fc                                        ; $6615: $fc
    ld d, c                                       ; $6616: $51
    inc sp                                        ; $6617: $33
    ld a, $00                                     ; $6618: $3e $00
    rst $10                                       ; $661a: $d7
    db $e4                                        ; $661b: $e4
    jp nz, $2b0a                                  ; $661c: $c2 $0a $2b

    db $ed                                        ; $661f: $ed
    ld a, a                                       ; $6620: $7f
    db $e4                                        ; $6621: $e4
    or l                                          ; $6622: $b5
    xor c                                         ; $6623: $a9
    or $dd                                        ; $6624: $f6 $dd
    jp nc, Jump_000_3d40                          ; $6626: $d2 $40 $3d

    db $fd                                        ; $6629: $fd
    rra                                           ; $662a: $1f
    ld sp, hl                                     ; $662b: $f9
    and l                                         ; $662c: $a5
    ld a, c                                       ; $662d: $79
    db $e3                                        ; $662e: $e3
    and c                                         ; $662f: $a1
    inc e                                         ; $6630: $1c
    rst $10                                       ; $6631: $d7
    ld l, l                                       ; $6632: $6d
    push af                                       ; $6633: $f5
    and b                                         ; $6634: $a0
    rra                                           ; $6635: $1f
    ld b, c                                       ; $6636: $41
    cp a                                          ; $6637: $bf
    ret                                           ; $6638: $c9


    ld h, [hl]                                    ; $6639: $66
    call nz, $d541                                ; $663a: $c4 $41 $d5
    ld b, d                                       ; $663d: $42
    di                                            ; $663e: $f3
    inc bc                                        ; $663f: $03
    dec b                                         ; $6640: $05

Call_049_6641:
    push hl                                       ; $6641: $e5
    ld h, [hl]                                    ; $6642: $66
    ld a, h                                       ; $6643: $7c
    nop                                           ; $6644: $00

Call_049_6645:
    cpl                                           ; $6645: $2f
    or l                                          ; $6646: $b5
    rla                                           ; $6647: $17
    inc sp                                        ; $6648: $33
    xor l                                         ; $6649: $ad
    db $db                                        ; $664a: $db
    ld e, h                                       ; $664b: $5c
    ld h, h                                       ; $664c: $64
    ld b, [hl]                                    ; $664d: $46
    add e                                         ; $664e: $83
    call z, Call_049_7548                         ; $664f: $cc $48 $75
    sub b                                         ; $6652: $90
    ld a, c                                       ; $6653: $79
    rst $18                                       ; $6654: $df
    adc h                                         ; $6655: $8c
    rrca                                          ; $6656: $0f
    cpl                                           ; $6657: $2f
    or l                                          ; $6658: $b5
    pop af                                        ; $6659: $f1
    ld e, [hl]                                    ; $665a: $5e
    inc [hl]                                      ; $665b: $34
    and e                                         ; $665c: $a3
    and c                                         ; $665d: $a1

jr_049_665e:
    ld e, h                                       ; $665e: $5c
    ld e, b                                       ; $665f: $58
    ld h, c                                       ; $6660: $61

jr_049_6661:
    and a                                         ; $6661: $a7
    ld [$8ffd], a                                 ; $6662: $ea $fd $8f
    cp h                                          ; $6665: $bc
    ld [hl], $67                                  ; $6666: $36 $67
    adc [hl]                                      ; $6668: $8e
    ld d, b                                       ; $6669: $50
    ld [bc], a                                    ; $666a: $02
    sbc b                                         ; $666b: $98
    dec e                                         ; $666c: $1d
    and $7c                                       ; $666d: $e6 $7c
    rst $20                                       ; $666f: $e7
    ld a, [hl]                                    ; $6670: $7e
    adc d                                         ; $6671: $8a
    and $5a                                       ; $6672: $e6 $5a
    xor [hl]                                      ; $6674: $ae
    call $9fc9                                    ; $6675: $cd $c9 $9f
    jr jr_049_665e                                ; $6678: $18 $e4

    ld b, b                                       ; $667a: $40
    rst $08                                       ; $667b: $cf
    ret c                                         ; $667c: $d8

    adc h                                         ; $667d: $8c
    rrca                                          ; $667e: $0f
    rst $10                                       ; $667f: $d7
    db $e4                                        ; $6680: $e4
    jp nz, $030a                                  ; $6681: $c2 $0a $03

    ld l, l                                       ; $6684: $6d
    ld c, $7d                                     ; $6685: $0e $7d
    cp e                                          ; $6687: $bb
    sub e                                         ; $6688: $93
    add hl, de                                    ; $6689: $19
    dec l                                         ; $668a: $2d
    add sp, -$3e                                  ; $668b: $e8 $c2
    ld a, [c]                                     ; $668d: $f2
    cp [hl]                                       ; $668e: $be
    ld e, e                                       ; $668f: $5b
    ld e, d                                       ; $6690: $5a
    ld e, b                                       ; $6691: $58
    add c                                         ; $6692: $81
    db $e3                                        ; $6693: $e3
    inc bc                                        ; $6694: $03
    sub a                                         ; $6695: $97
    dec d                                         ; $6696: $15
    ld d, $60                                     ; $6697: $16 $60
    or b                                          ; $6699: $b0
    ld [hl], $07                                  ; $669a: $36 $07
    sbc c                                         ; $669c: $99
    sub c                                         ; $669d: $91
    sbc d                                         ; $669e: $9a
    db $fc                                        ; $669f: $fc
    adc c                                         ; $66a0: $89
    ld b, c                                       ; $66a1: $41
    ld c, $f4                                     ; $66a2: $0e $f4
    adc h                                         ; $66a4: $8c
    call Call_000_072b                            ; $66a5: $cd $2b $07
    cpl                                           ; $66a8: $2f
    or l                                          ; $66a9: $b5
    pop af                                        ; $66aa: $f1
    ld e, [hl]                                    ; $66ab: $5e
    inc [hl]                                      ; $66ac: $34
    and e                                         ; $66ad: $a3
    ld b, l                                       ; $66ae: $45
    xor b                                         ; $66af: $a8
    inc d                                         ; $66b0: $14
    inc a                                         ; $66b1: $3c
    call nz, $a4e6                                ; $66b2: $c4 $e6 $a4
    sub e                                         ; $66b5: $93
    dec bc                                        ; $66b6: $0b
    cp d                                          ; $66b7: $ba
    ld [hl], $07                                  ; $66b8: $36 $07
    sbc c                                         ; $66ba: $99
    sub c                                         ; $66bb: $91
    ld [$9f4e], a                                 ; $66bc: $ea $4e $9f
    cp b                                          ; $66bf: $b8
    ld a, d                                       ; $66c0: $7a
    and b                                         ; $66c1: $a0
    ld [bc], a                                    ; $66c2: $02
    add hl, sp                                    ; $66c3: $39
    jr z, jr_049_6661                             ; $66c4: $28 $9b

    ei                                            ; $66c6: $fb
    pop de                                        ; $66c7: $d1
    jp nz, $e346                                  ; $66c8: $c2 $46 $e3

    ld c, [hl]                                    ; $66cb: $4e
    ld a, a                                       ; $66cc: $7f
    add hl, hl                                    ; $66cd: $29
    sbc e                                         ; $66ce: $9b
    pop af                                        ; $66cf: $f1
    ld bc, $e4d7                                  ; $66d0: $01 $d7 $e4
    jp nz, $fb0a                                  ; $66d3: $c2 $0a $fb

    rra                                           ; $66d6: $1f
    ld a, c                                       ; $66d7: $79
    ld l, l                                       ; $66d8: $6d
    adc $a5                                       ; $66d9: $ce $a5
    xor d                                         ; $66db: $aa
    ld l, d                                       ; $66dc: $6a
    inc c                                         ; $66dd: $0c
    db $e4                                        ; $66de: $e4

jr_049_66df:
    ld c, [hl]                                    ; $66df: $4e
    cp a                                          ; $66e0: $bf
    cp [hl]                                       ; $66e1: $be
    jp hl                                         ; $66e2: $e9


    daa                                           ; $66e3: $27
    ld a, a                                       ; $66e4: $7f
    ld h, d                                       ; $66e5: $62
    sub b                                         ; $66e6: $90
    inc bc                                        ; $66e7: $03
    dec a                                         ; $66e8: $3d
    ld h, e                                       ; $66e9: $63
    di                                            ; $66ea: $f3
    ld h, d                                       ; $66eb: $62
    sub c                                         ; $66ec: $91
    add hl, de                                    ; $66ed: $19
    call Call_000_2f1b                            ; $66ee: $cd $1b $2f
    inc [hl]                                      ; $66f1: $34
    ccf                                           ; $66f2: $3f
    db $d3                                        ; $66f3: $d3
    cp d                                          ; $66f4: $ba
    call Call_049_6645                            ; $66f5: $cd $45 $66
    or h                                          ; $66f8: $b4
    ld [hl], $07                                  ; $66f9: $36 $07
    sbc c                                         ; $66fb: $99
    sub c                                         ; $66fc: $91
    ld e, d                                       ; $66fd: $5a
    ld hl, sp-$41                                 ; $66fe: $f8 $bf
    ret z                                         ; $6700: $c8

    rst $00                                       ; $6701: $c7
    rlca                                          ; $6702: $07
    cpl                                           ; $6703: $2f
    or l                                          ; $6704: $b5
    pop af                                        ; $6705: $f1
    ld e, [hl]                                    ; $6706: $5e
    ld b, h                                       ; $6707: $44
    and l                                         ; $6708: $a5
    ldh [rNR42], a                                ; $6709: $e0 $21
    ld [hl], $17                                  ; $670b: $36 $17
    db $fd                                        ; $670d: $fd
    ld a, [c]                                     ; $670e: $f2
    add d                                         ; $670f: $82
    ld c, [hl]                                    ; $6710: $4e
    ld [hl], b                                    ; $6711: $70
    sub b                                         ; $6712: $90
    sbc e                                         ; $6713: $9b
    sub e                                         ; $6714: $93
    jr jr_049_66df                                ; $6715: $18 $c8

    ld h, [hl]                                    ; $6717: $66
    cp h                                          ; $6718: $bc
    rst $20                                       ; $6719: $e7
    ld a, a                                       ; $671a: $7f
    ld h, d                                       ; $671b: $62
    sub b                                         ; $671c: $90
    call Call_000_1585                            ; $671d: $cd $85 $15
    add h                                         ; $6720: $84
    and $da                                       ; $6721: $e6 $da
    ld e, h                                       ; $6723: $5c
    ld e, b                                       ; $6724: $58
    ld e, c                                       ; $6725: $59
    dec a                                         ; $6726: $3d
    or e                                          ; $6727: $b3
    inc e                                         ; $6728: $1c
    sub e                                         ; $6729: $93
    ld b, c                                       ; $672a: $41
    ld d, b                                       ; $672b: $50
    inc sp                                        ; $672c: $33
    ld a, $00                                     ; $672d: $3e $00
    cpl                                           ; $672f: $2f
    or l                                          ; $6730: $b5
    pop af                                        ; $6731: $f1
    ld l, $cd                                     ; $6732: $2e $cd
    rst $08                                       ; $6734: $cf
    dec de                                        ; $6735: $1b
    rrca                                          ; $6736: $0f
    inc [hl]                                      ; $6737: $34
    ld a, [$e6e5]                                 ; $6738: $fa $e5 $e6
    sub l                                         ; $673b: $95
    inc bc                                        ; $673c: $03
    cpl                                           ; $673d: $2f
    or l                                          ; $673e: $b5
    rla                                           ; $673f: $17
    adc e                                         ; $6740: $8b
    call z, $a668                                 ; $6741: $cc $68 $a6
    push de                                       ; $6744: $d5
    ld d, b                                       ; $6745: $50
    ld l, $6c                                     ; $6746: $2e $6c
    inc [hl]                                      ; $6748: $34
    ld l, $68                                     ; $6749: $2e $68
    jp z, $5d1f                                   ; $674b: $ca $1f $5d

    db $ec                                        ; $674e: $ec
    ld l, h                                       ; $674f: $6c
    ld a, d                                       ; $6750: $7a
    jr z, jr_049_67ca                             ; $6751: $28 $77

    ld e, e                                       ; $6753: $5b
    or h                                          ; $6754: $b4
    ld [hl], e                                    ; $6755: $73
    ld bc, $ce68                                  ; $6756: $01 $68 $ce
    dec de                                        ; $6759: $1b
    cpl                                           ; $675a: $2f
    ret nz                                        ; $675b: $c0

    ld h, b                                       ; $675c: $60
    ld h, c                                       ; $675d: $61
    and e                                         ; $675e: $a3
    sbc l                                         ; $675f: $9d
    ld d, b                                       ; $6760: $50
    di                                            ; $6761: $f3
    inc d                                         ; $6762: $14
    ld b, h                                       ; $6763: $44
    sub l                                         ; $6764: $95
    call $00f8                                    ; $6765: $cd $f8 $00

Call_049_6768:
    cpl                                           ; $6768: $2f
    add hl, de                                    ; $6769: $19
    dec sp                                        ; $676a: $3b
    ld c, $69                                     ; $676b: $0e $69
    inc c                                         ; $676d: $0c
    db $e4                                        ; $676e: $e4
    ld [de], a                                    ; $676f: $12
    set 4, d                                      ; $6770: $cb $e2
    rrca                                          ; $6772: $0f
    ld l, a                                       ; $6773: $6f
    dec de                                        ; $6774: $1b
    rst $28                                       ; $6775: $ef
    db $fc                                        ; $6776: $fc
    sbc l                                         ; $6777: $9d
    or l                                          ; $6778: $b5
    add hl, sp                                    ; $6779: $39
    ld sp, hl                                     ; $677a: $f9
    inc de                                        ; $677b: $13
    add e                                         ; $677c: $83
    ld e, h                                       ; $677d: $5c
    adc b                                         ; $677e: $88
    dec h                                         ; $677f: $25
    pop hl                                        ; $6780: $e1
    cp e                                          ; $6781: $bb
    call $bf45                                    ; $6782: $cd $45 $bf
    call c, $ff9c                                 ; $6785: $dc $9c $ff
    call Call_000_072b                            ; $6788: $cd $2b $07
    rst $10                                       ; $678b: $d7
    db $e4                                        ; $678c: $e4
    jp nz, Jump_000_0b0a                          ; $678d: $c2 $0a $0b

    xor e                                         ; $6790: $ab
    dec de                                        ; $6791: $1b
    sbc c                                         ; $6792: $99
    jp hl                                         ; $6793: $e9


    add c                                         ; $6794: $81
    ld [hl], $27                                  ; $6795: $36 $27
    ld a, a                                       ; $6797: $7f
    ld h, d                                       ; $6798: $62
    sub b                                         ; $6799: $90
    inc bc                                        ; $679a: $03
    dec a                                         ; $679b: $3d
    ld h, e                                       ; $679c: $63
    inc sp                                        ; $679d: $33
    ld a, $00                                     ; $679e: $3e $00
    cpl                                           ; $67a0: $2f
    or l                                          ; $67a1: $b5
    pop af                                        ; $67a2: $f1
    ld e, [hl]                                    ; $67a3: $5e
    ei                                            ; $67a4: $fb
    cp c                                          ; $67a5: $b9
    or a                                          ; $67a6: $b7
    dec de                                        ; $67a7: $1b
    ld d, l                                       ; $67a8: $55
    cpl                                           ; $67a9: $2f
    ld l, h                                       ; $67aa: $6c
    ld b, l                                       ; $67ab: $45
    cp h                                          ; $67ac: $bc
    ld [hl], $27                                  ; $67ad: $36 $27
    or h                                          ; $67af: $b4
    inc e                                         ; $67b0: $1c
    ld [hl], h                                    ; $67b1: $74
    and b                                         ; $67b2: $a0
    ld a, [de]                                    ; $67b3: $1a
    ld b, c                                       ; $67b4: $41
    ld b, a                                       ; $67b5: $47
    add $f1                                       ; $67b6: $c6 $f1
    xor [hl]                                      ; $67b8: $ae
    xor c                                         ; $67b9: $a9
    ld a, c                                       ; $67ba: $79
    db $e3                                        ; $67bb: $e3
    db $fd                                        ; $67bc: $fd
    cpl                                           ; $67bd: $2f
    rlca                                          ; $67be: $07
    ld a, [hl]                                    ; $67bf: $7e
    db $fd                                        ; $67c0: $fd
    sub l                                         ; $67c1: $95
    inc bc                                        ; $67c2: $03
    rst $10                                       ; $67c3: $d7
    cp e                                          ; $67c4: $bb
    add sp, -$69                                  ; $67c5: $e8 $97
    sub a                                         ; $67c7: $97
    ld h, [hl]                                    ; $67c8: $66
    inc [hl]                                      ; $67c9: $34

jr_049_67ca:
    pop bc                                        ; $67ca: $c1
    ld b, c                                       ; $67cb: $41
    ld l, [hl]                                    ; $67cc: $6e
    ld c, $98                                     ; $67cd: $0e $98
    ld h, l                                       ; $67cf: $65
    cp h                                          ; $67d0: $bc
    db $eb                                        ; $67d1: $eb
    sbc l                                         ; $67d2: $9d
    ld [hl], h                                    ; $67d3: $74
    sub d                                         ; $67d4: $92
    ld [hl], a                                    ; $67d5: $77
    xor d                                         ; $67d6: $aa
    sbc $c9                                       ; $67d7: $de $c9
    ld a, b                                       ; $67d9: $78
    ld [hl+], a                                   ; $67da: $22
    ld b, d                                       ; $67db: $42
    and l                                         ; $67dc: $a5
    ld a, [hl-]                                   ; $67dd: $3a
    db $ed                                        ; $67de: $ed
    ret nz                                        ; $67df: $c0

    ld b, e                                       ; $67e0: $43
    ld e, $a8                                     ; $67e1: $1e $a8
    ld b, b                                       ; $67e3: $40
    ld c, $ca                                     ; $67e4: $0e $ca
    ld h, [hl]                                    ; $67e6: $66
    ld a, h                                       ; $67e7: $7c
    nop                                           ; $67e8: $00
    ld c, a                                       ; $67e9: $4f
    ld l, d                                       ; $67ea: $6a
    ld e, l                                       ; $67eb: $5d
    or l                                          ; $67ec: $b5
    cpl                                           ; $67ed: $2f
    ld l, a                                       ; $67ee: $6f
    cp b                                          ; $67ef: $b8
    ret c                                         ; $67f0: $d8

    and l                                         ; $67f1: $a5
    ld de, $b989                                  ; $67f2: $11 $89 $b9
    ld [hl], d                                    ; $67f5: $72
    nop                                           ; $67f6: $00
    rst $10                                       ; $67f7: $d7
    db $e4                                        ; $67f8: $e4
    ld h, h                                       ; $67f9: $64
    dec hl                                        ; $67fa: $2b
    sub a                                         ; $67fb: $97
    push hl                                       ; $67fc: $e5
    add hl, sp                                    ; $67fd: $39
    ret z                                         ; $67fe: $c8

    dec bc                                        ; $67ff: $0b
    sla e                                         ; $6800: $cb $23
    or e                                          ; $6802: $b3
    ld l, b                                       ; $6803: $68
    call Call_000_0d9d                            ; $6804: $cd $9d $0d
    ld c, h                                       ; $6807: $4c
    ld [hl], b                                    ; $6808: $70
    sub b                                         ; $6809: $90
    sbc e                                         ; $680a: $9b
    jp Jump_000_1ab2                              ; $680b: $c3 $b2 $1a


    ld h, h                                       ; $680e: $64
    ld b, [hl]                                    ; $680f: $46
    ld l, d                                       ; $6810: $6a
    xor $ff                                       ; $6811: $ee $ff
    inc h                                         ; $6813: $24
    ld h, b                                       ; $6814: $60
    jr nc, jr_049_681c                            ; $6815: $30 $05

    rrca                                          ; $6817: $0f
    or c                                          ; $6818: $b1

Call_049_6819:
    call c, $0f8c                                 ; $6819: $dc $8c $0f

jr_049_681c:
    ld c, a                                       ; $681c: $4f
    ld a, [bc]                                    ; $681d: $0a
    ld [$c76b], a                                 ; $681e: $ea $6b $c7
    pop hl                                        ; $6821: $e1
    sbc l                                         ; $6822: $9d
    dec hl                                        ; $6823: $2b
    ld c, e                                       ; $6824: $4b
    ld [hl], e                                    ; $6825: $73
    dec l                                         ; $6826: $2d
    sub a                                         ; $6827: $97
    ld e, b                                       ; $6828: $58
    ld d, $7f                                     ; $6829: $16 $7f
    nop                                           ; $682b: $00
    xor a                                         ; $682c: $af
    dec hl                                        ; $682d: $2b
    ld d, $bf                                     ; $682e: $16 $bf
    ld l, e                                       ; $6830: $6b
    ld [hl], d                                    ; $6831: $72
    db $10                                        ; $6832: $10
    ld a, l                                       ; $6833: $7d
    and c                                         ; $6834: $a1
    and l                                         ; $6835: $a5
    ld a, l                                       ; $6836: $7d
    ld l, b                                       ; $6837: $68
    call c, $32e9                                 ; $6838: $dc $e9 $32
    scf                                           ; $683b: $37
    push bc                                       ; $683c: $c5
    rra                                           ; $683d: $1f
    ld c, a                                       ; $683e: $4f
    ld l, d                                       ; $683f: $6a
    or l                                          ; $6840: $b5
    and b                                         ; $6841: $a0
    dec sp                                        ; $6842: $3b
    and c                                         ; $6843: $a1
    and $8b                                       ; $6844: $e6 $8b
    ld b, l                                       ; $6846: $45
    ld h, [hl]                                    ; $6847: $66
    ld [hl], d                                    ; $6848: $72
    jr z, jr_049_68b2                             ; $6849: $28 $67

    sub [hl]                                      ; $684b: $96
    ld e, h                                       ; $684c: $5c
    reti                                          ; $684d: $d9


    call nz, $cd04                                ; $684e: $c4 $04 $cd
    dec [hl]                                      ; $6851: $35
    and a                                         ; $6852: $a7
    dec bc                                        ; $6853: $0b
    add [hl]                                      ; $6854: $86
    ld [hl], d                                    ; $6855: $72
    rst $20                                       ; $6856: $e7
    ld c, [hl]                                    ; $6857: $4e
    ld sp, $5499                                  ; $6858: $31 $99 $54
    inc sp                                        ; $685b: $33
    rlc l                                         ; $685c: $cb $05
    sbc l                                         ; $685e: $9d
    add e                                         ; $685f: $83

jr_049_6860:
    inc e                                         ; $6860: $1c
    rra                                           ; $6861: $1f
    ld c, a                                       ; $6862: $4f
    ld l, d                                       ; $6863: $6a
    or l                                          ; $6864: $b5
    and b                                         ; $6865: $a0
    dec sp                                        ; $6866: $3b
    and c                                         ; $6867: $a1
    and $79                                       ; $6868: $e6 $79
    db $e3                                        ; $686a: $e3
    and c                                         ; $686b: $a1
    inc e                                         ; $686c: $1c
    sub [hl]                                      ; $686d: $96
    push de                                       ; $686e: $d5
    call z, Call_049_4172                         ; $686f: $cc $72 $41
    rst $20                                       ; $6872: $e7
    jr nz, jr_049_6860                            ; $6873: $20 $eb

    add d                                         ; $6875: $82
    adc e                                         ; $6876: $8b
    ld b, l                                       ; $6877: $45
    cp a                                          ; $6878: $bf
    cp h                                          ; $6879: $bc
    and b                                         ; $687a: $a0
    dec sp                                        ; $687b: $3b
    add hl, de                                    ; $687c: $19

Call_049_687d:
    inc a                                         ; $687d: $3c
    db $e4                                        ; $687e: $e4
    and $f8                                       ; $687f: $e6 $f8
    di                                            ; $6881: $f3
    jp nc, Jump_000_3be6                          ; $6882: $d2 $e6 $3b

    ld e, l                                       ; $6885: $5d
    dec h                                         ; $6886: $25
    cp $00                                        ; $6887: $fe $00
    xor a                                         ; $6889: $af
    dec hl                                        ; $688a: $2b
    ld d, $bf                                     ; $688b: $16 $bf
    xor e                                         ; $688d: $ab
    dec e                                         ; $688e: $1d
    ld b, h                                       ; $688f: $44
    ld e, a                                       ; $6890: $5f
    ld d, h                                       ; $6891: $54
    and l                                         ; $6892: $a5
    ld a, $ed                                     ; $6893: $3e $ed
    ld e, h                                       ; $6895: $5c
    ret nz                                        ; $6896: $c0

    adc e                                         ; $6897: $8b
    ld d, b                                       ; $6898: $50
    add hl, hl                                    ; $6899: $29
    ld a, b                                       ; $689a: $78
    adc b                                         ; $689b: $88
    call $aa9d                                    ; $689c: $cd $9d $aa
    add a                                         ; $689f: $87
    ld h, l                                       ; $68a0: $65
    dec [hl]                                      ; $68a1: $35
    and c                                         ; $68a2: $a1
    jp c, Jump_000_1012                           ; $68a3: $da $12 $10

    ld b, $52                                     ; $68a6: $06 $52
    xor l                                         ; $68a8: $ad
    add hl, sp                                    ; $68a9: $39
    ld l, a                                       ; $68aa: $6f
    cp h                                          ; $68ab: $bc
    inc de                                        ; $68ac: $13
    ld [$5ca1], a                                 ; $68ad: $ea $a1 $5c
    ld h, d                                       ; $68b0: $62
    ld a, c                                       ; $68b1: $79

jr_049_68b2:
    ld de, $d52a                                  ; $68b2: $11 $2a $d5
    adc h                                         ; $68b5: $8c
    rrca                                          ; $68b6: $0f
    xor a                                         ; $68b7: $af
    dec hl                                        ; $68b8: $2b
    ld d, $bf                                     ; $68b9: $16 $bf
    or a                                          ; $68bb: $b7
    call $c2c0                                    ; $68bc: $cd $c0 $c2
    ld a, [c]                                     ; $68bf: $f2
    ld [de], a                                    ; $68c0: $12
    set 7, e                                      ; $68c1: $cb $fb
    pop de                                        ; $68c3: $d1
    ld [hl+], a                                   ; $68c4: $22
    inc c                                         ; $68c5: $0c
    add [hl]                                      ; $68c6: $86
    add hl, sp                                    ; $68c7: $39
    rst $18                                       ; $68c8: $df
    ld h, l                                       ; $68c9: $65
    dec d                                         ; $68ca: $15
    scf                                           ; $68cb: $37
    rst $00                                       ; $68cc: $c7
    db $dd                                        ; $68cd: $dd
    xor c                                         ; $68ce: $a9
    inc h                                         ; $68cf: $24
    sbc e                                         ; $68d0: $9b
    ld [c], a                                     ; $68d1: $e2
    rrca                                          ; $68d2: $0f
    ld l, a                                       ; $68d3: $6f
    ld a, l                                       ; $68d4: $7d
    dec c                                         ; $68d5: $0d
    sbc d                                         ; $68d6: $9a
    ld l, d                                       ; $68d7: $6a
    ld de, $8b06                                  ; $68d8: $11 $06 $8b
    inc c                                         ; $68db: $0c
    inc c                                         ; $68dc: $0c
    push hl                                       ; $68dd: $e5
    ld [de], a                                    ; $68de: $12
    res 0, e                                      ; $68df: $cb $83
    ret z                                         ; $68e1: $c8

    cp b                                          ; $68e2: $b8
    add hl, sp                                    ; $68e3: $39
    add $c0                                       ; $68e4: $c6 $c0
    scf                                           ; $68e6: $37
    push de                                       ; $68e7: $d5
    ld a, h                                       ; $68e8: $7c
    and a                                         ; $68e9: $a7
    xor e                                         ; $68ea: $ab
    ld [c], a                                     ; $68eb: $e2
    inc bc                                        ; $68ec: $03
    rst $08                                       ; $68ed: $cf
    reti                                          ; $68ee: $d9


    jp nc, $6459                                  ; $68ef: $d2 $59 $64

    ld b, [hl]                                    ; $68f2: $46
    rla                                           ; $68f3: $17
    or e                                          ; $68f4: $b3
    db $f4                                        ; $68f5: $f4
    dec h                                         ; $68f6: $25
    dec [hl]                                      ; $68f7: $35
    ld sp, hl                                     ; $68f8: $f9
    and e                                         ; $68f9: $a3
    dec b                                         ; $68fa: $05
    dec e                                         ; $68fb: $1d
    and $7c                                       ; $68fc: $e6 $7c
    rlca                                          ; $68fe: $07
    pop de                                        ; $68ff: $d1
    rla                                           ; $6900: $17
    ld [hl], h                                    ; $6901: $74
    and e                                         ; $6902: $a3
    ld h, [hl]                                    ; $6903: $66
    ld a, h                                       ; $6904: $7c
    nop                                           ; $6905: $00
    xor a                                         ; $6906: $af
    dec hl                                        ; $6907: $2b
    ld d, $bf                                     ; $6908: $16 $bf
    xor e                                         ; $690a: $ab
    sbc l                                         ; $690b: $9d
    ld l, $99                                     ; $690c: $2e $99
    pop de                                        ; $690e: $d1
    inc h                                         ; $690f: $24
    ld b, $92                                     ; $6910: $06 $92
    sub a                                         ; $6912: $97
    ld h, [hl]                                    ; $6913: $66
    or h                                          ; $6914: $b4
    sbc a                                         ; $6915: $9f
    ld a, [hl+]                                   ; $6916: $2a
    ld a, $00                                     ; $6917: $3e $00
    ld l, a                                       ; $6919: $6f
    ld [hl], a                                    ; $691a: $77
    jp nc, Jump_049_6cc9                          ; $691b: $d2 $c9 $6c

    ld l, $32                                     ; $691e: $2e $32
    and e                                         ; $6920: $a3
    add hl, bc                                    ; $6921: $09
    push hl                                       ; $6922: $e5
    jp nc, $cb12                                  ; $6923: $d2 $12 $cb

    add e                                         ; $6926: $83
    ret z                                         ; $6927: $c8

    cp b                                          ; $6928: $b8
    add hl, sp                                    ; $6929: $39
    add $c0                                       ; $692a: $c6 $c0
    scf                                           ; $692c: $37
    push de                                       ; $692d: $d5
    ld a, h                                       ; $692e: $7c
    and a                                         ; $692f: $a7
    xor e                                         ; $6930: $ab
    ld l, $66                                     ; $6931: $2e $66
    jp hl                                         ; $6933: $e9


    ld c, e                                       ; $6934: $4b
    ld l, d                                       ; $6935: $6a
    pop de                                        ; $6936: $d1
    cpl                                           ; $6937: $2f
    scf                                           ; $6938: $37
    ld [hl], a                                    ; $6939: $77
    ld [$04d2], a                                 ; $693a: $ea $d2 $04
    adc l                                         ; $693d: $8d
    add c                                         ; $693e: $81
    db $db                                        ; $693f: $db
    adc h                                         ; $6940: $8c
    rrca                                          ; $6941: $0f
    rst $08                                       ; $6942: $cf
    reti                                          ; $6943: $d9


    ld c, h                                       ; $6944: $4c
    xor e                                         ; $6945: $ab
    and b                                         ; $6946: $a0
    add d                                         ; $6947: $82
    add $8a                                       ; $6948: $c6 $8a
    ld a, b                                       ; $694a: $78
    and a                                         ; $694b: $a7
    ld [bc], a                                    ; $694c: $02
    pop af                                        ; $694d: $f1
    cp e                                          ; $694e: $bb
    ld h, $77                                     ; $694f: $26 $77
    ld b, d                                       ; $6951: $42
    cp l                                          ; $6952: $bd
    call nz, Call_000_3ef2                        ; $6953: $c4 $f2 $3e
    or h                                          ; $6956: $b4
    ld [$9c83], sp                                ; $6957: $08 $83 $9c
    db $fc                                        ; $695a: $fc
    ret nc                                        ; $695b: $d0

    inc h                                         ; $695c: $24
    ld h, c                                       ; $695d: $61
    nop                                           ; $695e: $00
    sbc d                                         ; $695f: $9a
    pop af                                        ; $6960: $f1
    ld bc, $e4d7                                  ; $6961: $01 $d7 $e4
    adc $df                                       ; $6964: $ce $df
    reti                                          ; $6966: $d9


    add hl, bc                                    ; $6967: $09
    or l                                          ; $6968: $b5
    ld l, [hl]                                    ; $6969: $6e
    adc $1b                                       ; $696a: $ce $1b
    rrca                                          ; $696c: $0f
    push hl                                       ; $696d: $e5
    and d                                         ; $696e: $a2
    ld d, [hl]                                    ; $696f: $56
    cp $dc                                        ; $6970: $fe $dc
    adc a                                         ; $6972: $8f
    ld d, $74                                     ; $6973: $16 $74
    call c, $d585                                 ; $6975: $dc $85 $d5
    ld d, b                                       ; $6978: $50
    di                                            ; $6979: $f3
    ld h, d                                       ; $697a: $62
    sub c                                         ; $697b: $91
    add hl, de                                    ; $697c: $19
    dec c                                         ; $697d: $0d
    push hl                                       ; $697e: $e5
    and d                                         ; $697f: $a2
    ld e, a                                       ; $6980: $5f
    ld e, [hl]                                    ; $6981: $5e
    adc b                                         ; $6982: $88
    and l                                         ; $6983: $a5
    add hl, bc                                    ; $6984: $09
    ld a, [de]                                    ; $6985: $1a
    inc bc                                        ; $6986: $03
    or a                                          ; $6987: $b7
    add hl, de                                    ; $6988: $19
    rra                                           ; $6989: $1f
    ld l, a                                       ; $698a: $6f
    or l                                          ; $698b: $b5
    ld a, d                                       ; $698c: $7a
    jp z, $c381                                   ; $698d: $ca $81 $c3

    xor e                                         ; $6990: $ab
    ld l, $76                                     ; $6991: $2e $76
    ld l, c                                       ; $6993: $69
    ld b, h                                       ; $6994: $44
    ld h, d                                       ; $6995: $62
    ld [c], a                                     ; $6996: $e2
    cp l                                          ; $6997: $bd
    ld d, l                                       ; $6998: $55
    ld [c], a                                     ; $6999: $e2
    ld [$9d45], a                                 ; $699a: $ea $45 $9d
    ld [hl], $2e                                  ; $699d: $36 $2e
    db $ed                                        ; $699f: $ed
    ld h, h                                       ; $69a0: $64
    cp h                                          ; $69a1: $bc
    jp nc, $0d50                                  ; $69a2: $d2 $50 $0d

    ld d, h                                       ; $69a5: $54
    xor b                                         ; $69a6: $a8
    ld b, e                                       ; $69a7: $43
    ld a, $3e                                     ; $69a8: $3e $3e
    nop                                           ; $69aa: $00
    rst $08                                       ; $69ab: $cf
    reti                                          ; $69ac: $d9


    jp nc, $6459                                  ; $69ad: $d2 $59 $64

    ld b, [hl]                                    ; $69b0: $46
    ld [hl], e                                    ; $69b1: $73
    rst $38                                       ; $69b2: $ff
    daa                                           ; $69b3: $27
    ld l, a                                       ; $69b4: $6f
    inc a                                         ; $69b5: $3c
    rst $18                                       ; $69b6: $df
    ld b, c                                       ; $69b7: $41
    db $f4                                        ; $69b8: $f4
    ld b, l                                       ; $69b9: $45
    ld d, l                                       ; $69ba: $55
    ld [$84d3], a                                 ; $69bb: $ea $d3 $84
    rst $38                                       ; $69be: $ff
    push de                                       ; $69bf: $d5
    ld c, [hl]                                    ; $69c0: $4e
    sbc a                                         ; $69c1: $9f
    inc a                                         ; $69c2: $3c
    rst $00                                       ; $69c3: $c7
    rlca                                          ; $69c4: $07
    ld l, a                                       ; $69c5: $6f
    or l                                          ; $69c6: $b5
    ld a, d                                       ; $69c7: $7a
    jp z, $c381                                   ; $69c8: $ca $81 $c3

    xor e                                         ; $69cb: $ab
    ld l, $76                                     ; $69cc: $2e $76
    ld l, c                                       ; $69ce: $69
    ld b, h                                       ; $69cf: $44
    ld h, d                                       ; $69d0: $62
    ld l, $16                                     ; $69d1: $2e $16
    ld [hl], h                                    ; $69d3: $74
    ld h, a                                       ; $69d4: $67
    ld b, a                                       ; $69d5: $47
    di                                            ; $69d6: $f3
    jp nz, Jump_049_4ef2                          ; $69d7: $c2 $f2 $4e

    push de                                       ; $69da: $d5
    and e                                         ; $69db: $a3
    ld a, d                                       ; $69dc: $7a
    rst $18                                       ; $69dd: $df
    adc h                                         ; $69de: $8c
    rrca                                          ; $69df: $0f
    rst $08                                       ; $69e0: $cf
    reti                                          ; $69e1: $d9


    jp nc, $6459                                  ; $69e2: $d2 $59 $64

    ld b, [hl]                                    ; $69e5: $46
    rla                                           ; $69e6: $17
    di                                            ; $69e7: $f3
    sbc l                                         ; $69e8: $9d
    ld l, $99                                     ; $69e9: $2e $99
    pop de                                        ; $69eb: $d1
    inc h                                         ; $69ec: $24
    ld b, $92                                     ; $69ed: $06 $92
    sub a                                         ; $69ef: $97
    ld h, [hl]                                    ; $69f0: $66
    or h                                          ; $69f1: $b4
    and b                                         ; $69f2: $a0
    pop af                                        ; $69f3: $f1
    ld bc, $9bcf                                  ; $69f4: $01 $cf $9b
    ld d, d                                       ; $69f7: $52
    call $b6c7                                    ; $69f8: $cd $c7 $b6
    db $fc                                        ; $69fb: $fc
    sbc a                                         ; $69fc: $9f
    db $fc                                        ; $69fd: $fc
    xor c                                         ; $69fe: $a9

Call_049_69ff:
    adc d                                         ; $69ff: $8a
    db $e3                                        ; $6a00: $e3
    db $ed                                        ; $6a01: $ed
    jp nc, $a100                                  ; $6a02: $d2 $00 $a1

    ld d, a                                       ; $6a05: $57
    dec bc                                        ; $6a06: $0b
    dec e                                         ; $6a07: $1d
    ld d, h                                       ; $6a08: $54
    ld b, c                                       ; $6a09: $41
    rra                                           ; $6a0a: $1f
    db $db                                        ; $6a0b: $db
    adc $0e                                       ; $6a0c: $ce $0e
    ld a, [$1553]                                 ; $6a0e: $fa $53 $15
    rst $00                                       ; $6a11: $c7
    rlca                                          ; $6a12: $07
    ld d, a                                       ; $6a13: $57
    dec sp                                        ; $6a14: $3b
    ld e, l                                       ; $6a15: $5d
    and l                                         ; $6a16: $a5
    sbc d                                         ; $6a17: $9a
    ld [hl], e                                    ; $6a18: $73
    rst $38                                       ; $6a19: $ff
    and a                                         ; $6a1a: $a7
    cp c                                          ; $6a1b: $b9
    sub [hl]                                      ; $6a1c: $96
    sbc $0c                                       ; $6a1d: $de $0c
    db $ec                                        ; $6a1f: $ec
    adc h                                         ; $6a20: $8c
    ld b, c                                       ; $6a21: $41
    adc $44                                       ; $6a22: $ce $44
    and b                                         ; $6a24: $a0
    ld a, [$cd43]                                 ; $6a25: $fa $43 $cd
    ld a, b                                       ; $6a28: $78
    rst $08                                       ; $6a29: $cf
    reti                                          ; $6a2a: $d9


    ld c, h                                       ; $6a2b: $4c
    xor e                                         ; $6a2c: $ab
    and b                                         ; $6a2d: $a0
    add d                                         ; $6a2e: $82
    add $8a                                       ; $6a2f: $c6 $8a
    ld a, b                                       ; $6a31: $78
    and [hl]                                      ; $6a32: $a6
    ld [hl], l                                    ; $6a33: $75
    inc hl                                        ; $6a34: $23
    inc sp                                        ; $6a35: $33
    cp l                                          ; $6a36: $bd
    inc [hl]                                      ; $6a37: $34
    and e                                         ; $6a38: $a3
    ld sp, hl                                     ; $6a39: $f9
    xor $39                                       ; $6a3a: $ee $39
    ld a, [$bddc]                                 ; $6a3c: $fa $dc $bd
    ld h, a                                       ; $6a3f: $67
    and [hl]                                      ; $6a40: $a6
    cpl                                           ; $6a41: $2f
    and $cd                                       ; $6a42: $e6 $cd
    ld l, b                                       ; $6a44: $68
    and a                                         ; $6a45: $a7
    ld c, a                                       ; $6a46: $4f
    sbc [hl]                                      ; $6a47: $9e
    rla                                           ; $6a48: $17
    sub [hl]                                      ; $6a49: $96
    ld h, a                                       ; $6a4a: $67
    xor $4f                                       ; $6a4b: $ee $4f
    ld e, a                                       ; $6a4d: $5f
    ld l, [hl]                                    ; $6a4e: $6e
    ld c, $54                                     ; $6a4f: $0e $54
    sub l                                         ; $6a51: $95
    call c, Call_049_7c96                         ; $6a52: $dc $96 $7c
    ld a, h                                       ; $6a55: $7c
    nop                                           ; $6a56: $00
    ld d, a                                       ; $6a57: $57
    adc l                                         ; $6a58: $8d
    rst $20                                       ; $6a59: $e7
    ld e, d                                       ; $6a5a: $5a
    adc $63                                       ; $6a5b: $ce $63
    rst $20                                       ; $6a5d: $e7
    ld l, d                                       ; $6a5e: $6a
    inc l                                         ; $6a5f: $2c
    ret nc                                        ; $6a60: $d0

    ld d, l                                       ; $6a61: $55
    dec sp                                        ; $6a62: $3b
    sub a                                         ; $6a63: $97
    add a                                         ; $6a64: $87
    ld [hl], d                                    ; $6a65: $72
    ld b, c                                       ; $6a66: $41
    daa                                           ; $6a67: $27
    sub h                                         ; $6a68: $94
    call $bfb4                                    ; $6a69: $cd $b4 $bf
    ret c                                         ; $6a6c: $d8

    dec hl                                        ; $6a6d: $2b
    sbc a                                         ; $6a6e: $9f
    cp c                                          ; $6a6f: $b9
    inc d                                         ; $6a70: $14
    rra                                           ; $6a71: $1f
    rst $10                                       ; $6a72: $d7
    dec sp                                        ; $6a73: $3b
    and c                                         ; $6a74: $a1
    ret                                           ; $6a75: $c9


    dec bc                                        ; $6a76: $0b
    ld e, e                                       ; $6a77: $5b
    cp l                                          ; $6a78: $bd
    sub e                                         ; $6a79: $93
    pop af                                        ; $6a7a: $f1
    cp h                                          ; $6a7b: $bc
    ld b, c                                       ; $6a7c: $41
    ld d, b                                       ; $6a7d: $50
    ret                                           ; $6a7e: $c9


    sub a                                         ; $6a7f: $97
    ld d, $95                                     ; $6a80: $16 $95
    rst $20                                       ; $6a82: $e7
    sbc d                                         ; $6a83: $9a
    ld [c], a                                     ; $6a84: $e2
    ld c, $d0                                     ; $6a85: $0e $d0
    ld c, a                                       ; $6a87: $4f
    cp a                                          ; $6a88: $bf
    sbc a                                         ; $6a89: $9f
    cp [hl]                                       ; $6a8a: $be
    or h                                          ; $6a8b: $b4
    and b                                         ; $6a8c: $a0
    ld [hl], e                                    ; $6a8d: $73
    ld a, a                                       ; $6a8e: $7f
    cp c                                          ; $6a8f: $b9
    cp c                                          ; $6a90: $b9
    and $82                                       ; $6a91: $e6 $82
    ld c, [hl]                                    ; $6a93: $4e
    ld [$7662], a                                 ; $6a94: $ea $62 $76
    ld l, $61                                     ; $6a97: $2e $61
    db $d3                                        ; $6a99: $d3
    rlca                                          ; $6a9a: $07
    ld d, l                                       ; $6a9b: $55
    ei                                            ; $6a9c: $fb
    pop de                                        ; $6a9d: $d1
    add d                                         ; $6a9e: $82
    ld l, $6c                                     ; $6a9f: $2e $6c
    inc sp                                        ; $6aa1: $33
    ld a, $00                                     ; $6aa2: $3e $00
    rst $10                                       ; $6aa4: $d7
    db $e4                                        ; $6aa5: $e4
    or d                                          ; $6aa6: $b2
    adc l                                         ; $6aa7: $8d
    ld d, $96                                     ; $6aa8: $16 $96
    ld [hl], a                                    ; $6aaa: $77
    cp $c3                                        ; $6aab: $fe $c3
    ld e, h                                       ; $6aad: $5c
    ld [hl], h                                    ; $6aae: $74
    ld e, e                                       ; $6aaf: $5b
    xor [hl]                                      ; $6ab0: $ae
    ld c, l                                       ; $6ab1: $4d
    ld c, $3a                                     ; $6ab2: $0e $3a
    ld l, $68                                     ; $6ab4: $2e $68
    ld l, $e8                                     ; $6ab6: $2e $e8
    ld a, $14                                     ; $6ab8: $3e $14
    rst $28                                       ; $6aba: $ef
    ld l, l                                       ; $6abb: $6d
    db $e3                                        ; $6abc: $e3
    ld a, c                                       ; $6abd: $79
    add e                                         ; $6abe: $83
    add a                                         ; $6abf: $87
    cp h                                          ; $6ac0: $bc
    and b                                         ; $6ac1: $a0
    ld [hl], e                                    ; $6ac2: $73
    dec l                                         ; $6ac3: $2d
    rst $10                                       ; $6ac4: $d7
    and $f8                                       ; $6ac5: $e6 $f8
    cp e                                          ; $6ac7: $bb
    ld c, l                                       ; $6ac8: $4d
    inc sp                                        ; $6ac9: $33
    ld d, d                                       ; $6aca: $52
    sbc $a9                                       ; $6acb: $de $a9
    cp [hl]                                       ; $6acd: $be
    ret c                                         ; $6ace: $d8

    adc a                                         ; $6acf: $8f
    ld d, $a1                                     ; $6ad0: $16 $a1
    rst $30                                       ; $6ad2: $f7
    and l                                         ; $6ad3: $a5
    inc [hl]                                      ; $6ad4: $34
    ld a, b                                       ; $6ad5: $78
    ret z                                         ; $6ad6: $c8

    ld d, a                                       ; $6ad7: $57
    or $5c                                        ; $6ad8: $f6 $5c
    sbc e                                         ; $6ada: $9b
    db $d3                                        ; $6adb: $d3
    ld [$2d0f], sp                                ; $6adc: $08 $0f $2d
    xor d                                         ; $6adf: $aa
    add $40                                       ; $6ae0: $c6 $40
    ld c, $fe                                     ; $6ae2: $0e $fe
    sub e                                         ; $6ae4: $93
    dec c                                         ; $6ae5: $0d
    adc $17                                       ; $6ae6: $ce $17
    inc sp                                        ; $6ae8: $33
    xor l                                         ; $6ae9: $ad
    db $db                                        ; $6aea: $db
    inc e                                         ; $6aeb: $1c
    ld a, a                                       ; $6aec: $7f
    or a                                          ; $6aed: $b7
    and h                                         ; $6aee: $a4
    ld hl, sp+$4b                                 ; $6aef: $f8 $4b
    reti                                          ; $6af1: $d9


    adc h                                         ; $6af2: $8c
    rrca                                          ; $6af3: $0f
    rst $08                                       ; $6af4: $cf

jr_049_6af5:
    inc [hl]                                      ; $6af5: $34
    ld [hl], a                                    ; $6af6: $77
    ld [hl-], a                                   ; $6af7: $32
    cp [hl]                                       ; $6af8: $be
    ld [hl], d                                    ; $6af9: $72
    nop                                           ; $6afa: $00
    sub a                                         ; $6afb: $97
    jr jr_049_6b2a                                ; $6afc: $18 $2c

    db $db                                        ; $6afe: $db
    adc b                                         ; $6aff: $88
    rst $20                                       ; $6b00: $e7
    dec sp                                        ; $6b01: $3b
    rlca                                          ; $6b02: $07
    reti                                          ; $6b03: $d9


    dec de                                        ; $6b04: $1b
    ret nz                                        ; $6b05: $c0

    inc b                                         ; $6b06: $04
    inc sp                                        ; $6b07: $33
    bit 7, b                                      ; $6b08: $cb $78

Jump_049_6b0a:
    rst $10                                       ; $6b0a: $d7
    db $e4                                        ; $6b0b: $e4
    add h                                         ; $6b0c: $84
    and $ce                                       ; $6b0d: $e6 $ce
    jr jr_049_6af5                                ; $6b0f: $18 $e4

    ld d, h                                       ; $6b11: $54
    pop hl                                        ; $6b12: $e1
    ccf                                           ; $6b13: $3f
    cp l                                          ; $6b14: $bd
    dec h                                         ; $6b15: $25

jr_049_6b16:
    rst $00                                       ; $6b16: $c7
    rlca                                          ; $6b17: $07
    rst $08                                       ; $6b18: $cf
    ld a, a                                       ; $6b19: $7f
    ld a, [hl-]                                   ; $6b1a: $3a
    ld d, a                                       ; $6b1b: $57
    rrca                                          ; $6b1c: $0f
    push de                                       ; $6b1d: $d5
    ld [hl+], a                                   ; $6b1e: $22
    inc c                                         ; $6b1f: $0c
    ld [hl], d                                    ; $6b20: $72
    xor d                                         ; $6b21: $aa
    ldh a, [$9f]                                  ; $6b22: $f0 $9f
    sbc $92                                       ; $6b24: $de $92
    db $e3                                        ; $6b26: $e3
    ld e, l                                       ; $6b27: $5d
    sub e                                         ; $6b28: $93
    dec sp                                        ; $6b29: $3b

jr_049_6b2a:
    ld h, e                                       ; $6b2a: $63
    rla                                           ; $6b2b: $17
    jr c, jr_049_6b88                             ; $6b2c: $38 $5a

    ld h, e                                       ; $6b2e: $63
    rst $20                                       ; $6b2f: $e7
    ld e, d                                       ; $6b30: $5a
    and [hl]                                      ; $6b31: $a6
    pop bc                                        ; $6b32: $c1
    ld b, e                                       ; $6b33: $43
    ld e, $e6                                     ; $6b34: $1e $e6
    ld a, h                                       ; $6b36: $7c
    rst $30                                       ; $6b37: $f7
    ld a, [bc]                                    ; $6b38: $0a
    ld h, c                                       ; $6b39: $61
    ld [hl], b                                    ; $6b3a: $70
    ld l, [hl]                                    ; $6b3b: $6e
    ld c, d                                       ; $6b3c: $4a
    adc e                                         ; $6b3d: $8b
    ld c, d                                       ; $6b3e: $4a
    pop af                                        ; $6b3f: $f1
    ld bc, $1b6f                                  ; $6b40: $01 $6f $1b
    rrca                                          ; $6b43: $0f
    ld [hl], e                                    ; $6b44: $73
    ld h, c                                       ; $6b45: $61
    and e                                         ; $6b46: $a3
    ld l, d                                       ; $6b47: $6a
    sub l                                         ; $6b48: $95
    ld h, [hl]                                    ; $6b49: $66
    pop de                                        ; $6b4a: $d1
    ld d, b                                       ; $6b4b: $50
    xor l                                         ; $6b4c: $ad
    call $77f1                                    ; $6b4d: $cd $f1 $77
    sbc e                                         ; $6b50: $9b
    ld h, [hl]                                    ; $6b51: $66
    and h                                         ; $6b52: $a4
    cp h                                          ; $6b53: $bc
    ld d, e                                       ; $6b54: $53
    ld a, l                                       ; $6b55: $7d
    push hl                                       ; $6b56: $e5
    nop                                           ; $6b57: $00
    rst $08                                       ; $6b58: $cf
    inc [hl]                                      ; $6b59: $34
    rst $20                                       ; $6b5a: $e7
    sbc l                                         ; $6b5b: $9d
    ld [$cc9d], a                                 ; $6b5c: $ea $9d $cc
    ld c, b                                       ; $6b5f: $48
    ret nz                                        ; $6b60: $c0

    ld h, b                                       ; $6b61: $60
    ld b, c                                       ; $6b62: $41
    ld h, a                                       ; $6b63: $67
    ld e, d                                       ; $6b64: $5a
    or a                                          ; $6b65: $b7
    cp c                                          ; $6b66: $b9
    ret z                                         ; $6b67: $c8

    adc h                                         ; $6b68: $8c
    and [hl]                                      ; $6b69: $a6
    jr nz, jr_049_6b16                            ; $6b6a: $20 $aa

    inc hl                                        ; $6b6c: $23
    sbc e                                         ; $6b6d: $9b
    adc e                                         ; $6b6e: $8b
    inc c                                         ; $6b6f: $0c
    inc c                                         ; $6b70: $0c
    ld d, h                                       ; $6b71: $54
    jr nz, jr_049_6b7b                            ; $6b72: $20 $07

    ld h, l                                       ; $6b74: $65
    inc sp                                        ; $6b75: $33
    sbc $75                                       ; $6b76: $de $75
    ld b, a                                       ; $6b78: $47
    ld l, e                                       ; $6b79: $6b
    db $ec                                        ; $6b7a: $ec

jr_049_6b7b:
    ld h, h                                       ; $6b7b: $64
    inc sp                                        ; $6b7c: $33
    sbc e                                         ; $6b7d: $9b
    inc bc                                        ; $6b7e: $03

jr_049_6b7f:
    ld l, l                                       ; $6b7f: $6d
    adc $b5                                       ; $6b80: $ce $b5
    sbc h                                         ; $6b82: $9c
    ld d, b                                       ; $6b83: $50
    db $f4                                        ; $6b84: $f4
    sbc l                                         ; $6b85: $9d
    ei                                            ; $6b86: $fb
    or l                                          ; $6b87: $b5

jr_049_6b88:
    rst $38                                       ; $6b88: $ff
    ld c, l                                       ; $6b89: $4d
    rst $18                                       ; $6b8a: $df
    add hl, hl                                    ; $6b8b: $29
    adc b                                         ; $6b8c: $88
    ld [$e6c8], a                                 ; $6b8d: $ea $c8 $e6
    ld a, [hl]                                    ; $6b90: $7e
    or h                                          ; $6b91: $b4
    ld l, d                                       ; $6b92: $6a
    ld l, c                                       ; $6b93: $69
    ld b, [hl]                                    ; $6b94: $46
    dec hl                                        ; $6b95: $2b
    inc a                                         ; $6b96: $3c
    db $e4                                        ; $6b97: $e4
    ld b, c                                       ; $6b98: $41
    jr jr_049_6b7f                                ; $6b99: $18 $e4

    cp b                                          ; $6b9b: $b8
    di                                            ; $6b9c: $f3
    cp a                                          ; $6b9d: $bf
    add hl, de                                    ; $6b9e: $19
    rst $28                                       ; $6b9f: $ef
    ld c, c                                       ; $6ba0: $49
    xor l                                         ; $6ba1: $ad
    and [hl]                                      ; $6ba2: $a6
    ld a, [bc]                                    ; $6ba3: $0a
    rst $38                                       ; $6ba4: $ff
    jp hl                                         ; $6ba5: $e9


    dec l                                         ; $6ba6: $2d
    ld a, c                                       ; $6ba7: $79
    ld h, c                                       ; $6ba8: $61
    dec [hl]                                      ; $6ba9: $35
    inc [hl]                                      ; $6baa: $34
    sub h                                         ; $6bab: $94
    dec bc                                        ; $6bac: $0b
    ld a, [de]                                    ; $6bad: $1a
    rra                                           ; $6bae: $1f
    rst $10                                       ; $6baf: $d7
    db $e4                                        ; $6bb0: $e4
    jp nz, Jump_000_0b0a                          ; $6bb1: $c2 $0a $0b

    inc e                                         ; $6bb4: $1c
    xor l                                         ; $6bb5: $ad
    or c                                          ; $6bb6: $b1
    inc bc                                        ; $6bb7: $03
    dec c                                         ; $6bb8: $0d
    rst $38                                       ; $6bb9: $ff
    daa                                           ; $6bba: $27
    rra                                           ; $6bbb: $1f
    rst $28                                       ; $6bbc: $ef
    ld a, d                                       ; $6bbd: $7a

Jump_049_6bbe:
    ld [hl], a                                    ; $6bbe: $77
    halt                                          ; $6bbf: $76
    inc [hl]                                      ; $6bc0: $34
    rst $28                                       ; $6bc1: $ef
    rst $20                                       ; $6bc2: $e7
    cp c                                          ; $6bc3: $b9
    inc sp                                        ; $6bc4: $33
    sub c                                         ; $6bc5: $91
    xor a                                         ; $6bc6: $af
    add $04                                       ; $6bc7: $c6 $04
    jp $ef9c                                      ; $6bc9: $c3 $9c $ef


    or d                                          ; $6bcc: $b2
    adc d                                         ; $6bcd: $8a
    sbc e                                         ; $6bce: $9b
    dec sp                                        ; $6bcf: $3b
    sub l                                         ; $6bd0: $95
    ld h, h                                       ; $6bd1: $64
    inc sp                                        ; $6bd2: $33
    ld a, $00                                     ; $6bd3: $3e $00
    sub a                                         ; $6bd5: $97
    push hl                                       ; $6bd6: $e5
    ld bc, $5e33                                  ; $6bd7: $01 $33 $5e
    ret nc                                        ; $6bda: $d0

    add c                                         ; $6bdb: $81
    ld [hl], $a7                                  ; $6bdc: $36 $a7
    jp nc, $cd48                                  ; $6bde: $d2 $48 $cd

    inc l                                         ; $6be1: $2c
    db $e3                                        ; $6be2: $e3
    cp l                                          ; $6be3: $bd
    ld h, b                                       ; $6be4: $60
    call c, $a9dc                                 ; $6be5: $dc $dc $a9
    ld c, e                                       ; $6be8: $4b
    inc sp                                        ; $6be9: $33
    sbc d                                         ; $6bea: $9a
    ldh a, [$dd]                                  ; $6beb: $f0 $dd
    and $80                                       ; $6bed: $e6 $80
    ld e, c                                       ; $6bef: $59
    xor [hl]                                      ; $6bf0: $ae
    cp c                                          ; $6bf1: $b9
    sbc a                                         ; $6bf2: $9f
    ld l, d                                       ; $6bf3: $6a
    xor $ff                                       ; $6bf4: $ee $ff
    inc h                                         ; $6bf6: $24
    sub h                                         ; $6bf7: $94
    adc d                                         ; $6bf8: $8a
    cp [hl]                                       ; $6bf9: $be
    add hl, de                                    ; $6bfa: $19
    rra                                           ; $6bfb: $1f
    sub a                                         ; $6bfc: $97
    and [hl]                                      ; $6bfd: $a6
    ld b, l                                       ; $6bfe: $45
    ld a, h                                       ; $6bff: $7c
    ld [hl-], a                                   ; $6c00: $32
    db $d3                                        ; $6c01: $d3
    and d                                         ; $6c02: $a2
    ld a, b                                       ; $6c03: $78
    ld l, a                                       ; $6c04: $6f
    ld [hl], a                                    ; $6c05: $77
    pop de                                        ; $6c06: $d1
    cpl                                           ; $6c07: $2f
    scf                                           ; $6c08: $37
    rst $30                                       ; $6c09: $f7
    ld hl, $0f05                                  ; $6c0a: $21 $05 $0f
    or c                                          ; $6c0d: $b1
    call c, $0f8c                                 ; $6c0e: $dc $8c $0f
    rst $10                                       ; $6c11: $d7
    db $e4                                        ; $6c12: $e4
    and h                                         ; $6c13: $a4
    push hl                                       ; $6c14: $e5
    ld [de], a                                    ; $6c15: $12
    rlc e                                         ; $6c16: $cb $03
    push de                                       ; $6c18: $d5
    rst $18                                       ; $6c19: $df
    ld l, l                                       ; $6c1a: $6d
    adc $1b                                       ; $6c1b: $ce $1b
    cpl                                           ; $6c1d: $2f
    add sp, $3c                                   ; $6c1e: $e8 $3c
    ld a, [c]                                     ; $6c20: $f2
    ld a, [bc]                                    ; $6c21: $0a
    rrca                                          ; $6c22: $0f
    ld a, c                                       ; $6c23: $79
    daa                                           ; $6c24: $27
    call nc, $ff3c                                ; $6c25: $d4 $3c $ff
    ccf                                           ; $6c28: $3f
    sbc l                                         ; $6c29: $9d
    set 3, h                                      ; $6c2a: $cb $dc
    cp h                                          ; $6c2c: $bc
    ret c                                         ; $6c2d: $d8

    and l                                         ; $6c2e: $a5
    ld de, $8989                                  ; $6c2f: $11 $89 $89
    rrca                                          ; $6c32: $0f
    rst $10                                       ; $6c33: $d7
    ld sp, $bf10                                  ; $6c34: $31 $10 $bf
    rst $20                                       ; $6c37: $e7
    ld l, h                                       ; $6c38: $6c
    ld e, h                                       ; $6c39: $5c
    ld [hl], d                                    ; $6c3a: $72
    ret nz                                        ; $6c3b: $c0

    jp nc, Jump_000_268c                          ; $6c3c: $d2 $8c $26

    call nc, $3f8b                                ; $6c3f: $d4 $8b $3f
    nop                                           ; $6c42: $00
    rst $10                                       ; $6c43: $d7
    dec e                                         ; $6c44: $1d
    xor l                                         ; $6c45: $ad
    or c                                          ; $6c46: $b1
    inc hl                                        ; $6c47: $23
    sub e                                         ; $6c48: $93
    call $de99                                    ; $6c49: $cd $99 $de
    rst $08                                       ; $6c4c: $cf
    ld [hl], e                                    ; $6c4d: $73
    rlca                                          ; $6c4e: $07
    add hl, sp                                    ; $6c4f: $39
    ret                                           ; $6c50: $c9


    call Call_000_13c9                            ; $6c51: $cd $c9 $13
    ld b, $3c                                     ; $6c54: $06 $3c
    db $d3                                        ; $6c56: $d3
    ld l, d                                       ; $6c57: $6a
    ld b, c                                       ; $6c58: $41
    ld [hl], a                                    ; $6c59: $77
    ld a, [$79e4]                                 ; $6c5a: $fa $e4 $79
    and b                                         ; $6c5d: $a0
    sub b                                         ; $6c5e: $90
    ld c, c                                       ; $6c5f: $49
    adc [hl]                                      ; $6c60: $8e
    rrca                                          ; $6c61: $0f
    rst $08                                       ; $6c62: $cf
    reti                                          ; $6c63: $d9


    ld c, [hl]                                    ; $6c64: $4e
    dec b                                         ; $6c65: $05
    ld [c], a                                     ; $6c66: $e2
    rrca                                          ; $6c67: $0f
    cpl                                           ; $6c68: $2f
    rr e                                          ; $6c69: $cb $1b
    ld l, $16                                     ; $6c6b: $2e $16
    sbc c                                         ; $6c6d: $99
    pop de                                        ; $6c6e: $d1
    ld d, b                                       ; $6c6f: $50
    ld l, $ac                                     ; $6c70: $2e $ac
    or b                                          ; $6c72: $b0
    ret nz                                        ; $6c73: $c0

    pop de                                        ; $6c74: $d1
    ld a, [de]                                    ; $6c75: $1a
    dec sp                                        ; $6c76: $3b
    ret nc                                        ; $6c77: $d0

    sub e                                         ; $6c78: $93
    add hl, de                                    ; $6c79: $19
    add hl, hl                                    ; $6c7a: $29
    ld a, b                                       ; $6c7b: $78
    add sp, -$64                                  ; $6c7c: $e8 $9c
    ld a, h                                       ; $6c7e: $7c
    ld a, h                                       ; $6c7f: $7c

jr_049_6c80:
    nop                                           ; $6c80: $00
    ld d, a                                       ; $6c81: $57
    cp e                                          ; $6c82: $bb
    xor e                                         ; $6c83: $ab
    jr z, jr_049_6ceb                             ; $6c84: $28 $65

    ld [hl], a                                    ; $6c86: $77
    push de                                       ; $6c87: $d5
    and d                                         ; $6c88: $a2
    add $71                                       ; $6c89: $c6 $71
    cp h                                          ; $6c8b: $bc
    ld [hl], e                                    ; $6c8c: $73
    add a                                         ; $6c8d: $87
    ld l, d                                       ; $6c8e: $6a
    and l                                         ; $6c8f: $a5
    dec h                                         ; $6c90: $25
    sub [hl]                                      ; $6c91: $96
    push bc                                       ; $6c92: $c5
    rst $28                                       ; $6c93: $ef
    ld [hl], $b5                                  ; $6c94: $36 $b5
    sub a                                         ; $6c96: $97
    inc c                                         ; $6c97: $0c
    ld e, $b2                                     ; $6c98: $1e $b2
    ld a, [de]                                    ; $6c9a: $1a
    jr nc, jr_049_6c80                            ; $6c9b: $30 $e3

    sbc l                                         ; $6c9d: $9d
    cp e                                          ; $6c9e: $bb
    ld d, e                                       ; $6c9f: $53
    push af                                       ; $6ca0: $f5
    jp c, $fb54                                   ; $6ca1: $da $54 $fb

    ret nc                                        ; $6ca4: $d0

    add h                                         ; $6ca5: $84
    sbc [hl]                                      ; $6ca6: $9e
    ld a, a                                       ; $6ca7: $7f
    push hl                                       ; $6ca8: $e5
    push bc                                       ; $6ca9: $c5
    ld d, b                                       ; $6caa: $50
    ld c, [hl]                                    ; $6cab: $4e
    ld e, d                                       ; $6cac: $5a
    xor [hl]                                      ; $6cad: $ae
    or h                                          ; $6cae: $b4
    call nz, $a2f2                                ; $6caf: $c4 $f2 $a2
    sub [hl]                                      ; $6cb2: $96
    add [hl]                                      ; $6cb3: $86
    add hl, hl                                    ; $6cb4: $29
    cp $00                                        ; $6cb5: $fe $00
    ld d, a                                       ; $6cb7: $57
    adc l                                         ; $6cb8: $8d
    add a                                         ; $6cb9: $87
    ld l, d                                       ; $6cba: $6a
    rst $10                                       ; $6cbb: $d7
    ld e, a                                       ; $6cbc: $5f
    ld a, [hl]                                    ; $6cbd: $7e
    di                                            ; $6cbe: $f3
    db $ed                                        ; $6cbf: $ed
    ld b, c                                       ; $6cc0: $41
    db $f4                                        ; $6cc1: $f4
    dec b                                         ; $6cc2: $05
    db $dd                                        ; $6cc3: $dd
    ld b, [hl]                                    ; $6cc4: $46
    pop af                                        ; $6cc5: $f1
    ld bc, $33af                                  ; $6cc6: $01 $af $33

Jump_049_6cc9:
    ld l, d                                       ; $6cc9: $6a
    pop af                                        ; $6cca: $f1
    cp e                                          ; $6ccb: $bb
    ld h, $17                                     ; $6ccc: $26 $17
    cp $4f                                        ; $6cce: $fe $4f
    jp $8ab2                                      ; $6cd0: $c3 $b2 $8a


    rrca                                          ; $6cd3: $0f
    rst $10                                       ; $6cd4: $d7
    db $e4                                        ; $6cd5: $e4
    add h                                         ; $6cd6: $84
    and $42                                       ; $6cd7: $e6 $42
    inc l                                         ; $6cd9: $2c
    call Call_000_1cf4                            ; $6cda: $cd $f4 $1c
    ld l, d                                       ; $6cdd: $6a
    add $bb                                       ; $6cde: $c6 $bb
    ld h, $77                                     ; $6ce0: $26 $77
    ld l, d                                       ; $6ce2: $6a
    ld a, c                                       ; $6ce3: $79
    ld h, c                                       ; $6ce4: $61
    ld a, c                                       ; $6ce5: $79
    adc c                                         ; $6ce6: $89
    ld [hl], l                                    ; $6ce7: $75
    ld c, [hl]                                    ; $6ce8: $4e
    db $dd                                        ; $6ce9: $dd
    ret                                           ; $6cea: $c9


jr_049_6ceb:
    ldh [rNR42], a                                ; $6ceb: $e0 $21
    sbc a                                         ; $6ced: $9f
    cp $27                                        ; $6cee: $fe $27
    cp a                                          ; $6cf0: $bf
    call nz, $a2f2                                ; $6cf1: $c4 $f2 $a2
    sub [hl]                                      ; $6cf4: $96
    ld [c], a                                     ; $6cf5: $e2
    inc bc                                        ; $6cf6: $03
    sub a                                         ; $6cf7: $97
    push hl                                       ; $6cf8: $e5
    and c                                         ; $6cf9: $a1
    jp c, $ae6d                                   ; $6cfa: $da $6d $ae

    sub c                                         ; $6cfd: $91
    ld l, h                                       ; $6cfe: $6c
    ld a, [hl+]                                   ; $6cff: $2a
    sub l                                         ; $6d00: $95
    ld c, $f2                                     ; $6d01: $0e $f2
    ld l, l                                       ; $6d03: $6d
    pop af                                        ; $6d04: $f1
    sbc $ee                                       ; $6d05: $de $ee
    and d                                         ; $6d07: $a2
    ld e, a                                       ; $6d08: $5f
    ld l, [hl]                                    ; $6d09: $6e
    xor [hl]                                      ; $6d0a: $ae
    inc b                                         ; $6d0b: $04
    sbc d                                         ; $6d0c: $9a
    ld l, d                                       ; $6d0d: $6a
    ld l, c                                       ; $6d0e: $69
    ld b, [hl]                                    ; $6d0f: $46
    db $fc                                        ; $6d10: $fc
    ld a, e                                       ; $6d11: $7b
    or c                                          ; $6d12: $b1
    rla                                           ; $6d13: $17
    adc l                                         ; $6d14: $8d
    ldh [$d5], a                                  ; $6d15: $e0 $d5
    rla                                           ; $6d17: $17
    db $e3                                        ; $6d18: $e3
    rst $08                                       ; $6d19: $cf
    ld d, e                                       ; $6d1a: $53
    ld c, h                                       ; $6d1b: $4c
    ld h, $55                                     ; $6d1c: $26 $55
    ld a, h                                       ; $6d1e: $7c
    nop                                           ; $6d1f: $00
    cpl                                           ; $6d20: $2f
    sbc b                                         ; $6d21: $98
    pop af                                        ; $6d22: $f1
    and d                                         ; $6d23: $a2
    ld l, $b1                                     ; $6d24: $2e $b1
    inc a                                         ; $6d26: $3c
    call z, $b745                                 ; $6d27: $cc $45 $b7
    push hl                                       ; $6d2a: $e5
    jp c, $a0e4                                   ; $6d2b: $da $e4 $a0

    inc sp                                        ; $6d2e: $33
    ld a, b                                       ; $6d2f: $78
    ret z                                         ; $6d30: $c8

    dec h                                         ; $6d31: $25
    ld b, c                                       ; $6d32: $41
    ld h, e                                       ; $6d33: $63
    ldh [$36], a                                  ; $6d34: $e0 $36
    push bc                                       ; $6d36: $c5
    rra                                           ; $6d37: $1f
    cpl                                           ; $6d38: $2f
    ld h, d                                       ; $6d39: $62
    or b                                          ; $6d3a: $b0
    rst $38                                       ; $6d3b: $ff
    push hl                                       ; $6d3c: $e5
    ld [de], a                                    ; $6d3d: $12
    set 4, d                                      ; $6d3e: $cb $e2
    rrca                                          ; $6d40: $0f
    cpl                                           ; $6d41: $2f
    rr e                                          ; $6d42: $cb $1b
    ld l, $26                                     ; $6d44: $2e $26

jr_049_6d46:
    ld a, a                                       ; $6d46: $7f
    or h                                          ; $6d47: $b4
    xor b                                         ; $6d48: $a8
    ld e, l                                       ; $6d49: $5d
    ld h, h                                       ; $6d4a: $64
    ld b, [hl]                                    ; $6d4b: $46
    dec bc                                        ; $6d4c: $0b
    cp a                                          ; $6d4d: $bf
    or e                                          ; $6d4e: $b3
    and b                                         ; $6d4f: $a0
    adc e                                         ; $6d50: $8b
    ld a, [hl]                                    ; $6d51: $7e
    ld a, [$00f8]                                 ; $6d52: $fa $f8 $00
    ld l, a                                       ; $6d55: $6f
    ld [hl], a                                    ; $6d56: $77
    ld h, a                                       ; $6d57: $67
    inc c                                         ; $6d58: $0c
    ld [hl], d                                    ; $6d59: $72
    cp $36                                        ; $6d5a: $fe $36
    adc d                                         ; $6d5c: $8a
    rst $30                                       ; $6d5d: $f7
    inc a                                         ; $6d5e: $3c
    ld b, $72                                     ; $6d5f: $06 $72
    ldh [$d7], a                                  ; $6d61: $e0 $d7
    rst $08                                       ; $6d63: $cf
    ld b, c                                       ; $6d64: $41
    ld e, [hl]                                    ; $6d65: $5e
    ret nc                                        ; $6d66: $d0

    ld sp, hl                                     ; $6d67: $f9
    rrca                                          ; $6d68: $0f
    ld b, c                                       ; $6d69: $41
    call $d17d                                    ; $6d6a: $cd $7d $d1
    add d                                         ; $6d6d: $82
    xor $45                                       ; $6d6e: $ee $45
    db $d3                                        ; $6d70: $d3
    ld [hl+], a                                   ; $6d71: $22
    db $f4                                        ; $6d72: $f4
    adc [hl]                                      ; $6d73: $8e
    ld e, d                                       ; $6d74: $5a
    ld [hl], e                                    ; $6d75: $73
    rst $08                                       ; $6d76: $cf
    ld a, a                                       ; $6d77: $7f
    ld a, [hl-]                                   ; $6d78: $3a
    ld d, a                                       ; $6d79: $57
    rst $28                                       ; $6d7a: $ef
    adc h                                         ; $6d7b: $8c
    push hl                                       ; $6d7c: $e5
    ld hl, sp+$00                                 ; $6d7d: $f8 $00
    xor a                                         ; $6d7f: $af
    add hl, sp                                    ; $6d80: $39
    jr z, jr_049_6d9a                             ; $6d81: $28 $17

    sbc c                                         ; $6d83: $99
    pop de                                        ; $6d84: $d1
    jp c, Jump_000_0354                           ; $6d85: $da $54 $03

    cp a                                          ; $6d88: $bf
    cp $62                                        ; $6d89: $fe $62
    ld de, $3906                                  ; $6d8b: $11 $06 $39
    adc l                                         ; $6d8e: $8d
    dec d                                         ; $6d8f: $15
    dec b                                         ; $6d90: $05
    cp l                                          ; $6d91: $bd
    sbc b                                         ; $6d92: $98
    rst $28                                       ; $6d93: $ef
    and h                                         ; $6d94: $a4
    ld l, $66                                     ; $6d95: $2e $66
    rst $30                                       ; $6d97: $f7
    and d                                         ; $6d98: $a2
    ld l, c                                       ; $6d99: $69

jr_049_6d9a:
    ld de, $477a                                  ; $6d9a: $11 $7a $47
    db $ed                                        ; $6d9d: $ed
    ld e, h                                       ; $6d9e: $5c
    sbc h                                         ; $6d9f: $9c
    scf                                           ; $6da0: $37
    sbc $b9                                       ; $6da1: $de $b9
    dec bc                                        ; $6da3: $0b
    or c                                          ; $6da4: $b1
    or h                                          ; $6da5: $b4
    di                                            ; $6da6: $f3
    ld [hl], a                                    ; $6da7: $77
    ld a, h                                       ; $6da8: $7c
    ld [hl], e                                    ; $6da9: $73
    ld h, a                                       ; $6daa: $67
    inc c                                         ; $6dab: $0c
    ld [hl-], a                                   ; $6dac: $32
    ld a, $00                                     ; $6dad: $3e $00
    cpl                                           ; $6daf: $2f
    sbc [hl]                                      ; $6db0: $9e
    ld c, [hl]                                    ; $6db1: $4e
    ld h, [hl]                                    ; $6db2: $66
    and $9c                                       ; $6db3: $e6 $9c
    ld [c], a                                     ; $6db5: $e2
    jr c, jr_049_6d46                             ; $6db6: $38 $8e

    rrca                                          ; $6db8: $0f
    ld d, a                                       ; $6db9: $57
    call Call_049_6768                            ; $6dba: $cd $68 $67
    inc c                                         ; $6dbd: $0c
    ld [hl], d                                    ; $6dbe: $72
    add c                                         ; $6dbf: $81
    and e                                         ; $6dc0: $a3
    dec [hl]                                      ; $6dc1: $35
    or $62                                        ; $6dc2: $f6 $62
    jp hl                                         ; $6dc4: $e9


    db $ec                                        ; $6dc5: $ec
    ld a, h                                       ; $6dc6: $7c
    ld [hl-], a                                   ; $6dc7: $32
    ld b, e                                       ; $6dc8: $43
    ld e, [hl]                                    ; $6dc9: $5e
    ld l, c                                       ; $6dca: $69
    daa                                           ; $6dcb: $27
    ld h, e                                       ; $6dcc: $63
    pop af                                        ; $6dcd: $f1
    rlca                                          ; $6dce: $07
    ld l, a                                       ; $6dcf: $6f
    sbc e                                         ; $6dd0: $9b
    pop de                                        ; $6dd1: $d1
    adc a                                         ; $6dd2: $8f
    halt                                          ; $6dd3: $76
    add $20                                       ; $6dd4: $c6 $20
    rla                                           ; $6dd6: $17
    jr c, jr_049_6e33                             ; $6dd7: $38 $5a

    ld h, e                                       ; $6dd9: $63
    add a                                         ; $6dda: $87
    cp c                                          ; $6ddb: $b9
    or b                                          ; $6ddc: $b0
    cp h                                          ; $6ddd: $bc
    ldh a, [rOCPD]                                ; $6dde: $f0 $6b
    push bc                                       ; $6de0: $c5
    ld [hl], e                                    ; $6de1: $73
    dec l                                         ; $6de2: $2d
    rst $20                                       ; $6de3: $e7
    cp e                                          ; $6de4: $bb
    inc [hl]                                      ; $6de5: $34
    ld a, b                                       ; $6de6: $78
    ret z                                         ; $6de7: $c8

    ld c, e                                       ; $6de8: $4b
    inc l                                         ; $6de9: $2c
    rst $28                                       ; $6dea: $ef
    ld b, e                                       ; $6deb: $43
    dec bc                                        ; $6dec: $0b
    ld a, [hl-]                                   ; $6ded: $3a
    and l                                         ; $6dee: $a5

Call_049_6def:
    call $b3a0                                    ; $6def: $cd $a0 $b3
    sbc c                                         ; $6df2: $99
    cp [hl]                                       ; $6df3: $be
    ld [hl], d                                    ; $6df4: $72
    nop                                           ; $6df5: $00
    cpl                                           ; $6df6: $2f
    ld a, l                                       ; $6df7: $7d
    rst $20                                       ; $6df8: $e7
    ld h, d                                       ; $6df9: $62
    jr z, jr_049_6e73                             ; $6dfa: $28 $77

    ld [hl-], a                                   ; $6dfc: $32
    or l                                          ; $6dfd: $b5
    or b                                          ; $6dfe: $b0
    cp h                                          ; $6dff: $bc
    sub e                                         ; $6e00: $93
    pop bc                                        ; $6e01: $c1
    ld b, e                                       ; $6e02: $43
    ld a, $fd                                     ; $6e03: $3e $fd
    ld c, a                                       ; $6e05: $4f
    ld a, [hl]                                    ; $6e06: $7e
    ld l, [hl]                                    ; $6e07: $6e
    add hl, bc                                    ; $6e08: $09
    sub h                                         ; $6e09: $94
    sbc e                                         ; $6e0a: $9b
    ld [hl], c                                    ; $6e0b: $71
    inc e                                         ; $6e0c: $1c
    rra                                           ; $6e0d: $1f
    sub a                                         ; $6e0e: $97
    rst $18                                       ; $6e0f: $df
    ld e, c                                       ; $6e10: $59
    ret nc                                        ; $6e11: $d0

    ld b, l                                       ; $6e12: $45
    ccf                                           ; $6e13: $3f
    cp l                                          ; $6e14: $bd
    ld hl, sp+$5d                                 ; $6e15: $f8 $5d
    ld b, l                                       ; $6e17: $45
    ld e, $aa                                     ; $6e18: $1e $aa
    or l                                          ; $6e1a: $b5
    cp c                                          ; $6e1b: $b9
    ld d, d                                       ; $6e1c: $52
    ld a, [hl+]                                   ; $6e1d: $2a
    ld b, [hl]                                    ; $6e1e: $46
    ret nc                                        ; $6e1f: $d0

    ld a, l                                       ; $6e20: $7d
    or a                                          ; $6e21: $b7
    call nz, $8f54                                ; $6e22: $c4 $54 $8f
    add hl, bc                                    ; $6e25: $09
    ld [c], a                                     ; $6e26: $e2
    db $dd                                        ; $6e27: $dd
    ld a, e                                       ; $6e28: $7b
    rst $08                                       ; $6e29: $cf
    jr nz, jr_049_6e53                            ; $6e2a: $20 $27

    cp c                                          ; $6e2c: $b9
    add hl, sp                                    ; $6e2d: $39
    inc de                                        ; $6e2e: $13
    ld sp, $ce55                                  ; $6e2f: $31 $55 $ce
    db $fd                                        ; $6e32: $fd

jr_049_6e33:
    sbc a                                         ; $6e33: $9f
    or $1c                                        ; $6e34: $f6 $1c
    and c                                         ; $6e36: $a1
    ld c, b                                       ; $6e37: $48
    db $f4                                        ; $6e38: $f4
    sbc e                                         ; $6e39: $9b
    cp $d3                                        ; $6e3a: $fe $d3
    sbc d                                         ; $6e3c: $9a
    ld d, e                                       ; $6e3d: $53
    ld c, h                                       ; $6e3e: $4c
    ld h, $8a                                     ; $6e3f: $26 $8a
    ld [hl], a                                    ; $6e41: $77
    ld c, l                                       ; $6e42: $4d
    adc $37                                       ; $6e43: $ce $37
    push hl                                       ; $6e45: $e5
    cp h                                          ; $6e46: $bc
    pop af                                        ; $6e47: $f1
    ld [hl+], a                                   ; $6e48: $22
    di                                            ; $6e49: $f3
    ld d, $75                                     ; $6e4a: $16 $75
    xor a                                         ; $6e4c: $af
    ld l, b                                       ; $6e4d: $68
    inc c                                         ; $6e4e: $0c
    inc d                                         ; $6e4f: $14
    sub a                                         ; $6e50: $97
    ld d, $38                                     ; $6e51: $16 $38

jr_049_6e53:
    ld e, d                                       ; $6e53: $5a
    ld h, e                                       ; $6e54: $63
    rla                                           ; $6e55: $17
    ld a, [hl-]                                   ; $6e56: $3a
    ld a, [de]                                    ; $6e57: $1a
    jp c, $f4d9                                   ; $6e58: $da $d9 $f4

    ld c, [hl]                                    ; $6e5b: $4e
    push hl                                       ; $6e5c: $e5
    and $b8                                       ; $6e5d: $e6 $b8
    dec sp                                        ; $6e5f: $3b
    sbc c                                         ; $6e60: $99
    sub c                                         ; $6e61: $91
    cpl                                           ; $6e62: $2f
    dec [hl]                                      ; $6e63: $35
    db $e3                                        ; $6e64: $e3
    jr c, jr_049_6ec5                             ; $6e65: $38 $5e

    db $f4                                        ; $6e67: $f4
    add hl, bc                                    ; $6e68: $09
    inc [hl]                                      ; $6e69: $34
    rla                                           ; $6e6a: $17
    ld a, l                                       ; $6e6b: $7d
    ret nc                                        ; $6e6c: $d0

    ld e, h                                       ; $6e6d: $5c
    ldh [rBCPS], a                                ; $6e6e: $e0 $68
    adc l                                         ; $6e70: $8d
    sbc l                                         ; $6e71: $9d
    rst $28                                       ; $6e72: $ef

jr_049_6e73:
    ld a, [hl]                                    ; $6e73: $7e
    ld a, [$e292]                                 ; $6e74: $fa $92 $e2
    ld d, [hl]                                    ; $6e77: $56
    ld c, d                                       ; $6e78: $4a
    adc e                                         ; $6e79: $8b
    ld c, d                                       ; $6e7a: $4a
    ld d, e                                       ; $6e7b: $53
    ldh a, [$f0]                                  ; $6e7c: $f0 $f0
    rst $38                                       ; $6e7e: $ff
    adc h                                         ; $6e7f: $8c
    ld c, h                                       ; $6e80: $4c
    ld [hl], $e3                                  ; $6e81: $36 $e3
    inc bc                                        ; $6e83: $03
    ld d, a                                       ; $6e84: $57
    cp e                                          ; $6e85: $bb
    sbc a                                         ; $6e86: $9f
    cp [hl]                                       ; $6e87: $be
    and h                                         ; $6e88: $a4
    cp b                                          ; $6e89: $b8
    sub l                                         ; $6e8a: $95
    jp nc, $92a2                                  ; $6e8b: $d2 $a2 $92

    ld hl, sp+$03                                 ; $6e8e: $f8 $03
    rst $28                                       ; $6e90: $ef
    ld a, [hl-]                                   ; $6e91: $3a
    ld d, d                                       ; $6e92: $52
    db $fc                                        ; $6e93: $fc
    ld bc, $e4cf                                  ; $6e94: $01 $cf $e4
    jp nc, $9719                                  ; $6e97: $d2 $19 $97

    inc e                                         ; $6e9a: $1c
    or b                                          ; $6e9b: $b0
    inc [hl]                                      ; $6e9c: $34
    and e                                         ; $6e9d: $a3
    dec b                                         ; $6e9e: $05
    adc [hl]                                      ; $6e9f: $8e
    sub $d8                                       ; $6ea0: $d6 $d8
    add hl, hl                                    ; $6ea2: $29
    ld l, l                                       ; $6ea3: $6d
    ld b, $9d                                     ; $6ea4: $06 $9d
    call Call_049_7c74                            ; $6ea6: $cd $74 $7c
    nop                                           ; $6ea9: $00
    rst $10                                       ; $6eaa: $d7
    db $e4                                        ; $6eab: $e4
    ld c, [hl]                                    ; $6eac: $4e
    xor b                                         ; $6ead: $a8
    rla                                           ; $6eae: $17
    ld h, d                                       ; $6eaf: $62
    ld l, c                                       ; $6eb0: $69
    adc c                                         ; $6eb1: $89
    ld h, l                                       ; $6eb2: $65
    or l                                          ; $6eb3: $b5

Call_049_6eb4:
    xor b                                         ; $6eb4: $a8
    and l                                         ; $6eb5: $a5
    ld a, l                                       ; $6eb6: $7d
    or a                                          ; $6eb7: $b7
    or h                                          ; $6eb8: $b4
    ldh a, [rHDMA3]                               ; $6eb9: $f0 $53
    ld d, e                                       ; $6ebb: $53
    db $fc                                        ; $6ebc: $fc
    halt                                          ; $6ebd: $76
    rst $28                                       ; $6ebe: $ef
    dec a                                         ; $6ebf: $3d
    add e                                         ; $6ec0: $83
    sbc h                                         ; $6ec1: $9c
    db $e4                                        ; $6ec2: $e4
    and $4c                                       ; $6ec3: $e6 $4c

jr_049_6ec5:
    call nz, $3954                                ; $6ec5: $c4 $54 $39
    rst $30                                       ; $6ec8: $f7
    ld a, a                                       ; $6ec9: $7f
    jp c, $8473                                   ; $6eca: $da $73 $84

    ld [hl+], a                                   ; $6ecd: $22
    pop de                                        ; $6ece: $d1
    ld l, a                                       ; $6ecf: $6f
    ld a, [$f14f]                                 ; $6ed0: $fa $4f $f1
    sbc [hl]                                      ; $6ed3: $9e
    ret                                           ; $6ed4: $c9


    and l                                         ; $6ed5: $a5
    inc sp                                        ; $6ed6: $33
    ld l, $39                                     ; $6ed7: $2e $39
    ld h, b                                       ; $6ed9: $60
    ld l, c                                       ; $6eda: $69
    ld b, [hl]                                    ; $6edb: $46
    dec bc                                        ; $6edc: $0b
    inc e                                         ; $6edd: $1c
    xor l                                         ; $6ede: $ad
    or c                                          ; $6edf: $b1
    ld d, e                                       ; $6ee0: $53
    jp c, Jump_000_3a0c                           ; $6ee1: $da $0c $3a

    sbc e                                         ; $6ee4: $9b
    jp hl                                         ; $6ee5: $e9


    ld hl, sp+$00                                 ; $6ee6: $f8 $00
    sub a                                         ; $6ee8: $97
    dec d                                         ; $6ee9: $15
    ld d, $74                                     ; $6eea: $16 $74
    and [hl]                                      ; $6eec: $a6
    rst $10                                       ; $6eed: $d7
    and $22                                       ; $6eee: $e6 $22
    ld c, e                                       ; $6ef0: $4b
    inc l                                         ; $6ef1: $2c
    dec c                                         ; $6ef2: $0d
    call nc, $e9fd                                ; $6ef3: $d4 $fd $e9
    sbc e                                         ; $6ef6: $9b
    ei                                            ; $6ef7: $fb
    pop de                                        ; $6ef8: $d1
    inc b                                         ; $6ef9: $04
    inc c                                         ; $6efa: $0c
    and $bb                                       ; $6efb: $e6 $bb
    rst $10                                       ; $6efd: $d7
    cp c                                          ; $6efe: $b9
    call $d2f9                                    ; $6eff: $cd $f9 $d2
    sbc $c6                                       ; $6f02: $de $c6
    ldh [$dc], a                                  ; $6f04: $e0 $dc
    inc e                                         ; $6f06: $1c
    ld [hl], a                                    ; $6f07: $77
    ld a, [c]                                     ; $6f08: $f2
    ld b, a                                       ; $6f09: $47
    call Call_000_072b                            ; $6f0a: $cd $2b $07
    rst $10                                       ; $6f0d: $d7
    db $e4                                        ; $6f0e: $e4
    ld c, [hl]                                    ; $6f0f: $4e
    ld [hl], a                                    ; $6f10: $77
    sbc l                                         ; $6f11: $9d
    xor $3a                                       ; $6f12: $ee $3a
    or l                                          ; $6f14: $b5
    cp h                                          ; $6f15: $bc
    call nz, Call_000_1c72                        ; $6f16: $c4 $72 $1c
    rst $00                                       ; $6f19: $c7
    cp e                                          ; $6f1a: $bb
    ld h, $27                                     ; $6f1b: $26 $27
    rst $28                                       ; $6f1d: $ef
    sub d                                         ; $6f1e: $92
    ld [hl], a                                    ; $6f1f: $77
    ld c, c                                       ; $6f20: $49
    sla l                                         ; $6f21: $cb $25
    sub [hl]                                      ; $6f23: $96
    db $e3                                        ; $6f24: $e3
    jr c, jr_049_6f65                             ; $6f25: $38 $3e

    nop                                           ; $6f27: $00
    ld l, a                                       ; $6f28: $6f
    sub l                                         ; $6f29: $95
    cp b                                          ; $6f2a: $b8
    ld a, d                                       ; $6f2b: $7a
    ld d, c                                       ; $6f2c: $51
    rst $20                                       ; $6f2d: $e7
    dec l                                         ; $6f2e: $2d
    rst $00                                       ; $6f2f: $c7
    call Call_049_5308                            ; $6f30: $cd $08 $53
    ld [hl], c                                    ; $6f33: $71
    rla                                           ; $6f34: $17
    cp $0e                                        ; $6f35: $fe $0e
    push hl                                       ; $6f37: $e5
    or h                                          ; $6f38: $b4
    dec h                                         ; $6f39: $25
    ld d, b                                       ; $6f3a: $50
    di                                            ; $6f3b: $f3
    add $53                                       ; $6f3c: $c6 $53
    ld l, h                                       ; $6f3e: $6c
    and [hl]                                      ; $6f3f: $a6
    add hl, sp                                    ; $6f40: $39
    add sp, -$3e                                  ; $6f41: $e8 $c2
    rrca                                          ; $6f43: $0f
    ld [hl], a                                    ; $6f44: $77
    call nc, $d05d                                ; $6f45: $d4 $5d $d0
    add a                                         ; $6f48: $87
    dec sp                                        ; $6f49: $3b
    ld l, d                                       ; $6f4a: $6a
    xor [hl]                                      ; $6f4b: $ae
    push hl                                       ; $6f4c: $e5
    add d                                         ; $6f4d: $82
    ld c, [hl]                                    ; $6f4e: $4e
    cp $28                                        ; $6f4f: $fe $28
    ld a, $00                                     ; $6f51: $3e $00
    cpl                                           ; $6f53: $2f
    sbc $15                                       ; $6f54: $de $15
    db $dd                                        ; $6f56: $dd
    dec d                                         ; $6f57: $15
    sbc c                                         ; $6f58: $99
    pop de                                        ; $6f59: $d1
    cp h                                          ; $6f5a: $bc
    pop af                                        ; $6f5b: $f1
    adc $df                                       ; $6f5c: $ce $df
    sbc c                                         ; $6f5e: $99
    ld a, e                                       ; $6f5f: $7b
    sub a                                         ; $6f60: $97
    ld a, e                                       ; $6f61: $7b
    sub a                                         ; $6f62: $97
    ld e, e                                       ; $6f63: $5b
    ld [hl+], a                                   ; $6f64: $22

jr_049_6f65:
    inc sp                                        ; $6f65: $33
    cp a                                          ; $6f66: $bf
    inc sp                                        ; $6f67: $33
    ld b, $19                                     ; $6f68: $06 $19
    rst $00                                       ; $6f6a: $c7
    pop af                                        ; $6f6b: $f1
    ld bc, $776f                                  ; $6f6c: $01 $6f $77
    db $10                                        ; $6f6f: $10
    add hl, de                                    ; $6f70: $19
    scf                                           ; $6f71: $37
    rst $20                                       ; $6f72: $e7
    sub [hl]                                      ; $6f73: $96
    ld a, h                                       ; $6f74: $7c
    ld l, c                                       ; $6f75: $69
    and [hl]                                      ; $6f76: $a6
    push de                                       ; $6f77: $d5
    ld [bc], a                                    ; $6f78: $02
    inc c                                         ; $6f79: $0c
    halt                                          ; $6f7a: $76
    ld l, d                                       ; $6f7b: $6a
    ld a, c                                       ; $6f7c: $79
    ld h, [hl]                                    ; $6f7d: $66
    cp c                                          ; $6f7e: $b9
    inc de                                        ; $6f7f: $13
    ld [hl], $d5                                  ; $6f80: $36 $d5
    and h                                         ; $6f82: $a4
    dec h                                         ; $6f83: $25
    cpl                                           ; $6f84: $2f
    add sp, $14                                   ; $6f85: $e8 $14
    sbc e                                         ; $6f87: $9b

jr_049_6f88:
    ld [hl], c                                    ; $6f88: $71
    ld a, h                                       ; $6f89: $7c
    nop                                           ; $6f8a: $00
    rst $08                                       ; $6f8b: $cf
    ld a, l                                       ; $6f8c: $7d
    ld a, a                                       ; $6f8d: $7f
    add $c0                                       ; $6f8e: $c6 $c0
    ld e, e                                       ; $6f90: $5b
    jp z, Jump_000_1585                           ; $6f91: $ca $85 $15

    add h                                         ; $6f94: $84
    and $ce                                       ; $6f95: $e6 $ce
    db $dd                                        ; $6f97: $dd
    ld c, a                                       ; $6f98: $4f
    or l                                          ; $6f99: $b5
    call nz, $40f2                                ; $6f9a: $c4 $f2 $40
    rst $08                                       ; $6f9d: $cf
    ret c                                         ; $6f9e: $d8

    adc h                                         ; $6f9f: $8c
    rrca                                          ; $6fa0: $0f
    ld l, a                                       ; $6fa1: $6f
    dec de                                        ; $6fa2: $1b
    rrca                                          ; $6fa3: $0f
    push de                                       ; $6fa4: $d5
    ld a, h                                       ; $6fa5: $7c
    rst $30                                       ; $6fa6: $f7
    ld a, [hl-]                                   ; $6fa7: $3a
    or a                                          ; $6fa8: $b7
    add hl, sp                                    ; $6fa9: $39
    ld e, a                                       ; $6faa: $5f
    jp c, Jump_000_18db                           ; $6fab: $da $db $18

    sbc h                                         ; $6fae: $9c
    sbc e                                         ; $6faf: $9b
    ld d, a                                       ; $6fb0: $57
    ld c, $cf                                     ; $6fb1: $0e $cf
    or l                                          ; $6fb3: $b5
    add hl, sp                                    ; $6fb4: $39
    db $f4                                        ; $6fb5: $f4
    db $ed                                        ; $6fb6: $ed
    push bc                                       ; $6fb7: $c5
    ld [hl+], a                                   ; $6fb8: $22
    inc sp                                        ; $6fb9: $33
    jp c, $d9eb                                   ; $6fba: $da $eb $d9

    ld b, d                                       ; $6fbd: $42
    dec sp                                        ; $6fbe: $3b
    and c                                         ; $6fbf: $a1
    ld e, [hl]                                    ; $6fc0: $5e
    ret c                                         ; $6fc1: $d8

    ld l, b                                       ; $6fc2: $68
    add c                                         ; $6fc3: $81
    ld sp, $c537                                  ; $6fc4: $31 $37 $c5
    rra                                           ; $6fc7: $1f
    ld l, a                                       ; $6fc8: $6f
    and c                                         ; $6fc9: $a1
    or $25                                        ; $6fca: $f6 $25
    pop af                                        ; $6fcc: $f1
    ld a, e                                       ; $6fcd: $7b
    cp e                                          ; $6fce: $bb
    dec bc                                        ; $6fcf: $0b
    dec hl                                        ; $6fd0: $2b
    ld [$25cd], sp                                ; $6fd1: $08 $cd $25
    sub [hl]                                      ; $6fd4: $96
    rla                                           ; $6fd5: $17
    or l                                          ; $6fd6: $b5
    inc [hl]                                      ; $6fd7: $34
    or e                                          ; $6fd8: $b3
    ld e, h                                       ; $6fd9: $5c
    ret c                                         ; $6fda: $d8

    ld l, b                                       ; $6fdb: $68
    and b                                         ; $6fdc: $a0
    sbc $e0                                       ; $6fdd: $de $e0
    ld hl, $07c7                                  ; $6fdf: $21 $c7 $07
    xor a                                         ; $6fe2: $af
    ld h, a                                       ; $6fe3: $67
    ld [hl], l                                    ; $6fe4: $75
    inc e                                         ; $6fe5: $1c
    rst $00                                       ; $6fe6: $c7
    ld [hl], e                                    ; $6fe7: $73
    ld c, e                                       ; $6fe8: $4b
    adc d                                         ; $6fe9: $8a
    ccf                                           ; $6fea: $3f
    or h                                          ; $6feb: $b4
    and b                                         ; $6fec: $a0
    pop af                                        ; $6fed: $f1
    ld bc, $7797                                  ; $6fee: $01 $97 $77

Call_049_6ff1:
    ld e, l                                       ; $6ff1: $5d
    sbc $75                                       ; $6ff2: $de $75
    ld l, c                                       ; $6ff4: $69
    ld b, h                                       ; $6ff5: $44
    ld h, d                                       ; $6ff6: $62
    ld [c], a                                     ; $6ff7: $e2
    jr c, jr_049_6f88                             ; $6ff8: $38 $8e

    daa                                           ; $6ffa: $27
    rst $28                                       ; $6ffb: $ef
    sub d                                         ; $6ffc: $92
    ld [hl], a                                    ; $6ffd: $77
    ld c, c                                       ; $6ffe: $49
    inc c                                         ; $6fff: $0c
    and h                                         ; $7000: $a4
    ld hl, sp+$03                                 ; $7001: $f8 $03
    sub a                                         ; $7003: $97
    push hl                                       ; $7004: $e5
    and c                                         ; $7005: $a1
    ld e, d                                       ; $7006: $5a
    ld h, d                                       ; $7007: $62
    ld a, c                                       ; $7008: $79
    ld h, [hl]                                    ; $7009: $66
    db $e4                                        ; $700a: $e4
    ld de, $47ec                                  ; $700b: $11 $ec $47
    inc bc                                        ; $700e: $03
    ld h, h                                       ; $700f: $64
    ld d, b                                       ; $7010: $50
    ld d, b                                       ; $7011: $50
    dec [hl]                                      ; $7012: $35
    xor $22                                       ; $7013: $ee $22
    sub e                                         ; $7015: $93
    call $b77d                                    ; $7016: $cd $7d $b7
    or h                                          ; $7019: $b4
    or b                                          ; $701a: $b0
    inc a                                         ; $701b: $3c
    ld d, b                                       ; $701c: $50
    push bc                                       ; $701d: $c5
    sbc a                                         ; $701e: $9f
    cp c                                          ; $701f: $b9
    inc [hl]                                      ; $7020: $34
    rst $10                                       ; $7021: $d7
    ld [hl], d                                    ; $7022: $72
    rst $08                                       ; $7023: $cf
    inc de                                        ; $7024: $13
    and [hl]                                      ; $7025: $a6
    xor h                                         ; $7026: $ac
    adc [hl]                                      ; $7027: $8e
    rrca                                          ; $7028: $0f
    cpl                                           ; $7029: $2f
    or l                                          ; $702a: $b5
    ld [c], a                                     ; $702b: $e2
    rst $30                                       ; $702c: $f7
    inc a                                         ; $702d: $3c
    ld b, $52                                     ; $702e: $06 $52
    db $fc                                        ; $7030: $fc
    ld bc, $992f                                  ; $7031: $01 $2f $99
    pop de                                        ; $7034: $d1
    inc b                                         ; $7035: $04
    rlca                                          ; $7036: $07
    cp c                                          ; $7037: $b9
    add hl, hl                                    ; $7038: $29
    ld a, [hl]                                    ; $7039: $7e
    rst $10                                       ; $703a: $d7
    db $e4                                        ; $703b: $e4
    or d                                          ; $703c: $b2
    adc l                                         ; $703d: $8d
    ld d, $96                                     ; $703e: $16 $96
    and a                                         ; $7040: $a7
    or c                                          ; $7041: $b1
    ld l, [hl]                                    ; $7042: $6e
    ld l, c                                       ; $7043: $69
    ld e, h                                       ; $7044: $5c
    ret nc                                        ; $7045: $d0

    call c, $a85b                                 ; $7046: $dc $5b $a8
    ld a, l                                       ; $7049: $7d
    ld l, c                                       ; $704a: $69
    rra                                           ; $704b: $1f
    sbc d                                         ; $704c: $9a
    or a                                          ; $704d: $b7
    inc e                                         ; $704e: $1c
    rla                                           ; $704f: $17
    inc [hl]                                      ; $7050: $34
    rst $20                                       ; $7051: $e7
    adc l                                         ; $7052: $8d
    rla                                           ; $7053: $17
    db $fd                                        ; $7054: $fd
    ld d, h                                       ; $7055: $54
    ld e, h                                       ; $7056: $5c
    ld [de], a                                    ; $7057: $12
    ld a, a                                       ; $7058: $7f
    nop                                           ; $7059: $00
    ld l, a                                       ; $705a: $6f
    sbc e                                         ; $705b: $9b
    pop de                                        ; $705c: $d1
    adc a                                         ; $705d: $8f
    and $9b                                       ; $705e: $e6 $9b
    ld [hl], d                                    ; $7060: $72
    ld b, c                                       ; $7061: $41
    rst $20                                       ; $7062: $e7
    adc l                                         ; $7063: $8d
    ld [hl], a                                    ; $7064: $77
    cp $b7                                        ; $7065: $fe $b7
    push hl                                       ; $7067: $e5
    add h                                         ; $7068: $84
    ld d, [hl]                                    ; $7069: $56
    pop af                                        ; $706a: $f1
    ld a, $04                                     ; $706b: $3e $04
    xor d                                         ; $706d: $aa
    db $f4                                        ; $706e: $f4
    rst $20                                       ; $706f: $e7
    and $ce                                       ; $7070: $e6 $ce
    ret z                                         ; $7072: $c8

    jp $9b5c                                      ; $7073: $c3 $5c $9b


    ld d, e                                       ; $7076: $53
    ldh a, [$f0]                                  ; $7077: $f0 $f0
    ld a, a                                       ; $7079: $7f
    ld a, l                                       ; $707a: $7d
    push hl                                       ; $707b: $e5
    nop                                           ; $707c: $00
    rst $28                                       ; $707d: $ef
    add hl, de                                    ; $707e: $19
    ld e, b                                       ; $707f: $58
    ret nc                                        ; $7080: $d0

    ld a, c                                       ; $7081: $79
    db $e3                                        ; $7082: $e3
    ld l, c                                       ; $7083: $69
    rlca                                          ; $7084: $07
    push hl                                       ; $7085: $e5
    ld [de], a                                    ; $7086: $12
    srl e                                         ; $7087: $cb $3b
    sbc c                                         ; $7089: $99
    pop de                                        ; $708a: $d1
    ld b, d                                       ; $708b: $42
    inc c                                         ; $708c: $0c
    or $a1                                        ; $708d: $f6 $a1
    add hl, hl                                    ; $708f: $29
    cp $e9                                        ; $7090: $fe $e9
    xor a                                         ; $7092: $af
    db $ec                                        ; $7093: $ec
    ld [de], a                                    ; $7094: $12
    add e                                         ; $7095: $83
    add hl, bc                                    ; $7096: $09
    dec a                                         ; $7097: $3d
    sbc c                                         ; $7098: $99
    ld c, c                                       ; $7099: $49
    ld e, $96                                     ; $709a: $1e $96
    ld d, l                                       ; $709c: $55
    ld a, h                                       ; $709d: $7c
    nop                                           ; $709e: $00
    ld l, a                                       ; $709f: $6f
    ld a, l                                       ; $70a0: $7d
    dec c                                         ; $70a1: $0d
    sbc d                                         ; $70a2: $9a
    ld l, d                                       ; $70a3: $6a
    ld de, $1306                                  ; $70a4: $11 $06 $13
    ld a, d                                       ; $70a7: $7a
    ld [hl-], a                                   ; $70a8: $32
    sub e                                         ; $70a9: $93
    cp h                                          ; $70aa: $bc
    db $10                                        ; $70ab: $10
    add e                                         ; $70ac: $83
    ld sp, hl                                     ; $70ad: $f9
    xor $75                                       ; $70ae: $ee $75
    ld l, [hl]                                    ; $70b0: $6e
    ld [hl], e                                    ; $70b1: $73
    cp [hl]                                       ; $70b2: $be
    or h                                          ; $70b3: $b4
    or a                                          ; $70b4: $b7
    ld sp, $3738                                  ; $70b5: $31 $38 $37
    push bc                                       ; $70b8: $c5
    rra                                           ; $70b9: $1f
    ld d, a                                       ; $70ba: $57
    sub c                                         ; $70bb: $91
    add a                                         ; $70bc: $87
    ld l, d                                       ; $70bd: $6a
    and b                                         ; $70be: $a0
    xor [hl]                                      ; $70bf: $ae
    add hl, de                                    ; $70c0: $19
    ld l, c                                       ; $70c1: $69
    inc c                                         ; $70c2: $0c
    db $e4                                        ; $70c3: $e4
    sbc d                                         ; $70c4: $9a
    dec bc                                        ; $70c5: $0b
    bit 0, e                                      ; $70c6: $cb $43
    or l                                          ; $70c8: $b5
    ret nc                                        ; $70c9: $d0

    adc b                                         ; $70ca: $88
    dec d                                         ; $70cb: $15
    and e                                         ; $70cc: $a3
    sub h                                         ; $70cd: $94
    sbc l                                         ; $70ce: $9d
    ld [hl], $e3                                  ; $70cf: $36 $e3
    ld a, b                                       ; $70d1: $78
    cpl                                           ; $70d2: $2f
    jr jr_049_710c                                ; $70d3: $18 $37

    ld [hl], a                                    ; $70d5: $77
    ld [$0624], a                                 ; $70d6: $ea $24 $06
    or d                                          ; $70d9: $b2
    cp c                                          ; $70da: $b9
    cpl                                           ; $70db: $2f
    sbc d                                         ; $70dc: $9a
    rst $28                                       ; $70dd: $ef
    xor [hl]                                      ; $70de: $ae
    and d                                         ; $70df: $a2
    sub h                                         ; $70e0: $94
    db $dd                                        ; $70e1: $dd
    ld d, l                                       ; $70e2: $55
    adc e                                         ; $70e3: $8b
    ld a, [hl-]                                   ; $70e4: $3a
    call z, $eef9                                 ; $70e5: $cc $f9 $ee
    or l                                          ; $70e8: $b5

jr_049_70e9:
    ld a, a                                       ; $70e9: $7f
    xor $ae                                       ; $70ea: $ee $ae
    dec sp                                        ; $70ec: $3b
    inc h                                         ; $70ed: $24
    ld h, a                                       ; $70ee: $67
    ld a, d                                       ; $70ef: $7a
    ld e, h                                       ; $70f0: $5c
    ld [hl], d                                    ; $70f1: $72
    ret nz                                        ; $70f2: $c0

    ld d, b                                       ; $70f3: $50
    push bc                                       ; $70f4: $c5
    rlca                                          ; $70f5: $07
    ld l, a                                       ; $70f6: $6f
    sbc e                                         ; $70f7: $9b
    pop de                                        ; $70f8: $d1
    adc $18                                       ; $70f9: $ce $18
    db $e4                                        ; $70fb: $e4
    ld [bc], a                                    ; $70fc: $02
    ld b, a                                       ; $70fd: $47
    ld l, e                                       ; $70fe: $6b
    db $ec                                        ; $70ff: $ec
    jr nc, jr_049_70e9                            ; $7100: $30 $e7

    ld d, d                                       ; $7102: $52
    ld a, l                                       ; $7103: $7d
    ld d, l                                       ; $7104: $55
    sbc d                                         ; $7105: $9a
    ld b, l                                       ; $7106: $45
    inc bc                                        ; $7107: $03
    dec a                                         ; $7108: $3d
    or l                                          ; $7109: $b5
    adc d                                         ; $710a: $8a
    xor a                                         ; $710b: $af

jr_049_710c:
    inc e                                         ; $710c: $1c
    ld d, a                                       ; $710d: $57
    ld a, a                                       ; $710e: $7f
    ld a, c                                       ; $710f: $79
    and l                                         ; $7110: $a5
    dec h                                         ; $7111: $25
    sub [hl]                                      ; $7112: $96
    rst $00                                       ; $7113: $c7
    cp a                                          ; $7114: $bf
    ld [c], a                                     ; $7115: $e2
    rst $30                                       ; $7116: $f7
    sub [hl]                                      ; $7117: $96
    sub c                                         ; $7118: $91
    ld l, h                                       ; $7119: $6c
    ld a, [hl+]                                   ; $711a: $2a
    sub l                                         ; $711b: $95
    ld c, $b2                                     ; $711c: $0e $b2
    ld hl, sp+$03                                 ; $711e: $f8 $03
    rst $10                                       ; $7120: $d7
    dec e                                         ; $7121: $1d
    xor l                                         ; $7122: $ad
    or c                                          ; $7123: $b1
    adc e                                         ; $7124: $8b
    ld a, [hl]                                    ; $7125: $7e
    cp c                                          ; $7126: $b9
    cp c                                          ; $7127: $b9
    rrca                                          ; $7128: $0f
    add l                                         ; $7129: $85
    rst $18                                       ; $712a: $df
    pop af                                        ; $712b: $f1
    call $e545                                    ; $712c: $cd $45 $e5
    cp c                                          ; $712f: $b9
    sub [hl]                                      ; $7130: $96
    di                                            ; $7131: $f3
    ret c                                         ; $7132: $d8

    add hl, de                                    ; $7133: $19
    inc a                                         ; $7134: $3c
    db $e4                                        ; $7135: $e4
    sub d                                         ; $7136: $92
    add $40                                       ; $7137: $c6 $40
    halt                                          ; $7139: $76
    ld c, $b2                                     ; $713a: $0e $b2
    ld h, d                                       ; $713c: $62
    add e                                         ; $713d: $83
    add d                                         ; $713e: $82
    xor d                                         ; $713f: $aa
    ld a, b                                       ; $7140: $78
    ld c, a                                       ; $7141: $4f
    ld l, d                                       ; $7142: $6a
    or l                                          ; $7143: $b5
    ret nz                                        ; $7144: $c0

    pop de                                        ; $7145: $d1
    ld a, [de]                                    ; $7146: $1a
    cp e                                          ; $7147: $bb
    or b                                          ; $7148: $b0
    cp h                                          ; $7149: $bc
    call nz, Call_049_4af2                        ; $714a: $c4 $f2 $4a
    ld h, b                                       ; $714d: $60
    ld l, $a6                                     ; $714e: $2e $a6
    ld l, a                                       ; $7150: $6f
    ld e, [hl]                                    ; $7151: $5e
    inc c                                         ; $7152: $0c
    ret c                                         ; $7153: $d8

    ld d, b                                       ; $7154: $50
    ld l, $9d                                     ; $7155: $2e $9d
    and l                                         ; $7157: $a5
    add hl, de                                    ; $7158: $19
    ld c, l                                       ; $7159: $4d
    xor b                                         ; $715a: $a8
    adc a                                         ; $715b: $8f
    rrca                                          ; $715c: $0f
    rst $10                                       ; $715d: $d7
    db $e4                                        ; $715e: $e4
    cp $97                                        ; $715f: $fe $97
    pop af                                        ; $7161: $f1
    sbc $46                                       ; $7162: $de $46
    xor l                                         ; $7164: $ad
    ld d, c                                       ; $7165: $51
    and b                                         ; $7166: $a0
    ld c, a                                       ; $7167: $4f
    ld a, [hl]                                    ; $7168: $7e
    jp nc, $8972                                  ; $7169: $d2 $72 $89

    push hl                                       ; $716c: $e5
    add hl, hl                                    ; $716d: $29
    ld l, l                                       ; $716e: $6d
    ld d, b                                       ; $716f: $50
    ld [hl], e                                    ; $7170: $73
    and [hl]                                      ; $7171: $a6
    push de                                       ; $7172: $d5
    ld d, b                                       ; $7173: $50
    xor [hl]                                      ; $7174: $ae
    or h                                          ; $7175: $b4
    call nz, $84f2                                ; $7176: $c4 $f2 $84
    ld h, [hl]                                    ; $7179: $66
    ld a, h                                       ; $717a: $7c
    nop                                           ; $717b: $00
    ld l, a                                       ; $717c: $6f
    ld [hl], a                                    ; $717d: $77
    pop de                                        ; $717e: $d1
    cpl                                           ; $717f: $2f
    scf                                           ; $7180: $37
    rst $30                                       ; $7181: $f7
    ld h, h                                       ; $7182: $64
    ld a, [$c692]                                 ; $7183: $fa $92 $c6
    inc b                                         ; $7186: $04
    ei                                            ; $7187: $fb
    ld l, [hl]                                    ; $7188: $6e
    ld l, c                                       ; $7189: $69
    xor a                                         ; $718a: $af
    ld h, a                                       ; $718b: $67
    dec bc                                        ; $718c: $0b
    call $712d                                    ; $718d: $cd $2d $71
    or l                                          ; $7190: $b5
    ld l, [hl]                                    ; $7191: $6e
    add $07                                       ; $7192: $c6 $07
    rst $10                                       ; $7194: $d7
    db $e4                                        ; $7195: $e4
    ld a, h                                       ; $7196: $7c
    ld d, e                                       ; $7197: $53
    ld l, $b1                                     ; $7198: $2e $b1
    inc a                                         ; $719a: $3c
    ld l, a                                       ; $719b: $6f
    cp h                                          ; $719c: $bc
    inc sp                                        ; $719d: $33
    ld b, $fb                                     ; $719e: $06 $fb
    xor c                                         ; $71a0: $a9
    ld b, $aa                                     ; $71a1: $06 $aa
    rst $38                                       ; $71a3: $ff
    rla                                           ; $71a4: $17
    ld [hl], c                                    ; $71a5: $71
    cp h                                          ; $71a6: $bc
    ld h, a                                       ; $71a7: $67
    ld [hl], d                                    ; $71a8: $72
    rst $20                                       ; $71a9: $e7
    ld l, d                                       ; $71aa: $6a
    sub c                                         ; $71ab: $91
    sbc d                                         ; $71ac: $9a
    ld l, c                                       ; $71ad: $69
    or l                                          ; $71ae: $b5
    ld [hl], e                                    ; $71af: $73
    rst $20                                       ; $71b0: $e7
    adc l                                         ; $71b1: $8d
    ld [hl], a                                    ; $71b2: $77
    xor d                                         ; $71b3: $aa

Jump_049_71b4:
    sbc [hl]                                      ; $71b4: $9e
    rst $38                                       ; $71b5: $ff
    push hl                                       ; $71b6: $e5
    adc e                                         ; $71b7: $8b
    ld a, c                                       ; $71b8: $79
    res 3, l                                      ; $71b9: $cb $9d
    ld e, d                                       ; $71bb: $5a
    sbc $b9                                       ; $71bc: $de $b9
    adc e                                         ; $71be: $8b
    jp z, $ee6d                                   ; $71bf: $ca $6d $ee

    ld a, a                                       ; $71c2: $7f
    add hl, sp                                    ; $71c3: $39
    ld l, a                                       ; $71c4: $6f
    cp h                                          ; $71c5: $bc
    inc de                                        ; $71c6: $13
    ld b, $bb                                     ; $71c7: $06 $bb
    ld c, l                                       ; $71c9: $4d
    dec l                                         ; $71ca: $2d
    dec c                                         ; $71cb: $0d
    ld e, $b2                                     ; $71cc: $1e $b2
    sbc d                                         ; $71ce: $9a
    rst $38                                       ; $71cf: $ff
    sbc a                                         ; $71d0: $9f
    and $3b                                       ; $71d1: $e6 $3b
    ld h, b                                       ; $71d3: $60
    add hl, bc                                    ; $71d4: $09
    sbc d                                         ; $71d5: $9a
    dec sp                                        ; $71d6: $3b
    sbc a                                         ; $71d7: $9f
    ld c, d                                       ; $71d8: $4a
    ld l, [hl]                                    ; $71d9: $6e
    inc sp                                        ; $71da: $33
    ld a, $00                                     ; $71db: $3e $00
    cpl                                           ; $71dd: $2f
    and d                                         ; $71de: $a2
    ld d, d                                       ; $71df: $52
    ldh a, [rNR10]                                ; $71e0: $f0 $10
    sbc e                                         ; $71e2: $9b
    pop af                                        ; $71e3: $f1
    ld e, [hl]                                    ; $71e4: $5e
    inc [hl]                                      ; $71e5: $34
    and e                                         ; $71e6: $a3
    sbc l                                         ; $71e7: $9d
    cp d                                          ; $71e8: $ba
    add sp, -$69                                  ; $71e9: $e8 $97
    sbc e                                         ; $71eb: $9b
    jp $9ab2                                      ; $71ec: $c3 $b2 $9a


    rst $38                                       ; $71ef: $ff
    ld c, l                                       ; $71f0: $4d
    pop af                                        ; $71f1: $f1
    rlca                                          ; $71f2: $07
    ld l, a                                       ; $71f3: $6f
    ld [hl], a                                    ; $71f4: $77
    pop de                                        ; $71f5: $d1
    cpl                                           ; $71f6: $2f
    scf                                           ; $71f7: $37
    rla                                           ; $71f8: $17
    or l                                          ; $71f9: $b5
    inc [hl]                                      ; $71fa: $34
    and c                                         ; $71fb: $a1
    daa                                           ; $71fc: $27
    inc c                                         ; $71fd: $0c
    call nc, Call_000_0ac2                        ; $71fe: $d4 $c2 $0a
    ld b, d                                       ; $7201: $42
    ld [hl], e                                    ; $7202: $73
    and [hl]                                      ; $7203: $a6
    push de                                       ; $7204: $d5
    ld c, [hl]                                    ; $7205: $4e
    db $dd                                        ; $7206: $dd
    sub e                                         ; $7207: $93
    jp hl                                         ; $7208: $e9


    ld c, e                                       ; $7209: $4b
    ld a, [de]                                    ; $720a: $1a
    inc de                                        ; $720b: $13
    db $ec                                        ; $720c: $ec
    add h                                         ; $720d: $84
    ld e, d                                       ; $720e: $5a
    scf                                           ; $720f: $37
    rst $30                                       ; $7210: $f7
    db $dd                                        ; $7211: $dd
    ld [de], a                                    ; $7212: $12
    dec sp                                        ; $7213: $3b
    ld [$f19a], sp                                ; $7214: $08 $9a $f1
    sbc $ee                                       ; $7217: $de $ee
    and d                                         ; $7219: $a2
    ld e, a                                       ; $721a: $5f
    ld l, [hl]                                    ; $721b: $6e
    adc $41                                       ; $721c: $ce $41
    halt                                          ; $721e: $76
    ld d, c                                       ; $721f: $51
    xor c                                         ; $7220: $a9
    and $4e                                       ; $7221: $e6 $4e
    add $f3                                       ; $7223: $c6 $f3
    ret c                                         ; $7225: $d8

    cp l                                          ; $7226: $bd
    adc $6d                                       ; $7227: $ce $6d
    adc $97                                       ; $7229: $ce $97
    or $36                                        ; $722b: $f6 $36
    ld b, $e7                                     ; $722d: $06 $e7
    and $50                                       ; $722f: $e6 $50
    push bc                                       ; $7231: $c5
    rlca                                          ; $7232: $07
    rst $08                                       ; $7233: $cf
    db $fd                                        ; $7234: $fd
    ld a, [$6fa1]                                 ; $7235: $fa $a1 $6f
    db $e3                                        ; $7238: $e3
    cp l                                          ; $7239: $bd
    db $dd                                        ; $723a: $dd
    add hl, bc                                    ; $723b: $09
    dec b                                         ; $723c: $05
    sbc b                                         ; $723d: $98
    reti                                          ; $723e: $d9


    ld e, h                                       ; $723f: $5c
    db $f4                                        ; $7240: $f4
    add hl, bc                                    ; $7241: $09
    inc [hl]                                      ; $7242: $34
    db $e3                                        ; $7243: $e3
    ld e, l                                       ; $7244: $5d
    sub e                                         ; $7245: $93
    dec bc                                        ; $7246: $0b
    dec hl                                        ; $7247: $2b
    call z, $9ffd                                 ; $7248: $cc $fd $9f
    and $5a                                       ; $724b: $e6 $5a
    and [hl]                                      ; $724d: $a6
    pop bc                                        ; $724e: $c1
    ld b, e                                       ; $724f: $43
    sbc $a9                                       ; $7250: $de $a9
    ld a, d                                       ; $7252: $7a
    and b                                         ; $7253: $a0
    ld sp, hl                                     ; $7254: $f9
    dec bc                                        ; $7255: $0b
    or $a1                                        ; $7256: $f6 $a1
    inc de                                        ; $7258: $13
    and [hl]                                      ; $7259: $a6
    rst $00                                       ; $725a: $c7
    inc b                                         ; $725b: $04
    inc sp                                        ; $725c: $33
    ld a, b                                       ; $725d: $78
    ret z                                         ; $725e: $c8

    and l                                         ; $725f: $a5
    ld sp, hl                                     ; $7260: $f9
    adc [hl]                                      ; $7261: $8e
    inc e                                         ; $7262: $1c
    db $10                                        ; $7263: $10
    rst $28                                       ; $7264: $ef
    db $ed                                        ; $7265: $ed
    ld l, d                                       ; $7266: $6a
    ld l, $39                                     ; $7267: $2e $39
    adc d                                         ; $7269: $8a
    sbc e                                         ; $726a: $9b
    cp e                                          ; $726b: $bb
    inc [hl]                                      ; $726c: $34
    ld [hl+], a                                   ; $726d: $22
    ld sp, $01f1                                  ; $726e: $31 $f1 $01
    ld l, a                                       ; $7271: $6f
    ld d, a                                       ; $7272: $57
    ld [hl], e                                    ; $7273: $73
    ret                                           ; $7274: $c9


    ld d, c                                       ; $7275: $51
    call c, $d8bc                                 ; $7276: $dc $bc $d8
    ld l, e                                       ; $7279: $6b
    ccf                                           ; $727a: $3f
    db $e3                                        ; $727b: $e3
    inc bc                                        ; $727c: $03
    rst $08                                       ; $727d: $cf
    rst $38                                       ; $727e: $ff
    ld l, b                                       ; $727f: $68
    rra                                           ; $7280: $1f
    adc d                                         ; $7281: $8a
    or a                                          ; $7282: $b7
    or a                                          ; $7283: $b7
    cp e                                          ; $7284: $bb
    add sp, -$69                                  ; $7285: $e8 $97
    sbc e                                         ; $7287: $9b
    rrc a                                         ; $7288: $cb $0f
    sub $a6                                       ; $728a: $d6 $a6
    ld a, [de]                                    ; $728c: $1a
    ld b, h                                       ; $728d: $44
    ld e, a                                       ; $728e: $5f
    jr z, jr_049_72c6                             ; $728f: $28 $35

    rst $30                                       ; $7291: $f7
    and e                                         ; $7292: $a3
    cp l                                          ; $7293: $bd
    ld l, b                                       ; $7294: $68
    ld e, d                                       ; $7295: $5a
    add h                                         ; $7296: $84
    sbc $51                                       ; $7297: $de $51
    db $e3                                        ; $7299: $e3
    adc $c5                                       ; $729a: $ce $c5
    db $f4                                        ; $729c: $f4
    call $ce61                                    ; $729d: $cd $61 $ce
    ld [hl], a                                    ; $72a0: $77
    xor a                                         ; $72a1: $af
    db $10                                        ; $72a2: $10
    ld b, $e7                                     ; $72a3: $06 $e7
    and [hl]                                      ; $72a5: $a6
    or h                                          ; $72a6: $b4
    xor b                                         ; $72a7: $a8
    inc d                                         ; $72a8: $14
    rra                                           ; $72a9: $1f
    ld l, a                                       ; $72aa: $6f
    ld [hl], a                                    ; $72ab: $77
    pop de                                        ; $72ac: $d1
    cpl                                           ; $72ad: $2f
    scf                                           ; $72ae: $37
    rla                                           ; $72af: $17
    ld h, d                                       ; $72b0: $62
    ld c, c                                       ; $72b1: $49
    ld hl, sp+$6e                                 ; $72b2: $f8 $6e
    ld [hl], e                                    ; $72b4: $73
    add d                                         ; $72b5: $82
    add $c0                                       ; $72b6: $c6 $c0
    ld l, l                                       ; $72b8: $6d
    ld e, [hl]                                    ; $72b9: $5e
    db $ec                                        ; $72ba: $ec
    jp nc, $c488                                  ; $72bb: $d2 $88 $c4

    call nz, $d5db                                ; $72be: $c4 $db $d5
    xor $15                                       ; $72c1: $ee $15
    jp nz, $dce0                                  ; $72c3: $c2 $e0 $dc

jr_049_72c6:
    sub h                                         ; $72c6: $94
    ld d, $95                                     ; $72c7: $16 $95
    add [hl]                                      ; $72c9: $86
    ld l, d                                       ; $72ca: $6a
    rra                                           ; $72cb: $1f
    sbc d                                         ; $72cc: $9a
    rst $28                                       ; $72cd: $ef
    ld a, h                                       ; $72ce: $7c
    ret                                           ; $72cf: $c9


    ld [hl], a                                    ; $72d0: $77
    ld l, [hl]                                    ; $72d1: $6e
    ret                                           ; $72d2: $c9


    ld h, e                                       ; $72d3: $63
    ld hl, $104c                                  ; $72d4: $21 $4c $10
    rra                                           ; $72d7: $1f
    ld d, a                                       ; $72d8: $57
    call Call_049_4268                            ; $72d9: $cd $68 $42
    ld [hl], e                                    ; $72dc: $73
    ld b, c                                       ; $72dd: $41
    cpl                                           ; $72de: $2f
    halt                                          ; $72df: $76
    ld l, c                                       ; $72e0: $69
    ld b, h                                       ; $72e1: $44
    ld h, d                                       ; $72e2: $62
    ld [c], a                                     ; $72e3: $e2
    db $ed                                        ; $72e4: $ed
    dec b                                         ; $72e5: $05
    db $e3                                        ; $72e6: $e3
    and $4e                                       ; $72e7: $e6 $4e
    sbc l                                         ; $72e9: $9d

jr_049_72ea:
    ld e, c                                       ; $72ea: $59
    xor $e7                                       ; $72eb: $ee $e7
    cp c                                          ; $72ed: $b9
    ld h, e                                       ; $72ee: $63
    inc de                                        ; $72ef: $13
    ld d, l                                       ; $72f0: $55
    rrca                                          ; $72f1: $0f
    sbc b                                         ; $72f2: $98
    push hl                                       ; $72f3: $e5
    adc $c8                                       ; $72f4: $ce $c8
    call c, $0f8c                                 ; $72f6: $dc $8c $0f
    ld l, a                                       ; $72f9: $6f
    add hl, de                                    ; $72fa: $19
    ret                                           ; $72fb: $c9


jr_049_72fc:
    and [hl]                                      ; $72fc: $a6
    ld d, d                                       ; $72fd: $52
    jp hl                                         ; $72fe: $e9


Jump_049_72ff:
    jr nz, @-$37                                  ; $72ff: $20 $c7

    rlca                                          ; $7301: $07
    ld d, a                                       ; $7302: $57
    call $d268                                    ; $7303: $cd $68 $d2
    ld [hl], d                                    ; $7306: $72
    jr z, @+$29                                   ; $7307: $28 $27

    sub h                                         ; $7309: $94
    ld c, e                                       ; $730a: $4b
    ld c, e                                       ; $730b: $4b
    inc l                                         ; $730c: $2c
    rrca                                          ; $730d: $0f
    inc de                                        ; $730e: $13
    sbc b                                         ; $730f: $98
    ld h, l                                       ; $7310: $65
    cp h                                          ; $7311: $bc
    ld e, l                                       ; $7312: $5d
    dec [hl]                                      ; $7313: $35
    ld e, $aa                                     ; $7314: $1e $aa
    cp c                                          ; $7316: $b9

Call_049_7317:
    dec h                                         ; $7317: $25
    pop hl                                        ; $7318: $e1
    ei                                            ; $7319: $fb
    ld h, [hl]                                    ; $731a: $66
    ld a, h                                       ; $731b: $7c
    nop                                           ; $731c: $00
    ld l, a                                       ; $731d: $6f
    pop de                                        ; $731e: $d1
    rst $10                                       ; $731f: $d7
    jr jr_049_72ea                                ; $7320: $18 $c8

    ret                                           ; $7322: $c9


    sub d                                         ; $7323: $92
    ld h, d                                       ; $7324: $62
    ld d, c                                       ; $7325: $51
    xor e                                         ; $7326: $ab
    ld hl, sp+$62                                 ; $7327: $f8 $62
    sub a                                         ; $7329: $97
    ld b, [hl]                                    ; $732a: $46
    inc h                                         ; $732b: $24
    ld b, [hl]                                    ; $732c: $46
    db $fc                                        ; $732d: $fc
    ld bc, $d16f                                  ; $732e: $01 $6f $d1
    rst $10                                       ; $7331: $d7
    jr jr_049_72fc                                ; $7332: $18 $c8

    ret                                           ; $7334: $c9


    sub d                                         ; $7335: $92
    ld h, d                                       ; $7336: $62
    ld d, c                                       ; $7337: $51
    xor e                                         ; $7338: $ab
    ld hl, sp+$62                                 ; $7339: $f8 $62
    xor a                                         ; $733b: $af
    db $fd                                        ; $733c: $fd
    inc d                                         ; $733d: $14
    cp a                                          ; $733e: $bf
    rla                                           ; $733f: $17
    ld a, a                                       ; $7340: $7f
    ld a, c                                       ; $7341: $79
    ld b, c                                       ; $7342: $41
    ld [hl], a                                    ; $7343: $77
    add $e6                                       ; $7344: $c6 $e6
    push bc                                       ; $7346: $c5
    ld c, [hl]                                    ; $7347: $4e
    ld e, l                                       ; $7348: $5d
    ld e, b                                       ; $7349: $58
    ld b, c                                       ; $734a: $41
    ld l, b                                       ; $734b: $68
    ld c, $6e                                     ; $734c: $0e $6e
    cp [hl]                                       ; $734e: $be
    and $70                                       ; $734f: $e6 $70
    ld d, b                                       ; $7351: $50
    dec [hl]                                      ; $7352: $35
    ld d, b                                       ; $7353: $50

Jump_049_7354:
    ld c, c                                       ; $7354: $49
    dec b                                         ; $7355: $05
    call $00f8                                    ; $7356: $cd $f8 $00
    ld l, a                                       ; $7359: $6f
    ld [hl], a                                    ; $735a: $77
    ld h, c                                       ; $735b: $61
    dec b                                         ; $735c: $05
    and c                                         ; $735d: $a1
    add hl, sp                                    ; $735e: $39
    rst $18                                       ; $735f: $df
    ld e, c                                       ; $7360: $59
    ld a, [$7352]                                 ; $7361: $fa $52 $73
    ld h, c                                       ; $7364: $61
    ld [hl], l                                    ; $7365: $75
    inc hl                                        ; $7366: $23
    inc sp                                        ; $7367: $33
    cp l                                          ; $7368: $bd
    call nz, $f2f2                                ; $7369: $c4 $f2 $f2
    ld a, e                                       ; $736c: $7b
    inc b                                         ; $736d: $04
    ei                                            ; $736e: $fb
    pop de                                        ; $736f: $d1
    jp nz, $a8f2                                  ; $7370: $c2 $f2 $a8

    adc $b9                                       ; $7373: $ce $b9
    ld c, e                                       ; $7375: $4b
    inc sp                                        ; $7376: $33
    jp c, $b54f                                   ; $7377: $da $4f $b5

    inc sp                                        ; $737a: $33
    and $b8                                       ; $737b: $e6 $b8
    dec bc                                        ; $737d: $0b
    dec hl                                        ; $737e: $2b
    ld [$f14d], sp                                ; $737f: $08 $4d $f1
    rlca                                          ; $7382: $07
    rst $08                                       ; $7383: $cf
    inc [hl]                                      ; $7384: $34
    rlca                                          ; $7385: $07
    ld d, c                                       ; $7386: $51
    sbc c                                         ; $7387: $99
    ld de, $ae74                                  ; $7388: $11 $74 $ae
    ld c, c                                       ; $738b: $49
    ld c, e                                       ; $738c: $4b
    add $5e                                       ; $738d: $c6 $5e
    inc l                                         ; $738f: $2c
    jp nz, $d720                                  ; $7390: $c2 $20 $d7

    and $d9                                       ; $7393: $e6 $d9
    and d                                         ; $7395: $a2
    ld c, [hl]                                    ; $7396: $4e
    ld [$7662], a                                 ; $7397: $ea $62 $76
    dec l                                         ; $739a: $2d
    add hl, hl                                    ; $739b: $29
    ld l, [hl]                                    ; $739c: $6e
    ld h, b                                       ; $739d: $60
    ld b, [hl]                                    ; $739e: $46
    inc e                                         ; $739f: $1c
    ld d, h                                       ; $73a0: $54
    push bc                                       ; $73a1: $c5
    rlca                                          ; $73a2: $07
    ld l, a                                       ; $73a3: $6f
    dec de                                        ; $73a4: $1b
    rrca                                          ; $73a5: $0f
    push de                                       ; $73a6: $d5
    ld c, d                                       ; $73a7: $4a
    rla                                           ; $73a8: $17
    ld a, e                                       ; $73a9: $7b
    or $43                                        ; $73aa: $f6 $43
    ld d, b                                       ; $73ac: $50
    xor a                                         ; $73ad: $af
    inc e                                         ; $73ae: $1c
    ld c, a                                       ; $73af: $4f
    sbc e                                         ; $73b0: $9b
    xor a                                         ; $73b1: $af
    add hl, sp                                    ; $73b2: $39
    inc e                                         ; $73b3: $1c
    ld d, h                                       ; $73b4: $54
    ld e, l                                       ; $73b5: $5d
    inc c                                         ; $73b6: $0c
    ld l, [hl]                                    ; $73b7: $6e
    cp [hl]                                       ; $73b8: $be
    and $70                                       ; $73b9: $e6 $70
    ld d, b                                       ; $73bb: $50
    ld [hl], l                                    ; $73bc: $75
    ld sp, $f9b8                                  ; $73bd: $31 $b8 $f9
    sbc d                                         ; $73c0: $9a
    jp $9541                                      ; $73c1: $c3 $41 $95


    ld hl, sp+$5d                                 ; $73c4: $f8 $5d
    db $ed                                        ; $73c6: $ed
    cp c                                          ; $73c7: $b9
    dec sp                                        ; $73c8: $3b
    ld h, e                                       ; $73c9: $63
    ld [hl], e                                    ; $73ca: $73
    and l                                         ; $73cb: $a5
    jp hl                                         ; $73cc: $e9


    ld a, [hl-]                                   ; $73cd: $3a
    ld [hl], d                                    ; $73ce: $72
    ld c, $72                                     ; $73cf: $0e $72
    ld a, h                                       ; $73d1: $7c
    nop                                           ; $73d2: $00
    rst $08                                       ; $73d3: $cf
    or l                                          ; $73d4: $b5
    and d                                         ; $73d5: $a2
    ld [hl], c                                    ; $73d6: $71
    ret                                           ; $73d7: $c9


    ld bc, $7b17                                  ; $73d8: $01 $17 $7b
    or $43                                        ; $73db: $f6 $43
    ld d, b                                       ; $73dd: $50
    push bc                                       ; $73de: $c5
    rra                                           ; $73df: $1f
    sub a                                         ; $73e0: $97
    push hl                                       ; $73e1: $e5
    ld e, l                                       ; $73e2: $5d
    ld a, e                                       ; $73e3: $7b
    ld a, l                                       ; $73e4: $7d
    ld b, d                                       ; $73e5: $42
    cp c                                          ; $73e6: $b9
    or h                                          ; $73e7: $b4
    rra                                           ; $73e8: $1f
    adc l                                         ; $73e9: $8d
    dec sp                                        ; $73ea: $3b
    ld d, b                                       ; $73eb: $50
    or a                                          ; $73ec: $b7
    add hl, sp                                    ; $73ed: $39
    ld l, a                                       ; $73ee: $6f
    add hl, sp                                    ; $73ef: $39
    xor $b2                                       ; $73f0: $ee $b2
    ld d, c                                       ; $73f2: $51
    inc sp                                        ; $73f3: $33
    sbc $8b                                       ; $73f4: $de $8b
    ld h, [hl]                                    ; $73f6: $66
    or h                                          ; $73f7: $b4
    or b                                          ; $73f8: $b0
    inc a                                         ; $73f9: $3c
    ld d, h                                       ; $73fa: $54
    rrc a                                         ; $73fb: $cb $0f
    and $b6                                       ; $73fd: $e6 $b6
    ld a, d                                       ; $73ff: $7a
    ld b, d                                       ; $7400: $42
    cp c                                          ; $7401: $b9
    or h                                          ; $7402: $b4
    rra                                           ; $7403: $1f
    call $8263                                    ; $7404: $cd $63 $82
    and $b8                                       ; $7407: $e6 $b8
    ld [hl], e                                    ; $7409: $73
    ld c, e                                       ; $740a: $4b
    adc d                                         ; $740b: $8a
    ccf                                           ; $740c: $3f
    inc b                                         ; $740d: $04
    dec [hl]                                      ; $740e: $35
    push bc                                       ; $740f: $c5
    rst $28                                       ; $7410: $ef
    ld a, d                                       ; $7411: $7a
    rla                                           ; $7412: $17
    add hl, de                                    ; $7413: $19
    ret c                                         ; $7414: $d8

    cp c                                          ; $7415: $b9
    db $e3                                        ; $7416: $e3
    sub d                                         ; $7417: $92
    inc bc                                        ; $7418: $03
    jp nz, $420a                                  ; $7419: $c2 $0a $42

    inc sp                                        ; $741c: $33
    adc [hl]                                      ; $741d: $8e
    db $e3                                        ; $741e: $e3
    sbc c                                         ; $741f: $99
    ld d, [hl]                                    ; $7420: $56
    dec bc                                        ; $7421: $0b
    cp d                                          ; $7422: $ba
    ld [hl], e                                    ; $7423: $73
    daa                                           ; $7424: $27
    sbc l                                         ; $7425: $9d
    db $e4                                        ; $7426: $e4
    cp c                                          ; $7427: $b9
    sbc b                                         ; $7428: $98
    cp [hl]                                       ; $7429: $be
    add hl, de                                    ; $742a: $19
    rra                                           ; $742b: $1f
    rst $08                                       ; $742c: $cf
    ld a, [hl]                                    ; $742d: $7e
    ld [$22ea], sp                                ; $742e: $08 $ea $22
    inc bc                                        ; $7431: $03
    sub e                                         ; $7432: $93
    dec h                                         ; $7433: $25
    push bc                                       ; $7434: $c5
    ld de, $25aa                                  ; $7435: $11 $aa $25
    sub [hl]                                      ; $7438: $96
    rst $20                                       ; $7439: $e7
    sub [hl]                                      ; $743a: $96
    and b                                         ; $743b: $a0
    ld a, [hl+]                                   ; $743c: $2a
    ld l, [hl]                                    ; $743d: $6e
    add $bb                                       ; $743e: $c6 $bb
    ld h, $07                                     ; $7440: $26 $07
    ld l, h                                       ; $7442: $6c
    rra                                           ; $7443: $1f
    jp c, Jump_049_57f9                           ; $7444: $da $f9 $57

    ld l, $cd                                     ; $7447: $2e $cd
    ld l, b                                       ; $7449: $68
    ld de, $3906                                  ; $744a: $11 $06 $39
    cp b                                          ; $744d: $b8
    ld sp, hl                                     ; $744e: $f9
    sbc d                                         ; $744f: $9a
    and e                                         ; $7450: $a3
    call nz, $d71f                                ; $7451: $c4 $1f $d7
    cp e                                          ; $7454: $bb
    or b                                          ; $7455: $b0
    ld [bc], a                                    ; $7456: $02
    xor a                                         ; $7457: $af
    call $d585                                    ; $7458: $cd $85 $d5
    dec e                                         ; $745b: $1d
    and b                                         ; $745c: $a0
    rst $08                                       ; $745d: $cf
    cp l                                          ; $745e: $bd
    sbc b                                         ; $745f: $98
    ld l, $e8                                     ; $7460: $2e $e8
    inc d                                         ; $7462: $14
    inc a                                         ; $7463: $3c
    db $fc                                        ; $7464: $fc
    ld e, a                                       ; $7465: $5f
    rst $28                                       ; $7466: $ef
    ld b, a                                       ; $7467: $47
    db $e3                                        ; $7468: $e3
    adc $ff                                       ; $7469: $ce $ff
    ld c, a                                       ; $746b: $4f
    rst $20                                       ; $746c: $e7
    ld e, a                                       ; $746d: $5f
    reti                                          ; $746e: $d9


    adc h                                         ; $746f: $8c
    ld [hl], a                                    ; $7470: $77
    ld c, l                                       ; $7471: $4d
    ld c, [hl]                                    ; $7472: $4e
    ret nc                                        ; $7473: $d0

    jr @-$76                                      ; $7474: $18 $88

    ld d, $62                                     ; $7476: $16 $62
    ld l, c                                       ; $7478: $69
    rst $20                                       ; $7479: $e7
    rst $28                                       ; $747a: $ef
    adc l                                         ; $747b: $8d
    rla                                           ; $747c: $17
    ld h, d                                       ; $747d: $62
    or b                                          ; $747e: $b0
    call nz, $f2f2                                ; $747f: $c4 $f2 $f2
    add e                                         ; $7482: $83
    ld b, l                                       ; $7483: $45
    dec l                                         ; $7484: $2d
    db $ed                                        ; $7485: $ed
    ld d, h                                       ; $7486: $54
    jr nc, jr_049_74f2                            ; $7487: $30 $69

    add hl, sp                                    ; $7489: $39
    ret z                                         ; $748a: $c8

    and h                                         ; $748b: $a4
    ld l, h                                       ; $748c: $6c
    add $07                                       ; $748d: $c6 $07
    sub a                                         ; $748f: $97
    ld d, c                                       ; $7490: $51
    ld [hl], h                                    ; $7491: $74
    or c                                          ; $7492: $b1
    db $10                                        ; $7493: $10
    ld c, e                                       ; $7494: $4b
    db $d3                                        ; $7495: $d3
    ld [$6d78], sp                                ; $7496: $08 $78 $6d
    ld c, [hl]                                    ; $7499: $4e
    jr nz, @-$52                                  ; $749a: $20 $ac

    jr z, jr_049_7506                             ; $749c: $28 $68

    ld a, h                                       ; $749e: $7c
    nop                                           ; $749f: $00
    ld l, a                                       ; $74a0: $6f
    db $fd                                        ; $74a1: $fd
    ld c, a                                       ; $74a2: $4f
    ld [hl], e                                    ; $74a3: $73
    ld c, e                                       ; $74a4: $4b
    ld c, h                                       ; $74a5: $4c
    sub l                                         ; $74a6: $95
    db $d3                                        ; $74a7: $d3
    xor l                                         ; $74a8: $ad
    ld [hl-], a                                   ; $74a9: $32
    ld a, b                                       ; $74aa: $78
    ret z                                         ; $74ab: $c8

    dec h                                         ; $74ac: $25
    push bc                                       ; $74ad: $c5
    sub [hl]                                      ; $74ae: $96
    ld a, [hl]                                    ; $74af: $7e
    and a                                         ; $74b0: $a7
    add d                                         ; $74b1: $82
    ld d, e                                       ; $74b2: $53
    ld c, c                                       ; $74b3: $49
    ld [hl], $e3                                  ; $74b4: $36 $e3
    inc bc                                        ; $74b6: $03
    ld c, a                                       ; $74b7: $4f
    ld e, d                                       ; $74b8: $5a
    ld [hl-], a                                   ; $74b9: $32
    ld d, l                                       ; $74ba: $55
    jp z, Jump_000_0c6a                           ; $74bb: $ca $6a $0c

    ld h, h                                       ; $74be: $64
    rst $30                                       ; $74bf: $f7
    cp h                                          ; $74c0: $bc
    cp $10                                        ; $74c1: $fe $10
    ld l, b                                       ; $74c3: $68
    dec d                                         ; $74c4: $15
    rst $28                                       ; $74c5: $ef
    xor c                                         ; $74c6: $a9
    sbc [hl]                                      ; $74c7: $9e
    ld e, d                                       ; $74c8: $5a
    ld [c], a                                     ; $74c9: $e2
    ld e, l                                       ; $74ca: $5d
    dec [hl]                                      ; $74cb: $35
    sbc $43                                       ; $74cc: $de $43
    ld a, e                                       ; $74ce: $7b
    and [hl]                                      ; $74cf: $a6
    cp c                                          ; $74d0: $b9
    rst $20                                       ; $74d1: $e7
    xor d                                         ; $74d2: $aa
    dec e                                         ; $74d3: $1d
    xor c                                         ; $74d4: $a9
    ld b, b                                       ; $74d5: $40
    reti                                          ; $74d6: $d9


    db $f4                                        ; $74d7: $f4
    xor [hl]                                      ; $74d8: $ae
    xor c                                         ; $74d9: $a9
    ld hl, sp+$00                                 ; $74da: $f8 $00
    rst $08                                       ; $74dc: $cf
    sub c                                         ; $74dd: $91
    ld sp, $c9aa                                  ; $74de: $31 $aa $c9
    sub d                                         ; $74e1: $92
    ld h, d                                       ; $74e2: $62
    cp b                                          ; $74e3: $b8
    ld sp, hl                                     ; $74e4: $f9
    sbc d                                         ; $74e5: $9a
    jp Jump_049_5541                              ; $74e6: $c3 $41 $55


    cp h                                          ; $74e9: $bc
    ld l, e                                       ; $74ea: $6b
    cp c                                          ; $74eb: $b9
    add sp, $7f                                   ; $74ec: $e8 $7f
    db $ec                                        ; $74ee: $ec
    call c, Call_049_6412                         ; $74ef: $dc $12 $64

jr_049_74f2:
    ld d, d                                       ; $74f2: $52
    ld h, d                                       ; $74f3: $62
    add d                                         ; $74f4: $82
    ld a, b                                       ; $74f5: $78
    cpl                                           ; $74f6: $2f
    or l                                          ; $74f7: $b5
    pop de                                        ; $74f8: $d1
    ldh [$3f], a                                  ; $74f9: $e0 $3f
    reti                                          ; $74fb: $d9


    ldh [$bc], a                                  ; $74fc: $e0 $bc
    rrca                                          ; $74fe: $0f
    dec l                                         ; $74ff: $2d
    ld a, [hl+]                                   ; $7500: $2a
    rst $28                                       ; $7501: $ef
    reti                                          ; $7502: $d9


    rrca                                          ; $7503: $0f
    ld b, c                                       ; $7504: $41
    sbc l                                         ; $7505: $9d

jr_049_7506:
    ei                                            ; $7506: $fb
    ccf                                           ; $7507: $3f
    dec l                                         ; $7508: $2d
    ld l, d                                       ; $7509: $6a
    ld l, c                                       ; $750a: $69
    sbc b                                         ; $750b: $98
    and d                                         ; $750c: $a2
    ld c, a                                       ; $750d: $4f
    sub c                                         ; $750e: $91
    ld sp, $3e36                                  ; $750f: $31 $36 $3e
    nop                                           ; $7512: $00
    sub a                                         ; $7513: $97
    xor l                                         ; $7514: $ad
    adc b                                         ; $7515: $88
    rst $20                                       ; $7516: $e7
    db $ec                                        ; $7517: $ec
    reti                                          ; $7518: $d9


    rrca                                          ; $7519: $0f
    ld b, c                                       ; $751a: $41
    dec e                                         ; $751b: $1d
    add sp, $19                                   ; $751c: $e8 $19
    sbc e                                         ; $751e: $9b
    ld d, a                                       ; $751f: $57
    halt                                          ; $7520: $76
    adc c                                         ; $7521: $89
    pop bc                                        ; $7522: $c1
    jp nz, $c456                                  ; $7523: $c2 $56 $c4

    adc e                                         ; $7526: $8b
    jr nc, @-$36                                  ; $7527: $30 $c8

    ret                                           ; $7529: $c9


    sub d                                         ; $752a: $92
    ld h, d                                       ; $752b: $62
    cp b                                          ; $752c: $b8
    ld sp, hl                                     ; $752d: $f9
    sbc d                                         ; $752e: $9a
    and e                                         ; $752f: $a3
    ld b, $aa                                     ; $7530: $06 $aa
    ld hl, sp-$15                                 ; $7532: $f8 $eb
    ld h, [hl]                                    ; $7534: $66
    ld a, h                                       ; $7535: $7c
    nop                                           ; $7536: $00
    rst $10                                       ; $7537: $d7
    db $e4                                        ; $7538: $e4
    jp nz, Jump_000_0b0a                          ; $7539: $c2 $0a $0b

    dec de                                        ; $753c: $1b
    dec l                                         ; $753d: $2d
    or c                                          ; $753e: $b1
    inc a                                         ; $753f: $3c
    ret nc                                        ; $7540: $d0

    inc sp                                        ; $7541: $33
    ld [hl], $e3                                  ; $7542: $36 $e3
    cp l                                          ; $7544: $bd
    ld l, b                                       ; $7545: $68
    ld b, [hl]                                    ; $7546: $46
    ld b, e                                       ; $7547: $43

Call_049_7548:
    cp c                                          ; $7548: $b9
    ld d, e                                       ; $7549: $53
    srl e                                         ; $754a: $cb $3b
    ld d, l                                       ; $754c: $55
    rst $08                                       ; $754d: $cf
    dec de                                        ; $754e: $1b
    cpl                                           ; $754f: $2f
    call nz, $8060                                ; $7550: $c4 $60 $80
    call z, $3cc0                                 ; $7553: $cc $c0 $3c
    ld h, $68                                     ; $7556: $26 $68
    adc $2d                                       ; $7558: $ce $2d
    add hl, hl                                    ; $755a: $29
    cp $10                                        ; $755b: $fe $10
    rst $08                                       ; $755d: $cf
    ldh [rNR42], a                                ; $755e: $e0 $21
    sub a                                         ; $7560: $97
    ld b, $aa                                     ; $7561: $06 $aa
    db $f4                                        ; $7563: $f4
    rst $20                                       ; $7564: $e7
    and $7c                                       ; $7565: $e6 $7c
    dec e                                         ; $7567: $1d
    ld l, d                                       ; $7568: $6a
    add $07                                       ; $7569: $c6 $07
    rst $10                                       ; $756b: $d7
    db $e4                                        ; $756c: $e4
    jp nz, Jump_000_0b0a                          ; $756d: $c2 $0a $0b

    dec de                                        ; $7570: $1b
    dec l                                         ; $7571: $2d
    or c                                          ; $7572: $b1
    inc a                                         ; $7573: $3c
    ret nc                                        ; $7574: $d0

    inc sp                                        ; $7575: $33
    ld [hl], $e3                                  ; $7576: $36 $e3
    inc bc                                        ; $7578: $03
    rst $08                                       ; $7579: $cf
    ld a, [hl]                                    ; $757a: $7e
    ld [$f8aa], sp                                ; $757b: $08 $aa $f8
    cp l                                          ; $757e: $bd
    add a                                         ; $757f: $87
    ld b, c                                       ; $7580: $41
    ld c, [hl]                                    ; $7581: $4e
    db $fd                                        ; $7582: $fd
    ld c, a                                       ; $7583: $4f
    inc a                                         ; $7584: $3c
    ret nc                                        ; $7585: $d0

    adc d                                         ; $7586: $8a
    ld a, b                                       ; $7587: $78
    ld a, [bc]                                    ; $7588: $0a
    ld a, [$b9b2]                                 ; $7589: $fa $b2 $b9
    ld [hl], $a7                                  ; $758c: $36 $a7
    ld [hl], h                                    ; $758e: $74
    pop hl                                        ; $758f: $e1
    ld hl, $5477                                  ; $7590: $21 $77 $54
    ret z                                         ; $7593: $c8

    ld h, c                                       ; $7594: $61
    ld h, e                                       ; $7595: $63
    ld l, h                                       ; $7596: $6c
    cp h                                          ; $7597: $bc
    rla                                           ; $7598: $17
    call $2868                                    ; $7599: $cd $68 $28
    rla                                           ; $759c: $17
    ld d, [hl]                                    ; $759d: $56
    ld e, b                                       ; $759e: $58
    ret c                                         ; $759f: $d8

    ld l, b                                       ; $75a0: $68
    cp [hl]                                       ; $75a1: $be
    db $d3                                        ; $75a2: $d3
    ld h, [hl]                                    ; $75a3: $66
    xor h                                         ; $75a4: $ac
    cp b                                          ; $75a5: $b8
    ld h, e                                       ; $75a6: $63
    inc c                                         ; $75a7: $0c
    db $fc                                        ; $75a8: $fc
    ld [de], a                                    ; $75a9: $12
    rlc e                                         ; $75aa: $cb $03
    dec a                                         ; $75ac: $3d
    ld h, e                                       ; $75ad: $63
    inc sp                                        ; $75ae: $33
    ld a, $00                                     ; $75af: $3e $00
    rst $10                                       ; $75b1: $d7
    db $e4                                        ; $75b2: $e4
    jp nz, Jump_000_0b0a                          ; $75b3: $c2 $0a $0b

    dec de                                        ; $75b6: $1b
    dec l                                         ; $75b7: $2d
    or c                                          ; $75b8: $b1
    inc a                                         ; $75b9: $3c
    ret nc                                        ; $75ba: $d0

    inc sp                                        ; $75bb: $33
    ld [hl], $d7                                  ; $75bc: $36 $d7
    ld e, h                                       ; $75be: $5c
    ret nc                                        ; $75bf: $d0

    pop bc                                        ; $75c0: $c1
    call $1cd7                                    ; $75c1: $cd $d7 $1c
    or l                                          ; $75c4: $b5
    rst $38                                       ; $75c5: $ff
    push hl                                       ; $75c6: $e5
    ld [de], a                                    ; $75c7: $12
    set 6, c                                      ; $75c8: $cb $f1
    sbc $33                                       ; $75ca: $de $33
    ld e, [hl]                                    ; $75cc: $5e
    ld l, c                                       ; $75cd: $69
    ld e, b                                       ; $75ce: $58
    ld d, [hl]                                    ; $75cf: $56
    db $d3                                        ; $75d0: $d3
    sub l                                         ; $75d1: $95
    or d                                          ; $75d2: $b2
    and h                                         ; $75d3: $a4
    or $a3                                        ; $75d4: $f6 $a3
    ld [hl], c                                    ; $75d6: $71
    ld d, a                                       ; $75d7: $57
    ld l, [hl]                                    ; $75d8: $6e
    adc [hl]                                      ; $75d9: $8e
    dec e                                         ; $75da: $1d
    and l                                         ; $75db: $a5
    sbc d                                         ; $75dc: $9a
    ld d, a                                       ; $75dd: $57
    ld c, $d7                                     ; $75de: $0e $d7
    db $e4                                        ; $75e0: $e4
    ld e, h                                       ; $75e1: $5c
    ld [hl-], a                                   ; $75e2: $32
    inc bc                                        ; $75e3: $03
    adc e                                         ; $75e4: $8b
    ld a, [hl-]                                   ; $75e5: $3a
    inc de                                        ; $75e6: $13
    db $ed                                        ; $75e7: $ed
    ld h, h                                       ; $75e8: $64
    cp h                                          ; $75e9: $bc
    jp nc, $e730                                  ; $75ea: $d2 $30 $e7

    adc l                                         ; $75ed: $8d
    rlca                                          ; $75ee: $07
    sbc c                                         ; $75ef: $99
    inc c                                         ; $75f0: $0c
    cp d                                          ; $75f1: $ba
    or e                                          ; $75f2: $b3
    pop af                                        ; $75f3: $f1
    cp h                                          ; $75f4: $bc
    pop af                                        ; $75f5: $f1
    ld b, d                                       ; $75f6: $42
    inc c                                         ; $75f7: $0c
    add [hl]                                      ; $75f8: $86
    cp c                                          ; $75f9: $b9
    inc sp                                        ; $75fa: $33
    ld b, $b9                                     ; $75fb: $06 $b9
    ret nc                                        ; $75fd: $d0

    jp nc, Jump_000_1737                          ; $75fe: $d2 $37 $17

    sbc d                                         ; $7601: $9a
    adc a                                         ; $7602: $8f
    rrca                                          ; $7603: $0f
    ld l, a                                       ; $7604: $6f
    ld [hl], a                                    ; $7605: $77
    ld h, a                                       ; $7606: $67
    inc bc                                        ; $7607: $03
    call $8d85                                    ; $7608: $cd $85 $8d
    and $ff                                       ; $760b: $e6 $ff
    and a                                         ; $760d: $a7
    ld sp, hl                                     ; $760e: $f9
    ld c, $54                                     ; $760f: $0e $54
    jp hl                                         ; $7611: $e9


    rst $08                                       ; $7612: $cf
    call $3af9                                    ; $7613: $cd $f9 $3a
    or h                                          ; $7616: $b4
    di                                            ; $7617: $f3
    xor c                                         ; $7618: $a9
    ld l, [hl]                                    ; $7619: $6e
    ld [hl], e                                    ; $761a: $73
    ld e, h                                       ; $761b: $5c
    ret nc                                        ; $761c: $d0

    db $fc                                        ; $761d: $fc
    ld l, [hl]                                    ; $761e: $6e
    ld l, c                                       ; $761f: $69
    ld h, c                                       ; $7620: $61
    ld a, c                                       ; $7621: $79
    ld a, [$334b]                                 ; $7622: $fa $4b $33
    cp l                                          ; $7625: $bd
    rst $10                                       ; $7626: $d7
    sbc h                                         ; $7627: $9c
    ld l, h                                       ; $7628: $6c

Call_049_7629:
    adc $41                                       ; $7629: $ce $41
    sbc [hl]                                      ; $762b: $9e
    rst $28                                       ; $762c: $ef
    ld e, [hl]                                    ; $762d: $5e
    halt                                          ; $762e: $76
    ld a, h                                       ; $762f: $7c
    ld e, b                                       ; $7630: $58
    db $f4                                        ; $7631: $f4
    pop af                                        ; $7632: $f1
    ld bc, $e4d7                                  ; $7633: $01 $d7 $e4
    jp nz, Jump_000_0b0a                          ; $7636: $c2 $0a $0b

    dec de                                        ; $7639: $1b
    dec c                                         ; $763a: $0d
    db $f4                                        ; $763b: $f4
    adc h                                         ; $763c: $8c
    call Call_049_6ff1                            ; $763d: $cd $f1 $6f
    ld l, $c4                                     ; $7640: $2e $c4
    ld h, b                                       ; $7642: $60
    xor [hl]                                      ; $7643: $ae
    push hl                                       ; $7644: $e5
    ld a, h                                       ; $7645: $7c
    ld [hl], a                                    ; $7646: $77
    xor [hl]                                      ; $7647: $ae
    ld a, [c]                                     ; $7648: $f2
    sbc l                                         ; $7649: $9d
    ld e, e                                       ; $764a: $5b
    ld a, [c]                                     ; $764b: $f2
    ld e, b                                       ; $764c: $58
    ld [$2c13], sp                                ; $764d: $08 $13 $2c
    call Call_049_4268                            ; $7650: $cd $68 $42
    or e                                          ; $7653: $b3
    cp [hl]                                       ; $7654: $be
    add hl, sp                                    ; $7655: $39
    ld a, c                                       ; $7656: $79
    or d                                          ; $7657: $b2
    add sp, $62                                   ; $7658: $e8 $62
    sub c                                         ; $765a: $91
    add hl, de                                    ; $765b: $19
    dec l                                         ; $765c: $2d
    call nz, $a160                                ; $765d: $c4 $60 $a1
    ld sp, hl                                     ; $7660: $f9
    dec h                                         ; $7661: $25
    sub [hl]                                      ; $7662: $96
    push de                                       ; $7663: $d5
    inc b                                         ; $7664: $04
    inc c                                         ; $7665: $0c
    halt                                          ; $7666: $76
    ld b, [hl]                                    ; $7667: $46
    ld a, b                                       ; $7668: $78
    jr jr_049_768a                                ; $7669: $18 $1f

    sub a                                         ; $766b: $97
    dec d                                         ; $766c: $15
    add h                                         ; $766d: $84
    ld a, [hl+]                                   ; $766e: $2a
    pop af                                        ; $766f: $f1
    cp e                                          ; $7670: $bb
    adc [hl]                                      ; $7671: $8e
    pop bc                                        ; $7672: $c1
    add h                                         ; $7673: $84
    ld h, $cf                                     ; $7674: $26 $cf
    or l                                          ; $7676: $b5
    call c, $8473                                 ; $7677: $dc $73 $84
    ld [hl+], a                                   ; $767a: $22
    pop de                                        ; $767b: $d1
    ld l, a                                       ; $767c: $6f
    ld a, [$714f]                                 ; $767d: $fa $4f $71
    inc e                                         ; $7680: $1c
    rst $08                                       ; $7681: $cf
    dec sp                                        ; $7682: $3b
    ld l, d                                       ; $7683: $6a
    and a                                         ; $7684: $a7
    ld c, $98                                     ; $7685: $0e $98
    push hl                                       ; $7687: $e5
    ld a, $b4                                     ; $7688: $3e $b4

jr_049_768a:
    di                                            ; $768a: $f3

jr_049_768b:
    xor a                                         ; $768b: $af

Jump_049_768c:
    ld e, h                                       ; $768c: $5c
    sbc d                                         ; $768d: $9a
    pop de                                        ; $768e: $d1
    jr nz, jr_049_768b                            ; $768f: $20 $fa

    and d                                         ; $7691: $a2
    ld a, [hl+]                                   ; $7692: $2a
    push af                                       ; $7693: $f5
    ld l, c                                       ; $7694: $69
    ld c, a                                       ; $7695: $4f
    and [hl]                                      ; $7696: $a6
    cpl                                           ; $7697: $2f
    ld l, c                                       ; $7698: $69
    ld c, h                                       ; $7699: $4c
    db $10                                        ; $769a: $10
    rra                                           ; $769b: $1f
    rst $10                                       ; $769c: $d7
    ld d, d                                       ; $769d: $52
    and b                                         ; $769e: $a0
    jp z, Jump_000_30e6                           ; $769f: $ca $e6 $30

Call_049_76a2:
    rla                                           ; $76a2: $17
    dec [hl]                                      ; $76a3: $35
    ld e, e                                       ; $76a4: $5b
    jp c, $a85b                                   ; $76a5: $da $5b $a8

    ld a, l                                       ; $76a8: $7d
    ld c, c                                       ; $76a9: $49
    call $9ffd                                    ; $76aa: $cd $fd $9f
    ret z                                         ; $76ad: $c8

    call z, $8b4b                                 ; $76ae: $cc $4b $8b
    ld c, d                                       ; $76b1: $4a
    ld b, e                                       ; $76b2: $43
    or l                                          ; $76b3: $b5
    ld [hl], $57                                  ; $76b4: $36 $57
    ld c, d                                       ; $76b6: $4a
    push bc                                       ; $76b7: $c5
    ld [$b3ba], sp                                ; $76b8: $08 $ba $b3
    sbc c                                         ; $76bb: $99
    cp h                                          ; $76bc: $bc
    ret c                                         ; $76bd: $d8

    and l                                         ; $76be: $a5
    ld de, $8989                                  ; $76bf: $11 $89 $89

jr_049_76c2:
    rrca                                          ; $76c2: $0f
    cpl                                           ; $76c3: $2f
    sbc d                                         ; $76c4: $9a
    pop de                                        ; $76c5: $d1
    jr nz, jr_049_76c2                            ; $76c6: $20 $fa

    and d                                         ; $76c8: $a2
    ld a, [hl+]                                   ; $76c9: $2a
    push af                                       ; $76ca: $f5
    ld l, c                                       ; $76cb: $69
    ld c, a                                       ; $76cc: $4f
    and [hl]                                      ; $76cd: $a6
    cpl                                           ; $76ce: $2f
    ld l, c                                       ; $76cf: $69
    ld c, h                                       ; $76d0: $4c
    db $10                                        ; $76d1: $10
    rst $00                                       ; $76d2: $c7
    pop af                                        ; $76d3: $f1
    ld bc, $b5cf                                  ; $76d4: $01 $cf $b5
    add hl, sp                                    ; $76d7: $39
    rlca                                          ; $76d8: $07
    reti                                          ; $76d9: $d9


    push de                                       ; $76da: $d5
    ld c, $3c                                     ; $76db: $0e $3c
    db $e4                                        ; $76dd: $e4
    and [hl]                                      ; $76de: $a6
    ld hl, sp-$43                                 ; $76df: $f8 $bd
    inc e                                         ; $76e1: $1c
    ld a, c                                       ; $76e2: $79
    db $e3                                        ; $76e3: $e3
    add l                                         ; $76e4: $85
    push hl                                       ; $76e5: $e5
    ret                                           ; $76e6: $c9


    sub d                                         ; $76e7: $92
    ld [c], a                                     ; $76e8: $e2
    ld [$50d5], sp                                ; $76e9: $08 $d5 $50
    ld e, l                                       ; $76ec: $5d
    adc h                                         ; $76ed: $8c
    xor c                                         ; $76ee: $a9
    ld [hl], d                                    ; $76ef: $72
    jr z, jr_049_7709                             ; $76f0: $28 $17

    sbc c                                         ; $76f2: $99
    pop de                                        ; $76f3: $d1
    xor $1d                                       ; $76f4: $ee $1d
    db $e4                                        ; $76f6: $e4
    inc h                                         ; $76f7: $24
    rst $08                                       ; $76f8: $cf
    ld b, h                                       ; $76f9: $44
    ld [hl], e                                    ; $76fa: $73
    rst $38                                       ; $76fb: $ff
    and a                                         ; $76fc: $a7
    dec a                                         ; $76fd: $3d
    ld b, a                                       ; $76fe: $47
    jr z, jr_049_7713                             ; $76ff: $28 $12

    db $fd                                        ; $7701: $fd
    and [hl]                                      ; $7702: $a6
    rst $38                                       ; $7703: $ff
    inc d                                         ; $7704: $14
    rst $28                                       ; $7705: $ef
    db $ed                                        ; $7706: $ed
    add d                                         ; $7707: $82
    ld d, e                                       ; $7708: $53

jr_049_7709:
    rst $08                                       ; $7709: $cf
    call Call_000_23a5                            ; $770a: $cd $a5 $23
    cp $00                                        ; $770d: $fe $00
    rst $08                                       ; $770f: $cf
    db $e4                                        ; $7710: $e4
    ld d, h                                       ; $7711: $54
    ld a, [hl-]                                   ; $7712: $3a

jr_049_7713:
    ld [hl+], a                                   ; $7713: $22
    ld d, c                                       ; $7714: $51
    push af                                       ; $7715: $f5
    ld [de], a                                    ; $7716: $12
    res 4, e                                      ; $7717: $cb $a3
    sbc a                                         ; $7719: $9f
    ld a, [hl]                                    ; $771a: $7e
    daa                                           ; $771b: $27
    inc sp                                        ; $771c: $33
    ld e, d                                       ; $771d: $5a
    ret nc                                        ; $771e: $d0

    dec h                                         ; $771f: $25
    sub [hl]                                      ; $7720: $96
    rla                                           ; $7721: $17
    add hl, de                                    ; $7722: $19
    ret c                                         ; $7723: $d8

    add hl, de                                    ; $7724: $19
    add e                                         ; $7725: $83
    inc d                                         ; $7726: $14
    ld a, a                                       ; $7727: $7f
    nop                                           ; $7728: $00
    sub a                                         ; $7729: $97
    dec d                                         ; $772a: $15
    ld d, $74                                     ; $772b: $16 $74
    ld b, c                                       ; $772d: $41
    rlca                                          ; $772e: $07
    scf                                           ; $772f: $37
    ld e, a                                       ; $7730: $5f
    ld [hl], e                                    ; $7731: $73
    call nc, $dd40                                ; $7732: $d4 $40 $dd
    sbc a                                         ; $7735: $9f
    cp [hl]                                       ; $7736: $be
    ld a, c                                       ; $7737: $79
    or c                                          ; $7738: $b1
    ld c, e                                       ; $7739: $4b
    inc hl                                        ; $773a: $23
    ld [de], a                                    ; $773b: $12
    ld [hl], e                                    ; $773c: $73
    push hl                                       ; $773d: $e5
    nop                                           ; $773e: $00
    cpl                                           ; $773f: $2f
    or l                                          ; $7740: $b5
    pop af                                        ; $7741: $f1
    ld bc, $d0af                                  ; $7742: $01 $af $d0
    rla                                           ; $7745: $17
    ld e, d                                       ; $7746: $5a
    ld e, d                                       ; $7747: $5a
    ld e, b                                       ; $7748: $58
    ld e, [hl]                                    ; $7749: $5e
    ld a, [hl]                                    ; $774a: $7e
    or b                                          ; $774b: $b0
    ld [hl], $55                                  ; $774c: $36 $55
    cp h                                          ; $774e: $bc
    ld l, e                                       ; $774f: $6b
    ld [hl], d                                    ; $7750: $72
    ret nz                                        ; $7751: $c0

    and $b1                                       ; $7752: $e6 $b1
    ld [hl], e                                    ; $7754: $73
    dec l                                         ; $7755: $2d
    rla                                           ; $7756: $17
    ld h, c                                       ; $7757: $61
    or b                                          ; $7758: $b0
    call nz, Call_000_3ef2                        ; $7759: $c4 $f2 $3e
    call nc, Call_049_4c8c                        ; $775c: $d4 $8c $4c
    ld [hl], $c7                                  ; $775f: $36 $c7
    sbc a                                         ; $7761: $9f
    cp l                                          ; $7762: $bd

jr_049_7763:
    pop af                                        ; $7763: $f1
    ld [bc], a                                    ; $7764: $02
    inc c                                         ; $7765: $0c
    and $b1                                       ; $7766: $e6 $b1
    ld [hl], e                                    ; $7768: $73
    dec l                                         ; $7769: $2d
    rla                                           ; $776a: $17
    ld a, h                                       ; $776b: $7c
    ld h, a                                       ; $776c: $67
    ld e, h                                       ; $776d: $5c
    ld [hl], d                                    ; $776e: $72
    ld b, b                                       ; $776f: $40
    ld e, b                                       ; $7770: $58
    add c                                         ; $7771: $81
    db $e3                                        ; $7772: $e3
    inc bc                                        ; $7773: $03
    xor a                                         ; $7774: $af
    db $fd                                        ; $7775: $fd
    inc d                                         ; $7776: $14
    cp a                                          ; $7777: $bf
    ld l, e                                       ; $7778: $6b
    ld [hl], d                                    ; $7779: $72
    ld h, c                                       ; $777a: $61
    add l                                         ; $777b: $85
    ld b, l                                       ; $777c: $45
    jr jr_049_7763                                ; $777d: $18 $e4

    ldh [$e6], a                                  ; $777f: $e0 $e6
    ld l, e                                       ; $7781: $6b
    adc [hl]                                      ; $7782: $8e
    ld a, [de]                                    ; $7783: $1a
    sub a                                         ; $7784: $97
    inc e                                         ; $7785: $1c

jr_049_7786:
    jr nz, jr_049_7786                            ; $7786: $20 $fe

    nop                                           ; $7788: $00
    ld l, a                                       ; $7789: $6f
    ld a, h                                       ; $778a: $7c
    sub c                                         ; $778b: $91
    ld hl, sp-$43                                 ; $778c: $f8 $bd
    ld h, b                                       ; $778e: $60
    call c, $a9dc                                 ; $778f: $dc $dc $a9
    dec sp                                        ; $7792: $3b
    ld [hl], a                                    ; $7793: $77
    rra                                           ; $7794: $1f
    ld l, d                                       ; $7795: $6a
    ld b, [hl]                                    ; $7796: $46
    ld h, $9b                                     ; $7797: $26 $9b
    pop af                                        ; $7799: $f1
    ld bc, $fd6f                                  ; $779a: $01 $6f $fd
    ld c, a                                       ; $779d: $4f
    cp e                                          ; $779e: $bb
    inc [hl]                                      ; $779f: $34
    ld [hl+], a                                   ; $77a0: $22
    ld sp, $7317                                  ; $77a1: $31 $17 $73
    dec l                                         ; $77a4: $2d
    ld [hl], a                                    ; $77a5: $77
    ld l, c                                       ; $77a6: $69
    add b                                         ; $77a7: $80
    ret nc                                        ; $77a8: $d0

    rst $00                                       ; $77a9: $c7
    rlca                                          ; $77aa: $07
    rst $08                                       ; $77ab: $cf
    inc [hl]                                      ; $77ac: $34
    rla                                           ; $77ad: $17
    ld a, [hl]                                    ; $77ae: $7e
    add a                                         ; $77af: $87
    sbc e                                         ; $77b0: $9b
    inc de                                        ; $77b1: $13
    ld l, c                                       ; $77b2: $69
    rlca                                          ; $77b3: $07
    ld e, c                                       ; $77b4: $59
    db $fc                                        ; $77b5: $fc
    xor [hl]                                      ; $77b6: $ae
    ld h, d                                       ; $77b7: $62
    rla                                           ; $77b8: $17
    or [hl]                                       ; $77b9: $b6
    ld [hl+], a                                   ; $77ba: $22
    ld e, [hl]                                    ; $77bb: $5e
    adc b                                         ; $77bc: $88
    pop bc                                        ; $77bd: $c1
    call c, Call_049_41af                         ; $77be: $dc $af $41
    ld d, e                                       ; $77c1: $53
    dec l                                         ; $77c2: $2d
    jp nz, $e760                                  ; $77c3: $c2 $60 $e7

    ld l, d                                       ; $77c6: $6a
    pop de                                        ; $77c7: $d1
    ld b, b                                       ; $77c8: $40
    ld h, l                                       ; $77c9: $65
    ld c, c                                       ; $77ca: $49
    db $e4                                        ; $77cb: $e4
    db $e3                                        ; $77cc: $e3
    inc bc                                        ; $77cd: $03
    rst $08                                       ; $77ce: $cf
    ld l, e                                       ; $77cf: $6b
    ld c, h                                       ; $77d0: $4c
    ret                                           ; $77d1: $c9


    ld l, e                                       ; $77d2: $6b
    ld [hl], e                                    ; $77d3: $73
    ld b, d                                       ; $77d4: $42
    bit 0, c                                      ; $77d5: $cb $41
    ld h, a                                       ; $77d7: $67
    ld e, d                                       ; $77d8: $5a
    dec l                                         ; $77d9: $2d
    inc l                                         ; $77da: $2c

jr_049_77db:
    ld c, a                                       ; $77db: $4f
    sub d                                         ; $77dc: $92

jr_049_77dd:
    add hl, hl                                    ; $77dd: $29
    push de                                       ; $77de: $d5
    sbc h                                         ; $77df: $9c
    ld l, e                                       ; $77e0: $6b
    cp c                                          ; $77e1: $b9
    ld [hl], $e7                                  ; $77e2: $36 $e7
    and b                                         ; $77e4: $a0
    adc [hl]                                      ; $77e5: $8e
    rrca                                          ; $77e6: $0f
    cpl                                           ; $77e7: $2f
    add a                                         ; $77e8: $87
    rla                                           ; $77e9: $17
    ei                                            ; $77ea: $fb
    pop hl                                        ; $77eb: $e1
    push bc                                       ; $77ec: $c5
    ld c, [hl]                                    ; $77ed: $4e
    dec l                                         ; $77ee: $2d
    xor l                                         ; $77ef: $ad
    call $5349                                    ; $77f0: $cd $49 $53
    ld l, h                                       ; $77f3: $6c
    add hl, de                                    ; $77f4: $19
    ld d, h                                       ; $77f5: $54
    jr nz, jr_049_77ff                            ; $77f6: $20 $07

    or e                                          ; $77f8: $b3
    ld h, e                                       ; $77f9: $63
    ld [hl], d                                    ; $77fa: $72
    jr nc, jr_049_77db                            ; $77fb: $30 $de

    dec [hl]                                      ; $77fd: $35
    cp c                                          ; $77fe: $b9

jr_049_77ff:
    ret nc                                        ; $77ff: $d0

    adc h                                         ; $7800: $8c
    daa                                           ; $7801: $27
    ld c, l                                       ; $7802: $4d
    or c                                          ; $7803: $b1
    ld h, l                                       ; $7804: $65
    ld d, b                                       ; $7805: $50
    add c                                         ; $7806: $81
    inc e                                         ; $7807: $1c
    call z, $00f8                                 ; $7808: $cc $f8 $00
    ld d, a                                       ; $780b: $57
    ld l, a                                       ; $780c: $6f
    and e                                         ; $780d: $a3
    sbc l                                         ; $780e: $9d
    sub c                                         ; $780f: $91
    rst $10                                       ; $7810: $d7
    and $a4                                       ; $7811: $e6 $a4
    add hl, de                                    ; $7813: $19
    ld [hl], c                                    ; $7814: $71
    ret nc                                        ; $7815: $d0

    add hl, bc                                    ; $7816: $09
    jr jr_049_77dd                                ; $7817: $18 $c4

    rlca                                          ; $7819: $07
    ld l, a                                       ; $781a: $6f
    ld e, c                                       ; $781b: $59
    xor $ff                                       ; $781c: $ee $ff
    ld l, b                                       ; $781e: $68
    sub a                                         ; $781f: $97
    and l                                         ; $7820: $a5
    ret z                                         ; $7821: $c8

    ld [hl], d                                    ; $7822: $72
    call Call_000_25b1                            ; $7823: $cd $b1 $25
    ld [hl], a                                    ; $7826: $77
    xor a                                         ; $7827: $af
    sub h                                         ; $7828: $94
    sbc l                                         ; $7829: $9d
    ld b, h                                       ; $782a: $44
    adc e                                         ; $782b: $8b
    rrca                                          ; $782c: $0f
    rst $08                                       ; $782d: $cf
    inc [hl]                                      ; $782e: $34
    rla                                           ; $782f: $17
    add hl, sp                                    ; $7830: $39
    ret                                           ; $7831: $c9


    ld [hl], e                                    ; $7832: $73
    dec l                                         ; $7833: $2d
    rst $30                                       ; $7834: $f7
    ldh [$3d], a                                  ; $7835: $e0 $3d
    add e                                         ; $7837: $83
    sbc d                                         ; $7838: $9a
    ldh a, [$c6]                                  ; $7839: $f0 $c6
    cp e                                          ; $783b: $bb
    ld l, d                                       ; $783c: $6a
    inc a                                         ; $783d: $3c
    ld d, h                                       ; $783e: $54
    inc bc                                        ; $783f: $03
    adc [hl]                                      ; $7840: $8e
    sbc [hl]                                      ; $7841: $9e
    ld l, e                                       ; $7842: $6b
    cp c                                          ; $7843: $b9
    ld [hl], e                                    ; $7844: $73
    db $e3                                        ; $7845: $e3
    inc bc                                        ; $7846: $03
    cpl                                           ; $7847: $2f
    cp $f2                                        ; $7848: $fe $f2
    add d                                         ; $784a: $82
    xor $8c                                       ; $784b: $ee $8c
    call $b58b                                    ; $784d: $cd $8b $b5
    add hl, sp                                    ; $7850: $39
    ld b, b                                       ; $7851: $40
    sbc a                                         ; $7852: $9f
    cp e                                          ; $7853: $bb
    or e                                          ; $7854: $b3
    ret                                           ; $7855: $c9


    dec a                                         ; $7856: $3d
    dec e                                         ; $7857: $1d
    ld a, [hl]                                    ; $7858: $7e
    ld hl, sp-$69                                 ; $7859: $f8 $97
    jr z, jr_049_78c2                             ; $785b: $28 $65

    ld c, c                                       ; $785d: $49
    push bc                                       ; $785e: $c5
    ld a, e                                       ; $785f: $7b
    bit 6, d                                      ; $7860: $cb $72
    sub a                                         ; $7862: $97
    and l                                         ; $7863: $a5
    xor b                                         ; $7864: $a8
    ld a, [de]                                    ; $7865: $1a
    sbc e                                         ; $7866: $9b
    pop af                                        ; $7867: $f1
    sbc [hl]                                      ; $7868: $9e
    ret                                           ; $7869: $c9


    ld sp, hl                                     ; $786a: $f9
    ld c, [hl]                                    ; $786b: $4e
    sbc d                                         ; $786c: $9a
    ld de, $b5cf                                  ; $786d: $11 $cf $b5
    call c, $252b                                 ; $7870: $dc $2b $25
    ld l, c                                       ; $7873: $69
    ld d, c                                       ; $7874: $51
    sub e                                         ; $7875: $93
    dec e                                         ; $7876: $1d
    dec [hl]                                      ; $7877: $35
    rlca                                          ; $7878: $07
    ld a, c                                       ; $7879: $79
    cp [hl]                                       ; $787a: $be
    and e                                         ; $787b: $a3
    ld d, [hl]                                    ; $787c: $56
    xor d                                         ; $787d: $aa
    dec a                                         ; $787e: $3d
    ld d, l                                       ; $787f: $55
    ld a, [$7c8d]                                 ; $7880: $fa $8d $7c
    ld [hl], a                                    ; $7883: $77
    ld e, c                                       ; $7884: $59
    xor c                                         ; $7885: $a9
    sbc d                                         ; $7886: $9a
    ld l, e                                       ; $7887: $6b
    xor $8d                                       ; $7888: $ee $8d
    rst $28                                       ; $788a: $ef
    ld [hl], $cd                                  ; $788b: $36 $cd
    ld c, b                                       ; $788d: $48
    db $ed                                        ; $788e: $ed
    adc h                                         ; $788f: $8c
    cp h                                          ; $7890: $bc
    sub d                                         ; $7891: $92
    add b                                         ; $7892: $80
    add c                                         ; $7893: $81
    ld hl, sp+$03                                 ; $7894: $f8 $03
    ld d, a                                       ; $7896: $57
    adc l                                         ; $7897: $8d
    and a                                         ; $7898: $a7
    ldh [rNR42], a                                ; $7899: $e0 $21
    ld b, $c9                                     ; $789b: $06 $c9
    ld l, e                                       ; $789d: $6b
    ld [hl], e                                    ; $789e: $73
    ld h, c                                       ; $789f: $61
    ld [hl], l                                    ; $78a0: $75
    rlca                                          ; $78a1: $07
    ld a, [hl]                                    ; $78a2: $7e
    ld a, l                                       ; $78a3: $7d
    daa                                           ; $78a4: $27
    call $c788                                    ; $78a5: $cd $88 $c7
    db $dd                                        ; $78a8: $dd
    add hl, de                                    ; $78a9: $19
    add e                                         ; $78aa: $83
    adc h                                         ; $78ab: $8c
    rrca                                          ; $78ac: $0f
    cpl                                           ; $78ad: $2f
    cp $f2                                        ; $78ae: $fe $f2
    add d                                         ; $78b0: $82
    ld c, [hl]                                    ; $78b1: $4e
    dec sp                                        ; $78b2: $3b
    xor b                                         ; $78b3: $a8
    cp b                                          ; $78b4: $b8
    call nc, $d8bc                                ; $78b5: $d4 $bc $d8
    ld l, e                                       ; $78b8: $6b
    ccf                                           ; $78b9: $3f
    rra                                           ; $78ba: $1f
    db $db                                        ; $78bb: $db
    ld l, l                                       ; $78bc: $6d
    sub a                                         ; $78bd: $97
    rst $38                                       ; $78be: $ff
    adc e                                         ; $78bf: $8b
    db $fc                                        ; $78c0: $fc
    ld e, h                                       ; $78c1: $5c

jr_049_78c2:
    res 7, l                                      ; $78c2: $cb $bd
    ld [hl], a                                    ; $78c4: $77
    ld a, [hl+]                                   ; $78c5: $2a
    and [hl]                                      ; $78c6: $a6
    ld [c], a                                     ; $78c7: $e2
    ld h, d                                       ; $78c8: $62
    add $7b                                       ; $78c9: $c6 $7b
    push bc                                       ; $78cb: $c5
    adc b                                         ; $78cc: $88
    or e                                          ; $78cd: $b3
    inc [hl]                                      ; $78ce: $34
    rst $10                                       ; $78cf: $d7
    ld [hl], d                                    ; $78d0: $72
    cpl                                           ; $78d1: $2f
    ld hl, $6bfc                                  ; $78d2: $21 $fc $6b
    inc sp                                        ; $78d5: $33
    or l                                          ; $78d6: $b5
    ld h, a                                       ; $78d7: $67
    or l                                          ; $78d8: $b5
    ld b, l                                       ; $78d9: $45
    push de                                       ; $78da: $d5
    cp e                                          ; $78db: $bb
    ld l, e                                       ; $78dc: $6b
    cp [hl]                                       ; $78dd: $be
    adc e                                         ; $78de: $8b
    ld c, h                                       ; $78df: $4c
    sub [hl]                                      ; $78e0: $96
    and $5a                                       ; $78e1: $e6 $5a
    adc $77                                       ; $78e3: $ce $77
    xor a                                         ; $78e5: $af
    ld [hl], e                                    ; $78e6: $73
    sbc e                                         ; $78e7: $9b
    di                                            ; $78e8: $f3
    and l                                         ; $78e9: $a5
    cp l                                          ; $78ea: $bd
    adc l                                         ; $78eb: $8d
    pop bc                                        ; $78ec: $c1
    cp c                                          ; $78ed: $b9
    ld a, c                                       ; $78ee: $79
    ld e, e                                       ; $78ef: $5b
    cp h                                          ; $78f0: $bc
    sub a                                         ; $78f1: $97
    sbc h                                         ; $78f2: $9c
    sbc l                                         ; $78f3: $9d
    jp z, $9dcd                                   ; $78f4: $ca $cd $9d

    cp d                                          ; $78f7: $ba
    inc de                                        ; $78f8: $13
    halt                                          ; $78f9: $76
    cpl                                           ; $78fa: $2f
    ld hl, $6bfc                                  ; $78fb: $21 $fc $6b
    inc sp                                        ; $78fe: $33
    or l                                          ; $78ff: $b5
    ld h, a                                       ; $7900: $67
    or l                                          ; $7901: $b5
    ld b, l                                       ; $7902: $45
    push de                                       ; $7903: $d5
    ld b, e                                       ; $7904: $43
    dec h                                         ; $7905: $25
    cp $00                                        ; $7906: $fe $00
    rst $08                                       ; $7908: $cf
    db $e4                                        ; $7909: $e4
    ld a, h                                       ; $790a: $7c
    rst $30                                       ; $790b: $f7
    ld a, [hl-]                                   ; $790c: $3a
    or a                                          ; $790d: $b7
    add hl, sp                                    ; $790e: $39
    ld e, a                                       ; $790f: $5f
    jp c, Jump_000_18db                           ; $7910: $da $db $18

    sbc h                                         ; $7913: $9c
    sbc e                                         ; $7914: $9b
    ld [hl], c                                    ; $7915: $71
    inc e                                         ; $7916: $1c
    cpl                                           ; $7917: $2f
    ld b, d                                       ; $7918: $42
    and l                                         ; $7919: $a5
    ldh [rNR42], a                                ; $791a: $e0 $21
    ld [hl], $27                                  ; $791c: $36 $27
    db $f4                                        ; $791e: $f4
    ld h, h                                       ; $791f: $64
    ld h, $79                                     ; $7920: $26 $79
    cp [hl]                                       ; $7922: $be
    dec bc                                        ; $7923: $0b
    ld a, a                                       ; $7924: $7f
    ld a, [$ec79]                                 ; $7925: $fa $79 $ec
    ld c, [hl]                                    ; $7928: $4e
    push de                                       ; $7929: $d5
    pop af                                        ; $792a: $f1
    ld bc, $776f                                  ; $792b: $01 $6f $77
    pop de                                        ; $792e: $d1
    cpl                                           ; $792f: $2f
    scf                                           ; $7930: $37
    rlca                                          ; $7931: $07
    pop de                                        ; $7932: $d1
    rla                                           ; $7933: $17
    ld c, d                                       ; $7934: $4a
    call $2d45                                    ; $7935: $cd $45 $2d
    adc l                                         ; $7938: $8d
    cp e                                          ; $7939: $bb
    ld d, e                                       ; $793a: $53
    cp c                                          ; $793b: $b9
    add hl, sp                                    ; $793c: $39
    xor $e4                                       ; $793d: $ee $e4
    adc a                                         ; $793f: $8f
    sbc d                                         ; $7940: $9a
    ld [hl], c                                    ; $7941: $71
    inc e                                         ; $7942: $1c
    cpl                                           ; $7943: $2f
    call $ef1b                                    ; $7944: $cd $1b $ef
    call nc, $d699                                ; $7947: $d4 $99 $d6
    dec e                                         ; $794a: $1d
    call c, $cd7c                                 ; $794b: $dc $7c $cd
    ld d, c                                       ; $794e: $51
    dec bc                                        ; $794f: $0b
    dec hl                                        ; $7950: $2b
    ld [$39cd], sp                                ; $7951: $08 $cd $39
    ret z                                         ; $7954: $c8

    and b                                         ; $7955: $a0
    sub b                                         ; $7956: $90
    ld c, c                                       ; $7957: $49
    adc [hl]                                      ; $7958: $8e
    rrca                                          ; $7959: $0f
    xor a                                         ; $795a: $af
    sbc b                                         ; $795b: $98
    sbc h                                         ; $795c: $9c
    rst $00                                       ; $795d: $c7
    xor [hl]                                      ; $795e: $ae
    ld c, l                                       ; $795f: $4d
    dec [hl]                                      ; $7960: $35
    rlca                                          ; $7961: $07
    add hl, sp                                    ; $7962: $39
    ld a, $00                                     ; $7963: $3e $00
    ld c, a                                       ; $7965: $4f
    ld l, d                                       ; $7966: $6a
    dec [hl]                                      ; $7967: $35
    ld l, a                                       ; $7968: $6f
    inc a                                         ; $7969: $3c
    ld d, h                                       ; $796a: $54
    dec sp                                        ; $796b: $3b
    add hl, de                                    ; $796c: $19
    rrca                                          ; $796d: $0f
    push hl                                       ; $796e: $e5
    ld a, h                                       ; $796f: $7c
    ld d, e                                       ; $7970: $53
    adc $1b                                       ; $7971: $ce $1b
    cpl                                           ; $7973: $2f
    inc l                                         ; $7974: $2c
    rrca                                          ; $7975: $0f
    push de                                       ; $7976: $d5
    push bc                                       ; $7977: $c5
    cp h                                          ; $7978: $bc
    push hl                                       ; $7979: $e5
    ld d, b                                       ; $797a: $50
    dec l                                         ; $797b: $2d
    inc l                                         ; $797c: $2c
    rst $28                                       ; $797d: $ef
    ld e, h                                       ; $797e: $5c
    db $ed                                        ; $797f: $ed
    rst $08                                       ; $7980: $cf
    ld h, [hl]                                    ; $7981: $66
    pop de                                        ; $7982: $d1
    sbc d                                         ; $7983: $9a
    dec bc                                        ; $7984: $0b
    ld e, e                                       ; $7985: $5b
    cp l                                          ; $7986: $bd
    ld [de], a                                    ; $7987: $12
    sbc b                                         ; $7988: $98
    db $fc                                        ; $7989: $fc
    adc d                                         ; $798a: $8a
    dec b                                         ; $798b: $05
    inc sp                                        ; $798c: $33
    adc d                                         ; $798d: $8a
    rrca                                          ; $798e: $0f
    ld l, a                                       ; $798f: $6f
    dec de                                        ; $7990: $1b
    rrca                                          ; $7991: $0f
    push de                                       ; $7992: $d5
    jp nz, $bcf2                                  ; $7993: $c2 $f2 $bc

    push hl                                       ; $7996: $e5
    sub l                                         ; $7997: $95
    inc bc                                        ; $7998: $03
    rst $08                                       ; $7999: $cf
    inc [hl]                                      ; $799a: $34
    rst $30                                       ; $799b: $f7
    ld [hl], d                                    ; $799c: $72
    sbc [hl]                                      ; $799d: $9e
    ld de, $b21e                                  ; $799e: $11 $1e $b2
    ld h, b                                       ; $79a1: $60
    ld b, [hl]                                    ; $79a2: $46
    ld h, c                                       ; $79a3: $61
    pop de                                        ; $79a4: $d1
    xor e                                         ; $79a5: $ab
    cp e                                          ; $79a6: $bb
    ld [hl+], a                                   ; $79a7: $22
    ld c, e                                       ; $79a8: $4b
    xor [hl]                                      ; $79a9: $ae
    adc [hl]                                      ; $79aa: $8e
    ld [hl], a                                    ; $79ab: $77
    ld c, l                                       ; $79ac: $4d

jr_049_79ad:
    xor $d4                                       ; $79ad: $ee $d4
    ld a, [c]                                     ; $79af: $f2
    jp nz, $98f2                                  ; $79b0: $c2 $f2 $98

    cp [hl]                                       ; $79b3: $be
    ld [hl], e                                    ; $79b4: $73
    ld l, d                                       ; $79b5: $6a
    xor d                                         ; $79b6: $aa
    sbc l                                         ; $79b7: $9d
    xor d                                         ; $79b8: $aa
    ld [hl], a                                    ; $79b9: $77
    xor [hl]                                      ; $79ba: $ae
    inc l                                         ; $79bb: $2c
    db $ed                                        ; $79bc: $ed
    xor [hl]                                      ; $79bd: $ae
    ld sp, hl                                     ; $79be: $f9
    rst $18                                       ; $79bf: $df
    add l                                         ; $79c0: $85
    adc l                                         ; $79c1: $8d
    sub $a6                                       ; $79c2: $d6 $a6
    jp c, $e28f                                   ; $79c4: $da $8f $e2

    inc bc                                        ; $79c7: $03
    rst $10                                       ; $79c8: $d7
    db $ed                                        ; $79c9: $ed
    ld h, d                                       ; $79ca: $62
    ld h, a                                       ; $79cb: $67
    db $ec                                        ; $79cc: $ec
    add d                                         ; $79cd: $82
    xor $54                                       ; $79ce: $ee $54
    dec l                                         ; $79d0: $2d
    ld a, [hl]                                    ; $79d1: $7e
    rst $08                                       ; $79d2: $cf
    ld h, e                                       ; $79d3: $63
    jr nz, jr_049_79ad                            ; $79d4: $20 $d7

    and [hl]                                      ; $79d6: $a6
    jp c, $b48f                                   ; $79d7: $da $8f $b4

    add hl, de                                    ; $79da: $19
    db $10                                        ; $79db: $10
    ld a, a                                       ; $79dc: $7f
    nop                                           ; $79dd: $00
    rst $10                                       ; $79de: $d7
    db $e4                                        ; $79df: $e4
    add h                                         ; $79e0: $84
    and $7e                                       ; $79e1: $e6 $7e
    sbc [hl]                                      ; $79e3: $9e
    ld de, $b21e                                  ; $79e4: $11 $1e $b2
    ld h, b                                       ; $79e7: $60
    ld b, [hl]                                    ; $79e8: $46
    ld [c], a                                     ; $79e9: $e2
    rst $30                                       ; $79ea: $f7
    inc c                                         ; $79eb: $0c
    db $ed                                        ; $79ec: $ed
    adc h                                         ; $79ed: $8c
    cp h                                          ; $79ee: $bc
    ld [hl], $27                                  ; $79ef: $36 $27
    db $10                                        ; $79f1: $10
    ld d, [hl]                                    ; $79f2: $56
    inc d                                         ; $79f3: $14
    ld [hl], h                                    ; $79f4: $74
    ld [bc], a                                    ; $79f5: $02
    ld b, $f1                                     ; $79f6: $06 $f1
    ld bc, $3bd7                                  ; $79f8: $01 $d7 $3b
    rst $10                                       ; $79fb: $d7
    ld a, h                                       ; $79fc: $7c
    ld l, c                                       ; $79fd: $69
    ld h, c                                       ; $79fe: $61
    dec hl                                        ; $79ff: $2b
    ld [c], a                                     ; $7a00: $e2
    ld a, c                                       ; $7a01: $79
    db $e4                                        ; $7a02: $e4
    add hl, bc                                    ; $7a03: $09
    jr jr_049_7a32                                ; $7a04: $18 $2c

    jp nz, $9860                                  ; $7a06: $c2 $60 $98

    inc de                                        ; $7a09: $13

jr_049_7a0a:
    ld a, d                                       ; $7a0a: $7a
    ld [hl-], a                                   ; $7a0b: $32
    jp nz, Jump_000_0304                          ; $7a0c: $c2 $04 $03

    dec b                                         ; $7a0f: $05
    ld [hl], l                                    ; $7a10: $75
    sbc e                                         ; $7a11: $9b
    ld [hl], e                                    ; $7a12: $73
    rst $38                                       ; $7a13: $ff
    and a                                         ; $7a14: $a7
    sbc l                                         ; $7a15: $9d
    ld sp, $f9c8                                  ; $7a16: $31 $c8 $f9
    rst $38                                       ; $7a19: $ff
    ld a, l                                       ; $7a1a: $7d
    cp h                                          ; $7a1b: $bc
    set 6, d                                      ; $7a1c: $cb $f2
    ld c, [hl]                                    ; $7a1e: $4e
    sbc a                                         ; $7a1f: $9f
    inc a                                         ; $7a20: $3c
    adc a                                         ; $7a21: $8f
    ld sp, $f3f0                                  ; $7a22: $31 $f0 $f3
    add $0b                                       ; $7a25: $c6 $0b
    jr nc, jr_049_7a81                            ; $7a27: $30 $58

    ld e, b                                       ; $7a29: $58
    ld e, $97                                     ; $7a2a: $1e $97
    inc e                                         ; $7a2c: $1c
    jr nz, jr_049_7a38                            ; $7a2d: $20 $09

    inc bc                                        ; $7a2f: $03
    ret nz                                        ; $7a30: $c0

    pop af                                        ; $7a31: $f1

jr_049_7a32:
    ld e, [hl]                                    ; $7a32: $5e
    inc [hl]                                      ; $7a33: $34
    sub e                                         ; $7a34: $93
    dec hl                                        ; $7a35: $2b
    dec c                                         ; $7a36: $0d
    db $fc                                        ; $7a37: $fc

jr_049_7a38:
    ld a, [$0a81]                                 ; $7a38: $fa $81 $0a
    db $e4                                        ; $7a3b: $e4
    and b                                         ; $7a3c: $a0
    sbc h                                         ; $7a3d: $9c
    ld l, e                                       ; $7a3e: $6b
    add hl, de                                    ; $7a3f: $19
    rst $28                                       ; $7a40: $ef
    sbc c                                         ; $7a41: $99
    and $c2                                       ; $7a42: $e6 $c2
    ld d, [hl]                                    ; $7a44: $56
    rst $28                                       ; $7a45: $ef
    dec l                                         ; $7a46: $2d
    ld a, [$031a]                                 ; $7a47: $fa $1a $03
    cp c                                          ; $7a4a: $b9
    rst $20                                       ; $7a4b: $e7
    ld c, e                                       ; $7a4c: $4b
    adc d                                         ; $7a4d: $8a
    ld b, l                                       ; $7a4e: $45
    xor l                                         ; $7a4f: $ad
    ld [c], a                                     ; $7a50: $e2
    ld hl, sp+$00                                 ; $7a51: $f8 $00
    rst $10                                       ; $7a53: $d7
    db $e4                                        ; $7a54: $e4
    adc $df                                       ; $7a55: $ce $df
    sbc c                                         ; $7a57: $99
    ld l, c                                       ; $7a58: $69
    ld e, l                                       ; $7a59: $5d
    dec [hl]                                      ; $7a5a: $35
    ld d, b                                       ; $7a5b: $50
    or a                                          ; $7a5c: $b7
    add hl, sp                                    ; $7a5d: $39
    rst $30                                       ; $7a5e: $f7
    ld a, a                                       ; $7a5f: $7f
    jp c, $dff9                                   ; $7a60: $da $f9 $df

    sub [hl]                                      ; $7a63: $96
    di                                            ; $7a64: $f3
    sbc b                                         ; $7a65: $98
    ld b, b                                       ; $7a66: $40
    db $fc                                        ; $7a67: $fc
    ld bc, $9a2f                                  ; $7a68: $01 $2f $9a
    ld d, c                                       ; $7a6b: $51
    inc e                                         ; $7a6c: $1c
    rst $00                                       ; $7a6d: $c7
    ld [hl], e                                    ; $7a6e: $73
    dec l                                         ; $7a6f: $2d
    ld [hl], a                                    ; $7a70: $77
    jp nz, $ac2e                                  ; $7a71: $c2 $2e $ac

    jr nc, jr_049_7a0a                            ; $7a74: $30 $94

    dec bc                                        ; $7a76: $0b
    dec de                                        ; $7a77: $1b
    dec c                                         ; $7a78: $0d
    ld d, h                                       ; $7a79: $54
    ld d, d                                       ; $7a7a: $52
    ld b, c                                       ; $7a7b: $41
    di                                            ; $7a7c: $f3
    jp z, $d701                                   ; $7a7d: $ca $01 $d7

    db $e4                                        ; $7a80: $e4

Call_049_7a81:
jr_049_7a81:
    add b                                         ; $7a81: $80
    call $1763                                    ; $7a82: $cd $63 $17
    ld e, c                                       ; $7a85: $59
    ld [hl], d                                    ; $7a86: $72
    push af                                       ; $7a87: $f5
    jp c, Jump_049_7354                           ; $7a88: $da $54 $73

    sub b                                         ; $7a8b: $90
    ld hl, $42fa                                  ; $7a8c: $21 $fa $42
    xor c                                         ; $7a8f: $a9
    add hl, hl                                    ; $7a90: $29
    cp $00                                        ; $7a91: $fe $00
    rst $10                                       ; $7a93: $d7
    db $e4                                        ; $7a94: $e4
    and h                                         ; $7a95: $a4
    push hl                                       ; $7a96: $e5
    jp nc, $e68c                                  ; $7a97: $d2 $8c $e6

    cp e                                          ; $7a9a: $bb
    or a                                          ; $7a9b: $b7
    ld c, d                                       ; $7a9c: $4a
    jp nz, $cdf7                                  ; $7a9d: $c2 $f7 $cd

    dec a                                         ; $7aa0: $3d
    add hl, hl                                    ; $7aa1: $29
    ld a, [c]                                     ; $7aa2: $f2
    push de                                       ; $7aa3: $d5
    sbc b                                         ; $7aa4: $98
    ld h, b                                       ; $7aa5: $60
    rst $20                                       ; $7aa6: $e7
    sbc a                                         ; $7aa7: $9f
    cp [hl]                                       ; $7aa8: $be
    inc [hl]                                      ; $7aa9: $34
    ret nc                                        ; $7aaa: $d0

    inc sp                                        ; $7aab: $33
    ld [hl], $c7                                  ; $7aac: $36 $c7
    db $dd                                        ; $7aae: $dd
    jp hl                                         ; $7aaf: $e9


    sub e                                         ; $7ab0: $93
    ld l, a                                       ; $7ab1: $6f
    adc d                                         ; $7ab2: $8a
    ccf                                           ; $7ab3: $3f
    nop                                           ; $7ab4: $00
    ld l, a                                       ; $7ab5: $6f
    ld h, e                                       ; $7ab6: $63
    ld [hl], a                                    ; $7ab7: $77
    ld b, [hl]                                    ; $7ab8: $46
    ld e, [hl]                                    ; $7ab9: $5e
    adc b                                         ; $7aba: $88
    and l                                         ; $7abb: $a5
    dec hl                                        ; $7abc: $2b
    rlca                                          ; $7abd: $07
    rst $08                                       ; $7abe: $cf
    inc hl                                        ; $7abf: $23
    ld [hl], h                                    ; $7ac0: $74
    ld sp, $0b94                                  ; $7ac1: $31 $94 $0b
    dec hl                                        ; $7ac4: $2b
    inc l                                         ; $7ac5: $2c
    xor b                                         ; $7ac6: $a8
    ld hl, sp+$03                                 ; $7ac7: $f8 $03
    sub a                                         ; $7ac9: $97
    ld b, [hl]                                    ; $7aca: $46
    inc h                                         ; $7acb: $24
    ld h, [hl]                                    ; $7acc: $66
    xor a                                         ; $7acd: $af
    ld a, h                                       ; $7ace: $7c
    and $92                                       ; $7acf: $e6 $92
    ld hl, sp-$23                                 ; $7ad1: $f8 $dd
    and [hl]                                      ; $7ad3: $a6
    or $92                                        ; $7ad4: $f6 $92
    pop bc                                        ; $7ad6: $c1
    ld b, e                                       ; $7ad7: $43
    ld d, [hl]                                    ; $7ad8: $56
    inc sp                                        ; $7ad9: $33
    res 0, l                                      ; $7ada: $cb $85
    push hl                                       ; $7adc: $e5
    pop de                                        ; $7add: $d1
    ld c, a                                       ; $7ade: $4f
    xor a                                         ; $7adf: $af
    sbc b                                         ; $7ae0: $98
    inc e                                         ; $7ae1: $1c
    call z, $9ee6                                 ; $7ae2: $cc $e6 $9e
    ld a, c                                       ; $7ae5: $79
    ld l, c                                       ; $7ae6: $69
    rst $38                                       ; $7ae7: $ff
    set 4, l                                      ; $7ae8: $cb $e5
    rlca                                          ; $7aea: $07
    jp $ef9c                                      ; $7aeb: $c3 $9c $ef


    sbc $2a                                       ; $7aee: $de $2a
    add hl, bc                                    ; $7af0: $09
    rst $18                                       ; $7af1: $df
    scf                                           ; $7af2: $37
    rst $30                                       ; $7af3: $f7
    and h                                         ; $7af4: $a4
    ret z                                         ; $7af5: $c8

    ld d, a                                       ; $7af6: $57
    ld h, e                                       ; $7af7: $63
    ld [bc], a                                    ; $7af8: $02
    pop af                                        ; $7af9: $f1
    cp e                                          ; $7afa: $bb
    rst $30                                       ; $7afb: $f7
    sbc [hl]                                      ; $7afc: $9e
    ld b, c                                       ; $7afd: $41
    ld c, [hl]                                    ; $7afe: $4e
    ld [hl], d                                    ; $7aff: $72
    ld [hl], e                                    ; $7b00: $73
    ld h, $62                                     ; $7b01: $26 $62
    xor d                                         ; $7b03: $aa
    adc h                                         ; $7b04: $8c
    rst $30                                       ; $7b05: $f7
    ld a, [hl-]                                   ; $7b06: $3a
    inc a                                         ; $7b07: $3c
    call nz, Call_000_3ef2                        ; $7b08: $c4 $f2 $3e
    ld [hl], h                                    ; $7b0b: $74
    ld sp, $d595                                  ; $7b0c: $31 $95 $d5
    db $e3                                        ; $7b0f: $e3
    sub d                                         ; $7b10: $92
    inc bc                                        ; $7b11: $03
    sub [hl]                                      ; $7b12: $96
    ld h, [hl]                                    ; $7b13: $66
    or h                                          ; $7b14: $b4
    and b                                         ; $7b15: $a0
    ld d, e                                       ; $7b16: $53
    jp c, Jump_000_3a0c                           ; $7b17: $da $0c $3a

    sbc e                                         ; $7b1a: $9b
    jp hl                                         ; $7b1b: $e9


    ld hl, sp+$00                                 ; $7b1c: $f8 $00
    ld d, a                                       ; $7b1e: $57

jr_049_7b1f:
    ld a, e                                       ; $7b1f: $7b
    xor $64                                       ; $7b20: $ee $64
    ld c, e                                       ; $7b22: $4b
    inc de                                        ; $7b23: $13
    sbc d                                         ; $7b24: $9a
    ld b, e                                       ; $7b25: $43
    add hl, sp                                    ; $7b26: $39
    rst $30                                       ; $7b27: $f7
    ld a, a                                       ; $7b28: $7f
    ld a, [hl-]                                   ; $7b29: $3a
    inc hl                                        ; $7b2a: $23
    inc a                                         ; $7b2b: $3c
    ld h, h                                       ; $7b2c: $64
    inc b                                         ; $7b2d: $04
    and l                                         ; $7b2e: $a5
    ld hl, sp+$00                                 ; $7b2f: $f8 $00
    ld l, a                                       ; $7b31: $6f
    dec de                                        ; $7b32: $1b
    rrca                                          ; $7b33: $0f
    push de                                       ; $7b34: $d5
    ld c, d                                       ; $7b35: $4a
    inc sp                                        ; $7b36: $33
    set 7, c                                      ; $7b37: $cb $f9
    ld l, $b4                                     ; $7b39: $2e $b4
    db $f4                                        ; $7b3b: $f4
    ld d, a                                       ; $7b3c: $57
    ld c, $97                                     ; $7b3d: $0e $97
    dec d                                         ; $7b3f: $15
    add h                                         ; $7b40: $84
    ld a, [hl+]                                   ; $7b41: $2a
    pop af                                        ; $7b42: $f1
    rlca                                          ; $7b43: $07
    rst $08                                       ; $7b44: $cf
    ld h, e                                       ; $7b45: $63
    jr nz, jr_049_7b1f                            ; $7b46: $20 $d7

    and [hl]                                      ; $7b48: $a6
    sbc d                                         ; $7b49: $9a
    ld e, c                                       ; $7b4a: $59
    ld e, [hl]                                    ; $7b4b: $5e
    db $ec                                        ; $7b4c: $ec
    jp nc, $c488                                  ; $7b4d: $d2 $88 $c4

    db $ec                                        ; $7b50: $ec
    sub l                                         ; $7b51: $95
    rst $08                                       ; $7b52: $cf
    ld e, h                                       ; $7b53: $5c
    ld [de], a                                    ; $7b54: $12
    cp a                                          ; $7b55: $bf
    ld l, e                                       ; $7b56: $6b
    ld [hl], d                                    ; $7b57: $72
    ld h, c                                       ; $7b58: $61
    add l                                         ; $7b59: $85
    add l                                         ; $7b5a: $85
    adc l                                         ; $7b5b: $8d
    add $1d                                       ; $7b5c: $c6 $1d
    ld h, h                                       ; $7b5e: $64
    ld d, d                                       ; $7b5f: $52
    ld [hl], $17                                  ; $7b60: $36 $17
    sbc c                                         ; $7b62: $99
    or a                                          ; $7b63: $b7
    xor b                                         ; $7b64: $a8
    ld a, e                                       ; $7b65: $7b
    db $ed                                        ; $7b66: $ed
    ld b, a                                       ; $7b67: $47
    ld d, c                                       ; $7b68: $51
    or l                                          ; $7b69: $b5
    or [hl]                                       ; $7b6a: $b6
    ld hl, sp+$00                                 ; $7b6b: $f8 $00
    or a                                          ; $7b6d: $b7
    xor c                                         ; $7b6e: $a9
    cp l                                          ; $7b6f: $bd
    ld h, h                                       ; $7b70: $64
    ldh a, [$90]                                  ; $7b71: $f0 $90
    push de                                       ; $7b73: $d5
    call z, $6172                                 ; $7b74: $cc $72 $61
    ld a, c                                       ; $7b77: $79
    db $f4                                        ; $7b78: $f4
    db $d3                                        ; $7b79: $d3
    dec hl                                        ; $7b7a: $2b
    ld h, $07                                     ; $7b7b: $26 $07
    or e                                          ; $7b7d: $b3
    cp c                                          ; $7b7e: $b9
    ld h, a                                       ; $7b7f: $67
    ld e, [hl]                                    ; $7b80: $5e
    ld a, [de]                                    ; $7b81: $1a
    and $7c                                       ; $7b82: $e6 $7c
    rst $30                                       ; $7b84: $f7
    ld d, [hl]                                    ; $7b85: $56
    ld c, c                                       ; $7b86: $49
    ld hl, sp-$42                                 ; $7b87: $f8 $be
    cp c                                          ; $7b89: $b9
    daa                                           ; $7b8a: $27
    ld b, l                                       ; $7b8b: $45
    cp [hl]                                       ; $7b8c: $be
    ld a, [de]                                    ; $7b8d: $1a
    inc de                                        ; $7b8e: $13
    ld e, h                                       ; $7b8f: $5c
    call z, $1ab4                                 ; $7b90: $cc $b4 $1a
    jp z, Jump_000_1845                           ; $7b93: $ca $45 $18

    inc l                                         ; $7b96: $2c
    or c                                          ; $7b97: $b1
    inc a                                         ; $7b98: $3c
    or a                                          ; $7b99: $b7
    inc b                                         ; $7b9a: $04
    ld d, b                                       ; $7b9b: $50
    push bc                                       ; $7b9c: $c5
    cp e                                          ; $7b9d: $bb
    rst $30                                       ; $7b9e: $f7
    sbc [hl]                                      ; $7b9f: $9e
    ld b, c                                       ; $7ba0: $41
    ld c, [hl]                                    ; $7ba1: $4e
    ld [hl], d                                    ; $7ba2: $72
    ld [hl], e                                    ; $7ba3: $73
    ld h, $62                                     ; $7ba4: $26 $62
    xor d                                         ; $7ba6: $aa
    adc h                                         ; $7ba7: $8c
    rst $30                                       ; $7ba8: $f7
    ld a, [hl-]                                   ; $7ba9: $3a
    inc a                                         ; $7baa: $3c
    call nz, Call_000_3ef2                        ; $7bab: $c4 $f2 $3e
    ld [hl], h                                    ; $7bae: $74
    ld sp, $d595                                  ; $7baf: $31 $95 $d5
    db $e3                                        ; $7bb2: $e3
    sub d                                         ; $7bb3: $92
    inc bc                                        ; $7bb4: $03
    sub [hl]                                      ; $7bb5: $96
    ld h, [hl]                                    ; $7bb6: $66
    or h                                          ; $7bb7: $b4
    and b                                         ; $7bb8: $a0
    ld d, e                                       ; $7bb9: $53
    jp c, Jump_000_3a0c                           ; $7bba: $da $0c $3a

    sbc e                                         ; $7bbd: $9b
    jp hl                                         ; $7bbe: $e9


    ld hl, sp+$00                                 ; $7bbf: $f8 $00
    rst $10                                       ; $7bc1: $d7
    db $e4                                        ; $7bc2: $e4
    ld c, [hl]                                    ; $7bc3: $4e
    dec l                                         ; $7bc4: $2d
    rst $08                                       ; $7bc5: $cf
    dec de                                        ; $7bc6: $1b
    cpl                                           ; $7bc7: $2f
    call nz, $b0d2                                ; $7bc8: $c4 $d2 $b0
    sub c                                         ; $7bcb: $91
    and l                                         ; $7bcc: $a5
    rst $18                                       ; $7bcd: $df
    add hl, de                                    ; $7bce: $19
    add hl, sp                                    ; $7bcf: $39
    adc [hl]                                      ; $7bd0: $8e
    db $e3                                        ; $7bd1: $e3
    and c                                         ; $7bd2: $a1
    sbc h                                         ; $7bd3: $9c
    or h                                          ; $7bd4: $b4
    ld e, h                                       ; $7bd5: $5c
    ld e, b                                       ; $7bd6: $58
    ld e, [hl]                                    ; $7bd7: $5e
    ld hl, sp-$57                                 ; $7bd8: $f8 $a9
    add hl, de                                    ; $7bda: $19
    rra                                           ; $7bdb: $1f
    rst $08                                       ; $7bdc: $cf
    rst $38                                       ; $7bdd: $ff
    ld l, b                                       ; $7bde: $68
    ld e, h                                       ; $7bdf: $5c
    rst $30                                       ; $7be0: $f7
    ld a, a                                       ; $7be1: $7f
    ld d, d                                       ; $7be2: $52
    ldh a, [rNR10]                                ; $7be3: $f0 $10
    add e                                         ; $7be5: $83
    cp h                                          ; $7be6: $bc
    ret c                                         ; $7be7: $d8

    ret                                           ; $7be8: $c9


    adc h                                         ; $7be9: $8c
    ld d, $74                                     ; $7bea: $16 $74
    rst $38                                       ; $7bec: $ff
    res 3, l                                      ; $7bed: $cb $9d
    sub c                                         ; $7bef: $91
    db $e3                                        ; $7bf0: $e3
    inc bc                                        ; $7bf1: $03
    ld d, a                                       ; $7bf2: $57
    call Call_049_4268                            ; $7bf3: $cd $68 $42
    ld [hl], e                                    ; $7bf6: $73
    ld b, c                                       ; $7bf7: $41
    push bc                                       ; $7bf8: $c5
    rra                                           ; $7bf9: $1f
    rst $08                                       ; $7bfa: $cf
    cp b                                          ; $7bfb: $b8
    call $e599                                    ; $7bfc: $cd $99 $e5
    ld a, h                                       ; $7bff: $7c
    ld [hl], a                                    ; $7c00: $77
    or d                                          ; $7c01: $b2
    db $f4                                        ; $7c02: $f4
    push de                                       ; $7c03: $d5
    rla                                           ; $7c04: $17
    ld a, e                                       ; $7c05: $7b
    push hl                                       ; $7c06: $e5
    inc sp                                        ; $7c07: $33
    sub a                                         ; $7c08: $97
    xor [hl]                                      ; $7c09: $ae
    db $ec                                        ; $7c0a: $ec
    xor d                                         ; $7c0b: $aa
    pop af                                        ; $7c0c: $f1
    db $e4                                        ; $7c0d: $e4
    ld d, a                                       ; $7c0e: $57
    cp h                                          ; $7c0f: $bc
    and b                                         ; $7c10: $a0
    ld a, e                                       ; $7c11: $7b
    ld [hl], b                                    ; $7c12: $70
    sub b                                         ; $7c13: $90
    sub e                                         ; $7c14: $93
    call c, $f78c                                 ; $7c15: $dc $8c $f7
    ld b, [hl]                                    ; $7c18: $46
    ret                                           ; $7c19: $c9


    ld bc, $3a0b                                  ; $7c1a: $01 $0b $3a
    and c                                         ; $7c1d: $a1
    ld a, [hl]                                    ; $7c1e: $7e
    sbc b                                         ; $7c1f: $98
    ld [c], a                                     ; $7c20: $e2
    rrca                                          ; $7c21: $0f
    rst $28                                       ; $7c22: $ef
    ld h, c                                       ; $7c23: $61
    sub b                                         ; $7c24: $90
    dec sp                                        ; $7c25: $3b
    ld [hl], a                                    ; $7c26: $77
    ld sp, hl                                     ; $7c27: $f9
    pop bc                                        ; $7c28: $c1
    inc d                                         ; $7c29: $14
    or a                                          ; $7c2a: $b7
    ld e, [hl]                                    ; $7c2b: $5e
    db $ed                                        ; $7c2c: $ed
    ld b, e                                       ; $7c2d: $43
    di                                            ; $7c2e: $f3
    dec a                                         ; $7c2f: $3d
    ld [hl], a                                    ; $7c30: $77
    ld l, [hl]                                    ; $7c31: $6e
    ret                                           ; $7c32: $c9


    ld h, e                                       ; $7c33: $63
    ld hl, $704c                                  ; $7c34: $21 $4c $70
    ld h, l                                       ; $7c37: $65
    rst $10                                       ; $7c38: $d7
    db $e4                                        ; $7c39: $e4
    and h                                         ; $7c3a: $a4
    push hl                                       ; $7c3b: $e5
    adc $5d                                       ; $7c3c: $ce $5d
    ld h, d                                       ; $7c3e: $62
    ld a, c                                       ; $7c3f: $79
    ld h, a                                       ; $7c40: $67
    ld l, h                                       ; $7c41: $6c
    add $07                                       ; $7c42: $c6 $07
    rst $10                                       ; $7c44: $d7
    dec sp                                        ; $7c45: $3b
    jp hl                                         ; $7c46: $e9


    inc h                                         ; $7c47: $24
    cpl                                           ; $7c48: $2f
    ld [$cb12], a                                 ; $7c49: $ea $12 $cb
    inc de                                        ; $7c4c: $13
    inc [hl]                                      ; $7c4d: $34
    ld b, $6e                                     ; $7c4e: $06 $6e
    ld [hl], e                                    ; $7c50: $73
    ccf                                           ; $7c51: $3f

Jump_049_7c52:
    ld e, c                                       ; $7c52: $59
    ld a, a                                       ; $7c53: $7f
    xor b                                         ; $7c54: $a8
    add hl, de                                    ; $7c55: $19
    rra                                           ; $7c56: $1f
    rst $10                                       ; $7c57: $d7
    db $e4                                        ; $7c58: $e4
    adc $a6                                       ; $7c59: $ce $a6
    rla                                           ; $7c5b: $17
    ld [hl], h                                    ; $7c5c: $74
    and a                                         ; $7c5d: $a7
    ld [$98b9], a                                 ; $7c5e: $ea $b9 $98
    cp [hl]                                       ; $7c61: $be
    add hl, hl                                    ; $7c62: $29
    cp $00                                        ; $7c63: $fe $00
    sub a                                         ; $7c65: $97
    push hl                                       ; $7c66: $e5
    and c                                         ; $7c67: $a1
    ld e, d                                       ; $7c68: $5a
    ld h, h                                       ; $7c69: $64
    ld d, d                                       ; $7c6a: $52
    ld d, [hl]                                    ; $7c6b: $56
    ld h, e                                       ; $7c6c: $63
    jr nz, jr_049_7cba                            ; $7c6d: $20 $4b

    inc sp                                        ; $7c6f: $33
    xor l                                         ; $7c70: $ad
    ld d, $74                                     ; $7c71: $16 $74
    ld h, c                                       ; $7c73: $61

Call_049_7c74:
    ld a, c                                       ; $7c74: $79
    jp hl                                         ; $7c75: $e9


    db $ec                                        ; $7c76: $ec
    ld b, e                                       ; $7c77: $43
    and b                                         ; $7c78: $a0
    dec d                                         ; $7c79: $15
    pop af                                        ; $7c7a: $f1
    push bc                                       ; $7c7b: $c5
    ld c, [hl]                                    ; $7c7c: $4e
    ret c                                         ; $7c7d: $d8

    dec b                                         ; $7c7e: $05
    db $dd                                        ; $7c7f: $dd
    rst $38                                       ; $7c80: $ff
    ld [hl], d                                    ; $7c81: $72
    ld b, d                                       ; $7c82: $42
    sub e                                         ; $7c83: $93
    db $e3                                        ; $7c84: $e3
    inc bc                                        ; $7c85: $03
    rst $10                                       ; $7c86: $d7
    db $e4                                        ; $7c87: $e4
    jp nz, Jump_049_4b0a                          ; $7c88: $c2 $0a $4b

    ld l, h                                       ; $7c8b: $6c
    ld h, h                                       ; $7c8c: $64
    jp hl                                         ; $7c8d: $e9


    rlca                                          ; $7c8e: $07

jr_049_7c8f:
    ld a, d                                       ; $7c8f: $7a
    add $e6                                       ; $7c90: $c6 $e6
    push bc                                       ; $7c92: $c5
    jr nz, jr_049_7c8f                            ; $7c93: $20 $fa

    and d                                         ; $7c95: $a2

Call_049_7c96:
    ld a, [hl+]                                   ; $7c96: $2a
    push af                                       ; $7c97: $f5
    add hl, hl                                    ; $7c98: $29
    ld a, $00                                     ; $7c99: $3e $00
    rst $10                                       ; $7c9b: $d7
    db $e4                                        ; $7c9c: $e4
    cp $97                                        ; $7c9d: $fe $97
    ld c, e                                       ; $7c9f: $4b
    inc l                                         ; $7ca0: $2c
    rst $00                                       ; $7ca1: $c7
    ld a, e                                       ; $7ca2: $7b
    pop de                                        ; $7ca3: $d1
    adc h                                         ; $7ca4: $8c
    add [hl]                                      ; $7ca5: $86
    adc l                                         ; $7ca6: $8d
    inc l                                         ; $7ca7: $2c
    db $fd                                        ; $7ca8: $fd
    sub h                                         ; $7ca9: $94
    halt                                          ; $7caa: $76
    db $10                                        ; $7cab: $10
    ld [c], a                                     ; $7cac: $e2
    add l                                         ; $7cad: $85
    ld e, b                                       ; $7cae: $58
    ld a, [de]                                    ; $7caf: $1a
    db $fd                                        ; $7cb0: $fd
    db $f4                                        ; $7cb1: $f4
    ld l, e                                       ; $7cb2: $6b
    ld c, $e5                                     ; $7cb3: $0e $e5
    ld c, [hl]                                    ; $7cb5: $4e
    xor b                                         ; $7cb6: $a8
    ld [hl], a                                    ; $7cb7: $77
    ld a, [hl+]                                   ; $7cb8: $2a
    scf                                           ; $7cb9: $37

jr_049_7cba:
    ld [hl], a                                    ; $7cba: $77
    jp nz, Jump_000_07c6                          ; $7cbb: $c2 $c6 $07

    rst $28                                       ; $7cbe: $ef
    ld [hl], l                                    ; $7cbf: $75
    ld h, c                                       ; $7cc0: $61
    dec b                                         ; $7cc1: $05
    and c                                         ; $7cc2: $a1
    add hl, sp                                    ; $7cc3: $39
    rst $18                                       ; $7cc4: $df
    ld [hl], e                                    ; $7cc5: $73
    rlca                                          ; $7cc6: $07
    inc l                                         ; $7cc7: $2c
    pop bc                                        ; $7cc8: $c1
    ld b, b                                       ; $7cc9: $40
    dec b                                         ; $7cca: $05
    db $fd                                        ; $7ccb: $fd
    and l                                         ; $7ccc: $a5
    ld l, h                                       ; $7ccd: $6c
    ret                                           ; $7cce: $c9


    rst $00                                       ; $7ccf: $c7
    ld [hl], c                                    ; $7cd0: $71
    inc a                                         ; $7cd1: $3c
    sub h                                         ; $7cd2: $94
    sub e                                         ; $7cd3: $93
    sub [hl]                                      ; $7cd4: $96
    dec hl                                        ; $7cd5: $2b
    call Call_000_1afd                            ; $7cd6: $cd $fd $1a
    inc [hl]                                      ; $7cd9: $34
    push de                                       ; $7cda: $d5
    ld [hl+], a                                   ; $7cdb: $22
    inc c                                         ; $7cdc: $0c
    sub [hl]                                      ; $7cdd: $96
    ld e, b                                       ; $7cde: $58
    sbc [hl]                                      ; $7cdf: $9e
    or [hl]                                       ; $7ce0: $b6
    inc b                                         ; $7ce1: $04
    ld a, [hl+]                                   ; $7ce2: $2a
    ld a, $00                                     ; $7ce3: $3e $00
    sub a                                         ; $7ce5: $97
    scf                                           ; $7ce6: $37
    ld e, [hl]                                    ; $7ce7: $5e
    reti                                          ; $7ce8: $d9


    push de                                       ; $7ce9: $d5
    db $db                                        ; $7cea: $db
    ld l, b                                       ; $7ceb: $68
    jp nz, $c567                                  ; $7cec: $c2 $67 $c5

    dec e                                         ; $7cef: $1d
    sub [hl]                                      ; $7cf0: $96
    push de                                       ; $7cf1: $d5
    cp b                                          ; $7cf2: $b8
    and b                                         ; $7cf3: $a0

Call_049_7cf4:
    cp c                                          ; $7cf4: $b9
    xor b                                         ; $7cf5: $a8
    inc sp                                        ; $7cf6: $33
    set 7, b                                      ; $7cf7: $cb $f8
    nop                                           ; $7cf9: $00
    ld c, a                                       ; $7cfa: $4f
    add [hl]                                      ; $7cfb: $86
    halt                                          ; $7cfc: $76
    or c                                          ; $7cfd: $b1
    ld c, e                                       ; $7cfe: $4b
    inc hl                                        ; $7cff: $23
    ld [de], a                                    ; $7d00: $12
    or e                                          ; $7d01: $b3
    ld d, a                                       ; $7d02: $57
    ld a, $73                                     ; $7d03: $3e $73
    add hl, hl                                    ; $7d05: $29
    sbc $f5                                       ; $7d06: $de $f5
    ld l, $ac                                     ; $7d08: $2e $ac
    ret nz                                        ; $7d0a: $c0

    dec bc                                        ; $7d0b: $0b
    ld a, [hl-]                                   ; $7d0c: $3a
    rst $10                                       ; $7d0d: $d7
    ld a, h                                       ; $7d0e: $7c
    ld c, c                                       ; $7d0f: $49
    db $ed                                        ; $7d10: $ed
    push hl                                       ; $7d11: $e5
    inc a                                         ; $7d12: $3c
    inc hl                                        ; $7d13: $23
    inc a                                         ; $7d14: $3c
    ld h, h                                       ; $7d15: $64
    pop bc                                        ; $7d16: $c1
    adc h                                         ; $7d17: $8c
    jp nz, Jump_049_57a2                          ; $7d18: $c2 $a2 $57

    ld [hl], a                                    ; $7d1b: $77
    ld b, l                                       ; $7d1c: $45
    sub [hl]                                      ; $7d1d: $96
    ld e, h                                       ; $7d1e: $5c
    cp l                                          ; $7d1f: $bd
    and $82                                       ; $7d20: $e6 $82
    ld c, $54                                     ; $7d22: $0e $54
    jr nz, jr_049_7d2d                            ; $7d24: $20 $07

    dec h                                         ; $7d26: $25
    cpl                                           ; $7d27: $2f
    ld l, h                                       ; $7d28: $6c
    or h                                          ; $7d29: $b4
    inc l                                         ; $7d2a: $2c
    rst $08                                       ; $7d2b: $cf
    or h                                          ; $7d2c: $b4

jr_049_7d2d:
    ld e, d                                       ; $7d2d: $5a
    adc b                                         ; $7d2e: $88
    ld b, c                                       ; $7d2f: $41
    cp h                                          ; $7d30: $bc
    rlca                                          ; $7d31: $07
    rlca                                          ; $7d32: $07
    add hl, sp                                    ; $7d33: $39
    ret                                           ; $7d34: $c9


    call $8899                                    ; $7d35: $cd $99 $88
    xor c                                         ; $7d38: $a9
    ld [hl], d                                    ; $7d39: $72
    ccf                                           ; $7d3a: $3f
    ld a, [c]                                     ; $7d3b: $f2
    add $0b                                       ; $7d3c: $c6 $0b
    cp d                                          ; $7d3e: $ba
    db $db                                        ; $7d3f: $db

jr_049_7d40:
    call nc, $e0d2                                ; $7d40: $d4 $d2 $e0
    ld hl, $f9ab                                  ; $7d43: $21 $ab $f9
    rst $38                                       ; $7d46: $ff
    ld l, c                                       ; $7d47: $69
    cp [hl]                                       ; $7d48: $be
    inc bc                                        ; $7d49: $03
    sub [hl]                                      ; $7d4a: $96
    and b                                         ; $7d4b: $a0
    add hl, sp                                    ; $7d4c: $39
    ld a, a                                       ; $7d4d: $7f
    ld [hl-], a                                   ; $7d4e: $32
    db $d3                                        ; $7d4f: $d3
    inc e                                         ; $7d50: $1c
    rra                                           ; $7d51: $1f
    rst $08                                       ; $7d52: $cf
    inc [hl]                                      ; $7d53: $34
    rst $30                                       ; $7d54: $f7
    dec e                                         ; $7d55: $1d
    rst $18                                       ; $7d56: $df
    add hl, hl                                    ; $7d57: $29
    ld [$aa0b], sp                                ; $7d58: $08 $0b $aa
    db $e3                                        ; $7d5b: $e3
    cp l                                          ; $7d5c: $bd
    ld l, l                                       ; $7d5d: $6d
    inc a                                         ; $7d5e: $3c
    rst $38                                       ; $7d5f: $ff
    set 6, e                                      ; $7d60: $cb $f3
    ret c                                         ; $7d62: $d8

    ld h, c                                       ; $7d63: $61
    adc $23                                       ; $7d64: $ce $23
    ld c, a                                       ; $7d66: $4f
    rla                                           ; $7d67: $17
    ld [hl], h                                    ; $7d68: $74
    cp d                                          ; $7d69: $ba
    ld c, d                                       ; $7d6a: $4a
    ld a, a                                       ; $7d6b: $7f
    ld l, c                                       ; $7d6c: $69
    and [hl]                                      ; $7d6d: $a6
    xor a                                         ; $7d6e: $af
    inc e                                         ; $7d6f: $1c
    sub a                                         ; $7d70: $97
    ld h, [hl]                                    ; $7d71: $66
    or h                                          ; $7d72: $b4
    rrca                                          ; $7d73: $0f
    sbc d                                         ; $7d74: $9a
    db $d3                                        ; $7d75: $d3
    jr jr_049_7d40                                ; $7d76: $18 $c8

    and $3e                                       ; $7d78: $e6 $3e
    inc [hl]                                      ; $7d7a: $34
    adc a                                         ; $7d7b: $8f
    sbc l                                         ; $7d7c: $9d
    ld l, e                                       ; $7d7d: $6b
    cp c                                          ; $7d7e: $b9
    ld [$3883], sp                                ; $7d7f: $08 $83 $38
    adc [hl]                                      ; $7d82: $8e
    db $e3                                        ; $7d83: $e3
    dec [hl]                                      ; $7d84: $35
    rla                                           ; $7d85: $17
    ld h, d                                       ; $7d86: $62
    or b                                          ; $7d87: $b0
    or b                                          ; $7d88: $b0
    dec d                                         ; $7d89: $15
    pop af                                        ; $7d8a: $f1
    ld [hl+], a                                   ; $7d8b: $22
    inc c                                         ; $7d8c: $0c
    ld [hl], d                                    ; $7d8d: $72
    and c                                         ; $7d8e: $a1
    add hl, de                                    ; $7d8f: $19
    push bc                                       ; $7d90: $c5
    ld a, e                                       ; $7d91: $7b
    pop de                                        ; $7d92: $d1
    and d                                         ; $7d93: $a2
    dec hl                                        ; $7d94: $2b
    ld a, e                                       ; $7d95: $7b
    push bc                                       ; $7d96: $c5
    and b                                         ; $7d97: $a0
    dec hl                                        ; $7d98: $2b
    rlca                                          ; $7d99: $07
    ld d, a                                       ; $7d9a: $57
    dec e                                         ; $7d9b: $1d
    or l                                          ; $7d9c: $b5
    and b                                         ; $7d9d: $a0
    dec bc                                        ; $7d9e: $0b
    dec hl                                        ; $7d9f: $2b
    ldh a, [$7c]                                  ; $7da0: $f0 $7c
    rst $20                                       ; $7da2: $e7
    sub [hl]                                      ; $7da3: $96
    db $f4                                        ; $7da4: $f4
    sub a                                         ; $7da5: $97
    ld [de], a                                    ; $7da6: $12
    inc de                                        ; $7da7: $13
    inc [hl]                                      ; $7da8: $34
    rst $20                                       ; $7da9: $e7
    ld e, d                                       ; $7daa: $5a
    adc $77                                       ; $7dab: $ce $77
    xor a                                         ; $7dad: $af
    ld b, e                                       ; $7dae: $43
    ld e, b                                       ; $7daf: $58
    ld d, b                                       ; $7db0: $50
    dec a                                         ; $7db1: $3d

jr_049_7db2:
    rst $10                                       ; $7db2: $d7
    ld [hl], d                                    ; $7db3: $72
    cpl                                           ; $7db4: $2f
    sub l                                         ; $7db5: $95
    ld a, [bc]                                    ; $7db6: $0a
    ld a, [hl+]                                   ; $7db7: $2a
    db $ec                                        ; $7db8: $ec
    daa                                           ; $7db9: $27
    ei                                            ; $7dba: $fb
    ld c, d                                       ; $7dbb: $4a
    adc [hl]                                      ; $7dbc: $8e
    rrca                                          ; $7dbd: $0f
    xor a                                         ; $7dbe: $af
    ret nc                                        ; $7dbf: $d0

    rla                                           ; $7dc0: $17
    ld d, l                                       ; $7dc1: $55
    xor c                                         ; $7dc2: $a9
    ld c, a                                       ; $7dc3: $4f
    ld a, e                                       ; $7dc4: $7b
    and l                                         ; $7dc5: $a5
    inc h                                         ; $7dc6: $24
    dec l                                         ; $7dc7: $2d
    ld l, d                                       ; $7dc8: $6a
    or d                                          ; $7dc9: $b2
    and e                                         ; $7dca: $a3
    call nz, Call_049_6def                        ; $7dcb: $c4 $ef $6d
    inc sp                                        ; $7dce: $33
    sbc d                                         ; $7dcf: $9a
    ret nc                                        ; $7dd0: $d0

    db $e4                                        ; $7dd1: $e4
    add hl, sp                                    ; $7dd2: $39
    ld [hl], e                                    ; $7dd3: $73
    dec l                                         ; $7dd4: $2d
    cp l                                          ; $7dd5: $bd
    ld e, c                                       ; $7dd6: $59
    ld c, $54                                     ; $7dd7: $0e $54
    cp $a8                                        ; $7dd9: $fe $a8
    ld a, c                                       ; $7ddb: $79
    push hl                                       ; $7ddc: $e5
    nop                                           ; $7ddd: $00
    rst $10                                       ; $7dde: $d7
    db $e4                                        ; $7ddf: $e4
    jp nz, $030a                                  ; $7de0: $c2 $0a $03

    ld l, l                                       ; $7de3: $6d
    ld l, $b2                                     ; $7de4: $2e $b2
    db $e4                                        ; $7de6: $e4
    ld [$f7e5], a                                 ; $7de7: $ea $e5 $f7
    ld [$a3f6], sp                                ; $7dea: $08 $f6 $a3
    db $fd                                        ; $7ded: $fd
    inc a                                         ; $7dee: $3c
    inc hl                                        ; $7def: $23
    inc a                                         ; $7df0: $3c
    ld h, h                                       ; $7df1: $64
    pop bc                                        ; $7df2: $c1
    adc h                                         ; $7df3: $8c
    add $dd                                       ; $7df4: $c6 $dd
    add hl, de                                    ; $7df6: $19
    add e                                         ; $7df7: $83
    adc h                                         ; $7df8: $8c
    rst $30                                       ; $7df9: $f7
    ld d, h                                       ; $7dfa: $54
    ld d, l                                       ; $7dfb: $55
    ld b, l                                       ; $7dfc: $45
    dec bc                                        ; $7dfd: $0b
    cp d                                          ; $7dfe: $ba
    sub e                                         ; $7dff: $93
    pop af                                        ; $7e00: $f1
    ld a, h                                       ; $7e01: $7c
    rst $30                                       ; $7e02: $f7
    ld a, [hl-]                                   ; $7e03: $3a
    add h                                         ; $7e04: $84
    dec b                                         ; $7e05: $05
    push de                                       ; $7e06: $d5
    ld [hl], e                                    ; $7e07: $73
    dec l                                         ; $7e08: $2d
    rst $30                                       ; $7e09: $f7
    ld d, d                                       ; $7e0a: $52
    xor c                                         ; $7e0b: $a9
    and b                                         ; $7e0c: $a0
    jp nz, Jump_000_2e82                          ; $7e0d: $c2 $82 $2e

    ld l, h                                       ; $7e10: $6c
    ld b, l                                       ; $7e11: $45
    inc a                                         ; $7e12: $3c
    ld l, l                                       ; $7e13: $6d
    call c, Call_000_19dc                         ; $7e14: $dc $dc $19
    sbc e                                         ; $7e17: $9b
    ld d, a                                       ; $7e18: $57
    ld c, $2f                                     ; $7e19: $0e $2f
    ld h, d                                       ; $7e1b: $62
    sub b                                         ; $7e1c: $90
    ei                                            ; $7e1d: $fb
    adc [hl]                                      ; $7e1e: $8e
    cpl                                           ; $7e1f: $2f
    xor c                                         ; $7e20: $a9
    dec hl                                        ; $7e21: $2b
    rlca                                          ; $7e22: $07
    sub a                                         ; $7e23: $97
    jr jr_049_7db2                                ; $7e24: $18 $8c

    rst $38                                       ; $7e26: $ff
    ld c, a                                       ; $7e27: $4f
    ld e, [hl]                                    ; $7e28: $5e
    ret nc                                        ; $7e29: $d0

    dec b                                         ; $7e2a: $05
    sbc l                                         ; $7e2b: $9d
    rst $00                                       ; $7e2c: $c7
    ld b, d                                       ; $7e2d: $42
    adc d                                         ; $7e2e: $8a
    ld a, e                                       ; $7e2f: $7b
    or c                                          ; $7e30: $b1
    xor b                                         ; $7e31: $a8
    ld d, l                                       ; $7e32: $55
    inc a                                         ; $7e33: $3c
    add c                                         ; $7e34: $81
    inc l                                         ; $7e35: $2c
    ld a, l                                       ; $7e36: $7d
    db $d3                                        ; $7e37: $d3
    ld [hl], a                                    ; $7e38: $77
    ld l, [hl]                                    ; $7e39: $6e
    ld c, c                                       ; $7e3a: $49
    ld e, e                                       ; $7e3b: $5b
    add d                                         ; $7e3c: $82
    and [hl]                                      ; $7e3d: $a6
    cp d                                          ; $7e3e: $ba
    ld e, b                                       ; $7e3f: $58
    ld h, h                                       ; $7e40: $64
    ld b, [hl]                                    ; $7e41: $46
    ld c, e                                       ; $7e42: $4b
    inc l                                         ; $7e43: $2c
    rst $08                                       ; $7e44: $cf
    ld [hl], a                                    ; $7e45: $77
    daa                                           ; $7e46: $27
    inc sp                                        ; $7e47: $33
    ld a, [bc]                                    ; $7e48: $0a
    adc e                                         ; $7e49: $8b
    ld a, $de                                     ; $7e4a: $3e $de
    adc e                                         ; $7e4c: $8b
    sbc a                                         ; $7e4d: $9f
    ld b, b                                       ; $7e4e: $40
    ld [hl], e                                    ; $7e4f: $73
    ld l, [hl]                                    ; $7e50: $6e
    add hl, hl                                    ; $7e51: $29
    ld [hl], h                                    ; $7e52: $74
    ld d, b                                       ; $7e53: $50
    pop af                                        ; $7e54: $f1
    ld a, h                                       ; $7e55: $7c
    rst $30                                       ; $7e56: $f7
    ld a, [hl-]                                   ; $7e57: $3a
    add h                                         ; $7e58: $84
    dec b                                         ; $7e59: $05
    push de                                       ; $7e5a: $d5
    rla                                           ; $7e5b: $17
    ld b, e                                       ; $7e5c: $43
    add hl, sp                                    ; $7e5d: $39
    ld l, c                                       ; $7e5e: $69
    cp c                                          ; $7e5f: $b9
    and b                                         ; $7e60: $a0
    ld c, e                                       ; $7e61: $4b
    inc l                                         ; $7e62: $2c
    rst $08                                       ; $7e63: $cf
    dec l                                         ; $7e64: $2d
    ld [hl], c                                    ; $7e65: $71
    or l                                          ; $7e66: $b5
    ld l, [hl]                                    ; $7e67: $6e
    xor $64                                       ; $7e68: $ee $64
    ld b, [hl]                                    ; $7e6a: $46
    ccf                                           ; $7e6b: $3f
    adc d                                         ; $7e6c: $8a
    rst $30                                       ; $7e6d: $f7
    ld c, h                                       ; $7e6e: $4c
    ld l, $9d                                     ; $7e6f: $2e $9d
    ld b, l                                       ; $7e71: $45
    cp a                                          ; $7e72: $bf
    cp h                                          ; $7e73: $bc
    and b                                         ; $7e74: $a0
    di                                            ; $7e75: $f3
    ret c                                         ; $7e76: $d8

    adc c                                         ; $7e77: $89
    ret z                                         ; $7e78: $c8

    inc c                                         ; $7e79: $0c
    cp e                                          ; $7e7a: $bb
    ret z                                         ; $7e7b: $c8

    sub d                                         ; $7e7c: $92
    xor e                                         ; $7e7d: $ab
    rla                                           ; $7e7e: $17
    sbc c                                         ; $7e7f: $99
    pop de                                        ; $7e80: $d1
    ld c, [hl]                                    ; $7e81: $4e
    dec l                                         ; $7e82: $2d
    db $ed                                        ; $7e83: $ed
    ld b, a                                       ; $7e84: $47
    cp $37                                        ; $7e85: $fe $37
    rst $10                                       ; $7e87: $d7
    ld e, h                                       ; $7e88: $5c
    sbc d                                         ; $7e89: $9a
    pop de                                        ; $7e8a: $d1
    add h                                         ; $7e8b: $84
    ld a, [$b301]                                 ; $7e8c: $fa $01 $b3
    adc h                                         ; $7e8f: $8c
    ld [hl], a                                    ; $7e90: $77
    push de                                       ; $7e91: $d5
    ld a, b                                       ; $7e92: $78
    and b                                         ; $7e93: $a0
    rst $20                                       ; $7e94: $e7
    ld d, e                                       ; $7e95: $53
    ld c, c                                       ; $7e96: $49
    inc [hl]                                      ; $7e97: $34
    rst $38                                       ; $7e98: $ff
    ccf                                           ; $7e99: $3f
    call Call_000_0763                            ; $7e9a: $cd $63 $07
    inc l                                         ; $7e9d: $2c

jr_049_7e9e:
    ld b, c                                       ; $7e9e: $41
    ld [hl], e                                    ; $7e9f: $73
    sbc b                                         ; $7ea0: $98
    dec bc                                        ; $7ea1: $0b
    rrc e                                         ; $7ea2: $cb $0b
    cp a                                          ; $7ea4: $bf
    ld d, [hl]                                    ; $7ea5: $56
    inc a                                         ; $7ea6: $3c
    rst $10                                       ; $7ea7: $d7
    ld [hl], d                                    ; $7ea8: $72
    cp [hl]                                       ; $7ea9: $be
    ld c, e                                       ; $7eaa: $4b
    add e                                         ; $7eab: $83
    add a                                         ; $7eac: $87
    inc a                                         ; $7ead: $3c
    ld l, c                                       ; $7eae: $69
    cp c                                          ; $7eaf: $b9
    and b                                         ; $7eb0: $a0
    inc de                                        ; $7eb1: $13
    ld l, c                                       ; $7eb2: $69

jr_049_7eb3:
    ld c, h                                       ; $7eb3: $4c
    cp c                                          ; $7eb4: $b9
    sub e                                         ; $7eb5: $93
    pop af                                        ; $7eb6: $f1

Call_049_7eb7:
    jr nz, jr_049_7eb3                            ; $7eb7: $20 $fa

    add d                                         ; $7eb9: $82
    ld l, [hl]                                    ; $7eba: $6e
    call nc, $87dc                                ; $7ebb: $d4 $dc $87
    ld [hl], h                                    ; $7ebe: $74
    db $dd                                        ; $7ebf: $dd
    ld d, d                                       ; $7ec0: $52
    inc sp                                        ; $7ec1: $33
    ld a, $00                                     ; $7ec2: $3e $00
    cpl                                           ; $7ec4: $2f
    sbc d                                         ; $7ec5: $9a
    pop de                                        ; $7ec6: $d1
    ld e, [hl]                                    ; $7ec7: $5e
    rst $08                                       ; $7ec8: $cf
    ld d, $8a                                     ; $7ec9: $16 $8a
    db $e3                                        ; $7ecb: $e3
    ld hl, sp+$00                                 ; $7ecc: $f8 $00
    sub a                                         ; $7ece: $97
    adc l                                         ; $7ecf: $8d
    ld d, $56                                     ; $7ed0: $16 $56
    jr jr_049_7e9e                                ; $7ed2: $18 $ca

    db $fd                                        ; $7ed4: $fd
    cpl                                           ; $7ed5: $2f
    sub a                                         ; $7ed6: $97
    ld h, [hl]                                    ; $7ed7: $66
    inc [hl]                                      ; $7ed8: $34
    and c                                         ; $7ed9: $a1

jr_049_7eda:
    ld a, [hl]                                    ; $7eda: $7e
    and b                                         ; $7edb: $a0
    adc d                                         ; $7edc: $8a
    dec e                                         ; $7edd: $1d
    add a                                         ; $7ede: $87
    ld a, h                                       ; $7edf: $7c
    ld a, h                                       ; $7ee0: $7c
    nop                                           ; $7ee1: $00
    rst $10                                       ; $7ee2: $d7
    db $e4                                        ; $7ee3: $e4
    ld e, h                                       ; $7ee4: $5c
    ld [hl-], a                                   ; $7ee5: $32
    inc bc                                        ; $7ee6: $03
    adc e                                         ; $7ee7: $8b
    ld a, [hl-]                                   ; $7ee8: $3a
    inc de                                        ; $7ee9: $13
    db $ed                                        ; $7eea: $ed
    ld h, h                                       ; $7eeb: $64
    ld b, [hl]                                    ; $7eec: $46
    di                                            ; $7eed: $f3
    ret z                                         ; $7eee: $c8

    inc de                                        ; $7eef: $13
    ld a, [hl]                                    ; $7ef0: $7e
    push hl                                       ; $7ef1: $e5
    cp [hl]                                       ; $7ef2: $be
    ld e, e                                       ; $7ef3: $5b
    ld a, [de]                                    ; $7ef4: $1a
    jr nc, jr_049_7eda                            ; $7ef5: $30 $e3

    ld hl, sp+$00                                 ; $7ef7: $f8 $00
    rst $08                                       ; $7ef9: $cf
    db $fd                                        ; $7efa: $fd
    ld a, [$7a81]                                 ; $7efb: $fa $81 $7a
    or e                                          ; $7efe: $b3
    cp h                                          ; $7eff: $bc
    ld e, b                                       ; $7f00: $58
    ld d, h                                       ; $7f01: $54
    sub a                                         ; $7f02: $97
    cp [hl]                                       ; $7f03: $be
    ld [hl], e                                    ; $7f04: $73
    jp c, $9f4b                                   ; $7f05: $da $4b $9f

    and h                                         ; $7f08: $a4
    adc d                                         ; $7f09: $8a
    rrca                                          ; $7f0a: $0f
    ld d, a                                       ; $7f0b: $57
    dec sp                                        ; $7f0c: $3b
    ret z                                         ; $7f0d: $c8

    ld c, h                                       ; $7f0e: $4c
    cp c                                          ; $7f0f: $b9
    ld h, $2d                                     ; $7f10: $26 $2d
    add hl, de                                    ; $7f12: $19
    dec sp                                        ; $7f13: $3b
    ld d, h                                       ; $7f14: $54
    db $d3                                        ; $7f15: $d3
    sub [hl]                                      ; $7f16: $96
    ld h, b                                       ; $7f17: $60
    adc c                                         ; $7f18: $89
    push hl                                       ; $7f19: $e5
    sbc l                                         ; $7f1a: $9d
    rst $38                                       ; $7f1b: $ff
    ld [hl], h                                    ; $7f1c: $74
    dec e                                         ; $7f1d: $1d
    add hl, sp                                    ; $7f1e: $39
    db $d3                                        ; $7f1f: $d3
    ld l, d                                       ; $7f20: $6a
    cp [hl]                                       ; $7f21: $be
    sub e                                         ; $7f22: $93
    dec h                                         ; $7f23: $25
    push bc                                       ; $7f24: $c5
    xor [hl]                                      ; $7f25: $ae
    ld c, c                                       ; $7f26: $49
    ld c, e                                       ; $7f27: $4b
    add $c6                                       ; $7f28: $c6 $c6
    ld a, e                                       ; $7f2a: $7b
    cp e                                          ; $7f2b: $bb
    dec bc                                        ; $7f2c: $0b
    dec hl                                        ; $7f2d: $2b
    ld [$09cd], sp                                ; $7f2e: $08 $cd $09
    dec h                                         ; $7f31: $25
    ret nc                                        ; $7f32: $d0

    ld e, h                                       ; $7f33: $5c
    add sp, -$60                                  ; $7f34: $e8 $a0
    ld a, [hl-]                                   ; $7f36: $3a
    sub l                                         ; $7f37: $95
    and h                                         ; $7f38: $a4
    ld hl, sp+$03                                 ; $7f39: $f8 $03
    ld d, a                                       ; $7f3b: $57
    dec sp                                        ; $7f3c: $3b
    ld l, [hl]                                    ; $7f3d: $6e
    or d                                          ; $7f3e: $b2
    ld b, l                                       ; $7f3f: $45
    ld c, l                                       ; $7f40: $4d
    dec [hl]                                      ; $7f41: $35
    ld sp, hl                                     ; $7f42: $f9
    and e                                         ; $7f43: $a3
    and $4a                                       ; $7f44: $e6 $4a
    ld h, [hl]                                    ; $7f46: $66
    ld a, c                                       ; $7f47: $79
    ld sp, $a8ef                                  ; $7f48: $31 $ef $a8
    sbc l                                         ; $7f4b: $9d
    cp d                                          ; $7f4c: $ba
    add sp, -$69                                  ; $7f4d: $e8 $97
    sbc e                                         ; $7f4f: $9b
    ld d, e                                       ; $7f50: $53
    db $ec                                        ; $7f51: $ec
    ld hl, sp+$52                                 ; $7f52: $f8 $52
    ld d, e                                       ; $7f54: $53
    db $fc                                        ; $7f55: $fc
    sbc $ee                                       ; $7f56: $de $ee
    and d                                         ; $7f58: $a2
    ld e, a                                       ; $7f59: $5f
    ld l, [hl]                                    ; $7f5a: $6e
    ld c, [hl]                                    ; $7f5b: $4e
    ld l, c                                       ; $7f5c: $69
    inc bc                                        ; $7f5d: $03
    call Call_049_598b                            ; $7f5e: $cd $8b $59
    ld a, [$5a92]                                 ; $7f61: $fa $92 $5a
    db $f4                                        ; $7f64: $f4
    ld b, c                                       ; $7f65: $41
    ld [hl], e                                    ; $7f66: $73
    and a                                         ; $7f67: $a7
    ld l, $b1                                     ; $7f68: $2e $b1
    cp h                                          ; $7f6a: $bc
    inc [hl]                                      ; $7f6b: $34
    and e                                         ; $7f6c: $a3
    add l                                         ; $7f6d: $85
    push hl                                       ; $7f6e: $e5
    pop af                                        ; $7f6f: $f1
    xor c                                         ; $7f70: $a9
    push af                                       ; $7f71: $f5
    ld e, l                                       ; $7f72: $5d
    ld h, b                                       ; $7f73: $60
    ld b, [hl]                                    ; $7f74: $46
    pop af                                        ; $7f75: $f1
    ld bc, $0697                                  ; $7f76: $01 $97 $06
    ld [$f8bd], sp                                ; $7f79: $08 $bd $f8
    cp l                                          ; $7f7c: $bd
    ld l, l                                       ; $7f7d: $6d
    inc a                                         ; $7f7e: $3c
    rst $38                                       ; $7f7f: $ff
    cp e                                          ; $7f80: $bb
    nop                                           ; $7f81: $00
    add e                                         ; $7f82: $83
    add l                                         ; $7f83: $85
    ld e, b                                       ; $7f84: $58
    cp d                                          ; $7f85: $ba
    ld [hl], d                                    ; $7f86: $72
    nop                                           ; $7f87: $00
    rst $08                                       ; $7f88: $cf
    add h                                         ; $7f89: $84
    ld [hl], c                                    ; $7f8a: $71
    inc e                                         ; $7f8b: $1c
    rst $08                                       ; $7f8c: $cf
    adc c                                         ; $7f8d: $89
    ld [c], a                                     ; $7f8e: $e2
    jr c, jr_049_7fef                             ; $7f8f: $38 $5e

    ld b, l                                       ; $7f91: $45
    and d                                         ; $7f92: $a2
    adc $2c                                       ; $7f93: $ce $2c
    rla                                           ; $7f95: $17
    sub [hl]                                      ; $7f96: $96
    ld b, a                                       ; $7f97: $47
    ccf                                           ; $7f98: $3f
    cp l                                          ; $7f99: $bd
    call nz, Call_000_3640                        ; $7f9a: $c4 $40 $36
    db $e3                                        ; $7f9d: $e3
    cp l                                          ; $7f9e: $bd
    add a                                         ; $7f9f: $87
    ld b, c                                       ; $7fa0: $41
    ld l, $70                                     ; $7fa1: $2e $70
    or h                                          ; $7fa3: $b4
    add $2e                                       ; $7fa4: $c6 $2e
    ccf                                           ; $7fa6: $3f
    sbc b                                         ; $7fa7: $98
    ld [c], a                                     ; $7fa8: $e2
    sub $ab                                       ; $7fa9: $d6 $ab
    ld a, l                                       ; $7fab: $7d
    ld l, b                                       ; $7fac: $68
    rst $20                                       ; $7fad: $e7
    ld e, a                                       ; $7fae: $5f
    cp c                                          ; $7faf: $b9
    inc [hl]                                      ; $7fb0: $34
    and e                                         ; $7fb1: $a3
    ld a, c                                       ; $7fb2: $79
    db $ec                                        ; $7fb3: $ec
    ld e, [hl]                                    ; $7fb4: $5e
    ld b, d                                       ; $7fb5: $42
    ld hl, sp-$29                                 ; $7fb6: $f8 $d7
    ld h, [hl]                                    ; $7fb8: $66
    ld l, d                                       ; $7fb9: $6a
    rst $08                                       ; $7fba: $cf
    ld l, d                                       ; $7fbb: $6a
    adc e                                         ; $7fbc: $8b
    xor d                                         ; $7fbd: $aa
    xor a                                         ; $7fbe: $af
    inc e                                         ; $7fbf: $1c
    ld l, a                                       ; $7fc0: $6f
    ld [hl], a                                    ; $7fc1: $77
    and a                                         ; $7fc2: $a7
    ld [hl], d                                    ; $7fc3: $72
    ld [hl], e                                    ; $7fc4: $73
    daa                                           ; $7fc5: $27
    db $ec                                        ; $7fc6: $ec
    ld b, d                                       ; $7fc7: $42
    inc c                                         ; $7fc8: $0c
    add [hl]                                      ; $7fc9: $86
    ld l, d                                       ; $7fca: $6a
    call $ba9d                                    ; $7fcb: $cd $9d $ba
    ld d, e                                       ; $7fce: $53
    cp c                                          ; $7fcf: $b9
    add hl, sp                                    ; $7fd0: $39
    ld l, a                                       ; $7fd1: $6f
    cp h                                          ; $7fd2: $bc
    ld d, a                                       ; $7fd3: $57
    or h                                          ; $7fd4: $b4
    add e                                         ; $7fd5: $83
    ld a, [hl+]                                   ; $7fd6: $2a
    add sp, $7c                                   ; $7fd7: $e8 $7c
    daa                                           ; $7fd9: $27
    db $f4                                        ; $7fda: $f4
    ld h, h                                       ; $7fdb: $64
    or d                                          ; $7fdc: $b2
    inc [hl]                                      ; $7fdd: $34
    ld d, h                                       ; $7fde: $54
    ld [hl], e                                    ; $7fdf: $73
    dec l                                         ; $7fe0: $2d
    rst $20                                       ; $7fe1: $e7
    cp e                                          ; $7fe2: $bb
    rst $10                                       ; $7fe3: $d7
    cp c                                          ; $7fe4: $b9
    call $d2f9                                    ; $7fe5: $cd $f9 $d2
    sbc $c6                                       ; $7fe8: $de $c6
    jr nz, @-$70                                  ; $7fea: $20 $8e

    db $e3                                        ; $7fec: $e3
    inc bc                                        ; $7fed: $03
    rst $38                                       ; $7fee: $ff

jr_049_7fef:
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
