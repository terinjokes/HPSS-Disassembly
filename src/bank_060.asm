; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

    ld h, b                                       ; $4000: $60
    add a                                         ; $4001: $87
    db $28, $c9                                   ; $4002: $28 $c9
    cp e                                          ; $4004: $bb
    rst $28                                       ; $4005: $ef
    ld a, e                                       ; $4006: $7b
    ld l, b                                       ; $4007: $68
    ld e, [hl]                                    ; $4008: $5e
    ld a, l                                       ; $4009: $7d
    ld a, [hl]                                    ; $400a: $7e
    ld h, c                                       ; $400b: $61
    xor a                                         ; $400c: $af
    add [hl]                                      ; $400d: $86
    ld h, a                                       ; $400e: $67
    ld a, [hl+]                                   ; $400f: $2a
    ld c, b                                       ; $4010: $48
    inc e                                         ; $4011: $1c
    cp d                                          ; $4012: $ba
    adc $1d                                       ; $4013: $ce $1d
    sbc [hl]                                      ; $4015: $9e
    ld a, e                                       ; $4016: $7b
    ld b, a                                       ; $4017: $47
    dec e                                         ; $4018: $1d
    ld a, e                                       ; $4019: $7b
    xor $89                                       ; $401a: $ee $89
    cp e                                          ; $401c: $bb
    and $ca                                       ; $401d: $e6 $ca
    and e                                         ; $401f: $a3
    ld e, a                                       ; $4020: $5f
    rst $20                                       ; $4021: $e7
    ld h, c                                       ; $4022: $61
    ld l, d                                       ; $4023: $6a
    ld e, a                                       ; $4024: $5f
    ld a, e                                       ; $4025: $7b
    db $fc                                        ; $4026: $fc
    ld [hl], c                                    ; $4027: $71
    pop af                                        ; $4028: $f1
    rst $08                                       ; $4029: $cf
    and c                                         ; $402a: $a1
    sbc c                                         ; $402b: $99
    ld [hl], $f9                                  ; $402c: $36 $f9
    ld [hl], c                                    ; $402e: $71
    ld [hl], a                                    ; $402f: $77
    inc h                                         ; $4030: $24
    ld a, d                                       ; $4031: $7a
    rst $28                                       ; $4032: $ef
    adc $73                                       ; $4033: $ce $73
    halt                                          ; $4035: $76
    call nc, $e7b1                                ; $4036: $d4 $b1 $e7
    sbc [hl]                                      ; $4039: $9e
    cp b                                          ; $403a: $b8
    ld l, e                                       ; $403b: $6b
    xor [hl]                                      ; $403c: $ae
    inc a                                         ; $403d: $3c
    ld a, [$1705]                                 ; $403e: $fa $05 $17
    ld d, c                                       ; $4041: $51
    jp hl                                         ; $4042: $e9


    or h                                          ; $4043: $b4
    pop de                                        ; $4044: $d1
    ld e, l                                       ; $4045: $5d
    add $19                                       ; $4046: $c6 $19
    ld [hl], d                                    ; $4048: $72
    sbc a                                         ; $4049: $9f
    add a                                         ; $404a: $87
    and $c5                                       ; $404b: $e6 $c5
    ccf                                           ; $404d: $3f
    ld b, a                                       ; $404e: $47
    ld [$7e82], a                                 ; $404f: $ea $82 $7e
    ld a, $de                                     ; $4052: $3e $de
    dec sp                                        ; $4054: $3b
    ld [$73d8], a                                 ; $4055: $ea $d8 $73
    ld c, a                                       ; $4058: $4f
    call c, Call_060_5735                         ; $4059: $dc $35 $57
    ld e, $fd                                     ; $405c: $1e $fd
    ld [bc], a                                    ; $405e: $02
    ld l, l                                       ; $405f: $6d
    ld e, [hl]                                    ; $4060: $5e
    inc d                                         ; $4061: $14
    sub d                                         ; $4062: $92
    add hl, hl                                    ; $4063: $29
    cp l                                          ; $4064: $bd
    dec sp                                        ; $4065: $3b
    rst $30                                       ; $4066: $f7
    ld b, b                                       ; $4067: $40
    and c                                         ; $4068: $a1
    db $ed                                        ; $4069: $ed
    di                                            ; $406a: $f3
    ld d, b                                       ; $406b: $50
    sbc a                                         ; $406c: $9f
    ld [hl], e                                    ; $406d: $73
    db $ed                                        ; $406e: $ed
    ccf                                           ; $406f: $3f
    ld d, e                                       ; $4070: $53
    or e                                          ; $4071: $b3
    dec hl                                        ; $4072: $2b
    inc bc                                        ; $4073: $03
    or e                                          ; $4074: $b3
    di                                            ; $4075: $f3
    ld a, [hl]                                    ; $4076: $7e
    ld bc, $e66d                                  ; $4077: $01 $6d $e6
    add hl, sp                                    ; $407a: $39
    ld b, a                                       ; $407b: $47
    ld [hl], a                                    ; $407c: $77
    cp c                                          ; $407d: $b9
    ld e, a                                       ; $407e: $5f
    db $ed                                        ; $407f: $ed
    ld [hl], c                                    ; $4080: $71
    ret z                                         ; $4081: $c8

    ld d, l                                       ; $4082: $55
    and l                                         ; $4083: $a5
    ld b, a                                       ; $4084: $47
    sub c                                         ; $4085: $91
    dec b                                         ; $4086: $05
    ld a, l                                       ; $4087: $7d
    xor a                                         ; $4088: $af
    call $e73c                                    ; $4089: $cd $3c $e7
    ld l, $c8                                     ; $408c: $2e $c8
    rst $18                                       ; $408e: $df
    ld l, b                                       ; $408f: $68
    sbc b                                         ; $4090: $98
    or [hl]                                       ; $4091: $b6
    ld d, b                                       ; $4092: $50
    add [hl]                                      ; $4093: $86
    and $39                                       ; $4094: $e6 $39
    ld [hl], a                                    ; $4096: $77
    ld [hl], c                                    ; $4097: $71
    ret nc                                        ; $4098: $d0

    ld [hl], h                                    ; $4099: $74
    rst $18                                       ; $409a: $df
    cpl                                           ; $409b: $2f
    rla                                           ; $409c: $17
    and a                                         ; $409d: $a7
    ld b, [hl]                                    ; $409e: $46
    ld hl, sp+$7e                                 ; $409f: $f8 $7e
    ld bc, $3fed                                  ; $40a1: $01 $ed $3f
    push de                                       ; $40a4: $d5
    db $fd                                        ; $40a5: $fd
    ld [bc], a                                    ; $40a6: $02
    rlca                                          ; $40a7: $07
    ld e, h                                       ; $40a8: $5c
    ld d, [hl]                                    ; $40a9: $56
    sbc l                                         ; $40aa: $9d
    or h                                          ; $40ab: $b4
    ld a, l                                       ; $40ac: $7d
    ld e, $ea                                     ; $40ad: $1e $ea
    inc hl                                        ; $40af: $23
    ld a, a                                       ; $40b0: $7f
    adc [hl]                                      ; $40b1: $8e
    ld d, e                                       ; $40b2: $53
    adc a                                         ; $40b3: $8f
    ld [hl+], a                                   ; $40b4: $22
    di                                            ; $40b5: $f3
    xor [hl]                                      ; $40b6: $ae
    rst $30                                       ; $40b7: $f7
    xor a                                         ; $40b8: $af
    db $dd                                        ; $40b9: $dd
    sbc d                                         ; $40ba: $9a
    ld a, e                                       ; $40bb: $7b
    cp e                                          ; $40bc: $bb
    adc [hl]                                      ; $40bd: $8e
    sub d                                         ; $40be: $92
    adc e                                         ; $40bf: $8b
    ld b, d                                       ; $40c0: $42
    ld d, [hl]                                    ; $40c1: $56
    jr z, jr_060_40d0                             ; $40c2: $28 $0c

    add l                                         ; $40c4: $85
    or [hl]                                       ; $40c5: $b6
    dec hl                                        ; $40c6: $2b
    inc bc                                        ; $40c7: $03
    or e                                          ; $40c8: $b3
    sub e                                         ; $40c9: $93
    ld [hl], $d4                                  ; $40ca: $36 $d4
    ld d, a                                       ; $40cc: $57
    push de                                       ; $40cd: $d5
    rst $28                                       ; $40ce: $ef
    inc bc                                        ; $40cf: $03

jr_060_40d0:
    and l                                         ; $40d0: $a5
    cp h                                          ; $40d1: $bc
    add a                                         ; $40d2: $87
    ld [hl+], a                                   ; $40d3: $22
    push bc                                       ; $40d4: $c5
    ld b, e                                       ; $40d5: $43
    jr z, jr_060_4153                             ; $40d6: $28 $7b

    adc h                                         ; $40d8: $8c
    ld b, e                                       ; $40d9: $43
    cpl                                           ; $40da: $2f
    ld a, [bc]                                    ; $40db: $0a
    xor c                                         ; $40dc: $a9
    sbc h                                         ; $40dd: $9c
    db $ec                                        ; $40de: $ec
    ld b, l                                       ; $40df: $45
    and c                                         ; $40e0: $a1
    xor e                                         ; $40e1: $ab
    ei                                            ; $40e2: $fb
    dec b                                         ; $40e3: $05
    rlca                                          ; $40e4: $07
    ld e, h                                       ; $40e5: $5c
    ld d, $1b                                     ; $40e6: $16 $1b
    daa                                           ; $40e8: $27
    ld b, c                                       ; $40e9: $41
    pop de                                        ; $40ea: $d1
    ld b, [hl]                                    ; $40eb: $46
    add $7e                                       ; $40ec: $c6 $7e
    add [hl]                                      ; $40ee: $86
    adc $39                                       ; $40ef: $ce $39
    add a                                         ; $40f1: $87
    ld e, [hl]                                    ; $40f2: $5e
    inc d                                         ; $40f3: $14
    ld d, d                                       ; $40f4: $52
    add hl, sp                                    ; $40f5: $39
    reti                                          ; $40f6: $d9


    adc e                                         ; $40f7: $8b
    ld b, d                                       ; $40f8: $42
    ld d, a                                       ; $40f9: $57
    rst $30                                       ; $40fa: $f7
    dec bc                                        ; $40fb: $0b
    ld l, l                                       ; $40fc: $6d
    ld a, [$7a1a]                                 ; $40fd: $fa $1a $7a
    and d                                         ; $4100: $a2
    rla                                           ; $4101: $17
    ld d, e                                       ; $4102: $53
    jp nc, $9c7b                                  ; $4103: $d2 $7b $9c

    ld e, $49                                     ; $4106: $1e $49
    adc l                                         ; $4108: $8d
    ld a, [hl-]                                   ; $4109: $3a
    inc d                                         ; $410a: $14
    jp c, Jump_000_0cae                           ; $410b: $da $ae $0c

    call z, Call_060_7bce                         ; $410e: $cc $ce $7b
    rla                                           ; $4111: $17
    or $ee                                        ; $4112: $f6 $ee

Call_060_4114:
    xor h                                         ; $4114: $ac
    or e                                          ; $4115: $b3
    and b                                         ; $4116: $a0
    ld [hl], e                                    ; $4117: $73
    xor b                                         ; $4118: $a8
    xor a                                         ; $4119: $af
    add [hl]                                      ; $411a: $86
    ld h, a                                       ; $411b: $67
    rst $10                                       ; $411c: $d7
    ei                                            ; $411d: $fb
    rst $10                                       ; $411e: $d7
    ld l, [hl]                                    ; $411f: $6e
    call Call_000_02fd                            ; $4120: $cd $fd $02
    rlca                                          ; $4123: $07
    ld e, h                                       ; $4124: $5c
    ld d, $43                                     ; $4125: $16 $43
    ld e, a                                       ; $4127: $5f
    ld [hl], $d1                                  ; $4128: $36 $d1
    ld b, e                                       ; $412a: $43
    jr z, jr_060_4190                             ; $412b: $28 $63

    add sp, -$05                                  ; $412d: $e8 $fb
    cp h                                          ; $412f: $bc
    jp nc, Jump_060_5fbc                          ; $4130: $d2 $bc $5f

    rst $10                                       ; $4133: $d7
    pop bc                                        ; $4134: $c1
    ld c, d                                       ; $4135: $4a
    inc sp                                        ; $4136: $33
    rlca                                          ; $4137: $07
    ld c, d                                       ; $4138: $4a
    sbc c                                         ; $4139: $99
    or [hl]                                       ; $413a: $b6
    adc b                                         ; $413b: $88
    sbc d                                         ; $413c: $9a

jr_060_413d:
    adc e                                         ; $413d: $8b
    ld h, c                                       ; $413e: $61
    db $e4                                        ; $413f: $e4
    rst $08                                       ; $4140: $cf
    ld b, l                                       ; $4141: $45
    ld c, l                                       ; $4142: $4d
    di                                            ; $4143: $f3
    inc h                                         ; $4144: $24
    inc d                                         ; $4145: $14
    di                                            ; $4146: $f3
    ld a, [hl]                                    ; $4147: $7e
    inc [hl]                                      ; $4148: $34

Call_060_4149:
    cp d                                          ; $4149: $ba
    db $d3                                        ; $414a: $d3
    ld [hl], l                                    ; $414b: $75
    or l                                          ; $414c: $b5
    add e                                         ; $414d: $83
    cp d                                          ; $414e: $ba
    ld [hl], a                                    ; $414f: $77
    call $232f                                    ; $4150: $cd $2f $23

jr_060_4153:
    db $e3                                        ; $4153: $e3
    adc a                                         ; $4154: $8f
    cp e                                          ; $4155: $bb
    ld h, h                                       ; $4156: $64
    ld sp, $91f4                                  ; $4157: $31 $f4 $91
    ccf                                           ; $415a: $3f
    ld [hl], $6d                                  ; $415b: $36 $6d
    sbc b                                         ; $415d: $98
    sub [hl]                                      ; $415e: $96
    ld h, d                                       ; $415f: $62
    db $ed                                        ; $4160: $ed
    cpl                                           ; $4161: $2f
    ld d, a                                       ; $4162: $57
    ld b, d                                       ; $4163: $42
    xor h                                         ; $4164: $ac
    db $fd                                        ; $4165: $fd
    dec b                                         ; $4166: $05
    sub a                                         ; $4167: $97
    ld d, d                                       ; $4168: $52
    dec de                                        ; $4169: $1b
    and e                                         ; $416a: $a3
    dec sp                                        ; $416b: $3b
    ld e, l                                       ; $416c: $5d
    rst $20                                       ; $416d: $e7
    ld h, d                                       ; $416e: $62
    ld e, [hl]                                    ; $416f: $5e
    db $ed                                        ; $4170: $ed
    and b                                         ; $4171: $a0
    ld h, $94                                     ; $4172: $26 $94
    jp z, $f95e                                   ; $4174: $ca $5e $f9

    ld d, d                                       ; $4177: $52
    or h                                          ; $4178: $b4
    cp a                                          ; $4179: $bf
    rst $10                                       ; $417a: $d7
    pop bc                                        ; $417b: $c1
    sbc h                                         ; $417c: $9c
    inc bc                                        ; $417d: $03
    and l                                         ; $417e: $a5
    cp h                                          ; $417f: $bc
    adc b                                         ; $4180: $88
    sub d                                         ; $4181: $92
    ld [$7bc5], sp                                ; $4182: $08 $c5 $7b
    adc h                                         ; $4185: $8c
    ld b, e                                       ; $4186: $43
    jr z, jr_060_413d                             ; $4187: $28 $b4

    ld e, l                                       ; $4189: $5d
    add hl, de                                    ; $418a: $19
    sbc b                                         ; $418b: $98

jr_060_418c:
    sbc l                                         ; $418c: $9d
    jp c, $d75f                                   ; $418d: $da $5f $d7

jr_060_4190:
    ld a, h                                       ; $4190: $7c
    or l                                          ; $4191: $b5
    xor d                                         ; $4192: $aa
    ld a, [hl]                                    ; $4193: $7e
    rra                                           ; $4194: $1f
    ld [$7f23], a                                 ; $4195: $ea $23 $7f
    ld l, h                                       ; $4198: $6c
    jp c, Jump_000_0cae                           ; $4199: $da $ae $0c

    call z, Call_060_7bce                         ; $419c: $cc $ce $7b
    sub a                                         ; $419f: $97
    db $eb                                        ; $41a0: $eb
    ld h, e                                       ; $41a1: $63
    adc d                                         ; $41a2: $8a
    jr z, jr_060_418c                             ; $41a3: $28 $e7

    ld d, b                                       ; $41a5: $50
    rra                                           ; $41a6: $1f
    ld b, d                                       ; $41a7: $42
    reti                                          ; $41a8: $d9


    db $d3                                        ; $41a9: $d3
    xor h                                         ; $41aa: $ac
    jp z, $cf0b                                   ; $41ab: $ca $0b $cf

    inc l                                         ; $41ae: $2c
    ei                                            ; $41af: $fb
    add d                                         ; $41b0: $82
    sub [hl]                                      ; $41b1: $96
    sub l                                         ; $41b2: $95
    cpl                                           ; $41b3: $2f
    ld h, l                                       ; $41b4: $65
    ld de, $8735                                  ; $41b5: $11 $35 $87
    ld a, [$8c74]                                 ; $41b8: $fa $74 $8c
    ld b, d                                       ; $41bb: $42
    ld h, d                                       ; $41bc: $62
    ld a, [hl-]                                   ; $41bd: $3a
    add a                                         ; $41be: $87
    jr nz, jr_060_41cc                            ; $41bf: $20 $0b

    or c                                          ; $41c1: $b1
    di                                            ; $41c2: $f3
    ld sp, hl                                     ; $41c3: $f9
    add d                                         ; $41c4: $82
    rst $30                                       ; $41c5: $f7
    dec bc                                        ; $41c6: $0b
    db $ed                                        ; $41c7: $ed
    xor $08                                       ; $41c8: $ee $08
    add l                                         ; $41ca: $85
    rla                                           ; $41cb: $17

jr_060_41cc:
    add l                                         ; $41cc: $85
    call c, $dfc1                                 ; $41cd: $dc $c1 $df
    and e                                         ; $41d0: $a3
    and b                                         ; $41d1: $a0
    and c                                         ; $41d2: $a1
    db $ed                                        ; $41d3: $ed
    di                                            ; $41d4: $f3
    add sp, $2e                                   ; $41d5: $e8 $2e
    inc bc                                        ; $41d7: $03
    and l                                         ; $41d8: $a5
    cp h                                          ; $41d9: $bc
    ld hl, sp-$19                                 ; $41da: $f8 $e7
    ld c, b                                       ; $41dc: $48
    and a                                         ; $41dd: $a7
    or $b5                                        ; $41de: $f6 $b5
    dec h                                         ; $41e0: $25
    xor b                                         ; $41e1: $a8
    and c                                         ; $41e2: $a1
    ld b, l                                       ; $41e3: $45
    cp h                                          ; $41e4: $bc
    db $eb                                        ; $41e5: $eb
    and c                                         ; $41e6: $a1
    inc d                                         ; $41e7: $14
    dec bc                                        ; $41e8: $0b
    ld sp, $3c77                                  ; $41e9: $31 $77 $3c
    adc $1d                                       ; $41ec: $ce $1d
    ld d, h                                       ; $41ee: $54
    add l                                         ; $41ef: $85
    inc e                                         ; $41f0: $1c
    ld l, l                                       ; $41f1: $6d
    ld l, b                                       ; $41f2: $68
    ld e, c                                       ; $41f3: $59
    ld d, l                                       ; $41f4: $55
    cp a                                          ; $41f5: $bf
    ld c, a                                       ; $41f6: $4f
    add d                                         ; $41f7: $82
    ld e, d                                       ; $41f8: $5a
    ld c, b                                       ; $41f9: $48
    inc d                                         ; $41fa: $14
    rrca                                          ; $41fb: $0f
    ld b, c                                       ; $41fc: $41
    cp h                                          ; $41fd: $bc
    jp c, $fbcc                                   ; $41fe: $da $cc $fb

    dec b                                         ; $4201: $05
    add a                                         ; $4202: $87
    sbc d                                         ; $4203: $9a
    ld hl, sp+$65                                 ; $4204: $f8 $65
    ld d, l                                       ; $4206: $55
    db $fd                                        ; $4207: $fd
    ld a, $cb                                     ; $4208: $3e $cb
    ld a, [de]                                    ; $420a: $1a
    call nc, Call_000_3dde                        ; $420b: $d4 $de $3d
    ld a, [c]                                     ; $420e: $f2
    rst $00                                       ; $420f: $c7
    ld e, $9a                                     ; $4210: $1e $9a
    or l                                          ; $4212: $b5
    cp a                                          ; $4213: $bf
    ld l, l                                       ; $4214: $6d
    sub [hl]                                      ; $4215: $96
    push de                                       ; $4216: $d5
    adc a                                         ; $4217: $8f
    or h                                          ; $4218: $b4
    or l                                          ; $4219: $b5
    rst $38                                       ; $421a: $ff
    ld c, h                                       ; $421b: $4c
    call Call_000_02fd                            ; $421c: $cd $fd $02
    add a                                         ; $421f: $87
    ld b, b                                       ; $4220: $40
    add hl, hl                                    ; $4221: $29
    rr d                                          ; $4222: $cb $1a
    cp a                                          ; $4224: $bf
    rst $30                                       ; $4225: $f7
    adc a                                         ; $4226: $8f
    ld e, [hl]                                    ; $4227: $5e
    inc d                                         ; $4228: $14
    ld [hl], d                                    ; $4229: $72
    sub [hl]                                      ; $422a: $96
    push de                                       ; $422b: $d5
    ld b, a                                       ; $422c: $47
    rst $28                                       ; $422d: $ef
    ld e, [hl]                                    ; $422e: $5e
    db $ed                                        ; $422f: $ed
    and b                                         ; $4230: $a0
    xor $17                                       ; $4231: $ee $17
    rla                                           ; $4233: $17
    rlca                                          ; $4234: $07
    db $e4                                        ; $4235: $e4
    or l                                          ; $4236: $b5
    rst $38                                       ; $4237: $ff
    ld c, h                                       ; $4238: $4c
    dec c                                         ; $4239: $0d
    ld l, l                                       ; $423a: $6d
    ld l, b                                       ; $423b: $68
    ld e, $f9                                     ; $423c: $1e $f9
    ld h, e                                       ; $423e: $63
    db $f4                                        ; $423f: $f4
    ret z                                         ; $4240: $c8

    cpl                                           ; $4241: $2f
    adc e                                         ; $4242: $8b
    ld b, d                                       ; $4243: $42
    ld [hl-], a                                   ; $4244: $32
    db $dd                                        ; $4245: $dd
    jp nz, Jump_000_0bf7                          ; $4246: $c2 $f7 $0b

    sub a                                         ; $4249: $97
    db $eb                                        ; $424a: $eb
    ld l, e                                       ; $424b: $6b
    ld [hl], h                                    ; $424c: $74
    adc b                                         ; $424d: $88
    sbc l                                         ; $424e: $9d
    inc hl                                        ; $424f: $23
    cp a                                          ; $4250: $bf
    call z, $a282                                 ; $4251: $cc $82 $a2
    cpl                                           ; $4254: $2f
    and [hl]                                      ; $4255: $a6
    ld h, h                                       ; $4256: $64
    sbc d                                         ; $4257: $9a
    ld [hl], $fe                                  ; $4258: $36 $fe
    ld c, d                                       ; $425a: $4a
    sbc c                                         ; $425b: $99
    rla                                           ; $425c: $17
    ld d, e                                       ; $425d: $53
    jp nc, $2843                                  ; $425e: $d2 $43 $28

    jp c, Jump_000_075f                           ; $4261: $da $5f $07

    sbc e                                         ; $4264: $9b
    ld d, l                                       ; $4265: $55

jr_060_4266:
    ld a, c                                       ; $4266: $79
    adc $a1                                       ; $4267: $ce $a1
    ld a, $50                                     ; $4269: $3e $50
    jp z, $cdab                                   ; $426b: $ca $ab $cd

    sub l                                         ; $426e: $95
    add b                                         ; $426f: $80
    or h                                          ; $4270: $b4
    push de                                       ; $4271: $d5
    ldh a, [$ec]                                  ; $4272: $f0 $ec
    rst $30                                       ; $4274: $f7
    xor $55                                       ; $4275: $ee $55
    jr z, @-$30                                   ; $4277: $28 $ce

    ld a, l                                       ; $4279: $7d
    ld e, $ea                                     ; $427a: $1e $ea
    ld [hl], e                                    ; $427c: $73
    sbc $2f                                       ; $427d: $de $2f
    sub a                                         ; $427f: $97
    db $eb                                        ; $4280: $eb
    ei                                            ; $4281: $fb
    and d                                         ; $4282: $a2
    jp nz, $38f3                                  ; $4283: $c2 $f3 $38

    rla                                           ; $4286: $17
    jp $fa18                                      ; $4287: $c3 $18 $fa


    jp c, Jump_000_2143                           ; $428a: $da $43 $21

    or $93                                        ; $428d: $f6 $93
    db $eb                                        ; $428f: $eb
    cp l                                          ; $4290: $bd
    ld c, e                                       ; $4291: $4b
    ld [hl+], a                                   ; $4292: $22
    ld l, d                                       ; $4293: $6a
    adc [hl]                                      ; $4294: $8e
    xor $5c                                       ; $4295: $ee $5c
    ld l, h                                       ; $4297: $6c
    jp hl                                         ; $4298: $e9


    ld d, b                                       ; $4299: $50
    ld a, [hl+]                                   ; $429a: $2a
    adc a                                         ; $429b: $8f
    xor $74                                       ; $429c: $ee $74
    ld e, l                                       ; $429e: $5d
    ld a, e                                       ; $429f: $7b
    jr z, jr_060_4266                             ; $42a0: $28 $c4

    ld a, [hl]                                    ; $42a2: $7e
    ld [hl], d                                    ; $42a3: $72
    ld h, l                                       ; $42a4: $65
    ld a, [hl+]                                   ; $42a5: $2a
    sbc l                                         ; $42a6: $9d

jr_060_42a7:
    or [hl]                                       ; $42a7: $b6
    adc b                                         ; $42a8: $88
    sbc d                                         ; $42a9: $9a
    cp e                                          ; $42aa: $bb
    ld h, h                                       ; $42ab: $64
    sub l                                         ; $42ac: $95
    and c                                         ; $42ad: $a1
    jr c, jr_060_42a7                             ; $42ae: $38 $f7

    and e                                         ; $42b0: $a3
    ei                                            ; $42b1: $fb
    dec b                                         ; $42b2: $05
    rla                                           ; $42b3: $17
    ld d, c                                       ; $42b4: $51
    ld a, e                                       ; $42b5: $7b
    reti                                          ; $42b6: $d9


    inc bc                                        ; $42b7: $03
    ld h, l                                       ; $42b8: $65
    cp a                                          ; $42b9: $bf
    ld [hl], a                                    ; $42ba: $77
    xor a                                         ; $42bb: $af
    cp $e7                                        ; $42bc: $fe $e7
    or c                                          ; $42be: $b1
    call c, $d72f                                 ; $42bf: $dc $2f $d7
    pop bc                                        ; $42c2: $c1
    ld hl, sp+$17                                 ; $42c3: $f8 $17
    rst $20                                       ; $42c5: $e7
    ld a, [de]                                    ; $42c6: $1a
    ld c, l                                       ; $42c7: $4d
    or h                                          ; $42c8: $b4
    ld a, b                                       ; $42c9: $78
    and h                                         ; $42ca: $a4
    inc sp                                        ; $42cb: $33
    jp z, Jump_060_50bf                           ; $42cc: $ca $bf $50

    ld d, [hl]                                    ; $42cf: $56
    ld c, l                                       ; $42d0: $4d
    rst $28                                       ; $42d1: $ef
    adc $85                                       ; $42d2: $ce $85
    ret c                                         ; $42d4: $d8

    cp c                                          ; $42d5: $b9
    ld d, [hl]                                    ; $42d6: $56
    ld [hl], e                                    ; $42d7: $73
    ld l, b                                       ; $42d8: $68
    reti                                          ; $42d9: $d9


    rla                                           ; $42da: $17
    or h                                          ; $42db: $b4
    xor h                                         ; $42dc: $ac
    ld [bc], a                                    ; $42dd: $02
    ld a, d                                       ; $42de: $7a
    ccf                                           ; $42df: $3f
    ld e, d                                       ; $42e0: $5a
    and l                                         ; $42e1: $a5
    ld e, d                                       ; $42e2: $5a
    add $d0                                       ; $42e3: $c6 $d0
    rst $10                                       ; $42e5: $d7
    ld e, $0a                                     ; $42e6: $1e $0a
    or c                                          ; $42e8: $b1
    sbc a                                         ; $42e9: $9f
    ld e, h                                       ; $42ea: $5c
    rst $28                                       ; $42eb: $ef
    or l                                          ; $42ec: $b5
    db $eb                                        ; $42ed: $eb

jr_060_42ee:
    ld d, l                                       ; $42ee: $55
    db $ed                                        ; $42ef: $ed
    di                                            ; $42f0: $f3
    ret z                                         ; $42f1: $c8

    ret nc                                        ; $42f2: $d0

    pop de                                        ; $42f3: $d1
    inc hl                                        ; $42f4: $23
    add hl, hl                                    ; $42f5: $29
    add d                                         ; $42f6: $82
    adc $85                                       ; $42f7: $ce $85
    or d                                          ; $42f9: $b2
    adc b                                         ; $42fa: $88
    adc d                                         ; $42fb: $8a
    add sp, $1c                                   ; $42fc: $e8 $1c
    xor h                                         ; $42fe: $ac
    pop de                                        ; $42ff: $d1
    ld b, h                                       ; $4300: $44
    bit 0, d                                      ; $4301: $cb $42

jr_060_4303:
    ld e, c                                       ; $4303: $59
    rst $38                                       ; $4304: $ff
    ld b, a                                       ; $4305: $47
    ld l, $a6                                     ; $4306: $2e $a6
    and h                                         ; $4308: $a4
    rst $30                                       ; $4309: $f7
    jr jr_060_4303                                ; $430a: $18 $f7

    ld a, c                                       ; $430c: $79
    xor b                                         ; $430d: $a8
    ld l, c                                       ; $430e: $69
    or l                                          ; $430f: $b5
    inc a                                         ; $4310: $3c
    ld c, [hl]                                    ; $4311: $4e
    ld c, l                                       ; $4312: $4d
    rst $28                                       ; $4313: $ef
    xor [hl]                                      ; $4314: $ae
    db $fc                                        ; $4315: $fc
    ld h, e                                       ; $4316: $63
    adc e                                         ; $4317: $8b
    rlca                                          ; $4318: $07
    adc e                                         ; $4319: $8b
    cp a                                          ; $431a: $bf
    and b                                         ; $431b: $a0
    ld sp, hl                                     ; $431c: $f9
    sbc $e1                                       ; $431d: $de $e1
    inc h                                         ; $431f: $24
    ld l, l                                       ; $4320: $6d
    sub a                                         ; $4321: $97
    xor h                                         ; $4322: $ac
    xor d                                         ; $4323: $aa
    ld a, a                                       ; $4324: $7f
    db $e4                                        ; $4325: $e4
    ld b, d                                       ; $4326: $42
    xor l                                         ; $4327: $ad
    ld e, [hl]                                    ; $4328: $5e
    db $eb                                        ; $4329: $eb
    rst $10                                       ; $432a: $d7
    ld [$9ab5], a                                 ; $432b: $ea $b5 $9a
    ld d, e                                       ; $432e: $53
    sub h                                         ; $432f: $94
    and a                                         ; $4330: $a7
    push hl                                       ; $4331: $e5
    ld b, [hl]                                    ; $4332: $46
    and a                                         ; $4333: $a7
    xor b                                         ; $4334: $a8
    jp c, $9d4a                                   ; $4335: $da $4a $9d

    reti                                          ; $4338: $d9


    or d                                          ; $4339: $b2
    ld d, b                                       ; $433a: $50
    or $05                                        ; $433b: $f6 $05
    db $d3                                        ; $433d: $d3
    xor e                                         ; $433e: $ab
    inc e                                         ; $433f: $1c
    jp nc, $827b                                  ; $4340: $d2 $7b $82

    ld d, h                                       ; $4343: $54
    ld c, [hl]                                    ; $4344: $4e
    rst $18                                       ; $4345: $df
    cpl                                           ; $4346: $2f
    add a                                         ; $4347: $87
    jr c, jr_060_42ee                             ; $4348: $38 $a4

    rst $30                                       ; $434a: $f7
    inc b                                         ; $434b: $04
    xor c                                         ; $434c: $a9
    sbc h                                         ; $434d: $9c
    ld a, $e7                                     ; $434e: $3e $e7
    dec b                                         ; $4350: $05
    rlca                                          ; $4351: $07
    ld e, h                                       ; $4352: $5c
    ld d, $43                                     ; $4353: $16 $43
    rst $28                                       ; $4355: $ef
    ld e, $55                                     ; $4356: $1e $55
    xor d                                         ; $4358: $aa
    ld [hl-], a                                   ; $4359: $32
    ld l, l                                       ; $435a: $6d
    sbc a                                         ; $435b: $9f
    ld b, a                                       ; $435c: $47
    ld [hl], a                                    ; $435d: $77
    sbc c                                         ; $435e: $99
    or d                                          ; $435f: $b2
    jr nz, jr_060_43dd                            ; $4360: $20 $7b

    ld [de], a                                    ; $4362: $12
    ld c, d                                       ; $4363: $4a
    rst $30                                       ; $4364: $f7
    ld a, [de]                                    ; $4365: $1a
    xor [hl]                                      ; $4366: $ae
    ld sp, $8b25                                  ; $4367: $31 $25 $8b
    ld a, e                                       ; $436a: $7b
    ld [hl], l                                    ; $436b: $75
    sbc $2f                                       ; $436c: $de $2f
    sub a                                         ; $436e: $97
    scf                                           ; $436f: $37
    ld l, c                                       ; $4370: $69
    ei                                            ; $4371: $fb
    pop de                                        ; $4372: $d1
    ld a, [hl+]                                   ; $4373: $2a
    dec de                                        ; $4374: $1b
    rst $00                                       ; $4375: $c7
    ret nc                                        ; $4376: $d0

    rst $10                                       ; $4377: $d7
    ld l, b                                       ; $4378: $68
    and d                                         ; $4379: $a2
    push bc                                       ; $437a: $c5
    ld a, e                                       ; $437b: $7b
    adc h                                         ; $437c: $8c
    and e                                         ; $437d: $a3
    dec sp                                        ; $437e: $3b
    rst $28                                       ; $437f: $ef
    rla                                           ; $4380: $17
    ld l, l                                       ; $4381: $6d
    and $c5                                       ; $4382: $e6 $c5
    ccf                                           ; $4384: $3f
    rla                                           ; $4385: $17
    cp e                                          ; $4386: $bb
    ld c, a                                       ; $4387: $4f
    add d                                         ; $4388: $82
    ld e, d                                       ; $4389: $5a
    ld l, b                                       ; $438a: $68
    ld [hl], l                                    ; $438b: $75
    adc b                                         ; $438c: $88
    dec l                                         ; $438d: $2d
    add sp, $7b                                   ; $438e: $e8 $7b
    rla                                           ; $4390: $17
    rlca                                          ; $4391: $07
    db $e4                                        ; $4392: $e4
    xor c                                         ; $4393: $a9
    cp $d3                                        ; $4394: $fe $d3
    ld c, h                                       ; $4396: $4c
    ld e, e                                       ; $4397: $5b
    ei                                            ; $4398: $fb
    rst $08                                       ; $4399: $cf
    call nc, Call_000_2fdc                        ; $439a: $d4 $dc $2f
    ld l, l                                       ; $439d: $6d
    and $c5                                       ; $439e: $e6 $c5
    ccf                                           ; $43a0: $3f
    ld b, a                                       ; $43a1: $47
    rrca                                          ; $43a2: $0f
    ld l, e                                       ; $43a3: $6b
    db $fc                                        ; $43a4: $fc
    db $f4                                        ; $43a5: $f4
    xor $fb                                       ; $43a6: $ee $fb
    ld e, $95                                     ; $43a8: $1e $95
    ld c, d                                       ; $43aa: $4a
    xor $be                                       ; $43ab: $ee $be
    rst $28                                       ; $43ad: $ef
    pop af                                        ; $43ae: $f1
    ld d, a                                       ; $43af: $57
    rst $30                                       ; $43b0: $f7
    dec bc                                        ; $43b1: $0b
    sub a                                         ; $43b2: $97
    db $eb                                        ; $43b3: $eb
    ld a, e                                       ; $43b4: $7b

Call_060_43b5:
    cp [hl]                                       ; $43b5: $be
    sub h                                         ; $43b6: $94
    xor $5c                                       ; $43b7: $ee $5c
    inc c                                         ; $43b9: $0c
    ld l, e                                       ; $43ba: $6b
    db $fc                                        ; $43bb: $fc
    db $f4                                        ; $43bc: $f4
    inc l                                         ; $43bd: $2c
    bit 3, a                                      ; $43be: $cb $5f
    push de                                       ; $43c0: $d5
    ld l, d                                       ; $43c1: $6a
    db $eb                                        ; $43c2: $eb
    ld h, e                                       ; $43c3: $63
    ld [hl], l                                    ; $43c4: $75
    sbc d                                         ; $43c5: $9a
    push af                                       ; $43c6: $f5
    ld e, h                                       ; $43c7: $5c
    or c                                          ; $43c8: $b1
    adc b                                         ; $43c9: $88
    sbc a                                         ; $43ca: $9f
    and c                                         ; $43cb: $a1
    ld h, l                                       ; $43cc: $65
    cp d                                          ; $43cd: $ba
    and b                                         ; $43ce: $a0
    sub e                                         ; $43cf: $93
    ld e, $12                                     ; $43d0: $1e $12
    and c                                         ; $43d2: $a1
    ld a, [hl+]                                   ; $43d3: $2a
    xor a                                         ; $43d4: $af
    push af                                       ; $43d5: $f5
    ld l, e                                       ; $43d6: $6b
    db $fd                                        ; $43d7: $fd

jr_060_43d8:
    push bc                                       ; $43d8: $c5
    dec bc                                        ; $43d9: $0b
    ld h, l                                       ; $43da: $65
    and c                                         ; $43db: $a1
    dec [hl]                                      ; $43dc: $35

jr_060_43dd:
    add [hl]                                      ; $43dd: $86
    cp [hl]                                       ; $43de: $be
    jp c, $b303                                   ; $43df: $da $03 $b3

    ld sp, hl                                     ; $43e2: $f9
    ld a, [hl]                                    ; $43e3: $7e
    ld bc, $fa6d                                  ; $43e4: $01 $6d $fa
    ret nc                                        ; $43e7: $d0

    ld c, c                                       ; $43e8: $49
    dec de                                        ; $43e9: $1b
    ld sp, hl                                     ; $43ea: $f9
    ld [hl], e                                    ; $43eb: $73
    xor b                                         ; $43ec: $a8
    rrca                                          ; $43ed: $0f
    ld b, c                                       ; $43ee: $41
    add $3a                                       ; $43ef: $c6 $3a
    ld d, [hl]                                    ; $43f1: $56
    sbc a                                         ; $43f2: $9f
    di                                            ; $43f3: $f3
    ld [bc], a                                    ; $43f4: $02
    rlca                                          ; $43f5: $07
    ld a, $6d                                     ; $43f6: $3e $6d
    rst $10                                       ; $43f8: $d7
    and h                                         ; $43f9: $a4
    db $e3                                        ; $43fa: $e3
    sub b                                         ; $43fb: $90
    ld [hl], e                                    ; $43fc: $73
    xor [hl]                                      ; $43fd: $ae
    ld b, e                                       ; $43fe: $43
    pop af                                        ; $43ff: $f1
    ld c, b                                       ; $4400: $48
    daa                                           ; $4401: $27
    ld l, l                                       ; $4402: $6d
    db $fc                                        ; $4403: $fc
    push de                                       ; $4404: $d5
    db $fd                                        ; $4405: $fd
    ld [bc], a                                    ; $4406: $02
    rla                                           ; $4407: $17
    rlca                                          ; $4408: $07
    db $e4                                        ; $4409: $e4
    ld a, e                                       ; $440a: $7b
    sub a                                         ; $440b: $97
    db $eb                                        ; $440c: $eb
    ld a, e                                       ; $440d: $7b
    sbc d                                         ; $440e: $9a
    cp e                                          ; $440f: $bb
    ld h, h                                       ; $4410: $64
    ld h, h                                       ; $4411: $64
    add sp, -$18                                  ; $4412: $e8 $e8
    pop de                                        ; $4414: $d1
    sbc l                                         ; $4415: $9d
    ld h, e                                       ; $4416: $63
    add sp, $23                                   ; $4417: $e8 $23
    ld b, c                                       ; $4419: $41
    cp [hl]                                       ; $441a: $be
    and b                                         ; $441b: $a0
    ld h, l                                       ; $441c: $65
    and c                                         ; $441d: $a1
    inc c                                         ; $441e: $0c
    call nc, $ab91                                ; $441f: $d4 $91 $ab
    sbc h                                         ; $4422: $9c
    and [hl]                                      ; $4423: $a6
    ld b, a                                       ; $4424: $47
    ld e, [hl]                                    ; $4425: $5e
    ld c, h                                       ; $4426: $4c
    ld d, c                                       ; $4427: $51
    ld h, a                                       ; $4428: $67
    rst $28                                       ; $4429: $ef
    ld sp, hl                                     ; $442a: $f9
    or d                                          ; $442b: $b2
    add h                                         ; $442c: $84
    ld a, [bc]                                    ; $442d: $0a
    jp z, $dce9                                   ; $442e: $ca $e9 $dc

    rst $20                                       ; $4431: $e7
    dec a                                         ; $4432: $3d
    ld d, h                                       ; $4433: $54
    db $f4                                        ; $4434: $f4
    inc h                                         ; $4435: $24
    sub h                                         ; $4436: $94
    xor $a9                                       ; $4437: $ee $a9
    call nc, Call_000_2c34                        ; $4439: $d4 $34 $2c
    add sp, -$57                                  ; $443c: $e8 $a9
    db $fc                                        ; $443e: $fc
    ld [hl], c                                    ; $443f: $71
    rra                                           ; $4440: $1f
    add hl, de                                    ; $4441: $19
    ld b, e                                       ; $4442: $43
    db $dd                                        ; $4443: $dd
    di                                            ; $4444: $f3
    ld h, l                                       ; $4445: $65
    ld de, $29dd                                  ; $4446: $11 $dd $29
    adc $55                                       ; $4449: $ce $55
    jr z, jr_060_43d8                             ; $444b: $28 $8b

    ld a, [c]                                     ; $444d: $f2
    adc a                                         ; $444e: $8f
    inc c                                         ; $444f: $0c
    or c                                          ; $4450: $b1
    or c                                          ; $4451: $b1
    ld a, h                                       ; $4452: $7c
    add hl, hl                                    ; $4453: $29

jr_060_4454:
    sub [hl]                                      ; $4454: $96
    ld a, e                                       ; $4455: $7b
    sub a                                         ; $4456: $97
    xor h                                         ; $4457: $ac
    xor d                                         ; $4458: $aa
    rst $18                                       ; $4459: $df
    rlca                                          ; $445a: $07
    ld [$31c8], a                                 ; $445b: $ea $c8 $31
    ld b, l                                       ; $445e: $45
    sub h                                         ; $445f: $94
    rst $10                                       ; $4460: $d7
    ld l, d                                       ; $4461: $6a
    xor $f3                                       ; $4462: $ee $f3
    sbc [hl]                                      ; $4464: $9e
    cpl                                           ; $4465: $2f
    ld d, e                                       ; $4466: $53
    rst $38                                       ; $4467: $ff
    ret z                                         ; $4468: $c8

    ld b, l                                       ; $4469: $45
    jr nz, jr_060_4454                            ; $446a: $20 $e8

    ld d, l                                       ; $446c: $55
    push af                                       ; $446d: $f5
    sbc c                                         ; $446e: $99
    dec a                                         ; $446f: $3d
    dec e                                         ; $4470: $1d
    dec a                                         ; $4471: $3d
    ld e, b                                       ; $4472: $58
    dec b                                         ; $4473: $05
    or h                                          ; $4474: $b4
    ld a, [bc]                                    ; $4475: $0a
    sbc c                                         ; $4476: $99
    add b                                         ; $4477: $80
    ld hl, $e29d                                  ; $4478: $21 $9d $e2
    ld a, e                                       ; $447b: $7b
    add a                                         ; $447c: $87
    sbc d                                         ; $447d: $9a
    dec hl                                        ; $447e: $2b
    call Call_000_0c5c                            ; $447f: $cd $5c $0c
    rst $30                                       ; $4482: $f7
    dec bc                                        ; $4483: $0b
    sub a                                         ; $4484: $97
    scf                                           ; $4485: $37
    ld l, c                                       ; $4486: $69
    ld b, e                                       ; $4487: $43
    rst $20                                       ; $4488: $e7
    sbc h                                         ; $4489: $9c
    ld b, e                                       ; $448a: $43
    ld e, l                                       ; $448b: $5d
    ei                                            ; $448c: $fb
    xor [hl]                                      ; $448d: $ae
    ld c, h                                       ; $448e: $4c
    ld l, d                                       ; $448f: $6a
    inc a                                         ; $4490: $3c
    pop de                                        ; $4491: $d1
    rst $30                                       ; $4492: $f7
    ld a, c                                       ; $4493: $79
    ld h, h                                       ; $4494: $64
    add sp, -$18                                  ; $4495: $e8 $e8
    ld [hl], c                                    ; $4497: $71
    ld [bc], a                                    ; $4498: $02
    ld l, e                                       ; $4499: $6b
    ld a, a                                       ; $449a: $7f
    ld bc, $e66d                                  ; $449b: $01 $6d $e6
    add hl, sp                                    ; $449e: $39
    rlca                                          ; $449f: $07
    ld [$e9c8], a                                 ; $44a0: $ea $c8 $e9
    pop de                                        ; $44a3: $d1
    rst $08                                       ; $44a4: $cf
    ld c, $85                                     ; $44a5: $0e $85
    rst $30                                       ; $44a7: $f7
    ld a, c                                       ; $44a8: $79
    sub l                                         ; $44a9: $95
    db $d3                                        ; $44aa: $d3
    db $f4                                        ; $44ab: $f4
    ret z                                         ; $44ac: $c8

    ld c, e                                       ; $44ad: $4b
    ld e, l                                       ; $44ae: $5d
    sub b                                         ; $44af: $90
    rst $30                                       ; $44b0: $f7
    cp e                                          ; $44b1: $bb
    push bc                                       ; $44b2: $c5
    or h                                          ; $44b3: $b4
    or l                                          ; $44b4: $b5
    rst $38                                       ; $44b5: $ff
    ld c, h                                       ; $44b6: $4c
    call Call_000_02fd                            ; $44b7: $cd $fd $02
    rla                                           ; $44ba: $17
    scf                                           ; $44bb: $37
    sub a                                         ; $44bc: $97
    cp a                                          ; $44bd: $bf
    xor d                                         ; $44be: $aa
    ld sp, $7bf4                                  ; $44bf: $31 $f4 $7b
    rlca                                          ; $44c2: $07
    ld e, h                                       ; $44c3: $5c
    ld d, $43                                     ; $44c4: $16 $43
    rra                                           ; $44c6: $1f
    xor b                                         ; $44c7: $a8

jr_060_44c8:
    inc hl                                        ; $44c8: $23
    rst $00                                       ; $44c9: $c7
    ret nc                                        ; $44ca: $d0

    rst $30                                       ; $44cb: $f7
    ld a, c                                       ; $44cc: $79
    or c                                          ; $44cd: $b1
    dec b                                         ; $44ce: $05
    cp l                                          ; $44cf: $bd
    ldh a, [$2c]                                  ; $44d0: $f0 $2c
    ld a, [bc]                                    ; $44d2: $0a
    cp c                                          ; $44d3: $b9
    rst $08                                       ; $44d4: $cf
    db $eb                                        ; $44d5: $eb
    ld b, [hl]                                    ; $44d6: $46
    rst $08                                       ; $44d7: $cf
    ld de, $573b                                  ; $44d8: $11 $3b $57
    add hl, sp                                    ; $44db: $39
    ld c, l                                       ; $44dc: $4d
    adc a                                         ; $44dd: $8f
    sbc h                                         ; $44de: $9c
    ld e, [hl]                                    ; $44df: $5e
    xor e                                         ; $44e0: $ab
    cp c                                          ; $44e1: $b9
    rra                                           ; $44e2: $1f
    push bc                                       ; $44e3: $c5
    and [hl]                                      ; $44e4: $a6
    ei                                            ; $44e5: $fb
    ld a, [hl]                                    ; $44e6: $7e
    ld bc, $5c07                                  ; $44e7: $01 $07 $5c
    ld d, $ff                                     ; $44ea: $16 $ff
    ld e, h                                       ; $44ec: $5c
    jp $f34a                                      ; $44ed: $c3 $4a $f3


    and h                                         ; $44f0: $a4
    ld a, c                                       ; $44f1: $79
    ld d, c                                       ; $44f2: $51
    ret z                                         ; $44f3: $c8

    ld hl, $da14                                  ; $44f4: $21 $14 $da
    jp c, $a67f                                   ; $44f7: $da $7f $a6

    and $7e                                       ; $44fa: $e6 $7e
    ld bc, $e66d                                  ; $44fc: $01 $6d $e6
    add hl, sp                                    ; $44ff: $39
    rlca                                          ; $4500: $07
    ld [$b5c8], a                                 ; $4501: $ea $c8 $b5
    jr z, jr_060_44c8                             ; $4504: $28 $c2

    dec hl                                        ; $4506: $2b
    db $f4                                        ; $4507: $f4
    sub b                                         ; $4508: $90
    inc a                                         ; $4509: $3c
    ld l, c                                       ; $450a: $69
    and $50                                       ; $450b: $e6 $50
    ld e, a                                       ; $450d: $5f
    push hl                                       ; $450e: $e5
    inc [hl]                                      ; $450f: $34
    dec a                                         ; $4510: $3d
    ld [hl], d                                    ; $4511: $72
    ld l, $3c                                     ; $4512: $2e $3c
    dec bc                                        ; $4514: $0b
    ld h, l                                       ; $4515: $65
    add l                                         ; $4516: $85
    sbc d                                         ; $4517: $9a
    dec hl                                        ; $4518: $2b
    rst $38                                       ; $4519: $ff
    jp hl                                         ; $451a: $e9


    ld e, [hl]                                    ; $451b: $5e
    ei                                            ; $451c: $fb
    cpl                                           ; $451d: $2f
    add hl, bc                                    ; $451e: $09
    cp b                                          ; $451f: $b8
    add [hl]                                      ; $4520: $86
    sub l                                         ; $4521: $95
    and $49                                       ; $4522: $e6 $49
    inc sp                                        ; $4524: $33
    ld l, l                                       ; $4525: $6d
    db $ed                                        ; $4526: $ed
    ccf                                           ; $4527: $3f
    ld d, e                                       ; $4528: $53
    ld [hl], e                                    ; $4529: $73
    cp a                                          ; $452a: $bf
    rst $20                                       ; $452b: $e7
    push af                                       ; $452c: $f5
    xor $7d                                       ; $452d: $ee $7d
    pop bc                                        ; $452f: $c1
    db $f4                                        ; $4530: $f4
    sbc h                                         ; $4531: $9c
    ei                                            ; $4532: $fb
    cp l                                          ; $4533: $bd
    dec sp                                        ; $4534: $3b
    adc l                                         ; $4535: $8d
    sbc [hl]                                      ; $4536: $9e
    ld a, [bc]                                    ; $4537: $0a
    rst $08                                       ; $4538: $cf
    ld h, e                                       ; $4539: $63
    ld e, $08                                     ; $453a: $1e $08
    ld e, d                                       ; $453c: $5a
    and d                                         ; $453d: $a2
    sub b                                         ; $453e: $90
    rst $30                                       ; $453f: $f7
    dec bc                                        ; $4540: $0b
    ld l, l                                       ; $4541: $6d
    ld a, [$7854]                                 ; $4542: $fa $54 $78
    ld e, $e7                                     ; $4545: $1e $e7
    ld e, $a7                                     ; $4547: $1e $a7
    rst $10                                       ; $4549: $d7
    ld l, d                                       ; $454a: $6a
    xor $47                                       ; $454b: $ee $47
    or c                                          ; $454d: $b1
    jp hl                                         ; $454e: $e9


    sbc [hl]                                      ; $454f: $9e
    dec b                                         ; $4550: $05
    ld [hl], a                                    ; $4551: $77
    cp c                                          ; $4552: $b9
    ld h, e                                       ; $4553: $63
    add sp, -$23                                  ; $4554: $e8 $dd
    ld [hl], l                                    ; $4556: $75
    xor h                                         ; $4557: $ac
    ld h, e                                       ; $4558: $63
    dec [hl]                                      ; $4559: $35
    ld l, l                                       ; $455a: $6d
    db $ed                                        ; $455b: $ed
    ccf                                           ; $455c: $3f
    ld d, e                                       ; $455d: $53
    and e                                         ; $455e: $a3
    db $fd                                        ; $455f: $fd
    dec b                                         ; $4560: $05
    rst $10                                       ; $4561: $d7
    pop bc                                        ; $4562: $c1
    sbc h                                         ; $4563: $9c
    ld b, e                                       ; $4564: $43
    rst $20                                       ; $4565: $e7
    xor d                                         ; $4566: $aa
    db $fc                                        ; $4567: $fc
    db $e4                                        ; $4568: $e4
    db $dd                                        ; $4569: $dd
    rst $30                                       ; $456a: $f7
    dec a                                         ; $456b: $3d
    ld [hl-], a                                   ; $456c: $32
    add [hl]                                      ; $456d: $86
    cp d                                          ; $456e: $ba
    add $4f                                       ; $456f: $c6 $4f
    rst $28                                       ; $4571: $ef
    sub d                                         ; $4572: $92
    sub c                                         ; $4573: $91
    and c                                         ; $4574: $a1

jr_060_4575:
    and e                                         ; $4575: $a3
    ld [hl], e                                    ; $4576: $73
    ld [hl], h                                    ; $4577: $74
    rst $20                                       ; $4578: $e7
    jr jr_060_4575                                ; $4579: $18 $fa

    ld c, b                                       ; $457b: $48
    sub b                                         ; $457c: $90
    cpl                                           ; $457d: $2f
    ld l, b                                       ; $457e: $68
    reti                                          ; $457f: $d9


    rst $28                                       ; $4580: $ef
    db $dd                                        ; $4581: $dd
    xor e                                         ; $4582: $ab
    rst $38                                       ; $4583: $ff
    ld a, c                                       ; $4584: $79
    inc l                                         ; $4585: $2c
    rst $30                                       ; $4586: $f7
    dec bc                                        ; $4587: $0b
    sub a                                         ; $4588: $97
    db $fd                                        ; $4589: $fd
    inc hl                                        ; $458a: $23
    rla                                           ; $458b: $17
    ld d, e                                       ; $458c: $53
    jp nc, $8c7b                                  ; $458d: $d2 $7b $8c

    ei                                            ; $4590: $fb
    cp h                                          ; $4591: $bc
    jp c, $0d29                                   ; $4592: $da $29 $0d

    cpl                                           ; $4595: $2f
    and d                                         ; $4596: $a2

Call_060_4597:
    ld [hl+], a                                   ; $4597: $22
    ld a, [hl-]                                   ; $4598: $3a
    push bc                                       ; $4599: $c5
    cp e                                          ; $459a: $bb
    rst $28                                       ; $459b: $ef
    ld a, e                                       ; $459c: $7b
    and $b9                                       ; $459d: $e6 $b9
    ld [hl], a                                    ; $459f: $77
    rst $20                                       ; $45a0: $e7

Call_060_45a1:
    cp [hl]                                       ; $45a1: $be
    and b                                         ; $45a2: $a0
    ld a, c                                       ; $45a3: $79
    ld sp, $3df4                                  ; $45a4: $31 $f4 $3d
    call $bcaa                                    ; $45a7: $cd $aa $bc
    sub d                                         ; $45aa: $92
    ret nc                                        ; $45ab: $d0

    ldh a, [$a2]                                  ; $45ac: $f0 $a2
    rst $08                                       ; $45ae: $cf
    add e                                         ; $45af: $83

jr_060_45b0:
    and c                                         ; $45b0: $a1
    sbc a                                         ; $45b1: $9f
    ei                                            ; $45b2: $fb
    dec b                                         ; $45b3: $05
    ld d, a                                       ; $45b4: $57
    or h                                          ; $45b5: $b4
    or $71                                        ; $45b6: $f6 $71
    sbc h                                         ; $45b8: $9c
    cp a                                          ; $45b9: $bf
    push de                                       ; $45ba: $d5
    or d                                          ; $45bb: $b2
    adc h                                         ; $45bc: $8c
    ld [hl], h                                    ; $45bd: $74
    ld l, $94                                     ; $45be: $2e $94
    push de                                       ; $45c0: $d5
    and $9c                                       ; $45c1: $e6 $9c
    adc e                                         ; $45c3: $8b
    ld h, c                                       ; $45c4: $61
    xor l                                         ; $45c5: $ad

Jump_060_45c6:
    and $da                                       ; $45c6: $e6 $da
    ld b, e                                       ; $45c8: $43
    ld hl, $93f6                                  ; $45c9: $21 $f6 $93
    db $eb                                        ; $45cc: $eb
    db $fd                                        ; $45cd: $fd
    ld [bc], a                                    ; $45ce: $02
    db $ed                                        ; $45cf: $ed
    adc $39                                       ; $45d0: $ce $39
    rla                                           ; $45d2: $17
    ld d, c                                       ; $45d3: $51
    or e                                          ; $45d4: $b3
    or d                                          ; $45d5: $b2
    sbc e                                         ; $45d6: $9b
    ld e, c                                       ; $45d7: $59
    db $dd                                        ; $45d8: $dd
    dec e                                         ; $45d9: $1d
    dec sp                                        ; $45da: $3b
    push bc                                       ; $45db: $c5
    or h                                          ; $45dc: $b4
    or l                                          ; $45dd: $b5
    ld [hl-], a                                   ; $45de: $32
    ld b, h                                       ; $45df: $44
    xor [hl]                                      ; $45e0: $ae
    dec [hl]                                      ; $45e1: $35
    db $e4                                        ; $45e2: $e4
    ld c, $12                                     ; $45e3: $0e $12
    cp l                                          ; $45e5: $bd
    jr c, jr_060_45b0                             ; $45e6: $38 $c8

    cpl                                           ; $45e8: $2f
    cp a                                          ; $45e9: $bf
    rst $30                                       ; $45ea: $f7
    ei                                            ; $45eb: $fb
    dec b                                         ; $45ec: $05
    rst $10                                       ; $45ed: $d7
    cp c                                          ; $45ee: $b9
    xor e                                         ; $45ef: $ab
    ldh a, [$3c]                                  ; $45f0: $f0 $3c
    sub [hl]                                      ; $45f2: $96
    ld sp, $b5f4                                  ; $45f3: $31 $f4 $b5
    add a                                         ; $45f6: $87
    ld b, d                                       ; $45f7: $42
    db $ec                                        ; $45f8: $ec
    daa                                           ; $45f9: $27
    rst $10                                       ; $45fa: $d7
    ld a, e                                       ; $45fb: $7b
    rla                                           ; $45fc: $17
    add l                                         ; $45fd: $85
    ld b, h                                       ; $45fe: $44
    ld [hl], a                                    ; $45ff: $77
    sub b                                         ; $4600: $90
    ld d, d                                       ; $4601: $52
    adc c                                         ; $4602: $89
    ld a, [hl-]                                   ; $4603: $3a
    db $fd                                        ; $4604: $fd
    inc b                                         ; $4605: $04
    ld bc, $1acb                                  ; $4606: $01 $cb $1a
    ld l, $1a                                     ; $4609: $2e $1a
    ld b, c                                       ; $460b: $41
    rst $20                                       ; $460c: $e7
    xor d                                         ; $460d: $aa
    db $fc                                        ; $460e: $fc
    ld h, h                                       ; $460f: $64
    jp c, $1942                                   ; $4610: $da $42 $19

    cp $c5                                        ; $4613: $fe $c5
    ret nc                                        ; $4615: $d0

    ld [hl], a                                    ; $4616: $77
    ret                                           ; $4617: $c9


    ret z                                         ; $4618: $c8

    ret c                                         ; $4619: $d8

    add hl, sp                                    ; $461a: $39
    xor b                                         ; $461b: $a8
    sub h                                         ; $461c: $94
    ld e, h                                       ; $461d: $5c
    and e                                         ; $461e: $a3
    ld b, e                                       ; $461f: $43
    db $ec                                        ; $4620: $ec
    add c                                         ; $4621: $81
    ld h, b                                       ; $4622: $60
    rst $30                                       ; $4623: $f7
    di                                            ; $4624: $f3
    sbc b                                         ; $4625: $98
    rlca                                          ; $4626: $07
    inc sp                                        ; $4627: $33
    rst $28                                       ; $4628: $ef
    ld b, a                                       ; $4629: $47
    adc e                                         ; $462a: $8b
    ld b, e                                       ; $462b: $43
    ld a, d                                       ; $462c: $7a
    ld a, [hl+]                                   ; $462d: $2a
    db $f4                                        ; $462e: $f4
    xor $02                                       ; $462f: $ee $02
    adc $b3                                       ; $4631: $ce $b3
    halt                                          ; $4633: $76
    ld [hl], c                                    ; $4634: $71
    ld l, d                                       ; $4635: $6a
    and d                                         ; $4636: $a2
    ld [$4304], sp                                ; $4637: $08 $04 $43
    jp nc, $aed6                                  ; $463a: $d2 $d6 $ae

    ld b, a                                       ; $463d: $47
    ld d, c                                       ; $463e: $51
    ld [hl], a                                    ; $463f: $77
    ld c, e                                       ; $4640: $4b

Jump_060_4641:
    adc a                                         ; $4641: $8f
    ld [hl+], a                                   ; $4642: $22
    jp c, $feae                                   ; $4643: $da $ae $fe

    or c                                          ; $4646: $b1
    add l                                         ; $4647: $85
    ld l, b                                       ; $4648: $68
    rst $38                                       ; $4649: $ff
    call nz, $dee6                                ; $464a: $c4 $e6 $de
    sbc l                                         ; $464d: $9d
    dec sp                                        ; $464e: $3b
    call nc, Call_060_4c35                        ; $464f: $d4 $35 $4c
    ld a, [hl-]                                   ; $4652: $3a
    ld b, c                                       ; $4653: $41
    xor $1d                                       ; $4654: $ee $1d
    ld [hl], b                                    ; $4656: $70
    cp d                                          ; $4657: $ba
    ld c, [hl]                                    ; $4658: $4e
    add l                                         ; $4659: $85

Jump_060_465a:
    sbc $5d                                       ; $465a: $de $5d
    ld b, b                                       ; $465c: $40
    ld a, a                                       ; $465d: $7f
    ld d, $43                                     ; $465e: $16 $43
    ld e, a                                       ; $4660: $5f
    ld c, h                                       ; $4661: $4c
    ld c, c                                       ; $4662: $49
    xor a                                         ; $4663: $af
    or d                                          ; $4664: $b2
    pop de                                        ; $4665: $d1
    ld c, h                                       ; $4666: $4c
    dec de                                        ; $4667: $1b
    add hl, de                                    ; $4668: $19
    add a                                         ; $4669: $87
    call c, $ab25                                 ; $466a: $dc $25 $ab
    ld hl, $2e76                                  ; $466d: $21 $76 $2e
    sub h                                         ; $4670: $94
    ld [hl], l                                    ; $4671: $75
    ld c, d                                       ; $4672: $4a
    ld [hl], l                                    ; $4673: $75
    xor [hl]                                      ; $4674: $ae
    ld e, e                                       ; $4675: $5b
    ld sp, $ef38                                  ; $4676: $31 $38 $ef
    ld e, l                                       ; $4679: $5d
    ld d, c                                       ; $467a: $51
    add [hl]                                      ; $467b: $86
    sbc [hl]                                      ; $467c: $9e
    ld a, [bc]                                    ; $467d: $0a
    cp l                                          ; $467e: $bd
    cp e                                          ; $467f: $bb
    add b                                         ; $4680: $80
    ld e, e                                       ; $4681: $5b
    ld bc, $7784                                  ; $4682: $01 $84 $77
    ret                                           ; $4685: $c9


    ld b, b                                       ; $4686: $40
    sub b                                         ; $4687: $90
    jp hl                                         ; $4688: $e9


    ld d, $e7                                     ; $4689: $16 $e7
    sbc b                                         ; $468b: $98
    jp nc, $73bb                                  ; $468c: $d2 $bb $73

    adc a                                         ; $468f: $8f
    ld [hl], c                                    ; $4690: $71
    jr nc, jr_060_46a8                            ; $4691: $30 $15

    ld b, h                                       ; $4693: $44
    jp hl                                         ; $4694: $e9


    sbc c                                         ; $4695: $99
    ld d, $a2                                     ; $4696: $16 $a2
    sub [hl]                                      ; $4698: $96
    add l                                         ; $4699: $85
    ld h, a                                       ; $469a: $67
    ld a, [hl+]                                   ; $469b: $2a
    db $f4                                        ; $469c: $f4
    xor $02                                       ; $469d: $ee $02
    ld l, [hl]                                    ; $469f: $6e
    dec b                                         ; $46a0: $05
    push af                                       ; $46a1: $f5
    cp e                                          ; $46a2: $bb
    push hl                                       ; $46a3: $e5
    ld a, [hl]                                    ; $46a4: $7e
    ld bc, $d657                                  ; $46a5: $01 $57 $d6

jr_060_46a8:
    ld e, d                                       ; $46a8: $5a
    ld a, c                                       ; $46a9: $79
    rst $30                                       ; $46aa: $f7
    ld a, l                                       ; $46ab: $7d
    adc a                                         ; $46ac: $8f
    adc h                                         ; $46ad: $8c
    ccf                                           ; $46ae: $3f
    adc $39                                       ; $46af: $ce $39
    dec d                                         ; $46b1: $15
    ld a, d                                       ; $46b2: $7a
    ld [hl], a                                    ; $46b3: $77
    ld bc, $02b7                                  ; $46b4: $01 $b7 $02
    ld [$f39f], sp                                ; $46b7: $08 $9f $f3
    ld [bc], a                                    ; $46ba: $02
    rlca                                          ; $46bb: $07
    cp a                                          ; $46bc: $bf
    xor h                                         ; $46bd: $ac
    ld [de], a                                    ; $46be: $12
    dec c                                         ; $46bf: $0d
    jp hl                                         ; $46c0: $e9


    inc e                                         ; $46c1: $1c
    ld a, [$6c59]                                 ; $46c2: $fa $59 $6c
    call c, $a9e7                                 ; $46c5: $dc $e7 $a9
    cp $d3                                        ; $46c8: $fe $d3
    xor e                                         ; $46ca: $ab
    ld d, b                                       ; $46cb: $50
    ld d, [hl]                                    ; $46cc: $56
    ld [bc], a                                    ; $46cd: $02
    ld a, [c]                                     ; $46ce: $f2
    ld b, d                                       ; $46cf: $42
    reti                                          ; $46d0: $d9


    inc bc                                        ; $46d1: $03
    sub l                                         ; $46d2: $95
    sbc l                                         ; $46d3: $9d
    ld b, e                                       ; $46d4: $43
    ccf                                           ; $46d5: $3f
    adc e                                         ; $46d6: $8b
    adc l                                         ; $46d7: $8d
    ei                                            ; $46d8: $fb
    cp h                                          ; $46d9: $bc
    ld b, [hl]                                    ; $46da: $46
    ld l, d                                       ; $46db: $6a
    ret nc                                        ; $46dc: $d0

    xor e                                         ; $46dd: $ab
    ld a, [hl+]                                   ; $46de: $2a
    ld [hl], h                                    ; $46df: $74
    ld c, e                                       ; $46e0: $4b
    ld e, l                                       ; $46e1: $5d
    cp d                                          ; $46e2: $ba
    ld [hl], h                                    ; $46e3: $74
    ccf                                           ; $46e4: $3f
    ld d, $be                                     ; $46e5: $16 $be
    ld [hl], a                                    ; $46e7: $77
    sbc l                                         ; $46e8: $9d
    ld [hl], c                                    ; $46e9: $71
    call $d734                                    ; $46ea: $cd $34 $d7
    db $fd                                        ; $46ed: $fd
    xor b                                         ; $46ee: $a8
    halt                                          ; $46ef: $76
    sbc l                                         ; $46f0: $9d
    dec b                                         ; $46f1: $05
    and h                                         ; $46f2: $a4
    xor h                                         ; $46f3: $ac
    pop de                                        ; $46f4: $d1
    ld hl, $0e76                                  ; $46f5: $21 $76 $0e
    cp l                                          ; $46f8: $bd
    ret nc                                        ; $46f9: $d0

    ld [c], a                                     ; $46fa: $e2
    rst $18                                       ; $46fb: $df
    sbc c                                         ; $46fc: $99
    or [hl]                                       ; $46fd: $b6
    ld d, b                                       ; $46fe: $50
    add [hl]                                      ; $46ff: $86
    and $a9                                       ; $4700: $e6 $a9
    ret nc                                        ; $4702: $d0

    cp e                                          ; $4703: $bb
    dec bc                                        ; $4704: $0b
    add sp, -$31                                  ; $4705: $e8 $cf
    ret nc                                        ; $4707: $d0

    cp c                                          ; $4708: $b9
    xor b                                         ; $4709: $a8
    sbc c                                         ; $470a: $99
    adc e                                         ; $470b: $8b
    cp d                                          ; $470c: $ba
    dec hl                                        ; $470d: $2b
    xor a                                         ; $470e: $af
    dec d                                         ; $470f: $15
    ld b, b                                       ; $4710: $40
    ld a, b                                       ; $4711: $78
    ld sp, $3a08                                  ; $4712: $31 $08 $3a
    rst $10                                       ; $4715: $d7
    ld a, [bc]                                    ; $4716: $0a
    ld [$cb77], a                                 ; $4717: $ea $77 $cb
    db $fd                                        ; $471a: $fd
    ld [bc], a                                    ; $471b: $02
    db $ed                                        ; $471c: $ed
    ld [hl], c                                    ; $471d: $71
    ld c, b                                       ; $471e: $48
    db $fc                                        ; $471f: $fc
    or d                                          ; $4720: $b2
    ld b, [hl]                                    ; $4721: $46
    add a                                         ; $4722: $87
    ret c                                         ; $4723: $d8

    cp c                                          ; $4724: $b9
    jr @+$18                                      ; $4725: $18 $16

    add l                                         ; $4727: $85
    ld b, h                                       ; $4728: $44
    ld [hl], a                                    ; $4729: $77
    ld a, $e7                                     ; $472a: $3e $e7
    dec b                                         ; $472c: $05
    rlca                                          ; $472d: $07
    ld e, h                                       ; $472e: $5c
    add $19                                       ; $472f: $c6 $19
    ld [hl], d                                    ; $4731: $72
    sbc a                                         ; $4732: $9f
    rla                                           ; $4733: $17
    jp $faaa                                      ; $4734: $c3 $aa $fa


    ld a, l                                       ; $4737: $7d
    adc l                                         ; $4738: $8d
    call nc, $eba0                                ; $4739: $d4 $a0 $eb
    ld e, $e3                                     ; $473c: $1e $e3
    inc l                                         ; $473e: $2c
    db $e3                                        ; $473f: $e3
    inc c                                         ; $4740: $0c
    dec e                                         ; $4741: $1d
    rst $28                                       ; $4742: $ef
    rla                                           ; $4743: $17
    rst $10                                       ; $4744: $d7
    ld d, c                                       ; $4745: $51
    ld [hl], d                                    ; $4746: $72
    or c                                          ; $4747: $b1
    and l                                         ; $4748: $a5
    ld b, e                                       ; $4749: $43
    reti                                          ; $474a: $d9


    rst $20                                       ; $474b: $e7
    ld b, l                                       ; $474c: $45
    call nc, $bc5e                                ; $474d: $d4 $5e $bc
    rlca                                          ; $4750: $07
    jp z, Jump_000_02fd                           ; $4751: $ca $fd $02

    rlca                                          ; $4754: $07
    ld e, h                                       ; $4755: $5c
    ld b, [hl]                                    ; $4756: $46
    ld [hl], $1b                                  ; $4757: $36 $1b
    adc $7d                                       ; $4759: $ce $7d
    ld e, [hl]                                    ; $475b: $5e

Jump_060_475c:
    inc c                                         ; $475c: $0c
    ld d, e                                       ; $475d: $53
    pop hl                                        ; $475e: $e1
    ld a, c                                       ; $475f: $79
    sbc h                                         ; $4760: $9c
    ld l, e                                       ; $4761: $6b
    dec [hl]                                      ; $4762: $35
    ld d, a                                       ; $4763: $57
    rst $38                                       ; $4764: $ff

jr_060_4765:
    di                                            ; $4765: $f3
    ld a, b                                       ; $4766: $78
    ld a, [hl+]                                   ; $4767: $2a
    db $f4                                        ; $4768: $f4
    xor $02                                       ; $4769: $ee $02
    ld a, [$50b3]                                 ; $476b: $fa $b3 $50
    halt                                          ; $476e: $76
    ret                                           ; $476f: $c9


jr_060_4770:
    and l                                         ; $4770: $a5
    sub a                                         ; $4771: $97
    ld e, [hl]                                    ; $4772: $5e
    cp b                                          ; $4773: $b8
    ld b, e                                       ; $4774: $43
    ld e, l                                       ; $4775: $5d
    jp Jump_000_13a4                              ; $4776: $c3 $a4 $13


    db $e4                                        ; $4779: $e4
    ld e, [hl]                                    ; $477a: $5e
    sbc e                                         ; $477b: $9b
    rst $20                                       ; $477c: $e7
    inc e                                         ; $477d: $1c
    jr z, jr_060_4765                             ; $477e: $28 $e5

    db $fd                                        ; $4780: $fd
    sbc $bd                                       ; $4781: $de $bd
    ld c, $c5                                     ; $4783: $0e $c5
    xor e                                         ; $4785: $ab
    db $dd                                        ; $4786: $dd
    rst $08                                       ; $4787: $cf
    ld h, e                                       ; $4788: $63
    jp c, $cb1e                                   ; $4789: $da $1e $cb

    ret nc                                        ; $478c: $d0

    cp c                                          ; $478d: $b9
    ld b, [hl]                                    ; $478e: $46
    ret z                                         ; $478f: $c8

    ld c, c                                       ; $4790: $49
    jr z, jr_060_4770                             ; $4791: $28 $dd

    adc e                                         ; $4793: $8b
    ld hl, $3b95                                  ; $4794: $21 $95 $3b
    sub h                                         ; $4797: $94
    ld [hl], l                                    ; $4798: $75
    and e                                         ; $4799: $a3
    rst $00                                       ; $479a: $c7
    sbc d                                         ; $479b: $9a
    sub [hl]                                      ; $479c: $96
    di                                            ; $479d: $f3
    ld a, [hl]                                    ; $479e: $7e
    ld bc, $b9d7                                  ; $479f: $01 $d7 $b9
    xor e                                         ; $47a2: $ab
    ldh a, [$3c]                                  ; $47a3: $f0 $3c
    ld d, $da                                     ; $47a5: $16 $da
    ld [hl+], a                                   ; $47a7: $22
    ld l, d                                       ; $47a8: $6a
    ld d, [hl]                                    ; $47a9: $56
    halt                                          ; $47aa: $76
    inc sp                                        ; $47ab: $33
    xor e                                         ; $47ac: $ab
    cp e                                          ; $47ad: $bb
    ld h, e                                       ; $47ae: $63
    rst $20                                       ; $47af: $e7
    cp l                                          ; $47b0: $bd
    inc bc                                        ; $47b1: $03
    ld l, $73                                     ; $47b2: $2e $73
    xor $bc                                       ; $47b4: $ee $bc
    sbc $d0                                       ; $47b6: $de $d0
    db $eb                                        ; $47b8: $eb
    jp c, $a7f4                                   ; $47b9: $da $f4 $a7

    pop de                                        ; $47bc: $d1
    adc l                                         ; $47bd: $8d
    ld hl, $5b4d                                  ; $47be: $21 $4d $5b
    ld e, d                                       ; $47c1: $5a
    ld [hl], c                                    ; $47c2: $71
    ret z                                         ; $47c3: $c8

    or l                                          ; $47c4: $b5
    sbc d                                         ; $47c5: $9a
    ld l, e                                       ; $47c6: $6b
    rrca                                          ; $47c7: $0f
    add l                                         ; $47c8: $85
    ret c                                         ; $47c9: $d8

    ld c, a                                       ; $47ca: $4f
    xor [hl]                                      ; $47cb: $ae
    rst $30                                       ; $47cc: $f7
    ld l, $6e                                     ; $47cd: $2e $6e
    adc [hl]                                      ; $47cf: $8e
    or h                                          ; $47d0: $b4
    inc l                                         ; $47d1: $2c
    sub h                                         ; $47d2: $94
    pop af                                        ; $47d3: $f1
    cpl                                           ; $47d4: $2f
    ld l, e                                       ; $47d5: $6b
    push af                                       ; $47d6: $f5
    adc a                                         ; $47d7: $8f
    ld [hl], l                                    ; $47d8: $75
    or c                                          ; $47d9: $b1
    ld [hl], c                                    ; $47da: $71
    ld [hl], h                                    ; $47db: $74
    and a                                         ; $47dc: $a7
    db $eb                                        ; $47dd: $eb
    ld a, [$d297]                                 ; $47de: $fa $97 $d2
    ld [$b489], sp                                ; $47e1: $08 $89 $b4
    push de                                       ; $47e4: $d5
    and $aa                                       ; $47e5: $e6 $aa
    db $fc                                        ; $47e7: $fc
    db $e4                                        ; $47e8: $e4
    ld e, l                                       ; $47e9: $5d
    ld [hl-], a                                   ; $47ea: $32
    ld a, [c]                                     ; $47eb: $f2
    rst $20                                       ; $47ec: $e7
    and d                                         ; $47ed: $a2
    and [hl]                                      ; $47ee: $a6
    ld a, c                                       ; $47ef: $79
    and $a9                                       ; $47f0: $e6 $a9
    ret nc                                        ; $47f2: $d0

    cp e                                          ; $47f3: $bb
    dec bc                                        ; $47f4: $0b
    add sp, -$31                                  ; $47f5: $e8 $cf
    cp [hl]                                       ; $47f7: $be
    call nz, $f950                                ; $47f8: $c4 $50 $f9
    ld a, [hl]                                    ; $47fb: $7e
    ld bc, $5547                                  ; $47fc: $01 $47 $55
    adc l                                         ; $47ff: $8d
    inc d                                         ; $4800: $14
    rst $20                                       ; $4801: $e7
    pop de                                        ; $4802: $d1
    dec sp                                        ; $4803: $3b
    rst $18                                       ; $4804: $df
    ld h, h                                       ; $4805: $64
    add sp, $38                                   ; $4806: $e8 $38
    call nc, $e8d7                                ; $4808: $d4 $d7 $e8
    add c                                         ; $480b: $81
    add a                                         ; $480c: $87
    jr nz, jr_060_4832                            ; $480d: $20 $23

    xor c                                         ; $480f: $a9
    ld [hl], h                                    ; $4810: $74
    adc a                                         ; $4811: $8f
    db $fc                                        ; $4812: $fc
    ld c, h                                       ; $4813: $4c
    db $db                                        ; $4814: $db
    dec bc                                        ; $4815: $0b
    ld [$1ab2], sp                                ; $4816: $08 $b2 $1a
    sub d                                         ; $4819: $92
    ld c, l                                       ; $481a: $4d
    ld e, e                                       ; $481b: $5b
    and e                                         ; $481c: $a3
    ld a, a                                       ; $481d: $7f
    ld d, c                                       ; $481e: $51
    ld e, [hl]                                    ; $481f: $5e
    inc hl                                        ; $4820: $23
    db $10                                        ; $4821: $10
    db $eb                                        ; $4822: $eb
    adc $fb                                       ; $4823: $ce $fb
    dec b                                         ; $4825: $05
    rla                                           ; $4826: $17
    add l                                         ; $4827: $85
    inc e                                         ; $4828: $1c
    db $dd                                        ; $4829: $dd
    ld h, l                                       ; $482a: $65
    adc $b5                                       ; $482b: $ce $b5
    add a                                         ; $482d: $87
    ld b, d                                       ; $482e: $42
    db $ec                                        ; $482f: $ec
    daa                                           ; $4830: $27
    rst $10                                       ; $4831: $d7

jr_060_4832:
    inc hl                                        ; $4832: $23
    rst $10                                       ; $4833: $d7
    jr nc, @+$58                                  ; $4834: $30 $56

    or $aa                                        ; $4836: $f6 $aa
    ld a, [$d67c]                                 ; $4838: $fa $7c $d6
    ld e, [hl]                                    ; $483b: $5e
    rla                                           ; $483c: $17
    jp z, $0a12                                   ; $483d: $ca $12 $0a

    ld b, e                                       ; $4840: $43
    ld e, c                                       ; $4841: $59
    ld a, l                                       ; $4842: $7d
    ld a, [hl]                                    ; $4843: $7e
    ld a, [c]                                     ; $4844: $f2
    and d                                         ; $4845: $a2
    sub b                                         ; $4846: $90
    add sp, $0e                                   ; $4847: $e8 $0e
    ld d, d                                       ; $4849: $52
    ld a, [hl+]                                   ; $484a: $2a
    ld sp, hl                                     ; $484b: $f9

jr_060_484c:
    ld sp, hl                                     ; $484c: $f9
    ld a, [hl]                                    ; $484d: $7e
    ld bc, $5c07                                  ; $484e: $01 $07 $5c
    ld d, [hl]                                    ; $4851: $56
    sbc l                                         ; $4852: $9d
    ei                                            ; $4853: $fb
    sbc l                                         ; $4854: $9d
    ld b, a                                       ; $4855: $47
    add $1f                                       ; $4856: $c6 $1f
    add a                                         ; $4858: $87
    ld a, [$6460]                                 ; $4859: $fa $60 $64
    jr c, jr_060_4870                             ; $485c: $38 $12

    call $8aab                                    ; $485e: $cd $ab $8a
    xor [hl]                                      ; $4861: $ae
    ld [hl], a                                    ; $4862: $77
    rst $20                                       ; $4863: $e7
    ld e, [hl]                                    ; $4864: $5e
    jr nz, jr_060_48d3                            ; $4865: $20 $6c

    sbc [hl]                                      ; $4867: $9e
    ld l, $58                                     ; $4868: $2e $58
    sbc d                                         ; $486a: $9a
    cp c                                          ; $486b: $b9
    rlca                                          ; $486c: $07
    ld a, b                                       ; $486d: $78
    pop de                                        ; $486e: $d1
    rst $28                                       ; $486f: $ef

jr_060_4870:
    jp z, Jump_000_0e8d                           ; $4870: $ca $8d $0e

jr_060_4873:
    ld l, d                                       ; $4873: $6a
    cpl                                           ; $4874: $2f
    add a                                         ; $4875: $87
    sbc d                                         ; $4876: $9a
    db $e3                                        ; $4877: $e3
    ld e, a                                       ; $4878: $5f
    or $40                                        ; $4879: $f6 $40
    ld e, c                                       ; $487b: $59
    xor e                                         ; $487c: $ab
    cp c                                          ; $487d: $b9
    ld d, b                                       ; $487e: $50
    ld d, $35                                     ; $487f: $16 $35
    rst $10                                       ; $4881: $d7
    ld [hl], b                                    ; $4882: $70
    ld d, l                                       ; $4883: $55
    add $bd                                       ; $4884: $c6 $bd
    pop hl                                        ; $4886: $e1
    add hl, de                                    ; $4887: $19
    ld [bc], a                                    ; $4888: $02
    ld c, a                                       ; $4889: $4f
    inc [hl]                                      ; $488a: $34
    ld e, $43                                     ; $488b: $1e $43
    daa                                           ; $488d: $27
    ld b, e                                       ; $488e: $43
    rst $00                                       ; $488f: $c7
    ld e, d                                       ; $4890: $5a
    reti                                          ; $4891: $d9


    ld a, b                                       ; $4892: $78
    cp a                                          ; $4893: $bf
    rla                                           ; $4894: $17
    rst $20                                       ; $4895: $e7
    sub a                                         ; $4896: $97
    ld [c], a                                     ; $4897: $e2
    and h                                         ; $4898: $a4
    xor l                                         ; $4899: $ad
    db $dd                                        ; $489a: $dd
    ld sp, hl                                     ; $489b: $f9
    ld b, b                                       ; $489c: $40

jr_060_489d:
    db $10                                        ; $489d: $10
    ld l, e                                       ; $489e: $6b
    ld a, a                                       ; $489f: $7f
    ld bc, $a717                                  ; $48a0: $01 $17 $a7
    ld h, $8a                                     ; $48a3: $26 $8a
    ld b, b                                       ; $48a5: $40
    jr nc, jr_060_484c                            ; $48a6: $30 $a4

    or $17                                        ; $48a8: $f6 $17
    ld d, a                                       ; $48aa: $57
    ld b, $66                                     ; $48ab: $06 $66
    daa                                           ; $48ad: $27
    ld l, l                                       ; $48ae: $6d
    db $ed                                        ; $48af: $ed
    ccf                                           ; $48b0: $3f
    ld d, e                                       ; $48b1: $53
    and e                                         ; $48b2: $a3
    db $fd                                        ; $48b3: $fd
    dec b                                         ; $48b4: $05
    sub a                                         ; $48b5: $97
    jr z, jr_060_489d                             ; $48b6: $28 $e5

    dec e                                         ; $48b8: $1d
    ld [$261a], a                                 ; $48b9: $ea $1a $26
    sbc l                                         ; $48bc: $9d
    jr nz, jr_060_4873                            ; $48bd: $20 $b4

    add c                                         ; $48bf: $81
    ld d, d                                       ; $48c0: $52
    sbc $a1                                       ; $48c1: $de $a1
    xor [hl]                                      ; $48c3: $ae
    ld h, c                                       ; $48c4: $61
    jp nc, $7209                                  ; $48c5: $d2 $09 $72

    rst $18                                       ; $48c8: $df
    rst $30                                       ; $48c9: $f7
    dec bc                                        ; $48ca: $0b
    sub a                                         ; $48cb: $97
    scf                                           ; $48cc: $37
    ld l, c                                       ; $48cd: $69
    ld a, e                                       ; $48ce: $7b
    inc l                                         ; $48cf: $2c
    inc hl                                        ; $48d0: $23
    ld h, e                                       ; $48d1: $63
    xor b                                         ; $48d2: $a8

jr_060_48d3:
    ld b, e                                       ; $48d3: $43
    ld a, l                                       ; $48d4: $7d
    adc $91                                       ; $48d5: $ce $91
    xor $bc                                       ; $48d7: $ee $bc
    ld a, [bc]                                    ; $48d9: $0a
    ld c, d                                       ; $48da: $4a
    add hl, sp                                    ; $48db: $39
    ld l, c                                       ; $48dc: $69
    xor e                                         ; $48dd: $ab
    call $cd3d                                    ; $48de: $cd $3d $cd
    pop de                                        ; $48e1: $d1
    ld e, l                                       ; $48e2: $5d

jr_060_48e3:
    ld b, [hl]                                    ; $48e3: $46
    cp d                                          ; $48e4: $ba
    ld [hl], a                                    ; $48e5: $77
    and a                                         ; $48e6: $a7
    ld d, a                                       ; $48e7: $57
    and c                                         ; $48e8: $a1
    ld a, b                                       ; $48e9: $78
    rla                                           ; $48ea: $17
    ld e, a                                       ; $48eb: $5f
    ld c, l                                       ; $48ec: $4d
    ldh a, [$a2]                                  ; $48ed: $f0 $a2
    adc e                                         ; $48ef: $8b
    ld l, $b9                                     ; $48f0: $2e $b9
    cp h                                          ; $48f2: $bc
    db $ed                                        ; $48f3: $ed
    adc d                                         ; $48f4: $8a
    xor e                                         ; $48f5: $ab
    rst $28                                       ; $48f6: $ef
    rla                                           ; $48f7: $17
    rla                                           ; $48f8: $17
    and a                                         ; $48f9: $a7
    ld h, $8a                                     ; $48fa: $26 $8a
    ld b, b                                       ; $48fc: $40
    jr nc, jr_060_48e3                            ; $48fd: $30 $e4

    sbc h                                         ; $48ff: $9c
    ld b, e                                       ; $4900: $43
    di                                            ; $4901: $f3
    jp nc, $9ecc                                  ; $4902: $d2 $cc $9e

    ld a, [bc]                                    ; $4905: $0a
    cp l                                          ; $4906: $bd
    cp e                                          ; $4907: $bb
    add b                                         ; $4908: $80
    cp $2c                                        ; $4909: $fe $2c
    ld a, [bc]                                    ; $490b: $0a
    add hl, sp                                    ; $490c: $39
    add h                                         ; $490d: $84
    ld b, d                                       ; $490e: $42
    ld e, e                                       ; $490f: $5b
    ei                                            ; $4910: $fb
    rst $08                                       ; $4911: $cf
    call nc, $bbdc                                ; $4912: $d4 $dc $bb
    ld [$8704], sp                                ; $4915: $08 $04 $87
    ld d, b                                       ; $4918: $50
    ld h, $fa                                     ; $4919: $26 $fa
    inc l                                         ; $491b: $2c
    ld l, e                                       ; $491c: $6b
    push af                                       ; $491d: $f5
    adc a                                         ; $491e: $8f
    ld [hl], l                                    ; $491f: $75
    or c                                          ; $4920: $b1
    ld [hl], c                                    ; $4921: $71
    ld [$febc], sp                                ; $4922: $08 $bc $fe
    and l                                         ; $4925: $a5
    inc [hl]                                      ; $4926: $34
    ld b, d                                       ; $4927: $42
    ld [c], a                                     ; $4928: $e2
    db $fd                                        ; $4929: $fd
    ld [bc], a                                    ; $492a: $02
    sub a                                         ; $492b: $97
    add [hl]                                      ; $492c: $86
    ld h, a                                       ; $492d: $67
    or l                                          ; $492e: $b5
    cp c                                          ; $492f: $b9
    ld d, [hl]                                    ; $4930: $56
    ld [hl], e                                    ; $4931: $73
    xor l                                         ; $4932: $ad
    cp $b1                                        ; $4933: $fe $b1
    ld l, $36                                     ; $4935: $2e $36
    ld c, $81                                     ; $4937: $0e $81
    rst $10                                       ; $4939: $d7
    ld [$b489], sp                                ; $493a: $08 $89 $b4
    or l                                          ; $493d: $b5
    rst $38                                       ; $493e: $ff
    ld c, h                                       ; $493f: $4c
    dec c                                         ; $4940: $0d
    ld l, l                                       ; $4941: $6d
    xor $dd                                       ; $4942: $ee $dd
    add hl, sp                                    ; $4944: $39
    ld a, [c]                                     ; $4945: $f2
    rst $20                                       ; $4946: $e7
    ld d, b                                       ; $4947: $50
    ld e, a                                       ; $4948: $5f
    rst $10                                       ; $4949: $d7
    ld d, h                                       ; $494a: $54
    ld e, $43                                     ; $494b: $1e $43
    rst $18                                       ; $494d: $df
    rst $20                                       ; $494e: $e7
    dec a                                         ; $494f: $3d
    ld d, b                                       ; $4950: $50
    reti                                          ; $4951: $d9


    sub e                                         ; $4952: $93
    ld d, b                                       ; $4953: $50
    cp d                                          ; $4954: $ba
    and a                                         ; $4955: $a7
    ld b, d                                       ; $4956: $42
    rst $28                                       ; $4957: $ef
    ld l, $e0                                     ; $4958: $2e $e0
    ld d, [hl]                                    ; $495a: $56
    nop                                           ; $495b: $00
    pop hl                                        ; $495c: $e1
    db $fd                                        ; $495d: $fd
    sbc $9d                                       ; $495e: $de $9d
    ld b, [hl]                                    ; $4960: $46
    sbc a                                         ; $4961: $9f
    di                                            ; $4962: $f3
    ld [bc], a                                    ; $4963: $02
    rst $20                                       ; $4964: $e7
    ld a, l                                       ; $4965: $7d
    dec a                                         ; $4966: $3d
    sbc $7d                                       ; $4967: $de $7d
    rst $18                                       ; $4969: $df
    ld a, e                                       ; $496a: $7b
    add b                                         ; $496b: $80
    ld b, a                                       ; $496c: $47
    add [hl]                                      ; $496d: $86
    ret c                                         ; $496e: $d8

    ld a, b                                       ; $496f: $78
    rst $18                                       ; $4970: $df
    rst $30                                       ; $4971: $f7
    dec bc                                        ; $4972: $0b
    rla                                           ; $4973: $17
    add c                                         ; $4974: $81
    ldh [rNR10], a                                ; $4975: $e0 $10
    ld a, b                                       ; $4977: $78
    ld a, [hl+]                                   ; $4978: $2a
    db $f4                                        ; $4979: $f4
    xor $02                                       ; $497a: $ee $02
    ld l, [hl]                                    ; $497c: $6e
    add h                                         ; $497d: $84
    ld b, h                                       ; $497e: $44
    jp c, Jump_060_7fda                           ; $497f: $da $da $7f

    and [hl]                                      ; $4982: $a6
    add [hl]                                      ; $4983: $86
    ld [hl], $ba                                  ; $4984: $36 $ba
    res 3, [hl]                                   ; $4986: $cb $9e
    and $42                                       ; $4988: $e6 $42
    db $ec                                        ; $498a: $ec
    adc h                                         ; $498b: $8c
    add hl, hl                                    ; $498c: $29
    jp hl                                         ; $498d: $e9


    ld de, $fa75                                  ; $498e: $11 $75 $fa
    add hl, bc                                    ; $4991: $09
    ld [bc], a                                    ; $4992: $02
    sub [hl]                                      ; $4993: $96
    ei                                            ; $4994: $fb
    dec b                                         ; $4995: $05
    ld l, l                                       ; $4996: $6d
    rst $00                                       ; $4997: $c7
    pop hl                                        ; $4998: $e1
    ld [hl], c                                    ; $4999: $71
    xor b                                         ; $499a: $a8
    rst $28                                       ; $499b: $ef
    ld l, c                                       ; $499c: $69
    adc [hl]                                      ; $499d: $8e
    ld [hl], h                                    ; $499e: $74
    rst $28                                       ; $499f: $ef
    ld c, [hl]                                    ; $49a0: $4e
    cpl                                           ; $49a1: $2f
    ld [bc], a                                    ; $49a2: $02
    ld b, c                                       ; $49a3: $41
    adc a                                         ; $49a4: $8f
    or h                                          ; $49a5: $b4
    adc h                                         ; $49a6: $8c
    and c                                         ; $49a7: $a1
    rrca                                          ; $49a8: $0f
    add c                                         ; $49a9: $81
    rst $10                                       ; $49aa: $d7
    ld [$bb89], sp                                ; $49ab: $08 $89 $bb
    rst $28                                       ; $49ae: $ef
    ld a, e                                       ; $49af: $7b

jr_060_49b0:
    rst $08                                       ; $49b0: $cf
    sub a                                         ; $49b1: $97
    push bc                                       ; $49b2: $c5
    add $fd                                       ; $49b3: $c6 $fd
    adc [hl]                                      ; $49b5: $8e
    add hl, bc                                    ; $49b6: $09
    ld h, l                                       ; $49b7: $65
    ld h, h                                       ; $49b8: $64
    db $ec                                        ; $49b9: $ec
    ld h, a                                       ; $49ba: $67
    add sp, $1c                                   ; $49bb: $e8 $1c
    add hl, de                                    ; $49bd: $19
    ld a, [hl-]                                   ; $49be: $3a
    ld a, [hl-]                                   ; $49bf: $3a
    ld b, a                                       ; $49c0: $47
    and l                                         ; $49c1: $a5
    ei                                            ; $49c2: $fb
    ld a, [hl]                                    ; $49c3: $7e
    ld bc, $41d7                                  ; $49c4: $01 $d7 $41

Call_060_49c7:
    xor l                                         ; $49c7: $ad
    ld e, [hl]                                    ; $49c8: $5e
    ld h, l                                       ; $49c9: $65
    and e                                         ; $49ca: $a3
    ld [hl], e                                    ; $49cb: $73
    xor l                                         ; $49cc: $ad
    and $da                                       ; $49cd: $e6 $da
    ld b, e                                       ; $49cf: $43
    ld hl, $93f6                                  ; $49d0: $21 $f6 $93
    db $eb                                        ; $49d3: $eb
    sbc h                                         ; $49d4: $9c
    xor e                                         ; $49d5: $ab
    db $fc                                        ; $49d6: $fc
    ld de, $a2ca                                  ; $49d7: $11 $ca $a2
    sub b                                         ; $49da: $90
    dec c                                         ; $49db: $0d
    dec e                                         ; $49dc: $1d
    ld a, c                                       ; $49dd: $79
    pop hl                                        ; $49de: $e1
    ret                                           ; $49df: $c9


    ld h, $7a                                     ; $49e0: $26 $7a
    ld d, c                                       ; $49e2: $51
    ret z                                         ; $49e3: $c8

    ld hl, $da14                                  ; $49e4: $21 $14 $da
    jp c, $a67f                                   ; $49e7: $da $7f $a6

    and $7e                                       ; $49ea: $e6 $7e
    ld bc, $e617                                  ; $49ec: $01 $17 $e6
    ret nc                                        ; $49ef: $d0

    call z, $c5de                                 ; $49f0: $cc $de $c5
    xor c                                         ; $49f3: $a9
    adc c                                         ; $49f4: $89
    ld [hl+], a                                   ; $49f5: $22
    db $10                                        ; $49f6: $10
    inc c                                         ; $49f7: $0c
    reti                                          ; $49f8: $d9


    ld [$e689], sp                                ; $49f9: $08 $89 $e6
    ld [hl], e                                    ; $49fc: $73
    ld e, [hl]                                    ; $49fd: $5e
    sub a                                         ; $49fe: $97
    sbc e                                         ; $49ff: $9b
    ld c, [hl]                                    ; $4a00: $4e
    ld e, e                                       ; $4a01: $5b
    inc c                                         ; $4a02: $0c
    ld [hl], e                                    ; $4a03: $73
    xor [hl]                                      ; $4a04: $ae
    ld e, l                                       ; $4a05: $5d
    adc a                                         ; $4a06: $8f
    and d                                         ; $4a07: $a2
    xor $96                                       ; $4a08: $ee $96
    ld e, $45                                     ; $4a0a: $1e $45
    rst $30                                       ; $4a0c: $f7
    dec bc                                        ; $4a0d: $0b
    db $ed                                        ; $4a0e: $ed
    ld a, d                                       ; $4a0f: $7a
    inc d                                         ; $4a10: $14
    ld [hl], l                                    ; $4a11: $75
    or a                                          ; $4a12: $b7
    db $f4                                        ; $4a13: $f4
    jr z, jr_060_49b0                             ; $4a14: $28 $9a

    ld [hl], e                                    ; $4a16: $73
    dec c                                         ; $4a17: $0d
    ld h, e                                       ; $4a18: $63
    ld h, l                                       ; $4a19: $65
    db $ed                                        ; $4a1a: $ed
    cpl                                           ; $4a1b: $2f
    rst $20                                       ; $4a1c: $e7
    ld e, e                                       ; $4a1d: $5b
    push af                                       ; $4a1e: $f5
    ld e, a                                       ; $4a1f: $5f
    sbc h                                         ; $4a20: $9c
    or h                                          ; $4a21: $b4
    and c                                         ; $4a22: $a1
    sbc c                                         ; $4a23: $99
    dec a                                         ; $4a24: $3d
    rst $20                                       ; $4a25: $e7
    xor [hl]                                      ; $4a26: $ae
    cp $b1                                        ; $4a27: $fe $b1
    add l                                         ; $4a29: $85
    ld l, b                                       ; $4a2a: $68
    rst $38                                       ; $4a2b: $ff
    call nz, $17ee                                ; $4a2c: $c4 $ee $17
    sub a                                         ; $4a2f: $97
    ld c, b                                       ; $4a30: $48
    or c                                          ; $4a31: $b1
    xor h                                         ; $4a32: $ac
    or $66                                        ; $4a33: $f6 $66
    xor $ea                                       ; $4a35: $ee $ea
    rra                                           ; $4a37: $1f
    ld e, e                                       ; $4a38: $5b
    adc b                                         ; $4a39: $88
    or $4f                                        ; $4a3a: $f6 $4f
    ld c, h                                       ; $4a3c: $4c
    ei                                            ; $4a3d: $fb
    dec bc                                        ; $4a3e: $0b
    rla                                           ; $4a3f: $17
    and $54                                       ; $4a40: $e6 $54
    add sp, -$23                                  ; $4a42: $e8 $dd
    dec b                                         ; $4a44: $05
    call z, Call_060_50eb                         ; $4a45: $cc $eb $50
    cp h                                          ; $4a48: $bc

jr_060_4a49:
    jp c, Jump_000_065c                           ; $4a49: $da $5c $06

    inc [hl]                                      ; $4a4c: $34
    xor a                                         ; $4a4d: $af
    add [hl]                                      ; $4a4e: $86
    ld h, a                                       ; $4a4f: $67
    ld l, b                                       ; $4a50: $68
    ld h, [hl]                                    ; $4a51: $66
    xor a                                         ; $4a52: $af
    ld de, $cf12                                  ; $4a53: $11 $12 $cf
    ld a, c                                       ; $4a56: $79
    ld bc, $666d                                  ; $4a57: $01 $6d $66
    or $9c                                        ; $4a5a: $f6 $9c
    dec sp                                        ; $4a5c: $3b
    call nc, Call_060_4c35                        ; $4a5d: $d4 $35 $4c
    ld a, [hl-]                                   ; $4a60: $3a
    ld b, c                                       ; $4a61: $41
    or h                                          ; $4a62: $b4
    cp a                                          ; $4a63: $bf
    add a                                         ; $4a64: $87
    cp d                                          ; $4a65: $ba
    add [hl]                                      ; $4a66: $86
    ld c, c                                       ; $4a67: $49
    daa                                           ; $4a68: $27
    ret z                                         ; $4a69: $c8

    and d                                         ; $4a6a: $a2
    db $f4                                        ; $4a6b: $f4
    inc de                                        ; $4a6c: $13
    add l                                         ; $4a6d: $85
    call c, $acef                                 ; $4a6e: $dc $ef $ac
    db $fd                                        ; $4a71: $fd
    dec b                                         ; $4a72: $05
    ld l, l                                       ; $4a73: $6d
    and $39                                       ; $4a74: $e6 $39
    ld b, a                                       ; $4a76: $47
    cp $87                                        ; $4a77: $fe $87
    ld [hl], $34                                  ; $4a79: $36 $34
    rst $08                                       ; $4a7b: $cf
    cp c                                          ; $4a7c: $b9
    or $9f                                        ; $4a7d: $f6 $9f
    xor c                                         ; $4a7f: $a9
    reti                                          ; $4a80: $d9


    sub l                                         ; $4a81: $95
    add c                                         ; $4a82: $81
    reti                                          ; $4a83: $d9


    xor c                                         ; $4a84: $a9
    db $fd                                        ; $4a85: $fd
    dec b                                         ; $4a86: $05
    rst $00                                       ; $4a87: $c7
    ld h, h                                       ; $4a88: $64
    ld [hl], c                                    ; $4a89: $71
    halt                                          ; $4a8a: $76
    jr z, jr_060_4a49                             ; $4a8b: $28 $bc

    rst $08                                       ; $4a8d: $cf
    ld b, e                                       ; $4a8e: $43
    rst $20                                       ; $4a8f: $e7
    ld b, b                                       ; $4a90: $40
    add hl, hl                                    ; $4a91: $29
    cpl                                           ; $4a92: $2f
    ld [bc], a                                    ; $4a93: $02
    ld b, c                                       ; $4a94: $41
    rst $10                                       ; $4a95: $d7
    sbc c                                         ; $4a96: $99
    ld [hl], a                                    ; $4a97: $77
    ld d, b                                       ; $4a98: $50
    cpl                                           ; $4a99: $2f
    and l                                         ; $4a9a: $a5
    dec sp                                        ; $4a9b: $3b
    dec de                                        ; $4a9c: $1b
    ld hl, $0c71                                  ; $4a9d: $21 $71 $0c
    ld a, l                                       ; $4aa0: $7d
    ld [$b685], sp                                ; $4aa1: $08 $85 $b6
    dec hl                                        ; $4aa4: $2b
    inc bc                                        ; $4aa5: $03
    or e                                          ; $4aa6: $b3
    di                                            ; $4aa7: $f3
    ld a, [hl]                                    ; $4aa8: $7e
    ld bc, $2087                                  ; $4aa9: $01 $87 $20
    ld [hl], a                                    ; $4aac: $77
    add hl, sp                                    ; $4aad: $39
    db $10                                        ; $4aae: $10
    dec h                                         ; $4aaf: $25
    ld b, e                                       ; $4ab0: $43
    rst $38                                       ; $4ab1: $ff
    ld [hl], l                                    ; $4ab2: $75
    add sp, $1d                                   ; $4ab3: $e8 $1d
    add h                                         ; $4ab5: $84
    and a                                         ; $4ab6: $a7
    ld l, d                                       ; $4ab7: $6a
    adc [hl]                                      ; $4ab8: $8e
    cp e                                          ; $4ab9: $bb
    ld [hl-], a                                   ; $4aba: $32
    ld h, h                                       ; $4abb: $64
    dec bc                                        ; $4abc: $0b
    and h                                         ; $4abd: $a4
    ld [hl], b                                    ; $4abe: $70
    db $10                                        ; $4abf: $10
    jp c, $bd48                                   ; $4ac0: $da $48 $bd

    sub $16                                       ; $4ac3: $d6 $16
    or l                                          ; $4ac5: $b5
    cp b                                          ; $4ac6: $b8
    ld d, a                                       ; $4ac7: $57
    rrca                                          ; $4ac8: $0f
    halt                                          ; $4ac9: $76
    ld [hl], c                                    ; $4aca: $71
    ld l, d                                       ; $4acb: $6a
    and d                                         ; $4acc: $a2
    ld [$4304], sp                                ; $4acd: $08 $04 $43
    ld [hl], d                                    ; $4ad0: $72
    inc sp                                        ; $4ad1: $33
    push bc                                       ; $4ad2: $c5
    ld a, h                                       ; $4ad3: $7c
    xor a                                         ; $4ad4: $af
    dec a                                         ; $4ad5: $3d
    cp $38                                        ; $4ad6: $fe $38
    push af                                       ; $4ad8: $f5
    ld h, l                                       ; $4ad9: $65
    ld [hl], h                                    ; $4ada: $74
    sub a                                         ; $4adb: $97
    sub c                                         ; $4adc: $91
    ld [hl], h                                    ; $4add: $74
    ld c, d                                       ; $4ade: $4a
    ld l, a                                       ; $4adf: $6f
    ld a, c                                       ; $4ae0: $79
    ld [$8f65], sp                                ; $4ae1: $08 $65 $8f
    pop af                                        ; $4ae4: $f1
    sbc h                                         ; $4ae5: $9c
    rla                                           ; $4ae6: $17
    ld l, l                                       ; $4ae7: $6d
    and $39                                       ; $4ae8: $e6 $39
    add a                                         ; $4aea: $87
    and $d1                                       ; $4aeb: $e6 $d1
    jp $a942                                      ; $4aed: $c3 $42 $a9


    call Call_000_077b                            ; $4af0: $cd $7b $07
    ld e, h                                       ; $4af3: $5c
    and $5c                                       ; $4af4: $e6 $5c
    jp hl                                         ; $4af6: $e9


    rra                                           ; $4af7: $1f
    rla                                           ; $4af8: $17
    add l                                         ; $4af9: $85
    and h                                         ; $4afa: $a4
    db $ed                                        ; $4afb: $ed
    di                                            ; $4afc: $f3
    ld d, b                                       ; $4afd: $50
    rra                                           ; $4afe: $1f
    ld sp, hl                                     ; $4aff: $f9
    ld [hl], e                                    ; $4b00: $73
    or l                                          ; $4b01: $b5
    db $eb                                        ; $4b02: $eb
    call z, Call_000_21e6                         ; $4b03: $cc $e6 $21
    sub h                                         ; $4b06: $94
    ld sp, $85f4                                  ; $4b07: $31 $f4 $85
    ld a, d                                       ; $4b0a: $7a
    cp a                                          ; $4b0b: $bf
    rst $30                                       ; $4b0c: $f7
    ld a, l                                       ; $4b0d: $7d
    cp a                                          ; $4b0e: $bf
    ld l, l                                       ; $4b0f: $6d
    ld a, [$73aa]                                 ; $4b10: $fa $aa $73
    ld a, [hl-]                                   ; $4b13: $3a
    adc [hl]                                      ; $4b14: $8e
    and c                                         ; $4b15: $a1
    rst $28                                       ; $4b16: $ef
    di                                            ; $4b17: $f3

jr_060_4b18:
    ld h, d                                       ; $4b18: $62
    ld c, d                                       ; $4b19: $4a
    ld a, d                                       ; $4b1a: $7a
    sub [hl]                                      ; $4b1b: $96
    ld b, l                                       ; $4b1c: $45
    jr nz, @-$73                                  ; $4b1d: $20 $8b

    inc [hl]                                      ; $4b1f: $34
    ld c, c                                       ; $4b20: $49
    db $db                                        ; $4b21: $db
    ld h, e                                       ; $4b22: $63
    add hl, de                                    ; $4b23: $19
    sbc d                                         ; $4b24: $9a
    reti                                          ; $4b25: $d9


    ld [hl], e                                    ; $4b26: $73
    ld c, $94                                     ; $4b27: $0e $94
    ld a, [c]                                     ; $4b29: $f2
    db $10                                        ; $4b2a: $10
    ld a, b                                       ; $4b2b: $78
    adc l                                         ; $4b2c: $8d
    sub b                                         ; $4b2d: $90
    ld a, b                                       ; $4b2e: $78
    cp a                                          ; $4b2f: $bf
    sub a                                         ; $4b30: $97
    jr z, jr_060_4b18                             ; $4b31: $28 $e5

    ld hl, $1af0                                  ; $4b33: $21 $f0 $1a
    ld hl, $f771                                  ; $4b36: $21 $71 $f7

jr_060_4b39:
    ld a, l                                       ; $4b39: $7d
    adc a                                         ; $4b3a: $8f
    adc h                                         ; $4b3b: $8c
    ld b, e                                       ; $4b3c: $43
    xor [hl]                                      ; $4b3d: $ae
    ld h, c                                       ; $4b3e: $61
    ld c, h                                       ; $4b3f: $4c
    ld l, d                                       ; $4b40: $6a
    db $ec                                        ; $4b41: $ec
    ld c, $85                                     ; $4b42: $0e $85
    rst $28                                       ; $4b44: $ef
    ei                                            ; $4b45: $fb
    ld a, [hl]                                    ; $4b46: $7e
    ld bc, $3e07                                  ; $4b47: $01 $07 $3e
    ld l, l                                       ; $4b4a: $6d
    ld l, b                                       ; $4b4b: $68
    sbc [hl]                                      ; $4b4c: $9e
    di                                            ; $4b4d: $f3
    sbc $75                                       ; $4b4e: $de $75
    jr nc, jr_060_4b39                            ; $4b50: $30 $e7

    ld c, d                                       ; $4b52: $4a
    rst $38                                       ; $4b53: $ff
    add sp, $45                                   ; $4b54: $e8 $45
    ld hl, $fb69                                  ; $4b56: $21 $69 $fb
    inc a                                         ; $4b59: $3c
    call nc, $9ce7                                ; $4b5a: $d4 $e7 $9c
    ld h, l                                       ; $4b5d: $65
    ccf                                           ; $4b5e: $3f
    ld e, d                                       ; $4b5f: $5a
    xor b                                         ; $4b60: $a8
    jp c, $ed5f                                   ; $4b61: $da $5f $ed

    ccf                                           ; $4b64: $3f
    ld d, e                                       ; $4b65: $53
    and e                                         ; $4b66: $a3
    ld a, l                                       ; $4b67: $7d
    db $ed                                        ; $4b68: $ed
    adc $10                                       ; $4b69: $ce $10
    and a                                         ; $4b6b: $a7
    or l                                          ; $4b6c: $b5
    cp a                                          ; $4b6d: $bf
    rst $10                                       ; $4b6e: $d7
    ld a, h                                       ; $4b6f: $7c
    ld b, l                                       ; $4b70: $45
    dec de                                        ; $4b71: $1b
    db $dd                                        ; $4b72: $dd
    ld h, l                                       ; $4b73: $65
    ld de, $b3b5                                  ; $4b74: $11 $b5 $b3
    rst $30                                       ; $4b77: $f7
    ld b, b                                       ; $4b78: $40
    sbc c                                         ; $4b79: $99
    ld h, l                                       ; $4b7a: $65
    push af                                       ; $4b7b: $f5
    pop de                                        ; $4b7c: $d1
    cp e                                          ; $4b7d: $bb
    rla                                           ; $4b7e: $17
    add l                                         ; $4b7f: $85
    db $e4                                        ; $4b80: $e4
    rst $18                                       ; $4b81: $df
    ldh [$fb], a                                  ; $4b82: $e0 $fb
    dec b                                         ; $4b84: $05
    db $ed                                        ; $4b85: $ed
    or c                                          ; $4b86: $b1
    sbc a                                         ; $4b87: $9f
    add hl, sp                                    ; $4b88: $39
    add a                                         ; $4b89: $87
    sub [hl]                                      ; $4b8a: $96
    ld d, l                                       ; $4b8b: $55
    ld c, [hl]                                    ; $4b8c: $4e
    ld c, e                                       ; $4b8d: $4b
    pop hl                                        ; $4b8e: $e1
    jp hl                                         ; $4b8f: $e9


    ld e, b                                       ; $4b90: $58
    ld l, l                                       ; $4b91: $6d
    ld b, c                                       ; $4b92: $41
    rst $28                                       ; $4b93: $ef
    ld sp, hl                                     ; $4b94: $f9
    add d                                         ; $4b95: $82
    ld b, e                                       ; $4b96: $43
    ld h, a                                       ; $4b97: $67
    ld l, b                                       ; $4b98: $68
    or l                                          ; $4b99: $b5
    ld a, h                                       ; $4b9a: $7c
    adc $da                                       ; $4b9b: $ce $da
    cp a                                          ; $4b9d: $bf

jr_060_4b9e:
    xor h                                         ; $4b9e: $ac
    ld a, [hl-]                                   ; $4b9f: $3a
    and a                                         ; $4ba0: $a7
    db $e3                                        ; $4ba1: $e3
    jr jr_060_4b9e                                ; $4ba2: $18 $fa

    ld a, $8f                                     ; $4ba4: $3e $8f
    db $fc                                        ; $4ba6: $fc
    add sp, $3d                                   ; $4ba7: $e8 $3d
    ld d, b                                       ; $4ba9: $50
    xor $17                                       ; $4baa: $ee $17
    ld l, l                                       ; $4bac: $6d
    and $39                                       ; $4bad: $e6 $39
    ld [hl], a                                    ; $4baf: $77
    ld c, b                                       ; $4bb0: $48
    ld a, [hl]                                    ; $4bb1: $7e
    res 6, h                                      ; $4bb2: $cb $b4
    cp c                                          ; $4bb4: $b9
    add e                                         ; $4bb5: $83
    xor d                                         ; $4bb6: $aa
    sub b                                         ; $4bb7: $90
    adc a                                         ; $4bb8: $8f
    dec hl                                        ; $4bb9: $2b
    dec sp                                        ; $4bba: $3b
    dec l                                         ; $4bbb: $2d
    dec bc                                        ; $4bbc: $0b
    ld h, l                                       ; $4bbd: $65
    add a                                         ; $4bbe: $87
    cp d                                          ; $4bbf: $ba
    add [hl]                                      ; $4bc0: $86
    ld c, c                                       ; $4bc1: $49
    daa                                           ; $4bc2: $27
    ld c, b                                       ; $4bc3: $48
    ld e, l                                       ; $4bc4: $5d
    adc b                                         ; $4bc5: $88
    sbc l                                         ; $4bc6: $9d
    ld h, h                                       ; $4bc7: $64
    adc b                                         ; $4bc8: $88
    adc l                                         ; $4bc9: $8d
    rst $30                                       ; $4bca: $f7
    xor [hl]                                      ; $4bcb: $ae
    ld sp, hl                                     ; $4bcc: $f9
    ld h, l                                       ; $4bcd: $65
    ld [$b065], sp                                ; $4bce: $08 $65 $b0
    ld e, a                                       ; $4bd1: $5f
    ld a, b                                       ; $4bd2: $78
    ld d, c                                       ; $4bd3: $51
    ret z                                         ; $4bd4: $c8

    sub c                                         ; $4bd5: $91
    rst $38                                       ; $4bd6: $ff
    cp c                                          ; $4bd7: $b9
    rst $10                                       ; $4bd8: $d7
    cp $9f                                        ; $4bd9: $fe $9f
    dec a                                         ; $4bdb: $3d
    add $b1                                       ; $4bdc: $c6 $b1
    sbc [hl]                                      ; $4bde: $9e
    adc l                                         ; $4bdf: $8d
    cpl                                           ; $4be0: $2f
    sub [hl]                                      ; $4be1: $96
    add hl, sp                                    ; $4be2: $39
    ld [hl], a                                    ; $4be3: $77
    sub l                                         ; $4be4: $95
    ld c, $99                                     ; $4be5: $0e $99
    xor $fd                                       ; $4be7: $ee $fd
    db $ec                                        ; $4be9: $ec
    sub c                                         ; $4bea: $91
    ld e, a                                       ; $4beb: $5f
    and [hl]                                      ; $4bec: $a6
    dec bc                                        ; $4bed: $0b
    ld a, [hl-]                                   ; $4bee: $3a
    ld h, e                                       ; $4bef: $63
    xor b                                         ; $4bf0: $a8
    adc $c1                                       ; $4bf1: $ce $c1
    ld l, $0a                                     ; $4bf3: $2e $0a
    ld e, c                                       ; $4bf5: $59
    db $e3                                        ; $4bf6: $e3
    sbc a                                         ; $4bf7: $9f
    ld a, e                                       ; $4bf8: $7b
    ld [bc], a                                    ; $4bf9: $02
    xor $20                                       ; $4bfa: $ee $20
    dec [hl]                                      ; $4bfc: $35
    sub l                                         ; $4bfd: $95
    cp c                                          ; $4bfe: $b9
    xor $d2                                       ; $4bff: $ee $d2
    and h                                         ; $4c01: $a4
    ld b, h                                       ; $4c02: $44
    db $ec                                        ; $4c03: $ec
    cp h                                          ; $4c04: $bc
    rst $10                                       ; $4c05: $d7

jr_060_4c06:
    ld h, [hl]                                    ; $4c06: $66
    ld e, [hl]                                    ; $4c07: $5e
    ld l, d                                       ; $4c08: $6a
    ld a, [bc]                                    ; $4c09: $0a
    cp e                                          ; $4c0a: $bb
    jp nc, Jump_060_79f6                          ; $4c0b: $d2 $f6 $79

    add a                                         ; $4c0e: $87
    db $e4                                        ; $4c0f: $e4
    or a                                          ; $4c10: $b7
    inc a                                         ; $4c11: $3c
    rst $20                                       ; $4c12: $e7
    ld [hl], h                                    ; $4c13: $74
    db $f4                                        ; $4c14: $f4
    inc e                                         ; $4c15: $1c
    or c                                          ; $4c16: $b1
    ld [hl], e                                    ; $4c17: $73
    db $e4                                        ; $4c18: $e4
    sub a                                         ; $4c19: $97
    ld a, [hl-]                                   ; $4c1a: $3a
    ld a, d                                       ; $4c1b: $7a
    ld l, b                                       ; $4c1c: $68
    call c, Call_000_072f                         ; $4c1d: $dc $2f $07
    ld e, h                                       ; $4c20: $5c
    and $5c                                       ; $4c21: $e6 $5c
    and e                                         ; $4c23: $a3
    dec sp                                        ; $4c24: $3b
    ld [hl], $0f                                  ; $4c25: $36 $0f
    inc b                                         ; $4c27: $04
    cp e                                          ; $4c28: $bb
    sbc a                                         ; $4c29: $9f
    rst $00                                       ; $4c2a: $c7
    inc a                                         ; $4c2b: $3c
    ret c                                         ; $4c2c: $d8

    ld l, $4e                                     ; $4c2d: $2e $4e
    ld c, l                                       ; $4c2f: $4d
    inc d                                         ; $4c30: $14
    add c                                         ; $4c31: $81
    ld h, b                                       ; $4c32: $60
    ld c, b                                       ; $4c33: $48
    db $ed                                        ; $4c34: $ed

Call_060_4c35:
    cpl                                           ; $4c35: $2f
    rla                                           ; $4c36: $17
    rlca                                          ; $4c37: $07
    db $e4                                        ; $4c38: $e4
    xor c                                         ; $4c39: $a9
    cp $d3                                        ; $4c3a: $fe $d3
    ld c, h                                       ; $4c3c: $4c
    db $db                                        ; $4c3d: $db
    push de                                       ; $4c3e: $d5
    ld b, c                                       ; $4c3f: $41
    or h                                          ; $4c40: $b4
    cp a                                          ; $4c41: $bf
    add a                                         ; $4c42: $87
    sbc d                                         ; $4c43: $9a
    xor e                                         ; $4c44: $ab
    ld [$a1f7], a                                 ; $4c45: $ea $f7 $a1
    cp [hl]                                       ; $4c48: $be
    sbc b                                         ; $4c49: $98
    sub d                                         ; $4c4a: $92
    ld e, [hl]                                    ; $4c4b: $5e
    db $fd                                        ; $4c4c: $fd
    rst $08                                       ; $4c4d: $cf
    ld h, e                                       ; $4c4e: $63
    reti                                          ; $4c4f: $d9


    ld h, e                                       ; $4c50: $63
    call c, $ddef                                 ; $4c51: $dc $ef $dd

Call_060_4c54:
    dec bc                                        ; $4c54: $0b
    ld [hl], l                                    ; $4c55: $75
    ld e, a                                       ; $4c56: $5f
    jr nc, jr_060_4c06                            ; $4c57: $30 $ad

    db $fd                                        ; $4c59: $fd
    dec b                                         ; $4c5a: $05
    rst $20                                       ; $4c5b: $e7
    push af                                       ; $4c5c: $f5
    xor $73                                       ; $4c5d: $ee $73
    halt                                          ; $4c5f: $76
    dec c                                         ; $4c60: $0d
    db $fd                                        ; $4c61: $fd
    rst $28                                       ; $4c62: $ef
    cp [hl]                                       ; $4c63: $be
    rst $28                                       ; $4c64: $ef
    ld d, c                                       ; $4c65: $51
    ret                                           ; $4c66: $c9


    db $dd                                        ; $4c67: $dd
    rst $30                                       ; $4c68: $f7
    dec a                                         ; $4c69: $3d
    ld a, [c]                                     ; $4c6a: $f2
    ld a, c                                       ; $4c6b: $79
    xor $fb                                       ; $4c6c: $ee $fb
    ld a, [hl]                                    ; $4c6e: $7e
    ld bc, $8517                                  ; $4c6f: $01 $17 $85
    ld b, h                                       ; $4c72: $44
    ld [hl], a                                    ; $4c73: $77
    sub b                                         ; $4c74: $90
    ld h, d                                       ; $4c75: $62
    sbc c                                         ; $4c76: $99
    ld [hl], e                                    ; $4c77: $73
    sub c                                         ; $4c78: $91
    sbc $31                                       ; $4c79: $de $31
    and d                                         ; $4c7b: $a2
    ld h, $df                                     ; $4c7c: $26 $df
    cp e                                          ; $4c7e: $bb
    adc $5d                                       ; $4c7f: $ce $5d
    add l                                         ; $4c81: $85
    rst $20                                       ; $4c82: $e7
    or c                                          ; $4c83: $b1
    adc h                                         ; $4c84: $8c
    and c                                         ; $4c85: $a1
    rst $08                                       ; $4c86: $cf
    inc a                                         ; $4c87: $3c
    pop de                                        ; $4c88: $d1
    ldh a, [$aa]                                  ; $4c89: $f0 $aa
    ld a, [bc]                                    ; $4c8b: $0a
    db $dd                                        ; $4c8c: $dd
    call $ab5c                                    ; $4c8d: $cd $5c $ab
    cp c                                          ; $4c90: $b9
    or $50                                        ; $4c91: $f6 $50
    adc b                                         ; $4c93: $88
    db $fd                                        ; $4c94: $fd
    db $e4                                        ; $4c95: $e4
    xor d                                         ; $4c96: $aa
    ld a, l                                       ; $4c97: $7d
    sub a                                         ; $4c98: $97
    ld a, l                                       ; $4c99: $7d
    ld e, h                                       ; $4c9a: $5c
    db $e4                                        ; $4c9b: $e4
    jp z, Jump_000_200f                           ; $4c9c: $ca $0f $20

    cp $62                                        ; $4c9f: $fe $62
    ld e, c                                       ; $4ca1: $59
    jp Jump_000_2345                              ; $4ca2: $c3 $45 $23


    add sp, -$05                                  ; $4ca5: $e8 $fb
    dec b                                         ; $4ca7: $05
    db $ed                                        ; $4ca8: $ed
    ld a, d                                       ; $4ca9: $7a
    ld [hl-], a                                   ; $4caa: $32
    inc d                                         ; $4cab: $14
    and [hl]                                      ; $4cac: $a6
    dec c                                         ; $4cad: $0d
    inc b                                         ; $4cae: $04
    rlca                                          ; $4caf: $07
    dec sp                                        ; $4cb0: $3b
    call nz, $eb21                                ; $4cb1: $c4 $21 $eb
    rst $28                                       ; $4cb4: $ef
    sub [hl]                                      ; $4cb5: $96
    add c                                         ; $4cb6: $81
    and b                                         ; $4cb7: $a0
    ld h, l                                       ; $4cb8: $65
    ld d, c                                       ; $4cb9: $51
    ld c, b                                       ; $4cba: $48
    ld [hl], h                                    ; $4cbb: $74
    rlca                                          ; $4cbc: $07
    add hl, hl                                    ; $4cbd: $29
    sub l                                         ; $4cbe: $95
    xor b                                         ; $4cbf: $a8
    db $d3                                        ; $4cc0: $d3
    ld c, a                                       ; $4cc1: $4f
    db $10                                        ; $4cc2: $10
    or b                                          ; $4cc3: $b0
    call z, $dab9                                 ; $4cc4: $cc $b9 $da
    ld [hl], l                                    ; $4cc7: $75
    sub $fe                                       ; $4cc8: $d6 $fe
    ld [bc], a                                    ; $4cca: $02
    sub a                                         ; $4ccb: $97
    ld c, b                                       ; $4ccc: $48
    or c                                          ; $4ccd: $b1
    adc h                                         ; $4cce: $8c
    ld bc, $d0c7                                  ; $4ccf: $01 $c7 $d0
    ld d, a                                       ; $4cd2: $57
    push hl                                       ; $4cd3: $e5
    dec hl                                        ; $4cd4: $2b
    jp c, Jump_000_2ee8                           ; $4cd5: $da $e8 $2e

    xor e                                         ; $4cd8: $ab
    ld [$45f7], a                                 ; $4cd9: $ea $f7 $45
    ld hl, $ddd1                                  ; $4cdc: $21 $d1 $dd
    push af                                       ; $4cdf: $f5
    ld a, [hl]                                    ; $4ce0: $7e
    ld bc, $ce6d                                  ; $4ce1: $01 $6d $ce
    add hl, sp                                    ; $4ce4: $39
    rlca                                          ; $4ce5: $07
    jp nz, Jump_060_7de6                          ; $4ce6: $c2 $e6 $7d

    ld e, [hl]                                    ; $4ce9: $5e
    rst $38                                       ; $4cea: $ff
    or c                                          ; $4ceb: $b1
    ld b, a                                       ; $4cec: $47
    ld a, [hl-]                                   ; $4ced: $3a
    ld [hl], l                                    ; $4cee: $75
    db $f4                                        ; $4cef: $f4
    cp l                                          ; $4cf0: $bd
    di                                            ; $4cf1: $f3
    ld a, [hl-]                                   ; $4cf2: $3a
    cpl                                           ; $4cf3: $2f
    ld a, [bc]                                    ; $4cf4: $0a
    jp hl                                         ; $4cf5: $e9


    jp nc, $81cc                                  ; $4cf6: $d2 $cc $81

    and b                                         ; $4cf9: $a0
    rlca                                          ; $4cfa: $07
    dec sp                                        ; $4cfb: $3b
    call nz, $eb21                                ; $4cfc: $c4 $21 $eb
    rst $28                                       ; $4cff: $ef
    sub [hl]                                      ; $4d00: $96
    ei                                            ; $4d01: $fb
    dec b                                         ; $4d02: $05
    db $ed                                        ; $4d03: $ed
    ld sp, $a1d4                                  ; $4d04: $31 $d4 $a1
    ld a, $f2                                     ; $4d07: $3e $f2
    rst $20                                       ; $4d09: $e7
    ld a, [de]                                    ; $4d0a: $1a
    xor c                                         ; $4d0b: $a9
    sub a                                         ; $4d0c: $97
    ld b, l                                       ; $4d0d: $45
    ld hl, $1e67                                  ; $4d0e: $21 $67 $1e
    xor c                                         ; $4d11: $a9
    daa                                           ; $4d12: $27
    ld b, e                                       ; $4d13: $43
    pop hl                                        ; $4d14: $e1
    ld [hl], l                                    ; $4d15: $75
    adc b                                         ; $4d16: $88

jr_060_4d17:
    ld a, b                                       ; $4d17: $78
    inc c                                         ; $4d18: $0c
    ld a, l                                       ; $4d19: $7d
    sub c                                         ; $4d1a: $91
    rra                                           ; $4d1b: $1f
    or $ea                                        ; $4d1c: $f6 $ea
    rst $28                                       ; $4d1e: $ef
    or h                                          ; $4d1f: $b4
    add hl, sp                                    ; $4d20: $39
    add a                                         ; $4d21: $87
    adc $59                                       ; $4d22: $ce $59
    or $fc                                        ; $4d24: $f6 $fc
    ld [bc], a                                    ; $4d26: $02
    ld d, l                                       ; $4d27: $55
    dec c                                         ; $4d28: $0d
    xor c                                         ; $4d29: $a9
    add hl, sp                                    ; $4d2a: $39
    jr jr_060_4d87                                ; $4d2b: $18 $5a

    call nz, Call_000_2153                        ; $4d2d: $c4 $53 $21
    inc de                                        ; $4d30: $13
    jr nc, jr_060_4d17                            ; $4d31: $30 $e4

    ld l, d                                       ; $4d33: $6a
    ld a, b                                       ; $4d34: $78
    and [hl]                                      ; $4d35: $a6
    cp [hl]                                       ; $4d36: $be
    inc l                                         ; $4d37: $2c
    and d                                         ; $4d38: $a2
    and [hl]                                      ; $4d39: $a6
    add a                                         ; $4d3a: $87
    ld d, b                                       ; $4d3b: $50
    add [hl]                                      ; $4d3c: $86
    adc $d0                                       ; $4d3d: $ce $d0
    cp d                                          ; $4d3f: $ba
    ld e, a                                       ; $4d40: $5f
    add a                                         ; $4d41: $87
    db $e4                                        ; $4d42: $e4
    or a                                          ; $4d43: $b7
    cp h                                          ; $4d44: $bc
    cp $d1                                        ; $4d45: $fe $d1
    add hl, sp                                    ; $4d47: $39
    add [hl]                                      ; $4d48: $86
    cp [hl]                                       ; $4d49: $be
    rst $08                                       ; $4d4a: $cf
    adc e                                         ; $4d4b: $8b
    add hl, hl                                    ; $4d4c: $29
    jp hl                                         ; $4d4d: $e9


    add l                                         ; $4d4e: $85
    ret c                                         ; $4d4f: $d8

    ld sp, hl                                     ; $4d50: $f9

jr_060_4d51:
    dec sp                                        ; $4d51: $3b
    db $d3                                        ; $4d52: $d3
    ld d, $85                                     ; $4d53: $16 $85
    ld b, h                                       ; $4d55: $44
    jr jr_060_4d51                                ; $4d56: $18 $f9

    ld h, l                                       ; $4d58: $65
    or c                                          ; $4d59: $b1
    ld [hl], c                                    ; $4d5a: $71
    ld h, h                                       ; $4d5b: $64
    inc e                                         ; $4d5c: $1c
    ld [hl], d                                    ; $4d5d: $72
    cp a                                          ; $4d5e: $bf
    ld [hl], a                                    ; $4d5f: $77
    rrca                                          ; $4d60: $0f
    cp l                                          ; $4d61: $bd
    rst $20                                       ; $4d62: $e7
    rla                                           ; $4d63: $17
    xor b                                         ; $4d64: $a8
    jp z, Jump_060_6a43                           ; $4d65: $ca $43 $6a

    ld a, d                                       ; $4d68: $7a
    adc $7b                                       ; $4d69: $ce $7b
    db $ed                                        ; $4d6b: $ed
    ld e, a                                       ; $4d6c: $5f
    sub $b0                                       ; $4d6d: $d6 $b0
    ld l, b                                       ; $4d6f: $68
    sbc b                                         ; $4d70: $98
    sbc l                                         ; $4d71: $9d
    xor e                                         ; $4d72: $ab
    ld d, b                                       ; $4d73: $50
    or $b8                                        ; $4d74: $f6 $b8
    ld a, [c]                                     ; $4d76: $f2
    ld a, [hl]                                    ; $4d77: $7e
    inc [hl]                                      ; $4d78: $34
    and h                                         ; $4d79: $a4
    and [hl]                                      ; $4d7a: $a6
    ld h, l                                       ; $4d7b: $65
    jr nc, @-$4a                                  ; $4d7c: $30 $b4

    adc b                                         ; $4d7e: $88
    and a                                         ; $4d7f: $a7
    ld b, d                                       ; $4d80: $42
    ld h, $60                                     ; $4d81: $26 $60
    ret z                                         ; $4d83: $c8

    ei                                            ; $4d84: $fb
    dec b                                         ; $4d85: $05
    add a                                         ; $4d86: $87

jr_060_4d87:
    db $e4                                        ; $4d87: $e4
    or a                                          ; $4d88: $b7
    ld e, h                                       ; $4d89: $5c
    and a                                         ; $4d8a: $a7
    ld a, [$d5af]                                 ; $4d8b: $fa $af $d5
    dec a                                         ; $4d8e: $3d
    xor b                                         ; $4d8f: $a8
    rst $18                                       ; $4d90: $df

jr_060_4d91:
    cp l                                          ; $4d91: $bd
    ld d, b                                       ; $4d92: $50
    and [hl]                                      ; $4d93: $a6
    add d                                         ; $4d94: $82
    ld [hl], b                                    ; $4d95: $70
    ret z                                         ; $4d96: $c8

    add hl, sp                                    ; $4d97: $39
    add a                                         ; $4d98: $87
    ld c, [hl]                                    ; $4d99: $4e
    ld sp, $5efa                                  ; $4d9a: $31 $fa $5e
    ei                                            ; $4d9d: $fb
    sub a                                         ; $4d9e: $97
    add hl, sp                                    ; $4d9f: $39
    ld d, a                                       ; $4da0: $57
    ld d, l                                       ; $4da1: $55
    add sp, -$6a                                  ; $4da2: $e8 $96
    cp d                                          ; $4da4: $ba
    rst $00                                       ; $4da5: $c7
    sub l                                         ; $4da6: $95
    ld d, a                                       ; $4da7: $57
    ld d, l                                       ; $4da8: $55
    ld d, d                                       ; $4da9: $52
    sbc [hl]                                      ; $4daa: $9e
    rst $00                                       ; $4dab: $c7
    add d                                         ; $4dac: $82
    ld e, [hl]                                    ; $4dad: $5e
    and a                                         ; $4dae: $a7
    and h                                         ; $4daf: $a4
    di                                            ; $4db0: $f3
    ld a, [hl]                                    ; $4db1: $7e
    ld bc, $8907                                  ; $4db2: $01 $07 $89
    ld e, [hl]                                    ; $4db5: $5e
    inc e                                         ; $4db6: $1c
    db $e4                                        ; $4db7: $e4
    sub a                                         ; $4db8: $97

jr_060_4db9:
    rst $18                                       ; $4db9: $df
    ld a, e                                       ; $4dba: $7b
    sbc l                                         ; $4dbb: $9d
    ld a, [bc]                                    ; $4dbc: $0a
    jp nz, $d721                                  ; $4dbd: $c2 $21 $d7

jr_060_4dc0:
    and c                                         ; $4dc0: $a1
    inc d                                         ; $4dc1: $14
    rst $20                                       ; $4dc2: $e7
    ld e, d                                       ; $4dc3: $5a
    call Call_060_45a1                            ; $4dc4: $cd $a1 $45
    inc a                                         ; $4dc7: $3c
    di                                            ; $4dc8: $f3
    cpl                                           ; $4dc9: $2f
    cp [hl]                                       ; $4dca: $be
    rst $10                                       ; $4dcb: $d7
    ld h, [hl]                                    ; $4dcc: $66
    sbc [hl]                                      ; $4dcd: $9e
    ld [hl], e                                    ; $4dce: $73
    and b                                         ; $4dcf: $a0
    sub h                                         ; $4dd0: $94
    and a                                         ; $4dd1: $a7
    ld a, d                                       ; $4dd2: $7a
    jr z, jr_060_4d91                             ; $4dd3: $28 $bc

    rst $08                                       ; $4dd5: $cf
    ld d, e                                       ; $4dd6: $53
    pop hl                                        ; $4dd7: $e1
    ld a, c                                       ; $4dd8: $79
    cp h                                          ; $4dd9: $bc
    jr z, jr_060_4dc0                             ; $4dda: $28 $e4

    xor d                                         ; $4ddc: $aa
    add l                                         ; $4ddd: $85
    rst $00                                       ; $4dde: $c7
    ret nc                                        ; $4ddf: $d0

    ld b, a                                       ; $4de0: $47
    ld e, d                                       ; $4de1: $5a
    ret nc                                        ; $4de2: $d0

    ld [hl], l                                    ; $4de3: $75
    inc c                                         ; $4de4: $0c
    adc a                                         ; $4de5: $8f
    ld d, e                                       ; $4de6: $53
    ei                                            ; $4de7: $fb
    dec bc                                        ; $4de8: $0b
    rla                                           ; $4de9: $17
    add l                                         ; $4dea: $85
    xor h                                         ; $4deb: $ac
    ld d, b                                       ; $4dec: $50
    jr jr_060_4db9                                ; $4ded: $18 $ca

    cp l                                          ; $4def: $bd
    ld l, e                                       ; $4df0: $6b
    dec de                                        ; $4df1: $1b
    ld d, $0d                                     ; $4df2: $16 $0d
    or e                                          ; $4df4: $b3
    pop de                                        ; $4df5: $d1
    ld d, e                                       ; $4df6: $53
    db $fd                                        ; $4df7: $fd
    rst $10                                       ; $4df8: $d7
    ld [$d41e], a                                 ; $4df9: $ea $1e $d4
    rst $28                                       ; $4dfc: $ef
    adc $85                                       ; $4dfd: $ce $85
    ld [hl-], a                                   ; $4dff: $32
    ld c, $cf                                     ; $4e00: $0e $cf
    db $e3                                        ; $4e02: $e3
    xor c                                         ; $4e03: $a9
    jr nz, jr_060_4e22                            ; $4e04: $20 $1c

    jp nc, $d4b9                                  ; $4e06: $d2 $b9 $d4

    sbc a                                         ; $4e09: $9f
    rst $00                                       ; $4e0a: $c7
    cp c                                          ; $4e0b: $b9

jr_060_4e0c:
    ld a, [de]                                    ; $4e0c: $1a
    sbc [hl]                                      ; $4e0d: $9e
    rst $00                                       ; $4e0e: $c7
    inc c                                         ; $4e0f: $0c
    add sp, $5c                                   ; $4e10: $e8 $5c
    ld c, h                                       ; $4e12: $4c
    ld a, c                                       ; $4e13: $79
    ld e, $77                                     ; $4e14: $1e $77
    jr z, @+$60                                   ; $4e16: $28 $5e

    ld c, h                                       ; $4e18: $4c
    xor c                                         ; $4e19: $a9
    ld [c], a                                     ; $4e1a: $e2
    cp h                                          ; $4e1b: $bc
    ld e, a                                       ; $4e1c: $5f
    rlca                                          ; $4e1d: $07
    ld e, h                                       ; $4e1e: $5c
    sub $30                                       ; $4e1f: $d6 $30
    rst $20                                       ; $4e21: $e7

jr_060_4e22:
    cpl                                           ; $4e22: $2f
    db $ec                                        ; $4e23: $ec
    inc e                                         ; $4e24: $1c
    jr z, jr_060_4e0c                             ; $4e25: $28 $e5

    add hl, hl                                    ; $4e27: $29
    ld e, l                                       ; $4e28: $5d
    add $f0                                       ; $4e29: $c6 $f0
    cp b                                          ; $4e2b: $b8
    db $f4                                        ; $4e2c: $f4
    ld e, a                                       ; $4e2d: $5f
    xor e                                         ; $4e2e: $ab
    push bc                                       ; $4e2f: $c5
    adc e                                         ; $4e30: $8b
    ld b, d                                       ; $4e31: $42
    xor $f3                                       ; $4e32: $ee $f3
    xor d                                         ; $4e34: $aa
    ld b, a                                       ; $4e35: $47
    add $d0                                       ; $4e36: $c6 $d0
    sub l                                         ; $4e38: $95
    ld a, c                                       ; $4e39: $79
    ld a, [hl+]                                   ; $4e3a: $2a
    db $f4                                        ; $4e3b: $f4
    xor $02                                       ; $4e3c: $ee $02
    ld a, [$1b43]                                 ; $4e3e: $fa $43 $1b
    ld a, [hl-]                                   ; $4e41: $3a
    rla                                           ; $4e42: $17
    ld d, c                                       ; $4e43: $51
    db $d3                                        ; $4e44: $d3
    cp c                                          ; $4e45: $b9
    rst $00                                       ; $4e46: $c7
    cp b                                          ; $4e47: $b8
    xor b                                         ; $4e48: $a8
    cp e                                          ; $4e49: $bb
    ld a, [c]                                     ; $4e4a: $f2
    ld e, d                                       ; $4e4b: $5a
    ld bc, $ef84                                  ; $4e4c: $01 $84 $ef
    dec e                                         ; $4e4f: $1d
    ld [hl], b                                    ; $4e50: $70
    ld e, c                                       ; $4e51: $59
    ld [hl], l                                    ; $4e52: $75
    ld l, $94                                     ; $4e53: $2e $94
    jp c, $ab5c                                   ; $4e55: $da $5c $ab

    add hl, sp                                    ; $4e58: $39
    db $f4                                        ; $4e59: $f4
    ld b, e                                       ; $4e5a: $43
    ld e, e                                       ; $4e5b: $5b
    inc d                                         ; $4e5c: $14
    ld [de], a                                    ; $4e5d: $12
    ld h, c                                       ; $4e5e: $61
    add sp, -$6b                                  ; $4e5f: $e8 $95
    ld c, $9c                                     ; $4e61: $0e $9c
    adc $fb                                       ; $4e63: $ce $fb
    dec b                                         ; $4e65: $05
    ld l, l                                       ; $4e66: $6d
    adc $39                                       ; $4e67: $ce $39
    daa                                           ; $4e69: $27
    and c                                         ; $4e6a: $a1
    sbc b                                         ; $4e6b: $98
    rst $30                                       ; $4e6c: $f7
    ld l, b                                       ; $4e6d: $68
    ld a, [hl+]                                   ; $4e6e: $2a
    ld b, e                                       ; $4e6f: $43
    ld d, l                                       ; $4e70: $55
    adc e                                         ; $4e71: $8b
    adc l                                         ; $4e72: $8d
    cp e                                          ; $4e73: $bb
    ld [$513a], sp                                ; $4e74: $08 $3a $51
    or d                                          ; $4e77: $b2
    ld c, [hl]                                    ; $4e78: $4e
    add l                                         ; $4e79: $85
    jp z, $eaae                                   ; $4e7a: $ca $ae $ea

    scf                                           ; $4e7d: $37
    xor $1d                                       ; $4e7e: $ee $1d
    ld [hl], b                                    ; $4e80: $70
    ld e, c                                       ; $4e81: $59
    ld [hl], l                                    ; $4e82: $75
    adc [hl]                                      ; $4e83: $8e
    db $fc                                        ; $4e84: $fc
    rst $08                                       ; $4e85: $cf
    ld c, d                                       ; $4e86: $4a
    ld [hl], e                                    ; $4e87: $73
    add sp, $04                                   ; $4e88: $e8 $04
    ld b, c                                       ; $4e8a: $41
    jp c, $cb1e                                   ; $4e8b: $da $1e $cb

    add sp, $2e                                   ; $4e8e: $e8 $2e
    xor e                                         ; $4e90: $ab
    adc $91                                       ; $4e91: $ce $91
    rst $38                                       ; $4e93: $ff
    add hl, de                                    ; $4e94: $19
    jr z, @-$19                                   ; $4e95: $28 $e5

    xor c                                         ; $4e97: $a9
    ldh a, [$3c]                                  ; $4e98: $f0 $3c
    sbc [hl]                                      ; $4e9a: $9e
    adc [hl]                                      ; $4e9b: $8e
    rst $30                                       ; $4e9c: $f7
    dec bc                                        ; $4e9d: $0b
    rla                                           ; $4e9e: $17
    rst $38                                       ; $4e9f: $ff
    inc l                                         ; $4ea0: $2c
    ld bc, $53ba                                  ; $4ea1: $01 $ba $53
    cp h                                          ; $4ea4: $bc
    ret c                                         ; $4ea5: $d8

    cp b                                          ; $4ea6: $b8
    ld c, [hl]                                    ; $4ea7: $4e
    ld c, c                                       ; $4ea8: $49
    ld h, a                                       ; $4ea9: $67
    ld c, h                                       ; $4eaa: $4c
    ld c, c                                       ; $4eab: $49
    rst $30                                       ; $4eac: $f7
    ld l, d                                       ; $4ead: $6a
    ld e, [hl]                                    ; $4eae: $5e
    jp Jump_000_2871                              ; $4eaf: $c3 $71 $28


    db $ec                                        ; $4eb2: $ec
    ld e, h                                       ; $4eb3: $5c
    rrca                                          ; $4eb4: $0f
    ld [$f377], a                                 ; $4eb5: $ea $77 $f3
    ld c, b                                       ; $4eb8: $48
    ld [hl], a                                    ; $4eb9: $77
    rrca                                          ; $4eba: $0f
    ld a, a                                       ; $4ebb: $7f
    or c                                          ; $4ebc: $b1
    ret nc                                        ; $4ebd: $d0

    or $58                                        ; $4ebe: $f6 $58
    ld d, $9e                                     ; $4ec0: $16 $9e
    ret                                           ; $4ec2: $c9


    ld h, a                                       ; $4ec3: $67
    or [hl]                                       ; $4ec4: $b6
    xor h                                         ; $4ec5: $ac
    add [hl]                                      ; $4ec6: $86
    ret c                                         ; $4ec7: $d8

    add hl, sp                                    ; $4ec8: $39
    db $f4                                        ; $4ec9: $f4
    db $fd                                        ; $4eca: $fd
    ld [bc], a                                    ; $4ecb: $02
    ld l, l                                       ; $4ecc: $6d
    adc $55                                       ; $4ecd: $ce $55
    and l                                         ; $4ecf: $a5
    rst $30                                       ; $4ed0: $f7
    xor $c5                                       ; $4ed1: $ee $c5
    sub h                                         ; $4ed3: $94
    db $f4                                        ; $4ed4: $f4
    inc l                                         ; $4ed5: $2c
    xor e                                         ; $4ed6: $ab
    adc d                                         ; $4ed7: $8a
    xor [hl]                                      ; $4ed8: $ae
    ld [hl], a                                    ; $4ed9: $77
    ld e, $e7                                     ; $4eda: $1e $e7
    ld l, a                                       ; $4edc: $6f
    or l                                          ; $4edd: $b5
    inc a                                         ; $4ede: $3c
    add [hl]                                      ; $4edf: $86
    cp [hl]                                       ; $4ee0: $be
    adc b                                         ; $4ee1: $88
    xor $44                                       ; $4ee2: $ee $44
    xor a                                         ; $4ee4: $af
    cp $3e                                        ; $4ee5: $fe $3e
    jr jr_060_4f43                                ; $4ee7: $18 $5a

    call nz, Call_000_2153                        ; $4ee9: $c4 $53 $21
    inc de                                        ; $4eec: $13
    jr nc, jr_060_4f13                            ; $4eed: $30 $24

    ld l, l                                       ; $4eef: $6d
    adc a                                         ; $4ef0: $8f
    ld h, l                                       ; $4ef1: $65
    ld [hl], h                                    ; $4ef2: $74
    sub a                                         ; $4ef3: $97
    push bc                                       ; $4ef4: $c5
    add $81                                       ; $4ef5: $c6 $81
    ld d, d                                       ; $4ef7: $52
    and [hl]                                      ; $4ef8: $a6
    adc l                                         ; $4ef9: $8d
    adc h                                         ; $4efa: $8c
    ccf                                           ; $4efb: $3f
    ld c, $2d                                     ; $4efc: $0e $2d
    db $eb                                        ; $4efe: $eb
    ld d, b                                       ; $4eff: $50
    adc d                                         ; $4f00: $8a
    ld [hl], e                                    ; $4f01: $73
    ld d, l                                       ; $4f02: $55
    pop de                                        ; $4f03: $d1
    push af                                       ; $4f04: $f5
    adc $fb                                       ; $4f05: $ce $fb
    pop de                                        ; $4f07: $d1
    db $fd                                        ; $4f08: $fd
    ld [bc], a                                    ; $4f09: $02
    ld d, a                                       ; $4f0a: $57
    cp $ba                                        ; $4f0b: $fe $ba
    ld d, [hl]                                    ; $4f0d: $56
    ld [hl], e                                    ; $4f0e: $73
    ld h, h                                       ; $4f0f: $64
    inc c                                         ; $4f10: $0c
    ld [hl], l                                    ; $4f11: $75
    xor b                                         ; $4f12: $a8

Call_060_4f13:
jr_060_4f13:
    xor a                                         ; $4f13: $af
    xor d                                         ; $4f14: $aa
    rst $18                                       ; $4f15: $df
    rlca                                          ; $4f16: $07
    add d                                         ; $4f17: $82
    ld l, e                                       ; $4f18: $6b
    dec [hl]                                      ; $4f19: $35
    ld [hl], a                                    ; $4f1a: $77
    ld d, c                                       ; $4f1b: $51
    rlca                                          ; $4f1c: $07
    ld h, $06                                     ; $4f1d: $26 $06
    ld b, h                                       ; $4f1f: $44
    ld d, l                                       ; $4f20: $55
    sbc l                                         ; $4f21: $9d
    ld a, [bc]                                    ; $4f22: $0a
    jp nz, $cf21                                  ; $4f23: $c2 $21 $cf

    ld e, $3a                                     ; $4f26: $1e $3a
    rst $20                                       ; $4f28: $e7
    sbc h                                         ; $4f29: $9c
    ld h, l                                       ; $4f2a: $65
    pop de                                        ; $4f2b: $d1
    rst $28                                       ; $4f2c: $ef
    ret c                                         ; $4f2d: $d8

    db $fd                                        ; $4f2e: $fd
    inc l                                         ; $4f2f: $2c
    jp z, $4e3f                                   ; $4f30: $ca $3f $4e

    inc hl                                        ; $4f33: $23
    db $dd                                        ; $4f34: $dd
    xor e                                         ; $4f35: $ab
    cp a                                          ; $4f36: $bf
    xor a                                         ; $4f37: $af
    ld b, e                                       ; $4f38: $43
    pop af                                        ; $4f39: $f1
    ld h, d                                       ; $4f3a: $62
    db $e3                                        ; $4f3b: $e3
    ret z                                         ; $4f3c: $c8

    cpl                                           ; $4f3d: $2f
    ld [hl], l                                    ; $4f3e: $75
    ld c, b                                       ; $4f3f: $48
    call Call_000_05fb                            ; $4f40: $cd $fb $05

jr_060_4f43:
    rla                                           ; $4f43: $17
    jp z, $347e                                   ; $4f44: $ca $7e $34

    add h                                         ; $4f47: $84
    ld e, d                                       ; $4f48: $5a
    cp l                                          ; $4f49: $bd
    sub d                                         ; $4f4a: $92
    db $10                                        ; $4f4b: $10
    ld d, l                                       ; $4f4c: $55
    cp $ac                                        ; $4f4d: $fe $ac
    dec sp                                        ; $4f4f: $3b
    ld d, a                                       ; $4f50: $57
    sub l                                         ; $4f51: $95
    sbc $bb                                       ; $4f52: $de $bb
    rst $10                                       ; $4f54: $d7
    ld l, d                                       ; $4f55: $6a
    adc $32                                       ; $4f56: $ce $32
    rst $30                                       ; $4f58: $f7
    xor $dc                                       ; $4f59: $ee $dc
    rla                                           ; $4f5b: $17
    or h                                          ; $4f5c: $b4
    db $ec                                        ; $4f5d: $ec
    ld l, c                                       ; $4f5e: $69
    and d                                         ; $4f5f: $a2
    rla                                           ; $4f60: $17
    ld d, c                                       ; $4f61: $51
    db $d3                                        ; $4f62: $d3
    adc e                                         ; $4f63: $8b
    ld bc, $1e9d                                  ; $4f64: $01 $9d $1e
    ld b, e                                       ; $4f67: $43
    sbc a                                         ; $4f68: $9f
    ld h, l                                       ; $4f69: $65

jr_060_4f6a:
    ld e, a                                       ; $4f6a: $5f
    ret nc                                        ; $4f6b: $d0

    ld [hl-], a                                   ; $4f6c: $32
    dec d                                         ; $4f6d: $15
    ld [hl-], a                                   ; $4f6e: $32
    ld bc, $de43                                  ; $4f6f: $01 $43 $de
    cpl                                           ; $4f72: $2f
    rla                                           ; $4f73: $17
    jp z, $b47e                                   ; $4f74: $ca $7e $b4

    sub d                                         ; $4f77: $92
    db $10                                        ; $4f78: $10
    ld b, l                                       ; $4f79: $45
    ld c, [hl]                                    ; $4f7a: $4e
    pop af                                        ; $4f7b: $f1
    call nc, Call_000_3597                        ; $4f7c: $d4 $97 $35
    jr z, jr_060_4f6a                             ; $4f7f: $28 $e9

    ld hl, $3194                                  ; $4f81: $21 $94 $31
    db $f4                                        ; $4f84: $f4
    ld e, c                                       ; $4f85: $59
    or $05                                        ; $4f86: $f6 $05
    dec l                                         ; $4f88: $2d
    inc sp                                        ; $4f89: $33
    rst $38                                       ; $4f8a: $ff
    ld [c], a                                     ; $4f8b: $e2
    db $dd                                        ; $4f8c: $dd
    rst $30                                       ; $4f8d: $f7
    dec a                                         ; $4f8e: $3d
    jp nc, $a79d                                  ; $4f8f: $d2 $9d $a7

    and e                                         ; $4f92: $a3
    ld h, l                                       ; $4f93: $65
    sbc a                                         ; $4f94: $9f
    rst $10                                       ; $4f95: $d7
    ld [hl], b                                    ; $4f96: $70
    ld c, h                                       ; $4f97: $4c
    add hl, hl                                    ; $4f98: $29
    ld e, [hl]                                    ; $4f99: $5e
    add l                                         ; $4f9a: $85
    ld [hl], d                                    ; $4f9b: $72
    cp a                                          ; $4f9c: $bf
    rlca                                          ; $4f9d: $07
    ld e, h                                       ; $4f9e: $5c
    ld b, [hl]                                    ; $4f9f: $46
    cp $dc                                        ; $4fa0: $fe $dc
    rst $28                                       ; $4fa2: $ef
    sbc b                                         ; $4fa3: $98
    ld d, b                                       ; $4fa4: $50
    ld d, [hl]                                    ; $4fa5: $56
    call Call_060_5093                            ; $4fa6: $cd $93 $50
    inc l                                         ; $4fa9: $2c
    db $e3                                        ; $4faa: $e3
    and h                                         ; $4fab: $a4
    and b                                         ; $4fac: $a0
    rlca                                          ; $4fad: $07
    add d                                         ; $4fae: $82
    dec hl                                        ; $4faf: $2b
    ld d, $f1                                     ; $4fb0: $16 $f1
    inc sp                                        ; $4fb2: $33
    or h                                          ; $4fb3: $b4
    db $ec                                        ; $4fb4: $ec
    ld b, a                                       ; $4fb5: $47
    cp l                                          ; $4fb6: $bd
    ld e, c                                       ; $4fb7: $59
    reti                                          ; $4fb8: $d9


    ld b, e                                       ; $4fb9: $43
    ld l, d                                       ; $4fba: $6a
    ld l, $36                                     ; $4fbb: $2e $36
    xor [hl]                                      ; $4fbd: $ae
    ld b, l                                       ; $4fbe: $45
    db $ed                                        ; $4fbf: $ed
    sub [hl]                                      ; $4fc0: $96
    ei                                            ; $4fc1: $fb
    dec b                                         ; $4fc2: $05
    rla                                           ; $4fc3: $17
    scf                                           ; $4fc4: $37
    rlca                                          ; $4fc5: $07
    ld c, d                                       ; $4fc6: $4a
    ld a, c                                       ; $4fc7: $79
    jr nz, jr_060_5002                            ; $4fc8: $20 $38

    add [hl]                                      ; $4fca: $86
    ld a, $cb                                     ; $4fcb: $3e $cb
    ld d, h                                       ; $4fcd: $54
    rst $38                                       ; $4fce: $ff
    or l                                          ; $4fcf: $b5
    sbc d                                         ; $4fd0: $9a
    ld [hl], $74                                  ; $4fd1: $36 $74
    adc $b9                                       ; $4fd3: $ce $b9
    rlca                                          ; $4fd5: $07
    sub b                                         ; $4fd6: $90
    rlca                                          ; $4fd7: $07
    or e                                          ; $4fd8: $b3
    adc h                                         ; $4fd9: $8c
    pop hl                                        ; $4fda: $e1
    pop af                                        ; $4fdb: $f1
    cp l                                          ; $4fdc: $bd
    ld [hl], $2f                                  ; $4fdd: $36 $2f
    ld [$ecae], a                                 ; $4fdf: $ea $ae $ec
    ld [hl], l                                    ; $4fe2: $75
    ld c, d                                       ; $4fe3: $4a
    ld a, [hl-]                                   ; $4fe4: $3a
    cp l                                          ; $4fe5: $bd
    jr z, jr_060_5027                             ; $4fe6: $28 $3f

    daa                                           ; $4fe8: $27
    ld b, l                                       ; $4fe9: $45
    add hl, hl                                    ; $4fea: $29
    rst $20                                       ; $4feb: $e7
    ld d, h                                       ; $4fec: $54
    add sp, -$23                                  ; $4fed: $e8 $dd
    dec b                                         ; $4fef: $05
    call c, $200a                                 ; $4ff0: $dc $0a $20
    ld c, h                                       ; $4ff3: $4c
    dec de                                        ; $4ff4: $1b
    add hl, de                                    ; $4ff5: $19
    ld b, e                                       ; $4ff6: $43
    db $dd                                        ; $4ff7: $dd
    di                                            ; $4ff8: $f3
    ld h, l                                       ; $4ff9: $65
    ccf                                           ; $4ffa: $3f
    ld l, d                                       ; $4ffb: $6a
    and h                                         ; $4ffc: $a4
    ld b, $9d                                     ; $4ffd: $06 $9d
    ld b, e                                       ; $4fff: $43
    ccf                                           ; $5000: $3f
    add e                                         ; $5001: $83

jr_060_5002:
    jp hl                                         ; $5002: $e9


    add d                                         ; $5003: $82
    adc $18                                       ; $5004: $ce $18
    xor d                                         ; $5006: $aa
    add b                                         ; $5007: $80
    inc d                                         ; $5008: $14
    set 7, l                                      ; $5009: $cb $fd
    ld [bc], a                                    ; $500b: $02
    rla                                           ; $500c: $17
    jp z, Jump_000_3d48                           ; $500d: $ca $48 $3d

    add hl, de                                    ; $5010: $19
    jp z, $d362                                   ; $5011: $ca $62 $d3

    daa                                           ; $5014: $27
    add $31                                       ; $5015: $c6 $31
    db $f4                                        ; $5017: $f4
    ld a, l                                       ; $5018: $7d
    ld b, c                                       ; $5019: $41
    set 5, d                                      ; $501a: $cb $ea
    rst $28                                       ; $501c: $ef
    ld [hl], e                                    ; $501d: $73
    ld l, $86                                     ; $501e: $2e $86
    ccf                                           ; $5020: $3f
    or h                                          ; $5021: $b4
    xor h                                         ; $5022: $ac
    ld a, [hl+]                                   ; $5023: $2a
    cp d                                          ; $5024: $ba
    sbc $d9                                       ; $5025: $de $d9

jr_060_5027:
    xor e                                         ; $5027: $ab
    ld [$5e2b], a                                 ; $5028: $ea $2b $5e
    inc d                                         ; $502b: $14
    ld [hl], d                                    ; $502c: $72
    ld d, $b4                                     ; $502d: $16 $b4
    db $ec                                        ; $502f: $ec
    ld b, a                                       ; $5030: $47
    dec hl                                        ; $5031: $2b
    ld e, a                                       ; $5032: $5f
    adc d                                         ; $5033: $8a
    push hl                                       ; $5034: $e5
    ld a, [hl]                                    ; $5035: $7e
    ld bc, $51d7                                  ; $5036: $01 $d7 $51
    ld [hl], d                                    ; $5039: $72
    ld d, c                                       ; $503a: $51
    ret z                                         ; $503b: $c8

    ld a, [bc]                                    ; $503c: $0a
    add l                                         ; $503d: $85
    and c                                         ; $503e: $a1
    inc c                                         ; $503f: $0c
    add [hl]                                      ; $5040: $86
    sub [hl]                                      ; $5041: $96
    ld c, c                                       ; $5042: $49
    ld c, b                                       ; $5043: $48
    ld c, h                                       ; $5044: $4c
    rst $08                                       ; $5045: $cf
    add d                                         ; $5046: $82
    sbc $8f                                       ; $5047: $de $8f
    add [hl]                                      ; $5049: $86
    ld d, $f1                                     ; $504a: $16 $f1
    jp z, Jump_060_7297                           ; $504c: $ca $97 $72

    xor a                                         ; $504f: $af
    ld c, l                                       ; $5050: $4d
    sbc a                                         ; $5051: $9f
    ld a, [$0b32]                                 ; $5052: $fa $32 $0b
    ld a, d                                       ; $5055: $7a
    xor l                                         ; $5056: $ad
    and $2c                                       ; $5057: $e6 $2c
    ei                                            ; $5059: $fb
    add d                                         ; $505a: $82
    sub [hl]                                      ; $505b: $96
    sbc c                                         ; $505c: $99
    ld a, a                                       ; $505d: $7f
    ld sp, $646d                                  ; $505e: $31 $6d $64
    inc c                                         ; $5061: $0c
    ld [hl], l                                    ; $5062: $75
    xor b                                         ; $5063: $a8
    rrca                                          ; $5064: $0f
    sub h                                         ; $5065: $94
    ld a, [c]                                     ; $5066: $f2
    ld e, d                                       ; $5067: $5a
    cp a                                          ; $5068: $bf
    ld d, [hl]                                    ; $5069: $56
    rst $20                                       ; $506a: $e7
    ld e, d                                       ; $506b: $5a
    call Call_060_7191                            ; $506c: $cd $91 $71
    ret z                                         ; $506f: $c8

    and c                                         ; $5070: $a1
    ld a, $4e                                     ; $5071: $3e $4e
    ld a, [bc]                                    ; $5073: $0a
    ld a, [hl-]                                   ; $5074: $3a
    rst $28                                       ; $5075: $ef
    rla                                           ; $5076: $17
    rst $10                                       ; $5077: $d7
    ld d, c                                       ; $5078: $51
    ld [hl], d                                    ; $5079: $72
    xor l                                         ; $507a: $ad
    and $74                                       ; $507b: $e6 $74
    ld d, h                                       ; $507d: $54
    ld d, b                                       ; $507e: $50
    and $88                                       ; $507f: $e6 $88
    sbc l                                         ; $5081: $9d
    dec hl                                        ; $5082: $2b
    ld a, [hl]                                    ; $5083: $7e
    ld e, $57                                     ; $5084: $1e $57
    ld [hl], $3a                                  ; $5086: $36 $3a
    rst $10                                       ; $5088: $d7
    ld l, d                                       ; $5089: $6a
    xor [hl]                                      ; $508a: $ae
    xor d                                         ; $508b: $aa
    ret nc                                        ; $508c: $d0

    dec l                                         ; $508d: $2d
    rst $30                                       ; $508e: $f7
    ld l, $ec                                     ; $508f: $2e $ec
    adc [hl]                                      ; $5091: $8e
    sbc l                                         ; $5092: $9d

Call_060_5093:
    ld [c], a                                     ; $5093: $e2
    sub c                                         ; $5094: $91
    ccf                                           ; $5095: $3f
    ld d, a                                       ; $5096: $57

Call_060_5097:
    db $fc                                        ; $5097: $fc
    ldh a, [rNR23]                                ; $5098: $f0 $18
    and h                                         ; $509a: $a4
    inc l                                         ; $509b: $2c
    sub h                                         ; $509c: $94
    push de                                       ; $509d: $d5
    ld e, a                                       ; $509e: $5f
    sbc h                                         ; $509f: $9c
    ei                                            ; $50a0: $fb
    cp l                                          ; $50a1: $bd
    ld a, e                                       ; $50a2: $7b
    adc a                                         ; $50a3: $8f
    sbc $a1                                       ; $50a4: $de $a1
    ld a, b                                       ; $50a6: $78
    sub l                                         ; $50a7: $95
    adc l                                         ; $50a8: $8d
    ld c, [hl]                                    ; $50a9: $4e

Jump_060_50aa:
    jp c, Jump_060_736a                           ; $50aa: $da $6a $73

    sbc l                                         ; $50ad: $9d
    ld [hl+], a                                   ; $50ae: $22
    push bc                                       ; $50af: $c5
    ld l, e                                       ; $50b0: $6b
    rrca                                          ; $50b1: $0f
    add l                                         ; $50b2: $85
    ret c                                         ; $50b3: $d8

    ld c, a                                       ; $50b4: $4f
    xor [hl]                                      ; $50b5: $ae
    inc hl                                        ; $50b6: $23
    ld a, a                                       ; $50b7: $7f
    adc $aa                                       ; $50b8: $ce $aa
    ld b, d                                       ; $50ba: $42
    ld h, l                                       ; $50bb: $65
    and a                                         ; $50bc: $a7
    ld sp, hl                                     ; $50bd: $f9
    ld a, [hl]                                    ; $50be: $7e

Jump_060_50bf:
    ld bc, $7f17                                  ; $50bf: $01 $17 $7f
    ld e, h                                       ; $50c2: $5c
    inc c                                         ; $50c3: $0c
    add sp, -$6f                                  ; $50c4: $e8 $91
    pop af                                        ; $50c6: $f1
    rst $00                                       ; $50c7: $c7
    and c                                         ; $50c8: $a1
    ld [hl], e                                    ; $50c9: $73
    adc $c1                                       ; $50ca: $ce $c1
    ret nc                                        ; $50cc: $d0

    ld [hl-], a                                   ; $50cd: $32
    dec d                                         ; $50ce: $15
    ld [hl-], a                                   ; $50cf: $32
    ld bc, $d243                                  ; $50d0: $01 $43 $d2
    ld d, [hl]                                    ; $50d3: $56
    jp Jump_000_36b3                              ; $50d4: $c3 $b3 $36


    db $fd                                        ; $50d7: $fd
    ld l, c                                       ; $50d8: $69
    ld [hl], h                                    ; $50d9: $74
    ld h, e                                       ; $50da: $63
    ld c, b                                       ; $50db: $48
    cpl                                           ; $50dc: $2f
    ld a, [bc]                                    ; $50dd: $0a
    reti                                          ; $50de: $d9


    and b                                         ; $50df: $a0
    ld [c], a                                     ; $50e0: $e2
    ld b, d                                       ; $50e1: $42
    db $dd                                        ; $50e2: $dd
    rst $20                                       ; $50e3: $e7
    dec [hl]                                      ; $50e4: $35
    call z, Call_060_4149                         ; $50e5: $cc $49 $41
    sbc a                                         ; $50e8: $9f
    di                                            ; $50e9: $f3
    ld [bc], a                                    ; $50ea: $02

Call_060_50eb:
    ld d, a                                       ; $50eb: $57
    jp hl                                         ; $50ec: $e9


    sub b                                         ; $50ed: $90
    jp hl                                         ; $50ee: $e9


    sbc $e7                                       ; $50ef: $de $e7
    ld e, h                                       ; $50f1: $5c
    db $e3                                        ; $50f2: $e3
    ld c, e                                       ; $50f3: $4b
    pop af                                        ; $50f4: $f1
    and d                                         ; $50f5: $a2
    sub b                                         ; $50f6: $90
    ei                                            ; $50f7: $fb
    sbc l                                         ; $50f8: $9d
    ld b, c                                       ; $50f9: $41
    jp z, $83bd                                   ; $50fa: $ca $bd $83

    sub [hl]                                      ; $50fd: $96
    pop de                                        ; $50fe: $d1
    ld e, l                                       ; $50ff: $5d
    ld d, $ff                                     ; $5100: $16 $ff
    sbc h                                         ; $5102: $9c
    and l                                         ; $5103: $a5
    ld a, h                                       ; $5104: $7c
    add hl, hl                                    ; $5105: $29
    inc bc                                        ; $5106: $03
    ld b, c                                       ; $5107: $41
    xor a                                         ; $5108: $af
    push de                                       ; $5109: $d5
    inc e                                         ; $510a: $1c
    ld sp, hl                                     ; $510b: $f9
    and l                                         ; $510c: $a5
    ld c, [hl]                                    ; $510d: $4e
    dec b                                         ; $510e: $05
    pop hl                                        ; $510f: $e1
    sub b                                         ; $5110: $90
    dec bc                                        ; $5111: $0b
    ld h, l                                       ; $5112: $65
    ld l, b                                       ; $5113: $68
    ld e, [hl]                                    ; $5114: $5e
    ld d, l                                       ; $5115: $55
    ld c, c                                       ; $5116: $49
    ld a, c                                       ; $5117: $79
    ret c                                         ; $5118: $d8

    ld a, e                                       ; $5119: $7b
    and b                                         ; $511a: $a0
    call c, $ed2f                                 ; $511b: $dc $2f $ed
    ccf                                           ; $511e: $3f
    add a                                         ; $511f: $87
    ld a, [$1424]                                 ; $5120: $fa $24 $14
    ld c, e                                       ; $5123: $4b
    dec b                                         ; $5124: $05
    ld b, c                                       ; $5125: $41
    cpl                                           ; $5126: $2f
    and [hl]                                      ; $5127: $a6
    and h                                         ; $5128: $a4
    ld a, c                                       ; $5129: $79
    or b                                          ; $512a: $b0
    ld l, e                                       ; $512b: $6b
    ld [hl-], a                                   ; $512c: $32
    ld b, h                                       ; $512d: $44
    sub h                                         ; $512e: $94
    ld e, $d4                                     ; $512f: $1e $d4
    rst $28                                       ; $5131: $ef
    and $73                                       ; $5132: $e6 $73
    halt                                          ; $5134: $76
    ldh a, [$cb]                                  ; $5135: $f0 $cb
    sbc h                                         ; $5137: $9c
    ld l, e                                       ; $5138: $6b
    db $fd                                        ; $5139: $fd
    db $fc                                        ; $513a: $fc
    inc a                                         ; $513b: $3c
    add [hl]                                      ; $513c: $86
    cp [hl]                                       ; $513d: $be
    rst $08                                       ; $513e: $cf
    xor e                                         ; $513f: $ab
    ld sp, $8b25                                  ; $5140: $31 $25 $8b
    rst $10                                       ; $5143: $d7
    ld l, d                                       ; $5144: $6a
    jp nc, Jump_060_79f6                          ; $5145: $d2 $f6 $79

    xor c                                         ; $5148: $a9
    ld d, a                                       ; $5149: $57
    ld d, $90                                     ; $514a: $16 $90
    ld [c], a                                     ; $514c: $e2
    inc d                                         ; $514d: $14
    xor a                                         ; $514e: $af
    pop hl                                        ; $514f: $e1
    sbc b                                         ; $5150: $98
    ld d, d                                       ; $5151: $52
    sbc h                                         ; $5152: $9c
    xor e                                         ; $5153: $ab
    ld d, b                                       ; $5154: $50
    ld l, b                                       ; $5155: $68
    sub e                                         ; $5156: $93
    ld h, [hl]                                    ; $5157: $66
    xor $f9                                       ; $5158: $ee $f9
    ld [hl-], a                                   ; $515a: $32

jr_060_515b:
    ld d, b                                       ; $515b: $50
    jp z, $5053                                   ; $515c: $ca $53 $50

    adc d                                         ; $515f: $8a
    di                                            ; $5160: $f3
    ld a, [hl]                                    ; $5161: $7e
    ld bc, $ce6d                                  ; $5162: $01 $6d $ce
    add hl, sp                                    ; $5165: $39
    ld h, a                                       ; $5166: $67
    ld e, c                                       ; $5167: $59
    or c                                          ; $5168: $b1
    call nz, $8fa6                                ; $5169: $c4 $a6 $8f
    and c                                         ; $516c: $a1
    xor a                                         ; $516d: $af
    ld l, d                                       ; $516e: $6a
    ld h, d                                       ; $516f: $62
    dec bc                                        ; $5170: $0b
    ld a, d                                       ; $5171: $7a
    and $5f                                       ; $5172: $e6 $5f
    cp h                                          ; $5174: $bc
    jr z, jr_060_515b                             ; $5175: $28 $e4

    inc l                                         ; $5177: $2c
    ld l, b                                       ; $5178: $68
    reti                                          ; $5179: $d9


    adc a                                         ; $517a: $8f
    add [hl]                                      ; $517b: $86
    ld d, $f1                                     ; $517c: $16 $f1
    jp z, Jump_060_7297                           ; $517e: $ca $97 $72

    cp a                                          ; $5181: $bf
    ld l, l                                       ; $5182: $6d
    sub [hl]                                      ; $5183: $96
    sub c                                         ; $5184: $91
    ld a, d                                       ; $5185: $7a
    ld [hl-], a                                   ; $5186: $32
    sub h                                         ; $5187: $94
    jp z, Jump_060_6c5e                           ; $5188: $ca $5e $6c

    ld a, [$fa18]                                 ; $518b: $fa $18 $fa
    ld l, $4e                                     ; $518e: $2e $4e
    ld c, l                                       ; $5190: $4d
    inc d                                         ; $5191: $14
    add c                                         ; $5192: $81
    ld h, b                                       ; $5193: $60
    ret z                                         ; $5194: $c8

    sub c                                         ; $5195: $91
    adc $28                                       ; $5196: $ce $28
    rst $38                                       ; $5198: $ff
    sbc h                                         ; $5199: $9c
    dec hl                                        ; $519a: $2b
    ld d, $f1                                     ; $519b: $16 $f1
    inc sp                                        ; $519d: $33
    or h                                          ; $519e: $b4
    db $ec                                        ; $519f: $ec
    ld sp, hl                                     ; $51a0: $f9
    dec b                                         ; $51a1: $05
    xor d                                         ; $51a2: $aa
    ld a, [c]                                     ; $51a3: $f2
    sub b                                         ; $51a4: $90
    sbc d                                         ; $51a5: $9a
    adc e                                         ; $51a6: $8b
    ld b, d                                       ; $51a7: $42
    adc $82                                       ; $51a8: $ce $82
    sub [hl]                                      ; $51aa: $96
    db $fd                                        ; $51ab: $fd
    ld l, b                                       ; $51ac: $68
    push hl                                       ; $51ad: $e5
    ld c, e                                       ; $51ae: $4b
    or c                                          ; $51af: $b1
    call c, Call_000_072f                         ; $51b0: $dc $2f $07
    ld e, h                                       ; $51b3: $5c
    ld b, [hl]                                    ; $51b4: $46
    cp $1c                                        ; $51b5: $fe $1c
    ld c, c                                       ; $51b7: $49
    ld c, l                                       ; $51b8: $4d
    sbc $e7                                       ; $51b9: $de $e7
    and c                                         ; $51bb: $a1
    ld [hl], e                                    ; $51bc: $73
    ld de, $ba08                                  ; $51bd: $11 $08 $ba
    adc $b2                                       ; $51c0: $ce $b2
    ld h, d                                       ; $51c2: $62
    adc c                                         ; $51c3: $89
    ld c, l                                       ; $51c4: $4d
    rra                                           ; $51c5: $1f
    ld b, e                                       ; $51c6: $43
    ld e, a                                       ; $51c7: $5f
    and l                                         ; $51c8: $a5
    sbc e                                         ; $51c9: $9b
    reti                                          ; $51ca: $d9


    xor e                                         ; $51cb: $ab
    cp a                                          ; $51cc: $bf
    rrca                                          ; $51cd: $0f
    add [hl]                                      ; $51ce: $86
    ld d, $f1                                     ; $51cf: $16 $f1
    jp z, Jump_060_5297                           ; $51d1: $ca $97 $52

    ld b, a                                       ; $51d4: $47
    xor l                                         ; $51d5: $ad
    call c, Call_060_78a1                         ; $51d6: $dc $a1 $78
    ld d, $f4                                     ; $51d9: $16 $f4
    db $fd                                        ; $51db: $fd
    ld [bc], a                                    ; $51dc: $02
    add a                                         ; $51dd: $87
    ld e, d                                       ; $51de: $5a
    and [hl]                                      ; $51df: $a6
    ld [hl], a                                    ; $51e0: $77
    di                                            ; $51e1: $f3
    ld h, d                                       ; $51e2: $62
    db $e3                                        ; $51e3: $e3
    sub b                                         ; $51e4: $90
    sbc d                                         ; $51e5: $9a
    sub [hl]                                      ; $51e6: $96
    add c                                         ; $51e7: $81
    ldh [rNR23], a                                ; $51e8: $e0 $18
    ld a, [$50c8]                                 ; $51ea: $fa $c8 $50
    ld e, e                                       ; $51ed: $5b
    ret nz                                        ; $51ee: $c0

    cp a                                          ; $51ef: $bf
    rst $10                                       ; $51f0: $d7
    xor b                                         ; $51f1: $a8
    ld d, e                                       ; $51f2: $53
    jp hl                                         ; $51f3: $e9


    sub [hl]                                      ; $51f4: $96
    ld d, l                                       ; $51f5: $55
    and l                                         ; $51f6: $a5
    rst $30                                       ; $51f7: $f7
    xor $45                                       ; $51f8: $ee $45
    call nc, $ccf4                                ; $51fa: $d4 $f4 $cc
    ld [hl], e                                    ; $51fd: $73
    rst $28                                       ; $51fe: $ef
    adc $7d                                       ; $51ff: $ce $7d
    ld b, c                                       ; $5201: $41
    di                                            ; $5202: $f3
    ld a, [hl+]                                   ; $5203: $2a
    dec de                                        ; $5204: $1b
    ld b, a                                       ; $5205: $47
    ld e, d                                       ; $5206: $5a
    xor $17                                       ; $5207: $ee $17
    rlca                                          ; $5209: $07
    ld b, c                                       ; $520a: $41
    ld d, $fd                                     ; $520b: $16 $fd
    ld e, h                                       ; $520d: $5c
    inc d                                         ; $520e: $14
    sub d                                         ; $520f: $92
    ld a, a                                       ; $5210: $7f
    ld h, a                                       ; $5211: $67
    rst $28                                       ; $5212: $ef
    add c                                         ; $5213: $81
    or d                                          ; $5214: $b2
    rst $08                                       ; $5215: $cf
    ld b, e                                       ; $5216: $43
    rst $20                                       ; $5217: $e7
    ld e, d                                       ; $5218: $5a
    db $dd                                        ; $5219: $dd
    ld [hl], h                                    ; $521a: $74
    rst $20                                       ; $521b: $e7
    ld a, $2f                                     ; $521c: $3e $2f
    and [hl]                                      ; $521e: $a6
    and h                                         ; $521f: $a4
    ld h, a                                       ; $5220: $67
    add hl, de                                    ; $5221: $19
    jp hl                                         ; $5222: $e9


    rst $20                                       ; $5223: $e7
    ld [hl], c                                    ; $5224: $71
    add a                                         ; $5225: $87
    or d                                          ; $5226: $b2
    sub $af                                       ; $5227: $d6 $af
    push af                                       ; $5229: $f5
    rla                                           ; $522a: $17
    xor a                                         ; $522b: $af
    pop af                                        ; $522c: $f1
    bit 5, d                                      ; $522d: $cb $6a
    set 6, h                                      ; $522f: $cb $f4
    ld l, [hl]                                    ; $5231: $6e
    ld e, $8c                                     ; $5232: $1e $8c
    and h                                         ; $5234: $a4
    ld d, e                                       ; $5235: $53
    ld d, e                                       ; $5236: $53
    call z, $d1fb                                 ; $5237: $cc $fb $d1
    ret nc                                        ; $523a: $d0

    ld [hl+], a                                   ; $523b: $22
    ld e, [hl]                                    ; $523c: $5e
    ld sp, hl                                     ; $523d: $f9
    ld d, d                                       ; $523e: $52

Jump_060_523f:
    xor $17                                       ; $523f: $ee $17
    rst $20                                       ; $5241: $e7
    add e                                         ; $5242: $83
    ld c, b                                       ; $5243: $48
    sbc l                                         ; $5244: $9d
    ld l, $e8                                     ; $5245: $2e $e8
    adc h                                         ; $5247: $8c
    and c                                         ; $5248: $a1
    ld a, [hl-]                                   ; $5249: $3a
    rlca                                          ; $524a: $07
    dec sp                                        ; $524b: $3b
    ld hl, sp+$0b                                 ; $524c: $f8 $0b
    ld e, b                                       ; $524e: $58
    ld [$a1da], a                                 ; $524f: $ea $da $a1
    ld [hl], d                                    ; $5252: $72
    ld c, b                                       ; $5253: $48
    ldh a, [$5a]                                  ; $5254: $f0 $5a
    call Call_060_45a1                            ; $5256: $cd $a1 $45
    inc a                                         ; $5259: $3c
    di                                            ; $525a: $f3
    cpl                                           ; $525b: $2f
    sbc $7d                                       ; $525c: $de $7d
    rst $18                                       ; $525e: $df
    inc hl                                        ; $525f: $23
    ld h, e                                       ; $5260: $63
    xor b                                         ; $5261: $a8
    ld a, e                                       ; $5262: $7b
    cp [hl]                                       ; $5263: $be
    call z, Call_000_3bbd                         ; $5264: $cc $bd $3b
    db $eb                                        ; $5267: $eb
    call nc, $a997                                ; $5268: $d4 $97 $a9
    rst $18                                       ; $526b: $df
    pop de                                        ; $526c: $d1
    ld b, e                                       ; $526d: $43
    di                                            ; $526e: $f3
    and d                                         ; $526f: $a2
    sub b                                         ; $5270: $90
    ei                                            ; $5271: $fb
    inc a                                         ; $5272: $3c
    ld e, l                                       ; $5273: $5d
    ret nc                                        ; $5274: $d0

    add hl, de                                    ; $5275: $19
    ld b, e                                       ; $5276: $43
    push af                                       ; $5277: $f5
    db $fd                                        ; $5278: $fd
    ld [bc], a                                    ; $5279: $02
    rlca                                          ; $527a: $07
    ld e, h                                       ; $527b: $5c
    add $19                                       ; $527c: $c6 $19
    ld [hl], d                                    ; $527e: $72
    sbc a                                         ; $527f: $9f
    ld [hl], a                                    ; $5280: $77
    ld a, $88                                     ; $5281: $3e $88
    call nc, $bab5                                ; $5283: $d4 $b5 $ba
    jp hl                                         ; $5286: $e9


    ld b, [hl]                                    ; $5287: $46
    rst $28                                       ; $5288: $ef
    di                                            ; $5289: $f3
    ret z                                         ; $528a: $c8

    rra                                           ; $528b: $1f
    ld a, e                                       ; $528c: $7b
    and $a9                                       ; $528d: $e6 $a9
    jr nz, jr_060_52ad                            ; $528f: $20 $1c

    ld [hl], d                                    ; $5291: $72
    xor l                                         ; $5292: $ad
    and $d0                                       ; $5293: $e6 $d0
    ld [hl+], a                                   ; $5295: $22
    sbc [hl]                                      ; $5296: $9e

Jump_060_5297:
    ld sp, hl                                     ; $5297: $f9
    rla                                           ; $5298: $17
    cpl                                           ; $5299: $2f
    and d                                         ; $529a: $a2
    and $c8                                       ; $529b: $e6 $c8

Jump_060_529d:
    cpl                                           ; $529d: $2f
    ld b, e                                       ; $529e: $43
    ld a, [hl+]                                   ; $529f: $2a
    ld a, d                                       ; $52a0: $7a

jr_060_52a1:
    and c                                         ; $52a1: $a1
    xor h                                         ; $52a2: $ac
    pop hl                                        ; $52a3: $e1
    and d                                         ; $52a4: $a2
    ld de, $ef64                                  ; $52a5: $11 $64 $ef
    di                                            ; $52a8: $f3
    jr jr_060_5325                                ; $52a9: $18 $7a

    inc hl                                        ; $52ab: $23
    ld b, c                                       ; $52ac: $41

jr_060_52ad:
    adc d                                         ; $52ad: $8a
    ld d, a                                       ; $52ae: $57
    ld b, c                                       ; $52af: $41
    ld d, $25                                     ; $52b0: $16 $25
    jr nc, @-$1e                                  ; $52b2: $30 $e0

    ld e, d                                       ; $52b4: $5a
    call $4a75                                    ; $52b5: $cd $75 $4a
    ld a, [hl-]                                   ; $52b8: $3a
    ld h, e                                       ; $52b9: $63
    ld c, d                                       ; $52ba: $4a
    cp d                                          ; $52bb: $ba
    ld d, a                                       ; $52bc: $57
    di                                            ; $52bd: $f3
    db $fd                                        ; $52be: $fd
    ld [bc], a                                    ; $52bf: $02
    db $ed                                        ; $52c0: $ed
    and c                                         ; $52c1: $a1
    or [hl]                                       ; $52c2: $b6
    add b                                         ; $52c3: $80
    ld a, a                                       ; $52c4: $7f
    xor a                                         ; $52c5: $af
    ld d, c                                       ; $52c6: $51
    and a                                         ; $52c7: $a7
    jp nc, $eb2d                                  ; $52c8: $d2 $2d $eb

    ld d, b                                       ; $52cb: $50
    adc d                                         ; $52cc: $8a
    ld [hl], e                                    ; $52cd: $73
    xor l                                         ; $52ce: $ad
    and $d0                                       ; $52cf: $e6 $d0
    ld [hl+], a                                   ; $52d1: $22
    sbc [hl]                                      ; $52d2: $9e
    ld sp, hl                                     ; $52d3: $f9
    rla                                           ; $52d4: $17
    rst $18                                       ; $52d5: $df
    dec sp                                        ; $52d6: $3b
    ldh [$32], a                                  ; $52d7: $e0 $32
    and [hl]                                      ; $52d9: $a6
    and $62                                       ; $52da: $e6 $62
    ld a, [bc]                                    ; $52dc: $0a
    and d                                         ; $52dd: $a2
    rst $10                                       ; $52de: $d7
    ld l, d                                       ; $52df: $6a
    xor $f3                                       ; $52e0: $ee $f3
    xor d                                         ; $52e2: $aa
    and [hl]                                      ; $52e3: $a6
    cp b                                          ; $52e4: $b8
    push de                                       ; $52e5: $d5
    ld c, l                                       ; $52e6: $4d
    ld [hl], a                                    ; $52e7: $77
    ld d, [hl]                                    ; $52e8: $56
    ld h, l                                       ; $52e9: $65
    and c                                         ; $52ea: $a1
    db $ed                                        ; $52eb: $ed
    ld sp, hl                                     ; $52ec: $f9
    ld hl, sp-$61                                 ; $52ed: $f8 $9f
    ld e, l                                       ; $52ef: $5d
    add hl, de                                    ; $52f0: $19
    sbc [hl]                                      ; $52f1: $9e
    jr z, jr_060_52a1                             ; $52f2: $28 $ad

    and c                                         ; $52f4: $a1
    dec l                                         ; $52f5: $2d
    or h                                          ; $52f6: $b4
    ld a, [de]                                    ; $52f7: $1a
    adc [hl]                                      ; $52f8: $8e
    ld a, a                                       ; $52f9: $7f
    ld a, [hl-]                                   ; $52fa: $3a
    ld h, a                                       ; $52fb: $67
    reti                                          ; $52fc: $d9


    di                                            ; $52fd: $f3
    ld l, e                                       ; $52fe: $6b
    push af                                       ; $52ff: $f5
    ld c, b                                       ; $5300: $48

jr_060_5301:
    rst $30                                       ; $5301: $f7
    ld b, [hl]                                    ; $5302: $46
    ld a, [de]                                    ; $5303: $1a
    dec l                                         ; $5304: $2d
    add sp, $5d                                   ; $5305: $e8 $5d
    rrca                                          ; $5307: $0f
    and l                                         ; $5308: $a5
    ld e, b                                       ; $5309: $58
    adc b                                         ; $530a: $88
    cp c                                          ; $530b: $b9
    db $e3                                        ; $530c: $e3
    ld [hl], c                                    ; $530d: $71
    xor $a0                                       ; $530e: $ee $a0
    ld a, [hl+]                                   ; $5310: $2a
    db $e4                                        ; $5311: $e4
    ld b, [hl]                                    ; $5312: $46
    ld a, [hl-]                                   ; $5313: $3a
    ld b, c                                       ; $5314: $41
    ret nc                                        ; $5315: $d0

    rst $30                                       ; $5316: $f7
    dec bc                                        ; $5317: $0b
    ld l, l                                       ; $5318: $6d

Jump_060_5319:
    adc $39                                       ; $5319: $ce $39
    ld h, a                                       ; $531b: $67
    reti                                          ; $531c: $d9


    di                                            ; $531d: $f3
    dec bc                                        ; $531e: $0b
    ld d, h                                       ; $531f: $54
    dec [hl]                                      ; $5320: $35
    and h                                         ; $5321: $a4
    and $60                                       ; $5322: $e6 $60
    ld l, b                                       ; $5324: $68

jr_060_5325:
    ld de, $854f                                  ; $5325: $11 $4f $85
    ld c, h                                       ; $5328: $4c
    ret nz                                        ; $5329: $c0

    sub b                                         ; $532a: $90
    or h                                          ; $532b: $b4
    push de                                       ; $532c: $d5
    ldh a, [$2c]                                  ; $532d: $f0 $2c
    and d                                         ; $532f: $a2
    and [hl]                                      ; $5330: $a6
    ld [hl], e                                    ; $5331: $73
    and h                                         ; $5332: $a4
    cp e                                          ; $5333: $bb
    rla                                           ; $5334: $17
    sbc e                                         ; $5335: $9b
    ld l, [hl]                                    ; $5336: $6e
    sbc c                                         ; $5337: $99
    jr jr_060_5301                                ; $5338: $18 $c7

    ret nc                                        ; $533a: $d0

    and a                                         ; $533b: $a7
    ld d, d                                       ; $533c: $52
    db $d3                                        ; $533d: $d3
    ld h, d                                       ; $533e: $62
    res 7, l                                      ; $533f: $cb $bd
    ld [hl], $cb                                  ; $5341: $36 $cb
    sbc h                                         ; $5343: $9c
    ld l, e                                       ; $5344: $6b
    push hl                                       ; $5345: $e5
    ld d, a                                       ; $5346: $57
    inc c                                         ; $5347: $0c
    ld d, l                                       ; $5348: $55
    pop de                                        ; $5349: $d1
    ld b, [hl]                                    ; $534a: $46
    add $50                                       ; $534b: $c6 $50
    rst $30                                       ; $534d: $f7
    ld a, h                                       ; $534e: $7c
    sbc c                                         ; $534f: $99
    ld [hl], e                                    ; $5350: $73
    ld d, c                                       ; $5351: $51
    ret z                                         ; $5352: $c8

    ld d, l                                       ; $5353: $55
    dec bc                                        ; $5354: $0b
    xor a                                         ; $5355: $af
    push de                                       ; $5356: $d5
    inc e                                         ; $5357: $1c
    ld e, d                                       ; $5358: $5a
    add $d0                                       ; $5359: $c6 $d0
    ld [hl], a                                    ; $535b: $77
    ld c, b                                       ; $535c: $48
    ld a, [hl]                                    ; $535d: $7e
    bit 6, l                                      ; $535e: $cb $75
    inc c                                         ; $5360: $0c
    adc a                                         ; $5361: $8f
    di                                            ; $5362: $f3
    ld a, [hl]                                    ; $5363: $7e
    ld bc, $f5e7                                  ; $5364: $01 $e7 $f5
    xor $1d                                       ; $5367: $ee $1d
    call nc, $e94b                                ; $5369: $d4 $4b $e9
    ld c, [hl]                                    ; $536c: $4e
    add [hl]                                      ; $536d: $86
    rst $00                                       ; $536e: $c7
    add hl, hl                                    ; $536f: $29
    ld e, [hl]                                    ; $5370: $5e
    inc d                                         ; $5371: $14
    jp nc, $99a5                                  ; $5372: $d2 $a5 $99

    ld l, e                                       ; $5375: $6b
    dec [hl]                                      ; $5376: $35
    add a                                         ; $5377: $87
    ld d, $f1                                     ; $5378: $16 $f1
    call z, $98bf                                 ; $537a: $cc $bf $98
    ld [hl], $10                                  ; $537d: $36 $10
    push de                                       ; $537f: $d5
    push af                                       ; $5380: $f5
    ld a, [bc]                                    ; $5381: $0a
    or c                                          ; $5382: $b1
    ld [hl], a                                    ; $5383: $77
    xor c                                         ; $5384: $a9
    ld l, $95                                     ; $5385: $2e $95
    ld c, c                                       ; $5387: $49
    xor b                                         ; $5388: $a8
    inc e                                         ; $5389: $1c
    ld [de], a                                    ; $538a: $12
    cp h                                          ; $538b: $bc
    ld d, b                                       ; $538c: $50
    or $e8                                        ; $538d: $f6 $e8
    dec d                                         ; $538f: $15
    call nc, Call_000_02fd                        ; $5390: $d4 $fd $02
    ld l, l                                       ; $5393: $6d
    adc $39                                       ; $5394: $ce $39
    ld h, a                                       ; $5396: $67
    reti                                          ; $5397: $d9


    di                                            ; $5398: $f3
    dec bc                                        ; $5399: $0b
    ld d, h                                       ; $539a: $54
    dec [hl]                                      ; $539b: $35
    and h                                         ; $539c: $a4
    and $60                                       ; $539d: $e6 $60
    ld l, b                                       ; $539f: $68
    ld de, $854f                                  ; $53a0: $11 $4f $85
    ld c, h                                       ; $53a3: $4c
    ret nz                                        ; $53a4: $c0

    sub b                                         ; $53a5: $90
    or h                                          ; $53a6: $b4
    push de                                       ; $53a7: $d5
    ldh a, [$2c]                                  ; $53a8: $f0 $2c
    add [hl]                                      ; $53aa: $86
    cp [hl]                                       ; $53ab: $be
    adc b                                         ; $53ac: $88
    sbc d                                         ; $53ad: $9a
    ld e, $42                                     ; $53ae: $1e $42
    sbc c                                         ; $53b0: $99
    ld d, b                                       ; $53b1: $50
    ld a, [c]                                     ; $53b2: $f2
    ld [hl], c                                    ; $53b3: $71
    ld a, d                                       ; $53b4: $7a
    rla                                           ; $53b5: $17
    ld [hl], l                                    ; $53b6: $75
    ld h, b                                       ; $53b7: $60
    ld h, d                                       ; $53b8: $62
    ld b, b                                       ; $53b9: $40
    ld d, h                                       ; $53ba: $54
    push de                                       ; $53bb: $d5
    xor c                                         ; $53bc: $a9
    cp $6b                                        ; $53bd: $fe $6b
    ld [hl], l                                    ; $53bf: $75
    rrca                                          ; $53c0: $0f
    ld [$df77], a                                 ; $53c1: $ea $77 $df
    cpl                                           ; $53c4: $2f
    rst $10                                       ; $53c5: $d7
    ld d, c                                       ; $53c6: $51
    ld [hl], d                                    ; $53c7: $72
    xor l                                         ; $53c8: $ad
    and $e2                                       ; $53c9: $e6 $e2
    ld e, a                                       ; $53cb: $5f
    sbc b                                         ; $53cc: $98

jr_060_53cd:
    ld [hl], $32                                  ; $53cd: $36 $32
    add [hl]                                      ; $53cf: $86
    ld a, [hl-]                                   ; $53d0: $3a
    call nc, Call_060_49c7                        ; $53d1: $d4 $c7 $49
    ld b, c                                       ; $53d4: $41
    rst $20                                       ; $53d5: $e7
    ld b, b                                       ; $53d6: $40
    ld [hl], b                                    ; $53d7: $70
    jr nc, jr_060_53cd                            ; $53d8: $30 $f3

    jr c, jr_060_5418                             ; $53da: $38 $3c

    inc a                                         ; $53dc: $3c
    push de                                       ; $53dd: $d5
    ld a, a                                       ; $53de: $7f
    xor l                                         ; $53df: $ad
    xor $41                                       ; $53e0: $ee $41
    db $fd                                        ; $53e2: $fd
    xor $dd                                       ; $53e3: $ee $dd
    rst $30                                       ; $53e5: $f7
    dec a                                         ; $53e6: $3d
    call nc, Call_060_5097                        ; $53e7: $d4 $97 $50
    ld b, c                                       ; $53ea: $41
    add hl, sp                                    ; $53eb: $39
    sbc l                                         ; $53ec: $9d
    ei                                            ; $53ed: $fb
    cp h                                          ; $53ee: $bc
    add a                                         ; $53ef: $87
    adc d                                         ; $53f0: $8a
    sbc [hl]                                      ; $53f1: $9e
    add h                                         ; $53f2: $84
    ld h, d                                       ; $53f3: $62
    ld e, [hl]                                    ; $53f4: $5e
    db $ed                                        ; $53f5: $ed
    ld a, [hl]                                    ; $53f6: $7e
    ld hl, sp+$7e                                 ; $53f7: $f8 $7e
    ld bc, $3be7                                  ; $53f9: $01 $e7 $3b
    xor c                                         ; $53fc: $a9
    rrca                                          ; $53fd: $0f
    ld a, e                                       ; $53fe: $7b
    and h                                         ; $53ff: $a4
    ld d, l                                       ; $5400: $55
    push af                                       ; $5401: $f5
    ld b, d                                       ; $5402: $42
    add hl, de                                    ; $5403: $19
    ld h, a                                       ; $5404: $67
    add sp, -$08                                  ; $5405: $e8 $f8
    ld d, b                                       ; $5407: $50
    inc b                                         ; $5408: $04
    adc a                                         ; $5409: $8f
    xor e                                         ; $540a: $ab
    rst $38                                       ; $540b: $ff
    jp hl                                         ; $540c: $e9


    ld d, [hl]                                    ; $540d: $56
    ld hl, $7559                                  ; $540e: $21 $59 $75
    cp l                                          ; $5411: $bd
    pop de                                        ; $5412: $d1
    or b                                          ; $5413: $b0
    call z, $f339                                 ; $5414: $cc $39 $f3
    ld c, d                                       ; $5417: $4a

jr_060_5418:
    ld b, b                                       ; $5418: $40
    ld e, [hl]                                    ; $5419: $5e

Jump_060_541a:
    ld h, l                                       ; $541a: $65
    db $e3                                        ; $541b: $e3
    ld a, $2f                                     ; $541c: $3e $2f
    ld a, [bc]                                    ; $541e: $0a
    ld e, c                                       ; $541f: $59
    xor c                                         ; $5420: $a9
    push bc                                       ; $5421: $c5
    xor e                                         ; $5422: $ab
    ld d, b                                       ; $5423: $50
    or $18                                        ; $5424: $f6 $18
    and a                                         ; $5426: $a7
    ld b, d                                       ; $5427: $42
    ld a, [c]                                     ; $5428: $f2
    ld [hl], c                                    ; $5429: $71
    ld a, [hl+]                                   ; $542a: $2a
    inc a                                         ; $542b: $3c
    dec c                                         ; $542c: $0d
    sub b                                         ; $542d: $90
    rst $08                                       ; $542e: $cf
    db $10                                        ; $542f: $10
    call nz, $bf79                                ; $5430: $c4 $79 $bf
    rst $20                                       ; $5433: $e7
    and a                                         ; $5434: $a7
    ld e, [hl]                                    ; $5435: $5e
    add [hl]                                      ; $5436: $86
    sub [hl]                                      ; $5437: $96
    dec a                                         ; $5438: $3d
    cp a                                          ; $5439: $bf
    ld b, b                                       ; $543a: $40
    ld d, l                                       ; $543b: $55
    ld e, $52                                     ; $543c: $1e $52
    ld [hl], e                                    ; $543e: $73
    xor l                                         ; $543f: $ad
    and $d0                                       ; $5440: $e6 $d0
    ld [hl-], a                                   ; $5442: $32
    ld l, d                                       ; $5443: $6a
    push hl                                       ; $5444: $e5
    ld c, $c5                                     ; $5445: $0e $c5
    ld a, e                                       ; $5447: $7b
    db $f4                                        ; $5448: $f4
    ld e, h                                       ; $5449: $5c
    inc d                                         ; $544a: $14
    ld [hl], d                                    ; $544b: $72
    sbc a                                         ; $544c: $9f
    and a                                         ; $544d: $a7
    jp nz, Jump_060_78f3                          ; $544e: $c2 $f3 $78

    inc c                                         ; $5451: $0c
    ld a, l                                       ; $5452: $7d
    ld de, $89dd                                  ; $5453: $11 $dd $89
    ld e, [hl]                                    ; $5456: $5e
    db $fd                                        ; $5457: $fd
    db $fd                                        ; $5458: $fd
    ld e, [hl]                                    ; $5459: $5e
    sbc e                                         ; $545a: $9b
    ld h, l                                       ; $545b: $65
    ld [$48cb], a                                 ; $545c: $ea $cb $48
    dec a                                         ; $545f: $3d
    add hl, de                                    ; $5460: $19
    ld a, [bc]                                    ; $5461: $0a
    cpl                                           ; $5462: $2f
    and d                                         ; $5463: $a2
    and [hl]                                      ; $5464: $a6
    add a                                         ; $5465: $87
    ld d, b                                       ; $5466: $50
    add $14                                       ; $5467: $c6 $14
    ld h, [hl]                                    ; $5469: $66
    and a                                         ; $546a: $a7
    rst $10                                       ; $546b: $d7
    ld l, d                                       ; $546c: $6a
    adc [hl]                                      ; $546d: $8e
    inc c                                         ; $546e: $0c
    or l                                          ; $546f: $b5
    dec b                                         ; $5470: $05
    db $fc                                        ; $5471: $fc
    ld a, e                                       ; $5472: $7b
    adc l                                         ; $5473: $8d
    ld a, [hl-]                                   ; $5474: $3a
    sub l                                         ; $5475: $95
    ld l, [hl]                                    ; $5476: $6e
    and c                                         ; $5477: $a1
    adc l                                         ; $5478: $8d
    adc h                                         ; $5479: $8c
    and c                                         ; $547a: $a1
    ld c, $f5                                     ; $547b: $0e $f5
    add hl, sp                                    ; $547d: $39
    ld d, a                                       ; $547e: $57
    sbc e                                         ; $547f: $9b
    ld l, c                                       ; $5480: $69
    cp [hl]                                       ; $5481: $be
    ld e, a                                       ; $5482: $5f
    rla                                           ; $5483: $17
    ld b, c                                       ; $5484: $41
    daa                                           ; $5485: $27
    ld c, d                                       ; $5486: $4a
    ld c, [hl]                                    ; $5487: $4e
    add l                                         ; $5488: $85
    rst $20                                       ; $5489: $e7
    ld [hl], c                                    ; $548a: $71
    adc [hl]                                      ; $548b: $8e
    db $fd                                        ; $548c: $fd
    inc a                                         ; $548d: $3c
    xor $50                                       ; $548e: $ee $50
    ld b, [hl]                                    ; $5490: $46
    ld [$50c9], a                                 ; $5491: $ea $c9 $50
    ld a, b                                       ; $5494: $78
    ld d, c                                       ; $5495: $51
    cp $55                                        ; $5496: $fe $55
    sub $6d                                       ; $5498: $d6 $6d
    cp $c5                                        ; $549a: $fe $c5
    ld [hl-], a                                   ; $549c: $32
    add [hl]                                      ; $549d: $86
    ld a, $b4                                     ; $549e: $3e $b4
    adc b                                         ; $54a0: $88
    ld h, a                                       ; $54a1: $67
    cp $c5                                        ; $54a2: $fe $c5
    rst $30                                       ; $54a4: $f7
    ld c, $b8                                     ; $54a5: $0e $b8
    adc h                                         ; $54a7: $8c
    inc sp                                        ; $54a8: $33
    db $e4                                        ; $54a9: $e4
    ld a, $8f                                     ; $54aa: $3e $8f
    db $fc                                        ; $54ac: $fc
    ld [hl-], a                                   ; $54ad: $32
    ld a, [c]                                     ; $54ae: $f2
    rst $20                                       ; $54af: $e7
    inc l                                         ; $54b0: $2c
    ld a, e                                       ; $54b1: $7b
    ld a, [hl]                                    ; $54b2: $7e
    add c                                         ; $54b3: $81
    xor d                                         ; $54b4: $aa
    add [hl]                                      ; $54b5: $86
    call nc, $ab5c                                ; $54b6: $d4 $5c $ab
    cp c                                          ; $54b9: $b9
    ld a, [bc]                                    ; $54ba: $0a
    inc a                                         ; $54bb: $3c
    dec d                                         ; $54bc: $15
    add h                                         ; $54bd: $84
    ld b, e                                       ; $54be: $43
    adc $bd                                       ; $54bf: $ce $bd
    dec sp                                        ; $54c1: $3b
    rlca                                          ; $54c2: $07
    xor e                                         ; $54c3: $ab
    ret nz                                        ; $54c4: $c0

    ld d, e                                       ; $54c5: $53
    and c                                         ; $54c6: $a1
    or d                                          ; $54c7: $b2
    xor e                                         ; $54c8: $ab
    ld a, [$a18d]                                 ; $54c9: $fa $8d $a1
    ld [hl], e                                    ; $54cc: $73
    ld de, $9d35                                  ; $54cd: $11 $35 $9d
    inc hl                                        ; $54d0: $23
    sbc l                                         ; $54d1: $9d
    and c                                         ; $54d2: $a1
    ld [hl], l                                    ; $54d3: $75
    cp a                                          ; $54d4: $bf
    db $ed                                        ; $54d5: $ed

jr_060_54d6:
    ld sp, $a1d4                                  ; $54d6: $31 $d4 $a1
    cp [hl]                                       ; $54d9: $be
    jr jr_060_54d6                                ; $54da: $18 $fa

    jr @-$04                                      ; $54dc: $18 $fa

    ld [hl+], a                                   ; $54de: $22
    cp d                                          ; $54df: $ba
    inc de                                        ; $54e0: $13
    cp l                                          ; $54e1: $bd
    ld a, [$60fb]                                 ; $54e2: $fa $fb $60
    sub [hl]                                      ; $54e5: $96
    ld b, l                                       ; $54e6: $45
    ccf                                           ; $54e7: $3f
    sbc c                                         ; $54e8: $99
    or [hl]                                       ; $54e9: $b6
    jp c, $829c                                   ; $54ea: $da $9c $82

    ld [hl-], a                                   ; $54ed: $32
    ld b, a                                       ; $54ee: $47
    db $ec                                        ; $54ef: $ec
    inc e                                         ; $54f0: $1c
    rst $20                                       ; $54f1: $e7
    ld l, a                                       ; $54f2: $6f
    or l                                          ; $54f3: $b5
    inc l                                         ; $54f4: $2c
    add e                                         ; $54f5: $83
    sub l                                         ; $54f6: $95
    cpl                                           ; $54f7: $2f
    push bc                                       ; $54f8: $c5
    ld d, d                                       ; $54f9: $52
    ld d, a                                       ; $54fa: $57
    dec [hl]                                      ; $54fb: $35
    ret c                                         ; $54fc: $d8

    and c                                         ; $54fd: $a1
    ld a, b                                       ; $54fe: $78
    ld d, $f4                                     ; $54ff: $16 $f4
    db $fd                                        ; $5501: $fd
    ld [bc], a                                    ; $5502: $02
    rla                                           ; $5503: $17
    ld b, c                                       ; $5504: $41
    daa                                           ; $5505: $27
    ld c, d                                       ; $5506: $4a
    sub $f5                                       ; $5507: $d6 $f5
    ld e, a                                       ; $5509: $5f
    sbc h                                         ; $550a: $9c
    xor c                                         ; $550b: $a9
    ccf                                           ; $550c: $3f
    ld [hl], e                                    ; $550d: $73
    xor [hl]                                      ; $550e: $ae
    push de                                       ; $550f: $d5
    inc e                                         ; $5510: $1c
    ld e, d                                       ; $5511: $5a
    call nz, $ff33                                ; $5512: $c4 $33 $ff
    ld [c], a                                     ; $5515: $e2
    ld a, e                                       ; $5516: $7b
    rlca                                          ; $5517: $07
    cp a                                          ; $5518: $bf
    xor h                                         ; $5519: $ac
    ld b, d                                       ; $551a: $42
    ld [hl], c                                    ; $551b: $71
    xor $f3                                       ; $551c: $ee $f3
    ret nc                                        ; $551e: $d0

    cp c                                          ; $551f: $b9
    ld [$5d04], sp                                ; $5520: $08 $04 $5d
    daa                                           ; $5523: $27
    and c                                         ; $5524: $a1
    ld [hl], h                                    ; $5525: $74
    xor a                                         ; $5526: $af
    or d                                          ; $5527: $b2
    and [hl]                                      ; $5528: $a6
    inc d                                         ; $5529: $14
    cpl                                           ; $552a: $2f
    call nz, $fcce                                ; $552b: $c4 $ce $fc
    ld d, l                                       ; $552e: $55
    cp c                                          ; $552f: $b9
    ld d, a                                       ; $5530: $57
    rst $20                                       ; $5531: $e7
    ret nc                                        ; $5532: $d0

    add hl, bc                                    ; $5533: $09
    add d                                         ; $5534: $82
    cp [hl]                                       ; $5535: $be
    ld e, a                                       ; $5536: $5f
    ld l, l                                       ; $5537: $6d
    adc $55                                       ; $5538: $ce $55
    ld l, [hl]                                    ; $553a: $6e
    and $cc                                       ; $553b: $e6 $cc
    xor e                                         ; $553d: $ab
    ld [$f637], a                                 ; $553e: $ea $37 $f6

Call_060_5541:
    jr jr_060_55aa                                ; $5541: $18 $67

    ld e, c                                       ; $5543: $59
    jp $e864                                      ; $5544: $c3 $64 $e8


    jr z, jr_060_5569                             ; $5547: $28 $20

    ld h, l                                       ; $5549: $65
    ccf                                           ; $554a: $3f
    ld e, d                                       ; $554b: $5a
    ld d, l                                       ; $554c: $55
    add hl, bc                                    ; $554d: $09
    or c                                          ; $554e: $b1
    db $d3                                        ; $554f: $d3
    ld e, b                                       ; $5550: $58

Jump_060_5551:
    push de                                       ; $5551: $d5
    ld l, a                                       ; $5552: $6f
    jr c, jr_060_555c                             ; $5553: $38 $07

    inc hl                                        ; $5555: $23
    jp hl                                         ; $5556: $e9


    call nc, $f314                                ; $5557: $d4 $14 $f3
    cp l                                          ; $555a: $bd
    inc bc                                        ; $555b: $03

jr_060_555c:
    ld l, $23                                     ; $555c: $2e $23
    xor c                                         ; $555e: $a9
    ret                                           ; $555f: $c9


    sbc [hl]                                      ; $5560: $9e
    and l                                         ; $5561: $a5
    ld a, h                                       ; $5562: $7c
    add hl, hl                                    ; $5563: $29
    sub e                                         ; $5564: $93
    ld d, b                                       ; $5565: $50
    cp d                                          ; $5566: $ba
    ld d, a                                       ; $5567: $57
    add hl, hl                                    ; $5568: $29

jr_060_5569:
    jp hl                                         ; $5569: $e9


    ld [hl], l                                    ; $556a: $75
    dec c                                         ; $556b: $0d
    ld a, d                                       ; $556c: $7a
    ld a, [hl+]                                   ; $556d: $2a
    inc a                                         ; $556e: $3c
    adc a                                         ; $556f: $8f
    rla                                           ; $5570: $17
    push hl                                       ; $5571: $e5
    rra                                           ; $5572: $1f
    sbc d                                         ; $5573: $9a
    rst $28                                       ; $5574: $ef
    rla                                           ; $5575: $17
    rlca                                          ; $5576: $07
    ld e, h                                       ; $5577: $5c
    ld d, [hl]                                    ; $5578: $56
    ld a, [hl-]                                   ; $5579: $3a
    dec b                                         ; $557a: $05
    sbc l                                         ; $557b: $9d
    ld a, e                                       ; $557c: $7b
    and b                                         ; $557d: $a0
    adc h                                         ; $557e: $8c
    and c                                         ; $557f: $a1
    rst $28                                       ; $5580: $ef
    di                                            ; $5581: $f3
    and d                                         ; $5582: $a2
    and $7e                                       ; $5583: $e6 $7e
    push hl                                       ; $5585: $e5
    inc c                                         ; $5586: $0c
    ld [de], a                                    ; $5587: $12
    ld e, $b8                                     ; $5588: $1e $b8
    rst $10                                       ; $558a: $d7
    ld b, [hl]                                    ; $558b: $46
    ld c, l                                       ; $558c: $4d
    rr b                                          ; $558d: $cb $18
    ld a, [$e57e]                                 ; $558f: $fa $7e $e5
    inc c                                         ; $5592: $0c
    ld [de], a                                    ; $5593: $12
    ld e, $e0                                     ; $5594: $1e $e0
    ld h, [hl]                                    ; $5596: $66
    adc d                                         ; $5597: $8a
    ld a, c                                       ; $5598: $79
    add sp, $0c                                   ; $5599: $e8 $0c

jr_060_559b:
    ld [hl], c                                    ; $559b: $71
    ld a, d                                       ; $559c: $7a
    adc $d5                                       ; $559d: $ce $d5
    and $a2                                       ; $559f: $e6 $a2
    add h                                         ; $55a1: $84
    jp z, $f416                                   ; $55a2: $ca $16 $f4

    db $fd                                        ; $55a5: $fd
    ld [bc], a                                    ; $55a6: $02
    ld d, a                                       ; $55a7: $57
    add [hl]                                      ; $55a8: $86
    db $e4                                        ; $55a9: $e4

jr_060_55aa:
    and h                                         ; $55aa: $a4
    jr nc, @-$63                                  ; $55ab: $30 $9b

    add a                                         ; $55ad: $87
    adc $91                                       ; $55ae: $ce $91
    inc d                                         ; $55b0: $14
    add hl, hl                                    ; $55b1: $29
    adc $b5                                       ; $55b2: $ce $b5
    sbc d                                         ; $55b4: $9a
    ld b, e                                       ; $55b5: $43
    sla h                                         ; $55b6: $cb $24
    inc h                                         ; $55b8: $24
    and [hl]                                      ; $55b9: $a6
    rla                                           ; $55ba: $17
    ld d, e                                       ; $55bb: $53
    jp z, $fbee                                   ; $55bc: $ca $ee $fb

    ld e, $dd                                     ; $55bf: $1e $dd
    ld h, l                                       ; $55c1: $65
    ld [$6acb], a                                 ; $55c2: $ea $cb $6a
    ld a, b                                       ; $55c5: $78
    ld e, $8f                                     ; $55c6: $1e $8f
    ld bc, $239d                                  ; $55c8: $01 $9d $23
    xor c                                         ; $55cb: $a9
    jp hl                                         ; $55cc: $e9


    and c                                         ; $55cd: $a1
    ld a, c                                       ; $55ce: $79
    adc a                                         ; $55cf: $8f
    cp $74                                        ; $55d0: $fe $74

jr_060_55d2:
    rst $18                                       ; $55d2: $df

jr_060_55d3:
    cpl                                           ; $55d3: $2f
    rlca                                          ; $55d4: $07
    ld e, h                                       ; $55d5: $5c

jr_060_55d6:
    sub $e8                                       ; $55d6: $d6 $e8
    db $10                                        ; $55d8: $10
    dec sp                                        ; $55d9: $3b
    rla                                           ; $55da: $17
    dec de                                        ; $55db: $1b
    rst $30                                       ; $55dc: $f7
    jr jr_060_55d6                                ; $55dd: $18 $f7

    ld a, c                                       ; $55df: $79
    ld a, [bc]                                    ; $55e0: $0a
    ld c, d                                       ; $55e1: $4a
    pop af                                        ; $55e2: $f1
    ld b, b                                       ; $55e3: $40
    ld [hl], b                                    ; $55e4: $70
    jr nc, jr_060_559b                            ; $55e5: $30 $b4

    xor h                                         ; $55e7: $ac
    ld [hl], d                                    ; $55e8: $72
    ld c, b                                       ; $55e9: $48
    ld c, a                                       ; $55ea: $4f
    and l                                         ; $55eb: $a5
    and [hl]                                      ; $55ec: $a6
    ld a, [c]                                     ; $55ed: $f2
    rst $28                                       ; $55ee: $ef
    ld c, d                                       ; $55ef: $4a
    cpl                                           ; $55f0: $2f
    db $dd                                        ; $55f1: $dd
    or h                                          ; $55f2: $b4
    dec a                                         ; $55f3: $3d
    sub [hl]                                      ; $55f4: $96
    pop de                                        ; $55f5: $d1
    ld e, l                                       ; $55f6: $5d
    ld d, $35                                     ; $55f7: $16 $35
    ld [hl], e                                    ; $55f9: $73
    cp a                                          ; $55fa: $bf
    ld h, e                                       ; $55fb: $63
    ld b, d                                       ; $55fc: $42
    ld e, c                                       ; $55fd: $59
    sub h                                         ; $55fe: $94
    ld a, [hl]                                    ; $55ff: $7e
    jr jr_060_55d2                                ; $5600: $18 $d0

    or d                                          ; $5602: $b2
    rst $08                                       ; $5603: $cf
    xor e                                         ; $5604: $ab
    cp [hl]                                       ; $5605: $be
    ld e, a                                       ; $5606: $5f
    cpl                                           ; $5607: $2f
    db $ed                                        ; $5608: $ed
    ld [hl], c                                    ; $5609: $71
    ret z                                         ; $560a: $c8

    ld [hl], l                                    ; $560b: $75
    jr z, jr_060_55d3                             ; $560c: $28 $c5

    cp c                                          ; $560e: $b9
    adc e                                         ; $560f: $8b
    ld d, e                                       ; $5610: $53
    inc de                                        ; $5611: $13
    ld b, l                                       ; $5612: $45
    jr nz, jr_060_562d                            ; $5613: $20 $18

    ld a, [c]                                     ; $5615: $f2
    sbc h                                         ; $5616: $9c
    rla                                           ; $5617: $17
    rst $20                                       ; $5618: $e7
    push af                                       ; $5619: $f5
    xor $34                                       ; $561a: $ee $34
    ld a, d                                       ; $561c: $7a
    dec [hl]                                      ; $561d: $35
    inc a                                         ; $561e: $3c
    inc de                                        ; $561f: $13
    db $fd                                        ; $5620: $fd
    ld a, c                                       ; $5621: $79
    sbc h                                         ; $5622: $9c
    xor e                                         ; $5623: $ab
    add b                                         ; $5624: $80
    sub l                                         ; $5625: $95
    ld l, c                                       ; $5626: $69
    inc hl                                        ; $5627: $23
    ld h, e                                       ; $5628: $63
    xor b                                         ; $5629: $a8
    and e                                         ; $562a: $a3
    cp e                                          ; $562b: $bb
    inc c                                         ; $562c: $0c

jr_060_562d:
    sub h                                         ; $562d: $94
    ld a, [c]                                     ; $562e: $f2
    ld hl, sp+$17                                 ; $562f: $f8 $17
    rst $20                                       ; $5631: $e7
    ld e, $17                                     ; $5632: $1e $17
    di                                            ; $5634: $f3
    ld [hl+], a                                   ; $5635: $22
    db $d3                                        ; $5636: $d3
    ei                                            ; $5637: $fb
    db $fd                                        ; $5638: $fd
    ld [bc], a                                    ; $5639: $02
    rst $20                                       ; $563a: $e7
    ld e, e                                       ; $563b: $5b
    push af                                       ; $563c: $f5
    ld e, a                                       ; $563d: $5f
    sbc h                                         ; $563e: $9c
    or h                                          ; $563f: $b4
    and c                                         ; $5640: $a1
    ld a, c                                       ; $5641: $79
    adc $81                                       ; $5642: $ce $81
    ld d, d                                       ; $5644: $52
    sbc $03                                       ; $5645: $de $03
    inc a                                         ; $5647: $3c
    dec d                                         ; $5648: $15
    ld a, d                                       ; $5649: $7a
    ld [hl], a                                    ; $564a: $77
    ld bc, $b9fd                                  ; $564b: $01 $fd $b9
    ld e, a                                       ; $564e: $5f
    rst $10                                       ; $564f: $d7

jr_060_5650:
    ld a, [bc]                                    ; $5650: $0a
    ld d, [hl]                                    ; $5651: $56
    and l                                         ; $5652: $a5
    jp hl                                         ; $5653: $e9


    cp b                                          ; $5654: $b8
    rlca                                          ; $5655: $07
    ld a, [bc]                                    ; $5656: $0a
    ld l, l                                       ; $5657: $6d
    xor l                                         ; $5658: $ad
    inc c                                         ; $5659: $0c
    sub c                                         ; $565a: $91
    ld l, e                                       ; $565b: $6b
    dec c                                         ; $565c: $0d
    ld c, c                                       ; $565d: $49
    db $db                                        ; $565e: $db
    ld h, e                                       ; $565f: $63
    add hl, de                                    ; $5660: $19
    add hl, de                                    ; $5661: $19
    add a                                         ; $5662: $87
    sbc h                                         ; $5663: $9c
    ld [hl], e                                    ; $5664: $73
    rla                                           ; $5665: $17
    and a                                         ; $5666: $a7
    ld h, $8a                                     ; $5667: $26 $8a
    ld b, b                                       ; $5669: $40
    jr nc, jr_060_5650                            ; $566a: $30 $e4

    add hl, sp                                    ; $566c: $39
    cpl                                           ; $566d: $2f
    ld l, l                                       ; $566e: $6d
    and $3d                                       ; $566f: $e6 $3d
    call Call_000_3ea1                            ; $5671: $cd $a1 $3e
    jp nc, Jump_000_3bbd                          ; $5674: $d2 $bd $3b

    cp l                                          ; $5677: $bd
    ld [$3d04], sp                                ; $5678: $08 $04 $3d
    dec e                                         ; $567b: $1d
    rst $30                                       ; $567c: $f7
    and e                                         ; $567d: $a3
    ld b, l                                       ; $567e: $45
    call nc, $d75c                                ; $567f: $d4 $5c $d7
    ld d, h                                       ; $5682: $54
    adc e                                         ; $5683: $8b
    rst $10                                       ; $5684: $d7
    add sp, $10                                   ; $5685: $e8 $10
    dec sp                                        ; $5687: $3b
    ld d, a                                       ; $5688: $57
    cp e                                          ; $5689: $bb
    xor [hl]                                      ; $568a: $ae
    sub h                                         ; $568b: $94
    sbc c                                         ; $568c: $99
    or [hl]                                       ; $568d: $b6
    dec hl                                        ; $568e: $2b
    inc bc                                        ; $568f: $03
    or e                                          ; $5690: $b3
    di                                            ; $5691: $f3
    ld a, [hl]                                    ; $5692: $7e
    ld bc, $5c07                                  ; $5693: $01 $07 $5c
    ld d, $1b                                     ; $5696: $16 $1b
    add a                                         ; $5698: $87
    and $81                                       ; $5699: $e6 $81
    ld d, d                                       ; $569b: $52
    cp [hl]                                       ; $569c: $be
    ld e, a                                       ; $569d: $5f
    ld l, l                                       ; $569e: $6d
    and $a9                                       ; $569f: $e6 $a9
    cpl                                           ; $56a1: $2f
    adc e                                         ; $56a2: $8b
    add hl, hl                                    ; $56a3: $29
    jp hl                                         ; $56a4: $e9


    sub c                                         ; $56a5: $91
    ld [hl], c                                    ; $56a6: $71
    ret z                                         ; $56a7: $c8

    push de                                       ; $56a8: $d5
    ldh a, [$8c]                                  ; $56a9: $f0 $8c
    ld [hl], h                                    ; $56ab: $74
    xor a                                         ; $56ac: $af
    ld a, h                                       ; $56ad: $7c
    cp a                                          ; $56ae: $bf
    rlca                                          ; $56af: $07
    pop hl                                        ; $56b0: $e1
    db $eb                                        ; $56b1: $eb
    sbc c                                         ; $56b2: $99
    pop af                                        ; $56b3: $f1
    db $fd                                        ; $56b4: $fd
    ld [bc], a                                    ; $56b5: $02
    sub a                                         ; $56b6: $97
    ld c, b                                       ; $56b7: $48
    or c                                          ; $56b8: $b1
    xor h                                         ; $56b9: $ac
    xor d                                         ; $56ba: $aa
    rst $18                                       ; $56bb: $df

Jump_060_56bc:
    ld d, a                                       ; $56bc: $57
    inc l                                         ; $56bd: $2c
    ld c, [hl]                                    ; $56be: $4e
    xor a                                         ; $56bf: $af
    ld a, [c]                                     ; $56c0: $f2
    ld d, a                                       ; $56c1: $57
    jp z, $d2bd                                   ; $56c2: $ca $bd $d2

    ld d, [hl]                                    ; $56c5: $56
    cp $d3                                        ; $56c6: $fe $d3
    cp l                                          ; $56c8: $bd
    rst $20                                       ; $56c9: $e7
    db $e3                                        ; $56ca: $e3
    ld a, a                                       ; $56cb: $7f
    halt                                          ; $56cc: $76
    ld a, c                                       ; $56cd: $79

jr_060_56ce:
    ret z                                         ; $56ce: $c8

    add h                                         ; $56cf: $84
    xor d                                         ; $56d0: $aa
    ld a, l                                       ; $56d1: $7d
    rlca                                          ; $56d2: $07
    ld e, h                                       ; $56d3: $5c
    ld b, [hl]                                    ; $56d4: $46
    add [hl]                                      ; $56d5: $86
    adc [hl]                                      ; $56d6: $8e
    adc $51                                       ; $56d7: $ce $51
    jp hl                                         ; $56d9: $e9


    sbc $63                                       ; $56da: $de $63
    inc e                                         ; $56dc: $1c
    db $dd                                        ; $56dd: $dd
    cp c                                          ; $56de: $b9
    rst $18                                       ; $56df: $df
    cp e                                          ; $56e0: $bb
    or l                                          ; $56e1: $b5
    cp a                                          ; $56e2: $bf
    rlca                                          ; $56e3: $07
    ld e, h                                       ; $56e4: $5c
    and $1c                                       ; $56e5: $e6 $1c
    jr z, jr_060_56ce                             ; $56e7: $28 $e5

    ld d, l                                       ; $56e9: $55
    ld d, b                                       ; $56ea: $50
    jp z, $fbb9                                   ; $56eb: $ca $b9 $fb

    cp [hl]                                       ; $56ee: $be
    ld b, a                                       ; $56ef: $47
    ld d, d                                       ; $56f0: $52
    jp hl                                         ; $56f1: $e9


    ld c, [hl]                                    ; $56f2: $4e

jr_060_56f3:
    cpl                                           ; $56f3: $2f
    or h                                          ; $56f4: $b4
    ld e, d                                       ; $56f5: $5a
    and [hl]                                      ; $56f6: $a6
    dec l                                         ; $56f7: $2d
    sub h                                         ; $56f8: $94
    ld h, c                                       ; $56f9: $61
    jr z, jr_060_56f3                             ; $56fa: $28 $f7

    ld a, l                                       ; $56fc: $7d
    rst $18                                       ; $56fd: $df
    cpl                                           ; $56fe: $2f
    sub a                                         ; $56ff: $97
    nop                                           ; $5700: $00
    sub b                                         ; $5701: $90
    or h                                          ; $5702: $b4
    push de                                       ; $5703: $d5
    and a                                         ; $5704: $a7
    cp c                                          ; $5705: $b9
    adc b                                         ; $5706: $88
    sbc d                                         ; $5707: $9a
    sub l                                         ; $5708: $95
    db $dd                                        ; $5709: $dd
    call z, $eeea                                 ; $570a: $cc $ea $ee
    ret c                                         ; $570d: $d8

    add hl, sp                                    ; $570e: $39
    ld [hl-], a                                   ; $570f: $32
    ld c, $b9                                     ; $5710: $0e $b9
    rst $20                                       ; $5712: $e7

jr_060_5713:
    sra h                                         ; $5713: $cb $2c
    cp b                                          ; $5715: $b8
    ret c                                         ; $5716: $d8

    add d                                         ; $5717: $82
    adc $55                                       ; $5718: $ce $55
    jr z, jr_060_5713                             ; $571a: $28 $f7

    dec bc                                        ; $571c: $0b
    ld d, a                                       ; $571d: $57
    or h                                          ; $571e: $b4
    ld [hl+], a                                   ; $571f: $22
    ld l, d                                       ; $5720: $6a
    ld c, $a1                                     ; $5721: $0e $a1
    inc l                                         ; $5723: $2c
    inc h                                         ; $5724: $24
    ld e, d                                       ; $5725: $5a
    cp b                                          ; $5726: $b8
    ld b, e                                       ; $5727: $43
    ld h, c                                       ; $5728: $61
    jp c, $b4ae                                   ; $5729: $da $ae $b4

    ld h, e                                       ; $572c: $63
    rst $10                                       ; $572d: $d7
    db $dd                                        ; $572e: $dd
    rst $30                                       ; $572f: $f7
    dec a                                         ; $5730: $3d
    rst $30                                       ; $5731: $f7
    xor $5c                                       ; $5732: $ee $5c
    ld d, l                                       ; $5734: $55

Call_060_5735:
    cp a                                          ; $5735: $bf
    adc a                                         ; $5736: $8f
    xor $32                                       ; $5737: $ee $32
    push af                                       ; $5739: $f5
    dec sp                                        ; $573a: $3b
    ld a, d                                       ; $573b: $7a
    xor l                                         ; $573c: $ad
    and $da                                       ; $573d: $e6 $da
    inc l                                         ; $573f: $2c
    dec sp                                        ; $5740: $3b
    cp a                                          ; $5741: $bf
    rlca                                          ; $5742: $07
    add h                                         ; $5743: $84
    ld [c], a                                     ; $5744: $e2
    sbc l                                         ; $5745: $9d
    rst $38                                       ; $5746: $ff
    inc sp                                        ; $5747: $33
    ret z                                         ; $5748: $c8

    add hl, sp                                    ; $5749: $39
    cpl                                           ; $574a: $2f
    rlca                                          ; $574b: $07
    ld e, h                                       ; $574c: $5c
    sub $4a                                       ; $574d: $d6 $4a
    ld l, d                                       ; $574f: $6a
    db $ec                                        ; $5750: $ec
    ld e, h                                       ; $5751: $5c
    db $e3                                        ; $5752: $e3
    and a                                         ; $5753: $a7

jr_060_5754:
    rst $10                                       ; $5754: $d7
    ld l, d                                       ; $5755: $6a
    xor $f3                                       ; $5756: $ee $f3
    sbc [hl]                                      ; $5758: $9e
    sub b                                         ; $5759: $90
    sbc $03                                       ; $575a: $de $03
    ld h, l                                       ; $575c: $65
    dec e                                         ; $575d: $1d
    sub b                                         ; $575e: $90
    rst $28                                       ; $575f: $ef
    ei                                            ; $5760: $fb
    ld a, [hl]                                    ; $5761: $7e
    ld bc, $b1ed                                  ; $5762: $01 $ed $b1
    sbc a                                         ; $5765: $9f
    push bc                                       ; $5766: $c5
    ccf                                           ; $5767: $3f
    add a                                         ; $5768: $87
    and $73                                       ; $5769: $e6 $73
    ld e, [hl]                                    ; $576b: $5e
    ld d, a                                       ; $576c: $57
    jp c, $2bb1                                   ; $576d: $da $b1 $2b

    ld l, l                                       ; $5770: $6d
    xor l                                         ; $5771: $ad
    ret nc                                        ; $5772: $d0

    reti                                          ; $5773: $d9


    ld e, c                                       ; $5774: $59
    inc c                                         ; $5775: $0c
    sub l                                         ; $5776: $95
    dec l                                         ; $5777: $2d
    rst $30                                       ; $5778: $f7
    xor [hl]                                      ; $5779: $ae
    ld sp, hl                                     ; $577a: $f9
    ld h, l                                       ; $577b: $65
    ld [$b065], sp                                ; $577c: $08 $65 $b0
    ld e, a                                       ; $577f: $5f
    ld a, b                                       ; $5780: $78
    ld d, c                                       ; $5781: $51
    ret z                                         ; $5782: $c8

    sub c                                         ; $5783: $91
    rst $38                                       ; $5784: $ff
    pop de                                        ; $5785: $d1
    cp [hl]                                       ; $5786: $be
    ld b, e                                       ; $5787: $43
    ld e, l                                       ; $5788: $5d
    jp Jump_000_13a4                              ; $5789: $c3 $a4 $13


    and h                                         ; $578c: $a4
    adc [hl]                                      ; $578d: $8e
    call nc, Call_060_6d6b                        ; $578e: $d4 $6b $6d
    ld d, c                                       ; $5791: $51
    adc e                                         ; $5792: $8b
    ld a, e                                       ; $5793: $7b
    dec [hl]                                      ; $5794: $35
    ld l, l                                       ; $5795: $6d
    ld l, l                                       ; $5796: $6d
    sub [hl]                                      ; $5797: $96
    sbc l                                         ; $5798: $9d
    rst $18                                       ; $5799: $df
    inc bc                                        ; $579a: $03
    ld b, d                                       ; $579b: $42
    pop af                                        ; $579c: $f1
    adc $ff                                       ; $579d: $ce $ff
    add hl, de                                    ; $579f: $19
    add h                                         ; $57a0: $84
    ld [hl], $e7                                  ; $57a1: $36 $e7
    ret nc                                        ; $57a3: $d0

    ld [hl-], a                                   ; $57a4: $32
    adc e                                         ; $57a5: $8b
    dec hl                                        ; $57a6: $2b
    ld a, e                                       ; $57a7: $7b
    dec [hl]                                      ; $57a8: $35
    inc a                                         ; $57a9: $3c
    ld d, e                                       ; $57aa: $53
    ld e, a                                       ; $57ab: $5f

jr_060_57ac:
    ld b, [hl]                                    ; $57ac: $46
    add [hl]                                      ; $57ad: $86
    adc [hl]                                      ; $57ae: $8e
    ld e, $f9                                     ; $57af: $1e $f9
    sbc a                                         ; $57b1: $9f
    jp hl                                         ; $57b2: $e9


    add d                                         ; $57b3: $82
    adc $a9                                       ; $57b4: $ce $a9
    jr nz, jr_060_5754                            ; $57b6: $20 $9c

    and c                                         ; $57b8: $a1
    rst $18                                       ; $57b9: $df
    cpl                                           ; $57ba: $2f
    sub a                                         ; $57bb: $97
    ld b, d                                       ; $57bc: $42
    sbc c                                         ; $57bd: $99
    inc hl                                        ; $57be: $23
    halt                                          ; $57bf: $76
    adc $b2                                       ; $57c0: $ce $b2
    ret z                                         ; $57c2: $c8

    jr c, @-$02                                   ; $57c3: $38 $fc

    adc a                                         ; $57c5: $8f
    rlca                                          ; $57c6: $07
    ld l, e                                       ; $57c7: $6b
    add c                                         ; $57c8: $81
    xor b                                         ; $57c9: $a8
    add hl, hl                                    ; $57ca: $29
    ld a, d                                       ; $57cb: $7a
    add sp, -$22                                  ; $57cc: $e8 $de
    ld a, l                                       ; $57ce: $7d
    rst $18                                       ; $57cf: $df
    ld b, e                                       ; $57d0: $43
    di                                            ; $57d1: $f3
    sbc h                                         ; $57d2: $9c
    ei                                            ; $57d3: $fb
    sbc l                                         ; $57d4: $9d
    ld b, a                                       ; $57d5: $47
    add $1f                                       ; $57d6: $c6 $1f
    ld b, a                                       ; $57d8: $47
    ld [hl], a                                    ; $57d9: $77
    ld e, c                                       ; $57da: $59
    ld l, h                                       ; $57db: $6c
    cp h                                          ; $57dc: $bc
    ld e, a                                       ; $57dd: $5f
    ld l, l                                       ; $57de: $6d
    and $55                                       ; $57df: $e6 $55
    and l                                         ; $57e1: $a5
    rst $30                                       ; $57e2: $f7
    xor $75                                       ; $57e3: $ee $75
    jr z, jr_060_57ac                             ; $57e5: $28 $c5

    add e                                         ; $57e7: $83
    sbc c                                         ; $57e8: $99
    rst $00                                       ; $57e9: $c7
    call Call_060_7b94                            ; $57ea: $cd $94 $7b
    rlca                                          ; $57ed: $07
    sbc e                                         ; $57ee: $9b
    ld d, l                                       ; $57ef: $55
    ld a, c                                       ; $57f0: $79
    dec c                                         ; $57f1: $0d
    ld l, d                                       ; $57f2: $6a
    ld c, $f5                                     ; $57f3: $0e $f5
    ld [hl], l                                    ; $57f5: $75
    and e                                         ; $57f6: $a3
    rst $10                                       ; $57f7: $d7
    ld l, d                                       ; $57f8: $6a
    adc $b2                                       ; $57f9: $ce $b2
    rra                                           ; $57fb: $1f
    dec c                                         ; $57fc: $0d
    dec a                                         ; $57fd: $3d
    ld l, d                                       ; $57fe: $6a
    db $ec                                        ; $57ff: $ec
    xor h                                         ; $5800: $ac
    db $ec                                        ; $5801: $ec
    sbc c                                         ; $5802: $99
    ld a, a                                       ; $5803: $7f
    ld [hl], c                                    ; $5804: $71
    sbc $2f                                       ; $5805: $de $2f
    sub a                                         ; $5807: $97
    add hl, de                                    ; $5808: $19
    rla                                           ; $5809: $17
    ld e, d                                       ; $580a: $5a
    dec l                                         ; $580b: $2d
    db $d3                                        ; $580c: $d3
    ld b, $4a                                     ; $580d: $06 $4a
    ld a, c                                       ; $580f: $79
    ld h, d                                       ; $5810: $62
    db $f4                                        ; $5811: $f4
    db $fd                                        ; $5812: $fd
    ld [bc], a                                    ; $5813: $02
    rlca                                          ; $5814: $07
    ld e, h                                       ; $5815: $5c
    ld b, [hl]                                    ; $5816: $46
    cp $1c                                        ; $5817: $fe $1c
    ld c, c                                       ; $5819: $49
    ld c, l                                       ; $581a: $4d
    sbc $e7                                       ; $581b: $de $e7
    and c                                         ; $581d: $a1
    ld a, c                                       ; $581e: $79
    adc $c1                                       ; $581f: $ce $c1
    add h                                         ; $5821: $84
    sub d                                         ; $5822: $92
    and h                                         ; $5823: $a4
    pop de                                        ; $5824: $d1
    or d                                          ; $5825: $b2
    rra                                           ; $5826: $1f
    call $cab2                                    ; $5827: $cd $b2 $ca
    ld hl, $f4a7                                  ; $582a: $21 $a7 $f4
    jp nc, $bf7d                                  ; $582d: $d2 $7d $bf

    sub a                                         ; $5830: $97
    ld [$2f96], sp                                ; $5831: $08 $96 $2f
    push bc                                       ; $5834: $c5
    ld [hl-], a                                   ; $5835: $32
    push af                                       ; $5836: $f5
    ld h, l                                       ; $5837: $65
    ld sp, $bd25                                  ; $5838: $31 $25 $bd
    add $2f                                       ; $583b: $c6 $2f
    inc sp                                        ; $583d: $33
    rst $28                                       ; $583e: $ef
    ld sp, hl                                     ; $583f: $f9
    db $dd                                        ; $5840: $dd
    add hl, bc                                    ; $5841: $09
    rst $30                                       ; $5842: $f7
    dec bc                                        ; $5843: $0b
    sub a                                         ; $5844: $97
    jr z, @-$19                                   ; $5845: $28 $e5

    push af                                       ; $5847: $f5
    cpl                                           ; $5848: $2f
    add l                                         ; $5849: $85
    rla                                           ; $584a: $17
    ld d, e                                       ; $584b: $53
    call nc, $fbee                                ; $584c: $d4 $ee $fb
    ld e, [hl]                                    ; $584f: $5e
    db $ed                                        ; $5850: $ed
    and $81                                       ; $5851: $e6 $81
    ld d, d                                       ; $5853: $52
    ld e, [hl]                                    ; $5854: $5e
    rst $38                                       ; $5855: $ff
    ld d, d                                       ; $5856: $52
    ld a, b                                       ; $5857: $78

jr_060_5858:
    ld sp, $dd45                                  ; $5858: $31 $45 $dd
    cpl                                           ; $585b: $2f
    sub a                                         ; $585c: $97
    ld a, [hl]                                    ; $585d: $7e
    add hl, de                                    ; $585e: $19
    ld [$dfe3], a                                 ; $585f: $ea $e3 $df
    ld a, l                                       ; $5862: $7d
    adc $0b                                       ; $5863: $ce $0b
    db $ed                                        ; $5865: $ed
    ld [hl], c                                    ; $5866: $71
    ret z                                         ; $5867: $c8

    jr z, @-$1a                                   ; $5868: $28 $e4

    xor d                                         ; $586a: $aa
    jp nc, $f77b                                  ; $586b: $d2 $7b $f7

    add sp, $2e                                   ; $586e: $e8 $2e
    inc bc                                        ; $5870: $03
    and l                                         ; $5871: $a5
    cp h                                          ; $5872: $bc
    sbc b                                         ; $5873: $98
    sub d                                         ; $5874: $92
    ld e, $ac                                     ; $5875: $1e $ac
    ld a, [c]                                     ; $5877: $f2
    rla                                           ; $5878: $17
    inc e                                         ; $5879: $1c
    ld b, e                                       ; $587a: $43
    rst $18                                       ; $587b: $df
    rst $20                                       ; $587c: $e7
    pop af                                        ; $587d: $f1
    rst $28                                       ; $587e: $ef
    ld a, $e7                                     ; $587f: $3e $e7
    dec b                                         ; $5881: $05
    rst $10                                       ; $5882: $d7
    add hl, de                                    ; $5883: $19
    add a                                         ; $5884: $87
    ld a, [$38c8]                                 ; $5885: $fa $c8 $38
    db $e4                                        ; $5888: $e4
    ld l, $4e                                     ; $5889: $2e $4e
    ld c, l                                       ; $588b: $4d
    inc d                                         ; $588c: $14
    add c                                         ; $588d: $81
    ld h, b                                       ; $588e: $60
    ret z                                         ; $588f: $c8

    ld [hl], l                                    ; $5890: $75
    jr z, jr_060_5858                             ; $5891: $28 $c5

    ld a, c                                       ; $5893: $79
    adc $0b                                       ; $5894: $ce $0b
    ld l, l                                       ; $5896: $6d
    and $a9                                       ; $5897: $e6 $a9
    cpl                                           ; $5899: $2f
    ld b, e                                       ; $589a: $43
    ld a, l                                       ; $589b: $7d
    sbc h                                         ; $589c: $9c
    add c                                         ; $589d: $81
    or [hl]                                       ; $589e: $b6
    rst $08                                       ; $589f: $cf
    and e                                         ; $58a0: $a3
    cp e                                          ; $58a1: $bb
    xor h                                         ; $58a2: $ac
    ld d, b                                       ; $58a3: $50
    di                                            ; $58a4: $f3
    sbc $01                                       ; $58a5: $de $01
    sub a                                         ; $58a7: $97
    add hl, sp                                    ; $58a8: $39
    ld [hl], a                                    ; $58a9: $77
    ld [hl], c                                    ; $58aa: $71
    ld l, d                                       ; $58ab: $6a
    and d                                         ; $58ac: $a2
    ld [$4304], sp                                ; $58ad: $08 $04 $43
    sub $c5                                       ; $58b0: $d6 $c5
    and c                                         ; $58b2: $a1
    or b                                          ; $58b3: $b0
    di                                            ; $58b4: $f3
    ld a, [hl]                                    ; $58b5: $7e
    ld bc, $71ed                                  ; $58b6: $01 $ed $71
    ld c, b                                       ; $58b9: $48
    db $fc                                        ; $58ba: $fc
    ld [hl-], a                                   ; $58bb: $32
    dec d                                         ; $58bc: $15
    sbc [hl]                                      ; $58bd: $9e
    rst $00                                       ; $58be: $c7
    add hl, sp                                    ; $58bf: $39
    cp d                                          ; $58c0: $ba
    bit 0, b                                      ; $58c1: $cb $40
    ldh a, [$9c]                                  ; $58c3: $f0 $9c
    rla                                           ; $58c5: $17
    rst $10                                       ; $58c6: $d7
    add hl, de                                    ; $58c7: $19
    rst $30                                       ; $58c8: $f7
    ld a, c                                       ; $58c9: $79
    dec d                                         ; $58ca: $15
    adc d                                         ; $58cb: $8a
    rst $30                                       ; $58cc: $f7
    ld b, b                                       ; $58cd: $40
    add hl, de                                    ; $58ce: $19
    sbc d                                         ; $58cf: $9a
    ld b, a                                       ; $58d0: $47
    ld a, [$dc79]                                 ; $58d1: $fa $79 $dc
    and c                                         ; $58d4: $a1
    ld a, b                                       ; $58d5: $78
    ld a, [hl+]                                   ; $58d6: $2a
    and b                                         ; $58d7: $a0
    ld b, e                                       ; $58d8: $43
    ld [c], a                                     ; $58d9: $e2
    db $fd                                        ; $58da: $fd
    ld [bc], a                                    ; $58db: $02
    rlca                                          ; $58dc: $07
    dec l                                         ; $58dd: $2d
    inc hl                                        ; $58de: $23
    db $e3                                        ; $58df: $e3
    adc a                                         ; $58e0: $8f
    cp e                                          ; $58e1: $bb
    ldh a, [$ea]                                  ; $58e2: $f0 $ea
    and c                                         ; $58e4: $a1
    ld a, c                                       ; $58e5: $79
    and h                                         ; $58e6: $a4
    sbc a                                         ; $58e7: $9f
    rst $00                                       ; $58e8: $c7
    dec e                                         ; $58e9: $1d
    adc d                                         ; $58ea: $8a
    and a                                         ; $58eb: $a7
    ld [bc], a                                    ; $58ec: $02
    ld a, [hl-]                                   ; $58ed: $3a
    inc h                                         ; $58ee: $24
    sbc [hl]                                      ; $58ef: $9e
    di                                            ; $58f0: $f3
    ld [bc], a                                    ; $58f1: $02
    ld l, l                                       ; $58f2: $6d
    and $c5                                       ; $58f3: $e6 $c5
    ret nc                                        ; $58f5: $d0

    cp e                                          ; $58f6: $bb
    rlca                                          ; $58f7: $07
    ld c, d                                       ; $58f8: $4a
    ld a, c                                       ; $58f9: $79
    ld sp, $3d25                                  ; $58fa: $31 $25 $3d
    jp nc, $e3cf                                  ; $58fd: $d2 $cf $e3

    ld c, $85                                     ; $5900: $0e $85
    ld l, c                                       ; $5902: $69
    inc hl                                        ; $5903: $23
    ld h, e                                       ; $5904: $63
    xor b                                         ; $5905: $a8
    and e                                         ; $5906: $a3
    cp e                                          ; $5907: $bb
    inc l                                         ; $5908: $2c
    ld a, [bc]                                    ; $5909: $0a
    ret                                           ; $590a: $c9


    cp a                                          ; $590b: $bf
    or e                                          ; $590c: $b3
    add a                                         ; $590d: $87
    ld d, b                                       ; $590e: $50
    add [hl]                                      ; $590f: $86
    ld h, [hl]                                    ; $5910: $66
    jp c, $7a22                                   ; $5911: $da $22 $7a

    add sp, -$0b                                  ; $5914: $e8 $f5
    ld e, [hl]                                    ; $5916: $5e
    sbc e                                         ; $5917: $9b
    cp [hl]                                       ; $5918: $be
    and a                                         ; $5919: $a7
    cp c                                          ; $591a: $b9
    ld [$2f1e], a                                 ; $591b: $ea $1e $2f
    ld [bc], a                                    ; $591e: $02
    ld b, c                                       ; $591f: $41
    ld c, a                                       ; $5920: $4f
    rst $00                                       ; $5921: $c7
    db $fd                                        ; $5922: $fd
    ld l, b                                       ; $5923: $68
    ld l, b                                       ; $5924: $68
    cp [hl]                                       ; $5925: $be
    ld e, a                                       ; $5926: $5f
    sub a                                         ; $5927: $97
    ld e, d                                       ; $5928: $5a
    ret nc                                        ; $5929: $d0

    add hl, sp                                    ; $592a: $39
    call nc, Call_060_7177                        ; $592b: $d4 $77 $71
    ld l, d                                       ; $592e: $6a
    and d                                         ; $592f: $a2
    ld [$4304], sp                                ; $5930: $08 $04 $43
    sub $a9                                       ; $5933: $d6 $a9
    add b                                         ; $5935: $80
    ld c, $89                                     ; $5936: $0e $89

jr_060_5938:
    rst $20                                       ; $5938: $e7
    cp h                                          ; $5939: $bc
    add a                                         ; $593a: $87
    ld e, d                                       ; $593b: $5a
    call nc, $b32c                                ; $593c: $d4 $2c $b3
    inc l                                         ; $593f: $2c
    jp z, $8bbf                                   ; $5940: $ca $bf $8b

    ld d, e                                       ; $5943: $53
    inc de                                        ; $5944: $13
    ld b, l                                       ; $5945: $45
    jr nz, jr_060_5960                            ; $5946: $20 $18

    ld a, [c]                                     ; $5948: $f2
    ld a, [hl]                                    ; $5949: $7e
    ld bc, $5c07                                  ; $594a: $01 $07 $5c
    and [hl]                                      ; $594d: $a6
    inc l                                         ; $594e: $2c
    add sp, $1c                                   ; $594f: $e8 $1c
    jr z, jr_060_5938                             ; $5951: $28 $e5

    ld e, c                                       ; $5953: $59
    jp z, $b297                                   ; $5954: $ca $97 $b2

    rlca                                          ; $5957: $07
    ld a, b                                       ; $5958: $78
    ld l, $e6                                     ; $5959: $2e $e6
    xor c                                         ; $595b: $a9
    add b                                         ; $595c: $80
    ld c, $89                                     ; $595d: $0e $89
    rst $30                                       ; $595f: $f7

jr_060_5960:
    dec bc                                        ; $5960: $0b
    sub a                                         ; $5961: $97
    ld e, d                                       ; $5962: $5a
    ret nc                                        ; $5963: $d0

    add hl, sp                                    ; $5964: $39
    call nc, Call_000_02a7                        ; $5965: $d4 $a7 $02
    ld a, [hl-]                                   ; $5968: $3a
    inc h                                         ; $5969: $24
    sbc d                                         ; $596a: $9a
    rla                                           ; $596b: $17
    add l                                         ; $596c: $85
    call c, $45e7                                 ; $596d: $dc $e7 $45
    call Call_000_2c7d                            ; $5970: $cd $7d $2c
    ld e, a                                       ; $5973: $5f
    jp z, $fa18                                   ; $5974: $ca $18 $fa

    ld l, $4e                                     ; $5977: $2e $4e
    ld c, l                                       ; $5979: $4d
    inc d                                         ; $597a: $14
    add c                                         ; $597b: $81
    ld h, b                                       ; $597c: $60
    ret z                                         ; $597d: $c8

    ld [hl], e                                    ; $597e: $73
    ld e, [hl]                                    ; $597f: $5e
    rlca                                          ; $5980: $07
    ld e, h                                       ; $5981: $5c
    ld d, $43                                     ; $5982: $16 $43
    rst $28                                       ; $5984: $ef
    ld e, [hl]                                    ; $5985: $5e
    ld c, h                                       ; $5986: $4c
    ld c, c                                       ; $5987: $49
    rst $08                                       ; $5988: $cf
    cp h                                          ; $5989: $bc
    rst $00                                       ; $598a: $c7
    push bc                                       ; $598b: $c5
    cp h                                          ; $598c: $bc
    ld c, d                                       ; $598d: $4a
    db $ed                                        ; $598e: $ed
    db $dd                                        ; $598f: $dd
    inc hl                                        ; $5990: $23
    push af                                       ; $5991: $f5
    ld e, d                                       ; $5992: $5a
    ld e, e                                       ; $5993: $5b
    call nc, Call_060_5ee2                        ; $5994: $d4 $e2 $5e
    ld c, l                                       ; $5997: $4d
    dec de                                        ; $5998: $1b
    add hl, de                                    ; $5999: $19
    ld b, e                                       ; $599a: $43
    dec e                                         ; $599b: $1d
    jr z, @-$19                                   ; $599c: $28 $e5

    pop de                                        ; $599e: $d1
    ld e, l                                       ; $599f: $5d
    and [hl]                                      ; $59a0: $a6
    inc l                                         ; $59a1: $2c
    ret z                                         ; $59a2: $c8

    ld e, $9a                                     ; $59a3: $1e $9a
    or l                                          ; $59a5: $b5
    cp a                                          ; $59a6: $bf
    db $ed                                        ; $59a7: $ed
    pop af                                        ; $59a8: $f1
    rst $00                                       ; $59a9: $c7
    add hl, sp                                    ; $59aa: $39
    add a                                         ; $59ab: $87
    and $73                                       ; $59ac: $e6 $73
    ld e, [hl]                                    ; $59ae: $5e
    rlca                                          ; $59af: $07
    sbc e                                         ; $59b0: $9b
    ld d, l                                       ; $59b1: $55
    ld a, c                                       ; $59b2: $79
    ld c, d                                       ; $59b3: $4a
    rla                                           ; $59b4: $17
    pop af                                        ; $59b5: $f1
    ld d, b                                       ; $59b6: $50
    ld e, a                                       ; $59b7: $5f
    ld b, h                                       ; $59b8: $44
    call $bbca                                    ; $59b9: $cd $ca $bb
    rst $28                                       ; $59bc: $ef
    ld a, e                                       ; $59bd: $7b
    add l                                         ; $59be: $85
    sbc d                                         ; $59bf: $9a
    sbc $03                                       ; $59c0: $de $03
    ld h, l                                       ; $59c2: $65
    sub [hl]                                      ; $59c3: $96
    ld sp, $e2dd                                  ; $59c4: $31 $dd $e2
    jp z, $efbe                                   ; $59c7: $ca $be $ef

    ei                                            ; $59ca: $fb
    dec b                                         ; $59cb: $05
    db $ed                                        ; $59cc: $ed
    ld sp, $6574                                  ; $59cd: $31 $74 $65
    add hl, de                                    ; $59d0: $19
    db $d3                                        ; $59d1: $d3
    dec l                                         ; $59d2: $2d
    xor [hl]                                      ; $59d3: $ae
    db $ec                                        ; $59d4: $ec
    ld [hl], e                                    ; $59d5: $73
    ld e, [hl]                                    ; $59d6: $5e
    ld l, l                                       ; $59d7: $6d
    adc $a9                                       ; $59d8: $ce $a9
    cpl                                           ; $59da: $2f
    adc e                                         ; $59db: $8b
    add hl, hl                                    ; $59dc: $29
    jp hl                                         ; $59dd: $e9


    ld [hl], c                                    ; $59de: $71
    ld d, d                                       ; $59df: $52
    call nc, $0860                                ; $59e0: $d4 $60 $08
    or l                                          ; $59e3: $b5
    ld a, d                                       ; $59e4: $7a
    ld a, [hl+]                                   ; $59e5: $2a
    ld h, h                                       ; $59e6: $64
    ld [bc], a                                    ; $59e7: $02
    add [hl]                                      ; $59e8: $86
    ld [hl], h                                    ; $59e9: $74
    xor $be                                       ; $59ea: $ee $be
    rst $28                                       ; $59ec: $ef
    ld e, c                                       ; $59ed: $59
    ld [$10c8], a                                 ; $59ee: $ea $c8 $10
    dec de                                        ; $59f1: $1b
    and a                                         ; $59f2: $a7
    cp [hl]                                       ; $59f3: $be
    xor h                                         ; $59f4: $ac
    pop hl                                        ; $59f5: $e1
    and d                                         ; $59f6: $a2
    ld de, $3ef4                                  ; $59f7: $11 $f4 $3e
    xor a                                         ; $59fa: $af
    pop de                                        ; $59fb: $d1
    ld a, a                                       ; $59fc: $7f
    sub h                                         ; $59fd: $94
    sbc [hl]                                      ; $59fe: $9e
    inc [hl]                                      ; $59ff: $34
    ld [hl], e                                    ; $5a00: $73
    rst $08                                       ; $5a01: $cf
    sub a                                         ; $5a02: $97
    dec a                                         ; $5a03: $3d
    jr nz, jr_060_5a5e                            ; $5a04: $20 $58

    ld a, c                                       ; $5a06: $79
    or c                                          ; $5a07: $b1
    add l                                         ; $5a08: $85
    sbc l                                         ; $5a09: $9d
    ld b, e                                       ; $5a0a: $43
    di                                            ; $5a0b: $f3
    db $fd                                        ; $5a0c: $fd

jr_060_5a0d:
    ld [bc], a                                    ; $5a0d: $02
    rlca                                          ; $5a0e: $07
    sbc e                                         ; $5a0f: $9b
    ld d, l                                       ; $5a10: $55
    ld a, c                                       ; $5a11: $79
    ld [$50cb], a                                 ; $5a12: $ea $cb $50
    ld e, a                                       ; $5a15: $5f
    inc b                                         ; $5a16: $04
    add d                                         ; $5a17: $82
    sbc [hl]                                      ; $5a18: $9e
    add h                                         ; $5a19: $84
    ld h, d                                       ; $5a1a: $62
    ld e, $43                                     ; $5a1b: $1e $43
    rst $18                                       ; $5a1d: $df
    rst $20                                       ; $5a1e: $e7
    sub c                                         ; $5a1f: $91
    and c                                         ; $5a20: $a1
    and e                                         ; $5a21: $a3
    add a                                         ; $5a22: $87
    and $35                                       ; $5a23: $e6 $35
    adc h                                         ; $5a25: $8c
    jp hl                                         ; $5a26: $e9


    ld b, l                                       ; $5a27: $45
    cp a                                          ; $5a28: $bf
    ld a, [c]                                     ; $5a29: $f2
    db $fd                                        ; $5a2a: $fd
    ld [bc], a                                    ; $5a2b: $02
    db $ed                                        ; $5a2c: $ed
    pop af                                        ; $5a2d: $f1
    rst $00                                       ; $5a2e: $c7
    ld sp, $9445                                  ; $5a2f: $31 $45 $94
    ld [hl], e                                    ; $5a32: $73
    xor b                                         ; $5a33: $a8
    xor a                                         ; $5a34: $af
    push de                                       ; $5a35: $d5
    inc a                                         ; $5a36: $3c
    rst $20                                       ; $5a37: $e7
    dec b                                         ; $5a38: $05
    rla                                           ; $5a39: $17
    ld a, [c]                                     ; $5a3a: $f2
    jp z, Jump_000_1e7f                           ; $5a3b: $ca $7f $1e

    ld [hl], a                                    ; $5a3e: $77
    ld e, [hl]                                    ; $5a3f: $5e
    ld d, l                                       ; $5a40: $55
    and c                                         ; $5a41: $a1
    cp e                                          ; $5a42: $bb
    halt                                          ; $5a43: $76
    ld l, b                                       ; $5a44: $68
    push de                                       ; $5a45: $d5
    push bc                                       ; $5a46: $c5
    ret nc                                        ; $5a47: $d0

    cp e                                          ; $5a48: $bb
    rla                                           ; $5a49: $17
    ld d, e                                       ; $5a4a: $53
    jp nc, $f1d3                                  ; $5a4b: $d2 $d3 $f1

    and c                                         ; $5a4e: $a1
    and h                                         ; $5a4f: $a4
    ld [hl-], a                                   ; $5a50: $32
    rst $18                                       ; $5a51: $df
    cpl                                           ; $5a52: $2f
    add a                                         ; $5a53: $87
    sbc d                                         ; $5a54: $9a
    ld hl, sp+$65                                 ; $5a55: $f8 $65
    and $91                                       ; $5a57: $e6 $91
    ccf                                           ; $5a59: $3f
    ld b, a                                       ; $5a5a: $47
    ld [hl], a                                    ; $5a5b: $77
    reti                                          ; $5a5c: $d9


    rst $28                                       ; $5a5d: $ef

jr_060_5a5e:
    db $dd                                        ; $5a5e: $dd
    ld l, c                                       ; $5a5f: $69
    or h                                          ; $5a60: $b4
    or $17                                        ; $5a61: $f6 $17
    db $ed                                        ; $5a63: $ed
    adc $0e                                       ; $5a64: $ce $0e
    add l                                         ; $5a66: $85
    or l                                          ; $5a67: $b5
    xor a                                         ; $5a68: $af
    call $aabc                                    ; $5a69: $cd $bc $aa
    ld a, [hl]                                    ; $5a6c: $7e
    sbc a                                         ; $5a6d: $9f
    inc b                                         ; $5a6e: $04
    dec [hl]                                      ; $5a6f: $35
    ld [hl-], a                                   ; $5a70: $32
    ld [hl], h                                    ; $5a71: $74
    db $f4                                        ; $5a72: $f4
    ld e, $f7                                     ; $5a73: $1e $f7
    jr nz, jr_060_5a0d                            ; $5a75: $20 $96

    or l                                          ; $5a77: $b5
    sbc d                                         ; $5a78: $9a
    ld l, e                                       ; $5a79: $6b
    push af                                       ; $5a7a: $f5
    adc a                                         ; $5a7b: $8f
    ld d, l                                       ; $5a7c: $55
    ei                                            ; $5a7d: $fb
    ld d, h                                       ; $5a7e: $54
    ld b, b                                       ; $5a7f: $40
    add a                                         ; $5a80: $87
    ld b, h                                       ; $5a81: $44
    di                                            ; $5a82: $f3
    sbc h                                         ; $5a83: $9c
    dec sp                                        ; $5a84: $3b
    ld a, [c]                                     ; $5a85: $f2
    add d                                         ; $5a86: $82
    rst $18                                       ; $5a87: $df
    jp nc, Jump_060_6d79                          ; $5a88: $d2 $79 $6d

    ld sp, hl                                     ; $5a8b: $f9
    adc c                                         ; $5a8c: $89
    ld b, $81                                     ; $5a8d: $06 $81
    ld a, d                                       ; $5a8f: $7a
    db $e4                                        ; $5a90: $e4
    cp l                                          ; $5a91: $bd
    db $eb                                        ; $5a92: $eb
    ld h, b                                       ; $5a93: $60
    push de                                       ; $5a94: $d5
    ld [hl], l                                    ; $5a95: $75
    push de                                       ; $5a96: $d5
    ld [c], a                                     ; $5a97: $e2
    or h                                          ; $5a98: $b4
    or $17                                        ; $5a99: $f6 $17
    db $ed                                        ; $5a9b: $ed
    ld [hl], c                                    ; $5a9c: $71
    ret z                                         ; $5a9d: $c8

    ld b, l                                       ; $5a9e: $45
    jr nz, @-$16                                  ; $5a9f: $20 $e8

    inc e                                         ; $5aa1: $1c
    db $dd                                        ; $5aa2: $dd
    ld h, l                                       ; $5aa3: $65

jr_060_5aa4:
    or l                                          ; $5aa4: $b5
    adc c                                         ; $5aa5: $89
    ld e, a                                       ; $5aa6: $5f
    ld h, [hl]                                    ; $5aa7: $66
    ld a, $e7                                     ; $5aa8: $3e $e7
    dec b                                         ; $5aaa: $05
    rlca                                          ; $5aab: $07
    ld e, h                                       ; $5aac: $5c
    add $19                                       ; $5aad: $c6 $19
    ld [hl], d                                    ; $5aaf: $72
    sbc a                                         ; $5ab0: $9f
    ld b, a                                       ; $5ab1: $47
    ld [hl], a                                    ; $5ab2: $77
    ld e, c                                       ; $5ab3: $59
    ld l, l                                       ; $5ab4: $6d
    adc $3c                                       ; $5ab5: $ce $3c
    jr jr_060_5ac1                                ; $5ab7: $18 $08

    sub [hl]                                      ; $5ab9: $96
    cpl                                           ; $5aba: $2f
    and l                                         ; $5abb: $a5
    sub d                                         ; $5abc: $92
    cp a                                          ; $5abd: $bf
    ld [hl], a                                    ; $5abe: $77
    set 7, l                                      ; $5abf: $cb $fd

jr_060_5ac1:
    ld [bc], a                                    ; $5ac1: $02
    rla                                           ; $5ac2: $17
    and $d0                                       ; $5ac3: $e6 $d0
    cp h                                          ; $5ac5: $bc
    jp c, Jump_000_2fc4                           ; $5ac6: $da $c4 $2f

    inc sp                                        ; $5ac9: $33
    xor a                                         ; $5aca: $af
    halt                                          ; $5acb: $76

jr_060_5acc:
    ld l, b                                       ; $5acc: $68
    push de                                       ; $5acd: $d5
    and c                                         ; $5ace: $a1
    cp [hl]                                       ; $5acf: $be
    jr jr_060_5acc                                ; $5ad0: $18 $fa

    ret z                                         ; $5ad2: $c8

    rra                                           ; $5ad3: $1f
    ei                                            ; $5ad4: $fb
    sbc h                                         ; $5ad5: $9c
    rla                                           ; $5ad6: $17
    rlca                                          ; $5ad7: $07
    ld e, h                                       ; $5ad8: $5c
    and [hl]                                      ; $5ad9: $a6
    ld [hl], h                                    ; $5ada: $74
    ld de, $940f                                  ; $5adb: $11 $0f $94
    ld a, [c]                                     ; $5ade: $f2
    ld [hl+], a                                   ; $5adf: $22
    db $10                                        ; $5ae0: $10
    db $f4                                        ; $5ae1: $f4
    inc h                                         ; $5ae2: $24
    inc d                                         ; $5ae3: $14
    di                                            ; $5ae4: $f3
    db $fd                                        ; $5ae5: $fd
    ld [bc], a                                    ; $5ae6: $02
    add a                                         ; $5ae7: $87
    sbc d                                         ; $5ae8: $9a
    ld b, e                                       ; $5ae9: $43
    ld a, l                                       ; $5aea: $7d
    adc [hl]                                      ; $5aeb: $8e
    ret c                                         ; $5aec: $d8

    add hl, sp                                    ; $5aed: $39
    jr jr_060_5af8                                ; $5aee: $18 $08

    sub [hl]                                      ; $5af0: $96
    cpl                                           ; $5af1: $2f
    and l                                         ; $5af2: $a5
    sub d                                         ; $5af3: $92
    cp a                                          ; $5af4: $bf
    ld [hl], a                                    ; $5af5: $77
    srl c                                         ; $5af6: $cb $39

jr_060_5af8:
    dec sp                                        ; $5af8: $3b
    ldh [$32], a                                  ; $5af9: $e0 $32
    adc $90                                       ; $5afb: $ce $90
    ei                                            ; $5afd: $fb
    inc a                                         ; $5afe: $3c
    set 1, d                                      ; $5aff: $cb $ca
    rst $08                                       ; $5b01: $cf
    ld [de], a                                    ; $5b02: $12
    and b                                         ; $5b03: $a0
    cpl                                           ; $5b04: $2f
    cp $39                                        ; $5b05: $fe $39
    adc b                                         ; $5b07: $88
    xor b                                         ; $5b08: $a8
    ret                                           ; $5b09: $c9


    sub e                                         ; $5b0a: $93
    ld d, b                                       ; $5b0b: $50
    call z, $a1b4                                 ; $5b0c: $cc $b4 $a1
    ld [hl], e                                    ; $5b0f: $73
    jr nc, jr_060_5aa4                            ; $5b10: $30 $92

    ld c, d                                       ; $5b12: $4a
    ld e, a                                       ; $5b13: $5f
    ret                                           ; $5b14: $c9


    adc a                                         ; $5b15: $8f
    db $eb                                        ; $5b16: $eb
    ld d, b                                       ; $5b17: $50
    call nz, $f339                                ; $5b18: $c4 $39 $f3
    ld l, d                                       ; $5b1b: $6a
    add a                                         ; $5b1c: $87
    ld d, [hl]                                    ; $5b1d: $56
    cp l                                          ; $5b1e: $bd
    ld [hl], a                                    ; $5b1f: $77
    or b                                          ; $5b20: $b0
    ld e, c                                       ; $5b21: $59
    sub l                                         ; $5b22: $95
    ld d, a                                       ; $5b23: $57
    push de                                       ; $5b24: $d5
    rst $28                                       ; $5b25: $ef
    ld b, e                                       ; $5b26: $43
    ld a, l                                       ; $5b27: $7d
    ld a, [bc]                                    ; $5b28: $0a
    ld c, d                                       ; $5b29: $4a
    pop af                                        ; $5b2a: $f1
    inc l                                         ; $5b2b: $2c
    dec hl                                        ; $5b2c: $2b
    ld e, a                                       ; $5b2d: $5f
    jp z, $a71e                                   ; $5b2e: $ca $1e $a7

jr_060_5b31:
    rst $28                                       ; $5b31: $ef
    rla                                           ; $5b32: $17
    db $ed                                        ; $5b33: $ed
    pop af                                        ; $5b34: $f1
    rst $00                                       ; $5b35: $c7
    add hl, sp                                    ; $5b36: $39
    ld h, a                                       ; $5b37: $67
    sbc [hl]                                      ; $5b38: $9e
    ld a, [bc]                                    ; $5b39: $0a
    add sp, -$70                                  ; $5b3a: $e8 $90
    ld a, b                                       ; $5b3c: $78
    adc $0b                                       ; $5b3d: $ce $0b
    rlca                                          ; $5b3f: $07
    ld e, h                                       ; $5b40: $5c
    and [hl]                                      ; $5b41: $a6
    inc l                                         ; $5b42: $2c
    add sp, -$24                                  ; $5b43: $e8 $dc
    inc bc                                        ; $5b45: $03
    ld c, h                                       ; $5b46: $4c

jr_060_5b47:
    db $db                                        ; $5b47: $db
    ld h, e                                       ; $5b48: $63
    add hl, de                                    ; $5b49: $19
    jr z, jr_060_5b31                             ; $5b4a: $28 $e5

    ld hl, $fdf0                                  ; $5b4c: $21 $f0 $fd
    ld [bc], a                                    ; $5b4f: $02
    sub a                                         ; $5b50: $97
    sbc e                                         ; $5b51: $9b
    ld c, [hl]                                    ; $5b52: $4e
    ld e, e                                       ; $5b53: $5b
    jp $ffaa                                      ; $5b54: $c3 $aa $ff


    ld [c], a                                     ; $5b57: $e2
    cp h                                          ; $5b58: $bc
    ld e, a                                       ; $5b59: $5f
    ld l, l                                       ; $5b5a: $6d
    and $91                                       ; $5b5b: $e6 $91
    ccf                                           ; $5b5d: $3f
    ld b, a                                       ; $5b5e: $47
    ld [hl], a                                    ; $5b5f: $77
    add hl, de                                    ; $5b60: $19
    ld c, b                                       ; $5b61: $48
    or c                                          ; $5b62: $b1
    db $ec                                        ; $5b63: $ec
    adc e                                         ; $5b64: $8b
    ld a, e                                       ; $5b65: $7b
    push af                                       ; $5b66: $f5
    jp nz, $bf73                                  ; $5b67: $c2 $73 $bf

    ld d, a                                       ; $5b6a: $57
    ld h, $35                                     ; $5b6b: $26 $35
    sbc $63                                       ; $5b6d: $de $63
    call c, Call_060_5f91                         ; $5b6f: $dc $91 $5f
    ret nc                                        ; $5b72: $d0

    sub d                                         ; $5b73: $92
    ld e, a                                       ; $5b74: $5f
    ld c, d                                       ; $5b75: $4a
    dec a                                         ; $5b76: $3d
    ld a, [c]                                     ; $5b77: $f2
    ld e, [hl]                                    ; $5b78: $5e
    sbc e                                         ; $5b79: $9b
    ld a, c                                       ; $5b7a: $79
    xor l                                         ; $5b7b: $ad
    ld e, a                                       ; $5b7c: $5f
    xor e                                         ; $5b7d: $ab
    ld [hl], e                                    ; $5b7e: $73
    jr nc, jr_060_5bb3                            ; $5b7f: $30 $32

    halt                                          ; $5b81: $76
    ld a, [c]                                     ; $5b82: $f2
    and d                                         ; $5b83: $a2
    rst $18                                       ; $5b84: $df
    ld [hl], c                                    ; $5b85: $71
    and l                                         ; $5b86: $a5
    jp $1693                                      ; $5b87: $c3 $93 $16


    db $f4                                        ; $5b8a: $f4
    db $fd                                        ; $5b8b: $fd
    ld [bc], a                                    ; $5b8c: $02
    rst $20                                       ; $5b8d: $e7
    adc c                                         ; $5b8e: $89
    ld [hl], e                                    ; $5b8f: $73
    ld l, b                                       ; $5b90: $68
    ld e, $28                                     ; $5b91: $1e $28
    push hl                                       ; $5b93: $e5
    ei                                            ; $5b94: $fb
    dec b                                         ; $5b95: $05
    ld l, l                                       ; $5b96: $6d
    ccf                                           ; $5b97: $3f
    xor [hl]                                      ; $5b98: $ae
    add e                                         ; $5b99: $83
    ld h, d                                       ; $5b9a: $62
    cp c                                          ; $5b9b: $b9
    ld e, a                                       ; $5b9c: $5f
    rla                                           ; $5b9d: $17
    db $fc                                        ; $5b9e: $fc
    sub [hl]                                      ; $5b9f: $96
    adc $6b                                       ; $5ba0: $ce $6b
    bit 1, a                                      ; $5ba2: $cb $4f
    inc [hl]                                      ; $5ba4: $34
    ld [$ed54], sp                                ; $5ba5: $08 $54 $ed
    cpl                                           ; $5ba8: $2f
    rst $10                                       ; $5ba9: $d7
    cp c                                          ; $5baa: $b9
    xor e                                         ; $5bab: $ab
    ldh a, [$3c]                                  ; $5bac: $f0 $3c
    sub [hl]                                      ; $5bae: $96
    ld sp, $5df4                                  ; $5baf: $31 $f4 $5d
    sbc h                                         ; $5bb2: $9c

jr_060_5bb3:
    sbc d                                         ; $5bb3: $9a
    jr z, jr_060_5bb8                             ; $5bb4: $28 $02

    pop bc                                        ; $5bb6: $c1
    sub b                                         ; $5bb7: $90

jr_060_5bb8:
    or h                                          ; $5bb8: $b4
    dec a                                         ; $5bb9: $3d
    jr nz, jr_060_5b47                            ; $5bba: $20 $8b

    dec l                                         ; $5bbc: $2d
    rst $30                                       ; $5bbd: $f7
    ld l, $0d                                     ; $5bbe: $2e $0d

jr_060_5bc0:
    rst $08                                       ; $5bc0: $cf
    ld b, b                                       ; $5bc1: $40
    ret nc                                        ; $5bc2: $d0

    ld [de], a                                    ; $5bc3: $12
    add l                                         ; $5bc4: $85
    cp h                                          ; $5bc5: $bc
    ld e, a                                       ; $5bc6: $5f
    ld l, l                                       ; $5bc7: $6d
    ccf                                           ; $5bc8: $3f
    xor [hl]                                      ; $5bc9: $ae
    rst $30                                       ; $5bca: $f7
    dec bc                                        ; $5bcb: $0b
    rst $10                                       ; $5bcc: $d7
    cp c                                          ; $5bcd: $b9
    xor e                                         ; $5bce: $ab
    ldh a, [$3c]                                  ; $5bcf: $f0 $3c
    sub [hl]                                      ; $5bd1: $96
    ld sp, $5df4                                  ; $5bd2: $31 $f4 $5d
    sbc h                                         ; $5bd5: $9c
    sbc d                                         ; $5bd6: $9a
    jr z, jr_060_5bdb                             ; $5bd7: $28 $02

    pop bc                                        ; $5bd9: $c1
    sub b                                         ; $5bda: $90

jr_060_5bdb:
    ld d, e                                       ; $5bdb: $53
    and c                                         ; $5bdc: $a1
    ld [hl], a                                    ; $5bdd: $77
    rla                                           ; $5bde: $17
    jr nc, jr_060_5bc0                            ; $5bdf: $30 $df

    cp e                                          ; $5be1: $bb
    inc [hl]                                      ; $5be2: $34
    inc a                                         ; $5be3: $3c
    inc bc                                        ; $5be4: $03
    ld b, c                                       ; $5be5: $41
    ld c, e                                       ; $5be6: $4b
    inc d                                         ; $5be7: $14
    sub d                                         ; $5be8: $92
    or [hl]                                       ; $5be9: $b6
    rlca                                          ; $5bea: $07
    ld h, h                                       ; $5beb: $64
    or c                                          ; $5bec: $b1
    push hl                                       ; $5bed: $e5
    ld a, [hl]                                    ; $5bee: $7e
    ld bc, $7717                                  ; $5bef: $01 $17 $77
    ccf                                           ; $5bf2: $3f
    ld b, e                                       ; $5bf3: $43
    di                                            ; $5bf4: $f3
    ld b, h                                       ; $5bf5: $44
    rra                                           ; $5bf6: $1f
    jr z, jr_060_5c5e                             ; $5bf7: $28 $65

    db $ed                                        ; $5bf9: $ed
    cp e                                          ; $5bfa: $bb
    inc [hl]                                      ; $5bfb: $34
    and b                                         ; $5bfc: $a0
    ld b, e                                       ; $5bfd: $43
    and d                                         ; $5bfe: $a2
    ld a, c                                       ; $5bff: $79
    adc $1d                                       ; $5c00: $ce $1d
    ld a, c                                       ; $5c02: $79
    pop bc                                        ; $5c03: $c1
    ld l, a                                       ; $5c04: $6f
    jp hl                                         ; $5c05: $e9


    cp h                                          ; $5c06: $bc
    or [hl]                                       ; $5c07: $b6
    db $fc                                        ; $5c08: $fc
    ld b, h                                       ; $5c09: $44
    add e                                         ; $5c0a: $83
    ld b, b                                       ; $5c0b: $40
    dec a                                         ; $5c0c: $3d
    ld a, [c]                                     ; $5c0d: $f2
    ld a, [hl]                                    ; $5c0e: $7e
    ld bc, $8697                                  ; $5c0f: $01 $97 $86
    ld h, a                                       ; $5c12: $67
    jr nz, jr_060_5c5d                            ; $5c13: $20 $48

    db $db                                        ; $5c15: $db
    inc bc                                        ; $5c16: $03
    or d                                          ; $5c17: $b2
    ret c                                         ; $5c18: $d8

    ld [hl], d                                    ; $5c19: $72
    cp a                                          ; $5c1a: $bf
    rst $10                                       ; $5c1b: $d7
    cp c                                          ; $5c1c: $b9
    xor e                                         ; $5c1d: $ab
    ldh a, [$3c]                                  ; $5c1e: $f0 $3c
    sub [hl]                                      ; $5c20: $96
    ld sp, $5df4                                  ; $5c21: $31 $f4 $5d
    sbc h                                         ; $5c24: $9c
    sbc d                                         ; $5c25: $9a
    jr z, jr_060_5c2a                             ; $5c26: $28 $02

    pop bc                                        ; $5c28: $c1
    sub b                                         ; $5c29: $90

jr_060_5c2a:
    or h                                          ; $5c2a: $b4
    or l                                          ; $5c2b: $b5
    rst $38                                       ; $5c2c: $ff
    ld c, h                                       ; $5c2d: $4c
    adc l                                         ; $5c2e: $8d
    or $1d                                        ; $5c2f: $f6 $1d
    ld a, [c]                                     ; $5c31: $f2
    db $10                                        ; $5c32: $10
    jp z, $a3c2                                   ; $5c33: $ca $c2 $a3

    ld [de], a                                    ; $5c36: $12
    and h                                         ; $5c37: $a4
    call c, Call_000_072f                         ; $5c38: $dc $2f $07
    ld e, h                                       ; $5c3b: $5c
    and $5c                                       ; $5c3c: $e6 $5c
    jp hl                                         ; $5c3e: $e9


    rra                                           ; $5c3f: $1f
    rla                                           ; $5c40: $17
    add l                                         ; $5c41: $85
    sbc h                                         ; $5c42: $9c
    dec b                                         ; $5c43: $05
    db $dd                                        ; $5c44: $dd
    and c                                         ; $5c45: $a1
    db $ec                                        ; $5c46: $ec
    di                                            ; $5c47: $f3
    ld h, d                                       ; $5c48: $62
    ld c, d                                       ; $5c49: $4a
    ld a, d                                       ; $5c4a: $7a
    and h                                         ; $5c4b: $a4
    di                                            ; $5c4c: $f3
    ld a, [hl]                                    ; $5c4d: $7e
    ld bc, $71ed                                  ; $5c4e: $01 $ed $71
    ret z                                         ; $5c51: $c8

    ld d, l                                       ; $5c52: $55
    push af                                       ; $5c53: $f5
    ei                                            ; $5c54: $fb
    ld d, b                                       ; $5c55: $50
    rra                                           ; $5c56: $1f
    ld l, c                                       ; $5c57: $69
    add hl, sp                                    ; $5c58: $39
    ld h, a                                       ; $5c59: $67
    ld d, a                                       ; $5c5a: $57
    ld b, d                                       ; $5c5b: $42
    ld [hl], c                                    ; $5c5c: $71

jr_060_5c5d:
    adc d                                         ; $5c5d: $8a

jr_060_5c5e:
    db $eb                                        ; $5c5e: $eb
    ld l, d                                       ; $5c5f: $6a
    adc b                                         ; $5c60: $88
    ld e, l                                       ; $5c61: $5d
    ld a, a                                       ; $5c62: $7f
    rst $30                                       ; $5c63: $f7
    ld a, [hl-]                                   ; $5c64: $3a
    sub h                                         ; $5c65: $94
    ld [c], a                                     ; $5c66: $e2
    inc e                                         ; $5c67: $1c
    ld a, [hl-]                                   ; $5c68: $3a
    ld b, c                                       ; $5c69: $41
    ret nc                                        ; $5c6a: $d0

    jp c, $96d7                                   ; $5c6b: $da $d7 $96

    sub [hl]                                      ; $5c6e: $96
    ld [c], a                                     ; $5c6f: $e2
    sub c                                         ; $5c70: $91
    ccf                                           ; $5c71: $3f
    ld [hl], a                                    ; $5c72: $77
    ret                                           ; $5c73: $c9


Jump_060_5c74:
    push hl                                       ; $5c74: $e5
    rla                                           ; $5c75: $17
    ld e, a                                       ; $5c76: $5f
    ld a, b                                       ; $5c77: $78
    ld sp, hl                                     ; $5c78: $f9
    adc $6b                                       ; $5c79: $ce $6b
    cp e                                          ; $5c7b: $bb
    ld hl, sp-$44                                 ; $5c7c: $f8 $bc
    sra a                                         ; $5c7e: $cb $2f
    sub $fe                                       ; $5c80: $d6 $fe
    ld [bc], a                                    ; $5c82: $02
    db $ed                                        ; $5c83: $ed
    ld a, d                                       ; $5c84: $7a
    ld d, l                                       ; $5c85: $55
    ei                                            ; $5c86: $fb
    sbc l                                         ; $5c87: $9d
    ld bc, $79f7                                  ; $5c88: $01 $f7 $79
    ld c, h                                       ; $5c8b: $4c
    or a                                          ; $5c8c: $b7
    ld d, d                                       ; $5c8d: $52
    sbc $63                                       ; $5c8e: $de $63
    ld b, h                                       ; $5c90: $44
    ld [hl], a                                    ; $5c91: $77
    rst $30                                       ; $5c92: $f7
    ld [$3fca], a                                 ; $5c93: $ea $ca $3f
    xor $96                                       ; $5c96: $ee $96
    ei                                            ; $5c98: $fb
    dec b                                         ; $5c99: $05
    ld l, l                                       ; $5c9a: $6d
    ld a, [$97d4]                                 ; $5c9b: $fa $d4 $97
    ld b, l                                       ; $5c9e: $45
    call Call_060_7e35                            ; $5c9f: $cd $35 $7e
    rst $28                                       ; $5ca2: $ef
    rra                                           ; $5ca3: $1f
    dec a                                         ; $5ca4: $3d
    ld [hl-], a                                   ; $5ca5: $32
    add [hl]                                      ; $5ca6: $86
    ld a, [hl-]                                   ; $5ca7: $3a
    call nc, $8517                                ; $5ca8: $d4 $17 $85
    db $ec                                        ; $5cab: $ec
    rra                                           ; $5cac: $1f
    sbc l                                         ; $5cad: $9d
    cp e                                          ; $5cae: $bb
    jr c, @+$37                                   ; $5caf: $38 $35

    ld d, c                                       ; $5cb1: $51
    inc b                                         ; $5cb2: $04
    add d                                         ; $5cb3: $82
    ld hl, $9e17                                  ; $5cb4: $21 $17 $9e
    ret                                           ; $5cb7: $c9


    ld h, a                                       ; $5cb8: $67
    or [hl]                                       ; $5cb9: $b6
    db $ec                                        ; $5cba: $ec
    cp [hl]                                       ; $5cbb: $be
    rst $28                                       ; $5cbc: $ef
    dec a                                         ; $5cbd: $3d
    sub [hl]                                      ; $5cbe: $96
    add hl, hl                                    ; $5cbf: $29
    ld e, l                                       ; $5cc0: $5d
    ld b, [hl]                                    ; $5cc1: $46
    add $50                                       ; $5cc2: $c6 $50
    add a                                         ; $5cc4: $87
    ld a, [$1d1a]                                 ; $5cc5: $fa $1a $1d
    ld h, d                                       ; $5cc8: $62
    rst $20                                       ; $5cc9: $e7
    xor d                                         ; $5cca: $aa
    add sp, -$53                                  ; $5ccb: $e8 $ad
    sub [hl]                                      ; $5ccd: $96
    ld sp, hl                                     ; $5cce: $f9
    ld a, [hl]                                    ; $5ccf: $7e
    ld bc, $5c07                                  ; $5cd0: $01 $07 $5c
    ld b, [hl]                                    ; $5cd3: $46
    ld [hl], $1b                                  ; $5cd4: $36 $1b
    adc $7d                                       ; $5cd6: $ce $7d
    ld e, [hl]                                    ; $5cd8: $5e
    inc c                                         ; $5cd9: $0c
    adc e                                         ; $5cda: $8b
    ld b, c                                       ; $5cdb: $41
    ret nc                                        ; $5cdc: $d0

    add hl, sp                                    ; $5cdd: $39
    dec d                                         ; $5cde: $15
    ld a, d                                       ; $5cdf: $7a
    ld [hl], a                                    ; $5ce0: $77
    ld bc, $82b7                                  ; $5ce1: $01 $b7 $82
    ld a, [$32dd]                                 ; $5ce4: $fa $dd $32
    ld e, b                                       ; $5ce7: $58
    inc sp                                        ; $5ce8: $33
    rst $28                                       ; $5ce9: $ef
    dec e                                         ; $5cea: $1d
    ld [$261a], a                                 ; $5ceb: $ea $1a $26

jr_060_5cee:
    sbc l                                         ; $5cee: $9d
    jr nz, jr_060_5d14                            ; $5cef: $20 $23

    ld a, a                                       ; $5cf1: $7f
    ld l, $d6                                     ; $5cf2: $2e $d6
    dec b                                         ; $5cf4: $05
    call $cb43                                    ; $5cf5: $cd $43 $cb
    xor d                                         ; $5cf8: $aa
    ld d, l                                       ; $5cf9: $55
    ld e, l                                       ; $5cfa: $5d
    inc sp                                        ; $5cfb: $33
    rlca                                          ; $5cfc: $07
    db $e3                                        ; $5cfd: $e3
    and h                                         ; $5cfe: $a4
    jr z, jr_060_5cee                             ; $5cff: $28 $ed

    cpl                                           ; $5d01: $2f
    rlca                                          ; $5d02: $07
    cp a                                          ; $5d03: $bf
    ld c, h                                       ; $5d04: $4c
    ld a, l                                       ; $5d05: $7d
    reti                                          ; $5d06: $d9


    rst $28                                       ; $5d07: $ef
    inc c                                         ; $5d08: $0c
    cp b                                          ; $5d09: $b8
    ld [$7191], a                                 ; $5d0a: $ea $91 $71
    ld c, b                                       ; $5d0d: $48
    db $fc                                        ; $5d0e: $fc
    or d                                          ; $5d0f: $b2
    jp z, $3bd0                                   ; $5d10: $ca $d0 $3b

    ld c, b                                       ; $5d13: $48

jr_060_5d14:
    or c                                          ; $5d14: $b1
    xor h                                         ; $5d15: $ac
    ld [hl], d                                    ; $5d16: $72
    inc sp                                        ; $5d17: $33
    rst $30                                       ; $5d18: $f7
    cp b                                          ; $5d19: $b8
    ld [hl], a                                    ; $5d1a: $77
    ccf                                           ; $5d1b: $3f
    ld d, e                                       ; $5d1c: $53
    and c                                         ; $5d1d: $a1
    ld [hl], a                                    ; $5d1e: $77
    rla                                           ; $5d1f: $17
    ld [hl], b                                    ; $5d20: $70
    adc d                                         ; $5d21: $8a
    daa                                           ; $5d22: $27
    ld b, [hl]                                    ; $5d23: $46
    xor a                                         ; $5d24: $af
    push de                                       ; $5d25: $d5
    inc e                                         ; $5d26: $1c
    jp $d2e3                                      ; $5d27: $c3 $e3 $d2


    ld a, a                                       ; $5d2a: $7f
    xor l                                         ; $5d2b: $ad
    and $c1                                       ; $5d2c: $e6 $c1
    ld b, b                                       ; $5d2e: $40
    or b                                          ; $5d2f: $b0
    ld a, h                                       ; $5d30: $7c
    add hl, hl                                    ; $5d31: $29
    sub l                                         ; $5d32: $95
    db $fc                                        ; $5d33: $fc
    cp l                                          ; $5d34: $bd
    ld e, e                                       ; $5d35: $5b
    xor $17                                       ; $5d36: $ee $17
    ld l, l                                       ; $5d38: $6d
    adc $55                                       ; $5d39: $ce $55
    and l                                         ; $5d3b: $a5
    rst $30                                       ; $5d3c: $f7
    xor $c5                                       ; $5d3d: $ee $c5
    sub h                                         ; $5d3f: $94
    db $f4                                        ; $5d40: $f4
    inc l                                         ; $5d41: $2c
    and e                                         ; $5d42: $a3
    ld d, h                                       ; $5d43: $54
    push hl                                       ; $5d44: $e5
    dec a                                         ; $5d45: $3d
    add $a9                                       ; $5d46: $c6 $a9
    jr nz, @+$13                                  ; $5d48: $20 $11

    ld d, h                                       ; $5d4a: $54
    push hl                                       ; $5d4b: $e5
    inc [hl]                                      ; $5d4c: $34
    ld a, d                                       ; $5d4d: $7a
    inc c                                         ; $5d4e: $0c
    ld d, d                                       ; $5d4f: $52
    ld d, $ca                                     ; $5d50: $16 $ca
    ld [$ce2f], a                                 ; $5d52: $ea $2f $ce
    or l                                          ; $5d55: $b5
    sbc d                                         ; $5d56: $9a
    db $eb                                        ; $5d57: $eb
    sub h                                         ; $5d58: $94
    ld [hl], h                                    ; $5d59: $74
    add $94                                       ; $5d5a: $c6 $94
    ld [hl], h                                    ; $5d5c: $74
    xor a                                         ; $5d5d: $af
    and $7b                                       ; $5d5e: $e6 $7b
    rlca                                          ; $5d60: $07
    ld e, h                                       ; $5d61: $5c
    add $d4                                       ; $5d62: $c6 $d4
    ld e, h                                       ; $5d64: $5c
    ld c, h                                       ; $5d65: $4c
    ld b, c                                       ; $5d66: $41
    db $f4                                        ; $5d67: $f4
    ld e, d                                       ; $5d68: $5a
    call Call_000_1e7d                            ; $5d69: $cd $7d $1e
    ld a, [hl-]                                   ; $5d6c: $3a
    rst $20                                       ; $5d6d: $e7
    sbc h                                         ; $5d6e: $9c
    add h                                         ; $5d6f: $84
    jp nc, Jump_000_12bd                          ; $5d70: $d2 $bd $12

    ret nc                                        ; $5d73: $d0

    xor e                                         ; $5d74: $ab
    cp a                                          ; $5d75: $bf
    jr c, jr_060_5d7f                             ; $5d76: $38 $07

    ld b, e                                       ; $5d78: $43
    set 7, l                                      ; $5d79: $cb $fd
    ld [bc], a                                    ; $5d7b: $02
    rst $10                                       ; $5d7c: $d7
    add l                                         ; $5d7d: $85
    ld [hl], h                                    ; $5d7e: $74

jr_060_5d7f:
    ld e, l                                       ; $5d7f: $5d
    ld b, h                                       ; $5d80: $44
    call $1eca                                    ; $5d81: $cd $ca $1e
    jp Jump_000_39e3                              ; $5d84: $c3 $e3 $39


    ld [hl], a                                    ; $5d87: $77
    ld h, c                                       ; $5d88: $61
    rlca                                          ; $5d89: $07
    ld d, l                                       ; $5d8a: $55
    ld hl, $7b9d                                  ; $5d8b: $21 $9d $7b
    adc h                                         ; $5d8e: $8c

jr_060_5d8f:
    ld l, e                                       ; $5d8f: $6b
    ld h, l                                       ; $5d90: $65
    adc b                                         ; $5d91: $88
    ld e, h                                       ; $5d92: $5c
    ld l, e                                       ; $5d93: $6b
    ret z                                         ; $5d94: $c8

    dec e                                         ; $5d95: $1d
    sub d                                         ; $5d96: $92
    rst $18                                       ; $5d97: $df
    ld a, [c]                                     ; $5d98: $f2
    xor $fb                                       ; $5d99: $ee $fb
    ld e, [hl]                                    ; $5d9b: $5e
    jr z, jr_060_5de1                             ; $5d9c: $28 $43

    ccf                                           ; $5d9e: $3f
    adc e                                         ; $5d9f: $8b
    ld a, [c]                                     ; $5da0: $f2
    rst $28                                       ; $5da1: $ef
    ld d, b                                       ; $5da2: $50
    rst $10                                       ; $5da3: $d7
    jr nc, jr_060_5d8f                            ; $5da4: $30 $e9

    inc b                                         ; $5da6: $04
    pop de                                        ; $5da7: $d1
    cp $02                                        ; $5da8: $fe $02
    add a                                         ; $5daa: $87
    ld a, [hl-]                                   ; $5dab: $3a
    xor b                                         ; $5dac: $a8
    ld d, l                                       ; $5dad: $55
    ld c, d                                       ; $5dae: $4a
    cpl                                           ; $5daf: $2f
    xor [hl]                                      ; $5db0: $ae
    rst $30                                       ; $5db1: $f7
    xor [hl]                                      ; $5db2: $ae
    add [hl]                                      ; $5db3: $86

Call_060_5db4:
Jump_060_5db4:
    rst $00                                       ; $5db4: $c7
    dec e                                         ; $5db5: $1d
    adc d                                         ; $5db6: $8a
    rst $10                                       ; $5db7: $d7
    ld c, d                                       ; $5db8: $4a
    xor b                                         ; $5db9: $a8
    adc $7b                                       ; $5dba: $ce $7b
    rst $10                                       ; $5dbc: $d7
    ld a, [bc]                                    ; $5dbd: $0a
    ld a, [hl-]                                   ; $5dbe: $3a
    xor e                                         ; $5dbf: $ab
    ld c, d                                       ; $5dc0: $4a
    rst $00                                       ; $5dc1: $c7
    ld h, [hl]                                    ; $5dc2: $66
    jp c, $4a2e                                   ; $5dc3: $da $2e $4a

    db $e3                                        ; $5dc6: $e3
    ld b, d                                       ; $5dc7: $42
    reti                                          ; $5dc8: $d9


    push bc                                       ; $5dc9: $c5
    ld c, $59                                     ; $5dca: $0e $59
    cp h                                          ; $5dcc: $bc
    db $eb                                        ; $5dcd: $eb
    db $fd                                        ; $5dce: $fd
    ld l, e                                       ; $5dcf: $6b
    or a                                          ; $5dd0: $b7
    ld h, [hl]                                    ; $5dd1: $66
    cpl                                           ; $5dd2: $2f
    db $ed                                        ; $5dd3: $ed
    ld a, c                                       ; $5dd4: $79
    rst $28                                       ; $5dd5: $ef
    ld [hl+], a                                   ; $5dd6: $22
    add sp, $44                                   ; $5dd7: $e8 $44
    ld c, c                                       ; $5dd9: $49
    jp c, Jump_060_465a                           ; $5dda: $da $5a $46

    ld [hl], a                                    ; $5ddd: $77
    jp c, Jump_000_101e                           ; $5dde: $da $1e $10

jr_060_5de1:
    ld [hl], h                                    ; $5de1: $74
    adc [hl]                                      ; $5de2: $8e
    xor $dc                                       ; $5de3: $ee $dc
    rst $28                                       ; $5de5: $ef
    db $dd                                        ; $5de6: $dd
    dec bc                                        ; $5de7: $0b
    rst $08                                       ; $5de8: $cf
    ld a, $0f                                     ; $5de9: $3e $0f
    sbc l                                         ; $5deb: $9d
    inc bc                                        ; $5dec: $03
    and l                                         ; $5ded: $a5
    cp h                                          ; $5dee: $bc
    and a                                         ; $5def: $a7
    cp c                                          ; $5df0: $b9
    ld b, d                                       ; $5df1: $42
    ld c, l                                       ; $5df2: $4d
    rst $10                                       ; $5df3: $d7
    dec [hl]                                      ; $5df4: $35
    ld d, d                                       ; $5df5: $52
    cpl                                           ; $5df6: $2f
    ei                                            ; $5df7: $fb
    pop de                                        ; $5df8: $d1
    sbc [hl]                                      ; $5df9: $9e
    ld e, a                                       ; $5dfa: $5f
    ld h, b                                       ; $5dfb: $60
    xor l                                         ; $5dfc: $ad
    and $ca                                       ; $5dfd: $e6 $ca
    sub a                                         ; $5dff: $97
    ld h, d                                       ; $5e00: $62
    pop af                                        ; $5e01: $f1
    ld h, b                                       ; $5e02: $60
    ld d, c                                       ; $5e03: $51
    add d                                         ; $5e04: $82
    adc d                                         ; $5e05: $8a
    ld a, a                                       ; $5e06: $7f
    or d                                          ; $5e07: $b2
    db $d3                                        ; $5e08: $d3
    add hl, hl                                    ; $5e09: $29
    cp [hl]                                       ; $5e0a: $be
    ld [hl], a                                    ; $5e0b: $77
    ld b, l                                       ; $5e0c: $45
    db $ec                                        ; $5e0d: $ec
    db $e4                                        ; $5e0e: $e4
    and h                                         ; $5e0f: $a4
    and b                                         ; $5e10: $a0
    ld a, e                                       ; $5e11: $7b
    push af                                       ; $5e12: $f5
    ld a, [hl]                                    ; $5e13: $7e
    or h                                          ; $5e14: $b4
    ld [hl], h                                    ; $5e15: $74
    jp hl                                         ; $5e16: $e9


    ld c, [hl]                                    ; $5e17: $4e
    pop af                                        ; $5e18: $f1
    ld e, $63                                     ; $5e19: $1e $63
    ld b, h                                       ; $5e1b: $44
    ld c, l                                       ; $5e1c: $4d
    rst $20                                       ; $5e1d: $e7
    ld e, d                                       ; $5e1e: $5a
    ld bc, $1b84                                  ; $5e1f: $01 $84 $1b
    ld d, h                                       ; $5e22: $54
    ld [hl], h                                    ; $5e23: $74
    sbc $2f                                       ; $5e24: $de $2f
    add a                                         ; $5e26: $87
    ld d, h                                       ; $5e27: $54
    adc b                                         ; $5e28: $88
    dec l                                         ; $5e29: $2d
    ld l, e                                       ; $5e2a: $6b
    dec [hl]                                      ; $5e2b: $35
    ld d, a                                       ; $5e2c: $57
    ld d, l                                       ; $5e2d: $55
    add sp, -$6a                                  ; $5e2e: $e8 $96
    cp d                                          ; $5e30: $ba
    ldh a, [$64]                                  ; $5e31: $f0 $64
    inc de                                        ; $5e33: $13
    dec a                                         ; $5e34: $3d
    rst $20                                       ; $5e35: $e7
    jr @-$04                                      ; $5e36: $18 $fa

    inc l                                         ; $5e38: $2c
    ld h, h                                       ; $5e39: $64
    db $ec                                        ; $5e3a: $ec
    inc e                                         ; $5e3b: $1c
    inc bc                                        ; $5e3c: $03
    ld l, $0a                                     ; $5e3d: $2e $0a
    reti                                          ; $5e3f: $d9


    ret nc                                        ; $5e40: $d0

    sub c                                         ; $5e41: $91
    rst $30                                       ; $5e42: $f7
    ld a, c                                       ; $5e43: $79
    dec c                                         ; $5e44: $0d
    ld [hl], e                                    ; $5e45: $73
    ld d, d                                       ; $5e46: $52
    ret nc                                        ; $5e47: $d0

    adc e                                         ; $5e48: $8b
    ld b, d                                       ; $5e49: $42
    adc $dd                                       ; $5e4a: $ce $dd
    or c                                          ; $5e4c: $b1
    ld d, e                                       ; $5e4d: $53
    ld a, h                                       ; $5e4e: $7c
    cp a                                          ; $5e4f: $bf
    rst $10                                       ; $5e50: $d7
    and h                                         ; $5e51: $a4

jr_060_5e52:
    ld de, $7f5c                                  ; $5e52: $11 $5c $7f
    or a                                          ; $5e55: $b7
    call nc, $90a9                                ; $5e56: $d4 $a9 $90
    add hl, bc                                    ; $5e59: $09
    jr jr_060_5ece                                ; $5e5a: $18 $72

    inc c                                         ; $5e5c: $0c
    ld a, l                                       ; $5e5d: $7d
    inc h                                         ; $5e5e: $24
    sub l                                         ; $5e5f: $95
    sbc [hl]                                      ; $5e60: $9e
    sbc [hl]                                      ; $5e61: $9e
    ld [hl], e                                    ; $5e62: $73
    ld d, c                                       ; $5e63: $51
    ret z                                         ; $5e64: $c8

    add [hl]                                      ; $5e65: $86
    adc [hl]                                      ; $5e66: $8e
    cp h                                          ; $5e67: $bc
    ldh a, [$64]                                  ; $5e68: $f0 $64
    inc de                                        ; $5e6a: $13
    cp l                                          ; $5e6b: $bd
    jr z, jr_060_5e52                             ; $5e6c: $28 $e4

    inc l                                         ; $5e6e: $2c
    ld h, h                                       ; $5e6f: $64
    db $ec                                        ; $5e70: $ec
    ld e, h                                       ; $5e71: $5c
    dec c                                         ; $5e72: $0d
    rst $08                                       ; $5e73: $cf
    ld b, b                                       ; $5e74: $40
    add hl, hl                                    ; $5e75: $29
    adc a                                         ; $5e76: $8f
    ld a, [hl+]                                   ; $5e77: $2a
    ld d, l                                       ; $5e78: $55
    add hl, sp                                    ; $5e79: $39
    rst $30                                       ; $5e7a: $f7
    ld a, c                                       ; $5e7b: $79
    ld c, b                                       ; $5e7c: $48
    sbc l                                         ; $5e7d: $9d
    ld h, l                                       ; $5e7e: $65
    adc a                                         ; $5e7f: $8f
    adc e                                         ; $5e80: $8b
    ld a, c                                       ; $5e81: $79
    dec l                                         ; $5e82: $2d
    db $10                                        ; $5e83: $10
    ld b, a                                       ; $5e84: $47
    ld a, d                                       ; $5e85: $7a
    rst $00                                       ; $5e86: $c7
    ld hl, $ef15                                  ; $5e87: $21 $15 $ef
    ld e, l                                       ; $5e8a: $5d
    dec hl                                        ; $5e8b: $2b
    add sp, -$54                                  ; $5e8c: $e8 $ac
    ld a, [hl+]                                   ; $5e8e: $2a
    dec e                                         ; $5e8f: $1d
    sbc e                                         ; $5e90: $9b
    ld l, c                                       ; $5e91: $69
    dec sp                                        ; $5e92: $3b
    xor a                                         ; $5e93: $af
    scf                                           ; $5e94: $37
    db $f4                                        ; $5e95: $f4
    cp d                                          ; $5e96: $ba
    ld [hl], $fd                                  ; $5e97: $36 $fd
    ld l, c                                       ; $5e99: $69
    ld [hl], h                                    ; $5e9a: $74
    ld h, e                                       ; $5e9b: $63
    ld c, b                                       ; $5e9c: $48
    rst $28                                       ; $5e9d: $ef
    dec b                                         ; $5e9e: $05
    sub a                                         ; $5e9f: $97
    ld b, $74                                     ; $5ea0: $06 $74
    ld c, b                                       ; $5ea2: $48
    inc [hl]                                      ; $5ea3: $34

jr_060_5ea4:
    sbc a                                         ; $5ea4: $9f
    or l                                          ; $5ea5: $b5
    dec bc                                        ; $5ea6: $0b
    ld a, [hl]                                    ; $5ea7: $7e
    ld c, e                                       ; $5ea8: $4b
    rst $20                                       ; $5ea9: $e7
    or l                                          ; $5eaa: $b5
    push hl                                       ; $5eab: $e5
    daa                                           ; $5eac: $27
    ld a, [de]                                    ; $5ead: $1a
    inc b                                         ; $5eae: $04
    ld [$6d5e], a                                 ; $5eaf: $ea $5e $6d
    and $39                                       ; $5eb2: $e6 $39
    add a                                         ; $5eb4: $87
    ld l, c                                       ; $5eb5: $69
    add hl, hl                                    ; $5eb6: $29
    ld d, $d7                                     ; $5eb7: $16 $d7
    push de                                       ; $5eb9: $d5
    db $10                                        ; $5eba: $10
    cp e                                          ; $5ebb: $bb
    cp $ee                                        ; $5ebc: $fe $ee
    ld a, e                                       ; $5ebe: $7b
    rla                                           ; $5ebf: $17
    ld d, c                                       ; $5ec0: $51
    or e                                          ; $5ec1: $b3
    or d                                          ; $5ec2: $b2
    sbc e                                         ; $5ec3: $9b
    ld e, c                                       ; $5ec4: $59
    db $dd                                        ; $5ec5: $dd
    dec e                                         ; $5ec6: $1d
    dec sp                                        ; $5ec7: $3b
    ld d, a                                       ; $5ec8: $57
    ld b, e                                       ; $5ec9: $43
    db $ec                                        ; $5eca: $ec
    ld e, h                                       ; $5ecb: $5c
    xor e                                         ; $5ecc: $ab
    cp c                                          ; $5ecd: $b9

jr_060_5ece:
    adc b                                         ; $5ece: $88
    sbc d                                         ; $5ecf: $9a
    sub l                                         ; $5ed0: $95
    dec a                                         ; $5ed1: $3d
    di                                            ; $5ed2: $f3
    cpl                                           ; $5ed3: $2f
    cp [hl]                                       ; $5ed4: $be
    ld e, a                                       ; $5ed5: $5f
    rla                                           ; $5ed6: $17
    ld b, [hl]                                    ; $5ed7: $46
    db $ec                                        ; $5ed8: $ec
    adc h                                         ; $5ed9: $8c
    ld b, d                                       ; $5eda: $42
    ld d, [hl]                                    ; $5edb: $56
    dec h                                         ; $5edc: $25
    jr nz, jr_060_5ea4                            ; $5edd: $20 $c5

    or d                                          ; $5edf: $b2
    jr z, jr_060_5f06                             ; $5ee0: $28 $24

Call_060_5ee2:
    ld d, a                                       ; $5ee2: $57
    ld a, [bc]                                    ; $5ee3: $0a
    or e                                          ; $5ee4: $b3
    ld [hl], e                                    ; $5ee5: $73
    or b                                          ; $5ee6: $b0
    jr z, @+$66                                   ; $5ee7: $28 $64

    inc bc                                        ; $5ee9: $03
    inc b                                         ; $5eea: $04
    db $dd                                        ; $5eeb: $dd
    xor e                                         ; $5eec: $ab
    rst $30                                       ; $5eed: $f7
    jr jr_060_5ef7                                ; $5eee: $18 $07

    add d                                         ; $5ef0: $82
    adc l                                         ; $5ef1: $8d
    call nc, $cd11                                ; $5ef2: $d4 $11 $cd
    inc hl                                        ; $5ef5: $23
    ld b, e                                       ; $5ef6: $43

jr_060_5ef7:
    db $dd                                        ; $5ef7: $dd
    push bc                                       ; $5ef8: $c5
    add hl, bc                                    ; $5ef9: $09
    ld d, d                                       ; $5efa: $52
    ld [bc], a                                    ; $5efb: $02
    ld [hl], e                                    ; $5efc: $73
    cp l                                          ; $5efd: $bd
    ld [hl], a                                    ; $5efe: $77
    ldh a, [$cb]                                  ; $5eff: $f0 $cb
    ld e, $8b                                     ; $5f01: $1e $8b
    ld [hl], e                                    ; $5f03: $73
    sbc a                                         ; $5f04: $9f
    ld [hl], a                                    ; $5f05: $77

jr_060_5f06:
    sub b                                         ; $5f06: $90
    sbc d                                         ; $5f07: $9a
    jp z, Jump_060_475c                           ; $5f08: $ca $5c $47

    ld e, d                                       ; $5f0b: $5a
    ld d, l                                       ; $5f0c: $55
    rst $08                                       ; $5f0d: $cf
    cp l                                          ; $5f0e: $bd
    dec sp                                        ; $5f0f: $3b
    rst $00                                       ; $5f10: $c7
    add hl, de                                    ; $5f11: $19
    ld a, [hl-]                                   ; $5f12: $3a
    ld a, $14                                     ; $5f13: $3e $14
    pop bc                                        ; $5f15: $c1
    sub c                                         ; $5f16: $91
    ccf                                           ; $5f17: $3f
    rla                                           ; $5f18: $17
    ld d, e                                       ; $5f19: $53
    jp nc, Jump_060_56bc                          ; $5f1a: $d2 $bc $56

    ld [hl], e                                    ; $5f1d: $73
    or l                                          ; $5f1e: $b5
    dec b                                         ; $5f1f: $05
    db $fd                                        ; $5f20: $fd
    sbc $25                                       ; $5f21: $de $25
    jp nz, Jump_000_35e6                          ; $5f23: $c2 $e6 $35

    cp d                                          ; $5f26: $ba
    db $e3                                        ; $5f27: $e3
    ld d, l                                       ; $5f28: $55
    and [hl]                                      ; $5f29: $a6
    scf                                           ; $5f2a: $37
    cp e                                          ; $5f2b: $bb
    ld sp, hl                                     ; $5f2c: $f9
    db $ec                                        ; $5f2d: $ec
    db $fd                                        ; $5f2e: $fd
    sbc $bd                                       ; $5f2f: $de $bd
    sbc b                                         ; $5f31: $98
    sub d                                         ; $5f32: $92
    ld [$c5ce], sp                                ; $5f33: $08 $ce $c5
    ccf                                           ; $5f36: $3f
    rla                                           ; $5f37: $17
    pop de                                        ; $5f38: $d1
    sbc l                                         ; $5f39: $9d
    ld h, d                                       ; $5f3a: $62
    ld e, [hl]                                    ; $5f3b: $5e
    db $fd                                        ; $5f3c: $fd
    rst $08                                       ; $5f3d: $cf
    db $e3                                        ; $5f3e: $e3
    pop hl                                        ; $5f3f: $e1
    cpl                                           ; $5f40: $2f
    adc e                                         ; $5f41: $8b
    ld a, [c]                                     ; $5f42: $f2
    rrca                                          ; $5f43: $0f
    dec l                                         ; $5f44: $2d
    inc bc                                        ; $5f45: $03
    pop bc                                        ; $5f46: $c1
    ld b, [hl]                                    ; $5f47: $46
    ld [$35c8], a                                 ; $5f48: $ea $c8 $35
    rst $38                                       ; $5f4b: $ff
    jp $235e                                      ; $5f4c: $c3 $5e $23


    xor b                                         ; $5f4f: $a8
    ld a, d                                       ; $5f50: $7a
    rst $28                                       ; $5f51: $ef
    ret z                                         ; $5f52: $c8

    add e                                         ; $5f53: $83
    sub [hl]                                      ; $5f54: $96
    push bc                                       ; $5f55: $c5
    or b                                          ; $5f56: $b0
    and h                                         ; $5f57: $a4
    ld [hl], $9c                                  ; $5f58: $36 $9c
    inc bc                                        ; $5f5a: $03
    and l                                         ; $5f5b: $a5
    inc a                                         ; $5f5c: $3c
    ld [hl-], a                                   ; $5f5d: $32
    cp $38                                        ; $5f5e: $fe $38
    ld [hl], h                                    ; $5f60: $74
    ld l, $fe                                     ; $5f61: $2e $fe
    add hl, sp                                    ; $5f63: $39
    jr @+$5c                                      ; $5f64: $18 $5a

    ld l, b                                       ; $5f66: $68
    xor e                                         ; $5f67: $ab
    call $a191                                    ; $5f68: $cd $91 $a1
    db $e3                                        ; $5f6b: $e3
    add h                                         ; $5f6c: $84
    ld d, d                                       ; $5f6d: $52
    dec l                                         ; $5f6e: $2d
    adc e                                         ; $5f6f: $8b
    ld b, d                                       ; $5f70: $42
    adc [hl]                                      ; $5f71: $8e
    xor $5c                                       ; $5f72: $ee $5c
    ld [hl], l                                    ; $5f74: $75
    adc a                                         ; $5f75: $8f
    ld l, c                                       ; $5f76: $69
    inc hl                                        ; $5f77: $23
    ld h, e                                       ; $5f78: $63
    xor b                                         ; $5f79: $a8
    cp e                                          ; $5f7a: $bb
    ld h, h                                       ; $5f7b: $64
    or c                                          ; $5f7c: $b1
    ld [hl], c                                    ; $5f7d: $71
    ld h, h                                       ; $5f7e: $64
    db $fc                                        ; $5f7f: $fc
    ld [hl], c                                    ; $5f80: $71
    add sp, -$64                                  ; $5f81: $e8 $9c
    ld [hl], e                                    ; $5f83: $73
    dec h                                         ; $5f84: $25
    jr nz, jr_060_5fb6                            ; $5f85: $20 $2f

    ld a, [bc]                                    ; $5f87: $0a
    add hl, sp                                    ; $5f88: $39
    cp d                                          ; $5f89: $ba
    sub e                                         ; $5f8a: $93
    halt                                          ; $5f8b: $76
    db $e4                                        ; $5f8c: $e4
    ld a, [hl+]                                   ; $5f8d: $2a
    inc d                                         ; $5f8e: $14
    rst $20                                       ; $5f8f: $e7
    inc l                                         ; $5f90: $2c

Call_060_5f91:
    db $e3                                        ; $5f91: $e3
    rst $18                                       ; $5f92: $df
    xor e                                         ; $5f93: $ab
    ld b, b                                       ; $5f94: $40
    xor l                                         ; $5f95: $ad
    ld e, [hl]                                    ; $5f96: $5e
    sub h                                         ; $5f97: $94
    ld a, a                                       ; $5f98: $7f
    rla                                           ; $5f99: $17
    daa                                           ; $5f9a: $27
    ld c, b                                       ; $5f9b: $48
    add hl, bc                                    ; $5f9c: $09
    call z, $f1b5                                 ; $5f9d: $cc $b5 $f1
    ld b, l                                       ; $5fa0: $45
    ld e, c                                       ; $5fa1: $59
    xor $17                                       ; $5fa2: $ee $17
    rst $10                                       ; $5fa4: $d7
    pop bc                                        ; $5fa5: $c1
    sbc [hl]                                      ; $5fa6: $9e
    and $48                                       ; $5fa7: $e6 $48
    rst $30                                       ; $5fa9: $f7
    xor $f4                                       ; $5faa: $ee $f4
    xor d                                         ; $5fac: $aa
    rst $30                                       ; $5fad: $f7
    ld a, c                                       ; $5fae: $79
    ld a, [hl+]                                   ; $5faf: $2a
    inc a                                         ; $5fb0: $3c
    adc a                                         ; $5fb1: $8f
    rlca                                          ; $5fb2: $07
    xor e                                         ; $5fb3: $ab
    sub [hl]                                      ; $5fb4: $96
    ld b, d                                       ; $5fb5: $42

jr_060_5fb6:
    ld e, e                                       ; $5fb6: $5b

jr_060_5fb7:
    ei                                            ; $5fb7: $fb
    rst $08                                       ; $5fb8: $cf
    call nc, $6bdc                                ; $5fb9: $d4 $dc $6b

Jump_060_5fbc:
    inc sp                                        ; $5fbc: $33
    rst $08                                       ; $5fbd: $cf
    add hl, sp                                    ; $5fbe: $39
    sra d                                         ; $5fbf: $cb $2a
    add a                                         ; $5fc1: $87
    inc e                                         ; $5fc2: $1c
    cp $32                                        ; $5fc3: $fe $32
    ret c                                         ; $5fc5: $d8

    inc de                                        ; $5fc6: $13
    or d                                          ; $5fc7: $b2
    ld e, b                                       ; $5fc8: $58
    xor $17                                       ; $5fc9: $ee $17
    rlca                                          ; $5fcb: $07
    ld e, h                                       ; $5fcc: $5c
    and $dc                                       ; $5fcd: $e6 $dc
    rst $28                                       ; $5fcf: $ef
    cp h                                          ; $5fd0: $bc
    jr z, jr_060_5fb7                             ; $5fd1: $28 $e4

    jr c, @+$2b                                   ; $5fd3: $38 $29

    inc a                                         ; $5fd5: $3c
    add [hl]                                      ; $5fd6: $86
    cp [hl]                                       ; $5fd7: $be
    rst $08                                       ; $5fd8: $cf
    xor e                                         ; $5fd9: $ab
    ld d, b                                       ; $5fda: $50
    inc a                                         ; $5fdb: $3c
    di                                            ; $5fdc: $f3
    ld b, d                                       ; $5fdd: $42
    ld [c], a                                     ; $5fde: $e2
    ld e, $a7                                     ; $5fdf: $1e $a7
    rst $28                                       ; $5fe1: $ef
    rla                                           ; $5fe2: $17
    rst $10                                       ; $5fe3: $d7
    and h                                         ; $5fe4: $a4
    db $e3                                        ; $5fe5: $e3
    sub b                                         ; $5fe6: $90
    dec bc                                        ; $5fe7: $0b
    ld h, l                                       ; $5fe8: $65
    ld [hl], h                                    ; $5fe9: $74
    sub a                                         ; $5fea: $97

Call_060_5feb:
    sub l                                         ; $5feb: $95
    ld h, [hl]                                    ; $5fec: $66
    ld c, $56                                     ; $5fed: $0e $56
    dec l                                         ; $5fef: $2d
    add l                                         ; $5ff0: $85
    or [hl]                                       ; $5ff1: $b6
    ld b, d                                       ; $5ff2: $42
    call Call_000_30c5                            ; $5ff3: $cd $c5 $30
    ld d, b                                       ; $5ff6: $50
    jp z, Jump_060_5db4                           ; $5ff7: $ca $b4 $5d

    sub e                                         ; $5ffa: $93
    adc [hl]                                      ; $5ffb: $8e
    ld b, e                                       ; $5ffc: $43
    sbc $f7                                       ; $5ffd: $de $f7
    ld a, l                                       ; $5fff: $7d
    adc $0b                                       ; $6000: $ce $0b
    rla                                           ; $6002: $17
    rlca                                          ; $6003: $07
    sub h                                         ; $6004: $94
    rst $08                                       ; $6005: $cf
    or h                                          ; $6006: $b4
    or l                                          ; $6007: $b5
    rst $38                                       ; $6008: $ff
    ld c, h                                       ; $6009: $4c
    dec c                                         ; $600a: $0d
    ld l, l                                       ; $600b: $6d
    ld l, b                                       ; $600c: $68
    sbc [hl]                                      ; $600d: $9e
    ld [hl], e                                    ; $600e: $73
    sub [hl]                                      ; $600f: $96
    ld d, c                                       ; $6010: $51
    jp nc, $bcfb                                  ; $6011: $d2 $fb $bc

    sbc b                                         ; $6014: $98
    sub d                                         ; $6015: $92
    ld e, $ac                                     ; $6016: $1e $ac
    cp $e7                                        ; $6018: $fe $e7
    pop af                                        ; $601a: $f1
    ld d, h                                       ; $601b: $54
    add sp, -$23                                  ; $601c: $e8 $dd
    dec b                                         ; $601e: $05
    db $f4                                        ; $601f: $f4
    ld h, a                                       ; $6020: $67
    dec [hl]                                      ; $6021: $35
    inc a                                         ; $6022: $3c
    ld b, e                                       ; $6023: $43
    jr z, @-$07                                   ; $6024: $28 $f7

    dec bc                                        ; $6026: $0b
    rla                                           ; $6027: $17
    add l                                         ; $6028: $85
    inc e                                         ; $6029: $1c
    daa                                           ; $602a: $27
    add l                                         ; $602b: $85
    rst $00                                       ; $602c: $c7
    ret nc                                        ; $602d: $d0

    rst $30                                       ; $602e: $f7
    ld a, c                                       ; $602f: $79
    ld d, l                                       ; $6030: $55
    cp [hl]                                       ; $6031: $be
    ld d, d                                       ; $6032: $52
    cp [hl]                                       ; $6033: $be
    ld [hl], a                                    ; $6034: $77
    pop af                                        ; $6035: $f1
    sub c                                         ; $6036: $91
    ld a, [c]                                     ; $6037: $f2
    ld sp, hl                                     ; $6038: $f9
    ld a, [hl]                                    ; $6039: $7e
    ld bc, $0717                                  ; $603a: $01 $17 $07
    sub h                                         ; $603d: $94
    rst $08                                       ; $603e: $cf
    or h                                          ; $603f: $b4
    or l                                          ; $6040: $b5
    rst $38                                       ; $6041: $ff
    ld c, h                                       ; $6042: $4c
    call Call_000_02fd                            ; $6043: $cd $fd $02
    add a                                         ; $6046: $87
    sub h                                         ; $6047: $94
    ld b, [hl]                                    ; $6048: $46
    ld [hl], b                                    ; $6049: $70
    ld [$b685], sp                                ; $604a: $08 $85 $b6
    or $9f                                        ; $604d: $f6 $9f
    xor c                                         ; $604f: $a9
    cp c                                          ; $6050: $b9
    ld [hl], a                                    ; $6051: $77
    dec e                                         ; $6052: $1d
    xor h                                         ; $6053: $ac
    xor d                                         ; $6054: $aa
    rst $18                                       ; $6055: $df
    rst $00                                       ; $6056: $c7
    ret nc                                        ; $6057: $d0

    rst $20                                       ; $6058: $e7
    ld c, $aa                                     ; $6059: $0e $aa
    ld b, d                                       ; $605b: $42
    ld [hl-], a                                   ; $605c: $32
    inc a                                         ; $605d: $3c
    ld d, $ed                                     ; $605e: $16 $ed
    dec sp                                        ; $6060: $3b
    inc h                                         ; $6061: $24
    cp a                                          ; $6062: $bf
    push hl                                       ; $6063: $e5
    dec [hl]                                      ; $6064: $35
    ld d, d                                       ; $6065: $52
    add e                                         ; $6066: $83
    adc $55                                       ; $6067: $ce $55
    jr z, @+$05                                   ; $6069: $28 $03

    and l                                         ; $606b: $a5
    cp h                                          ; $606c: $bc
    ldh a, [$ec]                                  ; $606d: $f0 $ec
    di                                            ; $606f: $f3
    inc h                                         ; $6070: $24
    inc d                                         ; $6071: $14
    bit 2, h                                      ; $6072: $cb $54
    ld a, b                                       ; $6074: $78
    ld e, $e7                                     ; $6075: $1e $e7
    and d                                         ; $6077: $a2
    sub b                                         ; $6078: $90
    xor e                                         ; $6079: $ab
    ld d, $d6                                     ; $607a: $16 $d6
    cp $02                                        ; $607c: $fe $02
    sub a                                         ; $607e: $97
    dec [hl]                                      ; $607f: $35
    dec hl                                        ; $6080: $2b
    rst $18                                       ; $6081: $df
    cpl                                           ; $6082: $2f
    db $ed                                        ; $6083: $ed
    ld [hl], c                                    ; $6084: $71
    ret z                                         ; $6085: $c8

    ld [hl], l                                    ; $6086: $75
    jr z, @-$39                                   ; $6087: $28 $c5

    add hl, sp                                    ; $6089: $39
    ld [hl], a                                    ; $608a: $77
    ld d, b                                       ; $608b: $50
    dec d                                         ; $608c: $15
    or d                                          ; $608d: $b2
    rlca                                          ; $608e: $07
    push af                                       ; $608f: $f5
    cp e                                          ; $6090: $bb
    ld sp, hl                                     ; $6091: $f9
    sbc h                                         ; $6092: $9c
    rla                                           ; $6093: $17
    add a                                         ; $6094: $87
    sbc d                                         ; $6095: $9a
    db $eb                                        ; $6096: $eb
    ld e, a                                       ; $6097: $5f
    ld a, [bc]                                    ; $6098: $0a
    adc a                                         ; $6099: $8f
    ld [hl], h                                    ; $609a: $74
    ld b, [hl]                                    ; $609b: $46
    ld sp, hl                                     ; $609c: $f9
    rst $30                                       ; $609d: $f7
    ld a, h                                       ; $609e: $7c
    sbc c                                         ; $609f: $99
    ld a, [$1532]                                 ; $60a0: $fa $32 $15
    sbc [hl]                                      ; $60a3: $9e
    rst $00                                       ; $60a4: $c7
    dec bc                                        ; $60a5: $0b
    ld h, l                                       ; $60a6: $65
    sub l                                         ; $60a7: $95
    ccf                                           ; $60a8: $3f
    ld b, d                                       ; $60a9: $42
    ld e, c                                       ; $60aa: $59
    jp $0811                                      ; $60ab: $c3 $11 $08


    ld a, d                                       ; $60ae: $7a
    dec d                                         ; $60af: $15
    jp z, $cd5a                                   ; $60b0: $ca $5a $cd

    push de                                       ; $60b3: $d5
    ld e, $98                                     ; $60b4: $1e $98
    call $daf7                                    ; $60b6: $cd $f7 $da
    sbc h                                         ; $60b9: $9c
    adc e                                         ; $60ba: $8b
    ld b, b                                       ; $60bb: $40
    ret nc                                        ; $60bc: $d0

    ld [hl], l                                    ; $60bd: $75
    and h                                         ; $60be: $a4
    sbc [hl]                                      ; $60bf: $9e
    inc c                                         ; $60c0: $0c
    push bc                                       ; $60c1: $c5
    xor e                                         ; $60c2: $ab
    adc a                                         ; $60c3: $8f

jr_060_60c4:
    adc $b1                                       ; $60c4: $ce $b1
    jp hl                                         ; $60c6: $e9


    and [hl]                                      ; $60c7: $a6
    adc l                                         ; $60c8: $8d
    adc h                                         ; $60c9: $8c
    and c                                         ; $60ca: $a1

jr_060_60cb:
    xor $f9                                       ; $60cb: $ee $f9
    or d                                          ; $60cd: $b2
    ld l, [hl]                                    ; $60ce: $6e
    ld [hl], h                                    ; $60cf: $74
    adc $11                                       ; $60d0: $ce $11
    dec sp                                        ; $60d2: $3b
    add a                                         ; $60d3: $87
    ld a, [hl]                                    ; $60d4: $7e
    xor $17                                       ; $60d5: $ee $17
    ld l, l                                       ; $60d7: $6d
    and $45                                       ; $60d8: $e6 $45
    jr nz, jr_060_60c4                            ; $60da: $20 $e8

    cp d                                          ; $60dc: $ba
    ld d, [hl]                                    ; $60dd: $56
    ld [hl], e                                    ; $60de: $73
    and $a1                                       ; $60df: $e6 $a1
    and [hl]                                      ; $60e1: $a6
    pop bc                                        ; $60e2: $c1
    or h                                          ; $60e3: $b4
    dec a                                         ; $60e4: $3d
    call nc, Call_060_4c54                        ; $60e5: $d4 $54 $4c
    ld e, e                                       ; $60e8: $5b
    and h                                         ; $60e9: $a4
    rla                                           ; $60ea: $17
    add [hl]                                      ; $60eb: $86
    jp nz, Jump_060_6cab                          ; $60ec: $c2 $ab $6c

    call c, $df7d                                 ; $60ef: $dc $7d $df
    ld l, e                                       ; $60f2: $6b
    dec h                                         ; $60f3: $25
    add l                                         ; $60f4: $85
    jr z, jr_060_60cb                             ; $60f5: $28 $d4

    push de                                       ; $60f7: $d5
    ldh a, [$ec]                                  ; $60f8: $f0 $ec
    sub b                                         ; $60fa: $90
    db $fc                                        ; $60fb: $fc
    sub [hl]                                      ; $60fc: $96
    rla                                           ; $60fd: $17
    add l                                         ; $60fe: $85
    inc [hl]                                      ; $60ff: $34
    daa                                           ; $6100: $27
    ld b, l                                       ; $6101: $45
    add hl, hl                                    ; $6102: $29
    rst $20                                       ; $6103: $e7
    ret nc                                        ; $6104: $d0

    ld a, h                                       ; $6105: $7c
    cp a                                          ; $6106: $bf
    ld b, a                                       ; $6107: $47
    ld e, [hl]                                    ; $6108: $5e
    ret c                                         ; $6109: $d8

    ld b, c                                       ; $610a: $41
    ld d, l                                       ; $610b: $55
    ret z                                         ; $610c: $c8

    ld d, [hl]                                    ; $610d: $56
    ld b, d                                       ; $610e: $42
    ld [hl], l                                    ; $610f: $75
    ld l, $fa                                     ; $6110: $2e $fa
    dec e                                         ; $6112: $1d
    sbc l                                         ; $6113: $9d
    rst $30                                       ; $6114: $f7
    ld c, $36                                     ; $6115: $0e $36
    xor e                                         ; $6117: $ab
    ld a, [c]                                     ; $6118: $f2
    ld e, d                                       ; $6119: $5a
    call $a6c5                                    ; $611a: $cd $c5 $a6
    ld c, a                                       ; $611d: $4f
    adc h                                         ; $611e: $8c
    add e                                         ; $611f: $83
    add hl, hl                                    ; $6120: $29
    cp l                                          ; $6121: $bd
    dec hl                                        ; $6122: $2b
    ld c, d                                       ; $6123: $4a
    ld b, a                                       ; $6124: $47
    and a                                         ; $6125: $a7
    push hl                                       ; $6126: $e5
    ret z                                         ; $6127: $c8

    cp l                                          ; $6128: $bd
    ld l, l                                       ; $6129: $6d

jr_060_612a:
    adc $39                                       ; $612a: $ce $39
    rst $10                                       ; $612c: $d7
    cp a                                          ; $612d: $bf
    sub h                                         ; $612e: $94
    push bc                                       ; $612f: $c5
    and [hl]                                      ; $6130: $a6
    rst $08                                       ; $6131: $cf
    add d                                         ; $6132: $82
    and d                                         ; $6133: $a2
    rst $18                                       ; $6134: $df
    cpl                                           ; $6135: $2f
    rlca                                          ; $6136: $07
    ld e, h                                       ; $6137: $5c
    ld d, $85                                     ; $6138: $16 $85
    xor h                                         ; $613a: $ac
    call nc, $dce2                                ; $613b: $d4 $e2 $dc
    rst $20                                       ; $613e: $e7
    ld b, l                                       ; $613f: $45
    jr nz, jr_060_612a                            ; $6140: $20 $e8

    sub c                                         ; $6142: $91
    and c                                         ; $6143: $a1
    or [hl]                                       ; $6144: $b6
    add b                                         ; $6145: $80
    ld a, a                                       ; $6146: $7f
    xor a                                         ; $6147: $af
    ld d, c                                       ; $6148: $51
    and a                                         ; $6149: $a7
    jp nc, $bb2d                                  ; $614a: $d2 $2d $bb

    rst $28                                       ; $614d: $ef
    ld a, e                                       ; $614e: $7b
    ld [hl], h                                    ; $614f: $74
    sub a                                         ; $6150: $97
    ld b, l                                       ; $6151: $45
    ld hl, $0b6b                                  ; $6152: $21 $6b $0b
    ld a, [hl+]                                   ; $6155: $2a
    ld a, e                                       ; $6156: $7b
    rrca                                          ; $6157: $0f
    sub h                                         ; $6158: $94
    pop bc                                        ; $6159: $c1
    ld a, [hl]                                    ; $615a: $7e
    call nz, $f7ae                                ; $615b: $c4 $ae $f7
    dec bc                                        ; $615e: $0b
    sub a                                         ; $615f: $97
    scf                                           ; $6160: $37
    ld [hl], e                                    ; $6161: $73
    adc l                                         ; $6162: $8d
    sbc a                                         ; $6163: $9f
    ld e, $ea                                     ; $6164: $1e $ea
    inc bc                                        ; $6166: $03
    and l                                         ; $6167: $a5
    cp h                                          ; $6168: $bc
    jp nc, $85cc                                  ; $6169: $d2 $cc $85

    sub $c7                                       ; $616c: $d6 $c7
    cp c                                          ; $616e: $b9
    ld [hl], a                                    ; $616f: $77
    rst $20                                       ; $6170: $e7
    ld a, [de]                                    ; $6171: $1a
    dec e                                         ; $6172: $1d
    ld h, d                                       ; $6173: $62
    rst $20                                       ; $6174: $e7
    ld a, [hl+]                                   ; $6175: $2a
    scf                                           ; $6176: $37
    dec l                                         ; $6177: $2d
    ld l, b                                       ; $6178: $68
    jp c, $439c                                   ; $6179: $da $9c $43

    ld a, l                                       ; $617c: $7d
    xor l                                         ; $617d: $ad
    and $d2                                       ; $617e: $e6 $d2
    call z, Call_060_6c5e                         ; $6180: $cc $5e $6c
    ld a, [$02fd]                                 ; $6183: $fa $fd $02
    rlca                                          ; $6186: $07
    ld e, h                                       ; $6187: $5c
    ld b, [hl]                                    ; $6188: $46
    cp $dc                                        ; $6189: $fe $dc
    inc bc                                        ; $618b: $03
    inc a                                         ; $618c: $3c
    rla                                           ; $618d: $17
    di                                            ; $618e: $f3
    xor d                                         ; $618f: $aa
    ld a, [c]                                     ; $6190: $f2
    di                                            ; $6191: $f3
    rst $30                                       ; $6192: $f7
    ld a, c                                       ; $6193: $79
    dec c                                         ; $6194: $0d
    dec hl                                        ; $6195: $2b
    call $de93                                    ; $6196: $cd $93 $de
    inc bc                                        ; $6199: $03
    ld h, l                                       ; $619a: $65
    pop hl                                        ; $619b: $e1
    pop de                                        ; $619c: $d1
    cp $02                                        ; $619d: $fe $02
    add a                                         ; $619f: $87
    db $e4                                        ; $61a0: $e4
    or a                                          ; $61a1: $b7
    ld e, h                                       ; $61a2: $5c
    and a                                         ; $61a3: $a7
    add d                                         ; $61a4: $82
    ld [hl], b                                    ; $61a5: $70
    ret z                                         ; $61a6: $c8

    add hl, sp                                    ; $61a7: $39
    rlca                                          ; $61a8: $07
    ld d, e                                       ; $61a9: $53
    xor c                                         ; $61aa: $a9
    ld l, c                                       ; $61ab: $69
    or c                                          ; $61ac: $b1
    push hl                                       ; $61ad: $e5
    ld e, [hl]                                    ; $61ae: $5e
    ei                                            ; $61af: $fb
    sub a                                         ; $61b0: $97
    ld a, [hl-]                                   ; $61b1: $3a
    push de                                       ; $61b2: $d5
    ld a, a                                       ; $61b3: $7f
    xor l                                         ; $61b4: $ad
    xor $41                                       ; $61b5: $ee $41
    db $fd                                        ; $61b7: $fd
    xor $3d                                       ; $61b8: $ee $3d
    call $94c5                                    ; $61ba: $cd $c5 $94
    db $f4                                        ; $61bd: $f4
    ld h, b                                       ; $61be: $60
    ld b, d                                       ; $61bf: $42
    ld c, c                                       ; $61c0: $49
    jp nc, $b968                                  ; $61c1: $d2 $68 $b9

    ld e, a                                       ; $61c4: $5f
    rst $10                                       ; $61c5: $d7
    ld l, b                                       ; $61c6: $68
    ld e, d                                       ; $61c7: $5a
    ld d, b                                       ; $61c8: $50
    push de                                       ; $61c9: $d5
    ld a, $cf                                     ; $61ca: $3e $cf

jr_060_61cc:
    or d                                          ; $61cc: $b2
    jr z, @+$01                                   ; $61cd: $28 $ff

    ld l, $4e                                     ; $61cf: $2e $4e
    ld c, l                                       ; $61d1: $4d
    inc d                                         ; $61d2: $14

jr_060_61d3:
    add c                                         ; $61d3: $81
    ld h, b                                       ; $61d4: $60
    ret z                                         ; $61d5: $c8

    ld b, l                                       ; $61d6: $45
    ccf                                           ; $61d7: $3f
    sbc l                                         ; $61d8: $9d
    adc e                                         ; $61d9: $8b
    and c                                         ; $61da: $a1
    and e                                         ; $61db: $a3
    or $17                                        ; $61dc: $f6 $17
    ld l, l                                       ; $61de: $6d
    ld a, [$a9d0]                                 ; $61df: $fa $d0 $a9
    ld a, l                                       ; $61e2: $7d
    db $ed                                        ; $61e3: $ed
    ld [hl], c                                    ; $61e4: $71
    ret z                                         ; $61e5: $c8

    jr z, jr_060_61cc                             ; $61e6: $28 $e4

    sbc h                                         ; $61e8: $9c
    ld b, e                                       ; $61e9: $43
    ld a, l                                       ; $61ea: $7d
    and b                                         ; $61eb: $a0
    sub h                                         ; $61ec: $94
    rst $00                                       ; $61ed: $c7
    ret nc                                        ; $61ee: $d0

    rst $00                                       ; $61ef: $c7
    ldh a, [$f8]                                  ; $61f0: $f0 $f8
    sbc h                                         ; $61f2: $9c
    rla                                           ; $61f3: $17
    rlca                                          ; $61f4: $07
    ld e, h                                       ; $61f5: $5c
    sub $4a                                       ; $61f6: $d6 $4a
    ld l, d                                       ; $61f8: $6a
    db $ec                                        ; $61f9: $ec
    call c, $45e7                                 ; $61fa: $dc $e7 $45
    jr nz, @-$16                                  ; $61fd: $20 $e8

    cp c                                          ; $61ff: $b9
    add e                                         ; $6200: $83
    xor d                                         ; $6201: $aa
    sub b                                         ; $6202: $90
    dec a                                         ; $6203: $3d
    xor b                                         ; $6204: $a8
    rst $18                                       ; $6205: $df
    call Call_000_0bf7                            ; $6206: $cd $f7 $0b
    ld l, l                                       ; $6209: $6d
    and $75                                       ; $620a: $e6 $75
    jr z, jr_060_61d3                             ; $620c: $28 $c5

    add hl, sp                                    ; $620e: $39
    sbc b                                         ; $620f: $98
    ld c, d                                       ; $6210: $4a
    ld c, l                                       ; $6211: $4d
    adc e                                         ; $6212: $8b
    dec l                                         ; $6213: $2d
    jp c, Jump_060_66d7                           ; $6214: $da $d7 $66

    ld e, [hl]                                    ; $6217: $5e
    ld b, e                                       ; $6218: $43
    ld c, a                                       ; $6219: $4f
    db $f4                                        ; $621a: $f4
    xor d                                         ; $621b: $aa
    ld a, e                                       ; $621c: $7b
    inc a                                         ; $621d: $3c
    sla d                                         ; $621e: $cb $22
    ld l, d                                       ; $6220: $6a
    ld d, [hl]                                    ; $6221: $56
    halt                                          ; $6222: $76
    inc sp                                        ; $6223: $33
    xor e                                         ; $6224: $ab
    cp e                                          ; $6225: $bb
    db $e3                                        ; $6226: $e3
    pop hl                                        ; $6227: $e1
    ld e, a                                       ; $6228: $5f
    inc c                                         ; $6229: $0c
    ld l, b                                       ; $622a: $68
    db $ed                                        ; $622b: $ed
    cpl                                           ; $622c: $2f
    add a                                         ; $622d: $87
    cp h                                          ; $622e: $bc
    rst $08                                       ; $622f: $cf
    ld d, e                                       ; $6230: $53
    pop hl                                        ; $6231: $e1
    ld a, c                                       ; $6232: $79
    inc a                                         ; $6233: $3c
    add [hl]                                      ; $6234: $86
    ld a, $86                                     ; $6235: $3e $86
    rst $00                                       ; $6237: $c7
    or h                                          ; $6238: $b4
    ld e, l                                       ; $6239: $5d
    add hl, de                                    ; $623a: $19
    sbc b                                         ; $623b: $98
    sbc l                                         ; $623c: $9d
    jp c, $875f                                   ; $623d: $da $5f $87

    sbc h                                         ; $6240: $9c
    ld a, e                                       ; $6241: $7b
    cp [hl]                                       ; $6242: $be
    inc c                                         ; $6243: $0c
    call $b5b4                                    ; $6244: $cd $b4 $b5
    rst $38                                       ; $6247: $ff
    ld c, h                                       ; $6248: $4c
    call Call_000_0cae                            ; $6249: $cd $ae $0c
    call z, Call_060_7bce                         ; $624c: $cc $ce $7b
    rst $10                                       ; $624f: $d7
    add l                                         ; $6250: $85
    ld [hl], h                                    ; $6251: $74
    sbc l                                         ; $6252: $9d
    ld l, b                                       ; $6253: $68
    cp h                                          ; $6254: $bc
    ei                                            ; $6255: $fb
    cp [hl]                                       ; $6256: $be
    rst $10                                       ; $6257: $d7
    ld [hl], b                                    ; $6258: $70
    ld d, d                                       ; $6259: $52
    rra                                           ; $625a: $1f
    ld h, $8d                                     ; $625b: $26 $8d
    rst $30                                       ; $625d: $f7
    xor [hl]                                      ; $625e: $ae
    and e                                         ; $625f: $a3
    db $e4                                        ; $6260: $e4
    ld h, d                                       ; $6261: $62
    ld c, e                                       ; $6262: $4b
    add a                                         ; $6263: $87
    or d                                          ; $6264: $b2
    rst $08                                       ; $6265: $cf
    adc e                                         ; $6266: $8b
    ld b, b                                       ; $6267: $40
    ret nc                                        ; $6268: $d0

    ld b, e                                       ; $6269: $43
    jr z, @-$4b                                   ; $626a: $28 $b3

    xor h                                         ; $626c: $ac
    push de                                       ; $626d: $d5
    ccf                                           ; $626e: $3f
    sub $fb                                       ; $626f: $d6 $fb
    dec b                                         ; $6271: $05
    ld d, a                                       ; $6272: $57
    ld b, $66                                     ; $6273: $06 $66
    daa                                           ; $6275: $27
    ld l, l                                       ; $6276: $6d
    ld h, h                                       ; $6277: $64
    inc e                                         ; $6278: $1c
    ld [hl], d                                    ; $6279: $72
    ld sp, $eef4                                  ; $627a: $31 $f4 $ee
    and c                                         ; $627d: $a1
    cp [hl]                                       ; $627e: $be
    ld c, d                                       ; $627f: $4a
    dec l                                         ; $6280: $2d
    and [hl]                                      ; $6281: $a6
    adc l                                         ; $6282: $8d
    adc h                                         ; $6283: $8c
    and c                                         ; $6284: $a1
    adc [hl]                                      ; $6285: $8e
    xor $b2                                       ; $6286: $ee $b2
    add $c7                                       ; $6288: $c6 $c7
    ld hl, $8594                                  ; $628a: $21 $94 $85
    ld h, a                                       ; $628d: $67
    sbc a                                         ; $628e: $9f
    rla                                           ; $628f: $17
    add c                                         ; $6290: $81
    and b                                         ; $6291: $a0
    ld h, a                                       ; $6292: $67
    ld e, c                                       ; $6293: $59
    jp $c25a                                      ; $6294: $c3 $5a $c2


    rst $08                                       ; $6297: $cf
    jp z, Jump_060_7396                           ; $6298: $ca $96 $73

    ld e, [hl]                                    ; $629b: $5e
    rlca                                          ; $629c: $07
    ld e, h                                       ; $629d: $5c
    ld d, $1b                                     ; $629e: $16 $1b
    add a                                         ; $62a0: $87
    ld h, [hl]                                    ; $62a1: $66
    jp c, Jump_000_2ee8                           ; $62a2: $da $e8 $2e

    adc e                                         ; $62a5: $8b
    adc l                                         ; $62a6: $8d
    ld b, e                                       ; $62a7: $43
    or e                                          ; $62a8: $b3
    or $17                                        ; $62a9: $f6 $17
    rlca                                          ; $62ab: $07
    ld e, h                                       ; $62ac: $5c
    ld d, $1b                                     ; $62ad: $16 $1b
    add a                                         ; $62af: $87
    and $81                                       ; $62b0: $e6 $81
    ld d, d                                       ; $62b2: $52
    and [hl]                                      ; $62b3: $a6
    xor l                                         ; $62b4: $ad
    sub l                                         ; $62b5: $95
    ld hl, $ad72                                  ; $62b6: $21 $72 $ad
    ld hl, $1def                                  ; $62b9: $21 $ef $1d
    ld l, h                                       ; $62bc: $6c
    ld d, [hl]                                    ; $62bd: $56
    push hl                                       ; $62be: $e5
    ld d, l                                       ; $62bf: $55
    push af                                       ; $62c0: $f5
    ei                                            ; $62c1: $fb
    ld d, b                                       ; $62c2: $50
    rra                                           ; $62c3: $1f
    jp hl                                         ; $62c4: $e9


    sbc $9d                                       ; $62c5: $de $9d
    ld e, [hl]                                    ; $62c7: $5e
    ld l, l                                       ; $62c8: $6d
    ld d, c                                       ; $62c9: $51
    or e                                          ; $62ca: $b3
    ld a, b                                       ; $62cb: $78
    db $ed                                        ; $62cc: $ed
    adc $07                                       ; $62cd: $ce $07
    add d                                         ; $62cf: $82
    sbc b                                         ; $62d0: $98
    or [hl]                                       ; $62d1: $b6
    jr z, @-$1a                                   ; $62d2: $28 $e4

    add sp, $2e                                   ; $62d4: $e8 $2e
    db $e3                                        ; $62d6: $e3
    inc c                                         ; $62d7: $0c
    cp c                                          ; $62d8: $b9
    rst $08                                       ; $62d9: $cf
    inc hl                                        ; $62da: $23
    ld [hl], l                                    ; $62db: $75
    ld e, c                                       ; $62dc: $59
    ld l, h                                       ; $62dd: $6c

jr_060_62de:
    inc e                                         ; $62de: $1c
    sbc d                                         ; $62df: $9a
    rst $28                                       ; $62e0: $ef
    rla                                           ; $62e1: $17
    rlca                                          ; $62e2: $07
    ld e, h                                       ; $62e3: $5c
    add $49                                       ; $62e4: $c6 $49
    ld d, c                                       ; $62e6: $51
    jp z, $f339                                   ; $62e7: $ca $39 $f3

    ld d, h                                       ; $62ea: $54
    add sp, -$23                                  ; $62eb: $e8 $dd
    dec b                                         ; $62ed: $05
    call c, $200a                                 ; $62ee: $dc $0a $20
    cp h                                          ; $62f1: $bc
    jr z, @+$01                                   ; $62f2: $28 $ff

    ld l, $4e                                     ; $62f4: $2e $4e
    ld c, l                                       ; $62f6: $4d
    inc d                                         ; $62f7: $14
    add c                                         ; $62f8: $81
    ld h, b                                       ; $62f9: $60
    ret z                                         ; $62fa: $c8

    ei                                            ; $62fb: $fb
    dec b                                         ; $62fc: $05
    rst $20                                       ; $62fd: $e7
    push bc                                       ; $62fe: $c5
    or h                                          ; $62ff: $b4
    db $fd                                        ; $6300: $fd
    sbc b                                         ; $6301: $98
    or [hl]                                       ; $6302: $b6
    rra                                           ; $6303: $1f
    ld l, e                                       ; $6304: $6b
    ld a, a                                       ; $6305: $7f
    ld bc, $206d                                  ; $6306: $01 $6d $20
    adc e                                         ; $6309: $8b
    dec l                                         ; $630a: $2d
    or h                                          ; $630b: $b4
    sub c                                         ; $630c: $91
    ld a, c                                       ; $630d: $79
    rst $28                                       ; $630e: $ef
    or d                                          ; $630f: $b2
    jr nz, @-$59                                  ; $6310: $20 $a5

    ld de, $c398                                  ; $6312: $11 $98 $c3
    or e                                          ; $6315: $b3
    cp $d1                                        ; $6316: $fe $d1
    add hl, sp                                    ; $6318: $39
    add [hl]                                      ; $6319: $86

jr_060_631a:
    cp [hl]                                       ; $631a: $be
    rst $08                                       ; $631b: $cf
    adc e                                         ; $631c: $8b
    add hl, hl                                    ; $631d: $29
    jp hl                                         ; $631e: $e9


    xor c                                         ; $631f: $a9
    ldh a, [$3c]                                  ; $6320: $f0 $3c
    and $31                                       ; $6322: $e6 $31
    db $f4                                        ; $6324: $f4
    ld d, l                                       ; $6325: $55
    push af                                       ; $6326: $f5
    pop de                                        ; $6327: $d1
    rst $30                                       ; $6328: $f7
    ld c, $b8                                     ; $6329: $0e $b8
    inc l                                         ; $632b: $2c
    add [hl]                                      ; $632c: $86
    cp [hl]                                       ; $632d: $be
    cp $d1                                        ; $632e: $fe $d1
    ld b, e                                       ; $6330: $43
    jr z, jr_060_62de                             ; $6331: $28 $ab

    rst $38                                       ; $6333: $ff
    jp hl                                         ; $6334: $e9


    ld e, $48                                     ; $6335: $1e $48
    ld c, c                                       ; $6337: $49
    inc hl                                        ; $6338: $23
    ld e, b                                       ; $6339: $58
    xor d                                         ; $633a: $aa
    ld d, e                                       ; $633b: $53
    inc a                                         ; $633c: $3c
    add [hl]                                      ; $633d: $86
    cp [hl]                                       ; $633e: $be
    rst $08                                       ; $633f: $cf
    inc hl                                        ; $6340: $23
    db $dd                                        ; $6341: $dd
    dec de                                        ; $6342: $1b
    ld l, c                                       ; $6343: $69
    db $f4                                        ; $6344: $f4
    ret z                                         ; $6345: $c8

    rst $38                                       ; $6346: $ff
    ret nc                                        ; $6347: $d0

    halt                                          ; $6348: $76
    ld h, l                                       ; $6349: $65
    ld h, b                                       ; $634a: $60
    halt                                          ; $634b: $76
    sbc $2f                                       ; $634c: $de $2f
    rlca                                          ; $634e: $07
    dec l                                         ; $634f: $2d
    rst $30                                       ; $6350: $f7
    ld a, l                                       ; $6351: $7d
    cp a                                          ; $6352: $bf
    sub a                                         ; $6353: $97
    xor h                                         ; $6354: $ac
    xor d                                         ; $6355: $aa
    rst $18                                       ; $6356: $df
    rla                                           ; $6357: $17
    add c                                         ; $6358: $81
    and b                                         ; $6359: $a0
    rst $00                                       ; $635a: $c7
    ld h, c                                       ; $635b: $61
    xor l                                         ; $635c: $ad
    sub b                                         ; $635d: $90
    inc c                                         ; $635e: $0c
    ld b, c                                       ; $635f: $41
    sbc h                                         ; $6360: $9c
    ld l, e                                       ; $6361: $6b
    ld b, b                                       ; $6362: $40
    rst $28                                       ; $6363: $ef
    and [hl]                                      ; $6364: $a6
    jp nc, $b4c5                                  ; $6365: $d2 $c5 $b4

    sbc l                                         ; $6368: $9d
    cp b                                          ; $6369: $b8
    ld d, [hl]                                    ; $636a: $56
    ld c, b                                       ; $636b: $48
    add [hl]                                      ; $636c: $86
    jr nz, jr_060_631a                            ; $636d: $20 $ab

    db $fd                                        ; $636f: $fd
    ld c, e                                       ; $6370: $4b
    ld sp, $0453                                  ; $6371: $31 $53 $04
    sbc l                                         ; $6374: $9d
    dec bc                                        ; $6375: $0b
    ld h, l                                       ; $6376: $65
    sub [hl]                                      ; $6377: $96
    or l                                          ; $6378: $b5
    ld b, d                                       ; $6379: $42
    ld [hl-], a                                   ; $637a: $32
    inc b                                         ; $637b: $04
    ld e, c                                       ; $637c: $59
    inc hl                                        ; $637d: $23
    add h                                         ; $637e: $84
    and a                                         ; $637f: $a7
    or $2f                                        ; $6380: $f6 $2f
    and l                                         ; $6382: $a5
    ld a, [hl+]                                   ; $6383: $2a
    db $10                                        ; $6384: $10
    cp h                                          ; $6385: $bc
    ld [hl], a                                    ; $6386: $77
    adc b                                         ; $6387: $88
    ld e, d                                       ; $6388: $5a
    and $88                                       ; $6389: $e6 $88
    sbc l                                         ; $638b: $9d
    ld b, e                                       ; $638c: $43
    ccf                                           ; $638d: $3f
    ld l, e                                       ; $638e: $6b
    dec [hl]                                      ; $638f: $35
    rla                                           ; $6390: $17
    jp z, $a3c2                                   ; $6391: $ca $c2 $a3

    ld [de], a                                    ; $6394: $12
    and h                                         ; $6395: $a4
    xor h                                         ; $6396: $ac
    dec a                                         ; $6397: $3d
    inc d                                         ; $6398: $14
    ld h, d                                       ; $6399: $62
    ccf                                           ; $639a: $3f
    cp c                                          ; $639b: $b9
    sbc $bb                                       ; $639c: $de $bb
    ld h, h                                       ; $639e: $64
    ld [$9ecb], a                                 ; $639f: $ea $cb $9e
    ld h, [hl]                                    ; $63a2: $66
    ld d, l                                       ; $63a3: $55
    ld e, $ff                                     ; $63a4: $1e $ff
    xor $3d                                       ; $63a6: $ee $3d
    add $b5                                       ; $63a8: $c6 $b5
    rst $38                                       ; $63aa: $ff
    sub d                                         ; $63ab: $92
    add b                                         ; $63ac: $80
    or h                                          ; $63ad: $b4
    push de                                       ; $63ae: $d5
    ld e, $b8                                     ; $63af: $1e $b8
    ld b, [hl]                                    ; $63b1: $46
    ld hl, $dfe3                                  ; $63b2: $21 $e3 $df
    reti                                          ; $63b5: $d9


    ld l, c                                       ; $63b6: $69
    ld e, c                                       ; $63b7: $59
    ld a, b                                       ; $63b8: $78
    ld l, b                                       ; $63b9: $68
    inc hl                                        ; $63ba: $23
    db $e3                                        ; $63bb: $e3
    sub b                                         ; $63bc: $90
    cp e                                          ; $63bd: $bb
    ld h, h                                       ; $63be: $64
    dec c                                         ; $63bf: $0d
    ld l, d                                       ; $63c0: $6a
    xor [hl]                                      ; $63c1: $ae
    dec de                                        ; $63c2: $1b
    ld a, l                                       ; $63c3: $7d
    rst $28                                       ; $63c4: $ef
    adc d                                         ; $63c5: $8a
    or d                                          ; $63c6: $b2
    xor d                                         ; $63c7: $aa
    inc [hl]                                      ; $63c8: $34
    add d                                         ; $63c9: $82
    and e                                         ; $63ca: $a3
    dec sp                                        ; $63cb: $3b
    rst $28                                       ; $63cc: $ef
    dec e                                         ; $63cd: $1d
    ld [hl], b                                    ; $63ce: $70
    ld e, c                                       ; $63cf: $59
    sub h                                         ; $63d0: $94
    sbc a                                         ; $63d1: $9f
    sub e                                         ; $63d2: $93
    and d                                         ; $63d3: $a2
    sub h                                         ; $63d4: $94
    ld [hl], e                                    ; $63d5: $73
    ld a, [hl+]                                   ; $63d6: $2a
    db $f4                                        ; $63d7: $f4
    xor $02                                       ; $63d8: $ee $02
    ld l, [hl]                                    ; $63da: $6e
    dec b                                         ; $63db: $05
    db $10                                        ; $63dc: $10
    ld e, [hl]                                    ; $63dd: $5e
    dec c                                         ; $63de: $0d
    rst $08                                       ; $63df: $cf
    ld a, [hl+]                                   ; $63e0: $2a
    rst $20                                       ; $63e1: $e7
    adc a                                         ; $63e2: $8f
    ld d, $85                                     ; $63e3: $16 $85
    ld e, h                                       ; $63e5: $5c
    rst $38                                       ; $63e6: $ff
    ld d, d                                       ; $63e7: $52
    ld l, d                                       ; $63e8: $6a
    ld a, b                                       ; $63e9: $78
    ld e, $77                                     ; $63ea: $1e $77
    jr z, @-$5a                                   ; $63ec: $28 $a4

    pop af                                        ; $63ee: $f1
    ld a, [hl]                                    ; $63ef: $7e
    ld bc, $9487                                  ; $63f0: $01 $87 $94
    ld b, [hl]                                    ; $63f3: $46
    ld [hl], b                                    ; $63f4: $70
    ld [$ed65], sp                                ; $63f5: $08 $65 $ed
    ccf                                           ; $63f8: $3f
    ld d, e                                       ; $63f9: $53
    ld [hl], e                                    ; $63fa: $73
    rst $18                                       ; $63fb: $df
    rst $30                                       ; $63fc: $f7
    dec bc                                        ; $63fd: $0b
    rst $30                                       ; $63fe: $f7
    ld a, l                                       ; $63ff: $7d
    rrca                                          ; $6400: $0f
    call $d42b                                    ; $6401: $cd $2b $d4
    ld e, h                                       ; $6404: $5c
    inc c                                         ; $6405: $0c
    xor c                                         ; $6406: $a9
    call c, Call_000_2ca1                         ; $6407: $dc $a1 $2c
    ld [$f6b2], sp                                ; $640a: $08 $b2 $f6
    rla                                           ; $640d: $17
    ld l, l                                       ; $640e: $6d
    ld a, [$1022]                                 ; $640f: $fa $22 $10
    ld [hl], h                                    ; $6412: $74
    ld c, $94                                     ; $6413: $0e $94
    ld [hl-], a                                   ; $6415: $32
    ld l, l                                       ; $6416: $6d
    ld h, h                                       ; $6417: $64
    db $fc                                        ; $6418: $fc
    ld [hl], c                                    ; $6419: $71
    xor b                                         ; $641a: $a8
    xor a                                         ; $641b: $af
    dec de                                        ; $641c: $1b
    sbc l                                         ; $641d: $9d
    ld [hl], e                                    ; $641e: $73
    call nz, $91ce                                ; $641f: $c4 $ce $91
    ld c, [hl]                                    ; $6422: $4e
    db $10                                        ; $6423: $10
    inc [hl]                                      ; $6424: $34
    ld l, l                                       ; $6425: $6d
    ld h, h                                       ; $6426: $64
    sbc $bb                                       ; $6427: $de $bb
    ld [hl-], a                                   ; $6429: $32
    jr nc, jr_060_6467                            ; $642a: $30 $3b

    rst $28                                       ; $642c: $ef
    rla                                           ; $642d: $17
    ld l, l                                       ; $642e: $6d
    and $f5                                       ; $642f: $e6 $f5
    and b                                         ; $6431: $a0
    ld a, [hl]                                    ; $6432: $7e
    rst $30                                       ; $6433: $f7
    sbc h                                         ; $6434: $9c
    cp e                                          ; $6435: $bb
    db $f4                                        ; $6436: $f4
    jp c, $17cb                                   ; $6437: $da $cb $17

    add l                                         ; $643a: $85
    ld e, h                                       ; $643b: $5c
    inc c                                         ; $643c: $0c
    add sp, -$4c                                  ; $643d: $e8 $b4
    ld a, [bc]                                    ; $643f: $0a

jr_060_6440:
    adc a                                         ; $6440: $8f
    ld a, b                                       ; $6441: $78
    xor $8e                                       ; $6442: $ee $8e
    sbc l                                         ; $6444: $9d
    or h                                          ; $6445: $b4
    ld e, l                                       ; $6446: $5d
    add hl, de                                    ; $6447: $19
    sbc b                                         ; $6448: $98
    sbc l                                         ; $6449: $9d
    rst $30                                       ; $644a: $f7
    dec bc                                        ; $644b: $0b
    db $ed                                        ; $644c: $ed
    ccf                                           ; $644d: $3f
    ld d, e                                       ; $644e: $53
    ld b, e                                       ; $644f: $43
    dec de                                        ; $6450: $1b
    add hl, de                                    ; $6451: $19
    ld a, a                                       ; $6452: $7f
    ld e, h                                       ; $6453: $5c
    and c                                         ; $6454: $a1
    and $50                                       ; $6455: $e6 $50
    sbc a                                         ; $6457: $9f
    adc [hl]                                      ; $6458: $8e
    sub [hl]                                      ; $6459: $96
    jr z, jr_060_6440                             ; $645a: $28 $e4

    ld d, h                                       ; $645c: $54
    rst $38                                       ; $645d: $ff
    or l                                          ; $645e: $b5
    cp d                                          ; $645f: $ba
    rlca                                          ; $6460: $07
    push af                                       ; $6461: $f5
    cp e                                          ; $6462: $bb
    ld sp, hl                                     ; $6463: $f9
    sbc $01                                       ; $6464: $de $01
    sub a                                         ; $6466: $97

jr_060_6467:
    add hl, sp                                    ; $6467: $39
    rla                                           ; $6468: $17
    sbc e                                         ; $6469: $9b
    sbc $8d                                       ; $646a: $de $8d
    ld c, [hl]                                    ; $646c: $4e
    jp c, Jump_060_736a                           ; $646d: $da $6a $73

    ld [hl], h                                    ; $6470: $74
    sub a                                         ; $6471: $97
    sub c                                         ; $6472: $91
    ccf                                           ; $6473: $3f
    rst $10                                       ; $6474: $d7
    ld [$7850], a                                 ; $6475: $ea $50 $78
    inc c                                         ; $6478: $0c
    ld a, l                                       ; $6479: $7d
    sbc a                                         ; $647a: $9f
    ld d, a                                       ; $647b: $57
    ld e, e                                       ; $647c: $5b
    call nc, $be2c                                ; $647d: $d4 $2c $be
    ld e, a                                       ; $6480: $5f
    sub a                                         ; $6481: $97
    dec sp                                        ; $6482: $3b
    add [hl]                                      ; $6483: $86
    sbc $3d                                       ; $6484: $de $3d
    dec d                                         ; $6486: $15
    sbc [hl]                                      ; $6487: $9e
    ld sp, $55f4                                  ; $6488: $31 $f4 $55
    push af                                       ; $648b: $f5
    pop de                                        ; $648c: $d1
    adc e                                         ; $648d: $8b
    adc l                                         ; $648e: $8d
    inc sp                                        ; $648f: $33
    ld c, a                                       ; $6490: $4f
    daa                                           ; $6491: $27
    db $dd                                        ; $6492: $dd
    sub c                                         ; $6493: $91
    or [hl]                                       ; $6494: $b6
    jp c, Jump_000_21dc                           ; $6495: $da $dc $21

    ld sp, hl                                     ; $6498: $f9
    dec l                                         ; $6499: $2d
    xor a                                         ; $649a: $af
    ld e, d                                       ; $649b: $5a
    sub b                                         ; $649c: $90
    cp l                                          ; $649d: $bd
    rlca                                          ; $649e: $07
    jp z, Jump_060_5c74                           ; $649f: $ca $74 $5c

    inc d                                         ; $64a2: $14
    ld [hl], d                                    ; $64a3: $72
    sbc a                                         ; $64a4: $9f
    rst $10                                       ; $64a5: $d7
    adc l                                         ; $64a6: $8d
    sbc [hl]                                      ; $64a7: $9e
    inc hl                                        ; $64a8: $23
    halt                                          ; $64a9: $76
    adc $1d                                       ; $64aa: $ce $1d
    ld d, h                                       ; $64ac: $54
    add l                                         ; $64ad: $85
    inc a                                         ; $64ae: $3c
    ld c, $a4                                     ; $64af: $0e $a4
    and h                                         ; $64b1: $a4
    ld de, $d52c                                  ; $64b2: $11 $2c $d5
    ld c, c                                       ; $64b5: $49
    ld e, e                                       ; $64b6: $5b
    ld l, l                                       ; $64b7: $6d
    ld l, $86                                     ; $64b8: $2e $86
    xor c                                         ; $64ba: $a9
    cpl                                           ; $64bb: $2f
    ld l, e                                       ; $64bc: $6b
    sbc b                                         ; $64bd: $98
    db $fc                                        ; $64be: $fc
    add d                                         ; $64bf: $82
    db $dd                                        ; $64c0: $dd
    inc hl                                        ; $64c1: $23
    rst $38                                       ; $64c2: $ff
    ld [hl], e                                    ; $64c3: $73
    cp a                                          ; $64c4: $bf
    add a                                         ; $64c5: $87
    db $e4                                        ; $64c6: $e4
    xor e                                         ; $64c7: $ab
    dec a                                         ; $64c8: $3d
    add $b5                                       ; $64c9: $c6 $b5
    rst $38                                       ; $64cb: $ff
    sub d                                         ; $64cc: $92
    add b                                         ; $64cd: $80
    rst $30                                       ; $64ce: $f7
    jp c, $acbf                                   ; $64cf: $da $bf $ac

    push de                                       ; $64d2: $d5
    ld c, l                                       ; $64d3: $4d
    ld [hl], a                                    ; $64d4: $77
    xor $f3                                       ; $64d5: $ee $f3
    ld h, d                                       ; $64d7: $62
    ld b, b                                       ; $64d8: $40
    xor a                                         ; $64d9: $af
    pop hl                                        ; $64da: $e1
    xor d                                         ; $64db: $aa
    adc h                                         ; $64dc: $8c
    dec bc                                        ; $64dd: $0b
    rrca                                          ; $64de: $0f
    ld l, l                                       ; $64df: $6d
    ld h, h                                       ; $64e0: $64
    db $fc                                        ; $64e1: $fc
    ld [hl], c                                    ; $64e2: $71
    add sp, $5c                                   ; $64e3: $e8 $5c
    add a                                         ; $64e5: $87
    ld d, d                                       ; $64e6: $52
    sbc h                                         ; $64e7: $9c
    dec bc                                        ; $64e8: $0b
    ld h, l                                       ; $64e9: $65
    ld d, c                                       ; $64ea: $51
    rst $10                                       ; $64eb: $d7
    and b                                         ; $64ec: $a0
    ld [hl], e                                    ; $64ed: $73
    xor c                                         ; $64ee: $a9
    dec bc                                        ; $64ef: $0b
    ld a, [c]                                     ; $64f0: $f2
    jp nz, Jump_000_12a3                          ; $64f1: $c2 $a3 $12

    and h                                         ; $64f4: $a4
    call c, $ed2f                                 ; $64f5: $dc $2f $ed
    pop af                                        ; $64f8: $f1
    rst $00                                       ; $64f9: $c7
    ld d, l                                       ; $64fa: $55
    push af                                       ; $64fb: $f5
    ei                                            ; $64fc: $fb
    ld d, b                                       ; $64fd: $50
    rra                                           ; $64fe: $1f
    jp hl                                         ; $64ff: $e9


    call nc, $b4d1                                ; $6500: $d4 $d1 $b4
    ld c, c                                       ; $6503: $49
    inc sp                                        ; $6504: $33
    add a                                         ; $6505: $87
    adc $39                                       ; $6506: $ce $39
    rst $00                                       ; $6508: $c7
    ldh a, [$98]                                  ; $6509: $f0 $98
    or [hl]                                       ; $650b: $b6
    or $9f                                        ; $650c: $f6 $9f
    xor c                                         ; $650e: $a9
    add hl, sp                                    ; $650f: $39
    rst $20                                       ; $6510: $e7
    dec b                                         ; $6511: $05
    ld d, a                                       ; $6512: $57
    ld h, [hl]                                    ; $6513: $66
    adc b                                         ; $6514: $88
    ld e, h                                       ; $6515: $5c
    ld l, e                                       ; $6516: $6b
    ret z                                         ; $6517: $c8

    dec e                                         ; $6518: $1d
    sub d                                         ; $6519: $92
    rst $18                                       ; $651a: $df
    ld a, [c]                                     ; $651b: $f2
    xor d                                         ; $651c: $aa
    dec b                                         ; $651d: $05
    reti                                          ; $651e: $d9


    ld a, e                                       ; $651f: $7b
    and b                                         ; $6520: $a0
    ld c, h                                       ; $6521: $4c
    rst $00                                       ; $6522: $c7
    ld b, l                                       ; $6523: $45
    ld hl, $79f7                                  ; $6524: $21 $f7 $79
    db $dd                                        ; $6527: $dd
    add sp, $39                                   ; $6528: $e8 $39
    ld h, d                                       ; $652a: $62
    rst $20                                       ; $652b: $e7
    call c, Call_060_5541                         ; $652c: $dc $41 $55
    ret z                                         ; $652f: $c8

    add c                                         ; $6530: $81
    sub h                                         ; $6531: $94
    inc [hl]                                      ; $6532: $34
    add d                                         ; $6533: $82
    and l                                         ; $6534: $a5
    ld a, [hl-]                                   ; $6535: $3a
    rst $08                                       ; $6536: $cf
    jp c, $d0f9                                   ; $6537: $da $f9 $d0

    cp e                                          ; $653a: $bb
    xor c                                         ; $653b: $a9
    ld [hl], h                                    ; $653c: $74
    ld sp, $8d6d                                  ; $653d: $31 $6d $8d
    db $10                                        ; $6540: $10
    sbc [hl]                                      ; $6541: $9e
    jp c, $94bf                                   ; $6542: $da $bf $94

    xor d                                         ; $6545: $aa
    ld b, b                                       ; $6546: $40
    ld [hl], b                                    ; $6547: $70
    and c                                         ; $6548: $a1
    xor h                                         ; $6549: $ac
    or $2f                                        ; $654a: $f6 $2f
    push bc                                       ; $654c: $c5
    ld c, h                                       ; $654d: $4c
    ld de, $de74                                  ; $654e: $11 $74 $de
    cpl                                           ; $6551: $2f
    add a                                         ; $6552: $87
    jp nz, $98f3                                  ; $6553: $c2 $f3 $98

    ld bc, $539d                                  ; $6556: $01 $9d $53
    rst $38                                       ; $6559: $ff
    ret z                                         ; $655a: $c8

    and c                                         ; $655b: $a1
    cp [hl]                                       ; $655c: $be
    ld [$3d04], sp                                ; $655d: $08 $04 $3d
    or h                                          ; $6560: $b4
    xor h                                         ; $6561: $ac
    or $5f                                        ; $6562: $f6 $5f
    ld [$a418], a                                 ; $6564: $ea $18 $a4
    xor h                                         ; $6567: $ac
    ld b, e                                       ; $6568: $43
    add hl, hl                                    ; $6569: $29
    ld d, $f4                                     ; $656a: $16 $f4
    ld b, d                                       ; $656c: $42
    ld e, c                                       ; $656d: $59
    call nc, $e835                                ; $656e: $d4 $35 $e8
    add l                                         ; $6571: $85
    ld b, a                                       ; $6572: $47
    dec h                                         ; $6573: $25
    ld c, b                                       ; $6574: $48
    ld e, c                                       ; $6575: $59

Jump_060_6576:
    xor e                                         ; $6576: $ab
    cp c                                          ; $6577: $b9
    xor d                                         ; $6578: $aa
    ld b, d                                       ; $6579: $42
    or a                                          ; $657a: $b7
    call nc, $2785                                ; $657b: $d4 $85 $27
    sbc e                                         ; $657e: $9b
    add sp, $7b                                   ; $657f: $e8 $7b
    db $ed                                        ; $6581: $ed
    pop af                                        ; $6582: $f1
    ccf                                           ; $6583: $3f
    ld [hl], d                                    ; $6584: $72
    adc l                                         ; $6585: $8d
    db $10                                        ; $6586: $10
    sbc [hl]                                      ; $6587: $9e
    jp c, $94bf                                   ; $6588: $da $bf $94

    xor d                                         ; $658b: $aa
    ld b, b                                       ; $658c: $40
    ld [hl], b                                    ; $658d: $70
    ld e, a                                       ; $658e: $5f
    ld c, d                                       ; $658f: $4a
    inc sp                                        ; $6590: $33
    ld l, c                                       ; $6591: $69
    xor e                                         ; $6592: $ab
    call $a555                                    ; $6593: $cd $55 $a5

jr_060_6596:
    rra                                           ; $6596: $1f
    add hl, sp                                    ; $6597: $39
    inc [hl]                                      ; $6598: $34
    rrca                                          ; $6599: $0f
    call nc, $d391                                ; $659a: $d4 $91 $d3
    dec b                                         ; $659d: $05

Call_060_659e:
    db $d3                                        ; $659e: $d3
    ld a, e                                       ; $659f: $7b
    and b                                         ; $65a0: $a0
    ret nc                                        ; $65a1: $d0

    ld b, [hl]                                    ; $65a2: $46
    add $50                                       ; $65a3: $c6 $50
    ld [hl], a                                    ; $65a5: $77
    ld c, b                                       ; $65a6: $48
    ld a, [hl]                                    ; $65a7: $7e
    sla e                                         ; $65a8: $cb $23
    rst $38                                       ; $65aa: $ff
    sub c                                         ; $65ab: $91
    add sp, $49                                   ; $65ac: $e8 $49
    jr z, jr_060_6596                             ; $65ae: $28 $e6

    add c                                         ; $65b0: $81
    and b                                         ; $65b1: $a0
    rst $10                                       ; $65b2: $d7
    ld l, d                                       ; $65b3: $6a
    xor [hl]                                      ; $65b4: $ae
    ld [bc], a                                    ; $65b5: $02
    ld c, a                                       ; $65b6: $4f
    dec b                                         ; $65b7: $05
    pop hl                                        ; $65b8: $e1
    sub b                                         ; $65b9: $90
    adc e                                         ; $65ba: $8b
    ld b, d                                       ; $65bb: $42
    adc [hl]                                      ; $65bc: $8e
    db $fc                                        ; $65bd: $fc
    ld [hl-], a                                   ; $65be: $32
    ld [hl-], a                                   ; $65bf: $32
    ld [hl], h                                    ; $65c0: $74
    ld [hl], h                                    ; $65c1: $74
    xor $47                                       ; $65c2: $ee $47
    xor e                                         ; $65c4: $ab
    db $fd                                        ; $65c5: $fd
    ld c, e                                       ; $65c6: $4b
    ld [hl], c                                    ; $65c7: $71
    ld l, $94                                     ; $65c8: $2e $94
    and c                                         ; $65ca: $a1
    ld h, l                                       ; $65cb: $65
    or l                                          ; $65cc: $b5
    rst $38                                       ; $65cd: $ff
    ld d, d                                       ; $65ce: $52
    rst $28                                       ; $65cf: $ef
    rla                                           ; $65d0: $17
    ld l, l                                       ; $65d1: $6d
    ld a, [$90a2]                                 ; $65d2: $fa $a2 $90
    sub l                                         ; $65d5: $95

jr_060_65d6:
    dec [hl]                                      ; $65d6: $35
    sbc c                                         ; $65d7: $99
    adc $e9                                       ; $65d8: $ce $e9
    add d                                         ; $65da: $82
    adc $18                                       ; $65db: $ce $18
    xor d                                         ; $65dd: $aa
    add b                                         ; $65de: $80
    inc d                                         ; $65df: $14
    adc e                                         ; $65e0: $8b
    or $b5                                        ; $65e1: $f6 $b5
    sbc c                                         ; $65e3: $99
    ld d, a                                       ; $65e4: $57
    jr nz, jr_060_665d                            ; $65e5: $20 $76

    adc $b2                                       ; $65e7: $ce $b2
    ld b, $15                                     ; $65e9: $06 $15
    cp l                                          ; $65eb: $bd
    ld d, [hl]                                    ; $65ec: $56
    ld [hl], e                                    ; $65ed: $73
    and a                                         ; $65ee: $a7
    ld c, [hl]                                    ; $65ef: $4e
    add l                                         ; $65f0: $85
    sbc $5d                                       ; $65f1: $de $5d
    ret nz                                        ; $65f3: $c0

    xor l                                         ; $65f4: $ad
    nop                                           ; $65f5: $00
    jp nz, $f28b                                  ; $65f6: $c2 $8b $f2

    rst $28                                       ; $65f9: $ef
    ld [c], a                                     ; $65fa: $e2
    call nc, Call_000_1144                        ; $65fb: $d4 $44 $11
    ld [$d486], sp                                ; $65fe: $08 $86 $d4
    cp $02                                        ; $6601: $fe $02
    rst $10                                       ; $6603: $d7
    ld e, c                                       ; $6604: $59
    ld a, b                                       ; $6605: $78
    dec e                                         ; $6606: $1d
    adc d                                         ; $6607: $8a
    rst $10                                       ; $6608: $d7
    ld bc, $f779                                  ; $6609: $01 $79 $f7
    ld a, l                                       ; $660c: $7d
    xor a                                         ; $660d: $af
    db $fd                                        ; $660e: $fd
    sub a                                         ; $660f: $97
    inc b                                         ; $6610: $04
    ld e, h                                       ; $6611: $5c
    db $fd                                        ; $6612: $fd
    dec b                                         ; $6613: $05
    cp l                                          ; $6614: $bd
    rst $08                                       ; $6615: $cf
    inc hl                                        ; $6616: $23
    cp a                                          ; $6617: $bf
    xor h                                         ; $6618: $ac
    or [hl]                                       ; $6619: $b6
    sub d                                         ; $661a: $92
    ld c, d                                       ; $661b: $4a
    ld h, a                                       ; $661c: $67
    and e                                         ; $661d: $a3
    rst $30                                       ; $661e: $f7
    inc b                                         ; $661f: $04
    ld e, h                                       ; $6620: $5c
    inc bc                                        ; $6621: $03
    ld a, d                                       ; $6622: $7a
    ld [hl], a                                    ; $6623: $77
    adc [hl]                                      ; $6624: $8e

jr_060_6625:
    ld [hl], h                                    ; $6625: $74
    add [hl]                                      ; $6626: $86
    jr c, jr_060_65d6                             ; $6627: $38 $ad

    db $fd                                        ; $6629: $fd
    dec b                                         ; $662a: $05
    ld l, l                                       ; $662b: $6d
    and $39                                       ; $662c: $e6 $39
    add a                                         ; $662e: $87
    ld a, a                                       ; $662f: $7f
    dec c                                         ; $6630: $0d
    add sp, -$23                                  ; $6631: $e8 $dd
    ld d, h                                       ; $6633: $54
    cp d                                          ; $6634: $ba
    sbc b                                         ; $6635: $98
    ld [hl], $e7                                  ; $6636: $36 $e7
    ret nc                                        ; $6638: $d0

    inc a                                         ; $6639: $3c
    ld d, b                                       ; $663a: $50
    jp z, $bce7                                   ; $663b: $ca $e7 $bc

    ld l, l                                       ; $663e: $6d
    and $75                                       ; $663f: $e6 $75
    jr z, jr_060_6625                             ; $6641: $28 $e2

    inc e                                         ; $6643: $1c
    ld c, b                                       ; $6644: $48
    or l                                          ; $6645: $b5
    ld h, d                                       ; $6646: $62
    ld a, [hl+]                                   ; $6647: $2a
    ld e, l                                       ; $6648: $5d
    cp h                                          ; $6649: $bc
    ei                                            ; $664a: $fb
    cp [hl]                                       ; $664b: $be
    rla                                           ; $664c: $17
    push hl                                       ; $664d: $e5
    sbc a                                         ; $664e: $9f
    ld h, l                                       ; $664f: $65
    dec c                                         ; $6650: $0d
    add sp, -$23                                  ; $6651: $e8 $dd
    jp c, $975f                                   ; $6653: $da $5f $97

    add a                                         ; $6656: $87
    ld h, d                                       ; $6657: $62
    sbc $8f                                       ; $6658: $de $8f
    add [hl]                                      ; $665a: $86
    sub [hl]                                      ; $665b: $96
    push de                                       ; $665c: $d5

jr_060_665d:
    cp $a5                                        ; $665d: $fe $a5
    ld a, b                                       ; $665f: $78
    push de                                       ; $6660: $d5
    cp c                                          ; $6661: $b9
    add a                                         ; $6662: $87
    sub d                                         ; $6663: $92
    jp z, Jump_000_0a1d                           ; $6664: $ca $1d $0a

    ld c, a                                       ; $6667: $4f
    rst $00                                       ; $6668: $c7
    ei                                            ; $6669: $fb
    cp [hl]                                       ; $666a: $be
    ld e, a                                       ; $666b: $5f
    ld l, l                                       ; $666c: $6d
    ld h, [hl]                                    ; $666d: $66
    or $9c                                        ; $666e: $f6 $9c
    ld c, e                                       ; $6670: $4b
    jr z, jr_060_667f                             ; $6671: $28 $0c

    add l                                         ; $6673: $85
    ld d, a                                       ; $6674: $57
    ei                                            ; $6675: $fb
    sub a                                         ; $6676: $97
    ld [c], a                                     ; $6677: $e2
    xor d                                         ; $6678: $aa
    ld b, b                                       ; $6679: $40
    ldh a, [rNR34]                                ; $667a: $f0 $1e
    ld h, c                                       ; $667c: $61
    cp d                                          ; $667d: $ba
    dec de                                        ; $667e: $1b

jr_060_667f:
    dec e                                         ; $667f: $1d
    call nc, $fbee                                ; $6680: $d4 $ee $fb
    sbc [hl]                                      ; $6683: $9e
    ld h, l                                       ; $6684: $65
    adc l                                         ; $6685: $8d
    db $10                                        ; $6686: $10
    sbc [hl]                                      ; $6687: $9e
    jp c, $94bf                                   ; $6688: $da $bf $94

    add hl, sp                                    ; $668b: $39
    ld h, a                                       ; $668c: $67
    ld e, c                                       ; $668d: $59
    db $ed                                        ; $668e: $ed
    ld e, a                                       ; $668f: $5f
    adc d                                         ; $6690: $8a
    or l                                          ; $6691: $b5
    cp a                                          ; $6692: $bf
    db $ed                                        ; $6693: $ed
    pop af                                        ; $6694: $f1
    rst $00                                       ; $6695: $c7
    add hl, sp                                    ; $6696: $39
    add a                                         ; $6697: $87
    adc $3d                                       ; $6698: $ce $3d

jr_060_669a:
    xor $dd                                       ; $669a: $ee $dd
    rst $08                                       ; $669c: $cf
    ld c, d                                       ; $669d: $4a
    ld b, d                                       ; $669e: $42
    inc d                                         ; $669f: $14
    ld e, c                                       ; $66a0: $59
    ld [$815a], a                                 ; $66a1: $ea $5a $81
    sbc l                                         ; $66a4: $9d
    rst $20                                       ; $66a5: $e7
    cp h                                          ; $66a6: $bc
    ld l, l                                       ; $66a7: $6d
    and $3d                                       ; $66a8: $e6 $3d
    call $94c5                                    ; $66aa: $cd $c5 $94
    db $f4                                        ; $66ad: $f4
    ld l, d                                       ; $66ae: $6a
    rst $38                                       ; $66af: $ff
    ld d, d                                       ; $66b0: $52
    call z, Call_060_4114                         ; $66b1: $cc $14 $41
    rst $20                                       ; $66b4: $e7
    cp l                                          ; $66b5: $bd
    inc bc                                        ; $66b6: $03
    ld l, $23                                     ; $66b7: $2e $23
    sbc e                                         ; $66b9: $9b
    dec c                                         ; $66ba: $0d
    rst $20                                       ; $66bb: $e7
    ld a, $0f                                     ; $66bc: $3e $0f
    call Call_000_0e73                            ; $66be: $cd $73 $0e
    dec l                                         ; $66c1: $2d
    ld c, e                                       ; $66c2: $4b
    jr z, jr_060_66d1                             ; $66c3: $28 $0c

    push bc                                       ; $66c5: $c5
    xor e                                         ; $66c6: $ab
    db $fd                                        ; $66c7: $fd
    sub a                                         ; $66c8: $97
    ld a, d                                       ; $66c9: $7a
    cp a                                          ; $66ca: $bf
    sub a                                         ; $66cb: $97
    jr z, @-$19                                   ; $66cc: $28 $e5

    ld sp, $28f4                                  ; $66ce: $31 $f4 $28

jr_060_66d1:
    adc l                                         ; $66d1: $8d
    or l                                          ; $66d2: $b5
    ld [hl-], a                                   ; $66d3: $32
    db $f4                                        ; $66d4: $f4
    ld l, [hl]                                    ; $66d5: $6e
    ld b, c                                       ; $66d6: $41

Jump_060_66d7:
    rst $18                                       ; $66d7: $df
    cp e                                          ; $66d8: $bb
    sub b                                         ; $66d9: $90
    rst $10                                       ; $66da: $d7
    ld a, [bc]                                    ; $66db: $0a
    jr nz, jr_060_669a                            ; $66dc: $20 $bc

    jr z, @+$41                                   ; $66de: $28 $3f

    daa                                           ; $66e0: $27
    ld b, l                                       ; $66e1: $45

jr_060_66e2:
    add hl, hl                                    ; $66e2: $29
    rst $10                                       ; $66e3: $d7
    ld a, e                                       ; $66e4: $7b
    ld l, l                                       ; $66e5: $6d
    and $f5                                       ; $66e6: $e6 $f5
    adc a                                         ; $66e8: $8f
    adc $31                                       ; $66e9: $ce $31
    db $f4                                        ; $66eb: $f4
    ld a, l                                       ; $66ec: $7d
    ld e, [hl]                                    ; $66ed: $5e
    jp $7d49                                      ; $66ee: $c3 $49 $7d


    ld e, $f7                                     ; $66f1: $1e $f7
    ld [$5281], a                                 ; $66f3: $ea $81 $52
    sbc [hl]                                      ; $66f6: $9e
    ld [hl], e                                    ; $66f7: $73
    cp a                                          ; $66f8: $bf
    di                                            ; $66f9: $f3
    cp l                                          ; $66fa: $bd
    res 1, h                                      ; $66fb: $cb $8c
    adc e                                         ; $66fd: $8b
    ld bc, $be9d                                  ; $66fe: $01 $9d $be
    ld e, a                                       ; $6701: $5f
    sub a                                         ; $6702: $97
    jr z, @-$19                                   ; $6703: $28 $e5

    ld b, l                                       ; $6705: $45
    ld a, d                                       ; $6706: $7a
    rst $00                                       ; $6707: $c7
    adc b                                         ; $6708: $88
    sbc d                                         ; $6709: $9a
    ld a, h                                       ; $670a: $7c
    rst $28                                       ; $670b: $ef
    ld b, d                                       ; $670c: $42
    ld e, [hl]                                    ; $670d: $5e
    dec hl                                        ; $670e: $2b
    add b                                         ; $670f: $80
    ldh a, [$a2]                                  ; $6710: $f0 $a2
    db $fc                                        ; $6712: $fc
    sbc h                                         ; $6713: $9c
    inc d                                         ; $6714: $14
    and l                                         ; $6715: $a5
    ld e, h                                       ; $6716: $5c
    rst $28                                       ; $6717: $ef
    or l                                          ; $6718: $b5

jr_060_6719:
    jp hl                                         ; $6719: $e9


    xor e                                         ; $671a: $ab
    ld sp, $7614                                  ; $671b: $31 $14 $76
    ld c, $41                                     ; $671e: $0e $41
    ld d, $5b                                     ; $6720: $16 $5b
    ld l, b                                       ; $6722: $68
    cp e                                          ; $6723: $bb
    call c, $f431                                 ; $6724: $dc $31 $f4
    xor $5d                                       ; $6727: $ee $5d
    ld d, $a4                                     ; $6729: $16 $a4
    inc [hl]                                      ; $672b: $34
    ld [bc], a                                    ; $672c: $02
    ld [hl], e                                    ; $672d: $73
    ld a, b                                       ; $672e: $78
    xor $17                                       ; $672f: $ee $17
    sub a                                         ; $6731: $97
    jr z, jr_060_6719                             ; $6732: $28 $e5

    ld c, c                                       ; $6734: $49
    ld d, b                                       ; $6735: $50
    inc bc                                        ; $6736: $03
    add hl, hl                                    ; $6737: $29

jr_060_6738:
    ld l, c                                       ; $6738: $69
    inc b                                         ; $6739: $04
    ld c, e                                       ; $673a: $4b
    ld [hl], l                                    ; $673b: $75
    jp nc, Jump_060_6576                          ; $673c: $d2 $76 $65

    ld h, b                                       ; $673f: $60
    halt                                          ; $6740: $76
    sbc $bb                                       ; $6741: $de $bb
    ld d, $17                                     ; $6743: $16 $17
    jp z, $d1ba                                   ; $6745: $ca $ba $d1

    adc e                                         ; $6748: $8b
    ld bc, $be9d                                  ; $6749: $01 $9d $be
    ld e, a                                       ; $674c: $5f
    cpl                                           ; $674d: $2f
    add a                                         ; $674e: $87
    sbc d                                         ; $674f: $9a
    ld hl, sp-$7b                                 ; $6750: $f8 $85
    ld [hl], $ba                                  ; $6752: $36 $ba
    res 3, h                                      ; $6754: $cb $9c
    adc e                                         ; $6756: $8b
    jr z, jr_060_66e2                             ; $6757: $28 $89

    ld d, b                                       ; $6759: $50
    xor $5d                                       ; $675a: $ee $5d
    or $71                                        ; $675c: $f6 $71
    and c                                         ; $675e: $a1
    xor [hl]                                      ; $675f: $ae
    ld a, d                                       ; $6760: $7a
    pop hl                                        ; $6761: $e1
    reti                                          ; $6762: $d9


    ld hl, $2df9                                  ; $6763: $21 $f9 $2d
    ld c, a                                       ; $6766: $4f
    ld a, l                                       ; $6767: $7d

jr_060_6768:
    add hl, de                                    ; $6768: $19
    rst $38                                       ; $6769: $ff
    ld [c], a                                     ; $676a: $e2
    or l                                          ; $676b: $b5
    ld [bc], a                                    ; $676c: $02
    ld [$ca2f], sp                                ; $676d: $08 $2f $ca
    cp a                                          ; $6770: $bf
    rlca                                          ; $6771: $07
    jp z, $d744                                   ; $6772: $ca $44 $d7

    cp $02                                        ; $6775: $fe $02
    add a                                         ; $6777: $87
    xor h                                         ; $6778: $ac
    ld [$e854], a                                 ; $6779: $ea $54 $e8
    db $dd                                        ; $677c: $dd
    dec b                                         ; $677d: $05
    call c, $200a                                 ; $677e: $dc $0a $20
    cp h                                          ; $6781: $bc
    jr z, jr_060_6768                             ; $6782: $28 $e4

    ld a, $2f                                     ; $6784: $3e $2f
    ld [bc], a                                    ; $6786: $02
    ld b, c                                       ; $6787: $41
    rrca                                          ; $6788: $0f
    and h                                         ; $6789: $a4
    and h                                         ; $678a: $a4
    ld de, $d52c                                  ; $678b: $11 $2c $d5
    add hl, hl                                    ; $678e: $29
    sbc $63                                       ; $678f: $de $63
    add hl, de                                    ; $6791: $19
    db $dd                                        ; $6792: $dd
    ld h, l                                       ; $6793: $65
    ld d, c                                       ; $6794: $51
    ld a, [hl]                                    ; $6795: $7e
    ld c, [hl]                                    ; $6796: $4e
    adc d                                         ; $6797: $8a
    ld d, d                                       ; $6798: $52
    adc $99                                       ; $6799: $ce $99
    rst $20                                       ; $679b: $e7
    adc b                                         ; $679c: $88
    sbc l                                         ; $679d: $9d
    dec [hl]                                      ; $679e: $35
    inc a                                         ; $679f: $3c
    ld b, e                                       ; $67a0: $43
    di                                            ; $67a1: $f3
    jr c, jr_060_6738                             ; $67a2: $38 $94

    push de                                       ; $67a4: $d5
    and $fa                                       ; $67a5: $e6 $fa
    sub a                                         ; $67a7: $97
    ld [hl-], a                                   ; $67a8: $32
    ld b, $bc                                     ; $67a9: $06 $bc
    ld [hl], a                                    ; $67ab: $77
    ret z                                         ; $67ac: $c8

    xor e                                         ; $67ad: $ab
    call $9e7d                                    ; $67ae: $cd $7d $9e
    ld a, [bc]                                    ; $67b1: $0a
    rst $08                                       ; $67b2: $cf
    db $e3                                        ; $67b3: $e3
    push bc                                       ; $67b4: $c5
    add b                                         ; $67b5: $80
    ld c, [hl]                                    ; $67b6: $4e
    adc a                                         ; $67b7: $8f
    and c                                         ; $67b8: $a1
    ld c, a                                       ; $67b9: $4f
    jr z, @-$69                                   ; $67ba: $28 $95

    dec a                                         ; $67bc: $3d
    add [hl]                                      ; $67bd: $86
    rst $00                                       ; $67be: $c7
    ld a, e                                       ; $67bf: $7b
    adc h                                         ; $67c0: $8c
    rrca                                          ; $67c1: $0f
    ld [$47a6], sp                                ; $67c2: $08 $a6 $47
    ld [hl], a                                    ; $67c5: $77
    ld e, c                                       ; $67c6: $59
    ld d, l                                       ; $67c7: $55
    cp a                                          ; $67c8: $bf
    xor a                                         ; $67c9: $af
    adc d                                         ; $67ca: $8a
    sbc $6a                                       ; $67cb: $de $6a
    ld a, c                                       ; $67cd: $79
    and $59                                       ; $67ce: $e6 $59
    ld d, l                                       ; $67d0: $55
    adc $3f                                       ; $67d1: $ce $3f
    dec d                                         ; $67d3: $15
    ld a, d                                       ; $67d4: $7a
    ld [hl], a                                    ; $67d5: $77
    ld bc, $02b7                                  ; $67d6: $01 $b7 $02
    ld [$2fdf], sp                                ; $67d9: $08 $df $2f
    db $ed                                        ; $67dc: $ed
    and c                                         ; $67dd: $a1
    db $e3                                        ; $67de: $e3
    xor b                                         ; $67df: $a8
    ld [hl], h                                    ; $67e0: $74
    rst $28                                       ; $67e1: $ef
    ld sp, $fcae                                  ; $67e2: $31 $ae $fc
    inc l                                         ; $67e5: $2c
    ld bc, $53ba                                  ; $67e6: $01 $ba $53
    inc a                                         ; $67e9: $3c
    jr jr_060_67f4                                ; $67ea: $18 $08

    sub [hl]                                      ; $67ec: $96
    cpl                                           ; $67ed: $2f
    and l                                         ; $67ee: $a5
    sub d                                         ; $67ef: $92
    cp a                                          ; $67f0: $bf
    ld [hl], a                                    ; $67f1: $77
    res 7, l                                      ; $67f2: $cb $bd

jr_060_67f4:
    dec bc                                        ; $67f4: $0b
    ld h, l                                       ; $67f5: $65
    ld e, a                                       ; $67f6: $5f
    ret nc                                        ; $67f7: $d0

    ld [hl-], a                                   ; $67f8: $32
    ld [hl-], a                                   ; $67f9: $32
    ld [hl], h                                    ; $67fa: $74
    ld [hl], h                                    ; $67fb: $74
    adc [hl]                                      ; $67fc: $8e
    ld c, d                                       ; $67fd: $4a
    rst $30                                       ; $67fe: $f7
    ld e, $e3                                     ; $67ff: $1e $e3
    ret nc                                        ; $6801: $d0

    rst $08                                       ; $6802: $cf
    db $fd                                        ; $6803: $fd
    ld [bc], a                                    ; $6804: $02
    sub a                                         ; $6805: $97
    add hl, de                                    ; $6806: $19
    rlca                                          ; $6807: $07
    inc de                                        ; $6808: $13
    ld c, d                                       ; $6809: $4a
    sub d                                         ; $680a: $92
    ld b, [hl]                                    ; $680b: $46
    bit 7, [hl]                                   ; $680c: $cb $7e
    or h                                          ; $680e: $b4
    or $5f                                        ; $680f: $f6 $5f
    ld [de], a                                    ; $6811: $12
    or b                                          ; $6812: $b0
    adc [hl]                                      ; $6813: $8e
    call nc, $fb30                                ; $6814: $d4 $30 $fb
    sbc $01                                       ; $6817: $de $01
    sub a                                         ; $6819: $97
    sub c                                         ; $681a: $91
    ccf                                           ; $681b: $3f
    rla                                           ; $681c: $17

jr_060_681d:
    ld d, c                                       ; $681d: $51
    ld [hl], e                                    ; $681e: $73
    sub c                                         ; $681f: $91
    ld l, $68                                     ; $6820: $2e $68
    ld e, $48                                     ; $6822: $1e $48
    ld c, c                                       ; $6824: $49
    inc hl                                        ; $6825: $23
    ld e, b                                       ; $6826: $58
    xor d                                         ; $6827: $aa
    ld [hl], e                                    ; $6828: $73
    jr nc, jr_060_681d                            ; $6829: $30 $f2

    ld c, e                                       ; $682b: $4b
    dec e                                         ; $682c: $1d
    ld sp, hl                                     ; $682d: $f9
    ld h, e                                       ; $682e: $63
    rst $18                                       ; $682f: $df
    cpl                                           ; $6830: $2f
    rlca                                          ; $6831: $07
    ld e, h                                       ; $6832: $5c
    ld d, [hl]                                    ; $6833: $56
    dec [hl]                                      ; $6834: $35
    jp nz, $fbae                                  ; $6835: $c2 $ae $fb

    inc a                                         ; $6838: $3c
    cp d                                          ; $6839: $ba
    bit 5, d                                      ; $683a: $cb $6a
    ld [hl], e                                    ; $683c: $73
    ld [de], a                                    ; $683d: $12
    ld c, d                                       ; $683e: $4a
    rst $30                                       ; $683f: $f7
    ld e, d                                       ; $6840: $5a
    call $87a1                                    ; $6841: $cd $a1 $87
    adc $75                                       ; $6844: $ce $75
    ld l, d                                       ; $6846: $6a
    db $ec                                        ; $6847: $ec
    call c, $1c63                                 ; $6848: $dc $63 $1c
    dec [hl]                                      ; $684b: $35
    push bc                                       ; $684c: $c5
    ld h, h                                       ; $684d: $64
    adc b                                         ; $684e: $88
    adc l                                         ; $684f: $8d
    ld l, e                                       ; $6850: $6b
    dec [hl]                                      ; $6851: $35
    rst $30                                       ; $6852: $f7
    dec b                                         ; $6853: $05
    dec l                                         ; $6854: $2d
    xor e                                         ; $6855: $ab
    cp a                                          ; $6856: $bf
    rst $18                                       ; $6857: $df
    cpl                                           ; $6858: $2f
    ld l, l                                       ; $6859: $6d
    adc $b5                                       ; $685a: $ce $b5
    cp d                                          ; $685c: $ba
    jp hl                                         ; $685d: $e9


    adc $7d                                       ; $685e: $ce $7d
    ld e, [hl]                                    ; $6860: $5e
    ld c, h                                       ; $6861: $4c
    ld c, c                                       ; $6862: $49
    rrca                                          ; $6863: $0f
    and h                                         ; $6864: $a4
    and h                                         ; $6865: $a4
    ld de, $d52c                                  ; $6866: $11 $2c $d5
    add hl, sp                                    ; $6869: $39

jr_060_686a:
    db $10                                        ; $686a: $10
    db $f4                                        ; $686b: $f4
    ld e, d                                       ; $686c: $5a
    call $921d                                    ; $686d: $cd $1d $92
    rst $18                                       ; $6870: $df
    ld [hl], d                                    ; $6871: $72
    sbc l                                         ; $6872: $9d
    ld a, [bc]                                    ; $6873: $0a
    jp nz, $ef21                                  ; $6874: $c2 $21 $ef

    or l                                          ; $6877: $b5
    ld a, c                                       ; $6878: $79
    ld [$62cb], a                                 ; $6879: $ea $cb $62
    ld c, d                                       ; $687c: $4a
    ld a, d                                       ; $687d: $7a
    ld hl, $fe76                                  ; $687e: $21 $76 $fe
    adc $b4                                       ; $6881: $ce $b4
    ld d, l                                       ; $6883: $55
    rst $30                                       ; $6884: $f7
    ld a, b                                       ; $6885: $78
    xor l                                         ; $6886: $ad
    and $62                                       ; $6887: $e6 $62
    ld c, d                                       ; $6889: $4a
    add hl, hl                                    ; $688a: $29
    ld d, $df                                     ; $688b: $16 $df
    cpl                                           ; $688d: $2f
    db $ed                                        ; $688e: $ed
    ccf                                           ; $688f: $3f
    add a                                         ; $6890: $87
    ld a, [$79aa]                                 ; $6891: $fa $aa $79
    ld [de], a                                    ; $6894: $12
    ld c, d                                       ; $6895: $4a
    rst $30                                       ; $6896: $f7
    call c, Call_060_5541                         ; $6897: $dc $41 $55
    ret z                                         ; $689a: $c8

    db $e3                                        ; $689b: $e3
    ld b, b                                       ; $689c: $40
    ld c, d                                       ; $689d: $4a
    ld a, [de]                                    ; $689e: $1a
    pop bc                                        ; $689f: $c1
    ld d, d                                       ; $68a0: $52
    sbc l                                         ; $68a1: $9d
    inc hl                                        ; $68a2: $23
    sbc l                                         ; $68a3: $9d
    rst $20                                       ; $68a4: $e7
    cp h                                          ; $68a5: $bc
    sub a                                         ; $68a6: $97
    ld c, b                                       ; $68a7: $48
    or c                                          ; $68a8: $b1
    call z, $541d                                 ; $68a9: $cc $1d $54
    add l                                         ; $68ac: $85
    sbc h                                         ; $68ad: $9c
    ld a, [$a532]                                 ; $68ae: $fa $32 $a5
    and a                                         ; $68b1: $a7
    db $d3                                        ; $68b2: $d3
    ld b, e                                       ; $68b3: $43
    jr z, jr_060_686a                             ; $68b4: $28 $b4

    ld e, l                                       ; $68b6: $5d
    add hl, de                                    ; $68b7: $19
    sbc b                                         ; $68b8: $98
    sbc l                                         ; $68b9: $9d
    rst $30                                       ; $68ba: $f7
    dec bc                                        ; $68bb: $0b
    ld d, a                                       ; $68bc: $57
    cp $ba                                        ; $68bd: $fe $ba
    ld d, [hl]                                    ; $68bf: $56
    ld [hl], e                                    ; $68c0: $73
    sbc a                                         ; $68c1: $9f
    add a                                         ; $68c2: $87
    ld a, [$2940]                                 ; $68c3: $fa $40 $29
    cpl                                           ; $68c6: $2f
    ld a, [$9d1d]                                 ; $68c7: $fa $1d $9d

jr_060_68ca:
    inc de                                        ; $68ca: $13
    db $e3                                        ; $68cb: $e3
    ld h, b                                       ; $68cc: $60
    and $a9                                       ; $68cd: $e6 $a9
    ld d, b                                       ; $68cf: $50
    xor h                                         ; $68d0: $ac
    ld a, [hl]                                    ; $68d1: $7e
    jp nc, Jump_060_6576                          ; $68d2: $d2 $76 $65

    ld h, b                                       ; $68d5: $60
    halt                                          ; $68d6: $76
    sbc $2f                                       ; $68d7: $de $2f
    rlca                                          ; $68d9: $07
    cp a                                          ; $68da: $bf
    xor h                                         ; $68db: $ac
    ld b, d                                       ; $68dc: $42
    ld [hl], c                                    ; $68dd: $71
    xor $f3                                       ; $68de: $ee $f3
    ld c, $c9                                     ; $68e0: $0e $c9
    ld l, a                                       ; $68e2: $6f
    ld a, c                                       ; $68e3: $79
    ld c, d                                       ; $68e4: $4a
    sub a                                         ; $68e5: $97
    xor c                                         ; $68e6: $a9
    cpl                                           ; $68e7: $2f
    db $eb                                        ; $68e8: $eb
    add b                                         ; $68e9: $80
    ld e, $fa                                     ; $68ea: $1e $fa
    ld e, c                                       ; $68ec: $59
    sub h                                         ; $68ed: $94
    ld a, a                                       ; $68ee: $7f
    add a                                         ; $68ef: $87
    cp d                                          ; $68f0: $ba
    add [hl]                                      ; $68f1: $86
    ld c, c                                       ; $68f2: $49
    daa                                           ; $68f3: $27
    ret z                                         ; $68f4: $c8

    inc e                                         ; $68f5: $1c
    or c                                          ; $68f6: $b1
    or e                                          ; $68f7: $b3
    add [hl]                                      ; $68f8: $86
    ld h, a                                       ; $68f9: $67
    db $e4                                        ; $68fa: $e4
    sub a                                         ; $68fb: $97
    add hl, sp                                    ; $68fc: $39
    add a                                         ; $68fd: $87
    ld c, [hl]                                    ; $68fe: $4e
    rst $10                                       ; $68ff: $d7
    xor c                                         ; $6900: $a9
    ret nc                                        ; $6901: $d0

    cp e                                          ; $6902: $bb
    dec bc                                        ; $6903: $0b
    jr c, jr_060_68ca                             ; $6904: $38 $c4

    ld c, [hl]                                    ; $6906: $4e
    ld [hl-], a                                   ; $6907: $32
    call nz, $fbc6                                ; $6908: $c4 $c6 $fb
    dec b                                         ; $690b: $05
    add a                                         ; $690c: $87
    db $e4                                        ; $690d: $e4
    or a                                          ; $690e: $b7
    cp h                                          ; $690f: $bc
    ld [bc], a                                    ; $6910: $02
    or c                                          ; $6911: $b1
    ld [hl], e                                    ; $6912: $73
    rrca                                          ; $6913: $0f
    sub h                                         ; $6914: $94
    add hl, hl                                    ; $6915: $29
    cp l                                          ; $6916: $bd
    and e                                         ; $6917: $a3
    adc e                                         ; $6918: $8b
    and [hl]                                      ; $6919: $a6
    ld a, [bc]                                    ; $691a: $0a
    ld c, b                                       ; $691b: $48
    ld [hl], c                                    ; $691c: $71
    sbc $2f                                       ; $691d: $de $2f
    rlca                                          ; $691f: $07
    ld e, h                                       ; $6920: $5c
    ld d, $43                                     ; $6921: $16 $43
    ld e, a                                       ; $6923: $5f
    ld [hl], c                                    ; $6924: $71
    adc d                                         ; $6925: $8a
    rst $10                                       ; $6926: $d7
    add hl, hl                                    ; $6927: $29
    jp hl                                         ; $6928: $e9


    ld a, l                                       ; $6929: $7d
    ld e, [hl]                                    ; $692a: $5e
    rst $38                                       ; $692b: $ff
    or c                                          ; $692c: $b1
    add a                                         ; $692d: $87
    add hl, bc                                    ; $692e: $09
    ld c, d                                       ; $692f: $4a
    ld a, c                                       ; $6930: $79
    adc a                                         ; $6931: $8f
    ld [hl], c                                    ; $6932: $71
    adc l                                         ; $6933: $8d
    call nc, $e0eb                                ; $6934: $d4 $eb $e0
    ld a, [hl]                                    ; $6937: $7e
    ld bc, $ceed                                  ; $6938: $01 $ed $ce
    ld [hl], l                                    ; $693b: $75
    cp l                                          ; $693c: $bd
    or b                                          ; $693d: $b0
    ld [hl], e                                    ; $693e: $73
    ccf                                           ; $693f: $3f
    ld e, d                                       ; $6940: $5a
    ld [hl], $51                                  ; $6941: $36 $51
    inc a                                         ; $6943: $3c
    ld c, d                                       ; $6944: $4a
    cp c                                          ; $6945: $b9
    ld e, a                                       ; $6946: $5f
    rlca                                          ; $6947: $07
    ld b, c                                       ; $6948: $41
    sub $c8                                       ; $6949: $d6 $c8
    sub b                                         ; $694b: $90
    adc e                                         ; $694c: $8b
    ld b, d                                       ; $694d: $42
    ld a, [c]                                     ; $694e: $f2
    rst $28                                       ; $694f: $ef
    db $ec                                        ; $6950: $ec
    dec a                                         ; $6951: $3d
    ld d, b                                       ; $6952: $50
    or $79                                        ; $6953: $f6 $79
    add sp, $5c                                   ; $6955: $e8 $5c
    ld d, l                                       ; $6957: $55
    adc $49                                       ; $6958: $ce $49
    jr z, @-$18                                   ; $695a: $28 $e6

    ld d, l                                       ; $695c: $55
    ld a, d                                       ; $695d: $7a
    adc b                                         ; $695e: $88
    ld a, c                                       ; $695f: $79
    ld h, h                                       ; $6960: $64
    inc c                                         ; $6961: $0c
    ld [hl], l                                    ; $6962: $75
    rst $08                                       ; $6963: $cf
    sub a                                         ; $6964: $97
    and l                                         ; $6965: $a5
    and [hl]                                      ; $6966: $a6
    or d                                          ; $6967: $b2
    ld [hl], e                                    ; $6968: $73
    sub [hl]                                      ; $6969: $96
    ld b, l                                       ; $696a: $45
    ld a, d                                       ; $696b: $7a
    rst $00                                       ; $696c: $c7
    cp c                                          ; $696d: $b9
    add e                                         ; $696e: $83
    xor d                                         ; $696f: $aa
    sub b                                         ; $6970: $90
    ld d, c                                       ; $6971: $51
    rst $38                                       ; $6972: $ff
    ld d, l                                       ; $6973: $55
    ld sp, hl                                     ; $6974: $f9
    ld a, [hl]                                    ; $6975: $7e
    ld bc, $5c07                                  ; $6976: $01 $07 $5c
    ld d, $43                                     ; $6979: $16 $43
    ld e, a                                       ; $697b: $5f
    ld [hl], c                                    ; $697c: $71
    adc d                                         ; $697d: $8a
    rst $10                                       ; $697e: $d7
    add hl, hl                                    ; $697f: $29
    jp hl                                         ; $6980: $e9


    ld a, l                                       ; $6981: $7d
    ld e, [hl]                                    ; $6982: $5e
    rst $38                                       ; $6983: $ff
    or c                                          ; $6984: $b1
    ld h, a                                       ; $6985: $67
    add hl, de                                    ; $6986: $19
    jp hl                                         ; $6987: $e9


    sbc $48                                       ; $6988: $de $48
    and e                                         ; $698a: $a3
    dec b                                         ; $698b: $05
    dec a                                         ; $698c: $3d
    ld [hl], a                                    ; $698d: $77
    ld d, b                                       ; $698e: $50
    dec d                                         ; $698f: $15
    sub d                                         ; $6990: $92
    or [hl]                                       ; $6991: $b6
    jr z, @+$26                                   ; $6992: $28 $24

    jp nz, $cfd0                                  ; $6994: $c2 $d0 $cf

    and d                                         ; $6997: $a2
    db $fc                                        ; $6998: $fc
    dec sp                                        ; $6999: $3b
    call nc, Call_060_4c35                        ; $699a: $d4 $35 $4c
    ld a, [hl-]                                   ; $699d: $3a
    ld b, c                                       ; $699e: $41
    or $3b                                        ; $699f: $f6 $3b
    inc bc                                        ; $69a1: $03
    xor [hl]                                      ; $69a2: $ae
    ld a, [hl+]                                   ; $69a3: $2a
    cp l                                          ; $69a4: $bd
    pop de                                        ; $69a5: $d1

jr_060_69a6:
    ld [hl], b                                    ; $69a6: $70
    xor $81                                       ; $69a7: $ee $81
    or d                                          ; $69a9: $b2
    ldh a, [$28]                                  ; $69aa: $f0 $28
    cp l                                          ; $69ac: $bd
    db $e3                                        ; $69ad: $e3
    ld e, d                                       ; $69ae: $5a
    call Call_000_2f95                            ; $69af: $cd $95 $2f
    push bc                                       ; $69b2: $c5
    ld [c], a                                     ; $69b3: $e2
    ei                                            ; $69b4: $fb
    dec b                                         ; $69b5: $05
    ld d, a                                       ; $69b6: $57
    ld h, $35                                     ; $69b7: $26 $35
    sbc [hl]                                      ; $69b9: $9e
    add sp, -$05                                  ; $69ba: $e8 $fb
    cp h                                          ; $69bc: $bc
    cp $d1                                        ; $69bd: $fe $d1
    adc e                                         ; $69bf: $8b
    add hl, hl                                    ; $69c0: $29
    jp hl                                         ; $69c1: $e9


    dec a                                         ; $69c2: $3d
    add $7d                                       ; $69c3: $c6 $7d
    ld e, [hl]                                    ; $69c5: $5e
    ld l, l                                       ; $69c6: $6d
    add l                                         ; $69c7: $85
    xor $f4                                       ; $69c8: $ee $f4
    and d                                         ; $69ca: $a2
    sub b                                         ; $69cb: $90
    ld a, e                                       ; $69cc: $7b
    ld e, h                                       ; $69cd: $5c
    call z, Call_060_5db4                         ; $69ce: $cc $b4 $5d
    add hl, de                                    ; $69d1: $19
    sbc b                                         ; $69d2: $98
    sbc l                                         ; $69d3: $9d
    rst $30                                       ; $69d4: $f7
    dec bc                                        ; $69d5: $0b
    rlca                                          ; $69d6: $07
    ld e, h                                       ; $69d7: $5c
    ld b, [hl]                                    ; $69d8: $46
    ld [hl], $1b                                  ; $69d9: $36 $1b
    adc $81                                       ; $69db: $ce $81
    ld d, d                                       ; $69dd: $52
    sbc $e7                                       ; $69de: $de $e7
    pop de                                        ; $69e0: $d1
    ld e, l                                       ; $69e1: $5d
    ld d, [hl]                                    ; $69e2: $56
    ld e, e                                       ; $69e3: $5b
    ret nc                                        ; $69e4: $d0

    pop de                                        ; $69e5: $d1
    add hl, sp                                    ; $69e6: $39
    add hl, bc                                    ; $69e7: $09
    push bc                                       ; $69e8: $c5
    cp h                                          ; $69e9: $bc
    ld a, [de]                                    ; $69ea: $1a
    sbc [hl]                                      ; $69eb: $9e
    pop de                                        ; $69ec: $d1
    ld e, l                                       ; $69ed: $5d
    sub $ea                                       ; $69ee: $d6 $ea
    and [hl]                                      ; $69f0: $a6
    dec sp                                        ; $69f1: $3b
    rst $28                                       ; $69f2: $ef
    rla                                           ; $69f3: $17
    rlca                                          ; $69f4: $07
    ld b, c                                       ; $69f5: $41
    and [hl]                                      ; $69f6: $a6
    adc h                                         ; $69f7: $8c
    xor $73                                       ; $69f8: $ee $73
    xor [hl]                                      ; $69fa: $ae
    pop de                                        ; $69fb: $d1
    cp a                                          ; $69fc: $bf
    jr z, jr_060_69a6                             ; $69fd: $28 $a7

    ld h, a                                       ; $69ff: $67
    pop bc                                        ; $6a00: $c1
    db $fd                                        ; $6a01: $fd
    sbc $bd                                       ; $6a02: $de $bd
    cpl                                           ; $6a04: $2f
    sbc b                                         ; $6a05: $98
    xor [hl]                                      ; $6a06: $ae
    rst $30                                       ; $6a07: $f7
    jp c, Jump_000_35f4                           ; $6a08: $da $f4 $35

    db $f4                                        ; $6a0b: $f4
    ld b, h                                       ; $6a0c: $44
    cpl                                           ; $6a0d: $2f
    sub h                                         ; $6a0e: $94
    jp c, $4b5c                                   ; $6a0f: $da $5c $4b

    rst $00                                       ; $6a12: $c7
    ld [$c821], a                                 ; $6a13: $ea $21 $c8
    db $fd                                        ; $6a16: $fd
    ld [bc], a                                    ; $6a17: $02
    rlca                                          ; $6a18: $07
    ld b, c                                       ; $6a19: $41
    cp h                                          ; $6a1a: $bc
    ld b, [hl]                                    ; $6a1b: $46
    ld d, d                                       ; $6a1c: $52
    ld sp, $0abd                                  ; $6a1d: $31 $bd $0a
    push bc                                       ; $6a20: $c5
    cp c                                          ; $6a21: $b9
    rst $08                                       ; $6a22: $cf
    dec sp                                        ; $6a23: $3b
    inc h                                         ; $6a24: $24
    cp a                                          ; $6a25: $bf
    push hl                                       ; $6a26: $e5
    add hl, sp                                    ; $6a27: $39
    rst $10                                       ; $6a28: $d7
    and c                                         ; $6a29: $a1
    ld a, b                                       ; $6a2a: $78
    or l                                          ; $6a2b: $b5
    cp c                                          ; $6a2c: $b9
    ld l, [hl]                                    ; $6a2d: $6e
    ld e, h                                       ; $6a2e: $5c
    dec c                                         ; $6a2f: $0d
    rst $08                                       ; $6a30: $cf
    ret z                                         ; $6a31: $c8

    cpl                                           ; $6a32: $2f
    xor e                                         ; $6a33: $ab
    adc $e9                                       ; $6a34: $ce $e9
    ld a, b                                       ; $6a36: $78
    cp a                                          ; $6a37: $bf
    rla                                           ; $6a38: $17
    ld d, c                                       ; $6a39: $51
    or e                                          ; $6a3a: $b3
    or d                                          ; $6a3b: $b2
    sbc e                                         ; $6a3c: $9b
    ld e, c                                       ; $6a3d: $59
    cp e                                          ; $6a3e: $bb
    dec d                                         ; $6a3f: $15
    ld b, e                                       ; $6a40: $43
    db $10                                        ; $6a41: $10
    rst $20                                       ; $6a42: $e7

Jump_060_6a43:
    ld e, c                                       ; $6a43: $59
    cp e                                          ; $6a44: $bb
    jr z, jr_060_6aab                             ; $6a45: $28 $64

    db $fc                                        ; $6a47: $fc
    dec b                                         ; $6a48: $05
    dec sp                                        ; $6a49: $3b
    ld c, b                                       ; $6a4a: $48
    and c                                         ; $6a4b: $a1
    db $ed                                        ; $6a4c: $ed
    jp nz, $aa0e                                  ; $6a4d: $c2 $0e $aa

    ld b, d                                       ; $6a50: $42
    ld a, [hl-]                                   ; $6a51: $3a
    ld l, c                                       ; $6a52: $69
    dec sp                                        ; $6a53: $3b
    rst $18                                       ; $6a54: $df
    dec [hl]                                      ; $6a55: $35
    and [hl]                                      ; $6a56: $a6
    ld h, h                                       ; $6a57: $64
    ld [hl], c                                    ; $6a58: $71
    xor a                                         ; $6a59: $af
    ld c, [hl]                                    ; $6a5a: $4e
    jp c, $fe0e                                   ; $6a5b: $da $0e $fe

    ld [bc], a                                    ; $6a5e: $02
    sub [hl]                                      ; $6a5f: $96
    cp d                                          ; $6a60: $ba
    halt                                          ; $6a61: $76
    xor b                                         ; $6a62: $a8
    inc e                                         ; $6a63: $1c
    ld [de], a                                    ; $6a64: $12
    ld c, h                                       ; $6a65: $4c
    db $db                                        ; $6a66: $db
    ld sp, hl                                     ; $6a67: $f9
    add c                                         ; $6a68: $81
    cp a                                          ; $6a69: $bf
    add b                                         ; $6a6a: $80
    and d                                         ; $6a6b: $a2
    db $ed                                        ; $6a6c: $ed
    and d                                         ; $6a6d: $a2
    sub b                                         ; $6a6e: $90
    dec [hl]                                      ; $6a6f: $35
    cp $b9                                        ; $6a70: $fe $b9
    daa                                           ; $6a72: $27
    ldh [$0e], a                                  ; $6a73: $e0 $0e
    ld d, d                                       ; $6a75: $52
    ld d, e                                       ; $6a76: $53
    sbc c                                         ; $6a77: $99
    db $eb                                        ; $6a78: $eb
    ld l, $4d                                     ; $6a79: $2e $4d
    ld c, d                                       ; $6a7b: $4a
    call nz, $85ce                                ; $6a7c: $c4 $ce $85
    or d                                          ; $6a7f: $b2
    adc e                                         ; $6a80: $8b
    cp d                                          ; $6a81: $ba
    ld h, $16                                     ; $6a82: $26 $16
    sub b                                         ; $6a84: $90
    ld [hl], d                                    ; $6a85: $72
    cp a                                          ; $6a86: $bf
    ld l, l                                       ; $6a87: $6d
    ld a, [$e69e]                                 ; $6a88: $fa $9e $e6
    xor d                                         ; $6a8b: $aa
    jp nc, Jump_060_7a08                          ; $6a8c: $d2 $08 $7a

    ld [$a165], sp                                ; $6a8f: $08 $65 $a1
    inc l                                         ; $6a92: $2c
    ld [bc], a                                    ; $6a93: $02
    ld b, c                                       ; $6a94: $41
    ld c, a                                       ; $6a95: $4f
    rst $00                                       ; $6a96: $c7
    db $fd                                        ; $6a97: $fd
    adc b                                         ; $6a98: $88
    ld [hl], $32                                  ; $6a99: $36 $32
    ld c, $39                                     ; $6a9b: $0e $39
    call nc, $d557                                ; $6a9d: $d4 $57 $d5
    rst $28                                       ; $6aa0: $ef
    adc e                                         ; $6aa1: $8b
    add hl, hl                                    ; $6aa2: $29
    jp hl                                         ; $6aa3: $e9


    pop bc                                        ; $6aa4: $c1
    add h                                         ; $6aa5: $84
    ld d, d                                       ; $6aa6: $52
    reti                                          ; $6aa7: $d9


    ld h, e                                       ; $6aa8: $63
    ld a, b                                       ; $6aa9: $78
    ld a, h                                       ; $6aaa: $7c

jr_060_6aab:
    cp a                                          ; $6aab: $bf
    db $ed                                        ; $6aac: $ed
    ld sp, $81d4                                  ; $6aad: $31 $d4 $81
    ld d, d                                       ; $6ab0: $52
    ld e, $ea                                     ; $6ab1: $1e $ea
    adc e                                         ; $6ab3: $8b
    adc l                                         ; $6ab4: $8d
    inc hl                                        ; $6ab5: $23
    ld h, e                                       ; $6ab6: $63
    add sp, -$36                                  ; $6ab7: $e8 $ca
    ld [hl-], a                                   ; $6ab9: $32
    add [hl]                                      ; $6aba: $86
    rst $00                                       ; $6abb: $c7
    ld b, e                                       ; $6abc: $43
    ld a, l                                       ; $6abd: $7d
    ld d, l                                       ; $6abe: $55
    db $fd                                        ; $6abf: $fd
    ld a, $86                                     ; $6ac0: $3e $86
    ld c, [hl]                                    ; $6ac2: $4e
    db $db                                        ; $6ac3: $db
    db $d3                                        ; $6ac4: $d3
    inc e                                         ; $6ac5: $1c
    ld [$5053], a                                 ; $6ac6: $ea $53 $50
    adc d                                         ; $6ac9: $8a
    rst $10                                       ; $6aca: $d7
    ld l, d                                       ; $6acb: $6a
    xor $31                                       ; $6acc: $ee $31
    and d                                         ; $6ace: $a2
    cp e                                          ; $6acf: $bb
    ld a, e                                       ; $6ad0: $7b
    ld [hl], l                                    ; $6ad1: $75
    push hl                                       ; $6ad2: $e5
    rra                                           ; $6ad3: $1f
    ld [hl], a                                    ; $6ad4: $77
    bit 4, b                                      ; $6ad5: $cb $60
    ld [$153c], sp                                ; $6ad7: $08 $3c $15
    ld a, d                                       ; $6ada: $7a
    ld [hl], a                                    ; $6adb: $77
    ld bc, $a9fd                                  ; $6adc: $01 $fd $a9
    dec bc                                        ; $6adf: $0b
    dec l                                         ; $6ae0: $2d
    ld [hl-], a                                   ; $6ae1: $32
    ld [hl], h                                    ; $6ae2: $74
    xor h                                         ; $6ae3: $ac
    sub l                                         ; $6ae4: $95
    ld [hl], l                                    ; $6ae5: $75
    rst $18                                       ; $6ae6: $df
    cpl                                           ; $6ae7: $2f
    rlca                                          ; $6ae8: $07
    ld e, h                                       ; $6ae9: $5c
    and $5c                                       ; $6aea: $e6 $5c
    xor e                                         ; $6aec: $ab
    cp c                                          ; $6aed: $b9
    ret c                                         ; $6aee: $d8

    db $f4                                        ; $6aef: $f4
    ld sp, $35f4                                  ; $6af0: $31 $f4 $35
    ld [bc], a                                    ; $6af3: $02
    ld a, a                                       ; $6af4: $7f
    ld bc, $f0c5                                  ; $6af5: $01 $c5 $f0
    ld e, b                                       ; $6af8: $58
    xor $b5                                       ; $6af9: $ee $b5
    add hl, sp                                    ; $6afb: $39
    and a                                         ; $6afc: $a7
    dec bc                                        ; $6afd: $0b
    ld a, [hl-]                                   ; $6afe: $3a
    ld h, e                                       ; $6aff: $63
    xor b                                         ; $6b00: $a8
    xor [hl]                                      ; $6b01: $ae
    db $d3                                        ; $6b02: $d3
    pop de                                        ; $6b03: $d1
    ld [de], a                                    ; $6b04: $12
    add l                                         ; $6b05: $85
    inc e                                         ; $6b06: $1c
    inc c                                         ; $6b07: $0c
    inc de                                        ; $6b08: $13
    ld h, d                                       ; $6b09: $62
    ld d, d                                       ; $6b0a: $52
    xor a                                         ; $6b0b: $af
    ld d, $df                                     ; $6b0c: $16 $df
    cpl                                           ; $6b0e: $2f
    rlca                                          ; $6b0f: $07
    ld e, h                                       ; $6b10: $5c
    sub $8d                                       ; $6b11: $d6 $8d
    adc $39                                       ; $6b13: $ce $39
    ld h, d                                       ; $6b15: $62
    rst $20                                       ; $6b16: $e7
    adc $77                                       ; $6b17: $ce $77
    adc l                                         ; $6b19: $8d
    add hl, hl                                    ; $6b1a: $29
    ld e, c                                       ; $6b1b: $59
    call c, Call_060_6bab                         ; $6b1c: $dc $ab $6b
    rrca                                          ; $6b1f: $0f
    ld [$f377], a                                 ; $6b20: $ea $77 $f3
    cp l                                          ; $6b23: $bd
    inc bc                                        ; $6b24: $03
    ld l, $e3                                     ; $6b25: $2e $e3
    inc c                                         ; $6b27: $0c
    cp c                                          ; $6b28: $b9
    rst $08                                       ; $6b29: $cf
    ld b, e                                       ; $6b2a: $43
    di                                            ; $6b2b: $f3
    sbc h                                         ; $6b2c: $9c
    ld l, e                                       ; $6b2d: $6b
    dec [hl]                                      ; $6b2e: $35
    rst $30                                       ; $6b2f: $f7
    dec b                                         ; $6b30: $05
    dec l                                         ; $6b31: $2d
    xor e                                         ; $6b32: $ab
    cp a                                          ; $6b33: $bf
    rst $18                                       ; $6b34: $df
    cpl                                           ; $6b35: $2f
    rla                                           ; $6b36: $17
    add l                                         ; $6b37: $85
    xor h                                         ; $6b38: $ac
    pop af                                        ; $6b39: $f1
    rst $08                                       ; $6b3a: $cf
    dec a                                         ; $6b3b: $3d
    ld bc, $9077                                  ; $6b3c: $01 $77 $90
    sbc d                                         ; $6b3f: $9a
    jp z, $775c                                   ; $6b40: $ca $5c $77

    ld l, c                                       ; $6b43: $69
    ld d, d                                       ; $6b44: $52
    ld [hl+], a                                   ; $6b45: $22
    halt                                          ; $6b46: $76
    xor [hl]                                      ; $6b47: $ae
    ld l, e                                       ; $6b48: $6b
    ret nc                                        ; $6b49: $d0

    add hl, sp                                    ; $6b4a: $39
    sbc l                                         ; $6b4b: $9d
    call nc, $e294                                ; $6b4c: $d4 $94 $e2
    ld c, $85                                     ; $6b4f: $0e $85
    rst $28                                       ; $6b51: $ef
    or l                                          ; $6b52: $b5
    sbc c                                         ; $6b53: $99
    rst $20                                       ; $6b54: $e7
    ld e, h                                       ; $6b55: $5c
    xor e                                         ; $6b56: $ab
    add hl, sp                                    ; $6b57: $39
    ld c, [hl]                                    ; $6b58: $4e
    inc hl                                        ; $6b59: $23
    db $dd                                        ; $6b5a: $dd
    xor e                                         ; $6b5b: $ab
    cp a                                          ; $6b5c: $bf
    rst $18                                       ; $6b5d: $df
    cpl                                           ; $6b5e: $2f
    ld l, l                                       ; $6b5f: $6d
    adc $e9                                       ; $6b60: $ce $e9
    add d                                         ; $6b62: $82
    adc $18                                       ; $6b63: $ce $18
    xor d                                         ; $6b65: $aa
    db $eb                                        ; $6b66: $eb
    ld b, b                                       ; $6b67: $40
    add hl, hl                                    ; $6b68: $29
    rrca                                          ; $6b69: $0f
    ld d, [hl]                                    ; $6b6a: $56
    ld e, c                                       ; $6b6b: $59
    or a                                          ; $6b6c: $b7
    ld sp, hl                                     ; $6b6d: $f9
    rla                                           ; $6b6e: $17
    set 7, l                                      ; $6b6f: $cb $fd
    ld [bc], a                                    ; $6b71: $02
    rla                                           ; $6b72: $17
    ld d, c                                       ; $6b73: $51
    or e                                          ; $6b74: $b3
    or d                                          ; $6b75: $b2
    sbc e                                         ; $6b76: $9b
    ld e, c                                       ; $6b77: $59
    cp e                                          ; $6b78: $bb
    dec d                                         ; $6b79: $15
    ld b, e                                       ; $6b7a: $43
    db $10                                        ; $6b7b: $10
    rst $20                                       ; $6b7c: $e7
    ld a, [hl+]                                   ; $6b7d: $2a
    scf                                           ; $6b7e: $37
    ld [hl], e                                    ; $6b7f: $73
    ld d, l                                       ; $6b80: $55
    and l                                         ; $6b81: $a5
    ld h, e                                       ; $6b82: $63
    di                                            ; $6b83: $f3
    ld b, d                                       ; $6b84: $42
    ld l, e                                       ; $6b85: $6b
    xor l                                         ; $6b86: $ad
    and $1e                                       ; $6b87: $e6 $1e
    inc hl                                        ; $6b89: $23
    cp d                                          ; $6b8a: $ba
    cp e                                          ; $6b8b: $bb
    ld d, a                                       ; $6b8c: $57
    ld d, a                                       ; $6b8d: $57
    cp $71                                        ; $6b8e: $fe $71
    or a                                          ; $6b90: $b7
    inc c                                         ; $6b91: $0c
    halt                                          ; $6b92: $76
    ld [hl], c                                    ; $6b93: $71
    ld l, d                                       ; $6b94: $6a
    and d                                         ; $6b95: $a2
    ld [$4304], sp                                ; $6b96: $08 $04 $43
    sub $85                                       ; $6b99: $d6 $85
    ld d, $19                                     ; $6b9b: $16 $19
    ld a, [hl-]                                   ; $6b9d: $3a
    sub $ca                                       ; $6b9e: $d6 $ca
    cp d                                          ; $6ba0: $ba
    rst $28                                       ; $6ba1: $ef
    rla                                           ; $6ba2: $17
    rla                                           ; $6ba3: $17
    halt                                          ; $6ba4: $76
    ld d, b                                       ; $6ba5: $50
    dec d                                         ; $6ba6: $15
    jp nc, $e739                                  ; $6ba7: $d2 $39 $e7

    ret nc                                        ; $6baa: $d0

Call_060_6bab:
    or e                                          ; $6bab: $b3
    cp b                                          ; $6bac: $b8
    or d                                          ; $6bad: $b2
    rst $00                                       ; $6bae: $c7
    ldh a, [$38]                                  ; $6baf: $f0 $38
    add a                                         ; $6bb1: $87
    adc $fd                                       ; $6bb2: $ce $fd
    adc b                                         ; $6bb4: $88
    inc c                                         ; $6bb5: $0c
    dec e                                         ; $6bb6: $1d
    ld e, l                                       ; $6bb7: $5d
    ld b, a                                       ; $6bb8: $47
    ld a, [hl-]                                   ; $6bb9: $3a
    push bc                                       ; $6bba: $c5
    add sp, -$05                                  ; $6bbb: $e8 $fb
    dec b                                         ; $6bbd: $05
    rlca                                          ; $6bbe: $07
    ld e, h                                       ; $6bbf: $5c
    ld d, $43                                     ; $6bc0: $16 $43
    rst $28                                       ; $6bc2: $ef
    ld e, $55                                     ; $6bc3: $1e $55
    xor d                                         ; $6bc5: $aa
    ld [hl-], a                                   ; $6bc6: $32
    ld l, l                                       ; $6bc7: $6d
    sbc a                                         ; $6bc8: $9f
    ld b, a                                       ; $6bc9: $47
    ld [hl], a                                    ; $6bca: $77
    add hl, de                                    ; $6bcb: $19
    ld sp, hl                                     ; $6bcc: $f9
    ld h, e                                       ; $6bcd: $63
    db $f4                                        ; $6bce: $f4
    and d                                         ; $6bcf: $a2
    xor $f4                                       ; $6bd0: $ee $f4
    jr @+$20                                      ; $6bd2: $18 $1e

    rst $20                                       ; $6bd4: $e7
    ld h, b                                       ; $6bd5: $60
    ld a, [hl+]                                   ; $6bd6: $2a
    dec [hl]                                      ; $6bd7: $35
    dec l                                         ; $6bd8: $2d
    or [hl]                                       ; $6bd9: $b6
    call c, $336b                                 ; $6bda: $dc $6b $33
    rst $08                                       ; $6bdd: $cf
    add hl, sp                                    ; $6bde: $39
    sbc b                                         ; $6bdf: $98
    ld d, b                                       ; $6be0: $50
    sub d                                         ; $6be1: $92
    inc [hl]                                      ; $6be2: $34
    ld e, d                                       ; $6be3: $5a
    or $a3                                        ; $6be4: $f6 $a3
    dec a                                         ; $6be6: $3d
    ret nz                                        ; $6be7: $c0

    ld d, e                                       ; $6be8: $53
    and c                                         ; $6be9: $a1
    ld [hl], a                                    ; $6bea: $77
    rla                                           ; $6beb: $17
    ret nc                                        ; $6bec: $d0

    sbc a                                         ; $6bed: $9f
    ei                                            ; $6bee: $fb
    dec b                                         ; $6bef: $05
    ld l, l                                       ; $6bf0: $6d
    adc $e9                                       ; $6bf1: $ce $e9
    add d                                         ; $6bf3: $82
    adc $18                                       ; $6bf4: $ce $18
    xor d                                         ; $6bf6: $aa
    db $eb                                        ; $6bf7: $eb
    ld b, b                                       ; $6bf8: $40
    add hl, hl                                    ; $6bf9: $29
    xor a                                         ; $6bfa: $af
    push de                                       ; $6bfb: $d5
    inc e                                         ; $6bfc: $1c
    ld e, d                                       ; $6bfd: $5a
    call nz, $ff33                                ; $6bfe: $c4 $33 $ff
    ld [c], a                                     ; $6c01: $e2
    ei                                            ; $6c02: $fb
    dec b                                         ; $6c03: $05
    ld l, l                                       ; $6c04: $6d
    ld e, [hl]                                    ; $6c05: $5e
    call nc, $d95d                                ; $6c06: $d4 $5d $d9
    ld h, e                                       ; $6c09: $63
    ld a, b                                       ; $6c0a: $78
    sbc h                                         ; $6c0b: $9c
    adc e                                         ; $6c0c: $8b
    ld b, d                                       ; $6c0d: $42
    ld l, $a2                                     ; $6c0e: $2e $a2
    ld h, [hl]                                    ; $6c10: $66
    ld h, l                                       ; $6c11: $65
    xor a                                         ; $6c12: $af
    sbc c                                         ; $6c13: $99
    push hl                                       ; $6c14: $e5
    ld c, e                                       ; $6c15: $4b
    sbc c                                         ; $6c16: $99
    ld [hl], e                                    ; $6c17: $73
    xor l                                         ; $6c18: $ad
    and $d0                                       ; $6c19: $e6 $d0
    and e                                         ; $6c1b: $a3
    add $e9                                       ; $6c1c: $c6 $e9

jr_060_6c1e:
    sbc c                                         ; $6c1e: $99
    ld a, a                                       ; $6c1f: $7f
    ld [hl], c                                    ; $6c20: $71
    ld c, [hl]                                    ; $6c21: $4e
    rla                                           ; $6c22: $17
    db $e4                                        ; $6c23: $e4
    ld e, a                                       ; $6c24: $5f
    inc l                                         ; $6c25: $2c
    cp e                                          ; $6c26: $bb
    or b                                          ; $6c27: $b0
    add e                                         ; $6c28: $83
    xor d                                         ; $6c29: $aa
    sub b                                         ; $6c2a: $90
    adc $85                                       ; $6c2b: $ce $85
    or d                                          ; $6c2d: $b2
    di                                            ; $6c2e: $f3
    inc bc                                        ; $6c2f: $03
    ld a, a                                       ; $6c30: $7f
    ld bc, $bf75                                  ; $6c31: $01 $75 $bf
    sub a                                         ; $6c34: $97
    ld d, c                                       ; $6c35: $51
    jp nc, Jump_060_5319                          ; $6c36: $d2 $19 $53

    jp nc, $9abd                                  ; $6c39: $d2 $bd $9a

    rst $20                                       ; $6c3c: $e7
    ld e, h                                       ; $6c3d: $5c
    xor e                                         ; $6c3e: $ab
    add hl, sp                                    ; $6c3f: $39
    or h                                          ; $6c40: $b4
    adc b                                         ; $6c41: $88
    ld h, a                                       ; $6c42: $67
    cp $c5                                        ; $6c43: $fe $c5
    or h                                          ; $6c45: $b4
    dec a                                         ; $6c46: $3d
    sub [hl]                                      ; $6c47: $96
    and c                                         ; $6c48: $a1
    ld [hl], e                                    ; $6c49: $73
    adc $81                                       ; $6c4a: $ce $81
    inc d                                         ; $6c4c: $14
    bit 2, h                                      ; $6c4d: $cb $54
    rst $38                                       ; $6c4f: $ff
    or l                                          ; $6c50: $b5
    cp d                                          ; $6c51: $ba
    rlca                                          ; $6c52: $07
    push af                                       ; $6c53: $f5
    cp e                                          ; $6c54: $bb
    ld [hl], e                                    ; $6c55: $73
    and h                                         ; $6c56: $a4
    di                                            ; $6c57: $f3
    ld a, [hl]                                    ; $6c58: $7e
    ld bc, $5c07                                  ; $6c59: $01 $07 $5c
    ld d, $1b                                     ; $6c5c: $16 $1b

Call_060_6c5e:
Jump_060_6c5e:
    rlca                                          ; $6c5e: $07
    ld c, d                                       ; $6c5f: $4a
    ld a, c                                       ; $6c60: $79
    ld h, h                                       ; $6c61: $64
    inc e                                         ; $6c62: $1c
    ld [hl], d                                    ; $6c63: $72
    ld [hl], h                                    ; $6c64: $74
    sub a                                         ; $6c65: $97
    ld d, l                                       ; $6c66: $55
    push af                                       ; $6c67: $f5
    ei                                            ; $6c68: $fb
    ld c, b                                       ; $6c69: $48
    set 7, l                                      ; $6c6a: $cb $fd
    ld [bc], a                                    ; $6c6c: $02
    rla                                           ; $6c6d: $17
    add l                                         ; $6c6e: $85
    ld [hl], h                                    ; $6c6f: $74
    ld l, c                                       ; $6c70: $69
    and $a2                                       ; $6c71: $e6 $a2
    sub b                                         ; $6c73: $90
    pop af                                        ; $6c74: $f1
    rla                                           ; $6c75: $17
    db $ec                                        ; $6c76: $ec
    jr nz, jr_060_6c1e                            ; $6c77: $20 $a5

    ld [hl-], a                                   ; $6c79: $32
    inc a                                         ; $6c7a: $3c
    sub [hl]                                      ; $6c7b: $96
    or l                                          ; $6c7c: $b5
    sbc d                                         ; $6c7d: $9a
    ld b, e                                       ; $6c7e: $43
    adc e                                         ; $6c7f: $8b
    ld a, b                                       ; $6c80: $78
    and $5f                                       ; $6c81: $e6 $5f
    ld a, h                                       ; $6c83: $7c
    adc $da                                       ; $6c84: $ce $da
    call z, $408b                                 ; $6c86: $cc $8b $40
    adc l                                         ; $6c89: $8d
    xor $b2                                       ; $6c8a: $ee $b2
    rst $08                                       ; $6c8c: $cf
    adc e                                         ; $6c8d: $8b
    ld bc, $bf7d                                  ; $6c8e: $01 $7d $bf
    ld d, a                                       ; $6c91: $57
    ld h, [hl]                                    ; $6c92: $66
    adc b                                         ; $6c93: $88
    ld e, h                                       ; $6c94: $5c
    ld l, e                                       ; $6c95: $6b
    ret z                                         ; $6c96: $c8

    dec e                                         ; $6c97: $1d
    inc h                                         ; $6c98: $24
    ld a, d                                       ; $6c99: $7a
    ld [hl], c                                    ; $6c9a: $71

jr_060_6c9b:
    sub b                                         ; $6c9b: $90
    ld e, a                                       ; $6c9c: $5f
    ld a, [hl]                                    ; $6c9d: $7e
    rst $28                                       ; $6c9e: $ef
    ld [hl], l                                    ; $6c9f: $75
    inc c                                         ; $6ca0: $0c
    adc a                                         ; $6ca1: $8f
    rlca                                          ; $6ca2: $07
    cp e                                          ; $6ca3: $bb
    jr z, jr_060_6d0a                             ; $6ca4: $28 $64

    db $fc                                        ; $6ca6: $fc

jr_060_6ca7:
    dec b                                         ; $6ca7: $05
    dec sp                                        ; $6ca8: $3b
    ld c, b                                       ; $6ca9: $48
    ld e, c                                       ; $6caa: $59

Call_060_6cab:
Jump_060_6cab:
    inc d                                         ; $6cab: $14
    jp nc, $99a5                                  ; $6cac: $d2 $a5 $99

    inc hl                                        ; $6caf: $23
    sbc l                                         ; $6cb0: $9d
    inc sp                                        ; $6cb1: $33
    xor a                                         ; $6cb2: $af
    or d                                          ; $6cb3: $b2
    pop af                                        ; $6cb4: $f1
    ld a, [hl]                                    ; $6cb5: $7e
    ld bc, $7f17                                  ; $6cb6: $01 $17 $7f
    ld e, h                                       ; $6cb9: $5c
    inc c                                         ; $6cba: $0c
    add sp, -$6f                                  ; $6cbb: $e8 $91
    ld [hl], c                                    ; $6cbd: $71
    ret z                                         ; $6cbe: $c8

    dec a                                         ; $6cbf: $3d
    ld e, a                                       ; $6cc0: $5f
    adc d                                         ; $6cc1: $8a
    rst $20                                       ; $6cc2: $e7
    xor $d8                                       ; $6cc3: $ee $d8
    add hl, sp                                    ; $6cc5: $39
    ld [hl], h                                    ; $6cc6: $74
    ld c, [hl]                                    ; $6cc7: $4e
    add l                                         ; $6cc8: $85
    rst $20                                       ; $6cc9: $e7
    ld [hl], c                                    ; $6cca: $71
    ld l, $ca                                     ; $6ccb: $2e $ca
    cp a                                          ; $6ccd: $bf
    add e                                         ; $6cce: $83
    ld a, d                                       ; $6ccf: $7a
    add hl, hl                                    ; $6cd0: $29
    db $dd                                        ; $6cd1: $dd
    add hl, de                                    ; $6cd2: $19
    db $fd                                        ; $6cd3: $fd
    rlca                                          ; $6cd4: $07
    ld a, [hl-]                                   ; $6cd5: $3a
    jr c, jr_060_6ca7                             ; $6cd6: $38 $cf

    ld a, c                                       ; $6cd8: $79
    ld bc, $31ed                                  ; $6cd9: $01 $ed $31
    call nc, $bea1                                ; $6cdc: $d4 $a1 $be
    ld l, [hl]                                    ; $6cdf: $6e
    ld [hl], h                                    ; $6ce0: $74
    adc $11                                       ; $6ce1: $ce $11
    dec sp                                        ; $6ce3: $3b
    rst $10                                       ; $6ce4: $d7
    ld [hl], b                                    ; $6ce5: $70
    adc l                                         ; $6ce6: $8d
    add hl, hl                                    ; $6ce7: $29
    ld e, c                                       ; $6ce8: $59
    call c, Call_060_6bab                         ; $6ce9: $dc $ab $6b
    rrca                                          ; $6cec: $0f
    ld [$f377], a                                 ; $6ced: $ea $77 $f3
    ld a, [hl-]                                   ; $6cf0: $3a
    sub h                                         ; $6cf1: $94
    ld [c], a                                     ; $6cf2: $e2
    inc e                                         ; $6cf3: $1c
    sbc d                                         ; $6cf4: $9a
    rlca                                          ; $6cf5: $07
    ld b, e                                       ; $6cf6: $43
    sla h                                         ; $6cf7: $cb $24
    inc h                                         ; $6cf9: $24
    halt                                          ; $6cfa: $76
    jr z, jr_060_6c9b                             ; $6cfb: $28 $9e

    dec b                                         ; $6cfd: $05
    cp l                                          ; $6cfe: $bd
    rra                                           ; $6cff: $1f
    dec c                                         ; $6d00: $0d
    dec l                                         ; $6d01: $2d
    ld [c], a                                     ; $6d02: $e2
    sub l                                         ; $6d03: $95
    cpl                                           ; $6d04: $2f
    push hl                                       ; $6d05: $e5
    ld a, [hl]                                    ; $6d06: $7e
    ld bc, $ce6d                                  ; $6d07: $01 $6d $ce

jr_060_6d0a:
    add hl, sp                                    ; $6d0a: $39
    ld h, a                                       ; $6d0b: $67
    ld e, c                                       ; $6d0c: $59
    push hl                                       ; $6d0d: $e5
    sub b                                         ; $6d0e: $90
    xor e                                         ; $6d0f: $ab
    cp a                                          ; $6d10: $bf
    cpl                                           ; $6d11: $2f
    jp nc, $ee3b                                  ; $6d12: $d2 $3b $ee

    ld b, a                                       ; $6d15: $47
    ld l, e                                       ; $6d16: $6b
    ld d, b                                       ; $6d17: $50
    adc e                                         ; $6d18: $8b
    ld [hl], e                                    ; $6d19: $73
    xor l                                         ; $6d1a: $ad
    and $d0                                       ; $6d1b: $e6 $d0
    ld [hl+], a                                   ; $6d1d: $22
    sbc [hl]                                      ; $6d1e: $9e
    ld sp, hl                                     ; $6d1f: $f9
    rla                                           ; $6d20: $17
    rst $18                                       ; $6d21: $df
    dec sp                                        ; $6d22: $3b
    ldh [$32], a                                  ; $6d23: $e0 $32
    and [hl]                                      ; $6d25: $a6
    and $62                                       ; $6d26: $e6 $62
    ld a, [bc]                                    ; $6d28: $0a
    and d                                         ; $6d29: $a2
    rst $10                                       ; $6d2a: $d7
    ld l, d                                       ; $6d2b: $6a
    xor $f3                                       ; $6d2c: $ee $f3
    ret nc                                        ; $6d2e: $d0

    inc a                                         ; $6d2f: $3c
    rst $20                                       ; $6d30: $e7
    ld a, [de]                                    ; $6d31: $1a
    ret nc                                        ; $6d32: $d0

    add sp, $10                                   ; $6d33: $e8 $10
    ret c                                         ; $6d35: $d8

    jp z, $bf7c                                   ; $6d36: $ca $7c $bf

    rst $20                                       ; $6d39: $e7
    cp e                                          ; $6d3a: $bb
    add $94                                       ; $6d3b: $c6 $94
    inc l                                         ; $6d3d: $2c
    xor $d5                                       ; $6d3e: $ee $d5
    or l                                          ; $6d40: $b5
    rlca                                          ; $6d41: $07
    push af                                       ; $6d42: $f5
    cp e                                          ; $6d43: $bb
    ld a, c                                       ; $6d44: $79
    dec e                                         ; $6d45: $1d
    ld c, d                                       ; $6d46: $4a
    ld [hl], c                                    ; $6d47: $71
    xor $71                                       ; $6d48: $ee $71
    rst $28                                       ; $6d4a: $ef
    ld a, [hl]                                    ; $6d4b: $7e
    add [hl]                                      ; $6d4c: $86
    ld e, $87                                     ; $6d4d: $1e $87
    sub l                                         ; $6d4f: $95
    ret nc                                        ; $6d50: $d0

    ld [hl], b                                    ; $6d51: $70
    rlca                                          ; $6d52: $07
    ld [hl], c                                    ; $6d53: $71
    ld l, $0a                                     ; $6d54: $2e $0a
    add hl, sp                                    ; $6d56: $39
    dec bc                                        ; $6d57: $0b
    ld e, d                                       ; $6d58: $5a
    or $a3                                        ; $6d59: $f6 $a3
    sub l                                         ; $6d5b: $95
    cpl                                           ; $6d5c: $2f
    push bc                                       ; $6d5d: $c5
    ld [hl], d                                    ; $6d5e: $72

Jump_060_6d5f:
    cp a                                          ; $6d5f: $bf
    ld l, l                                       ; $6d60: $6d
    adc $e9                                       ; $6d61: $ce $e9
    add d                                         ; $6d63: $82
    adc $18                                       ; $6d64: $ce $18
    xor d                                         ; $6d66: $aa
    db $eb                                        ; $6d67: $eb
    ld h, b                                       ; $6d68: $60
    rla                                           ; $6d69: $17
    add l                                         ; $6d6a: $85

Call_060_6d6b:
    xor h                                         ; $6d6b: $ac
    pop af                                        ; $6d6c: $f1
    rst $08                                       ; $6d6d: $cf
    dec a                                         ; $6d6e: $3d
    ld bc, $9077                                  ; $6d6f: $01 $77 $90
    sbc d                                         ; $6d72: $9a
    jp z, $775c                                   ; $6d73: $ca $5c $77

    ld l, c                                       ; $6d76: $69
    ld d, d                                       ; $6d77: $52

jr_060_6d78:
    ld [hl+], a                                   ; $6d78: $22

Jump_060_6d79:
    halt                                          ; $6d79: $76
    xor [hl]                                      ; $6d7a: $ae
    push de                                       ; $6d7b: $d5
    inc e                                         ; $6d7c: $1c
    ld e, d                                       ; $6d7d: $5a
    call nz, $ff33                                ; $6d7e: $c4 $33 $ff
    ld [c], a                                     ; $6d81: $e2
    ei                                            ; $6d82: $fb
    dec b                                         ; $6d83: $05
    ld d, a                                       ; $6d84: $57
    ld h, [hl]                                    ; $6d85: $66

jr_060_6d86:
    adc b                                         ; $6d86: $88
    ld e, h                                       ; $6d87: $5c
    ld l, e                                       ; $6d88: $6b
    ret z                                         ; $6d89: $c8

    ld e, l                                       ; $6d8a: $5d
    and l                                         ; $6d8b: $a5
    ld b, e                                       ; $6d8c: $43
    and [hl]                                      ; $6d8d: $a6
    ld a, e                                       ; $6d8e: $7b
    xor a                                         ; $6d8f: $af
    ld d, e                                       ; $6d90: $53
    ld b, c                                       ; $6d91: $41
    jr c, jr_060_6d78                             ; $6d92: $38 $e4

    sbc h                                         ; $6d94: $9c
    ld b, e                                       ; $6d95: $43
    ld h, a                                       ; $6d96: $67
    adc b                                         ; $6d97: $88
    db $d3                                        ; $6d98: $d3
    rst $30                                       ; $6d99: $f7
    ld l, $0b                                     ; $6d9a: $2e $0b
    ld [$f377], a                                 ; $6d9c: $ea $77 $f3
    ret z                                         ; $6d9f: $c8

    jr c, jr_060_6d86                             ; $6da0: $38 $e4

    ret z                                         ; $6da2: $c8

    cpl                                           ; $6da3: $2f
    db $d3                                        ; $6da4: $d3
    dec b                                         ; $6da5: $05

jr_060_6da6:
    sbc l                                         ; $6da6: $9d
    ld sp, $e754                                  ; $6da7: $31 $54 $e7
    ld h, b                                       ; $6daa: $60
    rla                                           ; $6dab: $17
    add l                                         ; $6dac: $85
    xor h                                         ; $6dad: $ac
    pop af                                        ; $6dae: $f1
    rst $08                                       ; $6daf: $cf
    dec a                                         ; $6db0: $3d
    ld bc, $9077                                  ; $6db1: $01 $77 $90
    sbc d                                         ; $6db4: $9a
    jp z, $775c                                   ; $6db5: $ca $5c $77

    ld l, c                                       ; $6db8: $69
    ld d, d                                       ; $6db9: $52
    ld [hl+], a                                   ; $6dba: $22
    halt                                          ; $6dbb: $76
    xor $69                                       ; $6dbc: $ee $69
    ld l, $a6                                     ; $6dbe: $2e $a6
    and h                                         ; $6dc0: $a4
    rlca                                          ; $6dc1: $07
    inc de                                        ; $6dc2: $13
    ld c, d                                       ; $6dc3: $4a
    sub d                                         ; $6dc4: $92
    ld b, [hl]                                    ; $6dc5: $46
    set 7, l                                      ; $6dc6: $cb $fd
    ld [bc], a                                    ; $6dc8: $02
    ld l, l                                       ; $6dc9: $6d
    call nc, $8cb4                                ; $6dca: $d4 $b4 $8c
    and c                                         ; $6dcd: $a1
    xor a                                         ; $6dce: $af
    ld bc, $0e8d                                  ; $6dcf: $01 $8d $0e
    add c                                         ; $6dd2: $81
    xor l                                         ; $6dd3: $ad
    call z, $d475                                 ; $6dd4: $cc $75 $d4
    ret c                                         ; $6dd7: $d8

    ld e, c                                       ; $6dd8: $59
    reti                                          ; $6dd9: $d9


    inc de                                        ; $6dda: $13
    adc b                                         ; $6ddb: $88
    db $fd                                        ; $6ddc: $fd
    push af                                       ; $6ddd: $f5
    ld [hl], l                                    ; $6dde: $75
    jr z, jr_060_6da6                             ; $6ddf: $28 $c5

    cp c                                          ; $6de1: $b9
    ld c, $c5                                     ; $6de2: $0e $c5
    ld l, e                                       ; $6de4: $6b
    dec [hl]                                      ; $6de5: $35
    add a                                         ; $6de6: $87
    sub [hl]                                      ; $6de7: $96
    ld a, l                                       ; $6de8: $7d
    ld b, c                                       ; $6de9: $41
    sra d                                         ; $6dea: $cb $2a
    and b                                         ; $6dec: $a0
    rst $30                                       ; $6ded: $f7
    and e                                         ; $6dee: $a3
    sub l                                         ; $6def: $95
    cpl                                           ; $6df0: $2f
    push bc                                       ; $6df1: $c5
    ld b, d                                       ; $6df2: $42
    ld e, e                                       ; $6df3: $5b
    adc b                                         ; $6df4: $88
    sbc l                                         ; $6df5: $9d
    ld d, c                                       ; $6df6: $51
    ret z                                         ; $6df7: $c8

    push af                                       ; $6df8: $f5
    and b                                         ; $6df9: $a0
    ld a, [hl]                                    ; $6dfa: $7e
    scf                                           ; $6dfb: $37
    adc a                                         ; $6dfc: $8f
    adc h                                         ; $6dfd: $8c
    ld b, e                                       ; $6dfe: $43
    ld c, $9d                                     ; $6dff: $0e $9d
    db $d3                                        ; $6e01: $d3
    dec b                                         ; $6e02: $05
    sbc l                                         ; $6e03: $9d

jr_060_6e04:
    ld sp, $d754                                  ; $6e04: $31 $54 $d7
    pop bc                                        ; $6e07: $c1
    ld l, $0a                                     ; $6e08: $2e $0a
    ld e, c                                       ; $6e0a: $59
    db $e3                                        ; $6e0b: $e3
    sbc a                                         ; $6e0c: $9f
    ld a, e                                       ; $6e0d: $7b
    ld [bc], a                                    ; $6e0e: $02
    xor $20                                       ; $6e0f: $ee $20
    dec [hl]                                      ; $6e11: $35
    sub l                                         ; $6e12: $95
    cp c                                          ; $6e13: $b9
    xor $d2                                       ; $6e14: $ee $d2
    and h                                         ; $6e16: $a4
    ld b, h                                       ; $6e17: $44
    db $ec                                        ; $6e18: $ec
    cp h                                          ; $6e19: $bc
    ld e, a                                       ; $6e1a: $5f
    db $ed                                        ; $6e1b: $ed
    ld [hl], c                                    ; $6e1c: $71
    ret z                                         ; $6e1d: $c8

    jr z, jr_060_6e04                             ; $6e1e: $28 $e4

    xor d                                         ; $6e20: $aa
    jp nc, $f77b                                  ; $6e21: $d2 $7b $f7

    add sp, $2e                                   ; $6e24: $e8 $2e
    inc hl                                        ; $6e26: $23
    ld b, e                                       ; $6e27: $43
    ld b, a                                       ; $6e28: $47
    rst $28                                       ; $6e29: $ef
    add c                                         ; $6e2a: $81
    or d                                          ; $6e2b: $b2
    cp b                                          ; $6e2c: $b8
    ld e, c                                       ; $6e2d: $59
    inc l                                         ; $6e2e: $2c
    add e                                         ; $6e2f: $83
    dec e                                         ; $6e30: $1d
    db $fc                                        ; $6e31: $fc
    dec b                                         ; $6e32: $05
    inc l                                         ; $6e33: $2c
    ld [hl], l                                    ; $6e34: $75
    db $ed                                        ; $6e35: $ed
    ld d, b                                       ; $6e36: $50
    add hl, sp                                    ; $6e37: $39
    inc h                                         ; $6e38: $24
    sbc b                                         ; $6e39: $98
    ld [hl], $69                                  ; $6e3a: $36 $69
    and $3a                                       ; $6e3c: $e6 $3a
    dec h                                         ; $6e3e: $25
    sbc l                                         ; $6e3f: $9d
    sub [hl]                                      ; $6e40: $96
    ld d, l                                       ; $6e41: $55
    rst $30                                       ; $6e42: $f7
    ld a, b                                       ; $6e43: $78
    pop de                                        ; $6e44: $d1
    rst $28                                       ; $6e45: $ef
    add sp, $1c                                   ; $6e46: $e8 $1c
    xor h                                         ; $6e48: $ac
    ld d, d                                       ; $6e49: $52
    ld h, e                                       ; $6e4a: $63
    ld e, c                                       ; $6e4b: $59
    ld l, l                                       ; $6e4c: $6d
    ld l, $44                                     ; $6e4d: $2e $44
    db $ec                                        ; $6e4f: $ec
    ld [hl], e                                    ; $6e50: $73
    ld e, [hl]                                    ; $6e51: $5e
    db $ed                                        ; $6e52: $ed
    ld sp, $a1d4                                  ; $6e53: $31 $d4 $a1
    cp [hl]                                       ; $6e56: $be
    ld l, [hl]                                    ; $6e57: $6e
    ld [hl], h                                    ; $6e58: $74
    adc $11                                       ; $6e59: $ce $11
    dec sp                                        ; $6e5b: $3b
    ld [hl], a                                    ; $6e5c: $77
    ldh a, [rNR22]                                ; $6e5d: $f0 $17
    or b                                          ; $6e5f: $b0
    call nc, Call_060_43b5                        ; $6e60: $d4 $b5 $43
    push hl                                       ; $6e63: $e5

jr_060_6e64:
    sub b                                         ; $6e64: $90
    ldh [$d5], a                                  ; $6e65: $e0 $d5
    and $9c                                       ; $6e67: $e6 $9c
    db $eb                                        ; $6e69: $eb
    ld b, c                                       ; $6e6a: $41
    db $fd                                        ; $6e6b: $fd
    ld l, [hl]                                    ; $6e6c: $6e
    ld e, [hl]                                    ; $6e6d: $5e
    xor e                                         ; $6e6e: $ab
    add hl, sp                                    ; $6e6f: $39
    or h                                          ; $6e70: $b4
    adc b                                         ; $6e71: $88
    ld h, a                                       ; $6e72: $67
    cp $c5                                        ; $6e73: $fe $c5
    rst $30                                       ; $6e75: $f7
    dec bc                                        ; $6e76: $0b
    ld l, l                                       ; $6e77: $6d
    ld e, $a5                                     ; $6e78: $1e $a5
    ld h, e                                       ; $6e7a: $63
    ld a, d                                       ; $6e7b: $7a
    xor $8e                                       ; $6e7c: $ee $8e
    sbc l                                         ; $6e7e: $9d

jr_060_6e7f:
    xor e                                         ; $6e7f: $ab
    cp a                                          ; $6e80: $bf
    and b                                         ; $6e81: $a0
    rst $30                                       ; $6e82: $f7
    ld a, c                                       ; $6e83: $79
    ld [hl], h                                    ; $6e84: $74
    sub a                                         ; $6e85: $97
    ld d, l                                       ; $6e86: $55
    and l                                         ; $6e87: $a5
    rst $30                                       ; $6e88: $f7
    xor $95                                       ; $6e89: $ee $95
    and $48                                       ; $6e8b: $e6 $48
    and a                                         ; $6e8d: $a7
    jr jr_060_6e7f                                ; $6e8e: $18 $ef

    or l                                          ; $6e90: $b5
    rst $00                                       ; $6e91: $c7
    rra                                           ; $6e92: $1f
    daa                                           ; $6e93: $27
    ld a, [$2f39]                                 ; $6e94: $fa $39 $2f
    ld l, l                                       ; $6e97: $6d
    adc $39                                       ; $6e98: $ce $39
    ld d, a                                       ; $6e9a: $57
    cp e                                          ; $6e9b: $bb

jr_060_6e9c:
    ld a, c                                       ; $6e9c: $79
    jr nz, jr_060_6e64                            ; $6e9d: $20 $c5

    or d                                          ; $6e9f: $b2
    adc b                                         ; $6ea0: $88
    sbc d                                         ; $6ea1: $9a
    sub l                                         ; $6ea2: $95
    db $dd                                        ; $6ea3: $dd
    call z, $9c7a                                 ; $6ea4: $cc $7a $9c
    ld l, $e8                                     ; $6ea7: $2e $e8
    adc h                                         ; $6ea9: $8c
    and c                                         ; $6eaa: $a1
    ld a, [bc]                                    ; $6eab: $0a
    ld c, b                                       ; $6eac: $48
    add hl, de                                    ; $6ead: $19
    jp hl                                         ; $6eae: $e9


    cp h                                          ; $6eaf: $bc
    ld e, a                                       ; $6eb0: $5f
    sub a                                         ; $6eb1: $97
    ld c, b                                       ; $6eb2: $48
    or c                                          ; $6eb3: $b1
    db $ec                                        ; $6eb4: $ec
    ld b, a                                       ; $6eb5: $47
    ld h, e                                       ; $6eb6: $63
    ld a, b                                       ; $6eb7: $78
    sbc h                                         ; $6eb8: $9c
    ld [c], a                                     ; $6eb9: $e2
    and c                                         ; $6eba: $a1
    ld [hl], e                                    ; $6ebb: $73
    ld d, c                                       ; $6ebc: $51
    ld c, b                                       ; $6ebd: $48
    sub a                                         ; $6ebe: $97
    ld h, [hl]                                    ; $6ebf: $66
    xor [hl]                                      ; $6ec0: $ae
    push de                                       ; $6ec1: $d5
    inc e                                         ; $6ec2: $1c
    ld e, d                                       ; $6ec3: $5a
    call nz, $ff33                                ; $6ec4: $c4 $33 $ff
    ld [c], a                                     ; $6ec7: $e2
    ld e, h                                       ; $6ec8: $5c
    push hl                                       ; $6ec9: $e5
    ld h, [hl]                                    ; $6eca: $66
    xor [hl]                                      ; $6ecb: $ae
    push de                                       ; $6ecc: $d5
    call c, $bc03                                 ; $6ecd: $dc $03 $bc
    xor d                                         ; $6ed0: $aa
    db $fc                                        ; $6ed1: $fc
    db $fc                                        ; $6ed2: $fc
    ei                                            ; $6ed3: $fb
    dec b                                         ; $6ed4: $05
    rla                                           ; $6ed5: $17
    jp z, $bbdc                                   ; $6ed6: $ca $dc $bb

    ld [hl], e                                    ; $6ed9: $73
    ld e, a                                       ; $6eda: $5f
    ret nc                                        ; $6edb: $d0

    or d                                          ; $6edc: $b2
    jr z, jr_060_6f03                             ; $6edd: $28 $24

    rst $38                                       ; $6edf: $ff
    adc $de                                       ; $6ee0: $ce $de
    inc bc                                        ; $6ee2: $03
    add l                                         ; $6ee3: $85
    or [hl]                                       ; $6ee4: $b6
    rst $08                                       ; $6ee5: $cf
    ei                                            ; $6ee6: $fb
    ld a, l                                       ; $6ee7: $7d
    ld de, $2b35                                  ; $6ee8: $11 $35 $2b
    cp e                                          ; $6eeb: $bb
    sbc c                                         ; $6eec: $99
    push af                                       ; $6eed: $f5
    jr c, jr_060_6f4d                             ; $6eee: $38 $5d

    ret nc                                        ; $6ef0: $d0

    add hl, de                                    ; $6ef1: $19

jr_060_6ef2:
    ld b, e                                       ; $6ef2: $43
    dec d                                         ; $6ef3: $15
    sub b                                         ; $6ef4: $90
    or d                                          ; $6ef5: $b2
    jr z, jr_060_6e9c                             ; $6ef6: $28 $a4

    ld c, e                                       ; $6ef8: $4b
    inc sp                                        ; $6ef9: $33
    rst $10                                       ; $6efa: $d7
    ld l, d                                       ; $6efb: $6a
    ld l, $a2                                     ; $6efc: $2e $a2
    dec sp                                        ; $6efe: $3b
    pop de                                        ; $6eff: $d1
    xor e                                         ; $6f00: $ab
    cp a                                          ; $6f01: $bf
    rst $08                                       ; $6f02: $cf

jr_060_6f03:
    cp l                                          ; $6f03: $bd
    dec sp                                        ; $6f04: $3b
    rst $10                                       ; $6f05: $d7
    add hl, hl                                    ; $6f06: $29
    ld d, d                                       ; $6f07: $52
    sbc h                                         ; $6f08: $9c
    sbc [hl]                                      ; $6f09: $9e
    jr jr_060_6f89                                ; $6f0a: $18 $7d

    cp a                                          ; $6f0c: $bf
    rst $20                                       ; $6f0d: $e7
    push af                                       ; $6f0e: $f5
    xor $45                                       ; $6f0f: $ee $45
    call nc, $ecac                                ; $6f11: $d4 $ac $ec
    ld h, [hl]                                    ; $6f14: $66
    ld d, [hl]                                    ; $6f15: $56
    add [hl]                                      ; $6f16: $86
    rst $00                                       ; $6f17: $c7
    add hl, hl                                    ; $6f18: $29
    ld e, [hl]                                    ; $6f19: $5e
    inc d                                         ; $6f1a: $14
    jp nc, $99a5                                  ; $6f1b: $d2 $a5 $99

    ld l, e                                       ; $6f1e: $6b
    dec [hl]                                      ; $6f1f: $35
    ld h, a                                       ; $6f20: $67
    cp $c5                                        ; $6f21: $fe $c5
    cp c                                          ; $6f23: $b9
    ld c, [hl]                                    ; $6f24: $4e
    sub c                                         ; $6f25: $91
    ld [c], a                                     ; $6f26: $e2
    db $f4                                        ; $6f27: $f4
    call nz, $fbe8                                ; $6f28: $c4 $e8 $fb
    dec b                                         ; $6f2b: $05
    rlca                                          ; $6f2c: $07
    ld e, h                                       ; $6f2d: $5c
    ld d, $7d                                     ; $6f2e: $16 $7d
    ld b, c                                       ; $6f30: $41
    sbc [hl]                                      ; $6f31: $9e
    adc [hl]                                      ; $6f32: $8e
    ei                                            ; $6f33: $fb
    pop de                                        ; $6f34: $d1
    ret z                                         ; $6f35: $c8

    jr jr_060_6ef2                                ; $6f36: $18 $ba

    ld a, [c]                                     ; $6f38: $f2
    jr jr_060_6f59                                ; $6f39: $18 $1e

    rst $20                                       ; $6f3b: $e7
    add sp, $2e                                   ; $6f3c: $e8 $2e
    xor e                                         ; $6f3e: $ab
    ld [$91f7], a                                 ; $6f3f: $ea $f7 $91
    ccf                                           ; $6f42: $3f
    or $62                                        ; $6f43: $f6 $62
    db $e3                                        ; $6f45: $e3
    ld a, $4f                                     ; $6f46: $3e $4f
    ld b, c                                       ; $6f48: $41
    add hl, hl                                    ; $6f49: $29
    ld e, [hl]                                    ; $6f4a: $5e
    xor e                                         ; $6f4b: $ab
    cp c                                          ; $6f4c: $b9

jr_060_6f4d:
    rst $00                                       ; $6f4d: $c7
    adc b                                         ; $6f4e: $88
    xor $ee                                       ; $6f4f: $ee $ee
    push de                                       ; $6f51: $d5
    sub l                                         ; $6f52: $95
    ld a, a                                       ; $6f53: $7f
    call c, $832d                                 ; $6f54: $dc $2d $83
    xor c                                         ; $6f57: $a9
    ret nc                                        ; $6f58: $d0

jr_060_6f59:
    cp e                                          ; $6f59: $bb
    dec bc                                        ; $6f5a: $0b
    sbc b                                         ; $6f5b: $98
    db $eb                                        ; $6f5c: $eb
    ld b, d                                       ; $6f5d: $42
    adc e                                         ; $6f5e: $8b
    inc c                                         ; $6f5f: $0c
    dec e                                         ; $6f60: $1d
    ld l, e                                       ; $6f61: $6b
    ld h, l                                       ; $6f62: $65
    db $dd                                        ; $6f63: $dd
    rst $30                                       ; $6f64: $f7
    dec bc                                        ; $6f65: $0b
    sub a                                         ; $6f66: $97
    ld c, b                                       ; $6f67: $48
    or c                                          ; $6f68: $b1
    db $ec                                        ; $6f69: $ec
    ld b, a                                       ; $6f6a: $47
    ld h, e                                       ; $6f6b: $63
    ld a, b                                       ; $6f6c: $78
    sbc h                                         ; $6f6d: $9c
    ld [c], a                                     ; $6f6e: $e2
    and c                                         ; $6f6f: $a1
    ld [hl], e                                    ; $6f70: $73
    ld d, c                                       ; $6f71: $51
    ld c, b                                       ; $6f72: $48
    sub a                                         ; $6f73: $97
    ld h, [hl]                                    ; $6f74: $66
    xor [hl]                                      ; $6f75: $ae
    push de                                       ; $6f76: $d5
    inc e                                         ; $6f77: $1c
    ld e, d                                       ; $6f78: $5a
    call nz, $ff33                                ; $6f79: $c4 $33 $ff
    ld [c], a                                     ; $6f7c: $e2
    push bc                                       ; $6f7d: $c5
    sub b                                         ; $6f7e: $90
    jp z, $86b9                                   ; $6f7f: $ca $b9 $86

    sub l                                         ; $6f82: $95
    dec b                                         ; $6f83: $05
    reti                                          ; $6f84: $d9


    rst $30                                       ; $6f85: $f7
    dec bc                                        ; $6f86: $0b
    rlca                                          ; $6f87: $07
    ld e, h                                       ; $6f88: $5c

jr_060_6f89:
    add $19                                       ; $6f89: $c6 $19
    ld [hl], d                                    ; $6f8b: $72
    and b                                         ; $6f8c: $a0
    sub h                                         ; $6f8d: $94
    ld l, c                                       ; $6f8e: $69
    ei                                            ; $6f8f: $fb
    inc a                                         ; $6f90: $3c
    ld [hl], h                                    ; $6f91: $74
    ld c, [hl]                                    ; $6f92: $4e
    rla                                           ; $6f93: $17
    ld [hl], h                                    ; $6f94: $74
    add $50                                       ; $6f95: $c6 $50
    ld e, l                                       ; $6f97: $5d
    rlca                                          ; $6f98: $07
    adc e                                         ; $6f99: $8b
    xor b                                         ; $6f9a: $a8
    ld e, c                                       ; $6f9b: $59
    reti                                          ; $6f9c: $d9


    call $d1ac                                    ; $6f9d: $cd $ac $d1
    cpl                                           ; $6fa0: $2f
    inc hl                                        ; $6fa1: $23
    sbc l                                         ; $6fa2: $9d
    and c                                         ; $6fa3: $a1
    push de                                       ; $6fa4: $d5
    ld a, [c]                                     ; $6fa5: $f2
    db $fd                                        ; $6fa6: $fd
    ld [bc], a                                    ; $6fa7: $02
    rlca                                          ; $6fa8: $07
    ld b, c                                       ; $6fa9: $41
    and [hl]                                      ; $6faa: $a6
    ld b, d                                       ; $6fab: $42
    rst $28                                       ; $6fac: $ef
    ld l, $e0                                     ; $6fad: $2e $e0
    ret c                                         ; $6faf: $d8

    db $f4                                        ; $6fb0: $f4
    ld l, [hl]                                    ; $6fb1: $6e
    ld [hl], h                                    ; $6fb2: $74
    xor [hl]                                      ; $6fb3: $ae
    cp $82                                        ; $6fb4: $fe $82
    and [hl]                                      ; $6fb6: $a6
    db $ed                                        ; $6fb7: $ed
    di                                            ; $6fb8: $f3
    add sp, $2e                                   ; $6fb9: $e8 $2e
    xor e                                         ; $6fbb: $ab
    ld c, d                                       ; $6fbc: $4a
    rst $28                                       ; $6fbd: $ef
    db $dd                                        ; $6fbe: $dd
    dec hl                                        ; $6fbf: $2b
    call Call_060_7189                            ; $6fc0: $cd $89 $71
    inc c                                         ; $6fc3: $0c
    ld a, l                                       ; $6fc4: $7d
    inc c                                         ; $6fc5: $0c
    adc a                                         ; $6fc6: $8f
    push hl                                       ; $6fc7: $e5
    ld e, [hl]                                    ; $6fc8: $5e
    sbc e                                         ; $6fc9: $9b
    ld a, c                                       ; $6fca: $79
    ld c, a                                       ; $6fcb: $4f
    ld [hl], e                                    ; $6fcc: $73
    dec c                                         ; $6fcd: $0d
    or e                                          ; $6fce: $b3
    ld b, $3d                                     ; $6fcf: $06 $3d
    ld sp, $e3ee                                  ; $6fd1: $31 $ee $e3
    jr c, jr_060_7055                             ; $6fd4: $38 $7f

    xor e                                         ; $6fd6: $ab
    ld h, l                                       ; $6fd7: $65
    cp c                                          ; $6fd8: $b9
    ld e, a                                       ; $6fd9: $5f
    rst $10                                       ; $6fda: $d7
    pop bc                                        ; $6fdb: $c1
    ld [hl+], a                                   ; $6fdc: $22
    ld l, d                                       ; $6fdd: $6a
    ld d, [hl]                                    ; $6fde: $56
    halt                                          ; $6fdf: $76
    inc sp                                        ; $6fe0: $33
    xor e                                         ; $6fe1: $ab
    cp e                                          ; $6fe2: $bb
    ld h, e                                       ; $6fe3: $63
    rst $20                                       ; $6fe4: $e7
    ld h, d                                       ; $6fe5: $62
    add sp, $03                                   ; $6fe6: $e8 $03
    and l                                         ; $6fe8: $a5
    cp h                                          ; $6fe9: $bc
    xor b                                         ; $6fea: $a8
    add hl, sp                                    ; $6feb: $39
    add [hl]                                      ; $6fec: $86
    rst $00                                       ; $6fed: $c7
    cp c                                          ; $6fee: $b9
    ld d, [hl]                                    ; $6fef: $56
    ld [hl], e                                    ; $6ff0: $73

jr_060_6ff1:
    ld l, b                                       ; $6ff1: $68
    ld de, $fccf                                  ; $6ff2: $11 $cf $fc
    adc e                                         ; $6ff5: $8b
    rlca                                          ; $6ff6: $07
    ld a, e                                       ; $6ff7: $7b
    ld e, h                                       ; $6ff8: $5c
    call z, Call_060_5feb                         ; $6ff9: $cc $eb $5f
    jp z, $f018                                   ; $6ffc: $ca $18 $f0

    ld a, [hl]                                    ; $6fff: $7e
    ld bc, $a2d7                                  ; $7000: $01 $d7 $a2
    rst $30                                       ; $7003: $f7
    and e                                         ; $7004: $a3
    ld h, c                                       ; $7005: $61
    ld b, d                                       ; $7006: $42
    call nz, Call_000_0bf7                        ; $7007: $c4 $f7 $0b
    add a                                         ; $700a: $87
    scf                                           ; $700b: $37
    sbc e                                         ; $700c: $9b
    inc h                                         ; $700d: $24
    ld l, l                                       ; $700e: $6d
    sub [hl]                                      ; $700f: $96
    ld [hl], l                                    ; $7010: $75
    add sp, -$23                                  ; $7011: $e8 $dd
    adc e                                         ; $7013: $8b
    xor b                                         ; $7014: $a8
    ld e, c                                       ; $7015: $59
    reti                                          ; $7016: $d9


    call $eeac                                    ; $7017: $cd $ac $ee
    adc [hl]                                      ; $701a: $8e
    rst $10                                       ; $701b: $d7
    ld l, d                                       ; $701c: $6a
    ld l, $36                                     ; $701d: $2e $36
    ld a, l                                       ; $701f: $7d
    inc c                                         ; $7020: $0c
    ld a, l                                       ; $7021: $7d
    inc c                                         ; $7022: $0c
    adc a                                         ; $7023: $8f
    ld b, l                                       ; $7024: $45
    ei                                            ; $7025: $fb
    jp c, $90e3                                   ; $7026: $da $e3 $90

    xor e                                         ; $7029: $ab
    ld [$91f7], a                                 ; $702a: $ea $f7 $91
    ld e, a                                       ; $702d: $5f
    ld b, [hl]                                    ; $702e: $46
    ld e, d                                       ; $702f: $5a
    adc $79                                       ; $7030: $ce $79
    ld bc, $5c07                                  ; $7032: $01 $07 $5c
    ld b, $45                                     ; $7035: $06 $45
    ld b, d                                       ; $7037: $42
    ld a, [hl-]                                   ; $7038: $3a
    sbc l                                         ; $7039: $9d
    ld b, e                                       ; $703a: $43
    jr z, jr_060_6ff1                             ; $703b: $28 $b4

    ld e, l                                       ; $703d: $5d
    ld l, c                                       ; $703e: $69
    rst $00                                       ; $703f: $c7
    xor [hl]                                      ; $7040: $ae
    rst $30                                       ; $7041: $f7
    dec bc                                        ; $7042: $0b
    add a                                         ; $7043: $87
    sbc d                                         ; $7044: $9a
    xor e                                         ; $7045: $ab
    ld [$d1f7], a                                 ; $7046: $ea $f7 $d1
    ld e, l                                       ; $7049: $5d
    or $34                                        ; $704a: $f6 $34
    xor e                                         ; $704c: $ab
    ld a, [c]                                     ; $704d: $f2
    ld a, [bc]                                    ; $704e: $0a
    call nz, $421e                                ; $704f: $c4 $1e $42
    sbc c                                         ; $7052: $99
    add h                                         ; $7053: $84
    ld h, d                                       ; $7054: $62

jr_060_7055:
    ld e, $ea                                     ; $7055: $1e $ea
    inc bc                                        ; $7057: $03
    and l                                         ; $7058: $a5
    inc a                                         ; $7059: $3c
    push af                                       ; $705a: $f5
    ld h, l                                       ; $705b: $65
    ld d, b                                       ; $705c: $50
    inc h                                         ; $705d: $24
    and h                                         ; $705e: $a4
    db $d3                                        ; $705f: $d3
    rst $30                                       ; $7060: $f7
    dec bc                                        ; $7061: $0b
    rst $20                                       ; $7062: $e7
    ld sp, $df5d                                  ; $7063: $31 $5d $df
    ld a, l                                       ; $7066: $7d
    rst $18                                       ; $7067: $df
    ld l, e                                       ; $7068: $6b
    and l                                         ; $7069: $a5
    ld e, [hl]                                    ; $706a: $5e
    ld a, c                                       ; $706b: $79
    rst $30                                       ; $706c: $f7
    ld a, l                                       ; $706d: $7d
    rst $28                                       ; $706e: $ef
    inc sp                                        ; $706f: $33
    ld e, l                                       ; $7070: $5d
    cp a                                          ; $7071: $bf
    rst $28                                       ; $7072: $ef
    ei                                            ; $7073: $fb
    dec b                                         ; $7074: $05
    db $ed                                        ; $7075: $ed
    sub h                                         ; $7076: $94
    sub c                                         ; $7077: $91
    sub h                                         ; $7078: $94
    sub c                                         ; $7079: $91
    sub h                                         ; $707a: $94
    sub c                                         ; $707b: $91
    sub h                                         ; $707c: $94
    ei                                            ; $707d: $fb
    cp [hl]                                       ; $707e: $be
    rst $28                                       ; $707f: $ef
    rla                                           ; $7080: $17
    rst $20                                       ; $7081: $e7
    ld sp, $a75d                                  ; $7082: $31 $5d $a7
    xor l                                         ; $7085: $ad
    ld a, [bc]                                    ; $7086: $0a
    dec [hl]                                      ; $7087: $35
    ld h, d                                       ; $7088: $62
    jp c, $9fc8                                   ; $7089: $da $c8 $9f

    ld [$efbe], a                                 ; $708c: $ea $be $ef
    rla                                           ; $708f: $17
    db $ed                                        ; $7090: $ed
    rst $00                                       ; $7091: $c7
    sub c                                         ; $7092: $91
    rst $00                                       ; $7093: $c7
    sub c                                         ; $7094: $91
    ld a, c                                       ; $7095: $79
    rst $28                                       ; $7096: $ef
    jp z, $ecc0                                   ; $7097: $ca $c0 $ec

    and h                                         ; $709a: $a4
    call $d439                                    ; $709b: $cd $39 $d4
    ld d, a                                       ; $709e: $57
    dec [hl]                                      ; $709f: $35
    push hl                                       ; $70a0: $e5
    sbc h                                         ; $70a1: $9c
    rla                                           ; $70a2: $17
    sub a                                         ; $70a3: $97
    sbc e                                         ; $70a4: $9b
    ld c, [hl]                                    ; $70a5: $4e
    db $db                                        ; $70a6: $db
    sub l                                         ; $70a7: $95
    halt                                          ; $70a8: $76
    db $ec                                        ; $70a9: $ec
    ld a, [hl-]                                   ; $70aa: $3a
    push af                                       ; $70ab: $f5
    dec hl                                        ; $70ac: $2b
    dec de                                        ; $70ad: $1b
    cp l                                          ; $70ae: $bd
    add $4f                                       ; $70af: $c6 $4f
    rst $08                                       ; $70b1: $cf
    or d                                          ; $70b2: $b2
    add [hl]                                      ; $70b3: $86
    ld l, e                                       ; $70b4: $6b
    ld c, h                                       ; $70b5: $4c
    ret                                           ; $70b6: $c9


    ld [c], a                                     ; $70b7: $e2
    ld e, [hl]                                    ; $70b8: $5e
    cp l                                          ; $70b9: $bd
    db $10                                        ; $70ba: $10
    dec sp                                        ; $70bb: $3b
    rst $30                                       ; $70bc: $f7
    ld b, b                                       ; $70bd: $40
    cp c                                          ; $70be: $b9
    ld [hl], a                                    ; $70bf: $77
    ld e, $d3                                     ; $70c0: $1e $d3
    ld [hl], l                                    ; $70c2: $75
    jp c, Jump_060_50aa                           ; $70c3: $da $aa $50

    inc hl                                        ; $70c6: $23
    cp [hl]                                       ; $70c7: $be
    rst $28                                       ; $70c8: $ef
    ei                                            ; $70c9: $fb
    dec b                                         ; $70ca: $05
    rst $20                                       ; $70cb: $e7
    dec e                                         ; $70cc: $1d
    rst $30                                       ; $70cd: $f7
    adc a                                         ; $70ce: $8f
    ei                                            ; $70cf: $fb
    inc a                                         ; $70d0: $3c
    and h                                         ; $70d1: $a4
    ld a, $8f                                     ; $70d2: $3e $8f
    rst $20                                       ; $70d4: $e7
    adc b                                         ; $70d5: $88
    sbc l                                         ; $70d6: $9d
    xor e                                         ; $70d7: $ab
    sbc d                                         ; $70d8: $9a
    and a                                         ; $70d9: $a7
    push bc                                       ; $70da: $c5
    pop hl                                        ; $70db: $e1
    ld [hl], c                                    ; $70dc: $71
    adc d                                         ; $70dd: $8a
    rla                                           ; $70de: $17
    ld b, e                                       ; $70df: $43
    rra                                           ; $70e0: $1f
    db $dd                                        ; $70e1: $dd
    ld h, l                                       ; $70e2: $65
    add l                                         ; $70e3: $85
    jp nz, $b5ec                                  ; $70e4: $c2 $ec $b5

    sbc d                                         ; $70e7: $9a
    or h                                          ; $70e8: $b4
    ld a, l                                       ; $70e9: $7d
    ld e, $ea                                     ; $70ea: $1e $ea
    db $eb                                        ; $70ec: $eb
    add b                                         ; $70ed: $80
    adc $e9                                       ; $70ee: $ce $e9
    add d                                         ; $70f0: $82
    adc $39                                       ; $70f1: $ce $39

jr_060_70f3:
    adc d                                         ; $70f3: $8a
    xor h                                         ; $70f4: $ac
    ret c                                         ; $70f5: $d8

    or d                                          ; $70f6: $b2
    rra                                           ; $70f7: $1f
    db $ed                                        ; $70f8: $ed
    and b                                         ; $70f9: $a0
    ld c, [hl]                                    ; $70fa: $4e
    ld d, h                                       ; $70fb: $54
    xor a                                         ; $70fc: $af
    dec sp                                        ; $70fd: $3b
    rrca                                          ; $70fe: $0f
    ld [hl], a                                    ; $70ff: $77
    ld sp, hl                                     ; $7100: $f9
    rst $10                                       ; $7101: $d7
    xor e                                         ; $7102: $ab
    rst $38                                       ; $7103: $ff
    or e                                          ; $7104: $b3
    ei                                            ; $7105: $fb
    cp [hl]                                       ; $7106: $be
    ld [hl], a                                    ; $7107: $77
    pop de                                        ; $7108: $d1
    ld [hl], c                                    ; $7109: $71
    pop de                                        ; $710a: $d1
    ld [hl], c                                    ; $710b: $71
    ld d, c                                       ; $710c: $51
    ret z                                         ; $710d: $c8

    add $17                                       ; $710e: $c6 $17
    ld [hl], h                                    ; $7110: $74
    xor a                                         ; $7111: $af
    sub $fe                                       ; $7112: $d6 $fe
    ld [bc], a                                    ; $7114: $02
    db $ed                                        ; $7115: $ed
    ccf                                           ; $7116: $3f
    sub l                                         ; $7117: $95
    or $17                                        ; $7118: $f6 $17
    ld d, a                                       ; $711a: $57
    ld h, $85                                     ; $711b: $26 $85
    jr z, jr_060_70f3                             ; $711d: $28 $d4

    ld a, e                                       ; $711f: $7b
    ld l, l                                       ; $7120: $6d
    rst $00                                       ; $7121: $c7
    pop hl                                        ; $7122: $e1
    ld [hl], c                                    ; $7123: $71
    ld l, b                                       ; $7124: $68
    ld h, [hl]                                    ; $7125: $66
    rrca                                          ; $7126: $0f
    inc b                                         ; $7127: $04
    dec de                                        ; $7128: $1b
    ld a, [de]                                    ; $7129: $1a
    ld [hl], h                                    ; $712a: $74
    adc [hl]                                      ; $712b: $8e
    and c                                         ; $712c: $a1
    rst $08                                       ; $712d: $cf
    or d                                          ; $712e: $b2
    ld c, d                                       ; $712f: $4a
    ret                                           ; $7130: $c9


    ld c, $65                                     ; $7131: $0e $65
    and c                                         ; $7133: $a1
    ld d, l                                       ; $7134: $55
    ld a, [hl]                                    ; $7135: $7e
    db $ec                                        ; $7136: $ec
    push de                                       ; $7137: $d5
    ldh a, [$8c]                                  ; $7138: $f0 $8c
    xor $32                                       ; $713a: $ee $32
    rst $30                                       ; $713c: $f7
    xor $ac                                       ; $713d: $ee $ac
    ld d, e                                       ; $713f: $53
    cp d                                          ; $7140: $ba
    inc l                                         ; $7141: $2c
    add [hl]                                      ; $7142: $86
    sbc $bd                                       ; $7143: $de $bd
    add [hl]                                      ; $7145: $86
    add hl, sp                                    ; $7146: $39
    jp Jump_060_7b2c                              ; $7147: $c3 $2c $7b


    sbc h                                         ; $714a: $9c
    ld e, [hl]                                    ; $714b: $5e
    jp Jump_060_529d                              ; $714c: $c3 $9d $52


    ld a, c                                       ; $714f: $79
    xor $8e                                       ; $7150: $ee $8e
    ld l, c                                       ; $7152: $69
    ld a, e                                       ; $7153: $7b
    inc l                                         ; $7154: $2c
    ld [hl], e                                    ; $7155: $73
    call nz, Call_000_1ace                        ; $7156: $c4 $ce $1a
    sbc [hl]                                      ; $7159: $9e
    and c                                         ; $715a: $a1
    ld a, $e7                                     ; $715b: $3e $e7
    jp c, $6b8f                                   ; $715d: $da $8f $6b

    ccf                                           ; $7160: $3f
    xor [hl]                                      ; $7161: $ae
    db $fd                                        ; $7162: $fd
    ld h, a                                       ; $7163: $67
    ld l, d                                       ; $7164: $6a
    halt                                          ; $7165: $76
    ld h, l                                       ; $7166: $65
    ld h, b                                       ; $7167: $60
    halt                                          ; $7168: $76
    sbc $f7                                       ; $7169: $de $f7
    db $fd                                        ; $716b: $fd
    ld [bc], a                                    ; $716c: $02
    db $ed                                        ; $716d: $ed
    pop af                                        ; $716e: $f1
    rst $00                                       ; $716f: $c7
    sub l                                         ; $7170: $95
    ld h, [hl]                                    ; $7171: $66
    ld c, $cd                                     ; $7172: $0e $cd
    db $d3                                        ; $7174: $d3
    ld [hl], c                                    ; $7175: $71
    xor l                                         ; $7176: $ad

Call_060_7177:
    and $39                                       ; $7177: $e6 $39
    dec sp                                        ; $7179: $3b
    inc h                                         ; $717a: $24
    call nc, $ef88                                ; $717b: $d4 $88 $ef
    rla                                           ; $717e: $17
    rla                                           ; $717f: $17
    add c                                         ; $7180: $81
    ldh [$9e], a                                  ; $7181: $e0 $9e
    db $e3                                        ; $7183: $e3
    sbc [hl]                                      ; $7184: $9e
    db $e3                                        ; $7185: $e3
    sbc [hl]                                      ; $7186: $9e
    add b                                         ; $7187: $80
    dec c                                         ; $7188: $0d

Call_060_7189:
    rst $10                                       ; $7189: $d7
    sbc b                                         ; $718a: $98
    sub d                                         ; $718b: $92
    push bc                                       ; $718c: $c5
    cp l                                          ; $718d: $bd
    ld e, d                                       ; $718e: $5a
    xor $5d                                       ; $718f: $ee $5d

Call_060_7191:
    ld d, c                                       ; $7191: $51
    ld d, [hl]                                    ; $7192: $56
    sub l                                         ; $7193: $95
    ld b, [hl]                                    ; $7194: $46
    ld [hl], b                                    ; $7195: $70
    ld [$f765], sp                                ; $7196: $08 $65 $f7
    ld a, l                                       ; $7199: $7d
    rst $28                                       ; $719a: $ef
    ld a, h                                       ; $719b: $7c
    cp l                                          ; $719c: $bd
    ld d, [hl]                                    ; $719d: $56
    ccf                                           ; $719e: $3f
    ld e, a                                       ; $719f: $5f
    or b                                          ; $71a0: $b0
    ld e, $17                                     ; $71a1: $1e $17
    add l                                         ; $71a3: $85
    ld l, h                                       ; $71a4: $6c
    ld a, h                                       ; $71a5: $7c
    ld b, c                                       ; $71a6: $41
    rst $30                                       ; $71a7: $f7
    ld l, d                                       ; $71a8: $6a
    ld e, c                                       ; $71a9: $59
    inc c                                         ; $71aa: $0c
    ld a, l                                       ; $71ab: $7d
    add l                                         ; $71ac: $85
    sbc d                                         ; $71ad: $9a
    ld e, $42                                     ; $71ae: $1e $42
    ld e, c                                       ; $71b0: $59
    adc l                                         ; $71b1: $8d
    ld a, a                                       ; $71b2: $7f
    ld [hl], c                                    ; $71b3: $71
    ld a, d                                       ; $71b4: $7a
    and c                                         ; $71b5: $a1
    xor h                                         ; $71b6: $ac
    add $bf                                       ; $71b7: $c6 $bf
    jr c, jr_060_7208                             ; $71b9: $38 $4d

    dec de                                        ; $71bb: $1b
    ld [$f432], sp                                ; $71bc: $08 $32 $f4
    and c                                         ; $71bf: $a1
    cp [hl]                                       ; $71c0: $be
    ld b, [hl]                                    ; $71c1: $46
    add a                                         ; $71c2: $87
    ret c                                         ; $71c3: $d8

    add hl, sp                                    ; $71c4: $39
    and c                                         ; $71c5: $a1
    ld [hl+], a                                   ; $71c6: $22
    adc a                                         ; $71c7: $8f
    and c                                         ; $71c8: $a1
    rst $28                                       ; $71c9: $ef
    di                                            ; $71ca: $f3
    jp z, $e571                                   ; $71cb: $ca $71 $e5

    cp b                                          ; $71ce: $b8
    jp nc, $ac1c                                  ; $71cf: $d2 $1c $ac

    ld e, d                                       ; $71d2: $5a
    jp z, Jump_000_02fd                           ; $71d3: $ca $fd $02

    ld l, l                                       ; $71d6: $6d
    ld a, [$1022]                                 ; $71d7: $fa $22 $10
    ld [hl], h                                    ; $71da: $74
    ld c, $94                                     ; $71db: $0e $94
    ld a, [c]                                     ; $71dd: $f2
    sbc [hl]                                      ; $71de: $9e
    add b                                         ; $71df: $80
    dec c                                         ; $71e0: $0d
    rst $10                                       ; $71e1: $d7
    sbc b                                         ; $71e2: $98
    sub d                                         ; $71e3: $92
    push bc                                       ; $71e4: $c5
    cp l                                          ; $71e5: $bd
    ld e, d                                       ; $71e6: $5a
    ld b, [hl]                                    ; $71e7: $46
    ld a, [hl-]                                   ; $71e8: $3a
    ld b, c                                       ; $71e9: $41
    ret nc                                        ; $71ea: $d0

    or h                                          ; $71eb: $b4
    or l                                          ; $71ec: $b5
    rst $38                                       ; $71ed: $ff
    ld c, h                                       ; $71ee: $4c
    adc l                                         ; $71ef: $8d
    or $17                                        ; $71f0: $f6 $17
    rlca                                          ; $71f2: $07
    ld e, h                                       ; $71f3: $5c
    halt                                          ; $71f4: $76
    rst $18                                       ; $71f5: $df
    rst $30                                       ; $71f6: $f7
    ret z                                         ; $71f7: $c8

    sbc a                                         ; $71f8: $9f
    cp e                                          ; $71f9: $bb
    rst $28                                       ; $71fa: $ef
    ld a, e                                       ; $71fb: $7b
    ld l, b                                       ; $71fc: $68
    sbc $7d                                       ; $71fd: $de $7d
    rst $18                                       ; $71ff: $df
    inc bc                                        ; $7200: $03
    and l                                         ; $7201: $a5
    cp h                                          ; $7202: $bc
    ei                                            ; $7203: $fb
    cp [hl]                                       ; $7204: $be
    ld d, a                                       ; $7205: $57
    sbc e                                         ; $7206: $9b
    dec hl                                        ; $7207: $2b

jr_060_7208:
    ld bc, $bef9                                  ; $7208: $01 $f9 $be
    rst $28                                       ; $720b: $ef
    rla                                           ; $720c: $17
    db $ed                                        ; $720d: $ed
    ccf                                           ; $720e: $3f
    add a                                         ; $720f: $87
    ld a, [$bcd0]                                 ; $7210: $fa $d0 $bc
    add [hl]                                      ; $7213: $86
    ld sp, $ce7d                                  ; $7214: $31 $7d $ce
    jp c, $d5f4                                   ; $7217: $da $f4 $d5

    and $40                                       ; $721a: $e6 $40
    add hl, hl                                    ; $721c: $29
    xor a                                         ; $721d: $af
    ld [hl], $17                                  ; $721e: $36 $17
    dec h                                         ; $7220: $25
    ld d, h                                       ; $7221: $54
    dec [hl]                                      ; $7222: $35
    dec e                                         ; $7223: $1d
    add a                                         ; $7224: $87
    ld a, a                                       ; $7225: $7f
    xor b                                         ; $7226: $a8
    xor a                                         ; $7227: $af
    pop de                                        ; $7228: $d1
    dec e                                         ; $7229: $1d
    xor a                                         ; $722a: $af
    sub c                                         ; $722b: $91
    cp a                                          ; $722c: $bf
    ldh a, [rLCDC]                                ; $722d: $f0 $40
    ldh a, [$7e]                                  ; $722f: $f0 $7e
    ld bc, $5c07                                  ; $7231: $01 $07 $5c
    ld b, [hl]                                    ; $7234: $46
    cp $dc                                        ; $7235: $fe $dc
    ld sp, hl                                     ; $7237: $f9
    ld a, d                                       ; $7238: $7a
    xor l                                         ; $7239: $ad
    ld a, [hl]                                    ; $723a: $7e
    cp [hl]                                       ; $723b: $be
    ld h, b                                       ; $723c: $60
    dec a                                         ; $723d: $3d
    ld l, $0a                                     ; $723e: $2e $0a
    reti                                          ; $7240: $d9


    ld hl, sp-$7e                                 ; $7241: $f8 $82
    xor $d5                                       ; $7243: $ee $d5
    ld [hl], d                                    ; $7245: $72
    rst $28                                       ; $7246: $ef
    sub b                                         ; $7247: $90
    ld d, b                                       ; $7248: $50
    inc hl                                        ; $7249: $23
    cp [hl]                                       ; $724a: $be
    ld [hl], a                                    ; $724b: $77
    ld h, l                                       ; $724c: $65
    add [hl]                                      ; $724d: $86
    ret z                                         ; $724e: $c8

    or l                                          ; $724f: $b5
    add [hl]                                      ; $7250: $86
    call c, $3a55                                 ; $7251: $dc $55 $3a
    ld h, h                                       ; $7254: $64
    cp d                                          ; $7255: $ba
    rst $30                                       ; $7256: $f7
    ld d, l                                       ; $7257: $55
    dec bc                                        ; $7258: $0b
    or d                                          ; $7259: $b2
    rst $30                                       ; $725a: $f7
    ld b, b                                       ; $725b: $40
    sbc c                                         ; $725c: $99
    adc [hl]                                      ; $725d: $8e
    adc e                                         ; $725e: $8b
    ld b, d                                       ; $725f: $42
    xor $f3                                       ; $7260: $ee $f3
    ld [hl+], a                                   ; $7262: $22
    db $10                                        ; $7263: $10
    db $f4                                        ; $7264: $f4
    inc l                                         ; $7265: $2c
    ld a, e                                       ; $7266: $7b
    ld [bc], a                                    ; $7267: $02
    ld [hl], $5c                                  ; $7268: $36 $5c
    ld h, e                                       ; $726a: $63
    ld c, d                                       ; $726b: $4a
    ld d, $f7                                     ; $726c: $16 $f7
    ld [$577b], a                                 ; $726e: $ea $7b $57
    and [hl]                                      ; $7271: $a6
    ld e, [hl]                                    ; $7272: $5e
    ld sp, hl                                     ; $7273: $f9
    sbc $a5                                       ; $7274: $de $a5
    ld e, a                                       ; $7276: $5f
    add [hl]                                      ; $7277: $86
    ld a, [$3a48]                                 ; $7278: $fa $48 $3a
    and l                                         ; $727b: $a5
    or a                                          ; $727c: $b7
    cp h                                          ; $727d: $bc
    rlca                                          ; $727e: $07
    jp z, $2f39                                   ; $727f: $ca $39 $2f

    rst $10                                       ; $7282: $d7
    db $fc                                        ; $7283: $fc
    ld [hl-], a                                   ; $7284: $32
    or h                                          ; $7285: $b4
    adc b                                         ; $7286: $88
    ld [hl], a                                    ; $7287: $77
    dec a                                         ; $7288: $3d
    sub h                                         ; $7289: $94
    ld h, d                                       ; $728a: $62
    ld hl, $8ee6                                  ; $728b: $21 $e6 $8e
    rst $00                                       ; $728e: $c7
    cp c                                          ; $728f: $b9
    add e                                         ; $7290: $83
    xor d                                         ; $7291: $aa
    sub b                                         ; $7292: $90
    dec sp                                        ; $7293: $3b
    ld a, e                                       ; $7294: $7b
    ld l, b                                       ; $7295: $68
    ld e, c                                       ; $7296: $59

Jump_060_7297:
    inc c                                         ; $7297: $0c
    ld a, l                                       ; $7298: $7d
    and b                                         ; $7299: $a0
    sub h                                         ; $729a: $94
    rla                                           ; $729b: $17
    ld e, d                                       ; $729c: $5a
    inc h                                         ; $729d: $24
    dec h                                         ; $729e: $25
    or $a2                                        ; $729f: $f6 $a2
    sub b                                         ; $72a1: $90
    adc l                                         ; $72a2: $8d
    cpl                                           ; $72a3: $2f
    add sp, $5e                                   ; $72a4: $e8 $5e
    dec l                                         ; $72a6: $2d
    ld a, e                                       ; $72a7: $7b
    inc l                                         ; $72a8: $2c
    ld b, e                                       ; $72a9: $43
    ld a, l                                       ; $72aa: $7d
    ld d, c                                       ; $72ab: $51
    inc sp                                        ; $72ac: $33
    add a                                         ; $72ad: $87
    and $35                                       ; $72ae: $e6 $35
    adc h                                         ; $72b0: $8c
    jp hl                                         ; $72b1: $e9


    ei                                            ; $72b2: $fb
    dec b                                         ; $72b3: $05
    rst $10                                       ; $72b4: $d7
    ld a, h                                       ; $72b5: $7c
    ld b, l                                       ; $72b6: $45
    db $db                                        ; $72b7: $db
    di                                            ; $72b8: $f3
    pop af                                        ; $72b9: $f1
    ccf                                           ; $72ba: $3f
    cp e                                          ; $72bb: $bb
    ld [hl-], a                                   ; $72bc: $32
    inc a                                         ; $72bd: $3c
    ld d, c                                       ; $72be: $51
    ld e, d                                       ; $72bf: $5a
    ld [hl], e                                    ; $72c0: $73
    cp a                                          ; $72c1: $bf
    rlca                                          ; $72c2: $07
    ld e, h                                       ; $72c3: $5c
    ld d, [hl]                                    ; $72c4: $56
    ld a, a                                       ; $72c5: $7f
    ld b, c                                       ; $72c6: $41
    adc a                                         ; $72c7: $8f
    ld e, $f6                                     ; $72c8: $1e $f6
    ld a, c                                       ; $72ca: $79
    ld l, b                                       ; $72cb: $68
    sbc [hl]                                      ; $72cc: $9e
    jp nc, $bc45                                  ; $72cd: $d2 $45 $bc

    xor d                                         ; $72d0: $aa
    ld a, h                                       ; $72d1: $7c
    cp a                                          ; $72d2: $bf
    rst $10                                       ; $72d3: $d7
    add hl, de                                    ; $72d4: $19
    add a                                         ; $72d5: $87
    ld a, [$38c8]                                 ; $72d6: $fa $c8 $38
    inc h                                         ; $72d9: $24
    ld a, [hl]                                    ; $72da: $7e
    add hl, de                                    ; $72db: $19
    db $dd                                        ; $72dc: $dd
    ld h, l                                       ; $72dd: $65
    and c                                         ; $72de: $a1
    ld b, l                                       ; $72df: $45
    ld d, d                                       ; $72e0: $52
    ld h, d                                       ; $72e1: $62
    rst $20                                       ; $72e2: $e7
    and d                                         ; $72e3: $a2
    sub b                                         ; $72e4: $90
    adc l                                         ; $72e5: $8d
    cpl                                           ; $72e6: $2f
    add sp, $5e                                   ; $72e7: $e8 $5e
    dec l                                         ; $72e9: $2d
    rst $20                                       ; $72ea: $e7
    cp h                                          ; $72eb: $bc
    ld l, l                                       ; $72ec: $6d
    rst $10                                       ; $72ed: $d7
    adc $39                                       ; $72ee: $ce $39
    res 4, d                                      ; $72f0: $cb $a2
    sub b                                         ; $72f2: $90
    adc l                                         ; $72f3: $8d
    cpl                                           ; $72f4: $2f
    add sp, $5e                                   ; $72f5: $e8 $5e
    ld c, l                                       ; $72f7: $4d
    db $db                                        ; $72f8: $db
    sub l                                         ; $72f9: $95
    add c                                         ; $72fa: $81
    reti                                          ; $72fb: $d9


    cp c                                          ; $72fc: $b9
    ld d, b                                       ; $72fd: $50
    ld b, [hl]                                    ; $72fe: $46
    ld [hl], a                                    ; $72ff: $77
    ld e, c                                       ; $7300: $59
    inc c                                         ; $7301: $0c
    cp l                                          ; $7302: $bd
    ld a, e                                       ; $7303: $7b
    add h                                         ; $7304: $84
    cpl                                           ; $7305: $2f
    ccf                                           ; $7306: $3f
    ld [hl], h                                    ; $7307: $74
    jp hl                                         ; $7308: $e9


    add l                                         ; $7309: $85
    ei                                            ; $730a: $fb
    inc a                                         ; $730b: $3c
    cp d                                          ; $730c: $ba
    bit 4, d                                      ; $730d: $cb $62
    ret nz                                        ; $730f: $c0

    jp z, $191e                                   ; $7310: $ca $1e $19

    add a                                         ; $7313: $87
    call nz, $7b2f                                ; $7314: $c4 $2f $7b
    cp [hl]                                       ; $7317: $be
    inc l                                         ; $7318: $2c
    or h                                          ; $7319: $b4
    ld c, b                                       ; $731a: $48
    ld c, d                                       ; $731b: $4a
    db $ec                                        ; $731c: $ec
    inc e                                         ; $731d: $1c
    ld b, d                                       ; $731e: $42
    cp c                                          ; $731f: $b9
    ld e, a                                       ; $7320: $5f
    ld l, l                                       ; $7321: $6d
    ld a, [$7a18]                                 ; $7322: $fa $18 $7a
    inc hl                                        ; $7325: $23
    ld b, c                                       ; $7326: $41
    adc d                                         ; $7327: $8a
    ld [hl], e                                    ; $7328: $73
    adc a                                         ; $7329: $8f
    adc e                                         ; $732a: $8b
    ld a, c                                       ; $732b: $79
    inc c                                         ; $732c: $0c
    cp b                                          ; $732d: $b8
    ld b, [hl]                                    ; $732e: $46
    ld c, b                                       ; $732f: $48
    or $a2                                        ; $7330: $f6 $a2
    db $fc                                        ; $7332: $fc
    db $d3                                        ; $7333: $d3
    dec b                                         ; $7334: $05
    sbc l                                         ; $7335: $9d
    ld sp, $0154                                  ; $7336: $31 $54 $01
    add hl, hl                                    ; $7339: $29
    ld d, $da                                     ; $733a: $16 $da
    jp c, $a67f                                   ; $733c: $da $7f $a6

    and $7e                                       ; $733f: $e6 $7e
    ld bc, $5c07                                  ; $7341: $01 $07 $5c
    and $5c                                       ; $7344: $e6 $5c
    adc b                                         ; $7346: $88
    ld [hl+], a                                   ; $7347: $22
    rst $20                                       ; $7348: $e7
    and d                                         ; $7349: $a2
    sub b                                         ; $734a: $90
    or e                                          ; $734b: $b3
    inc l                                         ; $734c: $2c
    ld a, [bc]                                    ; $734d: $0a
    reti                                          ; $734e: $d9


    ld hl, sp-$7e                                 ; $734f: $f8 $82
    xor $d5                                       ; $7351: $ee $d5
    or h                                          ; $7353: $b4
    ld d, l                                       ; $7354: $55
    and c                                         ; $7355: $a1
    ld b, [hl]                                    ; $7356: $46
    ld a, h                                       ; $7357: $7c
    cp a                                          ; $7358: $bf
    db $ed                                        ; $7359: $ed
    or c                                          ; $735a: $b1
    sbc a                                         ; $735b: $9f
    xor c                                         ; $735c: $a9
    ld e, a                                       ; $735d: $5f
    reti                                          ; $735e: $d9


    add sp, -$5f                                  ; $735f: $e8 $a1
    ld h, l                                       ; $7361: $65
    ld hl, $0e76                                  ; $7362: $21 $76 $0e
    and c                                         ; $7365: $a1
    sbc h                                         ; $7366: $9c

jr_060_7367:
    di                                            ; $7367: $f3
    ld [bc], a                                    ; $7368: $02
    ld d, a                                       ; $7369: $57

Jump_060_736a:
    jp c, $ebb1                                   ; $736a: $da $b1 $eb

    cp l                                          ; $736d: $bd
    or $2f                                        ; $736e: $f6 $2f
    ld d, e                                       ; $7370: $53
    cp a                                          ; $7371: $bf
    or d                                          ; $7372: $b2
    pop de                                        ; $7373: $d1
    dec sp                                        ; $7374: $3b
    ld e, a                                       ; $7375: $5f
    xor a                                         ; $7376: $af
    push de                                       ; $7377: $d5
    rst $08                                       ; $7378: $cf
    rla                                           ; $7379: $17
    xor h                                         ; $737a: $ac
    rst $00                                       ; $737b: $c7
    ld b, l                                       ; $737c: $45
    ld hl, $5f1b                                  ; $737d: $21 $1b $5f
    ret nc                                        ; $7380: $d0

    cp l                                          ; $7381: $bd
    ld e, d                                       ; $7382: $5a
    ld d, $62                                     ; $7383: $16 $62
    rst $20                                       ; $7385: $e7

jr_060_7386:
    ld e, $28                                     ; $7386: $1e $28
    or h                                          ; $7388: $b4
    add l                                         ; $7389: $85
    or d                                          ; $738a: $b2

Call_060_738b:
    xor e                                         ; $738b: $ab
    ld [hl], h                                    ; $738c: $74
    ret z                                         ; $738d: $c8

    ld [hl], h                                    ; $738e: $74
    rst $28                                       ; $738f: $ef
    xor e                                         ; $7390: $ab
    ld d, $64                                     ; $7391: $16 $64
    rst $28                                       ; $7393: $ef
    add c                                         ; $7394: $81
    ld [hl-], a                                   ; $7395: $32

Jump_060_7396:
    dec e                                         ; $7396: $1d
    rla                                           ; $7397: $17
    add l                                         ; $7398: $85
    call c, $45e7                                 ; $7399: $dc $e7 $45
    jr nz, jr_060_7386                            ; $739c: $20 $e8

    ld e, c                                       ; $739e: $59
    or $04                                        ; $739f: $f6 $04
    ld l, h                                       ; $73a1: $6c
    cp b                                          ; $73a2: $b8
    add $94                                       ; $73a3: $c6 $94
    inc l                                         ; $73a5: $2c
    xor $d5                                       ; $73a6: $ee $d5
    rst $30                                       ; $73a8: $f7
    jp c, $aa7f                                   ; $73a9: $da $7f $aa

    ei                                            ; $73ac: $fb
    dec b                                         ; $73ad: $05
    ld l, l                                       ; $73ae: $6d
    sub [hl]                                      ; $73af: $96
    ld b, l                                       ; $73b0: $45
    ld hl, $5f1b                                  ; $73b1: $21 $1b $5f
    ret nc                                        ; $73b4: $d0

    cp l                                          ; $73b5: $bd
    ld a, d                                       ; $73b6: $7a
    add l                                         ; $73b7: $85
    sbc d                                         ; $73b8: $9a
    ld b, e                                       ; $73b9: $43
    jr z, jr_060_7367                             ; $73ba: $28 $ab

    pop af                                        ; $73bc: $f1
    cpl                                           ; $73bd: $2f
    ld c, [hl]                                    ; $73be: $4e
    cpl                                           ; $73bf: $2f
    sub h                                         ; $73c0: $94
    push de                                       ; $73c1: $d5
    ld hl, sp+$17                                 ; $73c2: $f8 $17
    and a                                         ; $73c4: $a7
    rst $28                                       ; $73c5: $ef
    dec e                                         ; $73c6: $1d
    ld [hl], b                                    ; $73c7: $70
    add hl, de                                    ; $73c8: $19
    ld d, e                                       ; $73c9: $53
    ld [hl], e                                    ; $73ca: $73
    ld sp, $d105                                  ; $73cb: $31 $05 $d1
    ld l, e                                       ; $73ce: $6b
    dec [hl]                                      ; $73cf: $35
    ld l, c                                       ; $73d0: $69
    ei                                            ; $73d1: $fb
    cp h                                          ; $73d2: $bc
    ld b, $34                                     ; $73d3: $06 $34
    ld a, [hl-]                                   ; $73d5: $3a
    inc b                                         ; $73d6: $04
    or [hl]                                       ; $73d7: $b6
    ld [hl-], a                                   ; $73d8: $32

jr_060_73d9:
    adc a                                         ; $73d9: $8f
    db $fc                                        ; $73da: $fc
    add hl, sp                                    ; $73db: $39
    add hl, bc                                    ; $73dc: $09
    push bc                                       ; $73dd: $c5
    inc a                                         ; $73de: $3c
    ld [hl], h                                    ; $73df: $74
    ld c, [hl]                                    ; $73e0: $4e
    ld a, l                                       ; $73e1: $7d
    add hl, de                                    ; $73e2: $19
    ld c, c                                       ; $73e3: $49
    and a                                         ; $73e4: $a7
    db $f4                                        ; $73e5: $f4
    sub [hl]                                      ; $73e6: $96
    add a                                         ; $73e7: $87
    ld d, b                                       ; $73e8: $50
    xor $17                                       ; $73e9: $ee $17
    db $ed                                        ; $73eb: $ed
    ccf                                           ; $73ec: $3f
    ld d, e                                       ; $73ed: $53
    and e                                         ; $73ee: $a3
    ld a, l                                       ; $73ef: $7d
    db $ed                                        ; $73f0: $ed
    ld [hl], c                                    ; $73f1: $71
    ret z                                         ; $73f2: $c8

    jr z, jr_060_73d9                             ; $73f3: $28 $e4

    sbc h                                         ; $73f5: $9c
    ld b, e                                       ; $73f6: $43
    ld a, l                                       ; $73f7: $7d
    and b                                         ; $73f8: $a0
    sub h                                         ; $73f9: $94
    rst $00                                       ; $73fa: $c7
    ret nc                                        ; $73fb: $d0

    rst $00                                       ; $73fc: $c7
    ldh a, [$f8]                                  ; $73fd: $f0 $f8
    sbc h                                         ; $73ff: $9c
    rla                                           ; $7400: $17
    ld d, a                                       ; $7401: $57
    ld h, [hl]                                    ; $7402: $66
    adc b                                         ; $7403: $88
    ld e, h                                       ; $7404: $5c
    ld l, e                                       ; $7405: $6b
    ret z                                         ; $7406: $c8

    ld e, l                                       ; $7407: $5d
    and l                                         ; $7408: $a5
    ld b, e                                       ; $7409: $43
    and [hl]                                      ; $740a: $a6
    ld a, e                                       ; $740b: $7b
    rra                                           ; $740c: $1f
    ld sp, hl                                     ; $740d: $f9
    ld [hl], e                                    ; $740e: $73
    push de                                       ; $740f: $d5
    add d                                         ; $7410: $82
    cp h                                          ; $7411: $bc
    rlca                                          ; $7412: $07
    jp z, Jump_060_5c74                           ; $7413: $ca $74 $5c

    inc d                                         ; $7416: $14
    ld [hl], d                                    ; $7417: $72
    sbc a                                         ; $7418: $9f
    rst $10                                       ; $7419: $d7
    add hl, hl                                    ; $741a: $29
    jp hl                                         ; $741b: $e9


    sub c                                         ; $741c: $91
    ld [hl], c                                    ; $741d: $71
    ld c, b                                       ; $741e: $48
    db $fc                                        ; $741f: $fc
    or d                                          ; $7420: $b2
    rst $20                                       ; $7421: $e7
    bit 0, d                                      ; $7422: $cb $42
    adc e                                         ; $7424: $8b
    and h                                         ; $7425: $a4
    call nz, $a1ce                                ; $7426: $c4 $ce $a1
    ld h, l                                       ; $7429: $65
    ld d, c                                       ; $742a: $51
    ret z                                         ; $742b: $c8

    add $17                                       ; $742c: $c6 $17
    ld [hl], h                                    ; $742e: $74
    xor a                                         ; $742f: $af
    ld e, $dd                                     ; $7430: $1e $dd
    ld h, l                                       ; $7432: $65
    dec e                                         ; $7433: $1d
    ret nc                                        ; $7434: $d0

    add hl, sp                                    ; $7435: $39
    ld e, l                                       ; $7436: $5d
    ret nc                                        ; $7437: $d0

    ld a, c                                       ; $7438: $79
    xor a                                         ; $7439: $af
    db $fd                                        ; $743a: $fd
    and a                                         ; $743b: $a7
    jp c, $870b                                   ; $743c: $da $0b $87

    ld e, d                                       ; $743f: $5a
    call nc, Call_060_7b2c                        ; $7440: $d4 $2c $7b
    ld a, $fe                                     ; $7443: $3e $fe
    ld h, a                                       ; $7445: $67
    ld d, a                                       ; $7446: $57
    add d                                         ; $7447: $82
    db $10                                        ; $7448: $10
    push af                                       ; $7449: $f5
    ld e, d                                       ; $744a: $5a
    call $a035                                    ; $744b: $cd $35 $a0
    pop de                                        ; $744e: $d1
    ld hl, $95b0                                  ; $744f: $21 $b0 $95
    ld sp, hl                                     ; $7452: $f9
    sbc $d5                                       ; $7453: $de $d5
    adc [hl]                                      ; $7455: $8e
    sbc h                                         ; $7456: $9c
    ld d, $a2                                     ; $7457: $16 $a2
    cp $11                                        ; $7459: $fe $11
    cp d                                          ; $745b: $ba
    add e                                         ; $745c: $83
    inc d                                         ; $745d: $14
    res 2, b                                      ; $745e: $cb $90
    and d                                         ; $7460: $a2
    sub h                                         ; $7461: $94
    ld [hl], e                                    ; $7462: $73
    ld c, a                                       ; $7463: $4f
    ret nz                                        ; $7464: $c0

    add [hl]                                      ; $7465: $86
    ld l, e                                       ; $7466: $6b
    ld c, h                                       ; $7467: $4c
    ret                                           ; $7468: $c9


    ld [c], a                                     ; $7469: $e2
    ld e, [hl]                                    ; $746a: $5e
    sbc l                                         ; $746b: $9d
    dec hl                                        ; $746c: $2b
    ld e, a                                       ; $746d: $5f
    xor d                                         ; $746e: $aa
    ld a, [c]                                     ; $746f: $f2
    ld c, d                                       ; $7470: $4a
    ld b, b                                       ; $7471: $40
    cp [hl]                                       ; $7472: $be
    ld e, a                                       ; $7473: $5f
    rst $10                                       ; $7474: $d7
    add hl, de                                    ; $7475: $19
    add a                                         ; $7476: $87
    ld a, [$38c8]                                 ; $7477: $fa $c8 $38
    inc h                                         ; $747a: $24
    ld a, [hl]                                    ; $747b: $7e
    add hl, de                                    ; $747c: $19
    db $dd                                        ; $747d: $dd
    ld h, l                                       ; $747e: $65
    ld [$42cb], a                                 ; $747f: $ea $cb $42
    adc e                                         ; $7482: $8b
    and h                                         ; $7483: $a4
    call nz, Call_060_659e                        ; $7484: $c4 $9e $65
    ld d, c                                       ; $7487: $51
    ret z                                         ; $7488: $c8

    add $17                                       ; $7489: $c6 $17
    ld [hl], h                                    ; $748b: $74
    xor a                                         ; $748c: $af
    ld a, $e7                                     ; $748d: $3e $e7
    dec b                                         ; $748f: $05
    sub a                                         ; $7490: $97
    sbc e                                         ; $7491: $9b
    ld a, [hl]                                    ; $7492: $7e
    rst $28                                       ; $7493: $ef
    adc d                                         ; $7494: $8a
    or d                                          ; $7495: $b2
    sbc b                                         ; $7496: $98
    sub d                                         ; $7497: $92
    adc e                                         ; $7498: $8b
    dec l                                         ; $7499: $2d
    dec e                                         ; $749a: $1d
    jp z, Jump_000_2940                           ; $749b: $ca $40 $29

    rst $28                                       ; $749e: $ef
    di                                            ; $749f: $f3
    ld hl, sp+$17                                 ; $74a0: $f8 $17
    rrca                                          ; $74a2: $0f
    dec l                                         ; $74a3: $2d
    ld a, e                                       ; $74a4: $7b
    adc h                                         ; $74a5: $8c
    ld b, e                                       ; $74a6: $43
    jr z, jr_060_750c                             ; $74a7: $28 $63

    add sp, -$73                                  ; $74a9: $e8 $8d
    ld e, a                                       ; $74ab: $5f
    inc a                                         ; $74ac: $3c
    add [hl]                                      ; $74ad: $86
    cp [hl]                                       ; $74ae: $be
    adc e                                         ; $74af: $8b
    ld d, e                                       ; $74b0: $53
    inc de                                        ; $74b1: $13
    ld b, l                                       ; $74b2: $45
    jr nz, @+$1a                                  ; $74b3: $20 $18

    ld a, [c]                                     ; $74b5: $f2
    ld a, [hl]                                    ; $74b6: $7e
    ld bc, $966d                                  ; $74b7: $01 $6d $96
    sub c                                         ; $74ba: $91
    ccf                                           ; $74bb: $3f
    rla                                           ; $74bc: $17
    jp Jump_000_2940                              ; $74bd: $c3 $40 $29


    xor a                                         ; $74c0: $af
    ld d, e                                       ; $74c1: $53
    sub d                                         ; $74c2: $92
    ld h, a                                       ; $74c3: $67
    ld b, c                                       ; $74c4: $41
    pop de                                        ; $74c5: $d1
    rst $28                                       ; $74c6: $ef
    rla                                           ; $74c7: $17
    rst $10                                       ; $74c8: $d7
    ld b, [hl]                                    ; $74c9: $46
    rst $30                                       ; $74ca: $f7
    jp c, $a863                                   ; $74cb: $da $63 $a8

    ld b, e                                       ; $74ce: $43
    ld a, l                                       ; $74cf: $7d
    adc $45                                       ; $74d0: $ce $45
    ld hl, $5f1b                                  ; $74d2: $21 $1b $5f
    ret nc                                        ; $74d5: $d0

    cp h                                          ; $74d6: $bc
    jp c, $191c                                   ; $74d7: $da $1c $19

    ld a, [hl-]                                   ; $74da: $3a
    ld c, $a1                                     ; $74db: $0e $a1
    inc l                                         ; $74dd: $2c
    and [hl]                                      ; $74de: $a6
    xor b                                         ; $74df: $a8
    ld b, l                                       ; $74e0: $45
    ld sp, hl                                     ; $74e1: $f9
    rst $30                                       ; $74e2: $f7
    ld b, b                                       ; $74e3: $40
    pop de                                        ; $74e4: $d1
    cp $02                                        ; $74e5: $fe $02
    rlca                                          ; $74e7: $07
    adc l                                         ; $74e8: $8d
    or e                                          ; $74e9: $b3
    db $ec                                        ; $74ea: $ec
    add hl, bc                                    ; $74eb: $09
    ret c                                         ; $74ec: $d8

    ld [hl], b                                    ; $74ed: $70
    adc l                                         ; $74ee: $8d
    add hl, hl                                    ; $74ef: $29
    ld e, c                                       ; $74f0: $59
    call c, $69ab                                 ; $74f1: $dc $ab $69
    inc hl                                        ; $74f4: $23
    db $e3                                        ; $74f5: $e3
    sub b                                         ; $74f6: $90
    ld hl, sp+$65                                 ; $74f7: $f8 $65
    xor $dd                                       ; $74f9: $ee $dd
    ld e, c                                       ; $74fb: $59
    rst $08                                       ; $74fc: $cf
    ld a, c                                       ; $74fd: $79
    ld bc, $6657                                  ; $74fe: $01 $57 $66
    adc b                                         ; $7501: $88
    ld e, h                                       ; $7502: $5c
    ld l, e                                       ; $7503: $6b
    ret z                                         ; $7504: $c8

    ld e, l                                       ; $7505: $5d
    and l                                         ; $7506: $a5
    ld b, e                                       ; $7507: $43
    and [hl]                                      ; $7508: $a6
    ld a, e                                       ; $7509: $7b
    ld e, a                                       ; $750a: $5f
    ld b, e                                       ; $750b: $43

jr_060_750c:
    ld c, a                                       ; $750c: $4f
    db $f4                                        ; $750d: $f4
    ld h, d                                       ; $750e: $62
    ld b, b                                       ; $750f: $40
    rrca                                          ; $7510: $0f
    call Call_000_0bf7                            ; $7511: $cd $f7 $0b
    add a                                         ; $7514: $87
    cp h                                          ; $7515: $bc
    ld d, [hl]                                    ; $7516: $56
    ld [hl], e                                    ; $7517: $73
    dec c                                         ; $7518: $0d
    ld l, b                                       ; $7519: $68
    ld [hl], h                                    ; $751a: $74
    ld [$656c], sp                                ; $751b: $08 $6c $65
    cp [hl]                                       ; $751e: $be
    rst $10                                       ; $751f: $d7
    and $91                                       ; $7520: $e6 $91
    ccf                                           ; $7522: $3f
    rst $10                                       ; $7523: $d7
    and b                                         ; $7524: $a0
    ld d, $e7                                     ; $7525: $16 $e7
    jp nz, $dfb3                                  ; $7527: $c2 $b3 $df

    ld sp, hl                                     ; $752a: $f9
    ld a, [hl]                                    ; $752b: $7e
    ld bc, $5c07                                  ; $752c: $01 $07 $5c
    and $1c                                       ; $752f: $e6 $1c
    jp hl                                         ; $7531: $e9


    ld e, h                                       ; $7532: $5c
    inc d                                         ; $7533: $14
    ld [hl], d                                    ; $7534: $72
    sbc a                                         ; $7535: $9f
    rla                                           ; $7536: $17
    add c                                         ; $7537: $81
    and b                                         ; $7538: $a0
    and a                                         ; $7539: $a7
    db $e3                                        ; $753a: $e3
    ld a, [hl]                                    ; $753b: $7e
    inc [hl]                                      ; $753c: $34
    ld [hl-], a                                   ; $753d: $32
    ld c, $89                                     ; $753e: $0e $89
    ld e, a                                       ; $7540: $5f
    or $7c                                        ; $7541: $f6 $7c
    ld e, c                                       ; $7543: $59
    ld l, b                                       ; $7544: $68
    sub c                                         ; $7545: $91
    sub h                                         ; $7546: $94
    ret c                                         ; $7547: $d8

    add hl, sp                                    ; $7548: $39
    res 4, d                                      ; $7549: $cb $a2
    sub b                                         ; $754b: $90
    adc l                                         ; $754c: $8d
    cpl                                           ; $754d: $2f
    add sp, $5e                                   ; $754e: $e8 $5e
    ld a, l                                       ; $7550: $7d
    adc $0e                                       ; $7551: $ce $0e
    add hl, bc                                    ; $7553: $09
    dec [hl]                                      ; $7554: $35
    ld [c], a                                     ; $7555: $e2
    ei                                            ; $7556: $fb

jr_060_7557:
    dec b                                         ; $7557: $05
    rlca                                          ; $7558: $07
    ld e, h                                       ; $7559: $5c
    ld d, $43                                     ; $755a: $16 $43
    rst $28                                       ; $755c: $ef
    ld e, $f9                                     ; $755d: $1e $f9
    ld h, e                                       ; $755f: $63
    adc a                                         ; $7560: $8f
    or h                                          ; $7561: $b4
    call nz, Call_060_7950                        ; $7562: $c4 $50 $79
    ld [$0c65], sp                                ; $7565: $08 $65 $0c
    ld a, l                                       ; $7568: $7d
    ld h, h                                       ; $7569: $64
    ld d, e                                       ; $756a: $53
    or b                                          ; $756b: $b0
    ld de, $658a                                  ; $756c: $11 $8a $65
    ld d, c                                       ; $756f: $51
    ret z                                         ; $7570: $c8

    add l                                         ; $7571: $85
    ld d, $7e                                     ; $7572: $16 $7e
    halt                                          ; $7574: $76
    ld a, [de]                                    ; $7575: $1a
    cp l                                          ; $7576: $bd
    daa                                           ; $7577: $27
    ld h, b                                       ; $7578: $60
    jp $a635                                      ; $7579: $c3 $35 $a6


    ld h, h                                       ; $757c: $64
    ld [hl], c                                    ; $757d: $71
    xor a                                         ; $757e: $af
    ld c, [hl]                                    ; $757f: $4e
    jp c, $a0be                                   ; $7580: $da $be $a0

    ld h, l                                       ; $7583: $65
    jp hl                                         ; $7584: $e9


    jr jr_060_7557                                ; $7585: $18 $d0

    ld l, c                                       ; $7587: $69
    db $f4                                        ; $7588: $f4
    ld [hl], h                                    ; $7589: $74
    inc l                                         ; $758a: $2c
    ccf                                           ; $758b: $3f
    ld [hl], $6d                                  ; $758c: $36 $6d
    adc a                                         ; $758e: $8f
    ld h, l                                       ; $758f: $65
    ld l, b                                       ; $7590: $68
    add hl, de                                    ; $7591: $19
    ld sp, hl                                     ; $7592: $f9
    ld [hl], e                                    ; $7593: $73
    ld sp, $cd25                                  ; $7594: $31 $25 $cd
    ld l, e                                       ; $7597: $6b
    add h                                         ; $7598: $84
    ld h, h                                       ; $7599: $64
    cpl                                           ; $759a: $2f
    jp z, Jump_060_523f                           ; $759b: $ca $3f $52

    db $d3                                        ; $759e: $d3
    pop de                                        ; $759f: $d1
    ld [hl-], a                                   ; $75a0: $32
    ld e, b                                       ; $75a1: $58
    ld sp, hl                                     ; $75a2: $f9
    ld d, d                                       ; $75a3: $52
    sub l                                         ; $75a4: $95
    rst $10                                       ; $75a5: $d7
    cp a                                          ; $75a6: $bf
    sub h                                         ; $75a7: $94
    ld sp, $1ce0                                  ; $75a8: $31 $e0 $1c
    or c                                          ; $75ab: $b1
    sub e                                         ; $75ac: $93
    ld l, h                                       ; $75ad: $6c
    ld a, [bc]                                    ; $75ae: $0a
    ld e, d                                       ; $75af: $5a
    xor $17                                       ; $75b0: $ee $17
    db $ed                                        ; $75b2: $ed
    or c                                          ; $75b3: $b1
    sbc a                                         ; $75b4: $9f
    sub c                                         ; $75b5: $91
    ccf                                           ; $75b6: $3f
    rst $10                                       ; $75b7: $d7
    sbc e                                         ; $75b8: $9b
    jp nz, $cb43                                  ; $75b9: $c2 $43 $cb

    add hl, sp                                    ; $75bc: $39
    ld l, e                                       ; $75bd: $6b
    rst $38                                       ; $75be: $ff
    xor c                                         ; $75bf: $a9
    xor $17                                       ; $75c0: $ee $17
    sub a                                         ; $75c2: $97
    ld c, b                                       ; $75c3: $48
    or c                                          ; $75c4: $b1
    call z, $74b9                                 ; $75c5: $cc $b9 $74
    add c                                         ; $75c8: $81
    jp z, Jump_000_34e9                           ; $75c9: $ca $e9 $34

    rst $18                                       ; $75cc: $df
    ld l, e                                       ; $75cd: $6b
    or e                                          ; $75ce: $b3
    call z, $0b39                                 ; $75cf: $cc $39 $0b
    ld e, e                                       ; $75d2: $5b

jr_060_75d3:
    ld d, [hl]                                    ; $75d3: $56
    sbc c                                         ; $75d4: $99
    sbc $ec                                       ; $75d5: $de $ec
    and $b9                                       ; $75d7: $e6 $b9
    ld [hl], a                                    ; $75d9: $77
    rst $20                                       ; $75da: $e7
    ld b, d                                       ; $75db: $42
    xor c                                         ; $75dc: $a9
    call $1ff5                                    ; $75dd: $cd $f5 $1f
    dec sp                                        ; $75e0: $3b
    daa                                           ; $75e1: $27
    and c                                         ; $75e2: $a1
    ld e, b                                       ; $75e3: $58
    ld d, [hl]                                    ; $75e4: $56
    ld [de], a                                    ; $75e5: $12
    ld h, h                                       ; $75e6: $64
    adc a                                         ; $75e7: $8f
    ld [hl], c                                    ; $75e8: $71
    rrca                                          ; $75e9: $0f
    sub h                                         ; $75ea: $94
    ld a, e                                       ; $75eb: $7b
    rlca                                          ; $75ec: $07
    ld e, h                                       ; $75ed: $5c
    ld b, [hl]                                    ; $75ee: $46
    cp $9c                                        ; $75ef: $fe $9c
    dec b                                         ; $75f1: $05
    pop af                                        ; $75f2: $f1
    ld c, a                                       ; $75f3: $4f
    rst $00                                       ; $75f4: $c7
    ld e, $62                                     ; $75f5: $1e $62
    di                                            ; $75f7: $f3
    inc l                                         ; $75f8: $2c
    ld b, e                                       ; $75f9: $43
    cp l                                          ; $75fa: $bd
    ld d, d                                       ; $75fb: $52
    ld [hl], e                                    ; $75fc: $73
    ld d, c                                       ; $75fd: $51
    ret z                                         ; $75fe: $c8

    ld a, l                                       ; $75ff: $7d
    ld e, [hl]                                    ; $7600: $5e
    call nc, $5a1c                                ; $7601: $d4 $1c $5a
    add $d0                                       ; $7604: $c6 $d0
    dec de                                        ; $7606: $1b
    cp a                                          ; $7607: $bf
    ld hl, sp-$22                                 ; $7608: $f8 $de
    dec d                                         ; $760a: $15
    ld h, l                                       ; $760b: $65
    jr nz, jr_060_75d3                            ; $760c: $20 $c5

    ld [hl-], a                                   ; $760e: $32
    ld a, [c]                                     ; $760f: $f2
    and a                                         ; $7610: $a7
    or d                                          ; $7611: $b2
    xor h                                         ; $7612: $ac
    push de                                       ; $7613: $d5
    ld e, h                                       ; $7614: $5c
    inc bc                                        ; $7615: $03
    ld a, [de]                                    ; $7616: $1a
    dec e                                         ; $7617: $1d
    ld [bc], a                                    ; $7618: $02
    ld e, e                                       ; $7619: $5b
    sbc c                                         ; $761a: $99
    ld l, c                                       ; $761b: $69
    inc hl                                        ; $761c: $23
    ld h, e                                       ; $761d: $63
    xor b                                         ; $761e: $a8
    ld b, e                                       ; $761f: $43
    ld a, l                                       ; $7620: $7d
    ld sp, $c5f4                                  ; $7621: $31 $f4 $c5
    sub h                                         ; $7624: $94
    db $f4                                        ; $7625: $f4
    ld l, d                                       ; $7626: $6a
    ld [hl], e                                    ; $7627: $73
    and h                                         ; $7628: $a4
    and l                                         ; $7629: $a5
    ld l, d                                       ; $762a: $6a
    and h                                         ; $762b: $a4
    ld b, [hl]                                    ; $762c: $46
    ld a, d                                       ; $762d: $7a
    rst $00                                       ; $762e: $c7
    ei                                            ; $762f: $fb
    dec b                                         ; $7630: $05
    ld d, a                                       ; $7631: $57
    xor b                                         ; $7632: $a8
    xor a                                         ; $7633: $af
    and c                                         ; $7634: $a1
    db $ed                                        ; $7635: $ed
    ld c, d                                       ; $7636: $4a
    dec sp                                        ; $7637: $3b
    halt                                          ; $7638: $76
    and l                                         ; $7639: $a5
    ld c, l                                       ; $763a: $4d
    db $f4                                        ; $763b: $f4
    sub c                                         ; $763c: $91
    ccf                                           ; $763d: $3f
    add a                                         ; $763e: $87
    ld a, [$909e]                                 ; $763f: $fa $9e $90
    and $21                                       ; $7642: $e6 $21
    sub h                                         ; $7644: $94
    ld [hl], l                                    ; $7645: $75
    adc d                                         ; $7646: $8a
    inc d                                         ; $7647: $14
    ld c, a                                       ; $7648: $4f
    add d                                         ; $7649: $82
    jp c, Jump_060_5551                           ; $764a: $da $51 $55

    xor b                                         ; $764d: $a8
    ld de, $7d1f                                  ; $764e: $11 $1f $7d
    rst $28                                       ; $7651: $ef
    jp nc, $a32f                                  ; $7652: $d2 $2f $a3

    cp e                                          ; $7655: $bb
    xor h                                         ; $7656: $ac
    ld [hl], $d7                                  ; $7657: $36 $d7
    add sp, $10                                   ; $7659: $e8 $10
    ld a, e                                       ; $765b: $7b
    ld d, c                                       ; $765c: $51
    jp nz, $90a2                                  ; $765d: $c2 $a2 $90

    ld b, e                                       ; $7660: $43
    res 4, d                                      ; $7661: $cb $a2
    sub b                                         ; $7663: $90
    adc l                                         ; $7664: $8d
    cpl                                           ; $7665: $2f
    add sp, $5e                                   ; $7666: $e8 $5e
    ld a, l                                       ; $7668: $7d
    adc $0b                                       ; $7669: $ce $0b
    db $ed                                        ; $766b: $ed
    ccf                                           ; $766c: $3f
    add a                                         ; $766d: $87
    sub [hl]                                      ; $766e: $96
    ld [hl], l                                    ; $766f: $75
    add sp, -$23                                  ; $7670: $e8 $dd
    adc e                                         ; $7672: $8b
    xor b                                         ; $7673: $a8
    ld e, c                                       ; $7674: $59
    reti                                          ; $7675: $d9


    call $eeac                                    ; $7676: $cd $ac $ee
    adc [hl]                                      ; $7679: $8e
    and a                                         ; $767a: $a7
    and b                                         ; $767b: $a0
    inc d                                         ; $767c: $14
    di                                            ; $767d: $f3
    inc e                                         ; $767e: $1c
    or c                                          ; $767f: $b1
    ld [hl], e                                    ; $7680: $73
    xor l                                         ; $7681: $ad
    and $1a                                       ; $7682: $e6 $1a
    ret nc                                        ; $7684: $d0

    add sp, $10                                   ; $7685: $e8 $10
    ret c                                         ; $7687: $d8

    jp z, $ce7c                                   ; $7688: $ca $7c $ce

    dec bc                                        ; $768b: $0b
    rlca                                          ; $768c: $07
    ld a, $6d                                     ; $768d: $3e $6d
    ld l, b                                       ; $768f: $68
    ld e, c                                       ; $7690: $59
    add a                                         ; $7691: $87
    sbc $bd                                       ; $7692: $de $bd
    ei                                            ; $7694: $fb
    cp [hl]                                       ; $7695: $be
    ld b, a                                       ; $7696: $47
    dec h                                         ; $7697: $25
    ld l, c                                       ; $7698: $69
    and e                                         ; $7699: $a3
    ld a, a                                       ; $769a: $7f
    jp c, $3cd0                                   ; $769b: $da $d0 $3c

    ld a, [c]                                     ; $769e: $f2
    rst $20                                       ; $769f: $e7
    add sp, $2e                                   ; $76a0: $e8 $2e
    rst $30                                       ; $76a2: $f7
    adc $0f                                       ; $76a3: $ce $0f
    push bc                                       ; $76a5: $c5
    ld [hl-], a                                   ; $76a6: $32
    cp d                                          ; $76a7: $ba
    res 5, d                                      ; $76a8: $cb $aa
    ld a, [$8d7d]                                 ; $76aa: $fa $7d $8d
    call nc, $e78b                                ; $76ad: $d4 $8b $e7
    inc e                                         ; $76b0: $1c
    ld a, [hl-]                                   ; $76b1: $3a
    rlca                                          ; $76b2: $07
    ld c, d                                       ; $76b3: $4a
    ld sp, hl                                     ; $76b4: $f9
    sbc $79                                       ; $76b5: $de $79
    ld c, h                                       ; $76b7: $4c
    rst $10                                       ; $76b8: $d7
    or l                                          ; $76b9: $b5
    cp a                                          ; $76ba: $bf
    rlca                                          ; $76bb: $07
    ld e, h                                       ; $76bc: $5c
    ld b, [hl]                                    ; $76bd: $46
    cp $1c                                        ; $76be: $fe $1c
    ld e, d                                       ; $76c0: $5a
    ld b, $4a                                     ; $76c1: $06 $4a
    ld sp, hl                                     ; $76c3: $f9
    sbc $25                                       ; $76c4: $de $25
    ld c, d                                       ; $76c6: $4a
    ld a, c                                       ; $76c7: $79
    dec e                                         ; $76c8: $1d
    adc d                                         ; $76c9: $8a
    daa                                           ; $76ca: $27
    ld a, [hl-]                                   ; $76cb: $3a
    ld l, l                                       ; $76cc: $6d
    jr nc, jr_060_7701                            ; $76cd: $30 $32

    halt                                          ; $76cf: $76
    ld a, [c]                                     ; $76d0: $f2
    and d                                         ; $76d1: $a2
    rst $18                                       ; $76d2: $df
    pop af                                        ; $76d3: $f1
    ld e, [hl]                                    ; $76d4: $5e
    ld a, e                                       ; $76d5: $7b
    inc e                                         ; $76d6: $1c
    ld [hl], d                                    ; $76d7: $72
    ld [$d0cb], a                                 ; $76d8: $ea $cb $d0
    or d                                          ; $76db: $b2
    sbc b                                         ; $76dc: $98
    sub d                                         ; $76dd: $92
    ld a, $67                                     ; $76de: $3e $67
    rlca                                          ; $76e0: $07
    sbc e                                         ; $76e1: $9b
    ld d, l                                       ; $76e2: $55
    ld a, c                                       ; $76e3: $79
    adc $a1                                       ; $76e4: $ce $a1
    ld a, c                                       ; $76e6: $79
    sub [hl]                                      ; $76e7: $96
    dec e                                         ; $76e8: $1d
    call nc, $e94b                                ; $76e9: $d4 $4b $e9
    adc $a1                                       ; $76ec: $ce $a1
    ld [hl], e                                    ; $76ee: $73
    adc l                                         ; $76ef: $8d
    call nc, Call_060_738b                        ; $76f0: $d4 $8b $73
    ld l, b                                       ; $76f3: $68
    cp c                                          ; $76f4: $b9
    rst $28                                       ; $76f5: $ef
    ei                                            ; $76f6: $fb
    dec b                                         ; $76f7: $05
    rlca                                          ; $76f8: $07
    ld e, h                                       ; $76f9: $5c
    ld b, [hl]                                    ; $76fa: $46
    cp $dc                                        ; $76fb: $fe $dc
    ld sp, hl                                     ; $76fd: $f9
    ld a, d                                       ; $76fe: $7a
    xor l                                         ; $76ff: $ad
    ld a, [hl]                                    ; $7700: $7e

jr_060_7701:
    cp [hl]                                       ; $7701: $be
    ld h, b                                       ; $7702: $60
    dec a                                         ; $7703: $3d
    ld l, $0a                                     ; $7704: $2e $0a
    reti                                          ; $7706: $d9


    ld hl, sp-$7e                                 ; $7707: $f8 $82
    xor $d5                                       ; $7709: $ee $d5
    ld [hl], d                                    ; $770b: $72
    rst $28                                       ; $770c: $ef
    sub b                                         ; $770d: $90
    ld d, b                                       ; $770e: $50
    inc hl                                        ; $770f: $23
    or $bd                                        ; $7710: $f6 $bd
    dec hl                                        ; $7712: $2b
    inc sp                                        ; $7713: $33
    ld b, h                                       ; $7714: $44
    xor [hl]                                      ; $7715: $ae
    dec [hl]                                      ; $7716: $35
    db $e4                                        ; $7717: $e4
    xor [hl]                                      ; $7718: $ae
    jp nc, $d321                                  ; $7719: $d2 $21 $d3

    cp l                                          ; $771c: $bd
    xor a                                         ; $771d: $af
    ld e, d                                       ; $771e: $5a
    sub b                                         ; $771f: $90
    cp l                                          ; $7720: $bd
    rlca                                          ; $7721: $07
    jp z, $b47e                                   ; $7722: $ca $7e $b4

    jp z, Jump_060_45c6                           ; $7725: $ca $c6 $45

    ld hl, $79f7                                  ; $7728: $21 $f7 $79
    ld de, $7a08                                  ; $772b: $11 $08 $7a
    sub [hl]                                      ; $772e: $96
    dec a                                         ; $772f: $3d
    ld bc, $ae1b                                  ; $7730: $01 $1b $ae
    ld sp, $8b25                                  ; $7733: $31 $25 $8b
    ld a, e                                       ; $7736: $7b
    push af                                       ; $7737: $f5
    cp l                                          ; $7738: $bd
    or $9f                                        ; $7739: $f6 $9f
    ld [$a5de], a                                 ; $773b: $ea $de $a5
    ld e, a                                       ; $773e: $5f
    add [hl]                                      ; $773f: $86
    ld a, [$3a48]                                 ; $7740: $fa $48 $3a
    and l                                         ; $7743: $a5
    or a                                          ; $7744: $b7
    cp h                                          ; $7745: $bc
    rlca                                          ; $7746: $07
    jp z, $2f39                                   ; $7747: $ca $39 $2f

    rst $10                                       ; $774a: $d7
    ld d, c                                       ; $774b: $51
    ld [hl], d                                    ; $774c: $72
    ld d, c                                       ; $774d: $51
    ret z                                         ; $774e: $c8

    ld a, [bc]                                    ; $774f: $0a
    add l                                         ; $7750: $85
    and c                                         ; $7751: $a1
    inc c                                         ; $7752: $0c
    and [hl]                                      ; $7753: $a6
    ld a, [$d5af]                                 ; $7754: $fa $af $d5
    dec a                                         ; $7757: $3d
    xor b                                         ; $7758: $a8
    rst $18                                       ; $7759: $df
    call $428b                                    ; $775a: $cd $8b $42
    xor $a0                                       ; $775d: $ee $a0

jr_060_775f:
    ld e, [hl]                                    ; $775f: $5e
    ld c, d                                       ; $7760: $4a
    ld [hl], a                                    ; $7761: $77
    ld d, [hl]                                    ; $7762: $56
    sub $11                                       ; $7763: $d6 $11
    sbc h                                         ; $7765: $9c
    rst $30                                       ; $7766: $f7
    ld c, $b8                                     ; $7767: $0e $b8
    adc h                                         ; $7769: $8c
    db $fc                                        ; $776a: $fc
    cp c                                          ; $776b: $b9
    ld l, d                                       ; $776c: $6a
    sbc $95                                       ; $776d: $de $95
    halt                                          ; $776f: $76
    db $ec                                        ; $7770: $ec
    cp d                                          ; $7771: $ba
    jp nc, Jump_000_081c                          ; $7772: $d2 $1c $08

    ld l, $94                                     ; $7775: $2e $94
    jp hl                                         ; $7777: $e9


    cp b                                          ; $7778: $b8
    jr z, jr_060_775f                             ; $7779: $28 $e4

    ld b, h                                       ; $777b: $44
    db $d3                                        ; $777c: $d3
    and c                                         ; $777d: $a1
    call c, $972f                                 ; $777e: $dc $2f $97
    add hl, de                                    ; $7781: $19
    sbc l                                         ; $7782: $9d
    ld b, e                                       ; $7783: $43
    ld a, l                                       ; $7784: $7d
    adc [hl]                                      ; $7785: $8e
    ret c                                         ; $7786: $d8

    cp c                                          ; $7787: $b9
    ld c, [hl]                                    ; $7788: $4e
    xor c                                         ; $7789: $a9
    xor [hl]                                      ; $778a: $ae
    inc e                                         ; $778b: $1c
    and d                                         ; $778c: $a2
    ld [hl], e                                    ; $778d: $73
    ld e, [hl]                                    ; $778e: $5e
    db $ed                                        ; $778f: $ed
    ld [hl], c                                    ; $7790: $71
    ret z                                         ; $7791: $c8

    add hl, sp                                    ; $7792: $39
    rst $10                                       ; $7793: $d7
    ld [$42c5], sp                                ; $7794: $08 $c5 $42
    db $db                                        ; $7797: $db
    sub l                                         ; $7798: $95
    halt                                          ; $7799: $76
    db $ec                                        ; $779a: $ec
    ld a, d                                       ; $779b: $7a
    adc $0b                                       ; $779c: $ce $0b
    ld l, l                                       ; $779e: $6d
    and $39                                       ; $779f: $e6 $39
    ld d, a                                       ; $77a1: $57
    sbc e                                         ; $77a2: $9b
    ld d, e                                       ; $77a3: $53
    ld b, [hl]                                    ; $77a4: $46
    ld [hl], a                                    ; $77a5: $77
    jr z, @-$42                                   ; $77a6: $28 $bc

    rst $08                                       ; $77a8: $cf
    db $eb                                        ; $77a9: $eb
    sub h                                         ; $77aa: $94
    ld [$577b], a                                 ; $77ab: $ea $7b $57
    ld h, $35                                     ; $77ae: $26 $35
    ld e, [hl]                                    ; $77b0: $5e
    rlca                                          ; $77b1: $07
    db $e4                                        ; $77b2: $e4
    ld e, l                                       ; $77b3: $5d
    ld [hl], e                                    ; $77b4: $73
    db $dd                                        ; $77b5: $dd
    ld h, b                                       ; $77b6: $60
    sub l                                         ; $77b7: $95
    adc l                                         ; $77b8: $8d
    and $fb                                       ; $77b9: $e6 $fb
    dec b                                         ; $77bb: $05
    add a                                         ; $77bc: $87
    sbc d                                         ; $77bd: $9a
    ld hl, sp+$65                                 ; $77be: $f8 $65
    db $ed                                        ; $77c0: $ed
    ccf                                           ; $77c1: $3f
    ld d, e                                       ; $77c2: $53
    ld b, e                                       ; $77c3: $43
    sbc e                                         ; $77c4: $9b
    ld d, b                                       ; $77c5: $50
    ld a, [hl+]                                   ; $77c6: $2a
    ld e, e                                       ; $77c7: $5b
    ld d, [hl]                                    ; $77c8: $56
    sbc e                                         ; $77c9: $9b
    dec hl                                        ; $77ca: $2b
    ld bc, $c357                                  ; $77cb: $01 $57 $c3
    inc sp                                        ; $77ce: $33
    pop de                                        ; $77cf: $d1
    call c, $d72f                                 ; $77d0: $dc $2f $d7
    ld a, h                                       ; $77d3: $7c
    ld [hl], l                                    ; $77d4: $75
    xor a                                         ; $77d5: $af
    db $fd                                        ; $77d6: $fd
    and a                                         ; $77d7: $a7
    jp c, $870b                                   ; $77d8: $da $0b $87

    jp nz, $fab3                                  ; $77db: $c2 $b3 $fa

    dec bc                                        ; $77de: $0b
    db $d3                                        ; $77df: $d3
    halt                                          ; $77e0: $76
    and h                                         ; $77e1: $a4
    ld d, b                                       ; $77e2: $50
    ld a, [hl+]                                   ; $77e3: $2a

jr_060_77e4:
    ld e, e                                       ; $77e4: $5b
    adc [hl]                                      ; $77e5: $8e
    cp h                                          ; $77e6: $bc
    ld e, a                                       ; $77e7: $5f
    db $ed                                        ; $77e8: $ed
    and [hl]                                      ; $77e9: $a6
    db $d3                                        ; $77ea: $d3
    sub $fe                                       ; $77eb: $d6 $fe
    inc sp                                        ; $77ed: $33
    dec [hl]                                      ; $77ee: $35
    rst $30                                       ; $77ef: $f7
    jp c, Jump_000_0e7f                           ; $77f0: $da $7f $0e

    push af                                       ; $77f3: $f5
    and c                                         ; $77f4: $a1
    ld a, c                                       ; $77f5: $79
    dec c                                         ; $77f6: $0d
    ld h, e                                       ; $77f7: $63
    ld a, [$179c]                                 ; $77f8: $fa $9c $17
    rlca                                          ; $77fb: $07
    cp $bd                                        ; $77fc: $fe $bd
    ld b, e                                       ; $77fe: $43
    ld b, d                                       ; $77ff: $42
    adc l                                         ; $7800: $8d
    ld hl, sp-$22                                 ; $7801: $f8 $de
    ld b, c                                       ; $7803: $41
    bit 0, b                                      ; $7804: $cb $40
    add hl, hl                                    ; $7806: $29
    adc a                                         ; $7807: $8f
    ld [hl], h                                    ; $7808: $74
    rst $20                                       ; $7809: $e7
    sub l                                         ; $780a: $95
    add b                                         ; $780b: $80
    ld a, h                                       ; $780c: $7c
    cp a                                          ; $780d: $bf
    rst $20                                       ; $780e: $e7
    sub c                                         ; $780f: $91
    or h                                          ; $7810: $b4
    and c                                         ; $7811: $a1
    ld a, c                                       ; $7812: $79
    ld de, $bbb5                                  ; $7813: $11 $b5 $bb
    xor [hl]                                      ; $7816: $ae
    ld h, c                                       ; $7817: $61
    ld c, h                                       ; $7818: $4c
    rst $18                                       ; $7819: $df
    dec sp                                        ; $781a: $3b
    ldh [$32], a                                  ; $781b: $e0 $32
    adc $90                                       ; $781d: $ce $90
    dec bc                                        ; $781f: $0b
    and l                                         ; $7820: $a5
    ld [hl], $69                                  ; $7821: $36 $69
    ei                                            ; $7823: $fb
    inc a                                         ; $7824: $3c
    cp d                                          ; $7825: $ba
    set 2, h                                      ; $7826: $cb $d4
    sub a                                         ; $7828: $97
    sub c                                         ; $7829: $91
    ld a, d                                       ; $782a: $7a
    ld d, l                                       ; $782b: $55
    ld e, $5a                                     ; $782c: $1e $5a
    call nz, $b86b                                ; $782e: $c4 $6b $b8
    add $94                                       ; $7831: $c6 $94
    inc l                                         ; $7833: $2c
    xor $d5                                       ; $7834: $ee $d5
    rst $30                                       ; $7836: $f7
    dec bc                                        ; $7837: $0b
    rlca                                          ; $7838: $07
    ld e, h                                       ; $7839: $5c
    ld b, [hl]                                    ; $783a: $46
    cp $5c                                        ; $783b: $fe $5c
    and h                                         ; $783d: $a4
    dec bc                                        ; $783e: $0b
    sbc d                                         ; $783f: $9a
    rst $30                                       ; $7840: $f7
    inc b                                         ; $7841: $04
    ld l, h                                       ; $7842: $6c
    cp b                                          ; $7843: $b8
    add $94                                       ; $7844: $c6 $94
    inc a                                         ; $7846: $3c
    xor [hl]                                      ; $7847: $ae
    cp b                                          ; $7848: $b8
    ld d, a                                       ; $7849: $57
    rst $10                                       ; $784a: $d7
    ld b, [hl]                                    ; $784b: $46
    jr z, jr_060_77e4                             ; $784c: $28 $96

    ei                                            ; $784e: $fb
    dec b                                         ; $784f: $05
    db $ed                                        ; $7850: $ed
    ld [hl], c                                    ; $7851: $71
    ret z                                         ; $7852: $c8

    pop bc                                        ; $7853: $c1
    ld a, [hl]                                    ; $7854: $7e
    adc a                                         ; $7855: $8f
    sbc l                                         ; $7856: $9d
    ld l, b                                       ; $7857: $68
    ld e, c                                       ; $7858: $59
    db $f4                                        ; $7859: $f4
    dec b                                         ; $785a: $05
    ld a, c                                       ; $785b: $79
    xor b                                         ; $785c: $a8
    rrca                                          ; $785d: $0f
    dec l                                         ; $785e: $2d
    rst $20                                       ; $785f: $e7
    cp h                                          ; $7860: $bc
    ld d, a                                       ; $7861: $57
    jp c, $ebb1                                   ; $7862: $da $b1 $eb

    ret z                                         ; $7865: $c8

    rra                                           ; $7866: $1f
    and e                                         ; $7867: $a3
    ld d, a                                       ; $7868: $57
    db $fc                                        ; $7869: $fc
    ldh a, [$d0]                                  ; $786a: $f0 $d0
    ld [hl-], a                                   ; $786c: $32
    ld e, b                                       ; $786d: $58
    rrca                                          ; $786e: $0f
    ld [$f377], a                                 ; $786f: $ea $77 $f3
    and d                                         ; $7872: $a2
    sub b                                         ; $7873: $90
    dec sp                                        ; $7874: $3b
    xor b                                         ; $7875: $a8
    sub a                                         ; $7876: $97
    jp nc, $959d                                  ; $7877: $d2 $9d $95

    ld [hl], l                                    ; $787a: $75
    inc b                                         ; $787b: $04
    rst $20                                       ; $787c: $e7
    db $fd                                        ; $787d: $fd
    ld [bc], a                                    ; $787e: $02
    rlca                                          ; $787f: $07
    ld e, h                                       ; $7880: $5c
    sub $d0                                       ; $7881: $d6 $d0
    inc de                                        ; $7883: $13
    dec a                                         ; $7884: $3d
    ld a, [c]                                     ; $7885: $f2
    rst $00                                       ; $7886: $c7
    ld e, [hl]                                    ; $7887: $5e
    inc c                                         ; $7888: $0c
    ld e, b                                       ; $7889: $58
    ld a, c                                       ; $788a: $79
    sbc a                                         ; $788b: $9f
    add a                                         ; $788c: $87

jr_060_788d:
    and $c5                                       ; $788d: $e6 $c5
    ccf                                           ; $788f: $3f
    ld [hl], a                                    ; $7890: $77
    and l                                         ; $7891: $a5
    dec e                                         ; $7892: $1d
    cp e                                          ; $7893: $bb
    sbc $3b                                       ; $7894: $de $3b
    jp hl                                         ; $7896: $e9


    call nc, $d0a9                                ; $7897: $d4 $a9 $d0
    cp e                                          ; $789a: $bb
    dec bc                                        ; $789b: $0b
    cp b                                          ; $789c: $b8
    dec d                                         ; $789d: $15
    ld b, b                                       ; $789e: $40
    ld a, b                                       ; $789f: $78
    inc c                                         ; $78a0: $0c

Call_060_78a1:
    ld a, l                                       ; $78a1: $7d
    rla                                           ; $78a2: $17
    and a                                         ; $78a3: $a7
    ld h, $8a                                     ; $78a4: $26 $8a
    ld b, b                                       ; $78a6: $40
    jr nc, jr_060_788d                            ; $78a7: $30 $e4

    and d                                         ; $78a9: $a2
    sub b                                         ; $78aa: $90
    ld [$7d43], sp                                ; $78ab: $08 $43 $7d
    pop de                                        ; $78ae: $d1
    rla                                           ; $78af: $17
    db $e4                                        ; $78b0: $e4
    add l                                         ; $78b1: $85
    or d                                          ; $78b2: $b2
    rra                                           ; $78b3: $1f
    ld [hl], l                                    ; $78b4: $75
    rst $00                                       ; $78b5: $c7
    ld c, [hl]                                    ; $78b6: $4e
    and e                                         ; $78b7: $a3
    ld d, a                                       ; $78b8: $57
    sbc c                                         ; $78b9: $99
    sbc $ec                                       ; $78ba: $de $ec
    ld d, $5e                                     ; $78bc: $16 $5e
    inc bc                                        ; $78be: $03
    ld a, [de]                                    ; $78bf: $1a
    dec e                                         ; $78c0: $1d
    ld [bc], a                                    ; $78c1: $02
    ld e, e                                       ; $78c2: $5b
    push de                                       ; $78c3: $d5
    rst $20                                       ; $78c4: $e7
    or e                                          ; $78c5: $b3
    inc de                                        ; $78c6: $13
    ld a, [hl]                                    ; $78c7: $7e
    rst $30                                       ; $78c8: $f7
    cp l                                          ; $78c9: $bd
    adc e                                         ; $78ca: $8b
    sbc e                                         ; $78cb: $9b
    ld h, e                                       ; $78cc: $63
    add sp, -$73                                  ; $78cd: $e8 $8d
    ld e, a                                       ; $78cf: $5f
    inc a                                         ; $78d0: $3c
    add [hl]                                      ; $78d1: $86
    ld a, $86                                     ; $78d2: $3e $86
    rst $00                                       ; $78d4: $c7
    ld [hl-], a                                   ; $78d5: $32
    ret c                                         ; $78d6: $d8

    ld b, l                                       ; $78d7: $45
    ld hl, $fc6b                                  ; $78d8: $21 $6b $fc
    ld [hl], e                                    ; $78db: $73
    ld c, a                                       ; $78dc: $4f
    ret nz                                        ; $78dd: $c0

    dec e                                         ; $78de: $1d
    and h                                         ; $78df: $a4
    and [hl]                                      ; $78e0: $a6
    ld [hl-], a                                   ; $78e1: $32
    rst $10                                       ; $78e2: $d7
    ld e, l                                       ; $78e3: $5d
    sbc d                                         ; $78e4: $9a
    sub h                                         ; $78e5: $94
    adc b                                         ; $78e6: $88
    sbc l                                         ; $78e7: $9d
    dec bc                                        ; $78e8: $0b
    ld h, l                                       ; $78e9: $65
    sub c                                         ; $78ea: $91
    sbc $31                                       ; $78eb: $de $31
    and d                                         ; $78ed: $a2
    and $10                                       ; $78ee: $e6 $10
    ld h, h                                       ; $78f0: $64
    and c                                         ; $78f1: $a1
    ld d, l                                       ; $78f2: $55

Jump_060_78f3:
    ld a, [hl]                                    ; $78f3: $7e
    db $ec                                        ; $78f4: $ec
    ei                                            ; $78f5: $fb
    dec b                                         ; $78f6: $05
    db $ed                                        ; $78f7: $ed
    ccf                                           ; $78f8: $3f
    add a                                         ; $78f9: $87
    ld a, [$bcd0]                                 ; $78fa: $fa $d0 $bc
    add [hl]                                      ; $78fd: $86
    ld sp, $5b4d                                  ; $78fe: $31 $4d $5b

jr_060_7901:
    ei                                            ; $7901: $fb
    rst $08                                       ; $7902: $cf
    call nc, $f39c                                ; $7903: $d4 $9c $f3
    ld [bc], a                                    ; $7906: $02
    rlca                                          ; $7907: $07
    ld a, $6d                                     ; $7908: $3e $6d
    ld [hl], h                                    ; $790a: $74
    sub a                                         ; $790b: $97
    ld b, l                                       ; $790c: $45
    ld e, a                                       ; $790d: $5f
    sub b                                         ; $790e: $90
    rst $30                                       ; $790f: $f7
    inc b                                         ; $7910: $04
    ld l, h                                       ; $7911: $6c
    cp b                                          ; $7912: $b8
    add $94                                       ; $7913: $c6 $94
    inc l                                         ; $7915: $2c
    xor $d5                                       ; $7916: $ee $d5
    rst $00                                       ; $7918: $c7
    ld d, l                                       ; $7919: $55
    sub b                                         ; $791a: $90
    jp z, $aba9                                   ; $791b: $ca $a9 $ab

    ld [$df14], a                                 ; $791e: $ea $14 $df
    cpl                                           ; $7921: $2f
    rla                                           ; $7922: $17
    rlca                                          ; $7923: $07
    db $e4                                        ; $7924: $e4
    xor c                                         ; $7925: $a9
    cp $d3                                        ; $7926: $fe $d3
    ld c, h                                       ; $7928: $4c
    ld e, e                                       ; $7929: $5b
    ei                                            ; $792a: $fb
    rst $08                                       ; $792b: $cf
    call nc, Call_000_3bdc                        ; $792c: $d4 $dc $3b
    ld hl, sp-$0f                                 ; $792f: $f8 $f1
    ccf                                           ; $7931: $3f
    cp e                                          ; $7932: $bb
    ld [de], a                                    ; $7933: $12
    add h                                         ; $7934: $84
    xor b                                         ; $7935: $a8
    rst $10                                       ; $7936: $d7
    add sp, $10                                   ; $7937: $e8 $10
    dec sp                                        ; $7939: $3b
    ld d, a                                       ; $793a: $57
    ld a, [$45c7]                                 ; $793b: $fa $c7 $45
    ld hl, $79f7                                  ; $793e: $21 $f7 $79
    ld d, c                                       ; $7941: $51
    ld [hl], e                                    ; $7942: $73
    ld l, b                                       ; $7943: $68
    ld e, c                                       ; $7944: $59
    inc hl                                        ; $7945: $23
    sub h                                         ; $7946: $94
    ld sp, $c6f4                                  ; $7947: $31 $f4 $c6
    cpl                                           ; $794a: $2f
    ld e, [hl]                                    ; $794b: $5e
    xor e                                         ; $794c: $ab
    add hl, sp                                    ; $794d: $39
    ld d, d                                       ; $794e: $52
    db $d3                                        ; $794f: $d3

Call_060_7950:
    pop de                                        ; $7950: $d1
    ld [hl], d                                    ; $7951: $72
    cp a                                          ; $7952: $bf
    db $ed                                        ; $7953: $ed
    ccf                                           ; $7954: $3f
    ld d, e                                       ; $7955: $53
    and e                                         ; $7956: $a3
    ld a, l                                       ; $7957: $7d
    sub a                                         ; $7958: $97
    jr z, @-$19                                   ; $7959: $28 $e5

    dec a                                         ; $795b: $3d
    ld c, [hl]                                    ; $795c: $4e
    xor a                                         ; $795d: $af
    ld e, $57                                     ; $795e: $1e $57

jr_060_7960:
    adc a                                         ; $7960: $8f
    xor e                                         ; $7961: $ab
    ld b, d                                       ; $7962: $42
    adc l                                         ; $7963: $8d
    ret c                                         ; $7964: $d8

    ld b, d                                       ; $7965: $42
    ld e, e                                       ; $7966: $5b
    ld [hl], l                                    ; $7967: $75
    adc [hl]                                      ; $7968: $8e
    xor $72                                       ; $7969: $ee $72
    cp a                                          ; $796b: $bf
    rlca                                          ; $796c: $07
    ld e, h                                       ; $796d: $5c
    ld d, $7d                                     ; $796e: $16 $7d
    ld b, c                                       ; $7970: $41

jr_060_7971:
    ld e, $5a                                     ; $7971: $1e $5a
    sub [hl]                                      ; $7973: $96
    ld d, b                                       ; $7974: $50
    jr jr_060_7901                                ; $7975: $18 $8a

    rst $10                                       ; $7977: $d7
    ld [$8f65], sp                                ; $7978: $08 $65 $8f
    ld [hl], c                                    ; $797b: $71
    ld l, b                                       ; $797c: $68
    ld e, c                                       ; $797d: $59
    ld b, d                                       ; $797e: $42
    ld h, c                                       ; $797f: $61
    jr z, jr_060_7960                             ; $7980: $28 $de

    inc de                                        ; $7982: $13
    or b                                          ; $7983: $b0
    pop hl                                        ; $7984: $e1
    ld a, [de]                                    ; $7985: $1a
    ld d, e                                       ; $7986: $53
    or d                                          ; $7987: $b2
    cp b                                          ; $7988: $b8
    ld d, a                                       ; $7989: $57
    rst $28                                       ; $798a: $ef
    cp [hl]                                       ; $798b: $be
    rst $28                                       ; $798c: $ef
    add l                                         ; $798d: $85
    ld [hl-], a                                   ; $798e: $32
    cp d                                          ; $798f: $ba
    set 1, d                                      ; $7990: $cb $ca
    adc a                                         ; $7992: $8f
    add a                                         ; $7993: $87
    sub [hl]                                      ; $7994: $96
    ld sp, $c6f4                                  ; $7995: $31 $f4 $c6
    cpl                                           ; $7998: $2f
    ld e, $43                                     ; $7999: $1e $43
    ld e, a                                       ; $799b: $5f
    inc bc                                        ; $799c: $03
    ld a, [de]                                    ; $799d: $1a
    dec e                                         ; $799e: $1d
    ld [bc], a                                    ; $799f: $02
    ld e, e                                       ; $79a0: $5b
    sbc c                                         ; $79a1: $99
    rst $28                                       ; $79a2: $ef
    rla                                           ; $79a3: $17
    rla                                           ; $79a4: $17
    and l                                         ; $79a5: $a5
    sbc a                                         ; $79a6: $9f
    db $fc                                        ; $79a7: $fc
    push bc                                       ; $79a8: $c5
    add d                                         ; $79a9: $82
    ld e, $1c                                     ; $79aa: $1e $1c
    rlca                                          ; $79ac: $07
    rst $00                                       ; $79ad: $c7
    add c                                         ; $79ae: $81
    ld h, b                                       ; $79af: $60
    db $fd                                        ; $79b0: $fd
    ld e, h                                       ; $79b1: $5c
    ld l, c                                       ; $79b2: $69
    ld l, e                                       ; $79b3: $6b
    rst $38                                       ; $79b4: $ff
    sbc c                                         ; $79b5: $99
    ld a, [de]                                    ; $79b6: $1a
    jp c, $143a                                   ; $79b7: $da $3a $14

    adc a                                         ; $79ba: $8f
    adc h                                         ; $79bb: $8c
    ccf                                           ; $79bc: $3f
    adc [hl]                                      ; $79bd: $8e
    xor $b2                                       ; $79be: $ee $b2
    jr z, @+$66                                   ; $79c0: $28 $64

    ld l, h                                       ; $79c2: $6c
    ld h, c                                       ; $79c3: $61
    and e                                         ; $79c4: $a3
    rst $28                                       ; $79c5: $ef
    sbc l                                         ; $79c6: $9d
    ld a, b                                       ; $79c7: $78
    jp nz, $e854                                  ; $79c8: $c2 $54 $e8

    db $dd                                        ; $79cb: $dd
    dec b                                         ; $79cc: $05
    call c, $200a                                 ; $79cd: $dc $0a $20

jr_060_79d0:
    inc a                                         ; $79d0: $3c
    add [hl]                                      ; $79d1: $86
    cp [hl]                                       ; $79d2: $be
    adc e                                         ; $79d3: $8b
    ld d, e                                       ; $79d4: $53
    inc de                                        ; $79d5: $13
    ld b, l                                       ; $79d6: $45
    jr nz, @+$1a                                  ; $79d7: $20 $18

    ld a, [c]                                     ; $79d9: $f2
    ld a, [hl]                                    ; $79da: $7e
    ld bc, $5c07                                  ; $79db: $01 $07 $5c
    ld d, $7d                                     ; $79de: $16 $7d
    ld b, c                                       ; $79e0: $41
    ld e, $5a                                     ; $79e1: $1e $5a
    sub [hl]                                      ; $79e3: $96
    ld d, b                                       ; $79e4: $50
    jr jr_060_7971                                ; $79e5: $18 $8a

    rst $10                                       ; $79e7: $d7
    ld [$8f65], sp                                ; $79e8: $08 $65 $8f
    ld [hl], c                                    ; $79eb: $71
    ld l, b                                       ; $79ec: $68
    ld e, c                                       ; $79ed: $59
    ld b, d                                       ; $79ee: $42
    ld h, c                                       ; $79ef: $61
    jr z, jr_060_79d0                             ; $79f0: $28 $de

    inc de                                        ; $79f2: $13
    or b                                          ; $79f3: $b0
    pop hl                                        ; $79f4: $e1
    ld a, [de]                                    ; $79f5: $1a

Jump_060_79f6:
    ld d, e                                       ; $79f6: $53
    or d                                          ; $79f7: $b2
    cp b                                          ; $79f8: $b8
    ld d, a                                       ; $79f9: $57
    rst $18                                       ; $79fa: $df
    cpl                                           ; $79fb: $2f
    rla                                           ; $79fc: $17
    and l                                         ; $79fd: $a5
    sbc a                                         ; $79fe: $9f
    db $fc                                        ; $79ff: $fc
    push bc                                       ; $7a00: $c5
    add d                                         ; $7a01: $82
    ld e, $1c                                     ; $7a02: $1e $1c
    rlca                                          ; $7a04: $07
    rst $00                                       ; $7a05: $c7
    add c                                         ; $7a06: $81
    ld h, b                                       ; $7a07: $60

Jump_060_7a08:
    db $fd                                        ; $7a08: $fd
    ld e, h                                       ; $7a09: $5c
    ld l, c                                       ; $7a0a: $69
    ld l, e                                       ; $7a0b: $6b
    rst $38                                       ; $7a0c: $ff
    sbc c                                         ; $7a0d: $99
    ld a, [de]                                    ; $7a0e: $1a
    jp c, $143a                                   ; $7a0f: $da $3a $14

    adc a                                         ; $7a12: $8f
    adc h                                         ; $7a13: $8c
    ccf                                           ; $7a14: $3f
    adc [hl]                                      ; $7a15: $8e
    xor $b2                                       ; $7a16: $ee $b2
    jr z, jr_060_7a7e                             ; $7a18: $28 $64

    ld l, h                                       ; $7a1a: $6c
    ld h, c                                       ; $7a1b: $61
    and e                                         ; $7a1c: $a3
    rst $28                                       ; $7a1d: $ef
    sbc l                                         ; $7a1e: $9d
    ld a, b                                       ; $7a1f: $78
    jp nz, $e854                                  ; $7a20: $c2 $54 $e8

    db $dd                                        ; $7a23: $dd
    dec b                                         ; $7a24: $05
    call c, $200a                                 ; $7a25: $dc $0a $20
    inc a                                         ; $7a28: $3c
    add [hl]                                      ; $7a29: $86
    cp [hl]                                       ; $7a2a: $be
    adc e                                         ; $7a2b: $8b
    ld d, e                                       ; $7a2c: $53
    inc de                                        ; $7a2d: $13
    ld b, l                                       ; $7a2e: $45
    jr nz, jr_060_7a49                            ; $7a2f: $20 $18

    ld a, [c]                                     ; $7a31: $f2
    sbc $c5                                       ; $7a32: $de $c5
    db $10                                        ; $7a34: $10
    rst $28                                       ; $7a35: $ef
    add c                                         ; $7a36: $81
    or d                                          ; $7a37: $b2
    add $71                                       ; $7a38: $c6 $71
    adc l                                         ; $7a3a: $8d
    db $e3                                        ; $7a3b: $e3
    ld a, [de]                                    ; $7a3c: $1a
    and c                                         ; $7a3d: $a1
    ld e, b                                       ; $7a3e: $58
    ld d, $ca                                     ; $7a3f: $16 $ca
    ld l, d                                       ; $7a41: $6a
    ld [hl], e                                    ; $7a42: $73
    ld d, l                                       ; $7a43: $55
    db $fd                                        ; $7a44: $fd
    ld a, $ba                                     ; $7a45: $3e $ba
    res 7, d                                      ; $7a47: $cb $ba

jr_060_7a49:
    ld h, e                                       ; $7a49: $63
    and a                                         ; $7a4a: $a7
    add a                                         ; $7a4b: $87
    sub [hl]                                      ; $7a4c: $96
    ld sp, $c6f4                                  ; $7a4d: $31 $f4 $c6
    cpl                                           ; $7a50: $2f
    ld e, $43                                     ; $7a51: $1e $43
    rst $18                                       ; $7a53: $df
    di                                            ; $7a54: $f3
    pop af                                        ; $7a55: $f1
    ccf                                           ; $7a56: $3f
    cp e                                          ; $7a57: $bb
    ld [de], a                                    ; $7a58: $12
    add h                                         ; $7a59: $84
    xor b                                         ; $7a5a: $a8
    rst $28                                       ; $7a5b: $ef
    rla                                           ; $7a5c: $17
    db $ed                                        ; $7a5d: $ed
    adc $39                                       ; $7a5e: $ce $39
    add a                                         ; $7a60: $87
    sub [hl]                                      ; $7a61: $96
    ei                                            ; $7a62: $fb
    dec b                                         ; $7a63: $05
    db $ed                                        ; $7a64: $ed
    ld [hl], c                                    ; $7a65: $71
    ld c, b                                       ; $7a66: $48
    db $fc                                        ; $7a67: $fc
    or d                                          ; $7a68: $b2
    xor d                                         ; $7a69: $aa
    ld [de], a                                    ; $7a6a: $12
    ret nc                                        ; $7a6b: $d0

    add hl, sp                                    ; $7a6c: $39
    inc b                                         ; $7a6d: $04
    ld e, [hl]                                    ; $7a6e: $5e
    dec hl                                        ; $7a6f: $2b
    adc a                                         ; $7a70: $8f
    ld l, e                                       ; $7a71: $6b
    push hl                                       ; $7a72: $e5
    ld [hl], c                                    ; $7a73: $71
    xor l                                         ; $7a74: $ad
    inc c                                         ; $7a75: $0c
    ld [hl], h                                    ; $7a76: $74
    dec hl                                        ; $7a77: $2b
    ld e, [hl]                                    ; $7a78: $5e
    sub h                                         ; $7a79: $94
    ld a, [hl]                                    ; $7a7a: $7e
    ld l, b                                       ; $7a7b: $68
    ld l, e                                       ; $7a7c: $6b
    rst $38                                       ; $7a7d: $ff

jr_060_7a7e:
    sbc c                                         ; $7a7e: $99
    sbc d                                         ; $7a7f: $9a
    ld [hl], e                                    ; $7a80: $73
    ld e, [hl]                                    ; $7a81: $5e
    add a                                         ; $7a82: $87
    add h                                         ; $7a83: $84

jr_060_7a84:
    ld a, [de]                                    ; $7a84: $1a
    ld sp, $9f6d                                  ; $7a85: $31 $6d $9f
    jp hl                                         ; $7a88: $e9


    ld a, [$df7d]                                 ; $7a89: $fa $7d $df
    cpl                                           ; $7a8c: $2f
    ld l, l                                       ; $7a8d: $6d
    ld a, [$e39e]                                 ; $7a8e: $fa $9e $e3
    sbc [hl]                                      ; $7a91: $9e
    db $e3                                        ; $7a92: $e3
    sbc [hl]                                      ; $7a93: $9e
    and $48                                       ; $7a94: $e6 $48
    rst $30                                       ; $7a96: $f7
    xor $f4                                       ; $7a97: $ee $f4
    ld c, d                                       ; $7a99: $4a
    ld [hl], e                                    ; $7a9a: $73
    ld sp, $d3a0                                  ; $7a9b: $31 $a0 $d3
    ld a, e                                       ; $7a9e: $7b
    adc h                                         ; $7a9f: $8c
    xor e                                         ; $7aa0: $ab
    cp a                                          ; $7aa1: $bf
    ld e, b                                       ; $7aa2: $58
    ld l, b                                       ; $7aa3: $68
    ld l, e                                       ; $7aa4: $6b
    rst $38                                       ; $7aa5: $ff
    sbc c                                         ; $7aa6: $99
    sbc d                                         ; $7aa7: $9a
    ei                                            ; $7aa8: $fb
    dec b                                         ; $7aa9: $05
    ld l, l                                       ; $7aaa: $6d
    ld a, [$9fc8]                                 ; $7aab: $fa $c8 $9f
    adc e                                         ; $7aae: $8b
    ld b, d                                       ; $7aaf: $42
    ld d, [hl]                                    ; $7ab0: $56
    sub $64                                       ; $7ab1: $d6 $64
    sbc d                                         ; $7ab3: $9a
    rst $30                                       ; $7ab4: $f7
    nop                                           ; $7ab5: $00
    ld a, [c]                                     ; $7ab6: $f2
    ld h, b                                       ; $7ab7: $60
    cp d                                          ; $7ab8: $ba
    and b                                         ; $7ab9: $a0
    inc sp                                        ; $7aba: $33
    add [hl]                                      ; $7abb: $86
    ld a, [hl+]                                   ; $7abc: $2a
    jr nz, jr_060_7a84                            ; $7abd: $20 $c5

    and d                                         ; $7abf: $a2
    ld a, l                                       ; $7ac0: $7d
    ld l, l                                       ; $7ac1: $6d
    and $35                                       ; $7ac2: $e6 $35
    ld a, [hl-]                                   ; $7ac4: $3a
    call nz, $59ce                                ; $7ac5: $c4 $ce $59
    sub $a0                                       ; $7ac8: $d6 $a0
    and d                                         ; $7aca: $a2
    rst $10                                       ; $7acb: $d7
    ld l, d                                       ; $7acc: $6a
    xor $d4                                       ; $7acd: $ee $d4
    xor c                                         ; $7acf: $a9
    ret nc                                        ; $7ad0: $d0

    cp e                                          ; $7ad1: $bb
    dec bc                                        ; $7ad2: $0b
    cp b                                          ; $7ad3: $b8
    dec d                                         ; $7ad4: $15
    ld b, b                                       ; $7ad5: $40
    ld e, b                                       ; $7ad6: $58
    ei                                            ; $7ad7: $fb
    dec bc                                        ; $7ad8: $0b
    rst $30                                       ; $7ad9: $f7
    ld a, l                                       ; $7ada: $7d
    rrca                                          ; $7adb: $0f
    ld d, [hl]                                    ; $7adc: $56
    ei                                            ; $7add: $fb
    cpl                                           ; $7ade: $2f
    and $3d                                       ; $7adf: $e6 $3d
    xor $dd                                       ; $7ae1: $ee $dd
    rst $08                                       ; $7ae3: $cf
    ld h, d                                       ; $7ae4: $62
    add sp, -$58                                  ; $7ae5: $e8 $a8
    ld a, $b3                                     ; $7ae7: $3e $b3
    rla                                           ; $7ae9: $17
    jp z, $cfca                                   ; $7aea: $ca $ca $cf

    ld [de], a                                    ; $7aed: $12
    and b                                         ; $7aee: $a0
    dec sp                                        ; $7aef: $3b
    rlca                                          ; $7af0: $07
    dec sp                                        ; $7af1: $3b
    pop af                                        ; $7af2: $f1
    call z, Call_060_4f13                         ; $7af3: $cc $13 $4f
    ld e, h                                       ; $7af6: $5c
    db $fc                                        ; $7af7: $fc
    ld [hl], e                                    ; $7af8: $73
    ld sp, $5474                                  ; $7af9: $31 $74 $54
    sbc a                                         ; $7afc: $9f
    reti                                          ; $7afd: $d9


    ld [c], a                                     ; $7afe: $e2
    push bc                                       ; $7aff: $c5
    add $7d                                       ; $7b00: $c6 $7d
    ld e, [hl]                                    ; $7b02: $5e
    call nc, $885c                                ; $7b03: $d4 $5c $88
    sbc l                                         ; $7b06: $9d
    db $fc                                        ; $7b07: $fc
    adc e                                         ; $7b08: $8b
    ld a, c                                       ; $7b09: $79
    ld hl, sp-$11                                 ; $7b0a: $f8 $ef
    ei                                            ; $7b0c: $fb
    ld a, [hl]                                    ; $7b0d: $7e
    ld bc, $5c07                                  ; $7b0e: $01 $07 $5c
    ld b, [hl]                                    ; $7b11: $46
    ld [hl], $1b                                  ; $7b12: $36 $1b
    adc $7d                                       ; $7b14: $ce $7d
    ld e, $ea                                     ; $7b16: $1e $ea
    xor e                                         ; $7b18: $ab
    inc d                                         ; $7b19: $14
    ld h, [hl]                                    ; $7b1a: $66
    rst $20                                       ; $7b1b: $e7
    ld e, d                                       ; $7b1c: $5a
    add hl, bc                                    ; $7b1d: $09
    ld [hl], l                                    ; $7b1e: $75
    xor l                                         ; $7b1f: $ad
    and $1a                                       ; $7b20: $e6 $1a
    ld d, h                                       ; $7b22: $54
    or h                                          ; $7b23: $b4
    inc c                                         ; $7b24: $0c
    sbc l                                         ; $7b25: $9d
    ld l, e                                       ; $7b26: $6b
    cp b                                          ; $7b27: $b8
    ld d, e                                       ; $7b28: $53
    dec de                                        ; $7b29: $1b
    adc $55                                       ; $7b2a: $ce $55

Call_060_7b2c:
Jump_060_7b2c:
    jr z, @+$65                                   ; $7b2c: $28 $63

    add sp, $3b                                   ; $7b2e: $e8 $3b
    ld [hl], l                                    ; $7b30: $75
    ld a, [hl+]                                   ; $7b31: $2a
    db $f4                                        ; $7b32: $f4
    xor $02                                       ; $7b33: $ee $02
    ld l, [hl]                                    ; $7b35: $6e
    dec b                                         ; $7b36: $05
    db $10                                        ; $7b37: $10
    ld e, [hl]                                    ; $7b38: $5e
    inc d                                         ; $7b39: $14
    ld [de], a                                    ; $7b3a: $12
    ld h, c                                       ; $7b3b: $61
    xor b                                         ; $7b3c: $a8
    cpl                                           ; $7b3d: $2f
    ld a, [bc]                                    ; $7b3e: $0a
    ld e, c                                       ; $7b3f: $59
    ld e, c                                       ; $7b40: $59
    sub e                                         ; $7b41: $93
    ld l, c                                       ; $7b42: $69
    db $f4                                        ; $7b43: $f4
    ld e, $90                                     ; $7b44: $1e $90
    jp hl                                         ; $7b46: $e9


    add d                                         ; $7b47: $82
    adc $18                                       ; $7b48: $ce $18
    xor d                                         ; $7b4a: $aa
    add b                                         ; $7b4b: $80
    inc d                                         ; $7b4c: $14
    jp c, Jump_000_0cae                           ; $7b4d: $da $ae $0c

    call z, $ed4e                                 ; $7b50: $cc $4e $ed
    cpl                                           ; $7b53: $2f
    rla                                           ; $7b54: $17
    jp z, Jump_060_541a                           ; $7b55: $ca $1a $54

    db $f4                                        ; $7b58: $f4
    ld e, d                                       ; $7b59: $5a
    call Call_000_3a9d                            ; $7b5a: $cd $9d $3a

jr_060_7b5d:
    dec d                                         ; $7b5d: $15
    ld a, d                                       ; $7b5e: $7a
    ld [hl], a                                    ; $7b5f: $77
    ld bc, $02b7                                  ; $7b60: $01 $b7 $02
    ld [$0a2f], sp                                ; $7b63: $08 $2f $0a
    cp c                                          ; $7b66: $b9
    rst $08                                       ; $7b67: $cf
    db $eb                                        ; $7b68: $eb
    ld e, a                                       ; $7b69: $5f
    ret nc                                        ; $7b6a: $d0

    ld l, e                                       ; $7b6b: $6b
    dec [hl]                                      ; $7b6c: $35
    rst $30                                       ; $7b6d: $f7
    add b                                         ; $7b6e: $80
    xor h                                         ; $7b6f: $ac
    pop af                                        ; $7b70: $f1
    push bc                                       ; $7b71: $c5
    jp c, $875f                                   ; $7b72: $da $5f $87

    and b                                         ; $7b75: $a0
    xor h                                         ; $7b76: $ac
    inc b                                         ; $7b77: $04
    call nz, $c65f                                ; $7b78: $c4 $5f $c6
    ret nc                                        ; $7b7b: $d0

    rst $10                                       ; $7b7c: $d7
    cp $33                                        ; $7b7d: $fe $33
    dec [hl]                                      ; $7b7f: $35
    or h                                          ; $7b80: $b4
    db $fd                                        ; $7b81: $fd
    sbc $bd                                       ; $7b82: $de $bd
    ld a, [$c79f]                                 ; $7b84: $fa $9f $c7
    ld [hl], d                                    ; $7b87: $72
    rst $28                                       ; $7b88: $ef
    db $10                                        ; $7b89: $10
    sub h                                         ; $7b8a: $94
    ld b, l                                       ; $7b8b: $45
    ccf                                           ; $7b8c: $3f
    ld h, e                                       ; $7b8d: $63
    rst $30                                       ; $7b8e: $f7
    ld sp, $9df4                                  ; $7b8f: $31 $f4 $9d
    ld a, [hl-]                                   ; $7b92: $3a
    dec d                                         ; $7b93: $15

Call_060_7b94:
    ld a, d                                       ; $7b94: $7a
    ld [hl], a                                    ; $7b95: $77
    ld bc, $02b7                                  ; $7b96: $01 $b7 $02
    ld [$0a2f], sp                                ; $7b99: $08 $2f $0a
    cp c                                          ; $7b9c: $b9
    rst $08                                       ; $7b9d: $cf
    adc e                                         ; $7b9e: $8b
    ld b, d                                       ; $7b9f: $42
    ld d, [hl]                                    ; $7ba0: $56
    sub $64                                       ; $7ba1: $d6 $64
    ld a, d                                       ; $7ba3: $7a
    or b                                          ; $7ba4: $b0
    rlca                                          ; $7ba5: $07
    ld h, h                                       ; $7ba6: $64
    inc c                                         ; $7ba7: $0c
    adc a                                         ; $7ba8: $8f
    ld l, c                                       ; $7ba9: $69
    ld l, e                                       ; $7baa: $6b
    rst $38                                       ; $7bab: $ff
    sbc c                                         ; $7bac: $99
    sbc d                                         ; $7bad: $9a
    ei                                            ; $7bae: $fb
    dec b                                         ; $7baf: $05
    ld l, l                                       ; $7bb0: $6d
    ld a, [$73aa]                                 ; $7bb1: $fa $aa $73
    ld b, l                                       ; $7bb4: $45
    xor a                                         ; $7bb5: $af
    ld l, h                                       ; $7bb6: $6c
    sbc c                                         ; $7bb7: $99
    adc [hl]                                      ; $7bb8: $8e
    or h                                          ; $7bb9: $b4
    or l                                          ; $7bba: $b5
    rst $38                                       ; $7bbb: $ff
    ld c, h                                       ; $7bbc: $4c
    call Call_000_02fd                            ; $7bbd: $cd $fd $02
    db $ed                                        ; $7bc0: $ed
    ccf                                           ; $7bc1: $3f
    add a                                         ; $7bc2: $87
    ld a, [$bcd0]                                 ; $7bc3: $fa $d0 $bc
    ld [de], a                                    ; $7bc6: $12
    sub b                                         ; $7bc7: $90
    ld l, c                                       ; $7bc8: $69
    ld l, e                                       ; $7bc9: $6b
    rst $38                                       ; $7bca: $ff
    sbc c                                         ; $7bcb: $99
    sbc d                                         ; $7bcc: $9a
    ld [hl], e                                    ; $7bcd: $73

Call_060_7bce:
    ld e, [hl]                                    ; $7bce: $5e
    ld l, l                                       ; $7bcf: $6d
    jr nz, jr_060_7b5d                            ; $7bd0: $20 $8b

    ld b, d                                       ; $7bd2: $42
    ld [hl], $be                                  ; $7bd3: $36 $be
    and b                                         ; $7bd5: $a0
    ld a, e                                       ; $7bd6: $7b
    push af                                       ; $7bd7: $f5
    sbc h                                         ; $7bd8: $9c
    dec bc                                        ; $7bd9: $0b
    dec l                                         ; $7bda: $2d
    sub d                                         ; $7bdb: $92
    ld [de], a                                    ; $7bdc: $12
    sbc e                                         ; $7bdd: $9b
    or l                                          ; $7bde: $b5
    cp a                                          ; $7bdf: $bf
    db $ed                                        ; $7be0: $ed
    ccf                                           ; $7be1: $3f
    add a                                         ; $7be2: $87
    ld a, [$3cd0]                                 ; $7be3: $fa $d0 $3c
    ld d, b                                       ; $7be6: $50
    jp z, Jump_000_012b                           ; $7be7: $ca $2b $01

    sbc c                                         ; $7bea: $99
    or [hl]                                       ; $7beb: $b6
    or $9f                                        ; $7bec: $f6 $9f
    xor c                                         ; $7bee: $a9
    add hl, sp                                    ; $7bef: $39
    rst $20                                       ; $7bf0: $e7
    dec b                                         ; $7bf1: $05
    rlca                                          ; $7bf2: $07
    ld [bc], a                                    ; $7bf3: $02
    ld l, l                                       ; $7bf4: $6d
    ld d, l                                       ; $7bf5: $55
    xor b                                         ; $7bf6: $a8
    ld de, $b69b                                  ; $7bf7: $11 $9b $b6
    ld a, [hl+]                                   ; $7bfa: $2a
    add c                                         ; $7bfb: $81
    reti                                          ; $7bfc: $d9


    rst $30                                       ; $7bfd: $f7
    xor [hl]                                      ; $7bfe: $ae
    or h                                          ; $7bff: $b4
    ld h, e                                       ; $7c00: $63
    rst $10                                       ; $7c01: $d7
    xor c                                         ; $7c02: $a9
    ld e, a                                       ; $7c03: $5f
    reti                                          ; $7c04: $d9


    add sp, $35                                   ; $7c05: $e8 $35
    ld a, [hl]                                    ; $7c07: $7e
    ld a, d                                       ; $7c08: $7a
    sub [hl]                                      ; $7c09: $96
    dec [hl]                                      ; $7c0a: $35
    ld e, h                                       ; $7c0b: $5c
    ld h, e                                       ; $7c0c: $63
    ld c, d                                       ; $7c0d: $4a
    ld d, $f7                                     ; $7c0e: $16 $f7
    ld [$d885], a                                 ; $7c10: $ea $85 $d8
    cp c                                          ; $7c13: $b9
    rlca                                          ; $7c14: $07
    jp z, $5942                                   ; $7c15: $ca $42 $59

    and c                                         ; $7c18: $a1
    add a                                         ; $7c19: $87
    ld b, h                                       ; $7c1a: $44
    rst $28                                       ; $7c1b: $ef
    add c                                         ; $7c1c: $81
    or d                                          ; $7c1d: $b2
    xor d                                         ; $7c1e: $aa
    add hl, hl                                    ; $7c1f: $29
    rst $30                                       ; $7c20: $f7
    dec bc                                        ; $7c21: $0b
    db $ed                                        ; $7c22: $ed
    ld e, a                                       ; $7c23: $5f
    ld d, [hl]                                    ; $7c24: $56
    xor b                                         ; $7c25: $a8
    cp c                                          ; $7c26: $b9
    rst $18                                       ; $7c27: $df
    cp e                                          ; $7c28: $bb
    ld d, a                                       ; $7c29: $57
    dec [hl]                                      ; $7c2a: $35
    push bc                                       ; $7c2b: $c5
    rst $30                                       ; $7c2c: $f7
    jp c, $ebcc                                   ; $7c2d: $da $cc $eb

    ld a, [de]                                    ; $7c30: $1a
    ld [hl], h                                    ; $7c31: $74
    xor [hl]                                      ; $7c32: $ae
    add [hl]                                      ; $7c33: $86

jr_060_7c34:
    ld h, a                                       ; $7c34: $67
    sub [hl]                                      ; $7c35: $96
    ld b, l                                       ; $7c36: $45
    ld hl, $5f1b                                  ; $7c37: $21 $1b $5f
    ret nc                                        ; $7c3a: $d0

    cp l                                          ; $7c3b: $bd
    ld a, d                                       ; $7c3c: $7a
    or b                                          ; $7c3d: $b0
    rlca                                          ; $7c3e: $07
    call nz, $a6a3                                ; $7c3f: $c4 $a3 $a6
    di                                            ; $7c42: $f3
    ld e, [hl]                                    ; $7c43: $5e
    sbc e                                         ; $7c44: $9b
    cp [hl]                                       ; $7c45: $be
    add [hl]                                      ; $7c46: $86
    sbc [hl]                                      ; $7c47: $9e
    add sp, $45                                   ; $7c48: $e8 $45
    jr nz, jr_060_7c34                            ; $7c4a: $20 $e8

    or l                                          ; $7c4c: $b5
    ld [hl-], a                                   ; $7c4d: $32
    ld b, h                                       ; $7c4e: $44
    xor [hl]                                      ; $7c4f: $ae
    dec [hl]                                      ; $7c50: $35
    db $e4                                        ; $7c51: $e4
    xor [hl]                                      ; $7c52: $ae
    jp nc, $d321                                  ; $7c53: $d2 $21 $d3

    cp l                                          ; $7c56: $bd
    xor a                                         ; $7c57: $af
    push de                                       ; $7c58: $d5
    inc e                                         ; $7c59: $1c
    and a                                         ; $7c5a: $a7
    sub c                                         ; $7c5b: $91
    xor $d5                                       ; $7c5c: $ee $d5
    rst $18                                       ; $7c5e: $df
    rst $28                                       ; $7c5f: $ef
    or l                                          ; $7c60: $b5
    ld a, a                                       ; $7c61: $7f
    sbc c                                         ; $7c62: $99
    ld [hl], e                                    ; $7c63: $73
    ld d, [hl]                                    ; $7c64: $56
    or l                                          ; $7c65: $b5
    push hl                                       ; $7c66: $e5
    ld h, h                                       ; $7c67: $64
    bit 4, b                                      ; $7c68: $cb $60
    ld d, c                                       ; $7c6a: $51
    ret z                                         ; $7c6b: $c8

    add $17                                       ; $7c6c: $c6 $17
    ld [hl], h                                    ; $7c6e: $74
    xor a                                         ; $7c6f: $af
    adc $91                                       ; $7c70: $ce $91
    adc $b5                                       ; $7c72: $ce $b5
    sbc d                                         ; $7c74: $9a
    xor e                                         ; $7c75: $ab
    ld l, h                                       ; $7c76: $6c
    inc [hl]                                      ; $7c77: $34

jr_060_7c78:
    rst $18                                       ; $7c78: $df
    cpl                                           ; $7c79: $2f
    ld l, l                                       ; $7c7a: $6d
    ld a, [$d41a]                                 ; $7c7b: $fa $1a $d4
    ld e, h                                       ; $7c7e: $5c
    inc b                                         ; $7c7f: $04
    add d                                         ; $7c80: $82
    ld e, [hl]                                    ; $7c81: $5e
    dec hl                                        ; $7c82: $2b
    ld b, e                                       ; $7c83: $43
    db $e4                                        ; $7c84: $e4
    ld e, d                                       ; $7c85: $5a
    ld b, e                                       ; $7c86: $43
    xor $2a                                       ; $7c87: $ee $2a
    dec e                                         ; $7c89: $1d
    ld [hl-], a                                   ; $7c8a: $32
    db $dd                                        ; $7c8b: $dd
    ei                                            ; $7c8c: $fb
    ld e, d                                       ; $7c8d: $5a
    call Call_000_1a71                            ; $7c8e: $cd $71 $1a
    jp hl                                         ; $7c91: $e9


    ld e, [hl]                                    ; $7c92: $5e
    db $fd                                        ; $7c93: $fd
    db $fd                                        ; $7c94: $fd
    ld e, [hl]                                    ; $7c95: $5e
    ei                                            ; $7c96: $fb
    sub a                                         ; $7c97: $97
    add hl, sp                                    ; $7c98: $39
    rla                                           ; $7c99: $17
    add l                                         ; $7c9a: $85
    ld l, h                                       ; $7c9b: $6c
    ld a, h                                       ; $7c9c: $7c
    ld b, c                                       ; $7c9d: $41
    rst $30                                       ; $7c9e: $f7
    ld [$556a], a                                 ; $7c9f: $ea $6a $55
    ld e, e                                       ; $7ca2: $5b
    ld c, [hl]                                    ; $7ca3: $4e
    or [hl]                                       ; $7ca4: $b6
    adc h                                         ; $7ca5: $8c
    ld [hl], h                                    ; $7ca6: $74
    sbc $2f                                       ; $7ca7: $de $2f
    cpl                                           ; $7ca9: $2f
    rlca                                          ; $7caa: $07
    ld b, e                                       ; $7cab: $43
    xor [hl]                                      ; $7cac: $ae
    ld b, d                                       ; $7cad: $42
    ld [hl], c                                    ; $7cae: $71
    xor $f3                                       ; $7caf: $ee $f3
    add sp, $2e                                   ; $7cb1: $e8 $2e
    ld d, e                                       ; $7cb3: $53
    ld e, a                                       ; $7cb4: $5f
    ld b, [hl]                                    ; $7cb5: $46
    sub h                                         ; $7cb6: $94
    db $fc                                        ; $7cb7: $fc
    ld sp, hl                                     ; $7cb8: $f9
    jr c, jr_060_7c78                             ; $7cb9: $38 $bd

    rst $18                                       ; $7cbb: $df
    cp e                                          ; $7cbc: $bb
    rst $30                                       ; $7cbd: $f7
    ld e, b                                       ; $7cbe: $58
    ld b, [hl]                                    ; $7cbf: $46
    ld [hl], a                                    ; $7cc0: $77
    add hl, de                                    ; $7cc1: $19
    ld h, a                                       ; $7cc2: $67
    ret z                                         ; $7cc3: $c8

    add c                                         ; $7cc4: $81
    ld d, d                                       ; $7cc5: $52
    sbc $e7                                       ; $7cc6: $de $e7
    and c                                         ; $7cc8: $a1
    ld a, c                                       ; $7cc9: $79
    ld sp, $91f4                                  ; $7cca: $31 $f4 $91
    ld [hl], h                                    ; $7ccd: $74
    ld c, d                                       ; $7cce: $4a
    ld l, a                                       ; $7ccf: $6f
    ld a, c                                       ; $7cd0: $79
    rrca                                          ; $7cd1: $0f
    sub h                                         ; $7cd2: $94
    pop bc                                        ; $7cd3: $c1
    ret nc                                        ; $7cd4: $d0

    call z, $f45e                                 ; $7cd5: $cc $5e $f4
    set 7, l                                      ; $7cd8: $cb $fd
    ld [bc], a                                    ; $7cda: $02
    rlca                                          ; $7cdb: $07
    ld e, h                                       ; $7cdc: $5c
    and [hl]                                      ; $7cdd: $a6
    cp [hl]                                       ; $7cde: $be
    xor h                                         ; $7cdf: $ac
    ld a, d                                       ; $7ce0: $7a
    sbc a                                         ; $7ce1: $9f
    add a                                         ; $7ce2: $87
    ld a, [$2940]                                 ; $7ce3: $fa $40 $29
    xor a                                         ; $7ce6: $af
    sub c                                         ; $7ce7: $91
    ld a, d                                       ; $7ce8: $7a
    ld h, c                                       ; $7ce9: $61
    xor a                                         ; $7cea: $af
    ld de, $658a                                  ; $7ceb: $11 $8a $65
    inc c                                         ; $7cee: $0c
    ld a, l                                       ; $7cef: $7d
    sbc a                                         ; $7cf0: $9f
    rla                                           ; $7cf1: $17
    ld e, d                                       ; $7cf2: $5a
    inc h                                         ; $7cf3: $24
    dec h                                         ; $7cf4: $25
    or $10                                        ; $7cf5: $f6 $10
    ld h, h                                       ; $7cf7: $64
    ld d, c                                       ; $7cf8: $51
    ret z                                         ; $7cf9: $c8

    add $17                                       ; $7cfa: $c6 $17
    ld [hl], h                                    ; $7cfc: $74
    xor a                                         ; $7cfd: $af
    cp [hl]                                       ; $7cfe: $be
    ld [hl], a                                    ; $7cff: $77
    cp c                                          ; $7d00: $b9
    cp [hl]                                       ; $7d01: $be
    xor d                                         ; $7d02: $aa
    ld a, [hl]                                    ; $7d03: $7e
    rra                                           ; $7d04: $1f
    db $dd                                        ; $7d05: $dd
    ld h, l                                       ; $7d06: $65
    and c                                         ; $7d07: $a1
    ld b, l                                       ; $7d08: $45
    ld d, d                                       ; $7d09: $52
    ld h, d                                       ; $7d0a: $62
    rrca                                          ; $7d0b: $0f
    dec l                                         ; $7d0c: $2d
    adc e                                         ; $7d0d: $8b
    ld b, d                                       ; $7d0e: $42
    ld c, $a1                                     ; $7d0f: $0e $a1
    call c, $972f                                 ; $7d11: $dc $2f $97
    sbc e                                         ; $7d14: $9b
    ld a, [hl]                                    ; $7d15: $7e
    rst $28                                       ; $7d16: $ef
    adc d                                         ; $7d17: $8a
    or d                                          ; $7d18: $b2
    sbc b                                         ; $7d19: $98
    sub d                                         ; $7d1a: $92
    adc e                                         ; $7d1b: $8b
    dec l                                         ; $7d1c: $2d
    dec e                                         ; $7d1d: $1d
    jp z, Jump_000_2940                           ; $7d1e: $ca $40 $29

    rst $28                                       ; $7d21: $ef
    di                                            ; $7d22: $f3
    ld hl, sp+$17                                 ; $7d23: $f8 $17
    rrca                                          ; $7d25: $0f
    dec l                                         ; $7d26: $2d
    ld a, e                                       ; $7d27: $7b
    adc h                                         ; $7d28: $8c
    ld h, e                                       ; $7d29: $63
    add sp, -$73                                  ; $7d2a: $e8 $8d
    ld e, a                                       ; $7d2c: $5f
    inc a                                         ; $7d2d: $3c
    add [hl]                                      ; $7d2e: $86
    cp [hl]                                       ; $7d2f: $be
    adc e                                         ; $7d30: $8b
    ld d, e                                       ; $7d31: $53
    inc de                                        ; $7d32: $13
    ld b, l                                       ; $7d33: $45
    jr nz, jr_060_7d4e                            ; $7d34: $20 $18

    ld a, [c]                                     ; $7d36: $f2
    ld a, [hl]                                    ; $7d37: $7e
    ld bc, $e66d                                  ; $7d38: $01 $6d $e6
    ld [hl], l                                    ; $7d3b: $75
    dec c                                         ; $7d3c: $0d
    ld a, [hl-]                                   ; $7d3d: $3a
    ld d, a                                       ; $7d3e: $57
    jp $f333                                      ; $7d3f: $c3 $33 $f3


    ld l, d                                       ; $7d42: $6a
    adc e                                         ; $7d43: $8b
    sbc d                                         ; $7d44: $9a
    and l                                         ; $7d45: $a5
    ld a, $cd                                     ; $7d46: $3e $cd
    ld a, $cb                                     ; $7d48: $3e $cb
    ld a, [hl-]                                   ; $7d4a: $3a
    dec h                                         ; $7d4b: $25
    sbc l                                         ; $7d4c: $9d
    ld d, e                                       ; $7d4d: $53

jr_060_7d4e:
    ld e, a                                       ; $7d4e: $5f
    ld d, [hl]                                    ; $7d4f: $56
    db $e3                                        ; $7d50: $e3
    sbc a                                         ; $7d51: $9f
    ld e, [hl]                                    ; $7d52: $5e
    xor e                                         ; $7d53: $ab
    ld a, c                                       ; $7d54: $79
    cp a                                          ; $7d55: $bf
    rst $20                                       ; $7d56: $e7
    ld a, a                                       ; $7d57: $7f
    db $f4                                        ; $7d58: $f4
    ld h, b                                       ; $7d59: $60
    ld c, a                                       ; $7d5a: $4f
    ld d, e                                       ; $7d5b: $53
    call c, $f535                                 ; $7d5c: $dc $35 $f5
    sbc $e5                                       ; $7d5f: $de $e5
    and [hl]                                      ; $7d61: $a6
    db $d3                                        ; $7d62: $d3
    ld d, $5b                                     ; $7d63: $16 $5b
    sbc b                                         ; $7d65: $98
    ld [hl], $34                                  ; $7d66: $36 $34
    rst $08                                       ; $7d68: $cf
    cp c                                          ; $7d69: $b9
    rst $00                                       ; $7d6a: $c7
    inc e                                         ; $7d6b: $1c
    ret nc                                        ; $7d6c: $d0

    ld [hl-], a                                   ; $7d6d: $32
    add [hl]                                      ; $7d6e: $86
    cp [hl]                                       ; $7d6f: $be
    jr c, jr_060_7d96                             ; $7d70: $38 $24

    dec sp                                        ; $7d72: $3b
    and d                                         ; $7d73: $a2
    dec sp                                        ; $7d74: $3b
    push bc                                       ; $7d75: $c5
    cp l                                          ; $7d76: $bd
    ld a, [$017e]                                 ; $7d77: $fa $7e $01
    rst $20                                       ; $7d7a: $e7
    ld e, e                                       ; $7d7b: $5b
    push af                                       ; $7d7c: $f5
    ld e, a                                       ; $7d7d: $5f
    sbc h                                         ; $7d7e: $9c
    or h                                          ; $7d7f: $b4
    pop de                                        ; $7d80: $d1
    ld e, l                                       ; $7d81: $5d
    ld d, $43                                     ; $7d82: $16 $43
    rst $28                                       ; $7d84: $ef
    ld e, $55                                     ; $7d85: $1e $55
    xor d                                         ; $7d87: $aa
    ld a, [c]                                     ; $7d88: $f2
    ld a, $8f                                     ; $7d89: $3e $8f
    xor $32                                       ; $7d8b: $ee $32
    and l                                         ; $7d8d: $a5
    adc e                                         ; $7d8e: $8b
    ld a, b                                       ; $7d8f: $78
    inc h                                         ; $7d90: $24
    sbc l                                         ; $7d91: $9d
    jp nc, $be5b                                  ; $7d92: $d2 $5b $be

    ld e, a                                       ; $7d95: $5f

jr_060_7d96:
    sub a                                         ; $7d96: $97
    ld c, b                                       ; $7d97: $48
    or c                                          ; $7d98: $b1
    db $ec                                        ; $7d99: $ec
    adc e                                         ; $7d9a: $8b
    ld a, e                                       ; $7d9b: $7b
    push af                                       ; $7d9c: $f5
    db $fd                                        ; $7d9d: $fd
    ld [bc], a                                    ; $7d9e: $02
    db $ed                                        ; $7d9f: $ed
    ccf                                           ; $7da0: $3f
    add a                                         ; $7da1: $87
    ld a, [$495a]                                 ; $7da2: $fa $5a $49
    adc l                                         ; $7da5: $8d
    call $bf8b                                    ; $7da6: $cd $8b $bf
    ldh [rSCY], a                                 ; $7da9: $e0 $42
    ld e, c                                       ; $7dab: $59
    and l                                         ; $7dac: $a5
    inc [hl]                                      ; $7dad: $34
    ld a, h                                       ; $7dae: $7c
    adc $0b                                       ; $7daf: $ce $0b
    sub a                                         ; $7db1: $97
    sbc e                                         ; $7db2: $9b
    ld c, [hl]                                    ; $7db3: $4e
    db $db                                        ; $7db4: $db
    db $d3                                        ; $7db5: $d3
    xor h                                         ; $7db6: $ac
    jp z, $eaab                                   ; $7db7: $ca $ab $ea

    rst $30                                       ; $7dba: $f7
    and c                                         ; $7dbb: $a1
    cp [hl]                                       ; $7dbc: $be
    jp c, $439b                                   ; $7dbd: $da $9b $43

    di                                            ; $7dc0: $f3
    ld b, d                                       ; $7dc1: $42
    db $eb                                        ; $7dc2: $eb
    ld a, [hl]                                    ; $7dc3: $7e
    ld bc, $5c07                                  ; $7dc4: $01 $07 $5c
    ld d, $1b                                     ; $7dc7: $16 $1b
    rlca                                          ; $7dc9: $07
    ld c, d                                       ; $7dca: $4a
    ld a, c                                       ; $7dcb: $79
    sub [hl]                                      ; $7dcc: $96
    ld a, [c]                                     ; $7dcd: $f2
    and l                                         ; $7dce: $a5
    adc h                                         ; $7dcf: $8c
    adc h                                         ; $7dd0: $8c
    ld b, e                                       ; $7dd1: $43
    ld [c], a                                     ; $7dd2: $e2
    sub a                                         ; $7dd3: $97
    dec a                                         ; $7dd4: $3d
    ld e, a                                       ; $7dd5: $5f
    ld d, $d1                                     ; $7dd6: $16 $d1
    sbc l                                         ; $7dd8: $9d
    ld [c], a                                     ; $7dd9: $e2
    sbc h                                         ; $7dda: $9c
    ld h, l                                       ; $7ddb: $65
    rst $08                                       ; $7ddc: $cf
    rst $08                                       ; $7ddd: $cf
    rst $00                                       ; $7dde: $c7
    db $fd                                        ; $7ddf: $fd
    and e                                         ; $7de0: $a3
    ld e, e                                       ; $7de1: $5b
    db $dd                                        ; $7de2: $dd
    ld a, h                                       ; $7de3: $7c
    cp a                                          ; $7de4: $bf
    rst $20                                       ; $7de5: $e7

Jump_060_7de6:
    ld h, c                                       ; $7de6: $61
    sbc $6b                                       ; $7de7: $de $6b
    adc a                                         ; $7de9: $8f
    and c                                         ; $7dea: $a1
    ld c, $f5                                     ; $7deb: $0e $f5
    add hl, sp                                    ; $7ded: $39
    rla                                           ; $7dee: $17
    add l                                         ; $7def: $85
    ld l, h                                       ; $7df0: $6c
    ld a, h                                       ; $7df1: $7c
    ld b, c                                       ; $7df2: $41
    di                                            ; $7df3: $f3
    ld l, d                                       ; $7df4: $6a
    ld [hl], e                                    ; $7df5: $73
    ld h, h                                       ; $7df6: $64
    add sp, $38                                   ; $7df7: $e8 $38
    add h                                         ; $7df9: $84
    or d                                          ; $7dfa: $b2
    jr z, @+$01                                   ; $7dfb: $28 $ff

    ld e, $28                                     ; $7dfd: $1e $28
    jp c, Jump_060_6d5f                           ; $7dff: $da $5f $6d

    and $91                                       ; $7e02: $e6 $91
    ld [hl], h                                    ; $7e04: $74
    ld c, d                                       ; $7e05: $4a
    ld l, a                                       ; $7e06: $6f
    add hl, sp                                    ; $7e07: $39
    rst $30                                       ; $7e08: $f7
    inc [hl]                                      ; $7e09: $34
    xor e                                         ; $7e0a: $ab
    ld a, [c]                                     ; $7e0b: $f2
    ld a, $af                                     ; $7e0c: $3e $af
    xor d                                         ; $7e0e: $aa
    call nc, Call_000_0d1b                        ; $7e0f: $d4 $1b $0d
    xor a                                         ; $7e12: $af
    ld b, d                                       ; $7e13: $42
    ld e, c                                       ; $7e14: $59
    ld e, d                                       ; $7e15: $5a
    xor $17                                       ; $7e16: $ee $17
    rlca                                          ; $7e18: $07
    ld e, h                                       ; $7e19: $5c
    ld b, [hl]                                    ; $7e1a: $46
    add [hl]                                      ; $7e1b: $86
    adc [hl]                                      ; $7e1c: $8e
    adc $3d                                       ; $7e1d: $ce $3d
    ld d, b                                       ; $7e1f: $50
    ld d, $e5                                     ; $7e20: $16 $e5
    ld e, a                                       ; $7e22: $5f
    inc d                                         ; $7e23: $14
    or d                                          ; $7e24: $b2
    pop af                                        ; $7e25: $f1
    dec b                                         ; $7e26: $05
    db $dd                                        ; $7e27: $dd
    xor e                                         ; $7e28: $ab
    di                                            ; $7e29: $f3
    ld a, [hl]                                    ; $7e2a: $7e
    ld bc, $9b97                                  ; $7e2b: $01 $97 $9b
    ld c, [hl]                                    ; $7e2e: $4e
    db $db                                        ; $7e2f: $db
    ld h, e                                       ; $7e30: $63
    add hl, de                                    ; $7e31: $19
    db $dd                                        ; $7e32: $dd
    ld h, l                                       ; $7e33: $65
    ld c, h                                       ; $7e34: $4c

Call_060_7e35:
    call $14c5                                    ; $7e35: $cd $c5 $14
    ld b, h                                       ; $7e38: $44
    xor a                                         ; $7e39: $af
    push de                                       ; $7e3a: $d5
    call c, $a1e7                                 ; $7e3b: $dc $e7 $a1
    ld [hl], e                                    ; $7e3e: $73
    ld de, $ba08                                  ; $7e3f: $11 $08 $ba
    adc $b2                                       ; $7e42: $ce $b2
    ld b, [hl]                                    ; $7e44: $46
    jr z, jr_060_7e7a                             ; $7e45: $28 $33

    rst $08                                       ; $7e47: $cf
    cp l                                          ; $7e48: $bd
    dec sp                                        ; $7e49: $3b
    rst $30                                       ; $7e4a: $f7
    dec b                                         ; $7e4b: $05
    call Call_060_6cab                            ; $7e4c: $cd $ab $6c
    ld e, h                                       ; $7e4f: $5c
    dec c                                         ; $7e50: $0d
    rst $08                                       ; $7e51: $cf
    call nc, Call_060_4597                        ; $7e52: $d4 $97 $45
    ld hl, $d299                                  ; $7e55: $21 $99 $d2
    cp e                                          ; $7e58: $bb
    ld b, a                                       ; $7e59: $47
    add $21                                       ; $7e5a: $c6 $21
    pop af                                        ; $7e5c: $f1
    set 7, l                                      ; $7e5d: $cb $fd
    ld [bc], a                                    ; $7e5f: $02
    db $ed                                        ; $7e60: $ed
    ccf                                           ; $7e61: $3f
    add a                                         ; $7e62: $87
    ld a, [$a6a2]                                 ; $7e63: $fa $a2 $a6
    ld a, c                                       ; $7e66: $79
    sub [hl]                                      ; $7e67: $96
    ld b, l                                       ; $7e68: $45
    ld hl, $5f1b                                  ; $7e69: $21 $1b $5f
    ret nc                                        ; $7e6c: $d0

    cp l                                          ; $7e6d: $bd
    ld a, [$5d9c]                                 ; $7e6e: $fa $9c $5d
    sub h                                         ; $7e71: $94
    ld a, [hl]                                    ; $7e72: $7e
    ld a, [c]                                     ; $7e73: $f2
    rla                                           ; $7e74: $17
    dec bc                                        ; $7e75: $0b
    ld a, [$01de]                                 ; $7e76: $fa $de $01
    sub a                                         ; $7e79: $97

jr_060_7e7a:
    push bc                                       ; $7e7a: $c5
    ret nc                                        ; $7e7b: $d0

    cp e                                          ; $7e7c: $bb
    ld b, a                                       ; $7e7d: $47
    sub l                                         ; $7e7e: $95
    xor d                                         ; $7e7f: $aa

jr_060_7e80:
    ld c, h                                       ; $7e80: $4c
    db $db                                        ; $7e81: $db
    rst $20                                       ; $7e82: $e7
    pop de                                        ; $7e83: $d1
    ld e, l                                       ; $7e84: $5d
    ld d, $4a                                     ; $7e85: $16 $4a
    ld l, l                                       ; $7e87: $6d
    adc [hl]                                      ; $7e88: $8e
    db $fc                                        ; $7e89: $fc
    ld sp, $517a                                  ; $7e8a: $31 $7a $51
    db $d3                                        ; $7e8d: $d3
    cp h                                          ; $7e8e: $bc
    rlca                                          ; $7e8f: $07
    jp z, $da2c                                   ; $7e90: $ca $2c $da

    ld e, a                                       ; $7e93: $5f
    rlca                                          ; $7e94: $07
    ld e, h                                       ; $7e95: $5c
    ld b, [hl]                                    ; $7e96: $46
    cp $1c                                        ; $7e97: $fe $1c
    jr z, jr_060_7e80                             ; $7e99: $28 $e5

    sub c                                         ; $7e9b: $91
    ccf                                           ; $7e9c: $3f
    ld [c], a                                     ; $7e9d: $e2
    and c                                         ; $7e9e: $a1
    ld a, c                                       ; $7e9f: $79
    pop de                                        ; $7ea0: $d1
    cpl                                           ; $7ea1: $2f
    or e                                          ; $7ea2: $b3
    and b                                         ; $7ea3: $a0
    add sp, -$09                                  ; $7ea4: $e8 $f7
    dec bc                                        ; $7ea6: $0b
    rlca                                          ; $7ea7: $07
    ld b, c                                       ; $7ea8: $41
    ld d, $44                                     ; $7ea9: $16 $44
    cp c                                          ; $7eab: $b9
    rst $28                                       ; $7eac: $ef
    ld a, d                                       ; $7ead: $7a
    sub b                                         ; $7eae: $90
    jp z, Jump_060_4641                           ; $7eaf: $ca $41 $46

    cp $18                                        ; $7eb2: $fe $18
    dec a                                         ; $7eb4: $3d
    res 4, d                                      ; $7eb5: $cb $a2
    sub b                                         ; $7eb7: $90
    adc l                                         ; $7eb8: $8d
    cpl                                           ; $7eb9: $2f
    add sp, $5e                                   ; $7eba: $e8 $5e
    ld a, l                                       ; $7ebc: $7d
    xor a                                         ; $7ebd: $af
    db $fd                                        ; $7ebe: $fd
    bit 5, d                                      ; $7ebf: $cb $6a
    rst $38                                       ; $7ec1: $ff
    xor l                                         ; $7ec2: $ad
    db $fd                                        ; $7ec3: $fd
    adc [hl]                                      ; $7ec4: $8e
    add hl, bc                                    ; $7ec5: $09
    ld h, l                                       ; $7ec6: $65
    ccf                                           ; $7ec7: $3f
    jp c, $1c63                                   ; $7ec8: $da $63 $1c

    ld e, d                                       ; $7ecb: $5a
    xor $17                                       ; $7ecc: $ee $17
    rlca                                          ; $7ece: $07
    ld e, h                                       ; $7ecf: $5c
    ld d, $1b                                     ; $7ed0: $16 $1b
    rlca                                          ; $7ed2: $07
    ld d, d                                       ; $7ed3: $52
    inc l                                         ; $7ed4: $2c
    inc c                                         ; $7ed5: $0c
    ld d, d                                       ; $7ed6: $52
    ld d, $9e                                     ; $7ed7: $16 $9e
    ld b, l                                       ; $7ed9: $45
    ld hl, $5f1b                                  ; $7eda: $21 $1b $5f
    ret nc                                        ; $7edd: $d0

    cp l                                          ; $7ede: $bd
    ld a, [hl-]                                   ; $7edf: $3a
    rst $28                                       ; $7ee0: $ef
    rla                                           ; $7ee1: $17
    ld d, a                                       ; $7ee2: $57
    ld h, [hl]                                    ; $7ee3: $66
    adc b                                         ; $7ee4: $88
    ld e, h                                       ; $7ee5: $5c
    ld l, e                                       ; $7ee6: $6b
    ret z                                         ; $7ee7: $c8

    ld e, l                                       ; $7ee8: $5d
    and l                                         ; $7ee9: $a5
    ld b, e                                       ; $7eea: $43
    and [hl]                                      ; $7eeb: $a6
    ld a, e                                       ; $7eec: $7b
    ld e, a                                       ; $7eed: $5f
    ld l, h                                       ; $7eee: $6c
    inc e                                         ; $7eef: $1c
    sbc d                                         ; $7ef0: $9a
    ld d, a                                       ; $7ef1: $57
    ld b, c                                       ; $7ef2: $41
    add hl, hl                                    ; $7ef3: $29
    daa                                           ; $7ef4: $27
    rst $18                                       ; $7ef5: $df
    cpl                                           ; $7ef6: $2f
    ld l, l                                       ; $7ef7: $6d
    ld a, [$1942]                                 ; $7ef8: $fa $42 $19
    add d                                         ; $7efb: $82
    inc l                                         ; $7efc: $2c
    ld a, [bc]                                    ; $7efd: $0a
    reti                                          ; $7efe: $d9


    ld hl, sp-$7e                                 ; $7eff: $f8 $82
    xor $d5                                       ; $7f01: $ee $d5
    ld d, e                                       ; $7f03: $53
    ld e, a                                       ; $7f04: $5f
    sub $f8                                       ; $7f05: $d6 $f8
    jp hl                                         ; $7f07: $e9


    ld d, l                                       ; $7f08: $55
    sub l                                         ; $7f09: $95
    ld a, d                                       ; $7f0a: $7a
    and e                                         ; $7f0b: $a3
    pop hl                                        ; $7f0c: $e1
    db $fd                                        ; $7f0d: $fd
    ld c, b                                       ; $7f0e: $48
    ei                                            ; $7f0f: $fb
    dec bc                                        ; $7f10: $0b
    rlca                                          ; $7f11: $07
    ld e, h                                       ; $7f12: $5c
    ld d, $1b                                     ; $7f13: $16 $1b
    ld d, a                                       ; $7f15: $57
    cp e                                          ; $7f16: $bb
    ld a, c                                       ; $7f17: $79
    and b                                         ; $7f18: $a0
    sub h                                         ; $7f19: $94
    ld l, c                                       ; $7f1a: $69
    inc hl                                        ; $7f1b: $23
    db $e3                                        ; $7f1c: $e3
    sub b                                         ; $7f1d: $90
    and e                                         ; $7f1e: $a3
    cp e                                          ; $7f1f: $bb
    xor h                                         ; $7f20: $ac
    xor d                                         ; $7f21: $aa
    rst $18                                       ; $7f22: $df
    rst $10                                       ; $7f23: $d7
    ld [hl], b                                    ; $7f24: $70
    pop de                                        ; $7f25: $d1
    ld [$517a], sp                                ; $7f26: $08 $7a $51
    ret z                                         ; $7f29: $c8

    ld a, l                                       ; $7f2a: $7d
    ld e, [hl]                                    ; $7f2b: $5e
    call nc, $9a1c                                ; $7f2c: $d4 $1c $9a
    ld d, a                                       ; $7f2f: $57
    ld a, a                                       ; $7f30: $7f
    pop hl                                        ; $7f31: $e1
    ei                                            ; $7f32: $fb
    dec b                                         ; $7f33: $05
    sub a                                         ; $7f34: $97
    ld a, [hl]                                    ; $7f35: $7e
    add hl, de                                    ; $7f36: $19
    ld a, d                                       ; $7f37: $7a
    ld de, $29dd                                  ; $7f38: $11 $dd $29
    xor [hl]                                      ; $7f3b: $ae
    rst $20                                       ; $7f3c: $e7
    xor h                                         ; $7f3d: $ac
    dec a                                         ; $7f3e: $3d
    ld c, $39                                     ; $7f3f: $0e $39
    db $10                                        ; $7f41: $10
    halt                                          ; $7f42: $76
    cp d                                          ; $7f43: $ba
    sub $2f                                       ; $7f44: $d6 $2f
    ld a, h                                       ; $7f46: $7c
    cp a                                          ; $7f47: $bf
    add a                                         ; $7f48: $87
    cp h                                          ; $7f49: $bc

jr_060_7f4a:
    ld d, [hl]                                    ; $7f4a: $56
    ld [hl], e                                    ; $7f4b: $73
    dec c                                         ; $7f4c: $0d
    ld l, b                                       ; $7f4d: $68
    ld [hl], h                                    ; $7f4e: $74
    ld [$656c], sp                                ; $7f4f: $08 $6c $65
    cp [hl]                                       ; $7f52: $be
    rst $10                                       ; $7f53: $d7
    and $91                                       ; $7f54: $e6 $91
    ccf                                           ; $7f56: $3f
    rst $10                                       ; $7f57: $d7
    and b                                         ; $7f58: $a0
    ld d, $e7                                     ; $7f59: $16 $e7
    jp nz, $dfb3                                  ; $7f5b: $c2 $b3 $df

    ld sp, hl                                     ; $7f5e: $f9
    ld a, [hl]                                    ; $7f5f: $7e
    ld bc, $71ed                                  ; $7f60: $01 $ed $71
    ret z                                         ; $7f63: $c8

    jr z, jr_060_7f4a                             ; $7f64: $28 $e4

    ld e, d                                       ; $7f66: $5a
    ld c, c                                       ; $7f67: $49
    adc l                                         ; $7f68: $8d
    sbc l                                         ; $7f69: $9d
    ld b, e                                       ; $7f6a: $43
    ld a, l                                       ; $7f6b: $7d
    and b                                         ; $7f6c: $a0
    sub h                                         ; $7f6d: $94
    rst $10                                       ; $7f6e: $d7
    ld hl, sp-$17                                 ; $7f6f: $f8 $e9
    ld a, l                                       ; $7f71: $7d
    ld e, [hl]                                    ; $7f72: $5e
    ld b, h                                       ; $7f73: $44
    ld [hl], a                                    ; $7f74: $77
    adc d                                         ; $7f75: $8a
    add a                                         ; $7f76: $87
    ld d, b                                       ; $7f77: $50
    ld d, [hl]                                    ; $7f78: $56
    db $dd                                        ; $7f79: $dd
    ld h, e                                       ; $7f7a: $63
    jp c, $90a2                                   ; $7f7b: $da $a2 $90

    and e                                         ; $7f7e: $a3
    add $ee                                       ; $7f7f: $c6 $ee
    push de                                       ; $7f81: $d5
    ld d, d                                       ; $7f82: $52
    ld d, a                                       ; $7f83: $57
    sub l                                         ; $7f84: $95
    and [hl]                                      ; $7f85: $a6
    db $e3                                        ; $7f86: $e3
    add hl, sp                                    ; $7f87: $39
    cpl                                           ; $7f88: $2f
    db $ed                                        ; $7f89: $ed
    ld sp, $a1d4                                  ; $7f8a: $31 $d4 $a1
    cp [hl]                                       ; $7f8d: $be
    cp $d1                                        ; $7f8e: $fe $d1
    cp c                                          ; $7f90: $b9
    ld a, [de]                                    ; $7f91: $1a
    sbc [hl]                                      ; $7f92: $9e
    add c                                         ; $7f93: $81
    inc d                                         ; $7f94: $14
    dec bc                                        ; $7f95: $0b
    add e                                         ; $7f96: $83
    sub h                                         ; $7f97: $94
    ld b, l                                       ; $7f98: $45
    ld hl, $0c6b                                  ; $7f99: $21 $6b $0c
    add d                                         ; $7f9c: $82
    adc $a1                                       ; $7f9d: $ce $a1
    ld h, l                                       ; $7f9f: $65
    ld c, a                                       ; $7fa0: $4f
    or e                                          ; $7fa1: $b3
    ld a, [hl+]                                   ; $7fa2: $2a
    rst $28                                       ; $7fa3: $ef
    ld b, a                                       ; $7fa4: $47
    xor e                                         ; $7fa5: $ab
    ld d, b                                       ; $7fa6: $50
    ld d, [hl]                                    ; $7fa7: $56
    db $dd                                        ; $7fa8: $dd
    db $e3                                        ; $7fa9: $e3
    ei                                            ; $7faa: $fb
    dec b                                         ; $7fab: $05
    rlca                                          ; $7fac: $07
    ld b, c                                       ; $7fad: $41
    cp h                                          ; $7fae: $bc
    jr z, @+$26                                   ; $7faf: $28 $24

    and l                                         ; $7fb1: $a5
    ld h, e                                       ; $7fb2: $63
    ld a, d                                       ; $7fb3: $7a
    dec b                                         ; $7fb4: $05
    ld h, d                                       ; $7fb5: $62
    rst $20                                       ; $7fb6: $e7
    ld e, $28                                     ; $7fb7: $1e $28
    ei                                            ; $7fb9: $fb
    dec e                                         ; $7fba: $1d
    inc de                                        ; $7fbb: $13
    jp z, $887a                                   ; $7fbc: $ca $7a $88

    rst $00                                       ; $7fbf: $c7
    ret nc                                        ; $7fc0: $d0

    rst $30                                       ; $7fc1: $f7
    ld a, c                                       ; $7fc2: $79
    ld d, c                                       ; $7fc3: $51
    ret z                                         ; $7fc4: $c8

    add $17                                       ; $7fc5: $c6 $17
    inc [hl]                                      ; $7fc7: $34
    ld l, l                                       ; $7fc8: $6d
    or l                                          ; $7fc9: $b5
    add hl, sp                                    ; $7fca: $39
    cp d                                          ; $7fcb: $ba
    bit 4, d                                      ; $7fcc: $cb $62
    db $e3                                        ; $7fce: $e3
    ld b, b                                       ; $7fcf: $40
    add hl, hl                                    ; $7fd0: $29
    ld c, a                                       ; $7fd1: $4f
    ld b, d                                       ; $7fd2: $42
    ld sp, $3c2f                                  ; $7fd3: $31 $2f $3c
    ld b, e                                       ; $7fd6: $43
    di                                            ; $7fd7: $f3
    db $fd                                        ; $7fd8: $fd
    ld [bc], a                                    ; $7fd9: $02

Jump_060_7fda:
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
