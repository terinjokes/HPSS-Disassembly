; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

    ld h, [hl]                                    ; $4000: $66
    rst $20                                       ; $4001: $e7
    cp [hl]                                       ; $4002: $be
    ld e, l                                       ; $4003: $5d
    sub b                                         ; $4004: $90
    dec de                                        ; $4005: $1b
    dec h                                         ; $4006: $25
    sbc d                                         ; $4007: $9a
    ld [hl], d                                    ; $4008: $72
    add sp, $3a                                   ; $4009: $e8 $3a
    db $ed                                        ; $400b: $ed
    ld [hl], h                                    ; $400c: $74
    dec bc                                        ; $400d: $0b
    call $3676                                    ; $400e: $cd $76 $36
    ld [hl], c                                    ; $4011: $71
    ld [hl], d                                    ; $4012: $72
    add [hl]                                      ; $4013: $86
    db $dd                                        ; $4014: $dd
    rra                                           ; $4015: $1f
    add hl, bc                                    ; $4016: $09
    push de                                       ; $4017: $d5
    ld [hl], c                                    ; $4018: $71
    rst $30                                       ; $4019: $f7
    rlca                                          ; $401a: $07
    sub a                                         ; $401b: $97
    jr c, jr_066_4052                             ; $401c: $38 $34

    ld b, b                                       ; $401e: $40
    rst $18                                       ; $401f: $df
    ld [c], a                                     ; $4020: $e2
    ld d, h                                       ; $4021: $54
    jr c, jr_066_409b                             ; $4022: $38 $77

    sbc e                                         ; $4024: $9b
    and b                                         ; $4025: $a0
    add hl, de                                    ; $4026: $19
    ld e, l                                       ; $4027: $5d
    rst $10                                       ; $4028: $d7
    jp hl                                         ; $4029: $e9


    ld h, [hl]                                    ; $402a: $66
    and e                                         ; $402b: $a3
    rst $00                                       ; $402c: $c7
    add e                                         ; $402d: $83
    and d                                         ; $402e: $a2
    ld c, h                                       ; $402f: $4c
    add hl, sp                                    ; $4030: $39
    inc l                                         ; $4031: $2c
    add sp, -$46                                  ; $4032: $e8 $ba
    ld c, [hl]                                    ; $4034: $4e
    rst $08                                       ; $4035: $cf
    sbc a                                         ; $4036: $9f
    sbc l                                         ; $4037: $9d
    dec bc                                        ; $4038: $0b
    xor $0f                                       ; $4039: $ee $0f
    rst $20                                       ; $403b: $e7
    sbc e                                         ; $403c: $9b
    adc e                                         ; $403d: $8b
    sbc $fb                                       ; $403e: $de $fb
    inc bc                                        ; $4040: $03
    rst $20                                       ; $4041: $e7
    ld a, b                                       ; $4042: $78
    cp l                                          ; $4043: $bd
    ld e, [hl]                                    ; $4044: $5e
    xor a                                         ; $4045: $af
    rst $10                                       ; $4046: $d7
    ld a, e                                       ; $4047: $7b
    ld a, a                                       ; $4048: $7f
    ld d, a                                       ; $4049: $57
    ld b, b                                       ; $404a: $40
    ret nz                                        ; $404b: $c0

    inc [hl]                                      ; $404c: $34
    push hl                                       ; $404d: $e5
    ld d, b                                       ; $404e: $50
    ld bc, $fd6b                                  ; $404f: $01 $6b $fd

jr_066_4052:
    daa                                           ; $4052: $27
    ld h, $f1                                     ; $4053: $26 $f1
    ld b, e                                       ; $4055: $43
    dec sp                                        ; $4056: $3b
    cp l                                          ; $4057: $bd
    ld [de], a                                    ; $4058: $12
    call nc, Call_000_3b05                        ; $4059: $d4 $05 $3b
    rst $28                                       ; $405c: $ef
    halt                                          ; $405d: $76
    or e                                          ; $405e: $b3
    ld a, e                                       ; $405f: $7b
    add c                                         ; $4060: $81
    ld h, c                                       ; $4061: $61
    ld b, h                                       ; $4062: $44
    ld c, l                                       ; $4063: $4d
    sbc h                                         ; $4064: $9c
    sbc h                                         ; $4065: $9c
    ld h, c                                       ; $4066: $61
    and d                                         ; $4067: $a2
    ld b, [hl]                                    ; $4068: $46

Jump_066_4069:
    pop hl                                        ; $4069: $e1
    inc [hl]                                      ; $406a: $34
    push hl                                       ; $406b: $e5
    ld h, b                                       ; $406c: $60
    ret nc                                        ; $406d: $d0

    cp $23                                        ; $406e: $fe $23
    ei                                            ; $4070: $fb
    jp Jump_066_7632                              ; $4071: $c3 $32 $76


    or c                                          ; $4074: $b1
    adc h                                         ; $4075: $8c
    add c                                         ; $4076: $81
    sub $7f                                       ; $4077: $d6 $7f
    ld h, h                                       ; $4079: $64
    ld d, e                                       ; $407a: $53
    ld c, $b2                                     ; $407b: $0e $b2
    ld d, c                                       ; $407d: $51
    jr c, jr_066_408d                             ; $407e: $38 $0d

    ld e, b                                       ; $4080: $58
    ld b, c                                       ; $4081: $41
    rst $28                                       ; $4082: $ef
    rrca                                          ; $4083: $0f
    add hl, bc                                    ; $4084: $09
    xor [hl]                                      ; $4085: $ae
    adc d                                         ; $4086: $8a
    ld d, a                                       ; $4087: $57
    rrca                                          ; $4088: $0f
    ld h, h                                       ; $4089: $64
    rst $38                                       ; $408a: $ff
    sub c                                         ; $408b: $91
    ld c, l                                       ; $408c: $4d

jr_066_408d:
    add hl, sp                                    ; $408d: $39
    ret z                                         ; $408e: $c8

    ld b, [hl]                                    ; $408f: $46
    pop hl                                        ; $4090: $e1
    inc [hl]                                      ; $4091: $34
    ld h, b                                       ; $4092: $60
    dec [hl]                                      ; $4093: $35
    ld h, l                                       ; $4094: $65
    inc c                                         ; $4095: $0c
    or h                                          ; $4096: $b4
    ei                                            ; $4097: $fb
    inc bc                                        ; $4098: $03
    rst $20                                       ; $4099: $e7
    ld h, d                                       ; $409a: $62

jr_066_409b:
    push af                                       ; $409b: $f5
    xor b                                         ; $409c: $a8
    ld d, l                                       ; $409d: $55

jr_066_409e:
    ld e, b                                       ; $409e: $58
    dec h                                         ; $409f: $25
    sbc a                                         ; $40a0: $9f
    sub $03                                       ; $40a1: $d6 $03

jr_066_40a3:
    ld e, c                                       ; $40a3: $59
    inc b                                         ; $40a4: $04
    rst $30                                       ; $40a5: $f7
    inc sp                                        ; $40a6: $33
    adc h                                         ; $40a7: $8c
    xor b                                         ; $40a8: $a8
    adc c                                         ; $40a9: $89
    sub e                                         ; $40aa: $93
    inc sp                                        ; $40ab: $33
    ld c, h                                       ; $40ac: $4c
    call nc, Call_066_5d71                        ; $40ad: $d4 $71 $5d
    pop af                                        ; $40b0: $f1
    ld l, c                                       ; $40b1: $69
    ld sp, hl                                     ; $40b2: $f9
    db $d3                                        ; $40b3: $d3
    ld b, e                                       ; $40b4: $43
    dec hl                                        ; $40b5: $2b
    ld d, e                                       ; $40b6: $53
    xor $f5                                       ; $40b7: $ee $f5
    rra                                           ; $40b9: $1f
    add hl, sp                                    ; $40ba: $39
    sbc l                                         ; $40bb: $9d
    ld e, [hl]                                    ; $40bc: $5e
    add hl, bc                                    ; $40bd: $09
    ld [$9d82], a                                 ; $40be: $ea $82 $9d
    rst $30                                       ; $40c1: $f7
    rlca                                          ; $40c2: $07
    ld d, a                                       ; $40c3: $57
    ld [$90a7], sp                                ; $40c4: $08 $a7 $90
    sbc [hl]                                      ; $40c7: $9e
    ld sp, $1fde                                  ; $40c8: $31 $de $1f
    db $db                                        ; $40cb: $db
    halt                                          ; $40cc: $76
    rst $10                                       ; $40cd: $d7
    ld b, [hl]                                    ; $40ce: $46
    pop hl                                        ; $40cf: $e1
    ld [hl], h                                    ; $40d0: $74
    ld b, l                                       ; $40d1: $45
    add hl, sp                                    ; $40d2: $39
    ld e, d                                       ; $40d3: $5a
    ld c, b                                       ; $40d4: $48
    rst $08                                       ; $40d5: $cf
    jr jr_066_40a3                                ; $40d6: $18 $cb

    cp h                                          ; $40d8: $bc
    xor [hl]                                      ; $40d9: $ae
    rst $38                                       ; $40da: $ff
    ld c, b                                       ; $40db: $48
    sbc b                                         ; $40dc: $98
    inc e                                         ; $40dd: $1c
    dec l                                         ; $40de: $2d
    sub a                                         ; $40df: $97
    or h                                          ; $40e0: $b4
    adc e                                         ; $40e1: $8b
    jp c, $da30                                   ; $40e2: $da $30 $da

    push de                                       ; $40e5: $d5
    xor b                                         ; $40e6: $a8
    adc [hl]                                      ; $40e7: $8e
    ld [hl], $cc                                  ; $40e8: $36 $cc
    rrca                                          ; $40ea: $0f
    cp l                                          ; $40eb: $bd
    db $db                                        ; $40ec: $db
    cp l                                          ; $40ed: $bd
    cp e                                          ; $40ee: $bb
    sbc d                                         ; $40ef: $9a
    sbc b                                         ; $40f0: $98
    add hl, de                                    ; $40f1: $19
    jr nz, jr_066_409e                            ; $40f2: $20 $aa

    pop de                                        ; $40f4: $d1
    rst $20                                       ; $40f5: $e7
    ld l, $e8                                     ; $40f6: $2e $e8
    add [hl]                                      ; $40f8: $86
    rrca                                          ; $40f9: $0f
    rla                                           ; $40fa: $17
    inc h                                         ; $40fb: $24
    scf                                           ; $40fc: $37
    cp [hl]                                       ; $40fd: $be
    db $e4                                        ; $40fe: $e4
    add [hl]                                      ; $40ff: $86
    rrca                                          ; $4100: $0f
    adc c                                         ; $4101: $89
    inc [hl]                                      ; $4102: $34
    sub [hl]                                      ; $4103: $96
    push af                                       ; $4104: $f5

jr_066_4105:
    ld l, l                                       ; $4105: $6d
    ld [hl], a                                    ; $4106: $77
    pop bc                                        ; $4107: $c1
    ld c, a                                       ; $4108: $4f
    or d                                          ; $4109: $b2
    dec hl                                        ; $410a: $2b
    pop hl                                        ; $410b: $e1
    db $f4                                        ; $410c: $f4
    rra                                           ; $410d: $1f
    jp hl                                         ; $410e: $e9


    dec de                                        ; $410f: $1b
    xor l                                         ; $4110: $ad
    ld h, c                                       ; $4111: $61
    ld a, [hl]                                    ; $4112: $7e
    add sp, -$7a                                  ; $4113: $e8 $86
    rrca                                          ; $4115: $0f
    rla                                           ; $4116: $17
    ld l, b                                       ; $4117: $68
    sbc [hl]                                      ; $4118: $9e
    ld b, [hl]                                    ; $4119: $46
    pop hl                                        ; $411a: $e1
    ld [hl], h                                    ; $411b: $74
    push bc                                       ; $411c: $c5
    ld d, a                                       ; $411d: $57
    rst $28                                       ; $411e: $ef
    ei                                            ; $411f: $fb
    ld l, c                                       ; $4120: $69
    and l                                         ; $4121: $a5
    ld [$a293], a                                 ; $4122: $ea $93 $a2
    ld h, $4e                                     ; $4125: $26 $4e
    adc $b0                                       ; $4127: $ce $b0
    dec c                                         ; $4129: $0d
    rra                                           ; $412a: $1f
    db $db                                        ; $412b: $db
    dec a                                         ; $412c: $3d
    or $d2                                        ; $412d: $f6 $d2
    inc c                                         ; $412f: $0c
    inc hl                                        ; $4130: $23
    ld l, d                                       ; $4131: $6a
    ld [c], a                                     ; $4132: $e2
    db $e4                                        ; $4133: $e4
    inc c                                         ; $4134: $0c
    cp e                                          ; $4135: $bb
    ld e, e                                       ; $4136: $5b
    pop af                                        ; $4137: $f1
    db $f4                                        ; $4138: $f4
    jr jr_066_4166                                ; $4139: $18 $2b

    ld h, b                                       ; $413b: $60
    xor l                                         ; $413c: $ad
    db $f4                                        ; $413d: $f4
    dec c                                         ; $413e: $0d
    ld sp, $3340                                  ; $413f: $31 $40 $33
    jp z, $e146                                   ; $4142: $ca $46 $e1

    inc [hl]                                      ; $4145: $34
    ld b, b                                       ; $4146: $40

jr_066_4147:
    jp hl                                         ; $4147: $e9


    ld a, l                                       ; $4148: $7d
    or h                                          ; $4149: $b4
    adc [hl]                                      ; $414a: $8e
    ld [hl], $c3                                  ; $414b: $36 $c3
    ld l, c                                       ; $414d: $69
    dec h                                         ; $414e: $25
    sub [hl]                                      ; $414f: $96
    db $e4                                        ; $4150: $e4
    jr jr_066_4147                                ; $4151: $18 $f4

    cp $00                                        ; $4153: $fe $00
    ld [c], a                                     ; $4155: $e2
    cpl                                           ; $4156: $2f
    ld b, $d6                                     ; $4157: $06 $d6
    inc bc                                        ; $4159: $03
    ld e, c                                       ; $415a: $59
    sbc a                                         ; $415b: $9f
    add $4e                                       ; $415c: $c6 $4e
    or a                                          ; $415e: $b7
    ld [hl], d                                    ; $415f: $72
    pop af                                        ; $4160: $f1
    adc $ce                                       ; $4161: $ce $ce
    and [hl]                                      ; $4163: $a6
    inc e                                         ; $4164: $1c
    ld a, [bc]                                    ; $4165: $0a

jr_066_4166:
    rst $10                                       ; $4166: $d7
    jr z, jr_066_4105                             ; $4167: $28 $9c

    ld b, d                                       ; $4169: $42
    inc sp                                        ; $416a: $33
    ld d, a                                       ; $416b: $57
    inc l                                         ; $416c: $2c
    ld d, e                                       ; $416d: $53
    xor $6d                                       ; $416e: $ee $6d
    ld l, b                                       ; $4170: $68
    rst $08                                       ; $4171: $cf
    add c                                         ; $4172: $81
    rlca                                          ; $4173: $07
    add l                                         ; $4174: $85
    ld h, [hl]                                    ; $4175: $66
    ld [hl], $71                                  ; $4176: $36 $71
    sub $0b                                       ; $4178: $d6 $0b
    and a                                         ; $417a: $a7
    ld d, a                                       ; $417b: $57
    cp [hl]                                       ; $417c: $be
    ld [hl], h                                    ; $417d: $74
    ld a, [de]                                    ; $417e: $1a
    ld d, c                                       ; $417f: $51
    db $10                                        ; $4180: $10
    sub [hl]                                      ; $4181: $96
    ld d, b                                       ; $4182: $50
    sbc a                                         ; $4183: $9f
    add $66                                       ; $4184: $c6 $66

jr_066_4186:
    ld h, e                                       ; $4186: $63
    and [hl]                                      ; $4187: $a6
    sub l                                         ; $4188: $95
    ld e, d                                       ; $4189: $5a
    cpl                                           ; $418a: $2f
    db $ec                                        ; $418b: $ec
    dec b                                         ; $418c: $05
    ld [$01fd], a                                 ; $418d: $ea $fd $01
    ld h, a                                       ; $4190: $67
    sub h                                         ; $4191: $94
    xor d                                         ; $4192: $aa
    ld c, a                                       ; $4193: $4f
    ld [hl], $e5                                  ; $4194: $36 $e5
    ld d, b                                       ; $4196: $50
    ld b, l                                       ; $4197: $45
    or e                                          ; $4198: $b3
    ld sp, $7653                                  ; $4199: $31 $53 $76
    or h                                          ; $419c: $b4
    ld e, [hl]                                    ; $419d: $5e
    ld b, [hl]                                    ; $419e: $46
    cpl                                           ; $419f: $2f
    call $860e                                    ; $41a0: $cd $0e $86
    ld l, [hl]                                    ; $41a3: $6e
    ld hl, sp+$00                                 ; $41a4: $f8 $00
    rst $20                                       ; $41a6: $e7
    inc c                                         ; $41a7: $0c
    ld b, l                                       ; $41a8: $45
    db $dd                                        ; $41a9: $dd
    ld b, d                                       ; $41aa: $42
    or e                                          ; $41ab: $b3
    sbc l                                         ; $41ac: $9d
    rst $30                                       ; $41ad: $f7
    rlca                                          ; $41ae: $07
    adc c                                         ; $41af: $89
    inc [hl]                                      ; $41b0: $34
    db $fc                                        ; $41b1: $fc
    ret c                                         ; $41b2: $d8

    jr z, jr_066_4186                             ; $41b3: $28 $d1

    nop                                           ; $41b5: $00
    ld c, c                                       ; $41b6: $49
    ld a, l                                       ; $41b7: $7d
    inc c                                         ; $41b8: $0c
    ld d, e                                       ; $41b9: $53
    rrca                                          ; $41ba: $0f
    call $c92d                                    ; $41bb: $cd $2d $c9
    xor c                                         ; $41be: $a9
    xor $5e                                       ; $41bf: $ee $5e
    ld a, a                                       ; $41c1: $7f
    xor h                                         ; $41c2: $ac
    ccf                                           ; $41c3: $3f
    sbc l                                         ; $41c4: $9d
    or d                                          ; $41c5: $b2
    ld h, c                                       ; $41c6: $61
    or h                                          ; $41c7: $b4
    ld h, c                                       ; $41c8: $61
    ld a, [hl]                                    ; $41c9: $7e
    add sp, -$03                                  ; $41ca: $e8 $fd
    ld bc, $8ce7                                  ; $41cc: $01 $e7 $8c
    xor h                                         ; $41cf: $ac
    ld c, a                                       ; $41d0: $4f
    ld h, e                                       ; $41d1: $63
    di                                            ; $41d2: $f3
    inc de                                        ; $41d3: $13
    ld [hl], l                                    ; $41d4: $75
    dec bc                                        ; $41d5: $0b
    call $8a76                                    ; $41d6: $cd $76 $8a
    adc d                                         ; $41d9: $8a

jr_066_41da:
    dec b                                         ; $41da: $05
    sub l                                         ; $41db: $95
    jr nc, jr_066_41da                            ; $41dc: $30 $fc

    ld [hl], b                                    ; $41de: $70
    rst $30                                       ; $41df: $f7
    rlca                                          ; $41e0: $07
    ld [c], a                                     ; $41e1: $e2
    jp hl                                         ; $41e2: $e9


    ld sp, $c576                                  ; $41e3: $31 $76 $c5
    ld d, a                                       ; $41e6: $57
    add l                                         ; $41e7: $85
    sub l                                         ; $41e8: $95
    cpl                                           ; $41e9: $2f
    ld b, $d6                                     ; $41ea: $06 $d6
    ld a, a                                       ; $41ec: $7f
    ld h, e                                       ; $41ed: $63
    and d                                         ; $41ee: $a2
    and [hl]                                      ; $41ef: $a6
    adc l                                         ; $41f0: $8d
    db $eb                                        ; $41f1: $eb
    xor c                                         ; $41f2: $a9
    ld h, l                                       ; $41f3: $65
    di                                            ; $41f4: $f3
    db $db                                        ; $41f5: $db
    ldh a, [rSB]                                  ; $41f6: $f0 $01
    dec sp                                        ; $41f8: $3b
    ret nc                                        ; $41f9: $d0

    sbc a                                         ; $41fa: $9f
    ld c, e                                       ; $41fb: $4b
    sub d                                         ; $41fc: $92
    sub $28                                       ; $41fd: $d6 $28
    sbc h                                         ; $41ff: $9c
    xor [hl]                                      ; $4200: $ae
    db $d3                                        ; $4201: $d3
    ld h, [hl]                                    ; $4202: $66
    rla                                           ; $4203: $17
    and [hl]                                      ; $4204: $a6
    ld c, h                                       ; $4205: $4c
    cp c                                          ; $4206: $b9
    or a                                          ; $4207: $b7
    ld c, h                                       ; $4208: $4c
    ld d, e                                       ; $4209: $53
    ld c, $0d                                     ; $420a: $0e $0d
    ld l, a                                       ; $420c: $6f
    rla                                           ; $420d: $17
    ld h, h                                       ; $420e: $64
    ld d, e                                       ; $420f: $53
    ld c, $5d                                     ; $4210: $0e $5d
    and a                                         ; $4212: $a7
    rst $30                                       ; $4213: $f7
    rlca                                          ; $4214: $07
    add hl, bc                                    ; $4215: $09
    sbc d                                         ; $4216: $9a
    add hl, hl                                    ; $4217: $29
    ld b, a                                       ; $4218: $47
    set 7, [hl]                                   ; $4219: $cb $fe
    ld c, c                                       ; $421b: $49
    and h                                         ; $421c: $a4
    ld l, c                                       ; $421d: $69
    ld h, l                                       ; $421e: $65
    or a                                          ; $421f: $b7
    ld c, h                                       ; $4220: $4c
    ld e, d                                       ; $4221: $5a
    db $10                                        ; $4222: $10
    dec l                                         ; $4223: $2d
    db $eb                                        ; $4224: $eb
    db $dd                                        ; $4225: $dd
    dec hl                                        ; $4226: $2b
    sbc [hl]                                      ; $4227: $9e
    ld h, [hl]                                    ; $4228: $66
    jp z, Jump_066_63fa                           ; $4229: $ca $fa $63

    push af                                       ; $422c: $f5
    ld [hl], d                                    ; $422d: $72
    dec [hl]                                      ; $422e: $35
    sub $d1                                       ; $422f: $d6 $d1
    ld c, d                                       ; $4231: $4a
    add $3c                                       ; $4232: $c6 $3c
    jp c, $6e80                                   ; $4234: $da $80 $6e

    sbc c                                         ; $4237: $99
    or h                                          ; $4238: $b4
    jr nz, jr_066_4295                            ; $4239: $20 $5a

    sub $32                                       ; $423b: $d6 $32
    ld h, [hl]                                    ; $423d: $66
    ld l, b                                       ; $423e: $68
    inc bc                                        ; $423f: $03
    xor d                                         ; $4240: $aa
    ld a, h                                       ; $4241: $7c
    sub $30                                       ; $4242: $d6 $30
    db $fd                                        ; $4244: $fd
    ld b, a                                       ; $4245: $47
    ld a, d                                       ; $4246: $7a
    and $cd                                       ; $4247: $e6 $cd
    db $fd                                        ; $4249: $fd
    ld bc, $2057                                  ; $424a: $01 $57 $20
    ld h, $29                                     ; $424d: $26 $29
    sbc e                                         ; $424f: $9b
    daa                                           ; $4250: $27
    adc h                                         ; $4251: $8c
    or $1f                                        ; $4252: $f6 $1f
    ld sp, hl                                     ; $4254: $f9
    jp nc, $7f73                                  ; $4255: $d2 $73 $7f

    ld d, a                                       ; $4258: $57
    ld d, b                                       ; $4259: $50
    adc [hl]                                      ; $425a: $8e
    or $f0                                        ; $425b: $f6 $f0
    ld l, h                                       ; $425d: $6c
    ld e, h                                       ; $425e: $5c
    ld b, c                                       ; $425f: $41
    sub l                                         ; $4260: $95
    sub $e9                                       ; $4261: $d6 $e9
    jp nz, $34f4                                  ; $4263: $c2 $f4 $34

    and b                                         ; $4266: $a0
    ld e, $da                                     ; $4267: $1e $da
    ccf                                           ; $4269: $3f
    dec a                                         ; $426a: $3d
    inc a                                         ; $426b: $3c
    xor a                                         ; $426c: $af
    db $eb                                        ; $426d: $eb
    sub [hl]                                      ; $426e: $96
    ld c, c                                       ; $426f: $49
    dec bc                                        ; $4270: $0b
    and d                                         ; $4271: $a2
    ld h, l                                       ; $4272: $65
    cp l                                          ; $4273: $bd
    cp e                                          ; $4274: $bb
    ld d, l                                       ; $4275: $55
    jr c, jr_066_42d2                             ; $4276: $38 $5a

    call nc, $a75f                                ; $4278: $d4 $5f $a7
    dec c                                         ; $427b: $0d
    adc b                                         ; $427c: $88
    reti                                          ; $427d: $d9


    and [hl]                                      ; $427e: $a6
    ld h, c                                       ; $427f: $61
    or h                                          ; $4280: $b4
    ld e, $da                                     ; $4281: $1e $da
    ccf                                           ; $4283: $3f
    ld a, [hl+]                                   ; $4284: $2a
    ld a, [hl+]                                   ; $4285: $2a
    ld a, [de]                                    ; $4286: $1a
    add l                                         ; $4287: $85
    and l                                         ; $4288: $a5
    add hl, de                                    ; $4289: $19
    dec [hl]                                      ; $428a: $35
    ld b, e                                       ; $428b: $43
    sub [hl]                                      ; $428c: $96
    jp c, $ed15                                   ; $428d: $da $15 $ed

    push bc                                       ; $4290: $c5
    inc h                                         ; $4291: $24
    or l                                          ; $4292: $b5

jr_066_4293:
    cp $e1                                        ; $4293: $fe $e1

jr_066_4295:
    dec bc                                        ; $4295: $0b
    cp e                                          ; $4296: $bb
    sub [hl]                                      ; $4297: $96
    halt                                          ; $4298: $76
    cp h                                          ; $4299: $bc
    dec hl                                        ; $429a: $2b
    sbc [hl]                                      ; $429b: $9e
    inc d                                         ; $429c: $14
    dec d                                         ; $429d: $15
    ld h, l                                       ; $429e: $65
    ld b, [hl]                                    ; $429f: $46
    ld e, h                                       ; $42a0: $5c
    cpl                                           ; $42a1: $2f
    sbc h                                         ; $42a2: $9c
    xor $af                                       ; $42a3: $ee $af
    ld e, l                                       ; $42a5: $5d
    call c, Call_066_6d42                         ; $42a6: $dc $42 $6d
    ld a, [$19a5]                                 ; $42a9: $fa $a5 $19
    inc sp                                        ; $42ac: $33
    or h                                          ; $42ad: $b4
    jr z, jr_066_42f7                             ; $42ae: $28 $47

    dec sp                                        ; $42b0: $3b
    ld l, $db                                     ; $42b1: $2e $db
    ld l, b                                       ; $42b3: $68
    db $d3                                        ; $42b4: $d3
    add a                                         ; $42b5: $87
    inc sp                                        ; $42b6: $33
    ld b, $68                                     ; $42b7: $06 $68
    push hl                                       ; $42b9: $e5
    ld b, h                                       ; $42ba: $44
    call Call_066_7a36                            ; $42bb: $cd $36 $7a
    ld a, a                                       ; $42be: $7f
    rst $20                                       ; $42bf: $e7
    dec de                                        ; $42c0: $1b
    ld h, e                                       ; $42c1: $63
    add b                                         ; $42c2: $80
    ld d, [hl]                                    ; $42c3: $56
    ld c, [hl]                                    ; $42c4: $4e
    call nc, $a36c                                ; $42c5: $d4 $6c $a3
    sbc e                                         ; $42c8: $9b
    ld a, $97                                     ; $42c9: $3e $97
    jr c, jr_066_4295                             ; $42cb: $38 $c8

    ld c, d                                       ; $42cd: $4a
    inc [hl]                                      ; $42ce: $34
    ret nz                                        ; $42cf: $c0

    ld e, b                                       ; $42d0: $58
    and l                                         ; $42d1: $a5

jr_066_42d2:
    rlca                                          ; $42d2: $07
    ld d, [hl]                                    ; $42d3: $56
    cpl                                           ; $42d4: $2f
    ld e, [hl]                                    ; $42d5: $5e
    ld a, [hl]                                    ; $42d6: $7e
    db $eb                                        ; $42d7: $eb
    ld b, a                                       ; $42d8: $47
    rst $28                                       ; $42d9: $ef
    rrca                                          ; $42da: $0f
    ld d, a                                       ; $42db: $57
    ld d, b                                       ; $42dc: $50
    ld e, $be                                     ; $42dd: $1e $be
    xor h                                         ; $42df: $ac
    sub l                                         ; $42e0: $95
    ld d, l                                       ; $42e1: $55
    ld a, $6b                                     ; $42e2: $3e $6b
    jr jr_066_4293                                ; $42e4: $18 $ad

    add a                                         ; $42e6: $87
    or $8f                                        ; $42e7: $f6 $8f
    sbc $1f                                       ; $42e9: $de $1f
    rla                                           ; $42eb: $17
    xor [hl]                                      ; $42ec: $ae
    ld d, l                                       ; $42ed: $55
    and d                                         ; $42ee: $a2
    ld a, [$9e62]                                 ; $42ef: $fa $62 $9e
    ld c, d                                       ; $42f2: $4a
    inc l                                         ; $42f3: $2c
    ret                                           ; $42f4: $c9


    or c                                          ; $42f5: $b1
    cp e                                          ; $42f6: $bb

jr_066_42f7:
    rst $20                                       ; $42f7: $e7
    adc h                                         ; $42f8: $8c
    ld l, h                                       ; $42f9: $6c
    ld [hl], $7a                                  ; $42fa: $36 $7a
    cp b                                          ; $42fc: $b8
    inc h                                         ; $42fd: $24
    ld b, a                                       ; $42fe: $47
    call nc, $342d                                ; $42ff: $d4 $2d $34
    db $db                                        ; $4302: $db
    ld a, c                                       ; $4303: $79
    ld a, a                                       ; $4304: $7f
    add hl, bc                                    ; $4305: $09
    sbc d                                         ; $4306: $9a
    cp c                                          ; $4307: $b9
    ld h, d                                       ; $4308: $62
    ld [hl], l                                    ; $4309: $75
    rst $30                                       ; $430a: $f7
    ei                                            ; $430b: $fb
    cp [hl]                                       ; $430c: $be
    db $eb                                        ; $430d: $eb
    and h                                         ; $430e: $a4
    cp h                                          ; $430f: $bc
    rst $28                                       ; $4310: $ef
    cp e                                          ; $4311: $bb
    db $e3                                        ; $4312: $e3
    or c                                          ; $4313: $b1
    sub a                                         ; $4314: $97
    ld h, [hl]                                    ; $4315: $66
    sbc b                                         ; $4316: $98
    ei                                            ; $4317: $fb
    inc bc                                        ; $4318: $03
    ld [c], a                                     ; $4319: $e2
    jp hl                                         ; $431a: $e9


    ld sp, $4576                                  ; $431b: $31 $76 $45
    add hl, sp                                    ; $431e: $39
    ld e, d                                       ; $431f: $5a
    sbc a                                         ; $4320: $9f
    xor d                                         ; $4321: $aa
    or h                                          ; $4322: $b4
    ld a, [de]                                    ; $4323: $1a
    db $fd                                        ; $4324: $fd
    rla                                           ; $4325: $17
    jr z, jr_066_4339                             ; $4326: $28 $11

    inc sp                                        ; $4328: $33
    ld [$be1f], a                                 ; $4329: $ea $1f $be
    ld d, b                                       ; $432c: $50
    dec hl                                        ; $432d: $2b
    xor c                                         ; $432e: $a9
    ld [hl], d                                    ; $432f: $72
    call z, $45a8                                 ; $4330: $cc $a8 $45
    push de                                       ; $4333: $d5
    ld a, c                                       ; $4334: $79
    sbc [hl]                                      ; $4335: $9e
    inc e                                         ; $4336: $1c
    db $ed                                        ; $4337: $ed
    pop hl                                        ; $4338: $e1

jr_066_4339:
    ld a, c                                       ; $4339: $79
    ld e, l                                       ; $433a: $5d
    or a                                          ; $433b: $b7
    ld c, h                                       ; $433c: $4c
    ld e, d                                       ; $433d: $5a
    db $10                                        ; $433e: $10
    dec l                                         ; $433f: $2d
    db $eb                                        ; $4340: $eb
    db $fd                                        ; $4341: $fd
    ld bc, $b997                                  ; $4342: $01 $97 $b9
    ld [hl], d                                    ; $4345: $72
    scf                                           ; $4346: $37
    ld d, c                                       ; $4347: $51
    dec b                                         ; $4348: $05
    xor h                                         ; $4349: $ac
    dec d                                         ; $434a: $15
    pop af                                        ; $434b: $f1
    sbc a                                         ; $434c: $9f
    sbc b                                         ; $434d: $98
    adc l                                         ; $434e: $8d
    sbc d                                         ; $434f: $9a
    rrca                                          ; $4350: $0f
    sbc a                                         ; $4351: $9f
    ld a, [hl+]                                   ; $4352: $2a
    db $fd                                        ; $4353: $fd
    reti                                          ; $4354: $d9


    db $f4                                        ; $4355: $f4
    ld bc, $9e3b                                  ; $4356: $01 $3b $9e
    inc d                                         ; $4359: $14
    ld [hl], l                                    ; $435a: $75
    inc a                                         ; $435b: $3c
    or $d2                                        ; $435c: $f6 $d2
    inc c                                         ; $435e: $0c
    inc hl                                        ; $435f: $23
    ld [$32f4], a                                 ; $4360: $ea $f4 $32
    jp $ac6a                                      ; $4363: $c3 $6a $ac


    ret nc                                        ; $4366: $d0

    cp h                                          ; $4367: $bc
    ld d, [hl]                                    ; $4368: $56
    and [hl]                                      ; $4369: $a6
    call c, Call_000_3fbb                         ; $436a: $dc $bb $3f
    ld h, a                                       ; $436d: $67
    ld sp, hl                                     ; $436e: $f9
    ld sp, hl                                     ; $436f: $f9
    ret                                           ; $4370: $c9


    cp c                                          ; $4371: $b9
    dec hl                                        ; $4372: $2b
    sbc [hl]                                      ; $4373: $9e
    ld e, $63                                     ; $4374: $1e $63
    cp l                                          ; $4376: $bd
    call c, Call_066_5905                         ; $4377: $dc $05 $59
    cpl                                           ; $437a: $2f
    ld d, a                                       ; $437b: $57
    ld h, e                                       ; $437c: $63
    dec c                                         ; $437d: $0d
    xor b                                         ; $437e: $a8
    rst $30                                       ; $437f: $f7
    db $fd                                        ; $4380: $fd
    or h                                          ; $4381: $b4
    ld a, [bc]                                    ; $4382: $0a
    ld [hl], b                                    ; $4383: $70
    ld sp, $168f                                  ; $4384: $31 $8f $16
    adc l                                         ; $4387: $8d
    jp nz, $e1ea                                  ; $4388: $c2 $ea $e1

    db $f4                                        ; $438b: $f4
    ld d, d                                       ; $438c: $52
    inc sp                                        ; $438d: $33
    dec c                                         ; $438e: $0d
    ld a, [c]                                     ; $438f: $f2
    db $f4                                        ; $4390: $f4
    ld c, [hl]                                    ; $4391: $4e
    ld a, a                                       ; $4392: $7f
    jp z, $9317                                   ; $4393: $ca $17 $93

    ld d, e                                       ; $4396: $53
    rst $18                                       ; $4397: $df
    ld e, [hl]                                    ; $4398: $5e
    db $fc                                        ; $4399: $fc
    sbc a                                         ; $439a: $9f
    rst $08                                       ; $439b: $cf
    and l                                         ; $439c: $a5
    ret nc                                        ; $439d: $d0

    cp h                                          ; $439e: $bc
    ld d, [hl]                                    ; $439f: $56
    sbc e                                         ; $43a0: $9b
    nop                                           ; $43a1: $00

jr_066_43a2:
    add [hl]                                      ; $43a2: $86
    ld l, c                                       ; $43a3: $69
    ld b, b                                       ; $43a4: $40
    di                                            ; $43a5: $f3
    inc b                                         ; $43a6: $04
    sub [hl]                                      ; $43a7: $96
    add l                                         ; $43a8: $85
    ld a, [$feeb]                                 ; $43a9: $fa $eb $fe
    add a                                         ; $43ac: $87
    ld b, $d4                                     ; $43ad: $06 $d4
    di                                            ; $43af: $f3
    cp $e4                                        ; $43b0: $fe $e4
    ld l, b                                       ; $43b2: $68
    dec h                                         ; $43b3: $25
    sbc l                                         ; $43b4: $9d
    sbc $dd                                       ; $43b5: $de $dd
    ld h, $ac                                     ; $43b7: $26 $ac
    adc a                                         ; $43b9: $8f
    xor b                                         ; $43ba: $a8
    sub b                                         ; $43bb: $90
    ld c, l                                       ; $43bc: $4d
    cp c                                          ; $43bd: $b9
    jp $6b93                                      ; $43be: $c3 $93 $6b


    call Call_066_71d0                            ; $43c1: $cd $d0 $71
    ld [hl], $da                                  ; $43c4: $36 $da
    jr c, jr_066_43a2                             ; $43c6: $38 $da

    ld a, a                                       ; $43c8: $7f
    call z, $c610                                 ; $43c9: $cc $10 $c6
    and b                                         ; $43cc: $a0
    ld e, l                                       ; $43cd: $5d
    sbc b                                         ; $43ce: $98
    ld h, c                                       ; $43cf: $61
    ld a, h                                       ; $43d0: $7c
    ld a, d                                       ; $43d1: $7a
    rst $30                                       ; $43d2: $f7
    ld a, [bc]                                    ; $43d3: $0a
    jp z, $21c3                                   ; $43d4: $ca $c3 $21

    dec a                                         ; $43d7: $3d
    ld h, e                                       ; $43d8: $63
    cp h                                          ; $43d9: $bc
    ccf                                           ; $43da: $3f
    db $db                                        ; $43db: $db
    adc l                                         ; $43dc: $8d
    ld h, l                                       ; $43dd: $65
    jp z, Jump_000_1ebd                           ; $43de: $ca $bd $1e

    sbc [hl]                                      ; $43e1: $9e
    rst $10                                       ; $43e2: $d7
    or h                                          ; $43e3: $b4
    reti                                          ; $43e4: $d9


    ld l, l                                       ; $43e5: $6d
    add sp, $65                                   ; $43e6: $e8 $65
    adc b                                         ; $43e8: $88
    sbc c                                         ; $43e9: $99
    sub l                                         ; $43ea: $95
    adc h                                         ; $43eb: $8c
    add hl, de                                    ; $43ec: $19
    sub $a9                                       ; $43ed: $d6 $a9
    ld c, a                                       ; $43ef: $4f
    push de                                       ; $43f0: $d5
    reti                                          ; $43f1: $d9


    ldh a, [rSB]                                  ; $43f2: $f0 $01
    db $db                                        ; $43f4: $db
    ld c, $5f                                     ; $43f5: $0e $5f
    ld d, a                                       ; $43f7: $57
    ld b, l                                       ; $43f8: $45
    jp c, $94d9                                   ; $43f9: $da $d9 $94

    ld sp, $a0d0                                  ; $43fc: $31 $d0 $a0
    push af                                       ; $43ff: $f5
    rrca                                          ; $4400: $0f
    scf                                           ; $4401: $37
    xor $56                                       ; $4402: $ee $56
    sbc l                                         ; $4404: $9d
    ld e, l                                       ; $4405: $5d
    cpl                                           ; $4406: $2f
    ld h, $47                                     ; $4407: $26 $47
    call nc, $342d                                ; $4409: $d4 $2d $34
    db $db                                        ; $440c: $db
    ld a, c                                       ; $440d: $79
    ld a, a                                       ; $440e: $7f
    ld [c], a                                     ; $440f: $e2
    ld sp, $3640                                  ; $4410: $31 $40 $36
    ret nz                                        ; $4413: $c0

    scf                                           ; $4414: $37
    xor b                                         ; $4415: $a8
    ld d, d                                       ; $4416: $52
    call nc, Call_000_3b94                        ; $4417: $d4 $94 $3b
    inc e                                         ; $441a: $1c
    xor [hl]                                      ; $441b: $ae
    ld d, c                                       ; $441c: $51
    ret c                                         ; $441d: $d8

    sub h                                         ; $441e: $94
    add e                                         ; $441f: $83
    ld c, l                                       ; $4420: $4d
    and c                                         ; $4421: $a1
    ld a, $8c                                     ; $4422: $3e $8c
    ld d, [hl]                                    ; $4424: $56
    rst $38                                       ; $4425: $ff
    ldh a, [$65]                                  ; $4426: $f0 $65
    or h                                          ; $4428: $b4
    add hl, hl                                    ; $4429: $29
    add a                                         ; $442a: $87
    ld a, [hl+]                                   ; $442b: $2a
    jp z, Jump_066_546c                           ; $442c: $ca $6c $54

    jp z, $03fb                                   ; $442f: $ca $fb $03

    add a                                         ; $4432: $87
    ld e, a                                       ; $4433: $5f
    add $15                                       ; $4434: $c6 $15
    db $eb                                        ; $4436: $eb
    dec de                                        ; $4437: $1b
    and $77                                       ; $4438: $e6 $77
    ld a, $c3                                     ; $443a: $3e $c3
    db $f4                                        ; $443c: $f4
    sbc a                                         ; $443d: $9f
    sbc b                                         ; $443e: $98

Call_066_443f:
    ld e, a                                       ; $443f: $5f
    ld a, d                                       ; $4440: $7a
    ld b, h                                       ; $4441: $44
    db $dd                                        ; $4442: $dd
    ld b, d                                       ; $4443: $42
    or e                                          ; $4444: $b3
    sbc l                                         ; $4445: $9d
    rst $30                                       ; $4446: $f7
    rlca                                          ; $4447: $07
    db $db                                        ; $4448: $db
    ld c, $5f                                     ; $4449: $0e $5f
    ld d, a                                       ; $444b: $57
    ld bc, $f34e                                  ; $444c: $01 $4e $f3
    sub h                                         ; $444f: $94
    ld sp, $a0d0                                  ; $4450: $31 $d0 $a0
    push af                                       ; $4453: $f5
    rrca                                          ; $4454: $0f
    scf                                           ; $4455: $37
    xor $56                                       ; $4456: $ee $56
    call nc, $c3b7                                ; $4458: $d4 $b7 $c3
    rst $20                                       ; $445b: $e7
    ld [hl], a                                    ; $445c: $77
    ld a, $0d                                     ; $445d: $3e $0d
    jp c, $0ae9                                   ; $445f: $da $e9 $0a

    ld c, e                                       ; $4462: $4b
    ld [hl], d                                    ; $4463: $72
    cp d                                          ; $4464: $ba
    add l                                         ; $4465: $85
    ld l, c                                       ; $4466: $69
    ld a, e                                       ; $4467: $7b
    ld b, c                                       ; $4468: $41
    call nc, $342d                                ; $4469: $d4 $2d $34
    db $db                                        ; $446c: $db
    ld a, c                                       ; $446d: $79
    ld a, a                                       ; $446e: $7f
    rla                                           ; $446f: $17
    xor [hl]                                      ; $4470: $ae
    dec [hl]                                      ; $4471: $35
    ld c, a                                       ; $4472: $4f
    jr c, @-$62                                   ; $4473: $38 $9c

    ld c, l                                       ; $4475: $4d
    inc hl                                        ; $4476: $23
    ld h, [hl]                                    ; $4477: $66
    call nc, $af3b                                ; $4478: $d4 $3b $af
    cp [hl]                                       ; $447b: $be
    or c                                          ; $447c: $b1
    ld bc, $db31                                  ; $447d: $01 $31 $db
    call c, $671f                                 ; $4480: $dc $1f $67
    ld l, b                                       ; $4483: $68
    db $fd                                        ; $4484: $fd
    scf                                           ; $4485: $37
    sub $94                                       ; $4486: $d6 $94
    dec sp                                        ; $4488: $3b
    ld a, h                                       ; $4489: $7c
    xor d                                         ; $448a: $aa
    db $f4                                        ; $448b: $f4
    and a                                         ; $448c: $a7
    ld h, c                                       ; $448d: $61
    cp d                                          ; $448e: $ba
    dec c                                         ; $448f: $0d
    xor e                                         ; $4490: $ab
    or a                                          ; $4491: $b7
    inc l                                         ; $4492: $2c
    xor b                                         ; $4493: $a8
    ld l, a                                       ; $4494: $6f
    ld l, h                                       ; $4495: $6c
    ld b, [hl]                                    ; $4496: $46
    ld a, l                                       ; $4497: $7d
    ld e, b                                       ; $4498: $58
    add b                                         ; $4499: $80
    ld b, c                                       ; $449a: $41
    ld b, l                                       ; $449b: $45
    db $dd                                        ; $449c: $dd
    ld b, d                                       ; $449d: $42
    or e                                          ; $449e: $b3
    sbc l                                         ; $449f: $9d
    dec de                                        ; $44a0: $1b
    ld a, $db                                     ; $44a1: $3e $db
    add h                                         ; $44a3: $84
    call $c0b4                                    ; $44a4: $cd $b4 $c0
    ld b, [hl]                                    ; $44a7: $46
    ld b, $f6                                     ; $44a8: $06 $f6
    ldh a, [$4c]                                  ; $44aa: $f0 $4c
    add hl, sp                                    ; $44ac: $39
    jp c, $ed65                                   ; $44ad: $da $65 $ed

    cp [hl]                                       ; $44b0: $be
    rst $28                                       ; $44b1: $ef
    ld a, [hl+]                                   ; $44b2: $2a
    ld a, [de]                                    ; $44b3: $1a
    ld e, a                                       ; $44b4: $5f
    ld c, h                                       ; $44b5: $4c
    cp e                                          ; $44b6: $bb
    ld [hl], l                                    ; $44b7: $75
    or d                                          ; $44b8: $b2
    ld a, d                                       ; $44b9: $7a
    jr c, @-$41                                   ; $44ba: $38 $bd

    call nc, $bb4c                                ; $44bc: $d4 $4c $bb
    ccf                                           ; $44bf: $3f
    db $db                                        ; $44c0: $db
    add h                                         ; $44c1: $84
    and l                                         ; $44c2: $a5
    add hl, de                                    ; $44c3: $19
    dec [hl]                                      ; $44c4: $35
    ld b, e                                       ; $44c5: $43
    halt                                          ; $44c6: $76
    or h                                          ; $44c7: $b4
    cp $3a                                        ; $44c8: $fe $3a
    cp l                                          ; $44ca: $bd
    rst $28                                       ; $44cb: $ef
    cp e                                          ; $44cc: $bb
    add a                                         ; $44cd: $87
    cp a                                          ; $44ce: $bf
    jr jr_066_4529                                ; $44cf: $18 $58

    ld l, $69                                     ; $44d1: $2e $69
    daa                                           ; $44d3: $27
    reti                                          ; $44d4: $d9


    ld a, a                                       ; $44d5: $7f
    sbc [hl]                                      ; $44d6: $9e
    ld e, $3e                                     ; $44d7: $1e $3e
    ld e, d                                       ; $44d9: $5a
    and [hl]                                      ; $44da: $a6
    ld l, c                                       ; $44db: $69
    add $fb                                       ; $44dc: $c6 $fb
    inc bc                                        ; $44de: $03
    dec sp                                        ; $44df: $3b
    sbc h                                         ; $44e0: $9c
    add a                                         ; $44e1: $87
    or d                                          ; $44e2: $b2
    call nc, Call_066_7f42                        ; $44e3: $d4 $42 $7f
    ld b, $6a                                     ; $44e6: $06 $6a
    pop de                                        ; $44e8: $d1
    jp $e533                                      ; $44e9: $c3 $33 $e5


    ld l, b                                       ; $44ec: $68
    ld hl, $65bb                                  ; $44ed: $21 $bb $65
    jp nc, Jump_066_6882                          ; $44f0: $d2 $82 $68

    ld e, c                                       ; $44f3: $59
    rst $28                                       ; $44f4: $ef
    rrca                                          ; $44f5: $0f
    db $db                                        ; $44f6: $db
    or l                                          ; $44f7: $b5
    ld e, h                                       ; $44f8: $5c
    ld e, h                                       ; $44f9: $5c
    inc e                                         ; $44fa: $1c
    ld l, l                                       ; $44fb: $6d
    sbc b                                         ; $44fc: $98
    ld a, [$24f6]                                 ; $44fd: $fa $f6 $24
    sbc [hl]                                      ; $4500: $9e
    ld c, l                                       ; $4501: $4d
    add hl, de                                    ; $4502: $19
    ld b, a                                       ; $4503: $47
    call nc, Call_000_1b44                        ; $4504: $d4 $44 $1b
    cpl                                           ; $4507: $2f
    ld d, h                                       ; $4508: $54
    rst $00                                       ; $4509: $c7
    ret c                                         ; $450a: $d8

    xor l                                         ; $450b: $ad
    rst $38                                       ; $450c: $ff
    ld sp, hl                                     ; $450d: $f9
    inc de                                        ; $450e: $13
    sbc c                                         ; $450f: $99
    and $b2                                       ; $4510: $e6 $b2
    call c, $e71f                                 ; $4512: $dc $1f $e7
    ld b, b                                       ; $4515: $40
    ld l, [hl]                                    ; $4516: $6e
    ld e, h                                       ; $4517: $5c
    cp l                                          ; $4518: $bd
    jr jr_066_4561                                ; $4519: $18 $46

    bit 5, [hl]                                   ; $451b: $cb $6e
    sbc c                                         ; $451d: $99
    or h                                          ; $451e: $b4
    jr nz, jr_066_457b                            ; $451f: $20 $5a

    sub $bb                                       ; $4521: $d6 $bb

jr_066_4523:
    ld d, a                                       ; $4523: $57

jr_066_4524:
    ldh a, [$f5]                                  ; $4524: $f0 $f5
    rra                                           ; $4526: $1f
    adc c                                         ; $4527: $89
    push af                                       ; $4528: $f5

jr_066_4529:
    or h                                          ; $4529: $b4
    or d                                          ; $452a: $b2
    sbc e                                         ; $452b: $9b
    ld h, c                                       ; $452c: $61
    ld c, a                                       ; $452d: $4f
    xor $1e                                       ; $452e: $ee $1e
    rra                                           ; $4530: $1f
    dec de                                        ; $4531: $1b
    ret nc                                        ; $4532: $d0

    dec e                                         ; $4533: $1d
    ld e, b                                       ; $4534: $58
    ldh a, [$af]                                  ; $4535: $f0 $af
    rla                                           ; $4537: $17
    adc [hl]                                      ; $4538: $8e
    xor b                                         ; $4539: $a8
    inc de                                        ; $453a: $13
    inc bc                                        ; $453b: $03
    xor d                                         ; $453c: $aa
    jr nc, @-$1d                                  ; $453d: $30 $e1

    ld d, h                                       ; $453f: $54
    or c                                          ; $4540: $b1
    ldh [rIE], a                                  ; $4541: $e0 $ff
    rst $18                                       ; $4543: $df
    ld b, h                                       ; $4544: $44
    add [hl]                                      ; $4545: $86
    pop de                                        ; $4546: $d1
    ld a, [$d634]                                 ; $4547: $fa $34 $d6
    ld c, c                                       ; $454a: $49
    ld [hl], $a0                                  ; $454b: $36 $a0
    add hl, hl                                    ; $454d: $29
    rst $00                                       ; $454e: $c7
    ld l, h                                       ; $454f: $6c
    ld d, e                                       ; $4550: $53
    and h                                         ; $4551: $a4
    call c, $a9f3                                 ; $4552: $dc $f3 $a9
    and a                                         ; $4555: $a7
    push af                                       ; $4556: $f5
    ld a, h                                       ; $4557: $7c
    db $db                                        ; $4558: $db
    jp hl                                         ; $4559: $e9


    push af                                       ; $455a: $f5
    cp [hl]                                       ; $455b: $be
    jr jr_066_4524                                ; $455c: $18 $c6

    ld b, h                                       ; $455e: $44
    db $dd                                        ; $455f: $dd
    ld [c], a                                     ; $4560: $e2

jr_066_4561:
    cp h                                          ; $4561: $bc
    sbc $05                                       ; $4562: $de $05
    cp [hl]                                       ; $4564: $be
    di                                            ; $4565: $f3
    ld a, d                                       ; $4566: $7a
    ld b, l                                       ; $4567: $45
    cp l                                          ; $4568: $bd
    sub h                                         ; $4569: $94
    dec hl                                        ; $456a: $2b
    call nz, $a17f                                ; $456b: $c4 $7f $a1
    and b                                         ; $456e: $a0
    adc [hl]                                      ; $456f: $8e
    db $eb                                        ; $4570: $eb
    adc [hl]                                      ; $4571: $8e
    ld h, l                                       ; $4572: $65
    ld h, a                                       ; $4573: $67
    ld c, [hl]                                    ; $4574: $4e
    jp nz, $bc5e                                  ; $4575: $c2 $5e $bc

    dec hl                                        ; $4578: $2b
    ld e, [hl]                                    ; $4579: $5e
    and h                                         ; $457a: $a4

jr_066_457b:
    call c, $d9f3                                 ; $457b: $dc $f3 $d9
    ld [hl], l                                    ; $457e: $75
    sbc l                                         ; $457f: $9d
    ld [$f96e], a                                 ; $4580: $ea $6e $f9
    ld c, l                                       ; $4583: $4d
    daa                                           ; $4584: $27
    ld b, $74                                     ; $4585: $06 $74
    dec [hl]                                      ; $4587: $35
    rst $38                                       ; $4588: $ff
    add c                                         ; $4589: $81
    jp c, $c267                                   ; $458a: $da $67 $c2

    ld l, c                                       ; $458d: $69
    jr jr_066_4523                                ; $458e: $18 $93

    rst $08                                       ; $4590: $cf
    adc d                                         ; $4591: $8a
    ld b, d                                       ; $4592: $42
    or e                                          ; $4593: $b3
    dec bc                                        ; $4594: $0b
    or h                                          ; $4595: $b4
    cp e                                          ; $4596: $bb

jr_066_4597:
    add hl, bc                                    ; $4597: $09
    dec e                                         ; $4598: $1d
    xor l                                         ; $4599: $ad
    ccf                                           ; $459a: $3f
    ld sp, $368f                                  ; $459b: $31 $8f $36
    push hl                                       ; $459e: $e5
    ret nc                                        ; $459f: $d0

    push de                                       ; $45a0: $d5
    db $fc                                        ; $45a1: $fc
    rlca                                          ; $45a2: $07
    ld l, d                                       ; $45a3: $6a
    db $d3                                        ; $45a4: $d3
    adc h                                         ; $45a5: $8c
    ld c, c                                       ; $45a6: $49
    jp z, Jump_000_13fa                           ; $45a7: $ca $fa $13

    jr nz, jr_066_4597                            ; $45aa: $20 $eb

    push hl                                       ; $45ac: $e5
    ld l, $58                                     ; $45ad: $2e $58
    rst $38                                       ; $45af: $ff
    sub c                                         ; $45b0: $91
    ld c, l                                       ; $45b1: $4d
    add hl, sp                                    ; $45b2: $39
    inc [hl]                                      ; $45b3: $34
    call $8498                                    ; $45b4: $cd $98 $84
    inc l                                         ; $45b7: $2c
    ld a, e                                       ; $45b8: $7b
    add hl, de                                    ; $45b9: $19
    rst $10                                       ; $45ba: $d7
    or e                                          ; $45bb: $b3
    add c                                         ; $45bc: $81
    ld c, l                                       ; $45bd: $4d
    ld c, b                                       ; $45be: $48
    cp c                                          ; $45bf: $b9
    rst $20                                       ; $45c0: $e7
    di                                            ; $45c1: $f3
    cp $00                                        ; $45c2: $fe $00
    adc c                                         ; $45c4: $89
    xor d                                         ; $45c5: $aa
    ld sp, hl                                     ; $45c6: $f9
    cp [hl]                                       ; $45c7: $be
    rst $28                                       ; $45c8: $ef
    ld l, c                                       ; $45c9: $69
    jp z, Jump_000_2aa1                           ; $45ca: $ca $a1 $2a

    sbc h                                         ; $45cd: $9c
    ld a, [$f313]                                 ; $45ce: $fa $13 $f3
    add sp, -$5a                                  ; $45d1: $e8 $a6
    rrca                                          ; $45d3: $0f
    rst $20                                       ; $45d4: $e7
    inc sp                                        ; $45d5: $33
    ld h, $29                                     ; $45d6: $26 $29
    ld b, a                                       ; $45d8: $47
    db $eb                                        ; $45d9: $eb
    ld c, a                                       ; $45da: $4f
    call z, Call_066_4da3                         ; $45db: $cc $a3 $4d
    add hl, sp                                    ; $45de: $39
    add $30                                       ; $45df: $c6 $30
    adc l                                         ; $45e1: $8d
    and e                                         ; $45e2: $a3
    push af                                       ; $45e3: $f5
    rst $00                                       ; $45e4: $c7
    ld [hl-], a                                   ; $45e5: $32
    push hl                                       ; $45e6: $e5
    ld l, b                                       ; $45e7: $68
    dec a                                         ; $45e8: $3d
    sub b                                         ; $45e9: $90
    and d                                         ; $45ea: $a2
    ld a, [$00b0]                                 ; $45eb: $fa $b0 $00
    add hl, sp                                    ; $45ee: $39
    dec de                                        ; $45ef: $1b
    sub a                                         ; $45f0: $97
    pop de                                        ; $45f1: $d1
    and [hl]                                      ; $45f2: $a6
    inc e                                         ; $45f3: $1c
    ld h, e                                       ; $45f4: $63
    sbc b                                         ; $45f5: $98
    and [hl]                                      ; $45f6: $a6
    inc e                                         ; $45f7: $1c
    inc a                                         ; $45f8: $3c
    ld b, [hl]                                    ; $45f9: $46
    add hl, sp                                    ; $45fa: $39
    ld e, d                                       ; $45fb: $5a
    ld l, d                                       ; $45fc: $6a
    dec c                                         ; $45fd: $0d
    ld l, c                                       ; $45fe: $69
    and e                                         ; $45ff: $a3
    sbc $dd                                       ; $4600: $de $dd
    ld [hl], $f5                                  ; $4602: $36 $f5
    ld a, $d9                                     ; $4604: $3e $d9
    jr nc, jr_066_466d                            ; $4606: $30 $65

    sbc h                                         ; $4608: $9c
    ld [$ca48], a                                 ; $4609: $ea $48 $ca
    adc l                                         ; $460c: $8d
    adc d                                         ; $460d: $8a
    adc [hl]                                      ; $460e: $8e
    sub $9f                                       ; $460f: $d6 $9f
    sbc b                                         ; $4611: $98
    ld b, a                                       ; $4612: $47
    adc e                                         ; $4613: $8b
    or d                                          ; $4614: $b2
    ld c, b                                       ; $4615: $48
    cp c                                          ; $4616: $b9
    rst $20                                       ; $4617: $e7
    or e                                          ; $4618: $b3
    rst $38                                       ; $4619: $ff
    ret z                                         ; $461a: $c8

    ld c, d                                       ; $461b: $4a
    ld a, $ad                                     ; $461c: $3e $ad
    ccf                                           ; $461e: $3f
    ld sp, $368f                                  ; $461f: $31 $8f $36
    call $6498                                    ; $4622: $cd $98 $64
    reti                                          ; $4625: $d9


    res 7, b                                      ; $4626: $cb $b8
    sbc [hl]                                      ; $4628: $9e
    rst $30                                       ; $4629: $f7
    rlca                                          ; $462a: $07
    sbc e                                         ; $462b: $9b
    ld b, a                                       ; $462c: $47
    ld c, [hl]                                    ; $462d: $4e
    rst $10                                       ; $462e: $d7
    dec [hl]                                      ; $462f: $35
    push hl                                       ; $4630: $e5
    ld d, b                                       ; $4631: $50
    dec e                                         ; $4632: $1d
    add hl, sp                                    ; $4633: $39
    jp c, Jump_000_15c3                           ; $4634: $da $c3 $15

    dec bc                                        ; $4637: $0b
    cp $ff                                        ; $4638: $fe $ff
    ld c, l                                       ; $463a: $4d
    ld h, h                                       ; $463b: $64
    jr jr_066_467b                                ; $463c: $18 $3d

    ld a, h                                       ; $463e: $7c
    db $d3                                        ; $463f: $d3
    rlca                                          ; $4640: $07
    ld [c], a                                     ; $4641: $e2
    ld a, a                                       ; $4642: $7f
    ld [hl], d                                    ; $4643: $72
    sbc d                                         ; $4644: $9a
    ld [hl], d                                    ; $4645: $72
    ld l, b                                       ; $4646: $68
    add [hl]                                      ; $4647: $86
    inc e                                         ; $4648: $1c
    ld l, l                                       ; $4649: $6d
    ld b, b                                       ; $464a: $40
    rla                                           ; $464b: $17
    sub a                                         ; $464c: $97
    ld l, c                                       ; $464d: $69
    db $fd                                        ; $464e: $fd
    daa                                           ; $464f: $27
    ld h, [hl]                                    ; $4650: $66
    ld h, e                                       ; $4651: $63
    sbc l                                         ; $4652: $9d
    ld l, h                                       ; $4653: $6c
    ld a, [$19a5]                                 ; $4654: $fa $a5 $19
    inc sp                                        ; $4657: $33
    xor $0f                                       ; $4658: $ee $0f
    dec sp                                        ; $465a: $3b
    ld e, [hl]                                    ; $465b: $5e
    sbc d                                         ; $465c: $9a
    ld [hl], d                                    ; $465d: $72
    and e                                         ; $465e: $a3
    add h                                         ; $465f: $84
    xor b                                         ; $4660: $a8
    cp $58                                        ; $4661: $fe $58
    cp l                                          ; $4663: $bd
    ld e, h                                       ; $4664: $5c
    adc l                                         ; $4665: $8d
    db $dd                                        ; $4666: $dd
    rra                                           ; $4667: $1f
    add hl, bc                                    ; $4668: $09
    ld [$a6c3], a                                 ; $4669: $ea $c3 $a6
    add hl, hl                                    ; $466c: $29

jr_066_466d:
    add a                                         ; $466d: $87
    add $d1                                       ; $466e: $c6 $d1
    ld a, [$9313]                                 ; $4670: $fa $13 $93
    sub h                                         ; $4673: $94
    adc l                                         ; $4674: $8d
    xor h                                         ; $4675: $ac
    add h                                         ; $4676: $84
    ld c, d                                       ; $4677: $4a
    ld d, $29                                     ; $4678: $16 $29
    rst $30                                       ; $467a: $f7

jr_066_467b:
    ld a, h                                       ; $467b: $7c
    ld d, $4d                                     ; $467c: $16 $4d
    add hl, sp                                    ; $467e: $39
    ld [hl], h                                    ; $467f: $74
    db $db                                        ; $4680: $db
    ld a, $db                                     ; $4681: $3e $db
    xor e                                         ; $4683: $ab
    db $10                                        ; $4684: $10
    ret nz                                        ; $4685: $c0

    ld b, d                                       ; $4686: $42
    halt                                          ; $4687: $76
    rst $00                                       ; $4688: $c7
    or d                                          ; $4689: $b2
    inc sp                                        ; $468a: $33
    daa                                           ; $468b: $27
    ld h, c                                       ; $468c: $61
    cpl                                           ; $468d: $2f
    sbc $dd                                       ; $468e: $de $dd
    ld h, $9c                                     ; $4690: $26 $9c
    xor d                                         ; $4692: $aa
    ld [hl], b                                    ; $4693: $70
    sbc d                                         ; $4694: $9a
    daa                                           ; $4695: $27
    adc h                                         ; $4696: $8c
    ld d, [hl]                                    ; $4697: $56
    jp nc, $a8a9                                  ; $4698: $d2 $a9 $a8

    sub d                                         ; $469b: $92
    jp c, Jump_066_5bd5                           ; $469c: $da $d5 $5b

    and c                                         ; $469f: $a1
    bit 3, d                                      ; $46a0: $cb $5a
    db $d3                                        ; $46a2: $d3
    adc b                                         ; $46a3: $88
    add hl, de                                    ; $46a4: $19
    dec c                                         ; $46a5: $0d
    ld d, b                                       ; $46a6: $50
    and [hl]                                      ; $46a7: $a6
    adc l                                         ; $46a8: $8d
    ld h, c                                       ; $46a9: $61
    ld l, l                                       ; $46aa: $6d
    add l                                         ; $46ab: $85
    push hl                                       ; $46ac: $e5
    cp $00                                        ; $46ad: $fe $00
    dec sp                                        ; $46af: $3b
    add sp, $02                                   ; $46b0: $e8 $02
    rst $10                                       ; $46b2: $d7
    rra                                           ; $46b3: $1f
    inc c                                         ; $46b4: $0c
    dec d                                         ; $46b5: $15
    sub l                                         ; $46b6: $95
    adc e                                         ; $46b7: $8b
    adc e                                         ; $46b8: $8b
    and e                                         ; $46b9: $a3
    dec c                                         ; $46ba: $0d
    ld d, e                                       ; $46bb: $53
    rst $18                                       ; $46bc: $df
    sbc [hl]                                      ; $46bd: $9e
    call nz, Call_000_29b3                        ; $46be: $c4 $b3 $29
    db $e3                                        ; $46c1: $e3
    call c, Call_000_31dd                         ; $46c2: $dc $dd $31
    xor [hl]                                      ; $46c5: $ae
    ld [c], a                                     ; $46c6: $e2
    adc e                                         ; $46c7: $8b
    rst $00                                       ; $46c8: $c7
    ld l, c                                       ; $46c9: $69
    rst $08                                       ; $46ca: $cf
    ld [hl], l                                    ; $46cb: $75
    jp nc, Jump_000_20b3                          ; $46cc: $d2 $b3 $20

    adc h                                         ; $46cf: $8c
    ld b, c                                       ; $46d0: $41
    call nc, $9f73                                ; $46d1: $d4 $73 $9f
    pop hl                                        ; $46d4: $e1
    rst $08                                       ; $46d5: $cf
    ld h, e                                       ; $46d6: $63
    dec c                                         ; $46d7: $0d
    add sp, -$6a                                  ; $46d8: $e8 $96

Jump_066_46da:
    ld c, c                                       ; $46da: $49
    dec bc                                        ; $46db: $0b
    and d                                         ; $46dc: $a2
    ld h, l                                       ; $46dd: $65
    cp l                                          ; $46de: $bd
    sbc e                                         ; $46df: $9b
    jr c, jr_066_4738                             ; $46e0: $38 $56

    cpl                                           ; $46e2: $2f
    ld d, a                                       ; $46e3: $57
    ld h, e                                       ; $46e4: $63
    and d                                         ; $46e5: $a2
    add [hl]                                      ; $46e6: $86
    ld h, a                                       ; $46e7: $67
    ld c, a                                       ; $46e8: $4f
    nop                                           ; $46e9: $00
    push hl                                       ; $46ea: $e5
    ld b, [hl]                                    ; $46eb: $46
    ld b, l                                       ; $46ec: $45
    ld a, l                                       ; $46ed: $7d
    ld a, [de]                                    ; $46ee: $1a
    ld c, e                                       ; $46ef: $4b
    xor l                                         ; $46f0: $ad
    add h                                         ; $46f1: $84
    ld d, d                                       ; $46f2: $52
    ld c, e                                       ; $46f3: $4b
    push de                                       ; $46f4: $d5
    daa                                           ; $46f5: $27
    sbc e                                         ; $46f6: $9b
    ld [hl], d                                    ; $46f7: $72
    xor b                                         ; $46f8: $a8
    ld [hl], a                                    ; $46f9: $77
    inc c                                         ; $46fa: $0c
    or d                                          ; $46fb: $b2
    adc d                                         ; $46fc: $8a
    dec b                                         ; $46fd: $05
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    ld h, $32                                     ; $4700: $26 $32
    adc h                                         ; $4702: $8c
    sub $a7                                       ; $4703: $d6 $a7
    or c                                          ; $4705: $b1
    ld c, [hl]                                    ; $4706: $4e
    or d                                          ; $4707: $b2
    ld c, b                                       ; $4708: $48
    cp c                                          ; $4709: $b9
    rst $20                                       ; $470a: $e7
    di                                            ; $470b: $f3
    cp $00                                        ; $470c: $fe $00
    ld b, a                                       ; $470e: $47
    or b                                          ; $470f: $b0
    ccf                                           ; $4710: $3f
    ld h, e                                       ; $4711: $63
    and [hl]                                      ; $4712: $a6
    dec e                                         ; $4713: $1d
    reti                                          ; $4714: $d9


    db $eb                                        ; $4715: $eb
    rst $08                                       ; $4716: $cf
    ld [hl], a                                    ; $4717: $77
    or h                                          ; $4718: $b4
    nop                                           ; $4719: $00
    reti                                          ; $471a: $d9


    pop de                                        ; $471b: $d1
    cp $49                                        ; $471c: $fe $49
    ld a, [$9ceb]                                 ; $471e: $fa $eb $9c
    ld [hl], $a0                                  ; $4721: $36 $a0
    rst $38                                       ; $4723: $ff
    db $fc                                        ; $4724: $fc
    inc hl                                        ; $4725: $23

Jump_066_4726:
    ld a, [$9b00]                                 ; $4726: $fa $00 $9b
    sub e                                         ; $4729: $93
    db $f4                                        ; $472a: $f4
    rst $10                                       ; $472b: $d7
    add hl, sp                                    ; $472c: $39
    dec l                                         ; $472d: $2d
    sub a                                         ; $472e: $97
    inc a                                         ; $472f: $3c
    ld e, d                                       ; $4730: $5a
    inc [hl]                                      ; $4731: $34
    and b                                         ; $4732: $a0
    ld a, $16                                     ; $4733: $3e $16
    xor b                                         ; $4735: $a8
    add sp, $03                                   ; $4736: $e8 $03

jr_066_4738:
    db $db                                        ; $4738: $db
    ei                                            ; $4739: $fb
    daa                                           ; $473a: $27
    jp hl                                         ; $473b: $e9


    xor a                                         ; $473c: $af
    ld [hl], e                                    ; $473d: $73
    ld c, l                                       ; $473e: $4d
    add hl, sp                                    ; $473f: $39
    inc d                                         ; $4740: $14
    ld a, [$92cf]                                 ; $4741: $fa $cf $92
    ld b, h                                       ; $4744: $44
    ld hl, $65bb                                  ; $4745: $21 $bb $65
    jp nc, Jump_066_6882                          ; $4748: $d2 $82 $68

    ld e, c                                       ; $474b: $59
    ccf                                           ; $474c: $3f
    ld h, a                                       ; $474d: $67
    ld d, h                                       ; $474e: $54
    ld h, d                                       ; $474f: $62
    ld c, c                                       ; $4750: $49
    adc [hl]                                      ; $4751: $8e
    dec [hl]                                      ; $4752: $35
    push hl                                       ; $4753: $e5
    ret nc                                        ; $4754: $d0

    inc a                                         ; $4755: $3c
    ld h, c                                       ; $4756: $61
    or h                                          ; $4757: $b4
    ld e, b                                       ; $4758: $58
    and b                                         ; $4759: $a0
    rst $30                                       ; $475a: $f7
    rlca                                          ; $475b: $07
    db $db                                        ; $475c: $db
    jr @-$26                                      ; $475d: $18 $d8

    db $e4                                        ; $475f: $e4
    ld e, d                                       ; $4760: $5a
    inc hl                                        ; $4761: $23
    or l                                          ; $4762: $b5
    xor e                                         ; $4763: $ab
    ld d, c                                       ; $4764: $51
    and l                                         ; $4765: $a5
    or $a7                                        ; $4766: $f6 $a7
    rlca                                          ; $4768: $07

jr_066_4769:
    db $eb                                        ; $4769: $eb
    xor c                                         ; $476a: $a9
    and d                                         ; $476b: $a2

jr_066_476c:
    rrca                                          ; $476c: $0f
    sub a                                         ; $476d: $97
    jr c, jr_066_4784                             ; $476e: $38 $14

    xor [hl]                                      ; $4770: $ae
    ld d, c                                       ; $4771: $51
    jr c, jr_066_4769                             ; $4772: $38 $f5

Jump_066_4774:
    ld b, a                                       ; $4774: $47
    sub l                                         ; $4775: $95
    ld h, l                                       ; $4776: $65
    ld a, b                                       ; $4777: $78
    xor e                                         ; $4778: $ab
    rla                                           ; $4779: $17
    sub e                                         ; $477a: $93
    inc [hl]                                      ; $477b: $34
    pop de                                        ; $477c: $d1
    rlca                                          ; $477d: $07
    adc c                                         ; $477e: $89
    inc de                                        ; $477f: $13
    sub e                                         ; $4780: $93
    sub h                                         ; $4781: $94
    dec de                                        ; $4782: $1b
    dec h                                         ; $4783: $25

jr_066_4784:
    adc d                                         ; $4784: $8a
    jp nz, $c055                                  ; $4785: $c2 $55 $c0

    ld e, d                                       ; $4788: $5a
    ld d, a                                       ; $4789: $57
    and e                                         ; $478a: $a3
    dec c                                         ; $478b: $0d
    cpl                                           ; $478c: $2f
    dec a                                         ; $478d: $3d
    rra                                           ; $478e: $1f
    db $db                                        ; $478f: $db
    ld h, e                                       ; $4790: $63
    ld b, b                                       ; $4791: $40
    rst $10                                       ; $4792: $d7
    ld [hl], l                                    ; $4793: $75
    cp d                                          ; $4794: $ba
    ld a, [de]                                    ; $4795: $1a
    push de                                       ; $4796: $d5
    jp hl                                         ; $4797: $e9


    ld [c], a                                     ; $4798: $e2
    jp nc, $fbb4                                  ; $4799: $d2 $b4 $fb

    ldh a, [rIF]                                  ; $479c: $f0 $0f
    rst $20                                       ; $479e: $e7
    dec de                                        ; $479f: $1b
    ld h, e                                       ; $47a0: $63
    ld a, [de]                                    ; $47a1: $1a
    ld h, $ea                                     ; $47a2: $26 $ea
    ld d, $98                                     ; $47a4: $16 $98

Jump_066_47a6:
    ld a, h                                       ; $47a6: $7c
    inc de                                        ; $47a7: $13
    or c                                          ; $47a8: $b1
    pop hl                                        ; $47a9: $e1
    inc bc                                        ; $47aa: $03
    rst $20                                       ; $47ab: $e7
    db $db                                        ; $47ac: $db
    ld c, [hl]                                    ; $47ad: $4e
    xor a                                         ; $47ae: $af
    rst $30                                       ; $47af: $f7
    push bc                                       ; $47b0: $c5
    jr nc, jr_066_4769                            ; $47b1: $30 $b6

    pop hl                                        ; $47b3: $e1
    inc bc                                        ; $47b4: $03
    adc c                                         ; $47b5: $89
    sub e                                         ; $47b6: $93
    inc sp                                        ; $47b7: $33
    ld c, h                                       ; $47b8: $4c
    call nc, $342d                                ; $47b9: $d4 $2d $34
    db $db                                        ; $47bc: $db
    cp c                                          ; $47bd: $b9
    pop hl                                        ; $47be: $e1
    inc bc                                        ; $47bf: $03
    dec sp                                        ; $47c0: $3b
    sub [hl]                                      ; $47c1: $96
    sbc l                                         ; $47c2: $9d
    add hl, sp                                    ; $47c3: $39
    add hl, bc                                    ; $47c4: $09
    ld a, e                                       ; $47c5: $7b
    or c                                          ; $47c6: $b1
    ld d, c                                       ; $47c7: $51
    jr c, jr_066_476c                             ; $47c8: $38 $a2

    xor $58                                       ; $47ca: $ee $58
    halt                                          ; $47cc: $76
    and $24                                       ; $47cd: $e6 $24
    db $ec                                        ; $47cf: $ec
    push bc                                       ; $47d0: $c5
    ld b, [hl]                                    ; $47d1: $46
    pop hl                                        ; $47d2: $e1
    call c, $fdf7                                 ; $47d3: $dc $f7 $fd
    ld bc, $40e7                                  ; $47d6: $01 $e7 $40
    adc d                                         ; $47d9: $8a
    xor d                                         ; $47da: $aa
    ld l, b                                       ; $47db: $68

jr_066_47dc:
    ld b, [hl]                                    ; $47dc: $46
    call nc, Call_000_3fb2                        ; $47dd: $d4 $b2 $3f
    inc l                                         ; $47e0: $2c
    ld h, e                                       ; $47e1: $63
    rla                                           ; $47e2: $17
    rst $28                                       ; $47e3: $ef
    ei                                            ; $47e4: $fb
    xor $ba                                       ; $47e5: $ee $ba
    ld c, d                                       ; $47e7: $4a
    inc l                                         ; $47e8: $2c
    ret                                           ; $47e9: $c9


    or c                                          ; $47ea: $b1
    and [hl]                                      ; $47eb: $a6
    inc e                                         ; $47ec: $1c
    xor d                                         ; $47ed: $aa
    db $10                                        ; $47ee: $10
    ret nz                                        ; $47ef: $c0

    sbc [hl]                                      ; $47f0: $9e
    ld a, a                                       ; $47f1: $7f
    jp hl                                         ; $47f2: $e9


    push de                                       ; $47f3: $d5
    rst $20                                       ; $47f4: $e7
    sbc l                                         ; $47f5: $9d
    ld [hl], a                                    ; $47f6: $77
    pop bc                                        ; $47f7: $c1
    or [hl]                                       ; $47f8: $b6
    ld [hl], e                                    ; $47f9: $73
    or a                                          ; $47fa: $b7
    ld e, a                                       ; $47fb: $5f
    ld a, d                                       ; $47fc: $7a
    ld a, a                                       ; $47fd: $7f
    rst $20                                       ; $47fe: $e7
    db $db                                        ; $47ff: $db
    ld c, [hl]                                    ; $4800: $4e
    xor a                                         ; $4801: $af
    rst $30                                       ; $4802: $f7
    push bc                                       ; $4803: $c5
    jr nc, jr_066_47dc                            ; $4804: $30 $d6

    ld [hl], l                                    ; $4806: $75
    ld h, l                                       ; $4807: $65
    dec h                                         ; $4808: $25
    sub [hl]                                      ; $4809: $96
    db $e4                                        ; $480a: $e4
    ld e, b                                       ; $480b: $58
    ld a, a                                       ; $480c: $7f
    ld a, [hl+]                                   ; $480d: $2a
    db $eb                                        ; $480e: $eb
    dec de                                        ; $480f: $1b
    sbc e                                         ; $4810: $9b
    sbc a                                         ; $4811: $9f
    xor b                                         ; $4812: $a8
    ld e, e                                       ; $4813: $5b
    ld l, b                                       ; $4814: $68
    or [hl]                                       ; $4815: $b6
    di                                            ; $4816: $f3
    xor $15                                       ; $4817: $ee $15
    ld a, h                                       ; $4819: $7c
    ld e, l                                       ; $481a: $5d
    pop bc                                        ; $481b: $c1
    ld a, [de]                                    ; $481c: $1a
    ret c                                         ; $481d: $d8

    db $ec                                        ; $481e: $ec
    ld e, b                                       ; $481f: $58
    add hl, bc                                    ; $4820: $09
    push hl                                       ; $4821: $e5
    db $fd                                        ; $4822: $fd
    ld bc, $ac57                                  ; $4823: $01 $57 $ac
    push de                                       ; $4826: $d5
    and a                                         ; $4827: $a7
    or c                                          ; $4828: $b1
    xor h                                         ; $4829: $ac
    add h                                         ; $482a: $84
    ld d, d                                       ; $482b: $52
    call nc, $c9c4                                ; $482c: $d4 $c4 $c9
    add hl, de                                    ; $482f: $19
    ld h, $ea                                     ; $4830: $26 $ea
    cp b                                          ; $4832: $b8
    and [hl]                                      ; $4833: $a6
    inc e                                         ; $4834: $1c
    xor h                                         ; $4835: $ac
    rst $38                                       ; $4836: $ff
    ld c, b                                       ; $4837: $48
    xor h                                         ; $4838: $ac
    and a                                         ; $4839: $a7
    ld d, l                                       ; $483a: $55
    ret nz                                        ; $483b: $c0

    ld e, d                                       ; $483c: $5a
    ld e, c                                       ; $483d: $59
    rra                                           ; $483e: $1f
    ld d, $60                                     ; $483f: $16 $60
    push af                                       ; $4841: $f5
    daa                                           ; $4842: $27
    and $d1                                       ; $4843: $e6 $d1
    ld c, l                                       ; $4845: $4d
    rra                                           ; $4846: $1f
    ld [c], a                                     ; $4847: $e2
    rst $28                                       ; $4848: $ef
    db $dd                                        ; $4849: $dd
    rst $30                                       ; $484a: $f7
    ld e, l                                       ; $484b: $5d
    ld d, [hl]                                    ; $484c: $56
    cp [hl]                                       ; $484d: $be
    sbc b                                         ; $484e: $98
    ld h, h                                       ; $484f: $64
    ld a, a                                       ; $4850: $7f
    ld a, d                                       ; $4851: $7a
    or b                                          ; $4852: $b0
    sbc [hl]                                      ; $4853: $9e
    rst $30                                       ; $4854: $f7
    ld a, l                                       ; $4855: $7d
    ld a, a                                       ; $4856: $7f
    ld d, a                                       ; $4857: $57
    ldh a, [$d5]                                  ; $4858: $f0 $d5
    and a                                         ; $485a: $a7
    or c                                          ; $485b: $b1
    xor h                                         ; $485c: $ac
    add h                                         ; $485d: $84
    ld d, d                                       ; $485e: $52
    call nc, $342d                                ; $485f: $d4 $2d $34
    db $db                                        ; $4862: $db
    add hl, hl                                    ; $4863: $29
    ld a, [hl+]                                   ; $4864: $2a
    ld e, h                                       ; $4865: $5c
    inc sp                                        ; $4866: $33
    ld h, d                                       ; $4867: $62
    ld [hl], d                                    ; $4868: $72
    ld a, [de]                                    ; $4869: $1a
    ld d, b                                       ; $486a: $50
    xor d                                         ; $486b: $aa
    ld a, $cd                                     ; $486c: $3e $cd
    rst $08                                       ; $486e: $cf
    cp d                                          ; $486f: $ba
    ld a, a                                       ; $4870: $7f
    ld a, a                                       ; $4871: $7f
    ret c                                         ; $4872: $d8

    sub e                                         ; $4873: $93
    cp e                                          ; $4874: $bb
    rst $00                                       ; $4875: $c7
    rst $00                                       ; $4876: $c7
    ei                                            ; $4877: $fb
    inc bc                                        ; $4878: $03
    ld h, a                                       ; $4879: $67
    ld d, h                                       ; $487a: $54
    ld l, [hl]                                    ; $487b: $6e
    sub h                                         ; $487c: $94
    dec de                                        ; $487d: $1b
    push hl                                       ; $487e: $e5
    ld b, [hl]                                    ; $487f: $46
    adc c                                         ; $4880: $89
    dec h                                         ; $4881: $25
    add hl, sp                                    ; $4882: $39
    sub $67                                       ; $4883: $d6 $67
    push af                                       ; $4885: $f5
    ld l, c                                       ; $4886: $69
    inc l                                         ; $4887: $2c
    dec hl                                        ; $4888: $2b
    scf                                           ; $4889: $37
    jp z, Jump_066_728d                           ; $488a: $ca $8d $72

    and e                                         ; $488d: $a3
    add h                                         ; $488e: $84
    ld a, [c]                                     ; $488f: $f2
    cp [hl]                                       ; $4890: $be
    rst $28                                       ; $4891: $ef
    ld b, [hl]                                    ; $4892: $46
    rla                                           ; $4893: $17
    ld a, a                                       ; $4894: $7f
    ld d, [hl]                                    ; $4895: $56

jr_066_4896:
    ld d, c                                       ; $4896: $51
    and l                                         ; $4897: $a5
    rlca                                          ; $4898: $07
    ld c, l                                       ; $4899: $4d
    add hl, sp                                    ; $489a: $39
    ret z                                         ; $489b: $c8

    ld b, d                                       ; $489c: $42
    di                                            ; $489d: $f3
    ld e, d                                       ; $489e: $5a
    rst $30                                       ; $489f: $f7
    cpl                                           ; $48a0: $2f
    call nc, $bc37                                ; $48a1: $d4 $37 $bc
    call z, $03fb                                 ; $48a4: $cc $fb $03
    ld e, e                                       ; $48a7: $5b
    sub $ba                                       ; $48a8: $d6 $ba
    cp b                                          ; $48aa: $b8
    inc [hl]                                      ; $48ab: $34
    dec c                                         ; $48ac: $0d
    ld e, d                                       ; $48ad: $5a
    ret z                                         ; $48ae: $c8

    ld l, [hl]                                    ; $48af: $6e
    sbc c                                         ; $48b0: $99
    or h                                          ; $48b1: $b4
    jr nz, jr_066_490e                            ; $48b2: $20 $5a

    sub $a6                                       ; $48b4: $d6 $a6
    inc e                                         ; $48b6: $1c
    jp z, $0317                                   ; $48b7: $ca $17 $03

    sbc e                                         ; $48ba: $9b
    ld d, c                                       ; $48bb: $51
    ld l, b                                       ; $48bc: $68
    ld d, $4e                                     ; $48bd: $16 $4e
    ld a, l                                       ; $48bf: $7d
    sbc e                                         ; $48c0: $9b
    rst $20                                       ; $48c1: $e7
    ld a, c                                       ; $48c2: $79
    ld h, c                                       ; $48c3: $61
    ld d, h                                       ; $48c4: $54
    call nc, $342d                                ; $48c5: $d4 $2d $34
    db $db                                        ; $48c8: $db
    ld a, c                                       ; $48c9: $79
    ld a, a                                       ; $48ca: $7f
    ld h, a                                       ; $48cb: $67
    inc d                                         ; $48cc: $14
    sbc d                                         ; $48cd: $9a
    ld e, c                                       ; $48ce: $59
    ld d, [hl]                                    ; $48cf: $56
    ld b, d                                       ; $48d0: $42
    reti                                          ; $48d1: $d9


    di                                            ; $48d2: $f3
    ld l, l                                       ; $48d3: $6d
    and a                                         ; $48d4: $a7
    rst $10                                       ; $48d5: $d7
    ei                                            ; $48d6: $fb
    ld h, d                                       ; $48d7: $62
    jr @-$23                                      ; $48d8: $18 $db

    db $f4                                        ; $48da: $f4
    ld bc, $84db                                  ; $48db: $01 $db $84
    inc hl                                        ; $48de: $23
    xor d                                         ; $48df: $aa
    adc [hl]                                      ; $48e0: $8e
    inc e                                         ; $48e1: $1c
    ld l, l                                       ; $48e2: $6d
    ld b, b                                       ; $48e3: $40
    or a                                          ; $48e4: $b7
    jr c, jr_066_4896                             ; $48e5: $38 $af

    ld [hl], a                                    ; $48e7: $77
    add c                                         ; $48e8: $81
    rst $28                                       ; $48e9: $ef
    cp h                                          ; $48ea: $bc
    sbc $fb                                       ; $48eb: $de $fb
    inc bc                                        ; $48ed: $03
    ld e, e                                       ; $48ee: $5b
    sbc h                                         ; $48ef: $9c
    rst $10                                       ; $48f0: $d7
    cp e                                          ; $48f1: $bb
    ret nz                                        ; $48f2: $c0

    ld [hl], a                                    ; $48f3: $77
    ld e, [hl]                                    ; $48f4: $5e
    ld l, a                                       ; $48f5: $6f
    rst $10                                       ; $48f6: $d7
    sub l                                         ; $48f7: $95
    sub l                                         ; $48f8: $95
    ld e, b                                       ; $48f9: $58
    sub d                                         ; $48fa: $92
    ld h, e                                       ; $48fb: $63
    dec de                                        ; $48fc: $1b
    ld a, $17                                     ; $48fd: $3e $17
    ld d, e                                       ; $48ff: $53
    ld [hl+], a                                   ; $4900: $22
    and $11                                       ; $4901: $e6 $11
    sub l                                         ; $4903: $95
    add hl, hl                                    ; $4904: $29
    rst $30                                       ; $4905: $f7
    xor d                                         ; $4906: $aa
    inc hl                                        ; $4907: $23
    ld b, a                                       ; $4908: $47
    dec de                                        ; $4909: $1b
    ret nc                                        ; $490a: $d0

    ld c, e                                       ; $490b: $4b
    cp c                                          ; $490c: $b9
    ld b, d                                       ; $490d: $42

jr_066_490e:
    db $fc                                        ; $490e: $fc
    rla                                           ; $490f: $17
    ld a, [bc]                                    ; $4910: $0a
    cp d                                          ; $4911: $ba
    ccf                                           ; $4912: $3f
    db $db                                        ; $4913: $db
    add h                                         ; $4914: $84
    db $d3                                        ; $4915: $d3
    db $e4                                        ; $4916: $e4
    ld e, d                                       ; $4917: $5a
    dec h                                         ; $4918: $25
    sub [hl]                                      ; $4919: $96
    db $e4                                        ; $491a: $e4
    ld e, b                                       ; $491b: $58
    ld d, e                                       ; $491c: $53
    ld c, $bd                                     ; $491d: $0e $bd
    sub h                                         ; $491f: $94
    dec hl                                        ; $4920: $2b
    call nz, $a17f                                ; $4921: $c4 $7f $a1
    and b                                         ; $4924: $a0
    dec c                                         ; $4925: $0d
    rra                                           ; $4926: $1f
    ld [c], a                                     ; $4927: $e2
    ld b, l                                       ; $4928: $45
    jp z, $9f3d                                   ; $4929: $ca $3d $9f

    ld e, l                                       ; $492c: $5d
    rst $10                                       ; $492d: $d7
    inc l                                         ; $492e: $2c
    sbc h                                         ; $492f: $9c
    ld b, $28                                     ; $4930: $06 $28
    call Call_066_649c                            ; $4932: $cd $9c $64
    ld h, b                                       ; $4935: $60
    rst $38                                       ; $4936: $ff
    sub c                                         ; $4937: $91
    ld d, e                                       ; $4938: $53
    ld l, b                                       ; $4939: $68
    ld h, [hl]                                    ; $493a: $66
    dec h                                         ; $493b: $25
    sub h                                         ; $493c: $94
    sbc e                                         ; $493d: $9b
    ld a, $09                                     ; $493e: $3e $09
    sbc d                                         ; $4940: $9a
    reti                                          ; $4941: $d9


    ld [hl], l                                    ; $4942: $75
    ld h, l                                       ; $4943: $65
    dec h                                         ; $4944: $25
    sub h                                         ; $4945: $94
    dec c                                         ; $4946: $0d
    add sp, -$72                                  ; $4947: $e8 $8e
    ld h, l                                       ; $4949: $65
    ld h, a                                       ; $494a: $67
    ld c, [hl]                                    ; $494b: $4e
    jp nz, $dc5e                                  ; $494c: $c2 $5e $dc

    ldh a, [rSB]                                  ; $494f: $f0 $01
    dec sp                                        ; $4951: $3b
    sub [hl]                                      ; $4952: $96
    sbc l                                         ; $4953: $9d
    add hl, sp                                    ; $4954: $39
    add hl, bc                                    ; $4955: $09
    ld a, e                                       ; $4956: $7b
    or c                                          ; $4957: $b1
    db $fc                                        ; $4958: $fc
    sbc a                                         ; $4959: $9f
    ld h, h                                       ; $495a: $64
    inc bc                                        ; $495b: $03
    sbc d                                         ; $495c: $9a
    ld e, l                                       ; $495d: $5d
    sbc b                                         ; $495e: $98
    dec c                                         ; $495f: $0d
    rra                                           ; $4960: $1f
    ld h, a                                       ; $4961: $67
    inc d                                         ; $4962: $14
    dec bc                                        ; $4963: $0b
    ld b, h                                       ; $4964: $44
    ld e, l                                       ; $4965: $5d
    rst $10                                       ; $4966: $d7
    jp hl                                         ; $4967: $e9


    ld d, $9a                                     ; $4968: $16 $9a
    db $ed                                        ; $496a: $ed
    ld l, h                                       ; $496b: $6c
    ld [c], a                                     ; $496c: $e2
    db $e4                                        ; $496d: $e4
    inc c                                         ; $496e: $0c
    db $db                                        ; $496f: $db
    ldh a, [rSB]                                  ; $4970: $f0 $01
    adc c                                         ; $4972: $89
    adc b                                         ; $4973: $88
    ld l, h                                       ; $4974: $6c
    inc d                                         ; $4975: $14
    ld c, [hl]                                    ; $4976: $4e
    sub e                                         ; $4977: $93
    ld e, h                                       ; $4978: $5c
    pop bc                                        ; $4979: $c1
    ld [$2b24], a                                 ; $497a: $ea $24 $2b
    and c                                         ; $497d: $a1
    db $ec                                        ; $497e: $ec
    ld d, [hl]                                    ; $497f: $56
    sub a                                         ; $4980: $97
    ld c, [hl]                                    ; $4981: $4e
    cpl                                           ; $4982: $2f
    xor b                                         ; $4983: $a8
    ld c, a                                       ; $4984: $4f
    ld h, e                                       ; $4985: $63
    di                                            ; $4986: $f3
    inc de                                        ; $4987: $13

Call_066_4988:
    dec [hl]                                      ; $4988: $35
    ld [hl], c                                    ; $4989: $71
    ld [hl], d                                    ; $498a: $72
    add [hl]                                      ; $498b: $86
    db $dd                                        ; $498c: $dd
    rra                                           ; $498d: $1f
    dec sp                                        ; $498e: $3b
    sbc [hl]                                      ; $498f: $9e
    ld [hl], l                                    ; $4990: $75
    db $db                                        ; $4991: $db
    ei                                            ; $4992: $fb
    sub e                                         ; $4993: $93
    or e                                          ; $4994: $b3
    ld d, b                                       ; $4995: $50
    dec de                                        ; $4996: $1b
    ret nc                                        ; $4997: $d0

    xor l                                         ; $4998: $ad
    ld c, a                                       ; $4999: $4f
    ld [$8dce], a                                 ; $499a: $ea $ce $8d
    adc c                                         ; $499d: $89
    ld h, e                                       ; $499e: $63
    cp $8b                                        ; $499f: $fe $8b

Jump_066_49a1:
    jp hl                                         ; $49a1: $e9


    inc a                                         ; $49a2: $3c
    ld d, c                                       ; $49a3: $51
    ld d, h                                       ; $49a4: $54
    cpl                                           ; $49a5: $2f
    ld h, e                                       ; $49a6: $63
    and [hl]                                      ; $49a7: $a6
    ld c, d                                       ; $49a8: $4a
    sub $a0                                       ; $49a9: $d6 $a0
    cpl                                           ; $49ab: $2f
    jr nz, jr_066_4a14                            ; $49ac: $20 $66

    inc [hl]                                      ; $49ae: $34
    or d                                          ; $49af: $b2
    ld a, c                                       ; $49b0: $79
    call z, $80d0                                 ; $49b1: $cc $d0 $80
    sbc [hl]                                      ; $49b4: $9e
    ld l, a                                       ; $49b5: $6f
    dec sp                                        ; $49b6: $3b
    cp l                                          ; $49b7: $bd
    sbc $17                                       ; $49b8: $de $17
    jp $ddd8                                      ; $49ba: $c3 $d8 $dd


    ld h, $c8                                     ; $49bd: $26 $c8
    and [hl]                                      ; $49bf: $a6
    inc e                                         ; $49c0: $1c
    ld [$ea8f], a                                 ; $49c1: $ea $8f $ea
    ld d, h                                       ; $49c4: $54
    ld h, c                                       ; $49c5: $61
    xor e                                         ; $49c6: $ab
    ld h, a                                       ; $49c7: $67
    dec de                                        ; $49c8: $1b
    inc sp                                        ; $49c9: $33
    ld [hl], $7d                                  ; $49ca: $36 $7d
    ld h, a                                       ; $49cc: $67
    ld d, h                                       ; $49cd: $54
    ld hl, $f61b                                  ; $49ce: $21 $1b $f6
    ld e, b                                       ; $49d1: $58
    cp l                                          ; $49d2: $bd
    ret nz                                        ; $49d3: $c0

    cp e                                          ; $49d4: $bb
    add hl, bc                                    ; $49d5: $09
    sbc d                                         ; $49d6: $9a
    rst $00                                       ; $49d7: $c7
    push de                                       ; $49d8: $d5
    adc e                                         ; $49d9: $8b
    push hl                                       ; $49da: $e5
    db $ed                                        ; $49db: $ed
    xor d                                         ; $49dc: $aa
    ccf                                           ; $49dd: $3f
    sub $8c                                       ; $49de: $d6 $8c
    ld h, [hl]                                    ; $49e0: $66
    ld e, b                                       ; $49e1: $58
    rst $38                                       ; $49e2: $ff
    adc c                                         ; $49e3: $89
    ld [hl], c                                    ; $49e4: $71
    db $f4                                        ; $49e5: $f4

jr_066_49e6:
    sbc a                                         ; $49e6: $9f
    ei                                            ; $49e7: $fb
    inc bc                                        ; $49e8: $03
    rst $30                                       ; $49e9: $f7
    ld a, l                                       ; $49ea: $7d
    ld a, a                                       ; $49eb: $7f
    adc c                                         ; $49ec: $89
    inc [hl]                                      ; $49ed: $34
    db $fc                                        ; $49ee: $fc
    ret nc                                        ; $49ef: $d0

    ld a, [hl-]                                   ; $49f0: $3a
    ld e, c                                       ; $49f1: $59
    and e                                         ; $49f2: $a3
    rst $08                                       ; $49f3: $cf
    ld e, l                                       ; $49f4: $5d
    ld h, l                                       ; $49f5: $65
    ld a, [hl]                                    ; $49f6: $7e
    sub c                                         ; $49f7: $91
    ld h, c                                       ; $49f8: $61
    ld b, h                                       ; $49f9: $44
    sub l                                         ; $49fa: $95
    call nc, Call_000_3342                        ; $49fb: $d4 $42 $33
    dec de                                        ; $49fe: $1b
    add l                                         ; $49ff: $85
    db $d3                                        ; $4a00: $d3
    ld [hl], l                                    ; $4a01: $75
    ld h, l                                       ; $4a02: $65
    or e                                          ; $4a03: $b3
    ld h, e                                       ; $4a04: $63
    dec h                                         ; $4a05: $25
    sub h                                         ; $4a06: $94
    rst $30                                       ; $4a07: $f7
    rlca                                          ; $4a08: $07
    db $db                                        ; $4a09: $db
    add h                                         ; $4a0a: $84
    db $d3                                        ; $4a0b: $d3
    ld [hl], l                                    ; $4a0c: $75
    ld h, l                                       ; $4a0d: $65
    or e                                          ; $4a0e: $b3
    ld h, e                                       ; $4a0f: $63
    dec h                                         ; $4a10: $25
    sub h                                         ; $4a11: $94
    rst $30                                       ; $4a12: $f7
    ld a, l                                       ; $4a13: $7d

jr_066_4a14:
    scf                                           ; $4a14: $37
    push hl                                       ; $4a15: $e5
    ret nc                                        ; $4a16: $d0

    ld l, h                                       ; $4a17: $6c
    ld c, a                                       ; $4a18: $4f
    inc sp                                        ; $4a19: $33
    xor $fb                                       ; $4a1a: $ee $fb
    cp $00                                        ; $4a1c: $fe $00
    ld h, a                                       ; $4a1e: $67
    adc b                                         ; $4a1f: $88
    xor d                                         ; $4a20: $aa
    ld c, a                                       ; $4a21: $4f
    ld l, [hl]                                    ; $4a22: $6e
    ld l, b                                       ; $4a23: $68
    add d                                         ; $4a24: $82
    ld h, [hl]                                    ; $4a25: $66
    jp z, Jump_066_7ad1                           ; $4a26: $ca $d1 $7a

    or c                                          ; $4a29: $b1

Jump_066_4a2a:
    cp h                                          ; $4a2a: $bc
    ld e, l                                       ; $4a2b: $5d
    ret nc                                        ; $4a2c: $d0

    ld a, [$5563]                                 ; $4a2d: $fa $63 $55
    jr jr_066_49e6                                ; $4a30: $18 $b4

    ld c, [hl]                                    ; $4a32: $4e
    ld [hl], $a0                                  ; $4a33: $36 $a0
    ld [hl], c                                    ; $4a35: $71
    ld [hl], a                                    ; $4a36: $77
    db $dd                                        ; $4a37: $dd
    ldh a, [rSB]                                  ; $4a38: $f0 $01
    ld e, e                                       ; $4a3a: $5b
    ld l, b                                       ; $4a3b: $68
    or [hl]                                       ; $4a3c: $b6
    ld [hl], e                                    ; $4a3d: $73
    ld b, e                                       ; $4a3e: $43
    inc de                                        ; $4a3f: $13
    inc [hl]                                      ; $4a40: $34
    ld d, e                                       ; $4a41: $53
    adc [hl]                                      ; $4a42: $8e
    sub [hl]                                      ; $4a43: $96
    add hl, hl                                    ; $4a44: $29
    rst $30                                       ; $4a45: $f7
    ld [hl], $7c                                  ; $4a46: $36 $7c
    db $db                                        ; $4a48: $db
    dec a                                         ; $4a49: $3d
    or $d2                                        ; $4a4a: $f6 $d2
    inc c                                         ; $4a4c: $0c
    ld [hl], e                                    ; $4a4d: $73
    rst $30                                       ; $4a4e: $f7
    jp nz, Jump_066_4ab5                          ; $4a4f: $c2 $b5 $4a

    inc d                                         ; $4a52: $14
    sbc d                                         ; $4a53: $9a
    cp c                                          ; $4a54: $b9
    ld h, d                                       ; $4a55: $62
    ld e, c                                       ; $4a56: $59
    ld b, l                                       ; $4a57: $45
    call z, $eacf                                 ; $4a58: $cc $cf $ea
    ld h, h                                       ; $4a5b: $64
    dec a                                         ; $4a5c: $3d
    di                                            ; $4a5d: $f3
    inc sp                                        ; $4a5e: $33
    ld c, h                                       ; $4a5f: $4c
    ld a, l                                       ; $4a60: $7d
    ld e, b                                       ; $4a61: $58
    ld a, b                                       ; $4a62: $78
    ld h, c                                       ; $4a63: $61
    xor $0f                                       ; $4a64: $ee $0f
    sub a                                         ; $4a66: $97
    jr c, @-$36                                   ; $4a67: $38 $c8

    xor [hl]                                      ; $4a69: $ae
    dec hl                                        ; $4a6a: $2b
    ld d, e                                       ; $4a6b: $53
    ld c, $0b                                     ; $4a6c: $0e $0b
    sbc d                                         ; $4a6e: $9a
    inc e                                         ; $4a6f: $1c
    add hl, bc                                    ; $4a70: $09
    reti                                          ; $4a71: $d9


    add b                                         ; $4a72: $80
    jp c, $9e68                                   ; $4a73: $da $68 $9e

    ld b, $67                                     ; $4a76: $06 $67
    ld d, e                                       ; $4a78: $53
    ld l, $6f                                     ; $4a79: $2e $6f
    ld d, e                                       ; $4a7b: $53

jr_066_4a7c:
    inc de                                        ; $4a7c: $13
    ld l, c                                       ; $4a7d: $69
    ld hl, sp-$2f                                 ; $4a7e: $f8 $d1
    sub h                                         ; $4a80: $94
    ld b, e                                       ; $4a81: $43
    dec h                                         ; $4a82: $25
    ld a, [hl-]                                   ; $4a83: $3a
    ld bc, $f78f                                  ; $4a84: $01 $8f $f7
    rlca                                          ; $4a87: $07

jr_066_4a88:
    ld h, a                                       ; $4a88: $67
    ld [hl], h                                    ; $4a89: $74
    ld b, a                                       ; $4a8a: $47
    and h                                         ; $4a8b: $a4
    rrca                                          ; $4a8c: $0f
    ld d, c                                       ; $4a8d: $51
    ld a, l                                       ; $4a8e: $7d
    dec de                                        ; $4a8f: $1b
    cpl                                           ; $4a90: $2f
    ld d, h                                       ; $4a91: $54
    rst $00                                       ; $4a92: $c7
    ld a, [de]                                    ; $4a93: $1a
    ld d, b                                       ; $4a94: $50
    ld a, a                                       ; $4a95: $7f
    sub $1f                                       ; $4a96: $d6 $1f
    inc c                                         ; $4a98: $0c
    dec l                                         ; $4a99: $2d
    cp d                                          ; $4a9a: $ba
    db $ec                                        ; $4a9b: $ec
    ld d, $60                                     ; $4a9c: $16 $60
    dec c                                         ; $4a9e: $0d

Jump_066_4a9f:
    add sp, -$72                                  ; $4a9f: $e8 $8e
    ld h, l                                       ; $4aa1: $65
    ld h, a                                       ; $4aa2: $67
    ld c, [hl]                                    ; $4aa3: $4e
    jp nz, $bc5e                                  ; $4aa4: $c2 $5e $bc

    ld a, e                                       ; $4aa7: $7b
    add hl, de                                    ; $4aa8: $19
    ld h, h                                       ; $4aa9: $64
    ld a, a                                       ; $4aaa: $7f
    rst $30                                       ; $4aab: $f7
    ld [bc], a                                    ; $4aac: $02
    jp $1ff4                                      ; $4aad: $c3 $f4 $1f


    ld e, c                                       ; $4ab0: $59
    inc l                                         ; $4ab1: $2c
    cp b                                          ; $4ab2: $b8
    cp e                                          ; $4ab3: $bb
    cp l                                          ; $4ab4: $bd

Jump_066_4ab5:
    ld h, c                                       ; $4ab5: $61
    sbc d                                         ; $4ab6: $9a
    sbc l                                         ; $4ab7: $9d
    ld a, c                                       ; $4ab8: $79
    jr @+$35                                      ; $4ab9: $18 $33

    cp d                                          ; $4abb: $ba
    xor [hl]                                      ; $4abc: $ae
    db $d3                                        ; $4abd: $d3
    ld c, e                                       ; $4abe: $4b
    call c, $c333                                 ; $4abf: $dc $33 $c3
    or d                                          ; $4ac2: $b2
    sbc h                                         ; $4ac3: $9c
    ld e, [hl]                                    ; $4ac4: $5e
    ld b, h                                       ; $4ac5: $44
    ld a, l                                       ; $4ac6: $7d
    sub c                                         ; $4ac7: $91
    dec a                                         ; $4ac8: $3d
    rla                                           ; $4ac9: $17
    ld e, [hl]                                    ; $4aca: $5e
    jr z, jr_066_4a88                             ; $4acb: $28 $bb

    ld a, c                                       ; $4acd: $79
    ld h, d                                       ; $4ace: $62
    ld [hl], $96                                  ; $4acf: $36 $96
    ld e, d                                       ; $4ad1: $5a
    ld [hl], c                                    ; $4ad2: $71
    set 2, b                                      ; $4ad3: $cb $d0
    ld b, $6a                                     ; $4ad5: $06 $6a
    cpl                                           ; $4ad7: $2f
    inc sp                                        ; $4ad8: $33
    xor h                                         ; $4ad9: $ac
    xor b                                         ; $4ada: $a8
    ld [hl], a                                    ; $4adb: $77
    rst $08                                       ; $4adc: $cf
    ld a, l                                       ; $4add: $7d
    cp e                                          ; $4ade: $bb
    jr nz, jr_066_4a7c                            ; $4adf: $20 $9b

    ld [hl], d                                    ; $4ae1: $72
    add sp, $74                                   ; $4ae2: $e8 $74
    ld b, a                                       ; $4ae4: $47
    and h                                         ; $4ae5: $a4
    adc a                                         ; $4ae6: $8f
    and [hl]                                      ; $4ae7: $a6
    inc e                                         ; $4ae8: $1c
    db $ec                                        ; $4ae9: $ec
    or c                                          ; $4aea: $b1
    adc b                                         ; $4aeb: $88
    ld a, [$ad22]                                 ; $4aec: $fa $22 $ad
    ld d, b                                       ; $4aef: $50
    ld h, l                                       ; $4af0: $65
    jp $ffd3                                      ; $4af1: $c3 $d3 $ff


    ld sp, hl                                     ; $4af4: $f9
    res 1, e                                      ; $4af5: $cb $8b
    cp h                                          ; $4af7: $bc
    ccf                                           ; $4af8: $3f
    rst $20                                       ; $4af9: $e7
    cp l                                          ; $4afa: $bd
    sub h                                         ; $4afb: $94
    jp Jump_066_642b                              ; $4afc: $c3 $2b $64


    rst $08                                       ; $4aff: $cf
    or a                                          ; $4b00: $b7
    sbc l                                         ; $4b01: $9d
    ld e, [hl]                                    ; $4b02: $5e
    rst $28                                       ; $4b03: $ef
    adc e                                         ; $4b04: $8b
    ld h, c                                       ; $4b05: $61
    ld l, h                                       ; $4b06: $6c

jr_066_4b07:
    jp Jump_066_5b07                              ; $4b07: $c3 $07 $5b


    db $dd                                        ; $4b0a: $dd
    bit 2, e                                      ; $4b0b: $cb $53
    rrca                                          ; $4b0d: $0f
    and h                                         ; $4b0e: $a4
    xor b                                         ; $4b0f: $a8
    sub a                                         ; $4b10: $97
    ld c, [hl]                                    ; $4b11: $4e
    call c, Call_000_01f0                         ; $4b12: $dc $f0 $01
    ld d, a                                       ; $4b15: $57
    ldh a, [rBCPD]                                ; $4b16: $f0 $69
    cp l                                          ; $4b18: $bd
    rst $28                                       ; $4b19: $ef
    and a                                         ; $4b1a: $a7
    push af                                       ; $4b1b: $f5
    rra                                           ; $4b1c: $1f
    reti                                          ; $4b1d: $d9


    inc a                                         ; $4b1e: $3c
    ld h, c                                       ; $4b1f: $61
    or h                                          ; $4b20: $b4
    ld [hl], c                                    ; $4b21: $71
    ld [hl], a                                    ; $4b22: $77
    db $dd                                        ; $4b23: $dd
    ldh a, [rSB]                                  ; $4b24: $f0 $01
    sub a                                         ; $4b26: $97
    ld c, l                                       ; $4b27: $4d
    jr jr_066_4b07                                ; $4b28: $18 $dd

    call nc, $2073                                ; $4b2a: $d4 $73 $20
    rst $28                                       ; $4b2d: $ef
    ei                                            ; $4b2e: $fb
    xor [hl]                                      ; $4b2f: $ae
    sub e                                         ; $4b30: $93
    rst $30                                       ; $4b31: $f7
    ld a, l                                       ; $4b32: $7d
    scf                                           ; $4b33: $37
    add hl, hl                                    ; $4b34: $29
    push hl                                       ; $4b35: $e5
    ld a, l                                       ; $4b36: $7d
    rst $18                                       ; $4b37: $df
    rra                                           ; $4b38: $1f
    ld [c], a                                     ; $4b39: $e2
    ld d, l                                       ; $4b3a: $55

jr_066_4b3b:
    inc l                                         ; $4b3b: $2c
    ld hl, sp-$29                                 ; $4b3c: $f8 $d7
    dec bc                                        ; $4b3e: $0b
    and a                                         ; $4b3f: $a7
    ret nc                                        ; $4b40: $d0

    cp h                                          ; $4b41: $bc
    sub $7f                                       ; $4b42: $d6 $7f
    and h                                         ; $4b44: $a4
    cp a                                          ; $4b45: $bf
    jr nz, jr_066_4b3b                            ; $4b46: $20 $f3

    xor $39                                       ; $4b48: $ee $39
    sub b                                         ; $4b4a: $90
    dec de                                        ; $4b4b: $1b
    ld d, a                                       ; $4b4c: $57
    cpl                                           ; $4b4d: $2f
    add [hl]                                      ; $4b4e: $86
    pop de                                        ; $4b4f: $d1
    or d                                          ; $4b50: $b2
    ld c, [hl]                                    ; $4b51: $4e
    ld [hl], $ce                                  ; $4b52: $36 $ce
    ld l, d                                       ; $4b54: $6a
    jp z, $8538                                   ; $4b55: $ca $38 $85

    db $ec                                        ; $4b58: $ec
    sub [hl]                                      ; $4b59: $96
    ld c, c                                       ; $4b5a: $49
    dec bc                                        ; $4b5b: $0b
    and d                                         ; $4b5c: $a2
    ld h, l                                       ; $4b5d: $65
    db $dd                                        ; $4b5e: $dd
    ret nc                                        ; $4b5f: $d0

    ld c, e                                       ; $4b60: $4b
    inc e                                         ; $4b61: $1c
    sbc d                                         ; $4b62: $9a
    ld de, $ec93                                  ; $4b63: $11 $93 $ec
    adc e                                         ; $4b66: $8b
    cp e                                          ; $4b67: $bb
    db $fd                                        ; $4b68: $fd
    ld l, a                                       ; $4b69: $6f
    ld a, [hl-]                                   ; $4b6a: $3a
    push af                                       ; $4b6b: $f5
    jr nc, @-$58                                  ; $4b6c: $30 $a6

    inc e                                         ; $4b6e: $1c
    ld [hl-], a                                   ; $4b6f: $32
    xor $0f                                       ; $4b70: $ee $0f
    rst $20                                       ; $4b72: $e7
    ld b, d                                       ; $4b73: $42
    ld a, l                                       ; $4b74: $7d
    cp $49                                        ; $4b75: $fe $49
    ret z                                         ; $4b77: $c8

    adc l                                         ; $4b78: $8d
    adc d                                         ; $4b79: $8a
    ld a, [$7634]                                 ; $4b7a: $fa $34 $76
    cp d                                          ; $4b7d: $ba
    add e                                         ; $4b7e: $83
    adc e                                         ; $4b7f: $8b
    ld [hl], b                                    ; $4b80: $70
    ld a, [hl-]                                   ; $4b81: $3a
    xor [hl]                                      ; $4b82: $ae
    inc [hl]                                      ; $4b83: $34
    ld a, e                                       ; $4b84: $7b
    ld a, [$6e53]                                 ; $4b85: $fa $53 $6e
    ld d, h                                       ; $4b88: $54
    sub h                                         ; $4b89: $94
    adc l                                         ; $4b8a: $8d
    jp nz, $c2a9                                  ; $4b8b: $c2 $a9 $c2

    xor d                                         ; $4b8e: $aa
    ld e, b                                       ; $4b8f: $58
    ldh a, [rIE]                                  ; $4b90: $f0 $ff
    ld l, a                                       ; $4b92: $6f
    ld [hl+], a                                   ; $4b93: $22
    jp $86e8                                      ; $4b94: $c3 $e8 $86


    rrca                                          ; $4b97: $0f
    db $db                                        ; $4b98: $db
    add h                                         ; $4b99: $84
    db $d3                                        ; $4b9a: $d3
    db $e4                                        ; $4b9b: $e4
    ld e, d                                       ; $4b9c: $5a
    inc sp                                        ; $4b9d: $33
    and h                                         ; $4b9e: $a4
    ccf                                           ; $4b9f: $3f
    push af                                       ; $4ba0: $f5
    ld l, c                                       ; $4ba1: $69
    xor h                                         ; $4ba2: $ac
    sub a                                         ; $4ba3: $97
    dec bc                                        ; $4ba4: $0b
    ld c, l                                       ; $4ba5: $4d
    call nc, $988c                                ; $4ba6: $d4 $8c $98
    sbc h                                         ; $4ba9: $9c
    ld b, $54                                     ; $4baa: $06 $54
    ld h, c                                       ; $4bac: $61
    ld d, l                                       ; $4bad: $55
    inc l                                         ; $4bae: $2c
    ld hl, sp-$01                                 ; $4baf: $f8 $ff

jr_066_4bb1:
    scf                                           ; $4bb1: $37
    sub c                                         ; $4bb2: $91
    ld h, c                                       ; $4bb3: $61
    xor $0f                                       ; $4bb4: $ee $0f
    db $db                                        ; $4bb6: $db
    add h                                         ; $4bb7: $84
    db $d3                                        ; $4bb8: $d3
    db $e4                                        ; $4bb9: $e4
    ld e, d                                       ; $4bba: $5a
    inc hl                                        ; $4bbb: $23
    inc bc                                        ; $4bbc: $03
    db $eb                                        ; $4bbd: $eb
    db $d3                                        ; $4bbe: $d3
    ld e, b                                       ; $4bbf: $58

jr_066_4bc0:
    cpl                                           ; $4bc0: $2f
    ld [hl], a                                    ; $4bc1: $77
    pop bc                                        ; $4bc2: $c1
    jp z, Jump_066_7b94                           ; $4bc3: $ca $94 $7b

    ld [hl], a                                    ; $4bc6: $77
    push bc                                       ; $4bc7: $c5
    bit 7, a                                      ; $4bc8: $cb $7f
    cp l                                          ; $4bca: $bd
    ld [hl], b                                    ; $4bcb: $70
    ld a, [bc]                                    ; $4bcc: $0a
    call $cd6b                                    ; $4bcd: $cd $6b $cd
    inc de                                        ; $4bd0: $13
    ret c                                         ; $4bd1: $d8

    jr c, jr_066_4bb1                             ; $4bd2: $38 $dd

    pop bc                                        ; $4bd4: $c1
    ld b, l                                       ; $4bd5: $45
    jr c, @-$07                                   ; $4bd6: $38 $f7

    rlca                                          ; $4bd8: $07
    dec sp                                        ; $4bd9: $3b
    ld d, b                                       ; $4bda: $50
    rst $18                                       ; $4bdb: $df
    ldh a, [$3f]                                  ; $4bdc: $f0 $3f
    and l                                         ; $4bde: $a5
    ld b, c                                       ; $4bdf: $41
    dec de                                        ; $4be0: $1b
    ld d, b                                       ; $4be1: $50
    daa                                           ; $4be2: $27
    ld e, c                                       ; $4be3: $59
    rst $08                                       ; $4be4: $cf
    inc l                                         ; $4be5: $2c
    ld a, b                                       ; $4be6: $78
    xor h                                         ; $4be7: $ac
    xor l                                         ; $4be8: $ad
    ld sp, hl                                     ; $4be9: $f9
    cpl                                           ; $4bea: $2f
    or b                                          ; $4beb: $b0
    ld a, $8d                                     ; $4bec: $3e $8d
    sbc l                                         ; $4bee: $9d
    and [hl]                                      ; $4bef: $a6
    call c, Call_066_798b                         ; $4bf0: $dc $8b $79
    jp z, Jump_066_6818                           ; $4bf3: $ca $18 $68

    and d                                         ; $4bf6: $a2
    ld h, $d7                                     ; $4bf7: $26 $d7
    ld [$eb24], a                                 ; $4bf9: $ea $24 $eb
    adc a                                         ; $4bfc: $8f
    ld h, l                                       ; $4bfd: $65
    ld d, [hl]                                    ; $4bfe: $56
    xor [hl]                                      ; $4bff: $ae
    and l                                         ; $4c00: $a5
    rst $18                                       ; $4c01: $df
    rst $08                                       ; $4c02: $cf
    add $e9                                       ; $4c03: $c6 $e9
    ccf                                           ; $4c05: $3f
    ld h, [hl]                                    ; $4c06: $66
    ld [$4d63], sp                                ; $4c07: $08 $63 $4d
    add hl, sp                                    ; $4c0a: $39
    inc [hl]                                      ; $4c0b: $34
    and e                                         ; $4c0c: $a3
    dec bc                                        ; $4c0d: $0b
    ld d, [hl]                                    ; $4c0e: $56
    db $ec                                        ; $4c0f: $ec
    or d                                          ; $4c10: $b2
    halt                                          ; $4c11: $76
    ld a, a                                       ; $4c12: $7f
    db $db                                        ; $4c13: $db
    cp e                                          ; $4c14: $bb
    inc hl                                        ; $4c15: $23
    jp nc, Jump_066_7d47                          ; $4c16: $d2 $47 $7d

    ld a, [de]                                    ; $4c19: $1a
    ld a, [hl]                                    ; $4c1a: $7e
    inc d                                         ; $4c1b: $14
    sbc d                                         ; $4c1c: $9a
    ld l, c                                       ; $4c1d: $69
    add l                                         ; $4c1e: $85
    ld l, h                                       ; $4c1f: $6c
    sbc [hl]                                      ; $4c20: $9e
    jr nc, jr_066_4bc0                            ; $4c21: $30 $9d

    ld l, $0c                                     ; $4c23: $2e $0c
    ld d, e                                       ; $4c25: $53
    ld a, a                                       ; $4c26: $7f
    inc l                                         ; $4c27: $2c
    push hl                                       ; $4c28: $e5
    ld d, b                                       ; $4c29: $50
    and l                                         ; $4c2a: $a5
    rlca                                          ; $4c2b: $07
    sbc l                                         ; $4c2c: $9d
    jr jr_066_4c7f                                ; $4c2d: $18 $50

    ld l, b                                       ; $4c2f: $68
    ld d, $4e                                     ; $4c30: $16 $4e
    xor c                                         ; $4c32: $a9
    push af                                       ; $4c33: $f5

Jump_066_4c34:
    rst $00                                       ; $4c34: $c7
    ld [hl-], a                                   ; $4c35: $32
    or l                                          ; $4c36: $b5
    ld [hl], d                                    ; $4c37: $72
    dec l                                         ; $4c38: $2d
    db $fd                                        ; $4c39: $fd
    ld a, [hl]                                    ; $4c3a: $7e
    ld [$f15d], a                                 ; $4c3b: $ea $5d $f1
    ld b, $68                                     ; $4c3e: $06 $68
    ld b, [hl]                                    ; $4c40: $46
    rst $38                                       ; $4c41: $ff
    ld sp, $1843                                  ; $4c42: $31 $43 $18
    db $eb                                        ; $4c45: $eb
    cp d                                          ; $4c46: $ba
    or d                                          ; $4c47: $b2
    add hl, hl                                    ; $4c48: $29
    add a                                         ; $4c49: $87
    ld h, d                                       ; $4c4a: $62
    ld b, c                                       ; $4c4b: $41
    sbc l                                         ; $4c4c: $9d
    or d                                          ; $4c4d: $b2
    sub d                                         ; $4c4e: $92
    ld c, a                                       ; $4c4f: $4f
    rst $28                                       ; $4c50: $ef
    rrca                                          ; $4c51: $0f
    ld [c], a                                     ; $4c52: $e2
    ld d, l                                       ; $4c53: $55
    ld l, $6c                                     ; $4c54: $2e $6c
    ld b, b                                       ; $4c56: $40
    jp hl                                         ; $4c57: $e9


    ld d, $6a                                     ; $4c58: $16 $6a
    pop de                                        ; $4c5a: $d1
    add hl, hl                                    ; $4c5b: $29
    db $f4                                        ; $4c5c: $f4
    or a                                          ; $4c5d: $b7
    sub a                                         ; $4c5e: $97
    ld [hl], a                                    ; $4c5f: $77
    or a                                          ; $4c60: $b7
    scf                                           ; $4c61: $37
    dec c                                         ; $4c62: $0d
    db $d3                                        ; $4c63: $d3
    dec e                                         ; $4c64: $1d
    sub c                                         ; $4c65: $91
    ld a, $aa                                     ; $4c66: $3e $aa
    jp nz, Jump_066_5329                          ; $4c68: $c2 $29 $53

    xor $dd                                       ; $4c6b: $ee $dd
    dec a                                         ; $4c6d: $3d
    and e                                         ; $4c6e: $a3
    ld d, e                                       ; $4c6f: $53
    rst $18                                       ; $4c70: $df
    add $0b                                       ; $4c71: $c6 $0b
    push de                                       ; $4c73: $d5
    or c                                          ; $4c74: $b1
    ld c, d                                       ; $4c75: $4a
    ld a, $2d                                     ; $4c76: $3e $2d
    ld d, l                                       ; $4c78: $55
    sbc l                                         ; $4c79: $9d
    ld h, [hl]                                    ; $4c7a: $66
    add [hl]                                      ; $4c7b: $86
    or c                                          ; $4c7c: $b1
    ld b, $16                                     ; $4c7d: $06 $16

jr_066_4c7f:
    ld a, [$c2cf]                                 ; $4c7f: $fa $cf $c2
    ei                                            ; $4c82: $fb
    inc bc                                        ; $4c83: $03

jr_066_4c84:
    db $db                                        ; $4c84: $db
    dec bc                                        ; $4c85: $0b
    db $fd                                        ; $4c86: $fd
    db $ed                                        ; $4c87: $ed
    push hl                                       ; $4c88: $e5
    db $dd                                        ; $4c89: $dd
    db $ed                                        ; $4c8a: $ed
    ld c, l                                       ; $4c8b: $4d
    inc bc                                        ; $4c8c: $03
    cp e                                          ; $4c8d: $bb
    push af                                       ; $4c8e: $f5
    ccf                                           ; $4c8f: $3f
    ld a, a                                       ; $4c90: $7f
    ld [hl+], a                                   ; $4c91: $22
    db $d3                                        ; $4c92: $d3
    ld e, h                                       ; $4c93: $5c
    sub [hl]                                      ; $4c94: $96
    xor [hl]                                      ; $4c95: $ae
    ld l, e                                       ; $4c96: $6b
    add h                                         ; $4c97: $84
    ld h, [hl]                                    ; $4c98: $66
    sub h                                         ; $4c99: $94
    ld sp, $eed0                                  ; $4c9a: $31 $d0 $ee
    ld l, [hl]                                    ; $4c9d: $6e
    ld [hl], e                                    ; $4c9e: $73
    pop af                                        ; $4c9f: $f1
    ld h, a                                       ; $4ca0: $67
    inc sp                                        ; $4ca1: $33
    jp z, Jump_066_546c                           ; $4ca2: $ca $6c $54

    ld l, b                                       ; $4ca5: $68
    ld a, l                                       ; $4ca6: $7d
    ld a, [de]                                    ; $4ca7: $1a
    ld c, e                                       ; $4ca8: $4b
    dec l                                         ; $4ca9: $2d
    db $dd                                        ; $4caa: $dd
    ld b, d                                       ; $4cab: $42
    ld l, l                                       ; $4cac: $6d
    ret nz                                        ; $4cad: $c0

    jp nz, $1f0d                                  ; $4cae: $c2 $0d $1f

    sub a                                         ; $4cb1: $97
    ld b, c                                       ; $4cb2: $41
    or $77                                        ; $4cb3: $f6 $77
    cpl                                           ; $4cb5: $2f
    jr nc, jr_066_4c84                            ; $4cb6: $30 $cc

    ld e, l                                       ; $4cb8: $5d
    ld [hl], c                                    ; $4cb9: $71
    xor l                                         ; $4cba: $ad
    ld [hl], d                                    ; $4cbb: $72
    and c                                         ; $4cbc: $a1
    ld [hl], $a0                                  ; $4cbd: $36 $a0
    ld [hl], h                                    ; $4cbf: $74
    dec bc                                        ; $4cc0: $0b
    adc e                                         ; $4cc1: $8b
    ld b, d                                       ; $4cc2: $42
    ld a, a                                       ; $4cc3: $7f
    ld a, e                                       ; $4cc4: $7b
    ld a, c                                       ; $4cc5: $79
    ld [hl], a                                    ; $4cc6: $77
    ld a, e                                       ; $4cc7: $7b
    and e                                         ; $4cc8: $a3
    ld c, l                                       ; $4cc9: $4d
    add hl, sp                                    ; $4cca: $39
    inc [hl]                                      ; $4ccb: $34
    ld a, [bc]                                    ; $4ccc: $0a
    and a                                         ; $4ccd: $a7
    ld a, [hl+]                                   ; $4cce: $2a
    sbc h                                         ; $4ccf: $9c
    cp d                                          ; $4cd0: $ba
    db $fc                                        ; $4cd1: $fc
    sub [hl]                                      ; $4cd2: $96
    or a                                          ; $4cd3: $b7
    adc e                                         ; $4cd4: $8b
    ld h, c                                       ; $4cd5: $61
    or h                                          ; $4cd6: $b4
    ret nc                                        ; $4cd7: $d0

    ld a, a                                       ; $4cd8: $7f
    ld h, d                                       ; $4cd9: $62
    add b                                         ; $4cda: $80
    xor h                                         ; $4cdb: $ac
    ld [hl], h                                    ; $4cdc: $74
    cpl                                           ; $4cdd: $2f
    ld d, e                                       ; $4cde: $53
    cp e                                          ; $4cdf: $bb

jr_066_4ce0:
    jp nz, Jump_066_682e                          ; $4ce0: $c2 $2e $68

    rst $38                                       ; $4ce3: $ff
    ld a, c                                       ; $4ce4: $79
    ld c, d                                       ; $4ce5: $4a
    dec l                                         ; $4ce6: $2d
    ld d, l                                       ; $4ce7: $55
    sbc l                                         ; $4ce8: $9d
    ld h, [hl]                                    ; $4ce9: $66
    add [hl]                                      ; $4cea: $86
    ld sp, $fdea                                  ; $4ceb: $31 $ea $fd
    ld bc, $84db                                  ; $4cee: $01 $db $84
    ld d, e                                       ; $4cf1: $53
    ld l, b                                       ; $4cf2: $68
    ld e, $57                                     ; $4cf3: $1e $57
    ld h, [hl]                                    ; $4cf5: $66
    call nz, $dd3c                                ; $4cf6: $c4 $3c $dd
    ld e, a                                       ; $4cf9: $5f
    ld c, e                                       ; $4cfa: $4b
    jp hl                                         ; $4cfb: $e9


    cp e                                          ; $4cfc: $bb
    dec h                                         ; $4cfd: $25
    adc c                                         ; $4cfe: $89
    ld c, h                                       ; $4cff: $4c
    xor l                                         ; $4d00: $ad
    ld a, $e9                                     ; $4d01: $3e $e9
    cpl                                           ; $4d03: $2f
    ld d, b                                       ; $4d04: $50
    adc c                                         ; $4d05: $89
    sbc b                                         ; $4d06: $98
    ld d, c                                       ; $4d07: $51
    sbc a                                         ; $4d08: $9f
    add $ae                                       ; $4d09: $c6 $ae
    ld h, b                                       ; $4d0b: $60
    ld c, l                                       ; $4d0c: $4d
    add hl, sp                                    ; $4d0d: $39
    ld l, $65                                     ; $4d0e: $2e $65
    sub c                                         ; $4d10: $91
    ld [hl], d                                    ; $4d11: $72
    rst $08                                       ; $4d12: $cf

jr_066_4d13:
    ld h, a                                       ; $4d13: $67
    ld d, e                                       ; $4d14: $53
    ld c, $5d                                     ; $4d15: $0e $5d
    pop af                                        ; $4d17: $f1
    ld [hl], l                                    ; $4d18: $75
    rst $38                                       ; $4d19: $ff
    ld a, d                                       ; $4d1a: $7a
    dec c                                         ; $4d1b: $0d
    ld sp, $71a3                                  ; $4d1c: $31 $a3 $71
    or h                                          ; $4d1f: $b4
    cp $c4                                        ; $4d20: $fe $c4
    inc a                                         ; $4d22: $3c
    ld a, d                                       ; $4d23: $7a
    rst $30                                       ; $4d24: $f7
    db $fc                                        ; $4d25: $fc
    pop de                                        ; $4d26: $d1
    inc a                                         ; $4d27: $3c
    dec c                                         ; $4d28: $0d
    jr z, jr_066_4ce0                             ; $4d29: $28 $b5

    db $e3                                        ; $4d2b: $e3
    ld d, c                                       ; $4d2c: $51
    ret c                                         ; $4d2d: $d8

    adc d                                         ; $4d2e: $8a
    ld d, [hl]                                    ; $4d2f: $56

Jump_066_4d30:
    ld a, a                                       ; $4d30: $7f
    inc l                                         ; $4d31: $2c
    push hl                                       ; $4d32: $e5
    ld d, b                                       ; $4d33: $50
    dec d                                         ; $4d34: $15

Jump_066_4d35:
    ld c, [hl]                                    ; $4d35: $4e
    dec a                                         ; $4d36: $3d
    or $96                                        ; $4d37: $f6 $96
    inc h                                         ; $4d39: $24
    ld h, e                                       ; $4d3a: $63
    add [hl]                                      ; $4d3b: $86
    sbc $1f                                       ; $4d3c: $de $1f
    ld e, e                                       ; $4d3e: $5b
    sub $9a                                       ; $4d3f: $d6 $9a
    ld [hl], d                                    ; $4d41: $72
    ld e, h                                       ; $4d42: $5c
    ld d, d                                       ; $4d43: $52
    ld c, $d6                                     ; $4d44: $0e $d6
    ld a, a                                       ; $4d46: $7f
    sbc [hl]                                      ; $4d47: $9e
    or d                                          ; $4d48: $b2
    jp nc, Jump_000_3cbd                          ; $4d49: $d2 $bd $3c

    add l                                         ; $4d4c: $85
    ld h, [hl]                                    ; $4d4d: $66
    ld h, e                                       ; $4d4e: $63
    ld c, h                                       ; $4d4f: $4c
    or d                                          ; $4d50: $b2
    ld [hl], c                                    ; $4d51: $71
    ld [$19a1], a                                 ; $4d52: $ea $a1 $19
    ld a, a                                       ; $4d55: $7f
    pop hl                                        ; $4d56: $e1
    inc [hl]                                      ; $4d57: $34
    ld d, b                                       ; $4d58: $50
    cp e                                          ; $4d59: $bb
    and d                                         ; $4d5a: $a2
    ld [$a338], a                                 ; $4d5b: $ea $38 $a3
    ld [hl], $4c                                  ; $4d5e: $36 $4c
    rst $08                                       ; $4d60: $cf
    ld a, e                                       ; $4d61: $7b
    res 3, a                                      ; $4d62: $cb $9f
    cp h                                          ; $4d64: $bc
    ld a, e                                       ; $4d65: $7b
    dec b                                         ; $4d66: $05
    inc b                                         ; $4d67: $04
    call z, Call_000_29c6                         ; $4d68: $cc $c6 $29
    ld h, d                                       ; $4d6b: $62
    ld [hl], $5a                                  ; $4d6c: $36 $5a
    sub a                                         ; $4d6e: $97
    dec [hl]                                      ; $4d6f: $35
    ld d, c                                       ; $4d70: $51
    dec h                                         ; $4d71: $25
    or l                                          ; $4d72: $b5
    ld d, c                                       ; $4d73: $51
    jr c, jr_066_4d13                             ; $4d74: $38 $9d

    xor [hl]                                      ; $4d76: $ae
    jr nz, jr_066_4dd9                            ; $4d77: $20 $60

    jp z, $9f2a                                   ; $4d79: $ca $2a $9f

    db $dd                                        ; $4d7c: $dd
    rra                                           ; $4d7d: $1f
    ld [c], a                                     ; $4d7e: $e2
    jp c, $9af4                                   ; $4d7f: $da $f4 $9a

    and l                                         ; $4d82: $a5
    db $dd                                        ; $4d83: $dd
    ld b, d                                       ; $4d84: $42
    xor l                                         ; $4d85: $ad
    nop                                           ; $4d86: $00
    rla                                           ; $4d87: $17
    di                                            ; $4d88: $f3
    ld [hl], h                                    ; $4d89: $74
    rst $38                                       ; $4d8a: $ff
    ld a, [hl+]                                   ; $4d8b: $2a
    rla                                           ; $4d8c: $17
    ld [hl], $8c                                  ; $4d8d: $36 $8c
    sub $b7                                       ; $4d8f: $d6 $b7
    pop af                                        ; $4d91: $f1
    ld b, d                                       ; $4d92: $42
    ld [hl], l                                    ; $4d93: $75
    inc c                                         ; $4d94: $0c
    jp c, $a3b4                                   ; $4d95: $da $b4 $a3

    dec b                                         ; $4d98: $05
    jp z, $feb2                                   ; $4d99: $ca $b2 $fe

    ld e, b                                       ; $4d9c: $58
    ld h, [hl]                                    ; $4d9d: $66
    add e                                         ; $4d9e: $83
    inc sp                                        ; $4d9f: $33
    add $8c                                       ; $4da0: $c6 $8c
    ld c, [hl]                                    ; $4da2: $4e

Call_066_4da3:
    jp $a8a3                                      ; $4da3: $c3 $a3 $a8


    sub d                                         ; $4da6: $92
    jp c, Jump_000_1bfd                           ; $4da7: $da $fd $1b

    rst $20                                       ; $4daa: $e7
    ld h, l                                       ; $4dab: $65
    inc [hl]                                      ; $4dac: $34
    adc h                                         ; $4dad: $8c
    ld c, c                                       ; $4dae: $49
    ret z                                         ; $4daf: $c8

    ei                                            ; $4db0: $fb
    inc bc                                        ; $4db1: $03
    ld h, a                                       ; $4db2: $67
    ld d, h                                       ; $4db3: $54
    sbc l                                         ; $4db4: $9d
    ccf                                           ; $4db5: $3f
    sbc d                                         ; $4db6: $9a
    and a                                         ; $4db7: $a7
    ld c, c                                       ; $4db8: $49
    xor [hl]                                      ; $4db9: $ae
    ld h, b                                       ; $4dba: $60
    ld [hl], l                                    ; $4dbb: $75
    sub d                                         ; $4dbc: $92
    add l                                         ; $4dbd: $85
    cp $0c                                        ; $4dbe: $fe $0c
    or h                                          ; $4dc0: $b4
    rst $00                                       ; $4dc1: $c7
    ld b, d                                       ; $4dc2: $42
    rst $38                                       ; $4dc3: $ff
    adc c                                         ; $4dc4: $89
    pop hl                                        ; $4dc5: $e1
    dec b                                         ; $4dc6: $05
    ld [hl], $42                                  ; $4dc7: $36 $42
    inc sp                                        ; $4dc9: $33
    ld a, [$198f]                                 ; $4dca: $fa $8f $19
    jp nz, Jump_066_7d58                          ; $4dcd: $c2 $58 $7d

    ld a, [de]                                    ; $4dd0: $1a
    dec sp                                        ; $4dd1: $3b
    ld c, l                                       ; $4dd2: $4d
    add hl, sp                                    ; $4dd3: $39
    ld e, d                                       ; $4dd4: $5a
    sbc [hl]                                      ; $4dd5: $9e
    ld [hl-], a                                   ; $4dd6: $32
    ld b, $9a                                     ; $4dd7: $06 $9a

jr_066_4dd9:
    xor b                                         ; $4dd9: $a8
    sub d                                         ; $4dda: $92
    jp c, $9c28                                   ; $4ddb: $da $28 $9c

    ld a, [hl+]                                   ; $4dde: $2a
    ld e, [hl]                                    ; $4ddf: $5e
    and a                                         ; $4de0: $a7
    add hl, hl                                    ; $4de1: $29
    add a                                         ; $4de2: $87
    or d                                          ; $4de3: $b2
    ret nc                                        ; $4de4: $d0

    ld a, a                                       ; $4de5: $7f
    ld h, d                                       ; $4de6: $62
    ret nz                                        ; $4de7: $c0

    db $fd                                        ; $4de8: $fd
    ld bc, $4197                                  ; $4de9: $01 $97 $41
    or $77                                        ; $4dec: $f6 $77
    cpl                                           ; $4dee: $2f
    jr nc, @+$4e                                  ; $4def: $30 $4c

    dec d                                         ; $4df1: $15
    push af                                       ; $4df2: $f5
    adc [hl]                                      ; $4df3: $8e
    ld b, c                                       ; $4df4: $41
    sra c                                         ; $4df5: $cb $29
    db $f4                                        ; $4df7: $f4
    or a                                          ; $4df8: $b7
    sub a                                         ; $4df9: $97
    ld [hl], a                                    ; $4dfa: $77
    or a                                          ; $4dfb: $b7
    scf                                           ; $4dfc: $37
    dec c                                         ; $4dfd: $0d
    db $d3                                        ; $4dfe: $d3
    di                                            ; $4dff: $f3
    sub [hl]                                      ; $4e00: $96
    sub a                                         ; $4e01: $97
    dec b                                         ; $4e02: $05
    cp l                                          ; $4e03: $bd
    ld e, a                                       ; $4e04: $5f
    ldh [$e9], a                                  ; $4e05: $e0 $e9
    ld c, l                                       ; $4e07: $4d
    xor [hl]                                      ; $4e08: $ae
    push de                                       ; $4e09: $d5
    ld c, c                                       ; $4e0a: $49
    sub $28                                       ; $4e0b: $d6 $28
    ld a, l                                       ; $4e0d: $7d
    ld [hl], $4c                                  ; $4e0e: $36 $4c
    inc sp                                        ; $4e10: $33
    db $ec                                        ; $4e11: $ec
    rst $00                                       ; $4e12: $c7
    or e                                          ; $4e13: $b3
    add hl, hl                                    ; $4e14: $29
    ld h, e                                       ; $4e15: $63
    and b                                         ; $4e16: $a0
    ld d, l                                       ; $4e17: $55
    ld b, d                                       ; $4e18: $42
    push hl                                       ; $4e19: $e5
    ld d, h                                       ; $4e1a: $54
    add b                                         ; $4e1b: $80
    adc e                                         ; $4e1c: $8b
    ld a, c                                       ; $4e1d: $79
    cp d                                          ; $4e1e: $ba
    ld a, a                                       ; $4e1f: $7f
    db $fd                                        ; $4e20: $fd
    or c                                          ; $4e21: $b1
    call z, $03fb                                 ; $4e22: $cc $fb $03
    sub a                                         ; $4e25: $97
    ld c, e                                       ; $4e26: $4b
    ld [hl], $40                                  ; $4e27: $36 $40
    sub l                                         ; $4e29: $95
    ld e, d                                       ; $4e2a: $5a
    ld l, b                                       ; $4e2b: $68
    ld e, [hl]                                    ; $4e2c: $5e
    res 1, [hl]                                   ; $4e2d: $cb $8e
    jp c, $da30                                   ; $4e2f: $da $30 $da

    or h                                          ; $4e32: $b4
    dec a                                         ; $4e33: $3d
    rst $28                                       ; $4e34: $ef
    ld l, b                                       ; $4e35: $68
    push de                                       ; $4e36: $d5
    ld sp, hl                                     ; $4e37: $f9
    and e                                         ; $4e38: $a3
    sbc c                                         ; $4e39: $99
    ld [de], a                                    ; $4e3a: $12
    ld sp, $0ba3                                  ; $4e3b: $31 $a3 $0b
    ld d, [hl]                                    ; $4e3e: $56
    inc l                                         ; $4e3f: $2c
    dec sp                                        ; $4e40: $3b
    ld l, $db                                     ; $4e41: $2e $db
    db $f4                                        ; $4e43: $f4
    rra                                           ; $4e44: $1f
    inc sp                                        ; $4e45: $33
    add h                                         ; $4e46: $84
    or c                                          ; $4e47: $b1
    ei                                            ; $4e48: $fb
    inc bc                                        ; $4e49: $03
    sub a                                         ; $4e4a: $97
    res 0, [hl]                                   ; $4e4b: $cb $86
    pop de                                        ; $4e4d: $d1
    and [hl]                                      ; $4e4e: $a6
    db $ed                                        ; $4e4f: $ed
    ld a, c                                       ; $4e50: $79
    ld b, a                                       ; $4e51: $47
    db $eb                                        ; $4e52: $eb
    ld c, a                                       ; $4e53: $4f
    ld b, b                                       ; $4e54: $40
    inc bc                                        ; $4e55: $03
    ld l, l                                       ; $4e56: $6d
    ld h, e                                       ; $4e57: $63
    ld b, [hl]                                    ; $4e58: $46
    dec a                                         ; $4e59: $3d
    or e                                          ; $4e5a: $b3
    ldh [$b1], a                                  ; $4e5b: $e0 $b1
    ld a, $8d                                     ; $4e5d: $3e $8d
    dec e                                         ; $4e5f: $1d
    sub a                                         ; $4e60: $97
    ld l, l                                       ; $4e61: $6d
    jp z, Jump_066_6818                           ; $4e62: $ca $18 $68

    rst $30                                       ; $4e65: $f7
    ld a, l                                       ; $4e66: $7d
    ld d, a                                       ; $4e67: $57
    ld hl, $48ab                                  ; $4e68: $21 $ab $48
    add hl, sp                                    ; $4e6b: $39
    ld e, b                                       ; $4e6c: $58
    dec d                                         ; $4e6d: $15
    sub l                                         ; $4e6e: $95
    db $10                                        ; $4e6f: $10
    inc c                                         ; $4e70: $0c
    cp e                                          ; $4e71: $bb
    ccf                                           ; $4e72: $3f
    db $db                                        ; $4e73: $db
    ld e, h                                       ; $4e74: $5c
    db $fc                                        ; $4e75: $fc
    reti                                          ; $4e76: $d9


    push de                                       ; $4e77: $d5
    ld l, e                                       ; $4e78: $6b
    ld a, h                                       ; $4e79: $7c
    ld sp, $d6ed                                  ; $4e7a: $31 $ed $d6
    ret                                           ; $4e7d: $c9


    ld [hl+], a                                   ; $4e7e: $22
    ld h, [hl]                                    ; $4e7f: $66
    and e                                         ; $4e80: $a3
    dec [hl]                                      ; $4e81: $35
    ld [hl-], a                                   ; $4e82: $32
    push hl                                       ; $4e83: $e5
    or b                                          ; $4e84: $b0
    or b                                          ; $4e85: $b0
    cp $58                                        ; $4e86: $fe $58
    ld h, [hl]                                    ; $4e88: $66
    or e                                          ; $4e89: $b3
    ld sp, $0cfe                                  ; $4e8a: $31 $fe $0c
    xor h                                         ; $4e8d: $ac
    nop                                           ; $4e8e: $00
    rla                                           ; $4e8f: $17
    di                                            ; $4e90: $f3
    sub h                                         ; $4e91: $94
    db $d3                                        ; $4e92: $d3
    ccf                                           ; $4e93: $3f
    ld c, c                                       ; $4e94: $49
    ei                                            ; $4e95: $fb
    rst $20                                       ; $4e96: $e7
    cp $00                                        ; $4e97: $fe $00
    db $db                                        ; $4e99: $db
    add h                                         ; $4e9a: $84
    ld d, e                                       ; $4e9b: $53
    call nz, $d06c                                ; $4e9c: $c4 $6c $d0
    ld b, d                                       ; $4e9f: $42
    sub [hl]                                      ; $4ea0: $96
    ld l, [hl]                                    ; $4ea1: $6e
    and c                                         ; $4ea2: $a1
    ld [hl], $e5                                  ; $4ea3: $36 $e5
    ld d, b                                       ; $4ea5: $50
    ld l, b                                       ; $4ea6: $68
    ld d, $4e                                     ; $4ea7: $16 $4e
    reti                                          ; $4ea9: $d9


    add b                                         ; $4eaa: $80
    ld a, a                                       ; $4eab: $7f
    call z, $7760                                 ; $4eac: $cc $60 $77
    push bc                                       ; $4eaf: $c5
    dec hl                                        ; $4eb0: $2b
    ld sp, hl                                     ; $4eb1: $f9
    add $ea                                       ; $4eb2: $c6 $ea
    db $d3                                        ; $4eb4: $d3
    ld [hl-], a                                   ; $4eb5: $32
    ld a, [de]                                    ; $4eb6: $1a
    ld b, [hl]                                    ; $4eb7: $46
    db $eb                                        ; $4eb8: $eb
    db $db                                        ; $4eb9: $db
    ld a, b                                       ; $4eba: $78
    and c                                         ; $4ebb: $a1
    ld a, [hl-]                                   ; $4ebc: $3a
    ld b, $ad                                     ; $4ebd: $06 $ad
    ld hl, $633f                                  ; $4ebf: $21 $3f $63
    db $fd                                        ; $4ec2: $fd
    adc c                                         ; $4ec3: $89
    ld a, c                                       ; $4ec4: $79
    or h                                          ; $4ec5: $b4
    adc d                                         ; $4ec6: $8a
    adc [hl]                                      ; $4ec7: $8e
    or $c5                                        ; $4ec8: $f6 $c5
    inc c                                         ; $4eca: $0c
    or e                                          ; $4ecb: $b3
    sub c                                         ; $4ecc: $91
    ld a, $0c                                     ; $4ecd: $3e $0c
    ld a, d                                       ; $4ecf: $7a
    ld a, a                                       ; $4ed0: $7f
    sub a                                         ; $4ed1: $97
    ld c, e                                       ; $4ed2: $4b
    sub $3b                                       ; $4ed3: $d6 $3b
    ld h, $59                                     ; $4ed5: $26 $59
    ld e, e                                       ; $4ed7: $5b
    di                                            ; $4ed8: $f3
    ld e, a                                       ; $4ed9: $5f
    ld h, b                                       ; $4eda: $60
    inc bc                                        ; $4edb: $03
    ld a, [$9127]                                 ; $4edc: $fa $27 $91
    and [hl]                                      ; $4edf: $a6
    sub l                                         ; $4ee0: $95
    ld d, e                                       ; $4ee1: $53
    ld b, l                                       ; $4ee2: $45
    jp c, Jump_000_30c5                           ; $4ee3: $da $c5 $30

    ld h, l                                       ; $4ee6: $65
    inc c                                         ; $4ee7: $0c
    or h                                          ; $4ee8: $b4
    xor [hl]                                      ; $4ee9: $ae
    dec hl                                        ; $4eea: $2b
    or e                                          ; $4eeb: $b3
    ld [hl], c                                    ; $4eec: $71
    or l                                          ; $4eed: $b5
    ld c, [hl]                                    ; $4eee: $4e
    dec de                                        ; $4eef: $1b
    ld e, b                                       ; $4ef0: $58
    and e                                         ; $4ef1: $a3
    db $f4                                        ; $4ef2: $f4
    ld e, c                                       ; $4ef3: $59
    add sp, $3f                                   ; $4ef4: $e8 $3f
    ld sp, $c0bc                                  ; $4ef6: $31 $bc $c0
    add $a9                                       ; $4ef9: $c6 $a9
    rst $30                                       ; $4efb: $f7
    ret                                           ; $4efc: $c9


    add [hl]                                      ; $4efd: $86
    jp hl                                         ; $4efe: $e9


    ccf                                           ; $4eff: $3f
    ld h, [hl]                                    ; $4f00: $66
    ld [$f763], sp                                ; $4f01: $08 $63 $f7
    rlca                                          ; $4f04: $07
    sub a                                         ; $4f05: $97
    ld b, c                                       ; $4f06: $41
    or $77                                        ; $4f07: $f6 $77
    cpl                                           ; $4f09: $2f
    jr nc, jr_066_4f58                            ; $4f0a: $30 $4c

    inc hl                                        ; $4f0c: $23
    db $eb                                        ; $4f0d: $eb
    db $d3                                        ; $4f0e: $d3
    ld [hl-], a                                   ; $4f0f: $32
    ld a, [de]                                    ; $4f10: $1a
    rst $00                                       ; $4f11: $c7
    ld [hl-], a                                   ; $4f12: $32
    ld a, [de]                                    ; $4f13: $1a
    and b                                         ; $4f14: $a0
    add hl, de                                    ; $4f15: $19
    db $fd                                        ; $4f16: $fd
    rst $00                                       ; $4f17: $c7
    inc c                                         ; $4f18: $0c
    ld h, c                                       ; $4f19: $61
    db $ec                                        ; $4f1a: $ec
    xor $0e                                       ; $4f1b: $ee $0e
    inc [hl]                                      ; $4f1d: $34
    ld a, [bc]                                    ; $4f1e: $0a
    and a                                         ; $4f1f: $a7
    ld sp, hl                                     ; $4f20: $f9
    xor l                                         ; $4f21: $ad
    ld h, b                                       ; $4f22: $60
    ret nc                                        ; $4f23: $d0

Call_066_4f24:
    cp $ee                                        ; $4f24: $fe $ee
    dec b                                         ; $4f26: $05
    add [hl]                                      ; $4f27: $86
    xor c                                         ; $4f28: $a9
    ccf                                           ; $4f29: $3f
    ld bc, $fe5a                                  ; $4f2a: $01 $5a $fe
    db $f4                                        ; $4f2d: $f4
    ret nc                                        ; $4f2e: $d0

    ld a, [de]                                    ; $4f2f: $1a
    rst $00                                       ; $4f30: $c7
    ld h, l                                       ; $4f31: $65
    sbc e                                         ; $4f32: $9b
    ld [hl-], a                                   ; $4f33: $32

jr_066_4f34:
    ld b, $da                                     ; $4f34: $06 $da
    db $fd                                        ; $4f36: $fd
    ld bc, $1389                                  ; $4f37: $01 $89 $13
    and b                                         ; $4f3a: $a0
    ld b, l                                       ; $4f3b: $45
    db $fc                                        ; $4f3c: $fc
    daa                                           ; $4f3d: $27
    ld h, [hl]                                    ; $4f3e: $66
    and e                                         ; $4f3f: $a3
    dec d                                         ; $4f40: $15
    ld a, [$0c4f]                                 ; $4f41: $fa $4f $0c
    or b                                          ; $4f44: $b0
    daa                                           ; $4f45: $27
    ld h, b                                       ; $4f46: $60
    or h                                          ; $4f47: $b4
    sub b                                         ; $4f48: $90
    ld c, l                                       ; $4f49: $4d
    add hl, sp                                    ; $4f4a: $39
    ld l, $29                                     ; $4f4b: $2e $29
    rlca                                          ; $4f4d: $07
    xor e                                         ; $4f4e: $ab
    ld c, a                                       ; $4f4f: $4f
    bit 5, b                                      ; $4f50: $cb $68
    ld h, b                                       ; $4f52: $60
    and c                                         ; $4f53: $a1
    rst $38                                       ; $4f54: $ff
    inc l                                         ; $4f55: $2c
    cp h                                          ; $4f56: $bc
    cp e                                          ; $4f57: $bb

jr_066_4f58:
    ld e, l                                       ; $4f58: $5d
    set 0, l                                      ; $4f59: $cb $c5
    push bc                                       ; $4f5b: $c5
    pop de                                        ; $4f5c: $d1
    and [hl]                                      ; $4f5d: $a6
    dec e                                         ; $4f5e: $1d
    dec l                                         ; $4f5f: $2d
    ld d, b                                       ; $4f60: $50
    or $9f                                        ; $4f61: $f6 $9f
    and a                                         ; $4f63: $a7
    call nc, $1642                                ; $4f64: $d4 $42 $16
    ld a, [$0c4f]                                 ; $4f67: $fa $4f $0c
    or b                                          ; $4f6a: $b0
    daa                                           ; $4f6b: $27
    ld h, b                                       ; $4f6c: $60
    or h                                          ; $4f6d: $b4
    ld bc, $d01a                                  ; $4f6e: $01 $1a $d0
    sub h                                         ; $4f71: $94
    ld b, e                                       ; $4f72: $43
    or a                                          ; $4f73: $b7
    ld c, h                                       ; $4f74: $4c
    ld e, d                                       ; $4f75: $5a
    db $10                                        ; $4f76: $10
    dec l                                         ; $4f77: $2d
    ld l, e                                       ; $4f78: $6b
    jp hl                                         ; $4f79: $e9


    or c                                          ; $4f7a: $b1
    rst $20                                       ; $4f7b: $e7
    ld [$6163], a                                 ; $4f7c: $ea $63 $61
    ld a, l                                       ; $4f7f: $7d
    ld a, e                                       ; $4f80: $7b
    ld [de], a                                    ; $4f81: $12
    rst $08                                       ; $4f82: $cf
    ret c                                         ; $4f83: $d8

    dec d                                         ; $4f84: $15
    halt                                          ; $4f85: $76
    db $dd                                        ; $4f86: $dd
    rra                                           ; $4f87: $1f
    adc c                                         ; $4f88: $89
    or b                                          ; $4f89: $b0
    or h                                          ; $4f8a: $b4
    adc e                                         ; $4f8b: $8b
    ld a, c                                       ; $4f8c: $79
    ld [hl], $4a                                  ; $4f8d: $36 $4a
    ld [hl], h                                    ; $4f8f: $74
    sbc d                                         ; $4f90: $9a
    ld [hl], d                                    ; $4f91: $72
    xor b                                         ; $4f92: $a8
    jp nz, $9ad6                                  ; $4f93: $c2 $d6 $9a

    ld [hl], d                                    ; $4f96: $72
    jr z, jr_066_4fcd                             ; $4f97: $28 $34

    xor a                                         ; $4f99: $af
    dec [hl]                                      ; $4f9a: $35
    ld c, [hl]                                    ; $4f9b: $4e
    rst $38                                       ; $4f9c: $ff
    ld sp, $1843                                  ; $4f9d: $31 $43 $18
    db $eb                                        ; $4fa0: $eb

Jump_066_4fa1:
    jp nz, $e30c                                  ; $4fa1: $c2 $0c $e3

    jp nc, $0189                                  ; $4fa4: $d2 $89 $01

    dec a                                         ; $4fa7: $3d

Call_066_4fa8:
    rst $10                                       ; $4fa8: $d7
    ld c, c                                       ; $4fa9: $49
    rst $08                                       ; $4faa: $cf
    add d                                         ; $4fab: $82
    jr nc, jr_066_4f34                            ; $4fac: $30 $86

    add $d1                                       ; $4fae: $c6 $d1
    add [hl]                                      ; $4fb0: $86
    and a                                         ; $4fb1: $a7
    adc d                                         ; $4fb2: $8a
    ld a, [$3634]                                 ; $4fb3: $fa $34 $36
    ld a, [bc]                                    ; $4fb6: $0a
    and a                                         ; $4fb7: $a7
    rst $08                                       ; $4fb8: $cf
    db $e4                                        ; $4fb9: $e4
    add sp, -$5a                                  ; $4fba: $e8 $a6
    rrca                                          ; $4fbc: $0f
    db $db                                        ; $4fbd: $db
    ld a, e                                       ; $4fbe: $7b
    adc c                                         ; $4fbf: $89
    ld a, e                                       ; $4fc0: $7b
    ld h, [hl]                                    ; $4fc1: $66
    ld e, b                                       ; $4fc2: $58
    sub [hl]                                      ; $4fc3: $96
    ld h, [hl]                                    ; $4fc4: $66
    ret z                                         ; $4fc5: $c8

    ld c, d                                       ; $4fc6: $4a
    add h                                         ; $4fc7: $84
    ld l, c                                       ; $4fc8: $69
    ld b, b                                       ; $4fc9: $40
    or e                                          ; $4fca: $b3
    dec bc                                        ; $4fcb: $0b

jr_066_4fcc:
    ld [hl], e                                    ; $4fcc: $73

jr_066_4fcd:
    rst $30                                       ; $4fcd: $f7
    ld [hl], d                                    ; $4fce: $72

jr_066_4fcf:
    ret                                           ; $4fcf: $c9


    xor [hl]                                      ; $4fd0: $ae
    or b                                          ; $4fd1: $b0
    xor e                                         ; $4fd2: $ab
    ld e, [hl]                                    ; $4fd3: $5e
    rst $30                                       ; $4fd4: $f7
    jp z, $f429                                   ; $4fd5: $ca $29 $f4

    or a                                          ; $4fd8: $b7
    sub a                                         ; $4fd9: $97
    ld [hl], a                                    ; $4fda: $77
    or a                                          ; $4fdb: $b7
    scf                                           ; $4fdc: $37
    dec c                                         ; $4fdd: $0d
    ld e, b                                       ; $4fde: $58
    ld d, b                                       ; $4fdf: $50
    inc [hl]                                      ; $4fe0: $34
    push hl                                       ; $4fe1: $e5
    jr nz, jr_066_4fcf                            ; $4fe2: $20 $eb

    ld a, l                                       ; $4fe4: $7d
    rst $38                                       ; $4fe5: $ff
    cp b                                          ; $4fe6: $b8

jr_066_4fe7:
    cp $23                                        ; $4fe7: $fe $23
    dec hl                                        ; $4fe9: $2b
    ld de, $5ea6                                  ; $4fea: $11 $a6 $5e
    rst $30                                       ; $4fed: $f7
    ld a, [bc]                                    ; $4fee: $0a
    ld [hl], a                                    ; $4fef: $77
    ld a, a                                       ; $4ff0: $7f
    rla                                           ; $4ff1: $17
    xor [hl]                                      ; $4ff2: $ae
    sub l                                         ; $4ff3: $95
    ld c, e                                       ; $4ff4: $4b
    jp c, $7649                                   ; $4ff5: $da $49 $76

    add l                                         ; $4ff8: $85
    ld e, l                                       ; $4ff9: $5d
    add l                                         ; $4ffa: $85
    and $b7                                       ; $4ffb: $e6 $b7
    add d                                         ; $4ffd: $82
    ld h, [hl]                                    ; $4ffe: $66
    inc [hl]                                      ; $4fff: $34
    or d                                          ; $5000: $b2
    dec sp                                        ; $5001: $3b
    cp b                                          ; $5002: $b8
    or b                                          ; $5003: $b0
    ld h, c                                       ; $5004: $61
    or h                                          ; $5005: $b4
    sub a                                         ; $5006: $97
    reti                                          ; $5007: $d9


    ld a, b                                       ; $5008: $78
    rst $10                                       ; $5009: $d7
    add hl, sp                                    ; $500a: $39
    db $dd                                        ; $500b: $dd
    call nc, Call_000_1c4b                        ; $500c: $d4 $4b $1c
    dec d                                         ; $500f: $15
    dec d                                         ; $5010: $15
    ldh [$6c], a                                  ; $5011: $e0 $6c
    sbc d                                         ; $5013: $9a
    ld [hl], d                                    ; $5014: $72
    jr z, jr_066_4fcc                             ; $5015: $28 $b5

    inc [hl]                                      ; $5017: $34
    ret                                           ; $5018: $c9


    ldh [$8c], a                                  ; $5019: $e0 $8c
    ld e, d                                       ; $501b: $5a
    ld b, l                                       ; $501c: $45
    dec h                                         ; $501d: $25
    inc b                                         ; $501e: $04
    ld b, e                                       ; $501f: $43
    ld [hl], $e5                                  ; $5020: $36 $e5
    jr jr_066_4fe7                                ; $5022: $18 $c3

    inc [hl]                                      ; $5024: $34
    ld a, [bc]                                    ; $5025: $0a
    and a                                         ; $5026: $a7
    ret nc                                        ; $5027: $d0

    ld c, h                                       ; $5028: $4c
    add hl, sp                                    ; $5029: $39
    ld e, d                                       ; $502a: $5a
    halt                                          ; $502b: $76
    sub [hl]                                      ; $502c: $96
    inc h                                         ; $502d: $24
    db $ed                                        ; $502e: $ed
    cp $00                                        ; $502f: $fe $00
    ld e, e                                       ; $5031: $5b
    sub $ea                                       ; $5032: $d6 $ea
    inc h                                         ; $5034: $24
    db $eb                                        ; $5035: $eb
    ld d, e                                       ; $5036: $53
    sub l                                         ; $5037: $95
    ld l, c                                       ; $5038: $69
    ret z                                         ; $5039: $c8

    jp c, $ff9a                                   ; $503a: $da $9a $ff

    ld [bc], a                                    ; $503d: $02
    db $eb                                        ; $503e: $eb
    db $d3                                        ; $503f: $d3
    ret c                                         ; $5040: $d8

    xor c                                         ; $5041: $a9
    xor [hl]                                      ; $5042: $ae
    bit 1, a                                      ; $5043: $cb $4f
    ld c, [hl]                                    ; $5045: $4e
    add hl, de                                    ; $5046: $19
    inc bc                                        ; $5047: $03
    xor l                                         ; $5048: $ad
    ld [hl], c                                    ; $5049: $71
    ld [$917d], a                                 ; $504a: $ea $7d $91
    ld c, e                                       ; $504d: $4b
    inc bc                                        ; $504e: $03
    inc [hl]                                      ; $504f: $34
    and e                                         ; $5050: $a3
    rst $38                                       ; $5051: $ff
    sbc b                                         ; $5052: $98
    ld hl, $dd8c                                  ; $5053: $21 $8c $dd
    rra                                           ; $5056: $1f
    ld [c], a                                     ; $5057: $e2
    push af                                       ; $5058: $f5
    adc [hl]                                      ; $5059: $8e
    ld c, c                                       ; $505a: $49
    ld d, [hl]                                    ; $505b: $56
    ld a, [c]                                     ; $505c: $f2
    ld l, c                                       ; $505d: $69
    ld l, l                                       ; $505e: $6d
    call $817f                                    ; $505f: $cd $7f $81
    dec c                                         ; $5062: $0d
    add sp, -$4d                                  ; $5063: $e8 $b3
    ld b, $a6                                     ; $5065: $06 $a6
    call c, Call_066_7b2b                         ; $5067: $dc $2b $7b
    cp [hl]                                       ; $506a: $be
    db $ed                                        ; $506b: $ed
    db $f4                                        ; $506c: $f4
    ld a, d                                       ; $506d: $7a
    ld e, a                                       ; $506e: $5f
    inc c                                         ; $506f: $0c
    ld h, e                                       ; $5070: $63
    ld e, l                                       ; $5071: $5d
    ld d, a                                       ; $5072: $57
    rra                                           ; $5073: $1f
    dec bc                                        ; $5074: $0b
    db $eb                                        ; $5075: $eb
    adc a                                         ; $5076: $8f
    ld h, l                                       ; $5077: $65
    ld d, [hl]                                    ; $5078: $56
    xor [hl]                                      ; $5079: $ae
    and l                                         ; $507a: $a5
    rst $18                                       ; $507b: $df
    rst $08                                       ; $507c: $cf
    ld [hl], d                                    ; $507d: $72
    ld [$3175], a                                 ; $507e: $ea $75 $31
    ld c, h                                       ; $5081: $4c
    jp $1ff4                                      ; $5082: $c3 $f4 $1f


    inc sp                                        ; $5085: $33
    add h                                         ; $5086: $84
    or c                                          ; $5087: $b1
    ei                                            ; $5088: $fb
    inc bc                                        ; $5089: $03
    db $db                                        ; $508a: $db
    db $dd                                        ; $508b: $dd
    ld [$bc35], a                                 ; $508c: $ea $35 $bc
    ld e, l                                       ; $508f: $5d
    or b                                          ; $5090: $b0
    and [hl]                                      ; $5091: $a6
    inc e                                         ; $5092: $1c
    sbc d                                         ; $5093: $9a
    ld e, h                                       ; $5094: $5c
    xor e                                         ; $5095: $ab
    sub e                                         ; $5096: $93
    ld h, l                                       ; $5097: $65
    and $92                                       ; $5098: $e6 $92
    sbc h                                         ; $509a: $9c
    ld a, [$7634]                                 ; $509b: $fa $34 $76
    xor d                                         ; $509e: $aa
    db $10                                        ; $509f: $10
    sbc h                                         ; $50a0: $9c
    and a                                         ; $50a1: $a7
    adc h                                         ; $50a2: $8c
    add c                                         ; $50a3: $81
    sub $c8                                       ; $50a4: $d6 $c8
    ld a, [$8cb4]                                 ; $50a6: $fa $b4 $8c
    ld b, d                                       ; $50a9: $42
    inc sp                                        ; $50aa: $33
    ld a, [de]                                    ; $50ab: $1a
    and b                                         ; $50ac: $a0

Call_066_50ad:
    add hl, de                                    ; $50ad: $19
    db $fd                                        ; $50ae: $fd
    rst $00                                       ; $50af: $c7
    inc c                                         ; $50b0: $0c
    ld h, c                                       ; $50b1: $61
    db $ec                                        ; $50b2: $ec
    cp $00                                        ; $50b3: $fe $00
    db $db                                        ; $50b5: $db
    dec bc                                        ; $50b6: $0b
    push af                                       ; $50b7: $f5
    or c                                          ; $50b8: $b1
    inc h                                         ; $50b9: $24
    and a                                         ; $50ba: $a7
    ld [bc], a                                    ; $50bb: $02
    ld e, h                                       ; $50bc: $5c
    call z, $fdd3                                 ; $50bd: $cc $d3 $fd
    db $eb                                        ; $50c0: $eb
    adc a                                         ; $50c1: $8f
    ld h, l                                       ; $50c2: $65
    ld [hl], $b0                                  ; $50c3: $36 $b0
    ld e, h                                       ; $50c5: $5c
    ret c                                         ; $50c6: $d8

    db $e4                                        ; $50c7: $e4
    xor b                                         ; $50c8: $a8
    rst $38                                       ; $50c9: $ff
    ld [hl-], a                                   ; $50ca: $32
    rla                                           ; $50cb: $17
    ld e, d                                       ; $50cc: $5a
    rla                                           ; $50cd: $17
    xor h                                         ; $50ce: $ac
    ld e, b                                       ; $50cf: $58
    ld [hl], l                                    ; $50d0: $75
    cp $68                                        ; $50d1: $fe $68
    and [hl]                                      ; $50d3: $a6
    ld b, h                                       ; $50d4: $44
    call z, $cb28                                 ; $50d5: $cc $28 $cb
    dec h                                         ; $50d8: $25
    db $ed                                        ; $50d9: $ed
    ld h, h                                       ; $50da: $64
    rla                                           ; $50db: $17
    add [hl]                                      ; $50dc: $86
    cp c                                          ; $50dd: $b9
    ccf                                           ; $50de: $3f
    db $db                                        ; $50df: $db
    dec hl                                        ; $50e0: $2b
    pop hl                                        ; $50e1: $e1
    ld [$35f3], a                                 ; $50e2: $ea $f3 $35
    inc a                                         ; $50e5: $3c
    ld d, l                                       ; $50e6: $55
    ld l, h                                       ; $50e7: $6c
    sub h                                         ; $50e8: $94
    ld l, b                                       ; $50e9: $68
    jp z, Jump_066_49a1                           ; $50ea: $ca $a1 $49

    xor [hl]                                      ; $50ed: $ae
    ld e, $eb                                     ; $50ee: $1e $eb
    inc h                                         ; $50f0: $24
    db $eb                                        ; $50f1: $eb
    ld d, e                                       ; $50f2: $53
    sub l                                         ; $50f3: $95
    ld l, c                                       ; $50f4: $69
    ret z                                         ; $50f5: $c8

    ld a, [hl+]                                   ; $50f6: $2a
    ld a, [hl]                                    ; $50f7: $7e
    ld b, e                                       ; $50f8: $43
    ld h, [hl]                                    ; $50f9: $66
    db $fd                                        ; $50fa: $fd
    or c                                          ; $50fb: $b1
    ld h, [hl]                                    ; $50fc: $66
    ld e, e                                       ; $50fd: $5b
    db $d3                                        ; $50fe: $d3
    add [hl]                                      ; $50ff: $86
    add hl, hl                                    ; $5100: $29
    call nc, $92c7                                ; $5101: $d4 $c7 $92
    sbc h                                         ; $5104: $9c
    ld [hl], d                                    ; $5105: $72
    ld a, [$e633]                                 ; $5106: $fa $33 $e6
    ld l, c                                       ; $5109: $69
    add b                                         ; $510a: $80
    ld h, [hl]                                    ; $510b: $66
    db $f4                                        ; $510c: $f4
    rra                                           ; $510d: $1f
    inc sp                                        ; $510e: $33
    add h                                         ; $510f: $84
    or c                                          ; $5110: $b1
    ei                                            ; $5111: $fb
    inc bc                                        ; $5112: $03
    db $db                                        ; $5113: $db
    ld a, e                                       ; $5114: $7b
    adc $8b                                       ; $5115: $ce $8b
    ld d, c                                       ; $5117: $51
    adc e                                         ; $5118: $8b
    xor b                                         ; $5119: $a8
    cpl                                           ; $511a: $2f
    or d                                          ; $511b: $b2
    ld e, e                                       ; $511c: $5b
    sbc [hl]                                      ; $511d: $9e
    and $dd                                       ; $511e: $e6 $dd
    db $ed                                        ; $5120: $ed
    or c                                          ; $5121: $b1
    add c                                         ; $5122: $81
    db $dd                                        ; $5123: $dd
    jp z, Jump_066_63f4                           ; $5124: $ca $f4 $63

    inc hl                                        ; $5127: $23

Call_066_5128:
    inc [hl]                                      ; $5128: $34
    and e                                         ; $5129: $a3
    adc h                                         ; $512a: $8c
    add c                                         ; $512b: $81
    halt                                          ; $512c: $76
    rst $18                                       ; $512d: $df
    ld [hl], a                                    ; $512e: $77
    dec d                                         ; $512f: $15
    ld e, l                                       ; $5130: $5d
    rst $10                                       ; $5131: $d7
    sub h                                         ; $5132: $94
    ld b, e                                       ; $5133: $43

Jump_066_5134:
    rst $38                                       ; $5134: $ff
    inc h                                         ; $5135: $24
    dec h                                         ; $5136: $25
    ld h, l                                       ; $5137: $65
    ld de, $45f5                                  ; $5138: $11 $f5 $45
    ld e, d                                       ; $513b: $5a
    add hl, sp                                    ; $513c: $39
    ld c, l                                       ; $513d: $4d
    add hl, sp                                    ; $513e: $39
    inc d                                         ; $513f: $14
    dec bc                                        ; $5140: $0b
    ld [$aee5], a                                 ; $5141: $ea $e5 $ae
    ei                                            ; $5144: $fb
    inc bc                                        ; $5145: $03
    rla                                           ; $5146: $17
    cp d                                          ; $5147: $ba
    dec h                                         ; $5148: $25
    dec a                                         ; $5149: $3d
    ld c, l                                       ; $514a: $4d
    add hl, sp                                    ; $514b: $39
    ld [hl], h                                    ; $514c: $74
    ld a, d                                       ; $514d: $7a
    adc $8b                                       ; $514e: $ce $8b
    ld d, c                                       ; $5150: $51
    sbc e                                         ; $5151: $9b
    ld e, a                                       ; $5152: $5f
    ld c, h                                       ; $5153: $4c
    or d                                          ; $5154: $b2
    ld c, [hl]                                    ; $5155: $4e
    ld d, $fa                                     ; $5156: $16 $fa
    db $db                                        ; $5158: $db
    res 7, e                                      ; $5159: $cb $bb
    db $db                                        ; $515b: $db
    sbc e                                         ; $515c: $9b
    ld b, [hl]                                    ; $515d: $46
    ld l, b                                       ; $515e: $68
    ld b, [hl]                                    ; $515f: $46
    add hl, de                                    ; $5160: $19
    inc bc                                        ; $5161: $03
    xor l                                         ; $5162: $ad
    adc h                                         ; $5163: $8c
    add hl, de                                    ; $5164: $19
    jp c, $ca80                                   ; $5165: $da $80 $ca

    ld sp, $1583                                  ; $5168: $31 $83 $15
    db $fd                                        ; $516b: $fd
    ld b, a                                       ; $516c: $47
    ld h, d                                       ; $516d: $62
    dec a                                         ; $516e: $3d
    xor l                                         ; $516f: $ad
    xor h                                         ; $5170: $ac
    ld c, a                                       ; $5171: $4f
    ld d, l                                       ; $5172: $55
    ld e, d                                       ; $5173: $5a
    and a                                         ; $5174: $a7
    add hl, de                                    ; $5175: $19
    jp nc, $2e9f                                  ; $5176: $d2 $9f $2e

    ld l, a                                       ; $5179: $6f
    ld h, l                                       ; $517a: $65
    ld l, b                                       ; $517b: $68
    ld h, h                                       ; $517c: $64
    sub l                                         ; $517d: $95
    dec bc                                        ; $517e: $0b
    dec de                                        ; $517f: $1b
    ld b, [hl]                                    ; $5180: $46
    db $eb                                        ; $5181: $eb
    db $db                                        ; $5182: $db
    ld a, b                                       ; $5183: $78
    and c                                         ; $5184: $a1
    ld a, [hl-]                                   ; $5185: $3a
    ld b, $bd                                     ; $5186: $06 $bd
    ccf                                           ; $5188: $3f
    ld [c], a                                     ; $5189: $e2
    push hl                                       ; $518a: $e5
    jp nz, Jump_066_4726                          ; $518b: $c2 $26 $47

    db $fd                                        ; $518e: $fd
    sub a                                         ; $518f: $97
    cp c                                          ; $5190: $b9
    ret nc                                        ; $5191: $d0

    cp d                                          ; $5192: $ba
    xor [hl]                                      ; $5193: $ae
    ld de, $519a                                  ; $5194: $11 $9a $51
    add $40                                       ; $5197: $c6 $40
    cp e                                          ; $5199: $bb
    dec hl                                        ; $519a: $2b
    xor $8f                                       ; $519b: $ee $8f
    and $69                                       ; $519d: $e6 $69
    jp z, Jump_000_2ca1                           ; $519f: $ca $a1 $2c

    and d                                         ; $51a2: $a2
    rla                                           ; $51a3: $17
    ld h, $f1                                     ; $51a4: $26 $f1
    adc h                                         ; $51a6: $8c
    ld c, l                                       ; $51a7: $4d
    inc e                                         ; $51a8: $1c
    jp hl                                         ; $51a9: $e9


    dec [hl]                                      ; $51aa: $35
    db $ec                                        ; $51ab: $ec
    ld l, h                                       ; $51ac: $6c
    jp c, Jump_000_02d1                           ; $51ad: $da $d1 $02

    res 2, h                                      ; $51b0: $cb $94
    ld a, e                                       ; $51b2: $7b

jr_066_51b3:
    sub l                                         ; $51b3: $95
    xor $65                                       ; $51b4: $ee $65
    ld [hl], $71                                  ; $51b6: $36 $71
    sub $0b                                       ; $51b8: $d6 $0b
    and a                                         ; $51ba: $a7
    cp a                                          ; $51bb: $bf
    inc sp                                        ; $51bc: $33
    and $b7                                       ; $51bd: $e6 $b7
    ld h, d                                       ; $51bf: $62
    xor a                                         ; $51c0: $af
    ld a, h                                       ; $51c1: $7c
    jp hl                                         ; $51c2: $e9


    inc [hl]                                      ; $51c3: $34
    and d                                         ; $51c4: $a2
    jr nz, @+$2e                                  ; $51c5: $20 $2c

    pop hl                                        ; $51c7: $e1
    cp $00                                        ; $51c8: $fe $00
    ld e, e                                       ; $51ca: $5b
    sub $ea                                       ; $51cb: $d6 $ea
    inc h                                         ; $51cd: $24
    db $eb                                        ; $51ce: $eb
    adc a                                         ; $51cf: $8f
    ld h, l                                       ; $51d0: $65
    ld d, [hl]                                    ; $51d1: $56
    xor [hl]                                      ; $51d2: $ae
    and l                                         ; $51d3: $a5
    rst $18                                       ; $51d4: $df
    rst $08                                       ; $51d5: $cf
    ld b, [hl]                                    ; $51d6: $46
    ld l, b                                       ; $51d7: $68
    ld b, [hl]                                    ; $51d8: $46
    rst $38                                       ; $51d9: $ff
    ld sp, $1843                                  ; $51da: $31 $43 $18
    ld l, e                                       ; $51dd: $6b
    jp z, Jump_000_2ba1                           ; $51de: $ca $a1 $2b

    cp [hl]                                       ; $51e1: $be
    ld b, $5a                                     ; $51e2: $06 $5a
    sub a                                         ; $51e4: $97
    or l                                          ; $51e5: $b5
    ld [hl], d                                    ; $51e6: $72
    ld [$3175], a                                 ; $51e7: $ea $75 $31
    ld c, h                                       ; $51ea: $4c
    rst $30                                       ; $51eb: $f7
    rst $10                                       ; $51ec: $d7
    ld c, d                                       ; $51ed: $4a
    xor d                                         ; $51ee: $aa
    inc e                                         ; $51ef: $1c
    inc sp                                        ; $51f0: $33
    ld [$73dd], a                                 ; $51f1: $ea $dd $73
    rst $10                                       ; $51f4: $d7
    ld a, [hl+]                                   ; $51f5: $2a
    nop                                           ; $51f6: $00
    cpl                                           ; $51f7: $2f
    ld c, a                                       ; $51f8: $4f
    ld d, e                                       ; $51f9: $53
    adc [hl]                                      ; $51fa: $8e
    ld sp, $a14c                                  ; $51fb: $31 $4c $a1
    sbc c                                         ; $51fe: $99
    ld [hl], d                                    ; $51ff: $72
    or h                                          ; $5200: $b4
    call z, Call_066_6546                         ; $5201: $cc $46 $65
    jr jr_066_51b3                                ; $5204: $18 $ad

    ld c, a                                       ; $5206: $4f
    ld h, e                                       ; $5207: $63
    ld e, c                                       ; $5208: $59
    cp d                                          ; $5209: $ba
    add l                                         ; $520a: $85
    dec c                                         ; $520b: $0d
    db $d3                                        ; $520c: $d3
    dec e                                         ; $520d: $1d
    sub c                                         ; $520e: $91
    ld a, $ee                                     ; $520f: $3e $ee
    rrca                                          ; $5211: $0f
    sub a                                         ; $5212: $97
    ld c, l                                       ; $5213: $4d
    and b                                         ; $5214: $a0
    sub [hl]                                      ; $5215: $96
    ld e, d                                       ; $5216: $5a
    cp d                                          ; $5217: $ba
    add l                                         ; $5218: $85
    ld e, d                                       ; $5219: $5a
    dec e                                         ; $521a: $1d
    adc a                                         ; $521b: $8f
    and c                                         ; $521c: $a1
    ld e, e                                       ; $521d: $5b
    ld e, l                                       ; $521e: $5d
    ld a, [hl-]                                   ; $521f: $3a
    cp l                                          ; $5220: $bd
    ld b, b                                       ; $5221: $40
    dec bc                                        ; $5222: $0b
    call $69c2                                    ; $5223: $cd $c2 $69
    add h                                         ; $5226: $84
    ld h, [hl]                                    ; $5227: $66
    sub h                                         ; $5228: $94
    ld sp, $44d0                                  ; $5229: $31 $d0 $44
    ld a, l                                       ; $522c: $7d
    pop af                                        ; $522d: $f1
    ld e, a                                       ; $522e: $5f
    call c, $618b                                 ; $522f: $dc $8b $61
    ld a, [hl+]                                   ; $5232: $2a
    ld l, [hl]                                    ; $5233: $6e
    add hl, de                                    ; $5234: $19
    ld b, l                                       ; $5235: $45
    or a                                          ; $5236: $b7
    xor $a1                                       ; $5237: $ee $a1
    rst $28                                       ; $5239: $ef
    rst $20                                       ; $523a: $e7
    db $fd                                        ; $523b: $fd
    ld bc, $d65b                                  ; $523c: $01 $5b $d6
    ld [$eb24], a                                 ; $523f: $ea $24 $eb
    adc a                                         ; $5242: $8f
    ld h, l                                       ; $5243: $65
    ld d, [hl]                                    ; $5244: $56
    xor [hl]                                      ; $5245: $ae
    and l                                         ; $5246: $a5
    rst $18                                       ; $5247: $df
    rst $08                                       ; $5248: $cf
    ld b, [hl]                                    ; $5249: $46
    ld l, b                                       ; $524a: $68
    ld b, [hl]                                    ; $524b: $46
    rst $38                                       ; $524c: $ff
    ld sp, $1843                                  ; $524d: $31 $43 $18
    ld l, e                                       ; $5250: $6b
    jp z, Jump_000_2ba1                           ; $5251: $ca $a1 $2b

    cp [hl]                                       ; $5254: $be
    ld b, $5a                                     ; $5255: $06 $5a
    add hl, sp                                    ; $5257: $39
    push af                                       ; $5258: $f5
    rst $10                                       ; $5259: $d7
    dec [hl]                                      ; $525a: $35
    or b                                          ; $525b: $b0
    ld [hl], h                                    ; $525c: $74
    dec bc                                        ; $525d: $0b
    dec de                                        ; $525e: $1b
    and [hl]                                      ; $525f: $a6
    rst $20                                       ; $5260: $e7
    dec l                                         ; $5261: $2d
    cpl                                           ; $5262: $2f
    dec bc                                        ; $5263: $0b
    ld a, d                                       ; $5264: $7a
    cp a                                          ; $5265: $bf
    ret nz                                        ; $5266: $c0

    ei                                            ; $5267: $fb
    inc bc                                        ; $5268: $03
    sub a                                         ; $5269: $97
    ld b, c                                       ; $526a: $41
    or $77                                        ; $526b: $f6 $77
    cpl                                           ; $526d: $2f
    jr nc, jr_066_52bc                            ; $526e: $30 $4c

    ld d, e                                       ; $5270: $53
    adc [hl]                                      ; $5271: $8e
    ld sp, $114c                                  ; $5272: $31 $4c $11
    or e                                          ; $5275: $b3
    pop de                                        ; $5276: $d1
    and b                                         ; $5277: $a0
    add l                                         ; $5278: $85
    xor h                                         ; $5279: $ac
    ld [hl], d                                    ; $527a: $72
    and c                                         ; $527b: $a1
    ld [hl], $a0                                  ; $527c: $36 $a0
    ld [hl], h                                    ; $527e: $74
    dec bc                                        ; $527f: $0b
    dec de                                        ; $5280: $1b
    and b                                         ; $5281: $a0
    di                                            ; $5282: $f3
    dec sp                                        ; $5283: $3b
    sbc a                                         ; $5284: $9f
    add c                                         ; $5285: $81
    ld a, d                                       ; $5286: $7a
    rst $18                                       ; $5287: $df
    ld [hl], a                                    ; $5288: $77
    db $fd                                        ; $5289: $fd
    add hl, bc                                    ; $528a: $09
    ret nc                                        ; $528b: $d0

    ld [hl+], a                                   ; $528c: $22
    cp $13                                        ; $528d: $fe $13
    or e                                          ; $528f: $b3
    pop de                                        ; $5290: $d1
    sbc d                                         ; $5291: $9a
    ld [hl], d                                    ; $5292: $72
    ld e, h                                       ; $5293: $5c
    ld d, d                                       ; $5294: $52
    ld c, $d6                                     ; $5295: $0e $d6
    ld a, a                                       ; $5297: $7f
    sbc [hl]                                      ; $5298: $9e
    or d                                          ; $5299: $b2
    jp nc, Jump_000_3cbd                          ; $529a: $d2 $bd $3c

    dec c                                         ; $529d: $0d
    ld d, b                                       ; $529e: $50
    and [hl]                                      ; $529f: $a6
    adc l                                         ; $52a0: $8d
    ld h, c                                       ; $52a1: $61
    ld l, l                                       ; $52a2: $6d
    add l                                         ; $52a3: $85
    push hl                                       ; $52a4: $e5
    cp $00                                        ; $52a5: $fe $00
    db $db                                        ; $52a7: $db
    cp e                                          ; $52a8: $bb
    ld a, c                                       ; $52a9: $79
    ld [hl], c                                    ; $52aa: $71
    ld e, $34                                     ; $52ab: $1e $34
    adc h                                         ; $52ad: $8c
    halt                                          ; $52ae: $76
    or e                                          ; $52af: $b3
    adc l                                         ; $52b0: $8d
    inc e                                         ; $52b1: $1c
    ld l, l                                       ; $52b2: $6d
    ld b, b                                       ; $52b3: $40
    rst $08                                       ; $52b4: $cf
    jp $efcb                                      ; $52b5: $c3 $cb $ef


    rst $00                                       ; $52b8: $c7
    or e                                          ; $52b9: $b3
    pop de                                        ; $52ba: $d1
    and d                                         ; $52bb: $a2

jr_066_52bc:
    rst $20                                       ; $52bc: $e7
    sbc b                                         ; $52bd: $98
    inc de                                        ; $52be: $13
    ld c, h                                       ; $52bf: $4c
    db $ed                                        ; $52c0: $ed
    ld a, c                                       ; $52c1: $79
    sub h                                         ; $52c2: $94
    and e                                         ; $52c3: $a3
    and e                                         ; $52c4: $a3
    ld e, l                                       ; $52c5: $5d
    ld d, a                                       ; $52c6: $57
    daa                                           ; $52c7: $27
    cp e                                          ; $52c8: $bb
    cp e                                          ; $52c9: $bb
    sbc a                                         ; $52ca: $9f
    sbc a                                         ; $52cb: $9f
    sbc h                                         ; $52cc: $9c
    ld [$f96e], a                                 ; $52cd: $ea $6e $f9
    ld c, l                                       ; $52d0: $4d
    ld a, l                                       ; $52d1: $7d
    ld a, [de]                                    ; $52d2: $1a
    dec bc                                        ; $52d3: $0b
    pop bc                                        ; $52d4: $c1
    ld a, $ec                                     ; $52d5: $3e $ec
    ld c, c                                       ; $52d7: $49
    call nz, $eb4c                                ; $52d8: $c4 $4c $eb
    ccf                                           ; $52db: $3f
    jp nc, Jump_000_22f3                          ; $52dc: $d2 $f3 $22

    rst $10                                       ; $52df: $d7
    rra                                           ; $52e0: $1f
    inc c                                         ; $52e1: $0c
    ld l, l                                       ; $52e2: $6d
    ld b, b                                       ; $52e3: $40
    ld a, a                                       ; $52e4: $7f
    dec de                                        ; $52e5: $1b
    add hl, sp                                    ; $52e6: $39
    ld a, d                                       ; $52e7: $7a
    ld a, a                                       ; $52e8: $7f
    sub a                                         ; $52e9: $97
    rst $20                                       ; $52ea: $e7
    or a                                          ; $52eb: $b7
    cp h                                          ; $52ec: $bc
    ld e, l                                       ; $52ed: $5d
    inc l                                         ; $52ee: $2c
    db $eb                                        ; $52ef: $eb
    adc a                                         ; $52f0: $8f
    ld h, l                                       ; $52f1: $65
    ld d, [hl]                                    ; $52f2: $56
    xor [hl]                                      ; $52f3: $ae
    and l                                         ; $52f4: $a5
    rst $18                                       ; $52f5: $df
    rst $08                                       ; $52f6: $cf
    ld b, [hl]                                    ; $52f7: $46
    sub $a7                                       ; $52f8: $d6 $a7
    ld hl, $2ca0                                  ; $52fa: $21 $a0 $2c
    inc [hl]                                      ; $52fd: $34
    and e                                         ; $52fe: $a3
    ld a, $8d                                     ; $52ff: $3e $8d
    ld a, l                                       ; $5301: $7d
    ld d, [hl]                                    ; $5302: $56
    sbc a                                         ; $5303: $9f
    add $4e                                       ; $5304: $c6 $4e
    ld d, e                                       ; $5306: $53
    adc [hl]                                      ; $5307: $8e
    sub [hl]                                      ; $5308: $96
    and a                                         ; $5309: $a7
    adc h                                         ; $530a: $8c
    add c                                         ; $530b: $81
    halt                                          ; $530c: $76
    rst $30                                       ; $530d: $f7
    ld h, d                                       ; $530e: $62
    xor h                                         ; $530f: $ac
    cp b                                          ; $5310: $b8
    ld sp, $46a3                                  ; $5311: $31 $a3 $46
    rst $38                                       ; $5314: $ff
    dec b                                         ; $5315: $05
    ld c, d                                       ; $5316: $4a
    call nz, $ee8c                                ; $5317: $c4 $8c $ee
    ld e, a                                       ; $531a: $5f
    ld l, $6c                                     ; $531b: $2e $6c
    ld [hl], d                                    ; $531d: $72
    call nc, $997f                                ; $531e: $d4 $7f $99
    dec bc                                        ; $5321: $0b
    ld c, l                                       ; $5322: $4d
    ld d, h                                       ; $5323: $54
    ld b, l                                       ; $5324: $45
    and c                                         ; $5325: $a1
    ld sp, hl                                     ; $5326: $f9
    xor l                                         ; $5327: $ad
    ld h, b                                       ; $5328: $60

Jump_066_5329:
    ret nc                                        ; $5329: $d0

    ld c, d                                       ; $532a: $4a
    and [hl]                                      ; $532b: $a6
    add a                                         ; $532c: $87
    ld h, c                                       ; $532d: $61
    xor $0f                                       ; $532e: $ee $0f
    db $db                                        ; $5330: $db
    ld a, e                                       ; $5331: $7b
    sbc $5b                                       ; $5332: $de $5b
    cp $64                                        ; $5334: $fe $64
    ld d, a                                       ; $5336: $57
    ld a, h                                       ; $5337: $7c
    dec c                                         ; $5338: $0d
    ld d, e                                       ; $5339: $53
    ld e, e                                       ; $533a: $5b
    and a                                         ; $533b: $a7
    dec de                                        ; $533c: $1b
    jp $fc6c                                      ; $533d: $c3 $6c $fc


    sub e                                         ; $5340: $93
    jp nz, $a729                                  ; $5341: $c2 $29 $a7

    adc h                                         ; $5344: $8c
    add c                                         ; $5345: $81
    sub $80                                       ; $5346: $d6 $80
    dec b                                         ; $5348: $05
    sub l                                         ; $5349: $95
    xor $e5                                       ; $534a: $ee $e5
    xor c                                         ; $534c: $a9
    pop de                                        ; $534d: $d1
    ld a, a                                       ; $534e: $7f
    add c                                         ; $534f: $81
    ld [de], a                                    ; $5350: $12
    ld sp, $aee3                                  ; $5351: $31 $e3 $ae
    ld hl, sp-$61                                 ; $5354: $f8 $9f
    sbc h                                         ; $5356: $9c
    and [hl]                                      ; $5357: $a6
    inc e                                         ; $5358: $1c
    sbc d                                         ; $5359: $9a
    ld hl, $24eb                                  ; $535a: $21 $eb $24
    db $eb                                        ; $535d: $eb
    adc a                                         ; $535e: $8f
    ld h, l                                       ; $535f: $65
    ld d, [hl]                                    ; $5360: $56
    xor [hl]                                      ; $5361: $ae
    and l                                         ; $5362: $a5
    rst $18                                       ; $5363: $df
    rst $08                                       ; $5364: $cf
    add $29                                       ; $5365: $c6 $29
    db $f4                                        ; $5367: $f4
    or a                                          ; $5368: $b7
    sub a                                         ; $5369: $97
    ld [hl], a                                    ; $536a: $77
    or a                                          ; $536b: $b7
    scf                                           ; $536c: $37
    dec e                                         ; $536d: $1d
    rst $10                                       ; $536e: $d7
    jr c, @-$09                                   ; $536f: $38 $f5

    ret nc                                        ; $5371: $d0

    adc h                                         ; $5372: $8c
    cp a                                          ; $5373: $bf
    ld [hl], b                                    ; $5374: $70
    ld a, [de]                                    ; $5375: $1a
    xor b                                         ; $5376: $a8
    ld e, l                                       ; $5377: $5d
    ld d, c                                       ; $5378: $51
    ld [hl], l                                    ; $5379: $75
    sbc h                                         ; $537a: $9c
    ld d, c                                       ; $537b: $51
    sbc e                                         ; $537c: $9b
    ld [hl], d                                    ; $537d: $72
    add sp, $0a                                   ; $537e: $e8 $0a
    or d                                          ; $5380: $b2
    add c                                         ; $5381: $81
    ld d, [hl]                                    ; $5382: $56
    and [hl]                                      ; $5383: $a6
    call c, Call_000_3fbb                         ; $5384: $dc $bb $3f
    dec sp                                        ; $5387: $3b
    ret nc                                        ; $5388: $d0

    sub h                                         ; $5389: $94
    ld a, e                                       ; $538a: $7b
    ld a, [bc]                                    ; $538b: $0a
    add e                                         ; $538c: $83

jr_066_538d:
    or $59                                        ; $538d: $f6 $59
    adc l                                         ; $538f: $8d
    cp $0b                                        ; $5390: $fe $0b
    sub h                                         ; $5392: $94
    adc b                                         ; $5393: $88
    add hl, de                                    ; $5394: $19
    push af                                       ; $5395: $f5
    ld l, c                                       ; $5396: $69
    db $ec                                        ; $5397: $ec
    inc [hl]                                      ; $5398: $34
    push hl                                       ; $5399: $e5
    ld l, b                                       ; $539a: $68
    ld a, c                                       ; $539b: $79
    jp z, Jump_066_6818                           ; $539c: $ca $18 $68

    and d                                         ; $539f: $a2
    ld a, [$bf36]                                 ; $53a0: $fa $36 $bf
    inc sp                                        ; $53a3: $33
    sub [hl]                                      ; $53a4: $96
    ld e, d                                       ; $53a5: $5a
    add sp, -$31                                  ; $53a6: $e8 $cf
    ld b, b                                       ; $53a8: $40
    ld l, l                                       ; $53a9: $6d
    ld h, h                                       ; $53aa: $64
    ld a, l                                       ; $53ab: $7d
    ld e, d                                       ; $53ac: $5a
    ld b, [hl]                                    ; $53ad: $46
    push de                                       ; $53ae: $d5
    dec l                                         ; $53af: $2d
    dec c                                         ; $53b0: $0d
    db $d3                                        ; $53b1: $d3
    ld a, a                                       ; $53b2: $7f
    call z, $c610                                 ; $53b3: $cc $10 $c6
    xor $0f                                       ; $53b6: $ee $0f
    db $db                                        ; $53b8: $db
    sbc e                                         ; $53b9: $9b
    ld [hl], d                                    ; $53ba: $72
    or h                                          ; $53bb: $b4
    inc a                                         ; $53bc: $3c
    dec c                                         ; $53bd: $0d
    jr z, jr_066_538d                             ; $53be: $28 $cd

    sbc h                                         ; $53c0: $9c
    db $e4                                        ; $53c1: $e4
    ld a, [$a183]                                 ; $53c2: $fa $83 $a1
    dec c                                         ; $53c5: $0d
    db $d3                                        ; $53c6: $d3
    di                                            ; $53c7: $f3
    sbc $f2                                       ; $53c8: $de $f2
    daa                                           ; $53ca: $27
    cp e                                          ; $53cb: $bb
    xor [hl]                                      ; $53cc: $ae
    ld de, $519a                                  ; $53cd: $11 $9a $51
    add $40                                       ; $53d0: $c6 $40
    cp e                                          ; $53d2: $bb
    ld a, e                                       ; $53d3: $7b
    xor $db                                       ; $53d4: $ee $db
    dec b                                         ; $53d6: $05
    reti                                          ; $53d7: $d9


    sub h                                         ; $53d8: $94
    ld b, e                                       ; $53d9: $43
    and c                                         ; $53da: $a1
    rst $38                                       ; $53db: $ff
    call nz, $aa80                                ; $53dc: $c4 $80 $aa
    inc sp                                        ; $53df: $33
    rst $18                                       ; $53e0: $df
    and b                                         ; $53e1: $a0
    call nc, $2806                                ; $53e2: $d4 $06 $28
    db $d3                                        ; $53e5: $d3
    add $b0                                       ; $53e6: $c6 $b0
    or [hl]                                       ; $53e8: $b6
    jp nz, $fbd3                                  ; $53e9: $c2 $d3 $fb

    inc bc                                        ; $53ec: $03
    ld e, e                                       ; $53ed: $5b
    sub $ea                                       ; $53ee: $d6 $ea
    ld h, h                                       ; $53f0: $64
    ld l, c                                       ; $53f1: $69
    ld [hl], d                                    ; $53f2: $72
    call Call_000_34de                            ; $53f3: $cd $de $34
    and b                                         ; $53f6: $a0
    inc [hl]                                      ; $53f7: $34
    ret                                           ; $53f8: $c9


    ld e, l                                       ; $53f9: $5d
    adc b                                         ; $53fa: $88
    sub h                                         ; $53fb: $94
    adc b                                         ; $53fc: $88
    ld a, c                                       ; $53fd: $79
    ld a, [de]                                    ; $53fe: $1a
    ld d, b                                       ; $53ff: $50
    ret                                           ; $5400: $c9


    inc c                                         ; $5401: $0c
    ld a, e                                       ; $5402: $7b
    ld e, h                                       ; $5403: $5c
    ld a, [de]                                    ; $5404: $1a
    ld d, b                                       ; $5405: $50
    add sp, $6f                                   ; $5406: $e8 $6f
    cpl                                           ; $5408: $2f
    rst $28                                       ; $5409: $ef
    ld l, [hl]                                    ; $540a: $6e
    ld l, a                                       ; $540b: $6f
    ld a, [de]                                    ; $540c: $1a
    and a                                         ; $540d: $a7
    ccf                                           ; $540e: $3f
    ld h, e                                       ; $540f: $63
    sbc [hl]                                      ; $5410: $9e
    cp e                                          ; $5411: $bb
    sub a                                         ; $5412: $97
    ld c, e                                       ; $5413: $4b
    halt                                          ; $5414: $76
    add l                                         ; $5415: $85
    ld e, l                                       ; $5416: $5d
    dec e                                         ; $5417: $1d
    or a                                          ; $5418: $b7
    ld a, d                                       ; $5419: $7a
    push af                                       ; $541a: $f5
    ret nc                                        ; $541b: $d0

    call c, $1c92                                 ; $541c: $dc $92 $1c
    dec l                                         ; $541f: $2d
    inc [hl]                                      ; $5420: $34
    dec de                                        ; $5421: $1b
    ld h, e                                       ; $5422: $63
    ld [hl], d                                    ; $5423: $72
    or h                                          ; $5424: $b4
    xor e                                         ; $5425: $ab
    rla                                           ; $5426: $17
    jp $0368                                      ; $5427: $c3 $68 $03


    cp d                                          ; $542a: $ba
    xor h                                         ; $542b: $ac
    db $dd                                        ; $542c: $dd
    rra                                           ; $542d: $1f
    ld e, e                                       ; $542e: $5b
    cp c                                          ; $542f: $b9
    call nc, $d51f                                ; $5430: $d4 $1f $d5
    add hl, hl                                    ; $5433: $29
    call nc, $d187                                ; $5434: $d4 $87 $d1
    ld [$a163], a                                 ; $5437: $ea $63 $a1
    sub [hl]                                      ; $543a: $96
    ld l, [hl]                                    ; $543b: $6e
    and c                                         ; $543c: $a1
    ld [hl], $a0                                  ; $543d: $36 $a0
    call nc, Call_000_136c                        ; $543f: $d4 $6c $13
    ld b, a                                       ; $5442: $47
    ld a, $de                                     ; $5443: $3e $de
    dec d                                         ; $5445: $15
    ld c, a                                       ; $5446: $4f
    add hl, sp                                    ; $5447: $39
    inc l                                         ; $5448: $2c
    xor h                                         ; $5449: $ac
    ccf                                           ; $544a: $3f
    sub [hl]                                      ; $544b: $96
    ld e, c                                       ; $544c: $59
    sbc a                                         ; $544d: $9f
    add $b2                                       ; $544e: $c6 $b2
    ld a, c                                       ; $5450: $79
    call z, $80d0                                 ; $5451: $cc $d0 $80
    ld d, d                                       ; $5454: $52
    or e                                          ; $5455: $b3
    ld c, l                                       ; $5456: $4d
    inc e                                         ; $5457: $1c
    ld sp, hl                                     ; $5458: $f9
    ld e, b                                       ; $5459: $58
    ld l, $af                                     ; $545a: $2e $af
    db $eb                                        ; $545c: $eb
    ld [$9b24], a                                 ; $545d: $ea $24 $9b
    ld de, $d733                                  ; $5460: $11 $33 $d7
    dec bc                                        ; $5463: $0b
    and a                                         ; $5464: $a7
    ld e, c                                       ; $5465: $59
    jr c, jr_066_54b5                             ; $5466: $38 $4d

    dec de                                        ; $5468: $1b
    ld h, e                                       ; $5469: $63
    ret nz                                        ; $546a: $c0

    db $fd                                        ; $546b: $fd

Jump_066_546c:
    ld bc, $29e2                                  ; $546c: $01 $e2 $29
    add a                                         ; $546f: $87
    dec b                                         ; $5470: $05
    dec [hl]                                      ; $5471: $35
    ld h, h                                       ; $5472: $64
    ld h, e                                       ; $5473: $63
    sbc [hl]                                      ; $5474: $9e
    ld b, [hl]                                    ; $5475: $46
    sub $a7                                       ; $5476: $d6 $a7
    ld hl, $71a0                                  ; $5478: $21 $a0 $71
    inc l                                         ; $547b: $2c
    db $e3                                        ; $547c: $e3
    cp [hl]                                       ; $547d: $be
    rst $28                                       ; $547e: $ef
    xor [hl]                                      ; $547f: $ae
    ld h, [hl]                                    ; $5480: $66
    ret                                           ; $5481: $c9


    inc l                                         ; $5482: $2c
    ld a, [hl+]                                   ; $5483: $2a
    pop af                                        ; $5484: $f1
    ret c                                         ; $5485: $d8

    ld [hl], c                                    ; $5486: $71
    db $eb                                        ; $5487: $eb
    ld h, a                                       ; $5488: $67
    db $e3                                        ; $5489: $e3
    ld d, h                                       ; $548a: $54
    ld a, [hl-]                                   ; $548b: $3a
    sub e                                         ; $548c: $93
    adc $68                                       ; $548d: $ce $68
    ld c, l                                       ; $548f: $4d
    add hl, sp                                    ; $5490: $39
    ld l, $29                                     ; $5491: $2e $29
    rlca                                          ; $5493: $07
    db $eb                                        ; $5494: $eb
    ccf                                           ; $5495: $3f
    ld c, a                                       ; $5496: $4f
    ld a, c                                       ; $5497: $79
    ld a, a                                       ; $5498: $7f
    rst $20                                       ; $5499: $e7
    pop de                                        ; $549a: $d1
    ld a, [c]                                     ; $549b: $f2
    ld l, h                                       ; $549c: $6c
    sub h                                         ; $549d: $94
    ld l, b                                       ; $549e: $68
    ld b, b                                       ; $549f: $40
    ld h, a                                       ; $54a0: $67
    ld c, c                                       ; $54a1: $49
    jp nc, $d3ea                                  ; $54a2: $d2 $ea $d3

    ld e, b                                       ; $54a5: $58
    and [hl]                                      ; $54a6: $a6
    inc e                                         ; $54a7: $1c
    ld d, $16                                     ; $54a8: $16 $16
    ld [hl], c                                    ; $54aa: $71
    ld c, h                                       ; $54ab: $4c
    and d                                         ; $54ac: $a2
    sbc [hl]                                      ; $54ad: $9e
    ld e, c                                       ; $54ae: $59
    ret c                                         ; $54af: $d8

    add b                                         ; $54b0: $80
    cp $f6                                        ; $54b1: $fe $f6
    inc [hl]                                      ; $54b3: $34
    ld [hl], e                                    ; $54b4: $73

jr_066_54b5:
    ld de, $5255                                  ; $54b5: $11 $55 $52
    dec de                                        ; $54b8: $1b
    ld e, l                                       ; $54b9: $5d
    db $fc                                        ; $54ba: $fc
    reti                                          ; $54bb: $d9


    dec d                                         ; $54bc: $15
    inc b                                         ; $54bd: $04
    ld c, h                                       ; $54be: $4c
    and a                                         ; $54bf: $a7
    ld e, [hl]                                    ; $54c0: $5e
    sub a                                         ; $54c1: $97
    sbc l                                         ; $54c2: $9d
    call Call_000_01fd                            ; $54c3: $cd $fd $01
    add hl, bc                                    ; $54c6: $09
    ld [$a6c3], a                                 ; $54c7: $ea $c3 $a6
    add hl, hl                                    ; $54ca: $29
    add a                                         ; $54cb: $87
    and $09                                       ; $54cc: $e6 $09
    and e                                         ; $54ce: $a3
    call Call_066_4988                            ; $54cf: $cd $88 $49
    jp z, Jump_066_47a6                           ; $54d2: $ca $a6 $47

    inc sp                                        ; $54d5: $33
    jp Jump_066_4c34                              ; $54d6: $c3 $34 $4c


    dec a                                         ; $54d9: $3d
    adc h                                         ; $54da: $8c
    add hl, hl                                    ; $54db: $29
    add a                                         ; $54dc: $87
    adc h                                         ; $54dd: $8c
    ld b, $d4                                     ; $54de: $06 $d4
    inc sp                                        ; $54e0: $33
    call nc, $ab8d                                ; $54e1: $d4 $8d $ab
    rla                                           ; $54e4: $17
    inc bc                                        ; $54e5: $03
    push af                                       ; $54e6: $f5
    xor [hl]                                      ; $54e7: $ae
    ld a, b                                       ; $54e8: $78
    ld a, d                                       ; $54e9: $7a
    adc h                                         ; $54ea: $8c
    call $b3f3                                    ; $54eb: $cd $f3 $b3
    xor h                                         ; $54ee: $ac
    ld l, a                                       ; $54ef: $6f
    di                                            ; $54f0: $f3
    dec sp                                        ; $54f1: $3b
    and e                                         ; $54f2: $a3
    sub l                                         ; $54f3: $95
    jp c, $a8d5                                   ; $54f4: $da $d5 $a8

    ld d, d                                       ; $54f7: $52
    adc e                                         ; $54f8: $8b
    sub h                                         ; $54f9: $94
    ld a, e                                       ; $54fa: $7b
    ld a, $75                                     ; $54fb: $3e $75
    jp $db07                                      ; $54fd: $c3 $07 $db


    ld h, e                                       ; $5500: $63
    ld b, b                                       ; $5501: $40
    rst $10                                       ; $5502: $d7
    push af                                       ; $5503: $f5
    ld a, h                                       ; $5504: $7c
    db $db                                        ; $5505: $db
    jp hl                                         ; $5506: $e9


    push af                                       ; $5507: $f5
    cp [hl]                                       ; $5508: $be
    jr @-$38                                      ; $5509: $18 $c6

    ld [hl], $7d                                  ; $550b: $36 $7d
    rla                                           ; $550d: $17
    xor [hl]                                      ; $550e: $ae
    dec d                                         ; $550f: $15
    or d                                          ; $5510: $b2
    ld a, e                                       ; $5511: $7b
    inc l                                         ; $5512: $2c
    ld sp, hl                                     ; $5513: $f9
    ret                                           ; $5514: $c9


    jp hl                                         ; $5515: $e9


    ld [c], a                                     ; $5516: $e2
    jp nc, Jump_066_5134                          ; $5517: $d2 $34 $51

    dec d                                         ; $551a: $15
    adc l                                         ; $551b: $8d
    jp nz, $44a9                                  ; $551c: $c2 $a9 $44

    ld de, $8cd3                                  ; $551f: $11 $d3 $8c
    ld [hl], e                                    ; $5522: $73
    ld a, a                                       ; $5523: $7f
    rst $20                                       ; $5524: $e7
    ld b, d                                       ; $5525: $42
    ld a, a                                       ; $5526: $7f
    or a                                          ; $5527: $b7
    ld hl, sp-$54                                 ; $5528: $f8 $ac
    and h                                         ; $552a: $a4
    ld [hl], $0a                                  ; $552b: $36 $0a
    and a                                         ; $552d: $a7
    db $eb                                        ; $552e: $eb
    ld a, [bc]                                    ; $552f: $0a
    ld d, l                                       ; $5530: $55
    sub [hl]                                      ; $5531: $96
    sub l                                         ; $5532: $95
    cpl                                           ; $5533: $2f
    ld h, $59                                     ; $5534: $26 $59
    and h                                         ; $5536: $a4
    call c, Call_066_79f3                         ; $5537: $dc $f3 $79
    ld a, a                                       ; $553a: $7f
    rst $20                                       ; $553b: $e7
    ld b, d                                       ; $553c: $42
    ld a, a                                       ; $553d: $7f
    or a                                          ; $553e: $b7
    ld hl, sp+$10                                 ; $553f: $f8 $10
    push de                                       ; $5541: $d5
    or a                                          ; $5542: $b7
    pop af                                        ; $5543: $f1
    ld b, d                                       ; $5544: $42
    ld [hl], l                                    ; $5545: $75
    ld c, h                                       ; $5546: $4c
    call nc, $0189                                ; $5547: $d4 $89 $01
    push af                                       ; $554a: $f5
    cp [hl]                                       ; $554b: $be
    sbc a                                         ; $554c: $9f
    dec a                                         ; $554d: $3d
    rst $18                                       ; $554e: $df
    halt                                          ; $554f: $76
    ld a, d                                       ; $5550: $7a
    cp l                                          ; $5551: $bd
    cpl                                           ; $5552: $2f
    add [hl]                                      ; $5553: $86
    or c                                          ; $5554: $b1
    ld c, l                                       ; $5555: $4d
    rra                                           ; $5556: $1f
    ld h, a                                       ; $5557: $67
    ld d, h                                       ; $5558: $54
    ld h, d                                       ; $5559: $62
    ld c, c                                       ; $555a: $49
    adc [hl]                                      ; $555b: $8e
    dec d                                         ; $555c: $15
    pop af                                        ; $555d: $f1
    sbc a                                         ; $555e: $9f
    sbc b                                         ; $555f: $98
    ld l, l                                       ; $5560: $6d
    ld l, l                                       ; $5561: $6d
    db $e3                                        ; $5562: $e3
    jp nz, Jump_066_6632                          ; $5563: $c2 $32 $66

    ld l, b                                       ; $5566: $68
    inc bc                                        ; $5567: $03
    xor d                                         ; $5568: $aa
    jr z, jr_066_55e8                             ; $5569: $28 $7d

    and [hl]                                      ; $556b: $a6
    ld l, c                                       ; $556c: $69
    sub b                                         ; $556d: $90
    and l                                         ; $556e: $a5
    halt                                          ; $556f: $76
    ld [hl], c                                    ; $5570: $71
    cp e                                          ; $5571: $bb
    and b                                         ; $5572: $a0
    and d                                         ; $5573: $a2

jr_066_5574:
    ld h, $4e                                     ; $5574: $26 $4e
    adc $b0                                       ; $5576: $ce $b0
    ei                                            ; $5578: $fb
    inc bc                                        ; $5579: $03
    db $db                                        ; $557a: $db
    add h                                         ; $557b: $84
    ld d, e                                       ; $557c: $53
    push bc                                       ; $557d: $c5
    cp e                                          ; $557e: $bb
    ccf                                           ; $557f: $3f
    adc c                                         ; $5580: $89
    inc de                                        ; $5581: $13
    ld d, b                                       ; $5582: $50
    add l                                         ; $5583: $85
    dec d                                         ; $5584: $15
    or d                                          ; $5585: $b2
    add hl, hl                                    ; $5586: $29
    rst $00                                       ; $5587: $c7
    dec h                                         ; $5588: $25
    push hl                                       ; $5589: $e5
    ld h, b                                       ; $558a: $60
    ld e, l                                       ; $558b: $5d
    jr jr_066_5574                                ; $558c: $18 $e6

    cp $00                                        ; $558e: $fe $00
    ld e, e                                       ; $5590: $5b
    rra                                           ; $5591: $1f

jr_066_5592:
    db $dd                                        ; $5592: $dd
    db $fd                                        ; $5593: $fd
    ld bc, $84db                                  ; $5594: $01 $db $84
    db $d3                                        ; $5597: $d3
    rla                                           ; $5598: $17
    rst $38                                       ; $5599: $ff
    sub c                                         ; $559a: $91
    inc de                                        ; $559b: $13
    and b                                         ; $559c: $a0
    ld h, l                                       ; $559d: $65
    db $fd                                        ; $559e: $fd
    pop af                                        ; $559f: $f1
    jr jr_066_55bc                                ; $55a0: $18 $1a

    ret c                                         ; $55a2: $d8

    xor l                                         ; $55a3: $ad
    and [hl]                                      ; $55a4: $a6
    ld [hl], a                                    ; $55a5: $77
    or a                                          ; $55a6: $b7
    adc l                                         ; $55a7: $8d
    reti                                          ; $55a8: $d9


    db $d3                                        ; $55a9: $d3
    dec c                                         ; $55aa: $0d
    ld c, l                                       ; $55ab: $4d
    ret nc                                        ; $55ac: $d0

    inc a                                         ; $55ad: $3c
    xor [hl]                                      ; $55ae: $ae
    ld bc, $259d                                  ; $55af: $01 $9d $25
    add hl, sp                                    ; $55b2: $39
    add l                                         ; $55b3: $85
    ld l, h                                       ; $55b4: $6c
    sbc [hl]                                      ; $55b5: $9e
    jr nc, jr_066_5592                            ; $55b6: $30 $da

    push de                                       ; $55b8: $d5
    xor $ba                                       ; $55b9: $ee $ba
    pop hl                                        ; $55bb: $e1

jr_066_55bc:
    inc bc                                        ; $55bc: $03
    db $db                                        ; $55bd: $db
    add h                                         ; $55be: $84
    db $d3                                        ; $55bf: $d3
    adc h                                         ; $55c0: $8c
    sbc b                                         ; $55c1: $98
    sbc h                                         ; $55c2: $9c
    or d                                          ; $55c3: $b2
    ccf                                           ; $55c4: $3f
    inc l                                         ; $55c5: $2c
    ld h, e                                       ; $55c6: $63
    rla                                           ; $55c7: $17
    rst $28                                       ; $55c8: $ef
    ei                                            ; $55c9: $fb
    xor [hl]                                      ; $55ca: $ae
    and h                                         ; $55cb: $a4
    ld d, [hl]                                    ; $55cc: $56
    ld a, [c]                                     ; $55cd: $f2
    ld l, c                                       ; $55ce: $69
    cp c                                          ; $55cf: $b9
    db $e4                                        ; $55d0: $e4
    ld l, c                                       ; $55d1: $69
    jp z, Jump_066_4fa1                           ; $55d2: $ca $a1 $4f

    di                                            ; $55d5: $f3
    call c, Call_066_7df7                         ; $55d6: $dc $f7 $7d
    ld a, a                                       ; $55d9: $7f
    db $db                                        ; $55da: $db
    sub a                                         ; $55db: $97
    inc h                                         ; $55dc: $24
    ld b, l                                       ; $55dd: $45
    adc l                                         ; $55de: $8d
    or e                                          ; $55df: $b3
    ld h, d                                       ; $55e0: $62
    sbc [hl]                                      ; $55e1: $9e
    ld e, l                                       ; $55e2: $5d
    cpl                                           ; $55e3: $2f
    ld h, $47                                     ; $55e4: $26 $47
    dec bc                                        ; $55e6: $0b
    reti                                          ; $55e7: $d9


jr_066_55e8:
    inc a                                         ; $55e8: $3c
    ld h, c                                       ; $55e9: $61
    ld a, [hl-]                                   ; $55ea: $3a
    ld e, l                                       ; $55eb: $5d
    jr @-$18                                      ; $55ec: $18 $e6

    cp $00                                        ; $55ee: $fe $00
    adc c                                         ; $55f0: $89

jr_066_55f1:
    ld h, e                                       ; $55f1: $63
    sbc c                                         ; $55f2: $99
    dec de                                        ; $55f3: $1b
    inc sp                                        ; $55f4: $33
    ld [$1481], a                                 ; $55f5: $ea $81 $14
    dec [hl]                                      ; $55f8: $35
    ld de, $4158                                  ; $55f9: $11 $58 $41
    rst $28                                       ; $55fc: $ef
    ei                                            ; $55fd: $fb
    xor $b8                                       ; $55fe: $ee $b8
    and [hl]                                      ; $5600: $a6
    inc e                                         ; $5601: $1c
    inc c                                         ; $5602: $0c
    jp c, $4394                                   ; $5603: $da $94 $43

    rst $38                                       ; $5606: $ff
    inc h                                         ; $5607: $24
    dec h                                         ; $5608: $25
    ld a, [hl-]                                   ; $5609: $3a
    dec a                                         ; $560a: $3d
    add a                                         ; $560b: $87
    ld h, $9c                                     ; $560c: $26 $9c
    xor $60                                       ; $560e: $ee $60
    ld c, h                                       ; $5610: $4c
    dec de                                        ; $5611: $1b
    ld h, d                                       ; $5612: $62
    sbc [hl]                                      ; $5613: $9e
    ld c, l                                       ; $5614: $4d
    rra                                           ; $5615: $1f
    dec sp                                        ; $5616: $3b
    halt                                          ; $5617: $76
    xor a                                         ; $5618: $af
    ld b, h                                       ; $5619: $44
    ld d, e                                       ; $561a: $53
    ld c, $f6                                     ; $561b: $0e $f6
    ret c                                         ; $561d: $d8

    ldh a, [rRP]                                  ; $561e: $f0 $56
    or b                                          ; $5620: $b0
    db $fc                                        ; $5621: $fc
    db $ec                                        ; $5622: $ec
    cp [hl]                                       ; $5623: $be
    rst $28                                       ; $5624: $ef
    rrca                                          ; $5625: $0f

jr_066_5626:
    sub a                                         ; $5626: $97
    jr c, jr_066_55f1                             ; $5627: $38 $c8

    jp nz, $a658                                  ; $5629: $c2 $58 $a6

    inc e                                         ; $562c: $1c
    ld d, $6c                                     ; $562d: $16 $6c
    ld a, [$8900]                                 ; $562f: $fa $00 $89
    ret nz                                        ; $5632: $c0

    ld a, [bc]                                    ; $5633: $0a
    ld a, [hl+]                                   ; $5634: $2a
    ld [$9fd4], a                                 ; $5635: $ea $d4 $9f
    dec h                                         ; $5638: $25
    jp Jump_066_78d2                              ; $5639: $c3 $d2 $78


    sbc d                                         ; $563c: $9a
    rst $28                                       ; $563d: $ef
    ld e, [hl]                                    ; $563e: $5e
    ld b, $d9                                     ; $563f: $06 $d9
    rst $18                                       ; $5641: $df
    cp l                                          ; $5642: $bd

jr_066_5643:
    ret nz                                        ; $5643: $c0

    jr nc, jr_066_5643                            ; $5644: $30 $fd

    ld b, a                                       ; $5646: $47
    ld d, $0b                                     ; $5647: $16 $0b

Call_066_5649:
    ld [hl], $74                                  ; $5649: $36 $74
    ld a, e                                       ; $564b: $7b
    rst $08                                       ; $564c: $cf
    and c                                         ; $564d: $a1
    add hl, bc                                    ; $564e: $09
    and a                                         ; $564f: $a7
    dec sp                                        ; $5650: $3b
    jr jr_066_5626                                ; $5651: $18 $d3

    add [hl]                                      ; $5653: $86

jr_066_5654:
    sbc b                                         ; $5654: $98
    ld b, a                                       ; $5655: $47
    call nc, $97a9                                ; $5656: $d4 $a9 $97
    ld sp, $2553                                  ; $5659: $31 $53 $25

Call_066_565c:
    dec de                                        ; $565c: $1b
    ld e, b                                       ; $565d: $58
    and h                                         ; $565e: $a4
    call c, $d9f3                                 ; $565f: $dc $f3 $d9
    dec e                                         ; $5662: $1d
    set 1, [hl]                                   ; $5663: $cb $ce
    sbc h                                         ; $5665: $9c
    add h                                         ; $5666: $84
    cp l                                          ; $5667: $bd
    jr z, jr_066_5654                             ; $5668: $28 $ea

    cp d                                          ; $566a: $ba
    ld c, [hl]                                    ; $566b: $4e
    rst $30                                       ; $566c: $f7
    adc b                                         ; $566d: $88
    rst $28                                       ; $566e: $ef
    sbc a                                         ; $566f: $9f
    and [hl]                                      ; $5670: $a6
    inc e                                         ; $5671: $1c
    ld a, [hl-]                                   ; $5672: $3a
    db $fd                                        ; $5673: $fd
    daa                                           ; $5674: $27
    ld a, [hl+]                                   ; $5675: $2a
    jp nc, $fd0e                                  ; $5676: $d2 $0e $fd

    daa                                           ; $5679: $27
    ld h, [hl]                                    ; $567a: $66
    sbc e                                         ; $567b: $9b
    add l                                         ; $567c: $85
    halt                                          ; $567d: $76
    ld a, a                                       ; $567e: $7f
    adc c                                         ; $567f: $89
    ld [hl], $bf                                  ; $5680: $36 $bf
    inc sp                                        ; $5682: $33
    sub $49                                       ; $5683: $d6 $49
    ld [hl], $50                                  ; $5685: $36 $50
    or d                                          ; $5687: $b2
    jp hl                                         ; $5688: $e9


    or c                                          ; $5689: $b1
    ret nz                                        ; $568a: $c0

    cp $23                                        ; $568b: $fe $23
    db $eb                                        ; $568d: $eb
    ld h, h                                       ; $568e: $64
    ld d, a                                       ; $568f: $57
    ret nc                                        ; $5690: $d0

    db $fc                                        ; $5691: $fc
    jp nz, $1ff4                                  ; $5692: $c2 $f4 $1f

    db $db                                        ; $5695: $db
    jr @-$4e                                      ; $5696: $18 $b0

    pop de                                        ; $5698: $d1
    ld b, [hl]                                    ; $5699: $46
    ld a, c                                       ; $569a: $79
    rst $18                                       ; $569b: $df
    rst $30                                       ; $569c: $f7
    cp d                                          ; $569d: $ba
    ld h, [hl]                                    ; $569e: $66
    rla                                           ; $569f: $17
    and [hl]                                      ; $56a0: $a6
    db $d3                                        ; $56a1: $d3
    sub h                                         ; $56a2: $94
    ld b, e                                       ; $56a3: $43
    dec d                                         ; $56a4: $15
    rst $28                                       ; $56a5: $ef
    cp $00                                        ; $56a6: $fe $00
    ld h, a                                       ; $56a8: $67
    ld d, h                                       ; $56a9: $54
    sbc l                                         ; $56aa: $9d
    ccf                                           ; $56ab: $3f
    sbc d                                         ; $56ac: $9a
    and a                                         ; $56ad: $a7
    ret nc                                        ; $56ae: $d0

    ld c, h                                       ; $56af: $4c
    ld l, e                                       ; $56b0: $6b
    ld [hl], h                                    ; $56b1: $74
    sub d                                         ; $56b2: $92
    call $8663                                    ; $56b3: $cd $63 $86
    cp e                                          ; $56b6: $bb
    sub a                                         ; $56b7: $97
    ld [hl], c                                    ; $56b8: $71
    ld e, c                                       ; $56b9: $59
    ld h, c                                       ; $56ba: $61
    ld d, a                                       ; $56bb: $57
    inc bc                                        ; $56bc: $03
    ld d, [hl]                                    ; $56bd: $56
    ld d, b                                       ; $56be: $50
    add l                                         ; $56bf: $85
    sub $b7                                       ; $56c0: $d6 $b7
    ld sp, hl                                     ; $56c2: $f9
    sbc l                                         ; $56c3: $9d
    pop de                                        ; $56c4: $d1
    ld a, [de]                                    ; $56c5: $1a
    sbc l                                         ; $56c6: $9d
    inc l                                         ; $56c7: $2c
    ld h, e                                       ; $56c8: $63
    and b                                         ; $56c9: $a0
    ld d, l                                       ; $56ca: $55
    sbc l                                         ; $56cb: $9d
    rrca                                          ; $56cc: $0f
    ld a, e                                       ; $56cd: $7b
    ld h, e                                       ; $56ce: $63
    rst $30                                       ; $56cf: $f7
    rlca                                          ; $56d0: $07
    db $db                                        ; $56d1: $db
    sub a                                         ; $56d2: $97
    inc h                                         ; $56d3: $24
    db $eb                                        ; $56d4: $eb
    db $d3                                        ; $56d5: $d3
    ret c                                         ; $56d6: $d8

    rst $38                                       ; $56d7: $ff
    ld c, c                                       ; $56d8: $49
    adc d                                         ; $56d9: $8a
    ld a, [de]                                    ; $56da: $1a
    add l                                         ; $56db: $85
    ld d, e                                       ; $56dc: $53
    sbc a                                         ; $56dd: $9f
    add $7a                                       ; $56de: $c6 $7a
    ld hl, sp+$04                                 ; $56e0: $f8 $04
    rst $08                                       ; $56e2: $cf
    db $fd                                        ; $56e3: $fd
    ld bc, $dddb                                  ; $56e4: $01 $db $dd
    ld [$bc35], a                                 ; $56e7: $ea $35 $bc
    ld e, l                                       ; $56ea: $5d
    or b                                          ; $56eb: $b0
    and [hl]                                      ; $56ec: $a6
    inc e                                         ; $56ed: $1c

Jump_066_56ee:
    ld a, [bc]                                    ; $56ee: $0a
    call $b15c                                    ; $56ef: $cd $5c $b1
    sbc h                                         ; $56f2: $9c
    ld a, [$1aeb]                                 ; $56f3: $fa $eb $1a
    ld d, b                                       ; $56f6: $50
    daa                                           ; $56f7: $27
    ld e, c                                       ; $56f8: $59
    rst $08                                       ; $56f9: $cf
    inc l                                         ; $56fa: $2c
    ld l, h                                       ; $56fb: $6c
    jp c, $0318                                   ; $56fc: $da $18 $03

    xor $0f                                       ; $56ff: $ee $0f
    adc c                                         ; $5701: $89
    inc de                                        ; $5702: $13
    ld d, b                                       ; $5703: $50
    ld l, b                                       ; $5704: $68
    and [hl]                                      ; $5705: $a6
    push de                                       ; $5706: $d5
    rra                                           ; $5707: $1f
    ld l, e                                       ; $5708: $6b
    ld b, b                                       ; $5709: $40
    or [hl]                                       ; $570a: $b6
    dec [hl]                                      ; $570b: $35
    ld l, l                                       ; $570c: $6d
    ld b, b                                       ; $570d: $40
    sbc l                                         ; $570e: $9d
    ld l, h                                       ; $570f: $6c
    jp z, $d831                                   ; $5710: $ca $31 $d8

    call c, $db1f                                 ; $5713: $dc $1f $db
    add h                                         ; $5716: $84
    db $d3                                        ; $5717: $d3
    ld [hl], l                                    ; $5718: $75
    ld e, l                                       ; $5719: $5d
    ld h, $a6                                     ; $571a: $26 $a6
    ld [hl], c                                    ; $571c: $71
    rst $18                                       ; $571d: $df
    ld [hl], a                                    ; $571e: $77
    inc hl                                        ; $571f: $23
    inc bc                                        ; $5720: $03
    cp e                                          ; $5721: $bb
    ld c, h                                       ; $5722: $4c
    ld c, h                                       ; $5723: $4c
    db $e3                                        ; $5724: $e3
    cp $00                                        ; $5725: $fe $00
    sub a                                         ; $5727: $97
    cp c                                          ; $5728: $b9
    ld a, d                                       ; $5729: $7a
    cp c                                          ; $572a: $b9
    ld d, b                                       ; $572b: $50
    scf                                           ; $572c: $37
    ld a, l                                       ; $572d: $7d
    adc c                                         ; $572e: $89
    ld h, e                                       ; $572f: $63
    add hl, hl                                    ; $5730: $29
    add a                                         ; $5731: $87
    xor [hl]                                      ; $5732: $ae
    ld l, e                                       ; $5733: $6b
    jp z, $51a1                                   ; $5734: $ca $a1 $51

    jr c, jr_066_5786                             ; $5737: $38 $4d

    ld [hl], d                                    ; $5739: $72
    push af                                       ; $573a: $f5
    ret c                                         ; $573b: $d8

    add b                                         ; $573c: $80
    ld a, d                                       ; $573d: $7a
    cp c                                          ; $573e: $b9
    ret nc                                        ; $573f: $d0

    ld [hl], $7d                                  ; $5740: $36 $7d
    dec sp                                        ; $5742: $3b
    add sp, -$7f                                  ; $5743: $e8 $81
    halt                                          ; $5745: $76
    ld h, d                                       ; $5746: $62
    ld b, b                                       ; $5747: $40
    cp l                                          ; $5748: $bd
    rst $28                                       ; $5749: $ef
    ld h, a                                       ; $574a: $67
    rst $08                                       ; $574b: $cf
    or a                                          ; $574c: $b7
    sbc l                                         ; $574d: $9d
    ld e, [hl]                                    ; $574e: $5e
    rst $28                                       ; $574f: $ef
    adc e                                         ; $5750: $8b
    ld h, c                                       ; $5751: $61
    ld l, h                                       ; $5752: $6c
    db $d3                                        ; $5753: $d3
    rlca                                          ; $5754: $07
    dec sp                                        ; $5755: $3b
    ldh a, [rLY]                                  ; $5756: $f0 $44
    push af                                       ; $5758: $f5
    rst $20                                       ; $5759: $e7
    jp hl                                         ; $575a: $e9


    db $dd                                        ; $575b: $dd
    dec e                                         ; $575c: $1d
    db $e3                                        ; $575d: $e3
    jp z, Jump_000_1da6                           ; $575e: $ca $a6 $1d

    dec l                                         ; $5761: $2d
    inc a                                         ; $5762: $3c
    ld h, c                                       ; $5763: $61
    inc bc                                        ; $5764: $03
    ld a, d                                       ; $5765: $7a
    cp [hl]                                       ; $5766: $be
    db $ed                                        ; $5767: $ed
    db $f4                                        ; $5768: $f4
    ld a, d                                       ; $5769: $7a
    ld e, a                                       ; $576a: $5f
    inc c                                         ; $576b: $0c
    ld h, e                                       ; $576c: $63
    rst $30                                       ; $576d: $f7
    rlca                                          ; $576e: $07
    sbc e                                         ; $576f: $9b
    ld b, a                                       ; $5770: $47
    ld c, [hl]                                    ; $5771: $4e
    rst $10                                       ; $5772: $d7
    dec [hl]                                      ; $5773: $35
    push hl                                       ; $5774: $e5
    ld d, b                                       ; $5775: $50
    ld a, a                                       ; $5776: $7f
    ld d, h                                       ; $5777: $54
    and a                                         ; $5778: $a7
    adc b                                         ; $5779: $88
    reti                                          ; $577a: $d9


    ld l, b                                       ; $577b: $68
    sbc e                                         ; $577c: $9b
    ld a, $3b                                     ; $577d: $3e $3b
    ld d, b                                       ; $577f: $50
    adc c                                         ; $5780: $89
    ld b, $18                                     ; $5781: $06 $18
    or h                                          ; $5783: $b4
    xor h                                         ; $5784: $ac
    ld [hl+], a                                   ; $5785: $22

jr_066_5786:
    ld h, $59                                     ; $5786: $26 $59
    push bc                                       ; $5788: $c5
    ld l, a                                       ; $5789: $6f
    ret z                                         ; $578a: $c8

    cp h                                          ; $578b: $bc
    ccf                                           ; $578c: $3f
    ld e, e                                       ; $578d: $5b
    xor c                                         ; $578e: $a9
    ld c, l                                       ; $578f: $4d
    add hl, sp                                    ; $5790: $39
    ld l, $3d                                     ; $5791: $2e $3d
    and e                                         ; $5793: $a3
    xor h                                         ; $5794: $ac
    ld [hl+], a                                   ; $5795: $22
    ld h, $59                                     ; $5796: $26 $59
    push bc                                       ; $5798: $c5
    ld l, a                                       ; $5799: $6f
    ret z                                         ; $579a: $c8

    call c, $01f4                                 ; $579b: $dc $f4 $01
    dec sp                                        ; $579e: $3b
    ld d, b                                       ; $579f: $50
    cp b                                          ; $57a0: $b8
    ld h, [hl]                                    ; $57a1: $66
    db $f4                                        ; $57a2: $f4
    sbc a                                         ; $57a3: $9f
    sbc b                                         ; $57a4: $98
    xor c                                         ; $57a5: $a9
    adc d                                         ; $57a6: $8a
    ld b, [hl]                                    ; $57a7: $46
    pop hl                                        ; $57a8: $e1
    inc d                                         ; $57a9: $14
    add $2a                                       ; $57aa: $c6 $2a
    ld a, [hl]                                    ; $57ac: $7e
    ld b, e                                       ; $57ad: $43
    and [hl]                                      ; $57ae: $a6
    xor b                                         ; $57af: $a8
    ld a, c                                       ; $57b0: $79
    sub [hl]                                      ; $57b1: $96

jr_066_57b2:
    rla                                           ; $57b2: $17
    sub e                                         ; $57b3: $93
    ld [hl], e                                    ; $57b4: $73
    rst $30                                       ; $57b5: $f7
    ld [hl-], a                                   ; $57b6: $32
    ld b, h                                       ; $57b7: $44
    ld l, l                                       ; $57b8: $6d
    ld b, b                                       ; $57b9: $40
    inc bc                                        ; $57ba: $03
    db $f4                                        ; $57bb: $f4
    rra                                           ; $57bc: $1f
    adc a                                         ; $57bd: $8f
    dec a                                         ; $57be: $3d
    xor e                                         ; $57bf: $ab
    adc $ae                                       ; $57c0: $ce $ae
    rla                                           ; $57c2: $17
    sub e                                         ; $57c3: $93
    ld [hl], e                                    ; $57c4: $73
    ld a, a                                       ; $57c5: $7f
    dec sp                                        ; $57c6: $3b
    add sp, -$7f                                  ; $57c7: $e8 $81
    sub [hl]                                      ; $57c9: $96
    ld d, l                                       ; $57ca: $55
    call nz, Call_000_1b24                        ; $57cb: $c4 $24 $1b
    ret nc                                        ; $57ce: $d0

    di                                            ; $57cf: $f3
    ld l, l                                       ; $57d0: $6d
    and a                                         ; $57d1: $a7
    rst $10                                       ; $57d2: $d7
    ei                                            ; $57d3: $fb
    ld h, d                                       ; $57d4: $62
    jr jr_066_57b2                                ; $57d5: $18 $db

    db $f4                                        ; $57d7: $f4
    ld bc, $b089                                  ; $57d8: $01 $89 $b0
    or h                                          ; $57db: $b4
    adc e                                         ; $57dc: $8b
    add c                                         ; $57dd: $81
    ld h, l                                       ; $57de: $65
    cp c                                          ; $57df: $b9
    and h                                         ; $57e0: $a4

jr_066_57e1:
    db $dd                                        ; $57e1: $dd
    ld a, [hl-]                                   ; $57e2: $3a
    reti                                          ; $57e3: $d9


    add b                                         ; $57e4: $80
    sbc [hl]                                      ; $57e5: $9e
    ld l, a                                       ; $57e6: $6f
    dec sp                                        ; $57e7: $3b
    cp l                                          ; $57e8: $bd
    sbc $17                                       ; $57e9: $de $17
    jp $fdd8                                      ; $57eb: $c3 $d8 $fd


    ld bc, $20db                                  ; $57ee: $01 $db $20
    xor e                                         ; $57f1: $ab
    ld c, b                                       ; $57f2: $48
    add hl, sp                                    ; $57f3: $39
    ld e, b                                       ; $57f4: $58
    dec d                                         ; $57f5: $15
    xor a                                         ; $57f6: $af
    xor h                                         ; $57f7: $ac
    ld a, h                                       ; $57f8: $7c
    ld sp, $fac9                                  ; $57f9: $31 $c9 $fa
    or [hl]                                       ; $57fc: $b6
    cp e                                          ; $57fd: $bb
    ld l, a                                       ; $57fe: $6f
    adc a                                         ; $57ff: $8f
    ld d, l                                       ; $5800: $55
    call nz, $ef24                                ; $5801: $c4 $24 $ef
    rrca                                          ; $5804: $0f
    dec sp                                        ; $5805: $3b
    add sp, -$7f                                  ; $5806: $e8 $81
    sub [hl]                                      ; $5808: $96
    ld d, l                                       ; $5809: $55
    call nz, $eb24                                ; $580a: $c4 $24 $eb
    db $d3                                        ; $580d: $d3
    ld e, b                                       ; $580e: $58
    call nz, $b46c                                ; $580f: $c4 $6c $b4
    ld b, d                                       ; $5812: $42
    or $7c                                        ; $5813: $f6 $7c
    db $db                                        ; $5815: $db
    jp hl                                         ; $5816: $e9


    push af                                       ; $5817: $f5

Jump_066_5818:
    cp [hl]                                       ; $5818: $be
    jr jr_066_57e1                                ; $5819: $18 $c6

    ld [hl], $7d                                  ; $581b: $36 $7d
    dec sp                                        ; $581d: $3b
    ld h, b                                       ; $581e: $60
    adc a                                         ; $581f: $8f
    ld [hl], l                                    ; $5820: $75
    or d                                          ; $5821: $b2
    ld e, [hl]                                    ; $5822: $5e
    db $e3                                        ; $5823: $e3
    ccf                                           ; $5824: $3f
    push af                                       ; $5825: $f5
    ld [hl-], a                                   ; $5826: $32
    ld h, [hl]                                    ; $5827: $66
    xor d                                         ; $5828: $aa
    ld h, h                                       ; $5829: $64
    rst $00                                       ; $582a: $c7
    ei                                            ; $582b: $fb
    cp $c7                                        ; $582c: $fe $c7
    and l                                         ; $582e: $a5
    add c                                         ; $582f: $81
    ld b, l                                       ; $5830: $45
    jp z, $9f3d                                   ; $5831: $ca $3d $9f

    ld d, l                                       ; $5834: $55
    inc [hl]                                      ; $5835: $34
    ld a, [bc]                                    ; $5836: $0a
    and a                                         ; $5837: $a7
    ld a, [hl-]                                   ; $5838: $3a
    adc $03                                       ; $5839: $ce $03
    ld d, l                                       ; $583b: $55
    ld l, h                                       ; $583c: $6c
    ld hl, sp+$00                                 ; $583d: $f8 $00
    sub a                                         ; $583f: $97
    jr c, jr_066_5870                             ; $5840: $38 $2e

    ld e, l                                       ; $5842: $5d
    or a                                          ; $5843: $b7
    jp hl                                         ; $5844: $e9


    inc bc                                        ; $5845: $03
    adc c                                         ; $5846: $89
    or $24                                        ; $5847: $f6 $24
    sbc [hl]                                      ; $5849: $9e
    call $df7d                                    ; $584a: $cd $7d $df
    call Call_066_565c                            ; $584d: $cd $5c $56
    ret c                                         ; $5850: $d8

    ld d, l                                       ; $5851: $55
    adc c                                         ; $5852: $89
    ld a, [$402e]                                 ; $5853: $fa $2e $40
    dec d                                         ; $5856: $15
    ld e, d                                       ; $5857: $5a
    cpl                                           ; $5858: $2f
    ld [hl], a                                    ; $5859: $77
    pop bc                                        ; $585a: $c1
    ld [$bd64], a                                 ; $585b: $ea $64 $bd
    ld e, h                                       ; $585e: $5c
    adc l                                         ; $585f: $8d
    db $dd                                        ; $5860: $dd
    rst $30                                       ; $5861: $f7
    db $fd                                        ; $5862: $fd
    ld bc, $3897                                  ; $5863: $01 $97 $38
    call nc, $d5cb                                ; $5866: $d4 $cb $d5
    ret c                                         ; $5869: $d8

    and [hl]                                      ; $586a: $a6
    rrca                                          ; $586b: $0f
    add hl, bc                                    ; $586c: $09
    sbc d                                         ; $586d: $9a
    and c                                         ; $586e: $a1
    db $fd                                        ; $586f: $fd

jr_066_5870:
    rst $00                                       ; $5870: $c7
    inc c                                         ; $5871: $0c
    ld h, c                                       ; $5872: $61
    inc c                                         ; $5873: $0c
    jp c, $a07c                                   ; $5874: $da $7c $a0

    xor h                                         ; $5877: $ac
    ld [hl], h                                    ; $5878: $74
    cpl                                           ; $5879: $2f
    ld d, e                                       ; $587a: $53
    ei                                            ; $587b: $fb
    adc a                                         ; $587c: $8f
    add hl, de                                    ; $587d: $19
    ld h, d                                       ; $587e: $62
    add [hl]                                      ; $587f: $86
    ld [hl], $a0                                  ; $5880: $36 $a0
    or h                                          ; $5882: $b4
    ei                                            ; $5883: $fb
    cp [hl]                                       ; $5884: $be
    sbc e                                         ; $5885: $9b
    ld [hl], d                                    ; $5886: $72
    adc h                                         ; $5887: $8c
    ld h, c                                       ; $5888: $61
    ld [$bd64], a                                 ; $5889: $ea $64 $bd
    adc h                                         ; $588c: $8c
    sbc c                                         ; $588d: $99
    ld a, [hl+]                                   ; $588e: $2a
    ld e, c                                       ; $588f: $59
    adc c                                         ; $5890: $89
    jr c, jr_066_58ed                             ; $5891: $38 $5a

    xor b                                         ; $5893: $a8
    rrca                                          ; $5894: $0f
    ld h, e                                       ; $5895: $63
    inc sp                                        ; $5896: $33
    ld h, h                                       ; $5897: $64
    reti                                          ; $5898: $d9


    sbc a                                         ; $5899: $9f
    ld e, $ac                                     ; $589a: $1e $ac
    ld h, a                                       ; $589c: $67

jr_066_589d:
    ld a, l                                       ; $589d: $7d
    call nz, $8ce0                                ; $589e: $c4 $e0 $8c
    add c                                         ; $58a1: $81
    rst $30                                       ; $58a2: $f7
    rlca                                          ; $58a3: $07
    sub a                                         ; $58a4: $97
    ld [hl], c                                    ; $58a5: $71
    ld e, c                                       ; $58a6: $59
    ld h, c                                       ; $58a7: $61
    ld d, a                                       ; $58a8: $57
    rst $38                                       ; $58a9: $ff
    adc c                                         ; $58aa: $89
    adc d                                         ; $58ab: $8a
    or h                                          ; $58ac: $b4
    ld a, e                                       ; $58ad: $7b
    xor d                                         ; $58ae: $aa
    ret nc                                        ; $58af: $d0

    ld [hl+], a                                   ; $58b0: $22
    cp $13                                        ; $58b1: $fe $13
    or e                                          ; $58b3: $b3
    pop de                                        ; $58b4: $d1
    sbc d                                         ; $58b5: $9a
    ld [hl], d                                    ; $58b6: $72
    ld e, h                                       ; $58b7: $5c
    ld d, d                                       ; $58b8: $52
    ld c, $d6                                     ; $58b9: $0e $d6
    ld a, a                                       ; $58bb: $7f
    sbc [hl]                                      ; $58bc: $9e
    or d                                          ; $58bd: $b2
    add hl, hl                                    ; $58be: $29
    add a                                         ; $58bf: $87
    or d                                          ; $58c0: $b2
    sub d                                         ; $58c1: $92
    ld sp, $15bf                                  ; $58c2: $31 $bf $15
    ld d, h                                       ; $58c5: $54
    ld d, c                                       ; $58c6: $51
    ret                                           ; $58c7: $c9


    and a                                         ; $58c8: $a7
    ld d, l                                       ; $58c9: $55
    and h                                         ; $58ca: $a4
    sbc l                                         ; $58cb: $9d
    pop af                                        ; $58cc: $f1
    cp $00                                        ; $58cd: $fe $00
    db $db                                        ; $58cf: $db
    sbc e                                         ; $58d0: $9b
    ld [hl], d                                    ; $58d1: $72
    rlca                                          ; $58d2: $07
    ld l, [hl]                                    ; $58d3: $6e
    ld a, [$9700]                                 ; $58d4: $fa $00 $97
    ld c, e                                       ; $58d7: $4b
    halt                                          ; $58d8: $76
    add l                                         ; $58d9: $85
    dec h                                         ; $58da: $25
    ret                                           ; $58db: $c9


    and [hl]                                      ; $58dc: $a6
    adc l                                         ; $58dd: $8d
    dec hl                                        ; $58de: $2b
    ld h, [hl]                                    ; $58df: $66
    ld d, [hl]                                    ; $58e0: $56
    ld h, c                                       ; $58e1: $61
    xor e                                         ; $58e2: $ab
    rst $00                                       ; $58e3: $c7
    ld a, [$2f30]                                 ; $58e4: $fa $30 $2f
    ld e, [hl]                                    ; $58e7: $5e
    and [hl]                                      ; $58e8: $a6
    ld b, h                                       ; $58e9: $44
    call z, Call_000_3fb8                         ; $58ea: $cc $b8 $3f

jr_066_58ed:
    rla                                           ; $58ed: $17
    xor [hl]                                      ; $58ee: $ae
    dec [hl]                                      ; $58ef: $35
    inc hl                                        ; $58f0: $23
    ld h, $a7                                     ; $58f1: $26 $a7
    ld c, [hl]                                    ; $58f3: $4e
    ld [hl], d                                    ; $58f4: $72
    jp Jump_066_6707                              ; $58f5: $c3 $07 $67


    ld sp, hl                                     ; $58f8: $f9
    ld sp, hl                                     ; $58f9: $f9
    ret                                           ; $58fa: $c9


    reti                                          ; $58fb: $d9


    ret nc                                        ; $58fc: $d0

    dec bc                                        ; $58fd: $0b
    inc [hl]                                      ; $58fe: $34
    ld c, a                                       ; $58ff: $4f
    ld d, a                                       ; $5900: $57
    ld a, h                                       ; $5901: $7c
    sub l                                         ; $5902: $95
    adc h                                         ; $5903: $8c
    add hl, de                                    ; $5904: $19

Call_066_5905:
    ld d, [hl]                                    ; $5905: $56
    ld l, b                                       ; $5906: $68
    ld b, [hl]                                    ; $5907: $46
    ld d, a                                       ; $5908: $57
    ld e, b                                       ; $5909: $58
    sub d                                         ; $590a: $92
    ld d, e                                       ; $590b: $53
    adc c                                         ; $590c: $89
    ld b, l                                       ; $590d: $45
    jr c, jr_066_589d                             ; $590e: $38 $8d

    ld d, e                                       ; $5910: $53
    db $dd                                        ; $5911: $dd
    dec l                                         ; $5912: $2d
    cp a                                          ; $5913: $bf
    reti                                          ; $5914: $d9


    ld d, b                                       ; $5915: $50
    pop af                                        ; $5916: $f1
    ld a, [hl+]                                   ; $5917: $2a
    ld h, d                                       ; $5918: $62
    sub d                                         ; $5919: $92
    ld e, l                                       ; $591a: $5d
    rst $10                                       ; $591b: $d7
    jp $d337                                      ; $591c: $c3 $37 $d3


    ld [hl], a                                    ; $591f: $77
    cp c                                          ; $5920: $b9
    rst $20                                       ; $5921: $e7
    ld a, [de]                                    ; $5922: $1a
    rst $38                                       ; $5923: $ff
    adc c                                         ; $5924: $89
    ld c, a                                       ; $5925: $4f
    rrca                                          ; $5926: $0f
    cp a                                          ; $5927: $bf
    dec hl                                        ; $5928: $2b
    sbc [hl]                                      ; $5929: $9e
    rst $10                                       ; $592a: $d7
    ld [hl], l                                    ; $592b: $75
    sbc c                                         ; $592c: $99
    db $f4                                        ; $592d: $f4
    ld l, h                                       ; $592e: $6c
    ld hl, sp+$00                                 ; $592f: $f8 $00
    db $db                                        ; $5931: $db
    ld h, e                                       ; $5932: $63
    ld b, b                                       ; $5933: $40
    db $fd                                        ; $5934: $fd
    ld d, c                                       ; $5935: $51
    sbc l                                         ; $5936: $9d
    jp nc, $518c                                  ; $5937: $d2 $8c $51

Jump_066_593a:
    nop                                           ; $593a: $00
    xor l                                         ; $593b: $ad
    ld c, [hl]                                    ; $593c: $4e
    ld [hl], d                                    ; $593d: $72
    db $d3                                        ; $593e: $d3
    rlca                                          ; $593f: $07
    ld [c], a                                     ; $5940: $e2
    ld a, a                                       ; $5941: $7f
    ld [hl], d                                    ; $5942: $72
    sbc d                                         ; $5943: $9a
    ld [hl], d                                    ; $5944: $72
    add sp, -$16                                  ; $5945: $e8 $ea
    push de                                       ; $5947: $d5
    ld c, c                                       ; $5948: $49
    ld [hl], $4e                                  ; $5949: $36 $4e
    xor a                                         ; $594b: $af
    and b                                         ; $594c: $a0
    and $dd                                       ; $594d: $e6 $dd
    inc a                                         ; $594f: $3c
    ld l, [hl]                                    ; $5950: $6e
    sbc c                                         ; $5951: $99
    ld b, $34                                     ; $5952: $06 $34
    ld hl, $6366                                  ; $5954: $21 $66 $63
    ldh [$fd], a                                  ; $5957: $e0 $fd
    ld bc, $d467                                  ; $5959: $01 $67 $d4
    ld c, c                                       ; $595c: $49
    ld [hl], $6d                                  ; $595d: $36 $6d
    ld e, h                                       ; $595f: $5c
    ld sp, $54b3                                  ; $5960: $31 $b3 $54
    ld a, l                                       ; $5963: $7d
    or d                                          ; $5964: $b2
    add hl, hl                                    ; $5965: $29
    add a                                         ; $5966: $87
    and [hl]                                      ; $5967: $a6
    inc e                                         ; $5968: $1c
    inc c                                         ; $5969: $0c
    cp d                                          ; $596a: $ba
    jp hl                                         ; $596b: $e9


    inc bc                                        ; $596c: $03
    db $db                                        ; $596d: $db
    add h                                         ; $596e: $84
    ld d, e                                       ; $596f: $53
    call nz, Call_066_627f                        ; $5970: $c4 $7f $62
    ld [hl], $bc                                  ; $5973: $36 $bc
    ld b, [hl]                                    ; $5975: $46
    call nz, $93a4                                ; $5976: $c4 $a4 $93
    cp h                                          ; $5979: $bc
    ccf                                           ; $597a: $3f
    adc c                                         ; $597b: $89
    ld [hl], $bf                                  ; $597c: $36 $bf
    inc sp                                        ; $597e: $33
    ld l, d                                       ; $597f: $6a
    ld b, [hl]                                    ; $5980: $46
    db $e3                                        ; $5981: $e3
    db $f4                                        ; $5982: $f4
    ld a, [bc]                                    ; $5983: $0a
    ld l, b                                       ; $5984: $68
    sbc $cd                                       ; $5985: $de $cd
    db $e3                                        ; $5987: $e3
    sub [hl]                                      ; $5988: $96
    ld l, c                                       ; $5989: $69
    ld b, b                                       ; $598a: $40
    inc de                                        ; $598b: $13
    ld h, d                                       ; $598c: $62
    ld [hl], $06                                  ; $598d: $36 $06
    ld l, [hl]                                    ; $598f: $6e
    xor d                                         ; $5990: $aa
    ld hl, sp-$61                                 ; $5991: $f8 $9f
    sbc h                                         ; $5993: $9c
    and [hl]                                      ; $5994: $a6
    inc e                                         ; $5995: $1c
    ld [$1b24], a                                 ; $5996: $ea $24 $1b
    xor b                                         ; $5999: $a8
    ld c, l                                       ; $599a: $4d
    xor a                                         ; $599b: $af
    ld e, c                                       ; $599c: $59
    jp c, $d42d                                   ; $599d: $da $2d $d4

    and $17                                       ; $59a0: $e6 $17
    sub e                                         ; $59a2: $93
    ld l, h                                       ; $59a3: $6c
    jp z, $4971                                   ; $59a4: $ca $71 $49

    add hl, sp                                    ; $59a7: $39
    ld e, b                                       ; $59a8: $58
    rst $38                                       ; $59a9: $ff
    ld a, c                                       ; $59aa: $79
    jp z, $f74a                                   ; $59ab: $ca $4a $f7

    ld a, [c]                                     ; $59ae: $f2
    call nc, $e1a7                                ; $59af: $d4 $a7 $e1
    ld a, a                                       ; $59b2: $7f
    add c                                         ; $59b3: $81
    db $fd                                        ; $59b4: $fd
    ld b, a                                       ; $59b5: $47
    sub $49                                       ; $59b6: $d6 $49
    ld [hl], $6d                                  ; $59b8: $36 $6d
    ld e, h                                       ; $59ba: $5c
    ld sp, $eef3                                  ; $59bb: $31 $f3 $ee
    ld h, l                                       ; $59be: $65
    ld e, h                                       ; $59bf: $5c
    ld d, [hl]                                    ; $59c0: $56
    ret c                                         ; $59c1: $d8

    push de                                       ; $59c2: $d5
    add b                                         ; $59c3: $80

Jump_066_59c4:
    dec d                                         ; $59c4: $15
    ld d, h                                       ; $59c5: $54
    and c                                         ; $59c6: $a1
    push af                                       ; $59c7: $f5
    ld l, l                                       ; $59c8: $6d
    ld a, [hl]                                    ; $59c9: $7e
    ld h, a                                       ; $59ca: $67
    or h                                          ; $59cb: $b4
    ld c, d                                       ; $59cc: $4a
    inc l                                         ; $59cd: $2c
    ret                                           ; $59ce: $c9


    or c                                          ; $59cf: $b1
    ei                                            ; $59d0: $fb
    inc bc                                        ; $59d1: $03
    db $db                                        ; $59d2: $db
    sbc e                                         ; $59d3: $9b
    ld [hl], d                                    ; $59d4: $72
    add sp, -$46                                  ; $59d5: $e8 $ba
    ld a, [hl-]                                   ; $59d7: $3a
    ret                                           ; $59d8: $c9


    ld e, [hl]                                    ; $59d9: $5e
    xor a                                         ; $59da: $af
    adc b                                         ; $59db: $88
    ld c, c                                       ; $59dc: $49
    ld e, $be                                     ; $59dd: $1e $be
    jp hl                                         ; $59df: $e9


    inc bc                                        ; $59e0: $03
    dec sp                                        ; $59e1: $3b
    ldh a, [$ca]                                  ; $59e2: $f0 $ca
    jp z, $9317                                   ; $59e4: $ca $17 $93

    inc d                                         ; $59e7: $14
    ld d, l                                       ; $59e8: $55
    ld d, d                                       ; $59e9: $52
    dec de                                        ; $59ea: $1b
    add l                                         ; $59eb: $85
    ld d, e                                       ; $59ec: $53

jr_066_59ed:
    ld [hl], $3b                                  ; $59ed: $36 $3b
    sbc $1f                                       ; $59ef: $de $1f
    db $db                                        ; $59f1: $db
    add h                                         ; $59f2: $84
    inc hl                                        ; $59f3: $23
    ld l, d                                       ; $59f4: $6a
    add b                                         ; $59f5: $80
    cp $6e                                        ; $59f6: $fe $6e
    pop af                                        ; $59f8: $f1
    ld a, c                                       ; $59f9: $79
    ld a, a                                       ; $59fa: $7f
    db $db                                        ; $59fb: $db
    add h                                         ; $59fc: $84
    ld d, e                                       ; $59fd: $53
    cpl                                           ; $59fe: $2f
    rst $10                                       ; $59ff: $d7
    ld c, a                                       ; $5a00: $4f
    ld e, a                                       ; $5a01: $5f
    ret nz                                        ; $5a02: $c0

    db $e3                                        ; $5a03: $e3
    db $fd                                        ; $5a04: $fd

jr_066_5a05:
    ld bc, $8209                                  ; $5a05: $01 $09 $82

jr_066_5a08:
    ld a, l                                       ; $5a08: $7d
    ret c                                         ; $5a09: $d8

    sub e                                         ; $5a0a: $93
    adc b                                         ; $5a0b: $88
    sbc c                                         ; $5a0c: $99
    cp l                                          ; $5a0d: $bd
    ld a, [hl]                                    ; $5a0e: $7e
    rlca                                          ; $5a0f: $07
    jp nc, Jump_000_062e                          ; $5a10: $d2 $2e $06

    or $12                                        ; $5a13: $f6 $12

jr_066_5a15:
    rst $00                                       ; $5a15: $c7
    push hl                                       ; $5a16: $e5
    dec b                                         ; $5a17: $05
    ld b, $1c                                     ; $5a18: $06 $1c
    ld a, [hl]                                    ; $5a1a: $7e
    rst $30                                       ; $5a1b: $f7
    adc h                                         ; $5a1c: $8c
    ld [hl-], a                                   ; $5a1d: $32
    jr nz, jr_066_5a05                            ; $5a1e: $20 $e5

    jr jr_066_5a08                                ; $5a20: $18 $e6

    cp $00                                        ; $5a22: $fe $00
    dec sp                                        ; $5a24: $3b
    ldh a, [$ba]                                  ; $5a25: $f0 $ba
    xor h                                         ; $5a27: $ac
    db $dd                                        ; $5a28: $dd
    rra                                           ; $5a29: $1f
    db $db                                        ; $5a2a: $db
    sub a                                         ; $5a2b: $97
    or l                                          ; $5a2c: $b5
    adc [hl]                                      ; $5a2d: $8e
    set 0, [hl]                                   ; $5a2e: $cb $c6
    xor [hl]                                      ; $5a30: $ae
    or b                                          ; $5a31: $b0
    db $eb                                        ; $5a32: $eb
    cp $00                                        ; $5a33: $fe $00
    sbc e                                         ; $5a35: $9b
    jp hl                                         ; $5a36: $e9


    cp e                                          ; $5a37: $bb
    call c, $8d73                                 ; $5a38: $dc $73 $8d
    rst $38                                       ; $5a3b: $ff
    call nz, Call_000_1ba7                        ; $5a3c: $c4 $a7 $1b
    ld a, $e7                                     ; $5a3f: $3e $e7
    ld b, b                                       ; $5a41: $40
    ld l, [hl]                                    ; $5a42: $6e
    ld e, h                                       ; $5a43: $5c

jr_066_5a44:
    cp l                                          ; $5a44: $bd
    jr jr_066_59ed                                ; $5a45: $18 $a6

    db $ec                                        ; $5a47: $ec
    ld sp, hl                                     ; $5a48: $f9
    or [hl]                                       ; $5a49: $b6
    db $d3                                        ; $5a4a: $d3
    db $eb                                        ; $5a4b: $eb
    ld a, l                                       ; $5a4c: $7d
    ld sp, $898c                                  ; $5a4d: $31 $8c $89
    sbc d                                         ; $5a50: $9a
    ld [hl], d                                    ; $5a51: $72
    or b                                          ; $5a52: $b0
    rla                                           ; $5a53: $17
    and $ee                                       ; $5a54: $e6 $ee
    ld a, c                                       ; $5a56: $79
    call c, $2f55                                 ; $5a57: $dc $55 $2f
    ld d, a                                       ; $5a5a: $57
    ld h, e                                       ; $5a5b: $63
    dec c                                         ; $5a5c: $0d
    jr z, jr_066_5ac1                             ; $5a5d: $28 $62

    ld [hl], $da                                  ; $5a5f: $36 $da
    db $fd                                        ; $5a61: $fd
    ld bc, $97db                                  ; $5a62: $01 $db $97
    or l                                          ; $5a65: $b5
    ei                                            ; $5a66: $fb
    inc bc                                        ; $5a67: $03
    rst $20                                       ; $5a68: $e7
    ld b, b                                       ; $5a69: $40
    ld l, [hl]                                    ; $5a6a: $6e

Call_066_5a6b:
    ld e, h                                       ; $5a6b: $5c
    cp l                                          ; $5a6c: $bd
    jr jr_066_5a15                                ; $5a6d: $18 $a6

jr_066_5a6f:
    ei                                            ; $5a6f: $fb
    scf                                           ; $5a70: $37
    ld hl, $9ee5                                  ; $5a71: $21 $e5 $9e
    rst $08                                       ; $5a74: $cf
    ld b, $f4                                     ; $5a75: $06 $f4
    ld a, h                                       ; $5a77: $7c
    db $db                                        ; $5a78: $db
    jp hl                                         ; $5a79: $e9


    push af                                       ; $5a7a: $f5
    cp [hl]                                       ; $5a7b: $be
    jr jr_066_5a44                                ; $5a7c: $18 $c6

    xor $9e                                       ; $5a7e: $ee $9e
    rst $00                                       ; $5a80: $c7
    ld e, l                                       ; $5a81: $5d
    push af                                       ; $5a82: $f5
    ld [hl], d                                    ; $5a83: $72
    dec [hl]                                      ; $5a84: $35
    sub $80                                       ; $5a85: $d6 $80
    ld [hl+], a                                   ; $5a87: $22
    ld h, [hl]                                    ; $5a88: $66
    and e                                         ; $5a89: $a3
    adc c                                         ; $5a8a: $89
    sbc d                                         ; $5a8b: $9a
    ld [hl], d                                    ; $5a8c: $72
    or b                                          ; $5a8d: $b0
    rla                                           ; $5a8e: $17
    and $fe                                       ; $5a8f: $e6 $fe
    nop                                           ; $5a91: $00
    db $db                                        ; $5a92: $db
    add h                                         ; $5a93: $84
    db $d3                                        ; $5a94: $d3
    adc h                                         ; $5a95: $8c
    ld b, d                                       ; $5a96: $42
    ld d, e                                       ; $5a97: $53
    ld c, $eb                                     ; $5a98: $0e $eb
    xor c                                         ; $5a9a: $a9
    dec de                                        ; $5a9b: $1b
    ld e, d                                       ; $5a9c: $5a
    pop af                                        ; $5a9d: $f1
    ld a, [hl+]                                   ; $5a9e: $2a
    ld h, d                                       ; $5a9f: $62
    sub d                                         ; $5aa0: $92
    ld e, l                                       ; $5aa1: $5d
    rst $10                                       ; $5aa2: $d7
    jp $d337                                      ; $5aa3: $c3 $37 $d3


    ld [hl], a                                    ; $5aa6: $77
    cp c                                          ; $5aa7: $b9
    rst $20                                       ; $5aa8: $e7
    ld a, [de]                                    ; $5aa9: $1a
    rst $38                                       ; $5aaa: $ff
    adc c                                         ; $5aab: $89
    ld c, a                                       ; $5aac: $4f
    rrca                                          ; $5aad: $0f
    cp a                                          ; $5aae: $bf
    ccf                                           ; $5aaf: $3f
    rst $20                                       ; $5ab0: $e7
    ld [hl], c                                    ; $5ab1: $71
    ld d, a                                       ; $5ab2: $57
    cp l                                          ; $5ab3: $bd
    ld e, h                                       ; $5ab4: $5c
    adc l                                         ; $5ab5: $8d
    dec [hl]                                      ; $5ab6: $35
    and b                                         ; $5ab7: $a0
    adc b                                         ; $5ab8: $88
    reti                                          ; $5ab9: $d9


    ld l, b                                       ; $5aba: $68

jr_066_5abb:
    and d                                         ; $5abb: $a2
    and [hl]                                      ; $5abc: $a6
    inc e                                         ; $5abd: $1c
    db $ec                                        ; $5abe: $ec
    add l                                         ; $5abf: $85
    cp c                                          ; $5ac0: $b9

jr_066_5ac1:
    ccf                                           ; $5ac1: $3f
    rst $20                                       ; $5ac2: $e7
    ld b, b                                       ; $5ac3: $40
    ld l, [hl]                                    ; $5ac4: $6e
    ld e, h                                       ; $5ac5: $5c
    cp l                                          ; $5ac6: $bd
    jr jr_066_5a6f                                ; $5ac7: $18 $a6

    db $ec                                        ; $5ac9: $ec
    ld sp, hl                                     ; $5aca: $f9
    or [hl]                                       ; $5acb: $b6
    db $d3                                        ; $5acc: $d3
    db $eb                                        ; $5acd: $eb
    ld a, l                                       ; $5ace: $7d
    ld sp, $898c                                  ; $5acf: $31 $8c $89
    cp d                                          ; $5ad2: $ba
    add l                                         ; $5ad3: $85
    ld h, [hl]                                    ; $5ad4: $66
    dec sp                                        ; $5ad5: $3b
    scf                                           ; $5ad6: $37
    or h                                          ; $5ad7: $b4
    adc c                                         ; $5ad8: $89
    inc de                                        ; $5ad9: $13
    and b                                         ; $5ada: $a0
    dec c                                         ; $5adb: $0d
    or h                                          ; $5adc: $b4
    ld a, [hl-]                                   ; $5add: $3a
    ret                                           ; $5ade: $c9


    xor [hl]                                      ; $5adf: $ae
    ld h, [hl]                                    ; $5ae0: $66
    ret                                           ; $5ae1: $c9


    cp h                                          ; $5ae2: $bc
    ccf                                           ; $5ae3: $3f
    sub a                                         ; $5ae4: $97
    jr c, jr_066_5abb                             ; $5ae5: $38 $d4

    inc sp                                        ; $5ae7: $33
    or d                                          ; $5ae8: $b2
    ret nc                                        ; $5ae9: $d0

    ld c, h                                       ; $5aea: $4c
    xor e                                         ; $5aeb: $ab
    rst $30                                       ; $5aec: $f7
    ld b, l                                       ; $5aed: $45
    ld l, $12                                     ; $5aee: $2e $12
    ld sp, $4ca3                                  ; $5af0: $31 $a3 $4c
    cp c                                          ; $5af3: $b9
    ld [hl], a                                    ; $5af4: $77
    ld a, a                                       ; $5af5: $7f
    db $db                                        ; $5af6: $db
    ld h, e                                       ; $5af7: $63
    ld b, b                                       ; $5af8: $40
    ld d, a                                       ; $5af9: $57
    ld a, h                                       ; $5afa: $7c
    cp d                                          ; $5afb: $ba
    xor c                                         ; $5afc: $a9
    ld c, l                                       ; $5afd: $4d
    inc e                                         ; $5afe: $1c
    dec hl                                        ; $5aff: $2b
    ld d, e                                       ; $5b00: $53
    xor $75                                       ; $5b01: $ee $75
    ld e, l                                       ; $5b03: $5d
    and a                                         ; $5b04: $a7
    ld h, c                                       ; $5b05: $61
    ld c, h                                       ; $5b06: $4c

Jump_066_5b07:
    cp [hl]                                       ; $5b07: $be
    cp h                                          ; $5b08: $bc
    cp e                                          ; $5b09: $bb
    cp l                                          ; $5b0a: $bd
    ld l, c                                       ; $5b0b: $69
    and b                                         ; $5b0c: $a0
    sub $e8                                       ; $5b0d: $d6 $e8
    db $d3                                        ; $5b0f: $d3
    ld e, [hl]                                    ; $5b10: $5e
    sbc d                                         ; $5b11: $9a
    cp d                                          ; $5b12: $ba
    and c                                         ; $5b13: $a1
    db $dd                                        ; $5b14: $dd
    xor [hl]                                      ; $5b15: $ae
    dec [hl]                                      ; $5b16: $35
    ld a, [$05dc]                                 ; $5b17: $fa $dc $05
    ld l, l                                       ; $5b1a: $6d
    inc d                                         ; $5b1b: $14
    ld c, [hl]                                    ; $5b1c: $4e
    db $fd                                        ; $5b1d: $fd
    add hl, bc                                    ; $5b1e: $09
    sub b                                         ; $5b1f: $90
    ld b, l                                       ; $5b20: $45
    call z, $eb46                                 ; $5b21: $cc $46 $eb
    or [hl]                                       ; $5b24: $b6
    res 6, a                                      ; $5b25: $cb $b7
    ld l, l                                       ; $5b27: $6d
    ld d, $df                                     ; $5b28: $16 $df
    ldh a, [rSB]                                  ; $5b2a: $f0 $01
    adc c                                         ; $5b2c: $89
    ld b, $cd                                     ; $5b2d: $06 $cd
    inc l                                         ; $5b2f: $2c
    inc sp                                        ; $5b30: $33
    ld [c], a                                     ; $5b31: $e2
    ld a, d                                       ; $5b32: $7a
    pop hl                                        ; $5b33: $e1
    sub h                                         ; $5b34: $94
    ld d, e                                       ; $5b35: $53
    sbc a                                         ; $5b36: $9f
    cpl                                           ; $5b37: $2f
    ld h, d                                       ; $5b38: $62
    ld l, c                                       ; $5b39: $69
    ld b, b                                       ; $5b3a: $40
    add hl, de                                    ; $5b3b: $19
    rst $30                                       ; $5b3c: $f7
    adc b                                         ; $5b3d: $88
    rst $38                                       ; $5b3e: $ff
    dec de                                        ; $5b3f: $1b
    cp l                                          ; $5b40: $bd
    ccf                                           ; $5b41: $3f
    dec sp                                        ; $5b42: $3b
    ld d, b                                       ; $5b43: $50
    push hl                                       ; $5b44: $e5
    ld l, [hl]                                    ; $5b45: $6e
    ld b, $6d                                     ; $5b46: $06 $6d
    ld b, b                                       ; $5b48: $40
    rst $08                                       ; $5b49: $cf
    or a                                          ; $5b4a: $b7
    sbc l                                         ; $5b4b: $9d
    ld e, [hl]                                    ; $5b4c: $5e
    rst $28                                       ; $5b4d: $ef
    adc e                                         ; $5b4e: $8b
    ld h, c                                       ; $5b4f: $61
    xor h                                         ; $5b50: $ac
    ei                                            ; $5b51: $fb
    scf                                           ; $5b52: $37
    adc $cb                                       ; $5b53: $ce $cb
    xor b                                         ; $5b55: $a8
    ccf                                           ; $5b56: $3f
    ld bc, $895a                                  ; $5b57: $01 $5a $89
    inc c                                         ; $5b5a: $0c
    db $db                                        ; $5b5b: $db
    sbc b                                         ; $5b5c: $98
    ld d, c                                       ; $5b5d: $51
    ret z                                         ; $5b5e: $c8

    ld a, [hl+]                                   ; $5b5f: $2a
    db $ed                                        ; $5b60: $ed
    dec l                                         ; $5b61: $2d
    ret                                           ; $5b62: $c9


    pop de                                        ; $5b63: $d1
    ei                                            ; $5b64: $fb
    cp [hl]                                       ; $5b65: $be
    dec hl                                        ; $5b66: $2b
    xor c                                         ; $5b67: $a9
    push de                                       ; $5b68: $d5
    db $dd                                        ; $5b69: $dd
    xor e                                         ; $5b6a: $ab
    xor b                                         ; $5b6b: $a8
    ld [hl], a                                    ; $5b6c: $77
    inc c                                         ; $5b6d: $0c
    ld e, d                                       ; $5b6e: $5a
    ld a, [$498c]                                 ; $5b6f: $fa $8c $49
    add [hl]                                      ; $5b72: $86
    cp c                                          ; $5b73: $b9
    ccf                                           ; $5b74: $3f
    add hl, bc                                    ; $5b75: $09
    ld [$a6c3], a                                 ; $5b76: $ea $c3 $a6
    add hl, hl                                    ; $5b79: $29
    add a                                         ; $5b7a: $87
    and [hl]                                      ; $5b7b: $a6
    add hl, de                                    ; $5b7c: $19
    sub e                                         ; $5b7d: $93
    sub b                                         ; $5b7e: $90
    and e                                         ; $5b7f: $a3
    ld h, l                                       ; $5b80: $65
    cpl                                           ; $5b81: $2f
    db $e3                                        ; $5b82: $e3
    ld a, d                                       ; $5b83: $7a
    ld [hl], $b0                                  ; $5b84: $36 $b0
    add hl, bc                                    ; $5b86: $09
    add hl, hl                                    ; $5b87: $29
    rst $30                                       ; $5b88: $f7
    ld a, h                                       ; $5b89: $7c
    ld d, $9a                                     ; $5b8a: $16 $9a
    ld d, c                                       ; $5b8c: $51
    add $b9                                       ; $5b8d: $c6 $b9
    cp e                                          ; $5b8f: $bb
    ld h, e                                       ; $5b90: $63
    reti                                          ; $5b91: $d9


    sbc c                                         ; $5b92: $99
    sub e                                         ; $5b93: $93
    or b                                          ; $5b94: $b0
    rla                                           ; $5b95: $17
    dec hl                                        ; $5b96: $2b
    ld h, b                                       ; $5b97: $60
    xor l                                         ; $5b98: $ad
    ld l, c                                       ; $5b99: $69
    add $24                                       ; $5b9a: $c6 $24
    sbc e                                         ; $5b9c: $9b
    ld e, h                                       ; $5b9d: $5c
    xor e                                         ; $5b9e: $ab
    ld [c], a                                     ; $5b9f: $e2
    ld l, c                                       ; $5ba0: $69
    add hl, de                                    ; $5ba1: $19
    ld b, a                                       ; $5ba2: $47
    xor e                                         ; $5ba3: $ab
    ld c, b                                       ; $5ba4: $48
    cp e                                          ; $5ba5: $bb
    rla                                           ; $5ba6: $17
    ld b, [hl]                                    ; $5ba7: $46
    scf                                           ; $5ba8: $37
    ld a, h                                       ; $5ba9: $7c
    adc c                                         ; $5baa: $89
    inc de                                        ; $5bab: $13
    and b                                         ; $5bac: $a0
    ld e, l                                       ; $5bad: $5d
    pop bc                                        ; $5bae: $c1
    sbc [hl]                                      ; $5baf: $9e
    rst $30                                       ; $5bb0: $f7
    db $fd                                        ; $5bb1: $fd
    or h                                          ; $5bb2: $b4
    ld d, d                                       ; $5bb3: $52
    sbc e                                         ; $5bb4: $9b
    jp hl                                         ; $5bb5: $e9


    pop bc                                        ; $5bb6: $c1
    ld b, d                                       ; $5bb7: $42
    ld l, l                                       ; $5bb8: $6d
    ld b, b                                       ; $5bb9: $40
    inc de                                        ; $5bba: $13
    daa                                           ; $5bbb: $27
    and $d1                                       ; $5bbc: $e6 $d1
    ld b, [hl]                                    ; $5bbe: $46
    ld l, d                                       ; $5bbf: $6a
    add hl, hl                                    ; $5bc0: $29
    ld a, l                                       ; $5bc1: $7d
    or a                                          ; $5bc2: $b7
    inc h                                         ; $5bc3: $24
    sub c                                         ; $5bc4: $91
    xor c                                         ; $5bc5: $a9
    dec c                                         ; $5bc6: $0d
    db $d3                                        ; $5bc7: $d3
    dec hl                                        ; $5bc8: $2b
    and b                                         ; $5bc9: $a0
    ld a, c                                       ; $5bca: $79
    scf                                           ; $5bcb: $37
    adc a                                         ; $5bcc: $8f
    ld e, e                                       ; $5bcd: $5b
    and [hl]                                      ; $5bce: $a6
    ld bc, $884d                                  ; $5bcf: $01 $4d $88
    reti                                          ; $5bd2: $d9


    jr jr_066_5c4d                                ; $5bd3: $18 $78

Jump_066_5bd5:
    ld a, a                                       ; $5bd5: $7f
    rst $20                                       ; $5bd6: $e7
    cp [hl]                                       ; $5bd7: $be
    ld e, l                                       ; $5bd8: $5d
    dec de                                        ; $5bd9: $1b
    dec d                                         ; $5bda: $15
    ld c, l                                       ; $5bdb: $4d
    add hl, sp                                    ; $5bdc: $39
    inc [hl]                                      ; $5bdd: $34
    or d                                          ; $5bde: $b2
    jp z, Jump_000_0d85                           ; $5bdf: $ca $85 $0d

    and e                                         ; $5be2: $a3
    push af                                       ; $5be3: $f5
    ld l, l                                       ; $5be4: $6d
    cp h                                          ; $5be5: $bc
    ld d, b                                       ; $5be6: $50
    dec e                                         ; $5be7: $1d
    add e                                         ; $5be8: $83
    ld [hl], $b9                                  ; $5be9: $36 $b9
    ld d, [hl]                                    ; $5beb: $56
    daa                                           ; $5bec: $27
    reti                                          ; $5bed: $d9


    sbc a                                         ; $5bee: $9f
    ld c, a                                       ; $5bef: $4f
    jr nc, jr_066_5c0d                            ; $5bf0: $30 $1b

    ret nc                                        ; $5bf2: $d0

    sub a                                         ; $5bf3: $97
    ld de, $ffb5                                  ; $5bf4: $11 $b5 $ff
    ld b, h                                       ; $5bf7: $44
    rst $28                                       ; $5bf8: $ef
    db $d3                                        ; $5bf9: $d3
    sbc a                                         ; $5bfa: $9f
    ld h, c                                       ; $5bfb: $61
    db $f4                                        ; $5bfc: $f4
    ld l, [hl]                                    ; $5bfd: $6e
    push bc                                       ; $5bfe: $c5
    db $fd                                        ; $5bff: $fd
    pop de                                        ; $5c00: $d1
    inc a                                         ; $5c01: $3c
    ld c, l                                       ; $5c02: $4d
    add hl, sp                                    ; $5c03: $39
    inc [hl]                                      ; $5c04: $34
    ld b, e                                       ; $5c05: $43
    or $9f                                        ; $5c06: $f6 $9f
    and a                                         ; $5c08: $a7
    call nc, $f74a                                ; $5c09: $d4 $4a $f7
    ld a, [c]                                     ; $5c0c: $f2

jr_066_5c0d:
    inc [hl]                                      ; $5c0d: $34
    db $fd                                        ; $5c0e: $fd
    adc h                                         ; $5c0f: $8c
    ld a, d                                       ; $5c10: $7a
    ld a, a                                       ; $5c11: $7f
    ld [c], a                                     ; $5c12: $e2
    adc l                                         ; $5c13: $8d
    and e                                         ; $5c14: $a3
    jp z, $f6fa                                   ; $5c15: $ca $fa $f6

    inc h                                         ; $5c18: $24
    sbc [hl]                                      ; $5c19: $9e
    or c                                          ; $5c1a: $b1
    ld [hl], h                                    ; $5c1b: $74
    dec bc                                        ; $5c1c: $0b
    cp e                                          ; $5c1d: $bb
    xor [hl]                                      ; $5c1e: $ae
    adc c                                         ; $5c1f: $89
    or e                                          ; $5c20: $b3
    cp $60                                        ; $5c21: $fe $60
    ld l, b                                       ; $5c23: $68
    rst $38                                       ; $5c24: $ff
    sub c                                         ; $5c25: $91
    sbc l                                         ; $5c26: $9d
    ld h, $da                                     ; $5c27: $26 $da
    ld a, b                                       ; $5c29: $78
    and c                                         ; $5c2a: $a1
    ld a, [hl-]                                   ; $5c2b: $3a
    sub $1d                                       ; $5c2c: $d6 $1d
    sub c                                         ; $5c2e: $91
    ld a, $ee                                     ; $5c2f: $3e $ee
    ei                                            ; $5c31: $fb
    ld l, $fa                                     ; $5c32: $2e $fa
    adc a                                         ; $5c34: $8f
    db $ec                                        ; $5c35: $ec
    ld l, b                                       ; $5c36: $68
    ld [hl], a                                    ; $5c37: $77
    inc l                                         ; $5c38: $2c
    dec sp                                        ; $5c39: $3b
    ld [hl], e                                    ; $5c3a: $73
    ld [de], a                                    ; $5c3b: $12
    or $a2                                        ; $5c3c: $f6 $a2
    ld l, [hl]                                    ; $5c3e: $6e
    ld hl, sp+$00                                 ; $5c3f: $f8 $00
    rst $20                                       ; $5c41: $e7
    adc $0f                                       ; $5c42: $ce $0f
    db $ed                                        ; $5c44: $ed
    cp $5d                                        ; $5c45: $fe $5d
    ld hl, $de06                                  ; $5c47: $21 $06 $de
    ld l, l                                       ; $5c4a: $6d
    and d                                         ; $5c4b: $a2
    ld h, c                                       ; $5c4c: $61

jr_066_5c4d:
    db $fd                                        ; $5c4d: $fd
    ld l, b                                       ; $5c4e: $68
    adc l                                         ; $5c4f: $8d
    cp e                                          ; $5c50: $bb
    ld h, [hl]                                    ; $5c51: $66
    ld l, l                                       ; $5c52: $6d
    add l                                         ; $5c53: $85
    and a                                         ; $5c54: $a7
    ld [hl], a                                    ; $5c55: $77
    dec hl                                        ; $5c56: $2b
    xor [hl]                                      ; $5c57: $ae
    ld a, [$c322]                                 ; $5c58: $fa $22 $c3
    adc b                                         ; $5c5b: $88
    ld a, d                                       ; $5c5c: $7a
    sbc [hl]                                      ; $5c5d: $9e
    ld hl, $3d14                                  ; $5c5e: $21 $14 $3d
    rra                                           ; $5c61: $1f
    ld h, e                                       ; $5c62: $63
    ld l, c                                       ; $5c63: $69
    db $f4                                        ; $5c64: $f4
    ld c, d                                       ; $5c65: $4a
    ld d, b                                       ; $5c66: $50
    rla                                           ; $5c67: $17
    db $ec                                        ; $5c68: $ec
    db $fc                                        ; $5c69: $fc
    nop                                           ; $5c6a: $00
    db $db                                        ; $5c6b: $db
    cp e                                          ; $5c6c: $bb
    jp $9eee                                      ; $5c6d: $c3 $ee $9e


    rst $30                                       ; $5c70: $f7
    sub [hl]                                      ; $5c71: $96
    ccf                                           ; $5c72: $3f
    add hl, hl                                    ; $5c73: $29

Jump_066_5c74:
    ld [$f114], a                                 ; $5c74: $ea $14 $f1
    and a                                         ; $5c77: $a7
    add hl, de                                    ; $5c78: $19
    jp nc, Jump_000_230c                          ; $5c79: $d2 $0c $23

    xor d                                         ; $5c7c: $aa
    pop hl                                        ; $5c7d: $e1
    rra                                           ; $5c7e: $1f
    dec bc                                        ; $5c7f: $0b
    ld l, h                                       ; $5c80: $6c
    jp z, $51a1                                   ; $5c81: $ca $a1 $51

    jr c, jr_066_5c93                             ; $5c84: $38 $0d

    ld e, b                                       ; $5c86: $58
    ld b, c                                       ; $5c87: $41
    sub $29                                       ; $5c88: $d6 $29
    xor l                                         ; $5c8a: $ad
    sub d                                         ; $5c8b: $92
    jp hl                                         ; $5c8c: $e9


    rst $00                                       ; $5c8d: $c7
    add $d1                                       ; $5c8e: $c6 $d1
    cp $63                                        ; $5c90: $fe $63
    add [hl]                                      ; $5c92: $86

jr_066_5c93:
    jr nc, jr_066_5c9b                            ; $5c93: $30 $06

    ld l, l                                       ; $5c95: $6d
    ld h, b                                       ; $5c96: $60
    and c                                         ; $5c97: $a1
    rst $38                                       ; $5c98: $ff
    inc l                                         ; $5c99: $2c
    ld l, h                                       ; $5c9a: $6c

jr_066_5c9b:
    inc e                                         ; $5c9b: $1c
    db $ed                                        ; $5c9c: $ed
    adc e                                         ; $5c9d: $8b
    add hl, de                                    ; $5c9e: $19
    or [hl]                                       ; $5c9f: $b6
    ld [c], a                                     ; $5ca0: $e2
    ld [hl-], a                                   ; $5ca1: $32
    jp c, Jump_000_2d40                           ; $5ca2: $da $40 $2d

    db $dd                                        ; $5ca5: $dd
    ld b, d                                       ; $5ca6: $42
    cp l                                          ; $5ca7: $bd
    db $db                                        ; $5ca8: $db
    ld c, e                                       ; $5ca9: $4b
    inc e                                         ; $5caa: $1c
    ld h, h                                       ; $5cab: $64
    inc bc                                        ; $5cac: $03
    ld [hl], h                                    ; $5cad: $74
    inc a                                         ; $5cae: $3c
    ld [$61f8], sp                                ; $5caf: $08 $f8 $61
    and l                                         ; $5cb2: $a5
    reti                                          ; $5cb3: $d9


    db $d3                                        ; $5cb4: $d3
    sbc a                                         ; $5cb5: $9f
    dec de                                        ; $5cb6: $1b
    dec d                                         ; $5cb7: $15
    ld h, l                                       ; $5cb8: $65
    ld a, l                                       ; $5cb9: $7d
    ld e, b                                       ; $5cba: $58
    add b                                         ; $5cbb: $80
    dec [hl]                                      ; $5cbc: $35
    ld [hl], c                                    ; $5cbd: $71
    ld h, d                                       ; $5cbe: $62
    ld e, $bd                                     ; $5cbf: $1e $bd
    ccf                                           ; $5cc1: $3f
    ld [c], a                                     ; $5cc2: $e2
    push af                                       ; $5cc3: $f5
    ld l, $63                                     ; $5cc4: $2e $63
    ret nc                                        ; $5cc6: $d0

    call z, $f342                                 ; $5cc7: $cc $42 $f3
    ld e, d                                       ; $5cca: $5a
    ld a, l                                       ; $5ccb: $7d
    sbc e                                         ; $5ccc: $9b
    rst $20                                       ; $5ccd: $e7
    ld a, c                                       ; $5cce: $79
    add c                                         ; $5ccf: $81
    ld h, l                                       ; $5cd0: $65
    di                                            ; $5cd1: $f3
    add h                                         ; $5cd2: $84
    pop de                                        ; $5cd3: $d1
    adc [hl]                                      ; $5cd4: $8e
    sub [hl]                                      ; $5cd5: $96
    adc e                                         ; $5cd6: $8b
    adc e                                         ; $5cd7: $8b
    and e                                         ; $5cd8: $a3
    add l                                         ; $5cd9: $85
    ld l, h                                       ; $5cda: $6c
    jp z, $4971                                   ; $5cdb: $ca $71 $49

    add hl, sp                                    ; $5cde: $39
    ld e, b                                       ; $5cdf: $58
    cp c                                          ; $5ce0: $b9
    ld h, h                                       ; $5ce1: $64
    ld h, a                                       ; $5ce2: $67
    cp h                                          ; $5ce3: $bc
    ccf                                           ; $5ce4: $3f
    db $db                                        ; $5ce5: $db
    ei                                            ; $5ce6: $fb
    adc a                                         ; $5ce7: $8f
    add hl, de                                    ; $5ce8: $19
    jp nz, Jump_000_0358                          ; $5ce9: $c2 $58 $03

    dec de                                        ; $5cec: $1b
    sbc [hl]                                      ; $5ced: $9e
    pop hl                                        ; $5cee: $e1
    ld h, l                                       ; $5cef: $65
    ld [hl], $4e                                  ; $5cf0: $36 $4e
    inc sp                                        ; $5cf2: $33
    db $ec                                        ; $5cf3: $ec
    rst $00                                       ; $5cf4: $c7
    or e                                          ; $5cf5: $b3
    add hl, hl                                    ; $5cf6: $29
    ld h, e                                       ; $5cf7: $63
    and b                                         ; $5cf8: $a0
    dec d                                         ; $5cf9: $15
    sbc d                                         ; $5cfa: $9a
    rst $10                                       ; $5cfb: $d7
    ld a, [$8662]                                 ; $5cfc: $fa $62 $86
    add l                                         ; $5cff: $85
    sub a                                         ; $5d00: $97
    and a                                         ; $5d01: $a7
    ld l, h                                       ; $5d02: $6c
    jp z, $4971                                   ; $5d03: $ca $71 $49

    add hl, sp                                    ; $5d06: $39
    ld e, b                                       ; $5d07: $58
    ld a, l                                       ; $5d08: $7d
    xor b                                         ; $5d09: $a8
    ld c, $9b                                     ; $5d0a: $0e $9b
    ld [hl], d                                    ; $5d0c: $72
    ld l, b                                       ; $5d0d: $68
    inc d                                         ; $5d0e: $14
    ld c, [hl]                                    ; $5d0f: $4e
    ld a, l                                       ; $5d10: $7d
    ld b, e                                       ; $5d11: $43
    ld b, [hl]                                    ; $5d12: $46
    inc c                                         ; $5d13: $0c
    xor h                                         ; $5d14: $ac
    adc [hl]                                      ; $5d15: $8e
    rst $10                                       ; $5d16: $d7
    ld h, b                                       ; $5d17: $60
    ld [hl], l                                    ; $5d18: $75
    sub d                                         ; $5d19: $92
    sub l                                         ; $5d1a: $95
    ld h, e                                       ; $5d1b: $63
    add hl, de                                    ; $5d1c: $19
    sub l                                         ; $5d1d: $95
    xor $e5                                       ; $5d1e: $ee $e5
    ld l, c                                       ; $5d20: $69
    sbc b                                         ; $5d21: $98
    ld h, l                                       ; $5d22: $65
    ld l, h                                       ; $5d23: $6c
    sub h                                         ; $5d24: $94
    ld [hl], a                                    ; $5d25: $77
    dec hl                                        ; $5d26: $2b
    xor [hl]                                      ; $5d27: $ae
    ld a, [$c322]                                 ; $5d28: $fa $22 $c3
    adc b                                         ; $5d2b: $88
    ld a, [hl+]                                   ; $5d2c: $2a
    cp [hl]                                       ; $5d2d: $be
    ld a, b                                       ; $5d2e: $78
    sbc h                                         ; $5d2f: $9c
    or $5c                                        ; $5d30: $f6 $5c
    daa                                           ; $5d32: $27
    dec a                                         ; $5d33: $3d
    dec bc                                        ; $5d34: $0b
    jp nz, Jump_000_3e18                          ; $5d35: $c2 $18 $3e

    ld [c], a                                     ; $5d38: $e2
    ld d, l                                       ; $5d39: $55
    call nz, Call_066_4f24                        ; $5d3a: $c4 $24 $4f
    ld l, e                                       ; $5d3d: $6b
    scf                                           ; $5d3e: $37
    db $d3                                        ; $5d3f: $d3
    ld [hl], a                                    ; $5d40: $77
    cp c                                          ; $5d41: $b9
    rst $20                                       ; $5d42: $e7
    ld a, [de]                                    ; $5d43: $1a
    rst $38                                       ; $5d44: $ff
    adc c                                         ; $5d45: $89
    ld c, a                                       ; $5d46: $4f
    ccf                                           ; $5d47: $3f
    add hl, bc                                    ; $5d48: $09
    xor d                                         ; $5d49: $aa
    add sp, -$46                                  ; $5d4a: $e8 $ba
    ld c, [hl]                                    ; $5d4c: $4e
    jp Jump_066_7c98                              ; $5d4d: $c3 $98 $7c


    ld a, c                                       ; $5d50: $79
    ld [hl], a                                    ; $5d51: $77
    ld a, e                                       ; $5d52: $7b
    db $d3                                        ; $5d53: $d3
    jr nc, jr_066_5db0                            ; $5d54: $30 $5a

    and e                                         ; $5d56: $a3
    rst $08                                       ; $5d57: $cf
    ld e, l                                       ; $5d58: $5d
    ret nc                                        ; $5d59: $d0

    cp e                                          ; $5d5a: $bb
    db $dd                                        ; $5d5b: $dd
    xor [hl]                                      ; $5d5c: $ae
    push hl                                       ; $5d5d: $e5
    ld [c], a                                     ; $5d5e: $e2
    ld [c], a                                     ; $5d5f: $e2
    ld l, b                                       ; $5d60: $68
    jp $b7d4                                      ; $5d61: $c3 $d4 $b7


    daa                                           ; $5d64: $27
    pop af                                        ; $5d65: $f1
    ld l, h                                       ; $5d66: $6c
    jp z, Jump_000_0d38                           ; $5d67: $ca $38 $0d

    ld h, e                                       ; $5d6a: $63
    ld [de], a                                    ; $5d6b: $12
    or d                                          ; $5d6c: $b2
    ld [hl], c                                    ; $5d6d: $71
    ld [$93db], a                                 ; $5d6e: $ea $db $93

Call_066_5d71:
    ld a, b                                       ; $5d71: $78
    ld [hl], $8d                                  ; $5d72: $36 $8d
    cp e                                          ; $5d74: $bb
    xor l                                         ; $5d75: $ad
    or b                                          ; $5d76: $b0
    call c, $9b1f                                 ; $5d77: $dc $1f $9b
    daa                                           ; $5d7a: $27
    and $17                                       ; $5d7b: $e6 $17
    dec e                                         ; $5d7d: $1d
    ld h, l                                       ; $5d7e: $65
    xor c                                         ; $5d7f: $a9
    ld a, l                                       ; $5d80: $7d
    ld [hl], c                                    ; $5d81: $71
    dec b                                         ; $5d82: $05
    call $cd2f                                    ; $5d83: $cd $2f $cd
    push af                                       ; $5d86: $f5
    rlca                                          ; $5d87: $07
    ld b, e                                       ; $5d88: $43
    xor e                                         ; $5d89: $ab
    db $e3                                        ; $5d8a: $e3
    ld sp, $4a74                                  ; $5d8b: $31 $74 $4a
    ld d, l                                       ; $5d8e: $55
    ld l, $79                                     ; $5d8f: $2e $79
    jp z, Jump_066_6f9e                           ; $5d91: $ca $9e $6f

    cpl                                           ; $5d94: $2f
    and [hl]                                      ; $5d95: $a6
    daa                                           ; $5d96: $27
    ld h, a                                       ; $5d97: $67
    dec d                                         ; $5d98: $15
    dec [hl]                                      ; $5d99: $35
    push hl                                       ; $5d9a: $e5
    ld d, b                                       ; $5d9b: $50
    ld b, l                                       ; $5d9c: $45
    ld a, a                                       ; $5d9d: $7f
    dec sp                                        ; $5d9e: $3b
    or b                                          ; $5d9f: $b0
    ld a, [bc]                                    ; $5da0: $0a
    ld l, e                                       ; $5da1: $6b
    ld [hl], $7a                                  ; $5da2: $36 $7a
    cp b                                          ; $5da4: $b8
    inc h                                         ; $5da5: $24
    and a                                         ; $5da6: $a7
    ld bc, $e2f5                                  ; $5da7: $01 $f5 $e2
    push hl                                       ; $5daa: $e5
    rst $30                                       ; $5dab: $f7
    db $e3                                        ; $5dac: $e3
    reti                                          ; $5dad: $d9


    ld l, b                                       ; $5dae: $68
    ld d, c                                       ; $5daf: $51

jr_066_5db0:
    adc a                                         ; $5db0: $8f

jr_066_5db1:
    add hl, sp                                    ; $5db1: $39
    pop bc                                        ; $5db2: $c1
    call nc, Call_066_6a06                        ; $5db3: $d4 $06 $6a
    or e                                          ; $5db6: $b3
    ld h, c                                       ; $5db7: $61
    ld b, l                                       ; $5db8: $45
    cp l                                          ; $5db9: $bd
    db $db                                        ; $5dba: $db
    ld l, l                                       ; $5dbb: $6d
    jp nz, $82e9                                  ; $5dbc: $c2 $e9 $82

    dec d                                         ; $5dbf: $15
    adc l                                         ; $5dc0: $8d
    or d                                          ; $5dc1: $b2
    sub c                                         ; $5dc2: $91
    add c                                         ; $5dc3: $81
    and a                                         ; $5dc4: $a7
    ld [hl], a                                    ; $5dc5: $77
    ld a, [$d78f]                                 ; $5dc6: $fa $8f $d7
    ld d, b                                       ; $5dc9: $50
    xor d                                         ; $5dca: $aa
    ld [hl], d                                    ; $5dcb: $72
    ret                                           ; $5dcc: $c9


    inc c                                         ; $5dcd: $0c
    db $d3                                        ; $5dce: $d3
    db $fc                                        ; $5dcf: $fc
    ld h, d                                       ; $5dd0: $62
    sub d                                         ; $5dd1: $92
    push de                                       ; $5dd2: $d5
    rla                                           ; $5dd3: $17
    and [hl]                                      ; $5dd4: $a6
    ret nc                                        ; $5dd5: $d0

    dec d                                         ; $5dd6: $15
    ld [hl], a                                    ; $5dd7: $77
    dec a                                         ; $5dd8: $3d
    add [hl]                                      ; $5dd9: $86
    ld l, c                                       ; $5dda: $69
    sbc h                                         ; $5ddb: $9c
    ld a, [$bbb6]                                 ; $5ddc: $fa $b6 $bb
    ld l, a                                       ; $5ddf: $6f
    ld l, a                                       ; $5de0: $6f
    ld a, [de]                                    ; $5de1: $1a
    ld e, $ef                                     ; $5de2: $1e $ef
    ld e, $be                                     ; $5de4: $1e $be
    sub l                                         ; $5de6: $95
    jp c, $9c28                                   ; $5de7: $da $28 $9c

    add [hl]                                      ; $5dea: $86
    or a                                          ; $5deb: $b7
    dec bc                                        ; $5dec: $0b
    ld [hl], d                                    ; $5ded: $72
    or h                                          ; $5dee: $b4
    db $d3                                        ; $5def: $d3
    sub h                                         ; $5df0: $94
    ld b, e                                       ; $5df1: $43
    sub a                                         ; $5df2: $97
    or l                                          ; $5df3: $b5
    ld b, d                                       ; $5df4: $42
    inc sp                                        ; $5df5: $33
    ld d, a                                       ; $5df6: $57

Call_066_5df7:
    ld l, h                                       ; $5df7: $6c
    ld b, b                                       ; $5df8: $40
    call z, $a236                                 ; $5df9: $cc $36 $a2
    ld a, [$7d63]                                 ; $5dfc: $fa $63 $7d
    xor d                                         ; $5dff: $aa
    ld d, e                                       ; $5e00: $53
    ld b, l                                       ; $5e01: $45
    sub l                                         ; $5e02: $95
    ld e, $c8                                     ; $5e03: $1e $c8
    ld c, [hl]                                    ; $5e05: $4e
    ld d, e                                       ; $5e06: $53
    ld c, $5d                                     ; $5e07: $0e $5d
    ld d, a                                       ; $5e09: $57
    rst $08                                       ; $5e0a: $cf
    ret z                                         ; $5e0b: $c8

    ld a, [$9634]                                 ; $5e0c: $fa $34 $96
    ld d, l                                       ; $5e0f: $55
    xor $11                                       ; $5e10: $ee $11
    ret nc                                        ; $5e12: $d0

    jr z, jr_066_5db1                             ; $5e13: $28 $9c

    ld a, d                                       ; $5e15: $7a
    sbc [hl]                                      ; $5e16: $9e
    ld a, d                                       ; $5e17: $7a
    sbc $92                                       ; $5e18: $de $92
    sbc h                                         ; $5e1a: $9c
    inc c                                         ; $5e1b: $0c
    ld a, c                                       ; $5e1c: $79
    cp b                                          ; $5e1d: $b8
    xor b                                         ; $5e1e: $a8
    pop hl                                        ; $5e1f: $e1
    xor c                                         ; $5e20: $a9
    and d                                         ; $5e21: $a2
    ld c, [hl]                                    ; $5e22: $4e
    ld [hl], $38                                  ; $5e23: $36 $38
    call nz, $fa80                                ; $5e25: $c4 $80 $fa
    ld h, e                                       ; $5e28: $63
    sbc c                                         ; $5e29: $99
    dec de                                        ; $5e2a: $1b
    ld d, a                                       ; $5e2b: $57
    or e                                          ; $5e2c: $b3
    xor e                                         ; $5e2d: $ab
    ld bc, $df3d                                  ; $5e2e: $01 $3d $df
    ld e, [hl]                                    ; $5e31: $5e
    ld c, h                                       ; $5e32: $4c
    ld c, a                                       ; $5e33: $4f
    adc $7a                                       ; $5e34: $ce $7a
    ld a, a                                       ; $5e36: $7f
    add hl, bc                                    ; $5e37: $09
    add $4a                                       ; $5e38: $c6 $4a
    inc l                                         ; $5e3a: $2c
    ret                                           ; $5e3b: $c9


    or c                                          ; $5e3c: $b1
    ld b, $bc                                     ; $5e3d: $06 $bc
    ld c, h                                       ; $5e3f: $4c
    sub e                                         ; $5e40: $93
    or e                                          ; $5e41: $b3
    ld sp, $8a8e                                  ; $5e42: $31 $8e $8a
    cp d                                          ; $5e45: $ba
    add l                                         ; $5e46: $85
    ld h, [hl]                                    ; $5e47: $66
    dec sp                                        ; $5e48: $3b
    rst $28                                       ; $5e49: $ef
    ld d, [hl]                                    ; $5e4a: $56
    ld e, h                                       ; $5e4b: $5c
    ld [hl-], a                                   ; $5e4c: $32
    ld h, $85                                     ; $5e4d: $26 $85
    ld e, l                                       ; $5e4f: $5d
    pop af                                        ; $5e50: $f1
    ld d, l                                       ; $5e51: $55
    ld h, c                                       ; $5e52: $61
    ld [hl], l                                    ; $5e53: $75
    or d                                          ; $5e54: $b2
    ld l, c                                       ; $5e55: $69
    ld h, e                                       ; $5e56: $63
    inc c                                         ; $5e57: $0c
    ld l, b                                       ; $5e58: $68
    ld a, b                                       ; $5e59: $78
    cp h                                          ; $5e5a: $bc
    ccf                                           ; $5e5b: $3f
    rla                                           ; $5e5c: $17
    xor [hl]                                      ; $5e5d: $ae
    dec d                                         ; $5e5e: $15
    sbc d                                         ; $5e5f: $9a
    rst $00                                       ; $5e60: $c7
    dec [hl]                                      ; $5e61: $35
    ld b, b                                       ; $5e62: $40
    ld d, d                                       ; $5e63: $52
    rra                                           ; $5e64: $1f
    jp Jump_066_67f4                              ; $5e65: $c3 $f4 $67


    ld d, h                                       ; $5e68: $54
    add [hl]                                      ; $5e69: $86
    xor c                                         ; $5e6a: $a9
    ld c, a                                       ; $5e6b: $4f
    ld h, e                                       ; $5e6c: $63
    cp l                                          ; $5e6d: $bd
    ld e, h                                       ; $5e6e: $5c
    ld l, b                                       ; $5e6f: $68
    rst $30                                       ; $5e70: $f7
    rlca                                          ; $5e71: $07
    add hl, bc                                    ; $5e72: $09
    xor [hl]                                      ; $5e73: $ae
    add sp, -$0c                                  ; $5e74: $e8 $f4
    ld [hl-], a                                   ; $5e76: $32
    jp $ac6a                                      ; $5e77: $c3 $6a $ac


    dec hl                                        ; $5e7a: $2b
    jp z, $fad1                                   ; $5e7b: $ca $d1 $fa

    inc [hl]                                      ; $5e7e: $34
    sub [hl]                                      ; $5e7f: $96
    db $fd                                        ; $5e80: $fd
    add hl, hl                                    ; $5e81: $29
    add hl, hl                                    ; $5e82: $29
    ld l, d                                       ; $5e83: $6a
    inc d                                         ; $5e84: $14
    ld c, [hl]                                    ; $5e85: $4e
    ld d, a                                       ; $5e86: $57
    sub h                                         ; $5e87: $94
    and e                                         ; $5e88: $a3
    and d                                         ; $5e89: $a2
    ld e, [hl]                                    ; $5e8a: $5e
    ld h, [hl]                                    ; $5e8b: $66
    ld e, b                                       ; $5e8c: $58
    adc l                                         ; $5e8d: $8d
    ld l, l                                       ; $5e8e: $6d
    ld [$8665], a                                 ; $5e8f: $ea $65 $86
    push de                                       ; $5e92: $d5
    ret c                                         ; $5e93: $d8

    ld a, l                                       ; $5e94: $7d
    rst $18                                       ; $5e95: $df
    rst $30                                       ; $5e96: $f7
    and [hl]                                      ; $5e97: $a6
    rrca                                          ; $5e98: $0f
    rst $20                                       ; $5e99: $e7
    inc c                                         ; $5e9a: $0c
    dec de                                        ; $5e9b: $1b
    rst $20                                       ; $5e9c: $e7
    ld h, l                                       ; $5e9d: $65
    adc b                                         ; $5e9e: $88
    cp d                                          ; $5e9f: $ba
    add l                                         ; $5ea0: $85
    ld h, [hl]                                    ; $5ea1: $66
    dec sp                                        ; $5ea2: $3b
    ld b, l                                       ; $5ea3: $45
    ld e, l                                       ; $5ea4: $5d
    ld d, a                                       ; $5ea5: $57
    daa                                           ; $5ea6: $27
    reti                                          ; $5ea7: $d9


    db $e4                                        ; $5ea8: $e4
    ld b, h                                       ; $5ea9: $44
    ld h, e                                       ; $5eaa: $63
    ld a, l                                       ; $5eab: $7d
    ld e, d                                       ; $5eac: $5a
    ld a, [hl]                                    ; $5ead: $7e
    ld c, e                                       ; $5eae: $4b
    sub d                                         ; $5eaf: $92
    sub $7f                                       ; $5eb0: $d6 $7f
    ld h, d                                       ; $5eb2: $62
    ld a, [hl]                                    ; $5eb3: $7e
    jp hl                                         ; $5eb4: $e9


    add hl, hl                                    ; $5eb5: $29
    inc [hl]                                      ; $5eb6: $34
    or e                                          ; $5eb7: $b3
    ld c, b                                       ; $5eb8: $48
    cp c                                          ; $5eb9: $b9
    rst $20                                       ; $5eba: $e7
    di                                            ; $5ebb: $f3
    cp $00                                        ; $5ebc: $fe $00
    rst $20                                       ; $5ebe: $e7
    ld b, d                                       ; $5ebf: $42
    ld d, d                                       ; $5ec0: $52
    rra                                           ; $5ec1: $1f
    jp Jump_066_67f4                              ; $5ec2: $c3 $f4 $67


    ld d, h                                       ; $5ec5: $54
    add [hl]                                      ; $5ec6: $86
    xor c                                         ; $5ec7: $a9
    ld c, a                                       ; $5ec8: $4f
    ld h, e                                       ; $5ec9: $63
    cp l                                          ; $5eca: $bd
    ld e, h                                       ; $5ecb: $5c
    ld l, b                                       ; $5ecc: $68
    ld [hl], a                                    ; $5ecd: $77
    ld a, e                                       ; $5ece: $7b
    adc $e1                                       ; $5ecf: $ce $e1
    ld [hl], c                                    ; $5ed1: $71
    ld e, [hl]                                    ; $5ed2: $5e
    add $fd                                       ; $5ed3: $c6 $fd
    ld bc, $0ce7                                  ; $5ed5: $01 $e7 $0c
    dec de                                        ; $5ed8: $1b
    rst $20                                       ; $5ed9: $e7
    ld h, l                                       ; $5eda: $65
    adc b                                         ; $5edb: $88
    cp d                                          ; $5edc: $ba
    add l                                         ; $5edd: $85
    ld h, [hl]                                    ; $5ede: $66
    dec sp                                        ; $5edf: $3b
    rst $28                                       ; $5ee0: $ef
    rrca                                          ; $5ee1: $0f
    rst $20                                       ; $5ee2: $e7
    ld b, d                                       ; $5ee3: $42
    ld a, l                                       ; $5ee4: $7d
    cp $49                                        ; $5ee5: $fe $49
    ld l, [hl]                                    ; $5ee7: $6e
    call z, Call_066_7510                         ; $5ee8: $cc $10 $75
    dec bc                                        ; $5eeb: $0b
    call $de76                                    ; $5eec: $cd $76 $de
    db $ed                                        ; $5eef: $ed
    ld h, l                                       ; $5ef0: $65
    sub b                                         ; $5ef1: $90
    and e                                         ; $5ef2: $a3
    dec c                                         ; $5ef3: $0d
    add sp, -$4d                                  ; $5ef4: $e8 $b3
    ld a, [$9634]                                 ; $5ef6: $fa $34 $96
    and l                                         ; $5ef9: $a5
    ld e, e                                       ; $5efa: $5b
    ret c                                         ; $5efb: $d8

    add b                                         ; $5efc: $80
    ld h, $ce                                     ; $5efd: $26 $ce
    ld a, [$a183]                                 ; $5eff: $fa $83 $a1
    dec de                                        ; $5f02: $1b
    jp c, $dded                                   ; $5f03: $da $ed $dd

    ld de, $a3e9                                  ; $5f06: $11 $e9 $a3
    ld d, c                                       ; $5f09: $51
    jr c, @+$4f                                   ; $5f0a: $38 $4d

    adc a                                         ; $5f0c: $8f
    ld h, [hl]                                    ; $5f0d: $66
    ld [hl], $e5                                  ; $5f0e: $36 $e5
    ret nc                                        ; $5f10: $d0

    pop de                                        ; $5f11: $d1
    ld [hl], d                                    ; $5f12: $72
    ld [hl], c                                    ; $5f13: $71
    ld [hl], c                                    ; $5f14: $71
    or h                                          ; $5f15: $b4
    adc d                                         ; $5f16: $8a
    ld [hl-], a                                   ; $5f17: $32
    dec de                                        ; $5f18: $1b
    dec d                                         ; $5f19: $15
    ld [hl], d                                    ; $5f1a: $72
    jp $9707                                      ; $5f1b: $c3 $07 $97


    add hl, de                                    ; $5f1e: $19
    db $e3                                        ; $5f1f: $e3

jr_066_5f20:
    rst $08                                       ; $5f20: $cf
    ret nz                                        ; $5f21: $c0

    ei                                            ; $5f22: $fb
    inc bc                                        ; $5f23: $03
    db $db                                        ; $5f24: $db
    ld h, e                                       ; $5f25: $63
    ld b, b                                       ; $5f26: $40
    cp l                                          ; $5f27: $bd
    rst $28                                       ; $5f28: $ef
    ld h, a                                       ; $5f29: $67
    ld e, c                                       ; $5f2a: $59
    push hl                                       ; $5f2b: $e5
    jp nz, $9406                                  ; $5f2c: $c2 $06 $94

    ld l, [hl]                                    ; $5f2f: $6e
    ld h, c                                       ; $5f30: $61
    inc bc                                        ; $5f31: $03
    sbc d                                         ; $5f32: $9a
    jr c, jr_066_5f20                             ; $5f33: $38 $eb

    rrca                                          ; $5f35: $0f
    add [hl]                                      ; $5f36: $86
    ld l, [hl]                                    ; $5f37: $6e
    ld a, [$db00]                                 ; $5f38: $fa $00 $db
    dec hl                                        ; $5f3b: $2b
    ld sp, hl                                     ; $5f3c: $f9
    or h                                          ; $5f3d: $b4
    set 0, h                                      ; $5f3e: $cb $c4
    inc [hl]                                      ; $5f40: $34
    ld a, [de]                                    ; $5f41: $1a
    sbc b                                         ; $5f42: $98
    ld [hl], d                                    ; $5f43: $72
    xor a                                         ; $5f44: $af
    add hl, hl                                    ; $5f45: $29
    add a                                         ; $5f46: $87
    cp $13                                        ; $5f47: $fe $13
    dec d                                         ; $5f49: $15
    ld l, c                                       ; $5f4a: $69
    rlca                                          ; $5f4b: $07
    db $ed                                        ; $5f4c: $ed
    or e                                          ; $5f4d: $b3
    ld a, [c]                                     ; $5f4e: $f2
    push bc                                       ; $5f4f: $c5
    ret nz                                        ; $5f50: $c0

    ld b, $c4                                     ; $5f51: $06 $c4
    ld l, h                                       ; $5f53: $6c
    db $d3                                        ; $5f54: $d3
    jr nc, jr_066_5f9c                            ; $5f55: $30 $45

    ld a, b                                       ; $5f57: $78
    sbc $dd                                       ; $5f58: $de $dd
    cp $37                                        ; $5f5a: $fe $37
    ld [hl], a                                    ; $5f5c: $77
    cp e                                          ; $5f5d: $bb
    ld h, l                                       ; $5f5e: $65
    xor l                                         ; $5f5f: $ad
    sbc $31                                       ; $5f60: $de $31
    ld c, c                                       ; $5f62: $49
    ld l, l                                       ; $5f63: $6d
    ld b, b                                       ; $5f64: $40
    sub a                                         ; $5f65: $97
    or l                                          ; $5f66: $b5
    cp $49                                        ; $5f67: $fe $49
    and h                                         ; $5f69: $a4
    ld l, c                                       ; $5f6a: $69
    sub l                                         ; $5f6b: $95
    ld a, h                                       ; $5f6c: $7c
    jp c, $df00                                   ; $5f6d: $da $00 $df

    and b                                         ; $5f70: $a0
    jp z, Jump_066_4a2a                           ; $5f71: $ca $2a $4a

    xor l                                         ; $5f74: $ad
    ld l, a                                       ; $5f75: $6f
    di                                            ; $5f76: $f3
    dec sp                                        ; $5f77: $3b
    and e                                         ; $5f78: $a3
    ld b, c                                       ; $5f79: $41
    rst $28                                       ; $5f7a: $ef
    rrca                                          ; $5f7b: $0f
    db $db                                        ; $5f7c: $db
    sbc h                                         ; $5f7d: $9c
    db $ec                                        ; $5f7e: $ec
    ld [c], a                                     ; $5f7f: $e2
    jp nc, $fab4                                  ; $5f80: $d2 $b4 $fa

    ld [hl], $5e                                  ; $5f83: $36 $5e
    rla                                           ; $5f85: $17
    jp $9a88                                      ; $5f86: $c3 $88 $9a


    call c, $be43                                 ; $5f89: $dc $43 $be
    jr nc, jr_066_5fd3                            ; $5f8c: $30 $45

    cp l                                          ; $5f8e: $bd
    or $e6                                        ; $5f8f: $f6 $e6
    cp [hl]                                       ; $5f91: $be
    ld l, a                                       ; $5f92: $6f
    add hl, bc                                    ; $5f93: $09
    sub l                                         ; $5f94: $95
    ld d, e                                       ; $5f95: $53
    ld c, [hl]                                    ; $5f96: $4e
    db $d3                                        ; $5f97: $d3
    and e                                         ; $5f98: $a3
    ld a, c                                       ; $5f99: $79
    ld a, [de]                                    ; $5f9a: $1a
    and [hl]                                      ; $5f9b: $a6

jr_066_5f9c:
    dec sp                                        ; $5f9c: $3b
    ld [hl+], a                                   ; $5f9d: $22
    ld a, l                                       ; $5f9e: $7d
    call c, $871f                                 ; $5f9f: $dc $1f $87
    sbc a                                         ; $5fa2: $9f
    dec bc                                        ; $5fa3: $0b
    db $fd                                        ; $5fa4: $fd
    ld e, a                                       ; $5fa5: $5f
    ld h, b                                       ; $5fa6: $60
    db $e3                                        ; $5fa7: $e3
    ld l, b                                       ; $5fa8: $68
    inc de                                        ; $5fa9: $13
    dec c                                         ; $5faa: $0d
    db $eb                                        ; $5fab: $eb
    ld b, a                                       ; $5fac: $47
    dec de                                        ; $5fad: $1b
    xor b                                         ; $5fae: $a8
    ld c, l                                       ; $5faf: $4d
    sbc h                                         ; $5fb0: $9c
    push af                                       ; $5fb1: $f5
    rlca                                          ; $5fb2: $07
    ld b, e                                       ; $5fb3: $43
    ld b, l                                       ; $5fb4: $45
    ld c, l                                       ; $5fb5: $4d
    inc e                                         ; $5fb6: $1c
    push de                                       ; $5fb7: $d5
    or a                                          ; $5fb8: $b7
    jp nz, Jump_000_1122                          ; $5fb9: $c2 $22 $11

    inc sp                                        ; $5fbc: $33
    ld a, [bc]                                    ; $5fbd: $0a
    reti                                          ; $5fbe: $d9


    ld [hl], e                                    ; $5fbf: $73
    sbc a                                         ; $5fc0: $9f
    pop hl                                        ; $5fc1: $e1
    ld e, a                                       ; $5fc2: $5f
    cpl                                           ; $5fc3: $2f
    sbc h                                         ; $5fc4: $9c
    xor $af                                       ; $5fc5: $ee $af
    db $dd                                        ; $5fc7: $dd
    ld c, d                                       ; $5fc8: $4a
    sub l                                         ; $5fc9: $95
    ld h, e                                       ; $5fca: $63
    ld b, [hl]                                    ; $5fcb: $46
    dec a                                         ; $5fcc: $3d
    db $fc                                        ; $5fcd: $fc
    inc bc                                        ; $5fce: $03
    ld [c], a                                     ; $5fcf: $e2
    cpl                                           ; $5fd0: $2f
    ld b, $36                                     ; $5fd1: $06 $36

jr_066_5fd3:
    inc hl                                        ; $5fd3: $23
    ld l, d                                       ; $5fd4: $6a
    and l                                         ; $5fd5: $a5
    ld a, e                                       ; $5fd6: $7b
    ld a, c                                       ; $5fd7: $79
    sbc d                                         ; $5fd8: $9a
    ld [hl], d                                    ; $5fd9: $72
    jr z, @+$65                                   ; $5fda: $28 $63

    and b                                         ; $5fdc: $a0
    db $dd                                        ; $5fdd: $dd
    rra                                           ; $5fde: $1f
    add hl, bc                                    ; $5fdf: $09
    sbc d                                         ; $5fe0: $9a
    rst $00                                       ; $5fe1: $c7
    ld [hl], l                                    ; $5fe2: $75
    rst $38                                       ; $5fe3: $ff
    ld a, [$bf36]                                 ; $5fe4: $fa $36 $bf
    inc sp                                        ; $5fe7: $33
    ld [hl], $b0                                  ; $5fe8: $36 $b0
    ld e, h                                       ; $5fea: $5c
    ret c                                         ; $5feb: $d8

    db $e4                                        ; $5fec: $e4
    xor b                                         ; $5fed: $a8
    rst $38                                       ; $5fee: $ff
    ld [hl-], a                                   ; $5fef: $32
    rla                                           ; $5ff0: $17
    jp c, $df7d                                   ; $5ff1: $da $7d $df

    db $fd                                        ; $5ff4: $fd
    ld b, a                                       ; $5ff5: $47
    cp [hl]                                       ; $5ff6: $be
    ld b, $48                                     ; $5ff7: $06 $48
    ld [$9863], a                                 ; $5ff9: $ea $63 $98
    ld c, [hl]                                    ; $5ffc: $4e
    call z, $dd90                                 ; $5ffd: $cc $90 $dd
    cp a                                          ; $6000: $bf
    ld [hl], c                                    ; $6001: $71
    ld e, [hl]                                    ; $6002: $5e
    add $fd                                       ; $6003: $c6 $fd
    ld bc, $42e7                                  ; $6005: $01 $e7 $42
    inc bc                                        ; $6008: $03
    sbc d                                         ; $6009: $9a
    ld [hl], d                                    ; $600a: $72
    ld l, b                                       ; $600b: $68
    inc d                                         ; $600c: $14
    ld c, [hl]                                    ; $600d: $4e
    ld d, a                                       ; $600e: $57
    ld l, e                                       ; $600f: $6b
    ld e, d                                       ; $6010: $5a
    sbc a                                         ; $6011: $9f
    add $fe                                       ; $6012: $c6 $fe
    ld c, a                                       ; $6014: $4f
    or d                                          ; $6015: $b2
    ld de, $3eb2                                  ; $6016: $11 $b2 $3e
    dec c                                         ; $6019: $0d
    ld a, [hl+]                                   ; $601a: $2a
    ld a, [hl+]                                   ; $601b: $2a
    inc [hl]                                      ; $601c: $34
    xor a                                         ; $601d: $af
    ld l, c                                       ; $601e: $69
    inc hl                                        ; $601f: $23
    dec de                                        ; $6020: $1b
    sbc [hl]                                      ; $6021: $9e
    pop hl                                        ; $6022: $e1
    ld e, a                                       ; $6023: $5f
    cpl                                           ; $6024: $2f
    sbc h                                         ; $6025: $9c
    cp $b0                                        ; $6026: $fe $b0
    call z, $03fb                                 ; $6028: $cc $fb $03
    sub a                                         ; $602b: $97
    ld d, c                                       ; $602c: $51
    ld a, d                                       ; $602d: $7a
    sub $c9                                       ; $602e: $d6 $c9
    ld h, [hl]                                    ; $6030: $66
    call nz, $d4e4                                ; $6031: $c4 $e4 $d4
    ret                                           ; $6034: $c9


    ld h, $c7                                     ; $6035: $26 $c7
    sub $ec                                       ; $6037: $d6 $ec
    ld c, l                                       ; $6039: $4d
    ld d, c                                       ; $603a: $51
    ld bc, $956b                                  ; $603b: $01 $6b $95

jr_066_603e:
    add sp, -$61                                  ; $603e: $e8 $9f
    ld b, h                                       ; $6040: $44
    sbc d                                         ; $6041: $9a
    dec de                                        ; $6042: $1b

jr_066_6043:
    ld a, $db                                     ; $6043: $3e $db
    dec bc                                        ; $6045: $0b
    db $fd                                        ; $6046: $fd
    db $ed                                        ; $6047: $ed
    push hl                                       ; $6048: $e5
    db $dd                                        ; $6049: $dd
    db $ed                                        ; $604a: $ed
    ld c, l                                       ; $604b: $4d
    jp Jump_066_4774                              ; $604c: $c3 $74 $47


    and h                                         ; $604f: $a4
    adc a                                         ; $6050: $8f
    xor [hl]                                      ; $6051: $ae
    ld l, e                                       ; $6052: $6b
    and h                                         ; $6053: $a4
    ld d, [hl]                                    ; $6054: $56
    ld d, d                                       ; $6055: $52
    push hl                                       ; $6056: $e5
    sbc b                                         ; $6057: $98
    ld d, c                                       ; $6058: $51
    rst $28                                       ; $6059: $ef
    ld d, [hl]                                    ; $605a: $56
    cp h                                          ; $605b: $bc
    jp z, Jump_000_0d85                           ; $605c: $ca $85 $0d

    jr z, jr_066_603e                             ; $605f: $28 $dd

    ld b, d                                       ; $6061: $42
    ld l, l                                       ; $6062: $6d
    ret nz                                        ; $6063: $c0

    ld a, [bc]                                    ; $6064: $0a
    ld d, l                                       ; $6065: $55
    ld e, b                                       ; $6066: $58
    sub a                                         ; $6067: $97
    or l                                          ; $6068: $b5
    ld [hl], d                                    ; $6069: $72
    ld [$bbaf], a                                 ; $606a: $ea $af $bb
    ccf                                           ; $606d: $3f
    ld h, a                                       ; $606e: $67
    ld d, h                                       ; $606f: $54
    ld b, d                                       ; $6070: $42
    push hl                                       ; $6071: $e5
    inc [hl]                                      ; $6072: $34
    and b                                         ; $6073: $a0
    ld c, [hl]                                    ; $6074: $4e
    or $7c                                        ; $6075: $f6 $7c
    db $db                                        ; $6077: $db
    jp hl                                         ; $6078: $e9


    push af                                       ; $6079: $f5
    cp [hl]                                       ; $607a: $be
    jr jr_066_6043                                ; $607b: $18 $c6

    ld b, h                                       ; $607d: $44
    push af                                       ; $607e: $f5
    ld h, c                                       ; $607f: $61
    ld bc, $51b6                                  ; $6080: $01 $b6 $51
    or c                                          ; $6083: $b1
    pop hl                                        ; $6084: $e1
    inc bc                                        ; $6085: $03
    sub a                                         ; $6086: $97
    cp c                                          ; $6087: $b9
    dec c                                         ; $6088: $0d
    ld l, l                                       ; $6089: $6d

jr_066_608a:
    ld [c], a                                     ; $608a: $e2
    ld e, b                                       ; $608b: $58
    jp z, $eba1                                   ; $608c: $ca $a1 $eb

    sbc d                                         ; $608f: $9a
    ld [hl], d                                    ; $6090: $72
    ld l, b                                       ; $6091: $68
    inc d                                         ; $6092: $14
    ld c, [hl]                                    ; $6093: $4e
    and c                                         ; $6094: $a1
    ld a, c                                       ; $6095: $79
    ld c, l                                       ; $6096: $4d
    dec de                                        ; $6097: $1b
    ld e, c                                       ; $6098: $59
    cp d                                          ; $6099: $ba
    add l                                         ; $609a: $85
    sbc e                                         ; $609b: $9b
    ld a, $09                                     ; $609c: $3e $09
    sbc d                                         ; $609e: $9a
    rst $00                                       ; $609f: $c7
    ld [hl], l                                    ; $60a0: $75
    rst $38                                       ; $60a1: $ff
    ld a, [$bf36]                                 ; $60a2: $fa $36 $bf
    inc sp                                        ; $60a5: $33
    ld [hl], $b0                                  ; $60a6: $36 $b0
    jp z, Jump_000_0d85                           ; $60a8: $ca $85 $0d

    jr z, jr_066_608a                             ; $60ab: $28 $dd

    jp nz, Jump_066_6a06                          ; $60ad: $c2 $06 $6a

    inc de                                        ; $60b0: $13
    ld h, a                                       ; $60b1: $67
    db $fd                                        ; $60b2: $fd
    pop bc                                        ; $60b3: $c1
    ret nc                                        ; $60b4: $d0

    ei                                            ; $60b5: $fb
    inc bc                                        ; $60b6: $03
    ld h, a                                       ; $60b7: $67
    inc [hl]                                      ; $60b8: $34
    ld d, d                                       ; $60b9: $52
    dec hl                                        ; $60ba: $2b
    xor c                                         ; $60bb: $a9
    ld [hl], d                                    ; $60bc: $72
    call z, Call_000_1ba8                         ; $60bd: $cc $a8 $1b
    ld e, d                                       ; $60c0: $5a
    pop af                                        ; $60c1: $f1
    cp h                                          ; $60c2: $bc

jr_066_60c3:
    xor [hl]                                      ; $60c3: $ae
    ld [de], a                                    ; $60c4: $12
    ld a, [hl+]                                   ; $60c5: $2a
    and a                                         ; $60c6: $a7
    ld c, [hl]                                    ; $60c7: $4e
    sub [hl]                                      ; $60c8: $96
    adc e                                         ; $60c9: $8b
    adc e                                         ; $60ca: $8b
    db $d3                                        ; $60cb: $d3
    jr nc, jr_066_60c3                            ; $60cc: $30 $f5

    db $ed                                        ; $60ce: $ed
    ld c, c                                       ; $60cf: $49
    inc a                                         ; $60d0: $3c
    sbc e                                         ; $60d1: $9b
    ld [hl-], a                                   ; $60d2: $32
    ld c, [hl]                                    ; $60d3: $4e
    inc bc                                        ; $60d4: $03
    ld d, [hl]                                    ; $60d5: $56
    adc a                                         ; $60d6: $8f
    ld d, l                                       ; $60d7: $55
    ld a, d                                       ; $60d8: $7a
    ld h, b                                       ; $60d9: $60
    ld a, l                                       ; $60da: $7d
    xor d                                         ; $60db: $aa
    or e                                          ; $60dc: $b3
    pop hl                                        ; $60dd: $e1
    inc bc                                        ; $60de: $03
    ld d, a                                       ; $60df: $57
    ldh a, [$d5]                                  ; $60e0: $f0 $d5
    and a                                         ; $60e2: $a7
    or c                                          ; $60e3: $b1
    inc l                                         ; $60e4: $2c
    db $dd                                        ; $60e5: $dd
    ld b, d                                       ; $60e6: $42
    ld d, c                                       ; $60e7: $51
    inc de                                        ; $60e8: $13
    daa                                           ; $60e9: $27
    ld h, a                                       ; $60ea: $67
    ret c                                         ; $60eb: $d8

    add [hl]                                      ; $60ec: $86
    rrca                                          ; $60ed: $0f
    rst $20                                       ; $60ee: $e7
    ld b, b                                       ; $60ef: $40
    adc d                                         ; $60f0: $8a
    cp d                                          ; $60f1: $ba
    add l                                         ; $60f2: $85
    ld h, [hl]                                    ; $60f3: $66
    dec sp                                        ; $60f4: $3b
    sbc e                                         ; $60f5: $9b
    jr c, @+$3b                                   ; $60f6: $38 $39

    jp Jump_066_56ee                              ; $60f8: $c3 $ee $56


    cp h                                          ; $60fb: $bc
    ld [hl], c                                    ; $60fc: $71
    ld d, h                                       ; $60fd: $54
    reti                                          ; $60fe: $d9


    jr c, jr_066_612c                             ; $60ff: $38 $2b

    sbc $f7                                       ; $6101: $de $f7
    db $dd                                        ; $6103: $dd
    rra                                           ; $6104: $1f
    dec bc                                        ; $6105: $0b
    inc a                                         ; $6106: $3c
    or $02                                        ; $6107: $f6 $02
    inc bc                                        ; $6109: $03
    xor $76                                       ; $610a: $ee $76
    rlca                                          ; $610c: $07
    ld h, d                                       ; $610d: $62
    add $46                                       ; $610e: $c6 $46
    push bc                                       ; $6110: $c5
    db $fd                                        ; $6111: $fd
    ld bc, $9389                                  ; $6112: $01 $89 $93
    inc sp                                        ; $6115: $33
    ld c, h                                       ; $6116: $4c
    call nc, $0189                                ; $6117: $d4 $89 $01
    push af                                       ; $611a: $f5
    ld l, l                                       ; $611b: $6d
    ld a, [hl]                                    ; $611c: $7e
    ld h, a                                       ; $611d: $67
    or h                                          ; $611e: $b4
    rst $00                                       ; $611f: $c7
    ld a, [hl-]                                   ; $6120: $3a
    ret                                           ; $6121: $c9


    ld a, [$c608]                                 ; $6122: $fa $08 $c6
    ld a, d                                       ; $6125: $7a
    or b                                          ; $6126: $b0
    ld l, e                                       ; $6127: $6b
    ld l, b                                       ; $6128: $68
    ld d, l                                       ; $6129: $55
    inc d                                         ; $612a: $14
    xor [hl]                                      ; $612b: $ae

jr_066_612c:
    ld c, e                                       ; $612c: $4b
    sub d                                         ; $612d: $92
    push af                                       ; $612e: $f5
    ld de, $2a9e                                  ; $612f: $11 $9e $2a
    ld [hl], $7d                                  ; $6132: $36 $7d
    add hl, bc                                    ; $6134: $09
    xor [hl]                                      ; $6135: $ae
    adc d                                         ; $6136: $8a
    daa                                           ; $6137: $27
    ld a, [hl+]                                   ; $6138: $2a
    ld e, h                                       ; $6139: $5c
    dec d                                         ; $613a: $15
    ld l, a                                       ; $613b: $6f
    jp $db07                                      ; $613c: $c3 $07 $db


    add h                                         ; $613f: $84
    ld d, e                                       ; $6140: $53
    push bc                                       ; $6141: $c5
    inc de                                        ; $6142: $13
    push de                                       ; $6143: $d5
    or a                                          ; $6144: $b7
    pop af                                        ; $6145: $f1
    ld b, d                                       ; $6146: $42
    ld [hl], l                                    ; $6147: $75
    db $ec                                        ; $6148: $ec
    ld l, [hl]                                    ; $6149: $6e
    cpl                                           ; $614a: $2f
    db $e3                                        ; $614b: $e3
    or d                                          ; $614c: $b2
    jp nz, Jump_000_06ae                          ; $614d: $c2 $ae $06

    xor h                                         ; $6150: $ac
    and b                                         ; $6151: $a0
    adc d                                         ; $6152: $8a
    ld a, [$b4b0]                                 ; $6153: $fa $b0 $b4
    adc e                                         ; $6156: $8b
    sbc c                                         ; $6157: $99
    sub $fd                                       ; $6158: $d6 $fd
    cp e                                          ; $615a: $bb
    dec b                                         ; $615b: $05
    ld h, $df                                     ; $615c: $26 $df
    ld b, h                                       ; $615e: $44
    adc b                                         ; $615f: $88
    jp z, Jump_000_393f                           ; $6160: $ca $3f $39

    ld c, l                                       ; $6163: $4d
    add hl, sp                                    ; $6164: $39
    inc d                                         ; $6165: $14
    dec bc                                        ; $6166: $0b
    xor e                                         ; $6167: $ab
    db $f4                                        ; $6168: $f4
    ldh [$fe], a                                  ; $6169: $e0 $fe
    nop                                           ; $616b: $00
    sub a                                         ; $616c: $97
    ld [hl+], a                                   ; $616d: $22
    ccf                                           ; $616e: $3f
    sbc e                                         ; $616f: $9b
    ld a, [hl-]                                   ; $6170: $3a
    ld e, c                                       ; $6171: $59
    ld a, a                                       ; $6172: $7f
    ld h, d                                       ; $6173: $62
    sbc [hl]                                      ; $6174: $9e
    or d                                          ; $6175: $b2
    rst $20                                       ; $6176: $e7

jr_066_6177:
    db $db                                        ; $6177: $db
    ld c, [hl]                                    ; $6178: $4e
    xor a                                         ; $6179: $af
    rst $30                                       ; $617a: $f7
    push bc                                       ; $617b: $c5
    jr nc, jr_066_61a4                            ; $617c: $30 $26

    ld l, d                                       ; $617e: $6a
    ld [c], a                                     ; $617f: $e2
    db $e4                                        ; $6180: $e4
    inc c                                         ; $6181: $0c
    cp e                                          ; $6182: $bb
    ccf                                           ; $6183: $3f
    ld [c], a                                     ; $6184: $e2
    ld c, a                                       ; $6185: $4f
    ld d, h                                       ; $6186: $54
    ld a, $51                                     ; $6187: $3e $51
    ld sp, hl                                     ; $6189: $f9
    ld [hl], $7c                                  ; $618a: $36 $7c
    db $db                                        ; $618c: $db
    xor e                                         ; $618d: $ab
    ld [hl], b                                    ; $618e: $70
    and l                                         ; $618f: $a5
    ld a, h                                       ; $6190: $7c
    jp hl                                         ; $6191: $e9


    ld de, $ba75                                  ; $6192: $11 $75 $ba
    jp $5eee                                      ; $6195: $c3 $ee $5e


    inc a                                         ; $6198: $3c
    ld sp, $99ed                                  ; $6199: $31 $ed $99
    sbc h                                         ; $619c: $9c
    ld b, a                                       ; $619d: $47
    adc d                                         ; $619e: $8a
    ld [$f0d3], a                                 ; $619f: $ea $d3 $f0
    and e                                         ; $61a2: $a3
    add hl, de                                    ; $61a3: $19

jr_066_61a4:
    or [hl]                                       ; $61a4: $b6
    ld d, c                                       ; $61a5: $51
    ld d, c                                       ; $61a6: $51
    ret                                           ; $61a7: $c9


    db $f4                                        ; $61a8: $f4
    jr nc, jr_066_6177                            ; $61a9: $30 $cc

    db $dd                                        ; $61ab: $dd
    ld h, $4e                                     ; $61ac: $26 $4e
    ld b, b                                       ; $61ae: $40
    dec c                                         ; $61af: $0d
    rst $38                                       ; $61b0: $ff
    inc l                                         ; $61b1: $2c
    ld c, c                                       ; $61b2: $49
    ld e, b                                       ; $61b3: $58
    ld b, a                                       ; $61b4: $47
    ei                                            ; $61b5: $fb
    ld h, d                                       ; $61b6: $62
    jp c, $1e10                                   ; $61b7: $da $10 $1e

    ld h, d                                       ; $61ba: $62
    add [hl]                                      ; $61bb: $86
    sub $a7                                       ; $61bc: $d6 $a7
    or c                                          ; $61be: $b1
    xor h                                         ; $61bf: $ac
    ccf                                           ; $61c0: $3f
    db $eb                                        ; $61c1: $eb
    add l                                         ; $61c2: $85
    db $d3                                        ; $61c3: $d3
    sub h                                         ; $61c4: $94
    ld b, e                                       ; $61c5: $43
    and a                                         ; $61c6: $a7
    dec hl                                        ; $61c7: $2b
    cp [hl]                                       ; $61c8: $be
    cp $ce                                        ; $61c9: $fe $ce
    ld l, b                                       ; $61cb: $68
    and d                                         ; $61cc: $a2
    ld h, $4e                                     ; $61cd: $26 $4e
    adc $b0                                       ; $61cf: $ce $b0
    ei                                            ; $61d1: $fb
    inc bc                                        ; $61d2: $03
    ld e, e                                       ; $61d3: $5b
    xor c                                         ; $61d4: $a9
    rst $30                                       ; $61d5: $f7
    ld a, l                                       ; $61d6: $7d
    ld a, a                                       ; $61d7: $7f
    ld d, a                                       ; $61d8: $57
    ldh a, [$d5]                                  ; $61d9: $f0 $d5
    scf                                           ; $61db: $37
    db $fc                                        ; $61dc: $fc
    ld c, a                                       ; $61dd: $4f
    ld l, c                                       ; $61de: $69
    dec c                                         ; $61df: $0d
    add sp, $71                                   ; $61e0: $e8 $71
    push af                                       ; $61e2: $f5
    rst $00                                       ; $61e3: $c7
    sub $1f                                       ; $61e4: $d6 $1f
    inc c                                         ; $61e6: $0c
    ld l, l                                       ; $61e7: $6d
    ld b, b                                       ; $61e8: $40
    ld h, a                                       ; $61e9: $67
    ld c, c                                       ; $61ea: $49
    adc [hl]                                      ; $61eb: $8e
    ld [hl], $a0                                  ; $61ec: $36 $a0
    ret nc                                        ; $61ee: $d0

    sbc a                                         ; $61ef: $9f
    add $15                                       ; $61f0: $c6 $15
    sub [hl]                                      ; $61f2: $96
    db $e4                                        ; $61f3: $e4
    adc b                                         ; $61f4: $88
    ld a, d                                       ; $61f5: $7a
    ld l, h                                       ; $61f6: $6c
    db $fd                                        ; $61f7: $fd
    or c                                          ; $61f8: $b1
    push af                                       ; $61f9: $f5
    jp nz, Jump_066_4069                          ; $61fa: $c2 $69 $40

    inc bc                                        ; $61fd: $03
    ld h, d                                       ; $61fe: $62
    add [hl]                                      ; $61ff: $86
    ld [hl], $a0                                  ; $6200: $36 $a0
    rst $38                                       ; $6202: $ff
    ld a, b                                       ; $6203: $78
    adc h                                         ; $6204: $8c
    ld b, l                                       ; $6205: $45
    adc a                                         ; $6206: $8f
    xor l                                         ; $6207: $ad
    ccf                                           ; $6208: $3f
    or [hl]                                       ; $6209: $b6
    ld e, [hl]                                    ; $620a: $5e
    jr c, jr_066_621a                             ; $620b: $38 $0d

    xor b                                         ; $620d: $a8
    adc a                                         ; $620e: $8f
    dec b                                         ; $620f: $05
    dec c                                         ; $6210: $0d
    xor b                                         ; $6211: $a8
    ld h, a                                       ; $6212: $67
    ld b, [hl]                                    ; $6213: $46
    ld [$98c2], a                                 ; $6214: $ea $c2 $98
    cp [hl]                                       ; $6217: $be
    db $db                                        ; $6218: $db
    ld b, h                                       ; $6219: $44

jr_066_621a:
    sbc e                                         ; $621a: $9b
    rst $18                                       ; $621b: $df
    add hl, de                                    ; $621c: $19
    ld a, [bc]                                    ; $621d: $0a
    call $bed0                                    ; $621e: $cd $d0 $be
    sbc b                                         ; $6221: $98
    ld [hl], $84                                  ; $6222: $36 $84
    add a                                         ; $6224: $87
    sbc b                                         ; $6225: $98
    and c                                         ; $6226: $a1
    add l                                         ; $6227: $85
    db $ec                                        ; $6228: $ec
    sub [hl]                                      ; $6229: $96
    ld c, c                                       ; $622a: $49

Call_066_622b:
    dec bc                                        ; $622b: $0b
    and d                                         ; $622c: $a2
    ld h, l                                       ; $622d: $65
    db $ed                                        ; $622e: $ed
    cp b                                          ; $622f: $b8
    xor $df                                       ; $6230: $ee $df
    push de                                       ; $6232: $d5
    inc l                                         ; $6233: $2c
    sbc c                                         ; $6234: $99
    ld [hl], a                                    ; $6235: $77
    ld a, e                                       ; $6236: $7b
    add hl, de                                    ; $6237: $19
    sub a                                         ; $6238: $97
    dec d                                         ; $6239: $15
    halt                                          ; $623a: $76
    dec [hl]                                      ; $623b: $35
    push hl                                       ; $623c: $e5
    ldh a, [$8c]                                  ; $623d: $f0 $8c
    push af                                       ; $623f: $f5
    ld [hl], d                                    ; $6240: $72
    and c                                         ; $6241: $a1
    push af                                       ; $6242: $f5
    rra                                           ; $6243: $1f
    reti                                          ; $6244: $d9


    jp hl                                         ; $6245: $e9


    ld d, $a6                                     ; $6246: $16 $a6
    db $ed                                        ; $6248: $ed
    dec b                                         ; $6249: $05
    ld d, c                                       ; $624a: $51
    and a                                         ; $624b: $a7
    rst $38                                       ; $624c: $ff
    cp b                                          ; $624d: $b8
    adc h                                         ; $624e: $8c
    ld h, a                                       ; $624f: $67
    inc hl                                        ; $6250: $23
    xor d                                         ; $6251: $aa
    ld c, a                                       ; $6252: $4f
    ld h, e                                       ; $6253: $63
    sub l                                         ; $6254: $95
    ld e, $58                                     ; $6255: $1e $58
    daa                                           ; $6257: $27
    ld b, $d4                                     ; $6258: $06 $d4
    or a                                          ; $625a: $b7
    ld sp, hl                                     ; $625b: $f9
    sbc l                                         ; $625c: $9d
    pop de                                        ; $625d: $d1
    xor $26                                       ; $625e: $ee $26
    inc [hl]                                      ; $6260: $34
    ld b, b                                       ; $6261: $40
    ld a, l                                       ; $6262: $7d
    cp $49                                        ; $6263: $fe $49
    ld l, h                                       ; $6265: $6c
    ld d, h                                       ; $6266: $54
    call c, $25ed                                 ; $6267: $dc $ed $25
    adc [hl]                                      ; $626a: $8e
    ld sp, $254f                                  ; $626b: $31 $4f $25
    sbc a                                         ; $626e: $9f
    ld [hl], $43                                  ; $626f: $36 $43
    ld a, [$00d3]                                 ; $6271: $fa $d3 $00
    add hl, sp                                    ; $6274: $39
    ld b, [hl]                                    ; $6275: $46
    xor e                                         ; $6276: $ab
    db $e4                                        ; $6277: $e4
    db $d3                                        ; $6278: $d3
    ld a, [$f313]                                 ; $6279: $fa $13 $f3
    ld l, b                                       ; $627c: $68
    dec c                                         ; $627d: $0d
    ld sp, hl                                     ; $627e: $f9

Call_066_627f:
    reti                                          ; $627f: $d9


    ld [hl], h                                    ; $6280: $74
    rst $38                                       ; $6281: $ff
    ld [hl+], a                                   ; $6282: $22
    push hl                                       ; $6283: $e5
    sbc [hl]                                      ; $6284: $9e
    rst $08                                       ; $6285: $cf
    ei                                            ; $6286: $fb
    inc bc                                        ; $6287: $03
    rst $20                                       ; $6288: $e7
    ld b, d                                       ; $6289: $42
    ld a, l                                       ; $628a: $7d
    cp $49                                        ; $628b: $fe $49
    ld l, [hl]                                    ; $628d: $6e
    call z, Call_066_7510                         ; $628e: $cc $10 $75
    dec bc                                        ; $6291: $0b
    call $de76                                    ; $6292: $cd $76 $de
    rst $30                                       ; $6295: $f7
    db $fd                                        ; $6296: $fd
    ld bc, $7df7                                  ; $6297: $01 $f7 $7d
    add a                                         ; $629a: $87
    db $dd                                        ; $629b: $dd
    ld e, a                                       ; $629c: $5f
    inc sp                                        ; $629d: $33
    ld h, e                                       ; $629e: $63
    sbc [hl]                                      ; $629f: $9e
    dec c                                         ; $62a0: $0d
    rra                                           ; $62a1: $1f
    ld [c], a                                     ; $62a2: $e2
    add hl, hl                                    ; $62a3: $29
    rst $30                                       ; $62a4: $f7
    ld a, [de]                                    ; $62a5: $1a
    add l                                         ; $62a6: $85
    db $d3                                        ; $62a7: $d3
    dec d                                         ; $62a8: $15
    ld e, a                                       ; $62a9: $5f
    ld de, $89ff                                  ; $62aa: $11 $ff $89
    reti                                          ; $62ad: $d9


    ld l, b                                       ; $62ae: $68
    ld h, l                                       ; $62af: $65
    jp z, Jump_066_65bd                           ; $62b0: $ca $bd $65

    sbc d                                         ; $62b3: $9a

jr_066_62b4:
    ld [hl], d                                    ; $62b4: $72
    xor b                                         ; $62b5: $a8
    ld l, a                                       ; $62b6: $6f
    di                                            ; $62b7: $f3
    dec sp                                        ; $62b8: $3b
    and e                                         ; $62b9: $a3
    xor b                                         ; $62ba: $a8
    dec sp                                        ; $62bb: $3b
    db $ec                                        ; $62bc: $ec
    ld l, [hl]                                    ; $62bd: $6e
    ld [c], a                                     ; $62be: $e2
    db $e4                                        ; $62bf: $e4
    inc c                                         ; $62c0: $0c
    cp e                                          ; $62c1: $bb
    ccf                                           ; $62c2: $3f
    add hl, bc                                    ; $62c3: $09
    xor d                                         ; $62c4: $aa
    xor h                                         ; $62c5: $ac
    ld [hl], d                                    ; $62c6: $72
    ld h, c                                       ; $62c7: $61
    rst $10                                       ; $62c8: $d7
    dec [hl]                                      ; $62c9: $35
    ld b, b                                       ; $62ca: $40
    di                                            ; $62cb: $f3
    adc e                                         ; $62cc: $8b
    inc c                                         ; $62cd: $0c
    xor h                                         ; $62ce: $ac
    ld a, b                                       ; $62cf: $78
    ld h, d                                       ; $62d0: $62
    jp nz, $f136                                  ; $62d1: $c2 $36 $f1

    dec e                                         ; $62d4: $1d
    ld h, l                                       ; $62d5: $65
    cp c                                          ; $62d6: $b9
    cp b                                          ; $62d7: $b8
    jr c, jr_066_6334                             ; $62d8: $38 $5a

    xor [hl]                                      ; $62da: $ae
    jr jr_066_62b4                                ; $62db: $18 $d7

    inc sp                                        ; $62dd: $33
    adc h                                         ; $62de: $8c
    adc d                                         ; $62df: $8a
    sbc d                                         ; $62e0: $9a
    jr c, jr_066_631c                             ; $62e1: $38 $39

    jp Jump_000_0fee                              ; $62e3: $c3 $ee $0f


    ld e, e                                       ; $62e6: $5b
    ld l, b                                       ; $62e7: $68
    or [hl]                                       ; $62e8: $b6
    ld d, e                                       ; $62e9: $53
    call nc, $ca69                                ; $62ea: $d4 $69 $ca
    and c                                         ; $62ed: $a1
    ret nc                                        ; $62ee: $d0

    cp h                                          ; $62ef: $bc
    and [hl]                                      ; $62f0: $a6
    ld h, l                                       ; $62f1: $65
    cp l                                          ; $62f2: $bd
    call c, $ab05                                 ; $62f3: $dc $05 $ab
    ld [hl], a                                    ; $62f6: $77
    adc h                                         ; $62f7: $8c
    dec c                                         ; $62f8: $0d
    inc l                                         ; $62f9: $2c
    db $dd                                        ; $62fa: $dd
    jp nz, $ed4d                                  ; $62fb: $c2 $4d $ed

    adc [hl]                                      ; $62fe: $8e
    ld [hl], c                                    ; $62ff: $71
    db $dd                                        ; $6300: $dd
    sbc h                                         ; $6301: $9c
    add h                                         ; $6302: $84
    rla                                           ; $6303: $17
    dec c                                         ; $6304: $0d
    add sp, -$47                                  ; $6305: $e8 $b9
    ldh a, [rBCPD]                                ; $6307: $f0 $69
    sbc c                                         ; $6309: $99
    ld [de], a                                    ; $630a: $12
    ld sp, $a88f                                  ; $630b: $31 $8f $a8
    add hl, de                                    ; $630e: $19
    ld sp, $9539                                  ; $630f: $31 $39 $95
    ld d, b                                       ; $6312: $50
    add hl, sp                                    ; $6313: $39
    dec c                                         ; $6314: $0d
    xor b                                         ; $6315: $a8
    rrca                                          ; $6316: $0f
    ld c, e                                       ; $6317: $4b
    cp e                                          ; $6318: $bb
    sbc b                                         ; $6319: $98
    ld l, c                                       ; $631a: $69
    rst $30                                       ; $631b: $f7

jr_066_631c:
    rlca                                          ; $631c: $07
    db $db                                        ; $631d: $db
    cp e                                          ; $631e: $bb
    dec c                                         ; $631f: $0d
    xor e                                         ; $6320: $ab
    or a                                          ; $6321: $b7
    inc l                                         ; $6322: $2c
    xor b                                         ; $6323: $a8
    ld h, h                                       ; $6324: $64
    ld a, d                                       ; $6325: $7a
    add $6d                                       ; $6326: $c6 $6d
    ld d, h                                       ; $6328: $54
    inc [hl]                                      ; $6329: $34
    ld a, [hl-]                                   ; $632a: $3a
    ld e, c                                       ; $632b: $59
    cp $2f                                        ; $632c: $fe $2f
    jr nz, jr_066_6396                            ; $632e: $20 $66

    adc b                                         ; $6330: $88
    ld [$f58f], a                                 ; $6331: $ea $8f $f5

jr_066_6334:
    xor c                                         ; $6334: $a9
    ld c, [hl]                                    ; $6335: $4e
    and a                                         ; $6336: $a7
    dec sp                                        ; $6337: $3b
    ld [hl+], a                                   ; $6338: $22
    ld a, l                                       ; $6339: $7d
    ld d, h                                       ; $633a: $54
    ld [hl-], a                                   ; $633b: $32
    add [hl]                                      ; $633c: $86
    ld [hl], c                                    ; $633d: $71
    dec de                                        ; $633e: $1b
    dec h                                         ; $633f: $25
    ld [$fcdb], a                                 ; $6340: $ea $db $fc
    adc $68                                       ; $6343: $ce $68
    dec e                                         ; $6345: $1d
    db $ed                                        ; $6346: $ed
    adc e                                         ; $6347: $8b
    ld l, c                                       ; $6348: $69

jr_066_6349:
    ld b, e                                       ; $6349: $43
    ld a, b                                       ; $634a: $78
    adc b                                         ; $634b: $88
    add hl, de                                    ; $634c: $19
    jp c, $fac0                                   ; $634d: $da $c0 $fa

    or e                                          ; $6350: $b3
    ld e, [hl]                                    ; $6351: $5e
    jr c, jr_066_6349                             ; $6352: $38 $f5

    ld l, c                                       ; $6354: $69
    db $ec                                        ; $6355: $ec
    inc [hl]                                      ; $6356: $34
    dec de                                        ; $6357: $1b
    inc sp                                        ; $6358: $33
    db $ed                                        ; $6359: $ed
    cp $00                                        ; $635a: $fe $00
    rst $20                                       ; $635c: $e7
    ld [hl], c                                    ; $635d: $71
    ld h, c                                       ; $635e: $61
    rst $38                                       ; $635f: $ff
    sub c                                         ; $6360: $91
    sbc l                                         ; $6361: $9d
    ld l, [hl]                                    ; $6362: $6e
    ld h, c                                       ; $6363: $61
    jp c, $b85e                                   ; $6364: $da $5e $b8

    sbc e                                         ; $6367: $9b
    or b                                          ; $6368: $b0
    and b                                         ; $6369: $a0
    ld c, d                                       ; $636a: $4a
    rrca                                          ; $636b: $0f
    sbc d                                         ; $636c: $9a
    ld e, l                                       ; $636d: $5d
    sbc b                                         ; $636e: $98
    ld [$0c78], a                                 ; $636f: $ea $78 $0c
    sbc l                                         ; $6372: $9d
    and [hl]                                      ; $6373: $a6
    inc e                                         ; $6374: $1c
    jp z, Jump_066_5818                           ; $6375: $ca $18 $58

    ld a, a                                       ; $6378: $7f
    xor h                                         ; $6379: $ac
    call c, Call_066_50ad                         ; $637a: $dc $ad $50
    sbc a                                         ; $637d: $9f
    ld c, e                                       ; $637e: $4b
    sub d                                         ; $637f: $92
    ld h, c                                       ; $6380: $61
    xor $0f                                       ; $6381: $ee $0f
    db $db                                        ; $6383: $db
    sbc e                                         ; $6384: $9b
    ld [hl], d                                    ; $6385: $72
    add a                                         ; $6386: $87
    xor a                                         ; $6387: $af
    ld l, e                                       ; $6388: $6b
    jp z, $87a1                                   ; $6389: $ca $a1 $87

    rst $20                                       ; $638c: $e7
    dec [hl]                                      ; $638d: $35
    dec l                                         ; $638e: $2d
    db $eb                                        ; $638f: $eb
    push hl                                       ; $6390: $e5
    ld l, $58                                     ; $6391: $2e $58
    sbc c                                         ; $6393: $99
    ld [hl], d                                    ; $6394: $72
    xor a                                         ; $6395: $af

jr_066_6396:
    sub b                                         ; $6396: $90
    ld c, l                                       ; $6397: $4d
    adc [hl]                                      ; $6398: $8e
    or c                                          ; $6399: $b1
    pop hl                                        ; $639a: $e1
    ld [hl], b                                    ; $639b: $70
    cp d                                          ; $639c: $ba
    add l                                         ; $639d: $85
    ld a, [hl+]                                   ; $639e: $2a
    ld [$9a16], a                                 ; $639f: $ea $16 $9a
    db $ed                                        ; $63a2: $ed
    call c, $01f4                                 ; $63a3: $dc $f4 $01
    db $db                                        ; $63a6: $db
    db $eb                                        ; $63a7: $eb
    db $db                                        ; $63a8: $db
    ld a, b                                       ; $63a9: $78
    and c                                         ; $63aa: $a1
    ld a, [hl-]                                   ; $63ab: $3a
    sub $1d                                       ; $63ac: $d6 $1d
    sub c                                         ; $63ae: $91
    ld a, $2a                                     ; $63af: $3e $2a
    add hl, de                                    ; $63b1: $19
    jp $8db8                                      ; $63b2: $c3 $b8 $8d


    ld [de], a                                    ; $63b5: $12
    push af                                       ; $63b6: $f5
    ld l, l                                       ; $63b7: $6d
    ld a, [hl]                                    ; $63b8: $7e
    ld h, a                                       ; $63b9: $67
    or h                                          ; $63ba: $b4
    cp [hl]                                       ; $63bb: $be
    sbc b                                         ; $63bc: $98
    ld [hl], $84                                  ; $63bd: $36 $84
    add a                                         ; $63bf: $87
    sbc b                                         ; $63c0: $98
    and c                                         ; $63c1: $a1
    push af                                       ; $63c2: $f5
    ld l, c                                       ; $63c3: $69
    xor h                                         ; $63c4: $ac
    sub e                                         ; $63c5: $93
    xor h                                         ; $63c6: $ac
    ccf                                           ; $63c7: $3f
    db $eb                                        ; $63c8: $eb
    add l                                         ; $63c9: $85
    ld [hl], e                                    ; $63ca: $73
    ld e, d                                       ; $63cb: $5a
    or a                                          ; $63cc: $b7
    cpl                                           ; $63cd: $2f
    ret                                           ; $63ce: $c9


    pop de                                        ; $63cf: $d1
    ld b, $14                                     ; $63d0: $06 $14
    ld a, [$b8d3]                                 ; $63d2: $fa $d3 $b8
    jp nz, $1c92                                  ; $63d5: $c2 $92 $1c

    ld d, c                                       ; $63d8: $51
    ld a, l                                       ; $63d9: $7d
    inc l                                         ; $63da: $2c
    ld l, b                                       ; $63db: $68
    ld b, b                                       ; $63dc: $40
    dec a                                         ; $63dd: $3d
    inc sp                                        ; $63de: $33
    ld d, d                                       ; $63df: $52
    rla                                           ; $63e0: $17
    add $74                                       ; $63e1: $c6 $74
    pop de                                        ; $63e3: $d1
    add b                                         ; $63e4: $80
    sbc b                                         ; $63e5: $98
    and c                                         ; $63e6: $a1
    dec c                                         ; $63e7: $0d
    add sp, $3f                                   ; $63e8: $e8 $3f
    ld e, $e3                                     ; $63ea: $1e $e3
    db $fd                                        ; $63ec: $fd
    ld bc, $6a87                                  ; $63ed: $01 $87 $6a
    ld d, a                                       ; $63f0: $57
    ret c                                         ; $63f1: $d8

    dec b                                         ; $63f2: $05
    xor l                                         ; $63f3: $ad

Jump_066_63f4:
    ccf                                           ; $63f4: $3f
    ld bc, $c45a                                  ; $63f5: $01 $5a $c4
    ld a, a                                       ; $63f8: $7f
    ld h, d                                       ; $63f9: $62

Jump_066_63fa:
    ld [hl], $5a                                  ; $63fa: $36 $5a
    and c                                         ; $63fc: $a1
    ld c, d                                       ; $63fd: $4a
    db $ed                                        ; $63fe: $ed
    ccf                                           ; $63ff: $3f
    ld c, a                                       ; $6400: $4f
    xor c                                         ; $6401: $a9
    push af                                       ; $6402: $f5
    ld h, c                                       ; $6403: $61
    pop hl                                        ; $6404: $e1
    dec b                                         ; $6405: $05
    ld l, d                                       ; $6406: $6a
    db $e3                                        ; $6407: $e3
    ld l, b                                       ; $6408: $68
    di                                            ; $6409: $f3
    pop hl                                        ; $640a: $e1
    ld h, [hl]                                    ; $640b: $66
    adc b                                         ; $640c: $88
    and e                                         ; $640d: $a3
    dec c                                         ; $640e: $0d
    inc l                                         ; $640f: $2c
    db $f4                                        ; $6410: $f4
    sbc a                                         ; $6411: $9f
    add l                                         ; $6412: $85
    ld [hl], a                                    ; $6413: $77
    ld a, e                                       ; $6414: $7b
    adc c                                         ; $6415: $89
    ld h, e                                       ; $6416: $63
    call z, $ef87                                 ; $6417: $cc $87 $ef
    ld e, a                                       ; $641a: $5f
    rra                                           ; $641b: $1f
    dec bc                                        ; $641c: $0b
    ld a, [de]                                    ; $641d: $1a
    ld d, b                                       ; $641e: $50
    rst $08                                       ; $641f: $cf
    adc h                                         ; $6420: $8c
    call nc, Call_000_3185                        ; $6421: $d4 $85 $31
    dec l                                         ; $6424: $2d
    ld l, d                                       ; $6425: $6a
    inc d                                         ; $6426: $14
    ld d, [hl]                                    ; $6427: $56
    and d                                         ; $6428: $a2
    ld d, b                                       ; $6429: $50
    sbc a                                         ; $642a: $9f

Call_066_642b:
Jump_066_642b:
    ld sp, $c573                                  ; $642b: $31 $73 $c5
    ld a, [hl+]                                   ; $642e: $2a
    ld a, [hl-]                                   ; $642f: $3a
    db $dd                                        ; $6430: $dd
    ld de, $a3e9                                  ; $6431: $11 $e9 $a3
    ld sp, hl                                     ; $6434: $f9
    xor l                                         ; $6435: $ad
    and b                                         ; $6436: $a0
    adc d                                         ; $6437: $8a
    ld [hl], d                                    ; $6438: $72
    ld c, c                                       ; $6439: $49

jr_066_643a:
    dec sp                                        ; $643a: $3b
    ret                                           ; $643b: $c9


    add $a9                                       ; $643c: $c6 $a9
    jp nz, Jump_066_4d35                          ; $643e: $c2 $35 $4d

    rst $08                                       ; $6441: $cf
    adc e                                         ; $6442: $8b
    ret z                                         ; $6443: $c8

    db $10                                        ; $6444: $10
    push de                                       ; $6445: $d5
    sbc a                                         ; $6446: $9f
    and a                                         ; $6447: $a7
    push bc                                       ; $6448: $c5
    add d                                         ; $6449: $82
    and [hl]                                      ; $644a: $a6
    ld b, a                                       ; $644b: $47
    inc sp                                        ; $644c: $33
    dec hl                                        ; $644d: $2b
    db $dd                                        ; $644e: $dd
    set 2, e                                      ; $644f: $cb $d3
    add b                                         ; $6451: $80
    ld a, [hl+]                                   ; $6452: $2a
    call z, $cc47                                 ; $6453: $cc $47 $cc
    ret nc                                        ; $6456: $d0

    and d                                         ; $6457: $a2
    rst $38                                       ; $6458: $ff
    ld a, b                                       ; $6459: $78
    adc h                                         ; $645a: $8c
    ld a, d                                       ; $645b: $7a
    ld a, a                                       ; $645c: $7f
    add hl, bc                                    ; $645d: $09
    sbc d                                         ; $645e: $9a
    rst $10                                       ; $645f: $d7
    jp z, $98be                                   ; $6460: $ca $be $98

    ld h, c                                       ; $6463: $61
    ld [hl], $d2                                  ; $6464: $36 $d2
    add a                                         ; $6466: $87
    push de                                       ; $6467: $d5
    ld c, c                                       ; $6468: $49
    sub [hl]                                      ; $6469: $96
    ld l, [hl]                                    ; $646a: $6e
    pop hl                                        ; $646b: $e1
    add [hl]                                      ; $646c: $86
    halt                                          ; $646d: $76
    add a                                         ; $646e: $87
    ld [hl], b                                    ; $646f: $70
    ld a, d                                       ; $6470: $7a
    ld h, d                                       ; $6471: $62
    inc de                                        ; $6472: $13
    daa                                           ; $6473: $27
    and $d1                                       ; $6474: $e6 $d1
    ld a, [de]                                    ; $6476: $1a
    ld a, [c]                                     ; $6477: $f2
    inc sp                                        ; $6478: $33
    add [hl]                                      ; $6479: $86
    pop de                                        ; $647a: $d1
    or d                                          ; $647b: $b2
    rst $20                                       ; $647c: $e7
    db $db                                        ; $647d: $db
    ld c, [hl]                                    ; $647e: $4e
    xor a                                         ; $647f: $af
    rst $30                                       ; $6480: $f7
    push bc                                       ; $6481: $c5
    jr nc, jr_066_643a                            ; $6482: $30 $b6

    pop hl                                        ; $6484: $e1
    inc bc                                        ; $6485: $03
    add hl, bc                                    ; $6486: $09
    ld [$58c3], a                                 ; $6487: $ea $c3 $58
    xor $76                                       ; $648a: $ee $76
    rst $18                                       ; $648c: $df
    rst $30                                       ; $648d: $f7
    ld [hl], h                                    ; $648e: $74
    dec bc                                        ; $648f: $0b

jr_066_6490:
    db $d3                                        ; $6490: $d3
    or $42                                        ; $6491: $f6 $42
    jp $4553                                      ; $6493: $c3 $53 $45


    ld d, e                                       ; $6496: $53
    ld c, $85                                     ; $6497: $0e $85
    ld h, [hl]                                    ; $6499: $66
    xor [hl]                                      ; $649a: $ae
    ld e, b                                       ; $649b: $58

Call_066_649c:
    sub $33                                       ; $649c: $d6 $33
    ld h, [hl]                                    ; $649e: $66
    rst $08                                       ; $649f: $cf
    ld c, e                                       ; $64a0: $4b
    dec hl                                        ; $64a1: $2b
    db $f4                                        ; $64a2: $f4
    and a                                         ; $64a3: $a7
    ld [hl], c                                    ; $64a4: $71
    add l                                         ; $64a5: $85
    dec h                                         ; $64a6: $25
    add hl, sp                                    ; $64a7: $39
    jp c, $ad65                                   ; $64a8: $da $65 $ad

    call z, $a6b6                                 ; $64ab: $cc $b6 $a6
    dec de                                        ; $64ae: $1b
    ld a, $db                                     ; $64af: $3e $db
    adc l                                         ; $64b1: $8d
    ld a, l                                       ; $64b2: $7d
    sbc d                                         ; $64b3: $9a
    and a                                         ; $64b4: $a7
    ld a, [hl+]                                   ; $64b5: $2a
    sbc h                                         ; $64b6: $9c
    ld c, d                                       ; $64b7: $4a
    xor b                                         ; $64b8: $a8
    sbc h                                         ; $64b9: $9c
    adc $92                                       ; $64ba: $ce $92
    inc e                                         ; $64bc: $1c
    ld l, l                                       ; $64bd: $6d
    ld b, b                                       ; $64be: $40
    and c                                         ; $64bf: $a1
    ccf                                           ; $64c0: $3f
    adc l                                         ; $64c1: $8d
    dec hl                                        ; $64c2: $2b
    inc l                                         ; $64c3: $2c
    ret                                           ; $64c4: $c9


    reti                                          ; $64c5: $d9


    ldh a, [rSB]                                  ; $64c6: $f0 $01
    adc c                                         ; $64c8: $89
    inc [hl]                                      ; $64c9: $34
    db $fc                                        ; $64ca: $fc
    sub b                                         ; $64cb: $90
    sbc l                                         ; $64cc: $9d
    dec h                                         ; $64cd: $25
    add hl, sp                                    ; $64ce: $39
    jp c, $be80                                   ; $64cf: $da $80 $be

    xor b                                         ; $64d2: $a8
    ld hl, sp-$0d                                 ; $64d3: $f8 $f3
    call c, Call_066_5df7                         ; $64d5: $dc $f7 $5d
    ld a, a                                       ; $64d8: $7f
    xor h                                         ; $64d9: $ac
    db $10                                        ; $64da: $10
    inc c                                         ; $64db: $0c
    jp hl                                         ; $64dc: $e9


    cpl                                           ; $64dd: $2f
    inc hl                                        ; $64de: $23
    ld l, d                                       ; $64df: $6a
    ld b, b                                       ; $64e0: $40
    sbc l                                         ; $64e1: $9d
    inc l                                         ; $64e2: $2c
    db $f4                                        ; $64e3: $f4
    and a                                         ; $64e4: $a7
    ld [hl], c                                    ; $64e5: $71
    add l                                         ; $64e6: $85
    dec h                                         ; $64e7: $25
    add hl, sp                                    ; $64e8: $39
    dec de                                        ; $64e9: $1b
    ld a, $89                                     ; $64ea: $3e $89
    or h                                          ; $64ec: $b4
    adc h                                         ; $64ed: $8c
    ld b, $68                                     ; $64ee: $06 $68
    ld h, [hl]                                    ; $64f0: $66
    rst $38                                       ; $64f1: $ff
    pop af                                        ; $64f2: $f1
    jr jr_066_6490                                ; $64f3: $18 $9b

    ld hl, $64eb                                  ; $64f5: $21 $eb $64
    xor c                                         ; $64f8: $a9
    ld a, $fe                                     ; $64f9: $3e $fe
    inc a                                         ; $64fb: $3c
    add l                                         ; $64fc: $85
    and [hl]                                      ; $64fd: $a6
    call c, $97d3                                 ; $64fe: $dc $d3 $97
    rst $20                                       ; $6501: $e7
    cp [hl]                                       ; $6502: $be
    rst $28                                       ; $6503: $ef
    rrca                                          ; $6504: $0f
    ld h, a                                       ; $6505: $67
    call nc, $d649                                ; $6506: $d4 $49 $d6
    rst $00                                       ; $6509: $c7
    add d                                         ; $650a: $82
    ld b, $f4                                     ; $650b: $06 $f4
    rra                                           ; $650d: $1f
    adc a                                         ; $650e: $8f
    or c                                          ; $650f: $b1
    dec hl                                        ; $6510: $2b
    ld e, b                                       ; $6511: $58
    ld h, b                                       ; $6512: $60
    ret nz                                        ; $6513: $c0

    inc sp                                        ; $6514: $33
    sbc $6d                                       ; $6515: $de $6d
    add d                                         ; $6517: $82
    ld a, [$9630]                                 ; $6518: $fa $30 $96
    cp e                                          ; $651b: $bb
    db $dd                                        ; $651c: $dd
    rst $30                                       ; $651d: $f7
    ld e, l                                       ; $651e: $5d
    daa                                           ; $651f: $27
    ld e, c                                       ; $6520: $59
    rst $08                                       ; $6521: $cf
    adc h                                         ; $6522: $8c
    call nc, Call_000_3185                        ; $6523: $d4 $85 $31
    db $dd                                        ; $6526: $dd
    ld [hl], l                                    ; $6527: $75
    ld [hl], l                                    ; $6528: $75
    sub d                                         ; $6529: $92
    db $fd                                        ; $652a: $fd
    rst $00                                       ; $652b: $c7
    ld h, e                                       ; $652c: $63
    call c, Call_000_01f0                         ; $652d: $dc $f0 $01
    db $db                                        ; $6530: $db
    sbc e                                         ; $6531: $9b
    ld [hl], d                                    ; $6532: $72
    jr z, @+$36                                   ; $6533: $28 $34

    xor a                                         ; $6535: $af
    sub l                                         ; $6536: $95
    sra e                                         ; $6537: $cb $2b
    ld h, d                                       ; $6539: $62
    ld [hl], $94                                  ; $653a: $36 $94
    ld e, d                                       ; $653c: $5a
    sbc a                                         ; $653d: $9f
    sbc c                                         ; $653e: $99
    jp c, Jump_066_4d30                           ; $653f: $da $30 $4d

    db $db                                        ; $6542: $db
    di                                            ; $6543: $f3
    adc $a6                                       ; $6544: $ce $a6

Call_066_6546:
    rrca                                          ; $6546: $0f
    rst $20                                       ; $6547: $e7
    ld h, d                                       ; $6548: $62
    dec b                                         ; $6549: $05
    ld e, c                                       ; $654a: $59
    add l                                         ; $654b: $85
    dec [hl]                                      ; $654c: $35
    jr nz, jr_066_65b5                            ; $654d: $20 $66

    ld l, b                                       ; $654f: $68
    inc bc                                        ; $6550: $03
    ld a, [$c78f]                                 ; $6551: $fa $8f $c7
    ld a, b                                       ; $6554: $78
    or a                                          ; $6555: $b7
    add hl, bc                                    ; $6556: $09
    ld [$a6c3], a                                 ; $6557: $ea $c3 $a6
    add hl, hl                                    ; $655a: $29
    add a                                         ; $655b: $87
    ld a, [hl+]                                   ; $655c: $2a
    inc b                                         ; $655d: $04
    ld d, b                                       ; $655e: $50
    ld [hl], $4c                                  ; $655f: $36 $4c
    di                                            ; $6561: $f3
    di                                            ; $6562: $f3
    and a                                         ; $6563: $a7
    ccf                                           ; $6564: $3f
    inc l                                         ; $6565: $2c
    rst $08                                       ; $6566: $cf
    db $fd                                        ; $6567: $fd
    ld bc, $4417                                  ; $6568: $01 $17 $44
    ld b, $a4                                     ; $656b: $06 $a4
    inc e                                         ; $656d: $1c
    jp $eddc                                      ; $656e: $c3 $dc $ed


    and l                                         ; $6571: $a5
    ret z                                         ; $6572: $c8

    rst $08                                       ; $6573: $cf
    and [hl]                                      ; $6574: $a6
    ld c, [hl]                                    ; $6575: $4e
    sub $9f                                       ; $6576: $d6 $9f
    sbc b                                         ; $6578: $98
    rst $20                                       ; $6579: $e7
    ld l, [hl]                                    ; $657a: $6e
    inc de                                        ; $657b: $13
    ld l, c                                       ; $657c: $69
    ld hl, sp-$2f                                 ; $657d: $f8 $d1
    sub h                                         ; $657f: $94
    ld b, e                                       ; $6580: $43
    ld e, c                                       ; $6581: $59
    cpl                                           ; $6582: $2f
    dec h                                         ; $6583: $25
    dec de                                        ; $6584: $1b
    add l                                         ; $6585: $85
    db $d3                                        ; $6586: $d3
    ld [hl], l                                    ; $6587: $75
    call $cc2e                                    ; $6588: $cd $2e $cc
    db $dd                                        ; $658b: $dd
    ld l, [hl]                                    ; $658c: $6e
    sbc [hl]                                      ; $658d: $9e
    sbc b                                         ; $658e: $98
    ld e, a                                       ; $658f: $5f
    ld [hl], h                                    ; $6590: $74
    add sp, -$02                                  ; $6591: $e8 $fe
    push af                                       ; $6593: $f5
    ld l, l                                       ; $6594: $6d
    ld a, [hl]                                    ; $6595: $7e
    ld h, a                                       ; $6596: $67
    cp h                                          ; $6597: $bc
    ccf                                           ; $6598: $3f
    rla                                           ; $6599: $17
    call nz, $a47f                                ; $659a: $c4 $7f $a4
    cp a                                          ; $659d: $bf
    jr nz, @-$2f                                  ; $659e: $20 $cf

    db $dd                                        ; $65a0: $dd
    ld e, [hl]                                    ; $65a1: $5e
    adc d                                         ; $65a2: $8a
    db $fc                                        ; $65a3: $fc
    ld l, h                                       ; $65a4: $6c
    ld [$fd64], a                                 ; $65a5: $ea $64 $fd
    adc c                                         ; $65a8: $89
    ld a, c                                       ; $65a9: $79
    xor $36                                       ; $65aa: $ee $36
    ld b, c                                       ; $65ac: $41
    di                                            ; $65ad: $f3
    ld e, d                                       ; $65ae: $5a
    reti                                          ; $65af: $d9


    nop                                           ; $65b0: $00
    ld a, l                                       ; $65b1: $7d
    adc e                                         ; $65b2: $8b
    dec bc                                        ; $65b3: $0b
    rst $08                                       ; $65b4: $cf

jr_066_65b5:
    ld a, [hl-]                                   ; $65b5: $3a
    ld d, l                                       ; $65b6: $55
    cp b                                          ; $65b7: $b8
    ld d, d                                       ; $65b8: $52
    cp [hl]                                       ; $65b9: $be
    db $f4                                        ; $65ba: $f4
    adc b                                         ; $65bb: $88
    ld a, [hl-]                                   ; $65bc: $3a

Jump_066_65bd:
    db $dd                                        ; $65bd: $dd
    ld h, c                                       ; $65be: $61
    ld [hl], a                                    ; $65bf: $77
    cpl                                           ; $65c0: $2f
    sbc [hl]                                      ; $65c1: $9e
    sbc b                                         ; $65c2: $98
    or $4c                                        ; $65c3: $f6 $4c
    adc $23                                       ; $65c5: $ce $23
    rst $28                                       ; $65c7: $ef
    rrca                                          ; $65c8: $0f
    ld e, e                                       ; $65c9: $5b
    db $dd                                        ; $65ca: $dd
    bit 2, e                                      ; $65cb: $cb $53
    ld a, a                                       ; $65cd: $7f
    call c, $da3f                                 ; $65ce: $dc $3f $da
    rla                                           ; $65d1: $17
    db $d3                                        ; $65d2: $d3
    add [hl]                                      ; $65d3: $86
    ldh a, [rNR10]                                ; $65d4: $f0 $10
    inc sp                                        ; $65d6: $33
    ld d, h                                       ; $65d7: $54
    call nc, $c9c4                                ; $65d8: $d4 $c4 $c9
    add hl, de                                    ; $65db: $19
    halt                                          ; $65dc: $76
    or a                                          ; $65dd: $b7
    sbc e                                         ; $65de: $9b
    daa                                           ; $65df: $27
    and $17                                       ; $65e0: $e6 $17
    dec e                                         ; $65e2: $1d
    jp z, Jump_000_36fa                           ; $65e3: $ca $fa $36

    cp a                                          ; $65e6: $bf
    inc sp                                        ; $65e7: $33
    jp c, Jump_000_01fd                           ; $65e8: $da $fd $01

    db $db                                        ; $65eb: $db
    xor e                                         ; $65ec: $ab
    ld [hl], b                                    ; $65ed: $70
    and l                                         ; $65ee: $a5
    ld a, h                                       ; $65ef: $7c
    jp hl                                         ; $65f0: $e9


    ld l, c                                       ; $65f1: $69
    inc d                                         ; $65f2: $14
    ld c, [hl]                                    ; $65f3: $4e
    db $fd                                        ; $65f4: $fd
    ld b, e                                       ; $65f5: $43
    ld [bc], a                                    ; $65f6: $02
    ld a, [bc]                                    ; $65f7: $0a
    push af                                       ; $65f8: $f5
    ld h, c                                       ; $65f9: $61
    or h                                          ; $65fa: $b4
    db $d3                                        ; $65fb: $d3
    sbc e                                         ; $65fc: $9b
    or c                                          ; $65fd: $b1
    ld b, d                                       ; $65fe: $42
    inc bc                                        ; $65ff: $03
    xor d                                         ; $6600: $aa
    ld l, b                                       ; $6601: $68
    ld a, b                                       ; $6602: $78
    or $d2                                        ; $6603: $f6 $d2
    rst $08                                       ; $6605: $cf
    cp d                                          ; $6606: $ba
    ld a, a                                       ; $6607: $7f
    cp c                                          ; $6608: $b9
    or b                                          ; $6609: $b0
    ret                                           ; $660a: $c9


    ld d, c                                       ; $660b: $51
    rst $38                                       ; $660c: $ff
    ld h, l                                       ; $660d: $65
    ld l, $b4                                     ; $660e: $2e $b4
    cp e                                          ; $6610: $bb
    db $dd                                        ; $6611: $dd
    ld c, d                                       ; $6612: $4a
    rst $10                                       ; $6613: $d7
    ld l, h                                       ; $6614: $6c
    db $f4                                        ; $6615: $f4
    ld [hl], b                                    ; $6616: $70
    ld c, c                                       ; $6617: $49
    adc [hl]                                      ; $6618: $8e
    xor b                                         ; $6619: $a8
    dec sp                                        ; $661a: $3b
    db $ec                                        ; $661b: $ec
    ld l, [hl]                                    ; $661c: $6e
    ld [c], a                                     ; $661d: $e2
    db $e4                                        ; $661e: $e4
    inc c                                         ; $661f: $0c
    cp e                                          ; $6620: $bb
    db $db                                        ; $6621: $db
    inc de                                        ; $6622: $13
    db $eb                                        ; $6623: $eb
    ld c, a                                       ; $6624: $4f
    call z, $35a3                                 ; $6625: $cc $a3 $35
    db $e4                                        ; $6628: $e4
    ld h, a                                       ; $6629: $67
    inc c                                         ; $662a: $0c
    and e                                         ; $662b: $a3
    ld h, l                                       ; $662c: $65
    rst $08                                       ; $662d: $cf
    or a                                          ; $662e: $b7
    sbc l                                         ; $662f: $9d
    ld e, [hl]                                    ; $6630: $5e
    rst $28                                       ; $6631: $ef

Jump_066_6632:
    adc e                                         ; $6632: $8b
    ld h, c                                       ; $6633: $61
    db $ec                                        ; $6634: $ec
    ld l, [hl]                                    ; $6635: $6e

Jump_066_6636:
    push bc                                       ; $6636: $c5
    ld a, a                                       ; $6637: $7f
    ld a, d                                       ; $6638: $7a
    add $95                                       ; $6639: $c6 $95
    and l                                         ; $663b: $a5
    ld e, e                                       ; $663c: $5b
    ld a, b                                       ; $663d: $78
    ld a, a                                       ; $663e: $7f
    adc c                                         ; $663f: $89
    ld [hl], $31                                  ; $6640: $36 $31
    adc a                                         ; $6642: $8f
    xor b                                         ; $6643: $a8
    db $fc                                        ; $6644: $fc
    jp hl                                         ; $6645: $e9


    pop bc                                        ; $6646: $c1
    cp e                                          ; $6647: $bb
    db $db                                        ; $6648: $db
    ld c, e                                       ; $6649: $4b
    inc e                                         ; $664a: $1c
    ld l, h                                       ; $664b: $6c
    cp d                                          ; $664c: $ba
    add d                                         ; $664d: $82
    ld d, l                                       ; $664e: $55
    pop de                                        ; $664f: $d1
    jp hl                                         ; $6650: $e9


    adc [hl]                                      ; $6651: $8e
    ld c, b                                       ; $6652: $48
    rra                                           ; $6653: $1f
    sub l                                         ; $6654: $95
    xor b                                         ; $6655: $a8
    ld hl, $633f                                  ; $6656: $21 $3f $63
    db $fd                                        ; $6659: $fd
    adc c                                         ; $665a: $89
    ld a, c                                       ; $665b: $79
    or h                                          ; $665c: $b4
    ld c, h                                       ; $665d: $4c
    adc a                                         ; $665e: $8f
    ld [hl], c                                    ; $665f: $71
    jp $e707                                      ; $6660: $c3 $07 $e7


    adc [hl]                                      ; $6663: $8e
    db $db                                        ; $6664: $db
    cp b                                          ; $6665: $b8
    inc h                                         ; $6666: $24
    ld d, c                                       ; $6667: $51
    push bc                                       ; $6668: $c5
    db $d3                                        ; $6669: $d3
    ld a, [$f313]                                 ; $666a: $fa $13 $f3
    ld l, b                                       ; $666d: $68
    db $fd                                        ; $666e: $fd
    or c                                          ; $666f: $b1
    ld [hl+], a                                   ; $6670: $22
    cp $13                                        ; $6671: $fe $13
    or e                                          ; $6673: $b3
    pop de                                        ; $6674: $d1
    ld a, [hl-]                                   ; $6675: $3a
    jp c, $d317                                   ; $6676: $da $17 $d3

    add [hl]                                      ; $6679: $86
    ldh a, [rNR10]                                ; $667a: $f0 $10
    inc sp                                        ; $667c: $33
    ld d, h                                       ; $667d: $54
    ld d, h                                       ; $667e: $54
    ld c, c                                       ; $667f: $49
    ld l, l                                       ; $6680: $6d
    ld b, b                                       ; $6681: $40
    ld [hl], b                                    ; $6682: $70
    cp e                                          ; $6683: $bb
    and [hl]                                      ; $6684: $a6
    ld c, [hl]                                    ; $6685: $4e
    sub $1f                                       ; $6686: $d6 $1f
    ld c, e                                       ; $6688: $4b
    add hl, sp                                    ; $6689: $39
    inc [hl]                                      ; $668a: $34
    ld b, b                                       ; $668b: $40
    adc [hl]                                      ; $668c: $8e
    adc l                                         ; $668d: $8d
    xor e                                         ; $668e: $ab
    ld [hl], h                                    ; $668f: $74
    cpl                                           ; $6690: $2f
    ld c, a                                       ; $6691: $4f
    inc sp                                        ; $6692: $33
    and h                                         ; $6693: $a4
    ccf                                           ; $6694: $3f
    ld [hl], a                                    ; $6695: $77
    push bc                                       ; $6696: $c5
    db $d3                                        ; $6697: $d3
    ld h, e                                       ; $6698: $63
    ld l, h                                       ; $6699: $6c
    add b                                         ; $669a: $80
    ld a, [$93fc]                                 ; $669b: $fa $fc $93
    ret c                                         ; $669e: $d8

    xor b                                         ; $669f: $a8
    xor b                                         ; $66a0: $a8
    ld c, a                                       ; $66a1: $4f
    ld h, e                                       ; $66a2: $63
    ld e, c                                       ; $66a3: $59
    cp d                                          ; $66a4: $ba
    add l                                         ; $66a5: $85
    ld d, l                                       ; $66a6: $55
    and h                                         ; $66a7: $a4
    db $dd                                        ; $66a8: $dd
    adc e                                         ; $66a9: $8b
    add hl, de                                    ; $66aa: $19
    rst $30                                       ; $66ab: $f7
    ld a, l                                       ; $66ac: $7d
    sub a                                         ; $66ad: $97
    adc l                                         ; $66ae: $8d
    jp nz, $c2a9                                  ; $66af: $c2 $a9 $c2

    sbc d                                         ; $66b2: $9a
    ld [hl], d                                    ; $66b3: $72
    ld l, b                                       ; $66b4: $68
    jp z, $19e1                                   ; $66b5: $ca $e1 $19

    db $eb                                        ; $66b8: $eb
    jp $ac02                                      ; $66b9: $c3 $02 $ac


    ld a, h                                       ; $66bc: $7c
    ld sp, $92b0                                  ; $66bd: $31 $b0 $92
    ld c, a                                       ; $66c0: $4f
    db $eb                                        ; $66c1: $eb
    ld c, a                                       ; $66c2: $4f
    call z, $f7a3                                 ; $66c3: $cc $a3 $f7
    rlca                                          ; $66c6: $07
    ld [c], a                                     ; $66c7: $e2
    add hl, de                                    ; $66c8: $19
    ld [hl], c                                    ; $66c9: $71
    cp l                                          ; $66ca: $bd
    ld [hl], b                                    ; $66cb: $70
    cp d                                          ; $66cc: $ba
    cp a                                          ; $66cd: $bf
    or $fc                                        ; $66ce: $f6 $fc
    dec [hl]                                      ; $66d0: $35
    ld c, e                                       ; $66d1: $4b
    cp e                                          ; $66d2: $bb
    add l                                         ; $66d3: $85
    jp c, $bd30                                   ; $66d4: $da $30 $bd

    ld [bc], a                                    ; $66d7: $02
    sbc d                                         ; $66d8: $9a
    ld [hl], a                                    ; $66d9: $77
    di                                            ; $66da: $f3
    cp b                                          ; $66db: $b8
    ld h, l                                       ; $66dc: $65
    ld a, [de]                                    ; $66dd: $1a
    ret nc                                        ; $66de: $d0

    add h                                         ; $66df: $84
    sbc b                                         ; $66e0: $98
    adc l                                         ; $66e1: $8d
    add c                                         ; $66e2: $81
    ld [hl], a                                    ; $66e3: $77
    or a                                          ; $66e4: $b7
    xor h                                         ; $66e5: $ac
    ld d, l                                       ; $66e6: $55
    ld a, [c]                                     ; $66e7: $f2
    ld l, c                                       ; $66e8: $69
    ld d, e                                       ; $66e9: $53
    ld c, $b2                                     ; $66ea: $0e $b2
    ld c, e                                       ; $66ec: $4b
    ld [de], a                                    ; $66ed: $12
    ld e, d                                       ; $66ee: $5a
    rst $18                                       ; $66ef: $df
    and b                                         ; $66f0: $a0
    add hl, de                                    ; $66f1: $19
    ld h, l                                       ; $66f2: $65
    ld b, [hl]                                    ; $66f3: $46
    ld e, h                                       ; $66f4: $5c
    cpl                                           ; $66f5: $2f
    sbc h                                         ; $66f6: $9c

jr_066_66f7:
    ei                                            ; $66f7: $fb
    inc bc                                        ; $66f8: $03
    adc c                                         ; $66f9: $89
    ld [hl], $bf                                  ; $66fa: $36 $bf
    inc sp                                        ; $66fc: $33
    sub $87                                       ; $66fd: $d6 $87
    push hl                                       ; $66ff: $e5
    ld l, c                                       ; $6700: $69
    ld h, b                                       ; $6701: $60
    scf                                           ; $6702: $37
    db $d3                                        ; $6703: $d3
    jp $86c8                                      ; $6704: $c3 $c8 $86


Jump_066_6707:
    jp hl                                         ; $6707: $e9


    ld d, $a6                                     ; $6708: $16 $a6
    db $ed                                        ; $670a: $ed
    add l                                         ; $670b: $85
    cp e                                          ; $670c: $bb
    rla                                           ; $670d: $17
    xor [hl]                                      ; $670e: $ae
    ld d, l                                       ; $670f: $55
    and d                                         ; $6710: $a2
    db $fc                                        ; $6711: $fc
    daa                                           ; $6712: $27
    ld h, [hl]                                    ; $6713: $66
    db $fc                                        ; $6714: $fc
    ld [hl], b                                    ; $6715: $70
    ld b, l                                       ; $6716: $45

Call_066_6717:
    db $fc                                        ; $6717: $fc
    daa                                           ; $6718: $27
    ld h, [hl]                                    ; $6719: $66
    and e                                         ; $671a: $a3
    push af                                       ; $671b: $f5
    push bc                                       ; $671c: $c5
    or h                                          ; $671d: $b4
    ld hl, $c43c                                  ; $671e: $21 $3c $c4
    inc c                                         ; $6721: $0c
    ld l, l                                       ; $6722: $6d
    add h                                         ; $6723: $84
    ld h, [hl]                                    ; $6724: $66
    ld d, h                                       ; $6725: $54
    nop                                           ; $6726: $00
    dec l                                         ; $6727: $2d
    inc a                                         ; $6728: $3c
    ld a, c                                       ; $6729: $79
    ld a, a                                       ; $672a: $7f
    ld [c], a                                     ; $672b: $e2
    ld a, a                                       ; $672c: $7f
    ld [hl], d                                    ; $672d: $72
    sbc d                                         ; $672e: $9a
    ld [hl], d                                    ; $672f: $72
    add sp, -$16                                  ; $6730: $e8 $ea
    sub l                                         ; $6732: $95
    ld c, e                                       ; $6733: $4b
    jp c, Jump_066_6d45                           ; $6734: $da $45 $6d

    ld h, h                                       ; $6737: $64
    jp z, $8161                                   ; $6738: $ca $61 $81

    halt                                          ; $673b: $76
    pop bc                                        ; $673c: $c1
    pop bc                                        ; $673d: $c1
    ret nc                                        ; $673e: $d0

    cp $23                                        ; $673f: $fe $23
    ei                                            ; $6741: $fb
    db $d3                                        ; $6742: $d3
    add e                                         ; $6743: $83
    push af                                       ; $6744: $f5
    ld l, h                                       ; $6745: $6c
    ld b, b                                       ; $6746: $40
    rst $10                                       ; $6747: $d7
    jp nc, $b1ee                                  ; $6748: $d2 $ee $b1

    ld [hl], c                                    ; $674b: $71
    xor d                                         ; $674c: $aa
    ld c, b                                       ; $674d: $48
    cp e                                          ; $674e: $bb
    jr jr_066_66f7                                ; $674f: $18 $a6

    adc h                                         ; $6751: $8c
    add c                                         ; $6752: $81
    halt                                          ; $6753: $76
    ld a, a                                       ; $6754: $7f
    db $db                                        ; $6755: $db
    add $24                                       ; $6756: $c6 $24
    rla                                           ; $6758: $17
    adc c                                         ; $6759: $89
    sbc b                                         ; $675a: $98
    pop de                                        ; $675b: $d1
    db $e4                                        ; $675c: $e4
    ld e, d                                       ; $675d: $5a
    ld e, a                                       ; $675e: $5f
    ld c, h                                       ; $675f: $4c
    dec de                                        ; $6760: $1b
    jp nz, $cc43                                  ; $6761: $c2 $43 $cc

    ret nc                                        ; $6764: $d0

    add $29                                       ; $6765: $c6 $29
    db $f4                                        ; $6767: $f4

Jump_066_6768:
    or a                                          ; $6768: $b7
    sub a                                         ; $6769: $97
    ld [hl], a                                    ; $676a: $77
    or a                                          ; $676b: $b7
    scf                                           ; $676c: $37
    dec c                                         ; $676d: $0d
    db $d3                                        ; $676e: $d3
    dec e                                         ; $676f: $1d
    sub c                                         ; $6770: $91
    ld a, $ee                                     ; $6771: $3e $ee
    ld h, $4e                                     ; $6773: $26 $4e
    add b                                         ; $6775: $80
    inc l                                         ; $6776: $2c
    inc [hl]                                      ; $6777: $34
    db $d3                                        ; $6778: $d3
    ld a, [bc]                                    ; $6779: $0a
    reti                                          ; $677a: $d9


    sub h                                         ; $677b: $94
    db $e3                                        ; $677c: $e3
    sub d                                         ; $677d: $92
    ld [hl], d                                    ; $677e: $72
    or b                                          ; $677f: $b0
    ld l, $0c                                     ; $6780: $2e $0c
    inc hl                                        ; $6782: $23
    ld a, [hl+]                                   ; $6783: $2a
    di                                            ; $6784: $f3
    cp d                                          ; $6785: $ba
    ld b, [hl]                                    ; $6786: $46
    ld l, d                                       ; $6787: $6a
    ld a, l                                       ; $6788: $7d
    ld a, [de]                                    ; $6789: $1a
    ld [bc], a                                    ; $678a: $02
    db $f4                                        ; $678b: $f4
    cp $00                                        ; $678c: $fe $00
    ld d, a                                       ; $678e: $57
    inc a                                         ; $678f: $3c
    call Call_000_3fa8                            ; $6790: $cd $a8 $3f
    ld d, [hl]                                    ; $6793: $56
    xor $d6                                       ; $6794: $ee $d6
    rla                                           ; $6796: $17
    db $d3                                        ; $6797: $d3
    add [hl]                                      ; $6798: $86
    ldh a, [rNR10]                                ; $6799: $f0 $10
    inc sp                                        ; $679b: $33
    or h                                          ; $679c: $b4
    ld a, $8d                                     ; $679d: $3e $8d
    push af                                       ; $679f: $f5
    ld h, a                                       ; $67a0: $67
    db $fd                                        ; $67a1: $fd
    pop bc                                        ; $67a2: $c1
    ret nc                                        ; $67a3: $d0

    ld c, l                                       ; $67a4: $4d
    rra                                           ; $67a5: $1f
    db $db                                        ; $67a6: $db
    add h                                         ; $67a7: $84
    db $d3                                        ; $67a8: $d3
    db $e4                                        ; $67a9: $e4
    ld e, d                                       ; $67aa: $5a
    db $fd                                        ; $67ab: $fd
    ld e, c                                       ; $67ac: $59
    cpl                                           ; $67ad: $2f
    sbc h                                         ; $67ae: $9c
    and [hl]                                      ; $67af: $a6
    inc e                                         ; $67b0: $1c
    sbc d                                         ; $67b1: $9a
    pop de                                        ; $67b2: $d1
    rst $18                                       ; $67b3: $df
    add hl, de                                    ; $67b4: $19
    ld b, h                                       ; $67b5: $44
    ld c, l                                       ; $67b6: $4d
    sbc h                                         ; $67b7: $9c
    sbc h                                         ; $67b8: $9c
    ld h, c                                       ; $67b9: $61
    rst $30                                       ; $67ba: $f7
    rlca                                          ; $67bb: $07
    sub a                                         ; $67bc: $97
    ld b, c                                       ; $67bd: $41
    or $77                                        ; $67be: $f6 $77
    cpl                                           ; $67c0: $2f
    jr nc, jr_066_680f                            ; $67c1: $30 $4c

    ld a, l                                       ; $67c3: $7d
    ld a, [de]                                    ; $67c4: $1a
    dec de                                        ; $67c5: $1b
    add l                                         ; $67c6: $85
    db $d3                                        ; $67c7: $d3
    jp $ee7f                                      ; $67c8: $c3 $7f $ee


    ld h, [hl]                                    ; $67cb: $66
    ret nc                                        ; $67cc: $d0

    jp $9d1b                                      ; $67cd: $c3 $1b $9d


    db $ec                                        ; $67d0: $ec
    rst $08                                       ; $67d1: $cf
    dec h                                         ; $67d2: $25
    ldh [$99], a                                  ; $67d3: $e0 $99
    ld [hl], b                                    ; $67d5: $70
    ld b, h                                       ; $67d6: $44
    ld c, l                                       ; $67d7: $4d
    sbc h                                         ; $67d8: $9c
    sbc h                                         ; $67d9: $9c
    ld h, c                                       ; $67da: $61
    rst $30                                       ; $67db: $f7
    rlca                                          ; $67dc: $07
    rst $20                                       ; $67dd: $e7
    cp [hl]                                       ; $67de: $be
    ld e, l                                       ; $67df: $5d
    sub b                                         ; $67e0: $90
    ld c, l                                       ; $67e1: $4d
    add hl, sp                                    ; $67e2: $39
    ld [hl], h                                    ; $67e3: $74
    cp d                                          ; $67e4: $ba
    inc hl                                        ; $67e5: $23
    jp nc, $a347                                  ; $67e6: $d2 $47 $a3

    ld [hl], b                                    ; $67e9: $70
    sbc d                                         ; $67ea: $9a
    ld e, $cd                                     ; $67eb: $1e $cd
    ld l, h                                       ; $67ed: $6c
    ld b, b                                       ; $67ee: $40
    db $e3                                        ; $67ef: $e3
    adc e                                         ; $67f0: $8b
    ld l, c                                       ; $67f1: $69
    or a                                          ; $67f2: $b7
    ld c, [hl]                                    ; $67f3: $4e

Jump_066_67f4:
    sub $a7                                       ; $67f4: $d6 $a7
    or c                                          ; $67f6: $b1
    ld e, h                                       ; $67f7: $5c
    sub $c9                                       ; $67f8: $d6 $c9
    add [hl]                                      ; $67fa: $86
    pop de                                        ; $67fb: $d1
    xor $58                                       ; $67fc: $ee $58
    halt                                          ; $67fe: $76
    and $24                                       ; $67ff: $e6 $24
    db $ec                                        ; $6801: $ec
    ld b, l                                       ; $6802: $45
    dec d                                         ; $6803: $15
    push de                                       ; $6804: $d5
    sbc a                                         ; $6805: $9f
    and a                                         ; $6806: $a7
    ld e, l                                       ; $6807: $5d
    rst $10                                       ; $6808: $d7
    jp hl                                         ; $6809: $e9


    or d                                          ; $680a: $b2
    ld e, e                                       ; $680b: $5b
    add b                                         ; $680c: $80
    dec [hl]                                      ; $680d: $35
    or b                                          ; $680e: $b0

jr_066_680f:
    ld c, b                                       ; $680f: $48
    cp c                                          ; $6810: $b9
    rst $20                                       ; $6811: $e7
    di                                            ; $6812: $f3
    cp $00                                        ; $6813: $fe $00
    db $db                                        ; $6815: $db
    cp e                                          ; $6816: $bb
    inc hl                                        ; $6817: $23

Jump_066_6818:
    jp nc, $c347                                  ; $6818: $d2 $47 $c3

    jp c, $8946                                   ; $681b: $da $46 $89

    jp nc, $fe0c                                  ; $681e: $d2 $0c $fe

    dec de                                        ; $6821: $1b
    cp l                                          ; $6822: $bd
    ccf                                           ; $6823: $3f
    ld [c], a                                     ; $6824: $e2
    ld h, c                                       ; $6825: $61
    adc h                                         ; $6826: $8c
    dec hl                                        ; $6827: $2b
    ld d, [hl]                                    ; $6828: $56
    jp hl                                         ; $6829: $e9


    add c                                         ; $682a: $81
    push de                                       ; $682b: $d5
    bit 3, l                                      ; $682c: $cb $5d

Jump_066_682e:
    or b                                          ; $682e: $b0

jr_066_682f:
    cp $f3                                        ; $682f: $fe $f3
    ld [hl], e                                    ; $6831: $73
    db $e3                                        ; $6832: $e3
    ccf                                           ; $6833: $3f
    dec bc                                        ; $6834: $0b
    dec de                                        ; $6835: $1b
    ret nc                                        ; $6836: $d0

    rra                                           ; $6837: $1f
    ld b, $01                                     ; $6838: $06 $01
    cp h                                          ; $683a: $bc
    ccf                                           ; $683b: $3f
    sbc e                                         ; $683c: $9b
    sub e                                         ; $683d: $93
    ld a, b                                       ; $683e: $78
    add $b2                                       ; $683f: $c6 $b2
    or e                                          ; $6841: $b3
    ld a, [de]                                    ; $6842: $1a
    xor l                                         ; $6843: $ad
    ccf                                           ; $6844: $3f
    pop bc                                        ; $6845: $c1
    and b                                         ; $6846: $a0
    rst $30                                       ; $6847: $f7
    rlca                                          ; $6848: $07
    db $db                                        ; $6849: $db
    dec hl                                        ; $684a: $2b
    pop hl                                        ; $684b: $e1
    ld a, [$0a4c]                                 ; $684c: $fa $4c $0a
    and a                                         ; $684f: $a7
    pop hl                                        ; $6850: $e1
    xor c                                         ; $6851: $a9
    ld h, d                                       ; $6852: $62
    and e                                         ; $6853: $a3
    ld b, h                                       ; $6854: $44
    ld d, e                                       ; $6855: $53
    ld c, $55                                     ; $6856: $0e $55
    inc d                                         ; $6858: $14
    xor [hl]                                      ; $6859: $ae
    db $f4                                        ; $685a: $f4
    jr nc, jr_066_682f                            ; $685b: $30 $d2

    ld [$9b24], a                                 ; $685d: $ea $24 $9b
    and [hl]                                      ; $6860: $a6
    add hl, de                                    ; $6861: $19
    cp l                                          ; $6862: $bd
    ld l, h                                       ; $6863: $6c
    ld b, b                                       ; $6864: $40
    db $fd                                        ; $6865: $fd
    ld e, c                                       ; $6866: $59
    cpl                                           ; $6867: $2f
    sbc h                                         ; $6868: $9c
    cp $49                                        ; $6869: $fe $49
    inc a                                         ; $686b: $3c
    sub [hl]                                      ; $686c: $96
    rst $38                                       ; $686d: $ff
    call nz, $1f8c                                ; $686e: $c4 $8c $1f
    ld c, l                                       ; $6871: $4d
    add hl, sp                                    ; $6872: $39
    ld l, $29                                     ; $6873: $2e $29
    rlca                                          ; $6875: $07
    db $eb                                        ; $6876: $eb
    ccf                                           ; $6877: $3f
    ld c, a                                       ; $6878: $4f
    reti                                          ; $6879: $d9


    ldh a, [rRP]                                  ; $687a: $f0 $56
    or b                                          ; $687c: $b0
    db $fc                                        ; $687d: $fc
    ld [bc], a                                    ; $687e: $02
    rst $28                                       ; $687f: $ef
    rrca                                          ; $6880: $0f
    sub a                                         ; $6881: $97

Jump_066_6882:
    jr c, @-$26                                   ; $6882: $38 $d8

    sub h                                         ; $6884: $94
    cp [hl]                                       ; $6885: $be
    ld hl, $5806                                  ; $6886: $21 $06 $58
    ld e, c                                       ; $6889: $59
    cpl                                           ; $688a: $2f
    ld [hl], a                                    ; $688b: $77
    pop bc                                        ; $688c: $c1
    ld [$eb24], a                                 ; $688d: $ea $24 $eb
    rst $08                                       ; $6890: $cf
    ld a, d                                       ; $6891: $7a
    pop hl                                        ; $6892: $e1
    db $f4                                        ; $6893: $f4
    ld [hl], a                                    ; $6894: $77
    add $fc                                       ; $6895: $c6 $fc
    ld d, [hl]                                    ; $6897: $56
    inc d                                         ; $6898: $14
    push de                                       ; $6899: $d5
    rra                                           ; $689a: $1f
    ld c, e                                       ; $689b: $4b
    add hl, sp                                    ; $689c: $39
    ld [hl], h                                    ; $689d: $74
    or h                                          ; $689e: $b4
    dec sp                                        ; $689f: $3b
    sub [hl]                                      ; $68a0: $96
    sbc l                                         ; $68a1: $9d
    add hl, sp                                    ; $68a2: $39
    add hl, bc                                    ; $68a3: $09
    ld a, e                                       ; $68a4: $7b
    ld d, c                                       ; $68a5: $51
    dec bc                                        ; $68a6: $0b
    call $a9c2                                    ; $68a7: $cd $c2 $a9
    ld b, d                                       ; $68aa: $42
    ld a, [$b286]                                 ; $68ab: $fa $86 $b2
    ld e, [hl]                                    ; $68ae: $5e
    xor $82                                       ; $68af: $ee $82
    ld l, l                                       ; $68b1: $6d
    sub h                                         ; $68b2: $94
    ld l, b                                       ; $68b3: $68
    or [hl]                                       ; $68b4: $b6
    pop af                                        ; $68b5: $f1
    or c                                          ; $68b6: $b1
    sbc [hl]                                      ; $68b7: $9e
    sub $38                                       ; $68b8: $d6 $38
    jp c, $cc7f                                   ; $68ba: $da $7f $cc

    db $10                                        ; $68bd: $10
    add $a0                                       ; $68be: $c6 $a0
    rst $30                                       ; $68c0: $f7
    rlca                                          ; $68c1: $07
    sub a                                         ; $68c2: $97
    ld hl, $3666                                  ; $68c3: $21 $66 $36
    ld a, [bc]                                    ; $68c6: $0a
    and a                                         ; $68c7: $a7
    ld e, [hl]                                    ; $68c8: $5e
    xor $82                                       ; $68c9: $ee $82
    ld d, l                                       ; $68cb: $55
    cp d                                          ; $68cc: $ba
    sub a                                         ; $68cd: $97
    ld e, c                                       ; $68ce: $59
    ld a, a                                       ; $68cf: $7f
    db $ec                                        ; $68d0: $ec
    and a                                         ; $68d1: $a7
    dec a                                         ; $68d2: $3d
    adc d                                         ; $68d3: $8a
    sbc d                                         ; $68d4: $9a
    jr c, jr_066_6910                             ; $68d5: $38 $39

    jp Jump_000_0fee                              ; $68d7: $c3 $ee $0f


    add hl, bc                                    ; $68da: $09
    ld [$a6c3], a                                 ; $68db: $ea $c3 $a6
    ld d, c                                       ; $68de: $51
    jr c, @+$47                                   ; $68df: $38 $45

    call z, $9163                                 ; $68e1: $cc $63 $91
    sub $c8                                       ; $68e4: $d6 $c8
    ret nz                                        ; $68e6: $c0

    cp $23                                        ; $68e7: $fe $23
    and a                                         ; $68e9: $a7
    ld bc, $47fd                                  ; $68ea: $01 $fd $47
    or e                                          ; $68ed: $b3
    sub e                                         ; $68ee: $93
    cp b                                          ; $68ef: $b8
    ccf                                           ; $68f0: $3f
    db $db                                        ; $68f1: $db
    dec hl                                        ; $68f2: $2b
    pop hl                                        ; $68f3: $e1
    ld a, [$0973]                                 ; $68f4: $fa $73 $09
    ld a, b                                       ; $68f7: $78
    ld h, $9c                                     ; $68f8: $26 $9c
    xor [hl]                                      ; $68fa: $ae
    xor e                                         ; $68fb: $ab
    db $e4                                        ; $68fc: $e4
    db $d3                                        ; $68fd: $d3
    ld a, d                                       ; $68fe: $7a
    db $ec                                        ; $68ff: $ec
    dec l                                         ; $6900: $2d
    ld c, c                                       ; $6901: $49
    add $8c                                       ; $6902: $c6 $8c
    and [hl]                                      ; $6904: $a6
    inc e                                         ; $6905: $1c

jr_066_6906:
    sbc d                                         ; $6906: $9a
    ld [hl], d                                    ; $6907: $72
    ld e, h                                       ; $6908: $5c
    ld d, d                                       ; $6909: $52
    ld c, $56                                     ; $690a: $0e $56
    daa                                           ; $690c: $27
    dec de                                        ; $690d: $1b
    ld b, [hl]                                    ; $690e: $46
    dec sp                                        ; $690f: $3b

jr_066_6910:
    ld l, $db                                     ; $6910: $2e $db
    add sp, -$23                                  ; $6912: $e8 $dd
    sra b                                         ; $6914: $cb $28
    dec a                                         ; $6916: $3d
    db $eb                                        ; $6917: $eb
    ld h, h                                       ; $6918: $64
    inc bc                                        ; $6919: $03
    ld d, [hl]                                    ; $691a: $56
    adc a                                         ; $691b: $8f
    or d                                          ; $691c: $b2
    cp $2c                                        ; $691d: $fe $2c
    rst $08                                       ; $691f: $cf
    ld a, [hl-]                                   ; $6920: $3a
    jp c, $a8d5                                   ; $6921: $da $d5 $a8

    adc [hl]                                      ; $6924: $8e
    sbc $1f                                       ; $6925: $de $1f
    db $db                                        ; $6927: $db
    or l                                          ; $6928: $b5
    ld [de], a                                    ; $6929: $12
    ld c, [hl]                                    ; $692a: $4e
    ei                                            ; $692b: $fb
    ld c, h                                       ; $692c: $4c
    ld a, [bc]                                    ; $692d: $0a
    ld b, a                                       ; $692e: $47
    dec de                                        ; $692f: $1b
    sbc $2e                                       ; $6930: $de $2e
    ret z                                         ; $6932: $c8

    and [hl]                                      ; $6933: $a6
    inc e                                         ; $6934: $1c
    ld a, [hl-]                                   ; $6935: $3a
    db $dd                                        ; $6936: $dd
    ld de, $a3e9                                  ; $6937: $11 $e9 $a3
    db $eb                                        ; $693a: $eb
    ld a, [hl+]                                   ; $693b: $2a
    and c                                         ; $693c: $a1
    ld [hl], d                                    ; $693d: $72
    sbc d                                         ; $693e: $9a
    add l                                         ; $693f: $85
    ld d, e                                       ; $6940: $53
    ld c, c                                       ; $6941: $49
    rst $10                                       ; $6942: $d7
    ld a, a                                       ; $6943: $7f
    db $e4                                        ; $6944: $e4
    call nc, $e1a7                                ; $6945: $d4 $a7 $e1
    rst $00                                       ; $6948: $c7
    db $fd                                        ; $6949: $fd
    ld bc, $6ee2                                  ; $694a: $01 $e2 $6e
    and c                                         ; $694d: $a1
    ld [hl], $4c                                  ; $694e: $36 $4c
    inc de                                        ; $6950: $13
    db $ed                                        ; $6951: $ed
    ld c, c                                       ; $6952: $49
    inc a                                         ; $6953: $3c

jr_066_6954:
    sbc e                                         ; $6954: $9b
    adc d                                         ; $6955: $8a
    rst $00                                       ; $6956: $c7
    add hl, sp                                    ; $6957: $39
    xor l                                         ; $6958: $ad
    cp l                                          ; $6959: $bd
    call z, $d518                                 ; $695a: $cc $18 $d5
    ei                                            ; $695d: $fb
    jp nc, $b8ce                                  ; $695e: $d2 $ce $b8

    ld e, [hl]                                    ; $6961: $5e
    jr c, jr_066_6906                             ; $6962: $38 $a2

    ld h, $ce                                     ; $6964: $26 $ce
    ld a, [$a183]                                 ; $6966: $fa $83 $a1
    and d                                         ; $6969: $a2
    ld h, $c4                                     ; $696a: $26 $c4
    sbc a                                         ; $696c: $9f
    ld sp, $2253                                  ; $696d: $31 $53 $22
    and $51                                       ; $6970: $e6 $51
    ld d, c                                       ; $6972: $51
    or a                                          ; $6973: $b7
    inc a                                         ; $6974: $3c
    call $dbbb                                    ; $6975: $cd $bb $db
    ld h, e                                       ; $6978: $63
    inc bc                                        ; $6979: $03
    cp e                                          ; $697a: $bb
    sub l                                         ; $697b: $95
    jp hl                                         ; $697c: $e9


    ld b, a                                       ; $697d: $47
    ld d, c                                       ; $697e: $51
    or a                                          ; $697f: $b7
    ret nz                                        ; $6980: $c0

    inc a                                         ; $6981: $3c
    or e                                          ; $6982: $b3
    ld c, h                                       ; $6983: $4c
    ld a, [$d451]                                 ; $6984: $fa $51 $d4
    ld [hl], e                                    ; $6987: $73
    pop hl                                        ; $6988: $e1
    add l                                         ; $6989: $85
    or d                                          ; $698a: $b2
    sbc e                                         ; $698b: $9b
    daa                                           ; $698c: $27
    ld h, [hl]                                    ; $698d: $66
    ld h, e                                       ; $698e: $63
    xor c                                         ; $698f: $a9
    dec d                                         ; $6990: $15
    or a                                          ; $6991: $b7
    inc c                                         ; $6992: $0c
    ld l, l                                       ; $6993: $6d
    and b                                         ; $6994: $a0
    or $32                                        ; $6995: $f6 $32
    jp $da8a                                      ; $6997: $c3 $8a $da


    add h                                         ; $699a: $84
    ld e, [hl]                                    ; $699b: $5e
    ld sp, $7f73                                  ; $699c: $31 $73 $7f
    rst $20                                       ; $699f: $e7
    ld b, d                                       ; $69a0: $42
    ld a, l                                       ; $69a1: $7d
    cp $49                                        ; $69a2: $fe $49
    ld l, [hl]                                    ; $69a4: $6e
    call z, Call_066_4fa8                         ; $69a5: $cc $a8 $4f
    ld h, e                                       ; $69a8: $63
    ld e, c                                       ; $69a9: $59
    rst $18                                       ; $69aa: $df
    halt                                          ; $69ab: $76
    rla                                           ; $69ac: $17
    db $fc                                        ; $69ad: $fc
    inc h                                         ; $69ae: $24
    ld c, e                                       ; $69af: $4b
    or a                                          ; $69b0: $b7
    ldh a, [$fe]                                  ; $69b1: $f0 $fe
    nop                                           ; $69b3: $00
    dec sp                                        ; $69b4: $3b
    ret nc                                        ; $69b5: $d0

    jr z, jr_066_6954                             ; $69b6: $28 $9c

    ld a, [hl+]                                   ; $69b8: $2a
    dec a                                         ; $69b9: $3d
    ret nc                                        ; $69ba: $d0

    and [hl]                                      ; $69bb: $a6
    inc e                                         ; $69bc: $1c
    ld c, d                                       ; $69bd: $4a
    or a                                          ; $69be: $b7
    ld d, b                                       ; $69bf: $50
    sbc e                                         ; $69c0: $9b
    ld de, $d455                                  ; $69c1: $11 $55 $d4
    dec d                                         ; $69c4: $15
    db $ec                                        ; $69c5: $ec
    ld a, c                                       ; $69c6: $79
    rst $18                                       ; $69c7: $df
    rst $08                                       ; $69c8: $cf
    add $69                                       ; $69c9: $c6 $69
    ld [hl+], a                                   ; $69cb: $22
    ld e, a                                       ; $69cc: $5f
    call nz, $80d2                                ; $69cd: $c4 $d2 $80
    adc d                                         ; $69d0: $8a
    rst $00                                       ; $69d1: $c7
    dec a                                         ; $69d2: $3d
    ld [c], a                                     ; $69d3: $e2
    rst $38                                       ; $69d4: $ff
    ld b, [hl]                                    ; $69d5: $46
    dec de                                        ; $69d6: $1b
    reti                                          ; $69d7: $d9


    dec e                                         ; $69d8: $1d
    ld e, h                                       ; $69d9: $5c
    ret c                                         ; $69da: $d8

    call $9d23                                    ; $69db: $cd $23 $9d
    ld l, h                                       ; $69de: $6c
    ld h, b                                       ; $69df: $60
    or e                                          ; $69e0: $b3
    ld h, e                                       ; $69e1: $63
    sub c                                         ; $69e2: $91
    ld [hl], d                                    ; $69e3: $72
    rst $08                                       ; $69e4: $cf
    rst $20                                       ; $69e5: $e7
    db $fd                                        ; $69e6: $fd
    ld bc, $8c57                                  ; $69e7: $01 $57 $8c
    xor e                                         ; $69ea: $ab
    ld c, a                                       ; $69eb: $4f
    ld h, e                                       ; $69ec: $63
    ld e, c                                       ; $69ed: $59
    cp d                                          ; $69ee: $ba
    add l                                         ; $69ef: $85
    dec c                                         ; $69f0: $0d
    add sp, $16                                   ; $69f1: $e8 $16
    sbc b                                         ; $69f3: $98
    ld h, a                                       ; $69f4: $67
    sub [hl]                                      ; $69f5: $96
    ld c, c                                       ; $69f6: $49
    ccf                                           ; $69f7: $3f
    sbc $3d                                       ; $69f8: $de $3d
    and e                                         ; $69fa: $a3

Jump_066_69fb:
    bit 3, d                                      ; $69fb: $cb $5a
    cp l                                          ; $69fd: $bd
    ld h, e                                       ; $69fe: $63
    ld l, h                                       ; $69ff: $6c
    and h                                         ; $6a00: $a4
    ld d, $9a                                     ; $6a01: $16 $9a
    sbc l                                         ; $6a03: $9d
    sub a                                         ; $6a04: $97
    ld a, d                                       ; $6a05: $7a

Call_066_6a06:
Jump_066_6a06:
    ld a, a                                       ; $6a06: $7f
    add hl, bc                                    ; $6a07: $09
    sbc d                                         ; $6a08: $9a
    rst $00                                       ; $6a09: $c7
    ld [hl], l                                    ; $6a0a: $75
    rst $38                                       ; $6a0b: $ff
    ld a, [$bf36]                                 ; $6a0c: $fa $36 $bf
    inc sp                                        ; $6a0f: $33
    ld [hl], $b0                                  ; $6a10: $36 $b0
    ld [hl], h                                    ; $6a12: $74
    dec bc                                        ; $6a13: $0b
    dec de                                        ; $6a14: $1b
    ret nc                                        ; $6a15: $d0

    add h                                         ; $6a16: $84
    ld hl, sp+$33                                 ; $6a17: $f8 $33
    ld h, [hl]                                    ; $6a19: $66
    ld c, d                                       ; $6a1a: $4a
    call nz, Call_066_7a3c                        ; $6a1b: $c4 $3c $7a
    ld d, a                                       ; $6a1e: $57
    db $fc                                        ; $6a1f: $fc
    ld c, a                                       ; $6a20: $4f
    ld c, [hl]                                    ; $6a21: $4e
    ld d, e                                       ; $6a22: $53
    ld c, $5d                                     ; $6a23: $0e $5d
    rst $10                                       ; $6a25: $d7
    jr c, jr_066_6a7d                             ; $6a26: $38 $55

    and h                                         ; $6a28: $a4
    ld e, l                                       ; $6a29: $5d
    inc c                                         ; $6a2a: $0c
    ld d, e                                       ; $6a2b: $53
    add $40                                       ; $6a2c: $c6 $40
    cp e                                          ; $6a2e: $bb
    ccf                                           ; $6a2f: $3f
    ld [c], a                                     ; $6a30: $e2
    and l                                         ; $6a31: $a5
    ld e, e                                       ; $6a32: $5b
    ret c                                         ; $6a33: $d8

    add b                                         ; $6a34: $80
    sbc [hl]                                      ; $6a35: $9e
    dec bc                                        ; $6a36: $0b
    cpl                                           ; $6a37: $2f
    sub h                                         ; $6a38: $94
    db $dd                                        ; $6a39: $dd
    inc a                                         ; $6a3a: $3c
    ld sp, $4b1b                                  ; $6a3b: $31 $1b $4b
    xor l                                         ; $6a3e: $ad
    cp b                                          ; $6a3f: $b8
    ld h, l                                       ; $6a40: $65
    ld l, b                                       ; $6a41: $68
    inc bc                                        ; $6a42: $03
    or l                                          ; $6a43: $b5
    sub a                                         ; $6a44: $97
    add hl, de                                    ; $6a45: $19
    ld d, [hl]                                    ; $6a46: $56
    call nc, Call_000_34fa                        ; $6a47: $d4 $fa $34
    db $fc                                        ; $6a4a: $fc
    jr z, jr_066_6aa2                             ; $6a4b: $28 $55

    sbc l                                         ; $6a4d: $9d
    ld h, [hl]                                    ; $6a4e: $66
    add [hl]                                      ; $6a4f: $86
    ld sp, $3dde                                  ; $6a50: $31 $de $3d
    and e                                         ; $6a53: $a3
    ld [hl], c                                    ; $6a54: $71
    sbc d                                         ; $6a55: $9a
    ld h, c                                       ; $6a56: $61
    ccf                                           ; $6a57: $3f
    sbc [hl]                                      ; $6a58: $9e
    ld c, l                                       ; $6a59: $4d
    add hl, de                                    ; $6a5a: $19
    inc bc                                        ; $6a5b: $03
    db $ed                                        ; $6a5c: $ed
    cp $00                                        ; $6a5d: $fe $00
    db $db                                        ; $6a5f: $db
    add h                                         ; $6a60: $84
    db $d3                                        ; $6a61: $d3
    db $e4                                        ; $6a62: $e4
    ld e, d                                       ; $6a63: $5a
    jp hl                                         ; $6a64: $e9


    ld d, $6a                                     ; $6a65: $16 $6a
    inc hl                                        ; $6a67: $23

jr_066_6a68:
    ld h, d                                       ; $6a68: $62
    jp nc, $6a49                                  ; $6a69: $d2 $49 $6a

    db $e3                                        ; $6a6c: $e3
    call nc, $e9d6                                ; $6a6d: $d4 $d6 $e9
    add $30                                       ; $6a70: $c6 $30
    dec de                                        ; $6a72: $1b
    rst $38                                       ; $6a73: $ff
    and h                                         ; $6a74: $a4
    ld [hl], b                                    ; $6a75: $70
    xor $0f                                       ; $6a76: $ee $0f
    ld e, e                                       ; $6a78: $5b
    sub $ea                                       ; $6a79: $d6 $ea
    inc h                                         ; $6a7b: $24
    cp e                                          ; $6a7c: $bb

jr_066_6a7d:
    inc a                                         ; $6a7d: $3c
    call $a06c                                    ; $6a7e: $cd $6c $a0
    sub [hl]                                      ; $6a81: $96
    ld l, [hl]                                    ; $6a82: $6e
    and c                                         ; $6a83: $a1
    ld [hl], $4c                                  ; $6a84: $36 $4c
    ld a, l                                       ; $6a86: $7d
    ld a, e                                       ; $6a87: $7b
    ld [de], a                                    ; $6a88: $12
    rst $08                                       ; $6a89: $cf
    and [hl]                                      ; $6a8a: $a6
    adc h                                         ; $6a8b: $8c
    db $d3                                        ; $6a8c: $d3
    jr c, jr_066_6adc                             ; $6a8d: $38 $4d

    db $e4                                        ; $6a8f: $e4
    adc e                                         ; $6a90: $8b
    ld e, b                                       ; $6a91: $58
    ld a, [de]                                    ; $6a92: $1a
    ld d, b                                       ; $6a93: $50
    pop af                                        ; $6a94: $f1

jr_066_6a95:
    cp b                                          ; $6a95: $b8
    ld b, a                                       ; $6a96: $47
    db $fc                                        ; $6a97: $fc
    rst $18                                       ; $6a98: $df
    ld l, b                                       ; $6a99: $68
    inc hl                                        ; $6a9a: $23
    cp e                                          ; $6a9b: $bb
    add e                                         ; $6a9c: $83
    dec bc                                        ; $6a9d: $0b
    cp e                                          ; $6a9e: $bb
    ld a, c                                       ; $6a9f: $79
    and h                                         ; $6aa0: $a4
    sub e                                         ; $6aa1: $93

jr_066_6aa2:
    dec c                                         ; $6aa2: $0d
    add sp, -$07                                  ; $6aa3: $e8 $f9
    or [hl]                                       ; $6aa5: $b6
    db $d3                                        ; $6aa6: $d3
    db $eb                                        ; $6aa7: $eb
    ld a, l                                       ; $6aa8: $7d
    ld sp, $dd8c                                  ; $6aa9: $31 $8c $dd
    rra                                           ; $6aac: $1f
    ld [c], a                                     ; $6aad: $e2
    jp c, Jump_066_59c4                           ; $6aae: $da $c4 $59

    ld a, a                                       ; $6ab1: $7f
    jr nc, jr_066_6a68                            ; $6ab2: $30 $b4

    ld a, [hl+]                                   ; $6ab4: $2a
    sbc h                                         ; $6ab5: $9c
    or d                                          ; $6ab6: $b2
    ld a, e                                       ; $6ab7: $7b
    call nz, $b3f7                                ; $6ab8: $c4 $f7 $b3
    ld [hl], h                                    ; $6abb: $74
    dec bc                                        ; $6abc: $0b
    dec de                                        ; $6abd: $1b
    jr @+$5a                                      ; $6abe: $18 $58

    and [hl]                                      ; $6ac0: $a6
    call c, Call_066_642b                         ; $6ac1: $dc $2b $64
    dec a                                         ; $6ac4: $3d
    ld a, h                                       ; $6ac5: $7c
    add d                                         ; $6ac6: $82
    rst $20                                       ; $6ac7: $e7
    cp $00                                        ; $6ac8: $fe $00
    sub a                                         ; $6aca: $97
    jr c, jr_066_6a95                             ; $6acb: $38 $c8

    ld c, d                                       ; $6acd: $4a
    inc [hl]                                      ; $6ace: $34
    ret nz                                        ; $6acf: $c0

    ret c                                         ; $6ad0: $d8

    inc c                                         ; $6ad1: $0c
    xor e                                         ; $6ad2: $ab
    db $e4                                        ; $6ad3: $e4
    db $d3                                        ; $6ad4: $d3
    ld b, $d4                                     ; $6ad5: $06 $d4
    ld c, c                                       ; $6ad7: $49
    sub [hl]                                      ; $6ad8: $96
    ld l, [hl]                                    ; $6ad9: $6e
    ld h, c                                       ; $6ada: $61
    inc hl                                        ; $6adb: $23

jr_066_6adc:
    or l                                          ; $6adc: $b5
    sub d                                         ; $6add: $92
    ld a, [hl+]                                   ; $6ade: $2a
    rst $00                                       ; $6adf: $c7
    adc h                                         ; $6ae0: $8c
    ld a, d                                       ; $6ae1: $7a
    rst $30                                       ; $6ae2: $f7
    adc h                                         ; $6ae3: $8c
    ld a, [$3cb0]                                 ; $6ae4: $fa $b0 $3c
    dec c                                         ; $6ae7: $0d
    xor h                                         ; $6ae8: $ac
    ld a, h                                       ; $6ae9: $7c
    ld sp, $22c9                                  ; $6aea: $31 $c9 $22
    push hl                                       ; $6aed: $e5
    sbc [hl]                                      ; $6aee: $9e
    rst $08                                       ; $6aef: $cf
    ei                                            ; $6af0: $fb
    inc bc                                        ; $6af1: $03
    db $db                                        ; $6af2: $db
    add h                                         ; $6af3: $84
    db $d3                                        ; $6af4: $d3
    db $e4                                        ; $6af5: $e4
    ld e, d                                       ; $6af6: $5a
    jp hl                                         ; $6af7: $e9


    ld d, $6a                                     ; $6af8: $16 $6a
    inc hl                                        ; $6afa: $23
    inc [hl]                                      ; $6afb: $34
    and e                                         ; $6afc: $a3
    adc h                                         ; $6afd: $8c

jr_066_6afe:
    add c                                         ; $6afe: $81
    halt                                          ; $6aff: $76
    ld a, a                                       ; $6b00: $7f
    ld [c], a                                     ; $6b01: $e2
    sub l                                         ; $6b02: $95
    ld a, h                                       ; $6b03: $7c
    ld h, e                                       ; $6b04: $63
    push af                                       ; $6b05: $f5
    ld l, c                                       ; $6b06: $69
    add hl, de                                    ; $6b07: $19
    dec c                                         ; $6b08: $0d
    call nc, Call_000_2dd2                        ; $6b09: $d4 $d2 $2d
    call nc, $a986                                ; $6b0c: $d4 $86 $a9
    ld l, a                                       ; $6b0f: $6f
    ld c, a                                       ; $6b10: $4f
    ld [c], a                                     ; $6b11: $e2
    reti                                          ; $6b12: $d9


    sub h                                         ; $6b13: $94
    ld [hl], c                                    ; $6b14: $71
    xor d                                         ; $6b15: $aa
    jp nz, $9c69                                  ; $6b16: $c2 $69 $9c

    ld [hl-], a                                   ; $6b19: $32
    ld b, $5a                                     ; $6b1a: $06 $5a
    inc bc                                        ; $6b1c: $03
    ld a, [$493f]                                 ; $6b1d: $fa $3f $49
    ld d, c                                       ; $6b20: $51
    ld hl, $87f8                                  ; $6b21: $21 $f8 $87
    sbc a                                         ; $6b24: $9f
    and a                                         ; $6b25: $a7
    adc c                                         ; $6b26: $89
    or e                                          ; $6b27: $b3
    cp $60                                        ; $6b28: $fe $60
    ld l, b                                       ; $6b2a: $68
    pop de                                        ; $6b2b: $d1
    dec l                                         ; $6b2c: $2d
    jr nc, jr_066_6afe                            ; $6b2d: $30 $cf

    inc l                                         ; $6b2f: $2c
    sub e                                         ; $6b30: $93
    ld a, [hl]                                    ; $6b31: $7e
    cp h                                          ; $6b32: $bc
    ccf                                           ; $6b33: $3f
    ld [c], a                                     ; $6b34: $e2
    db $dd                                        ; $6b35: $dd
    pop bc                                        ; $6b36: $c1
    add l                                         ; $6b37: $85
    dec c                                         ; $6b38: $0d
    and e                                         ; $6b39: $a3
    ld c, l                                       ; $6b3a: $4d
    or h                                          ; $6b3b: $b4
    pop af                                        ; $6b3c: $f1
    ld b, d                                       ; $6b3d: $42
    ld [hl], l                                    ; $6b3e: $75
    inc c                                         ; $6b3f: $0c
    jp c, $8d75                                   ; $6b40: $da $75 $8d

    ret nc                                        ; $6b43: $d0

    adc h                                         ; $6b44: $8c
    ld [hl-], a                                   ; $6b45: $32
    ld b, $9a                                     ; $6b46: $06 $9a
    xor b                                         ; $6b48: $a8
    sub d                                         ; $6b49: $92
    ld e, d                                       ; $6b4a: $5a
    and [hl]                                      ; $6b4b: $a6
    call c, $146b                                 ; $6b4c: $dc $6b $14
    ld c, [hl]                                    ; $6b4f: $4e
    sub e                                         ; $6b50: $93
    ld l, e                                       ; $6b51: $6b
    and l                                         ; $6b52: $a5
    ld e, e                                       ; $6b53: $5b
    xor b                                         ; $6b54: $a8
    rst $30                                       ; $6b55: $f7
    rlca                                          ; $6b56: $07
    db $db                                        ; $6b57: $db
    add h                                         ; $6b58: $84
    ld d, e                                       ; $6b59: $53
    push bc                                       ; $6b5a: $c5
    xor e                                         ; $6b5b: $ab
    ld c, a                                       ; $6b5c: $4f
    ld h, e                                       ; $6b5d: $63
    daa                                           ; $6b5e: $27
    ld b, $34                                     ; $6b5f: $06 $34
    ld h, b                                       ; $6b61: $60
    dec [hl]                                      ; $6b62: $35
    ld a, l                                       ; $6b63: $7d
    halt                                          ; $6b64: $76
    ld a, a                                       ; $6b65: $7f
    ld [c], a                                     ; $6b66: $e2
    and l                                         ; $6b67: $a5
    ld e, e                                       ; $6b68: $5b
    ret c                                         ; $6b69: $d8

    add b                                         ; $6b6a: $80
    ld e, [hl]                                    ; $6b6b: $5e
    ld h, [hl]                                    ; $6b6c: $66
    adc h                                         ; $6b6d: $8c
    ld [$697d], a                                 ; $6b6e: $ea $7d $69
    ld h, a                                       ; $6b71: $67
    ld e, h                                       ; $6b72: $5c
    cpl                                           ; $6b73: $2f
    sbc h                                         ; $6b74: $9c
    xor [hl]                                      ; $6b75: $ae
    ld l, e                                       ; $6b76: $6b
    add h                                         ; $6b77: $84
    ld h, [hl]                                    ; $6b78: $66
    sub h                                         ; $6b79: $94
    ld sp, $36d0                                  ; $6b7a: $31 $d0 $36
    push af                                       ; $6b7d: $f5
    call c, Call_000_0aa7                         ; $6b7e: $dc $a7 $0a
    and e                                         ; $6b81: $a3
    call c, $d128                                 ; $6b82: $dc $28 $d1
    sub h                                         ; $6b85: $94
    ld b, e                                       ; $6b86: $43
    ld h, c                                       ; $6b87: $61
    cp h                                          ; $6b88: $bc
    ccf                                           ; $6b89: $3f
    ld [c], a                                     ; $6b8a: $e2
    and l                                         ; $6b8b: $a5
    ld e, e                                       ; $6b8c: $5b
    ret c                                         ; $6b8d: $d8

    add b                                         ; $6b8e: $80
    ld e, [hl]                                    ; $6b8f: $5e
    ld h, [hl]                                    ; $6b90: $66
    adc h                                         ; $6b91: $8c
    ld [$697d], a                                 ; $6b92: $ea $7d $69
    ld h, a                                       ; $6b95: $67
    ld e, h                                       ; $6b96: $5c
    cpl                                           ; $6b97: $2f
    sbc h                                         ; $6b98: $9c
    ld b, $36                                     ; $6b99: $06 $36
    pop de                                        ; $6b9b: $d1
    add $0b                                       ; $6b9c: $c6 $0b
    push de                                       ; $6b9e: $d5
    ld sp, $eb76                                  ; $6b9f: $31 $76 $eb
    ld a, a                                       ; $6ba2: $7f
    cp $44                                        ; $6ba3: $fe $44
    and [hl]                                      ; $6ba5: $a6
    cp c                                          ; $6ba6: $b9
    inc l                                         ; $6ba7: $2c
    ld e, l                                       ; $6ba8: $5d
    ld d, a                                       ; $6ba9: $57
    ld l, $69                                     ; $6baa: $2e $69
    ld h, a                                       ; $6bac: $67
    ret nc                                        ; $6bad: $d0

    ld [hl-], a                                   ; $6bae: $32
    push hl                                       ; $6baf: $e5
    ld e, [hl]                                    ; $6bb0: $5e
    add hl, sp                                    ; $6bb1: $39
    push af                                       ; $6bb2: $f5
    rst $10                                       ; $6bb3: $d7
    db $dd                                        ; $6bb4: $dd
    rra                                           ; $6bb5: $1f
    add hl, bc                                    ; $6bb6: $09
    sbc d                                         ; $6bb7: $9a
    ld e, c                                       ; $6bb8: $59
    add sp, $3f                                   ; $6bb9: $e8 $3f
    dec bc                                        ; $6bbb: $0b
    dec de                                        ; $6bbc: $1b
    and [hl]                                      ; $6bbd: $a6
    add hl, hl                                    ; $6bbe: $29
    add a                                         ; $6bbf: $87
    ld a, [$ff86]                                 ; $6bc0: $fa $86 $ff
    add hl, hl                                    ; $6bc3: $29
    cp e                                          ; $6bc4: $bb
    xor [hl]                                      ; $6bc5: $ae
    ld bc, $7c95                                  ; $6bc6: $01 $95 $7c
    jp c, Jump_066_4a9f                           ; $6bc9: $da $9f $4a

    ld l, l                                       ; $6bcc: $6d
    ld b, b                                       ; $6bcd: $40
    dec a                                         ; $6bce: $3d
    adc h                                         ; $6bcf: $8c
    ret                                           ; $6bd0: $c9


    cp c                                          ; $6bd1: $b9
    ccf                                           ; $6bd2: $3f
    dec sp                                        ; $6bd3: $3b
    ld d, b                                       ; $6bd4: $50
    ld l, b                                       ; $6bd5: $68
    ld e, [hl]                                    ; $6bd6: $5e
    db $d3                                        ; $6bd7: $d3
    xor $5f                                       ; $6bd8: $ee $5f
    rst $18                                       ; $6bda: $df
    and $77                                       ; $6bdb: $e6 $77
    add $06                                       ; $6bdd: $c6 $06
    sub [hl]                                      ; $6bdf: $96
    ld l, [hl]                                    ; $6be0: $6e
    ld h, c                                       ; $6be1: $61
    inc bc                                        ; $6be2: $03
    sbc d                                         ; $6be3: $9a
    db $10                                        ; $6be4: $10
    ld a, a                                       ; $6be5: $7f
    add $4c                                       ; $6be6: $c6 $4c
    adc c                                         ; $6be8: $89
    sbc b                                         ; $6be9: $98
    ld b, a                                       ; $6bea: $47
    ld b, l                                       ; $6beb: $45
    ld e, l                                       ; $6bec: $5d
    rst $10                                       ; $6bed: $d7
    ret z                                         ; $6bee: $c8

    ld a, [$8cb4]                                 ; $6bef: $fa $b4 $8c
    add $b1                                       ; $6bf2: $c6 $b1
    adc h                                         ; $6bf4: $8c
    ld b, $68                                     ; $6bf5: $06 $68
    ld b, [hl]                                    ; $6bf7: $46
    rst $38                                       ; $6bf8: $ff
    ld sp, $1843                                  ; $6bf9: $31 $43 $18
    cp e                                          ; $6bfc: $bb
    ccf                                           ; $6bfd: $3f
    db $db                                        ; $6bfe: $db
    and b                                         ; $6bff: $a0
    add hl, de                                    ; $6c00: $19
    ld h, l                                       ; $6c01: $65
    inc c                                         ; $6c02: $0c
    or h                                          ; $6c03: $b4
    ld h, $d7                                     ; $6c04: $26 $d7
    ld [$ab24], a                                 ; $6c06: $ea $24 $ab
    ld e, h                                       ; $6c09: $5c
    ld e, b                                       ; $6c0a: $58
    call nz, $8931                                ; $6c0b: $c4 $31 $89
    cp $49                                        ; $6c0e: $fe $49
    inc a                                         ; $6c10: $3c
    ld [hl], $a0                                  ; $6c11: $36 $a0
    bit 3, e                                      ; $6c13: $cb $5b
    reti                                          ; $6c15: $d9


    add sp, $5d                                   ; $6c16: $e8 $5d
    ld [hl], c                                    ; $6c18: $71
    ld a, a                                       ; $6c19: $7f
    inc [hl]                                      ; $6c1a: $34
    ld c, a                                       ; $6c1b: $4f
    ld d, e                                       ; $6c1c: $53
    ld c, $5d                                     ; $6c1d: $0e $5d
    ld d, a                                       ; $6c1f: $57
    sub $f3                                       ; $6c20: $d6 $f3
    inc a                                         ; $6c22: $3c
    res 3, e                                      ; $6c23: $cb $9b
    adc h                                         ; $6c25: $8c
    sbc a                                         ; $6c26: $9f
    rst $30                                       ; $6c27: $f7
    rlca                                          ; $6c28: $07
    ld [c], a                                     ; $6c29: $e2
    ld d, l                                       ; $6c2a: $55
    ld l, $6c                                     ; $6c2b: $2e $6c

Jump_066_6c2d:
    ld b, b                                       ; $6c2d: $40
    jp hl                                         ; $6c2e: $e9


    ld d, $6a                                     ; $6c2f: $16 $6a
    inc bc                                        ; $6c31: $03
    sbc d                                         ; $6c32: $9a
    db $10                                        ; $6c33: $10
    ld a, a                                       ; $6c34: $7f
    add $4c                                       ; $6c35: $c6 $4c
    adc c                                         ; $6c37: $89
    sbc b                                         ; $6c38: $98
    ld b, a                                       ; $6c39: $47
    cp e                                          ; $6c3a: $bb
    xor [hl]                                      ; $6c3b: $ae
    adc b                                         ; $6c3c: $88
    reti                                          ; $6c3d: $d9


    ld d, b                                       ; $6c3e: $50
    ld l, d                                       ; $6c3f: $6a
    add e                                         ; $6c40: $83
    and e                                         ; $6c41: $a3
    ld [hl], $d3                                  ; $6c42: $36 $d3
    rst $00                                       ; $6c44: $c7
    ld a, d                                       ; $6c45: $7a
    jp c, Jump_000_36a3                           ; $6c46: $da $a3 $36

    ld c, [hl]                                    ; $6c49: $4e
    cp l                                          ; $6c4a: $bd
    ld c, a                                       ; $6c4b: $4f
    ld [hl], $4c                                  ; $6c4c: $36 $4c
    rst $38                                       ; $6c4e: $ff
    ld sp, $1843                                  ; $6c4f: $31 $43 $18
    cp e                                          ; $6c52: $bb
    ccf                                           ; $6c53: $3f
    ld [c], a                                     ; $6c54: $e2
    ld e, d                                       ; $6c55: $5a
    cp d                                          ; $6c56: $ba
    add l                                         ; $6c57: $85
    jp c, $9e80                                   ; $6c58: $da $80 $9e

    dec bc                                        ; $6c5b: $0b
    cpl                                           ; $6c5c: $2f
    sub h                                         ; $6c5d: $94
    db $dd                                        ; $6c5e: $dd
    inc a                                         ; $6c5f: $3c
    ld sp, $4b1b                                  ; $6c60: $31 $1b $4b
    xor l                                         ; $6c63: $ad
    cp b                                          ; $6c64: $b8
    ld h, l                                       ; $6c65: $65
    ld l, b                                       ; $6c66: $68
    inc bc                                        ; $6c67: $03
    or l                                          ; $6c68: $b5
    sub a                                         ; $6c69: $97
    add hl, de                                    ; $6c6a: $19
    ld d, [hl]                                    ; $6c6b: $56
    call nc, Call_066_70aa                        ; $6c6c: $d4 $aa $70
    ld a, [de]                                    ; $6c6f: $1a
    and c                                         ; $6c70: $a1
    add hl, de                                    ; $6c71: $19
    ld h, l                                       ; $6c72: $65
    inc c                                         ; $6c73: $0c
    or h                                          ; $6c74: $b4
    ei                                            ; $6c75: $fb
    inc bc                                        ; $6c76: $03
    db $db                                        ; $6c77: $db
    dec bc                                        ; $6c78: $0b
    db $fd                                        ; $6c79: $fd
    db $ed                                        ; $6c7a: $ed
    push hl                                       ; $6c7b: $e5
    db $dd                                        ; $6c7c: $dd
    db $ed                                        ; $6c7d: $ed
    ld c, l                                       ; $6c7e: $4d
    jp $d134                                      ; $6c7f: $c3 $34 $d1


    add $0b                                       ; $6c82: $c6 $0b
    push de                                       ; $6c84: $d5
    or c                                          ; $6c85: $b1
    ld e, [hl]                                    ; $6c86: $5e
    ld [c], a                                     ; $6c87: $e2
    sbc [hl]                                      ; $6c88: $9e
    add hl, de                                    ; $6c89: $19
    sub [hl]                                      ; $6c8a: $96
    and l                                         ; $6c8b: $a5
    db $eb                                        ; $6c8c: $eb
    jp z, $dde5                                   ; $6c8d: $ca $e5 $dd

    dec d                                         ; $6c90: $15
    cpl                                           ; $6c91: $2f
    db $dd                                        ; $6c92: $dd
    jp nz, $f406                                  ; $6c93: $c2 $06 $f4

    ld e, h                                       ; $6c96: $5c
    ld a, b                                       ; $6c97: $78
    and c                                         ; $6c98: $a1
    db $ec                                        ; $6c99: $ec
    and $89                                       ; $6c9a: $e6 $89
    reti                                          ; $6c9c: $d9


    ld e, b                                       ; $6c9d: $58
    ld l, d                                       ; $6c9e: $6a
    push bc                                       ; $6c9f: $c5
    dec l                                         ; $6ca0: $2d
    ld b, e                                       ; $6ca1: $43
    dec de                                        ; $6ca2: $1b
    xor b                                         ; $6ca3: $a8
    cp l                                          ; $6ca4: $bd
    call z, $a2b0                                 ; $6ca5: $cc $b0 $a2
    ld [hl], $60                                  ; $6ca8: $36 $60
    add l                                         ; $6caa: $85
    ld a, [hl+]                                   ; $6cab: $2a
    xor h                                         ; $6cac: $ac
    ld a, $2c                                     ; $6cad: $3e $2c
    rst $08                                       ; $6caf: $cf
    db $fd                                        ; $6cb0: $fd
    ld bc, $f5e2                                  ; $6cb1: $01 $e2 $f5
    rst $00                                       ; $6cb4: $c7
    ld [hl-], a                                   ; $6cb5: $32
    db $eb                                        ; $6cb6: $eb
    db $d3                                        ; $6cb7: $d3
    ret c                                         ; $6cb8: $d8

    ld l, c                                       ; $6cb9: $69
    call c, $856d                                 ; $6cba: $dc $6d $85
    and l                                         ; $6cbd: $a5
    ld [$d87c], a                                 ; $6cbe: $ea $7c $d8
    dec de                                        ; $6cc1: $1b
    ld l, e                                       ; $6cc2: $6b
    ld h, b                                       ; $6cc3: $60
    dec a                                         ; $6cc4: $3d
    rst $08                                       ; $6cc5: $cf
    or e                                          ; $6cc6: $b3
    cp h                                          ; $6cc7: $bc
    ret                                           ; $6cc8: $c9


    ld hl, sp-$27                                 ; $6cc9: $f8 $d9
    ld [hl], l                                    ; $6ccb: $75
    sub l                                         ; $6ccc: $95
    ld d, b                                       ; $6ccd: $50
    add hl, sp                                    ; $6cce: $39
    add l                                         ; $6ccf: $85
    xor h                                         ; $6cd0: $ac
    rst $10                                       ; $6cd1: $d7
    db $10                                        ; $6cd2: $10
    inc sp                                        ; $6cd3: $33
    cp d                                          ; $6cd4: $ba
    ld a, a                                       ; $6cd5: $7f
    db $fd                                        ; $6cd6: $fd
    or c                                          ; $6cd7: $b1
    call z, Call_000_34fa                         ; $6cd8: $cc $fa $34
    sub [hl]                                      ; $6cdb: $96
    and l                                         ; $6cdc: $a5
    ld e, e                                       ; $6cdd: $5b
    ret c                                         ; $6cde: $d8

    add b                                         ; $6cdf: $80
    sbc [hl]                                      ; $6ce0: $9e
    dec bc                                        ; $6ce1: $0b
    cpl                                           ; $6ce2: $2f
    sub h                                         ; $6ce3: $94
    db $dd                                        ; $6ce4: $dd
    inc a                                         ; $6ce5: $3c
    ld sp, $4b1b                                  ; $6ce6: $31 $1b $4b
    xor l                                         ; $6ce9: $ad
    cp b                                          ; $6cea: $b8
    ld h, l                                       ; $6ceb: $65
    ld l, b                                       ; $6cec: $68
    inc bc                                        ; $6ced: $03
    or l                                          ; $6cee: $b5
    sub a                                         ; $6cef: $97
    add hl, de                                    ; $6cf0: $19
    ld d, [hl]                                    ; $6cf1: $56
    call nc, $03fb                                ; $6cf2: $d4 $fb $03
    adc c                                         ; $6cf5: $89
    ld h, e                                       ; $6cf6: $63
    add hl, hl                                    ; $6cf7: $29
    add a                                         ; $6cf8: $87
    xor [hl]                                      ; $6cf9: $ae
    ld l, e                                       ; $6cfa: $6b
    jp z, Jump_066_70a1                           ; $6cfb: $ca $a1 $70

    ld c, l                                       ; $6cfe: $4d
    ld [c], a                                     ; $6cff: $e2
    ld l, l                                       ; $6d00: $6d
    inc c                                         ; $6d01: $0c
    xor b                                         ; $6d02: $a8
    rst $30                                       ; $6d03: $f7
    db $fd                                        ; $6d04: $fd
    or h                                          ; $6d05: $b4
    ld a, [c]                                     ; $6d06: $f2
    rra                                           ; $6d07: $1f
    dec bc                                        ; $6d08: $0b
    inc c                                         ; $6d09: $0c
    db $d3                                        ; $6d0a: $d3
    ld c, b                                       ; $6d0b: $48
    dec l                                         ; $6d0c: $2d
    db $dd                                        ; $6d0d: $dd
    ld b, d                                       ; $6d0e: $42
    ld l, l                                       ; $6d0f: $6d
    ld b, b                                       ; $6d10: $40
    or a                                          ; $6d11: $b7
    inc a                                         ; $6d12: $3c
    call $dbbb                                    ; $6d13: $cd $bb $db
    ld h, e                                       ; $6d16: $63
    inc bc                                        ; $6d17: $03
    cp e                                          ; $6d18: $bb
    sub l                                         ; $6d19: $95
    jp hl                                         ; $6d1a: $e9


    rst $00                                       ; $6d1b: $c7
    and [hl]                                      ; $6d1c: $a6
    inc e                                         ; $6d1d: $1c
    ld h, e                                       ; $6d1e: $63
    sbc b                                         ; $6d1f: $98
    ld c, [hl]                                    ; $6d20: $4e
    ld a, l                                       ; $6d21: $7d
    dec de                                        ; $6d22: $1b
    cpl                                           ; $6d23: $2f
    ld d, h                                       ; $6d24: $54
    rst $00                                       ; $6d25: $c7
    ld [$9553], a                                 ; $6d26: $ea $53 $95
    ld h, l                                       ; $6d29: $65
    ld d, a                                       ; $6d2a: $57
    cpl                                           ; $6d2b: $2f
    or b                                          ; $6d2c: $b0
    inc l                                         ; $6d2d: $2c
    jp $c498                                      ; $6d2e: $c3 $98 $c4


    rrca                                          ; $6d31: $0f
    db $db                                        ; $6d32: $db
    db $f4                                        ; $6d33: $f4
    ld bc, $503b                                  ; $6d34: $01 $3b $50
    ld l, b                                       ; $6d37: $68
    ld e, [hl]                                    ; $6d38: $5e
    db $d3                                        ; $6d39: $d3
    xor $5f                                       ; $6d3a: $ee $5f
    rst $18                                       ; $6d3c: $df
    and $77                                       ; $6d3d: $e6 $77
    add $06                                       ; $6d3f: $c6 $06
    halt                                          ; $6d41: $76

Call_066_6d42:
    set 2, e                                      ; $6d42: $cb $d3
    cp h                                          ; $6d44: $bc

Jump_066_6d45:
    cp e                                          ; $6d45: $bb
    dec a                                         ; $6d46: $3d
    ld [hl], $b0                                  ; $6d47: $36 $b0
    ld e, e                                       ; $6d49: $5b
    sbc c                                         ; $6d4a: $99
    ld a, [hl]                                    ; $6d4b: $7e
    inc d                                         ; $6d4c: $14
    sub l                                         ; $6d4d: $95
    ld e, d                                       ; $6d4e: $5a
    cp d                                          ; $6d4f: $ba
    add l                                         ; $6d50: $85
    ld e, d                                       ; $6d51: $5a
    dec d                                         ; $6d52: $15
    ld c, [hl]                                    ; $6d53: $4e
    inc hl                                        ; $6d54: $23
    inc [hl]                                      ; $6d55: $34
    and e                                         ; $6d56: $a3
    adc h                                         ; $6d57: $8c
    add c                                         ; $6d58: $81
    halt                                          ; $6d59: $76
    ld a, a                                       ; $6d5a: $7f
    db $db                                        ; $6d5b: $db
    or l                                          ; $6d5c: $b5
    ld e, h                                       ; $6d5d: $5c
    ld e, h                                       ; $6d5e: $5c
    inc e                                         ; $6d5f: $1c
    ld l, l                                       ; $6d60: $6d
    sbc b                                         ; $6d61: $98
    add $dd                                       ; $6d62: $c6 $dd
    ld d, [hl]                                    ; $6d64: $56
    ld e, b                                       ; $6d65: $58
    xor d                                         ; $6d66: $aa
    adc $87                                       ; $6d67: $ce $87
    cp l                                          ; $6d69: $bd
    or c                                          ; $6d6a: $b1
    add [hl]                                      ; $6d6b: $86
    and a                                         ; $6d6c: $a7
    ld a, [bc]                                    ; $6d6d: $0a
    and e                                         ; $6d6e: $a3
    call c, Call_066_5128                         ; $6d6f: $dc $28 $51
    sbc a                                         ; $6d72: $9f
    add $ae                                       ; $6d73: $c6 $ae
    sbc [hl]                                      ; $6d75: $9e
    push de                                       ; $6d76: $d5
    and a                                         ; $6d77: $a7
    or c                                          ; $6d78: $b1
    ld c, h                                       ; $6d79: $4c
    cp c                                          ; $6d7a: $b9
    ld [hl], a                                    ; $6d7b: $77
    ld [hl], a                                    ; $6d7c: $77
    ld a, e                                       ; $6d7d: $7b
    ld d, e                                       ; $6d7e: $53
    ld c, $5d                                     ; $6d7f: $0e $5d
    rst $10                                       ; $6d81: $d7
    sub h                                         ; $6d82: $94
    ld b, e                                       ; $6d83: $43
    cp l                                          ; $6d84: $bd
    di                                            ; $6d85: $f3
    jp z, Jump_000_18f4                           ; $6d86: $ca $f4 $18

    scf                                           ; $6d89: $37
    ld a, l                                       ; $6d8a: $7d
    ld [c], a                                     ; $6d8b: $e2
    add hl, hl                                    ; $6d8c: $29
    rst $30                                       ; $6d8d: $f7
    ld a, [bc]                                    ; $6d8e: $0a
    reti                                          ; $6d8f: $d9


    rst $38                                       ; $6d90: $ff
    ld c, c                                       ; $6d91: $49
    ld [hl], $0a                                  ; $6d92: $36 $0a
    and a                                         ; $6d94: $a7
    ret                                           ; $6d95: $c9


    or l                                          ; $6d96: $b5
    ld a, [hl-]                                   ; $6d97: $3a
    ret                                           ; $6d98: $c9


    xor $11                                       ; $6d99: $ee $11
    rst $18                                       ; $6d9b: $df
    rst $08                                       ; $6d9c: $cf
    jp nc, Jump_066_6c2d                          ; $6d9d: $d2 $2d $6c

    sbc b                                         ; $6da0: $98
    ld a, [$24f6]                                 ; $6da1: $fa $f6 $24
    sbc [hl]                                      ; $6da4: $9e
    ld c, l                                       ; $6da5: $4d
    add hl, de                                    ; $6da6: $19
    rst $20                                       ; $6da7: $e7
    cp $00                                        ; $6da8: $fe $00
    db $db                                        ; $6daa: $db
    db $10                                        ; $6dab: $10
    sub e                                         ; $6dac: $93
    ld c, [hl]                                    ; $6dad: $4e
    or d                                          ; $6dae: $b2
    add c                                         ; $6daf: $81
    ld e, d                                       ; $6db0: $5a
    cp d                                          ; $6db1: $ba
    add l                                         ; $6db2: $85
    jp c, $cd00                                   ; $6db3: $da $00 $cd

    jr z, jr_066_6e1b                             ; $6db6: $28 $63

    and b                                         ; $6db8: $a0
    dec d                                         ; $6db9: $15
    sbc d                                         ; $6dba: $9a
    rst $10                                       ; $6dbb: $d7
    ld a, [de]                                    ; $6dbc: $1a
    and a                                         ; $6dbd: $a7
    ld [de], a                                    ; $6dbe: $12
    xor [hl]                                      ; $6dbf: $ae
    ret                                           ; $6dc0: $c9


    or c                                          ; $6dc1: $b1
    dec [hl]                                      ; $6dc2: $35
    ld a, e                                       ; $6dc3: $7b
    ld [hl], e                                    ; $6dc4: $73
    ld a, a                                       ; $6dc5: $7f
    rla                                           ; $6dc6: $17
    xor [hl]                                      ; $6dc7: $ae
    ld d, l                                       ; $6dc8: $55
    and d                                         ; $6dc9: $a2
    pop hl                                        ; $6dca: $e1
    xor c                                         ; $6dcb: $a9
    jp nz, $9b28                                  ; $6dcc: $c2 $28 $9b

    ld [hl], d                                    ; $6dcf: $72
    ld l, b                                       ; $6dd0: $68
    sbc [hl]                                      ; $6dd1: $9e
    ld b, b                                       ; $6dd2: $40
    dec l                                         ; $6dd3: $2d
    or l                                          ; $6dd4: $b5
    ld [hl], h                                    ; $6dd5: $74
    dec bc                                        ; $6dd6: $0b
    or l                                          ; $6dd7: $b5
    ld h, c                                       ; $6dd8: $61
    ld [$93db], a                                 ; $6dd9: $ea $db $93
    ld a, b                                       ; $6ddc: $78
    ld [hl], $65                                  ; $6ddd: $36 $65
    sbc h                                         ; $6ddf: $9c
    xor d                                         ; $6de0: $aa
    ld [hl], b                                    ; $6de1: $70
    ld a, [de]                                    ; $6de2: $1a
    and a                                         ; $6de3: $a7
    add hl, hl                                    ; $6de4: $29
    ld b, a                                       ; $6de5: $47
    bit 2, e                                      ; $6de6: $cb $53
    add $40                                       ; $6de8: $c6 $40
    db $eb                                        ; $6dea: $eb
    cp b                                          ; $6deb: $b8
    ld c, d                                       ; $6dec: $4a
    ld a, $2d                                     ; $6ded: $3e $2d
    ld h, h                                       ; $6def: $64
    dec a                                         ; $6df0: $3d
    ld a, h                                       ; $6df1: $7c
    add d                                         ; $6df2: $82
    rst $20                                       ; $6df3: $e7
    cp $00                                        ; $6df4: $fe $00
    sub a                                         ; $6df6: $97
    ld c, l                                       ; $6df7: $4d
    and b                                         ; $6df8: $a0
    sub [hl]                                      ; $6df9: $96
    ld e, d                                       ; $6dfa: $5a
    cp d                                          ; $6dfb: $ba
    add l                                         ; $6dfc: $85
    jp c, $f530                                   ; $6dfd: $da $30 $f5

    db $ed                                        ; $6e00: $ed
    ld c, c                                       ; $6e01: $49
    inc a                                         ; $6e02: $3c
    sbc e                                         ; $6e03: $9b
    ld [hl-], a                                   ; $6e04: $32
    ld c, [hl]                                    ; $6e05: $4e
    ld d, l                                       ; $6e06: $55
    jr c, jr_066_6e16                             ; $6e07: $38 $0d

    inc c                                         ; $6e09: $0c
    call nc, $d1c6                                ; $6e0a: $d4 $c6 $d1
    ld [hl-], a                                   ; $6e0d: $32
    ld b, $1a                                     ; $6e0e: $06 $1a
    or h                                          ; $6e10: $b4
    sub d                                         ; $6e11: $92

jr_066_6e12:
    ld c, a                                       ; $6e12: $4f
    db $eb                                        ; $6e13: $eb
    pop hl                                        ; $6e14: $e1
    inc de                                        ; $6e15: $13

jr_066_6e16:
    inc a                                         ; $6e16: $3c
    ld a, d                                       ; $6e17: $7a
    ld a, a                                       ; $6e18: $7f
    rst $20                                       ; $6e19: $e7
    ld b, d                                       ; $6e1a: $42

jr_066_6e1b:
    rst $38                                       ; $6e1b: $ff
    pop af                                        ; $6e1c: $f1
    ret c                                         ; $6e1d: $d8

    dec hl                                        ; $6e1e: $2b
    or l                                          ; $6e1f: $b5
    ld a, [c]                                     ; $6e20: $f2
    push bc                                       ; $6e21: $c5
    inc h                                         ; $6e22: $24
    or l                                          ; $6e23: $b5
    ld [hl], h                                    ; $6e24: $74
    dec bc                                        ; $6e25: $0b
    or l                                          ; $6e26: $b5
    ld [hl], c                                    ; $6e27: $71
    ld [$45f3], a                                 ; $6e28: $ea $f3 $45
    inc l                                         ; $6e2b: $2c
    dec c                                         ; $6e2c: $0d
    jr z, jr_066_6e12                             ; $6e2d: $28 $e3

    ld e, $f1                                     ; $6e2f: $1e $f1
    ld a, a                                       ; $6e31: $7f
    and e                                         ; $6e32: $a3
    adc l                                         ; $6e33: $8d
    db $ec                                        ; $6e34: $ec
    ld c, $2e                                     ; $6e35: $0e $2e
    db $ec                                        ; $6e37: $ec
    and $91                                       ; $6e38: $e6 $91
    ld c, [hl]                                    ; $6e3a: $4e
    ld [hl], $b0                                  ; $6e3b: $36 $b0
    ld c, b                                       ; $6e3d: $48
    cp c                                          ; $6e3e: $b9
    rst $20                                       ; $6e3f: $e7
    di                                            ; $6e40: $f3
    cp $00                                        ; $6e41: $fe $00
    db $db                                        ; $6e43: $db
    db $10                                        ; $6e44: $10
    sub e                                         ; $6e45: $93
    ld c, [hl]                                    ; $6e46: $4e
    or d                                          ; $6e47: $b2
    add c                                         ; $6e48: $81
    ld e, d                                       ; $6e49: $5a
    cp d                                          ; $6e4a: $ba
    add l                                         ; $6e4b: $85
    jp c, $cd00                                   ; $6e4c: $da $00 $cd

    jr z, jr_066_6eb4                             ; $6e4f: $28 $63

    and b                                         ; $6e51: $a0
    ld d, l                                       ; $6e52: $55
    and d                                         ; $6e53: $a2
    ld a, $0d                                     ; $6e54: $3e $0d
    ccf                                           ; $6e56: $3f
    xor d                                         ; $6e57: $aa
    ld c, b                                       ; $6e58: $48
    add hl, sp                                    ; $6e59: $39
    ld e, b                                       ; $6e5a: $58
    cp l                                          ; $6e5b: $bd
    sub h                                         ; $6e5c: $94
    ld l, a                                       ; $6e5d: $6f
    ld a, c                                       ; $6e5e: $79
    or h                                          ; $6e5f: $b4
    ei                                            ; $6e60: $fb
    inc bc                                        ; $6e61: $03
    rla                                           ; $6e62: $17
    cp d                                          ; $6e63: $ba
    dec h                                         ; $6e64: $25
    dec a                                         ; $6e65: $3d
    ld c, l                                       ; $6e66: $4d
    add hl, sp                                    ; $6e67: $39
    sub h                                         ; $6e68: $94
    add hl, hl                                    ; $6e69: $29
    rst $30                                       ; $6e6a: $f7
    ld a, [bc]                                    ; $6e6b: $0a
    reti                                          ; $6e6c: $d9


    rst $38                                       ; $6e6d: $ff
    ld c, c                                       ; $6e6e: $49
    ld [hl], $0a                                  ; $6e6f: $36 $0a
    and a                                         ; $6e71: $a7
    ret                                           ; $6e72: $c9


    or l                                          ; $6e73: $b5
    jp nc, $d42d                                  ; $6e74: $d2 $2d $d4

    add [hl]                                      ; $6e77: $86
    xor c                                         ; $6e78: $a9
    ld l, a                                       ; $6e79: $6f
    ld c, a                                       ; $6e7a: $4f
    ld [c], a                                     ; $6e7b: $e2
    reti                                          ; $6e7c: $d9


    sub h                                         ; $6e7d: $94
    ld [hl], c                                    ; $6e7e: $71
    xor $0f                                       ; $6e7f: $ee $0f
    db $db                                        ; $6e81: $db
    ei                                            ; $6e82: $fb
    daa                                           ; $6e83: $27
    pop hl                                        ; $6e84: $e1
    ld b, l                                       ; $6e85: $45
    inc bc                                        ; $6e86: $03
    ld a, [de]                                    ; $6e87: $1a
    ldh [$d3], a                                  ; $6e88: $e0 $d3
    ld [hl-], a                                   ; $6e8a: $32
    dec h                                         ; $6e8b: $25
    ld h, d                                       ; $6e8c: $62
    sbc [hl]                                      ; $6e8d: $9e
    ld b, $56                                     ; $6e8e: $06 $56
    cp [hl]                                       ; $6e90: $be
    sbc b                                         ; $6e91: $98
    ld h, h                                       ; $6e92: $64
    sub c                                         ; $6e93: $91
    ld [hl], d                                    ; $6e94: $72
    rst $08                                       ; $6e95: $cf
    ld h, a                                       ; $6e96: $67
    jp $c553                                      ; $6e97: $c3 $53 $c5


    ld b, [hl]                                    ; $6e9a: $46
    adc c                                         ; $6e9b: $89
    ld a, [$1634]                                 ; $6e9c: $fa $34 $16
    xor [hl]                                      ; $6e9f: $ae
    rst $08                                       ; $6ea0: $cf
    ld [$58d3], a                                 ; $6ea1: $ea $d3 $58
    sub [hl]                                      ; $6ea4: $96
    ld l, [hl]                                    ; $6ea5: $6e
    pop hl                                        ; $6ea6: $e1
    db $dd                                        ; $6ea7: $dd
    dec bc                                        ; $6ea8: $0b
    ld d, h                                       ; $6ea9: $54
    and a                                         ; $6eaa: $a7
    ld bc, $542b                                  ; $6eab: $01 $2b $54
    ld h, c                                       ; $6eae: $61
    ld e, l                                       ; $6eaf: $5d
    sub $0a                                       ; $6eb0: $d6 $0a
    ld e, c                                       ; $6eb2: $59
    rrca                                          ; $6eb3: $0f

jr_066_6eb4:
    sbc a                                         ; $6eb4: $9f
    ldh [$b9], a                                  ; $6eb5: $e0 $b9
    ccf                                           ; $6eb7: $3f
    db $db                                        ; $6eb8: $db
    halt                                          ; $6eb9: $76
    ld d, a                                       ; $6eba: $57
    ld d, c                                       ; $6ebb: $51
    ld b, a                                       ; $6ebc: $47
    dec de                                        ; $6ebd: $1b
    and [hl]                                      ; $6ebe: $a6
    cp [hl]                                       ; $6ebf: $be
    dec a                                         ; $6ec0: $3d
    adc c                                         ; $6ec1: $89
    ld h, a                                       ; $6ec2: $67
    ld d, e                                       ; $6ec3: $53
    add $11                                       ; $6ec4: $c6 $11
    dec [hl]                                      ; $6ec6: $35
    dec bc                                        ; $6ec7: $0b
    and a                                         ; $6ec8: $a7
    ccf                                           ; $6ec9: $3f
    jp nz, Jump_000_0a34                          ; $6eca: $c2 $34 $0a

    and a                                         ; $6ecd: $a7
    add hl, de                                    ; $6ece: $19
    ld [hl], d                                    ; $6ecf: $72
    or h                                          ; $6ed0: $b4
    ld [hl], h                                    ; $6ed1: $74
    dec bc                                        ; $6ed2: $0b
    or l                                          ; $6ed3: $b5
    rst $38                                       ; $6ed4: $ff
    ld e, d                                       ; $6ed5: $5a
    ld hl, $e1eb                                  ; $6ed6: $21 $eb $e1
    inc de                                        ; $6ed9: $13
    inc a                                         ; $6eda: $3c
    rst $30                                       ; $6edb: $f7
    rlca                                          ; $6edc: $07
    db $db                                        ; $6edd: $db
    add h                                         ; $6ede: $84
    db $d3                                        ; $6edf: $d3
    di                                            ; $6ee0: $f3
    ld e, h                                       ; $6ee1: $5c
    db $fc                                        ; $6ee2: $fc
    rst $18                                       ; $6ee3: $df
    ld b, h                                       ; $6ee4: $44
    sbc $1f                                       ; $6ee5: $de $1f
    db $db                                        ; $6ee7: $db
    sub e                                         ; $6ee8: $93
    and d                                         ; $6ee9: $a2
    ld a, [hl-]                                   ; $6eea: $3a
    reti                                          ; $6eeb: $d9


    jr c, jr_066_6f19                             ; $6eec: $38 $2b

    and $d9                                       ; $6eee: $e6 $d9
    push af                                       ; $6ef0: $f5
    ld h, d                                       ; $6ef1: $62
    ld [hl], d                                    ; $6ef2: $72
    jp z, $94fe                                   ; $6ef3: $ca $fe $94

    cpl                                           ; $6ef6: $2f
    ld h, $a7                                     ; $6ef7: $26 $a7
    add c                                         ; $6ef9: $81
    and l                                         ; $6efa: $a5
    ld e, e                                       ; $6efb: $5b
    ld e, [hl]                                    ; $6efc: $5e

Jump_066_6efd:
    ld c, h                                       ; $6efd: $4c
    ld [hl], d                                    ; $6efe: $72
    ld b, e                                       ; $6eff: $43
    or a                                          ; $6f00: $b7
    rst $00                                       ; $6f01: $c7
    add b                                         ; $6f02: $80
    ld a, [hl+]                                   ; $6f03: $2a
    ld l, h                                       ; $6f04: $6c
    xor l                                         ; $6f05: $ad
    add hl, hl                                    ; $6f06: $29
    add a                                         ; $6f07: $87
    xor [hl]                                      ; $6f08: $ae
    ld hl, sp+$36                                 ; $6f09: $f8 $36
    ld a, l                                       ; $6f0b: $7d
    add hl, bc                                    ; $6f0c: $09
    sbc d                                         ; $6f0d: $9a
    rst $00                                       ; $6f0e: $c7
    sub l                                         ; $6f0f: $95
    ld a, l                                       ; $6f10: $7d
    jp hl                                         ; $6f11: $e9


    jr c, jr_066_6f5a                             ; $6f12: $38 $46

    db $db                                        ; $6f14: $db
    sbc b                                         ; $6f15: $98
    ld hl, $226a                                  ; $6f16: $21 $6a $22

jr_066_6f19:
    or b                                          ; $6f19: $b0
    add d                                         ; $6f1a: $82
    sbc $1f                                       ; $6f1b: $de $1f
    add hl, bc                                    ; $6f1d: $09
    ld sp, $a70b                                  ; $6f1e: $31 $0b $a7
    sbc c                                         ; $6f21: $99
    rrc d                                         ; $6f22: $cb $0a
    cp e                                          ; $6f24: $bb
    ld [$551d], a                                 ; $6f25: $ea $1d $55
    ld d, h                                       ; $6f28: $54
    ld h, d                                       ; $6f29: $62
    ld c, c                                       ; $6f2a: $49
    adc [hl]                                      ; $6f2b: $8e
    dec d                                         ; $6f2c: $15
    xor [hl]                                      ; $6f2d: $ae

jr_066_6f2e:
    add c                                         ; $6f2e: $81
    or [hl]                                       ; $6f2f: $b6
    ld sp, $5ca3                                  ; $6f30: $31 $a3 $5c
    jp nc, $94d3                                  ; $6f33: $d2 $d3 $94

    ld b, e                                       ; $6f36: $43
    and e                                         ; $6f37: $a3
    ld [hl], b                                    ; $6f38: $70
    ld [$804f], a                                 ; $6f39: $ea $4f $80
    or $a5                                        ; $6f3c: $f6 $a5
    db $e3                                        ; $6f3e: $e3
    jr jr_066_6f2e                                ; $6f3f: $18 $ed

    cp $00                                        ; $6f41: $fe $00
    ld [c], a                                     ; $6f43: $e2
    ld sp, hl                                     ; $6f44: $f9
    ld c, a                                       ; $6f45: $4f
    ld a, $79                                     ; $6f46: $3e $79
    rst $18                                       ; $6f48: $df
    ld [hl], a                                    ; $6f49: $77
    cp l                                          ; $6f4a: $bd
    ld e, [hl]                                    ; $6f4b: $5e
    xor a                                         ; $6f4c: $af
    rst $10                                       ; $6f4d: $d7
    db $eb                                        ; $6f4e: $eb
    cp l                                          ; $6f4f: $bd
    rst $28                                       ; $6f50: $ef
    cp e                                          ; $6f51: $bb
    call z, $f27f                                 ; $6f52: $cc $7f $f2
    ret                                           ; $6f55: $c9


    ei                                            ; $6f56: $fb
    cp [hl]                                       ; $6f57: $be
    ccf                                           ; $6f58: $3f
    ld e, e                                       ; $6f59: $5b

jr_066_6f5a:
    ld e, [hl]                                    ; $6f5a: $5e
    sub e                                         ; $6f5b: $93
    xor a                                         ; $6f5c: $af
    ret                                           ; $6f5d: $c9


    rst $10                                       ; $6f5e: $d7
    db $e4                                        ; $6f5f: $e4
    cp e                                          ; $6f60: $bb
    rst $28                                       ; $6f61: $ef
    ei                                            ; $6f62: $fb
    cp $00                                        ; $6f63: $fe $00
    ld [c], a                                     ; $6f65: $e2
    ld sp, hl                                     ; $6f66: $f9
    ld c, a                                       ; $6f67: $4f
    ld a, $29                                     ; $6f68: $3e $29
    xor d                                         ; $6f6a: $aa
    rst $00                                       ; $6f6b: $c7
    db $eb                                        ; $6f6c: $eb
    push af                                       ; $6f6d: $f5
    ld a, d                                       ; $6f6e: $7a
    cp l                                          ; $6f6f: $bd
    and d                                         ; $6f70: $a2
    ld a, d                                       ; $6f71: $7a
    cp h                                          ; $6f72: $bc
    ld e, [hl]                                    ; $6f73: $5e
    xor a                                         ; $6f74: $af
    rst $10                                       ; $6f75: $d7
    ld a, e                                       ; $6f76: $7b
    rst $18                                       ; $6f77: $df
    rst $30                                       ; $6f78: $f7
    rlca                                          ; $6f79: $07
    dec sp                                        ; $6f7a: $3b
    ld [hl], $ee                                  ; $6f7b: $36 $ee
    ret c                                         ; $6f7d: $d8

    cp b                                          ; $6f7e: $b8
    jp Jump_000_26ee                              ; $6f7f: $c3 $ee $26


    ld c, [hl]                                    ; $6f82: $4e
    adc $30                                       ; $6f83: $ce $30
    ld d, c                                       ; $6f85: $51
    and c                                         ; $6f86: $a1
    ld a, c                                       ; $6f87: $79
    xor l                                         ; $6f88: $ad
    ld h, c                                       ; $6f89: $61
    db $10                                        ; $6f8a: $10
    inc sp                                        ; $6f8b: $33
    ld [hl], $7d                                  ; $6f8c: $36 $7d
    db $db                                        ; $6f8e: $db
    add h                                         ; $6f8f: $84
    inc hl                                        ; $6f90: $23
    xor d                                         ; $6f91: $aa
    ld [hl], a                                    ; $6f92: $77
    ld e, [hl]                                    ; $6f93: $5e
    and a                                         ; $6f94: $a7
    adc c                                         ; $6f95: $89
    ret nz                                        ; $6f96: $c0

    ld a, [bc]                                    ; $6f97: $0a
    jp c, $4394                                   ; $6f98: $da $94 $43

    dec h                                         ; $6f9b: $25
    ld l, d                                       ; $6f9c: $6a
    sub e                                         ; $6f9d: $93

Jump_066_6f9e:
    ld e, $57                                     ; $6f9e: $1e $57
    daa                                           ; $6fa0: $27
    ld e, c                                       ; $6fa1: $59
    ret                                           ; $6fa2: $c9


    dec h                                         ; $6fa3: $25
    cp h                                          ; $6fa4: $bc
    push af                                       ; $6fa5: $f5
    jp nz, $2bb9                                  ; $6fa6: $c2 $b9 $2b

    sbc [hl]                                      ; $6fa9: $9e
    rst $38                                       ; $6faa: $ff
    db $e4                                        ; $6fab: $e4
    sub e                                         ; $6fac: $93
    and d                                         ; $6fad: $a2
    ld a, d                                       ; $6fae: $7a
    ld e, l                                       ; $6faf: $5d
    call c, Call_066_75e8                         ; $6fb0: $dc $e8 $75
    ld a, [c]                                     ; $6fb3: $f2
    cp [hl]                                       ; $6fb4: $be
    rst $28                                       ; $6fb5: $ef
    rrca                                          ; $6fb6: $0f
    ld [c], a                                     ; $6fb7: $e2
    dec d                                         ; $6fb8: $15
    or b                                          ; $6fb9: $b0
    ld d, c                                       ; $6fba: $51
    ret nz                                        ; $6fbb: $c0

    ld b, [hl]                                    ; $6fbc: $46
    ld bc, $496e                                  ; $6fbd: $01 $6e $49
    db $d3                                        ; $6fc0: $d3
    ld [$1963], a                                 ; $6fc1: $ea $63 $19
    xor l                                         ; $6fc4: $ad
    cp [hl]                                       ; $6fc5: $be
    sbc b                                         ; $6fc6: $98
    ld b, a                                       ; $6fc7: $47
    ld d, d                                       ; $6fc8: $52
    ld b, l                                       ; $6fc9: $45
    add l                                         ; $6fca: $85
    ld l, e                                       ; $6fcb: $6b
    ld a, b                                       ; $6fcc: $78
    or $d8                                        ; $6fcd: $f6 $d8
    sub h                                         ; $6fcf: $94
    ld b, e                                       ; $6fd0: $43
    and c                                         ; $6fd1: $a1
    ld a, c                                       ; $6fd2: $79
    xor l                                         ; $6fd3: $ad
    ld a, [hl-]                                   ; $6fd4: $3a
    sbc [hl]                                      ; $6fd5: $9e
    ld c, [hl]                                    ; $6fd6: $4e
    pop hl                                        ; $6fd7: $e1
    push bc                                       ; $6fd8: $c5
    set 2, e                                      ; $6fd9: $cb $d3
    add b                                         ; $6fdb: $80
    ld l, [hl]                                    ; $6fdc: $6e
    ld [hl], l                                    ; $6fdd: $75
    cp a                                          ; $6fde: $bf
    db $d3                                        ; $6fdf: $d3
    adc d                                         ; $6fe0: $8a
    add a                                         ; $6fe1: $87
    ld l, [hl]                                    ; $6fe2: $6e
    and e                                         ; $6fe3: $a3
    ld d, e                                       ; $6fe4: $53
    jr c, jr_066_7060                             ; $6fe5: $38 $79

    rst $18                                       ; $6fe7: $df
    or a                                          ; $6fe8: $b7
    ld a, b                                       ; $6fe9: $78
    or a                                          ; $6fea: $b7
    ld l, [hl]                                    ; $6feb: $6e
    call c, $71ba                                 ; $6fec: $dc $ba $71
    dec hl                                        ; $6fef: $2b
    sub a                                         ; $6ff0: $97
    ldh a, [$d6]                                  ; $6ff1: $f0 $d6
    dec bc                                        ; $6ff3: $0b
    and a                                         ; $6ff4: $a7
    ld h, c                                       ; $6ff5: $61
    or h                                          ; $6ff6: $b4
    ld e, e                                       ; $6ff7: $5b
    jp hl                                         ; $6ff8: $e9


    or h                                          ; $6ff9: $b4
    add hl, bc                                    ; $6ffa: $09
    ld [$66ef], a                                 ; $6ffb: $ea $ef $66
    cpl                                           ; $6ffe: $2f
    adc a                                         ; $6fff: $8f
    ld l, [hl]                                    ; $7000: $6e
    ld hl, sp+$00                                 ; $7001: $f8 $00
    rst $20                                       ; $7003: $e7
    ld a, c                                       ; $7004: $79
    cp l                                          ; $7005: $bd
    ld e, [hl]                                    ; $7006: $5e
    xor a                                         ; $7007: $af
    ld [hl], a                                    ; $7008: $77
    jp Jump_000_0907                              ; $7009: $c3 $07 $09


    add d                                         ; $700c: $82
    ld sp, hl                                     ; $700d: $f9
    ld h, a                                       ; $700e: $67
    ld c, d                                       ; $700f: $4a
    call nz, $bb8c                                ; $7010: $c4 $8c $bb
    rla                                           ; $7013: $17
    ld l, b                                       ; $7014: $68
    sbc [hl]                                      ; $7015: $9e
    ld b, d                                       ; $7016: $42
    ldh a, [rWX]                                  ; $7017: $f0 $4b
    and e                                         ; $7019: $a3
    ld c, [hl]                                    ; $701a: $4e
    or d                                          ; $701b: $b2
    ld [hl], d                                    ; $701c: $72
    and e                                         ; $701d: $a3
    call c, $9f28                                 ; $701e: $dc $28 $9f
    xor d                                         ; $7021: $aa
    ld [hl], b                                    ; $7022: $70
    ld a, [bc]                                    ; $7023: $0a
    push af                                       ; $7024: $f5
    pop af                                        ; $7025: $f1
    ccf                                           ; $7026: $3f
    ld l, $4d                                     ; $7027: $2e $4d
    add hl, sp                                    ; $7029: $39
    inc d                                         ; $702a: $14
    xor [hl]                                      ; $702b: $ae
    ld [hl], c                                    ; $702c: $71
    ld h, e                                       ; $702d: $63
    call c, $c718                                 ; $702e: $dc $18 $c7
    inc h                                         ; $7031: $24
    rla                                           ; $7032: $17
    adc c                                         ; $7033: $89
    sbc b                                         ; $7034: $98
    ld d, c                                       ; $7035: $51
    db $dd                                        ; $7036: $dd
    cp l                                          ; $7037: $bd
    add c                                         ; $7038: $81
    or $58                                        ; $7039: $f6 $58
    sub $c9                                       ; $703b: $d6 $c9
    ld [hl], d                                    ; $703d: $72
    ld [hl], c                                    ; $703e: $71
    ld [hl], c                                    ; $703f: $71
    ld a, [hl+]                                   ; $7040: $2a
    ld sp, hl                                     ; $7041: $f9
    or h                                          ; $7042: $b4
    db $10                                        ; $7043: $10
    db $ec                                        ; $7044: $ec
    ld l, a                                       ; $7045: $6f
    db $f4                                        ; $7046: $f4
    scf                                           ; $7047: $37
    ld a, [$87b0]                                 ; $7048: $fa $b0 $87
    sbc b                                         ; $704b: $98
    ld hl, $a4aa                                  ; $704c: $21 $aa $a4
    sub $49                                       ; $704f: $d6 $49
    halt                                          ; $7051: $76
    add l                                         ; $7052: $85
    ld e, l                                       ; $7053: $5d
    ld c, l                                       ; $7054: $4d
    add hl, sp                                    ; $7055: $39
    ld [hl], h                                    ; $7056: $74
    sbc l                                         ; $7057: $9d
    halt                                          ; $7058: $76
    cp d                                          ; $7059: $ba
    ld h, l                                       ; $705a: $65
    db $e3                                        ; $705b: $e3
    sub [hl]                                      ; $705c: $96
    adc l                                         ; $705d: $8d
    ld e, e                                       ; $705e: $5b
    ld l, b                                       ; $705f: $68

jr_066_7060:
    or [hl]                                       ; $7060: $b6
    or e                                          ; $7061: $b3
    adc c                                         ; $7062: $89
    sub e                                         ; $7063: $93
    inc sp                                        ; $7064: $33
    db $ec                                        ; $7065: $ec
    cp [hl]                                       ; $7066: $be
    rst $28                                       ; $7067: $ef
    rrca                                          ; $7068: $0f
    db $db                                        ; $7069: $db
    sbc e                                         ; $706a: $9b
    ld [hl], d                                    ; $706b: $72
    add sp, -$46                                  ; $706c: $e8 $ba
    ld c, l                                       ; $706e: $4d
    dec a                                         ; $706f: $3d
    rst $08                                       ; $7070: $cf
    push bc                                       ; $7071: $c5
    adc l                                         ; $7072: $8d
    ld e, [hl]                                    ; $7073: $5e
    daa                                           ; $7074: $27
    rst $28                                       ; $7075: $ef
    rrca                                          ; $7076: $0f
    add hl, bc                                    ; $7077: $09
    pop af                                        ; $7078: $f1

jr_066_7079:
    sbc a                                         ; $7079: $9f
    sbc b                                         ; $707a: $98
    adc l                                         ; $707b: $8d
    ld d, [hl]                                    ; $707c: $56
    or $df                                        ; $707d: $f6 $df
    ld hl, sp+$6f                                 ; $707f: $f8 $6f
    db $fc                                        ; $7081: $fc
    daa                                           ; $7082: $27
    ld h, [hl]                                    ; $7083: $66
    and e                                         ; $7084: $a3
    db $e4                                        ; $7085: $e4
    ld [de], a                                    ; $7086: $12
    sbc $7a                                       ; $7087: $de $7a
    pop hl                                        ; $7089: $e1
    call c, $684d                                 ; $708a: $dc $4d $68
    add b                                         ; $708d: $80
    ld a, [$93fc]                                 ; $708e: $fa $fc $93
    call c, Call_066_7198                         ; $7091: $dc $98 $71
    rst $18                                       ; $7094: $df
    scf                                           ; $7095: $37
    cp e                                          ; $7096: $bb
    sub l                                         ; $7097: $95
    ld c, e                                       ; $7098: $4b
    ld a, b                                       ; $7099: $78
    db $eb                                        ; $709a: $eb
    add l                                         ; $709b: $85
    db $d3                                        ; $709c: $d3
    jr nc, jr_066_7079                            ; $709d: $30 $da

    xor l                                         ; $709f: $ad
    ld [hl], h                                    ; $70a0: $74

Jump_066_70a1:
    jp c, $f504                                   ; $70a1: $da $04 $f5

    ld [hl], a                                    ; $70a4: $77
    or e                                          ; $70a5: $b3
    sub a                                         ; $70a6: $97
    ld b, a                                       ; $70a7: $47
    db $eb                                        ; $70a8: $eb
    db $dd                                        ; $70a9: $dd

Call_066_70aa:
    add sp, -$23                                  ; $70aa: $e8 $dd
    add sp, -$1b                                  ; $70ac: $e8 $e5
    xor [hl]                                      ; $70ae: $ae
    adc l                                         ; $70af: $8d
    add hl, de                                    ; $70b0: $19
    push af                                       ; $70b1: $f5
    cp [hl]                                       ; $70b2: $be
    sbc a                                         ; $70b3: $9f
    sub $7f                                       ; $70b4: $d6 $7f
    db $e3                                        ; $70b6: $e3
    cp a                                          ; $70b7: $bf
    pop af                                        ; $70b8: $f1
    ld h, a                                       ; $70b9: $67
    ld h, b                                       ; $70ba: $60
    ld d, a                                       ; $70bb: $57
    ret c                                         ; $70bc: $d8

    ld d, l                                       ; $70bd: $55
    ret                                           ; $70be: $c9


    and a                                         ; $70bf: $a7
    push af                                       ; $70c0: $f5
    ld a, [de]                                    ; $70c1: $1a
    rst $38                                       ; $70c2: $ff
    add hl, hl                                    ; $70c3: $29
    di                                            ; $70c4: $f3
    cp d                                          ; $70c5: $ba
    ld a, d                                       ; $70c6: $7a
    scf                                           ; $70c7: $37
    ld a, d                                       ; $70c8: $7a
    scf                                           ; $70c9: $37
    ld a, d                                       ; $70ca: $7a
    rst $18                                       ; $70cb: $df
    ld c, a                                       ; $70cc: $4f
    add e                                         ; $70cd: $83
    ld [hl], $a0                                  ; $70ce: $36 $a0
    ccf                                           ; $70d0: $3f
    dec h                                         ; $70d1: $25
    rst $28                                       ; $70d2: $ef
    rrca                                          ; $70d3: $0f
    ld [c], a                                     ; $70d4: $e2
    add hl, hl                                    ; $70d5: $29
    rst $30                                       ; $70d6: $f7
    ld a, [de]                                    ; $70d7: $1a
    add l                                         ; $70d8: $85
    ld d, e                                       ; $70d9: $53
    call nz, $e37f                                ; $70da: $c4 $7f $e3
    cp a                                          ; $70dd: $bf
    pop af                                        ; $70de: $f1
    sbc a                                         ; $70df: $9f
    sbc b                                         ; $70e0: $98
    adc l                                         ; $70e1: $8d
    ld e, d                                       ; $70e2: $5a
    or $9f                                        ; $70e3: $f6 $9f
    sbc b                                         ; $70e5: $98
    adc l                                         ; $70e6: $8d
    sub d                                         ; $70e7: $92
    ld c, e                                       ; $70e8: $4b
    ld a, b                                       ; $70e9: $78
    db $eb                                        ; $70ea: $eb
    add l                                         ; $70eb: $85
    inc hl                                        ; $70ec: $23
    ld [$9a16], a                                 ; $70ed: $ea $16 $9a
    db $ed                                        ; $70f0: $ed
    call c, Call_000_01f0                         ; $70f1: $dc $f0 $01
    db $db                                        ; $70f4: $db
    add h                                         ; $70f5: $84
    ld [hl], e                                    ; $70f6: $73
    rst $18                                       ; $70f7: $df
    ld [hl], a                                    ; $70f8: $77
    dec h                                         ; $70f9: $25
    xor d                                         ; $70fa: $aa
    cpl                                           ; $70fb: $2f
    and $b9                                       ; $70fc: $e6 $b9
    rst $28                                       ; $70fe: $ef
    cp e                                          ; $70ff: $bb
    jp nc, Jump_000_3cbd                          ; $7100: $d2 $bd $3c

    push af                                       ; $7103: $f5
    ld b, b                                       ; $7104: $40
    sbc $f7                                       ; $7105: $de $f7
    db $fd                                        ; $7107: $fd
    ld bc, $9a09                                  ; $7108: $01 $09 $9a
    rst $10                                       ; $710b: $d7
    or h                                          ; $710c: $b4
    ld [de], a                                    ; $710d: $12
    ld c, e                                       ; $710e: $4b
    ld [hl], d                                    ; $710f: $72
    ld l, h                                       ; $7110: $6c
    ld d, e                                       ; $7111: $53
    inc de                                        ; $7112: $13
    ld l, c                                       ; $7113: $69
    ld hl, sp+$1f                                 ; $7114: $f8 $1f
    or l                                          ; $7116: $b5
    jp nc, Jump_000_3cbd                          ; $7117: $d2 $bd $3c

    dec c                                         ; $711a: $0d
    add e                                         ; $711b: $83
    sbc b                                         ; $711c: $98
    pop de                                        ; $711d: $d1
    sub h                                         ; $711e: $94
    ld h, e                                       ; $711f: $63
    inc c                                         ; $7120: $0c
    ld d, e                                       ; $7121: $53

jr_066_7122:
    and [hl]                                      ; $7122: $a6
    call c, Call_066_622b                         ; $7123: $dc $2b $62
    ld [hl], $6a                                  ; $7126: $36 $6a
    add $fd                                       ; $7128: $c6 $fd
    ld bc, $4e97                                  ; $712a: $01 $97 $4e
    sbc d                                         ; $712d: $9a
    ld b, [hl]                                    ; $712e: $46

jr_066_712f:
    cp c                                          ; $712f: $b9
    ld d, c                                       ; $7130: $51
    and d                                         ; $7131: $a2
    db $ec                                        ; $7132: $ec
    ld d, [hl]                                    ; $7133: $56
    ld l, $e1                                     ; $7134: $2e $e1
    xor l                                         ; $7136: $ad
    rla                                           ; $7137: $17
    ld c, [hl]                                    ; $7138: $4e
    jp $b768                                      ; $7139: $c3 $68 $b7


    jp nc, Jump_000_1369                          ; $713c: $d2 $69 $13

    call nc, $cddf                                ; $713f: $d4 $df $cd
    ld e, [hl]                                    ; $7142: $5e
    ld e, $bd                                     ; $7143: $1e $bd
    ld a, e                                       ; $7145: $7b
    sbc [hl]                                      ; $7146: $9e
    adc e                                         ; $7147: $8b
    dec de                                        ; $7148: $1b
    cp l                                          ; $7149: $bd
    ld c, [hl]                                    ; $714a: $4e
    sbc $dd                                       ; $714b: $de $dd
    ld e, [hl]                                    ; $714d: $5e
    rst $18                                       ; $714e: $df
    add $7b                                       ; $714f: $c6 $7b
    rst $30                                       ; $7151: $f7
    ld [de], a                                    ; $7152: $12
    rst $30                                       ; $7153: $f7
    call z, $2cb0                                 ; $7154: $cc $b0 $2c
    sub l                                         ; $7157: $95
    adc h                                         ; $7158: $8c
    ld h, c                                       ; $7159: $61
    call c, $8946                                 ; $715a: $dc $46 $89
    ld a, [$bf36]                                 ; $715d: $fa $36 $bf
    inc sp                                        ; $7160: $33
    ld e, d                                       ; $7161: $5a
    sbc l                                         ; $7162: $9d
    ld h, h                                       ; $7163: $64
    rst $38                                       ; $7164: $ff
    adc c                                         ; $7165: $89
    reti                                          ; $7166: $d9


    jr z, jr_066_7122                             ; $7167: $28 $b9

    add h                                         ; $7169: $84
    or a                                          ; $716a: $b7
    ld e, [hl]                                    ; $716b: $5e
    jr c, jr_066_71e5                             ; $716c: $38 $77

    rst $08                                       ; $716e: $cf
    di                                            ; $716f: $f3
    ld a, d                                       ; $7170: $7a
    cp l                                          ; $7171: $bd
    ld e, [hl]                                    ; $7172: $5e

jr_066_7173:
    rst $28                                       ; $7173: $ef
    db $dd                                        ; $7174: $dd
    call nz, $2809                                ; $7175: $c4 $09 $28
    dec b                                         ; $7178: $05
    cp b                                          ; $7179: $b8
    ld b, b                                       ; $717a: $40
    db $db                                        ; $717b: $db
    jr z, jr_066_712f                             ; $717c: $28 $b1

    jp hl                                         ; $717e: $e9


Call_066_717f:
    inc bc                                        ; $717f: $03
    rla                                           ; $7180: $17
    ld h, e                                       ; $7181: $63
    push bc                                       ; $7182: $c5
    ld b, d                                       ; $7183: $42
    inc sp                                        ; $7184: $33
    sbc e                                         ; $7185: $9b
    jr c, jr_066_7173                             ; $7186: $38 $eb

    add l                                         ; $7188: $85
    db $d3                                        ; $7189: $d3
    dec hl                                        ; $718a: $2b
    ld e, a                                       ; $718b: $5f
    ld a, [hl-]                                   ; $718c: $3a
    adc l                                         ; $718d: $8d
    jr z, jr_066_7198                             ; $718e: $28 $08

    ld c, e                                       ; $7190: $4b
    jr c, @-$41                                   ; $7191: $38 $bd

    ld d, c                                       ; $7193: $51
    jr c, jr_066_71f3                             ; $7194: $38 $5d

    pop af                                        ; $7196: $f1
    push de                                       ; $7197: $d5

Call_066_7198:
jr_066_7198:
    sub b                                         ; $7198: $90
    sbc a                                         ; $7199: $9f

jr_066_719a:
    pop de                                        ; $719a: $d1
    jp z, $2e4a                                   ; $719b: $ca $4a $2e

    pop hl                                        ; $719e: $e1
    xor l                                         ; $719f: $ad
    rla                                           ; $71a0: $17
    adc [hl]                                      ; $71a1: $8e
    xor b                                         ; $71a2: $a8
    sub d                                         ; $71a3: $92
    jp c, $9f15                                   ; $71a4: $da $15 $9f

    ld d, [hl]                                    ; $71a7: $56
    ld de, $b3f3                                  ; $71a8: $11 $f3 $b3
    adc l                                         ; $71ab: $8d
    add hl, de                                    ; $71ac: $19
    sub l                                         ; $71ad: $95
    ld e, b                                       ; $71ae: $58
    sub d                                         ; $71af: $92
    ld h, e                                       ; $71b0: $63
    rst $30                                       ; $71b1: $f7
    rlca                                          ; $71b2: $07
    db $db                                        ; $71b3: $db
    dec a                                         ; $71b4: $3d
    or $d2                                        ; $71b5: $f6 $d2
    inc c                                         ; $71b7: $0c
    inc hl                                        ; $71b8: $23
    ld [$0656], a                                 ; $71b9: $ea $56 $06
    ld c, d                                       ; $71bc: $4a
    inc [hl]                                      ; $71bd: $34
    ld [hl], c                                    ; $71be: $71
    and h                                         ; $71bf: $a4
    rst $10                                       ; $71c0: $d7
    or b                                          ; $71c1: $b0
    di                                            ; $71c2: $f3
    cp $00                                        ; $71c3: $fe $00
    add hl, bc                                    ; $71c5: $09
    xor [hl]                                      ; $71c6: $ae
    pop hl                                        ; $71c7: $e1
    xor c                                         ; $71c8: $a9
    and d                                         ; $71c9: $a2
    add hl, hl                                    ; $71ca: $29
    add a                                         ; $71cb: $87
    ld a, $cd                                     ; $71cc: $3e $cd
    db $d3                                        ; $71ce: $d3
    rst $00                                       ; $71cf: $c7

Call_066_71d0:
    ld a, [c]                                     ; $71d0: $f2
    sbc a                                         ; $71d1: $9f
    sbc b                                         ; $71d2: $98
    pop af                                        ; $71d3: $f1
    jp Jump_000_0fee                              ; $71d4: $c3 $ee $0f


    sbc e                                         ; $71d7: $9b
    ld b, a                                       ; $71d8: $47
    ld c, [hl]                                    ; $71d9: $4e
    db $fd                                        ; $71da: $fd
    add hl, bc                                    ; $71db: $09
    jr nc, jr_066_719a                            ; $71dc: $30 $bc

    jp nz, $20d5                                  ; $71de: $c2 $d5 $20

    ld h, a                                       ; $71e1: $67
    dec b                                         ; $71e2: $05
    xor e                                         ; $71e3: $ab
    sub e                                         ; $71e4: $93

jr_066_71e5:
    xor h                                         ; $71e5: $ac
    db $e4                                        ; $71e6: $e4
    ld [de], a                                    ; $71e7: $12
    sbc $7a                                       ; $71e8: $de $7a
    pop hl                                        ; $71ea: $e1
    ld l, h                                       ; $71eb: $6c
    ld a, [$9700]                                 ; $71ec: $fa $00 $97
    ld c, e                                       ; $71ef: $4b
    ld d, [hl]                                    ; $71f0: $56
    ld [hl], d                                    ; $71f1: $72
    add hl, bc                                    ; $71f2: $09

jr_066_71f3:
    ld l, a                                       ; $71f3: $6f
    cp l                                          ; $71f4: $bd
    ld [hl], b                                    ; $71f5: $70
    cp d                                          ; $71f6: $ba
    ld c, [hl]                                    ; $71f7: $4e
    ld a, e                                       ; $71f8: $7b
    reti                                          ; $71f9: $d9


    push hl                                       ; $71fa: $e5
    and d                                         ; $71fb: $a2
    ld h, $4e                                     ; $71fc: $26 $4e
    adc $30                                       ; $71fe: $ce $30
    ld d, c                                       ; $7200: $51
    pop de                                        ; $7201: $d1
    ld c, e                                       ; $7202: $4b
    ld l, $4f                                     ; $7203: $2e $4f
    ret c                                         ; $7205: $d8

    jp c, $09ad                                   ; $7206: $da $ad $09

    dec a                                         ; $7209: $3d
    scf                                           ; $720a: $37
    pop hl                                        ; $720b: $e1
    ld d, d                                       ; $720c: $52
    pop af                                        ; $720d: $f1
    ld a, [hl+]                                   ; $720e: $2a
    dec a                                         ; $720f: $3d
    or b                                          ; $7210: $b0
    ld a, [de]                                    ; $7211: $1a
    db $e4                                        ; $7212: $e4
    xor h                                         ; $7213: $ac
    ld h, b                                       ; $7214: $60
    dec de                                        ; $7215: $1b
    inc sp                                        ; $7216: $33
    xor $0f                                       ; $7217: $ee $0f
    add hl, bc                                    ; $7219: $09
    sbc d                                         ; $721a: $9a
    rst $10                                       ; $721b: $d7
    or h                                          ; $721c: $b4
    xor h                                         ; $721d: $ac
    ld c, a                                       ; $721e: $4f
    ld d, l                                       ; $721f: $55
    ld e, d                                       ; $7220: $5a
    and l                                         ; $7221: $a5
    ld a, e                                       ; $7222: $7b
    ld a, c                                       ; $7223: $79
    sbc d                                         ; $7224: $9a
    ld hl, $a9fd                                  ; $7225: $21 $fd $a9
    ld [hl], a                                    ; $7228: $77
    adc h                                         ; $7229: $8c
    dec c                                         ; $722a: $0d
    call nc, Call_000_2dd2                        ; $722b: $d4 $d2 $2d
    ld d, h                                       ; $722e: $54
    ld d, c                                       ; $722f: $51
    or a                                          ; $7230: $b7
    ret nc                                        ; $7231: $d0

    ld l, h                                       ; $7232: $6c
    rst $20                                       ; $7233: $e7
    db $fd                                        ; $7234: $fd
    ld bc, $b9e7                                  ; $7235: $01 $e7 $b9
    ld d, a                                       ; $7238: $57
    ld c, d                                       ; $7239: $4a
    ld l, $e1                                     ; $723a: $2e $e1
    xor l                                         ; $723c: $ad
    rra                                           ; $723d: $1f
    add [hl]                                      ; $723e: $86
    ld de, $ebd5                                  ; $723f: $11 $d5 $eb
    ld [c], a                                     ; $7242: $e2
    ld b, [hl]                                    ; $7243: $46
    xor a                                         ; $7244: $af
    sub e                                         ; $7245: $93
    rst $30                                       ; $7246: $f7
    rlca                                          ; $7247: $07
    adc c                                         ; $7248: $89
    ld h, e                                       ; $7249: $63
    ld c, l                                       ; $724a: $4d
    add hl, sp                                    ; $724b: $39
    ret z                                         ; $724c: $c8

    ld c, l                                       ; $724d: $4d
    rra                                           ; $724e: $1f
    adc c                                         ; $724f: $89
    ld e, b                                       ; $7250: $58
    and [hl]                                      ; $7251: $a6
    adc c                                         ; $7252: $89
    ret nz                                        ; $7253: $c0

    ld a, [bc]                                    ; $7254: $0a
    ld a, d                                       ; $7255: $7a
    rst $30                                       ; $7256: $f7
    jp nc, $8f49                                  ; $7257: $d2 $49 $8f

    db $db                                        ; $725a: $db
    jr z, jr_066_72ae                             ; $725b: $28 $51

    halt                                          ; $725d: $76
    dec hl                                        ; $725e: $2b
    sub a                                         ; $725f: $97
    ldh a, [$d6]                                  ; $7260: $f0 $d6
    dec bc                                        ; $7262: $0b
    and a                                         ; $7263: $a7
    ld h, c                                       ; $7264: $61
    or h                                          ; $7265: $b4
    ld e, e                                       ; $7266: $5b
    jp hl                                         ; $7267: $e9


    or h                                          ; $7268: $b4
    add hl, bc                                    ; $7269: $09
    ld [$66ef], a                                 ; $726a: $ea $ef $66
    cpl                                           ; $726d: $2f
    adc a                                         ; $726e: $8f
    ld d, $9d                                     ; $726f: $16 $9d
    ld e, [hl]                                    ; $7271: $5e
    ld [c], a                                     ; $7272: $e2
    sbc [hl]                                      ; $7273: $9e
    add hl, de                                    ; $7274: $19
    sub [hl]                                      ; $7275: $96
    and l                                         ; $7276: $a5
    sub d                                         ; $7277: $92
    ld sp, $db8c                                  ; $7278: $31 $8c $db
    jr z, jr_066_72ce                             ; $727b: $28 $51

    call nz, Call_066_627f                        ; $727d: $c4 $7f $62
    ld [hl], $5a                                  ; $7280: $36 $5a
    sbc l                                         ; $7282: $9d
    ld h, h                                       ; $7283: $64
    ld a, a                                       ; $7284: $7f
    ld h, a                                       ; $7285: $67
    cp h                                          ; $7286: $bc
    ld a, e                                       ; $7287: $7b
    adc [hl]                                      ; $7288: $8e
    rst $10                                       ; $7289: $d7
    db $eb                                        ; $728a: $eb
    push af                                       ; $728b: $f5
    ld a, d                                       ; $728c: $7a

Jump_066_728d:
    rst $28                                       ; $728d: $ef
    rrca                                          ; $728e: $0f
    add hl, bc                                    ; $728f: $09
    xor d                                         ; $7290: $aa
    xor h                                         ; $7291: $ac
    db $e4                                        ; $7292: $e4
    ld [de], a                                    ; $7293: $12
    sbc $7a                                       ; $7294: $de $7a
    pop hl                                        ; $7296: $e1
    ld [hl], h                                    ; $7297: $74
    push bc                                       ; $7298: $c5
    ld d, a                                       ; $7299: $57
    ld b, h                                       ; $729a: $44
    xor a                                         ; $729b: $af
    ld sp, $f0e5                                  ; $729c: $31 $e5 $f0
    jp Jump_066_6636                              ; $729f: $c3 $36 $66


    call c, $f715                                 ; $72a2: $dc $15 $f7
    ld b, a                                       ; $72a5: $47
    di                                            ; $72a6: $f3
    inc [hl]                                      ; $72a7: $34
    push hl                                       ; $72a8: $e5
    ret nc                                        ; $72a9: $d0

    ret z                                         ; $72aa: $c8

    ld a, d                                       ; $72ab: $7a
    sbc [hl]                                      ; $72ac: $9e
    ld h, a                                       ; $72ad: $67

jr_066_72ae:
    ld a, c                                       ; $72ae: $79
    sub e                                         ; $72af: $93
    pop af                                        ; $72b0: $f1
    or e                                          ; $72b1: $b3
    ret                                           ; $72b2: $c9


    or l                                          ; $72b3: $b5
    and [hl]                                      ; $72b4: $a6
    inc e                                         ; $72b5: $1c
    sub a                                         ; $72b6: $97
    sub h                                         ; $72b7: $94
    add e                                         ; $72b8: $83
    push af                                       ; $72b9: $f5
    sbc a                                         ; $72ba: $9f
    and a                                         ; $72bb: $a7
    xor h                                         ; $72bc: $ac
    ld c, a                                       ; $72bd: $4f
    ld h, e                                       ; $72be: $63
    inc sp                                        ; $72bf: $33
    ld c, d                                       ; $72c0: $4a
    ld bc, $d02e                                  ; $72c1: $01 $2e $d0
    xor $0f                                       ; $72c4: $ee $0f
    ld e, e                                       ; $72c6: $5b
    ld l, b                                       ; $72c7: $68
    or [hl]                                       ; $72c8: $b6
    ld [hl], e                                    ; $72c9: $73
    ld b, e                                       ; $72ca: $43
    inc de                                        ; $72cb: $13
    rst $00                                       ; $72cc: $c7
    ld d, d                                       ; $72cd: $52

jr_066_72ce:
    ld c, $5d                                     ; $72ce: $0e $5d
    rst $10                                       ; $72d0: $d7
    sub h                                         ; $72d1: $94
    ld b, e                                       ; $72d2: $43
    and e                                         ; $72d3: $a3
    ld [hl], b                                    ; $72d4: $70
    ld a, [bc]                                    ; $72d5: $0a
    call $da6b                                    ; $72d6: $cd $6b $da
    ret z                                         ; $72d9: $c8

    jp nc, $dc2d                                  ; $72da: $d2 $2d $dc

    db $f4                                        ; $72dd: $f4
    ld bc, $ebdb                                  ; $72de: $01 $db $eb
    db $db                                        ; $72e1: $db
    ld a, b                                       ; $72e2: $78
    and c                                         ; $72e3: $a1
    ld a, [hl-]                                   ; $72e4: $3a
    sub $4b                                       ; $72e5: $d6 $4b
    call c, $c333                                 ; $72e7: $dc $33 $c3
    or d                                          ; $72ea: $b2
    ld d, h                                       ; $72eb: $54
    ld [hl-], a                                   ; $72ec: $32

jr_066_72ed:
    add [hl]                                      ; $72ed: $86
    ld [hl], c                                    ; $72ee: $71
    dec de                                        ; $72ef: $1b
    dec h                                         ; $72f0: $25
    ld c, d                                       ; $72f1: $4a
    rst $18                                       ; $72f2: $df
    db $10                                        ; $72f3: $10
    inc bc                                        ; $72f4: $03
    xor h                                         ; $72f5: $ac
    xor h                                         ; $72f6: $ac
    ld b, c                                       ; $72f7: $41
    adc $0a                                       ; $72f8: $ce $0a
    ld d, [hl]                                    ; $72fa: $56
    ld d, [hl]                                    ; $72fb: $56
    ld [hl], d                                    ; $72fc: $72
    add hl, bc                                    ; $72fd: $09
    ld l, a                                       ; $72fe: $6f
    cp l                                          ; $72ff: $bd
    ld [hl], b                                    ; $7300: $70
    sbc d                                         ; $7301: $9a
    ld [hl], d                                    ; $7302: $72
    xor b                                         ; $7303: $a8
    ld b, h                                       ; $7304: $44
    ld l, l                                       ; $7305: $6d
    jp nc, $ca34                                  ; $7306: $d2 $34 $ca

    cp e                                          ; $7309: $bb
    rst $20                                       ; $730a: $e7
    ld a, c                                       ; $730b: $79
    cp l                                          ; $730c: $bd

jr_066_730d:
    ld e, [hl]                                    ; $730d: $5e
    xor a                                         ; $730e: $af
    rst $30                                       ; $730f: $f7
    inc bc                                        ; $7310: $03
    adc c                                         ; $7311: $89
    or b                                          ; $7312: $b0
    or h                                          ; $7313: $b4
    adc e                                         ; $7314: $8b
    sbc c                                         ; $7315: $99
    db $dd                                        ; $7316: $dd
    cp a                                          ; $7317: $bf
    ld e, e                                       ; $7318: $5b
    add hl, de                                    ; $7319: $19
    jr z, jr_066_72ed                             ; $731a: $28 $d1

    call nz, Call_066_7f17                        ; $731c: $c4 $17 $7f
    inc [hl]                                      ; $731f: $34
    or d                                          ; $7320: $b2
    sbc [hl]                                      ; $7321: $9e
    rst $20                                       ; $7322: $e7
    ld e, c                                       ; $7323: $59
    sbc $64                                       ; $7324: $de $64
    db $fc                                        ; $7326: $fc
    cp h                                          ; $7327: $bc
    dec hl                                        ; $7328: $2b
    ld e, [hl]                                    ; $7329: $5e
    push bc                                       ; $732a: $c5
    cp a                                          ; $732b: $bf
    ld e, [hl]                                    ; $732c: $5e
    jr c, jr_066_733c                             ; $732d: $38 $0d

    xor b                                         ; $732f: $a8
    pop bc                                        ; $7330: $c1
    dec bc                                        ; $7331: $0b
    dec sp                                        ; $7332: $3b

jr_066_7333:
    jr nc, jr_066_7333                            ; $7333: $30 $fe

    adc a                                         ; $7335: $8f
    call $9e94                                    ; $7336: $cd $94 $9e
    ld [hl], l                                    ; $7339: $75
    or d                                          ; $733a: $b2
    rst $38                                       ; $733b: $ff

jr_066_733c:
    ld a, b                                       ; $733c: $78
    inc c                                         ; $733d: $0c
    db $fd                                        ; $733e: $fd
    daa                                           ; $733f: $27
    ld h, [hl]                                    ; $7340: $66
    and e                                         ; $7341: $a3
    db $e4                                        ; $7342: $e4
    ld [de], a                                    ; $7343: $12
    sbc $fa                                       ; $7344: $de $fa
    add e                                         ; $7346: $83
    and c                                         ; $7347: $a1
    rst $30                                       ; $7348: $f7
    rlca                                          ; $7349: $07
    sbc e                                         ; $734a: $9b
    ld b, a                                       ; $734b: $47
    ld c, [hl]                                    ; $734c: $4e
    db $fd                                        ; $734d: $fd
    add hl, bc                                    ; $734e: $09
    jr nc, jr_066_730d                            ; $734f: $30 $bc

    jp nz, $20d5                                  ; $7351: $c2 $d5 $20

    ld h, a                                       ; $7354: $67
    dec b                                         ; $7355: $05
    xor e                                         ; $7356: $ab
    sub e                                         ; $7357: $93
    xor h                                         ; $7358: $ac
    db $e4                                        ; $7359: $e4
    ld [de], a                                    ; $735a: $12
    sbc $7a                                       ; $735b: $de $7a
    pop hl                                        ; $735d: $e1
    ld l, h                                       ; $735e: $6c
    ld a, [$db00]                                 ; $735f: $fa $00 $db
    add h                                         ; $7362: $84
    ld d, e                                       ; $7363: $53
    push bc                                       ; $7364: $c5
    cp e                                          ; $7365: $bb
    sbc e                                         ; $7366: $9b
    ld d, b                                       ; $7367: $50
    ld a, a                                       ; $7368: $7f
    xor h                                         ; $7369: $ac
    ld e, [hl]                                    ; $736a: $5e
    xor [hl]                                      ; $736b: $ae
    add $44                                       ; $736c: $c6 $44
    adc l                                         ; $736e: $8d
    jp nz, $9b29                                  ; $736f: $c2 $29 $9b

    adc l                                         ; $7372: $8d
    ld l, c                                       ; $7373: $69
    ld l, d                                       ; $7374: $6a
    ld a, l                                       ; $7375: $7d
    ld a, [de]                                    ; $7376: $1a
    ld a, e                                       ; $7377: $7b
    cp [hl]                                       ; $7378: $be
    db $ed                                        ; $7379: $ed
    db $f4                                        ; $737a: $f4
    ld a, d                                       ; $737b: $7a
    ld e, a                                       ; $737c: $5f
    inc c                                         ; $737d: $0c
    ld h, e                                       ; $737e: $63
    rst $30                                       ; $737f: $f7
    rlca                                          ; $7380: $07
    ld [c], a                                     ; $7381: $e2
    cpl                                           ; $7382: $2f
    ld b, $36                                     ; $7383: $06 $36
    ld a, [bc]                                    ; $7385: $0a
    and a                                         ; $7386: $a7
    db $f4                                        ; $7387: $f4
    dec c                                         ; $7388: $0d
    ld sp, $8e40                                  ; $7389: $31 $40 $8e
    or $a9                                        ; $738c: $f6 $a9
    adc $fd                                       ; $738e: $ce $fd
    ld bc, $96e2                                  ; $7390: $01 $e2 $96
    ld c, [hl]                                    ; $7393: $4e
    sbc $dd                                       ; $7394: $de $dd
    add c                                         ; $7396: $81
    ld h, [hl]                                    ; $7397: $66
    ld b, h                                       ; $7398: $44
    xor l                                         ; $7399: $ad
    sub e                                         ; $739a: $93
    xor h                                         ; $739b: $ac
    db $e4                                        ; $739c: $e4
    ld [de], a                                    ; $739d: $12
    sbc $7a                                       ; $739e: $de $7a
    pop hl                                        ; $73a0: $e1
    adc b                                         ; $73a1: $88
    ld a, [de]                                    ; $73a2: $1a
    add l                                         ; $73a3: $85
    db $d3                                        ; $73a4: $d3
    adc h                                         ; $73a5: $8c
    jp nc, Jump_000_11b7                          ; $73a6: $d2 $b7 $11

    db $fc                                        ; $73a9: $fc
    inc h                                         ; $73aa: $24
    ld [hl], h                                    ; $73ab: $74
    jp $9b07                                      ; $73ac: $c3 $07 $9b


    ld b, a                                       ; $73af: $47
    sub $49                                       ; $73b0: $d6 $49
    or $9f                                        ; $73b2: $f6 $9f
    sbc b                                         ; $73b4: $98
    adc l                                         ; $73b5: $8d
    sub d                                         ; $73b6: $92
    ld c, e                                       ; $73b7: $4b
    ld a, b                                       ; $73b8: $78
    db $eb                                        ; $73b9: $eb
    add l                                         ; $73ba: $85
    inc hl                                        ; $73bb: $23
    ld [$723f], a                                 ; $73bc: $ea $3f $72
    cp d                                          ; $73bf: $ba
    xor [hl]                                      ; $73c0: $ae
    add hl, hl                                    ; $73c1: $29
    add a                                         ; $73c2: $87
    ld h, $b9                                     ; $73c3: $26 $b9
    ld a, d                                       ; $73c5: $7a
    ld l, h                                       ; $73c6: $6c
    ld b, b                                       ; $73c7: $40
    dec d                                         ; $73c8: $15
    or [hl]                                       ; $73c9: $b6
    jp hl                                         ; $73ca: $e9


    inc bc                                        ; $73cb: $03
    db $db                                        ; $73cc: $db
    db $eb                                        ; $73cd: $eb
    db $db                                        ; $73ce: $db
    ld a, b                                       ; $73cf: $78
    and c                                         ; $73d0: $a1
    ld a, [hl-]                                   ; $73d1: $3a
    sub $4b                                       ; $73d2: $d6 $4b
    call c, $c333                                 ; $73d4: $dc $33 $c3
    or d                                          ; $73d7: $b2
    inc [hl]                                      ; $73d8: $34
    ld h, b                                       ; $73d9: $60
    add l                                         ; $73da: $85
    ld a, [hl+]                                   ; $73db: $2a
    dec a                                         ; $73dc: $3d
    or b                                          ; $73dd: $b0
    ei                                            ; $73de: $fb
    inc bc                                        ; $73df: $03
    adc c                                         ; $73e0: $89
    ld [hl], $bf                                  ; $73e1: $36 $bf
    inc sp                                        ; $73e3: $33
    ld [hl], $b2                                  ; $73e4: $36 $b2
    sbc [hl]                                      ; $73e6: $9e
    rst $20                                       ; $73e7: $e7
    ld e, c                                       ; $73e8: $59
    sbc $64                                       ; $73e9: $de $64
    db $fc                                        ; $73eb: $fc
    cp h                                          ; $73ec: $bc
    cp e                                          ; $73ed: $bb
    ld h, l                                       ; $73ee: $65
    xor l                                         ; $73ef: $ad
    bit 3, d                                      ; $73f0: $cb $5a
    sub a                                         ; $73f2: $97
    or a                                          ; $73f3: $b7
    or d                                          ; $73f4: $b2
    pop de                                        ; $73f5: $d1
    ld [$0c78], a                                 ; $73f6: $ea $78 $0c
    call $cc2e                                    ; $73f9: $cd $2e $cc
    db $fd                                        ; $73fc: $fd
    ld bc, $8fe7                                  ; $73fd: $01 $e7 $8f
    ld h, [hl]                                    ; $7400: $66
    jp c, Jump_000_0363                           ; $7401: $da $63 $03

    adc d                                         ; $7404: $8a
    ld hl, sp+$4f                                 ; $7405: $f8 $4f
    call z, $ab46                                 ; $7407: $cc $46 $ab
    sub e                                         ; $740a: $93
    xor h                                         ; $740b: $ac
    ld [hl], a                                    ; $740c: $77
    ld c, h                                       ; $740d: $4c
    or d                                          ; $740e: $b2
    ld bc, $c835                                  ; $740f: $01 $35 $c8
    ld e, c                                       ; $7412: $59
    pop bc                                        ; $7413: $c1

jr_066_7414:
    ld [$2b24], a                                 ; $7414: $ea $24 $2b
    cp c                                          ; $7417: $b9
    add h                                         ; $7418: $84
    or a                                          ; $7419: $b7
    ld e, [hl]                                    ; $741a: $5e
    jr c, jr_066_7414                             ; $741b: $38 $f7

    ld a, l                                       ; $741d: $7d
    rst $30                                       ; $741e: $f7
    inc a                                         ; $741f: $3c
    rla                                           ; $7420: $17
    scf                                           ; $7421: $37
    ld a, d                                       ; $7422: $7a
    sbc l                                         ; $7423: $9d
    cp h                                          ; $7424: $bc
    ccf                                           ; $7425: $3f
    db $db                                        ; $7426: $db
    add $24                                       ; $7427: $c6 $24
    rla                                           ; $7429: $17
    adc c                                         ; $742a: $89
    sbc b                                         ; $742b: $98
    pop de                                        ; $742c: $d1
    rla                                           ; $742d: $17
    jp Jump_066_69fb                              ; $742e: $c3 $fb $69


    dec de                                        ; $7431: $1b
    inc sp                                        ; $7432: $33
    ld [hl], $3e                                  ; $7433: $36 $3e
    halt                                          ; $7435: $76
    cp d                                          ; $7436: $ba
    sub l                                         ; $7437: $95
    pop de                                        ; $7438: $d1
    ld [hl], c                                    ; $7439: $71
    xor c                                         ; $743a: $a9
    ld hl, sp-$61                                 ; $743b: $f8 $9f
    dec e                                         ; $743d: $1d
    sub a                                         ; $743e: $97

jr_066_743f:
    or a                                          ; $743f: $b7
    adc e                                         ; $7440: $8b
    ld h, c                                       ; $7441: $61
    ld a, [de]                                    ; $7442: $1a
    ret nc                                        ; $7443: $d0

    call $b313                                    ; $7444: $cd $13 $b3
    ld d, c                                       ; $7447: $51
    ld [hl], d                                    ; $7448: $72

jr_066_7449:
    add hl, bc                                    ; $7449: $09
    ld l, a                                       ; $744a: $6f
    db $fd                                        ; $744b: $fd
    pop bc                                        ; $744c: $c1
    ld d, b                                       ; $744d: $50
    ld d, c                                       ; $744e: $51
    ld [hl], a                                    ; $744f: $77
    jr nz, jr_066_743f                            ; $7450: $20 $ed

    ld h, d                                       ; $7452: $62
    ld h, b                                       ; $7453: $60
    inc de                                        ; $7454: $13
    jp nz, Jump_000_2f5b                          ; $7455: $c2 $5b $2f

    sbc h                                         ; $7458: $9c
    ld e, [hl]                                    ; $7459: $5e
    adc d                                         ; $745a: $8a
    push de                                       ; $745b: $d5
    db $d3                                        ; $745c: $d3
    ld c, h                                       ; $745d: $4c
    ld d, c                                       ; $745e: $51
    dec h                                         ; $745f: $25
    or l                                          ; $7460: $b5
    ret                                           ; $7461: $c9


    or l                                          ; $7462: $b5
    ld a, [bc]                                    ; $7463: $0a
    ld e, b                                       ; $7464: $58
    dec hl                                        ; $7465: $2b
    sub a                                         ; $7466: $97
    or h                                          ; $7467: $b4
    sub e                                         ; $7468: $93
    call $fe90                                    ; $7469: $cd $90 $fe
    inc [hl]                                      ; $746c: $34
    push hl                                       ; $746d: $e5
    ret nc                                        ; $746e: $d0

    nop                                           ; $746f: $00
    and l                                         ; $7470: $a5
    ld c, a                                       ; $7471: $4f
    jp $d70f                                      ; $7472: $c3 $0f $d7


    ld b, b                                       ; $7475: $40
    xor l                                         ; $7476: $ad
    ld l, a                                       ; $7477: $6f
    call z, $f058                                 ; $7478: $cc $58 $f0
    adc h                                         ; $747b: $8c
    ld a, d                                       ; $747c: $7a
    ld a, a                                       ; $747d: $7f
    sub a                                         ; $747e: $97
    jr c, jr_066_7449                             ; $747f: $38 $c8

    ld c, [hl]                                    ; $7481: $4e
    dec c                                         ; $7482: $0d
    add hl, hl                                    ; $7483: $29
    rst $30                                       ; $7484: $f7
    db $f4                                        ; $7485: $f4
    push hl                                       ; $7486: $e5
    ld [hl], c                                    ; $7487: $71
    sbc e                                         ; $7488: $9b
    ld a, d                                       ; $7489: $7a
    sbc [hl]                                      ; $748a: $9e
    rst $10                                       ; $748b: $d7
    db $eb                                        ; $748c: $eb
    push af                                       ; $748d: $f5
    ld a, d                                       ; $748e: $7a
    rst $28                                       ; $748f: $ef
    rrca                                          ; $7490: $0f
    db $db                                        ; $7491: $db
    ld e, [hl]                                    ; $7492: $5e
    ld c, h                                       ; $7493: $4c
    cp e                                          ; $7494: $bb
    ld [hl], l                                    ; $7495: $75
    ld a, [c]                                     ; $7496: $f2
    xor $76                                       ; $7497: $ee $76
    ld d, a                                       ; $7499: $57
    rst $28                                       ; $749a: $ef
    cp h                                          ; $749b: $bc
    jp c, Jump_000_0f38                           ; $749c: $da $38 $0f

    jp Jump_066_5c74                              ; $749f: $c3 $74 $5c


    cp c                                          ; $74a2: $b9
    and h                                         ; $74a3: $a4
    db $dd                                        ; $74a4: $dd
    ld a, [hl-]                                   ; $74a5: $3a
    ld e, c                                       ; $74a6: $59
    ld l, b                                       ; $74a7: $68
    ld e, [hl]                                    ; $74a8: $5e
    dec hl                                        ; $74a9: $2b
    db $eb                                        ; $74aa: $eb
    dec de                                        ; $74ab: $1b
    jp nc, Jump_000_3ab4                          ; $74ac: $d2 $b4 $3a

    ret                                           ; $74af: $c9


    ld a, [$fcb4]                                 ; $74b0: $fa $b4 $fc
    ld [bc], a                                    ; $74b3: $02
    rst $28                                       ; $74b4: $ef
    ld e, [hl]                                    ; $74b5: $5e
    cp b                                          ; $74b6: $b8
    sub $f1                                       ; $74b7: $d6 $f1
    jp nz, $bff0                                  ; $74b9: $c2 $f0 $bf

    ld a, [hl-]                                   ; $74bc: $3a
    ret                                           ; $74bd: $c9


    ld a, [de]                                    ; $74be: $1a
    cp $91                                        ; $74bf: $fe $91
    ld a, $a2                                     ; $74c1: $3e $a2
    or d                                          ; $74c3: $b2
    ld l, h                                       ; $74c4: $6c
    jp z, Jump_066_7641                           ; $74c5: $ca $41 $76

    ld a, [de]                                    ; $74c8: $1a
    or b                                          ; $74c9: $b0
    sbc d                                         ; $74ca: $9a
    ld h, l                                       ; $74cb: $65
    dec b                                         ; $74cc: $05
    ld d, l                                       ; $74cd: $55
    call c, $684d                                 ; $74ce: $dc $4d $68
    ld h, h                                       ; $74d1: $64
    ld h, b                                       ; $74d2: $60
    inc bc                                        ; $74d3: $03
    ld [$3175], a                                 ; $74d4: $ea $75 $31
    ld c, l                                       ; $74d7: $4d
    ld l, e                                       ; $74d8: $6b
    ld h, h                                       ; $74d9: $64
    dec a                                         ; $74da: $3d
    rst $08                                       ; $74db: $cf
    or e                                          ; $74dc: $b3
    cp h                                          ; $74dd: $bc
    ret                                           ; $74de: $c9


    ld hl, sp+$29                                 ; $74df: $f8 $29
    xor d                                         ; $74e1: $aa
    ccf                                           ; $74e2: $3f
    ld d, [hl]                                    ; $74e3: $56
    cpl                                           ; $74e4: $2f
    ld d, a                                       ; $74e5: $57
    ld h, e                                       ; $74e6: $63
    rst $30                                       ; $74e7: $f7
    rlca                                          ; $74e8: $07
    ld e, e                                       ; $74e9: $5b
    db $dd                                        ; $74ea: $dd
    bit 2, e                                      ; $74eb: $cb $53
    rrca                                          ; $74ed: $0f
    and h                                         ; $74ee: $a4
    xor b                                         ; $74ef: $a8
    adc c                                         ; $74f0: $89
    ret nz                                        ; $74f1: $c0

    ld a, [bc]                                    ; $74f2: $0a
    ld a, [hl+]                                   ; $74f3: $2a
    xor d                                         ; $74f4: $aa
    add b                                         ; $74f5: $80
    or l                                          ; $74f6: $b5
    ld h, [hl]                                    ; $74f7: $66
    inc [hl]                                      ; $74f8: $34
    cp h                                          ; $74f9: $bc
    dec d                                         ; $74fa: $15
    inc l                                         ; $74fb: $2c
    ccf                                           ; $74fc: $3f
    call CopyHL2DE_196                            ; $74fd: $cd $e8 $11
    ld e, $af                                     ; $7500: $1e $af
    rst $10                                       ; $7502: $d7
    db $eb                                        ; $7503: $eb
    push af                                       ; $7504: $f5
    ld e, $79                                     ; $7505: $1e $79
    ld d, a                                       ; $7507: $57
    inc a                                         ; $7508: $3c
    dec a                                         ; $7509: $3d
    add $86                                       ; $750a: $c6 $86
    or a                                          ; $750c: $b7
    ld l, e                                       ; $750d: $6b
    and e                                         ; $750e: $a3

jr_066_750f:
    ld b, h                                       ; $750f: $44

Call_066_7510:
    rst $38                                       ; $7510: $ff
    sub c                                         ; $7511: $91
    ld d, e                                       ; $7512: $53
    adc c                                         ; $7513: $89
    ld a, [$3aa3]                                 ; $7514: $fa $a3 $3a
    ld e, l                                       ; $7517: $5d
    sbc $ca                                       ; $7518: $de $ca
    ld l, b                                       ; $751a: $68
    dec c                                         ; $751b: $0d
    ret nc                                        ; $751c: $d0

    call z, $2e4a                                 ; $751d: $cc $4a $2e
    pop hl                                        ; $7520: $e1
    xor l                                         ; $7521: $ad
    rla                                           ; $7522: $17
    adc $a6                                       ; $7523: $ce $a6
    rrca                                          ; $7525: $0f
    add hl, bc                                    ; $7526: $09
    sbc l                                         ; $7527: $9d
    add $59                                       ; $7528: $c6 $59
    ld sp, $aecf                                  ; $752a: $31 $cf $ae
    rla                                           ; $752d: $17
    sub e                                         ; $752e: $93
    ld d, e                                       ; $752f: $53
    ld bc, $f56b                                  ; $7530: $01 $6b $f5
    ld l, l                                       ; $7533: $6d
    ld a, [hl]                                    ; $7534: $7e
    ld h, a                                       ; $7535: $67
    db $e3                                        ; $7536: $e3
    ld a, [de]                                    ; $7537: $1a
    ld e, c                                       ; $7538: $59
    rst $08                                       ; $7539: $cf
    di                                            ; $753a: $f3
    inc l                                         ; $753b: $2c
    ld l, a                                       ; $753c: $6f
    ld [hl-], a                                   ; $753d: $32
    ld a, [hl]                                    ; $753e: $7e
    ld l, [hl]                                    ; $753f: $6e
    ld a, [$3b00]                                 ; $7540: $fa $00 $3b
    sbc [hl]                                      ; $7543: $9e
    inc d                                         ; $7544: $14
    ld [hl], l                                    ; $7545: $75
    ld a, [de]                                    ; $7546: $1a
    ld h, a                                       ; $7547: $67
    push bc                                       ; $7548: $c5
    inc a                                         ; $7549: $3c
    cp e                                          ; $754a: $bb
    xor $fb                                       ; $754b: $ee $fb
    ld l, $93                                     ; $754d: $2e $93
    sub b                                         ; $754f: $90
    and d                                         ; $7550: $a2
    ld a, [$bf36]                                 ; $7551: $fa $36 $bf
    inc sp                                        ; $7554: $33
    cp h                                          ; $7555: $bc
    ld [$7793], a                                 ; $7556: $ea $93 $77
    or a                                          ; $7559: $b7
    ld [hl], a                                    ; $755a: $77
    ld a, c                                       ; $755b: $79
    dec hl                                        ; $755c: $2b
    sbc e                                         ; $755d: $9b
    ld b, [hl]                                    ; $755e: $46
    pop hl                                        ; $755f: $e1
    inc d                                         ; $7560: $14
    sbc d                                         ; $7561: $9a
    rst $10                                       ; $7562: $d7
    cp d                                          ; $7563: $ba
    xor h                                         ; $7564: $ac
    db $dd                                        ; $7565: $dd
    dec d                                         ; $7566: $15
    rst $08                                       ; $7567: $cf
    ld a, a                                       ; $7568: $7f
    ld a, [c]                                     ; $7569: $f2
    ret                                           ; $756a: $c9


    dec c                                         ; $756b: $0d
    rra                                           ; $756c: $1f
    add hl, bc                                    ; $756d: $09
    xor [hl]                                      ; $756e: $ae
    ld d, c                                       ; $756f: $51
    jr c, jr_066_750f                             ; $7570: $38 $9d

    ld h, [hl]                                    ; $7572: $66
    call nz, $dce4                                ; $7573: $c4 $e4 $dc
    ld c, l                                       ; $7576: $4d
    call nz, $9532                                ; $7577: $c4 $32 $95
    adc b                                         ; $757a: $88
    and e                                         ; $757b: $a3
    ld h, l                                       ; $757c: $65
    ld a, d                                       ; $757d: $7a
    adc h                                         ; $757e: $8c
    adc l                                         ; $757f: $8d
    jp nz, Jump_000_34e9                          ; $7580: $c2 $e9 $34

    inc hl                                        ; $7583: $23
    ld h, $e7                                     ; $7584: $26 $e7
    xor $f6                                       ; $7586: $ee $f6
    jr @+$52                                      ; $7588: $18 $50

    ld a, a                                       ; $758a: $7f
    ld [bc], a                                    ; $758b: $02
    db $ec                                        ; $758c: $ec
    or c                                          ; $758d: $b1
    ret nc                                        ; $758e: $d0

    ld c, h                                       ; $758f: $4c
    db $db                                        ; $7590: $db
    call nc, $b8cb                                ; $7591: $d4 $cb $b8
    xor h                                         ; $7594: $ac
    or b                                          ; $7595: $b0
    xor e                                         ; $7596: $ab
    adc h                                         ; $7597: $8c
    ld bc, $b275                                  ; $7598: $01 $75 $b2
    ld e, e                                       ; $759b: $5b
    ld e, l                                       ; $759c: $5d
    ld a, [hl-]                                   ; $759d: $3a

jr_066_759e:
    cp l                                          ; $759e: $bd
    and b                                         ; $759f: $a0
    inc l                                         ; $75a0: $2c
    inc [hl]                                      ; $75a1: $34
    cp e                                          ; $75a2: $bb
    or b                                          ; $75a3: $b0
    or [hl]                                       ; $75a4: $b6
    ld [hl], c                                    ; $75a5: $71
    sbc c                                         ; $75a6: $99
    ei                                            ; $75a7: $fb
    cp [hl]                                       ; $75a8: $be
    ccf                                           ; $75a9: $3f
    sub a                                         ; $75aa: $97

jr_066_75ab:
    ld hl, $a726                                  ; $75ab: $21 $26 $a7
    db $ec                                        ; $75ae: $ec
    ld d, [hl]                                    ; $75af: $56
    ld l, $e1                                     ; $75b0: $2e $e1
    xor l                                         ; $75b2: $ad
    rla                                           ; $75b3: $17
    ld c, [hl]                                    ; $75b4: $4e
    jp $b768                                      ; $75b5: $c3 $68 $b7


    jp nc, Jump_000_1369                          ; $75b8: $d2 $69 $13

    call nc, $cddf                                ; $75bb: $d4 $df $cd
    ld e, [hl]                                    ; $75be: $5e
    ld e, $bd                                     ; $75bf: $1e $bd
    ld a, e                                       ; $75c1: $7b
    sbc [hl]                                      ; $75c2: $9e
    adc e                                         ; $75c3: $8b
    dec de                                        ; $75c4: $1b
    cp l                                          ; $75c5: $bd
    ld c, [hl]                                    ; $75c6: $4e
    sbc $dd                                       ; $75c7: $de $dd
    ld e, [hl]                                    ; $75c9: $5e
    rst $18                                       ; $75ca: $df
    add $7b                                       ; $75cb: $c6 $7b
    rst $30                                       ; $75cd: $f7
    ld [de], a                                    ; $75ce: $12
    rst $30                                       ; $75cf: $f7
    call z, $2cb0                                 ; $75d0: $cc $b0 $2c
    sub l                                         ; $75d3: $95
    adc h                                         ; $75d4: $8c
    ld h, c                                       ; $75d5: $61
    call c, $8946                                 ; $75d6: $dc $46 $89
    ld a, [$bf36]                                 ; $75d9: $fa $36 $bf
    inc sp                                        ; $75dc: $33
    ld e, d                                       ; $75dd: $5a
    sbc l                                         ; $75de: $9d
    ld h, h                                       ; $75df: $64
    rst $38                                       ; $75e0: $ff
    adc c                                         ; $75e1: $89
    reti                                          ; $75e2: $d9


    jr z, jr_066_759e                             ; $75e3: $28 $b9

    add h                                         ; $75e5: $84
    or a                                          ; $75e6: $b7
    ld e, [hl]                                    ; $75e7: $5e

Call_066_75e8:
    jr c, jr_066_7661                             ; $75e8: $38 $77

    rst $08                                       ; $75ea: $cf

jr_066_75eb:
    di                                            ; $75eb: $f3
    ld a, d                                       ; $75ec: $7a
    cp l                                          ; $75ed: $bd
    ld e, [hl]                                    ; $75ee: $5e
    rst $28                                       ; $75ef: $ef
    db $dd                                        ; $75f0: $dd
    call nz, $2809                                ; $75f1: $c4 $09 $28
    dec b                                         ; $75f4: $05
    cp b                                          ; $75f5: $b8
    ld b, b                                       ; $75f6: $40
    db $db                                        ; $75f7: $db
    jr z, jr_066_75ab                             ; $75f8: $28 $b1

    jp hl                                         ; $75fa: $e9


    inc bc                                        ; $75fb: $03
    sbc e                                         ; $75fc: $9b
    db $dd                                        ; $75fd: $dd
    dec bc                                        ; $75fe: $0b
    inc c                                         ; $75ff: $0c
    db $d3                                        ; $7600: $d3
    ld a, a                                       ; $7601: $7f
    ld h, h                                       ; $7602: $64
    ld e, c                                       ; $7603: $59
    push hl                                       ; $7604: $e5
    jp nz, $9406                                  ; $7605: $c2 $06 $94

    ld l, [hl]                                    ; $7608: $6e
    ld h, c                                       ; $7609: $61
    jp Jump_000_1368                              ; $760a: $c3 $68 $13


    inc [hl]                                      ; $760d: $34
    cp e                                          ; $760e: $bb
    jr nc, jr_066_75eb                            ; $760f: $30 $da

    xor l                                         ; $7611: $ad
    ld l, $9d                                     ; $7612: $2e $9d
    ld e, [hl]                                    ; $7614: $5e
    and b                                         ; $7615: $a0
    ld [hl], a                                    ; $7616: $77
    ld a, e                                       ; $7617: $7b
    add hl, de                                    ; $7618: $19
    ld h, d                                       ; $7619: $62
    ld [hl], d                                    ; $761a: $72
    cp d                                          ; $761b: $ba
    ld a, d                                       ; $761c: $7a
    sbc d                                         ; $761d: $9a
    and a                                         ; $761e: $a7
    db $d3                                        ; $761f: $d3
    ld b, h                                       ; $7620: $44
    ld h, b                                       ; $7621: $60
    dec b                                         ; $7622: $05
    dec l                                         ; $7623: $2d
    adc e                                         ; $7624: $8b
    sbc b                                         ; $7625: $98
    adc l                                         ; $7626: $8d
    ld d, [hl]                                    ; $7627: $56
    ld d, h                                       ; $7628: $54
    ld sp, hl                                     ; $7629: $f9
    xor h                                         ; $762a: $ac
    ld bc, $d65d                                  ; $762b: $01 $5d $d6
    ld a, [de]                                    ; $762e: $1a
    ld b, a                                       ; $762f: $47
    cp e                                          ; $7630: $bb
    rst $00                                       ; $7631: $c7

Jump_066_7632:
    sub d                                         ; $7632: $92
    sbc a                                         ; $7633: $9f
    inc e                                         ; $7634: $1c
    ld l, l                                       ; $7635: $6d
    add [hl]                                      ; $7636: $86
    db $f4                                        ; $7637: $f4
    ld b, a                                       ; $7638: $47
    rst $28                                       ; $7639: $ef
    rrca                                          ; $763a: $0f
    adc c                                         ; $763b: $89
    ld [hl], $bf                                  ; $763c: $36 $bf
    inc sp                                        ; $763e: $33
    ld l, d                                       ; $763f: $6a
    ld d, e                                       ; $7640: $53

Jump_066_7641:
    adc [hl]                                      ; $7641: $8e
    ld c, e                                       ; $7642: $4b
    jp z, $fac1                                   ; $7643: $ca $c1 $fa

    rst $08                                       ; $7646: $cf
    ld d, e                                       ; $7647: $53
    sub $a7                                       ; $7648: $d6 $a7
    or c                                          ; $764a: $b1
    dec bc                                        ; $764b: $0b
    ld l, h                                       ; $764c: $6c
    db $d3                                        ; $764d: $d3
    rlca                                          ; $764e: $07
    db $db                                        ; $764f: $db
    ld h, e                                       ; $7650: $63
    ld b, b                                       ; $7651: $40
    and c                                         ; $7652: $a1
    ld a, c                                       ; $7653: $79
    xor l                                         ; $7654: $ad
    db $d3                                        ; $7655: $d3
    push hl                                       ; $7656: $e5
    xor l                                         ; $7657: $ad
    ld l, h                                       ; $7658: $6c
    ld b, h                                       ; $7659: $44
    ld c, l                                       ; $765a: $4d
    inc b                                         ; $765b: $04
    ld d, [hl]                                    ; $765c: $56
    ret nc                                        ; $765d: $d0

    ld c, l                                       ; $765e: $4d
    rra                                           ; $765f: $1f
    rla                                           ; $7660: $17

jr_066_7661:
    jp $aeba                                      ; $7661: $c3 $ba $ae


jr_066_7664:
    ld e, c                                       ; $7664: $59
    jr c, jr_066_7664                             ; $7665: $38 $fd

    sub e                                         ; $7667: $93
    call z, $f773                                 ; $7668: $cc $73 $f7
    ld [de], a                                    ; $766b: $12
    add a                                         ; $766c: $87
    ld h, [hl]                                    ; $766d: $66
    ld l, $5d                                     ; $766e: $2e $5d
    pop bc                                        ; $7670: $c1
    and b                                         ; $7671: $a0
    cp l                                          ; $7672: $bd
    db $ec                                        ; $7673: $ec
    adc d                                         ; $7674: $8a
    ld c, l                                       ; $7675: $4d
    rra                                           ; $7676: $1f
    ld [c], a                                     ; $7677: $e2
    add hl, hl                                    ; $7678: $29
    rst $30                                       ; $7679: $f7
    ld a, [bc]                                    ; $767a: $0a
    call $a26b                                    ; $767b: $cd $6b $a2
    ld l, [hl]                                    ; $767e: $6e
    and c                                         ; $767f: $a1
    reti                                          ; $7680: $d9


    ld c, [hl]                                    ; $7681: $4e
    ld d, c                                       ; $7682: $51
    ld d, e                                       ; $7683: $53
    adc [hl]                                      ; $7684: $8e
    adc d                                         ; $7685: $8a
    add $59                                       ; $7686: $c6 $59
    call Call_000_01fd                            ; $7688: $cd $fd $01
    db $db                                        ; $768b: $db
    dec a                                         ; $768c: $3d
    or $d2                                        ; $768d: $f6 $d2
    inc c                                         ; $768f: $0c
    ld [hl], e                                    ; $7690: $73
    rst $30                                       ; $7691: $f7
    inc a                                         ; $7692: $3c
    xor a                                         ; $7693: $af
    rst $10                                       ; $7694: $d7
    db $eb                                        ; $7695: $eb
    push af                                       ; $7696: $f5
    ld a, [hl]                                    ; $7697: $7e
    sub a                                         ; $7698: $97
    ld [hl], c                                    ; $7699: $71
    jp hl                                         ; $769a: $e9


    ccf                                           ; $769b: $3f
    ld [hl], d                                    ; $769c: $72
    ld a, [bc]                                    ; $769d: $0a
    rst $10                                       ; $769e: $d7
    ldh a, [rHDMA4]                               ; $769f: $f0 $54
    ld hl, $e1ea                                  ; $76a1: $21 $ea $e1
    add hl, hl                                    ; $76a4: $29
    ld b, a                                       ; $76a5: $47
    push bc                                       ; $76a6: $c5
    pop hl                                        ; $76a7: $e1
    rst $30                                       ; $76a8: $f7
    rlca                                          ; $76a9: $07
    db $db                                        ; $76aa: $db
    sub a                                         ; $76ab: $97
    dec [hl]                                      ; $76ac: $35
    ld d, c                                       ; $76ad: $51
    or a                                          ; $76ae: $b7
    ret nc                                        ; $76af: $d0

    ld l, h                                       ; $76b0: $6c
    rst $20                                       ; $76b1: $e7
    db $dd                                        ; $76b2: $dd
    inc b                                         ; $76b3: $04
    call Call_066_5a6b                            ; $76b4: $cd $6b $5a
    adc c                                         ; $76b7: $89
    dec h                                         ; $76b8: $25
    add hl, sp                                    ; $76b9: $39
    or [hl]                                       ; $76ba: $b6
    jp hl                                         ; $76bb: $e9


    inc bc                                        ; $76bc: $03
    dec sp                                        ; $76bd: $3b
    sbc [hl]                                      ; $76be: $9e
    cp h                                          ; $76bf: $bc
    ld a, e                                       ; $76c0: $7b
    adc [hl]                                      ; $76c1: $8e
    rst $10                                       ; $76c2: $d7
    db $eb                                        ; $76c3: $eb
    push af                                       ; $76c4: $f5
    ld a, d                                       ; $76c5: $7a
    rst $28                                       ; $76c6: $ef
    ld l, [hl]                                    ; $76c7: $6e
    and l                                         ; $76c8: $a5
    ld [hl], $0a                                  ; $76c9: $36 $0a
    and a                                         ; $76cb: $a7
    ret nc                                        ; $76cc: $d0

    inc a                                         ; $76cd: $3c
    xor [hl]                                      ; $76ce: $ae
    sbc [hl]                                      ; $76cf: $9e
    sub c                                         ; $76d0: $91
    rst $30                                       ; $76d1: $f7
    rlca                                          ; $76d2: $07
    ld [c], a                                     ; $76d3: $e2
    ld c, c                                       ; $76d4: $49
    ld d, c                                       ; $76d5: $51
    xor c                                         ; $76d6: $a9
    ld a, [$0564]                                 ; $76d7: $fa $64 $05
    xor h                                         ; $76da: $ac
    ld d, l                                       ; $76db: $55
    and d                                         ; $76dc: $a2
    ld a, [$9e62]                                 ; $76dd: $fa $62 $9e
    ld c, d                                       ; $76e0: $4a
    inc l                                         ; $76e1: $2c
    ret                                           ; $76e2: $c9


    or c                                          ; $76e3: $b1
    cp e                                          ; $76e4: $bb
    ld [c], a                                     ; $76e5: $e2
    ld a, a                                       ; $76e6: $7f
    ld [hl], d                                    ; $76e7: $72
    sbc d                                         ; $76e8: $9a
    ld [hl], d                                    ; $76e9: $72
    ld l, b                                       ; $76ea: $68
    and [hl]                                      ; $76eb: $a6
    db $f4                                        ; $76ec: $f4
    xor h                                         ; $76ed: $ac
    sub e                                         ; $76ee: $93
    sub l                                         ; $76ef: $95
    add sp, $6a                                   ; $76f0: $e8 $6a
    ld e, h                                       ; $76f2: $5c
    rla                                           ; $76f3: $17
    ld c, b                                       ; $76f4: $48
    adc a                                         ; $76f5: $8f
    pop de                                        ; $76f6: $d1
    ld a, [de]                                    ; $76f7: $1a
    and b                                         ; $76f8: $a0
    add hl, de                                    ; $76f9: $19
    push af                                       ; $76fa: $f5
    ld [c], a                                     ; $76fb: $e2
    push hl                                       ; $76fc: $e5
    or a                                          ; $76fd: $b7
    ld a, [hl]                                    ; $76fe: $7e
    xor $0f                                       ; $76ff: $ee $0f
    add hl, bc                                    ; $7701: $09
    pop af                                        ; $7702: $f1
    sbc a                                         ; $7703: $9f
    sbc b                                         ; $7704: $98
    dec c                                         ; $7705: $0d
    xor a                                         ; $7706: $af
    db $d3                                        ; $7707: $d3
    push hl                                       ; $7708: $e5
    xor l                                         ; $7709: $ad
    ld l, h                                       ; $770a: $6c
    ld a, [de]                                    ; $770b: $1a
    xor b                                         ; $770c: $a8
    db $fd                                        ; $770d: $fd
    daa                                           ; $770e: $27
    ld h, [hl]                                    ; $770f: $66
    and e                                         ; $7710: $a3
    db $e4                                        ; $7711: $e4
    ld [de], a                                    ; $7712: $12
    sbc $fa                                       ; $7713: $de $fa
    add e                                         ; $7715: $83
    and c                                         ; $7716: $a1
    rst $30                                       ; $7717: $f7
    rlca                                          ; $7718: $07
    db $db                                        ; $7719: $db
    ld h, e                                       ; $771a: $63
    ld b, b                                       ; $771b: $40
    ld de, $89ff                                  ; $771c: $11 $ff $89
    reti                                          ; $771f: $d9


    xor b                                         ; $7720: $a8
    add hl, de                                    ; $7721: $19
    ld a, l                                       ; $7722: $7d
    sbc d                                         ; $7723: $9a
    ld h, a                                       ; $7724: $67
    db $d3                                        ; $7725: $d3
    rlca                                          ; $7726: $07
    db $db                                        ; $7727: $db
    sbc e                                         ; $7728: $9b
    ld [$a0ac], sp                                ; $7729: $08 $ac $a0
    call Call_000_262f                            ; $772c: $cd $2f $26
    cp c                                          ; $772f: $b9
    ld [hl], c                                    ; $7730: $71
    ld a, [bc]                                    ; $7731: $0a
    db $fd                                        ; $7732: $fd
    daa                                           ; $7733: $27
    add [hl]                                      ; $7734: $86
    rla                                           ; $7735: $17
    and [hl]                                      ; $7736: $a6
    sub c                                         ; $7737: $91
    ld d, l                                       ; $7738: $55
    ld l, $6c                                     ; $7739: $2e $6c
    ld b, b                                       ; $773b: $40
    jp hl                                         ; $773c: $e9


    ld d, $36                                     ; $773d: $16 $36
    adc h                                         ; $773f: $8c
    ld [hl], $41                                  ; $7740: $36 $41
    or e                                          ; $7742: $b3
    dec bc                                        ; $7743: $0b
    and e                                         ; $7744: $a3
    db $dd                                        ; $7745: $dd
    ld [$e9d2], a                                 ; $7746: $ea $d2 $e9
    dec b                                         ; $7749: $05
    ld a, d                                       ; $774a: $7a
    ld a, a                                       ; $774b: $7f
    add hl, bc                                    ; $774c: $09
    xor [hl]                                      ; $774d: $ae
    ld [bc], a                                    ; $774e: $02
    sub $1a                                       ; $774f: $d6 $1a
    or b                                          ; $7751: $b0
    ld a, d                                       ; $7752: $7a
    ld l, h                                       ; $7753: $6c
    add [hl]                                      ; $7754: $86
    dec [hl]                                      ; $7755: $35
    ld b, b                                       ; $7756: $40
    rst $38                                       ; $7757: $ff
    adc c                                         ; $7758: $89
    sbc $c7                                       ; $7759: $de $c7
    jr nc, jr_066_77aa                            ; $775b: $30 $4d

    add hl, sp                                    ; $775d: $39
    inc d                                         ; $775e: $14
    add $4e                                       ; $775f: $c6 $4e
    inc de                                        ; $7761: $13
    add c                                         ; $7762: $81
    dec d                                         ; $7763: $15
    db $f4                                        ; $7764: $f4
    xor $56                                       ; $7765: $ee $56
    ld a, $ed                                     ; $7767: $3e $ed
    ld [hl], c                                    ; $7769: $71
    daa                                           ; $776a: $27
    ld [hl], $71                                  ; $776b: $36 $71
    ld h, d                                       ; $776d: $62

jr_066_776e:
    ld e, $ad                                     ; $776e: $1e $ad
    ld c, a                                       ; $7770: $4f
    ld h, e                                       ; $7771: $63
    rst $08                                       ; $7772: $cf
    or a                                          ; $7773: $b7
    sbc l                                         ; $7774: $9d
    ld e, [hl]                                    ; $7775: $5e
    rst $28                                       ; $7776: $ef
    adc e                                         ; $7777: $8b
    ld h, c                                       ; $7778: $61
    xor h                                         ; $7779: $ac
    cp $58                                        ; $777a: $fe $58
    jp z, $88a1                                   ; $777c: $ca $a1 $88

    rst $38                                       ; $777f: $ff
    call nz, $d46c                                ; $7780: $c4 $6c $d4
    adc h                                         ; $7783: $8c
    and d                                         ; $7784: $a2
    ld bc, $59ab                                  ; $7785: $01 $ab $59
    ld d, [hl]                                    ; $7788: $56
    ret nc                                        ; $7789: $d0

    adc h                                         ; $778a: $8c
    ld a, [$be36]                                 ; $778b: $fa $36 $be
    dec a                                         ; $778e: $3d
    inc b                                         ; $778f: $04
    ld b, $d4                                     ; $7790: $06 $d4
    add $79                                       ; $7792: $c6 $79
    jr jr_066_776e                                ; $7794: $18 $d8

    db $fd                                        ; $7796: $fd
    db $eb                                        ; $7797: $eb
    ld a, c                                       ; $7798: $79
    sbc [hl]                                      ; $7799: $9e
    push hl                                       ; $779a: $e5
    ld c, l                                       ; $779b: $4d
    add $cf                                       ; $779c: $c6 $cf
    cp e                                          ; $779e: $bb
    sub a                                         ; $779f: $97
    ld [hl+], a                                   ; $77a0: $22
    ld l, l                                       ; $77a1: $6d
    ld d, b                                       ; $77a2: $50
    ld h, l                                       ; $77a3: $65
    rst $30                                       ; $77a4: $f7
    cpl                                           ; $77a5: $2f
    db $dd                                        ; $77a6: $dd
    jp nz, $f406                                  ; $77a7: $c2 $06 $f4

jr_066_77aa:
    ld e, h                                       ; $77aa: $5c
    ld a, b                                       ; $77ab: $78
    and c                                         ; $77ac: $a1
    db $ec                                        ; $77ad: $ec
    and $89                                       ; $77ae: $e6 $89
    reti                                          ; $77b0: $d9


    ld e, b                                       ; $77b1: $58
    ld l, d                                       ; $77b2: $6a
    push bc                                       ; $77b3: $c5
    dec l                                         ; $77b4: $2d
    ld b, e                                       ; $77b5: $43
    dec de                                        ; $77b6: $1b
    xor b                                         ; $77b7: $a8
    cp l                                          ; $77b8: $bd
    call z, $a2b0                                 ; $77b9: $cc $b0 $a2
    sub $a7                                       ; $77bc: $d6 $a7
    or c                                          ; $77be: $b1
    rst $38                                       ; $77bf: $ff
    call nz, Call_066_717f                        ; $77c0: $c4 $7f $71
    rst $08                                       ; $77c3: $cf
    jp z, $c766                                   ; $77c4: $ca $66 $c7

    jp z, Jump_000_2aa7                           ; $77c7: $ca $a7 $2a

    sbc h                                         ; $77ca: $9c
    ei                                            ; $77cb: $fb
    inc bc                                        ; $77cc: $03
    dec sp                                        ; $77cd: $3b
    db $10                                        ; $77ce: $10
    inc sp                                        ; $77cf: $33
    ld [hl], h                                    ; $77d0: $74
    ld h, e                                       ; $77d1: $63
    ld b, [hl]                                    ; $77d2: $46
    dec h                                         ; $77d3: $25
    sub [hl]                                      ; $77d4: $96
    db $e4                                        ; $77d5: $e4
    sbc b                                         ; $77d6: $98
    xor b                                         ; $77d7: $a8
    ld e, e                                       ; $77d8: $5b
    ld l, b                                       ; $77d9: $68
    or [hl]                                       ; $77da: $b6
    ld [hl], e                                    ; $77db: $73
    db $d3                                        ; $77dc: $d3
    rlca                                          ; $77dd: $07
    dec sp                                        ; $77de: $3b
    sbc [hl]                                      ; $77df: $9e
    inc d                                         ; $77e0: $14
    dec d                                         ; $77e1: $15
    pop af                                        ; $77e2: $f1
    sbc a                                         ; $77e3: $9f
    sbc b                                         ; $77e4: $98
    dec c                                         ; $77e5: $0d
    xor a                                         ; $77e6: $af
    call nc, $a8be                                ; $77e7: $d4 $be $a8
    reti                                          ; $77ea: $d9


    call c, $83fa                                 ; $77eb: $dc $fa $83
    and c                                         ; $77ee: $a1
    push af                                       ; $77ef: $f5
    ld l, c                                       ; $77f0: $69
    inc l                                         ; $77f1: $2c
    ei                                            ; $77f2: $fb
    ld c, a                                       ; $77f3: $4f
    call z, $c946                                 ; $77f4: $cc $46 $c9
    dec h                                         ; $77f7: $25
    cp h                                          ; $77f8: $bc
    push af                                       ; $77f9: $f5
    jp nz, Jump_000_3fb9                          ; $77fa: $c2 $b9 $3f

    ld e, e                                       ; $77fd: $5b
    db $dd                                        ; $77fe: $dd
    bit 2, e                                      ; $77ff: $cb $53
    rrca                                          ; $7801: $0f
    and h                                         ; $7802: $a4
    xor b                                         ; $7803: $a8
    ld e, e                                       ; $7804: $5b
    ld l, b                                       ; $7805: $68
    or [hl]                                       ; $7806: $b6
    di                                            ; $7807: $f3
    xor [hl]                                      ; $7808: $ae
    ld a, b                                       ; $7809: $78
    or a                                          ; $780a: $b7
    ld [hl-], a                                   ; $780b: $32
    ld d, b                                       ; $780c: $50
    and d                                         ; $780d: $a2
    adc c                                         ; $780e: $89
    cpl                                           ; $780f: $2f
    cp $e8                                        ; $7810: $fe $e8
    adc d                                         ; $7812: $8a
    xor a                                         ; $7813: $af
    jp hl                                         ; $7814: $e9


    pop de                                        ; $7815: $d1
    ld c, h                                       ; $7816: $4c
    ld l, e                                       ; $7817: $6b
    ld b, b                                       ; $7818: $40
    inc sp                                        ; $7819: $33
    xor h                                         ; $781a: $ac
    db $d3                                        ; $781b: $d3
    push hl                                       ; $781c: $e5
    xor l                                         ; $781d: $ad
    ld l, h                                       ; $781e: $6c
    ld a, [de]                                    ; $781f: $1a
    ret nc                                        ; $7820: $d0

    push de                                       ; $7821: $d5
    inc l                                         ; $7822: $2c
    sbc c                                         ; $7823: $99
    adc l                                         ; $7824: $8d
    xor h                                         ; $7825: $ac
    ld l, a                                       ; $7826: $6f
    call z, $f058                                 ; $7827: $cc $58 $f0
    adc h                                         ; $782a: $8c
    rst $30                                       ; $782b: $f7
    rlca                                          ; $782c: $07
    ld e, e                                       ; $782d: $5b
    ld l, b                                       ; $782e: $68
    or [hl]                                       ; $782f: $b6
    ld [hl], e                                    ; $7830: $73
    ld b, e                                       ; $7831: $43
    inc de                                        ; $7832: $13
    inc [hl]                                      ; $7833: $34
    adc a                                         ; $7834: $8f
    dec hl                                        ; $7835: $2b
    cp e                                          ; $7836: $bb
    add d                                         ; $7837: $82
    dec [hl]                                      ; $7838: $35
    push hl                                       ; $7839: $e5
    ld d, b                                       ; $783a: $50
    ld bc, $8d6b                                  ; $783b: $01 $6b $8d
    jp nz, $77a9                                  ; $783e: $c2 $a9 $77

    and e                                         ; $7841: $a3
    ld [hl], a                                    ; $7842: $77
    and e                                         ; $7843: $a3
    rst $10                                       ; $7844: $d7
    push bc                                       ; $7845: $c5
    inc [hl]                                      ; $7846: $34
    push af                                       ; $7847: $f5
    cp $00                                        ; $7848: $fe $00
    add hl, bc                                    ; $784a: $09
    pop af                                        ; $784b: $f1
    sbc a                                         ; $784c: $9f
    sbc b                                         ; $784d: $98
    dec c                                         ; $784e: $0d
    xor a                                         ; $784f: $af
    db $d3                                        ; $7850: $d3
    push hl                                       ; $7851: $e5
    xor l                                         ; $7852: $ad
    ld l, h                                       ; $7853: $6c
    ld a, [$f2c3]                                 ; $7854: $fa $c3 $f2
    db $f4                                        ; $7857: $f4
    rra                                           ; $7858: $1f
    ld e, c                                       ; $7859: $59
    or $9f                                        ; $785a: $f6 $9f
    sbc b                                         ; $785c: $98
    adc l                                         ; $785d: $8d
    sub d                                         ; $785e: $92
    ld c, e                                       ; $785f: $4b
    ld a, b                                       ; $7860: $78
    db $eb                                        ; $7861: $eb
    add l                                         ; $7862: $85
    db $d3                                        ; $7863: $d3
    rra                                           ; $7864: $1f
    sub [hl]                                      ; $7865: $96
    ld a, c                                       ; $7866: $79
    rst $18                                       ; $7867: $df
    ld [hl], a                                    ; $7868: $77
    pop de                                        ; $7869: $d1
    add b                                         ; $786a: $80
    push de                                       ; $786b: $d5
    inc l                                         ; $786c: $2c
    xor e                                         ; $786d: $ab
    or a                                          ; $786e: $b7
    ld [hl], c                                    ; $786f: $71
    cp d                                          ; $7870: $ba
    ld a, a                                       ; $7871: $7f
    dec a                                         ; $7872: $3d
    rst $08                                       ; $7873: $cf
    or e                                          ; $7874: $b3
    cp h                                          ; $7875: $bc
    ret                                           ; $7876: $c9


    ld hl, sp+$79                                 ; $7877: $f8 $79
    ld a, a                                       ; $7879: $7f
    add hl, bc                                    ; $787a: $09
    add d                                         ; $787b: $82
    ld a, a                                       ; $787c: $7f
    inc l                                         ; $787d: $2c
    adc b                                         ; $787e: $88
    add hl, de                                    ; $787f: $19
    call $f31b                                    ; $7880: $cd $1b $f3
    add $6c                                       ; $7883: $c6 $6c
    db $f4                                        ; $7885: $f4
    ld [hl], b                                    ; $7886: $70
    ld c, c                                       ; $7887: $49
    adc [hl]                                      ; $7888: $8e
    xor b                                         ; $7889: $a8
    ld e, e                                       ; $788a: $5b
    ld l, b                                       ; $788b: $68
    or [hl]                                       ; $788c: $b6
    ld d, e                                       ; $788d: $53
    ld d, h                                       ; $788e: $54
    ld [$9fe6], sp                                ; $788f: $08 $e6 $9f
    add hl, hl                                    ; $7892: $29
    ld de, $3a33                                  ; $7893: $11 $33 $3a
    ld c, l                                       ; $7896: $4d
    add hl, sp                                    ; $7897: $39
    inc d                                         ; $7898: $14
    xor [hl]                                      ; $7899: $ae
    ld d, b                                       ; $789a: $50
    rra                                           ; $789b: $1f
    add $15                                       ; $789c: $c6 $15
    rst $28                                       ; $789e: $ef
    ld e, $7b                                     ; $789f: $1e $7b
    ld c, h                                       ; $78a1: $4c
    inc de                                        ; $78a2: $13
    daa                                           ; $78a3: $27
    and $d1                                       ; $78a4: $e6 $d1
    ld a, [$f634]                                 ; $78a6: $fa $34 $f6
    ld a, h                                       ; $78a9: $7c
    db $db                                        ; $78aa: $db
    ld a, b                                       ; $78ab: $78
    cp [hl]                                       ; $78ac: $be
    ld l, l                                       ; $78ad: $6d
    inc a                                         ; $78ae: $3c
    rst $18                                       ; $78af: $df
    halt                                          ; $78b0: $76
    ld a, d                                       ; $78b1: $7a
    cp l                                          ; $78b2: $bd
    cpl                                           ; $78b3: $2f
    add [hl]                                      ; $78b4: $86
    or c                                          ; $78b5: $b1
    ei                                            ; $78b6: $fb
    inc bc                                        ; $78b7: $03
    add hl, bc                                    ; $78b8: $09
    pop af                                        ; $78b9: $f1
    sbc a                                         ; $78ba: $9f
    sbc b                                         ; $78bb: $98
    dec c                                         ; $78bc: $0d
    xor a                                         ; $78bd: $af
    db $d3                                        ; $78be: $d3
    push hl                                       ; $78bf: $e5
    xor l                                         ; $78c0: $ad
    ld l, h                                       ; $78c1: $6c
    ld a, [$f2c3]                                 ; $78c2: $fa $c3 $f2
    db $f4                                        ; $78c5: $f4
    rra                                           ; $78c6: $1f
    ld e, c                                       ; $78c7: $59
    or $9f                                        ; $78c8: $f6 $9f
    sbc b                                         ; $78ca: $98
    adc l                                         ; $78cb: $8d
    sub d                                         ; $78cc: $92
    ld c, e                                       ; $78cd: $4b
    ld a, b                                       ; $78ce: $78
    db $eb                                        ; $78cf: $eb
    add l                                         ; $78d0: $85
    db $d3                                        ; $78d1: $d3

Jump_066_78d2:
    rra                                           ; $78d2: $1f
    sub [hl]                                      ; $78d3: $96
    ld a, c                                       ; $78d4: $79
    ld a, a                                       ; $78d5: $7f
    add hl, bc                                    ; $78d6: $09
    add d                                         ; $78d7: $82
    ld a, a                                       ; $78d8: $7f
    inc l                                         ; $78d9: $2c
    adc b                                         ; $78da: $88
    add hl, de                                    ; $78db: $19
    call $f31b                                    ; $78dc: $cd $1b $f3
    add $6c                                       ; $78df: $c6 $6c
    db $f4                                        ; $78e1: $f4
    ld [hl], b                                    ; $78e2: $70
    ld c, c                                       ; $78e3: $49
    adc [hl]                                      ; $78e4: $8e
    xor b                                         ; $78e5: $a8
    ld e, e                                       ; $78e6: $5b
    ld l, b                                       ; $78e7: $68
    or [hl]                                       ; $78e8: $b6
    ld d, e                                       ; $78e9: $53
    ld d, h                                       ; $78ea: $54
    ld [$9fe6], sp                                ; $78eb: $08 $e6 $9f
    add hl, hl                                    ; $78ee: $29
    ld de, $3a33                                  ; $78ef: $11 $33 $3a
    ld c, l                                       ; $78f2: $4d
    add hl, sp                                    ; $78f3: $39
    inc d                                         ; $78f4: $14
    xor [hl]                                      ; $78f5: $ae
    ld d, b                                       ; $78f6: $50
    rra                                           ; $78f7: $1f
    add $15                                       ; $78f8: $c6 $15
    rst $28                                       ; $78fa: $ef
    ld e, $7b                                     ; $78fb: $1e $7b
    ld c, h                                       ; $78fd: $4c
    inc de                                        ; $78fe: $13
    daa                                           ; $78ff: $27
    and $d1                                       ; $7900: $e6 $d1
    ld a, [$f634]                                 ; $7902: $fa $34 $f6
    ld a, h                                       ; $7905: $7c
    db $db                                        ; $7906: $db
    ld a, b                                       ; $7907: $78
    cp [hl]                                       ; $7908: $be
    ld l, l                                       ; $7909: $6d
    inc a                                         ; $790a: $3c
    rst $18                                       ; $790b: $df
    halt                                          ; $790c: $76
    ld a, d                                       ; $790d: $7a
    cp l                                          ; $790e: $bd
    cpl                                           ; $790f: $2f
    add [hl]                                      ; $7910: $86
    or c                                          ; $7911: $b1
    cp e                                          ; $7912: $bb
    rst $20                                       ; $7913: $e7
    ld l, [hl]                                    ; $7914: $6e
    inc c                                         ; $7915: $0c
    dec de                                        ; $7916: $1b
    jp Jump_066_46da                              ; $7917: $c3 $da $46


    adc c                                         ; $791a: $89
    ld c, [hl]                                    ; $791b: $4e
    sub a                                         ; $791c: $97
    or a                                          ; $791d: $b7
    or d                                          ; $791e: $b2
    xor c                                         ; $791f: $a9
    ld c, a                                       ; $7920: $4f
    ld h, e                                       ; $7921: $63
    pop hl                                        ; $7922: $e1
    ld a, [hl-]                                   ; $7923: $3a
    dec c                                         ; $7924: $0d
    dec de                                        ; $7925: $1b
    jp $80c6                                      ; $7926: $c3 $c6 $80


    push de                                       ; $7929: $d5
    inc l                                         ; $792a: $2c
    dec hl                                        ; $792b: $2b
    ld e, b                                       ; $792c: $58
    rst $30                                       ; $792d: $f7
    rst $28                                       ; $792e: $ef
    ld d, [hl]                                    ; $792f: $56
    ld b, $4a                                     ; $7930: $06 $4a
    inc [hl]                                      ; $7932: $34
    pop af                                        ; $7933: $f1
    push bc                                       ; $7934: $c5
    rra                                           ; $7935: $1f
    rst $30                                       ; $7936: $f7
    rlca                                          ; $7937: $07
    ld [c], a                                     ; $7938: $e2
    add hl, hl                                    ; $7939: $29
    rst $30                                       ; $793a: $f7
    ld a, [bc]                                    ; $793b: $0a
    call $f76b                                    ; $793c: $cd $6b $f7
    rlca                                          ; $793f: $07
    sbc e                                         ; $7940: $9b
    ld b, a                                       ; $7941: $47
    ld c, [hl]                                    ; $7942: $4e
    and c                                         ; $7943: $a1
    ld a, c                                       ; $7944: $79
    xor l                                         ; $7945: $ad
    db $d3                                        ; $7946: $d3
    inc c                                         ; $7947: $0c
    ld d, a                                       ; $7948: $57
    rst $18                                       ; $7949: $df
    ld [hl], $fa                                  ; $794a: $36 $fa
    or [hl]                                       ; $794c: $b6
    pop de                                        ; $794d: $d1
    or a                                          ; $794e: $b7
    ld de, $3f80                                  ; $794f: $11 $80 $3f
    adc a                                         ; $7952: $8f
    xor b                                         ; $7953: $a8
    ld e, e                                       ; $7954: $5b
    ld l, b                                       ; $7955: $68
    or [hl]                                       ; $7956: $b6
    ld [hl], e                                    ; $7957: $73
    db $d3                                        ; $7958: $d3
    rlca                                          ; $7959: $07
    rst $20                                       ; $795a: $e7
    ld a, b                                       ; $795b: $78
    cp l                                          ; $795c: $bd
    ld e, [hl]                                    ; $795d: $5e
    xor a                                         ; $795e: $af
    ld d, a                                       ; $795f: $57
    ld d, h                                       ; $7960: $54
    and $3f                                       ; $7961: $e6 $3f
    ld sp, hl                                     ; $7963: $f9
    db $e4                                        ; $7964: $e4
    ld a, l                                       ; $7965: $7d
    rst $18                                       ; $7966: $df
    rra                                           ; $7967: $1f
    ld h, a                                       ; $7968: $67
    ld d, h                                       ; $7969: $54
    ld h, d                                       ; $796a: $62
    ld c, c                                       ; $796b: $49
    adc [hl]                                      ; $796c: $8e
    push de                                       ; $796d: $d5
    ld [hl], $da                                  ; $796e: $36 $da
    ld b, [hl]                                    ; $7970: $46
    ld b, e                                       ; $7971: $43
    jp c, $4aa0                                   ; $7972: $da $a0 $4a

    dec hl                                        ; $7975: $2b
    adc e                                         ; $7976: $8b
    dec b                                         ; $7977: $05
    and d                                         ; $7978: $a2
    ld l, [hl]                                    ; $7979: $6e
    and c                                         ; $797a: $a1
    reti                                          ; $797b: $d9


    adc $fb                                       ; $797c: $ce $fb
    inc bc                                        ; $797e: $03
    rla                                           ; $797f: $17
    call nz, $b30c                                ; $7980: $c4 $0c $b3
    sub c                                         ; $7983: $91
    ld a, $5c                                     ; $7984: $3e $5c
    sbc l                                         ; $7986: $9d
    ld h, h                                       ; $7987: $64
    jp hl                                         ; $7988: $e9


    ld d, $36                                     ; $7989: $16 $36

Call_066_798b:
    push hl                                       ; $798b: $e5
    ld d, b                                       ; $798c: $50
    ld l, b                                       ; $798d: $68
    and $8a                                       ; $798e: $e6 $8a
    ld h, l                                       ; $7990: $65
    inc bc                                        ; $7991: $03
    cp $31                                        ; $7992: $fe $31
    add e                                         ; $7994: $83
    ld l, l                                       ; $7995: $6d
    add sp, $65                                   ; $7996: $e8 $65
    sub b                                         ; $7998: $90
    ld [hl], l                                    ; $7999: $75

jr_066_799a:
    sub d                                         ; $799a: $92
    ld c, l                                       ; $799b: $4d
    ld b, h                                       ; $799c: $44
    db $e4                                        ; $799d: $e4
    ld a, [c]                                     ; $799e: $f2
    halt                                          ; $799f: $76
    ld [hl], c                                    ; $79a0: $71
    cp l                                          ; $79a1: $bd
    ld [hl], b                                    ; $79a2: $70
    ld a, [de]                                    ; $79a3: $1a
    ret nc                                        ; $79a4: $d0

    inc de                                        ; $79a5: $13
    sbc e                                         ; $79a6: $9b
    jr c, jr_066_79da                             ; $79a7: $38 $31

    adc a                                         ; $79a9: $8f
    ld l, [hl]                                    ; $79aa: $6e
    ld hl, sp+$00                                 ; $79ab: $f8 $00
    rst $30                                       ; $79ad: $f7
    ld a, l                                       ; $79ae: $7d
    scf                                           ; $79af: $37
    jr c, jr_066_7a15                             ; $79b0: $38 $63

    call z, Call_066_7b28                         ; $79b2: $cc $28 $7b
    cp [hl]                                       ; $79b5: $be
    ld h, c                                       ; $79b6: $61
    add l                                         ; $79b7: $85
    ld l, [hl]                                    ; $79b8: $6e
    inc de                                        ; $79b9: $13
    ld c, [hl]                                    ; $79ba: $4e
    push bc                                       ; $79bb: $c5
    ld e, l                                       ; $79bc: $5d
    ld e, $7b                                     ; $79bd: $1e $7b
    cp e                                          ; $79bf: $bb
    jr jr_066_799a                                ; $79c0: $18 $d8

    ld b, b                                       ; $79c2: $40
    db $ed                                        ; $79c3: $ed
    ld sp, hl                                     ; $79c4: $f9
    ld l, e                                       ; $79c5: $6b
    sub [hl]                                      ; $79c6: $96
    halt                                          ; $79c7: $76
    dec bc                                        ; $79c8: $0b
    or l                                          ; $79c9: $b5
    sub b                                         ; $79ca: $90
    dec a                                         ; $79cb: $3d
    or $d4                                        ; $79cc: $f6 $d4
    ld h, e                                       ; $79ce: $63
    adc a                                         ; $79cf: $8f
    dec d                                         ; $79d0: $15
    sub l                                         ; $79d1: $95
    ld e, d                                       ; $79d2: $5a
    rra                                           ; $79d3: $1f
    pop bc                                        ; $79d4: $c1
    xor b                                         ; $79d5: $a8
    push af                                       ; $79d6: $f5
    ld [hl], d                                    ; $79d7: $72
    rst $10                                       ; $79d8: $d7
    and e                                         ; $79d9: $a3

jr_066_79da:
    xor h                                         ; $79da: $ac
    cp l                                          ; $79db: $bd
    ld a, a                                       ; $79dc: $7f
    cp $24                                        ; $79dd: $fe $24
    ld [hl-], a                                   ; $79df: $32
    xor $fb                                       ; $79e0: $ee $fb
    cp $00                                        ; $79e2: $fe $00
    add hl, bc                                    ; $79e4: $09
    ld [$a6c3], a                                 ; $79e5: $ea $c3 $a6
    add hl, hl                                    ; $79e8: $29
    add a                                         ; $79e9: $87
    jp nc, $fc37                                  ; $79ea: $d2 $37 $fc

    rrca                                          ; $79ed: $0f
    ld h, l                                       ; $79ee: $65
    ld a, l                                       ; $79ef: $7d
    ld b, h                                       ; $79f0: $44
    ld l, $6f                                     ; $79f1: $2e $6f

Call_066_79f3:
    rla                                           ; $79f3: $17
    rst $10                                       ; $79f4: $d7
    dec bc                                        ; $79f5: $0b
    and a                                         ; $79f6: $a7
    sub b                                         ; $79f7: $90
    dec a                                         ; $79f8: $3d
    or c                                          ; $79f9: $b1
    adc c                                         ; $79fa: $89
    inc de                                        ; $79fb: $13
    di                                            ; $79fc: $f3
    ld l, b                                       ; $79fd: $68
    ld d, e                                       ; $79fe: $53
    ld c, $fd                                     ; $79ff: $0e $fd
    daa                                           ; $7a01: $27
    ld a, [hl+]                                   ; $7a02: $2a
    jp nc, $b9ee                                  ; $7a03: $d2 $ee $b9

    ld a, [$7d63]                                 ; $7a06: $fa $63 $7d
    ld sp, $6cc3                                  ; $7a09: $31 $c3 $6c
    and h                                         ; $7a0c: $a4
    rrca                                          ; $7a0d: $0f
    dec hl                                        ; $7a0e: $2b
    dec hl                                        ; $7a0f: $2b
    ld e, a                                       ; $7a10: $5f
    ld c, h                                       ; $7a11: $4c
    or d                                          ; $7a12: $b2
    ld [hl], h                                    ; $7a13: $74
    dec bc                                        ; $7a14: $0b

jr_066_7a15:
    ld b, l                                       ; $7a15: $45
    ld c, l                                       ; $7a16: $4d
    sbc h                                         ; $7a17: $9c
    sbc h                                         ; $7a18: $9c
    ld h, c                                       ; $7a19: $61
    dec de                                        ; $7a1a: $1b
    ld a, $89                                     ; $7a1b: $3e $89
    adc b                                         ; $7a1d: $88
    ld e, h                                       ; $7a1e: $5c
    ld e, [hl]                                    ; $7a1f: $5e
    ld h, b                                       ; $7a20: $60
    ld b, b                                       ; $7a21: $40
    inc bc                                        ; $7a22: $03
    ld a, d                                       ; $7a23: $7a
    ld h, d                                       ; $7a24: $62
    inc de                                        ; $7a25: $13
    daa                                           ; $7a26: $27
    and $51                                       ; $7a27: $e6 $51
    ld d, c                                       ; $7a29: $51
    ld [hl], a                                    ; $7a2a: $77
    ret c                                         ; $7a2b: $d8

    db $dd                                        ; $7a2c: $dd
    call nz, $19c9                                ; $7a2d: $c4 $c9 $19
    ld h, $aa                                     ; $7a30: $26 $aa
    ccf                                           ; $7a32: $3f
    ld d, [hl]                                    ; $7a33: $56
    ld h, [hl]                                    ; $7a34: $66
    sbc b                                         ; $7a35: $98

Call_066_7a36:
    pop de                                        ; $7a36: $d1
    ld a, [de]                                    ; $7a37: $1a
    and a                                         ; $7a38: $a7
    ld [de], a                                    ; $7a39: $12
    xor [hl]                                      ; $7a3a: $ae
    ccf                                           ; $7a3b: $3f

Call_066_7a3c:
    and l                                         ; $7a3c: $a5
    ccf                                           ; $7a3d: $3f
    dec de                                        ; $7a3e: $1b
    ld a, $57                                     ; $7a3f: $3e $57
    xor h                                         ; $7a41: $ac
    adc c                                         ; $7a42: $89
    ld a, [de]                                    ; $7a43: $1a
    ld e, [hl]                                    ; $7a44: $5e
    sbc d                                         ; $7a45: $9a
    or d                                          ; $7a46: $b2
    ld a, c                                       ; $7a47: $79
    jp nz, Jump_066_6768                          ; $7a48: $c2 $68 $67

    ld e, c                                       ; $7a4b: $59
    dec hl                                        ; $7a4c: $2b
    and a                                         ; $7a4d: $a7
    ld e, e                                       ; $7a4e: $5b
    ld l, b                                       ; $7a4f: $68
    or [hl]                                       ; $7a50: $b6
    di                                            ; $7a51: $f3
    ld l, [hl]                                    ; $7a52: $6e
    ld [c], a                                     ; $7a53: $e2
    inc b                                         ; $7a54: $04
    ld l, b                                       ; $7a55: $68
    and c                                         ; $7a56: $a1
    add hl, hl                                    ; $7a57: $29
    add a                                         ; $7a58: $87
    rra                                           ; $7a59: $1f
    sub $13                                       ; $7a5a: $d6 $13
    sbc e                                         ; $7a5c: $9b
    jr c, jr_066_7a90                             ; $7a5d: $38 $31

    adc a                                         ; $7a5f: $8f
    adc d                                         ; $7a60: $8a
    cp d                                          ; $7a61: $ba
    add l                                         ; $7a62: $85
    ld h, [hl]                                    ; $7a63: $66
    dec sp                                        ; $7a64: $3b
    ld b, l                                       ; $7a65: $45
    push af                                       ; $7a66: $f5
    rst $00                                       ; $7a67: $c7
    ld a, [$8662]                                 ; $7a68: $fa $62 $86
    reti                                          ; $7a6b: $d9


    ld c, b                                       ; $7a6c: $48
    rra                                           ; $7a6d: $1f
    ld b, $2d                                     ; $7a6e: $06 $2d
    ld c, e                                       ; $7a70: $4b
    or a                                          ; $7a71: $b7
    ldh a, [$fe]                                  ; $7a72: $f0 $fe
    nop                                           ; $7a74: $00
    add hl, bc                                    ; $7a75: $09
    sbc d                                         ; $7a76: $9a
    rst $10                                       ; $7a77: $d7
    or h                                          ; $7a78: $b4
    rst $38                                       ; $7a79: $ff
    ret z                                         ; $7a7a: $c8

    ld a, [hl-]                                   ; $7a7b: $3a
    ld e, c                                       ; $7a7c: $59
    xor d                                         ; $7a7d: $aa
    adc a                                         ; $7a7e: $8f
    ccf                                           ; $7a7f: $3f
    ld c, a                                       ; $7a80: $4f
    and c                                         ; $7a81: $a1
    dec hl                                        ; $7a82: $2b
    ld e, b                                       ; $7a83: $58
    nop                                           ; $7a84: $00
    jp $ba88                                      ; $7a85: $c3 $88 $ba


    add l                                         ; $7a88: $85
    ld h, [hl]                                    ; $7a89: $66
    dec sp                                        ; $7a8a: $3b
    rst $28                                       ; $7a8b: $ef
    rrca                                          ; $7a8c: $0f
    add hl, bc                                    ; $7a8d: $09
    sbc d                                         ; $7a8e: $9a
    rst $10                                       ; $7a8f: $d7

jr_066_7a90:
    sbc d                                         ; $7a90: $9a
    ld e, l                                       ; $7a91: $5d
    sbc b                                         ; $7a92: $98
    ld a, d                                       ; $7a93: $7a
    jr nz, jr_066_7adb                            ; $7a94: $20 $45

    db $dd                                        ; $7a96: $dd
    ld b, d                                       ; $7a97: $42
    or e                                          ; $7a98: $b3
    sbc l                                         ; $7a99: $9d
    sbc e                                         ; $7a9a: $9b
    ld a, $e2                                     ; $7a9b: $3e $e2
    sub l                                         ; $7a9d: $95
    ld e, h                                       ; $7a9e: $5c
    jp nz, Jump_000_2f5b                          ; $7a9f: $c2 $5b $2f

    sbc h                                         ; $7aa2: $9c
    ld b, $28                                     ; $7aa3: $06 $28
    ld a, l                                       ; $7aa5: $7d
    ld a, [de]                                    ; $7aa6: $1a
    ld a, [hl]                                    ; $7aa7: $7e
    cp b                                          ; $7aa8: $b8
    dec c                                         ; $7aa9: $0d
    rra                                           ; $7aaa: $1f
    db $db                                        ; $7aab: $db
    add h                                         ; $7aac: $84
    db $d3                                        ; $7aad: $d3
    adc h                                         ; $7aae: $8c
    ld a, [hl+]                                   ; $7aaf: $2a
    ld h, d                                       ; $7ab0: $62
    add [hl]                                      ; $7ab1: $86
    sub $03                                       ; $7ab2: $d6 $03
    add hl, hl                                    ; $7ab4: $29
    ld [$9a16], a                                 ; $7ab5: $ea $16 $9a
    db $ed                                        ; $7ab8: $ed
    call c, $01f4                                 ; $7ab9: $dc $f4 $01
    dec sp                                        ; $7abc: $3b
    sbc [hl]                                      ; $7abd: $9e
    inc d                                         ; $7abe: $14
    push de                                       ; $7abf: $d5
    db $eb                                        ; $7ac0: $eb
    ld [c], a                                     ; $7ac1: $e2
    ld b, [hl]                                    ; $7ac2: $46
    xor a                                         ; $7ac3: $af
    sub e                                         ; $7ac4: $93
    push af                                       ; $7ac5: $f5
    ld a, b                                       ; $7ac6: $78
    cp l                                          ; $7ac7: $bd
    ld e, [hl]                                    ; $7ac8: $5e
    xor a                                         ; $7ac9: $af
    rst $30                                       ; $7aca: $f7
    xor $79                                       ; $7acb: $ee $79
    di                                            ; $7acd: $f3
    ld a, [hl-]                                   ; $7ace: $3a
    ld c, l                                       ; $7acf: $4d
    inc b                                         ; $7ad0: $04

Jump_066_7ad1:
    ld d, [hl]                                    ; $7ad1: $56
    ret nc                                        ; $7ad2: $d0

    and [hl]                                      ; $7ad3: $a6
    inc e                                         ; $7ad4: $1c
    ld a, [hl+]                                   ; $7ad5: $2a
    pop de                                        ; $7ad6: $d1
    add l                                         ; $7ad7: $85
    ld [hl], c                                    ; $7ad8: $71
    db $fd                                        ; $7ad9: $fd
    cp b                                          ; $7ada: $b8

jr_066_7adb:
    ld a, [hl-]                                   ; $7adb: $3a
    ld e, c                                       ; $7adc: $59
    cpl                                           ; $7add: $2f
    ld e, [hl]                                    ; $7ade: $5e
    ld a, [hl]                                    ; $7adf: $7e
    db $eb                                        ; $7ae0: $eb
    and a                                         ; $7ae1: $a7
    add hl, hl                                    ; $7ae2: $29
    add a                                         ; $7ae3: $87
    ld c, d                                       ; $7ae4: $4a
    call nc, Call_066_443f                        ; $7ae5: $d4 $3f $44
    dec de                                        ; $7ae8: $1b
    ld b, $31                                     ; $7ae9: $06 $31
    db $e3                                        ; $7aeb: $e3
    cp $00                                        ; $7aec: $fe $00
    add hl, bc                                    ; $7aee: $09
    dec bc                                        ; $7aef: $0b
    ld [$8c1f], a                                 ; $7af0: $ea $1f $8c
    and $09                                       ; $7af3: $e6 $09
    inc l                                         ; $7af5: $2c
    sbc e                                         ; $7af6: $9b
    ld b, [hl]                                    ; $7af7: $46
    call z, Call_000_1868                         ; $7af8: $cc $68 $18
    call nz, $bb8c                                ; $7afb: $c4 $8c $bb
    dec d                                         ; $7afe: $15
    xor a                                         ; $7aff: $af
    ld a, h                                       ; $7b00: $7c
    or d                                          ; $7b01: $b2
    ld a, $0d                                     ; $7b02: $3e $0d
    ccf                                           ; $7b04: $3f
    ld [hl], $4a                                  ; $7b05: $36 $4a
    call nc, Call_066_5649                        ; $7b07: $d4 $49 $56
    ld [hl], d                                    ; $7b0a: $72

jr_066_7b0b:
    add hl, bc                                    ; $7b0b: $09
    ld l, a                                       ; $7b0c: $6f
    cp l                                          ; $7b0d: $bd
    ld [hl], b                                    ; $7b0e: $70
    xor $9e                                       ; $7b0f: $ee $9e
    adc e                                         ; $7b11: $8b
    push de                                       ; $7b12: $d5
    and e                                         ; $7b13: $a3
    sub $b7                                       ; $7b14: $d6 $b7
    ld sp, hl                                     ; $7b16: $f9
    sbc l                                         ; $7b17: $9d
    pop de                                        ; $7b18: $d1
    ld a, [hl-]                                   ; $7b19: $3a
    ld c, l                                       ; $7b1a: $4d
    or h                                          ; $7b1b: $b4
    pop af                                        ; $7b1c: $f1
    ld b, d                                       ; $7b1d: $42
    ld [hl], l                                    ; $7b1e: $75
    xor h                                         ; $7b1f: $ac
    sub a                                         ; $7b20: $97
    cp b                                          ; $7b21: $b8
    ld h, a                                       ; $7b22: $67
    add [hl]                                      ; $7b23: $86
    ld h, l                                       ; $7b24: $65
    ld l, c                                       ; $7b25: $69
    sbc h                                         ; $7b26: $9c
    ld h, [hl]                                    ; $7b27: $66

Call_066_7b28:
    ret c                                         ; $7b28: $d8

    adc a                                         ; $7b29: $8f
    ld h, a                                       ; $7b2a: $67

Call_066_7b2b:
    ld d, e                                       ; $7b2b: $53
    add $40                                       ; $7b2c: $c6 $40
    cp e                                          ; $7b2e: $bb
    sbc e                                         ; $7b2f: $9b
    or b                                          ; $7b30: $b0
    and b                                         ; $7b31: $a0
    db $eb                                        ; $7b32: $eb
    sbc d                                         ; $7b33: $9a
    ld [hl], d                                    ; $7b34: $72
    add sp, -$46                                  ; $7b35: $e8 $ba
    ld c, [hl]                                    ; $7b37: $4e
    and c                                         ; $7b38: $a1
    ld a, $fe                                     ; $7b39: $3e $fe
    rst $00                                       ; $7b3b: $c7
    push hl                                       ; $7b3c: $e5
    ld l, c                                       ; $7b3d: $69
    ld h, [hl]                                    ; $7b3e: $66
    ld hl, $b92b                                  ; $7b3f: $21 $2b $b9
    add h                                         ; $7b42: $84
    or a                                          ; $7b43: $b7
    cp $60                                        ; $7b44: $fe $60
    add sp, -$03                                  ; $7b46: $e8 $fd
    ld bc, $62e7                                  ; $7b48: $01 $e7 $62
    push af                                       ; $7b4b: $f5
    xor b                                         ; $7b4c: $a8
    push af                                       ; $7b4d: $f5
    ld l, l                                       ; $7b4e: $6d
    ld a, [hl]                                    ; $7b4f: $7e
    ld h, a                                       ; $7b50: $67
    or h                                          ; $7b51: $b4
    ld c, [hl]                                    ; $7b52: $4e
    inc de                                        ; $7b53: $13
    ld l, l                                       ; $7b54: $6d
    cp h                                          ; $7b55: $bc
    ld d, b                                       ; $7b56: $50
    dec e                                         ; $7b57: $1d
    db $eb                                        ; $7b58: $eb
    dec h                                         ; $7b59: $25
    xor $99                                       ; $7b5a: $ee $99
    ld h, c                                       ; $7b5c: $61
    ld e, c                                       ; $7b5d: $59
    ld a, [de]                                    ; $7b5e: $1a
    and a                                         ; $7b5f: $a7
    add hl, de                                    ; $7b60: $19
    or $e3                                        ; $7b61: $f6 $e3
    reti                                          ; $7b63: $d9


    sub h                                         ; $7b64: $94
    ld sp, $eed0                                  ; $7b65: $31 $d0 $ee
    ld h, $2c                                     ; $7b68: $26 $2c
    add sp, -$46                                  ; $7b6a: $e8 $ba
    and [hl]                                      ; $7b6c: $a6
    inc e                                         ; $7b6d: $1c
    cp d                                          ; $7b6e: $ba
    xor [hl]                                      ; $7b6f: $ae
    ld d, e                                       ; $7b70: $53
    xor b                                         ; $7b71: $a8
    adc a                                         ; $7b72: $8f
    rst $38                                       ; $7b73: $ff
    ld [hl], c                                    ; $7b74: $71
    ld a, c                                       ; $7b75: $79
    sbc d                                         ; $7b76: $9a
    ld e, c                                       ; $7b77: $59
    ret z                                         ; $7b78: $c8

    ld c, d                                       ; $7b79: $4a
    ld l, $e1                                     ; $7b7a: $2e $e1
    xor l                                         ; $7b7c: $ad
    ccf                                           ; $7b7d: $3f
    jr @+$7c                                      ; $7b7e: $18 $7a

    ld a, a                                       ; $7b80: $7f
    sub a                                         ; $7b81: $97
    jr c, @-$38                                   ; $7b82: $38 $c6

    jr nc, jr_066_7b0b                            ; $7b84: $30 $85

    or c                                          ; $7b86: $b1
    ld [hl], c                                    ; $7b87: $71
    ld d, [hl]                                    ; $7b88: $56
    ld d, e                                       ; $7b89: $53
    add $80                                       ; $7b8a: $c6 $80
    rst $10                                       ; $7b8c: $d7
    ret z                                         ; $7b8d: $c8

    ld b, d                                       ; $7b8e: $42
    rst $38                                       ; $7b8f: $ff
    ld e, c                                       ; $7b90: $59
    ret c                                         ; $7b91: $d8

    add b                                         ; $7b92: $80
    ld [hl+], a                                   ; $7b93: $22

Jump_066_7b94:
    cp $8c                                        ; $7b94: $fe $8c
    sbc c                                         ; $7b96: $99
    ld [de], a                                    ; $7b97: $12
    ld sp, $8a8f                                  ; $7b98: $31 $8f $8a
    ld a, [hl+]                                   ; $7b9b: $2a
    xor c                                         ; $7b9c: $a9
    adc l                                         ; $7b9d: $8d
    jp nz, $8c29                                  ; $7b9e: $c2 $29 $8c

    adc l                                         ; $7ba1: $8d
    inc c                                         ; $7ba2: $0c
    ld l, h                                       ; $7ba3: $6c
    ld a, b                                       ; $7ba4: $78
    sbc d                                         ; $7ba5: $9a
    rst $20                                       ; $7ba6: $e7
    cp $00                                        ; $7ba7: $fe $00
    ld [c], a                                     ; $7ba9: $e2
    sub l                                         ; $7baa: $95
    cpl                                           ; $7bab: $2f
    ld h, $59                                     ; $7bac: $26 $59
    add hl, hl                                    ; $7bae: $29
    ld b, h                                       ; $7baf: $44
    jp $b5db                                      ; $7bb0: $c3 $db $b5


    ld d, c                                       ; $7bb3: $51
    and d                                         ; $7bb4: $a2
    add hl, hl                                    ; $7bb5: $29
    add a                                         ; $7bb6: $87
    jp nz, Jump_000_2335                          ; $7bb7: $c2 $35 $23

    ld h, $a7                                     ; $7bba: $26 $a7
    ld c, [hl]                                    ; $7bbc: $4e
    ld d, $f1                                     ; $7bbd: $16 $f1
    ld h, a                                       ; $7bbf: $67
    call z, $c8d3                                 ; $7bc0: $cc $d3 $c8
    db $ec                                        ; $7bc3: $ec
    adc h                                         ; $7bc4: $8c
    adc e                                         ; $7bc5: $8b
    xor b                                         ; $7bc6: $a8
    sub d                                         ; $7bc7: $92
    jp c, $f0df                                   ; $7bc8: $da $df $f0

    and [hl]                                      ; $7bcb: $a6
    add hl, hl                                    ; $7bcc: $29
    add a                                         ; $7bcd: $87
    ld a, $d5                                     ; $7bce: $3e $d5
    ld l, c                                       ; $7bd0: $69
    inc d                                         ; $7bd1: $14
    ld c, [hl]                                    ; $7bd2: $4e
    dec h                                         ; $7bd3: $25
    cp d                                          ; $7bd4: $ba
    ld [c], a                                     ; $7bd5: $e2
    dec hl                                        ; $7bd6: $2b
    dec b                                         ; $7bd7: $05
    cp b                                          ; $7bd8: $b8
    ld b, b                                       ; $7bd9: $40
    ld l, e                                       ; $7bda: $6b
    jp c, $0318                                   ; $7bdb: $da $18 $03

    ld a, [$53cf]                                 ; $7bde: $fa $cf $53
    ld [hl], $b2                                  ; $7be1: $36 $b2
    ld [hl], h                                    ; $7be3: $74
    dec bc                                        ; $7be4: $0b
    rst $28                                       ; $7be5: $ef
    rrca                                          ; $7be6: $0f
    ld d, a                                       ; $7be7: $57
    ld b, b                                       ; $7be8: $40
    ret nz                                        ; $7be9: $c0

    inc [hl]                                      ; $7bea: $34
    push hl                                       ; $7beb: $e5
    ret nc                                        ; $7bec: $d0

    jr z, @-$62                                   ; $7bed: $28 $9c

    cp d                                          ; $7bef: $ba
    db $fc                                        ; $7bf0: $fc
    sub [hl]                                      ; $7bf1: $96
    or a                                          ; $7bf2: $b7
    adc e                                         ; $7bf3: $8b
    sbc d                                         ; $7bf4: $9a
    pop de                                        ; $7bf5: $d1
    jp hl                                         ; $7bf6: $e9


    ld a, [c]                                     ; $7bf7: $f2
    ld d, [hl]                                    ; $7bf8: $56
    ld [hl], $f5                                  ; $7bf9: $36 $f5
    ld l, c                                       ; $7bfb: $69
    xor h                                         ; $7bfc: $ac
    ld b, c                                       ; $7bfd: $41
    adc $0a                                       ; $7bfe: $ce $0a
    ld d, [hl]                                    ; $7c00: $56
    ld d, [hl]                                    ; $7c01: $56
    ld [hl], d                                    ; $7c02: $72
    add hl, bc                                    ; $7c03: $09
    ld l, a                                       ; $7c04: $6f
    cp l                                          ; $7c05: $bd
    ld [hl], b                                    ; $7c06: $70
    xor $36                                       ; $7c07: $ee $36
    pop bc                                        ; $7c09: $c1
    push de                                       ; $7c0a: $d5
    jr nz, jr_066_7c74                            ; $7c0b: $20 $67

    dec [hl]                                      ; $7c0d: $35
    dec de                                        ; $7c0e: $1b
    ld e, c                                       ; $7c0f: $59
    ld a, a                                       ; $7c10: $7f
    xor h                                         ; $7c11: $ac
    ld sp, hl                                     ; $7c12: $f9
    db $dd                                        ; $7c13: $dd
    rra                                           ; $7c14: $1f
    db $db                                        ; $7c15: $db
    add h                                         ; $7c16: $84
    ld d, e                                       ; $7c17: $53
    push bc                                       ; $7c18: $c5
    cp e                                          ; $7c19: $bb
    sbc e                                         ; $7c1a: $9b
    ld d, b                                       ; $7c1b: $50
    ld a, a                                       ; $7c1c: $7f
    xor h                                         ; $7c1d: $ac
    ld e, [hl]                                    ; $7c1e: $5e
    xor [hl]                                      ; $7c1f: $ae
    add $44                                       ; $7c20: $c6 $44
    adc l                                         ; $7c22: $8d
    jp nz, $9b29                                  ; $7c23: $c2 $29 $9b

    adc l                                         ; $7c26: $8d
    ld l, c                                       ; $7c27: $69
    ld l, d                                       ; $7c28: $6a
    ld a, l                                       ; $7c29: $7d
    ld a, [de]                                    ; $7c2a: $1a
    ld a, e                                       ; $7c2b: $7b
    cp [hl]                                       ; $7c2c: $be
    db $ed                                        ; $7c2d: $ed
    db $f4                                        ; $7c2e: $f4
    ld a, d                                       ; $7c2f: $7a
    ld e, a                                       ; $7c30: $5f
    inc c                                         ; $7c31: $0c
    ld h, e                                       ; $7c32: $63
    rst $30                                       ; $7c33: $f7
    rlca                                          ; $7c34: $07
    add hl, bc                                    ; $7c35: $09
    xor d                                         ; $7c36: $aa
    xor h                                         ; $7c37: $ac
    rrca                                          ; $7c38: $0f
    ld c, e                                       ; $7c39: $4b
    cp e                                          ; $7c3a: $bb
    sbc b                                         ; $7c3b: $98
    reti                                          ; $7c3c: $d9


    ld [hl], l                                    ; $7c3d: $75
    push af                                       ; $7c3e: $f5
    inc c                                         ; $7c3f: $0c
    db $eb                                        ; $7c40: $eb

jr_066_7c41:
    db $d3                                        ; $7c41: $d3
    ld e, b                                       ; $7c42: $58
    cpl                                           ; $7c43: $2f
    ld [hl], a                                    ; $7c44: $77
    pop bc                                        ; $7c45: $c1
    jp z, Jump_066_593a                           ; $7c46: $ca $3a $59

    rst $18                                       ; $7c49: $df
    add $0b                                       ; $7c4a: $c6 $0b
    push de                                       ; $7c4c: $d5
    or c                                          ; $7c4d: $b1
    ei                                            ; $7c4e: $fb
    inc bc                                        ; $7c4f: $03
    adc c                                         ; $7c50: $89
    rlca                                          ; $7c51: $07
    ld h, e                                       ; $7c52: $63
    ld h, e                                       ; $7c53: $63
    ld b, [hl]                                    ; $7c54: $46
    add hl, sp                                    ; $7c55: $39
    ld e, l                                       ; $7c56: $5d
    inc e                                         ; $7c57: $1c
    db $ed                                        ; $7c58: $ed
    xor $36                                       ; $7c59: $ee $36
    pop hl                                        ; $7c5b: $e1
    adc b                                         ; $7c5c: $88
    ld a, [bc]                                    ; $7c5d: $0a
    push af                                       ; $7c5e: $f5
    ld h, c                                       ; $7c5f: $61
    inc d                                         ; $7c60: $14
    push af                                       ; $7c61: $f5
    xor c                                         ; $7c62: $a9
    ld c, [hl]                                    ; $7c63: $4e
    rst $10                                       ; $7c64: $d7
    push de                                       ; $7c65: $d5
    and a                                         ; $7c66: $a7
    or c                                          ; $7c67: $b1
    ld b, $39                                     ; $7c68: $06 $39
    dec hl                                        ; $7c6a: $2b
    ld e, b                                       ; $7c6b: $58
    ld d, a                                       ; $7c6c: $57
    jr nc, jr_066_7ce2                            ; $7c6d: $30 $73

    ld l, c                                       ; $7c6f: $69
    ld [$01fd], a                                 ; $7c70: $ea $fd $01
    rla                                           ; $7c73: $17

jr_066_7c74:
    ld d, e                                       ; $7c74: $53
    ld [hl+], a                                   ; $7c75: $22
    and $11                                       ; $7c76: $e6 $11
    dec [hl]                                      ; $7c78: $35
    push hl                                       ; $7c79: $e5
    jr nz, @+$2d                                  ; $7c7a: $20 $2b

    pop de                                        ; $7c7c: $d1
    nop                                           ; $7c7d: $00
    ld h, e                                       ; $7c7e: $63
    db $fd                                        ; $7c7f: $fd
    add hl, bc                                    ; $7c80: $09
    or b                                          ; $7c81: $b0
    ld d, d                                       ; $7c82: $52
    add b                                         ; $7c83: $80
    dec bc                                        ; $7c84: $0b
    or h                                          ; $7c85: $b4
    ei                                            ; $7c86: $fb
    inc bc                                        ; $7c87: $03
    db $db                                        ; $7c88: $db
    add h                                         ; $7c89: $84
    ld d, e                                       ; $7c8a: $53
    cpl                                           ; $7c8b: $2f
    rst $10                                       ; $7c8c: $d7
    ld c, a                                       ; $7c8d: $4f
    ld e, a                                       ; $7c8e: $5f
    ret nz                                        ; $7c8f: $c0

    db $e3                                        ; $7c90: $e3
    db $fd                                        ; $7c91: $fd
    ld bc, $ae17                                  ; $7c92: $01 $17 $ae
    dec d                                         ; $7c95: $15
    add d                                         ; $7c96: $82
    ld a, l                                       ; $7c97: $7d

Jump_066_7c98:
    ret c                                         ; $7c98: $d8

    sub e                                         ; $7c99: $93
    adc b                                         ; $7c9a: $88
    sbc c                                         ; $7c9b: $99
    sbc d                                         ; $7c9c: $9a
    pop de                                        ; $7c9d: $d1
    or l                                          ; $7c9e: $b5
    or h                                          ; $7c9f: $b4
    ld h, e                                       ; $7ca0: $63
    ld d, c                                       ; $7ca1: $51
    and l                                         ; $7ca2: $a5
    ld b, a                                       ; $7ca3: $47
    jr c, jr_066_7c41                             ; $7ca4: $38 $9b

    ld a, $db                                     ; $7ca6: $3e $db
    add h                                         ; $7ca8: $84
    ld [hl], e                                    ; $7ca9: $73
    rst $30                                       ; $7caa: $f7
    ld [hl-], a                                   ; $7cab: $32
    ld l, $2b                                     ; $7cac: $2e $2b
    db $ec                                        ; $7cae: $ec
    ld l, d                                       ; $7caf: $6a
    ret nz                                        ; $7cb0: $c0

    ld a, [bc]                                    ; $7cb1: $0a
    xor d                                         ; $7cb2: $aa
    ret nc                                        ; $7cb3: $d0

    ld a, [$bf36]                                 ; $7cb4: $fa $36 $bf
    inc sp                                        ; $7cb7: $33
    jp c, Jump_000_01fd                           ; $7cb8: $da $fd $01

    add hl, bc                                    ; $7cbb: $09
    xor [hl]                                      ; $7cbc: $ae
    ld de, $4eb2                                  ; $7cbd: $11 $b2 $4e
    or d                                          ; $7cc0: $b2
    sub d                                         ; $7cc1: $92
    pop af                                        ; $7cc2: $f1
    ld c, a                                       ; $7cc3: $4f
    or d                                          ; $7cc4: $b2
    adc d                                         ; $7cc5: $8a
    ld d, a                                       ; $7cc6: $57
    add e                                         ; $7cc7: $83
    sbc h                                         ; $7cc8: $9c
    dec d                                         ; $7cc9: $15
    db $ec                                        ; $7cca: $ec
    cp $00                                        ; $7ccb: $fe $00
    ld [c], a                                     ; $7ccd: $e2
    sub [hl]                                      ; $7cce: $96
    ld c, [hl]                                    ; $7ccf: $4e
    sbc $dd                                       ; $7cd0: $de $dd
    add c                                         ; $7cd2: $81
    ld h, [hl]                                    ; $7cd3: $66
    ld b, h                                       ; $7cd4: $44
    xor l                                         ; $7cd5: $ad
    sub e                                         ; $7cd6: $93
    xor h                                         ; $7cd7: $ac
    db $e4                                        ; $7cd8: $e4
    ld [de], a                                    ; $7cd9: $12
    sbc $7a                                       ; $7cda: $de $7a
    pop hl                                        ; $7cdc: $e1
    adc b                                         ; $7cdd: $88
    ld a, [de]                                    ; $7cde: $1a
    add l                                         ; $7cdf: $85
    db $d3                                        ; $7ce0: $d3
    adc h                                         ; $7ce1: $8c

jr_066_7ce2:
    jp nc, Jump_000_11b7                          ; $7ce2: $d2 $b7 $11

    db $fc                                        ; $7ce5: $fc
    inc h                                         ; $7ce6: $24
    ld [hl], h                                    ; $7ce7: $74
    jp Jump_000_0907                              ; $7ce8: $c3 $07 $09


    ld [$a435], a                                 ; $7ceb: $ea $35 $a4
    ld l, c                                       ; $7cee: $69
    add l                                         ; $7cef: $85
    or c                                          ; $7cf0: $b1
    ccf                                           ; $7cf1: $3f
    ld a, l                                       ; $7cf2: $7d
    xor $6a                                       ; $7cf3: $ee $6a
    ld b, b                                       ; $7cf5: $40
    inc bc                                        ; $7cf6: $03
    xor l                                         ; $7cf7: $ad
    ld b, $75                                     ; $7cf8: $06 $75
    ld c, e                                       ; $7cfa: $4b
    ld h, [hl]                                    ; $7cfb: $66
    sbc b                                         ; $7cfc: $98
    ei                                            ; $7cfd: $fb
    inc bc                                        ; $7cfe: $03
    add hl, bc                                    ; $7cff: $09
    xor [hl]                                      ; $7d00: $ae
    rst $38                                       ; $7d01: $ff
    ld e, d                                       ; $7d02: $5a
    and e                                         ; $7d03: $a3
    ld [hl], b                                    ; $7d04: $70
    ld a, [hl+]                                   ; $7d05: $2a
    ld d, c                                       ; $7d06: $51
    ld a, [$8236]                                 ; $7d07: $fa $36 $82
    sbc a                                         ; $7d0a: $9f
    sbc h                                         ; $7d0b: $9c
    ld b, $54                                     ; $7d0c: $06 $54
    ld [hl], d                                    ; $7d0e: $72
    add hl, bc                                    ; $7d0f: $09
    ld l, a                                       ; $7d10: $6f
    db $fd                                        ; $7d11: $fd
    pop bc                                        ; $7d12: $c1
    ret nc                                        ; $7d13: $d0

    ei                                            ; $7d14: $fb
    inc bc                                        ; $7d15: $03
    db $db                                        ; $7d16: $db
    add h                                         ; $7d17: $84
    inc hl                                        ; $7d18: $23
    xor d                                         ; $7d19: $aa

jr_066_7d1a:
    and h                                         ; $7d1a: $a4
    sub [hl]                                      ; $7d1b: $96
    cp $68                                        ; $7d1c: $fe $68
    sbc [hl]                                      ; $7d1e: $9e
    and [hl]                                      ; $7d1f: $a6
    inc e                                         ; $7d20: $1c
    sbc d                                         ; $7d21: $9a
    ld e, h                                       ; $7d22: $5c
    dec hl                                        ; $7d23: $2b
    sub a                                         ; $7d24: $97
    or h                                          ; $7d25: $b4
    inc sp                                        ; $7d26: $33
    ld l, b                                       ; $7d27: $68
    sbc l                                         ; $7d28: $9d
    db $ec                                        ; $7d29: $ec
    ld a, [c]                                     ; $7d2a: $f2
    ld d, [hl]                                    ; $7d2b: $56
    ld [hl], $4d                                  ; $7d2c: $36 $4d
    add hl, sp                                    ; $7d2e: $39
    inc [hl]                                      ; $7d2f: $34
    and e                                         ; $7d30: $a3
    cp $84                                        ; $7d31: $fe $84
    rst $00                                       ; $7d33: $c7
    ld [hl+], a                                   ; $7d34: $22
    ld [$b48b], a                                 ; $7d35: $ea $8b $b4
    ei                                            ; $7d38: $fb
    inc bc                                        ; $7d39: $03
    sub a                                         ; $7d3a: $97
    ld hl, $9d6a                                  ; $7d3b: $21 $6a $9d
    ld h, h                                       ; $7d3e: $64
    dec h                                         ; $7d3f: $25
    sub a                                         ; $7d40: $97
    ldh a, [$d6]                                  ; $7d41: $f0 $d6
    dec bc                                        ; $7d43: $0b
    ld h, a                                       ; $7d44: $67
    ld d, e                                       ; $7d45: $53
    inc de                                        ; $7d46: $13

Jump_066_7d47:
    call nc, $9fc7                                ; $7d47: $d4 $c7 $9f
    ld sp, hl                                     ; $7d4a: $f9
    cp e                                          ; $7d4b: $bb
    add l                                         ; $7d4c: $85
    or [hl]                                       ; $7d4d: $b6
    and c                                         ; $7d4e: $a1
    sub a                                         ; $7d4f: $97
    jr c, jr_066_7d1a                             ; $7d50: $38 $c8

    ld c, d                                       ; $7d52: $4a
    inc [hl]                                      ; $7d53: $34
    ret nz                                        ; $7d54: $c0

    ret c                                         ; $7d55: $d8

    inc c                                         ; $7d56: $0c
    xor e                                         ; $7d57: $ab

Jump_066_7d58:
    sub e                                         ; $7d58: $93
    ld l, h                                       ; $7d59: $6c
    and [hl]                                      ; $7d5a: $a6
    db $f4                                        ; $7d5b: $f4
    xor h                                         ; $7d5c: $ac
    sub e                                         ; $7d5d: $93
    dec de                                        ; $7d5e: $1b
    ld a, $e2                                     ; $7d5f: $3e $e2
    cpl                                           ; $7d61: $2f
    ld b, $36                                     ; $7d62: $06 $36
    ld a, [bc]                                    ; $7d64: $0a
    and a                                         ; $7d65: $a7
    ld sp, hl                                     ; $7d66: $f9
    xor l                                         ; $7d67: $ad
    ld d, b                                       ; $7d68: $50
    xor b                                         ; $7d69: $a8
    or d                                          ; $7d6a: $b2
    ld [hl], h                                    ; $7d6b: $74
    dec bc                                        ; $7d6c: $0b
    rst $28                                       ; $7d6d: $ef
    rrca                                          ; $7d6e: $0f
    db $db                                        ; $7d6f: $db
    dec hl                                        ; $7d70: $2b
    pop hl                                        ; $7d71: $e1
    sbc d                                         ; $7d72: $9a
    rst $18                                       ; $7d73: $df
    db $f4                                        ; $7d74: $f4
    jp z, Jump_000_3517                           ; $7d75: $ca $17 $35

    ld c, a                                       ; $7d78: $4f
    ld l, h                                       ; $7d79: $6c
    ld a, [hl]                                    ; $7d7a: $7e
    ld sp, $3ac9                                  ; $7d7b: $31 $c9 $3a
    ret                                           ; $7d7e: $c9


    ld c, d                                       ; $7d7f: $4a
    ld l, $e1                                     ; $7d80: $2e $e1
    xor l                                         ; $7d82: $ad
    rla                                           ; $7d83: $17
    adc $dd                                       ; $7d84: $ce $dd
    ld l, l                                       ; $7d86: $6d
    ld l, $fe                                     ; $7d87: $2e $fe
    xor h                                         ; $7d89: $ac
    and d                                         ; $7d8a: $a2
    rst $38                                       ; $7d8b: $ff
    ld b, h                                       ; $7d8c: $44
    ld b, l                                       ; $7d8d: $45
    jp c, $d73d                                   ; $7d8e: $da $3d $d7

    push hl                                       ; $7d91: $e5
    xor l                                         ; $7d92: $ad
    adc h                                         ; $7d93: $8c
    sub $80                                       ; $7d94: $d6 $80
    add l                                         ; $7d96: $85
    rst $30                                       ; $7d97: $f7
    rlca                                          ; $7d98: $07
    db $db                                        ; $7d99: $db
    add h                                         ; $7d9a: $84
    ld d, e                                       ; $7d9b: $53
    push bc                                       ; $7d9c: $c5
    ld l, e                                       ; $7d9d: $6b
    ld h, h                                       ; $7d9e: $64
    ld h, b                                       ; $7d9f: $60
    inc bc                                        ; $7da0: $03
    ld a, [hl+]                                   ; $7da1: $2a
    cp c                                          ; $7da2: $b9
    add h                                         ; $7da3: $84
    or a                                          ; $7da4: $b7
    cp $60                                        ; $7da5: $fe $60
    add sp, -$03                                  ; $7da7: $e8 $fd
    ld bc, $ebdb                                  ; $7da9: $01 $db $eb
    db $db                                        ; $7dac: $db
    ld a, b                                       ; $7dad: $78
    and c                                         ; $7dae: $a1
    ld a, [hl-]                                   ; $7daf: $3a
    sub $4b                                       ; $7db0: $d6 $4b
    call c, $c333                                 ; $7db2: $dc $33 $c3
    or d                                          ; $7db5: $b2
    inc [hl]                                      ; $7db6: $34
    ld h, b                                       ; $7db7: $60
    add l                                         ; $7db8: $85
    ld a, [hl+]                                   ; $7db9: $2a
    dec a                                         ; $7dba: $3d
    or b                                          ; $7dbb: $b0
    ei                                            ; $7dbc: $fb
    inc bc                                        ; $7dbd: $03
    ld d, a                                       ; $7dbe: $57
    ldh a, [$6d]                                  ; $7dbf: $f0 $6d
    call z, $a428                                 ; $7dc1: $cc $28 $a4
    ld h, a                                       ; $7dc4: $67
    adc h                                         ; $7dc5: $8c
    sub l                                         ; $7dc6: $95
    ld a, h                                       ; $7dc7: $7c
    ld e, d                                       ; $7dc8: $5a
    ld d, [hl]                                    ; $7dc9: $56
    ld [hl], d                                    ; $7dca: $72
    add hl, bc                                    ; $7dcb: $09
    ld l, a                                       ; $7dcc: $6f
    cp l                                          ; $7dcd: $bd
    ld [hl], b                                    ; $7dce: $70
    ld [hl], $7c                                  ; $7dcf: $36 $7c
    db $db                                        ; $7dd1: $db
    jr nz, @+$1d                                  ; $7dd2: $20 $1b

    sub $ea                                       ; $7dd4: $d6 $ea
    db $d3                                        ; $7dd6: $d3
    ret c                                         ; $7dd7: $d8

    ld a, a                                       ; $7dd8: $7f
    inc h                                         ; $7dd9: $24
    sub $d3                                       ; $7dda: $d6 $d3
    jp z, $b786                                   ; $7ddc: $ca $86 $b7

    dec bc                                        ; $7ddf: $0b
    halt                                          ; $7de0: $76
    ld a, a                                       ; $7de1: $7f
    adc c                                         ; $7de2: $89
    inc de                                        ; $7de3: $13
    ld d, b                                       ; $7de4: $50
    add e                                         ; $7de5: $83
    sbc h                                         ; $7de6: $9c
    dec d                                         ; $7de7: $15
    ld l, h                                       ; $7de8: $6c
    and e                                         ; $7de9: $a3
    ld h, d                                       ; $7dea: $62
    ld d, e                                       ; $7deb: $53
    cpl                                           ; $7dec: $2f
    ld [hl], c                                    ; $7ded: $71
    add sp, -$75                                  ; $7dee: $e8 $8b
    add hl, de                                    ; $7df0: $19
    ld b, $55                                     ; $7df1: $06 $55
    add $8c                                       ; $7df3: $c6 $8c
    ei                                            ; $7df5: $fb
    inc bc                                        ; $7df6: $03

Call_066_7df7:
    adc c                                         ; $7df7: $89
    ld [hl], $bf                                  ; $7df8: $36 $bf
    inc sp                                        ; $7dfa: $33
    ld [hl], $b2                                  ; $7dfb: $36 $b2
    sbc [hl]                                      ; $7dfd: $9e
    rst $20                                       ; $7dfe: $e7
    ld e, c                                       ; $7dff: $59
    sbc $64                                       ; $7e00: $de $64
    db $fc                                        ; $7e02: $fc
    cp h                                          ; $7e03: $bc
    cp e                                          ; $7e04: $bb
    ld h, l                                       ; $7e05: $65
    xor l                                         ; $7e06: $ad
    bit 3, d                                      ; $7e07: $cb $5a
    sub a                                         ; $7e09: $97
    or a                                          ; $7e0a: $b7
    or d                                          ; $7e0b: $b2
    pop de                                        ; $7e0c: $d1
    ld [$0c78], a                                 ; $7e0d: $ea $78 $0c
    call $cc2e                                    ; $7e10: $cd $2e $cc
    db $fd                                        ; $7e13: $fd
    ld bc, $4d09                                  ; $7e14: $01 $09 $4d
    add hl, sp                                    ; $7e17: $39
    inc [hl]                                      ; $7e18: $34
    ld [hl], e                                    ; $7e19: $73
    xor c                                         ; $7e1a: $a9
    ld b, c                                       ; $7e1b: $41
    adc $0a                                       ; $7e1c: $ce $0a
    ld b, $dd                                     ; $7e1e: $06 $dd
    sbc b                                         ; $7e20: $98
    ld d, c                                       ; $7e21: $51
    ld [hl], $bf                                  ; $7e22: $36 $bf
    ld a, [$bbb6]                                 ; $7e24: $fa $b6 $bb
    ld l, a                                       ; $7e27: $6f
    ld l, a                                       ; $7e28: $6f
    ld b, h                                       ; $7e29: $44
    push af                                       ; $7e2a: $f5
    ld l, c                                       ; $7e2b: $69

jr_066_7e2c:
    ld l, h                                       ; $7e2c: $6c
    ld [hl], $bc                                  ; $7e2d: $36 $bc
    ld c, b                                       ; $7e2f: $48
    db $db                                        ; $7e30: $db
    db $f4                                        ; $7e31: $f4
    ld bc, $7197                                  ; $7e32: $01 $97 $71
    ld e, c                                       ; $7e35: $59
    ld h, c                                       ; $7e36: $61
    ld d, a                                       ; $7e37: $57
    inc bc                                        ; $7e38: $03
    sub h                                         ; $7e39: $94
    ld a, $0d                                     ; $7e3a: $3e $0d
    db $eb                                        ; $7e3c: $eb
    ld e, c                                       ; $7e3d: $59
    ld b, l                                       ; $7e3e: $45
    reti                                          ; $7e3f: $d9


    sub a                                         ; $7e40: $97
    adc [hl]                                      ; $7e41: $8e
    ld h, e                                       ; $7e42: $63
    inc [hl]                                      ; $7e43: $34
    add sp, -$03                                  ; $7e44: $e8 $fd
    ld bc, $b5db                                  ; $7e46: $01 $db $b5
    ld [de], a                                    ; $7e49: $12
    ld c, [hl]                                    ; $7e4a: $4e
    db $eb                                        ; $7e4b: $eb
    di                                            ; $7e4c: $f3
    ld l, c                                       ; $7e4d: $69
    and e                                         ; $7e4e: $a3
    ld [hl], b                                    ; $7e4f: $70
    ld a, [hl+]                                   ; $7e50: $2a
    pop de                                        ; $7e51: $d1
    add b                                         ; $7e52: $80
    daa                                           ; $7e53: $27
    sbc b                                         ; $7e54: $98
    or d                                          ; $7e55: $b2
    ld [hl], $69                                  ; $7e56: $36 $69
    ld e, d                                       ; $7e58: $5a
    dec h                                         ; $7e59: $25
    sub a                                         ; $7e5a: $97
    ldh a, [$d6]                                  ; $7e5b: $f0 $d6
    rra                                           ; $7e5d: $1f
    inc c                                         ; $7e5e: $0c
    dec d                                         ; $7e5f: $15
    push de                                       ; $7e60: $d5
    rra                                           ; $7e61: $1f
    db $eb                                        ; $7e62: $eb
    ld d, e                                       ; $7e63: $53
    sbc l                                         ; $7e64: $9d
    ld b, [hl]                                    ; $7e65: $46
    pop hl                                        ; $7e66: $e1
    ld d, h                                       ; $7e67: $54
    pop af                                        ; $7e68: $f1
    ld a, [de]                                    ; $7e69: $1a
    add hl, de                                    ; $7e6a: $19
    ld e, b                                       ; $7e6b: $58

jr_066_7e6c:
    dec e                                         ; $7e6c: $1d
    adc a                                         ; $7e6d: $8f
    and c                                         ; $7e6e: $a1
    ld c, a                                       ; $7e6f: $4f
    ld [hl], l                                    ; $7e70: $75

jr_066_7e71:
    xor $0f                                       ; $7e71: $ee $0f
    db $db                                        ; $7e73: $db
    add h                                         ; $7e74: $84
    inc hl                                        ; $7e75: $23
    xor d                                         ; $7e76: $aa
    and h                                         ; $7e77: $a4
    ld [hl], $e5                                  ; $7e78: $36 $e5
    jr nz, jr_066_7ea7                            ; $7e7a: $20 $2b

    pop de                                        ; $7e7c: $d1
    nop                                           ; $7e7d: $00
    ld h, e                                       ; $7e7e: $63
    sub l                                         ; $7e7f: $95
    ld e, $58                                     ; $7e80: $1e $58
    ld l, l                                       ; $7e82: $6d
    jp nc, Jump_000_3ab4                          ; $7e83: $d2 $b4 $3a

    ret                                           ; $7e86: $c9


    cp e                                          ; $7e87: $bb
    rla                                           ; $7e88: $17
    xor b                                         ; $7e89: $a8
    ld c, [hl]                                    ; $7e8a: $4e
    rst $10                                       ; $7e8b: $d7
    dec [hl]                                      ; $7e8c: $35
    push hl                                       ; $7e8d: $e5
    ld d, b                                       ; $7e8e: $50
    jr jr_066_7e2c                                ; $7e8f: $18 $9b

    ld a, [hl]                                    ; $7e91: $7e
    ld [hl], $1b                                  ; $7e92: $36 $1b
    ld a, $89                                     ; $7e94: $3e $89
    or b                                          ; $7e96: $b0
    or h                                          ; $7e97: $b4
    adc e                                         ; $7e98: $8b
    sbc c                                         ; $7e99: $99
    db $dd                                        ; $7e9a: $dd
    cp a                                          ; $7e9b: $bf
    ld e, e                                       ; $7e9c: $5b
    add hl, de                                    ; $7e9d: $19
    jr z, jr_066_7e71                             ; $7e9e: $28 $d1

    call nz, Call_066_7f17                        ; $7ea0: $c4 $17 $7f
    inc [hl]                                      ; $7ea3: $34
    or d                                          ; $7ea4: $b2
    sbc [hl]                                      ; $7ea5: $9e
    rst $20                                       ; $7ea6: $e7

jr_066_7ea7:
    ld e, c                                       ; $7ea7: $59
    sbc $64                                       ; $7ea8: $de $64
    db $fc                                        ; $7eaa: $fc
    cp h                                          ; $7eab: $bc
    sbc e                                         ; $7eac: $9b
    or b                                          ; $7ead: $b0
    or b                                          ; $7eae: $b0
    cp $04                                        ; $7eaf: $fe $04
    db $f4                                        ; $7eb1: $f4
    push bc                                       ; $7eb2: $c5
    ldh a, [$7e]                                  ; $7eb3: $f0 $7e
    jp c, $8cc6                                   ; $7eb5: $da $c6 $8c

    or d                                          ; $7eb8: $b2
    pop hl                                        ; $7eb9: $e1
    add hl, de                                    ; $7eba: $19
    cp $f5                                        ; $7ebb: $fe $f5
    jp nz, Jump_000_3fe9                          ; $7ebd: $c2 $e9 $3f

    ld h, [hl]                                    ; $7ec0: $66
    ld hl, sp+$33                                 ; $7ec1: $f8 $33
    rst $28                                       ; $7ec3: $ef
    rrca                                          ; $7ec4: $0f

jr_066_7ec5:
    db $db                                        ; $7ec5: $db
    or l                                          ; $7ec6: $b5
    ld [de], a                                    ; $7ec7: $12
    ld c, [hl]                                    ; $7ec8: $4e
    db $eb                                        ; $7ec9: $eb
    di                                            ; $7eca: $f3
    ld l, c                                       ; $7ecb: $69
    jp $f5db                                      ; $7ecc: $c3 $db $f5


    jr z, jr_066_7e6c                             ; $7ecf: $28 $9b

    ld [hl], d                                    ; $7ed1: $72
    jr z, jr_066_7f30                             ; $7ed2: $28 $5c

    rst $10                                       ; $7ed4: $d7
    dec [hl]                                      ; $7ed5: $35
    push hl                                       ; $7ed6: $e5
    ld d, b                                       ; $7ed7: $50
    jr jr_066_7ec5                                ; $7ed8: $18 $eb

    inc h                                         ; $7eda: $24
    dec hl                                        ; $7edb: $2b
    cp c                                          ; $7edc: $b9
    add h                                         ; $7edd: $84
    or a                                          ; $7ede: $b7
    ld e, [hl]                                    ; $7edf: $5e
    jr c, jr_066_7f59                             ; $7ee0: $38 $77

    or a                                          ; $7ee2: $b7
    ld [hl-], a                                   ; $7ee3: $32
    ld b, $1a                                     ; $7ee4: $06 $1a
    push hl                                       ; $7ee6: $e5
    ld b, [hl]                                    ; $7ee7: $46
    adc c                                         ; $7ee8: $89
    ld a, [$9634]                                 ; $7ee9: $fa $34 $96
    add hl, hl                                    ; $7eec: $29
    rst $30                                       ; $7eed: $f7
    ld [$58d3], a                                 ; $7eee: $ea $d3 $58
    adc c                                         ; $7ef1: $89
    ld a, [de]                                    ; $7ef2: $1a
    db $e4                                        ; $7ef3: $e4
    xor h                                         ; $7ef4: $ac
    ld h, b                                       ; $7ef5: $60
    rst $30                                       ; $7ef6: $f7
    rlca                                          ; $7ef7: $07
    db $db                                        ; $7ef8: $db
    add h                                         ; $7ef9: $84
    inc hl                                        ; $7efa: $23
    ld l, d                                       ; $7efb: $6a
    and [hl]                                      ; $7efc: $a6
    db $f4                                        ; $7efd: $f4
    xor h                                         ; $7efe: $ac
    sub e                                         ; $7eff: $93
    push de                                       ; $7f00: $d5
    ld [hl], c                                    ; $7f01: $71
    adc l                                         ; $7f02: $8d
    or e                                          ; $7f03: $b3
    ld h, d                                       ; $7f04: $62
    ld e, $51                                     ; $7f05: $1e $51
    rst $38                                       ; $7f07: $ff
    sub c                                         ; $7f08: $91
    db $d3                                        ; $7f09: $d3
    db $ec                                        ; $7f0a: $ec
    xor $0f                                       ; $7f0b: $ee $0f
    ld [c], a                                     ; $7f0d: $e2
    ld a, a                                       ; $7f0e: $7f
    ld [hl], d                                    ; $7f0f: $72
    sbc d                                         ; $7f10: $9a
    ld [hl], d                                    ; $7f11: $72
    xor b                                         ; $7f12: $a8
    ld c, a                                       ; $7f13: $4f
    ld h, e                                       ; $7f14: $63
    jp hl                                         ; $7f15: $e9


    dec de                                        ; $7f16: $1b

Call_066_7f17:
    ld h, d                                       ; $7f17: $62
    add b                                         ; $7f18: $80
    push af                                       ; $7f19: $f5
    xor c                                         ; $7f1a: $a9
    ld c, [hl]                                    ; $7f1b: $4e
    rst $10                                       ; $7f1c: $d7
    push de                                       ; $7f1d: $d5
    scf                                           ; $7f1e: $37
    db $fc                                        ; $7f1f: $fc
    ld c, a                                       ; $7f20: $4f
    and a                                         ; $7f21: $a7
    jp nc, $ccbd                                  ; $7f22: $d2 $bd $cc

    ld a, [$94d0]                                 ; $7f25: $fa $d0 $94
    ld a, e                                       ; $7f28: $7b
    jp z, $03fb                                   ; $7f29: $ca $fb $03

    rst $20                                       ; $7f2c: $e7
    ld b, d                                       ; $7f2d: $42
    ld a, a                                       ; $7f2e: $7f
    or a                                          ; $7f2f: $b7

jr_066_7f30:
    ld hl, sp+$14                                 ; $7f30: $f8 $14
    ld d, l                                       ; $7f32: $55
    ld d, d                                       ; $7f33: $52
    rl a                                          ; $7f34: $cb $17
    inc bc                                        ; $7f36: $03
    dec de                                        ; $7f37: $1b
    add l                                         ; $7f38: $85
    db $d3                                        ; $7f39: $d3
    ccf                                           ; $7f3a: $3f
    adc c                                         ; $7f3b: $89
    db $f4                                        ; $7f3c: $f4
    sbc d                                         ; $7f3d: $9a
    inc e                                         ; $7f3e: $1c
    dec l                                         ; $7f3f: $2d
    dec bc                                        ; $7f40: $0b
    ld d, l                                       ; $7f41: $55

Call_066_7f42:
    db $f4                                        ; $7f42: $f4
    and a                                         ; $7f43: $a7
    cp a                                          ; $7f44: $bf
    ld e, e                                       ; $7f45: $5b
    halt                                          ; $7f46: $76
    set 3, h                                      ; $7f47: $cb $dc
    rra                                           ; $7f49: $1f
    db $db                                        ; $7f4a: $db
    sbc e                                         ; $7f4b: $9b
    ld [hl], d                                    ; $7f4c: $72
    ld l, b                                       ; $7f4d: $68
    ld b, [hl]                                    ; $7f4e: $46
    call nc, Call_000_3772                        ; $7f4f: $d4 $72 $37
    ld d, c                                       ; $7f52: $51
    or a                                          ; $7f53: $b7
    ld h, c                                       ; $7f54: $61
    push af                                       ; $7f55: $f5
    sub [hl]                                      ; $7f56: $96
    dec b                                         ; $7f57: $05
    sbc e                                         ; $7f58: $9b

jr_066_7f59:
    ld a, $97                                     ; $7f59: $3e $97
    bit 3, [hl]                                   ; $7f5b: $cb $5e
    inc c                                         ; $7f5d: $0c
    jp hl                                         ; $7f5e: $e9


    ld sp, $b186                                  ; $7f5f: $31 $86 $b1
    and [hl]                                      ; $7f62: $a6
    inc e                                         ; $7f63: $1c
    ld a, [hl+]                                   ; $7f64: $2a
    ld d, c                                       ; $7f65: $51
    call nz, $1bd5                                ; $7f66: $c4 $d5 $1b
    ld d, a                                       ; $7f69: $57
    ld d, [hl]                                    ; $7f6a: $56
    cp [hl]                                       ; $7f6b: $be
    sbc b                                         ; $7f6c: $98
    ld h, h                                       ; $7f6d: $64
    cp c                                          ; $7f6e: $b9
    jp c, Jump_066_6efd                           ; $7f6f: $da $fd $6e

    jp nz, Jump_000_2ac2                          ; $7f72: $c2 $c2 $2a

    dec a                                         ; $7f75: $3d
    ld l, b                                       ; $7f76: $68
    jp z, Jump_066_70a1                           ; $7f77: $ca $a1 $70

    push af                                       ; $7f7a: $f5
    xor c                                         ; $7f7b: $a9
    ld a, [hl-]                                   ; $7f7c: $3a
    ld h, l                                       ; $7f7d: $65
    ld d, a                                       ; $7f7e: $57
    cpl                                           ; $7f7f: $2f
    or b                                          ; $7f80: $b0
    inc l                                         ; $7f81: $2c
    inc [hl]                                      ; $7f82: $34
    push hl                                       ; $7f83: $e5
    ldh a, [$c3]                                  ; $7f84: $f0 $c3
    ld [hl], $4a                                  ; $7f86: $36 $4a
    inc [hl]                                      ; $7f88: $34
    and b                                         ; $7f89: $a0
    reti                                          ; $7f8a: $d9


    add l                                         ; $7f8b: $85
    cp c                                          ; $7f8c: $b9
    ccf                                           ; $7f8d: $3f
    sub a                                         ; $7f8e: $97
    ld c, l                                       ; $7f8f: $4d
    ld h, b                                       ; $7f90: $60
    reti                                          ; $7f91: $d9


    inc [hl]                                      ; $7f92: $34
    ld h, d                                       ; $7f93: $62
    add $86                                       ; $7f94: $c6 $86
    ld e, [hl]                                    ; $7f96: $5e
    ld hl, $fa9c                                  ; $7f97: $21 $9c $fa
    inc [hl]                                      ; $7f9a: $34
    ld d, [hl]                                    ; $7f9b: $56
    add b                                         ; $7f9c: $80
    adc e                                         ; $7f9d: $8b
    ld a, c                                       ; $7f9e: $79
    ld a, [de]                                    ; $7f9f: $1a
    xor b                                         ; $7fa0: $a8
    ld e, l                                       ; $7fa1: $5d
    ld d, c                                       ; $7fa2: $51
    ld [hl], l                                    ; $7fa3: $75
    sbc h                                         ; $7fa4: $9c
    ld d, c                                       ; $7fa5: $51
    scf                                           ; $7fa6: $37
    ld a, h                                       ; $7fa7: $7c
    adc c                                         ; $7fa8: $89
    inc de                                        ; $7fa9: $13
    sub e                                         ; $7faa: $93
    sub h                                         ; $7fab: $94
    ld h, l                                       ; $7fac: $65
    and l                                         ; $7fad: $a5
    ld [hl], b                                    ; $7fae: $70
    ld a, [de]                                    ; $7faf: $1a
    sbc [hl]                                      ; $7fb0: $9e
    pop hl                                        ; $7fb1: $e1
    ld h, l                                       ; $7fb2: $65
    ld d, [hl]                                    ; $7fb3: $56
    rst $00                                       ; $7fb4: $c7
    ld h, e                                       ; $7fb5: $63
    jr z, @-$43                                   ; $7fb6: $28 $bb

    and d                                         ; $7fb8: $a2
    ld [$6338], a                                 ; $7fb9: $ea $38 $63
    pop de                                        ; $7fbc: $d1
    ldh a, [$d2]                                  ; $7fbd: $f0 $d2
    sub h                                         ; $7fbf: $94
    dec a                                         ; $7fc0: $3d
    inc a                                         ; $7fc1: $3c
    sub c                                         ; $7fc2: $91
    add $fe                                       ; $7fc3: $c6 $fe
    ld c, a                                       ; $7fc5: $4f
    ld [hl], d                                    ; $7fc6: $72
    jp Jump_000_1fe1                              ; $7fc7: $c3 $e1 $1f


    adc c                                         ; $7fca: $89
    inc [hl]                                      ; $7fcb: $34
    or $7f                                        ; $7fcc: $f6 $7f
    sub d                                         ; $7fce: $92
    dec de                                        ; $7fcf: $1b
    ld a, $89                                     ; $7fd0: $3e $89
    inc [hl]                                      ; $7fd2: $34
    or $7f                                        ; $7fd3: $f6 $7f
    sub d                                         ; $7fd5: $92
    dec de                                        ; $7fd6: $1b
    ld a, $89                                     ; $7fd7: $3e $89
    inc [hl]                                      ; $7fd9: $34
    or $7f                                        ; $7fda: $f6 $7f
    sub d                                         ; $7fdc: $92
    dec de                                        ; $7fdd: $1b
    ld a, $57                                     ; $7fde: $3e $57
    ld b, b                                       ; $7fe0: $40
    ld d, [hl]                                    ; $7fe1: $56
    ret nz                                        ; $7fe2: $c0

    ld e, d                                       ; $7fe3: $5a
    ld a, l                                       ; $7fe4: $7d
    ld a, [de]                                    ; $7fe5: $1a
    res 2, h                                      ; $7fe6: $cb $94
    ld a, e                                       ; $7fe8: $7b
    and d                                         ; $7fe9: $a2
    ld c, d                                       ; $7fea: $4a
    call nz, Call_066_6717                        ; $7feb: $c4 $17 $67
    jp $e207                                      ; $7fee: $c3 $07 $e2


    rst $28                                       ; $7ff1: $ef
    cp [hl]                                       ; $7ff2: $be
    rst $28                                       ; $7ff3: $ef
    ei                                            ; $7ff4: $fb
    cp $00                                        ; $7ff5: $fe $00
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
