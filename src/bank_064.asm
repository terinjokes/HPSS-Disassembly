; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

    ld h, h                                       ; $4000: $64
    sub a                                         ; $4001: $97
    add [hl]                                      ; $4002: $86
    ld h, h                                       ; $4003: $64
    adc e                                         ; $4004: $8b
    ld b, a                                       ; $4005: $47
    cp $5c                                        ; $4006: $fe $5c
    ld h, l                                       ; $4008: $65
    ld c, d                                       ; $4009: $4a
    ld a, [hl+]                                   ; $400a: $2a
    ld e, $b5                                     ; $400b: $1e $b5
    sbc b                                         ; $400d: $98
    ld d, a                                       ; $400e: $57
    push de                                       ; $400f: $d5
    ld b, a                                       ; $4010: $47
    dec bc                                        ; $4011: $0b
    ld l, l                                       ; $4012: $6d
    xor b                                         ; $4013: $a8
    cpl                                           ; $4014: $2f
    ld a, [bc]                                    ; $4015: $0a
    reti                                          ; $4016: $d9


    call z, $8bfa                                 ; $4017: $cc $fa $8b
    ld [hl], e                                    ; $401a: $73
    db $30, $cb                                   ; $401b: $30 $cb
    ld d, h                                       ; $401d: $54
    sub b                                         ; $401e: $90
    db $28, $83                                   ; $401f: $28 $83
    ldh a, [$67]                                  ; $4021: $f0 $67
    ld [$bf72], sp                                ; $4023: $08 $72 $bf
    db $ed                                        ; $4026: $ed
    ccf                                           ; $4027: $3f
    ld d, e                                       ; $4028: $53
    or e                                          ; $4029: $b3
    dec hl                                        ; $402a: $2b
    inc bc                                        ; $402b: $03
    or e                                          ; $402c: $b3
    ld [hl], e                                    ; $402d: $73
    ld a, [hl+]                                   ; $402e: $2a
    inc h                                         ; $402f: $24
    sbc e                                         ; $4030: $9b
    ld b, a                                       ; $4031: $47
    cp $5c                                        ; $4032: $fe $5c
    add c                                         ; $4034: $81
    ret c                                         ; $4035: $d8

    add hl, sp                                    ; $4036: $39
    add h                                         ; $4037: $84
    or d                                          ; $4038: $b2
    rst $18                                       ; $4039: $df
    cp e                                          ; $403a: $bb
    rst $00                                       ; $403b: $c7
    xor c                                         ; $403c: $a9
    jp hl                                         ; $403d: $e9


    db $dd                                        ; $403e: $dd
    ld d, c                                       ; $403f: $51
    ret z                                         ; $4040: $c8

    ld b, a                                       ; $4041: $47
    rst $28                                       ; $4042: $ef
    ccf                                           ; $4043: $3f
    sbc l                                         ; $4044: $9d
    ld [c], a                                     ; $4045: $e2
    or l                                          ; $4046: $b5
    sbc d                                         ; $4047: $9a
    inc hl                                        ; $4048: $23
    xor c                                         ; $4049: $a9
    ld [hl], h                                    ; $404a: $74
    ld d, a                                       ; $404b: $57
    or $04                                        ; $404c: $f6 $04
    ld h, d                                       ; $404e: $62
    ld a, a                                       ; $404f: $7f
    ld a, l                                       ; $4050: $7d

jr_064_4051:
    push af                                       ; $4051: $f5
    ccf                                           ; $4052: $3f
    cp h                                          ; $4053: $bc
    add sp, $67                                   ; $4054: $e8 $67
    db $ec                                        ; $4056: $ec
    ld a, [de]                                    ; $4057: $1a
    sub d                                         ; $4058: $92
    sbc l                                         ; $4059: $9d
    adc $a9                                       ; $405a: $ce $a9
    sub b                                         ; $405c: $90
    ld l, h                                       ; $405d: $6c
    pop af                                        ; $405e: $f1
    ld h, b                                       ; $405f: $60
    ld [$8bb2], sp                                ; $4060: $08 $b2 $8b
    ld b, d                                       ; $4063: $42
    add a                                         ; $4064: $87
    or b                                          ; $4065: $b0
    add e                                         ; $4066: $83
    cp a                                          ; $4067: $bf
    ret nz                                        ; $4068: $c0

    ld a, [hl+]                                   ; $4069: $2a
    add l                                         ; $406a: $85
    ld h, e                                       ; $406b: $63
    xor b                                         ; $406c: $a8
    cpl                                           ; $406d: $2f
    ld l, l                                       ; $406e: $6d
    ld a, [$9fc8]                                 ; $406f: $fa $c8 $9f
    ld [hl], e                                    ; $4072: $73
    call nz, $dace                                ; $4073: $c4 $ce $da
    jp nc, $f0b3                                  ; $4076: $d2 $b3 $f0

    call z, $b1d3                                 ; $4079: $cc $d3 $b1
    or d                                          ; $407c: $b2
    ld h, $1b                                     ; $407d: $26 $1b
    ccf                                           ; $407f: $3f
    ld a, c                                       ; $4080: $79
    and c                                         ; $4081: $a1
    ld b, c                                       ; $4082: $41
    or a                                          ; $4083: $b7
    ld [c], a                                     ; $4084: $e2
    ld a, e                                       ; $4085: $7b
    rla                                           ; $4086: $17
    add l                                         ; $4087: $85
    call c, $e9e7                                 ; $4088: $dc $e7 $e9
    ld e, b                                       ; $408b: $58
    ld e, c                                       ; $408c: $59
    sub e                                         ; $408d: $93
    sbc [hl]                                      ; $408e: $9e
    ld a, c                                       ; $408f: $79
    and c                                         ; $4090: $a1
    ld b, c                                       ; $4091: $41
    or a                                          ; $4092: $b7
    ld [c], a                                     ; $4093: $e2
    ld d, l                                       ; $4094: $55
    push af                                       ; $4095: $f5
    ei                                            ; $4096: $fb
    ld d, b                                       ; $4097: $50
    rra                                           ; $4098: $1f
    and a                                         ; $4099: $a7
    ld b, [hl]                                    ; $409a: $46
    add hl, hl                                    ; $409b: $29
    rst $28                                       ; $409c: $ef
    ret nc                                        ; $409d: $d0

    dec [hl]                                      ; $409e: $35
    rst $20                                       ; $409f: $e7
    ld e, l                                       ; $40a0: $5d
    ld a, l                                       ; $40a1: $7d
    call $fc94                                    ; $40a2: $cd $94 $fc
    sub $a2                                       ; $40a5: $d6 $a2
    sub b                                         ; $40a7: $90
    ei                                            ; $40a8: $fb
    inc a                                         ; $40a9: $3c
    jp nc, Jump_000_1ec2                          ; $40aa: $d2 $c2 $1e

    add hl, de                                    ; $40ad: $19
    ld h, d                                       ; $40ae: $62
    db $e3                                        ; $40af: $e3
    ld h, e                                       ; $40b0: $63
    pop de                                        ; $40b1: $d1
    dec l                                         ; $40b2: $2d
    dec bc                                        ; $40b3: $0b
    ld h, l                                       ; $40b4: $65
    ld sp, $97a5                                  ; $40b5: $31 $a5 $97
    and c                                         ; $40b8: $a1
    ld d, e                                       ; $40b9: $53
    jr z, jr_064_4051                             ; $40ba: $28 $95

    ld [hl], a                                    ; $40bc: $77
    adc b                                         ; $40bd: $88
    ccf                                           ; $40be: $3f
    db $eb                                        ; $40bf: $eb
    push af                                       ; $40c0: $f5
    ld hl, sp+$6b                                 ; $40c1: $f8 $6b
    or c                                          ; $40c3: $b1
    or d                                          ; $40c4: $b2
    ld h, $ef                                     ; $40c5: $26 $ef
    ld e, l                                       ; $40c7: $5d
    inc d                                         ; $40c8: $14
    ld [hl], d                                    ; $40c9: $72
    sbc a                                         ; $40ca: $9f
    and a                                         ; $40cb: $a7
    ld h, e                                       ; $40cc: $63
    ld h, l                                       ; $40cd: $65
    ld c, l                                       ; $40ce: $4d
    ld a, d                                       ; $40cf: $7a
    and c                                         ; $40d0: $a1
    ld b, c                                       ; $40d1: $41
    or a                                          ; $40d2: $b7
    ld h, d                                       ; $40d3: $62
    di                                            ; $40d4: $f3
    xor d                                         ; $40d5: $aa
    ld a, [$a87d]                                 ; $40d6: $fa $7d $a8
    rst $28                                       ; $40d9: $ef
    ld sp, hl                                     ; $40da: $f9
    xor c                                         ; $40db: $a9
    sbc h                                         ; $40dc: $9c
    ld e, [hl]                                    ; $40dd: $5e
    ld h, l                                       ; $40de: $65
    and e                                         ; $40df: $a3
    ld a, c                                       ; $40e0: $79
    xor l                                         ; $40e1: $ad
    and $da                                       ; $40e2: $e6 $da
    ld a, a                                       ; $40e4: $7f
    and [hl]                                      ; $40e5: $a6
    and [hl]                                      ; $40e6: $a6
    xor [hl]                                      ; $40e7: $ae
    ld bc, $1bbd                                  ; $40e8: $01 $bd $1b
    ld c, l                                       ; $40eb: $4d
    dec de                                        ; $40ec: $1b
    add hl, de                                    ; $40ed: $19
    add a                                         ; $40ee: $87
    inc e                                         ; $40ef: $1c
    sbc d                                         ; $40f0: $9a
    ld d, a                                       ; $40f1: $57
    push de                                       ; $40f2: $d5
    rst $28                                       ; $40f3: $ef
    adc e                                         ; $40f4: $8b
    add hl, hl                                    ; $40f5: $29
    jp hl                                         ; $40f6: $e9


    ld [hl], c                                    ; $40f7: $71
    ld l, d                                       ; $40f8: $6a
    call nc, $cd5a                                ; $40f9: $d4 $5a $cd
    sbc l                                         ; $40fc: $9d
    scf                                           ; $40fd: $37
    dec h                                         ; $40fe: $25
    cp a                                          ; $40ff: $bf
    push de                                       ; $4100: $d5
    or d                                          ; $4101: $b2
    call c, $336b                                 ; $4102: $dc $6b $33
    or e                                          ; $4105: $b3
    ld d, a                                       ; $4106: $57
    dec d                                         ; $4107: $15
    dec h                                         ; $4108: $25
    sbc a                                         ; $4109: $9f
    ld b, $f4                                     ; $410a: $06 $f4

jr_064_410c:
    ld l, [hl]                                    ; $410c: $6e
    db $f4                                        ; $410d: $f4
    ld h, d                                       ; $410e: $62
    add sp, $0b                                   ; $410f: $e8 $0b
    and l                                         ; $4111: $a5
    ld [hl], $57                                  ; $4112: $36 $57

Call_064_4114:
    jr nz, jr_064_410c                            ; $4114: $20 $f6

    db $10                                        ; $4116: $10
    jp z, $ab42                                   ; $4117: $ca $42 $ab

    ld l, e                                       ; $411a: $6b
    xor d                                         ; $411b: $aa
    add b                                         ; $411c: $80
    inc d                                         ; $411d: $14
    rst $20                                       ; $411e: $e7
    jp nz, Jump_000_0433                          ; $411f: $c2 $33 $04

    pop af                                        ; $4122: $f1
    ld c, b                                       ; $4123: $48
    ld b, b                                       ; $4124: $40
    ld b, $84                                     ; $4125: $06 $84
    ld [c], a                                     ; $4127: $e2
    dec a                                         ; $4128: $3d
    call $9b4e                                    ; $4129: $cd $4e $9b
    ld b, b                                       ; $412c: $40
    db $ec                                        ; $412d: $ec
    xor a                                         ; $412e: $af
    db $d3                                        ; $412f: $d3
    and $8c                                       ; $4130: $e6 $8c

jr_064_4132:
    ld a, [hl]                                    ; $4132: $7e
    add d                                         ; $4133: $82
    sub h                                         ; $4134: $94
    add l                                         ; $4135: $85
    or d                                          ; $4136: $b2
    ld b, e                                       ; $4137: $43
    call nc, Call_064_571e                        ; $4138: $d4 $1e $57
    sub a                                         ; $413b: $97
    ld a, [hl]                                    ; $413c: $7e
    cp a                                          ; $413d: $bf
    rla                                           ; $413e: $17
    add l                                         ; $413f: $85
    call c, Call_000_15e7                         ; $4140: $dc $e7 $15
    ld l, d                                       ; $4143: $6a
    ld a, d                                       ; $4144: $7a
    adc l                                         ; $4145: $8d
    call nc, Call_064_7ecb                        ; $4146: $d4 $cb $7e
    inc [hl]                                      ; $4149: $34
    di                                            ; $414a: $f3
    ld b, d                                       ; $414b: $42
    add e                                         ; $414c: $83
    ld l, [hl]                                    ; $414d: $6e
    push bc                                       ; $414e: $c5
    or h                                          ; $414f: $b4
    ld [hl], c                                    ; $4150: $71
    ld l, d                                       ; $4151: $6a
    call nc, $5d0e                                ; $4152: $d4 $0e $5d
    ld [hl], e                                    ; $4155: $73
    sbc $d5                                       ; $4156: $de $d5
    rst $10                                       ; $4158: $d7
    ld c, h                                       ; $4159: $4c
    ret                                           ; $415a: $c9


    ld l, a                                       ; $415b: $6f
    dec l                                         ; $415c: $2d
    ld a, [bc]                                    ; $415d: $0a
    cp c                                          ; $415e: $b9
    rst $08                                       ; $415f: $cf
    inc hl                                        ; $4160: $23
    dec l                                         ; $4161: $2d

Call_064_4162:
    db $ec                                        ; $4162: $ec
    sub c                                         ; $4163: $91
    ld hl, $3e36                                  ; $4164: $21 $36 $3e
    ld d, $dd                                     ; $4167: $16 $dd
    ld b, d                                       ; $4169: $42
    dec de                                        ; $416a: $1b
    and a                                         ; $416b: $a7
    ld b, [hl]                                    ; $416c: $46
    dec c                                         ; $416d: $0d

Call_064_416e:
    sbc l                                         ; $416e: $9d
    ld b, d                                       ; $416f: $42
    xor c                                         ; $4170: $a9
    cp h                                          ; $4171: $bc
    db $eb                                        ; $4172: $eb
    jr z, jr_064_4132                             ; $4173: $28 $bd

    db $ec                                        ; $4175: $ec
    adc d                                         ; $4176: $8a
    ld b, $dd                                     ; $4177: $06 $dd
    adc d                                         ; $4179: $8a
    rla                                           ; $417a: $17
    add l                                         ; $417b: $85
    call c, $55e7                                 ; $417c: $dc $e7 $55
    db $d3                                        ; $417f: $d3
    ld b, [hl]                                    ; $4180: $46
    add $d0                                       ; $4181: $c6 $d0
    sub l                                         ; $4183: $95
    rla                                           ; $4184: $17
    ld a, [de]                                    ; $4185: $1a
    ld [hl], h                                    ; $4186: $74
    dec hl                                        ; $4187: $2b
    halt                                          ; $4188: $76
    ld c, $f5                                     ; $4189: $0e $f5
    sub c                                         ; $418b: $91
    ccf                                           ; $418c: $3f
    rst $28                                       ; $418d: $ef
    dec e                                         ; $418e: $1d
    db $fc                                        ; $418f: $fc
    xor c                                         ; $4190: $a9
    sbc h                                         ; $4191: $9c
    dec bc                                        ; $4192: $0b
    dec c                                         ; $4193: $0d
    cp d                                          ; $4194: $ba
    dec d                                         ; $4195: $15
    sbc e                                         ; $4196: $9b
    add a                                         ; $4197: $87
    ld a, [$52a8]                                 ; $4198: $fa $a8 $52
    sub l                                         ; $419b: $95
    ld [hl], e                                    ; $419c: $73
    sbc a                                         ; $419d: $9f
    rst $10                                       ; $419e: $d7
    ld c, b                                       ; $419f: $48
    cp l                                          ; $41a0: $bd
    ld a, b                                       ; $41a1: $78
    and c                                         ; $41a2: $a1
    adc h                                         ; $41a3: $8c
    ld d, e                                       ; $41a4: $53
    and e                                         ; $41a5: $a3
    sub $6a                                       ; $41a6: $d6 $6a
    xor $bc                                       ; $41a8: $ee $bc
    add hl, hl                                    ; $41aa: $29
    ld sp, hl                                     ; $41ab: $f9
    xor l                                         ; $41ac: $ad
    sub [hl]                                      ; $41ad: $96
    push hl                                       ; $41ae: $e5
    ld a, [hl]                                    ; $41af: $7e
    ld bc, $f5e7                                  ; $41b0: $01 $e7 $f5
    xor $b9                                       ; $41b3: $ee $b9
    add e                                         ; $41b5: $83
    xor d                                         ; $41b6: $aa
    sub b                                         ; $41b7: $90
    adc $35                                       ; $41b8: $ce $35
    ld d, d                                       ; $41ba: $52

jr_064_41bb:
    ld d, e                                       ; $41bb: $53
    adc d                                         ; $41bc: $8a
    db $eb                                        ; $41bd: $eb
    ld h, b                                       ; $41be: $60
    jp z, $9dd8                                   ; $41bf: $ca $d8 $9d

    rst $30                                       ; $41c2: $f7
    jp c, $a863                                   ; $41c3: $da $63 $a8

    ld b, e                                       ; $41c6: $43
    ld a, l                                       ; $41c7: $7d
    ld sp, $17a5                                  ; $41c8: $31 $a5 $17
    rst $20                                       ; $41cb: $e7
    ld b, d                                       ; $41cc: $42
    ld e, c                                       ; $41cd: $59
    inc hl                                        ; $41ce: $23
    push af                                       ; $41cf: $f5
    ld [c], a                                     ; $41d0: $e2
    inc e                                         ; $41d1: $1c
    add d                                         ; $41d2: $82
    ld c, h                                       ; $41d3: $4c
    add hl, de                                    ; $41d4: $19
    db $dd                                        ; $41d5: $dd
    rla                                           ; $41d6: $17
    ld b, e                                       ; $41d7: $43
    rra                                           ; $41d8: $1f
    ld [$9a8b], a                                 ; $41d9: $ea $8b $9a
    inc sp                                        ; $41dc: $33
    xor a                                         ; $41dd: $af
    ld a, [hl+]                                   ; $41de: $2a
    ld c, d                                       ; $41df: $4a
    ld a, $0d                                     ; $41e0: $3e $0d
    add sp, -$23                                  ; $41e2: $e8 $dd
    add sp, -$5f                                  ; $41e4: $e8 $a1
    ld [hl], e                                    ; $41e6: $73
    ld sp, $e754                                  ; $41e7: $31 $54 $e7
    db $10                                        ; $41ea: $10
    jp z, $ef7e                                   ; $41eb: $ca $7e $ef

    ld e, $7a                                     ; $41ee: $1e $7a
    jr nz, @+$27                                  ; $41f0: $20 $25

    adc l                                         ; $41f2: $8d
    ld h, b                                       ; $41f3: $60
    xor c                                         ; $41f4: $a9
    adc $a1                                       ; $41f5: $ce $a1
    ld a, $f2                                     ; $41f7: $3e $f2
    rst $20                                       ; $41f9: $e7
    cp l                                          ; $41fa: $bd
    db $eb                                        ; $41fb: $eb
    jr z, jr_064_41bb                             ; $41fc: $28 $bd

    inc c                                         ; $41fe: $0c
    dec a                                         ; $41ff: $3d
    sub b                                         ; $4200: $90
    sub d                                         ; $4201: $92
    ld b, [hl]                                    ; $4202: $46
    or b                                          ; $4203: $b0

jr_064_4204:
    ld d, h                                       ; $4204: $54
    rst $20                                       ; $4205: $e7
    ld d, b                                       ; $4206: $50
    rra                                           ; $4207: $1f

jr_064_4208:
    ld d, l                                       ; $4208: $55
    xor d                                         ; $4209: $aa
    ld [hl], d                                    ; $420a: $72
    ld l, $94                                     ; $420b: $2e $94
    ld [hl], c                                    ; $420d: $71
    ld l, d                                       ; $420e: $6a
    call nc, Call_000_29d0                        ; $420f: $d4 $d0 $29
    sub h                                         ; $4212: $94
    jp z, Jump_064_743b                           ; $4213: $ca $3b $74

    call Call_064_5779                            ; $4216: $cd $79 $57
    ld e, a                                       ; $4219: $5f
    inc sp                                        ; $421a: $33
    dec h                                         ; $421b: $25
    cp a                                          ; $421c: $bf
    or l                                          ; $421d: $b5
    jr z, jr_064_4204                             ; $421e: $28 $e4

    ld a, $af                                     ; $4220: $3e $af
    pop de                                        ; $4222: $d1
    cp a                                          ; $4223: $bf
    and b                                         ; $4224: $a0
    add a                                         ; $4225: $87
    ld a, [hl]                                    ; $4226: $7e
    xor $17                                       ; $4227: $ee $17
    ld l, l                                       ; $4229: $6d
    ld a, [$9fc8]                                 ; $422a: $fa $c8 $9f
    inc bc                                        ; $422d: $03
    add hl, hl                                    ; $422e: $29
    ld l, c                                       ; $422f: $69
    inc b                                         ; $4230: $04
    ld c, e                                       ; $4231: $4b
    db $ed                                        ; $4232: $ed
    ld d, [hl]                                    ; $4233: $56
    dec d                                         ; $4234: $15
    ld d, h                                       ; $4235: $54
    db $10                                        ; $4236: $10
    ld sp, $bbdf                                  ; $4237: $31 $df $bb
    ld e, h                                       ; $423a: $5c
    sbc a                                         ; $423b: $9f
    ld a, [$d432]                                 ; $423c: $fa $32 $d4
    ld d, a                                       ; $423f: $57
    rst $38                                       ; $4240: $ff
    db $d3                                        ; $4241: $d3
    dec a                                         ; $4242: $3d
    ld [hl], a                                    ; $4243: $77
    ld d, b                                       ; $4244: $50
    dec d                                         ; $4245: $15
    ld [hl], d                                    ; $4246: $72
    jr nz, @+$27                                  ; $4247: $20 $25

    adc l                                         ; $4249: $8d
    ld h, b                                       ; $424a: $60
    xor c                                         ; $424b: $a9
    adc $85                                       ; $424c: $ce $85
    or d                                          ; $424e: $b2
    ld [c], a                                     ; $424f: $e2
    rst $20                                       ; $4250: $e7
    pop af                                        ; $4251: $f1
    call c, Call_064_5541                         ; $4252: $dc $41 $55
    ret z                                         ; $4255: $c8

    add l                                         ; $4256: $85
    ld d, [hl]                                    ; $4257: $56
    ld d, l                                       ; $4258: $55
    add hl, bc                                    ; $4259: $09
    ld de, $ef3b                                  ; $425a: $11 $3b $ef
    ld e, l                                       ; $425d: $5d
    sub e                                         ; $425e: $93
    ld a, [de]                                    ; $425f: $1a
    or l                                          ; $4260: $b5
    ld b, e                                       ; $4261: $43
    rst $10                                       ; $4262: $d7
    sbc h                                         ; $4263: $9c
    ld [hl], a                                    ; $4264: $77
    push af                                       ; $4265: $f5
    dec [hl]                                      ; $4266: $35
    ld d, e                                       ; $4267: $53
    ld a, [c]                                     ; $4268: $f2
    ld e, e                                       ; $4269: $5b
    dec bc                                        ; $426a: $0b
    ld h, l                                       ; $426b: $65
    ld sp, $97a5                                  ; $426c: $31 $a5 $97
    and c                                         ; $426f: $a1
    ld d, e                                       ; $4270: $53
    jr z, jr_064_4208                             ; $4271: $28 $95

    rlca                                          ; $4273: $07
    ld d, d                                       ; $4274: $52
    jp nc, $9608                                  ; $4275: $d2 $08 $96

    jp c, Jump_000_2aad                           ; $4278: $da $ad $2a

    xor b                                         ; $427b: $a8
    jr nz, jr_064_42e0                            ; $427c: $20 $62

    ld e, [hl]                                    ; $427e: $5e
    sub h                                         ; $427f: $94
    ld a, a                                       ; $4280: $7f
    ld h, h                                       ; $4281: $64
    adc b                                         ; $4282: $88
    adc l                                         ; $4283: $8d
    adc a                                         ; $4284: $8f
    ld b, l                                       ; $4285: $45
    or a                                          ; $4286: $b7
    inc l                                         ; $4287: $2c
    ld a, [bc]                                    ; $4288: $0a
    cp c                                          ; $4289: $b9
    rst $08                                       ; $428a: $cf

Call_064_428b:
    xor e                                         ; $428b: $ab
    ld e, $82                                     ; $428c: $1e $82
    ld a, b                                       ; $428e: $78
    jr nz, @+$27                                  ; $428f: $20 $25

    adc l                                         ; $4291: $8d
    ld h, b                                       ; $4292: $60
    xor c                                         ; $4293: $a9
    adc $85                                       ; $4294: $ce $85
    ld [hl-], a                                   ; $4296: $32
    dec b                                         ; $4297: $05
    and l                                         ; $4298: $a5
    ld a, b                                       ; $4299: $78
    jr nc, jr_064_42a0                            ; $429a: $30 $04

    ld e, c                                       ; $429c: $59
    ld l, b                                       ; $429d: $68
    ld d, l                                       ; $429e: $55
    sub l                                         ; $429f: $95

Jump_064_42a0:
jr_064_42a0:
    db $10                                        ; $42a0: $10
    ld [hl], c                                    ; $42a1: $71
    ld l, l                                       ; $42a2: $6d
    add h                                         ; $42a3: $84
    ld [hl], d                                    ; $42a4: $72
    cp a                                          ; $42a5: $bf
    rla                                           ; $42a6: $17
    add l                                         ; $42a7: $85
    call c, $55e7                                 ; $42a8: $dc $e7 $55
    rrca                                          ; $42ab: $0f
    ld b, c                                       ; $42ac: $41
    halt                                          ; $42ad: $76
    ld d, c                                       ; $42ae: $51
    add sp, $10                                   ; $42af: $e8 $10
    halt                                          ; $42b1: $76
    ldh a, [rNR22]                                ; $42b2: $f0 $17
    ld e, b                                       ; $42b4: $58
    jr z, @-$43                                   ; $42b5: $28 $bb

    jr z, jr_064_432d                             ; $42b7: $28 $74

    ld [$26bb], sp                                ; $42b9: $08 $bb $26
    and c                                         ; $42bc: $a1
    push de                                       ; $42bd: $d5
    add c                                         ; $42be: $81
    xor b                                         ; $42bf: $a8
    ld e, [hl]                                    ; $42c0: $5e
    ld l, c                                       ; $42c1: $69
    db $e3                                        ; $42c2: $e3
    call nc, Call_000_1da8                        ; $42c3: $d4 $a8 $1d
    cp d                                          ; $42c6: $ba
    and $bc                                       ; $42c7: $e6 $bc
    xor e                                         ; $42c9: $ab
    xor a                                         ; $42ca: $af
    sbc c                                         ; $42cb: $99
    sub d                                         ; $42cc: $92
    rst $18                                       ; $42cd: $df
    ld e, d                                       ; $42ce: $5a
    inc d                                         ; $42cf: $14
    ld [hl], d                                    ; $42d0: $72
    sbc a                                         ; $42d1: $9f
    ld b, a                                       ; $42d2: $47
    ld e, d                                       ; $42d3: $5a
    ret c                                         ; $42d4: $d8

jr_064_42d5:
    inc hl                                        ; $42d5: $23
    ld b, e                                       ; $42d6: $43
    ld l, h                                       ; $42d7: $6c
    ld a, h                                       ; $42d8: $7c
    inc l                                         ; $42d9: $2c
    cp d                                          ; $42da: $ba
    ld h, l                                       ; $42db: $65
    and c                                         ; $42dc: $a1
    inc l                                         ; $42dd: $2c
    and [hl]                                      ; $42de: $a6
    db $f4                                        ; $42df: $f4

jr_064_42e0:
    ld [hl-], a                                   ; $42e0: $32
    ld [hl], h                                    ; $42e1: $74
    ld a, [bc]                                    ; $42e2: $0a
    and l                                         ; $42e3: $a5
    ld a, [c]                                     ; $42e4: $f2
    ld l, $0a                                     ; $42e5: $2e $0a
    dec e                                         ; $42e7: $1d
    jp nz, $fe0e                                  ; $42e8: $c2 $0e $fe

    ld [bc], a                                    ; $42eb: $02
    ld [hl], e                                    ; $42ec: $73
    rst $28                                       ; $42ed: $ef
    adc $5d                                       ; $42ee: $ce $5d
    inc d                                         ; $42f0: $14
    ld a, [hl-]                                   ; $42f1: $3a
    add h                                         ; $42f2: $84
    ld e, l                                       ; $42f3: $5d
    sub e                                         ; $42f4: $93
    ret nc                                        ; $42f5: $d0

    ld [$5440], a                                 ; $42f6: $ea $40 $54
    xor a                                         ; $42f9: $af
    rst $30                                       ; $42fa: $f7
    dec bc                                        ; $42fb: $0b
    ld l, l                                       ; $42fc: $6d
    ld a, [$faaa]                                 ; $42fd: $fa $aa $fa
    ld a, l                                       ; $4300: $7d
    inc c                                         ; $4301: $0c
    ld a, l                                       ; $4302: $7d
    sbc a                                         ; $4303: $9f
    ld d, a                                       ; $4304: $57
    sbc d                                         ; $4305: $9a
    db $d3                                        ; $4306: $d3
    ld [hl], c                                    ; $4307: $71
    jr nc, jr_064_42d5                            ; $4308: $30 $cb

    sbc [hl]                                      ; $430a: $9e
    ld e, a                                       ; $430b: $5f
    and b                                         ; $430c: $a0
    xor d                                         ; $430d: $aa
    xor c                                         ; $430e: $a9
    jr nz, @+$53                                  ; $430f: $20 $51

    ld b, $e1                                     ; $4311: $06 $e1
    rst $08                                       ; $4313: $cf
    db $10                                        ; $4314: $10
    ld h, h                                       ; $4315: $64
    and c                                         ; $4316: $a1
    inc c                                         ; $4317: $0c
    push af                                       ; $4318: $f5
    sub c                                         ; $4319: $91
    ccf                                           ; $431a: $3f
    rla                                           ; $431b: $17
    ld [hl], l                                    ; $431c: $75
    and a                                         ; $431d: $a7
    rla                                           ; $431e: $17
    rst $38                                       ; $431f: $ff
    ld e, [hl]                                    ; $4320: $5e
    ld e, $bd                                     ; $4321: $1e $bd
    ld b, e                                       ; $4323: $43
    ld hl, $ce8d                                  ; $4324: $21 $8d $ce
    or e                                          ; $4327: $b3
    halt                                          ; $4328: $76
    ld c, l                                       ; $4329: $4d
    ld l, d                                       ; $432a: $6a
    ld a, d                                       ; $432b: $7a
    ld [hl], a                                    ; $432c: $77

jr_064_432d:
    inc d                                         ; $432d: $14
    ld a, [c]                                     ; $432e: $f2
    pop de                                        ; $432f: $d1
    ei                                            ; $4330: $fb
    rst $08                                       ; $4331: $cf
    dec d                                         ; $4332: $15
    adc b                                         ; $4333: $88
    sbc l                                         ; $4334: $9d
    ld b, e                                       ; $4335: $43
    jr z, jr_064_43b3                             ; $4336: $28 $7b

Jump_064_4338:
    db $f4                                        ; $4338: $f4
    ld c, $85                                     ; $4339: $0e $85
    inc [hl]                                      ; $433b: $34
    ld l, $0a                                     ; $433c: $2e $0a
    cp c                                          ; $433e: $b9
    rst $08                                       ; $433f: $cf
    ld d, e                                       ; $4340: $53
    cp a                                          ; $4341: $bf
    or d                                          ; $4342: $b2
    ld h, a                                       ; $4343: $67
    ld e, c                                       ; $4344: $59
    jp $a635                                      ; $4345: $c3 $35 $a6


    ld h, h                                       ; $4348: $64
    ld [hl], c                                    ; $4349: $71
    xor a                                         ; $434a: $af
    ld a, $7b                                     ; $434b: $3e $7b
    ld d, a                                       ; $434d: $57
    inc [hl]                                      ; $434e: $34
    add sp, $56                                   ; $434f: $e8 $56
    cp h                                          ; $4351: $bc
    ld [bc], a                                    ; $4352: $02
    or c                                          ; $4353: $b1
    ld [hl], e                                    ; $4354: $73
    ld [$8f65], sp                                ; $4355: $08 $65 $8f
    sbc $a1                                       ; $4358: $de $a1

jr_064_435a:
    sub b                                         ; $435a: $90
    add $45                                       ; $435b: $c6 $45
    ld hl, $79f7                                  ; $435d: $21 $f7 $79
    adc l                                         ; $4360: $8d
    call nc, $678b                                ; $4361: $d4 $8b $67
    ld e, [hl]                                    ; $4364: $5e
    ld l, b                                       ; $4365: $68
    ret nc                                        ; $4366: $d0

    xor l                                         ; $4367: $ad
    ld hl, sp-$14                                 ; $4368: $f8 $ec
    ld e, l                                       ; $436a: $5d
    ld a, [de]                                    ; $436b: $1a
    sub d                                         ; $436c: $92
    ld d, a                                       ; $436d: $57
    jr nz, jr_064_43e6                            ; $436e: $20 $76

    ld c, $a1                                     ; $4370: $0e $a1
    db $ec                                        ; $4372: $ec
    pop de                                        ; $4373: $d1
    dec sp                                        ; $4374: $3b
    inc d                                         ; $4375: $14
    jp nc, Jump_000_28b8                          ; $4376: $d2 $b8 $28

    db $e4                                        ; $4379: $e4
    ld a, $af                                     ; $437a: $3e $af
    xor d                                         ; $437c: $aa
    rst $18                                       ; $437d: $df
    ldh a, [$2c]                                  ; $437e: $f0 $2c
    ld d, e                                       ; $4380: $53
    ld hl, $51d9                                  ; $4381: $21 $d9 $51
    ld h, h                                       ; $4384: $64
    push bc                                       ; $4385: $c5
    ld a, e                                       ; $4386: $7b
    adc h                                         ; $4387: $8c
    dec sp                                        ; $4388: $3b
    rst $18                                       ; $4389: $df
    ld c, c                                       ; $438a: $49
    ld a, l                                       ; $438b: $7d
    ret c                                         ; $438c: $d8

    inc hl                                        ; $438d: $23
    xor l                                         ; $438e: $ad
    xor d                                         ; $438f: $aa
    rla                                           ; $4390: $17
    jp z, Jump_064_4338                           ; $4391: $ca $38 $43

    rst $00                                       ; $4394: $c7
    add a                                         ; $4395: $87
    ld [hl+], a                                   ; $4396: $22
    jr c, jr_064_43ae                             ; $4397: $38 $15

    sub d                                         ; $4399: $92
    dec l                                         ; $439a: $2d
    ld a, $7b                                     ; $439b: $3e $7b
    rla                                           ; $439d: $17
    ld [hl], l                                    ; $439e: $75
    ld c, l                                       ; $439f: $4d
    pop hl                                        ; $43a0: $e1
    dec d                                         ; $43a1: $15
    adc b                                         ; $43a2: $88
    sbc l                                         ; $43a3: $9d
    ld b, e                                       ; $43a4: $43
    jr z, jr_064_4422                             ; $43a5: $28 $7b

    db $f4                                        ; $43a7: $f4
    ld c, $85                                     ; $43a8: $0e $85
    inc [hl]                                      ; $43aa: $34
    ld l, $0a                                     ; $43ab: $2e $0a
    cp c                                          ; $43ad: $b9

jr_064_43ae:
    rst $08                                       ; $43ae: $cf
    adc e                                         ; $43af: $8b
    ld b, d                                       ; $43b0: $42

jr_064_43b1:
    ld d, [hl]                                    ; $43b1: $56
    ld l, d                                       ; $43b2: $6a

jr_064_43b3:
    pop af                                        ; $43b3: $f1
    ld a, $4f                                     ; $43b4: $3e $4f
    rla                                           ; $43b6: $17
    xor h                                         ; $43b7: $ac
    dec e                                         ; $43b8: $1d
    ld e, d                                       ; $43b9: $5a
    dec l                                         ; $43ba: $2d
    ld c, a                                       ; $43bb: $4f
    dec b                                         ; $43bc: $05
    adc c                                         ; $43bd: $89
    ld [hl-], a                                   ; $43be: $32
    ld [$867f], sp                                ; $43bf: $08 $7f $86
    jr nz, jr_064_435a                            ; $43c2: $20 $96

    ld a, e                                       ; $43c4: $7b
    ld l, l                                       ; $43c5: $6d
    jr nz, @-$43                                  ; $43c6: $20 $bb

    ld d, $c9                                     ; $43c8: $16 $c9
    ret nc                                        ; $43ca: $d0

    pop de                                        ; $43cb: $d1
    ld b, d                                       ; $43cc: $42
    ld a, [de]                                    ; $43cd: $1a
    rla                                           ; $43ce: $17
    jp z, $c410                                   ; $43cf: $ca $10 $c4

    dec sp                                        ; $43d2: $3b
    ld hl, sp+$0b                                 ; $43d3: $f8 $0b
    or h                                          ; $43d5: $b4
    ld [bc], a                                    ; $43d6: $02
    ld [$862f], sp                                ; $43d7: $08 $2f $86
    ld [$183a], a                                 ; $43da: $ea $3a $18
    ld b, d                                       ; $43dd: $42
    ld l, l                                       ; $43de: $6d
    push af                                       ; $43df: $f5
    xor a                                         ; $43e0: $af
    ld sp, $a18f                                  ; $43e1: $31 $8f $a1
    adc a                                         ; $43e4: $8f
    and h                                         ; $43e5: $a4

jr_064_43e6:
    jp nc, $f7d3                                  ; $43e6: $d2 $d3 $f7

    dec bc                                        ; $43e9: $0b
    rst $10                                       ; $43ea: $d7
    cp c                                          ; $43eb: $b9
    xor e                                         ; $43ec: $ab
    ldh a, [$3c]                                  ; $43ed: $f0 $3c
    sub [hl]                                      ; $43ef: $96
    ld sp, $35f4                                  ; $43f0: $31 $f4 $35
    ld e, h                                       ; $43f3: $5c
    ld h, e                                       ; $43f4: $63
    ld c, d                                       ; $43f5: $4a
    ld d, $f7                                     ; $43f6: $16 $f7
    ld [$f0ca], a                                 ; $43f8: $ea $ca $f0
    ld e, b                                       ; $43fb: $58
    xor $5d                                       ; $43fc: $ee $5d
    jr jr_064_43b1                                ; $43fe: $18 $b1

    or e                                          ; $4400: $b3
    ld b, e                                       ; $4401: $43
    sub c                                         ; $4402: $91
    dec a                                         ; $4403: $3d

jr_064_4404:
    jr nz, jr_064_4464                            ; $4404: $20 $5e

    jp $a531                                      ; $4406: $c3 $31 $a5


    cp b                                          ; $4409: $b8
    ld d, a                                       ; $440a: $57
    rst $20                                       ; $440b: $e7
    and d                                         ; $440c: $a2
    sub b                                         ; $440d: $90
    ei                                            ; $440e: $fb
    cp h                                          ; $440f: $bc
    xor b                                         ; $4410: $a8
    add hl, sp                                    ; $4411: $39
    res 2, d                                      ; $4412: $cb $92
    and d                                         ; $4414: $a2
    sub h                                         ; $4415: $94
    rla                                           ; $4416: $17
    ld a, [de]                                    ; $4417: $1a
    ld [hl], h                                    ; $4418: $74
    dec hl                                        ; $4419: $2b
    halt                                          ; $441a: $76
    adc [hl]                                      ; $441b: $8e
    and c                                         ; $441c: $a1
    rst $28                                       ; $441d: $ef
    di                                            ; $441e: $f3
    ld l, d                                       ; $441f: $6a
    ld c, h                                       ; $4420: $4c
    adc c                                         ; $4421: $89

jr_064_4422:
    ld a, l                                       ; $4422: $7d
    xor a                                         ; $4423: $af
    dec a                                         ; $4424: $3d
    add [hl]                                      ; $4425: $86
    ld a, [hl-]                                   ; $4426: $3a
    call nc, $bea7                                ; $4427: $d4 $a7 $be
    inc l                                         ; $442a: $2c
    ld l, d                                       ; $442b: $6a
    ld l, $34                                     ; $442c: $2e $34
    add sp, $56                                   ; $442e: $e8 $56
    ld l, h                                       ; $4430: $6c
    ld e, [hl]                                    ; $4431: $5e
    ld l, b                                       ; $4432: $68
    dec c                                         ; $4433: $0d
    add [hl]                                      ; $4434: $86
    sub [hl]                                      ; $4435: $96
    dec h                                         ; $4436: $25
    inc d                                         ; $4437: $14
    add [hl]                                      ; $4438: $86
    ld [c], a                                     ; $4439: $e2
    sub c                                         ; $443a: $91
    ld d, h                                       ; $443b: $54
    ld a, [hl-]                                   ; $443c: $3a
    sbc d                                         ; $443d: $9a

jr_064_443e:
    ld [hl], $f5                                  ; $443e: $36 $f5
    ld h, l                                       ; $4440: $65
    xor b                                         ; $4441: $a8
    xor a                                         ; $4442: $af
    inc [hl]                                      ; $4443: $34
    rla                                           ; $4444: $17
    inc bc                                        ; $4445: $03
    ld a, [hl-]                                   ; $4446: $3a
    cp l                                          ; $4447: $bd
    rst $00                                       ; $4448: $c7
    jr c, jr_064_443e                             ; $4449: $38 $f3

    ld e, b                                       ; $444b: $58
    sub a                                         ; $444c: $97
    ld [c], a                                     ; $444d: $e2
    db $f4                                        ; $444e: $f4
    ld b, d                                       ; $444f: $42
    add e                                         ; $4450: $83
    ld l, [hl]                                    ; $4451: $6e
    push bc                                       ; $4452: $c5
    rst $30                                       ; $4453: $f7
    jp c, $a863                                   ; $4454: $da $63 $a8

    ld b, e                                       ; $4457: $43
    ld a, l                                       ; $4458: $7d
    dec c                                         ; $4459: $0d
    sub a                                         ; $445a: $97
    ld h, [hl]                                    ; $445b: $66
    ld c, [hl]                                    ; $445c: $4e

jr_064_445d:
    ld b, d                                       ; $445d: $42
    jp hl                                         ; $445e: $e9


    ld e, [hl]                                    ; $445f: $5e
    ld h, h                                       ; $4460: $64
    ld a, d                                       ; $4461: $7a
    and a                                         ; $4462: $a7
    db $ed                                        ; $4463: $ed

jr_064_4464:
    ld l, c                                       ; $4464: $69
    ld c, $f5                                     ; $4465: $0e $f5
    dec [hl]                                      ; $4467: $35
    ld e, h                                       ; $4468: $5c
    inc [hl]                                      ; $4469: $34
    add d                                         ; $446a: $82
    ld e, [hl]                                    ; $446b: $5e
    inc d                                         ; $446c: $14
    ld [hl-], a                                   ; $446d: $32
    jp z, $bf7f                                   ; $446e: $ca $7f $bf

    rst $10                                       ; $4471: $d7
    ld d, c                                       ; $4472: $51
    ld a, d                                       ; $4473: $7a
    add hl, de                                    ; $4474: $19
    ld e, d                                       ; $4475: $5a
    sub [hl]                                      ; $4476: $96
    ld d, b                                       ; $4477: $50
    jr jr_064_4404                                ; $4478: $18 $8a

    and a                                         ; $447a: $a7
    jp nz, Jump_000_00d3                          ; $447b: $c2 $d3 $00

    ld sp, hl                                     ; $447e: $f9
    inc c                                         ; $447f: $0c
    ld b, c                                       ; $4480: $41
    or $a3                                        ; $4481: $f6 $a3
    add hl, hl                                    ; $4483: $29
    ld h, e                                       ; $4484: $63
    ld [hl], a                                    ; $4485: $77
    ld l, $94                                     ; $4486: $2e $94
    add c                                         ; $4488: $81
    sub h                                         ; $4489: $94
    inc [hl]                                      ; $448a: $34
    add d                                         ; $448b: $82
    and l                                         ; $448c: $a5
    ld a, [hl-]                                   ; $448d: $3a
    rla                                           ; $448e: $17
    add l                                         ; $448f: $85
    call c, Call_064_75e7                         ; $4490: $dc $e7 $75
    ld l, d                                       ; $4493: $6a
    push af                                       ; $4494: $f5
    sub h                                         ; $4495: $94
    pop de                                        ; $4496: $d1
    ld e, l                                       ; $4497: $5d
    rst $00                                       ; $4498: $c7
    jr z, jr_064_44bf                             ; $4499: $28 $24

    ld h, $48                                     ; $449b: $26 $48
    or c                                          ; $449d: $b1
    call c, $26bb                                 ; $449e: $dc $bb $26
    dec [hl]                                      ; $44a1: $35
    ld l, d                                       ; $44a2: $6a

jr_064_44a3:
    ld d, a                                       ; $44a3: $57
    or h                                          ; $44a4: $b4
    and $de                                       ; $44a5: $e6 $de
    sbc l                                         ; $44a7: $9d
    cp e                                          ; $44a8: $bb
    call c, Call_000_28b8                         ; $44a9: $dc $b8 $28
    db $e4                                        ; $44ac: $e4
    ld a, $2f                                     ; $44ad: $3e $2f
    and [hl]                                      ; $44af: $a6
    db $f4                                        ; $44b0: $f4
    ld [c], a                                     ; $44b1: $e2
    ld a, e                                       ; $44b2: $7b
    rst $10                                       ; $44b3: $d7
    and h                                         ; $44b4: $a4
    ld b, [hl]                                    ; $44b5: $46
    xor l                                         ; $44b6: $ad
    sbc l                                         ; $44b7: $9d
    ld c, d                                       ; $44b8: $4a
    ld c, a                                       ; $44b9: $4f
    cpl                                           ; $44ba: $2f
    ld a, [bc]                                    ; $44bb: $0a
    cp c                                          ; $44bc: $b9
    rst $08                                       ; $44bd: $cf
    dec hl                                        ; $44be: $2b

jr_064_44bf:
    call $80c5                                    ; $44bf: $cd $c5 $80
    ld c, [hl]                                    ; $44c2: $4e
    adc a                                         ; $44c3: $8f
    and c                                         ; $44c4: $a1
    ld c, a                                       ; $44c5: $4f
    jr z, jr_064_445d                             ; $44c6: $28 $95

    cp l                                          ; $44c8: $bd
    ld hl, sp-$09                                 ; $44c9: $f8 $f7
    ld b, d                                       ; $44cb: $42
    sbc e                                         ; $44cc: $9b
    ld a, e                                       ; $44cd: $7b
    ld [hl], a                                    ; $44ce: $77
    adc [hl]                                      ; $44cf: $8e
    ld d, e                                       ; $44d0: $53
    and e                                         ; $44d1: $a3
    halt                                          ; $44d2: $76
    sbc l                                         ; $44d3: $9d
    and l                                         ; $44d4: $a5
    ld [hl], d                                    ; $44d5: $72
    ld a, d                                       ; $44d6: $7a
    ld d, c                                       ; $44d7: $51
    ret z                                         ; $44d8: $c8

    ld a, l                                       ; $44d9: $7d
    ld e, [hl]                                    ; $44da: $5e
    ld l, c                                       ; $44db: $69
    adc [hl]                                      ; $44dc: $8e
    and c                                         ; $44dd: $a1
    scf                                           ; $44de: $37
    ld a, [hl]                                    ; $44df: $7e
    pop af                                        ; $44e0: $f1
    ld b, d                                       ; $44e1: $42
    add hl, de                                    ; $44e2: $19
    ld b, l                                       ; $44e3: $45
    jr nc, jr_064_44a3                            ; $44e4: $30 $bd

    ld d, [hl]                                    ; $44e6: $56
    ld [hl], e                                    ; $44e7: $73
    ld [$c5e2], sp                                ; $44e8: $08 $e2 $c5
    cp a                                          ; $44eb: $bf
    sub a                                         ; $44ec: $97
    ld a, e                                       ; $44ed: $7b
    sub a                                         ; $44ee: $97
    scf                                           ; $44ef: $37
    ld [hl], e                                    ; $44f0: $73
    xor b                                         ; $44f1: $a8
    rst $08                                       ; $44f2: $cf
    add hl, sp                                    ; $44f3: $39
    add [hl]                                      ; $44f4: $86
    ld e, $a5                                     ; $44f5: $1e $a5
    or c                                          ; $44f7: $b1
    xor $31                                       ; $44f8: $ee $31
    ld c, $41                                     ; $44fa: $0e $41
    cp h                                          ; $44fc: $bc
    ld hl, sp-$09                                 ; $44fd: $f8 $f7
    ld b, d                                       ; $44ff: $42
    dec de                                        ; $4500: $1b
    and a                                         ; $4501: $a7
    ld b, [hl]                                    ; $4502: $46
    xor l                                         ; $4503: $ad
    push de                                       ; $4504: $d5
    call c, $5379                                 ; $4505: $dc $79 $53
    ld a, [c]                                     ; $4508: $f2
    ld e, e                                       ; $4509: $5b
    dec l                                         ; $450a: $2d
    res 4, d                                      ; $450b: $cb $a2
    sub b                                         ; $450d: $90
    ei                                            ; $450e: $fb
    cp h                                          ; $450f: $bc
    add [hl]                                      ; $4510: $86
    ld d, l                                       ; $4511: $55
    ld d, d                                       ; $4512: $52
    ld [hl+], a                                   ; $4513: $22
    or $10                                        ; $4514: $f6 $10
    ld l, d                                       ; $4516: $6a
    push af                                       ; $4517: $f5
    cp l                                          ; $4518: $bd
    ld b, e                                       ; $4519: $43
    ld hl, $7bd9                                  ; $451a: $21 $d9 $7b
    ld a, [hl]                                    ; $451d: $7e
    ld a, [hl+]                                   ; $451e: $2a
    ld l, d                                       ; $451f: $6a
    ld a, [hl-]                                   ; $4520: $3a
    rla                                           ; $4521: $17
    dec de                                        ; $4522: $1b
    ld d, a                                       ; $4523: $57
    ld bc, $fb2d                                  ; $4524: $01 $2d $fb
    pop de                                        ; $4527: $d1
    db $10                                        ; $4528: $10
    call nz, Call_064_7f8b                        ; $4529: $c4 $8b $7f
    cpl                                           ; $452c: $2f
    adc e                                         ; $452d: $8b
    and c                                         ; $452e: $a1
    ld a, [hl-]                                   ; $452f: $3a
    rst $30                                       ; $4530: $f7
    ld a, c                                       ; $4531: $79
    xor b                                         ; $4532: $a8
    adc a                                         ; $4533: $8f
    db $fc                                        ; $4534: $fc
    cp c                                          ; $4535: $b9
    ld hl, sp-$09                                 ; $4536: $f8 $f7
    jp nz, $284b                                  ; $4538: $c2 $4b $28

    inc c                                         ; $453b: $0c
    add l                                         ; $453c: $85
    ld [hl], a                                    ; $453d: $77
    call c, Call_064_61e8                         ; $453e: $dc $e8 $61
    ld d, c                                       ; $4541: $51
    ld [hl], a                                    ; $4542: $77
    sbc d                                         ; $4543: $9a
    ld [hl], $7a                                  ; $4544: $36 $7a
    ld e, b                                       ; $4546: $58
    jp $d698                                      ; $4547: $c3 $98 $d6


    cp [hl]                                       ; $454a: $be
    or $18                                        ; $454b: $f6 $18
    ld [$5f50], a                                 ; $454d: $ea $50 $5f
    inc b                                         ; $4550: $04
    add d                                         ; $4551: $82
    adc $a1                                       ; $4552: $ce $a1
    ld h, l                                       ; $4554: $65
    add hl, bc                                    ; $4555: $09
    add l                                         ; $4556: $85
    and c                                         ; $4557: $a1
    ld a, b                                       ; $4558: $78
    jp z, $bee8                                   ; $4559: $ca $e8 $be

    ld d, b                                       ; $455c: $50
    add [hl]                                      ; $455d: $86
    ld e, [hl]                                    ; $455e: $5e
    ld b, d                                       ; $455f: $42
    ld h, c                                       ; $4560: $61
    jr z, jr_064_4581                             ; $4561: $28 $1e

    ld c, b                                       ; $4563: $48
    ld c, c                                       ; $4564: $49
    inc hl                                        ; $4565: $23
    ld e, b                                       ; $4566: $58
    xor d                                         ; $4567: $aa
    ld [hl], e                                    ; $4568: $73
    ld sp, $3a08                                  ; $4569: $31 $08 $3a
    add a                                         ; $456c: $87
    ld a, [$8c74]                                 ; $456d: $fa $74 $8c
    ld b, d                                       ; $4570: $42
    ld h, d                                       ; $4571: $62
    add d                                         ; $4572: $82
    inc d                                         ; $4573: $14
    adc e                                         ; $4574: $8b
    or $b5                                        ; $4575: $f6 $b5
    jp hl                                         ; $4577: $e9


    adc e                                         ; $4578: $8b
    sbc d                                         ; $4579: $9a
    cp c                                          ; $457a: $b9
    inc de                                        ; $457b: $13
    ld c, a                                       ; $457c: $4f
    ld a, [de]                                    ; $457d: $1a
    ld d, c                                       ; $457e: $51
    ld a, [c]                                     ; $457f: $f2
    dec bc                                        ; $4580: $0b

jr_064_4581:
    ld d, c                                       ; $4581: $51
    rst $20                                       ; $4582: $e7
    and d                                         ; $4583: $a2
    sub b                                         ; $4584: $90
    ei                                            ; $4585: $fb
    cp h                                          ; $4586: $bc
    ld [$3d04], sp                                ; $4587: $08 $04 $3d
    or h                                          ; $458a: $b4
    inc l                                         ; $458b: $2c
    and c                                         ; $458c: $a1
    jr nc, jr_064_45a3                            ; $458d: $30 $14

    ld c, a                                       ; $458f: $4f
    add l                                         ; $4590: $85
    and a                                         ; $4591: $a7
    ld bc, $19f2                                  ; $4592: $01 $f2 $19
    add d                                         ; $4595: $82
    call c, $172f                                 ; $4596: $dc $2f $17
    add l                                         ; $4599: $85
    xor h                                         ; $459a: $ac
    call nc, $cfb2                                ; $459b: $d4 $b2 $cf
    ld a, e                                       ; $459e: $7b
    ld a, $13                                     ; $459f: $3e $13
    dec h                                         ; $45a1: $25
    dec a                                         ; $45a2: $3d

jr_064_45a3:
    dec d                                         ; $45a3: $15
    sub d                                         ; $45a4: $92
    dec l                                         ; $45a5: $2d
    ld e, $ac                                     ; $45a6: $1e $ac
    push af                                       ; $45a8: $f5
    di                                            ; $45a9: $f3
    sbc $45                                       ; $45aa: $de $45
    call nc, $bcac                                ; $45ac: $d4 $ac $bc
    add [hl]                                      ; $45af: $86
    ld h, e                                       ; $45b0: $63
    ld c, d                                       ; $45b1: $4a
    ld [hl], c                                    ; $45b2: $71
    ld c, $f5                                     ; $45b3: $0e $f5
    ld de, $b3d5                                  ; $45b5: $11 $d5 $b3
    add [hl]                                      ; $45b8: $86
    or h                                          ; $45b9: $b4
    inc l                                         ; $45ba: $2c
    sub h                                         ; $45bb: $94
    ld [hl], c                                    ; $45bc: $71
    ld l, d                                       ; $45bd: $6a
    sub h                                         ; $45be: $94
    ld [hl], d                                    ; $45bf: $72
    xor [hl]                                      ; $45c0: $ae
    push de                                       ; $45c1: $d5
    call c, $5379                                 ; $45c2: $dc $79 $53
    ld a, [c]                                     ; $45c5: $f2
    ld e, e                                       ; $45c6: $5b
    dec l                                         ; $45c7: $2d
    res 4, d                                      ; $45c8: $cb $a2
    sub b                                         ; $45ca: $90
    ei                                            ; $45cb: $fb
    cp h                                          ; $45cc: $bc
    ret c                                         ; $45cd: $d8

    add d                                         ; $45ce: $82
    sbc [hl]                                      ; $45cf: $9e
    ld a, c                                       ; $45d0: $79
    ld a, [hl+]                                   ; $45d1: $2a
    inc h                                         ; $45d2: $24
    rst $18                                       ; $45d3: $df
    cp e                                          ; $45d4: $bb
    adc $82                                       ; $45d5: $ce $82
    ld b, e                                       ; $45d7: $43
    and a                                         ; $45d8: $a7
    ld d, b                                       ; $45d9: $50
    ld a, [hl+]                                   ; $45da: $2a
    rst $08                                       ; $45db: $cf
    add d                                         ; $45dc: $82
    and d                                         ; $45dd: $a2
    rst $08                                       ; $45de: $cf
    inc a                                         ; $45df: $3c
    dec d                                         ; $45e0: $15
    sub d                                         ; $45e1: $92
    rla                                           ; $45e2: $17
    dec de                                        ; $45e3: $1b
    rst $30                                       ; $45e4: $f7
    ld a, c                                       ; $45e5: $79

jr_064_45e6:
    push bc                                       ; $45e6: $c5

Call_064_45e7:
    jp nz, Jump_064_78bf                          ; $45e7: $c2 $bf $78

    xor l                                         ; $45ea: $ad
    inc c                                         ; $45eb: $0c
    ld b, h                                       ; $45ec: $44
    ld e, l                                       ; $45ed: $5d
    xor e                                         ; $45ee: $ab
    push hl                                       ; $45ef: $e5
    ld e, [hl]                                    ; $45f0: $5e
    ld a, e                                       ; $45f1: $7b
    inc c                                         ; $45f2: $0c
    ld [hl], l                                    ; $45f3: $75
    ld a, [hl+]                                   ; $45f4: $2a
    inc h                                         ; $45f5: $24
    ld e, e                                       ; $45f6: $5b
    cp h                                          ; $45f7: $bc
    sub $af                                       ; $45f8: $d6 $af
    push de                                       ; $45fa: $d5
    cp c                                          ; $45fb: $b9
    ld a, [$c79f]                                 ; $45fc: $fa $9f $c7
    ld b, d                                       ; $45ff: $42
    ld e, e                                       ; $4600: $5b
    inc c                                         ; $4601: $0c
    ld a, l                                       ; $4602: $7d
    add sp, $71                                   ; $4603: $e8 $71
    sbc b                                         ; $4605: $98
    ld a, [bc]                                    ; $4606: $0a
    ret                                           ; $4607: $c9


    ld l, e                                       ; $4608: $6b
    ld [hl], h                                    ; $4609: $74
    adc b                                         ; $460a: $88
    cp l                                          ; $460b: $bd
    adc b                                         ; $460c: $88
    xor $14                                       ; $460d: $ee $14
    di                                            ; $460f: $f3
    cp l                                          ; $4610: $bd
    add e                                         ; $4611: $83
    sbc a                                         ; $4612: $9f
    adc c                                         ; $4613: $89
    sub d                                         ; $4614: $92
    dec bc                                        ; $4615: $0b
    ld h, l                                       ; $4616: $65
    ld de, $29dd                                  ; $4617: $11 $dd $29
    ei                                            ; $461a: $fb
    cp l                                          ; $461b: $bd
    ld a, e                                       ; $461c: $7b
    ld a, [hl+]                                   ; $461d: $2a
    inc h                                         ; $461e: $24
    or a                                          ; $461f: $b7
    ld a, [hl]                                    ; $4620: $7e
    and [hl]                                      ; $4621: $a6
    push bc                                       ; $4622: $c5
    adc e                                         ; $4623: $8b
    ld b, d                                       ; $4624: $42
    xor $f3                                       ; $4625: $ee $f3
    ld h, d                                       ; $4627: $62
    db $10                                        ; $4628: $10
    db $f4                                        ; $4629: $f4
    db $fd                                        ; $462a: $fd
    ld [bc], a                                    ; $462b: $02
    db $ed                                        ; $462c: $ed
    ld sp, $a1d4                                  ; $462d: $31 $d4 $a1
    ld a, $09                                     ; $4630: $3e $09
    push bc                                       ; $4632: $c5
    ld d, d                                       ; $4633: $52
    ld b, c                                       ; $4634: $41
    ret nc                                        ; $4635: $d0

    adc e                                         ; $4636: $8b
    ld a, [hl]                                    ; $4637: $7e
    ld a, [hl-]                                   ; $4638: $3a
    rla                                           ; $4639: $17
    ld b, e                                       ; $463a: $43
    ld b, a                                       ; $463b: $47
    jp c, Jump_000_3538                           ; $463c: $da $38 $35

    ld l, d                                       ; $463f: $6a
    add a                                         ; $4640: $87
    ld l, $bc                                     ; $4641: $2e $bc
    db $ec                                        ; $4643: $ec
    jp nz, $ae0b                                  ; $4644: $c2 $0b $ae

    sbc c                                         ; $4647: $99
    sub d                                         ; $4648: $92
    rst $18                                       ; $4649: $df
    ld e, d                                       ; $464a: $5a
    inc d                                         ; $464b: $14
    ld [hl], d                                    ; $464c: $72
    sbc a                                         ; $464d: $9f
    ld b, a                                       ; $464e: $47

jr_064_464f:
    ld e, d                                       ; $464f: $5a
    ret c                                         ; $4650: $d8

    or e                                          ; $4651: $b3
    xor h                                         ; $4652: $ac

Call_064_4653:
    pop hl                                        ; $4653: $e1
    xor d                                         ; $4654: $aa
    adc h                                         ; $4655: $8c
    dec bc                                        ; $4656: $0b
    rst $08                                       ; $4657: $cf
    db $10                                        ; $4658: $10
    ld h, h                                       ; $4659: $64
    and d                                         ; $465a: $a2
    rst $00                                       ; $465b: $c7
    sub h                                         ; $465c: $94
    or h                                          ; $465d: $b4
    and b                                         ; $465e: $a0
    rst $10                                       ; $465f: $d7
    ld a, [bc]                                    ; $4660: $0a
    dec d                                         ; $4661: $15
    jr jr_064_45e6                                ; $4662: $18 $82

    call c, $d72f                                 ; $4664: $dc $2f $d7
    and h                                         ; $4667: $a4
    ld b, [hl]                                    ; $4668: $46
    xor l                                         ; $4669: $ad
    push de                                       ; $466a: $d5
    call c, $5379                                 ; $466b: $dc $79 $53
    ld a, [c]                                     ; $466e: $f2
    ld e, e                                       ; $466f: $5b
    dec l                                         ; $4670: $2d
    res 4, d                                      ; $4671: $cb $a2
    sub b                                         ; $4673: $90
    ei                                            ; $4674: $fb
    cp h                                          ; $4675: $bc
    ld c, d                                       ; $4676: $4a
    dec l                                         ; $4677: $2d
    sbc [hl]                                      ; $4678: $9e
    inc hl                                        ; $4679: $23
    halt                                          ; $467a: $76
    xor [hl]                                      ; $467b: $ae
    ld a, [hl+]                                   ; $467c: $2a
    cp d                                          ; $467d: $ba
    sbc $d9                                       ; $467e: $de $d9
    dec bc                                        ; $4680: $0b
    dec c                                         ; $4681: $0d
    cp d                                          ; $4682: $ba

jr_064_4683:
    dec d                                         ; $4683: $15
    dec sp                                        ; $4684: $3b
    add a                                         ; $4685: $87
    adc $75                                       ; $4686: $ce $75
    jr z, jr_064_464f                             ; $4688: $28 $c5

    add hl, sp                                    ; $468a: $39
    and [hl]                                      ; $468b: $a6
    ldh a, [$a2]                                  ; $468c: $f0 $a2
    sub b                                         ; $468e: $90
    ld e, a                                       ; $468f: $5f
    add [hl]                                      ; $4690: $86
    ld d, b                                       ; $4691: $50
    xor $b5                                       ; $4692: $ee $b5
    rst $00                                       ; $4694: $c7
    ld d, b                                       ; $4695: $50
    add a                                         ; $4696: $87
    adc $45                                       ; $4697: $ce $45
    jr nz, jr_064_4683                            ; $4699: $20 $e8

    ld a, [hl-]                                   ; $469b: $3a
    di                                            ; $469c: $f3
    xor d                                         ; $469d: $aa
    and d                                         ; $469e: $a2
    db $eb                                        ; $469f: $eb
    sbc l                                         ; $46a0: $9d
    rla                                           ; $46a1: $17
    ld a, [de]                                    ; $46a2: $1a
    ld [hl], h                                    ; $46a3: $74
    dec hl                                        ; $46a4: $2b
    ld e, [hl]                                    ; $46a5: $5e
    inc c                                         ; $46a6: $0c
    ld a, l                                       ; $46a7: $7d
    add sp, -$64                                  ; $46a8: $e8 $9c
    ld a, [bc]                                    ; $46aa: $0a
    rst $08                                       ; $46ab: $cf
    db $e3                                        ; $46ac: $e3
    ld e, c                                       ; $46ad: $59
    or $18                                        ; $46ae: $f6 $18
    pop de                                        ; $46b0: $d1
    db $dd                                        ; $46b1: $dd
    cp l                                          ; $46b2: $bd
    ld a, d                                       ; $46b3: $7a
    pop hl                                        ; $46b4: $e1
    add hl, de                                    ; $46b5: $19
    add hl, de                                    ; $46b6: $19
    ld a, a                                       ; $46b7: $7f
    inc e                                         ; $46b8: $1c
    ld [$7f23], a                                 ; $46b9: $ea $23 $7f
    ld l, $d2                                     ; $46bc: $2e $d2
    dec b                                         ; $46be: $05
    call Call_000_0bf7                            ; $46bf: $cd $f7 $0b
    rst $10                                       ; $46c2: $d7
    ld d, c                                       ; $46c3: $51
    ld [hl], d                                    ; $46c4: $72
    sub l                                         ; $46c5: $95
    adc d                                         ; $46c6: $8a
    ei                                            ; $46c7: $fb
    inc a                                         ; $46c8: $3c
    jp nc, Jump_064_5b12                          ; $46c9: $d2 $12 $5b

    ret nc                                        ; $46cc: $d0

    ld b, e                                       ; $46cd: $43
    jr z, jr_064_4733                             ; $46ce: $28 $63

    add sp, $6b                                   ; $46d0: $e8 $6b
    ld h, l                                       ; $46d2: $65
    adc b                                         ; $46d3: $88
    ld e, h                                       ; $46d4: $5c
    ld l, e                                       ; $46d5: $6b
    ret z                                         ; $46d6: $c8

    dec e                                         ; $46d7: $1d
    sub d                                         ; $46d8: $92
    rst $18                                       ; $46d9: $df
    ld a, [c]                                     ; $46da: $f2
    jp nz, Jump_000_0433                          ; $46db: $c2 $33 $04

    pop af                                        ; $46de: $f1
    call c, Call_064_5541                         ; $46df: $dc $41 $55
    ret z                                         ; $46e2: $c8

    add l                                         ; $46e3: $85
    ld d, [hl]                                    ; $46e4: $56
    ld d, l                                       ; $46e5: $55
    add hl, bc                                    ; $46e6: $09
    ld de, $693b                                  ; $46e7: $11 $3b $69
    ld l, e                                       ; $46ea: $6b
    rst $38                                       ; $46eb: $ff
    sbc c                                         ; $46ec: $99
    sbc d                                         ; $46ed: $9a
    ei                                            ; $46ee: $fb
    dec b                                         ; $46ef: $05
    ld l, l                                       ; $46f0: $6d
    ld a, [$8b9c]                                 ; $46f1: $fa $9c $8b
    db $dd                                        ; $46f4: $dd

jr_064_46f5:
    ld d, l                                       ; $46f5: $55
    ld a, b                                       ; $46f6: $78
    ld e, $cb                                     ; $46f7: $1e $cb
    jr jr_064_46f5                                ; $46f9: $18 $fa

    ld a, $4f                                     ; $46fb: $3e $4f
    ld b, c                                       ; $46fd: $41
    add hl, hl                                    ; $46fe: $29
    ld e, [hl]                                    ; $46ff: $5e
    ld [$bc82], a                                 ; $4700: $ea $82 $bc
    ld d, [hl]                                    ; $4703: $56
    ld [hl], e                                    ; $4704: $73
    and h                                         ; $4705: $a4
    and [hl]                                      ; $4706: $a6
    and e                                         ; $4707: $a3
    ld d, e                                       ; $4708: $53
    ld a, h                                       ; $4709: $7c
    rst $28                                       ; $470a: $ef
    ldh [$97], a                                  ; $470b: $e0 $97
    push bc                                       ; $470d: $c5
    add $fd                                       ; $470e: $c6 $fd
    adc [hl]                                      ; $4710: $8e
    add hl, bc                                    ; $4711: $09
    add l                                         ; $4712: $85
    ld [hl], $32                                  ; $4713: $36 $32
    add [hl]                                      ; $4715: $86
    xor [hl]                                      ; $4716: $ae
    inc a                                         ; $4717: $3c
    db $10                                        ; $4718: $10
    halt                                          ; $4719: $76
    cp d                                          ; $471a: $ba
    sub $2f                                       ; $471b: $d6 $2f
    db $ec                                        ; $471d: $ec
    push de                                       ; $471e: $d5
    ld e, a                                       ; $471f: $5f
    sbc h                                         ; $4720: $9c
    ld a, e                                       ; $4721: $7b
    cp [hl]                                       ; $4722: $be
    ld c, h                                       ; $4723: $4c
    ld a, l                                       ; $4724: $7d
    ld e, c                                       ; $4725: $59
    inc b                                         ; $4726: $04
    add d                                         ; $4727: $82
    cp [hl]                                       ; $4728: $be
    ld e, a                                       ; $4729: $5f
    sub a                                         ; $472a: $97
    ld c, b                                       ; $472b: $48
    or c                                          ; $472c: $b1
    adc h                                         ; $472d: $8c
    db $fc                                        ; $472e: $fc
    cp c                                          ; $472f: $b9
    adc a                                         ; $4730: $8f
    push hl                                       ; $4731: $e5
    ld c, e                                       ; $4732: $4b

jr_064_4733:
    add hl, de                                    ; $4733: $19
    ld b, e                                       ; $4734: $43
    rra                                           ; $4735: $1f
    ld e, d                                       ; $4736: $5a
    ld d, $85                                     ; $4737: $16 $85
    ld l, h                                       ; $4739: $6c
    add sp, -$38                                  ; $473a: $e8 $c8
    sbc $8f                                       ; $473c: $de $8f
    ret nc                                        ; $473e: $d0

    dec e                                         ; $473f: $1d
    and h                                         ; $4740: $a4
    ld c, h                                       ; $4741: $4c
    ld b, a                                       ; $4742: $47
    rr b                                          ; $4743: $cb $18
    ld a, d                                       ; $4745: $7a
    rst $38                                       ; $4746: $ff
    add sp, $5e                                   ; $4747: $e8 $5e
    ld a, l                                       ; $4749: $7d
    cp a                                          ; $474a: $bf
    ld l, l                                       ; $474b: $6d
    ld a, [$7a1a]                                 ; $474c: $fa $1a $7a
    and d                                         ; $474f: $a2
    ld d, a                                       ; $4750: $57
    sbc d                                         ; $4751: $9a
    inc hl                                        ; $4752: $23
    dec l                                         ; $4753: $2d
    dec bc                                        ; $4754: $0b
    ld h, l                                       ; $4755: $65
    ld d, c                                       ; $4756: $51
    ld c, b                                       ; $4757: $48
    and [hl]                                      ; $4758: $a6
    db $f4                                        ; $4759: $f4
    xor $b5                                       ; $475a: $ee $b5
    ld [hl-], a                                   ; $475c: $32
    ld b, h                                       ; $475d: $44
    xor [hl]                                      ; $475e: $ae
    dec [hl]                                      ; $475f: $35
    db $e4                                        ; $4760: $e4
    xor [hl]                                      ; $4761: $ae
    jp nc, $d321                                  ; $4762: $d2 $21 $d3

    cp l                                          ; $4765: $bd
    rst $28                                       ; $4766: $ef
    di                                            ; $4767: $f3
    ld d, b                                       ; $4768: $50
    rra                                           ; $4769: $1f
    ld sp, hl                                     ; $476a: $f9
    ld [hl], e                                    ; $476b: $73
    sub c                                         ; $476c: $91
    ld l, $68                                     ; $476d: $2e $68
    sbc [hl]                                      ; $476f: $9e
    ld h, l                                       ; $4770: $65
    ld c, d                                       ; $4771: $4a
    rst $08                                       ; $4772: $cf
    dec a                                         ; $4773: $3d
    ld bc, $2087                                  ; $4774: $01 $87 $20
    xor e                                         ; $4777: $ab
    sbc d                                         ; $4778: $9a
    add d                                         ; $4779: $82
    pop hl                                        ; $477a: $e1
    cp c                                          ; $477b: $b9
    ld e, a                                       ; $477c: $5f
    rlca                                          ; $477d: $07
    ld e, h                                       ; $477e: $5c
    ld d, $43                                     ; $477f: $16 $43
    rst $28                                       ; $4781: $ef
    ld e, $55                                     ; $4782: $1e $55
    xor d                                         ; $4784: $aa
    ld a, [c]                                     ; $4785: $f2
    ld a, $0f                                     ; $4786: $3e $0f
    sbc l                                         ; $4788: $9d
    adc e                                         ; $4789: $8b
    ld a, a                                       ; $478a: $7f
    xor [hl]                                      ; $478b: $ae
    inc bc                                        ; $478c: $03
    ld a, [c]                                     ; $478d: $f2
    ld [hl+], a                                   ; $478e: $22
    ld c, d                                       ; $478f: $4a
    and [hl]                                      ; $4790: $a6
    ld b, a                                       ; $4791: $47
    ld d, d                                       ; $4792: $52
    and l                                         ; $4793: $a5
    xor [hl]                                      ; $4794: $ae
    push de                                       ; $4795: $d5
    ld e, h                                       ; $4796: $5c
    ld a, b                                       ; $4797: $78
    or d                                          ; $4798: $b2
    adc c                                         ; $4799: $89
    and $fb                                       ; $479a: $e6 $fb
    dec b                                         ; $479c: $05
    rst $20                                       ; $479d: $e7
    push af                                       ; $479e: $f5
    xor $a1                                       ; $479f: $ee $a1
    ld b, a                                       ; $47a1: $47
    ld d, d                                       ; $47a2: $52
    and l                                         ; $47a3: $a5
    ld c, [hl]                                    ; $47a4: $4e
    ld b, a                                       ; $47a5: $47
    ld c, e                                       ; $47a6: $4b
    inc d                                         ; $47a7: $14
    ld [hl], d                                    ; $47a8: $72

jr_064_47a9:
    add l                                         ; $47a9: $85
    sbc d                                         ; $47aa: $9a
    ld b, e                                       ; $47ab: $43
    di                                            ; $47ac: $f3
    jr jr_064_47a9                                ; $47ad: $18 $fa

    inc l                                         ; $47af: $2c
    ld d, e                                       ; $47b0: $53
    db $fd                                        ; $47b1: $fd
    ccf                                           ; $47b2: $3f
    dec bc                                        ; $47b3: $0b
    xor l                                         ; $47b4: $ad
    xor $d8                                       ; $47b5: $ee $d8
    cp l                                          ; $47b7: $bd
    ld a, d                                       ; $47b8: $7a
    sbc a                                         ; $47b9: $9f
    ld d, a                                       ; $47ba: $57
    sbc d                                         ; $47bb: $9a
    xor e                                         ; $47bc: $ab
    ld d, b                                       ; $47bd: $50
    ld h, [hl]                                    ; $47be: $66
    add hl, de                                    ; $47bf: $19
    db $eb                                        ; $47c0: $eb
    ld a, c                                       ; $47c1: $79
    cp a                                          ; $47c2: $bf
    rlca                                          ; $47c3: $07
    ld e, h                                       ; $47c4: $5c
    ld b, [hl]                                    ; $47c5: $46
    ld b, l                                       ; $47c6: $45
    rst $30                                       ; $47c7: $f7
    ld e, a                                       ; $47c8: $5f
    ret nc                                        ; $47c9: $d0

    inc sp                                        ; $47ca: $33
    xor a                                         ; $47cb: $af
    push af                                       ; $47cc: $f5
    ld [hl], e                                    ; $47cd: $73
    and d                                         ; $47ce: $a2
    pop af                                        ; $47cf: $f1
    ld d, d                                       ; $47d0: $52
    xor a                                         ; $47d1: $af
    ld a, [bc]                                    ; $47d2: $0a
    inc b                                         ; $47d3: $04
    ld l, e                                       ; $47d4: $6b
    ld d, l                                       ; $47d5: $55
    ld h, c                                       ; $47d6: $61
    ld a, [hl-]                                   ; $47d7: $3a
    ld e, d                                       ; $47d8: $5a
    and d                                         ; $47d9: $a2
    sub b                                         ; $47da: $90
    adc e                                         ; $47db: $8b
    adc l                                         ; $47dc: $8d
    ei                                            ; $47dd: $fb
    inc a                                         ; $47de: $3c
    ld c, [hl]                                    ; $47df: $4e
    ld a, [bc]                                    ; $47e0: $0a
    ld a, d                                       ; $47e1: $7a
    xor l                                         ; $47e2: $ad
    and $28                                       ; $47e3: $e6 $28
    push hl                                       ; $47e5: $e5
    ld a, [hl]                                    ; $47e6: $7e
    ld bc, $5c07                                  ; $47e7: $01 $07 $5c
    ld d, $1b                                     ; $47ea: $16 $1b
    rlca                                          ; $47ec: $07
    ld c, d                                       ; $47ed: $4a
    sbc c                                         ; $47ee: $99
    ld [hl], $32                                  ; $47ef: $36 $32
    ld c, $19                                     ; $47f1: $0e $19
    add l                                         ; $47f3: $85
    inc e                                         ; $47f4: $1c
    ld a, d                                       ; $47f5: $7a
    and b                                         ; $47f6: $a0
    sub h                                         ; $47f7: $94
    ld d, a                                       ; $47f8: $57
    sbc l                                         ; $47f9: $9d
    or c                                          ; $47fa: $b1
    db $d3                                        ; $47fb: $d3
    cp c                                          ; $47fc: $b9
    rst $00                                       ; $47fd: $c7
    jp hl                                         ; $47fe: $e9


    sub c                                         ; $47ff: $91
    ld d, h                                       ; $4800: $54
    xor c                                         ; $4801: $a9
    ld d, [hl]                                    ; $4802: $56
    ld d, h                                       ; $4803: $54
    inc e                                         ; $4804: $1c
    ld b, e                                       ; $4805: $43
    rst $18                                       ; $4806: $df
    inc bc                                        ; $4807: $03
    adc b                                         ; $4808: $88
    cp a                                          ; $4809: $bf
    call c, $972f                                 ; $480a: $dc $2f $97
    ld l, d                                       ; $480d: $6a
    ld a, d                                       ; $480e: $7a
    rlca                                          ; $480f: $07
    add hl, hl                                    ; $4810: $29
    adc $5f                                       ; $4811: $ce $5f
    add d                                         ; $4813: $82
    adc $eb                                       ; $4814: $ce $eb
    ld a, [de]                                    ; $4816: $1a
    ld [hl], h                                    ; $4817: $74
    xor $71                                       ; $4818: $ee $71
    ld sp, $762f                                  ; $481a: $31 $2f $76
    xor a                                         ; $481d: $af
    rst $08                                       ; $481e: $cf
    cpl                                           ; $481f: $2f
    ld d, $f4                                     ; $4820: $16 $f4
    ld h, b                                       ; $4822: $60
    rrca                                          ; $4823: $0f
    adc b                                         ; $4824: $88
    ld b, a                                       ; $4825: $47
    ld c, l                                       ; $4826: $4d
    rst $20                                       ; $4827: $e7
    ld a, [hl-]                                   ; $4828: $3a
    inc d                                         ; $4829: $14
    ld c, a                                       ; $482a: $4f
    db $f4                                        ; $482b: $f4
    ei                                            ; $482c: $fb
    dec b                                         ; $482d: $05
    db $ed                                        ; $482e: $ed
    ccf                                           ; $482f: $3f
    add a                                         ; $4830: $87
    ld a, [$1424]                                 ; $4831: $fa $24 $14
    ld c, e                                       ; $4834: $4b
    dec b                                         ; $4835: $05
    ld b, c                                       ; $4836: $41
    xor a                                         ; $4837: $af
    sbc d                                         ; $4838: $9a
    ld h, a                                       ; $4839: $67
    add hl, de                                    ; $483a: $19

Call_064_483b:
    ld c, c                                       ; $483b: $49

jr_064_483c:
    dec d                                         ; $483c: $15
    rrca                                          ; $483d: $0f
    ld hl, $d8ad                                  ; $483e: $21 $ad $d8
    add e                                         ; $4841: $83
    ld d, c                                       ; $4842: $51

Jump_064_4843:
    jp hl                                         ; $4843: $e9


    ld h, d                                       ; $4844: $62
    pop af                                        ; $4845: $f1
    add hl, sp                                    ; $4846: $39
    ld l, e                                       ; $4847: $6b
    inc sp                                        ; $4848: $33
    rst $08                                       ; $4849: $cf
    cp c                                          ; $484a: $b9
    xor d                                         ; $484b: $aa
    sub d                                         ; $484c: $92
    ld a, [c]                                     ; $484d: $f2
    inc a                                         ; $484e: $3c
    ld d, $f4                                     ; $484f: $16 $f4
    db $fd                                        ; $4851: $fd
    ld [bc], a                                    ; $4852: $02
    db $ed                                        ; $4853: $ed

Call_064_4854:
    ld [hl], c                                    ; $4854: $71
    ret z                                         ; $4855: $c8

    jr z, jr_064_483c                             ; $4856: $28 $e4

    ld hl, sp+$77                                 ; $4858: $f8 $77
    rst $20                                       ; $485a: $e7
    ld a, [hl]                                    ; $485b: $7e
    rst $28                                       ; $485c: $ef
    ld e, [hl]                                    ; $485d: $5e
    ld a, b                                       ; $485e: $78
    ld b, [hl]                                    ; $485f: $46
    ld d, d                                       ; $4860: $52
    and l                                         ; $4861: $a5
    sbc [hl]                                      ; $4862: $9e
    di                                            ; $4863: $f3
    ld [bc], a                                    ; $4864: $02
    rlca                                          ; $4865: $07
    ld e, h                                       ; $4866: $5c
    ld d, [hl]                                    ; $4867: $56
    ld a, a                                       ; $4868: $7f
    inc l                                         ; $4869: $2c
    adc $3d                                       ; $486a: $ce $3d
    jr nz, jr_064_48e9                            ; $486c: $20 $7b

    ld b, d                                       ; $486e: $42
    sub $91                                       ; $486f: $d6 $91
    ld d, h                                       ; $4871: $54
    xor c                                         ; $4872: $a9
    xor [hl]                                      ; $4873: $ae
    cp a                                          ; $4874: $bf
    ld a, a                                       ; $4875: $7f
    cp [hl]                                       ; $4876: $be
    ld e, a                                       ; $4877: $5f
    sub a                                         ; $4878: $97
    ld d, e                                       ; $4879: $53
    ld a, [hl+]                                   ; $487a: $2a
    ld a, e                                       ; $487b: $7b
    push hl                                       ; $487c: $e5
    ld c, e                                       ; $487d: $4b
    add hl, de                                    ; $487e: $19
    db $dd                                        ; $487f: $dd
    ld h, l                                       ; $4880: $65
    ld d, l                                       ; $4881: $55
    db $fd                                        ; $4882: $fd
    ld a, $d5                                     ; $4883: $3e $d5
    and c                                         ; $4885: $a1
    push de                                       ; $4886: $d5
    ld [hl], d                                    ; $4887: $72
    and l                                         ; $4888: $a5
    adc l                                         ; $4889: $8d
    inc sp                                        ; $488a: $33
    db $e4                                        ; $488b: $e4
    add sp, $2e                                   ; $488c: $e8 $2e
    ei                                            ; $488e: $fb
    inc a                                         ; $488f: $3c
    cp d                                          ; $4890: $ba
    bit 4, d                                      ; $4891: $cb $62
    add sp, $23                                   ; $4893: $e8 $23
    ld a, a                                       ; $4895: $7f
    db $ec                                        ; $4896: $ec
    sub c                                         ; $4897: $91
    ld e, a                                       ; $4898: $5f
    xor h                                         ; $4899: $ac
    cp $73                                        ; $489a: $fe $73
    cp a                                          ; $489c: $bf
    ld l, l                                       ; $489d: $6d
    ld e, $49                                     ; $489e: $1e $49
    and l                                         ; $48a0: $a5
    and a                                         ; $48a1: $a7
    cp $b4                                        ; $48a2: $fe $b4
    adc h                                         ; $48a4: $8c
    sbc $a1                                       ; $48a5: $de $a1
    xor [hl]                                      ; $48a7: $ae
    ld h, c                                       ; $48a8: $61
    jp nc, $e209                                  ; $48a9: $d2 $09 $e2

    cp h                                          ; $48ac: $bc
    rst $10                                       ; $48ad: $d7
    and $d5                                       ; $48ae: $e6 $d5
    sub $17                                       ; $48b0: $d6 $17
    and l                                         ; $48b2: $a5
    ld [hl], a                                    ; $48b3: $77
    and a                                         ; $48b4: $a7
    ld [hl], e                                    ; $48b5: $73
    dec [hl]                                      ; $48b6: $35
    inc a                                         ; $48b7: $3c
    inc hl                                        ; $48b8: $23
    cp a                                          ; $48b9: $bf
    ld e, b                                       ; $48ba: $58
    ld l, c                                       ; $48bb: $69
    ld a, d                                       ; $48bc: $7a
    rlca                                          ; $48bd: $07
    add hl, hl                                    ; $48be: $29
    adc $17                                       ; $48bf: $ce $17
    rlca                                          ; $48c1: $07
    ld a, a                                       ; $48c2: $7f
    adc a                                         ; $48c3: $8f
    add d                                         ; $48c4: $82
    ld h, [hl]                                    ; $48c5: $66
    ld a, [hl-]                                   ; $48c6: $3a
    ld b, [hl]                                    ; $48c7: $46
    ld hl, $8d31                                  ; $48c8: $21 $31 $8d
    sbc $03                                       ; $48cb: $de $03
    ld h, l                                       ; $48cd: $65
    inc c                                         ; $48ce: $0c
    ld a, l                                       ; $48cf: $7d
    and $29                                       ; $48d0: $e6 $29
    ld c, l                                       ; $48d2: $4d
    rst $28                                       ; $48d3: $ef
    jr nz, @-$39                                  ; $48d4: $20 $c5

    ld c, c                                       ; $48d6: $49
    xor c                                         ; $48d7: $a9
    ld l, e                                       ; $48d8: $6b
    dec [hl]                                      ; $48d9: $35
    and a                                         ; $48da: $a7
    ld b, d                                       ; $48db: $42
    ld h, l                                       ; $48dc: $65
    adc e                                         ; $48dd: $8b
    rst $28                                       ; $48de: $ef
    ld e, l                                       ; $48df: $5d
    xor [hl]                                      ; $48e0: $ae
    rst $30                                       ; $48e1: $f7
    or l                                          ; $48e2: $b5
    ld [hl], h                                    ; $48e3: $74
    ld h, [hl]                                    ; $48e4: $66
    db $d3                                        ; $48e5: $d3
    add [hl]                                      ; $48e6: $86
    and $39                                       ; $48e7: $e6 $39

jr_064_48e9:
    rla                                           ; $48e9: $17
    db $fd                                        ; $48ea: $fd
    db $ec                                        ; $48eb: $ec
    ld d, b                                       ; $48ec: $50
    ld e, b                                       ; $48ed: $58
    ei                                            ; $48ee: $fb
    dec bc                                        ; $48ef: $0b
    rlca                                          ; $48f0: $07
    ld b, c                                       ; $48f1: $41
    sub $30                                       ; $48f2: $d6 $30
    ld d, [hl]                                    ; $48f4: $56
    or $fa                                        ; $48f5: $f6 $fa
    adc a                                         ; $48f7: $8f
    sbc l                                         ; $48f8: $9d
    or e                                          ; $48f9: $b3
    inc c                                         ; $48fa: $0c
    db $dd                                        ; $48fb: $dd
    ld b, c                                       ; $48fc: $41
    ld a, l                                       ; $48fd: $7d
    ld e, $49                                     ; $48fe: $1e $49
    sub l                                         ; $4900: $95
    ld [$4128], a                                 ; $4901: $ea $28 $41
    db $fd                                        ; $4904: $fd
    ld e, d                                       ; $4905: $5a
    ld a, l                                       ; $4906: $7d
    cp a                                          ; $4907: $bf
    rlca                                          ; $4908: $07
    cp a                                          ; $4909: $bf
    xor h                                         ; $490a: $ac
    ld [hl-], a                                   ; $490b: $32
    dec d                                         ; $490c: $15
    sbc l                                         ; $490d: $9d
    ld d, e                                       ; $490e: $53
    cp d                                          ; $490f: $ba
    xor h                                         ; $4910: $ac
    jp nc, $1d29                                  ; $4911: $d2 $29 $1d

    dec l                                         ; $4914: $2d
    cp h                                          ; $4915: $bc
    ld d, [hl]                                    ; $4916: $56
    ld [hl], e                                    ; $4917: $73
    inc h                                         ; $4918: $24
    ld d, l                                       ; $4919: $55
    ld [$ec42], a                                 ; $491a: $ea $42 $ec
    ld e, h                                       ; $491d: $5c
    ld h, l                                       ; $491e: $65
    db $dd                                        ; $491f: $dd
    and $5f                                       ; $4920: $e6 $5f
    inc l                                         ; $4922: $2c
    rst $30                                       ; $4923: $f7
    xor [hl]                                      ; $4924: $ae
    ret                                           ; $4925: $c9


    rst $18                                       ; $4926: $df
    ld l, d                                       ; $4927: $6a
    add hl, sp                                    ; $4928: $39
    ld d, a                                       ; $4929: $57
    xor b                                         ; $492a: $a8
    add hl, sp                                    ; $492b: $39
    db $f4                                        ; $492c: $f4
    inc sp                                        ; $492d: $33
    and l                                         ; $492e: $a5
    rst $30                                       ; $492f: $f7
    inc [hl]                                      ; $4930: $34
    ld a, [$017e]                                 ; $4931: $fa $7e $01
    rlca                                          ; $4934: $07
    ld b, c                                       ; $4935: $41
    ld d, $fd                                     ; $4936: $16 $fd
    call c, $86cf                                 ; $4938: $dc $cf $86
    jp hl                                         ; $493b: $e9


    add sp, $5c                                   ; $493c: $e8 $5c
    push de                                       ; $493e: $d5
    call nz, Call_064_5fc3                        ; $493f: $c4 $c3 $5f
    cp h                                          ; $4942: $bc
    ldh a, [$4c]                                  ; $4943: $f0 $4c
    cpl                                           ; $4945: $2f
    sub [hl]                                      ; $4946: $96
    ld b, l                                       ; $4947: $45
    ld hl, $4611                                  ; $4948: $21 $11 $46
    ld a, [hl]                                    ; $494b: $7e
    ld e, c                                       ; $494c: $59
    dec hl                                        ; $494d: $2b
    xor c                                         ; $494e: $a9
    or c                                          ; $494f: $b1
    ld [hl], e                                    ; $4950: $73
    sbc a                                         ; $4951: $9f
    rst $00                                       ; $4952: $c7
    ld [hl], h                                    ; $4953: $74
    adc e                                         ; $4954: $8b
    rst $30                                       ; $4955: $f7
    ld a, h                                       ; $4956: $7c
    add hl, hl                                    ; $4957: $29
    ld e, [hl]                                    ; $4958: $5e
    bit 2, d                                      ; $4959: $cb $52
    ld c, h                                       ; $495b: $4c
    ld e, e                                       ; $495c: $5b
    ld l, l                                       ; $495d: $6d
    ld l, $86                                     ; $495e: $2e $86
    add c                                         ; $4960: $81
    or b                                          ; $4961: $b0
    ld a, c                                       ; $4962: $79
    rst $08                                       ; $4963: $cf
    sub a                                         ; $4964: $97
    jp nc, Jump_000_239d                          ; $4965: $d2 $9d $23

    jp hl                                         ; $4968: $e9


    ld a, [hl]                                    ; $4969: $7e
    ld e, $0f                                     ; $496a: $1e $0f
    sub [hl]                                      ; $496c: $96
    ld b, [hl]                                    ; $496d: $46
    set 7, l                                      ; $496e: $cb $fd
    ld [bc], a                                    ; $4970: $02
    rlca                                          ; $4971: $07
    ld b, c                                       ; $4972: $41
    ld d, $fd                                     ; $4973: $16 $fd
    sbc h                                         ; $4975: $9c
    ld [hl], e                                    ; $4976: $73
    ld c, a                                       ; $4977: $4f
    ret z                                         ; $4978: $c8

    ld h, d                                       ; $4979: $62
    ld a, c                                       ; $497a: $79
    inc l                                         ; $497b: $2c
    ld [c], a                                     ; $497c: $e2
    xor d                                         ; $497d: $aa
    ld a, h                                       ; $497e: $7c

Jump_064_497f:
    xor a                                         ; $497f: $af
    db $fd                                        ; $4980: $fd
    set 4, d                                      ; $4981: $cb $e2
    ld h, [hl]                                    ; $4983: $66
    ld de, $7ee7                                  ; $4984: $11 $e7 $7e
    ld h, a                                       ; $4987: $67
    ret nz                                        ; $4988: $c0

    push bc                                       ; $4989: $c5
    add $91                                       ; $498a: $c6 $91
    ld e, a                                       ; $498c: $5f
    ld e, h                                       ; $498d: $5c
    ld a, [hl]                                    ; $498e: $7e
    cp a                                          ; $498f: $bf
    ld e, a                                       ; $4990: $5f
    rla                                           ; $4991: $17
    ld a, a                                       ; $4992: $7f
    ld e, h                                       ; $4993: $5c
    inc c                                         ; $4994: $0c
    add sp, -$7b                                  ; $4995: $e8 $85
    ld h, a                                       ; $4997: $67
    rst $08                                       ; $4998: $cf
    rst $00                                       ; $4999: $c7
    rst $38                                       ; $499a: $ff
    db $ec                                        ; $499b: $ec
    ld a, [c]                                     ; $499c: $f2
    sub b                                         ; $499d: $90
    add hl, bc                                    ; $499e: $09
    ld [hl], l                                    ; $499f: $75
    ld c, d                                       ; $49a0: $4a
    rla                                           ; $49a1: $17
    pop af                                        ; $49a2: $f1
    ld h, d                                       ; $49a3: $62
    db $10                                        ; $49a4: $10
    db $f4                                        ; $49a5: $f4
    ld h, b                                       ; $49a6: $60
    sub [hl]                                      ; $49a7: $96
    ld b, l                                       ; $49a8: $45
    rra                                           ; $49a9: $1f
    ld [hl], d                                    ; $49aa: $72
    db $e4                                        ; $49ab: $e4
    rla                                           ; $49ac: $17
    xor e                                         ; $49ad: $ab

Jump_064_49ae:
    rst $38                                       ; $49ae: $ff
    or h                                          ; $49af: $b4
    adc $79                                       ; $49b0: $ce $79
    ld bc, $206d                                  ; $49b2: $01 $6d $20
    adc e                                         ; $49b5: $8b
    dec l                                         ; $49b6: $2d
    or h                                          ; $49b7: $b4
    or l                                          ; $49b8: $b5
    dec sp                                        ; $49b9: $3b
    rra                                           ; $49ba: $1f
    ld [$da62], sp                                ; $49bb: $08 $62 $da
    sbc h                                         ; $49be: $9c
    adc e                                         ; $49bf: $8b
    and c                                         ; $49c0: $a1
    ld a, [c]                                     ; $49c1: $f2
    call z, Call_000_298b                         ; $49c2: $cc $8b $29
    sbc c                                         ; $49c5: $99
    ld e, $a5                                     ; $49c6: $1e $a5
    inc d                                         ; $49c8: $14
    sub e                                         ; $49c9: $93
    ld hl, $de36                                  ; $49ca: $21 $36 $de
    cpl                                           ; $49cd: $2f
    rlca                                          ; $49ce: $07
    ld e, h                                       ; $49cf: $5c
    ld d, [hl]                                    ; $49d0: $56
    dec [hl]                                      ; $49d1: $35
    ld [c], a                                     ; $49d2: $e2
    cp d                                          ; $49d3: $ba
    jr @+$54                                      ; $49d4: $18 $52

    cp c                                          ; $49d6: $b9
    ld b, e                                       ; $49d7: $43
    reti                                          ; $49d8: $d9


    rst $20                                       ; $49d9: $e7
    pop de                                        ; $49da: $d1
    ld e, l                                       ; $49db: $5d
    and $9c                                       ; $49dc: $e6 $9c
    ld a, [bc]                                    ; $49de: $0a
    rst $08                                       ; $49df: $cf
    ld h, e                                       ; $49e0: $63
    sbc [hl]                                      ; $49e1: $9e
    adc [hl]                                      ; $49e2: $8e
    ei                                            ; $49e3: $fb
    pop de                                        ; $49e4: $d1
    ld e, $90                                     ; $49e5: $1e $90
    ld d, l                                       ; $49e7: $55
    push af                                       ; $49e8: $f5
    ei                                            ; $49e9: $fb
    ld a, [hl+]                                   ; $49ea: $2a
    and b                                         ; $49eb: $a0
    ld h, l                                       ; $49ec: $65
    ld [hl], h                                    ; $49ed: $74
    sub a                                         ; $49ee: $97
    add hl, sp                                    ; $49ef: $39
    rst $10                                       ; $49f0: $d7
    ld [hl], b                                    ; $49f1: $70
    pop de                                        ; $49f2: $d1
    ld [$5af2], sp                                ; $49f3: $08 $f2 $5a
    call $87b5                                    ; $49f6: $cd $b5 $87
    ld b, d                                       ; $49f9: $42
    db $ec                                        ; $49fa: $ec
    daa                                           ; $49fb: $27
    rst $10                                       ; $49fc: $d7
    ei                                            ; $49fd: $fb
    dec b                                         ; $49fe: $05
    db $ed                                        ; $49ff: $ed
    and [hl]                                      ; $4a00: $a6
    db $d3                                        ; $4a01: $d3
    ld b, [hl]                                    ; $4a02: $46
    add $7e                                       ; $4a03: $c6 $7e
    ld h, $bf                                     ; $4a05: $26 $bf
    push de                                       ; $4a07: $d5
    ld [hl-], a                                   ; $4a08: $32
    ld a, d                                       ; $4a09: $7a
    ld [de], a                                    ; $4a0a: $12
    ld c, d                                       ; $4a0b: $4a
    rst $30                                       ; $4a0c: $f7
    ld a, [hl]                                    ; $4a0d: $7e
    or h                                          ; $4a0e: $b4
    rlca                                          ; $4a0f: $07
    call nz, Call_064_4653                        ; $4a10: $c4 $53 $46
    ld [hl], a                                    ; $4a13: $77
    push af                                       ; $4a14: $f5
    adc e                                         ; $4a15: $8b
    di                                            ; $4a16: $f3
    sbc h                                         ; $4a17: $9c
    rla                                           ; $4a18: $17
    rlca                                          ; $4a19: $07
    ld e, h                                       ; $4a1a: $5c
    ld b, [hl]                                    ; $4a1b: $46
    ld a, [hl]                                    ; $4a1c: $7e
    ld [hl], h                                    ; $4a1d: $74
    xor $90                                       ; $4a1e: $ee $90
    db $fc                                        ; $4a20: $fc
    sub [hl]                                      ; $4a21: $96
    db $eb                                        ; $4a22: $eb
    jr jr_064_4a43                                ; $4a23: $18 $1e

    rst $20                                       ; $4a25: $e7
    cp l                                          ; $4a26: $bd
    or $2f                                        ; $4a27: $f6 $2f
    xor e                                         ; $4a29: $ab
    ld [$35f7], a                                 ; $4a2a: $ea $f7 $35
    ld c, h                                       ; $4a2d: $4c
    ld a, [hl]                                    ; $4a2e: $7e
    pop bc                                        ; $4a2f: $c1
    xor $ba                                       ; $4a30: $ee $ba

Call_064_4a32:
    ld a, [de]                                    ; $4a32: $1a
    sbc [hl]                                      ; $4a33: $9e
    sbc c                                         ; $4a34: $99
    sub a                                         ; $4a35: $97
    ld c, l                                       ; $4a36: $4d
    ld b, h                                       ; $4a37: $44
    dec bc                                        ; $4a38: $0b
    adc a                                         ; $4a39: $8f
    ld d, d                                       ; $4a3a: $52
    xor $17                                       ; $4a3b: $ee $17
    db $ed                                        ; $4a3d: $ed
    ld [hl], c                                    ; $4a3e: $71
    ret z                                         ; $4a3f: $c8

    add hl, sp                                    ; $4a40: $39
    ld b, a                                       ; $4a41: $47
    ld [hl], a                                    ; $4a42: $77

jr_064_4a43:
    add hl, de                                    ; $4a43: $19
    add [hl]                                      ; $4a44: $86
    ld [hl-], a                                   ; $4a45: $32
    ld c, [hl]                                    ; $4a46: $4e
    ld a, [bc]                                    ; $4a47: $0a
    rst $18                                       ; $4a48: $df
    dec sp                                        ; $4a49: $3b
    ldh [$32], a                                  ; $4a4a: $e0 $32
    ld a, [c]                                     ; $4a4c: $f2
    rst $20                                       ; $4a4d: $e7
    ld b, b                                       ; $4a4e: $40
    add hl, hl                                    ; $4a4f: $29
    xor a                                         ; $4a50: $af
    ld l, e                                       ; $4a51: $6b
    ld a, [hl+]                                   ; $4a52: $2a
    adc a                                         ; $4a53: $8f
    and c                                         ; $4a54: $a1
    rst $28                                       ; $4a55: $ef
    dec bc                                        ; $4a56: $0b
    sbc d                                         ; $4a57: $9a
    ld h, a                                       ; $4a58: $67
    pop bc                                        ; $4a59: $c1
    ld a, l                                       ; $4a5a: $7d
    ld e, [hl]                                    ; $4a5b: $5e
    and a                                         ; $4a5c: $a7
    sub h                                         ; $4a5d: $94
    ld [c], a                                     ; $4a5e: $e2
    dec a                                         ; $4a5f: $3d
    ld d, b                                       ; $4a60: $50
    and [hl]                                      ; $4a61: $a6
    dec bc                                        ; $4a62: $0b
    ld a, [hl-]                                   ; $4a63: $3a
    ld h, a                                       ; $4a64: $67
    add hl, de                                    ; $4a65: $19
    sbc d                                         ; $4a66: $9a
    sbc $a1                                       ; $4a67: $de $a1
    ret nc                                        ; $4a69: $d0

jr_064_4a6a:
    sub $e8                                       ; $4a6a: $d6 $e8
    ld d, h                                       ; $4a6c: $54
    inc e                                         ; $4a6d: $1c
    ld c, c                                       ; $4a6e: $49
    sub l                                         ; $4a6f: $95
    ld l, d                                       ; $4a70: $6a
    call nc, $3505                                ; $4a71: $d4 $05 $35
    ld [c], a                                     ; $4a74: $e2
    ei                                            ; $4a75: $fb
    dec b                                         ; $4a76: $05
    cpl                                           ; $4a77: $2f
    rst $20                                       ; $4a78: $e7
    ld e, e                                       ; $4a79: $5b
    push af                                       ; $4a7a: $f5
    ld e, a                                       ; $4a7b: $5f
    sbc h                                         ; $4a7c: $9c
    or h                                          ; $4a7d: $b4
    pop de                                        ; $4a7e: $d1
    ld e, l                                       ; $4a7f: $5d
    ld b, [hl]                                    ; $4a80: $46
    cp $1c                                        ; $4a81: $fe $1c
    jr z, jr_064_4a6a                             ; $4a83: $28 $e5

    ld [hl], l                                    ; $4a85: $75
    ld c, l                                       ; $4a86: $4d
    push hl                                       ; $4a87: $e5
    ld sp, $7df4                                  ; $4a88: $31 $f4 $7d
    ld e, [hl]                                    ; $4a8b: $5e
    sub l                                         ; $4a8c: $95
    xor a                                         ; $4a8d: $af
    sub h                                         ; $4a8e: $94
    rst $28                                       ; $4a8f: $ef
    dec e                                         ; $4a90: $1d
    ld [hl], b                                    ; $4a91: $70
    add hl, de                                    ; $4a92: $19
    ld c, c                                       ; $4a93: $49
    sub c                                         ; $4a94: $91
    ld [c], a                                     ; $4a95: $e2
    call c, Call_064_5c63                         ; $4a96: $dc $63 $5c
    ld b, h                                       ; $4a99: $44
    ld [hl], a                                    ; $4a9a: $77
    add $20                                       ; $4a9b: $c6 $20
    push bc                                       ; $4a9d: $c5
    ld [hl-], a                                   ; $4a9e: $32

jr_064_4a9f:
    jr jr_064_4a9f                                ; $4a9f: $18 $fe

    ld [hl], d                                    ; $4aa1: $72
    cp a                                          ; $4aa2: $bf
    db $ed                                        ; $4aa3: $ed
    ld sp, $a1d4                                  ; $4aa4: $31 $d4 $a1
    cp [hl]                                       ; $4aa7: $be
    jp c, $66a2                                   ; $4aa8: $da $a2 $66

    ld [hl], c                                    ; $4aab: $71
    xor $81                                       ; $4aac: $ee $81
    ld b, d                                       ; $4aae: $42
    ld e, e                                       ; $4aaf: $5b
    add a                                         ; $4ab0: $87
    ld [hl+], a                                   ; $4ab1: $22
    adc $1d                                       ; $4ab2: $ce $1d
    sub d                                         ; $4ab4: $92
    rst $18                                       ; $4ab5: $df
    ld [hl], d                                    ; $4ab6: $72
    ld e, l                                       ; $4ab7: $5d
    push de                                       ; $4ab8: $d5
    db $d3                                        ; $4ab9: $d3
    adc e                                         ; $4aba: $8b
    add sp, -$6c                                  ; $4abb: $e8 $94
    ld a, [hl-]                                   ; $4abd: $3a
    bit 1, b                                      ; $4abe: $cb $48
    xor d                                         ; $4ac0: $aa
    ld d, h                                       ; $4ac1: $54
    and a                                         ; $4ac2: $a7
    cp $b4                                        ; $4ac3: $fe $b4
    ld a, h                                       ; $4ac5: $7c
    cp a                                          ; $4ac6: $bf
    rlca                                          ; $4ac7: $07
    ld e, h                                       ; $4ac8: $5c
    ld d, [hl]                                    ; $4ac9: $56
    sbc d                                         ; $4aca: $9a
    cp c                                          ; $4acb: $b9
    ret nc                                        ; $4acc: $d0

    ld e, d                                       ; $4acd: $5a
    xor e                                         ; $4ace: $ab
    cp c                                          ; $4acf: $b9
    rlca                                          ; $4ad0: $07
    ld a, b                                       ; $4ad1: $78
    ld sp, $dd25                                  ; $4ad2: $31 $25 $dd
    xor e                                         ; $4ad5: $ab
    rla                                           ; $4ad6: $17
    add l                                         ; $4ad7: $85
    call c, $31e7                                 ; $4ad8: $dc $e7 $31
    and l                                         ; $4adb: $a5
    ld [hl], a                                    ; $4adc: $77
    rst $28                                       ; $4add: $ef
    ld bc, $48f1                                  ; $4ade: $01 $f1 $48
    xor d                                         ; $4ae1: $aa
    ld d, h                                       ; $4ae2: $54
    daa                                           ; $4ae3: $27
    ld c, b                                       ; $4ae4: $48
    pop af                                        ; $4ae5: $f1
    db $fd                                        ; $4ae6: $fd
    ld [bc], a                                    ; $4ae7: $02
    rlca                                          ; $4ae8: $07
    ld e, h                                       ; $4ae9: $5c
    and [hl]                                      ; $4aea: $a6
    ld a, [$e74f]                                 ; $4aeb: $fa $4f $e7
    inc h                                         ; $4aee: $24
    xor b                                         ; $4aef: $a8
    add c                                         ; $4af0: $81
    ld d, d                                       ; $4af1: $52
    ld e, [hl]                                    ; $4af2: $5e
    dec hl                                        ; $4af3: $2b
    xor c                                         ; $4af4: $a9

jr_064_4af5:
    or c                                          ; $4af5: $b1
    ld h, l                                       ; $4af6: $65
    jr nc, jr_064_4af5                            ; $4af7: $30 $fc

    ld h, l                                       ; $4af9: $65
    ld d, c                                       ; $4afa: $51
    ld c, b                                       ; $4afb: $48
    add h                                         ; $4afc: $84
    pop de                                        ; $4afd: $d1
    ld e, l                                       ; $4afe: $5d
    and $5c                                       ; $4aff: $e6 $5c
    ld l, l                                       ; $4b01: $6d
    ld c, [hl]                                    ; $4b02: $4e
    sbc h                                         ; $4b03: $9c
    ld sp, $deb5                                  ; $4b04: $31 $b5 $de
    dec sp                                        ; $4b07: $3b
    ldh [$32], a                                  ; $4b08: $e0 $32
    rst $20                                       ; $4b0a: $e7
    ld h, d                                       ; $4b0b: $62
    xor b                                         ; $4b0c: $a8
    inc a                                         ; $4b0d: $3c
    bit 4, d                                      ; $4b0e: $cb $62
    ld c, d                                       ; $4b10: $4a
    and [hl]                                      ; $4b11: $a6
    and a                                         ; $4b12: $a7
    inc [hl]                                      ; $4b13: $34
    cp l                                          ; $4b14: $bd
    add e                                         ; $4b15: $83
    sub h                                         ; $4b16: $94
    ei                                            ; $4b17: $fb
    dec b                                         ; $4b18: $05
    rlca                                          ; $4b19: $07
    ld e, h                                       ; $4b1a: $5c
    ld b, [hl]                                    ; $4b1b: $46
    cp $1c                                        ; $4b1c: $fe $1c
    ld c, c                                       ; $4b1e: $49
    ld c, l                                       ; $4b1f: $4d
    sbc $e7                                       ; $4b20: $de $e7
    or l                                          ; $4b22: $b5
    ld [hl-], a                                   ; $4b23: $32
    ld b, h                                       ; $4b24: $44
    xor [hl]                                      ; $4b25: $ae
    dec [hl]                                      ; $4b26: $35
    db $e4                                        ; $4b27: $e4

jr_064_4b28:
    xor [hl]                                      ; $4b28: $ae
    jp nc, $d321                                  ; $4b29: $d2 $21 $d3

    cp l                                          ; $4b2c: $bd
    rst $10                                       ; $4b2d: $d7
    sub c                                         ; $4b2e: $91
    ld hl, $ce36                                  ; $4b2f: $21 $36 $ce
    add d                                         ; $4b32: $82
    adc $b5                                       ; $4b33: $ce $b5
    sbc d                                         ; $4b35: $9a
    inc hl                                        ; $4b36: $23
    push af                                       ; $4b37: $f5
    ld d, d                                       ; $4b38: $52
    call c, $41e8                                 ; $4b39: $dc $e8 $41
    add hl, hl                                    ; $4b3c: $29
    dec bc                                        ; $4b3d: $0b
    ld l, l                                       ; $4b3e: $6d
    ld h, h                                       ; $4b3f: $64
    inc c                                         ; $4b40: $0c
    ld [hl], l                                    ; $4b41: $75
    and b                                         ; $4b42: $a0
    sub h                                         ; $4b43: $94
    ld b, a                                       ; $4b44: $47
    ld a, [hl]                                    ; $4b45: $7e
    xor c                                         ; $4b46: $a9
    db $d3                                        ; $4b47: $d3
    dec b                                         ; $4b48: $05
    sbc l                                         ; $4b49: $9d
    ld sp, $0154                                  ; $4b4a: $31 $54 $01
    add hl, hl                                    ; $4b4d: $29
    ld l, e                                       ; $4b4e: $6b
    ld [hl], h                                    ; $4b4f: $74
    adc b                                         ; $4b50: $88
    sbc l                                         ; $4b51: $9d
    ld l, e                                       ; $4b52: $6b
    jr jr_064_4b28                                ; $4b53: $18 $d3

    rst $30                                       ; $4b55: $f7
    dec bc                                        ; $4b56: $0b
    ld d, a                                       ; $4b57: $57
    ld h, [hl]                                    ; $4b58: $66
    adc b                                         ; $4b59: $88
    ld e, h                                       ; $4b5a: $5c
    ld l, e                                       ; $4b5b: $6b
    ret z                                         ; $4b5c: $c8

    dec e                                         ; $4b5d: $1d
    inc h                                         ; $4b5e: $24
    ld a, d                                       ; $4b5f: $7a
    ld [hl], c                                    ; $4b60: $71
    sub b                                         ; $4b61: $90
    ld e, a                                       ; $4b62: $5f
    ld a, [hl]                                    ; $4b63: $7e
    rst $28                                       ; $4b64: $ef
    ld [hl], e                                    ; $4b65: $73
    adc $32                                       ; $4b66: $ce $32
    sub d                                         ; $4b68: $92
    ld a, [hl+]                                   ; $4b69: $2a
    ld a, [hl]                                    ; $4b6a: $7e
    ld b, d                                       ; $4b6b: $42
    ld l, $0a                                     ; $4b6c: $2e $0a
    cp c                                          ; $4b6e: $b9
    rst $18                                       ; $4b6f: $df
    cp e                                          ; $4b70: $bb
    ld [hl], a                                    ; $4b71: $77
    ld [hl], c                                    ; $4b72: $71
    ld l, d                                       ; $4b73: $6a
    and d                                         ; $4b74: $a2
    ld [$4304], sp                                ; $4b75: $08 $04 $43
    sub $b9                                       ; $4b78: $d6 $b9
    dec sp                                        ; $4b7a: $3b
    halt                                          ; $4b7b: $76
    sbc $2f                                       ; $4b7c: $de $2f
    db $ed                                        ; $4b7e: $ed
    ld d, h                                       ; $4b7f: $54
    xor c                                         ; $4b80: $a9
    ld d, [hl]                                    ; $4b81: $56
    ld d, h                                       ; $4b82: $54
    xor h                                         ; $4b83: $ac
    ld a, d                                       ; $4b84: $7a
    xor e                                         ; $4b85: $ab
    ld h, l                                       ; $4b86: $65
    ld e, c                                       ; $4b87: $59
    inc c                                         ; $4b88: $0c
    adc e                                         ; $4b89: $8b
    ld b, b                                       ; $4b8a: $40
    adc l                                         ; $4b8b: $8d
    and c                                         ; $4b8c: $a1
    cpl                                           ; $4b8d: $2f
    jp z, Jump_064_42a0                           ; $4b8e: $ca $a0 $42

    push hl                                       ; $4b91: $e5
    pop bc                                        ; $4b92: $c1
    ldh a, [$97]                                  ; $4b93: $f0 $97
    push bc                                       ; $4b95: $c5
    ccf                                           ; $4b96: $3f
    rla                                           ; $4b97: $17
    and l                                         ; $4b98: $a5
    sbc a                                         ; $4b99: $9f
    db $fc                                        ; $4b9a: $fc
    push bc                                       ; $4b9b: $c5
    add d                                         ; $4b9c: $82
    cp [hl]                                       ; $4b9d: $be
    ld e, a                                       ; $4b9e: $5f
    rlca                                          ; $4b9f: $07
    ld e, h                                       ; $4ba0: $5c
    and $5c                                       ; $4ba1: $e6 $5c
    inc c                                         ; $4ba3: $0c
    xor c                                         ; $4ba4: $a9
    call c, $aca1                                 ; $4ba5: $dc $a1 $ac
    pop hl                                        ; $4ba8: $e1
    and d                                         ; $4ba9: $a2
    ld de, $7de4                                  ; $4baa: $11 $e4 $7d
    ld e, [hl]                                    ; $4bad: $5e
    push de                                       ; $4bae: $d5
    adc b                                         ; $4baf: $88
    db $eb                                        ; $4bb0: $eb
    jp nz, $cfb3                                  ; $4bb1: $c2 $b3 $cf

    xor e                                         ; $4bb4: $ab
    ld a, [hl+]                                   ; $4bb5: $2a
    ld hl, $1ef6                                  ; $4bb6: $21 $f6 $1e
    db $e3                                        ; $4bb9: $e3
    ld [hl+], a                                   ; $4bba: $22
    cp d                                          ; $4bbb: $ba
    or e                                          ; $4bbc: $b3
    ld h, l                                       ; $4bbd: $65
    cp c                                          ; $4bbe: $b9
    ld e, a                                       ; $4bbf: $5f
    rla                                           ; $4bc0: $17
    rlca                                          ; $4bc1: $07
    db $e4                                        ; $4bc2: $e4
    xor c                                         ; $4bc3: $a9
    cp $d3                                        ; $4bc4: $fe $d3
    ld c, h                                       ; $4bc6: $4c
    ld e, e                                       ; $4bc7: $5b
    ei                                            ; $4bc8: $fb
    rst $08                                       ; $4bc9: $cf
    call nc, Call_000_2fdc                        ; $4bca: $d4 $dc $2f
    rlca                                          ; $4bcd: $07
    ld e, h                                       ; $4bce: $5c
    and [hl]                                      ; $4bcf: $a6
    cp [hl]                                       ; $4bd0: $be
    inc c                                         ; $4bd1: $0c
    sub h                                         ; $4bd2: $94

Call_064_4bd3:
    ld a, [c]                                     ; $4bd3: $f2
    ld h, d                                       ; $4bd4: $62
    dec bc                                        ; $4bd5: $0b
    ld a, e                                       ; $4bd6: $7b
    inc c                                         ; $4bd7: $0c
    ld a, l                                       ; $4bd8: $7d
    ld d, l                                       ; $4bd9: $55
    add l                                         ; $4bda: $85
    ld l, [hl]                                    ; $4bdb: $6e
    ld e, c                                       ; $4bdc: $59
    jp Jump_000_2345                              ; $4bdd: $c3 $45 $23


    add sp, -$2c                                  ; $4be0: $e8 $d4
    cp [hl]                                       ; $4be2: $be
    di                                            ; $4be3: $f3
    ld a, d                                       ; $4be4: $7a

Jump_064_4be5:
    rst $30                                       ; $4be5: $f7
    ld h, b                                       ; $4be6: $60
    pop de                                        ; $4be7: $d1
    ld a, a                                       ; $4be8: $7f
    and b                                         ; $4be9: $a0
    add e                                         ; $4bea: $83
    ld h, l                                       ; $4beb: $65
    rst $10                                       ; $4bec: $d7
    ei                                            ; $4bed: $fb
    rst $10                                       ; $4bee: $d7
    ld l, [hl]                                    ; $4bef: $6e
    call $334a                                    ; $4bf0: $cd $4a $33
    rst $10                                       ; $4bf3: $d7
    ld l, d                                       ; $4bf4: $6a
    xor [hl]                                      ; $4bf5: $ae
    dec a                                         ; $4bf6: $3d
    inc d                                         ; $4bf7: $14
    ld h, d                                       ; $4bf8: $62
    ccf                                           ; $4bf9: $3f
    cp c                                          ; $4bfa: $b9
    sbc $2f                                       ; $4bfb: $de $2f
    rla                                           ; $4bfd: $17
    rlca                                          ; $4bfe: $07
    db $e4                                        ; $4bff: $e4
    xor c                                         ; $4c00: $a9
    cp $d3                                        ; $4c01: $fe $d3
    xor h                                         ; $4c03: $ac
    ld a, l                                       ; $4c04: $7d
    rlca                                          ; $4c05: $07
    ld e, h                                       ; $4c06: $5c
    ld b, [hl]                                    ; $4c07: $46
    ld [hl], $1b                                  ; $4c08: $36 $1b
    adc $7d                                       ; $4c0a: $ce $7d
    ld e, $dd                                     ; $4c0c: $1e $dd
    ld h, l                                       ; $4c0e: $65
    and c                                         ; $4c0f: $a1
    call nc, $1ae6                                ; $4c10: $d4 $e6 $1a
    dec e                                         ; $4c13: $1d
    ld h, d                                       ; $4c14: $62
    rst $20                                       ; $4c15: $e7
    and d                                         ; $4c16: $a2
    sub b                                         ; $4c17: $90
    add sp, -$32                                  ; $4c18: $e8 $ce
    ld h, e                                       ; $4c1a: $63
    add sp, -$45                                  ; $4c1b: $e8 $bb
    jr c, jr_064_4c54                             ; $4c1d: $38 $35

    ld d, c                                       ; $4c1f: $51
    inc b                                         ; $4c20: $04
    add d                                         ; $4c21: $82
    ld hl, $bfb5                                  ; $4c22: $21 $b5 $bf
    sub a                                         ; $4c25: $97
    add a                                         ; $4c26: $87
    jp nc, $92bd                                  ; $4c27: $d2 $bd $92

    db $10                                        ; $4c2a: $10
    ld b, l                                       ; $4c2b: $45
    adc $91                                       ; $4c2c: $ce $91
    ccf                                           ; $4c2e: $3f
    ld b, a                                       ; $4c2f: $47
    ld [$2985], a                                 ; $4c30: $ea $85 $29
    add d                                         ; $4c33: $82
    adc $d5                                       ; $4c34: $ce $d5
    ld h, [hl]                                    ; $4c36: $66
    db $ec                                        ; $4c37: $ec
    cp [hl]                                       ; $4c38: $be
    ld a, [de]                                    ; $4c39: $1a
    sbc [hl]                                      ; $4c3a: $9e
    add hl, bc                                    ; $4c3b: $09
    and l                                         ; $4c3c: $a5
    ld [hl], c                                    ; $4c3d: $71
    cp a                                          ; $4c3e: $bf
    db $ed                                        ; $4c3f: $ed
    ld d, h                                       ; $4c40: $54
    xor c                                         ; $4c41: $a9
    inc hl                                        ; $4c42: $23
    ld a, a                                       ; $4c43: $7f
    xor $69                                       ; $4c44: $ee $69
    ld d, [hl]                                    ; $4c46: $56
    push hl                                       ; $4c47: $e5
    add c                                         ; $4c48: $81
    ld d, d                                       ; $4c49: $52
    ld e, [hl]                                    ; $4c4a: $5e
    and a                                         ; $4c4b: $a7
    inc [hl]                                      ; $4c4c: $34
    sbc h                                         ; $4c4d: $9c
    or h                                          ; $4c4e: $b4
    dec a                                         ; $4c4f: $3d
    sub [hl]                                      ; $4c50: $96

jr_064_4c51:
    ld c, c                                       ; $4c51: $49
    jr z, @-$21                                   ; $4c52: $28 $dd

jr_064_4c54:
    dec hl                                        ; $4c54: $2b
    add hl, bc                                    ; $4c55: $09
    ld d, c                                       ; $4c56: $51
    db $e4                                        ; $4c57: $e4
    inc e                                         ; $4c58: $1c
    ld sp, hl                                     ; $4c59: $f9
    ld [hl], e                                    ; $4c5a: $73
    ld c, h                                       ; $4c5b: $4c
    ld de, $de74                                  ; $4c5c: $11 $74 $de
    cpl                                           ; $4c5f: $2f
    rlca                                          ; $4c60: $07
    ld e, h                                       ; $4c61: $5c
    and $5c                                       ; $4c62: $e6 $5c

jr_064_4c64:
    ld l, l                                       ; $4c64: $6d
    xor [hl]                                      ; $4c65: $ae
    pop hl                                        ; $4c66: $e1
    ld h, d                                       ; $4c67: $62
    ld a, d                                       ; $4c68: $7a
    push hl                                       ; $4c69: $e5
    inc [hl]                                      ; $4c6a: $34
    cpl                                           ; $4c6b: $2f
    ld a, [bc]                                    ; $4c6c: $0a
    cp c                                          ; $4c6d: $b9
    rst $08                                       ; $4c6e: $cf
    adc e                                         ; $4c6f: $8b
    add hl, hl                                    ; $4c70: $29
    jp hl                                         ; $4c71: $e9


    sub c                                         ; $4c72: $91
    ld c, [hl]                                    ; $4c73: $4e
    db $ed                                        ; $4c74: $ed
    dec sp                                        ; $4c75: $3b
    ldh [$b2], a                                  ; $4c76: $e0 $b2
    xor d                                         ; $4c78: $aa

jr_064_4c79:
    ld a, [hl]                                    ; $4c79: $7e
    ld e, a                                       ; $4c7a: $5f
    and a                                         ; $4c7b: $a7
    and h                                         ; $4c7c: $a4
    ld d, a                                       ; $4c7d: $57
    sbc e                                         ; $4c7e: $9b
    ld a, e                                       ; $4c7f: $7b
    ld e, h                                       ; $4c80: $5c
    call z, Call_064_650b                         ; $4c81: $cc $0b $65
    xor d                                         ; $4c84: $aa
    rst $38                                       ; $4c85: $ff
    db $f4                                        ; $4c86: $f4
    ld e, $28                                     ; $4c87: $1e $28
    xor e                                         ; $4c89: $ab
    call $8095                                    ; $4c8a: $cd $95 $80
    xor h                                         ; $4c8d: $ac
    db $fd                                        ; $4c8e: $fd
    dec b                                         ; $4c8f: $05
    db $ed                                        ; $4c90: $ed
    ld [hl], c                                    ; $4c91: $71
    ret z                                         ; $4c92: $c8

    jr z, jr_064_4c79                             ; $4c93: $28 $e4

    xor d                                         ; $4c95: $aa
    ld a, [$687d]                                 ; $4c96: $fa $7d $68
    ld e, [hl]                                    ; $4c99: $5e
    jr z, jr_064_4c51                             ; $4c9a: $28 $b5

    cp c                                          ; $4c9c: $b9
    ld b, [hl]                                    ; $4c9d: $46
    add a                                         ; $4c9e: $87
    ret c                                         ; $4c9f: $d8

    ld a, e                                       ; $4ca0: $7b
    ld b, d                                       ; $4ca1: $42
    ld d, $cb                                     ; $4ca2: $16 $cb
    ld l, d                                       ; $4ca4: $6a
    ld [hl], e                                    ; $4ca5: $73
    and h                                         ; $4ca6: $a4
    sbc [hl]                                      ; $4ca7: $9e
    inc c                                         ; $4ca8: $0c
    add l                                         ; $4ca9: $85
    rst $08                                       ; $4caa: $cf
    ld a, c                                       ; $4cab: $79
    ld bc, $5c07                                  ; $4cac: $01 $07 $5c
    ld d, [hl]                                    ; $4caf: $56
    push de                                       ; $4cb0: $d5
    rst $28                                       ; $4cb1: $ef
    sub e                                         ; $4cb2: $93
    and b                                         ; $4cb3: $a0
    xor $17                                       ; $4cb4: $ee $17
    ld l, l                                       ; $4cb6: $6d
    ld a, [$0594]                                 ; $4cb7: $fa $94 $05
    sbc l                                         ; $4cba: $9d
    inc bc                                        ; $4cbb: $03
    and l                                         ; $4cbc: $a5
    inc a                                         ; $4cbd: $3c
    dec d                                         ; $4cbe: $15
    sub d                                         ; $4cbf: $92
    ld d, l                                       ; $4cc0: $55
    ld a, b                                       ; $4cc1: $78
    ld a, [de]                                    ; $4cc2: $1a
    jr nz, jr_064_4c64                            ; $4cc3: $20 $9f

    ld hl, $5388                                  ; $4cc5: $21 $88 $53
    ei                                            ; $4cc8: $fb
    dec bc                                        ; $4cc9: $0b
    rst $10                                       ; $4cca: $d7
    cp c                                          ; $4ccb: $b9
    xor e                                         ; $4ccc: $ab
    ldh a, [$3c]                                  ; $4ccd: $f0 $3c
    sub [hl]                                      ; $4ccf: $96
    ld sp, $c6f4                                  ; $4cd0: $31 $f4 $c6
    cpl                                           ; $4cd3: $2f
    and [hl]                                      ; $4cd4: $a6
    xor l                                         ; $4cd5: $ad
    db $fd                                        ; $4cd6: $fd
    ld h, a                                       ; $4cd7: $67
    ld l, d                                       ; $4cd8: $6a
    xor $5d                                       ; $4cd9: $ee $5d
    inc d                                         ; $4cdb: $14
    ld [de], a                                    ; $4cdc: $12
    ld h, c                                       ; $4cdd: $61
    xor b                                         ; $4cde: $a8
    ld c, a                                       ; $4cdf: $4f
    push af                                       ; $4ce0: $f5
    sbc a                                         ; $4ce1: $9f
    ld b, [hl]                                    ; $4ce2: $46
    rrca                                          ; $4ce3: $0f
    and c                                         ; $4ce4: $a1
    xor h                                         ; $4ce5: $ac
    ld [hl], $57                                  ; $4ce6: $36 $57
    ld [bc], a                                    ; $4ce8: $02
    ld a, [c]                                     ; $4ce9: $f2
    ld e, d                                       ; $4cea: $5a
    call $c821                                    ; $4ceb: $cd $21 $c8
    ld d, h                                       ; $4cee: $54
    xor b                                         ; $4cef: $a8
    inc a                                         ; $4cf0: $3c
    ld b, $ec                                     ; $4cf1: $06 $ec
    ld d, b                                       ; $4cf3: $50
    sbc h                                         ; $4cf4: $9c
    ld e, [hl]                                    ; $4cf5: $5e
    inc c                                         ; $4cf6: $0c
    ld a, l                                       ; $4cf7: $7d
    ld [hl], h                                    ; $4cf8: $74
    sub a                                         ; $4cf9: $97
    push de                                       ; $4cfa: $d5
    ldh a, [$ac]                                  ; $4cfb: $f0 $ac
    pop hl                                        ; $4cfd: $e1
    ld c, [hl]                                    ; $4cfe: $4e
    dec d                                         ; $4cff: $15
    ld bc, $eb29                                  ; $4d00: $01 $29 $eb
    rra                                           ; $4d03: $1f
    dec a                                         ; $4d04: $3d
    add h                                         ; $4d05: $84
    ld [hl-], a                                   ; $4d06: $32
    ld c, [hl]                                    ; $4d07: $4e
    adc d                                         ; $4d08: $8a
    ld a, b                                       ; $4d09: $78
    or c                                          ; $4d0a: $b1
    ld [hl], c                                    ; $4d0b: $71
    sbc a                                         ; $4d0c: $9f
    ld b, a                                       ; $4d0d: $47
    rst $38                                       ; $4d0e: $ff
    push bc                                       ; $4d0f: $c5
    or e                                          ; $4d10: $b3
    ld c, h                                       ; $4d11: $4c
    cpl                                           ; $4d12: $2f
    db $dd                                        ; $4d13: $dd
    rst $30                                       ; $4d14: $f7
    dec bc                                        ; $4d15: $0b
    rla                                           ; $4d16: $17
    push af                                       ; $4d17: $f5
    ret nz                                        ; $4d18: $c0

    inc bc                                        ; $4d19: $03
    pop bc                                        ; $4d1a: $c1
    ld a, [$d2b9]                                 ; $4d1b: $fa $b9 $d2
    sub $fe                                       ; $4d1e: $d6 $fe
    inc sp                                        ; $4d20: $33
    dec [hl]                                      ; $4d21: $35
    rst $30                                       ; $4d22: $f7
    ld l, $0d                                     ; $4d23: $2e $0d
    rst $08                                       ; $4d25: $cf
    inc l                                         ; $4d26: $2c
    add sp, $0e                                   ; $4d27: $e8 $0e
    ld h, l                                       ; $4d29: $65
    inc c                                         ; $4d2a: $0c
    cp l                                          ; $4d2b: $bd
    pop af                                        ; $4d2c: $f1
    adc e                                         ; $4d2d: $8b
    rla                                           ; $4d2e: $17
    jp z, $2938                                   ; $4d2f: $ca $38 $29

    ld [hl-], a                                   ; $4d32: $32
    inc b                                         ; $4d33: $04
    ld e, c                                       ; $4d34: $59
    call nc, $b135                                ; $4d35: $d4 $35 $b1
    add b                                         ; $4d38: $80
    sub h                                         ; $4d39: $94
    ld c, c                                       ; $4d3a: $49
    inc sp                                        ; $4d3b: $33
    ld d, a                                       ; $4d3c: $57
    jp $d233                                      ; $4d3d: $c3 $33 $d2


    cp l                                          ; $4d40: $bd
    ld a, [c]                                     ; $4d41: $f2
    db $fd                                        ; $4d42: $fd
    ld [bc], a                                    ; $4d43: $02
    sub a                                         ; $4d44: $97
    add a                                         ; $4d45: $87
    ld h, d                                       ; $4d46: $62
    ld e, c                                       ; $4d47: $59
    db $fd                                        ; $4d48: $fd
    dec b                                         ; $4d49: $05
    cp l                                          ; $4d4a: $bd
    rst $08                                       ; $4d4b: $cf
    adc e                                         ; $4d4c: $8b
    ld h, c                                       ; $4d4d: $61
    ld d, l                                       ; $4d4e: $55
    jp hl                                         ; $4d4f: $e9


    cp l                                          ; $4d50: $bd
    ld a, e                                       ; $4d51: $7b
    ld de, $7a08                                  ; $4d52: $11 $08 $7a
    rla                                           ; $4d55: $17
    and a                                         ; $4d56: $a7
    ld h, $8a                                     ; $4d57: $26 $8a
    ld b, b                                       ; $4d59: $40
    jr nc, @+$66                                  ; $4d5a: $30 $64

    dec e                                         ; $4d5c: $1d
    xor c                                         ; $4d5d: $a9
    rst $10                                       ; $4d5e: $d7
    jp c, $16a2                                   ; $4d5f: $da $a2 $16

    rst $30                                       ; $4d62: $f7
    ld [$077b], a                                 ; $4d63: $ea $7b $07
    ld e, h                                       ; $4d66: $5c
    and [hl]                                      ; $4d67: $a6
    cp [hl]                                       ; $4d68: $be
    inc c                                         ; $4d69: $0c
    sub h                                         ; $4d6a: $94
    ld a, [c]                                     ; $4d6b: $f2
    and d                                         ; $4d6c: $a2
    and $a8                                       ; $4d6d: $e6 $a8
    ld [hl], h                                    ; $4d6f: $74
    xor a                                         ; $4d70: $af
    push de                                       ; $4d71: $d5
    inc e                                         ; $4d72: $1c
    ld sp, hl                                     ; $4d73: $f9
    sbc a                                         ; $4d74: $9f
    sub c                                         ; $4d75: $91
    adc $d0                                       ; $4d76: $ce $d0
    ld l, d                                       ; $4d78: $6a
    ld sp, hl                                     ; $4d79: $f9
    ld a, [hl]                                    ; $4d7a: $7e
    ld bc, $8697                                  ; $4d7b: $01 $97 $86
    sbc $5d                                       ; $4d7e: $de $5d
    ret nz                                        ; $4d80: $c0

    or l                                          ; $4d81: $b5
    ld b, l                                       ; $4d82: $45
    dec l                                         ; $4d83: $2d
    xor $d5                                       ; $4d84: $ee $d5
    add hl, hl                                    ; $4d86: $29
    sbc [hl]                                      ; $4d87: $9e
    or d                                          ; $4d88: $b2
    and b                                         ; $4d89: $a0
    ld [hl], e                                    ; $4d8a: $73
    ld a, [hl+]                                   ; $4d8b: $2a
    db $f4                                        ; $4d8c: $f4
    xor $02                                       ; $4d8d: $ee $02
    ld c, [hl]                                    ; $4d8f: $4e
    ld [hl], c                                    ; $4d90: $71
    sbc l                                         ; $4d91: $9d
    ld a, [bc]                                    ; $4d92: $0a
    add sp, -$70                                  ; $4d93: $e8 $90
    cp b                                          ; $4d95: $b8
    rst $00                                       ; $4d96: $c7
    ld [hl-], a                                   ; $4d97: $32
    cp d                                          ; $4d98: $ba
    res 3, b                                      ; $4d99: $cb $98
    sbc d                                         ; $4d9b: $9a
    inc bc                                        ; $4d9c: $03
    and l                                         ; $4d9d: $a5
    cp h                                          ; $4d9e: $bc
    rst $08                                       ; $4d9f: $cf
    xor e                                         ; $4da0: $ab
    dec l                                         ; $4da1: $2d
    ld l, d                                       ; $4da2: $6a
    ld d, $df                                     ; $4da3: $16 $df
    cpl                                           ; $4da5: $2f
    sub a                                         ; $4da6: $97
    add [hl]                                      ; $4da7: $86
    sbc $5d                                       ; $4da8: $de $5d
    ret nz                                        ; $4daa: $c0

    or l                                          ; $4dab: $b5
    ld b, l                                       ; $4dac: $45
    dec l                                         ; $4dad: $2d
    xor $d5                                       ; $4dae: $ee $d5
    add hl, hl                                    ; $4db0: $29
    sbc [hl]                                      ; $4db1: $9e
    or d                                          ; $4db2: $b2
    and b                                         ; $4db3: $a0
    ld [hl], e                                    ; $4db4: $73
    ld a, [hl+]                                   ; $4db5: $2a
    and b                                         ; $4db6: $a0
    ld b, e                                       ; $4db7: $43
    and d                                         ; $4db8: $a2
    push bc                                       ; $4db9: $c5
    rst $30                                       ; $4dba: $f7
    ld l, $02                                     ; $4dbb: $2e $02
    pop bc                                        ; $4dbd: $c1
    ld e, c                                       ; $4dbe: $59
    and $de                                       ; $4dbf: $e6 $de
    sbc l                                         ; $4dc1: $9d
    ei                                            ; $4dc2: $fb
    add d                                         ; $4dc3: $82
    sub [hl]                                      ; $4dc4: $96
    push de                                       ; $4dc5: $d5
    ldh a, [$cc]                                  ; $4dc6: $f0 $cc
    add hl, sp                                    ; $4dc8: $39
    and h                                         ; $4dc9: $a4
    ld [c], a                                     ; $4dca: $e2
    ld b, d                                       ; $4dcb: $42
    ld e, c                                       ; $4dcc: $59
    ld l, l                                       ; $4dcd: $6d
    ld d, c                                       ; $4dce: $51
    or e                                          ; $4dcf: $b3
    xor h                                         ; $4dd0: $ac
    ld d, e                                       ; $4dd1: $53
    db $eb                                        ; $4dd2: $eb
    db $fd                                        ; $4dd3: $fd
    ld [bc], a                                    ; $4dd4: $02
    add a                                         ; $4dd5: $87
    ld e, d                                       ; $4dd6: $5a
    call nc, Call_064_5ee2                        ; $4dd7: $d4 $e2 $5e

jr_064_4dda:
    sbc l                                         ; $4dda: $9d
    adc e                                         ; $4ddb: $8b
    cp a                                          ; $4ddc: $bf

jr_064_4ddd:
    ld h, b                                       ; $4ddd: $60
    ld a, [hl-]                                   ; $4dde: $3a
    rla                                           ; $4ddf: $17
    sbc [hl]                                      ; $4de0: $9e
    ret                                           ; $4de1: $c9


    ld h, a                                       ; $4de2: $67
    or [hl]                                       ; $4de3: $b6
    inc l                                         ; $4de4: $2c
    sub h                                         ; $4de5: $94
    add hl, hl                                    ; $4de6: $29
    dec bc                                        ; $4de7: $0b
    ld a, [hl-]                                   ; $4de8: $3a
    rst $30                                       ; $4de9: $f7
    ld a, h                                       ; $4dea: $7c
    add hl, hl                                    ; $4deb: $29
    ld e, $e9                                     ; $4dec: $1e $e9
    rst $20                                       ; $4dee: $e7
    ld [hl], c                                    ; $4def: $71
    add a                                         ; $4df0: $87
    ld b, d                                       ; $4df1: $42
    ld a, [de]                                    ; $4df2: $1a
    sbc l                                         ; $4df3: $9d
    rst $30                                       ; $4df4: $f7
    ld c, $36                                     ; $4df5: $0e $36
    xor e                                         ; $4df7: $ab
    ld a, [c]                                     ; $4df8: $f2
    ld b, d                                       ; $4df9: $42
    xor c                                         ; $4dfa: $a9
    call $80a9                                    ; $4dfb: $cd $a9 $80
    ld c, $89                                     ; $4dfe: $0e $89
    rst $30                                       ; $4e00: $f7
    dec bc                                        ; $4e01: $0b
    rla                                           ; $4e02: $17
    scf                                           ; $4e03: $37
    rst $00                                       ; $4e04: $c7
    ret nc                                        ; $4e05: $d0

    ld [hl], a                                    ; $4e06: $77
    jp c, $fabd                                   ; $4e07: $da $bd $fa

    ei                                            ; $4e0a: $fb
    ld b, d                                       ; $4e0b: $42
    ld e, c                                       ; $4e0c: $59
    ld l, l                                       ; $4e0d: $6d
    ld d, c                                       ; $4e0e: $51
    or e                                          ; $4e0f: $b3
    inc c                                         ; $4e10: $0c
    call $a88b                                    ; $4e11: $cd $8b $a8
    ld e, c                                       ; $4e14: $59
    reti                                          ; $4e15: $d9


    xor e                                         ; $4e16: $ab
    dec l                                         ; $4e17: $2d
    ld l, d                                       ; $4e18: $6a
    ld [hl], c                                    ; $4e19: $71
    xor a                                         ; $4e1a: $af
    ld e, $ea                                     ; $4e1b: $1e $ea
    ld a, e                                       ; $4e1d: $7b
    xor b                                         ; $4e1e: $a8
    add sp, -$44                                  ; $4e1f: $e8 $bc
    ld e, a                                       ; $4e21: $5f
    sub a                                         ; $4e22: $97
    ld d, e                                       ; $4e23: $53
    ld a, [hl+]                                   ; $4e24: $2a
    ld e, e                                       ; $4e25: $5b
    sub $1e                                       ; $4e26: $d6 $1e
    ld h, d                                       ; $4e28: $62
    ld h, e                                       ; $4e29: $63
    and a                                         ; $4e2a: $a7
    ld d, [hl]                                    ; $4e2b: $56
    rst $28                                       ; $4e2c: $ef
    ld [hl], d                                    ; $4e2d: $72
    jr nz, jr_064_4dda                            ; $4e2e: $20 $aa

    ld b, [hl]                                    ; $4e30: $46
    cp $5c                                        ; $4e31: $fe $5c
    ld c, h                                       ; $4e33: $4c
    ld c, c                                       ; $4e34: $49
    di                                            ; $4e35: $f3
    ld e, d                                       ; $4e36: $5a
    call $87b5                                    ; $4e37: $cd $b5 $87
    ld b, d                                       ; $4e3a: $42
    db $ec                                        ; $4e3b: $ec
    daa                                           ; $4e3c: $27

Call_064_4e3d:
    rst $10                                       ; $4e3d: $d7
    ld [hl], l                                    ; $4e3e: $75
    adc d                                         ; $4e3f: $8a
    inc d                                         ; $4e40: $14
    and a                                         ; $4e41: $a7
    ld h, a                                       ; $4e42: $67
    pop bc                                        ; $4e43: $c1
    ld c, c                                       ; $4e44: $49
    jr z, jr_064_4ddd                             ; $4e45: $28 $96

    ld a, l                                       ; $4e47: $7d
    ld b, c                                       ; $4e48: $41
    res 7, l                                      ; $4e49: $cb $bd
    or $2f                                        ; $4e4b: $f6 $2f
    adc e                                         ; $4e4d: $8b
    adc l                                         ; $4e4e: $8d
    ld b, e                                       ; $4e4f: $43
    di                                            ; $4e50: $f3
    ld a, [hl+]                                   ; $4e51: $2a
    jr z, @-$19                                   ; $4e52: $28 $e5

    db $e4                                        ; $4e54: $e4
    ei                                            ; $4e55: $fb
    dec b                                         ; $4e56: $05
    rlca                                          ; $4e57: $07
    xor c                                         ; $4e58: $a9
    cp b                                          ; $4e59: $b8
    adc e                                         ; $4e5a: $8b
    ld d, e                                       ; $4e5b: $53
    inc de                                        ; $4e5c: $13
    ld b, l                                       ; $4e5d: $45
    jr nz, jr_064_4e78                            ; $4e5e: $20 $18

    or d                                          ; $4e60: $b2
    adc [hl]                                      ; $4e61: $8e
    call nc, Call_064_6d6b                        ; $4e62: $d4 $6b $6d
    ld d, c                                       ; $4e65: $51
    adc e                                         ; $4e66: $8b
    ld a, e                                       ; $4e67: $7b
    push af                                       ; $4e68: $f5
    jr c, jr_064_4ea8                             ; $4e69: $38 $3d

    di                                            ; $4e6b: $f3
    cpl                                           ; $4e6c: $2f
    adc $75                                       ; $4e6d: $ce $75
    adc d                                         ; $4e6f: $8a
    inc d                                         ; $4e70: $14
    and a                                         ; $4e71: $a7
    rla                                           ; $4e72: $17
    ld e, d                                       ; $4e73: $5a
    dec l                                         ; $4e74: $2d
    rst $18                                       ; $4e75: $df
    cpl                                           ; $4e76: $2f
    ld d, a                                       ; $4e77: $57

jr_064_4e78:
    ld h, $35                                     ; $4e78: $26 $35
    sbc $e7                                       ; $4e7a: $de $e7
    push de                                       ; $4e7c: $d5
    ld d, $35                                     ; $4e7d: $16 $35
    adc e                                         ; $4e7f: $8b
    add a                                         ; $4e80: $87
    ld d, b                                       ; $4e81: $50
    ld d, $85                                     ; $4e82: $16 $85
    sbc h                                         ; $4e84: $9c
    ld a, c                                       ; $4e85: $79
    sub l                                         ; $4e86: $95
    adc l                                         ; $4e87: $8d
    inc de                                        ; $4e88: $13
    ld c, d                                       ; $4e89: $4a
    ld a, $4e                                     ; $4e8a: $3e $4e
    rst $28                                       ; $4e8c: $ef
    ld [c], a                                     ; $4e8d: $e2
    call nc, Call_000_1144                        ; $4e8e: $d4 $44 $11
    ld [$a486], sp                                ; $4e91: $08 $86 $a4
    db $ed                                        ; $4e94: $ed
    ld l, c                                       ; $4e95: $69
    ld d, [hl]                                    ; $4e96: $56
    push hl                                       ; $4e97: $e5
    or l                                          ; $4e98: $b5
    sbc d                                         ; $4e99: $9a
    dec sp                                        ; $4e9a: $3b
    db $ed                                        ; $4e9b: $ed
    ld e, [hl]                                    ; $4e9c: $5e
    db $fd                                        ; $4e9d: $fd
    db $fd                                        ; $4e9e: $fd
    ld a, [hl]                                    ; $4e9f: $7e
    ld bc, $fa6d                                  ; $4ea0: $01 $6d $fa
    xor d                                         ; $4ea3: $aa
    ld a, [$b57d]                                 ; $4ea4: $fa $7d $b5
    ld b, l                                       ; $4ea7: $45

jr_064_4ea8:
    call Call_064_5de2                            ; $4ea8: $cd $e2 $5d
    ld c, [hl]                                    ; $4eab: $4e
    xor c                                         ; $4eac: $a9
    ld l, h                                       ; $4ead: $6c
    ld e, c                                       ; $4eae: $59
    ld a, e                                       ; $4eaf: $7b
    adc b                                         ; $4eb0: $88
    adc l                                         ; $4eb1: $8d
    sbc l                                         ; $4eb2: $9d
    ld e, d                                       ; $4eb3: $5a
    cp l                                          ; $4eb4: $bd
    res 0, c                                      ; $4eb5: $cb $81
    xor b                                         ; $4eb7: $a8
    ld e, d                                       ; $4eb8: $5a
    adc b                                         ; $4eb9: $88
    dec l                                         ; $4eba: $2d
    xor l                                         ; $4ebb: $ad
    and $fd                                       ; $4ebc: $e6 $fd
    ld [bc], a                                    ; $4ebe: $02
    add a                                         ; $4ebf: $87
    ld e, d                                       ; $4ec0: $5a
    call nc, $bb2c                                ; $4ec1: $d4 $2c $bb
    rst $28                                       ; $4ec4: $ef
    ld a, e                                       ; $4ec5: $7b
    ld l, b                                       ; $4ec6: $68
    ld e, $3a                                     ; $4ec7: $1e $3a
    ld d, a                                       ; $4ec9: $57
    ld e, e                                       ; $4eca: $5b
    call nc, Call_064_5ee2                        ; $4ecb: $d4 $e2 $5e
    ld c, l                                       ; $4ece: $4d
    dec de                                        ; $4ecf: $1b
    ld [$8d8b], a                                 ; $4ed0: $ea $8b $8d

jr_064_4ed3:
    cp e                                          ; $4ed3: $bb
    rst $28                                       ; $4ed4: $ef
    ld a, e                                       ; $4ed5: $7b
    sub a                                         ; $4ed6: $97
    ld d, e                                       ; $4ed7: $53
    ld a, [hl+]                                   ; $4ed8: $2a
    ld e, e                                       ; $4ed9: $5b
    halt                                          ; $4eda: $76
    ld a, c                                       ; $4edb: $79
    inc de                                        ; $4edc: $13
    ld e, l                                       ; $4edd: $5d
    dec sp                                        ; $4ede: $3b
    or l                                          ; $4edf: $b5
    ld a, d                                       ; $4ee0: $7a
    sub a                                         ; $4ee1: $97
    add e                                         ; $4ee2: $83
    ld d, d                                       ; $4ee3: $52
    ld h, $43                                     ; $4ee4: $26 $43
    ld l, h                                       ; $4ee6: $6c
    inc a                                         ; $4ee7: $3c
    rst $20                                       ; $4ee8: $e7
    dec b                                         ; $4ee9: $05
    db $ed                                        ; $4eea: $ed
    ld [hl], c                                    ; $4eeb: $71
    ret z                                         ; $4eec: $c8

    jr z, jr_064_4ed3                             ; $4eed: $28 $e4

    cp d                                          ; $4eef: $ba
    pop de                                        ; $4ef0: $d1
    inc hl                                        ; $4ef1: $23
    sbc l                                         ; $4ef2: $9d
    ld h, d                                       ; $4ef3: $62
    db $f4                                        ; $4ef4: $f4
    add hl, sp                                    ; $4ef5: $39
    dec sp                                        ; $4ef6: $3b
    call nc, $66a2                                ; $4ef7: $d4 $a2 $66
    reti                                          ; $4efa: $d9


    push hl                                       ; $4efb: $e5
    ld b, b                                       ; $4efc: $40
    ld d, h                                       ; $4efd: $54
    xor l                                         ; $4efe: $ad
    push de                                       ; $4eff: $d5
    call c, $f769                                 ; $4f00: $dc $69 $f7
    ld [$f7ef], a                                 ; $4f03: $ea $ef $f7
    dec bc                                        ; $4f06: $0b
    sub a                                         ; $4f07: $97
    add [hl]                                      ; $4f08: $86
    sbc $5d                                       ; $4f09: $de $5d
    ret nz                                        ; $4f0b: $c0

    or l                                          ; $4f0c: $b5
    ld b, l                                       ; $4f0d: $45
    dec l                                         ; $4f0e: $2d
    xor $d5                                       ; $4f0f: $ee $d5
    add hl, hl                                    ; $4f11: $29
    sbc [hl]                                      ; $4f12: $9e
    or d                                          ; $4f13: $b2
    and b                                         ; $4f14: $a0
    ld [hl], e                                    ; $4f15: $73
    ld a, [hl+]                                   ; $4f16: $2a
    and b                                         ; $4f17: $a0
    ld b, e                                       ; $4f18: $43
    and d                                         ; $4f19: $a2
    push bc                                       ; $4f1a: $c5
    rst $30                                       ; $4f1b: $f7
    jp c, Jump_000_39f4                           ; $4f1c: $da $f4 $39

    ld b, a                                       ; $4f1f: $47
    cp d                                          ; $4f20: $ba
    inc hl                                        ; $4f21: $23
    sub h                                         ; $4f22: $94
    ld a, l                                       ; $4f23: $7d
    sbc $25                                       ; $4f24: $de $25
    inc hl                                        ; $4f26: $23
    ld a, a                                       ; $4f27: $7f
    adc $bc                                       ; $4f28: $ce $bc
    jp c, $16a2                                   ; $4f2a: $da $a2 $16

    rst $30                                       ; $4f2d: $f7
    ld [$3a1c], a                                 ; $4f2e: $ea $1c $3a
    rst $00                                       ; $4f31: $c7
    cp a                                          ; $4f32: $bf
    dec sp                                        ; $4f33: $3b
    rst $28                                       ; $4f34: $ef
    ld e, l                                       ; $4f35: $5d
    ld h, [hl]                                    ; $4f36: $66
    sbc h                                         ; $4f37: $9c
    inc hl                                        ; $4f38: $23
    halt                                          ; $4f39: $76
    adc [hl]                                      ; $4f3a: $8e
    db $fc                                        ; $4f3b: $fc
    rst $08                                       ; $4f3c: $cf
    ld e, d                                       ; $4f3d: $5a
    call Call_064_769d                            ; $4f3e: $cd $9d $76
    xor a                                         ; $4f41: $af
    cp $7e                                        ; $4f42: $fe $7e
    cp a                                          ; $4f44: $bf
    cpl                                           ; $4f45: $2f
    sub a                                         ; $4f46: $97
    add hl, de                                    ; $4f47: $19
    rst $20                                       ; $4f48: $e7
    adc b                                         ; $4f49: $88
    sbc l                                         ; $4f4a: $9d
    xor e                                         ; $4f4b: $ab
    dec l                                         ; $4f4c: $2d
    ld l, d                                       ; $4f4d: $6a
    ld [hl], c                                    ; $4f4e: $71
    xor a                                         ; $4f4f: $af
    and $3d                                       ; $4f50: $e6 $3d
    add $99                                       ; $4f52: $c6 $99
    rla                                           ; $4f54: $17
    ld b, e                                       ; $4f55: $43
    xor e                                         ; $4f56: $ab
    ld h, l                                       ; $4f57: $65
    ld b, c                                       ; $4f58: $41
    adc a                                         ; $4f59: $8f
    inc c                                         ; $4f5a: $0c
    or c                                          ; $4f5b: $b1
    ld [hl], c                                    ; $4f5c: $71
    xor l                                         ; $4f5d: $ad
    and $4e                                       ; $4f5e: $e6 $4e
    cp e                                          ; $4f60: $bb
    ld d, a                                       ; $4f61: $57
    ld a, a                                       ; $4f62: $7f
    cp a                                          ; $4f63: $bf
    rst $10                                       ; $4f64: $d7
    cp $65                                        ; $4f65: $fe $65
    adc $21                                       ; $4f67: $ce $21
    ret z                                         ; $4f69: $c8

    sbc [hl]                                      ; $4f6a: $9e
    cpl                                           ; $4f6b: $2f
    ld a, b                                       ; $4f6c: $78
    cp a                                          ; $4f6d: $bf
    rst $10                                       ; $4f6e: $d7
    ld a, h                                       ; $4f6f: $7c
    or l                                          ; $4f70: $b5
    jr z, jr_064_4f97                             ; $4f71: $28 $24

    jp nz, Jump_000_1f50                          ; $4f73: $c2 $50 $1f

    ld a, [$5209]                                 ; $4f76: $fa $09 $52
    add hl, sp                                    ; $4f79: $39
    sbc l                                         ; $4f7a: $9d
    ld b, [hl]                                    ; $4f7b: $46
    rrca                                          ; $4f7c: $0f
    call Call_064_428b                            ; $4f7d: $cd $8b $42
    ld c, [hl]                                    ; $4f80: $4e
    push af                                       ; $4f81: $f5
    ld e, a                                       ; $4f82: $5f
    xor e                                         ; $4f83: $ab
    add l                                         ; $4f84: $85
    or [hl]                                       ; $4f85: $b6
    or $9f                                        ; $4f86: $f6 $9f
    xor c                                         ; $4f88: $a9
    cp c                                          ; $4f89: $b9
    rst $10                                       ; $4f8a: $d7
    xor $9c                                       ; $4f8b: $ee $9c
    ld [hl], e                                    ; $4f8d: $73
    sub [hl]                                      ; $4f8e: $96
    ld [hl], c                                    ; $4f8f: $71
    ld l, d                                       ; $4f90: $6a
    ld a, d                                       ; $4f91: $7a
    ld [hl], a                                    ; $4f92: $77
    inc d                                         ; $4f93: $14
    ld a, [c]                                     ; $4f94: $f2
    pop de                                        ; $4f95: $d1
    ei                                            ; $4f96: $fb

jr_064_4f97:
    rst $08                                       ; $4f97: $cf
    push de                                       ; $4f98: $d5
    ldh a, [$ac]                                  ; $4f99: $f0 $ac
    pop hl                                        ; $4f9b: $e1
    ld c, [hl]                                    ; $4f9c: $4e
    dec d                                         ; $4f9d: $15
    ld bc, $f729                                  ; $4f9e: $01 $29 $f7
    dec bc                                        ; $4fa1: $0b
    rla                                           ; $4fa2: $17
    ld e, a                                       ; $4fa3: $5f
    ld a, l                                       ; $4fa4: $7d
    ret                                           ; $4fa5: $c9


    sub l                                         ; $4fa6: $95
    rst $10                                       ; $4fa7: $d7
    ld e, h                                       ; $4fa8: $5c
    ld [hl], c                                    ; $4fa9: $71
    ld sp, hl                                     ; $4faa: $f9
    dec h                                         ; $4fab: $25
    rst $10                                       ; $4fac: $d7
    ld e, h                                       ; $4fad: $5c
    cp b                                          ; $4fae: $b8
    ld b, e                                       ; $4faf: $43
    ld d, a                                       ; $4fb0: $57
    ld e, [hl]                                    ; $4fb1: $5e
    ld [hl], d                                    ; $4fb2: $72
    reti                                          ; $4fb3: $d9


    dec bc                                        ; $4fb4: $0b
    ld a, e                                       ; $4fb5: $7b
    ld bc, $9017                                  ; $4fb6: $01 $17 $90
    adc [hl]                                      ; $4fb9: $8e
    ld e, d                                       ; $4fba: $5a
    add hl, de                                    ; $4fbb: $19
    ld d, b                                       ; $4fbc: $50
    daa                                           ; $4fbd: $27
    ld [$017c], a                                 ; $4fbe: $ea $7c $01
    add a                                         ; $4fc1: $87
    ret c                                         ; $4fc2: $d8

    or c                                          ; $4fc3: $b1
    ld [hl], a                                    ; $4fc4: $77
    ld hl, $4833                                  ; $4fc5: $21 $33 $48
    ld [hl], c                                    ; $4fc8: $71
    cp [hl]                                       ; $4fc9: $be
    ld a, e                                       ; $4fca: $7b
    ld bc, $1997                                  ; $4fcb: $01 $97 $19
    dec l                                         ; $4fce: $2d
    add sp, -$2b                                  ; $4fcf: $e8 $d5
    ld d, $74                                     ; $4fd1: $16 $74
    dec e                                         ; $4fd3: $1d
    ld h, e                                       ; $4fd4: $63

jr_064_4fd5:
    ld d, b                                       ; $4fd5: $50

jr_064_4fd6:
    db $dd                                        ; $4fd6: $dd
    ld sp, hl                                     ; $4fd7: $f9
    ld [bc], a                                    ; $4fd8: $02
    rlca                                          ; $4fd9: $07
    add c                                         ; $4fda: $81
    jr z, jr_064_4fd6                             ; $4fdb: $28 $f9

    db $dd                                        ; $4fdd: $dd
    rst $10                                       ; $4fde: $d7

Jump_064_4fdf:
    ld d, $b2                                     ; $4fdf: $16 $b2
    ld a, h                                       ; $4fe1: $7c
    ld a, c                                       ; $4fe2: $79
    ld bc, $017b                                  ; $4fe3: $01 $7b $01
    sub a                                         ; $4fe6: $97
    add hl, de                                    ; $4fe7: $19
    dec l                                         ; $4fe8: $2d
    add sp, -$6b                                  ; $4fe9: $e8 $95
    db $fc                                        ; $4feb: $fc
    ld de, $e728                                  ; $4fec: $11 $28 $e7
    dec bc                                        ; $4fef: $0b
    rlca                                          ; $4ff0: $07
    ld b, c                                       ; $4ff1: $41
    ld a, c                                       ; $4ff2: $79
    ld d, a                                       ; $4ff3: $57
    or $cf                                        ; $4ff4: $f6 $cf
    ld l, h                                       ; $4ff6: $6c
    halt                                          ; $4ff7: $76
    cp [hl]                                       ; $4ff8: $be
    ld a, e                                       ; $4ff9: $7b
    ld bc, $5a87                                  ; $4ffa: $01 $87 $5a
    ret nc                                        ; $4ffd: $d0

    ld [hl], l                                    ; $4ffe: $75
    adc h                                         ; $4fff: $8c
    ld b, c                                       ; $5000: $41
    ld [hl], l                                    ; $5001: $75
    and a                                         ; $5002: $a7
    ld e, a                                       ; $5003: $5f
    rlca                                          ; $5004: $07
    ld b, d                                       ; $5005: $42
    dec h                                         ; $5006: $25
    push af                                       ; $5007: $f5
    cp a                                          ; $5008: $bf
    add e                                         ; $5009: $83
    ld [hl], $d6                                  ; $500a: $36 $d6
    rla                                           ; $500c: $17
    add a                                         ; $500d: $87
    ret c                                         ; $500e: $d8

    or c                                          ; $500f: $b1
    ld [hl], a                                    ; $5010: $77
    db $dd                                        ; $5011: $dd
    rst $28                                       ; $5012: $ef
    db $fd                                        ; $5013: $fd
    jr nc, jr_064_4fd5                            ; $5014: $30 $bf

    ld l, l                                       ; $5016: $6d
    ld b, c                                       ; $5017: $41
    cpl                                           ; $5018: $2f
    dec sp                                        ; $5019: $3b
    ld b, h                                       ; $501a: $44
    sub h                                         ; $501b: $94
    add h                                         ; $501c: $84
    sbc $41                                       ; $501d: $de $41
    jp z, $870b                                   ; $501f: $ca $0b $87

    ret c                                         ; $5022: $d8

    or c                                          ; $5023: $b1
    ld [hl], a                                    ; $5024: $77
    ld hl, $4833                                  ; $5025: $21 $33 $48
    ld [hl], c                                    ; $5028: $71
    cp [hl]                                       ; $5029: $be
    ld a, e                                       ; $502a: $7b
    ld bc, $e717                                  ; $502b: $01 $17 $e7
    adc a                                         ; $502e: $8f
    ld b, b                                       ; $502f: $40
    dec l                                         ; $5030: $2d
    sub h                                         ; $5031: $94
    ld a, l                                       ; $5032: $7d
    add c                                         ; $5033: $81
    rst $20                                       ; $5034: $e7

jr_064_5035:
    inc sp                                        ; $5035: $33
    inc b                                         ; $5036: $04
    ld a, c                                       ; $5037: $79
    ld bc, $2617                                  ; $5038: $01 $17 $26
    db $10                                        ; $503b: $10
    ld e, l                                       ; $503c: $5d
    cp e                                          ; $503d: $bb
    add c                                         ; $503e: $81
    sbc a                                         ; $503f: $9f
    cpl                                           ; $5040: $2f
    cpl                                           ; $5041: $2f
    ld d, a                                       ; $5042: $57
    add a                                         ; $5043: $87
    ld b, [hl]                                    ; $5044: $46
    ld h, e                                       ; $5045: $63
    rst $10                                       ; $5046: $d7
    cp c                                          ; $5047: $b9
    ld a, [c]                                     ; $5048: $f2
    dec bc                                        ; $5049: $0b
    rlca                                          ; $504a: $07
    sbc h                                         ; $504b: $9c
    xor c                                         ; $504c: $a9
    reti                                          ; $504d: $d9


    ld [hl], l                                    ; $504e: $75
    ld hl, $7049                                  ; $504f: $21 $49 $70
    ld a, l                                       ; $5052: $7d
    ld bc, $017b                                  ; $5053: $01 $7b $01
    rla                                           ; $5056: $17
    add l                                         ; $5057: $85
    adc h                                         ; $5058: $8c
    ld a, $b3                                     ; $5059: $3e $b3
    di                                            ; $505b: $f3
    cp b                                          ; $505c: $b8
    dec e                                         ; $505d: $1d
    cp a                                          ; $505e: $bf
    ld [hl], $57                                  ; $505f: $36 $57
    jr z, jr_064_5035                             ; $5061: $28 $d2

    adc l                                         ; $5063: $8d

jr_064_5064:
    xor $d5                                       ; $5064: $ee $d5
    cpl                                           ; $5066: $2f
    rlca                                          ; $5067: $07
    add c                                         ; $5068: $81
    jr z, jr_064_5064                             ; $5069: $28 $f9

    db $dd                                        ; $506b: $dd
    rst $10                                       ; $506c: $d7
    xor [hl]                                      ; $506d: $ae
    ccf                                           ; $506e: $3f
    xor [hl]                                      ; $506f: $ae
    cpl                                           ; $5070: $2f
    ld a, e                                       ; $5071: $7b
    ld bc, $8d07                                  ; $5072: $01 $07 $8d
    xor l                                         ; $5075: $ad
    inc c                                         ; $5076: $0c
    xor b                                         ; $5077: $a8
    inc de                                        ; $5078: $13
    ld [hl], l                                    ; $5079: $75
    cp [hl]                                       ; $507a: $be
    rla                                           ; $507b: $17
    db $fc                                        ; $507c: $fc
    db $fc                                        ; $507d: $fc
    ld l, e                                       ; $507e: $6b
    inc bc                                        ; $507f: $03
    sub e                                         ; $5080: $93
    rst $08                                       ; $5081: $cf
    dec bc                                        ; $5082: $0b
    ld a, e                                       ; $5083: $7b
    ld bc, $f507                                  ; $5084: $01 $07 $f5
    ld a, [bc]                                    ; $5087: $0a
    ld l, d                                       ; $5088: $6a
    and c                                         ; $5089: $a1
    xor h                                         ; $508a: $ac
    ld l, e                                       ; $508b: $6b
    ret nc                                        ; $508c: $d0

    ld d, c                                       ; $508d: $51
    ld h, h                                       ; $508e: $64
    push bc                                       ; $508f: $c5
    adc $17                                       ; $5090: $ce $17
    rlca                                          ; $5092: $07
    ld a, a                                       ; $5093: $7f
    xor d                                         ; $5094: $aa
    ld de, $05b4                                  ; $5095: $11 $b4 $05
    ld e, a                                       ; $5098: $5f
    ld l, l                                       ; $5099: $6d
    ld l, c                                       ; $509a: $69
    ld h, d                                       ; $509b: $62
    cp e                                          ; $509c: $bb
    ldh [$a3], a                                  ; $509d: $e0 $a3
    and $05                                       ; $509f: $e6 $05
    sub a                                         ; $50a1: $97
    ld a, h                                       ; $50a2: $7c
    reti                                          ; $50a3: $d9


    push de                                       ; $50a4: $d5
    ld bc, $bfe1                                  ; $50a5: $01 $e1 $bf
    ld a, e                                       ; $50a8: $7b
    ld bc, $b8d7                                  ; $50a9: $01 $d7 $b8
    or d                                          ; $50ac: $b2
    db $d3                                        ; $50ad: $d3
    cpl                                           ; $50ae: $2f
    sub a                                         ; $50af: $97
    add c                                         ; $50b0: $81
    ld d, $2d                                     ; $50b1: $16 $2d
    cp e                                          ; $50b3: $bb
    ld b, b                                       ; $50b4: $40
    ld a, a                                       ; $50b5: $7f
    ld e, $90                                     ; $50b6: $1e $90

Jump_064_50b8:
    ld a, [$e702]                                 ; $50b8: $fa $02 $e7
    daa                                           ; $50bb: $27
    ld a, h                                       ; $50bc: $7c
    reti                                          ; $50bd: $d9


    and l                                         ; $50be: $a5
    sub b                                         ; $50bf: $90
    ld c, d                                       ; $50c0: $4a
    ld e, h                                       ; $50c1: $5c
    db $eb                                        ; $50c2: $eb
    dec bc                                        ; $50c3: $0b
    rla                                           ; $50c4: $17
    sub b                                         ; $50c5: $90
    ld c, [hl]                                    ; $50c6: $4e
    ld c, l                                       ; $50c7: $4d
    rst $18                                       ; $50c8: $df
    sub l                                         ; $50c9: $95
    ld d, $20                                     ; $50ca: $16 $20
    xor d                                         ; $50cc: $aa
    ld e, [hl]                                    ; $50cd: $5e
    rst $20                                       ; $50ce: $e7
    add hl, bc                                    ; $50cf: $09
    db $f4                                        ; $50d0: $f4
    dec e                                         ; $50d1: $1d
    ld [$8495], sp                                ; $50d2: $08 $95 $84
    rla                                           ; $50d5: $17
    ld a, e                                       ; $50d6: $7b
    ld bc, $017b                                  ; $50d7: $01 $7b $01
    rst $20                                       ; $50da: $e7
    dec e                                         ; $50db: $1d
    inc a                                         ; $50dc: $3c
    adc a                                         ; $50dd: $8f
    ret nc                                        ; $50de: $d0

    add l                                         ; $50df: $85
    cp e                                          ; $50e0: $bb
    ldh a, [$f2]                                  ; $50e1: $f0 $f2
    ld l, e                                       ; $50e3: $6b
    ld l, $bc                                     ; $50e4: $2e $bc
    ld a, [$f39a]                                 ; $50e6: $fa $9a $f3
    ld l, $b9                                     ; $50e9: $2e $b9
    db $fc                                        ; $50eb: $fc
    ldh [$85], a                                  ; $50ec: $e0 $85
    sub a                                         ; $50ee: $97
    ld e, a                                       ; $50ef: $5f
    di                                            ; $50f0: $f3
    ld [bc], a                                    ; $50f1: $02
    ld a, e                                       ; $50f2: $7b
    ld bc, $9017                                  ; $50f3: $01 $17 $90
    adc [hl]                                      ; $50f6: $8e
    ld e, d                                       ; $50f7: $5a
    add hl, de                                    ; $50f8: $19
    ld d, b                                       ; $50f9: $50
    daa                                           ; $50fa: $27
    ld [$0bf4], a                                 ; $50fb: $ea $f4 $0b
    ld l, l                                       ; $50fe: $6d
    ld e, a                                       ; $50ff: $5f
    halt                                          ; $5100: $76
    ld h, c                                       ; $5101: $61
    or a                                          ; $5102: $b7
    inc [hl]                                      ; $5103: $34
    cp $af                                        ; $5104: $fe $af
    cpl                                           ; $5106: $2f
    ld l, l                                       ; $5107: $6d
    ccf                                           ; $5108: $3f
    ld b, $dc                                     ; $5109: $06 $dc
    pop bc                                        ; $510b: $c1
    cpl                                           ; $510c: $2f
    ld a, [c]                                     ; $510d: $f2
    ld [bc], a                                    ; $510e: $02
    ld a, e                                       ; $510f: $7b
    ld bc, $9017                                  ; $5110: $01 $17 $90
    adc [hl]                                      ; $5113: $8e
    add $ae                                       ; $5114: $c6 $ae
    db $ec                                        ; $5116: $ec
    ld a, h                                       ; $5117: $7c
    ld bc, $3e07                                  ; $5118: $01 $07 $3e
    ld d, c                                       ; $511b: $51
    or l                                          ; $511c: $b5
    di                                            ; $511d: $f3
    ld d, e                                       ; $511e: $53
    ld a, a                                       ; $511f: $7f
    ld e, $f3                                     ; $5120: $1e $f3
    dec bc                                        ; $5122: $0b
    ld a, e                                       ; $5123: $7b
    ld bc, $a697                                  ; $5124: $01 $97 $a6
    ccf                                           ; $5127: $3f
    ld b, e                                       ; $5128: $43
    inc a                                         ; $5129: $3c
    sub b                                         ; $512a: $90
    jp z, $2ba9                                   ; $512b: $ca $a9 $2b

    and [hl]                                      ; $512e: $a6
    and $0b                                       ; $512f: $e6 $0b
    ld d, a                                       ; $5131: $57
    sub d                                         ; $5132: $92
    ret nc                                        ; $5133: $d0

    ld [hl], a                                    ; $5134: $77
    ld c, l                                       ; $5135: $4d
    ld [$234f], a                                 ; $5136: $ea $4f $23
    cp h                                          ; $5139: $bc
    ld a, e                                       ; $513a: $7b
    ld bc, $2887                                  ; $513b: $01 $87 $28
    reti                                          ; $513e: $d9


    and c                                         ; $513f: $a1
    adc h                                         ; $5140: $8c
    cp a                                          ; $5141: $bf
    ld a, [de]                                    ; $5142: $1a
    ld b, e                                       ; $5143: $43
    ld a, a                                       ; $5144: $7f
    ld bc, $d887                                  ; $5145: $01 $87 $d8
    dec l                                         ; $5148: $2d
    ld a, [c]                                     ; $5149: $f2
    dec bc                                        ; $514a: $0b
    ld a, b                                       ; $514b: $78
    db $ed                                        ; $514c: $ed
    ld c, [hl]                                    ; $514d: $4e
    cp $c5                                        ; $514e: $fe $c5
    ld sp, hl                                     ; $5150: $f9
    ld [bc], a                                    ; $5151: $02
    add a                                         ; $5152: $87
    db $f4                                        ; $5153: $f4
    ld a, [$6d65]                                 ; $5154: $fa $65 $6d
    ld a, $e8                                     ; $5157: $3e $e8
    inc b                                         ; $5159: $04
    ld a, [hl]                                    ; $515a: $7e
    ld bc, $4107                                  ; $515b: $01 $07 $41
    ld a, c                                       ; $515e: $79
    ld l, l                                       ; $515f: $6d
    cp $f2                                        ; $5160: $fe $f2
    ld [bc], a                                    ; $5162: $02
    rst $20                                       ; $5163: $e7
    db $fd                                        ; $5164: $fd
    inc c                                         ; $5165: $0c
    or d                                          ; $5166: $b2
    xor e                                         ; $5167: $ab
    add c                                         ; $5168: $81
    xor b                                         ; $5169: $a8
    ld e, a                                       ; $516a: $5f
    sub a                                         ; $516b: $97
    ld a, [hl-]                                   ; $516c: $3a
    ld b, $d9                                     ; $516d: $06 $d9
    ld sp, hl                                     ; $516f: $f9
    ld a, d                                       ; $5170: $7a
    ld [hl+], a                                   ; $5171: $22
    db $10                                        ; $5172: $10
    ld d, l                                       ; $5173: $55
    cpl                                           ; $5174: $2f
    sub a                                         ; $5175: $97
    ld h, $d4                                     ; $5176: $26 $d4
    dec e                                         ; $5178: $1d
    jp nc, $c79f                                  ; $5179: $d2 $9f $c7

    ld e, c                                       ; $517c: $59
    ld e, a                                       ; $517d: $5f
    ld a, e                                       ; $517e: $7b
    ld bc, $017b                                  ; $517f: $01 $7b $01
    ld a, e                                       ; $5182: $7b
    ld bc, $5e17                                  ; $5183: $01 $17 $5e
    halt                                          ; $5186: $76
    pop hl                                        ; $5187: $e1
    dec b                                         ; $5188: $05
    rst $10                                       ; $5189: $d7
    ld e, h                                       ; $518a: $5c
    ld a, l                                       ; $518b: $7d
    push bc                                       ; $518c: $c5
    push hl                                       ; $518d: $e5
    sub a                                         ; $518e: $97
    ld e, h                                       ; $518f: $5c
    or b                                          ; $5190: $b0
    di                                            ; $5191: $f3
    xor [hl]                                      ; $5192: $ae
    cp [hl]                                       ; $5193: $be
    and $d0                                       ; $5194: $e6 $d0
    dec bc                                        ; $5196: $0b
    ld a, e                                       ; $5197: $7b
    ld bc, $6657                                  ; $5198: $01 $57 $66
    ld b, b                                       ; $519b: $40
    ld e, l                                       ; $519c: $5d
    ld sp, $a904                                  ; $519d: $31 $04 $a9
    db $ec                                        ; $51a0: $ec
    rst $38                                       ; $51a1: $ff
    cp h                                          ; $51a2: $bc
    rla                                           ; $51a3: $17
    sub b                                         ; $51a4: $90
    add hl, bc                                    ; $51a5: $09
    ld [hl], l                                    ; $51a6: $75
    rla                                           ; $51a7: $17
    rst $20                                       ; $51a8: $e7
    rst $10                                       ; $51a9: $d7

jr_064_51aa:
    cp h                                          ; $51aa: $bc
    rla                                           ; $51ab: $17
    add h                                         ; $51ac: $84
    ld c, $b2                                     ; $51ad: $0e $b2
    xor e                                         ; $51af: $ab
    ld b, e                                       ; $51b0: $43
    inc bc                                        ; $51b1: $03
    and h                                         ; $51b2: $a4
    ld b, $79                                     ; $51b3: $06 $79
    ld bc, $1c07                                  ; $51b5: $01 $07 $1c
    ld b, l                                       ; $51b8: $45
    cp e                                          ; $51b9: $bb
    ld hl, sp+$3f                                 ; $51ba: $f8 $3f
    ld b, c                                       ; $51bc: $41
    ld e, [hl]                                    ; $51bd: $5e
    ld d, a                                       ; $51be: $57
    db $10                                        ; $51bf: $10

jr_064_51c0:
    or e                                          ; $51c0: $b3
    db $ec                                        ; $51c1: $ec
    adc d                                         ; $51c2: $8a
    inc hl                                        ; $51c3: $23
    rst $08                                       ; $51c4: $cf
    ld c, a                                       ; $51c5: $4f
    or b                                          ; $51c6: $b0
    cp h                                          ; $51c7: $bc
    ld d, a                                       ; $51c8: $57
    add a                                         ; $51c9: $87
    add $ae                                       ; $51ca: $c6 $ae
    jr c, jr_064_51c0                             ; $51cc: $38 $f2

    and d                                         ; $51ce: $a2
    sbc a                                         ; $51cf: $9f
    jp hl                                         ; $51d0: $e9


    sbc $5f                                       ; $51d1: $de $5f
    add a                                         ; $51d3: $87
    ldh [$09], a                                  ; $51d4: $e0 $09
    or d                                          ; $51d6: $b2
    or $9f                                        ; $51d7: $f6 $9f
    add hl, bc                                    ; $51d9: $09

jr_064_51da:
    push af                                       ; $51da: $f5
    dec b                                         ; $51db: $05
    rst $10                                       ; $51dc: $d7
    ld a, a                                       ; $51dd: $7f
    adc l                                         ; $51de: $8d
    ld a, b                                       ; $51df: $78
    rla                                           ; $51e0: $17
    ld h, l                                       ; $51e1: $65
    xor b                                         ; $51e2: $a8
    db $fc                                        ; $51e3: $fc
    ld [bc], a                                    ; $51e4: $02
    ld a, e                                       ; $51e5: $7b
    ld bc, $d104                                  ; $51e6: $01 $04 $d1
    reti                                          ; $51e9: $d9


    and c                                         ; $51ea: $a1
    jr c, jr_064_51aa                             ; $51eb: $38 $bd

    ld d, [hl]                                    ; $51ed: $56
    add [hl]                                      ; $51ee: $86
    sub d                                         ; $51ef: $92
    rst $38                                       ; $51f0: $ff
    ld a, c                                       ; $51f1: $79
    sbc h                                         ; $51f2: $9c
    jr nz, jr_064_51da                            ; $51f3: $20 $e5

    dec b                                         ; $51f5: $05
    rst $20                                       ; $51f6: $e7
    ld e, e                                       ; $51f7: $5b
    sub $e6                                       ; $51f8: $d6 $e6
    cpl                                           ; $51fa: $2f
    ld a, [hl]                                    ; $51fb: $7e
    ld bc, $017b                                  ; $51fc: $01 $7b $01
    add a                                         ; $51ff: $87
    ld e, d                                       ; $5200: $5a
    ret nc                                        ; $5201: $d0

    ld d, l                                       ; $5202: $55
    ld [$2089], sp                                ; $5203: $08 $89 $20
    ld c, [hl]                                    ; $5206: $4e
    sub b                                         ; $5207: $90
    ld a, [c]                                     ; $5208: $f2
    ld [bc], a                                    ; $5209: $02
    ld l, l                                       ; $520a: $6d
    ld e, a                                       ; $520b: $5f
    halt                                          ; $520c: $76
    dec [hl]                                      ; $520d: $35
    ld [hl], h                                    ; $520e: $74
    ld l, e                                       ; $520f: $6b
    ld e, [hl]                                    ; $5210: $5e
    ld a, e                                       ; $5211: $7b
    ld bc, $8287                                  ; $5212: $01 $87 $82
    ld l, $b8                                     ; $5215: $2e $b8
    ld l, e                                       ; $5217: $6b
    db $fc                                        ; $5218: $fc
    sbc a                                         ; $5219: $9f
    rla                                           ; $521a: $17
    rst $20                                       ; $521b: $e7
    and c                                         ; $521c: $a1
    cp e                                          ; $521d: $bb
    ld [hl], a                                    ; $521e: $77
    xor c                                         ; $521f: $a9
    ld a, e                                       ; $5220: $7b
    scf                                           ; $5221: $37
    di                                            ; $5222: $f3
    dec bc                                        ; $5223: $0b
    rst $20                                       ; $5224: $e7
    ld b, e                                       ; $5225: $43
    rst $28                                       ; $5226: $ef
    cp e                                          ; $5227: $bb
    ld c, h                                       ; $5228: $4c
    xor a                                         ; $5229: $af
    xor h                                         ; $522a: $ac
    ld a, c                                       ; $522b: $79
    ld bc, $9c07                                  ; $522c: $01 $07 $9c
    ld a, [hl]                                    ; $522f: $7e
    inc [hl]                                      ; $5230: $34
    dec sp                                        ; $5231: $3b
    inc d                                         ; $5232: $14
    db $f4                                        ; $5233: $f4
    xor $17                                       ; $5234: $ee $17
    sub a                                         ; $5236: $97
    inc bc                                        ; $5237: $03
    ld d, c                                       ; $5238: $51
    or l                                          ; $5239: $b5
    bit 7, [hl]                                   ; $523a: $cb $7e
    inc c                                         ; $523c: $0c
    adc $fa                                       ; $523d: $ce $fa
    ld [bc], a                                    ; $523f: $02
    ld a, e                                       ; $5240: $7b
    ld bc, $9d57                                  ; $5241: $01 $57 $9d
    or a                                          ; $5244: $b7
    rra                                           ; $5245: $1f
    and c                                         ; $5246: $a1
    dec sp                                        ; $5247: $3b
    ld c, b                                       ; $5248: $48
    ld a, c                                       ; $5249: $79
    ld bc, $09e7                                  ; $524a: $01 $e7 $09
    ld l, d                                       ; $524d: $6a
    halt                                          ; $524e: $76
    db $10                                        ; $524f: $10
    ld a, d                                       ; $5250: $7a
    ld [hl], a                                    ; $5251: $77
    cp [hl]                                       ; $5252: $be
    ld l, l                                       ; $5253: $6d
    ccf                                           ; $5254: $3f
    db $d3                                        ; $5255: $d3
    or d                                          ; $5256: $b2
    ld l, e                                       ; $5257: $6b
    ld [hl], h                                    ; $5258: $74
    and d                                         ; $5259: $a2
    jp z, Jump_000_179a                           ; $525a: $ca $9a $17

    rlca                                          ; $525d: $07
    add d                                         ; $525e: $82
    ld [hl], a                                    ; $525f: $77
    cp c                                          ; $5260: $b9
    ld l, $f2                                     ; $5261: $2e $f2
    ld [bc], a                                    ; $5263: $02
    sub a                                         ; $5264: $97
    reti                                          ; $5265: $d9


    dec sp                                        ; $5266: $3b
    ld hl, sp+$05                                 ; $5267: $f8 $05
    dec e                                         ; $5269: $1d
    ld b, e                                       ; $526a: $43
    rst $28                                       ; $526b: $ef
    ld a, [hl]                                    ; $526c: $7e
    ld bc, $3f07                                  ; $526d: $01 $07 $3f
    di                                            ; $5270: $f3
    adc $b7                                       ; $5271: $ce $b7
    adc b                                         ; $5273: $88
    sbc c                                         ; $5274: $99
    ld e, a                                       ; $5275: $5f
    ld d, a                                       ; $5276: $57
    sbc d                                         ; $5277: $9a
    cp l                                          ; $5278: $bd
    ld b, e                                       ; $5279: $43
    rst $38                                       ; $527a: $ff
    pop de                                        ; $527b: $d1
    db $dd                                        ; $527c: $dd
    db $eb                                        ; $527d: $eb
    dec bc                                        ; $527e: $0b
    ld d, a                                       ; $527f: $57
    add d                                         ; $5280: $82
    or e                                          ; $5281: $b3
    xor $b2                                       ; $5282: $ee $b2
    cpl                                           ; $5284: $2f
    dec h                                         ; $5285: $25
    ld bc, $5f8b                                  ; $5286: $01 $8b $5f
    ld d, a                                       ; $5289: $57
    inc bc                                        ; $528a: $03
    ld d, c                                       ; $528b: $51
    ld a, [c]                                     ; $528c: $f2
    daa                                           ; $528d: $27
    xor $7a                                       ; $528e: $ee $7a
    add sp, -$18                                  ; $5290: $e8 $e8
    xor h                                         ; $5292: $ac
    dec l                                         ; $5293: $2d
    sub b                                         ; $5294: $90
    rla                                           ; $5295: $17
    ld d, a                                       ; $5296: $57
    add a                                         ; $5297: $87
    ld e, d                                       ; $5298: $5a
    rst $10                                       ; $5299: $d7
    ld d, $f4                                     ; $529a: $16 $f4
    jp nc, Jump_064_7d7f                          ; $529c: $d2 $7f $7d

    ld bc, $5887                                  ; $529f: $01 $87 $58
    rst $18                                       ; $52a2: $df
    push af                                       ; $52a3: $f5
    ret nc                                        ; $52a4: $d0

    dec sp                                        ; $52a5: $3b
    db $fc                                        ; $52a6: $fc
    and a                                         ; $52a7: $a7
    cp [hl]                                       ; $52a8: $be
    ld a, e                                       ; $52a9: $7b
    ld bc, $9d57                                  ; $52aa: $01 $57 $9d
    or a                                          ; $52ad: $b7
    ld l, e                                       ; $52ae: $6b
    xor h                                         ; $52af: $ac
    inc b                                         ; $52b0: $04
    call nc, Call_000_070b                        ; $52b1: $d4 $0b $07
    add d                                         ; $52b4: $82
    ld [hl], a                                    ; $52b5: $77
    ld [hl], c                                    ; $52b6: $71
    ld a, [hl]                                    ; $52b7: $7e
    pop hl                                        ; $52b8: $e1
    rla                                           ; $52b9: $17
    rlca                                          ; $52ba: $07
    ld a, a                                       ; $52bb: $7f
    ld [de], a                                    ; $52bc: $12
    push de                                       ; $52bd: $d5
    db $eb                                        ; $52be: $eb
    xor [hl]                                      ; $52bf: $ae
    call nc, $8633                                ; $52c0: $d4 $33 $86
    ld a, [$d702]                                 ; $52c3: $fa $02 $d7
    ld a, a                                       ; $52c6: $7f
    adc l                                         ; $52c7: $8d
    ld a, b                                       ; $52c8: $78
    rst $20                                       ; $52c9: $e7
    rlca                                          ; $52ca: $07
    dec c                                         ; $52cb: $0d
    ld d, c                                       ; $52cc: $51
    cp a                                          ; $52cd: $bf
    ld l, l                                       ; $52ce: $6d
    ld b, c                                       ; $52cf: $41
    db $e4                                        ; $52d0: $e4
    xor a                                         ; $52d1: $af
    dec e                                         ; $52d2: $1d
    adc b                                         ; $52d3: $88
    xor d                                         ; $52d4: $aa
    ld a, [$7b02]                                 ; $52d5: $fa $02 $7b
    ld bc, $7617                                  ; $52d8: $01 $17 $76
    inc de                                        ; $52db: $13
    push hl                                       ; $52dc: $e5
    inc c                                         ; $52dd: $0c
    ld [bc], a                                    ; $52de: $02
    ld b, h                                       ; $52df: $44
    ld [hl], a                                    ; $52e0: $77
    ld e, [hl]                                    ; $52e1: $5e
    ld [hl], d                                    ; $52e2: $72
    db $dd                                        ; $52e3: $dd
    ld [hl], c                                    ; $52e4: $71
    dec sp                                        ; $52e5: $3b
    ld b, h                                       ; $52e6: $44
    ret                                           ; $52e7: $c9


jr_064_52e8:
    ld c, $65                                     ; $52e8: $0e $65
    db $fc                                        ; $52ea: $fc
    push de                                       ; $52eb: $d5

jr_064_52ec:
    jr jr_064_52e8                                ; $52ec: $18 $fa

    dec bc                                        ; $52ee: $0b
    rst $20                                       ; $52ef: $e7
    and a                                         ; $52f0: $a7
    ld c, [hl]                                    ; $52f1: $4e
    call nc, Call_064_483b                        ; $52f2: $d4 $3b $48
    db $f4                                        ; $52f5: $f4
    jr nz, jr_064_52ec                            ; $52f6: $20 $f4

    cp $e5                                        ; $52f8: $fe $e5
    dec b                                         ; $52fa: $05
    rla                                           ; $52fb: $17
    sub b                                         ; $52fc: $90
    ld a, [hl-]                                   ; $52fd: $3a
    ld d, c                                       ; $52fe: $51
    or l                                          ; $52ff: $b5
    dec bc                                        ; $5300: $0b
    ld a, [$0e17]                                 ; $5301: $fa $17 $0e
    ld a, [c]                                     ; $5304: $f2
    ld [bc], a                                    ; $5305: $02
    ld l, l                                       ; $5306: $6d
    ld e, a                                       ; $5307: $5f
    ld b, h                                       ; $5308: $44
    or e                                          ; $5309: $b3
    di                                            ; $530a: $f3
    and c                                         ; $530b: $a1
    rst $10                                       ; $530c: $d7
    jr nz, @+$31                                  ; $530d: $20 $2f

    ld l, l                                       ; $530f: $6d
    ccf                                           ; $5310: $3f
    ld b, $dc                                     ; $5311: $06 $dc
    ld sp, hl                                     ; $5313: $f9
    sbc d                                         ; $5314: $9a
    inc d                                         ; $5315: $14
    cp a                                          ; $5316: $bf
    rla                                           ; $5317: $17
    db $eb                                        ; $5318: $eb
    sbc d                                         ; $5319: $9a
    dec e                                         ; $531a: $1d
    add h                                         ; $531b: $84
    sbc $9d                                       ; $531c: $de $9d
    cpl                                           ; $531e: $2f
    sub a                                         ; $531f: $97
    ld a, h                                       ; $5320: $7c
    reti                                          ; $5321: $d9


    ld hl, $13f2                                  ; $5322: $21 $f2 $13
    ld a, e                                       ; $5325: $7b
    ld bc, $0207                                  ; $5326: $01 $07 $02
    add hl, hl                                    ; $5329: $29
    cp e                                          ; $532a: $bb
    db $ec                                        ; $532b: $ec
    inc de                                        ; $532c: $13
    ld c, e                                       ; $532d: $4b
    dec bc                                        ; $532e: $0b
    ld d, c                                       ; $532f: $51
    cp a                                          ; $5330: $bf
    sub a                                         ; $5331: $97
    ld b, c                                       ; $5332: $41
    db $fd                                        ; $5333: $fd
    dec sp                                        ; $5334: $3b
    call nz, $b941                                ; $5335: $c4 $41 $b9
    cp [hl]                                       ; $5338: $be
    sub a                                         ; $5339: $97
    ld b, c                                       ; $533a: $41
    db $fd                                        ; $533b: $fd
    cp e                                          ; $533c: $bb
    cp $33                                        ; $533d: $fe $33
    cp a                                          ; $533f: $bf
    ld d, a                                       ; $5340: $57
    ld a, [hl]                                    ; $5341: $7e
    cp l                                          ; $5342: $bd
    xor a                                         ; $5343: $af
    call Call_000_1d07                            ; $5344: $cd $07 $1d
    ld e, [hl]                                    ; $5347: $5e
    ld d, a                                       ; $5348: $57
    ld a, [hl]                                    ; $5349: $7e
    cp l                                          ; $534a: $bd
    rst $28                                       ; $534b: $ef
    ldh [$cf], a                                  ; $534c: $e0 $cf
    adc d                                         ; $534e: $8a
    sub [hl]                                      ; $534f: $96
    rla                                           ; $5350: $17
    add a                                         ; $5351: $87
    ldh [$09], a                                  ; $5352: $e0 $09
    or d                                          ; $5354: $b2
    dec hl                                        ; $5355: $2b
    ld c, c                                       ; $5356: $49
    ld l, b                                       ; $5357: $68
    or l                                          ; $5358: $b5
    ld [$7b0b], a                                 ; $5359: $ea $0b $7b
    ld bc, $017b                                  ; $535c: $01 $7b $01
    ld a, e                                       ; $535f: $7b
    ld bc, $017b                                  ; $5360: $01 $7b $01
    ld a, e                                       ; $5363: $7b
    ld bc, $017b                                  ; $5364: $01 $7b $01
    ld a, e                                       ; $5367: $7b
    ld bc, $017b                                  ; $5368: $01 $7b $01
    ld a, e                                       ; $536b: $7b
    ld bc, $017b                                  ; $536c: $01 $7b $01
    ld a, e                                       ; $536f: $7b
    ld bc, $017b                                  ; $5370: $01 $7b $01
    ld a, e                                       ; $5373: $7b
    ld bc, $017b                                  ; $5374: $01 $7b $01
    ld a, e                                       ; $5377: $7b
    ld bc, $017b                                  ; $5378: $01 $7b $01
    ld a, e                                       ; $537b: $7b
    ld bc, $017b                                  ; $537c: $01 $7b $01
    ld a, e                                       ; $537f: $7b
    ld bc, $017b                                  ; $5380: $01 $7b $01
    ld a, e                                       ; $5383: $7b
    ld bc, $017b                                  ; $5384: $01 $7b $01
    ld a, e                                       ; $5387: $7b
    ld bc, $017b                                  ; $5388: $01 $7b $01
    ld a, e                                       ; $538b: $7b
    ld bc, $017b                                  ; $538c: $01 $7b $01

jr_064_538f:
    ld a, e                                       ; $538f: $7b
    ld bc, $017b                                  ; $5390: $01 $7b $01
    ld a, e                                       ; $5393: $7b
    ld bc, $017b                                  ; $5394: $01 $7b $01
    ld a, e                                       ; $5397: $7b
    ld bc, $017b                                  ; $5398: $01 $7b $01
    ld a, e                                       ; $539b: $7b
    ld bc, $017b                                  ; $539c: $01 $7b $01
    db $ed                                        ; $539f: $ed
    cp a                                          ; $53a0: $bf
    ld [hl], a                                    ; $53a1: $77
    ld a, [hl+]                                   ; $53a2: $2a
    sbc l                                         ; $53a3: $9d
    ld [hl], $e7                                  ; $53a4: $36 $e7
    ld d, b                                       ; $53a6: $50
    rra                                           ; $53a7: $1f
    jr z, jr_064_538f                             ; $53a8: $28 $e5

    db $dd                                        ; $53aa: $dd
    rst $30                                       ; $53ab: $f7
    cp l                                          ; $53ac: $bd
    or $9f                                        ; $53ad: $f6 $9f
    xor c                                         ; $53af: $a9

jr_064_53b0:
    reti                                          ; $53b0: $d9


    sub l                                         ; $53b1: $95
    add c                                         ; $53b2: $81
    reti                                          ; $53b3: $d9


    ld a, c                                       ; $53b4: $79
    adc $0b                                       ; $53b5: $ce $0b
    rlca                                          ; $53b7: $07
    ld [bc], a                                    ; $53b8: $02
    ld l, l                                       ; $53b9: $6d
    ld d, h                                       ; $53ba: $54
    ld [hl], d                                    ; $53bb: $72
    rst $30                                       ; $53bc: $f7
    ld a, l                                       ; $53bd: $7d
    cp a                                          ; $53be: $bf
    ld l, l                                       ; $53bf: $6d
    and $39                                       ; $53c0: $e6 $39
    add a                                         ; $53c2: $87
    ld a, [$41e8]                                 ; $53c3: $fa $e8 $41
    ei                                            ; $53c6: $fb
    xor [hl]                                      ; $53c7: $ae
    jr z, jr_064_53ed                             ; $53c8: $28 $23

    ld h, e                                       ; $53ca: $63
    xor b                                         ; $53cb: $a8
    ld b, e                                       ; $53cc: $43
    ld a, l                                       ; $53cd: $7d
    adc $91                                       ; $53ce: $ce $91
    ld c, [hl]                                    ; $53d0: $4e
    jp c, Jump_064_661a                           ; $53d1: $da $1a $66

    dec c                                         ; $53d4: $0d
    ld a, [hl-]                                   ; $53d5: $3a
    add a                                         ; $53d6: $87
    and $7d                                       ; $53d7: $e6 $7d
    ld e, $ea                                     ; $53d9: $1e $ea
    or e                                          ; $53db: $b3
    and b                                         ; $53dc: $a0
    dec sp                                        ; $53dd: $3b
    sub h                                         ; $53de: $94
    add hl, sp                                    ; $53df: $39
    rst $10                                       ; $53e0: $d7
    ld [hl], b                                    ; $53e1: $70
    pop de                                        ; $53e2: $d1
    ld [$5af2], sp                                ; $53e3: $08 $f2 $5a
    call $87b5                                    ; $53e6: $cd $b5 $87
    ld b, d                                       ; $53e9: $42
    db $ec                                        ; $53ea: $ec
    daa                                           ; $53eb: $27
    ld d, a                                       ; $53ec: $57

jr_064_53ed:
    db $ed                                        ; $53ed: $ed
    cpl                                           ; $53ee: $2f
    rst $10                                       ; $53ef: $d7
    add hl, de                                    ; $53f0: $19
    rst $30                                       ; $53f1: $f7
    ld a, e                                       ; $53f2: $7b
    rst $30                                       ; $53f3: $f7
    ld a, [hl]                                    ; $53f4: $7e
    rst $20                                       ; $53f5: $e7
    add l                                         ; $53f6: $85
    ld h, a                                       ; $53f7: $67
    rrca                                          ; $53f8: $0f
    sub h                                         ; $53f9: $94
    ld [hl], e                                    ; $53fa: $73
    ld e, [hl]                                    ; $53fb: $5e
    ld l, l                                       ; $53fc: $6d
    and $39                                       ; $53fd: $e6 $39
    rla                                           ; $53ff: $17
    ld b, e                                       ; $5400: $43
    ld a, [hl+]                                   ; $5401: $2a
    ld [hl], a                                    ; $5402: $77
    jr z, jr_064_53b0                             ; $5403: $28 $ab

    sbc h                                         ; $5405: $9c
    call Call_064_416e                            ; $5406: $cd $6e $41
    ld l, e                                       ; $5409: $6b
    ld e, a                                       ; $540a: $5f
    ei                                            ; $540b: $fb
    rst $08                                       ; $540c: $cf
    call nc, $caec                                ; $540d: $d4 $ec $ca
    ret nz                                        ; $5410: $c0

    db $ec                                        ; $5411: $ec
    ld e, h                                       ; $5412: $5c
    xor e                                         ; $5413: $ab
    cp c                                          ; $5414: $b9
    or $50                                        ; $5415: $f6 $50
    adc b                                         ; $5417: $88
    db $fd                                        ; $5418: $fd
    db $e4                                        ; $5419: $e4
    xor d                                         ; $541a: $aa
    ld a, l                                       ; $541b: $7d
    rla                                           ; $541c: $17
    and $d0                                       ; $541d: $e6 $d0
    add hl, sp                                    ; $541f: $39
    add hl, bc                                    ; $5420: $09
    push bc                                       ; $5421: $c5
    inc a                                         ; $5422: $3c
    cp d                                          ; $5423: $ba
    set 2, h                                      ; $5424: $cb $d4
    sub a                                         ; $5426: $97
    dec d                                         ; $5427: $15
    ld l, d                                       ; $5428: $6a
    ld a, d                                       ; $5429: $7a

jr_064_542a:
    ld d, c                                       ; $542a: $51
    ret z                                         ; $542b: $c8

    ld hl, $7394                                  ; $542c: $21 $94 $73
    halt                                          ; $542f: $76
    ld c, b                                       ; $5430: $48
    db $fd                                        ; $5431: $fd
    ld a, $d4                                     ; $5432: $3e $d4
    rst $10                                       ; $5434: $d7
    ld c, b                                       ; $5435: $48
    cp l                                          ; $5436: $bd
    ld a, b                                       ; $5437: $78
    ld [de], a                                    ; $5438: $12
    ld c, d                                       ; $5439: $4a
    rst $30                                       ; $543a: $f7
    adc $77                                       ; $543b: $ce $77
    ld d, d                                       ; $543d: $52
    rra                                           ; $543e: $1f
    or $48                                        ; $543f: $f6 $48
    xor e                                         ; $5441: $ab
    ld [$3285], a                                 ; $5442: $ea $85 $32
    adc $d0                                       ; $5445: $ce $d0
    pop af                                        ; $5447: $f1
    and c                                         ; $5448: $a1
    ld [$854e], sp                                ; $5449: $08 $4e $85
    db $e4                                        ; $544c: $e4
    ld [hl], e                                    ; $544d: $73
    ld e, [hl]                                    ; $544e: $5e
    ld l, l                                       ; $544f: $6d
    and $c5                                       ; $5450: $e6 $c5
    add $d1                                       ; $5452: $c6 $d1
    ld e, l                                       ; $5454: $5d
    ld b, $4a                                     ; $5455: $06 $4a
    ld a, c                                       ; $5457: $79
    add hl, bc                                    ; $5458: $09
    add l                                         ; $5459: $85
    and c                                         ; $545a: $a1

jr_064_545b:
    ldh a, [$ee]                                  ; $545b: $f0 $ee
    ei                                            ; $545d: $fb
    ld e, $19                                     ; $545e: $1e $19
    ld a, a                                       ; $5460: $7f
    sbc h                                         ; $5461: $9c
    ld [hl], e                                    ; $5462: $73
    ld l, b                                       ; $5463: $68
    ld e, [hl]                                    ; $5464: $5e
    inc d                                         ; $5465: $14
    ld [hl], d                                    ; $5466: $72
    ld [de], a                                    ; $5467: $12
    ld c, d                                       ; $5468: $4a
    rst $30                                       ; $5469: $f7
    ld d, h                                       ; $546a: $54
    ld c, b                                       ; $546b: $48
    ld a, $e7                                     ; $546c: $3e $e7
    dec b                                         ; $546e: $05
    add a                                         ; $546f: $87
    sub e                                         ; $5470: $93
    or h                                          ; $5471: $b4
    and c                                         ; $5472: $a1
    rst $20                                       ; $5473: $e7
    ld e, h                                       ; $5474: $5c
    or c                                          ; $5475: $b1
    ret nz                                        ; $5476: $c0

    rst $28                                       ; $5477: $ef
    sub $be                                       ; $5478: $d6 $be
    ld [hl], $f3                                  ; $547a: $36 $f3
    sbc h                                         ; $547c: $9c
    ld d, e                                       ; $547d: $53
    ld hl, $cf79                                  ; $547e: $21 $79 $cf
    sub a                                         ; $5481: $97
    xor c                                         ; $5482: $a9
    cpl                                           ; $5483: $2f
    xor e                                         ; $5484: $ab
    rst $38                                       ; $5485: $ff
    jp hl                                         ; $5486: $e9


    ld e, [hl]                                    ; $5487: $5e
    jr z, @+$6d                                   ; $5488: $28 $6b

    ld l, b                                       ; $548a: $68
    sbc b                                         ; $548b: $98
    cp l                                          ; $548c: $bd
    rst $00                                       ; $548d: $c7
    ld a, b                                       ; $548e: $78
    rst $28                                       ; $548f: $ef
    adc d                                         ; $5490: $8a
    ld [hl-], a                                   ; $5491: $32
    call nc, $bea7                                ; $5492: $d4 $a7 $be
    xor h                                         ; $5495: $ac
    rst $38                                       ; $5496: $ff
    ret c                                         ; $5497: $d8

    ld d, e                                       ; $5498: $53
    ld hl, $8559                                  ; $5499: $21 $59 $85
    and a                                         ; $549c: $a7
    ld bc, $19f2                                  ; $549d: $01 $f2 $19
    add d                                         ; $54a0: $82
    jr c, jr_064_542a                             ; $54a1: $38 $87

    adc $55                                       ; $54a3: $ce $55
    push af                                       ; $54a5: $f5
    dec de                                        ; $54a6: $1b
    adc $3d                                       ; $54a7: $ce $3d
    cp a                                          ; $54a9: $bf
    add b                                         ; $54aa: $80
    or $17                                        ; $54ab: $f6 $17
    ld l, l                                       ; $54ad: $6d
    and $75                                       ; $54ae: $e6 $75
    dec c                                         ; $54b0: $0d
    ld a, [hl-]                                   ; $54b1: $3a
    rst $10                                       ; $54b2: $d7
    jr nc, jr_064_545b                            ; $54b3: $30 $a6

    ld h, a                                       ; $54b5: $67
    pop bc                                        ; $54b6: $c1
    ld a, l                                       ; $54b7: $7d
    ld e, [hl]                                    ; $54b8: $5e
    and a                                         ; $54b9: $a7
    sub h                                         ; $54ba: $94
    ld [c], a                                     ; $54bb: $e2
    ld e, c                                       ; $54bc: $59
    sbc [hl]                                      ; $54bd: $9e
    cpl                                           ; $54be: $2f
    ld e, b                                       ; $54bf: $58
    push de                                       ; $54c0: $d5

Call_064_54c1:
    ld l, a                                       ; $54c1: $6f
    db $fc                                        ; $54c2: $fc
    xor $7b                                       ; $54c3: $ee $7b
    ld l, l                                       ; $54c5: $6d
    and $b5                                       ; $54c6: $e6 $b5
    cp d                                          ; $54c8: $ba
    jp hl                                         ; $54c9: $e9


    ld b, [hl]                                    ; $54ca: $46
    adc a                                         ; $54cb: $8f
    xor $b2                                       ; $54cc: $ee $b2
    rst $08                                       ; $54ce: $cf

Call_064_54cf:
    ld l, e                                       ; $54cf: $6b
    and h                                         ; $54d0: $a4
    ld e, [hl]                                    ; $54d1: $5e
    cp h                                          ; $54d2: $bc
    rst $00                                       ; $54d3: $c7
    push bc                                       ; $54d4: $c5
    inc a                                         ; $54d5: $3c
    ld b, $5c                                     ; $54d6: $06 $5c
    xor e                                         ; $54d8: $ab
    ld a, c                                       ; $54d9: $79
    cp a                                          ; $54da: $bf
    rlca                                          ; $54db: $07
    ld e, h                                       ; $54dc: $5c
    ld b, [hl]                                    ; $54dd: $46
    cp $9c                                        ; $54de: $fe $9c
    ld h, l                                       ; $54e0: $65
    rst $08                                       ; $54e1: $cf
    xor a                                         ; $54e2: $af
    push de                                       ; $54e3: $d5
    or e                                          ; $54e4: $b3
    xor d                                         ; $54e5: $aa
    sbc h                                         ; $54e6: $9c
    ld e, a                                       ; $54e7: $5f
    add l                                         ; $54e8: $85
    db $e4                                        ; $54e9: $e4
    ld a, e                                       ; $54ea: $7b
    ld l, l                                       ; $54eb: $6d
    and $c5                                       ; $54ec: $e6 $c5
    ret nc                                        ; $54ee: $d0

    rla                                           ; $54ef: $17
    ld d, e                                       ; $54f0: $53
    jp nc, $a07b                                  ; $54f1: $d2 $7b $a0

    call z, Call_064_4a32                         ; $54f4: $cc $32 $4a
    ld a, d                                       ; $54f7: $7a
    sbc a                                         ; $54f8: $9f
    ld d, a                                       ; $54f9: $57
    jr nz, @-$08                                  ; $54fa: $20 $f6

    db $10                                        ; $54fc: $10
    jp z, $9424                                   ; $54fd: $ca $24 $94

    xor $fd                                       ; $5500: $ee $fd
    ld l, b                                       ; $5502: $68
    add sp, -$19                                  ; $5503: $e8 $e7
    ld e, [hl]                                    ; $5505: $5e
    sbc e                                         ; $5506: $9b
    ld [hl], e                                    ; $5507: $73
    adc $45                                       ; $5508: $ce $45
    sub b                                         ; $550a: $90
    ld e, [hl]                                    ; $550b: $5e
    inc d                                         ; $550c: $14
    or d                                          ; $550d: $b2
    ld a, [hl+]                                   ; $550e: $2a
    rst $30                                       ; $550f: $f7
    ld c, $c5                                     ; $5510: $0e $c5
    ld d, e                                       ; $5512: $53
    ld hl, $52b9                                  ; $5513: $21 $b9 $52
    ld a, b                                       ; $5516: $78
    xor b                                         ; $5517: $a8
    ld c, a                                       ; $5518: $4f
    ld a, l                                       ; $5519: $7d
    ld e, c                                       ; $551a: $59
    db $fd                                        ; $551b: $fd
    ld c, a                                       ; $551c: $4f
    rst $30                                       ; $551d: $f7
    ld e, d                                       ; $551e: $5a
    call $ed7b                                    ; $551f: $cd $7b $ed
    ld c, [hl]                                    ; $5522: $4e
    jp c, $97f8                                   ; $5523: $da $f8 $97

jr_064_5526:
    and c                                         ; $5526: $a1
    ld a, c                                       ; $5527: $79
    dec [hl]                                      ; $5528: $35
    inc a                                         ; $5529: $3c
    ld b, e                                       ; $552a: $43
    ld a, l                                       ; $552b: $7d
    push bc                                       ; $552c: $c5
    add hl, hl                                    ; $552d: $29
    ld e, [hl]                                    ; $552e: $5e
    inc c                                         ; $552f: $0c
    ld a, l                                       ; $5530: $7d
    sub l                                         ; $5531: $95
    ld a, a                                       ; $5532: $7f
    or d                                          ; $5533: $b2
    rst $30                                       ; $5534: $f7
    jr jr_064_5526                                ; $5535: $18 $ef

    rla                                           ; $5537: $17
    ld l, l                                       ; $5538: $6d
    ld h, [hl]                                    ; $5539: $66
    or $54                                        ; $553a: $f6 $54
    ld c, b                                       ; $553c: $48
    xor [hl]                                      ; $553d: $ae
    inc d                                         ; $553e: $14
    ld e, [hl]                                    ; $553f: $5e
    ld [hl], l                                    ; $5540: $75

Call_064_5541:
    ld c, $84                                     ; $5541: $0e $84
    sbc l                                         ; $5543: $9d
    xor [hl]                                      ; $5544: $ae
    push af                                       ; $5545: $f5
    dec bc                                        ; $5546: $0b
    ld c, a                                       ; $5547: $4f
    rst $00                                       ; $5548: $c7
    ei                                            ; $5549: $fb
    dec b                                         ; $554a: $05
    ld l, l                                       ; $554b: $6d
    ld a, [$66a2]                                 ; $554c: $fa $a2 $66
    xor [hl]                                      ; $554f: $ae
    sub c                                         ; $5550: $91
    ld a, d                                       ; $5551: $7a
    ld e, c                                       ; $5552: $59
    inc d                                         ; $5553: $14
    ld [hl], d                                    ; $5554: $72
    inc e                                         ; $5555: $1c
    add $20                                       ; $5556: $c6 $20
    push hl                                       ; $5558: $e5
    ld [hl], c                                    ; $5559: $71
    ld a, [$9b5e]                                 ; $555a: $fa $5e $9b
    ld h, l                                       ; $555d: $65
    ld d, $cf                                     ; $555e: $16 $cf
    add hl, sp                                    ; $5560: $39
    sra [hl]                                      ; $5561: $cb $2e
    ld a, [bc]                                    ; $5563: $0a
    dec e                                         ; $5564: $1d
    jp nz, $fe0e                                  ; $5565: $c2 $0e $fe

    ld [bc], a                                    ; $5568: $02
    or h                                          ; $5569: $b4
    sub c                                         ; $556a: $91
    ld [hl], c                                    ; $556b: $71
    ret z                                         ; $556c: $c8

    and c                                         ; $556d: $a1
    cp [hl]                                       ; $556e: $be
    ld [c], a                                     ; $556f: $e2
    rst $20                                       ; $5570: $e7
    ld [hl], c                                    ; $5571: $71

jr_064_5572:
    ld c, $41                                     ; $5572: $0e $41
    and [hl]                                      ; $5574: $a6
    ld b, d                                       ; $5575: $42
    ld [hl], d                                    ; $5576: $72
    db $fd                                        ; $5577: $fd
    ld c, a                                       ; $5578: $4f
    rlca                                          ; $5579: $07
    add hl, hl                                    ; $557a: $29
    rst $30                                       ; $557b: $f7
    dec bc                                        ; $557c: $0b
    ld l, l                                       ; $557d: $6d
    sub [hl]                                      ; $557e: $96

Call_064_557f:
    ld a, l                                       ; $557f: $7d
    ld b, c                                       ; $5580: $41
    rr b                                          ; $5581: $cb $18
    and h                                         ; $5583: $a4
    inc c                                         ; $5584: $0c
    push af                                       ; $5585: $f5
    ld b, l                                       ; $5586: $45
    call Call_000_235c                            ; $5587: $cd $5c $23
    push af                                       ; $558a: $f5
    or d                                          ; $558b: $b2
    jr z, jr_064_5572                             ; $558c: $28 $e4

    sbc h                                         ; $558e: $9c
    or e                                          ; $558f: $b3
    db $ec                                        ; $5590: $ec
    and d                                         ; $5591: $a2
    ret nc                                        ; $5592: $d0

    ld hl, $9aec                                  ; $5593: $21 $ec $9a
    add h                                         ; $5596: $84
    ld d, [hl]                                    ; $5597: $56
    rlca                                          ; $5598: $07
    and d                                         ; $5599: $a2
    ld a, d                                       ; $559a: $7a
    cp l                                          ; $559b: $bd
    rst $10                                       ; $559c: $d7
    and [hl]                                      ; $559d: $a6
    xor a                                         ; $559e: $af
    ld hl, sp+$79                                 ; $559f: $f8 $79
    sbc h                                         ; $55a1: $9c
    ld b, e                                       ; $55a2: $43
    db $10                                        ; $55a3: $10
    ld c, a                                       ; $55a4: $4f
    add l                                         ; $55a5: $85
    ld h, h                                       ; $55a6: $64
    dec d                                         ; $55a7: $15
    sbc [hl]                                      ; $55a8: $9e
    ld b, $c8                                     ; $55a9: $06 $c8
    ld h, a                                       ; $55ab: $67
    ld [$1ce2], sp                                ; $55ac: $08 $e2 $1c
    inc c                                         ; $55af: $0c
    dec l                                         ; $55b0: $2d
    rst $30                                       ; $55b1: $f7
    ld c, $b8                                     ; $55b2: $0e $b8
    inc l                                         ; $55b4: $2c
    add [hl]                                      ; $55b5: $86
    ld a, $0b                                     ; $55b6: $3e $0b
    ld [c], a                                     ; $55b8: $e2
    and a                                         ; $55b9: $a7
    adc l                                         ; $55ba: $8d
    ld [hl], h                                    ; $55bb: $74
    rst $20                                       ; $55bc: $e7
    sub l                                         ; $55bd: $95
    db $fc                                        ; $55be: $fc
    inc c                                         ; $55bf: $0c
    sub l                                         ; $55c0: $95
    or [hl]                                       ; $55c1: $b6
    ld c, [hl]                                    ; $55c2: $4e
    add hl, hl                                    ; $55c3: $29

jr_064_55c4:
    push bc                                       ; $55c4: $c5
    inc sp                                        ; $55c5: $33
    xor a                                         ; $55c6: $af
    push af                                       ; $55c7: $f5
    ld [hl], e                                    ; $55c8: $73
    dec h                                         ; $55c9: $25
    ccf                                           ; $55ca: $3f
    ld b, e                                       ; $55cb: $43
    sbc l                                         ; $55cc: $9d
    ld a, [bc]                                    ; $55cd: $0a
    ret                                           ; $55ce: $c9


    ld a, [hl+]                                   ; $55cf: $2a
    inc a                                         ; $55d0: $3c
    dec c                                         ; $55d1: $0d
    sub b                                         ; $55d2: $90
    rst $08                                       ; $55d3: $cf
    db $10                                        ; $55d4: $10
    call nz, $8639                                ; $55d5: $c4 $39 $86
    xor [hl]                                      ; $55d8: $ae
    db $fd                                        ; $55d9: $fd
    dec b                                         ; $55da: $05
    rst $10                                       ; $55db: $d7
    ld a, h                                       ; $55dc: $7c
    or l                                          ; $55dd: $b5
    jr z, jr_064_55c4                             ; $55de: $28 $e4

    ret nc                                        ; $55e0: $d0

    ld a, h                                       ; $55e1: $7c
    xor a                                         ; $55e2: $af
    call $e73c                                    ; $55e3: $cd $3c $e7
    ld e, $17                                     ; $55e6: $1e $17
    di                                            ; $55e8: $f3
    jp z, $1f8f                                   ; $55e9: $ca $8f $1f

    add sp, -$38                                  ; $55ec: $e8 $c8
    ei                                            ; $55ee: $fb
    pop de                                        ; $55ef: $d1
    db $10                                        ; $55f0: $10
    jp z, Jump_000_02fd                           ; $55f1: $ca $fd $02

    rla                                           ; $55f4: $17
    add l                                         ; $55f5: $85
    inc d                                         ; $55f6: $14
    ld a, [hl+]                                   ; $55f7: $2a
    db $dd                                        ; $55f8: $dd
    cp l                                          ; $55f9: $bd
    ld e, d                                       ; $55fa: $5a
    and $1c                                       ; $55fb: $e6 $1c
    jp hl                                         ; $55fd: $e9


    adc $6b                                       ; $55fe: $ce $6b
    dec [hl]                                      ; $5600: $35
    rst $30                                       ; $5601: $f7
    add b                                         ; $5602: $80
    xor h                                         ; $5603: $ac
    ld [bc], a                                    ; $5604: $02
    ld a, [$c1de]                                 ; $5605: $fa $de $c1
    cpl                                           ; $5608: $2f
    ld c, b                                       ; $5609: $48
    ld e, e                                       ; $560a: $5b
    ld l, h                                       ; $560b: $6c
    pop hl                                        ; $560c: $e1
    dec [hl]                                      ; $560d: $35
    ld a, [hl]                                    ; $560e: $7e
    ld a, d                                       ; $560f: $7a
    inc c                                         ; $5610: $0c
    ld a, l                                       ; $5611: $7d
    ld [hl], h                                    ; $5612: $74
    sub a                                         ; $5613: $97
    ld b, l                                       ; $5614: $45
    ld hl, $d299                                  ; $5615: $21 $99 $d2
    cp e                                          ; $5618: $bb
    ld [hl], e                                    ; $5619: $73
    ld b, l                                       ; $561a: $45
    ld h, a                                       ; $561b: $67
    halt                                          ; $561c: $76
    adc d                                         ; $561d: $8a
    rst $30                                       ; $561e: $f7
    ld a, c                                       ; $561f: $79
    ld [hl], h                                    ; $5620: $74
    sub a                                         ; $5621: $97
    sub c                                         ; $5622: $91
    ccf                                           ; $5623: $3f
    ld b, a                                       ; $5624: $47
    jp nc, $def5                                  ; $5625: $d2 $f5 $de

    ld [hl-], a                                   ; $5628: $32
    xor a                                         ; $5629: $af
    db $fd                                        ; $562a: $fd
    ld h, a                                       ; $562b: $67
    ld l, d                                       ; $562c: $6a
    halt                                          ; $562d: $76
    ld h, l                                       ; $562e: $65
    ld h, b                                       ; $562f: $60
    halt                                          ; $5630: $76
    ld l, d                                       ; $5631: $6a
    ld a, a                                       ; $5632: $7f
    ld bc, $5c07                                  ; $5633: $01 $07 $5c
    ld b, [hl]                                    ; $5636: $46
    ld [hl], $1b                                  ; $5637: $36 $1b
    adc $7d                                       ; $5639: $ce $7d
    ld e, $ea                                     ; $563b: $1e $ea
    ld d, e                                       ; $563d: $53
    ld e, a                                       ; $563e: $5f
    sub $01                                       ; $563f: $d6 $01
    dec a                                         ; $5641: $3d
    dec d                                         ; $5642: $15
    sub d                                         ; $5643: $92
    dec l                                         ; $5644: $2d
    sub $be                                       ; $5645: $d6 $be
    db $eb                                        ; $5647: $eb
    ld h, b                                       ; $5648: $60
    push de                                       ; $5649: $d5
    ld [hl], l                                    ; $564a: $75
    xor l                                         ; $564b: $ad
    and $da                                       ; $564c: $e6 $da
    ld b, e                                       ; $564e: $43
    ld hl, $93f6                                  ; $564f: $21 $f6 $93
    xor e                                         ; $5652: $ab
    or $17                                        ; $5653: $f6 $17
    rlca                                          ; $5655: $07
    ld e, h                                       ; $5656: $5c
    or $34                                        ; $5657: $f6 $34
    ld b, a                                       ; $5659: $47
    cp d                                          ; $565a: $ba
    ld [hl], a                                    ; $565b: $77
    and a                                         ; $565c: $a7
    rst $10                                       ; $565d: $d7
    ccf                                           ; $565e: $3f
    ld a, d                                       ; $565f: $7a
    ld sp, $bd25                                  ; $5660: $31 $25 $bd
    rst $00                                       ; $5663: $c7
    cp b                                          ; $5664: $b8
    rst $08                                       ; $5665: $cf
    dec hl                                        ; $5666: $2b
    call Call_000_33a1                            ; $5667: $cd $a1 $33
    or h                                          ; $566a: $b4
    xor $b5                                       ; $566b: $ee $b5
    dec sp                                        ; $566d: $3b
    rra                                           ; $566e: $1f
    ld [$55e2], sp                                ; $566f: $08 $e2 $55
    ld b, l                                       ; $5672: $45
    jp hl                                         ; $5673: $e9


    add sp, -$24                                  ; $5674: $e8 $dc
    inc bc                                        ; $5676: $03
    ld h, l                                       ; $5677: $65
    adc l                                         ; $5678: $8d
    sbc a                                         ; $5679: $9f
    sbc [hl]                                      ; $567a: $9e
    adc [hl]                                      ; $567b: $8e
    rst $30                                       ; $567c: $f7
    dec bc                                        ; $567d: $0b
    ld b, a                                       ; $567e: $47
    ld e, [hl]                                    ; $567f: $5e
    xor [hl]                                      ; $5680: $ae
    xor a                                         ; $5681: $af
    ld d, d                                       ; $5682: $52
    ld a, d                                       ; $5683: $7a
    ld [hl], c                                    ; $5684: $71

jr_064_5685:
    dec e                                         ; $5685: $1d
    ld a, [hl-]                                   ; $5686: $3a
    and a                                         ; $5687: $a7
    db $e3                                        ; $5688: $e3
    jr jr_064_5685                                ; $5689: $18 $fa

    ld [de], a                                    ; $568b: $12
    ld e, $77                                     ; $568c: $1e $77
    jr z, @+$60                                   ; $568e: $28 $5e

    dec hl                                        ; $5690: $2b
    and c                                         ; $5691: $a1
    ld a, [hl-]                                   ; $5692: $3a
    rlca                                          ; $5693: $07
    ld d, e                                       ; $5694: $53
    ld hl, $7559                                  ; $5695: $21 $59 $75
    cp l                                          ; $5698: $bd
    pop de                                        ; $5699: $d1
    or b                                          ; $569a: $b0
    call c, $94bb                                 ; $569b: $dc $bb $94
    jp c, Jump_064_63d8                           ; $569e: $da $d8 $63

    xor c                                         ; $56a1: $a9
    db $eb                                        ; $56a2: $eb
    cp a                                          ; $56a3: $bf
    jr c, jr_064_56ed                             ; $56a4: $38 $47

    cp $d8                                        ; $56a6: $fe $d8
    push af                                       ; $56a8: $f5
    sbc $b5                                       ; $56a9: $de $b5
    add d                                         ; $56ab: $82
    adc $aa                                       ; $56ac: $ce $aa
    jp nc, $99b1                                  ; $56ae: $d2 $b1 $99

    or [hl]                                       ; $56b1: $b6
    adc e                                         ; $56b2: $8b
    jp nc, Jump_064_50b8                          ; $56b3: $d2 $b8 $50

    halt                                          ; $56b6: $76
    or c                                          ; $56b7: $b1
    ld b, e                                       ; $56b8: $43
    ld d, $1f                                     ; $56b9: $16 $1f
    ld sp, hl                                     ; $56bb: $f9
    ld [bc], a                                    ; $56bc: $02
    rst $10                                       ; $56bd: $d7
    ld d, c                                       ; $56be: $51
    ld a, d                                       ; $56bf: $7a
    add hl, de                                    ; $56c0: $19
    ld [bc], a                                    ; $56c1: $02
    xor a                                         ; $56c2: $af
    ld d, d                                       ; $56c3: $52
    ld hl, sp+$7e                                 ; $56c4: $f8 $7e
    ld bc, $1e47                                  ; $56c6: $01 $47 $1e
    ret nc                                        ; $56c9: $d0

    dec hl                                        ; $56ca: $2b
    db $eb                                        ; $56cb: $eb
    ld [hl], l                                    ; $56cc: $75
    ld d, a                                       ; $56cd: $57
    ld b, d                                       ; $56ce: $42
    rst $28                                       ; $56cf: $ef
    ld b, b                                       ; $56d0: $40
    inc c                                         ; $56d1: $0c
    adc b                                         ; $56d2: $88
    xor d                                         ; $56d3: $aa
    xor $23                                       ; $56d4: $ee $23
    ld d, a                                       ; $56d6: $57
    add hl, hl                                    ; $56d7: $29
    db $fc                                        ; $56d8: $fc
    ld [bc], a                                    ; $56d9: $02
    ld b, a                                       ; $56da: $47
    ld e, [hl]                                    ; $56db: $5e
    xor h                                         ; $56dc: $ac
    rst $30                                       ; $56dd: $f7
    ld c, $b1                                     ; $56de: $0e $b1
    ld [hl], e                                    ; $56e0: $73
    ld d, a                                       ; $56e1: $57
    ld b, $e5                                     ; $56e2: $06 $e5
    add [hl]                                      ; $56e4: $86
    and $c8                                       ; $56e5: $e6 $c8
    ld d, l                                       ; $56e7: $55
    ld a, [bc]                                    ; $56e8: $0a
    cp a                                          ; $56e9: $bf
    ld b, a                                       ; $56ea: $47
    ld e, [hl]                                    ; $56eb: $5e
    sbc h                                         ; $56ec: $9c

jr_064_56ed:
    ld l, $21                                     ; $56ed: $2e $21
    ld b, c                                       ; $56ef: $41
    xor a                                         ; $56f0: $af
    ld b, e                                       ; $56f1: $43
    rrc [hl]                                      ; $56f2: $cb $0e
    ld [hl], l                                    ; $56f4: $75
    ld d, a                                       ; $56f5: $57
    push hl                                       ; $56f6: $e5
    inc hl                                        ; $56f7: $23
    ld d, a                                       ; $56f8: $57
    add hl, hl                                    ; $56f9: $29
    db $fc                                        ; $56fa: $fc
    ld [bc], a                                    ; $56fb: $02
    ld b, a                                       ; $56fc: $47
    ld e, $74                                     ; $56fd: $1e $74
    ld [de], a                                    ; $56ff: $12
    db $d3                                        ; $5700: $d3
    ret z                                         ; $5701: $c8

    ret nc                                        ; $5702: $d0

    or d                                          ; $5703: $b2
    dec hl                                        ; $5704: $2b
    inc b                                         ; $5705: $04
    dec hl                                        ; $5706: $2b
    ld [$7d1a], sp                                ; $5707: $08 $1a $7d
    db $e4                                        ; $570a: $e4

Call_064_570b:
    ld a, [hl+]                                   ; $570b: $2a
    add l                                         ; $570c: $85
    ld e, a                                       ; $570d: $5f
    db $ed                                        ; $570e: $ed
    pop af                                        ; $570f: $f1
    rst $00                                       ; $5710: $c7
    dec a                                         ; $5711: $3d
    add $d5                                       ; $5712: $c6 $d5
    cp $a5                                        ; $5714: $fe $a5
    sbc b                                         ; $5716: $98
    add hl, hl                                    ; $5717: $29
    add d                                         ; $5718: $82
    adc $73                                       ; $5719: $ce $73

jr_064_571b:
    halt                                          ; $571b: $76
    sbc l                                         ; $571c: $9d
    ld [hl], c                                    ; $571d: $71

Call_064_571e:
    xor b                                         ; $571e: $a8
    ld c, a                                       ; $571f: $4f
    ld b, d                                       ; $5720: $42
    ld sp, $3c2f                                  ; $5721: $31 $2f $3c
    ld b, e                                       ; $5724: $43
    ccf                                           ; $5725: $3f
    rst $20                                       ; $5726: $e7
    cp h                                          ; $5727: $bc
    rst $10                                       ; $5728: $d7
    ret nc                                        ; $5729: $d0

    ccf                                           ; $572a: $3f
    ld l, l                                       ; $572b: $6d
    xor l                                         ; $572c: $ad
    inc c                                         ; $572d: $0c
    sub c                                         ; $572e: $91
    ld l, e                                       ; $572f: $6b
    dec c                                         ; $5730: $0d
    cp c                                          ; $5731: $b9
    ld b, e                                       ; $5732: $43
    dec l                                         ; $5733: $2d
    ld c, b                                       ; $5734: $48
    adc a                                         ; $5735: $8f
    db $fc                                        ; $5736: $fc
    ld b, a                                       ; $5737: $47
    and d                                         ; $5738: $a2
    rst $10                                       ; $5739: $d7
    ld [hl], b                                    ; $573a: $70
    adc l                                         ; $573b: $8d
    add hl, hl                                    ; $573c: $29
    cp c                                          ; $573d: $b9
    rst $00                                       ; $573e: $c7
    cp b                                          ; $573f: $b8
    rst $08                                       ; $5740: $cf
    xor e                                         ; $5741: $ab
    ld a, [hl+]                                   ; $5742: $2a
    add hl, hl                                    ; $5743: $29
    rst $08                                       ; $5744: $cf
    db $e3                                        ; $5745: $e3
    ld c, c                                       ; $5746: $49
    jr c, jr_064_571b                             ; $5747: $38 $d2

    or d                                          ; $5749: $b2
    jp c, Jump_000_14bf                           ; $574a: $da $bf $14

    rst $20                                       ; $574d: $e7
    ld a, [de]                                    ; $574e: $1a
    ld hl, $3a79                                  ; $574f: $21 $79 $3a
    ld a, d                                       ; $5752: $7a
    or c                                          ; $5753: $b1
    ld [hl], c                                    ; $5754: $71
    sbc b                                         ; $5755: $98
    db $10                                        ; $5756: $10
    sub e                                         ; $5757: $93
    ld a, d                                       ; $5758: $7a
    or l                                          ; $5759: $b5
    ld hl, sp-$22                                 ; $575a: $f8 $de
    pop bc                                        ; $575c: $c1
    ld h, [hl]                                    ; $575d: $66
    ld d, l                                       ; $575e: $55
    ld e, $f9                                     ; $575f: $1e $f9
    ld [hl], e                                    ; $5761: $73
    add sp, -$0f                                  ; $5762: $e8 $f1
    ld l, a                                       ; $5764: $6f
    ldh a, [rNR50]                                ; $5765: $f0 $24
    inc e                                         ; $5767: $1c
    reti                                          ; $5768: $d9


    dec a                                         ; $5769: $3d
    ld d, d                                       ; $576a: $52
    cpl                                           ; $576b: $2f
    ld c, h                                       ; $576c: $4c
    ld de, $ae74                                  ; $576d: $11 $74 $ae
    push de                                       ; $5770: $d5
    inc e                                         ; $5771: $1c
    dec a                                         ; $5772: $3d
    inc h                                         ; $5773: $24
    ld e, d                                       ; $5774: $5a
    xor $17                                       ; $5775: $ee $17
    rst $10                                       ; $5777: $d7
    ld a, h                                       ; $5778: $7c

Call_064_5779:
    ld b, l                                       ; $5779: $45
    ld e, e                                       ; $577a: $5b
    ld d, l                                       ; $577b: $55
    cp a                                          ; $577c: $bf
    rrca                                          ; $577d: $0f
    push af                                       ; $577e: $f5
    sub c                                         ; $577f: $91
    ccf                                           ; $5780: $3f
    ld [hl], $6d                                  ; $5781: $36 $6d
    db $ed                                        ; $5783: $ed
    cp a                                          ; $5784: $bf
    inc h                                         ; $5785: $24
    ldh [$fd], a                                  ; $5786: $e0 $fd
    ld [bc], a                                    ; $5788: $02
    ld l, l                                       ; $5789: $6d
    and $c5                                       ; $578a: $e6 $c5
    ccf                                           ; $578c: $3f
    ld d, a                                       ; $578d: $57
    sbc e                                         ; $578e: $9b
    db $eb                                        ; $578f: $eb
    add b                                         ; $5790: $80
    ld a, h                                       ; $5791: $7c
    rst $28                                       ; $5792: $ef
    add b                                         ; $5793: $80
    bit 4, d                                      ; $5794: $cb $62
    add sp, -$23                                  ; $5796: $e8 $dd
    dec hl                                        ; $5798: $2b
    ld c, [hl]                                    ; $5799: $4e
    pop af                                        ; $579a: $f1
    ld c, b                                       ; $579b: $48
    ld a, [hl-]                                   ; $579c: $3a
    and l                                         ; $579d: $a5
    or a                                          ; $579e: $b7
    inc a                                         ; $579f: $3c
    add h                                         ; $57a0: $84
    or d                                          ; $57a1: $b2
    rst $00                                       ; $57a2: $c7
    cp b                                          ; $57a3: $b8
    rst $08                                       ; $57a4: $cf
    db $eb                                        ; $57a5: $eb
    ld b, [hl]                                    ; $57a6: $46
    db $d3                                        ; $57a7: $d3
    or $58                                        ; $57a8: $f6 $58
    ld b, [hl]                                    ; $57aa: $46
    ld [hl], a                                    ; $57ab: $77
    add hl, de                                    ; $57ac: $19
    ld sp, hl                                     ; $57ad: $f9
    ld [hl], e                                    ; $57ae: $73
    db $e4                                        ; $57af: $e4
    adc a                                         ; $57b0: $8f
    ld a, b                                       ; $57b1: $78
    sbc h                                         ; $57b2: $9c
    ccf                                           ; $57b3: $3f
    xor $bc                                       ; $57b4: $ee $bc
    rst $00                                       ; $57b6: $c7
    cp b                                          ; $57b7: $b8
    rst $08                                       ; $57b8: $cf
    xor e                                         ; $57b9: $ab
    xor l                                         ; $57ba: $ad
    and h                                         ; $57bb: $a4
    jp nc, Jump_064_7bd9                          ; $57bc: $d2 $d9 $7b

    ld [bc], a                                    ; $57bf: $02
    xor [hl]                                      ; $57c0: $ae
    ld bc, $3bbd                                  ; $57c1: $01 $bd $3b
    and a                                         ; $57c4: $a7
    and e                                         ; $57c5: $a3
    rst $10                                       ; $57c6: $d7
    ld hl, sp+$25                                 ; $57c7: $f8 $25
    ld [hl], $d2                                  ; $57c9: $36 $d2
    ld d, [hl]                                    ; $57cb: $56
    sbc e                                         ; $57cc: $9b
    inc de                                        ; $57cd: $13
    ld a, l                                       ; $57ce: $7d
    ld c, a                                       ; $57cf: $4f
    ld [hl], e                                    ; $57d0: $73
    ld [hl], h                                    ; $57d1: $74
    sub a                                         ; $57d2: $97
    sub c                                         ; $57d3: $91
    rst $38                                       ; $57d4: $ff
    ret z                                         ; $57d5: $c8

    dec a                                         ; $57d6: $3d
    ld d, b                                       ; $57d7: $50
    ld h, [hl]                                    ; $57d8: $66
    ld e, c                                       ; $57d9: $59
    rst $10                                       ; $57da: $d7
    di                                            ; $57db: $f3
    ld a, [hl]                                    ; $57dc: $7e
    ld bc, $a6ed                                  ; $57dd: $01 $ed $a6
    db $d3                                        ; $57e0: $d3
    sub $ca                                       ; $57e1: $d6 $ca
    db $10                                        ; $57e3: $10
    cp c                                          ; $57e4: $b9
    sub $90                                       ; $57e5: $d6 $90
    dec sp                                        ; $57e7: $3b
    call nc, $f482                                ; $57e8: $d4 $82 $f4
    db $fd                                        ; $57eb: $fd
    ld [bc], a                                    ; $57ec: $02
    db $ed                                        ; $57ed: $ed
    cp a                                          ; $57ee: $bf
    ld [hl], a                                    ; $57ef: $77
    ld a, [hl+]                                   ; $57f0: $2a
    sbc l                                         ; $57f1: $9d
    or [hl]                                       ; $57f2: $b6
    or $9f                                        ; $57f3: $f6 $9f
    xor c                                         ; $57f5: $a9
    and c                                         ; $57f6: $a1
    adc l                                         ; $57f7: $8d
    adc h                                         ; $57f8: $8c
    ccf                                           ; $57f9: $3f
    xor [hl]                                      ; $57fa: $ae
    sub c                                         ; $57fb: $91
    jr nz, @-$39                                  ; $57fc: $20 $c5

    add hl, sp                                    ; $57fe: $39
    add h                                         ; $57ff: $84
    ld [hl-], a                                   ; $5800: $32
    jp nc, $e3a9                                  ; $5801: $d2 $a9 $e3

    add hl, sp                                    ; $5804: $39
    cpl                                           ; $5805: $2f
    ld d, a                                       ; $5806: $57
    ld h, [hl]                                    ; $5807: $66
    adc b                                         ; $5808: $88
    ld e, h                                       ; $5809: $5c
    ld l, e                                       ; $580a: $6b
    ret z                                         ; $580b: $c8

    dec e                                         ; $580c: $1d
    sub d                                         ; $580d: $92
    rst $18                                       ; $580e: $df
    ld a, [c]                                     ; $580f: $f2
    xor d                                         ; $5810: $aa
    dec b                                         ; $5811: $05
    ld a, c                                       ; $5812: $79
    rrca                                          ; $5813: $0f
    sub h                                         ; $5814: $94
    jp hl                                         ; $5815: $e9


    cp b                                          ; $5816: $b8
    jr z, @-$1a                                   ; $5817: $28 $e4

    ld a, $af                                     ; $5819: $3e $af
    dec de                                        ; $581b: $1b
    dec a                                         ; $581c: $3d
    ld b, a                                       ; $581d: $47
    db $ec                                        ; $581e: $ec
    ld e, h                                       ; $581f: $5c
    db $ed                                        ; $5820: $ed
    ld e, a                                       ; $5821: $5f
    adc d                                         ; $5822: $8a
    sbc c                                         ; $5823: $99
    ld [hl+], a                                   ; $5824: $22
    add sp, $5c                                   ; $5825: $e8 $5c
    jr z, jr_064_5894                             ; $5827: $28 $6b

    rst $38                                       ; $5829: $ff
    dec h                                         ; $582a: $25
    ld bc, $8517                                  ; $582b: $01 $17 $85
    db $e4                                        ; $582e: $e4
    rst $18                                       ; $582f: $df
    reti                                          ; $5830: $d9


    ld a, e                                       ; $5831: $7b
    and b                                         ; $5832: $a0
    db $ec                                        ; $5833: $ec
    di                                            ; $5834: $f3
    add sp, $2e                                   ; $5835: $e8 $2e

jr_064_5837:
    ld a, e                                       ; $5837: $7b
    sbc d                                         ; $5838: $9a
    ld d, l                                       ; $5839: $55
    ld a, c                                       ; $583a: $79
    ld c, d                                       ; $583b: $4a
    rla                                           ; $583c: $17
    pop af                                        ; $583d: $f1
    ld [hl+], a                                   ; $583e: $22
    db $10                                        ; $583f: $10
    db $f4                                        ; $5840: $f4
    inc h                                         ; $5841: $24
    sub h                                         ; $5842: $94
    xor $91                                       ; $5843: $ee $91
    adc $fb                                       ; $5845: $ce $fb
    dec b                                         ; $5847: $05
    ld l, l                                       ; $5848: $6d
    and $39                                       ; $5849: $e6 $39
    ld d, a                                       ; $584b: $57
    cp a                                          ; $584c: $bf
    and b                                         ; $584d: $a0
    dec sp                                        ; $584e: $3b
    sub h                                         ; $584f: $94
    add c                                         ; $5850: $81
    ld d, d                                       ; $5851: $52
    ld e, $e9                                     ; $5852: $1e $e9
    adc $5b                                       ; $5854: $ce $5b
    inc d                                         ; $5856: $14
    ld d, d                                       ; $5857: $52
    add hl, sp                                    ; $5858: $39
    ld a, c                                       ; $5859: $79
    rst $30                                       ; $585a: $f7
    ld a, l                                       ; $585b: $7d
    cpl                                           ; $585c: $2f
    sub h                                         ; $585d: $94
    and c                                         ; $585e: $a1
    ld a, $f5                                     ; $585f: $3e $f5
    ld h, l                                       ; $5861: $65
    and c                                         ; $5862: $a1
    call nc, $22e6                                ; $5863: $d4 $e6 $22
    db $10                                        ; $5866: $10
    db $f4                                        ; $5867: $f4
    ld l, d                                       ; $5868: $6a
    rst $38                                       ; $5869: $ff
    ld d, d                                       ; $586a: $52
    sbc h                                         ; $586b: $9c
    ld [c], a                                     ; $586c: $e2
    dec c                                         ; $586d: $0d
    sbc l                                         ; $586e: $9d
    ld l, e                                       ; $586f: $6b
    and h                                         ; $5870: $a4
    ld e, [hl]                                    ; $5871: $5e
    sbc h                                         ; $5872: $9c
    ld b, e                                       ; $5873: $43
    ccf                                           ; $5874: $3f
    rst $30                                       ; $5875: $f7
    dec bc                                        ; $5876: $0b
    rlca                                          ; $5877: $07
    sbc e                                         ; $5878: $9b
    and e                                         ; $5879: $a3
    cp e                                          ; $587a: $bb
    inc l                                         ; $587b: $2c
    ld l, d                                       ; $587c: $6a
    xor [hl]                                      ; $587d: $ae
    add a                                         ; $587e: $87
    ld a, b                                       ; $587f: $78
    inc c                                         ; $5880: $0c
    ld a, l                                       ; $5881: $7d
    sbc a                                         ; $5882: $9f
    and a                                         ; $5883: $a7
    and b                                         ; $5884: $a0
    inc d                                         ; $5885: $14
    cpl                                           ; $5886: $2f
    inc a                                         ; $5887: $3c
    ld a, [hl+]                                   ; $5888: $2a
    ld b, c                                       ; $5889: $41
    jp z, $b11c                                   ; $588a: $ca $1c $b1

    ld [hl], e                                    ; $588d: $73
    ld [de], a                                    ; $588e: $12
    ld c, d                                       ; $588f: $4a
    rst $30                                       ; $5890: $f7
    add hl, sp                                    ; $5891: $39
    cpl                                           ; $5892: $2f
    sub a                                         ; $5893: $97

jr_064_5894:
    add hl, de                                    ; $5894: $19
    rst $10                                       ; $5895: $d7
    ld hl, sp+$69                                 ; $5896: $f8 $69
    jp c, $cb1e                                   ; $5898: $da $1e $cb

    ld h, d                                       ; $589b: $62
    ld c, d                                       ; $589c: $4a
    ld l, $0a                                     ; $589d: $2e $0a
    ld e, c                                       ; $589f: $59
    and c                                         ; $58a0: $a1
    jr nc, jr_064_5837                            ; $58a1: $30 $94

    ei                                            ; $58a3: $fb
    dec b                                         ; $58a4: $05
    rla                                           ; $58a5: $17
    push af                                       ; $58a6: $f5
    ret nz                                        ; $58a7: $c0

    xor e                                         ; $58a8: $ab
    xor h                                         ; $58a9: $ac
    ld d, c                                       ; $58aa: $51
    jp z, $d9fb                                   ; $58ab: $ca $fb $d9

    jr nc, jr_064_58cd                            ; $58ae: $30 $1d

    ld c, l                                       ; $58b0: $4d
    dec de                                        ; $58b1: $1b
    ld sp, hl                                     ; $58b2: $f9
    inc sp                                        ; $58b3: $33
    dec [hl]                                      ; $58b4: $35
    rst $30                                       ; $58b5: $f7
    ld c, $b8                                     ; $58b6: $0e $b8
    xor h                                         ; $58b8: $ac
    pop hl                                        ; $58b9: $e1
    ld c, [hl]                                    ; $58ba: $4e
    dec d                                         ; $58bb: $15
    ld [hl], c                                    ; $58bc: $71
    ld c, $a1                                     ; $58bd: $0e $a1
    db $ec                                        ; $58bf: $ec
    ld sp, $c4ee                                  ; $58c0: $31 $ee $c4
    xor c                                         ; $58c3: $a9
    ret nc                                        ; $58c4: $d0

    cp e                                          ; $58c5: $bb
    dec bc                                        ; $58c6: $0b
    cp b                                          ; $58c7: $b8
    dec d                                         ; $58c8: $15
    ld b, b                                       ; $58c9: $40
    ld a, b                                       ; $58ca: $78
    ld d, c                                       ; $58cb: $51
    ret z                                         ; $58cc: $c8

jr_064_58cd:
    ld d, l                                       ; $58cd: $55
    push af                                       ; $58ce: $f5
    pop de                                        ; $58cf: $d1
    xor b                                         ; $58d0: $a8
    ret                                           ; $58d1: $c9


    jp c, $a2b0                                   ; $58d2: $da $b0 $a2

    inc a                                         ; $58d5: $3c
    dec l                                         ; $58d6: $2d
    ld d, e                                       ; $58d7: $53
    xor d                                         ; $58d8: $aa
    rst $28                                       ; $58d9: $ef
    rla                                           ; $58da: $17
    rla                                           ; $58db: $17
    rlca                                          ; $58dc: $07
    ld h, h                                       ; $58dd: $64
    jp c, $e748                                   ; $58de: $da $48 $e7

    sbc h                                         ; $58e1: $9c
    xor e                                         ; $58e2: $ab
    db $fd                                        ; $58e3: $fd
    ld c, e                                       ; $58e4: $4b
    ld sp, $0453                                  ; $58e5: $31 $53 $04
    sbc l                                         ; $58e8: $9d
    ld [c], a                                     ; $58e9: $e2
    pop de                                        ; $58ea: $d1
    ld e, l                                       ; $58eb: $5d
    sub $30                                       ; $58ec: $d6 $30
    ld c, c                                       ; $58ee: $49
    adc l                                         ; $58ef: $8d
    sbc l                                         ; $58f0: $9d
    rst $30                                       ; $58f1: $f7
    dec bc                                        ; $58f2: $0b

Jump_064_58f3:
    sub a                                         ; $58f3: $97
    scf                                           ; $58f4: $37
    ld l, c                                       ; $58f5: $69
    ld b, e                                       ; $58f6: $43
    di                                            ; $58f7: $f3
    sbc h                                         ; $58f8: $9c
    dec bc                                        ; $58f9: $0b
    jp hl                                         ; $58fa: $e9


    ld a, [c]                                     ; $58fb: $f2
    dec h                                         ; $58fc: $25
    call c, $172f                                 ; $58fd: $dc $2f $17
    rlca                                          ; $5900: $07
    ld h, h                                       ; $5901: $64
    jp c, $a71e                                   ; $5902: $da $1e $a7

    rla                                           ; $5905: $17
    jp nc, Jump_064_4be5                          ; $5906: $d2 $e5 $4b

    cp b                                          ; $5909: $b8
    ld e, a                                       ; $590a: $5f
    rlca                                          ; $590b: $07
    cp a                                          ; $590c: $bf
    ld c, h                                       ; $590d: $4c
    ld a, l                                       ; $590e: $7d
    reti                                          ; $590f: $d9


jr_064_5910:
    rst $28                                       ; $5910: $ef
    sbc b                                         ; $5911: $98
    ld d, b                                       ; $5912: $50
    ld d, $35                                     ; $5913: $16 $35
    rla                                           ; $5915: $17
    add l                                         ; $5916: $85
    call c, Call_064_62e3                         ; $5917: $dc $e3 $62
    ld e, [hl]                                    ; $591a: $5e
    ld c, b                                       ; $591b: $48
    sub a                                         ; $591c: $97
    cpl                                           ; $591d: $2f
    pop hl                                        ; $591e: $e1
    ld a, [hl]                                    ; $591f: $7e
    ld bc, $eb97                                  ; $5920: $01 $97 $eb
    inc hl                                        ; $5923: $23
    ld a, a                                       ; $5924: $7f
    adc [hl]                                      ; $5925: $8e
    xor $32                                       ; $5926: $ee $32
    res 3, [hl]                                   ; $5928: $cb $9e
    ld e, a                                       ; $592a: $5f
    xor e                                         ; $592b: $ab
    rla                                           ; $592c: $17
    jp nc, Jump_064_4be5                          ; $592d: $d2 $e5 $4b

    cp b                                          ; $5930: $b8
    ld e, a                                       ; $5931: $5f
    ld l, l                                       ; $5932: $6d
    and $39                                       ; $5933: $e6 $39
    rla                                           ; $5935: $17
    add e                                         ; $5936: $83
    or b                                          ; $5937: $b0
    db $d3                                        ; $5938: $d3
    ld sp, hl                                     ; $5939: $f9
    add l                                         ; $593a: $85
    and c                                         ; $593b: $a1
    sbc $2f                                       ; $593c: $de $2f
    rla                                           ; $593e: $17
    rlca                                          ; $593f: $07
    ld h, h                                       ; $5940: $64
    jp c, $eea2                                   ; $5941: $da $a2 $ee

    db $f4                                        ; $5944: $f4
    ld h, d                                       ; $5945: $62
    db $10                                        ; $5946: $10
    halt                                          ; $5947: $76
    ld a, [hl-]                                   ; $5948: $3a
    cp a                                          ; $5949: $bf
    jr nc, jr_064_59a0                            ; $594a: $30 $54

    rst $20                                       ; $594c: $e7
    db $fd                                        ; $594d: $fd
    ld [bc], a                                    ; $594e: $02
    rlca                                          ; $594f: $07
    cp a                                          ; $5950: $bf
    ld c, h                                       ; $5951: $4c
    ld a, l                                       ; $5952: $7d
    reti                                          ; $5953: $d9


    rst $28                                       ; $5954: $ef
    sbc b                                         ; $5955: $98
    ld d, b                                       ; $5956: $50
    ld d, $35                                     ; $5957: $16 $35
    rla                                           ; $5959: $17
    add l                                         ; $595a: $85
    call c, $a5f3                                 ; $595b: $dc $f3 $a5
    ld a, b                                       ; $595e: $78
    ld sp, $3b08                                  ; $595f: $31 $08 $3b
    sbc l                                         ; $5962: $9d
    ld e, a                                       ; $5963: $5f
    jr jr_064_5910                                ; $5964: $18 $aa

    di                                            ; $5966: $f3
    ld a, [hl]                                    ; $5967: $7e
    ld bc, $eb97                                  ; $5968: $01 $97 $eb
    inc hl                                        ; $596b: $23
    ld a, a                                       ; $596c: $7f
    adc [hl]                                      ; $596d: $8e
    xor $32                                       ; $596e: $ee $32
    res 3, [hl]                                   ; $5970: $cb $9e
    ld e, a                                       ; $5972: $5f
    xor e                                         ; $5973: $ab
    rla                                           ; $5974: $17
    add e                                         ; $5975: $83
    or b                                          ; $5976: $b0
    db $d3                                        ; $5977: $d3
    ld sp, hl                                     ; $5978: $f9
    add l                                         ; $5979: $85
    and c                                         ; $597a: $a1
    ld a, [hl-]                                   ; $597b: $3a
    rst $28                                       ; $597c: $ef
    rla                                           ; $597d: $17
    rlca                                          ; $597e: $07
    cp a                                          ; $597f: $bf
    ld c, h                                       ; $5980: $4c
    ld a, l                                       ; $5981: $7d
    reti                                          ; $5982: $d9


    rst $28                                       ; $5983: $ef
    sbc b                                         ; $5984: $98
    ld d, b                                       ; $5985: $50
    ld d, $35                                     ; $5986: $16 $35
    rla                                           ; $5988: $17
    add l                                         ; $5989: $85
    call c, $a5f3                                 ; $598a: $dc $f3 $a5
    ld a, b                                       ; $598d: $78
    sub l                                         ; $598e: $95
    ld b, e                                       ; $598f: $43
    ld a, $e4                                     ; $5990: $3e $e4
    ld h, a                                       ; $5992: $67
    or $fd                                        ; $5993: $f6 $fd
    ld [bc], a                                    ; $5995: $02
    rla                                           ; $5996: $17
    rlca                                          ; $5997: $07
    ld h, h                                       ; $5998: $64
    jp c, $eea2                                   ; $5999: $da $a2 $ee

    db $f4                                        ; $599c: $f4
    ld a, [hl+]                                   ; $599d: $2a
    add a                                         ; $599e: $87
    ld a, h                                       ; $599f: $7c

jr_064_59a0:
    ret z                                         ; $59a0: $c8

    rst $08                                       ; $59a1: $cf
    db $ec                                        ; $59a2: $ec
    ei                                            ; $59a3: $fb
    dec b                                         ; $59a4: $05
    sub a                                         ; $59a5: $97
    db $eb                                        ; $59a6: $eb
    inc hl                                        ; $59a7: $23
    ld a, a                                       ; $59a8: $7f
    adc [hl]                                      ; $59a9: $8e
    xor $32                                       ; $59aa: $ee $32
    res 3, [hl]                                   ; $59ac: $cb $9e
    ld e, a                                       ; $59ae: $5f
    xor e                                         ; $59af: $ab
    ld d, a                                       ; $59b0: $57
    add hl, sp                                    ; $59b1: $39
    db $e4                                        ; $59b2: $e4
    ld b, e                                       ; $59b3: $43
    ld a, [hl]                                    ; $59b4: $7e
    ld h, [hl]                                    ; $59b5: $66
    rst $18                                       ; $59b6: $df
    cpl                                           ; $59b7: $2f
    sub a                                         ; $59b8: $97
    ld d, e                                       ; $59b9: $53
    ld a, [hl-]                                   ; $59ba: $3a
    ld a, [hl-]                                   ; $59bb: $3a
    rst $28                                       ; $59bc: $ef
    ld e, l                                       ; $59bd: $5d
    db $f4                                        ; $59be: $f4
    rra                                           ; $59bf: $1f
    add sp, $60                                   ; $59c0: $e8 $60
    ld e, c                                       ; $59c2: $59
    sbc e                                         ; $59c3: $9b
    sbc [hl]                                      ; $59c4: $9e
    or l                                          ; $59c5: $b5
    ld e, e                                       ; $59c6: $5b
    ld d, e                                       ; $59c7: $53
    ld b, a                                       ; $59c8: $47
    cp $d8                                        ; $59c9: $fe $d8
    adc e                                         ; $59cb: $8b
    ld a, a                                       ; $59cc: $7f
    ld l, $d2                                     ; $59cd: $2e $d2
    dec sp                                        ; $59cf: $3b
    xor $47                                       ; $59d0: $ee $47
    ld b, e                                       ; $59d2: $43
    ccf                                           ; $59d3: $3f
    rst $30                                       ; $59d4: $f7
    dec bc                                        ; $59d5: $0b
    rla                                           ; $59d6: $17
    rlca                                          ; $59d7: $07
    ld h, h                                       ; $59d8: $64
    jp c, $eea2                                   ; $59d9: $da $a2 $ee

    db $f4                                        ; $59dc: $f4
    add h                                         ; $59dd: $84
    jp nc, Jump_064_79d1                          ; $59de: $d2 $d1 $79

    cp a                                          ; $59e1: $bf
    sub a                                         ; $59e2: $97
    xor h                                         ; $59e3: $ac
    ld de, $658a                                  ; $59e4: $11 $8a $65
    sub l                                         ; $59e7: $95
    sbc e                                         ; $59e8: $9b
    add hl, sp                                    ; $59e9: $39
    ld [hl], h                                    ; $59ea: $74
    xor $f3                                       ; $59eb: $ee $f3
    ret nc                                        ; $59ed: $d0

    call z, Call_064_739e                         ; $59ee: $cc $9e $73
    rst $08                                       ; $59f1: $cf
    rla                                           ; $59f2: $17
    call z, $9caf                                 ; $59f3: $cc $af $9c
    add hl, de                                    ; $59f6: $19
    ldh a, [$7e]                                  ; $59f7: $f0 $7e
    ld bc, $0717                                  ; $59f9: $01 $17 $07
    ld h, h                                       ; $59fc: $64
    jp c, $a71e                                   ; $59fd: $da $1e $a7

    rst $30                                       ; $5a00: $f7
    ld a, h                                       ; $5a01: $7c
    pop bc                                        ; $5a02: $c1
    db $fc                                        ; $5a03: $fc
    jp z, $0199                                   ; $5a04: $ca $99 $01

    rst $28                                       ; $5a07: $ef
    rla                                           ; $5a08: $17
    rlca                                          ; $5a09: $07
    cp a                                          ; $5a0a: $bf
    ld c, h                                       ; $5a0b: $4c
    ld a, l                                       ; $5a0c: $7d
    reti                                          ; $5a0d: $d9


    rst $28                                       ; $5a0e: $ef
    sbc b                                         ; $5a0f: $98
    ld d, b                                       ; $5a10: $50
    ld d, $35                                     ; $5a11: $16 $35
    rla                                           ; $5a13: $17
    add l                                         ; $5a14: $85
    call c, Call_064_62e3                         ; $5a15: $dc $e3 $62
    sbc $8f                                       ; $5a18: $de $8f
    or $7c                                        ; $5a1a: $f6 $7c
    pop bc                                        ; $5a1c: $c1
    db $fc                                        ; $5a1d: $fc

Jump_064_5a1e:
    jp z, $0199                                   ; $5a1e: $ca $99 $01

    rst $28                                       ; $5a21: $ef
    rla                                           ; $5a22: $17
    sub a                                         ; $5a23: $97
    db $eb                                        ; $5a24: $eb
    inc hl                                        ; $5a25: $23
    ld a, a                                       ; $5a26: $7f
    adc [hl]                                      ; $5a27: $8e
    xor $32                                       ; $5a28: $ee $32
    res 3, [hl]                                   ; $5a2a: $cb $9e
    ld e, a                                       ; $5a2c: $5f
    xor e                                         ; $5a2d: $ab
    rst $30                                       ; $5a2e: $f7
    ld a, h                                       ; $5a2f: $7c
    pop bc                                        ; $5a30: $c1
    db $fc                                        ; $5a31: $fc
    jp z, $0199                                   ; $5a32: $ca $99 $01

    rst $28                                       ; $5a35: $ef
    rla                                           ; $5a36: $17
    rst $10                                       ; $5a37: $d7
    ld e, c                                       ; $5a38: $59
    db $f4                                        ; $5a39: $f4
    ld a, [de]                                    ; $5a3a: $1a
    add a                                         ; $5a3b: $87
    ld [hl+], a                                   ; $5a3c: $22
    rst $30                                       ; $5a3d: $f7
    ld c, $35                                     ; $5a3e: $0e $35
    rst $20                                       ; $5a40: $e7
    inc e                                         ; $5a41: $1c
    ld a, [hl-]                                   ; $5a42: $3a
    ld h, a                                       ; $5a43: $67
    ld e, c                                       ; $5a44: $59
    db $ed                                        ; $5a45: $ed
    cp a                                          ; $5a46: $bf
    call nc, Call_064_4e3d                        ; $5a47: $d4 $3d $4e
    rrca                                          ; $5a4a: $0f
    sub $0a                                       ; $5a4b: $d6 $0a
    push de                                       ; $5a4d: $d5
    ld [hl], d                                    ; $5a4e: $72
    cp a                                          ; $5a4f: $bf
    rlca                                          ; $5a50: $07
    ld a, a                                       ; $5a51: $7f
    rst $10                                       ; $5a52: $d7
    sub e                                         ; $5a53: $93
    ld l, c                                       ; $5a54: $69
    ld b, e                                       ; $5a55: $43
    di                                            ; $5a56: $f3
    sbc h                                         ; $5a57: $9c
    inc sp                                        ; $5a58: $33
    rst $28                                       ; $5a59: $ef
    and c                                         ; $5a5a: $a1
    and h                                         ; $5a5b: $a4
    ld [hl], d                                    ; $5a5c: $72
    add a                                         ; $5a5d: $87
    jp nz, Jump_000_1f93                          ; $5a5e: $c2 $93 $1f

    set 7, l                                      ; $5a61: $cb $fd
    ld [bc], a                                    ; $5a63: $02
    rla                                           ; $5a64: $17
    rlca                                          ; $5a65: $07
    ld h, h                                       ; $5a66: $64
    jp c, $a71e                                   ; $5a67: $da $1e $a7

    rst $30                                       ; $5a6a: $f7
    db $fc                                        ; $5a6b: $fc
    xor [hl]                                      ; $5a6c: $ae
    daa                                           ; $5a6d: $27
    rst $18                                       ; $5a6e: $df
    cpl                                           ; $5a6f: $2f
    rlca                                          ; $5a70: $07
    cp a                                          ; $5a71: $bf
    ld c, h                                       ; $5a72: $4c
    ld a, l                                       ; $5a73: $7d
    reti                                          ; $5a74: $d9


    rst $28                                       ; $5a75: $ef
    sbc b                                         ; $5a76: $98
    ld d, b                                       ; $5a77: $50
    ld d, $35                                     ; $5a78: $16 $35
    rla                                           ; $5a7a: $17
    add l                                         ; $5a7b: $85
    call c, Call_064_62e3                         ; $5a7c: $dc $e3 $62
    sbc $f3                                       ; $5a7f: $de $f3
    cp e                                          ; $5a81: $bb
    sbc [hl]                                      ; $5a82: $9e
    ld a, h                                       ; $5a83: $7c
    cp a                                          ; $5a84: $bf
    sub a                                         ; $5a85: $97
    db $eb                                        ; $5a86: $eb
    inc hl                                        ; $5a87: $23
    ld a, a                                       ; $5a88: $7f
    adc [hl]                                      ; $5a89: $8e
    xor $32                                       ; $5a8a: $ee $32
    res 3, [hl]                                   ; $5a8c: $cb $9e
    ld e, a                                       ; $5a8e: $5f
    xor e                                         ; $5a8f: $ab
    rst $30                                       ; $5a90: $f7
    db $fc                                        ; $5a91: $fc
    xor [hl]                                      ; $5a92: $ae
    daa                                           ; $5a93: $27
    rst $18                                       ; $5a94: $df
    cpl                                           ; $5a95: $2f
    sub a                                         ; $5a96: $97
    db $eb                                        ; $5a97: $eb
    inc hl                                        ; $5a98: $23
    ld a, a                                       ; $5a99: $7f
    adc [hl]                                      ; $5a9a: $8e
    xor $b2                                       ; $5a9b: $ee $b2
    ld d, b                                       ; $5a9d: $50
    ld l, d                                       ; $5a9e: $6a
    ld [hl], e                                    ; $5a9f: $73
    cp a                                          ; $5aa0: $bf
    ld b, [hl]                                    ; $5aa1: $46
    ld bc, $33dd                                  ; $5aa2: $01 $dd $33
    ldh [$fd], a                                  ; $5aa5: $e0 $fd
    ld [bc], a                                    ; $5aa7: $02
    rlca                                          ; $5aa8: $07
    cp a                                          ; $5aa9: $bf
    ld c, h                                       ; $5aaa: $4c
    ld a, l                                       ; $5aab: $7d
    reti                                          ; $5aac: $d9


    rst $28                                       ; $5aad: $ef
    sbc b                                         ; $5aae: $98
    ld d, b                                       ; $5aaf: $50
    ld d, $35                                     ; $5ab0: $16 $35
    rla                                           ; $5ab2: $17
    add l                                         ; $5ab3: $85
    call c, Call_064_62e3                         ; $5ab4: $dc $e3 $62
    sbc $af                                       ; $5ab7: $de $af
    ld d, c                                       ; $5ab9: $51
    ld b, b                                       ; $5aba: $40
    rst $30                                       ; $5abb: $f7
    inc c                                         ; $5abc: $0c
    ld a, b                                       ; $5abd: $78
    cp a                                          ; $5abe: $bf
    sub a                                         ; $5abf: $97
    db $eb                                        ; $5ac0: $eb
    inc hl                                        ; $5ac1: $23
    ld a, a                                       ; $5ac2: $7f
    adc [hl]                                      ; $5ac3: $8e
    xor $32                                       ; $5ac4: $ee $32
    res 3, [hl]                                   ; $5ac6: $cb $9e
    ld e, a                                       ; $5ac8: $5f
    xor e                                         ; $5ac9: $ab
    rst $30                                       ; $5aca: $f7
    ld l, e                                       ; $5acb: $6b
    inc d                                         ; $5acc: $14
    ret nc                                        ; $5acd: $d0

    dec a                                         ; $5ace: $3d
    inc bc                                        ; $5acf: $03
    sbc $2f                                       ; $5ad0: $de $2f
    rlca                                          ; $5ad2: $07
    ld e, h                                       ; $5ad3: $5c
    and $5c                                       ; $5ad4: $e6 $5c
    jp hl                                         ; $5ad6: $e9


    rra                                           ; $5ad7: $1f
    rla                                           ; $5ad8: $17
    add l                                         ; $5ad9: $85
    call c, $d1e7                                 ; $5ada: $dc $e7 $d1
    ld e, l                                       ; $5add: $5d
    ld b, [hl]                                    ; $5ade: $46
    cp $5c                                        ; $5adf: $fe $5c
    and h                                         ; $5ae1: $a4
    dec bc                                        ; $5ae2: $0b
    sbc d                                         ; $5ae3: $9a
    rst $30                                       ; $5ae4: $f7
    ld b, b                                       ; $5ae5: $40
    sbc c                                         ; $5ae6: $99
    add h                                         ; $5ae7: $84
    jp nc, $dabd                                  ; $5ae8: $d2 $bd $da

    cp a                                          ; $5aeb: $bf
    inc d                                         ; $5aec: $14
    inc sp                                        ; $5aed: $33
    ld b, l                                       ; $5aee: $45
    ret nc                                        ; $5aef: $d0

    ld c, c                                       ; $5af0: $49
    db $db                                        ; $5af1: $db
    ld h, e                                       ; $5af2: $63
    add hl, de                                    ; $5af3: $19
    db $dd                                        ; $5af4: $dd
    ld h, l                                       ; $5af5: $65
    db $e4                                        ; $5af6: $e4
    rst $08                                       ; $5af7: $cf
    dec b                                         ; $5af8: $05
    ld b, c                                       ; $5af9: $41
    sbc $8f                                       ; $5afa: $de $8f
    ld d, [hl]                                    ; $5afc: $56
    ei                                            ; $5afd: $fb
    sub a                                         ; $5afe: $97
    ld h, d                                       ; $5aff: $62
    cp c                                          ; $5b00: $b9
    ld e, a                                       ; $5b01: $5f
    rla                                           ; $5b02: $17
    rlca                                          ; $5b03: $07
    ld h, h                                       ; $5b04: $64
    jp c, $eea2                                   ; $5b05: $da $a2 $ee

    db $f4                                        ; $5b08: $f4
    ld l, d                                       ; $5b09: $6a
    rst $38                                       ; $5b0a: $ff
    ld d, d                                       ; $5b0b: $52
    call z, Call_064_4114                         ; $5b0c: $cc $14 $41
    rst $20                                       ; $5b0f: $e7
    db $fd                                        ; $5b10: $fd
    ld [bc], a                                    ; $5b11: $02

Jump_064_5b12:
    rlca                                          ; $5b12: $07
    cp a                                          ; $5b13: $bf
    ld c, h                                       ; $5b14: $4c
    ld a, l                                       ; $5b15: $7d
    reti                                          ; $5b16: $d9


    rst $28                                       ; $5b17: $ef
    sbc b                                         ; $5b18: $98
    ld d, b                                       ; $5b19: $50
    ld d, $35                                     ; $5b1a: $16 $35
    rla                                           ; $5b1c: $17
    add l                                         ; $5b1d: $85
    call c, $a5f3                                 ; $5b1e: $dc $f3 $a5
    ld a, b                                       ; $5b21: $78
    or l                                          ; $5b22: $b5
    ld a, a                                       ; $5b23: $7f
    add hl, hl                                    ; $5b24: $29
    ld h, [hl]                                    ; $5b25: $66
    adc d                                         ; $5b26: $8a
    and b                                         ; $5b27: $a0
    ld [hl], e                                    ; $5b28: $73
    rst $30                                       ; $5b29: $f7
    ld a, l                                       ; $5b2a: $7d
    rst $28                                       ; $5b2b: $ef
    ld sp, $203e                                  ; $5b2c: $31 $3e $20
    sbc b                                         ; $5b2f: $98
    ld e, $7a                                     ; $5b30: $1e $7a
    sub l                                         ; $5b32: $95
    ccf                                           ; $5b33: $3f
    ld b, d                                       ; $5b34: $42
    ld e, c                                       ; $5b35: $59
    dec b                                         ; $5b36: $05
    ld b, h                                       ; $5b37: $44
    rst $20                                       ; $5b38: $e7
    ld h, b                                       ; $5b39: $60
    or l                                          ; $5b3a: $b5
    ld a, a                                       ; $5b3b: $7f
    add hl, hl                                    ; $5b3c: $29
    sub [hl]                                      ; $5b3d: $96
    cp d                                          ; $5b3e: $ba
    ld b, a                                       ; $5b3f: $47
    rla                                           ; $5b40: $17
    cp h                                          ; $5b41: $bc

Call_064_5b42:
    ld e, a                                       ; $5b42: $5f
    sub a                                         ; $5b43: $97
    db $eb                                        ; $5b44: $eb
    inc hl                                        ; $5b45: $23
    ld a, a                                       ; $5b46: $7f
    adc [hl]                                      ; $5b47: $8e
    xor $32                                       ; $5b48: $ee $32
    res 3, [hl]                                   ; $5b4a: $cb $9e
    ld e, a                                       ; $5b4c: $5f
    xor e                                         ; $5b4d: $ab
    ld d, a                                       ; $5b4e: $57
    ei                                            ; $5b4f: $fb
    sub a                                         ; $5b50: $97
    ld h, d                                       ; $5b51: $62
    and [hl]                                      ; $5b52: $a6
    ld [$ef3a], sp                                ; $5b53: $08 $3a $ef
    rla                                           ; $5b56: $17
    db $ed                                        ; $5b57: $ed
    adc $39                                       ; $5b58: $ce $39
    daa                                           ; $5b5a: $27
    and c                                         ; $5b5b: $a1
    sbc b                                         ; $5b5c: $98
    rst $10                                       ; $5b5d: $d7
    ld [$a9e1], sp                                ; $5b5e: $08 $e1 $a9
    db $fd                                        ; $5b61: $fd
    ld c, e                                       ; $5b62: $4b
    xor c                                         ; $5b63: $a9
    ld a, [bc]                                    ; $5b64: $0a
    inc b                                         ; $5b65: $04
    rst $28                                       ; $5b66: $ef
    rla                                           ; $5b67: $17
    db $ed                                        ; $5b68: $ed
    ld a, d                                       ; $5b69: $7a
    ld [hl], a                                    ; $5b6a: $77
    dec bc                                        ; $5b6b: $0b
    inc b                                         ; $5b6c: $04
    ld l, e                                       ; $5b6d: $6b
    inc c                                         ; $5b6e: $0c
    ld [c], a                                     ; $5b6f: $e2
    ld d, $94                                     ; $5b70: $16 $94
    ld [c], a                                     ; $5b72: $e2
    or e                                          ; $5b73: $b3
    add a                                         ; $5b74: $87
    ld a, [hl]                                    ; $5b75: $7e
    or $34                                        ; $5b76: $f6 $34
    ld b, a                                       ; $5b78: $47
    ld [hl], a                                    ; $5b79: $77
    add hl, de                                    ; $5b7a: $19
    jp hl                                         ; $5b7b: $e9


    sbc $9d                                       ; $5b7c: $de $9d
    ld e, [hl]                                    ; $5b7e: $5e
    ld c, h                                       ; $5b7f: $4c
    ld c, c                                       ; $5b80: $49
    cpl                                           ; $5b81: $2f
    ld a, [bc]                                    ; $5b82: $0a
    ld e, c                                       ; $5b83: $59
    and c                                         ; $5b84: $a1
    jr nc, @-$6a                                  ; $5b85: $30 $94

    dec a                                         ; $5b87: $3d
    add $fb                                       ; $5b88: $c6 $fb
    dec b                                         ; $5b8a: $05
    rla                                           ; $5b8b: $17
    ld a, a                                       ; $5b8c: $7f
    ld e, h                                       ; $5b8d: $5c
    inc c                                         ; $5b8e: $0c
    ld l, b                                       ; $5b8f: $68
    jp c, $38c8                                   ; $5b90: $da $c8 $38

    inc h                                         ; $5b93: $24
    ld a, [hl]                                    ; $5b94: $7e
    add hl, de                                    ; $5b95: $19
    sbc d                                         ; $5b96: $9a
    reti                                          ; $5b97: $d9


    ld l, e                                       ; $5b98: $6b
    ld [hl], h                                    ; $5b99: $74
    adc d                                         ; $5b9a: $8a
    xor d                                         ; $5b9b: $aa
    xor l                                         ; $5b9c: $ad
    call nc, $dd99                                ; $5b9d: $d4 $99 $dd
    jp nc, $ec7b                                  ; $5ba0: $d2 $7b $ec

    sbc h                                         ; $5ba3: $9c
    dec b                                         ; $5ba4: $05
    reti                                          ; $5ba5: $d9


    inc hl                                        ; $5ba6: $23
    sbc l                                         ; $5ba7: $9d
    ld a, [hl-]                                   ; $5ba8: $3a
    ld a, [$017e]                                 ; $5ba9: $fa $7e $01
    rst $20                                       ; $5bac: $e7
    ld b, e                                       ; $5bad: $43
    rst $28                                       ; $5bae: $ef
    and [hl]                                      ; $5baf: $a6
    jp nc, $bbc5                                  ; $5bb0: $d2 $c5 $bb

    rst $28                                       ; $5bb3: $ef
    ld a, e                                       ; $5bb4: $7b
    add sp, $67                                   ; $5bb5: $e8 $67
    db $e4                                        ; $5bb7: $e4
    rst $08                                       ; $5bb8: $cf
    pop de                                        ; $5bb9: $d1
    ld e, l                                       ; $5bba: $5d
    ld d, [hl]                                    ; $5bbb: $56
    call $a88b                                    ; $5bbc: $cd $8b $a8
    ld a, c                                       ; $5bbf: $79
    cp a                                          ; $5bc0: $bf
    rla                                           ; $5bc1: $17
    rlca                                          ; $5bc2: $07
    ld h, h                                       ; $5bc3: $64
    jp c, $eea2                                   ; $5bc4: $da $a2 $ee

    db $f4                                        ; $5bc7: $f4
    ld a, [de]                                    ; $5bc8: $1a
    ret nc                                        ; $5bc9: $d0

    cp e                                          ; $5bca: $bb
    xor c                                         ; $5bcb: $a9
    ld [hl], h                                    ; $5bcc: $74
    pop af                                        ; $5bcd: $f1
    db $fd                                        ; $5bce: $fd
    ld [bc], a                                    ; $5bcf: $02
    rlca                                          ; $5bd0: $07
    cp a                                          ; $5bd1: $bf
    ld c, h                                       ; $5bd2: $4c
    ld a, l                                       ; $5bd3: $7d
    reti                                          ; $5bd4: $d9


    rst $28                                       ; $5bd5: $ef
    sbc b                                         ; $5bd6: $98
    ld d, b                                       ; $5bd7: $50
    ld d, $35                                     ; $5bd8: $16 $35
    rla                                           ; $5bda: $17
    add l                                         ; $5bdb: $85
    call c, $a5f3                                 ; $5bdc: $dc $f3 $a5
    ld a, b                                       ; $5bdf: $78

jr_064_5be0:
    dec c                                         ; $5be0: $0d
    add sp, -$23                                  ; $5be1: $e8 $dd
    ld d, h                                       ; $5be3: $54
    cp d                                          ; $5be4: $ba
    ld hl, sp+$7e                                 ; $5be5: $f8 $7e
    ld bc, $eb97                                  ; $5be7: $01 $97 $eb
    inc hl                                        ; $5bea: $23
    ld a, a                                       ; $5beb: $7f
    adc [hl]                                      ; $5bec: $8e
    xor $32                                       ; $5bed: $ee $32
    res 3, [hl]                                   ; $5bef: $cb $9e
    ld e, a                                       ; $5bf1: $5f
    xor e                                         ; $5bf2: $ab
    rst $10                                       ; $5bf3: $d7
    add b                                         ; $5bf4: $80
    sbc $4d                                       ; $5bf5: $de $4d
    and l                                         ; $5bf7: $a5
    adc e                                         ; $5bf8: $8b
    rst $28                                       ; $5bf9: $ef
    rla                                           ; $5bfa: $17
    sub a                                         ; $5bfb: $97
    db $eb                                        ; $5bfc: $eb
    inc hl                                        ; $5bfd: $23
    ld a, a                                       ; $5bfe: $7f
    adc [hl]                                      ; $5bff: $8e
    xor $b2                                       ; $5c00: $ee $b2
    ld b, $90                                     ; $5c02: $06 $90
    ld [hl], h                                    ; $5c04: $74
    ld l, d                                       ; $5c05: $6a
    ld a, [bc]                                    ; $5c06: $0a
    ld c, b                                       ; $5c07: $48
    ld sp, $5219                                  ; $5c08: $31 $19 $52
    xor $17                                       ; $5c0b: $ee $17
    rla                                           ; $5c0d: $17
    rlca                                          ; $5c0e: $07
    ld h, h                                       ; $5c0f: $64
    jp c, $eea2                                   ; $5c10: $da $a2 $ee

    db $f4                                        ; $5c13: $f4
    ld a, [de]                                    ; $5c14: $1a
    ld b, b                                       ; $5c15: $40
    jp nc, $29a9                                  ; $5c16: $d2 $a9 $29

    jr nz, jr_064_5be0                            ; $5c19: $20 $c5

jr_064_5c1b:
    ld h, h                                       ; $5c1b: $64
    ld c, b                                       ; $5c1c: $48
    cp c                                          ; $5c1d: $b9
    ld e, a                                       ; $5c1e: $5f
    rlca                                          ; $5c1f: $07
    cp a                                          ; $5c20: $bf
    ld c, h                                       ; $5c21: $4c
    ld a, l                                       ; $5c22: $7d
    reti                                          ; $5c23: $d9


    rst $28                                       ; $5c24: $ef
    sbc b                                         ; $5c25: $98
    ld d, b                                       ; $5c26: $50
    ld d, $35                                     ; $5c27: $16 $35
    rla                                           ; $5c29: $17
    add l                                         ; $5c2a: $85
    call c, $a5f3                                 ; $5c2b: $dc $f3 $a5
    ld a, b                                       ; $5c2e: $78
    dec c                                         ; $5c2f: $0d
    jr nz, jr_064_5c1b                            ; $5c30: $20 $e9

    call nc, $9014                                ; $5c32: $d4 $14 $90
    ld h, d                                       ; $5c35: $62
    ld [hl-], a                                   ; $5c36: $32
    and h                                         ; $5c37: $a4
    call c, $972f                                 ; $5c38: $dc $2f $97
    db $eb                                        ; $5c3b: $eb
    inc hl                                        ; $5c3c: $23
    ld a, a                                       ; $5c3d: $7f
    adc [hl]                                      ; $5c3e: $8e
    xor $32                                       ; $5c3f: $ee $32
    res 3, [hl]                                   ; $5c41: $cb $9e
    ld e, a                                       ; $5c43: $5f
    xor e                                         ; $5c44: $ab
    rst $10                                       ; $5c45: $d7
    nop                                           ; $5c46: $00
    sub d                                         ; $5c47: $92
    ld c, [hl]                                    ; $5c48: $4e
    ld c, l                                       ; $5c49: $4d
    ld bc, $2629                                  ; $5c4a: $01 $29 $26
    ld b, e                                       ; $5c4d: $43
    jp z, Jump_000_02fd                           ; $5c4e: $ca $fd $02

    rst $20                                       ; $5c51: $e7
    ld e, e                                       ; $5c52: $5b
    ld c, e                                       ; $5c53: $4b
    ld hl, sp+$59                                 ; $5c54: $f8 $59
    reti                                          ; $5c56: $d9


    or d                                          ; $5c57: $b2
    ei                                            ; $5c58: $fb
    cp [hl]                                       ; $5c59: $be
    ld [hl], a                                    ; $5c5a: $77
    ld c, b                                       ; $5c5b: $48
    ld a, [hl]                                    ; $5c5c: $7e
    res 5, e                                      ; $5c5d: $cb $ab
    cp a                                          ; $5c5f: $bf
    and b                                         ; $5c60: $a0
    rst $30                                       ; $5c61: $f7
    ld a, c                                       ; $5c62: $79

Call_064_5c63:
    ld l, b                                       ; $5c63: $68
    ld e, [hl]                                    ; $5c64: $5e
    inc hl                                        ; $5c65: $23
    push af                                       ; $5c66: $f5
    ld [c], a                                     ; $5c67: $e2
    ld a, [hl-]                                   ; $5c68: $3a
    add [hl]                                      ; $5c69: $86
    cp [hl]                                       ; $5c6a: $be
    daa                                           ; $5c6b: $27
    ld h, b                                       ; $5c6c: $60
    add c                                         ; $5c6d: $81
    adc b                                         ; $5c6e: $88
    db $dd                                        ; $5c6f: $dd
    ld b, c                                       ; $5c70: $41
    ld d, l                                       ; $5c71: $55
    ld c, b                                       ; $5c72: $48
    rst $20                                       ; $5c73: $e7
    db $fd                                        ; $5c74: $fd
    ld [bc], a                                    ; $5c75: $02
    rla                                           ; $5c76: $17
    rlca                                          ; $5c77: $07
    ld h, h                                       ; $5c78: $64
    jp c, $eea2                                   ; $5c79: $da $a2 $ee

    db $f4                                        ; $5c7c: $f4
    ld a, [de]                                    ; $5c7d: $1a
    sub $12                                       ; $5c7e: $d6 $12
    ld a, [hl]                                    ; $5c80: $7e
    ld d, [hl]                                    ; $5c81: $56
    or [hl]                                       ; $5c82: $b6
    call c, Call_000_072f                         ; $5c83: $dc $2f $07
    cp a                                          ; $5c86: $bf
    ld c, h                                       ; $5c87: $4c
    ld a, l                                       ; $5c88: $7d
    reti                                          ; $5c89: $d9


    rst $28                                       ; $5c8a: $ef
    sbc b                                         ; $5c8b: $98
    ld d, b                                       ; $5c8c: $50
    ld d, $35                                     ; $5c8d: $16 $35
    rla                                           ; $5c8f: $17
    add l                                         ; $5c90: $85
    call c, $a5f3                                 ; $5c91: $dc $f3 $a5
    ld a, b                                       ; $5c94: $78
    dec c                                         ; $5c95: $0d
    ld l, e                                       ; $5c96: $6b
    add hl, bc                                    ; $5c97: $09
    ccf                                           ; $5c98: $3f
    dec hl                                        ; $5c99: $2b
    ld e, e                                       ; $5c9a: $5b
    xor $17                                       ; $5c9b: $ee $17
    sub a                                         ; $5c9d: $97
    db $eb                                        ; $5c9e: $eb
    inc hl                                        ; $5c9f: $23
    ld a, a                                       ; $5ca0: $7f
    adc [hl]                                      ; $5ca1: $8e
    xor $32                                       ; $5ca2: $ee $32
    res 3, [hl]                                   ; $5ca4: $cb $9e
    ld e, a                                       ; $5ca6: $5f
    xor e                                         ; $5ca7: $ab
    rst $10                                       ; $5ca8: $d7
    or b                                          ; $5ca9: $b0
    sub [hl]                                      ; $5caa: $96
    ldh a, [$b3]                                  ; $5cab: $f0 $b3
    or d                                          ; $5cad: $b2
    push hl                                       ; $5cae: $e5
    ld a, [hl]                                    ; $5caf: $7e
    ld bc, $a887                                  ; $5cb0: $01 $87 $a8
    dec a                                         ; $5cb3: $3d
    or [hl]                                       ; $5cb4: $b6
    sub b                                         ; $5cb5: $90
    ld [hl], h                                    ; $5cb6: $74
    ld l, d                                       ; $5cb7: $6a
    ld a, [bc]                                    ; $5cb8: $0a
    ld c, b                                       ; $5cb9: $48
    ld sp, $5219                                  ; $5cba: $31 $19 $52
    or h                                          ; $5cbd: $b4
    rst $28                                       ; $5cbe: $ef
    add b                                         ; $5cbf: $80
    res 3, b                                      ; $5cc0: $cb $98
    sbc d                                         ; $5cc2: $9a
    adc e                                         ; $5cc3: $8b
    add hl, hl                                    ; $5cc4: $29
    adc b                                         ; $5cc5: $88
    ld e, [hl]                                    ; $5cc6: $5e
    xor e                                         ; $5cc7: $ab
    cp c                                          ; $5cc8: $b9
    rst $08                                       ; $5cc9: $cf
    ld b, e                                       ; $5cca: $43
    di                                            ; $5ccb: $f3
    sbc h                                         ; $5ccc: $9c
    ld d, e                                       ; $5ccd: $53
    and c                                         ; $5cce: $a1
    ld [hl], d                                    ; $5ccf: $72
    db $e3                                        ; $5cd0: $e3
    daa                                           ; $5cd1: $27
    ld l, e                                       ; $5cd2: $6b
    ld a, a                                       ; $5cd3: $7f
    ld bc, $0717                                  ; $5cd4: $01 $17 $07
    ld h, h                                       ; $5cd7: $64
    jp c, $eea2                                   ; $5cd8: $da $a2 $ee

    db $f4                                        ; $5cdb: $f4
    ld a, [hl+]                                   ; $5cdc: $2a
    or l                                          ; $5cdd: $b5
    rst $00                                       ; $5cde: $c7
    ld d, $92                                     ; $5cdf: $16 $92
    ld c, [hl]                                    ; $5ce1: $4e
    ld c, l                                       ; $5ce2: $4d
    ld bc, $2629                                  ; $5ce3: $01 $29 $26
    ld b, e                                       ; $5ce6: $43
    jp z, Jump_000_02fd                           ; $5ce7: $ca $fd $02

    rlca                                          ; $5cea: $07
    cp a                                          ; $5ceb: $bf

Jump_064_5cec:
    ld c, h                                       ; $5cec: $4c
    ld a, l                                       ; $5ced: $7d
    reti                                          ; $5cee: $d9


    rst $28                                       ; $5cef: $ef
    sbc b                                         ; $5cf0: $98
    ld d, b                                       ; $5cf1: $50
    ld d, $35                                     ; $5cf2: $16 $35
    rla                                           ; $5cf4: $17
    add l                                         ; $5cf5: $85
    call c, $a5f3                                 ; $5cf6: $dc $f3 $a5
    ld a, b                                       ; $5cf9: $78
    sub l                                         ; $5cfa: $95
    jp c, $0b63                                   ; $5cfb: $da $63 $0b

    ld c, c                                       ; $5cfe: $49
    and a                                         ; $5cff: $a7
    and [hl]                                      ; $5d00: $a6
    add b                                         ; $5d01: $80
    inc d                                         ; $5d02: $14
    sub e                                         ; $5d03: $93
    ld hl, $7ee5                                  ; $5d04: $21 $e5 $7e
    ld bc, $eb97                                  ; $5d07: $01 $97 $eb
    inc hl                                        ; $5d0a: $23
    ld a, a                                       ; $5d0b: $7f
    adc [hl]                                      ; $5d0c: $8e
    xor $32                                       ; $5d0d: $ee $32
    res 3, [hl]                                   ; $5d0f: $cb $9e
    ld e, a                                       ; $5d11: $5f
    xor e                                         ; $5d12: $ab
    ld d, a                                       ; $5d13: $57
    xor c                                         ; $5d14: $a9
    dec a                                         ; $5d15: $3d
    or [hl]                                       ; $5d16: $b6
    sub b                                         ; $5d17: $90
    ld [hl], h                                    ; $5d18: $74
    ld l, d                                       ; $5d19: $6a
    ld a, [bc]                                    ; $5d1a: $0a
    ld c, b                                       ; $5d1b: $48
    ld sp, $5219                                  ; $5d1c: $31 $19 $52
    xor $17                                       ; $5d1f: $ee $17
    add a                                         ; $5d21: $87
    sub h                                         ; $5d22: $94
    ld b, [hl]                                    ; $5d23: $46
    ld [hl], b                                    ; $5d24: $70
    ld [$9f65], sp                                ; $5d25: $08 $65 $9f
    rla                                           ; $5d28: $17
    add c                                         ; $5d29: $81
    and b                                         ; $5d2a: $a0
    add a                                         ; $5d2b: $87
    ret nz                                        ; $5d2c: $c0

    ld l, e                                       ; $5d2d: $6b
    add h                                         ; $5d2e: $84
    ld b, h                                       ; $5d2f: $44
    jp c, Jump_064_7fda                           ; $5d30: $da $da $7f

    and [hl]                                      ; $5d33: $a6
    and $7e                                       ; $5d34: $e6 $7e
    ld bc, $fa6d                                  ; $5d36: $01 $6d $fa
    sbc h                                         ; $5d39: $9c
    ld l, e                                       ; $5d3a: $6b
    jr @-$2b                                      ; $5d3b: $18 $d3

    or e                                          ; $5d3d: $b3
    ldh [$50], a                                  ; $5d3e: $e0 $50
    ld e, a                                       ; $5d40: $5f
    ld [hl], l                                    ; $5d41: $75
    ld c, [hl]                                    ; $5d42: $4e
    rst $00                                       ; $5d43: $c7
    ld sp, $7df4                                  ; $5d44: $31 $f4 $7d
    ld e, [hl]                                    ; $5d47: $5e
    ld c, h                                       ; $5d48: $4c
    ld c, c                                       ; $5d49: $49
    db $d3                                        ; $5d4a: $d3
    halt                                          ; $5d4b: $76
    ld h, l                                       ; $5d4c: $65
    ld h, b                                       ; $5d4d: $60
    halt                                          ; $5d4e: $76
    sbc $bb                                       ; $5d4f: $de $bb
    jr z, @-$1a                                   ; $5d51: $28 $e4

    ld a, $2f                                     ; $5d53: $3e $2f
    add [hl]                                      ; $5d55: $86
    ld [$1e7d], a                                 ; $5d56: $ea $7d $1e
    db $dd                                        ; $5d59: $dd
    ld h, l                                       ; $5d5a: $65
    and b                                         ; $5d5b: $a0
    sub h                                         ; $5d5c: $94
    rst $10                                       ; $5d5d: $d7
    and b                                         ; $5d5e: $a0
    and h                                         ; $5d5f: $a4
    ld [hl], e                                    ; $5d60: $73
    ld a, [c]                                     ; $5d61: $f2
    bit 4, d                                      ; $5d62: $cb $62
    add sp, -$5d                                  ; $5d64: $e8 $a3
    cp e                                          ; $5d66: $bb
    xor h                                         ; $5d67: $ac
    ld b, b                                       ; $5d68: $40
    db $ec                                        ; $5d69: $ec
    ld hl, $5994                                  ; $5d6a: $21 $94 $59
    and [hl]                                      ; $5d6d: $a6
    ld b, d                                       ; $5d6e: $42
    or d                                          ; $5d6f: $b2
    ld a, [bc]                                    ; $5d70: $0a
    ld c, a                                       ; $5d71: $4f

jr_064_5d72:
    inc bc                                        ; $5d72: $03
    db $e4                                        ; $5d73: $e4
    inc sp                                        ; $5d74: $33
    ret z                                         ; $5d75: $c8

    jr jr_064_5d72                                ; $5d76: $18 $fa

    db $10                                        ; $5d78: $10
    ld h, h                                       ; $5d79: $64
    rla                                           ; $5d7a: $17
    add l                                         ; $5d7b: $85
    ld c, $61                                     ; $5d7c: $0e $61
    rst $10                                       ; $5d7e: $d7
    inc h                                         ; $5d7f: $24
    or h                                          ; $5d80: $b4
    ld a, [hl-]                                   ; $5d81: $3a
    db $10                                        ; $5d82: $10
    push de                                       ; $5d83: $d5
    db $eb                                        ; $5d84: $eb
    cp l                                          ; $5d85: $bd
    di                                            ; $5d86: $f3
    ld d, e                                       ; $5d87: $53
    cpl                                           ; $5d88: $2f
    ld b, e                                       ; $5d89: $43
    dec bc                                        ; $5d8a: $0b
    ld l, l                                       ; $5d8b: $6d
    ld h, h                                       ; $5d8c: $64
    inc c                                         ; $5d8d: $0c
    ld [hl], l                                    ; $5d8e: $75
    xor b                                         ; $5d8f: $a8
    ld c, a                                       ; $5d90: $4f
    add l                                         ; $5d91: $85
    rst $20                                       ; $5d92: $e7
    ld [hl], c                                    ; $5d93: $71
    ld c, $56                                     ; $5d94: $0e $56
    add hl, sp                                    ; $5d96: $39
    db $e4                                        ; $5d97: $e4
    and d                                         ; $5d98: $a2
    sbc a                                         ; $5d99: $9f
    cp [hl]                                       ; $5d9a: $be

jr_064_5d9b:
    ld e, a                                       ; $5d9b: $5f
    rlca                                          ; $5d9c: $07
    ld e, h                                       ; $5d9d: $5c
    add $19                                       ; $5d9e: $c6 $19
    adc h                                         ; $5da0: $8c
    sbc $e7                                       ; $5da1: $de $e7
    and c                                         ; $5da3: $a1
    cp [hl]                                       ; $5da4: $be
    ld hl, sp-$19                                 ; $5da5: $f8 $e7
    ld a, [de]                                    ; $5da7: $1a
    add $f4                                       ; $5da8: $c6 $f4
    jr @-$04                                      ; $5daa: $18 $fa

    ld a, [de]                                    ; $5dac: $1a
    xor [hl]                                      ; $5dad: $ae
    ld sp, $8b25                                  ; $5dae: $31 $25 $8b
    ld a, e                                       ; $5db1: $7b
    ld [hl], l                                    ; $5db2: $75
    jp nc, Jump_064_6576                          ; $5db3: $d2 $76 $65

    ld h, b                                       ; $5db6: $60
    halt                                          ; $5db7: $76
    sbc $6b                                       ; $5db8: $de $6b
    inc bc                                        ; $5dba: $03
    ld e, c                                       ; $5dbb: $59
    adc l                                         ; $5dbc: $8d
    ld a, a                                       ; $5dbd: $7f
    ld hl, $738d                                  ; $5dbe: $21 $8d $73
    xor [hl]                                      ; $5dc1: $ae
    ld [hl], $97                                  ; $5dc2: $36 $97
    call nc, $a0b4                                ; $5dc4: $d4 $b4 $a0
    and a                                         ; $5dc7: $a7
    ld de, $5315                                  ; $5dc8: $11 $15 $53
    ld [de], a                                    ; $5dcb: $12
    and c                                         ; $5dcc: $a1
    call c, $143b                                 ; $5dcd: $dc $3b $14
    sbc [hl]                                      ; $5dd0: $9e
    ld [hl], c                                    ; $5dd1: $71
    ld d, d                                       ; $5dd2: $52
    dec hl                                        ; $5dd3: $2b
    cpl                                           ; $5dd4: $2f
    ld l, d                                       ; $5dd5: $6a
    and $50                                       ; $5dd6: $e6 $50
    sbc a                                         ; $5dd8: $9f
    ld h, l                                       ; $5dd9: $65
    ld a, [hl+]                                   ; $5dda: $2a
    inc h                                         ; $5ddb: $24
    xor e                                         ; $5ddc: $ab
    ldh a, [$34]                                  ; $5ddd: $f0 $34
    ld b, b                                       ; $5ddf: $40
    ld a, $43                                     ; $5de0: $3e $43

Call_064_5de2:
    sub b                                         ; $5de2: $90
    ld sp, $21f4                                  ; $5de3: $31 $f4 $21

jr_064_5de6:
    ret z                                         ; $5de6: $c8

    ld l, $0a                                     ; $5de7: $2e $0a
    dec e                                         ; $5de9: $1d
    jp nz, Jump_064_49ae                          ; $5dea: $c2 $ae $49

    ld l, b                                       ; $5ded: $68
    ld [hl], l                                    ; $5dee: $75

jr_064_5def:
    jr nz, jr_064_5d9b                            ; $5def: $20 $aa

    rst $10                                       ; $5df1: $d7
    ld a, e                                       ; $5df2: $7b
    rst $20                                       ; $5df3: $e7
    and a                                         ; $5df4: $a7
    ld e, [hl]                                    ; $5df5: $5e
    add [hl]                                      ; $5df6: $86
    ld d, $da                                     ; $5df7: $16 $da
    ret z                                         ; $5df9: $c8

    jr jr_064_5de6                                ; $5dfa: $18 $ea

    ld d, b                                       ; $5dfc: $50
    sbc a                                         ; $5dfd: $9f
    ld a, [bc]                                    ; $5dfe: $0a
    rst $08                                       ; $5dff: $cf
    db $e3                                        ; $5e00: $e3
    inc e                                         ; $5e01: $1c
    xor h                                         ; $5e02: $ac
    ld [hl], d                                    ; $5e03: $72
    ret z                                         ; $5e04: $c8

    ld b, l                                       ; $5e05: $45
    ccf                                           ; $5e06: $3f
    ld a, l                                       ; $5e07: $7d
    cp a                                          ; $5e08: $bf
    db $ed                                        ; $5e09: $ed
    adc $39                                       ; $5e0a: $ce $39
    add a                                         ; $5e0c: $87
    jr nz, @+$15                                  ; $5e0d: $20 $13

    adc l                                         ; $5e0f: $8d
    and a                                         ; $5e10: $a7
    ld b, d                                       ; $5e11: $42
    or d                                          ; $5e12: $b2
    ld a, [bc]                                    ; $5e13: $0a
    ld c, a                                       ; $5e14: $4f
    inc bc                                        ; $5e15: $03
    db $e4                                        ; $5e16: $e4
    inc sp                                        ; $5e17: $33
    inc b                                         ; $5e18: $04
    and c                                         ; $5e19: $a1
    xor l                                         ; $5e1a: $ad
    db $fd                                        ; $5e1b: $fd
    ld h, a                                       ; $5e1c: $67
    ld l, d                                       ; $5e1d: $6a
    xor $17                                       ; $5e1e: $ee $17
    db $ed                                        ; $5e20: $ed
    adc $39                                       ; $5e21: $ce $39
    ld h, a                                       ; $5e23: $67
    sbc c                                         ; $5e24: $99
    ld l, b                                       ; $5e25: $68
    and [hl]                                      ; $5e26: $a6
    ld b, d                                       ; $5e27: $42
    or d                                          ; $5e28: $b2
    ld a, [bc]                                    ; $5e29: $0a
    ld c, a                                       ; $5e2a: $4f
    inc bc                                        ; $5e2b: $03
    db $e4                                        ; $5e2c: $e4
    inc sp                                        ; $5e2d: $33
    inc b                                         ; $5e2e: $04
    and c                                         ; $5e2f: $a1
    dec l                                         ; $5e30: $2d
    ld c, d                                       ; $5e31: $4a
    xor b                                         ; $5e32: $a8
    ld l, d                                       ; $5e33: $6a
    db $dd                                        ; $5e34: $dd
    or c                                          ; $5e35: $b1
    db $d3                                        ; $5e36: $d3
    cp h                                          ; $5e37: $bc
    rst $00                                       ; $5e38: $c7
    jr c, jr_064_5def                             ; $5e39: $38 $b4

    xor h                                         ; $5e3b: $ac
    ld [bc], a                                    ; $5e3c: $02
    ld d, [hl]                                    ; $5e3d: $56
    or $f4                                        ; $5e3e: $f6 $f4
    jp nc, $bf7d                                  ; $5e40: $d2 $7d $bf

    add a                                         ; $5e43: $87
    ld e, d                                       ; $5e44: $5a
    dec e                                         ; $5e45: $1d
    add h                                         ; $5e46: $84
    sbc l                                         ; $5e47: $9d
    and d                                         ; $5e48: $a2
    sbc c                                         ; $5e49: $99
    ld a, [bc]                                    ; $5e4a: $0a
    ret                                           ; $5e4b: $c9


    ld a, [hl+]                                   ; $5e4c: $2a
    inc a                                         ; $5e4d: $3c
    dec c                                         ; $5e4e: $0d
    sub b                                         ; $5e4f: $90
    rst $08                                       ; $5e50: $cf
    db $10                                        ; $5e51: $10
    add h                                         ; $5e52: $84
    or [hl]                                       ; $5e53: $b6
    or $9f                                        ; $5e54: $f6 $9f
    xor c                                         ; $5e56: $a9
    cp c                                          ; $5e57: $b9
    ld [hl], a                                    ; $5e58: $77
    ret nz                                        ; $5e59: $c0

    ld h, l                                       ; $5e5a: $65
    ld h, h                                       ; $5e5b: $64
    or e                                          ; $5e5c: $b3
    pop hl                                        ; $5e5d: $e1
    call c, $a1e7                                 ; $5e5e: $dc $e7 $a1
    ld h, l                                       ; $5e61: $65
    adc $95                                       ; $5e62: $ce $95
    add b                                         ; $5e64: $80
    rst $30                                       ; $5e65: $f7
    dec bc                                        ; $5e66: $0b
    sub a                                         ; $5e67: $97
    sbc e                                         ; $5e68: $9b
    ld b, e                                       ; $5e69: $43

jr_064_5e6a:
    ld l, e                                       ; $5e6a: $6b
    jr nc, jr_064_5e73                            ; $5e6b: $30 $06

    db $f4                                        ; $5e6d: $f4

Call_064_5e6e:
    jr jr_064_5e6a                                ; $5e6e: $18 $fa

    ret nc                                        ; $5e70: $d0

    ld [hl-], a                                   ; $5e71: $32
    pop de                                        ; $5e72: $d1

jr_064_5e73:
    ld a, b                                       ; $5e73: $78
    ld a, [hl+]                                   ; $5e74: $2a
    inc h                                         ; $5e75: $24
    xor e                                         ; $5e76: $ab
    ldh a, [$34]                                  ; $5e77: $f0 $34
    ld b, b                                       ; $5e79: $40
    ld a, $43                                     ; $5e7a: $3e $43
    db $10                                        ; $5e7c: $10
    jp c, Jump_064_7fda                           ; $5e7d: $da $da $7f

    and [hl]                                      ; $5e80: $a6
    and $5e                                       ; $5e81: $e6 $5e
    ld a, e                                       ; $5e83: $7b
    or e                                          ; $5e84: $b3
    pop hl                                        ; $5e85: $e1
    call c, $a1e7                                 ; $5e86: $dc $e7 $a1
    ld a, c                                       ; $5e89: $79
    adc $59                                       ; $5e8a: $ce $59
    add [hl]                                      ; $5e8c: $86
    ld a, [$97d4]                                 ; $5e8d: $fa $d4 $97
    dec [hl]                                      ; $5e90: $35
    ld d, d                                       ; $5e91: $52
    cpl                                           ; $5e92: $2f
    cp [hl]                                       ; $5e93: $be
    ld e, a                                       ; $5e94: $5f
    db $ed                                        ; $5e95: $ed
    adc $39                                       ; $5e96: $ce $39
    add a                                         ; $5e98: $87
    jr nz, jr_064_5eae                            ; $5e99: $20 $13

    ld c, d                                       ; $5e9b: $4a
    ld h, l                                       ; $5e9c: $65
    ld c, a                                       ; $5e9d: $4f
    add l                                         ; $5e9e: $85
    ld h, h                                       ; $5e9f: $64
    dec d                                         ; $5ea0: $15
    sbc [hl]                                      ; $5ea1: $9e
    ld b, $c8                                     ; $5ea2: $06 $c8
    ld h, a                                       ; $5ea4: $67
    ld [$5b42], sp                                ; $5ea5: $08 $42 $5b
    ei                                            ; $5ea8: $fb
    rst $08                                       ; $5ea9: $cf
    call nc, $6bdc                                ; $5eaa: $d4 $dc $6b
    ld l, a                                       ; $5ead: $6f

jr_064_5eae:
    ld [hl], $9c                                  ; $5eae: $36 $9c
    inc bc                                        ; $5eb0: $03
    and l                                         ; $5eb1: $a5
    cp h                                          ; $5eb2: $bc
    rst $08                                       ; $5eb3: $cf
    ld b, e                                       ; $5eb4: $43
    ld a, l                                       ; $5eb5: $7d
    ld d, c                                       ; $5eb6: $51
    inc sp                                        ; $5eb7: $33
    daa                                           ; $5eb8: $27
    and c                                         ; $5eb9: $a1
    ld [hl], h                                    ; $5eba: $74
    rrca                                          ; $5ebb: $0f
    sbc e                                         ; $5ebc: $9b
    reti                                          ; $5ebd: $d9


    and c                                         ; $5ebe: $a1
    ld a, b                                       ; $5ebf: $78
    ld a, [hl+]                                   ; $5ec0: $2a
    inc h                                         ; $5ec1: $24
    rst $18                                       ; $5ec2: $df
    cpl                                           ; $5ec3: $2f
    rlca                                          ; $5ec4: $07
    ld e, h                                       ; $5ec5: $5c
    ld d, $03                                     ; $5ec6: $16 $03
    ld d, [hl]                                    ; $5ec8: $56
    or $3e                                        ; $5ec9: $f6 $3e
    rrca                                          ; $5ecb: $0f
    push af                                       ; $5ecc: $f5
    push bc                                       ; $5ecd: $c5
    ret nc                                        ; $5ece: $d0

    cp e                                          ; $5ecf: $bb
    add a                                         ; $5ed0: $87
    cp d                                          ; $5ed1: $ba
    ld d, d                                       ; $5ed2: $52
    ld e, [hl]                                    ; $5ed3: $5e
    ld l, b                                       ; $5ed4: $68
    call Call_000_3b11                            ; $5ed5: $cd $11 $3b
    ld h, a                                       ; $5ed8: $67
    sbc c                                         ; $5ed9: $99
    ld l, b                                       ; $5eda: $68
    and [hl]                                      ; $5edb: $a6
    ld b, d                                       ; $5edc: $42
    or d                                          ; $5edd: $b2
    ld a, [bc]                                    ; $5ede: $0a
    ld c, a                                       ; $5edf: $4f
    inc bc                                        ; $5ee0: $03
    db $e4                                        ; $5ee1: $e4

Call_064_5ee2:
    inc sp                                        ; $5ee2: $33
    inc b                                         ; $5ee3: $04
    and c                                         ; $5ee4: $a1
    xor l                                         ; $5ee5: $ad
    db $fd                                        ; $5ee6: $fd
    ld h, a                                       ; $5ee7: $67
    ld l, d                                       ; $5ee8: $6a
    xor $17                                       ; $5ee9: $ee $17
    rla                                           ; $5eeb: $17
    dec [hl]                                      ; $5eec: $35
    add a                                         ; $5eed: $87
    jr nz, jr_064_5f03                            ; $5eee: $20 $13

    adc l                                         ; $5ef0: $8d
    and a                                         ; $5ef1: $a7
    ld b, d                                       ; $5ef2: $42
    or d                                          ; $5ef3: $b2
    ld a, [bc]                                    ; $5ef4: $0a
    ld c, a                                       ; $5ef5: $4f
    inc bc                                        ; $5ef6: $03
    db $e4                                        ; $5ef7: $e4
    inc sp                                        ; $5ef8: $33
    inc b                                         ; $5ef9: $04
    pop de                                        ; $5efa: $d1
    cp [hl]                                       ; $5efb: $be
    add e                                         ; $5efc: $83
    ld e, a                                       ; $5efd: $5f
    ld d, $83                                     ; $5efe: $16 $83
    and b                                         ; $5f00: $a0
    ld [hl], e                                    ; $5f01: $73
    ld h, h                                       ; $5f02: $64

jr_064_5f03:
    db $ec                                        ; $5f03: $ec
    ld e, h                                       ; $5f04: $5c
    ld sp, hl                                     ; $5f05: $f9
    ld d, d                                       ; $5f06: $52
    or h                                          ; $5f07: $b4
    cp a                                          ; $5f08: $bf
    rla                                           ; $5f09: $17
    dec [hl]                                      ; $5f0a: $35
    add a                                         ; $5f0b: $87
    jr nz, jr_064_5f21                            ; $5f0c: $20 $13

    adc l                                         ; $5f0e: $8d
    and a                                         ; $5f0f: $a7
    ld b, d                                       ; $5f10: $42
    or d                                          ; $5f11: $b2
    ld a, [bc]                                    ; $5f12: $0a
    ld c, a                                       ; $5f13: $4f
    inc bc                                        ; $5f14: $03
    db $e4                                        ; $5f15: $e4
    inc sp                                        ; $5f16: $33
    inc b                                         ; $5f17: $04
    pop de                                        ; $5f18: $d1
    cp [hl]                                       ; $5f19: $be
    srl [hl]                                      ; $5f1a: $cb $3e
    ld c, $a1                                     ; $5f1c: $0e $a1
    inc c                                         ; $5f1e: $0c
    sub h                                         ; $5f1f: $94
    ld a, [c]                                     ; $5f20: $f2

jr_064_5f21:
    and d                                         ; $5f21: $a2
    sub b                                         ; $5f22: $90
    ld sp, $fa64                                  ; $5f23: $31 $64 $fa
    ld a, [hl]                                    ; $5f26: $7e
    ld bc, $5c07                                  ; $5f27: $01 $07 $5c
    ld b, [hl]                                    ; $5f2a: $46
    ld [hl], $1b                                  ; $5f2b: $36 $1b
    adc $7d                                       ; $5f2d: $ce $7d
    ld e, $82                                     ; $5f2f: $1e $82
    ld a, b                                       ; $5f31: $78
    ld a, [hl+]                                   ; $5f32: $2a
    inc h                                         ; $5f33: $24
    xor a                                         ; $5f34: $af
    push af                                       ; $5f35: $f5
    ld l, e                                       ; $5f36: $6b
    ld [hl], l                                    ; $5f37: $75
    xor [hl]                                      ; $5f38: $ae
    cp $e7                                        ; $5f39: $fe $e7
    or c                                          ; $5f3b: $b1
    db $ec                                        ; $5f3c: $ec
    ld sp, $2d0e                                  ; $5f3d: $31 $0e $2d
    ld [c], a                                     ; $5f40: $e2
    adc c                                         ; $5f41: $89
    add $53                                       ; $5f42: $c6 $53
    pop hl                                        ; $5f44: $e1
    ld l, c                                       ; $5f45: $69
    add b                                         ; $5f46: $80
    ld a, h                                       ; $5f47: $7c
    add [hl]                                      ; $5f48: $86
    jr nz, @-$4a                                  ; $5f49: $20 $b4

    or l                                          ; $5f4b: $b5
    rst $38                                       ; $5f4c: $ff
    ld c, h                                       ; $5f4d: $4c
    call Call_000_02fd                            ; $5f4e: $cd $fd $02
    db $ed                                        ; $5f51: $ed
    ld sp, $d1d4                                  ; $5f52: $31 $d4 $d1
    ld e, l                                       ; $5f55: $5d
    ld d, $ff                                     ; $5f56: $16 $ff
    sbc h                                         ; $5f58: $9c
    ld h, l                                       ; $5f59: $65
    or l                                          ; $5f5a: $b5
    dec b                                         ; $5f5b: $05
    cp l                                          ; $5f5c: $bd
    dec sp                                        ; $5f5d: $3b
    jp nc, $a74b                                  ; $5f5e: $d2 $4b $a7

    dec l                                         ; $5f61: $2d
    add [hl]                                      ; $5f62: $86
    sbc $3d                                       ; $5f63: $de $3d
    cp d                                          ; $5f65: $ba
    bit 4, d                                      ; $5f66: $cb $62
    ld a, [bc]                                    ; $5f68: $0a
    and d                                         ; $5f69: $a2
    rst $10                                       ; $5f6a: $d7
    ld l, d                                       ; $5f6b: $6a
    xor $f3                                       ; $5f6c: $ee $f3
    ret nc                                        ; $5f6e: $d0

    call z, Call_064_739e                         ; $5f6f: $cc $9e $73
    sub [hl]                                      ; $5f72: $96
    sub l                                         ; $5f73: $95
    add b                                         ; $5f74: $80
    ld d, e                                       ; $5f75: $53
    ld hl, $8559                                  ; $5f76: $21 $59 $85
    and a                                         ; $5f79: $a7
    ld bc, $19f2                                  ; $5f7a: $01 $f2 $19
    add d                                         ; $5f7d: $82
    ret nc                                        ; $5f7e: $d0

    sub $fe                                       ; $5f7f: $d6 $fe
    inc sp                                        ; $5f81: $33
    dec [hl]                                      ; $5f82: $35
    rst $30                                       ; $5f83: $f7
    dec bc                                        ; $5f84: $0b
    rst $10                                       ; $5f85: $d7
    pop bc                                        ; $5f86: $c1
    ld a, [bc]                                    ; $5f87: $0a
    call nz, Call_000_21ce                        ; $5f88: $c4 $ce $21
    sub h                                         ; $5f8b: $94
    dec [hl]                                      ; $5f8c: $35
    ld e, h                                       ; $5f8d: $5c
    sub l                                         ; $5f8e: $95
    ld [hl], c                                    ; $5f8f: $71
    jp nc, $a1cc                                  ; $5f90: $d2 $cc $a1

    ld [hl], e                                    ; $5f93: $73
    ld a, [hl+]                                   ; $5f94: $2a
    inc a                                         ; $5f95: $3c

jr_064_5f96:
    adc a                                         ; $5f96: $8f
    ld [hl], e                                    ; $5f97: $73
    sub [hl]                                      ; $5f98: $96
    adc c                                         ; $5f99: $89
    ld h, [hl]                                    ; $5f9a: $66
    ld a, [hl+]                                   ; $5f9b: $2a
    inc h                                         ; $5f9c: $24
    xor e                                         ; $5f9d: $ab
    ldh a, [$34]                                  ; $5f9e: $f0 $34
    ld b, b                                       ; $5fa0: $40
    ld a, $43                                     ; $5fa1: $3e $43
    sub b                                         ; $5fa3: $90
    ei                                            ; $5fa4: $fb
    dec b                                         ; $5fa5: $05
    ld l, l                                       ; $5fa6: $6d
    and $39                                       ; $5fa7: $e6 $39
    rst $30                                       ; $5fa9: $f7

jr_064_5faa:
    dec sp                                        ; $5faa: $3b
    db $d3                                        ; $5fab: $d3
    ld b, [hl]                                    ; $5fac: $46
    add $1f                                       ; $5fad: $c6 $1f
    ld b, a                                       ; $5faf: $47
    ld [hl], a                                    ; $5fb0: $77
    add hl, de                                    ; $5fb1: $19
    ld sp, hl                                     ; $5fb2: $f9
    ld [hl], e                                    ; $5fb3: $73
    jr nc, jr_064_5fe0                            ; $5fb4: $30 $2a

    db $dd                                        ; $5fb6: $dd
    adc l                                         ; $5fb7: $8d
    ld c, $4a                                     ; $5fb8: $0e $4a
    sbc c                                         ; $5fba: $99
    ld l, c                                       ; $5fbb: $69
    ld l, e                                       ; $5fbc: $6b
    rst $38                                       ; $5fbd: $ff
    sbc c                                         ; $5fbe: $99
    sbc d                                         ; $5fbf: $9a
    ei                                            ; $5fc0: $fb
    dec b                                         ; $5fc1: $05
    sub a                                         ; $5fc2: $97

Call_064_5fc3:
    jr z, jr_064_5faa                             ; $5fc3: $28 $e5

    ld b, l                                       ; $5fc5: $45
    db $dd                                        ; $5fc6: $dd
    jp hl                                         ; $5fc7: $e9


    xor c                                         ; $5fc8: $a9
    ldh a, [$34]                                  ; $5fc9: $f0 $34
    ld b, b                                       ; $5fcb: $40
    ld a, $43                                     ; $5fcc: $3e $43
    db $10                                        ; $5fce: $10
    rst $20                                       ; $5fcf: $e7
    ld a, [hl-]                                   ; $5fd0: $3a
    inc d                                         ; $5fd1: $14
    ld c, a                                       ; $5fd2: $4f
    ld [hl], h                                    ; $5fd3: $74
    jp c, Jump_064_7fda                           ; $5fd4: $da $da $7f

    and [hl]                                      ; $5fd7: $a6
    and $7e                                       ; $5fd8: $e6 $7e
    ld bc, $2657                                  ; $5fda: $01 $57 $26
    dec [hl]                                      ; $5fdd: $35
    ld e, $14                                     ; $5fde: $1e $14

jr_064_5fe0:
    res 5, d                                      ; $5fe0: $cb $aa
    push bc                                       ; $5fe2: $c5
    ld l, c                                       ; $5fe3: $69
    jp c, Jump_064_7fda                           ; $5fe4: $da $da $7f

    and [hl]                                      ; $5fe7: $a6
    and $5e                                       ; $5fe8: $e6 $5e
    sbc e                                         ; $5fea: $9b

Jump_064_5feb:
    ld [hl], e                                    ; $5feb: $73
    ld a, [hl+]                                   ; $5fec: $2a
    inc a                                         ; $5fed: $3c
    adc a                                         ; $5fee: $8f
    ld [hl], e                                    ; $5fef: $73
    and d                                         ; $5ff0: $a2
    pop af                                        ; $5ff1: $f1
    ld d, h                                       ; $5ff2: $54
    ld a, b                                       ; $5ff3: $78
    ld a, [de]                                    ; $5ff4: $1a
    jr nz, jr_064_5f96                            ; $5ff5: $20 $9f

    ld hl, $7388                                  ; $5ff7: $21 $88 $73
    and h                                         ; $5ffa: $a4
    cp e                                          ; $5ffb: $bb
    rst $00                                       ; $5ffc: $c7
    add b                                         ; $5ffd: $80
    sub [hl]                                      ; $5ffe: $96
    ei                                            ; $5fff: $fb
    dec b                                         ; $6000: $05
    db $ed                                        ; $6001: $ed
    rst $20                                       ; $6002: $e7
    ld e, l                                       ; $6003: $5d
    ld a, l                                       ; $6004: $7d
    dec [hl]                                      ; $6005: $35
    pop bc                                        ; $6006: $c1
    ld e, l                                       ; $6007: $5d
    ld a, c                                       ; $6008: $79
    push bc                                       ; $6009: $c5
    dec [hl]                                      ; $600a: $35
    rst $10                                       ; $600b: $d7
    ld e, h                                       ; $600c: $5c
    ld a, b                                       ; $600d: $78
    dec [hl]                                      ; $600e: $35
    ld l, l                                       ; $600f: $6d
    ld b, h                                       ; $6010: $44
    ret                                           ; $6011: $c9


    sbc a                                         ; $6012: $9f
    sbc a                                         ; $6013: $9f
    jr z, jr_064_6051                             ; $6014: $28 $3b

    dec hl                                        ; $6016: $2b
    ld l, l                                       ; $6017: $6d
    ld a, [c]                                     ; $6018: $f2
    rra                                           ; $6019: $1f
    rst $10                                       ; $601a: $d7
    ld a, l                                       ; $601b: $7d
    pop bc                                        ; $601c: $c1
    and l                                         ; $601d: $a5
    ei                                            ; $601e: $fb
    ld h, a                                       ; $601f: $67
    db $e3                                        ; $6020: $e3
    ld b, b                                       ; $6021: $40
    db $10                                        ; $6022: $10
    adc b                                         ; $6023: $88
    jp nz, Jump_064_4fdf                          ; $6024: $c2 $df $4f

    adc a                                         ; $6027: $8f
    di                                            ; $6028: $f3
    and e                                         ; $6029: $a3
    sbc a                                         ; $602a: $9f
    sbc a                                         ; $602b: $9f
    xor d                                         ; $602c: $aa
    ld l, $44                                     ; $602d: $2e $44
    ei                                            ; $602f: $fb
    add d                                         ; $6030: $82
    db $d3                                        ; $6031: $d3

jr_064_6032:
    cp d                                          ; $6032: $ba
    db $eb                                        ; $6033: $eb
    ld a, a                                       ; $6034: $7f
    adc d                                         ; $6035: $8a
    ld [hl], e                                    ; $6036: $73
    rst $20                                       ; $6037: $e7
    ld h, a                                       ; $6038: $67
    xor b                                         ; $6039: $a8
    rst $30                                       ; $603a: $f7
    adc b                                         ; $603b: $88
    inc e                                         ; $603c: $1c
    ld d, l                                       ; $603d: $55
    ld c, a                                       ; $603e: $4f
    jr c, jr_064_6032                             ; $603f: $38 $f1

    add sp, $17                                   ; $6041: $e8 $17
    ld l, l                                       ; $6043: $6d
    ld a, [$9fc8]                                 ; $6044: $fa $c8 $9f
    ld a, e                                       ; $6047: $7b
    ld [bc], a                                    ; $6048: $02
    ld a, [c]                                     ; $6049: $f2
    cpl                                           ; $604a: $2f
    and $21                                       ; $604b: $e6 $21
    ret z                                         ; $604d: $c8

    jr c, jr_064_6085                             ; $604e: $38 $35

    cp l                                          ; $6050: $bd

jr_064_6051:
    cp e                                          ; $6051: $bb
    ld a, [c]                                     ; $6052: $f2
    adc a                                         ; $6053: $8f
    ld l, c                                       ; $6054: $69
    ld b, e                                       ; $6055: $43
    di                                            ; $6056: $f3
    ld h, d                                       ; $6057: $62
    jr z, jr_064_6066                             ; $6058: $28 $0c

    and l                                         ; $605a: $a5
    or d                                          ; $605b: $b2
    and a                                         ; $605c: $a7
    ld h, e                                       ; $605d: $63
    ld h, l                                       ; $605e: $65
    ld c, l                                       ; $605f: $4d
    xor $f9                                       ; $6060: $ee $f9
    ld [hl-], a                                   ; $6062: $32
    ld a, [c]                                     ; $6063: $f2
    rst $20                                       ; $6064: $e7
    ld l, d                                       ; $6065: $6a

jr_064_6066:
    ld a, b                                       ; $6066: $78
    ld b, [hl]                                    ; $6067: $46
    ld e, d                                       ; $6068: $5a
    push de                                       ; $6069: $d5
    cp c                                          ; $606a: $b9
    ld [hl], a                                    ; $606b: $77
    rst $20                                       ; $606c: $e7
    jr c, jr_064_60b2                             ; $606d: $38 $43

    rst $00                                       ; $606f: $c7
    rst $20                                       ; $6070: $e7
    dec bc                                        ; $6071: $0b
    ld l, d                                       ; $6072: $6a
    ld e, a                                       ; $6073: $5f
    sbc e                                         ; $6074: $9b
    ld a, $f5                                     ; $6075: $3e $f5
    ld h, l                                       ; $6077: $65
    and d                                         ; $6078: $a2
    ld c, a                                       ; $6079: $4f
    db $fd                                        ; $607a: $fd
    jp z, Jump_064_5a1e                           ; $607b: $ca $1e $5a

    ld d, $51                                     ; $607e: $16 $51
    or e                                          ; $6080: $b3
    or d                                          ; $6081: $b2
    rst $30                                       ; $6082: $f7
    and e                                         ; $6083: $a3
    db $fd                                        ; $6084: $fd

jr_064_6085:
    sbc $3d                                       ; $6085: $de $3d
    db $f4                                        ; $6087: $f4
    ld a, [de]                                    ; $6088: $1a
    xor [hl]                                      ; $6089: $ae
    ld sp, $8b25                                  ; $608a: $31 $25 $8b
    ld a, e                                       ; $608d: $7b
    ld [hl], l                                    ; $608e: $75
    ld c, $f5                                     ; $608f: $0e $f5
    push bc                                       ; $6091: $c5
    ret nc                                        ; $6092: $d0

    rst $10                                       ; $6093: $d7
    add hl, hl                                    ; $6094: $29
    jp hl                                         ; $6095: $e9


    ei                                            ; $6096: $fb
    dec b                                         ; $6097: $05
    ld l, l                                       ; $6098: $6d
    ld a, [$b39c]                                 ; $6099: $fa $9c $b3
    and b                                         ; $609c: $a0
    dec sp                                        ; $609d: $3b
    sub h                                         ; $609e: $94
    pop bc                                        ; $609f: $c1
    db $10                                        ; $60a0: $10
    ld h, h                                       ; $60a1: $64
    pop de                                        ; $60a2: $d1
    ld a, a                                       ; $60a3: $7f
    and b                                         ; $60a4: $a0
    add e                                         ; $60a5: $83
    dec de                                        ; $60a6: $1b
    ld b, c                                       ; $60a7: $41
    ld d, l                                       ; $60a8: $55
    db $ed                                        ; $60a9: $ed
    ld l, e                                       ; $60aa: $6b
    inc sp                                        ; $60ab: $33
    rst $08                                       ; $60ac: $cf
    cp c                                          ; $60ad: $b9
    ld a, [de]                                    ; $60ae: $1a
    ld d, e                                       ; $60af: $53
    sub d                                         ; $60b0: $92
    rst $30                                       ; $60b1: $f7

jr_064_60b2:
    ld a, c                                       ; $60b2: $79
    sbc h                                         ; $60b3: $9c
    add c                                         ; $60b4: $81
    or [hl]                                       ; $60b5: $b6
    rst $08                                       ; $60b6: $cf
    ld b, e                                       ; $60b7: $43
    ld a, l                                       ; $60b8: $7d
    and b                                         ; $60b9: $a0
    sub h                                         ; $60ba: $94
    ld b, a                                       ; $60bb: $47
    cp $5c                                        ; $60bc: $fe $5c
    ld c, h                                       ; $60be: $4c
    ld c, c                                       ; $60bf: $49
    di                                            ; $60c0: $f3
    ld a, [de]                                    ; $60c1: $1a
    ld d, [hl]                                    ; $60c2: $56
    ld d, $e4                                     ; $60c3: $16 $e4
    dec a                                         ; $60c5: $3d
    add $a1                                       ; $60c6: $c6 $a1
    ld h, l                                       ; $60c8: $65
    ld de, $2735                                  ; $60c9: $11 $35 $27
    ld a, [$02fd]                                 ; $60cc: $fa $fd $02
    ld l, l                                       ; $60cf: $6d
    ld a, [$9fc8]                                 ; $60d0: $fa $c8 $9f
    inc de                                        ; $60d3: $13
    ld a, l                                       ; $60d4: $7d
    adc d                                         ; $60d5: $8a
    jp c, $fde0                                   ; $60d6: $da $e0 $fd

    sbc $3d                                       ; $60d9: $de $3d
    ld b, $29                                     ; $60db: $06 $29
    ld d, $af                                     ; $60dd: $16 $af
    push de                                       ; $60df: $d5
    ld e, h                                       ; $60e0: $5c
    add a                                         ; $60e1: $87
    jp z, $8596                                   ; $60e2: $ca $96 $85

    ret c                                         ; $60e5: $d8

    cp c                                          ; $60e6: $b9
    xor d                                         ; $60e7: $aa
    ld b, d                                       ; $60e8: $42
    ld [hl], a                                    ; $60e9: $77
    db $fd                                        ; $60ea: $fd
    push bc                                       ; $60eb: $c5
    xor c                                         ; $60ec: $a9
    ld a, l                                       ; $60ed: $7d
    sub a                                         ; $60ee: $97
    db $eb                                        ; $60ef: $eb
    ld d, e                                       ; $60f0: $53
    ld e, a                                       ; $60f1: $5f
    add [hl]                                      ; $60f2: $86
    ld a, [$17f8]                                 ; $60f3: $fa $f8 $17
    rst $28                                       ; $60f6: $ef
    ld b, a                                       ; $60f7: $47
    xor e                                         ; $60f8: $ab
    ld l, h                                       ; $60f9: $6c
    inc e                                         ; $60fa: $1c
    ld b, e                                       ; $60fb: $43
    ld e, a                                       ; $60fc: $5f
    ld a, e                                       ; $60fd: $7b
    jr z, @-$3a                                   ; $60fe: $28 $c4

    ld a, [hl]                                    ; $6100: $7e
    ld [hl], d                                    ; $6101: $72
    push de                                       ; $6102: $d5
    cp $02                                        ; $6103: $fe $02
    ld l, l                                       ; $6105: $6d
    ld a, [$9fc8]                                 ; $6106: $fa $c8 $9f
    ld l, e                                       ; $6109: $6b
    cp b                                          ; $610a: $b8
    sbc d                                         ; $610b: $9a
    sbc [hl]                                      ; $610c: $9e
    and $b5                                       ; $610d: $e6 $b5
    push hl                                       ; $610f: $e5
    daa                                           ; $6110: $27
    ld a, [de]                                    ; $6111: $1a
    ld l, b                                       ; $6112: $68
    ld b, e                                       ; $6113: $43
    res 3, [hl]                                   ; $6114: $cb $9e
    add b                                         ; $6116: $80
    dec c                                         ; $6117: $0d
    dec c                                         ; $6118: $0d
    cp d                                          ; $6119: $ba
    ld b, e                                       ; $611a: $43
    pop af                                        ; $611b: $f1
    xor d                                         ; $611c: $aa
    add h                                         ; $611d: $84
    ld b, $6d                                     ; $611e: $06 $6d
    adc a                                         ; $6120: $8f
    ld [hl], c                                    ; $6121: $71
    dec c                                         ; $6122: $0d
    rst $10                                       ; $6123: $d7
    sbc b                                         ; $6124: $98
    sub d                                         ; $6125: $92
    push bc                                       ; $6126: $c5

jr_064_6127:
    cp l                                          ; $6127: $bd
    ld a, [hl-]                                   ; $6128: $3a
    or l                                          ; $6129: $b5
    xor a                                         ; $612a: $af
    call $f23c                                    ; $612b: $cd $3c $f2
    rst $20                                       ; $612e: $e7
    ret z                                         ; $612f: $c8

    cpl                                           ; $6130: $2f
    ld c, e                                       ; $6131: $4b
    jr z, jr_064_6140                             ; $6132: $28 $0c

    ld h, l                                       ; $6134: $65
    dec h                                         ; $6135: $25
    jr nz, jr_064_6127                            ; $6136: $20 $ef

    ld b, a                                       ; $6138: $47
    sub e                                         ; $6139: $93
    ld h, [hl]                                    ; $613a: $66
    adc [hl]                                      ; $613b: $8e
    db $fc                                        ; $613c: $fc
    or d                                          ; $613d: $b2
    ldh a, [$f0]                                  ; $613e: $f0 $f0

jr_064_6140:
    rst $28                                       ; $6140: $ef
    adc $21                                       ; $6141: $ce $21
    adc b                                         ; $6143: $88
    daa                                           ; $6144: $27
    ld a, [de]                                    ; $6145: $1a
    cpl                                           ; $6146: $2f
    or [hl]                                       ; $6147: $b6
    adc b                                         ; $6148: $88
    ld [hl], e                                    ; $6149: $73
    xor l                                         ; $614a: $ad
    and $d0                                       ; $614b: $e6 $d0
    or d                                          ; $614d: $b2
    and a                                         ; $614e: $a7
    adc c                                         ; $614f: $89
    sub $fe                                       ; $6150: $d6 $fe

jr_064_6152:
    ld [bc], a                                    ; $6152: $02
    ld l, l                                       ; $6153: $6d
    and $39                                       ; $6154: $e6 $39
    rst $10                                       ; $6156: $d7
    dec [hl]                                      ; $6157: $35
    ld c, d                                       ; $6158: $4a
    add hl, de                                    ; $6159: $19
    ld e, l                                       ; $615a: $5d
    add a                                         ; $615b: $87
    ld d, b                                       ; $615c: $50
    or $79                                        ; $615d: $f6 $79
    ld a, [hl+]                                   ; $615f: $2a
    dec [hl]                                      ; $6160: $35
    ld e, b                                       ; $6161: $58
    cp l                                          ; $6162: $bd
    ld c, d                                       ; $6163: $4a
    or l                                          ; $6164: $b5
    inc l                                         ; $6165: $2c
    sub h                                         ; $6166: $94
    ld b, l                                       ; $6167: $45
    jr nz, jr_064_6152                            ; $6168: $20 $e8

    push bc                                       ; $616a: $c5
    and [hl]                                      ; $616b: $a6
    xor a                                         ; $616c: $af
    ld e, b                                       ; $616d: $58
    call nz, Call_064_54cf                        ; $616e: $c4 $cf $54
    ld l, d                                       ; $6171: $6a
    ld e, d                                       ; $6172: $5a
    ld l, h                                       ; $6173: $6c
    cp c                                          ; $6174: $b9
    ld [hl], a                                    ; $6175: $77
    ld b, l                                       ; $6176: $45
    sbc c                                         ; $6177: $99
    add sp, $73                                   ; $6178: $e8 $73
    ld c, $f5                                     ; $617a: $0e $f5
    sub c                                         ; $617c: $91
    adc $59                                       ; $617d: $ce $59
    ret nc                                        ; $617f: $d0

    dec e                                         ; $6180: $1d
    jp z, $fbee                                   ; $6181: $ca $ee $fb

    ld e, [hl]                                    ; $6184: $5e
    xor e                                         ; $6185: $ab
    cp c                                          ; $6186: $b9
    or $50                                        ; $6187: $f6 $50
    adc b                                         ; $6189: $88
    db $fd                                        ; $618a: $fd
    db $e4                                        ; $618b: $e4
    xor d                                         ; $618c: $aa
    db $fd                                        ; $618d: $fd
    dec b                                         ; $618e: $05
    ld l, l                                       ; $618f: $6d
    ld a, [$46aa]                                 ; $6190: $fa $aa $46
    ld e, h                                       ; $6193: $5c
    rst $30                                       ; $6194: $f7
    ld a, c                                       ; $6195: $79
    ld l, b                                       ; $6196: $68
    sbc [hl]                                      ; $6197: $9e
    ld [hl], e                                    ; $6198: $73
    sub [hl]                                      ; $6199: $96
    ld b, l                                       ; $619a: $45
    ld [hl], h                                    ; $619b: $74
    rst $20                                       ; $619c: $e7
    ld h, b                                       ; $619d: $60
    db $e4                                        ; $619e: $e4
    ld h, a                                       ; $619f: $67
    or [hl]                                       ; $61a0: $b6
    db $ec                                        ; $61a1: $ec
    di                                            ; $61a2: $f3
    ld a, [de]                                    ; $61a3: $1a
    dec e                                         ; $61a4: $1d
    ld h, d                                       ; $61a5: $62
    cpl                                           ; $61a6: $2f
    ld a, [bc]                                    ; $61a7: $0a
    adc c                                         ; $61a8: $89
    xor $3c                                       ; $61a9: $ee $3c
    add [hl]                                      ; $61ab: $86
    cp [hl]                                       ; $61ac: $be
    adc e                                         ; $61ad: $8b
    ld d, e                                       ; $61ae: $53
    inc de                                        ; $61af: $13
    ld b, l                                       ; $61b0: $45
    jr nz, jr_064_61cb                            ; $61b1: $20 $18

    ld d, d                                       ; $61b3: $52
    add l                                         ; $61b4: $85
    sbc $5d                                       ; $61b5: $de $5d
    ret nz                                        ; $61b7: $c0

    ld a, h                                       ; $61b8: $7c
    xor a                                         ; $61b9: $af
    ld c, l                                       ; $61ba: $4d
    rra                                           ; $61bb: $1f
    ld c, c                                       ; $61bc: $49
    ld c, l                                       ; $61bd: $4d
    rst $20                                       ; $61be: $e7
    ld d, d                                       ; $61bf: $52
    ld d, e                                       ; $61c0: $53
    ret c                                         ; $61c1: $d8

    cp c                                          ; $61c2: $b9
    ldh a, [$ec]                                  ; $61c3: $f0 $ec
    di                                            ; $61c5: $f3
    inc l                                         ; $61c6: $2c
    inc de                                        ; $61c7: $13
    call Call_064_4854                            ; $61c8: $cd $54 $48

jr_064_61cb:
    ld d, [hl]                                    ; $61cb: $56
    pop hl                                        ; $61cc: $e1
    ld l, c                                       ; $61cd: $69
    add b                                         ; $61ce: $80
    ld a, h                                       ; $61cf: $7c
    add [hl]                                      ; $61d0: $86
    jr nz, @+$55                                  ; $61d1: $20 $53

    ld e, a                                       ; $61d3: $5f
    ld d, $35                                     ; $61d4: $16 $35
    db $eb                                        ; $61d6: $eb
    ld h, b                                       ; $61d7: $60
    rst $10                                       ; $61d8: $d7
    ld h, h                                       ; $61d9: $64
    add sp, -$08                                  ; $61da: $e8 $f8
    ld a, h                                       ; $61dc: $7c
    pop bc                                        ; $61dd: $c1
    xor d                                         ; $61de: $aa
    ld b, d                                       ; $61df: $42
    ld [hl], d                                    ; $61e0: $72
    db $fd                                        ; $61e1: $fd
    ld c, a                                       ; $61e2: $4f
    ld [hl], a                                    ; $61e3: $77
    xor d                                         ; $61e4: $aa
    xor [hl]                                      ; $61e5: $ae
    scf                                           ; $61e6: $37
    ld a, [de]                                    ; $61e7: $1a

Call_064_61e8:
    sub [hl]                                      ; $61e8: $96
    ei                                            ; $61e9: $fb
    dec b                                         ; $61ea: $05
    ld l, l                                       ; $61eb: $6d
    ld a, [$9fc8]                                 ; $61ec: $fa $c8 $9f
    xor e                                         ; $61ef: $ab
    rst $38                                       ; $61f0: $ff
    jp hl                                         ; $61f1: $e9


    and $a1                                       ; $61f2: $e6 $a1

jr_064_61f4:
    rlca                                          ; $61f4: $07
    ld d, d                                       ; $61f5: $52
    jp nc, $9608                                  ; $61f6: $d2 $08 $96

    ld [$0d5c], a                                 ; $61f9: $ea $5c $0d
    rst $08                                       ; $61fc: $cf
    ld c, $c9                                     ; $61fd: $0e $c9
    ld l, a                                       ; $61ff: $6f
    ld a, c                                       ; $6200: $79
    ld d, c                                       ; $6201: $51
    ret z                                         ; $6202: $c8

    cp $a5                                        ; $6203: $fe $a5
    or b                                          ; $6205: $b0
    or l                                          ; $6206: $b5
    rst $28                                       ; $6207: $ef
    ld a, [c]                                     ; $6208: $f2
    ld d, b                                       ; $6209: $50
    inc l                                         ; $620a: $2c
    adc e                                         ; $620b: $8b
    ld b, d                                       ; $620c: $42
    ld [hl-], a                                   ; $620d: $32
    and l                                         ; $620e: $a5
    ld [hl], a                                    ; $620f: $77
    rst $20                                       ; $6210: $e7
    db $10                                        ; $6211: $10
    jp z, $cf3e                                   ; $6212: $ca $3e $cf

    ld [hl-], a                                   ; $6215: $32
    pop de                                        ; $6216: $d1
    ld c, h                                       ; $6217: $4c
    add l                                         ; $6218: $85
    ld h, h                                       ; $6219: $64
    dec d                                         ; $621a: $15
    sbc [hl]                                      ; $621b: $9e
    ld b, $c8                                     ; $621c: $06 $c8
    ld h, a                                       ; $621e: $67
    ld [$f532], sp                                ; $621f: $08 $32 $f5
    ld h, l                                       ; $6222: $65
    ld d, c                                       ; $6223: $51
    or e                                          ; $6224: $b3
    ld c, $76                                     ; $6225: $0e $76
    ld c, l                                       ; $6227: $4d
    add [hl]                                      ; $6228: $86
    adc [hl]                                      ; $6229: $8e
    rst $08                                       ; $622a: $cf
    rla                                           ; $622b: $17
    xor h                                         ; $622c: $ac
    ld a, [hl+]                                   ; $622d: $2a
    inc h                                         ; $622e: $24
    rst $10                                       ; $622f: $d7
    rst $38                                       ; $6230: $ff
    ld [hl], h                                    ; $6231: $74
    and a                                         ; $6232: $a7
    ld [$a37a], a                                 ; $6233: $ea $7a $a3
    ld h, c                                       ; $6236: $61
    cp c                                          ; $6237: $b9
    ld e, a                                       ; $6238: $5f
    ld l, l                                       ; $6239: $6d
    ld a, [$9fc8]                                 ; $623a: $fa $c8 $9f
    ld c, e                                       ; $623d: $4b
    inc hl                                        ; $623e: $23
    sbc d                                         ; $623f: $9a
    rst $10                                       ; $6240: $d7
    ld e, $0a                                     ; $6241: $1e $0a
    or c                                          ; $6243: $b1
    sbc a                                         ; $6244: $9f
    ld e, h                                       ; $6245: $5c
    rla                                           ; $6246: $17
    push hl                                       ; $6247: $e5
    ld e, a                                       ; $6248: $5f
    inc hl                                        ; $6249: $23
    cp a                                          ; $624a: $bf
    jr nz, jr_064_61f4                            ; $624b: $20 $a7

    ld e, [hl]                                    ; $624d: $5e
    cp e                                          ; $624e: $bb
    ld h, l                                       ; $624f: $65
    ld d, c                                       ; $6250: $51
    cp $59                                        ; $6251: $fe $59
    ld d, $43                                     ; $6253: $16 $43
    add sp, -$1a                                  ; $6255: $e8 $e6
    ld b, l                                       ; $6257: $45
    db $fd                                        ; $6258: $fd
    ccf                                           ; $6259: $3f
    adc a                                         ; $625a: $8f
    push de                                       ; $625b: $d5
    rla                                           ; $625c: $17
    db $10                                        ; $625d: $10
    db $ed                                        ; $625e: $ed
    cp e                                          ; $625f: $bb
    ld e, d                                       ; $6260: $5a
    ld d, e                                       ; $6261: $53
    ret c                                         ; $6262: $d8

    cp h                                          ; $6263: $bc
    ldh a, [$ec]                                  ; $6264: $f0 $ec
    di                                            ; $6266: $f3
    inc l                                         ; $6267: $2c
    inc de                                        ; $6268: $13
    call Call_064_4854                            ; $6269: $cd $54 $48
    ld d, [hl]                                    ; $626c: $56
    pop hl                                        ; $626d: $e1
    ld l, c                                       ; $626e: $69
    add b                                         ; $626f: $80
    ld a, h                                       ; $6270: $7c
    add [hl]                                      ; $6271: $86
    jr nz, jr_064_62c7                            ; $6272: $20 $53

    ld e, a                                       ; $6274: $5f
    ld d, $35                                     ; $6275: $16 $35
    db $eb                                        ; $6277: $eb
    ld h, b                                       ; $6278: $60
    sbc h                                         ; $6279: $9c
    and c                                         ; $627a: $a1
    ccf                                           ; $627b: $3f
    ld e, a                                       ; $627c: $5f
    or b                                          ; $627d: $b0
    xor d                                         ; $627e: $aa
    sub b                                         ; $627f: $90
    xor h                                         ; $6280: $ac
    cp d                                          ; $6281: $ba
    sbc $68                                       ; $6282: $de $68
    ld e, b                                       ; $6284: $58
    sub $48                                       ; $6285: $d6 $48
    and e                                         ; $6287: $a3
    ld [hl], e                                    ; $6288: $73
    dec d                                         ; $6289: $15
    jp z, Jump_064_786a                           ; $628a: $ca $6a $78

    sub $a9                                       ; $628d: $d6 $a9
    dec c                                         ; $628f: $0d
    ld b, e                                       ; $6290: $43
    rst $00                                       ; $6291: $c7
    ei                                            ; $6292: $fb
    dec b                                         ; $6293: $05
    ld l, l                                       ; $6294: $6d
    ld a, [$a95a]                                 ; $6295: $fa $5a $a9
    ld b, c                                       ; $6298: $41
    rst $20                                       ; $6299: $e7
    db $10                                        ; $629a: $10
    jp z, $e31e                                   ; $629b: $ca $1e $e3

    xor d                                         ; $629e: $aa
    jp hl                                         ; $629f: $e9


    reti                                          ; $62a0: $d9


    cp a                                          ; $62a1: $bf
    sbc [hl]                                      ; $62a2: $9e
    dec c                                         ; $62a3: $0d
    ld c, d                                       ; $62a4: $4a
    adc $11                                       ; $62a5: $ce $11
    dec sp                                        ; $62a7: $3b
    rst $30                                       ; $62a8: $f7
    ld a, c                                       ; $62a9: $79
    db $e4                                        ; $62aa: $e4
    adc a                                         ; $62ab: $8f
    cp l                                          ; $62ac: $bd
    ld c, b                                       ; $62ad: $48
    rst $28                                       ; $62ae: $ef
    jr jr_064_6302                                ; $62af: $18 $51

    sub e                                         ; $62b1: $93
    ld [hl], a                                    ; $62b2: $77
    ld a, [hl]                                    ; $62b3: $7e
    ldh [$2f], a                                  ; $62b4: $e0 $2f
    and b                                         ; $62b6: $a0
    jr jr_064_62d7                                ; $62b7: $18 $1e

    bit 0, d                                      ; $62b9: $cb $42
    ld e, c                                       ; $62bb: $59
    inc d                                         ; $62bc: $14
    ld [hl], d                                    ; $62bd: $72
    sbc a                                         ; $62be: $9f
    ld b, a                                       ; $62bf: $47
    cp $d8                                        ; $62c0: $fe $d8
    ei                                            ; $62c2: $fb
    cp l                                          ; $62c3: $bd
    ld a, e                                       ; $62c4: $7b
    xor $a0                                       ; $62c5: $ee $a0

jr_064_62c7:
    ld a, [hl+]                                   ; $62c7: $2a
    inc h                                         ; $62c8: $24
    ld c, b                                       ; $62c9: $48
    ld c, c                                       ; $62ca: $49

jr_064_62cb:
    inc hl                                        ; $62cb: $23
    ld e, b                                       ; $62cc: $58
    xor d                                         ; $62cd: $aa
    ld d, e                                       ; $62ce: $53
    xor h                                         ; $62cf: $ac
    ld a, l                                       ; $62d0: $7d
    ld d, a                                       ; $62d1: $57
    sub h                                         ; $62d2: $94
    push de                                       ; $62d3: $d5
    and $9c                                       ; $62d4: $e6 $9c
    ld b, e                                       ; $62d6: $43

jr_064_62d7:
    rst $20                                       ; $62d7: $e7
    inc l                                         ; $62d8: $2c
    inc de                                        ; $62d9: $13
    call Call_064_4854                            ; $62da: $cd $54 $48
    ld d, [hl]                                    ; $62dd: $56
    pop hl                                        ; $62de: $e1
    ld l, c                                       ; $62df: $69

jr_064_62e0:
    add b                                         ; $62e0: $80
    ld a, h                                       ; $62e1: $7c
    add [hl]                                      ; $62e2: $86

Call_064_62e3:
    jr nz, jr_064_62e0                            ; $62e3: $20 $fb

    cp h                                          ; $62e5: $bc
    xor b                                         ; $62e6: $a8
    add hl, sp                                    ; $62e7: $39
    jr jr_064_6351                                ; $62e8: $18 $67

    add sp, -$08                                  ; $62ea: $e8 $f8
    ld a, h                                       ; $62ec: $7c
    pop bc                                        ; $62ed: $c1
    xor d                                         ; $62ee: $aa
    ld b, d                                       ; $62ef: $42
    ld [hl], d                                    ; $62f0: $72
    db $fd                                        ; $62f1: $fd
    ld c, a                                       ; $62f2: $4f
    ld [hl], a                                    ; $62f3: $77
    xor d                                         ; $62f4: $aa
    xor [hl]                                      ; $62f5: $ae
    scf                                           ; $62f6: $37
    ld a, [de]                                    ; $62f7: $1a
    sub [hl]                                      ; $62f8: $96
    ei                                            ; $62f9: $fb
    dec b                                         ; $62fa: $05
    ld l, l                                       ; $62fb: $6d
    ld a, [$9fc8]                                 ; $62fc: $fa $c8 $9f
    xor e                                         ; $62ff: $ab
    sbc a                                         ; $6300: $9f
    ld h, a                                       ; $6301: $67

jr_064_6302:
    ld e, c                                       ; $6302: $59
    push hl                                       ; $6303: $e5
    ret nc                                        ; $6304: $d0

    ld l, d                                       ; $6305: $6a
    add hl, sp                                    ; $6306: $39
    rla                                           ; $6307: $17
    add l                                         ; $6308: $85
    call c, Call_064_7695                         ; $6309: $dc $95 $76
    db $ec                                        ; $630c: $ec
    cp d                                          ; $630d: $ba
    ld d, b                                       ; $630e: $50
    ld d, $e9                                     ; $630f: $16 $e9
    add d                                         ; $6311: $82
    and $35                                       ; $6312: $e6 $35
    ld b, d                                       ; $6314: $42
    or c                                          ; $6315: $b1
    xor h                                         ; $6316: $ac
    add [hl]                                      ; $6317: $86
    ld h, a                                       ; $6318: $67
    adc l                                         ; $6319: $8d
    xor $78                                       ; $631a: $ee $78
    sub l                                         ; $631c: $95
    jp hl                                         ; $631d: $e9


    call Call_064_5e6e                            ; $631e: $cd $6e $5e
    sub h                                         ; $6321: $94
    ld a, a                                       ; $6322: $7f
    dec c                                         ; $6323: $0d
    ld l, b                                       ; $6324: $68
    ld [hl], h                                    ; $6325: $74
    ld [$656c], sp                                ; $6326: $08 $6c $65
    sub $be                                       ; $6329: $d6 $be
    swap l                                        ; $632b: $cb $35
    and h                                         ; $632d: $a4
    pop de                                        ; $632e: $d1
    or d                                          ; $632f: $b2
    ldh a, [$ec]                                  ; $6330: $f0 $ec
    di                                            ; $6332: $f3
    inc l                                         ; $6333: $2c
    inc de                                        ; $6334: $13
    call Call_064_4854                            ; $6335: $cd $54 $48
    ld d, [hl]                                    ; $6338: $56
    pop hl                                        ; $6339: $e1
    ld l, c                                       ; $633a: $69
    add b                                         ; $633b: $80
    ld a, h                                       ; $633c: $7c
    add [hl]                                      ; $633d: $86
    jr nz, jr_064_63b3                            ; $633e: $20 $73

    adc [hl]                                      ; $6340: $8e
    and c                                         ; $6341: $a1
    rla                                           ; $6342: $17
    adc d                                         ; $6343: $8a
    inc d                                         ; $6344: $14
    ld [hl], a                                    ; $6345: $77
    jr z, jr_064_62cb                             ; $6346: $28 $83

    xor c                                         ; $6348: $a9
    sub b                                         ; $6349: $90
    ld e, h                                       ; $634a: $5c
    rst $38                                       ; $634b: $ff
    db $d3                                        ; $634c: $d3
    sbc l                                         ; $634d: $9d
    xor d                                         ; $634e: $aa
    db $eb                                        ; $634f: $eb
    adc l                                         ; $6350: $8d

jr_064_6351:
    add [hl]                                      ; $6351: $86
    ld h, l                                       ; $6352: $65
    adc $81                                       ; $6353: $ce $81
    or b                                          ; $6355: $b0
    db $d3                                        ; $6356: $d3
    or l                                          ; $6357: $b5
    ld a, [hl]                                    ; $6358: $7e
    pop hl                                        ; $6359: $e1
    ld [hl], l                                    ; $635a: $75
    ld c, d                                       ; $635b: $4a
    dec d                                         ; $635c: $15
    sub b                                         ; $635d: $90
    ld [hl], d                                    ; $635e: $72
    cp a                                          ; $635f: $bf
    ld l, l                                       ; $6360: $6d
    ld a, [$66a2]                                 ; $6361: $fa $a2 $66
    xor [hl]                                      ; $6364: $ae
    reti                                          ; $6365: $d9


    db $10                                        ; $6366: $10
    di                                            ; $6367: $f3
    xor b                                         ; $6368: $a8
    ld [hl], h                                    ; $6369: $74
    or c                                          ; $636a: $b1
    ld a, b                                       ; $636b: $78
    ld d, c                                       ; $636c: $51
    ret z                                         ; $636d: $c8

    adc c                                         ; $636e: $89
    add $7b                                       ; $636f: $c6 $7b
    db $f4                                        ; $6371: $f4
    ld c, $85                                     ; $6372: $0e $85
    inc [hl]                                      ; $6374: $34
    ld a, [hl-]                                   ; $6375: $3a
    rst $20                                       ; $6376: $e7
    adc b                                         ; $6377: $88
    sbc l                                         ; $6378: $9d
    ei                                            ; $6379: $fb
    inc a                                         ; $637a: $3c
    ld a, [c]                                     ; $637b: $f2
    rst $00                                       ; $637c: $c7
    ld e, [hl]                                    ; $637d: $5e
    and h                                         ; $637e: $a4
    ld [hl], a                                    ; $637f: $77
    adc h                                         ; $6380: $8c
    xor b                                         ; $6381: $a8
    ret                                           ; $6382: $c9


    dec bc                                        ; $6383: $0b
    xor l                                         ; $6384: $ad
    ld a, [c]                                     ; $6385: $f2
    ld h, e                                       ; $6386: $63
    bit 3, d                                      ; $6387: $cb $5a
    add hl, de                                    ; $6389: $19
    ld [hl+], a                                   ; $638a: $22
    rst $10                                       ; $638b: $d7
    ld a, [de]                                    ; $638c: $1a
    ld [hl], d                                    ; $638d: $72
    rst $20                                       ; $638e: $e7
    add e                                         ; $638f: $83
    ld c, b                                       ; $6390: $48
    ld e, l                                       ; $6391: $5d
    ld sp, hl                                     ; $6392: $f9
    pop af                                        ; $6393: $f1
    db $10                                        ; $6394: $10
    adc d                                         ; $6395: $8a
    or $b5                                        ; $6396: $f6 $b5
    jp hl                                         ; $6398: $e9


    ld a, e                                       ; $6399: $7b
    sbc d                                         ; $639a: $9a
    dec hl                                        ; $639b: $2b
    ld [bc], a                                    ; $639c: $02
    add sp, $51                                   ; $639d: $e8 $51
    jp hl                                         ; $639f: $e9


    ld h, d                                       ; $63a0: $62
    pop af                                        ; $63a1: $f1
    ldh a, [rIF]                                  ; $63a2: $f0 $0f
    push af                                       ; $63a4: $f5
    sub c                                         ; $63a5: $91
    call nc, $ee74                                ; $63a6: $d4 $74 $ee
    di                                            ; $63a9: $f3
    inc l                                         ; $63aa: $2c
    inc de                                        ; $63ab: $13
    call Call_064_4854                            ; $63ac: $cd $54 $48
    ld d, [hl]                                    ; $63af: $56
    pop hl                                        ; $63b0: $e1
    ld l, c                                       ; $63b1: $69
    add b                                         ; $63b2: $80

jr_064_63b3:
    ld a, h                                       ; $63b3: $7c
    add [hl]                                      ; $63b4: $86
    jr nz, jr_064_640a                            ; $63b5: $20 $53

    ld e, a                                       ; $63b7: $5f
    ld d, $35                                     ; $63b8: $16 $35
    db $eb                                        ; $63ba: $eb
    ld h, b                                       ; $63bb: $60
    sbc h                                         ; $63bc: $9c
    and c                                         ; $63bd: $a1
    db $e3                                        ; $63be: $e3
    di                                            ; $63bf: $f3
    dec b                                         ; $63c0: $05
    xor e                                         ; $63c1: $ab
    ld a, [bc]                                    ; $63c2: $0a
    ret                                           ; $63c3: $c9


    push af                                       ; $63c4: $f5
    ccf                                           ; $63c5: $3f
    db $dd                                        ; $63c6: $dd
    xor c                                         ; $63c7: $a9
    cp d                                          ; $63c8: $ba
    sbc $68                                       ; $63c9: $de $68
    ld e, b                                       ; $63cb: $58
    xor $17                                       ; $63cc: $ee $17
    ld l, l                                       ; $63ce: $6d
    ld a, [$9fc8]                                 ; $63cf: $fa $c8 $9f
    adc e                                         ; $63d2: $8b
    sbc d                                         ; $63d3: $9a
    and $5d                                       ; $63d4: $e6 $5d
    xor $18                                       ; $63d6: $ee $18

Jump_064_63d8:
    ld a, d                                       ; $63d8: $7a
    ld [hl], a                                    ; $63d9: $77
    sbc l                                         ; $63da: $9d
    inc de                                        ; $63db: $13
    inc b                                         ; $63dc: $04
    inc de                                        ; $63dd: $13
    and h                                         ; $63de: $a4
    ld d, h                                       ; $63df: $54
    and l                                         ; $63e0: $a5
    sub a                                         ; $63e1: $97
    xor $31                                       ; $63e2: $ee $31
    db $f4                                        ; $63e4: $f4
    add $2f                                       ; $63e5: $c6 $2f
    sub $be                                       ; $63e7: $d6 $be
    swap l                                        ; $63e9: $cb $35
    and h                                         ; $63eb: $a4
    pop de                                        ; $63ec: $d1
    or d                                          ; $63ed: $b2
    ldh a, [$ec]                                  ; $63ee: $f0 $ec
    di                                            ; $63f0: $f3
    inc l                                         ; $63f1: $2c
    inc de                                        ; $63f2: $13
    call Call_064_4854                            ; $63f3: $cd $54 $48
    ld d, [hl]                                    ; $63f6: $56
    pop hl                                        ; $63f7: $e1
    ld l, c                                       ; $63f8: $69
    add b                                         ; $63f9: $80
    ld a, h                                       ; $63fa: $7c
    add [hl]                                      ; $63fb: $86
    jr nz, jr_064_6451                            ; $63fc: $20 $53

    ld e, a                                       ; $63fe: $5f

jr_064_63ff:
    ld d, $35                                     ; $63ff: $16 $35
    db $eb                                        ; $6401: $eb
    ld h, b                                       ; $6402: $60
    sbc h                                         ; $6403: $9c
    and c                                         ; $6404: $a1
    db $e3                                        ; $6405: $e3
    di                                            ; $6406: $f3
    dec b                                         ; $6407: $05
    xor e                                         ; $6408: $ab
    ld a, [bc]                                    ; $6409: $0a

jr_064_640a:
    ret                                           ; $640a: $c9


    push af                                       ; $640b: $f5
    ccf                                           ; $640c: $3f
    db $dd                                        ; $640d: $dd
    xor c                                         ; $640e: $a9
    cp d                                          ; $640f: $ba
    sbc $68                                       ; $6410: $de $68
    ld e, b                                       ; $6412: $58
    ld d, $75                                     ; $6413: $16 $75
    ld c, l                                       ; $6415: $4d
    db $ec                                        ; $6416: $ec
    ld e, h                                       ; $6417: $5c
    sub h                                         ; $6418: $94
    ld a, a                                       ; $6419: $7f
    xor $8e                                       ; $641a: $ee $8e
    rst $00                                       ; $641c: $c7
    ret nc                                        ; $641d: $d0

    rst $20                                       ; $641e: $e7
    xor $f8                                       ; $641f: $ee $f8
    ld a, [hl]                                    ; $6421: $7e
    ld bc, $e917                                  ; $6422: $01 $17 $e9
    dec e                                         ; $6425: $1d
    inc hl                                        ; $6426: $23
    ld l, d                                       ; $6427: $6a
    cp d                                          ; $6428: $ba
    ld d, a                                       ; $6429: $57
    bit 7, [hl]                                   ; $642a: $cb $7e
    or h                                          ; $642c: $b4
    add [hl]                                      ; $642d: $86
    ld l, e                                       ; $642e: $6b
    ld c, h                                       ; $642f: $4c
    ret                                           ; $6430: $c9


    ld [c], a                                     ; $6431: $e2
    ld e, [hl]                                    ; $6432: $5e
    ld e, l                                       ; $6433: $5d
    cp e                                          ; $6434: $bb
    dec d                                         ; $6435: $15
    ld b, e                                       ; $6436: $43
    db $10                                        ; $6437: $10
    res 5, d                                      ; $6438: $cb $aa
    ld c, d                                       ; $643a: $4a
    adc b                                         ; $643b: $88
    ld e, l                                       ; $643c: $5d
    rst $10                                       ; $643d: $d7
    ld l, d                                       ; $643e: $6a
    ld c, $41                                     ; $643f: $0e $41
    sub $a1                                       ; $6441: $d6 $a1
    or d                                          ; $6443: $b2
    rla                                           ; $6444: $17
    ld h, d                                       ; $6445: $62
    rst $20                                       ; $6446: $e7
    cp [hl]                                       ; $6447: $be
    ld a, [$1ff8]                                 ; $6448: $fa $f8 $1f
    xor b                                         ; $644b: $a8
    jp z, Jump_064_5feb                           ; $644c: $ca $eb $5f

    jr nc, jr_064_6457                            ; $644f: $30 $06

jr_064_6451:
    ld b, c                                       ; $6451: $41
    sub b                                         ; $6452: $90
    ld [c], a                                     ; $6453: $e2
    cp h                                          ; $6454: $bc
    ld [hl], a                                    ; $6455: $77
    ld c, b                                       ; $6456: $48

jr_064_6457:
    add l                                         ; $6457: $85
    ld l, [hl]                                    ; $6458: $6e
    ld e, c                                       ; $6459: $59
    push de                                       ; $645a: $d5
    sbc a                                         ; $645b: $9f
    rst $00                                       ; $645c: $c7
    cp c                                          ; $645d: $b9
    rra                                           ; $645e: $1f
    xor l                                         ; $645f: $ad
    jp z, $ca57                                   ; $6460: $ca $57 $ca

    or d                                          ; $6463: $b2
    ldh a, [$ec]                                  ; $6464: $f0 $ec
    di                                            ; $6466: $f3
    inc l                                         ; $6467: $2c
    inc de                                        ; $6468: $13
    call Call_064_4854                            ; $6469: $cd $54 $48
    ld d, [hl]                                    ; $646c: $56
    pop hl                                        ; $646d: $e1
    ld l, c                                       ; $646e: $69
    add b                                         ; $646f: $80
    ld a, h                                       ; $6470: $7c
    add [hl]                                      ; $6471: $86
    jr nz, @+$75                                  ; $6472: $20 $73

    adc [hl]                                      ; $6474: $8e
    and c                                         ; $6475: $a1
    rla                                           ; $6476: $17
    adc d                                         ; $6477: $8a
    inc d                                         ; $6478: $14
    ld [hl], a                                    ; $6479: $77
    jr z, jr_064_63ff                             ; $647a: $28 $83

    ld [hl], c                                    ; $647c: $71
    add [hl]                                      ; $647d: $86
    adc [hl]                                      ; $647e: $8e
    rst $08                                       ; $647f: $cf
    rla                                           ; $6480: $17
    xor h                                         ; $6481: $ac
    ld a, [hl+]                                   ; $6482: $2a
    inc h                                         ; $6483: $24
    rst $10                                       ; $6484: $d7
    ld a, a                                       ; $6485: $7f
    call c, $9dd3                                 ; $6486: $dc $d3 $9d
    xor d                                         ; $6489: $aa
    db $eb                                        ; $648a: $eb
    adc l                                         ; $648b: $8d
    add [hl]                                      ; $648c: $86
    push hl                                       ; $648d: $e5
    ld a, [hl]                                    ; $648e: $7e
    ld bc, $40d7                                  ; $648f: $01 $d7 $40
    rst $28                                       ; $6492: $ef
    ld a, [de]                                    ; $6493: $1a
    and l                                         ; $6494: $a5
    ld c, h                                       ; $6495: $4c
    dec de                                        ; $6496: $1b
    ld [$7f23], a                                 ; $6497: $ea $23 $7f
    ld l, $d6                                     ; $649a: $2e $d6
    dec b                                         ; $649c: $05
    call Call_064_4bd3                            ; $649d: $cd $d3 $4b
    ld [hl], a                                    ; $64a0: $77
    ld d, d                                       ; $64a1: $52
    xor d                                         ; $64a2: $aa
    ld e, c                                       ; $64a3: $59
    ei                                            ; $64a4: $fb
    ld l, $d7                                     ; $64a5: $2e $d7
    sub b                                         ; $64a7: $90
    ld b, [hl]                                    ; $64a8: $46
    set 0, d                                      ; $64a9: $cb $c2
    or e                                          ; $64ab: $b3
    rst $08                                       ; $64ac: $cf
    or e                                          ; $64ad: $b3
    ld c, h                                       ; $64ae: $4c
    inc [hl]                                      ; $64af: $34
    ld d, e                                       ; $64b0: $53
    ld hl, $8559                                  ; $64b1: $21 $59 $85
    and a                                         ; $64b4: $a7
    ld bc, $19f2                                  ; $64b5: $01 $f2 $19
    add d                                         ; $64b8: $82
    xor h                                         ; $64b9: $ac
    add [hl]                                      ; $64ba: $86
    ld h, a                                       ; $64bb: $67
    ld [$a2cb], a                                 ; $64bc: $ea $cb $a2
    ld h, [hl]                                    ; $64bf: $66
    dec e                                         ; $64c0: $1d
    adc h                                         ; $64c1: $8c
    inc sp                                        ; $64c2: $33
    ld [hl], h                                    ; $64c3: $74
    ld a, h                                       ; $64c4: $7c
    cp [hl]                                       ; $64c5: $be
    ld h, b                                       ; $64c6: $60
    ld d, l                                       ; $64c7: $55
    ld hl, $feb9                                  ; $64c8: $21 $b9 $fe
    and a                                         ; $64cb: $a7
    dec sp                                        ; $64cc: $3b
    ld d, l                                       ; $64cd: $55
    rst $10                                       ; $64ce: $d7
    dec de                                        ; $64cf: $1b
    dec c                                         ; $64d0: $0d
    res 4, d                                      ; $64d1: $cb $a2
    ld h, [hl]                                    ; $64d3: $66
    ld c, $cd                                     ; $64d4: $0e $cd
    ld h, e                                       ; $64d6: $63
    add sp, -$05                                  ; $64d7: $e8 $fb
    cp h                                          ; $64d9: $bc
    xor d                                         ; $64da: $aa
    ld d, a                                       ; $64db: $57
    cpl                                           ; $64dc: $2f
    ld a, [bc]                                    ; $64dd: $0a
    add hl, sp                                    ; $64de: $39
    inc b                                         ; $64df: $04
    pop af                                        ; $64e0: $f1
    xor b                                         ; $64e1: $a8
    jp hl                                         ; $64e2: $e9


    cp h                                          ; $64e3: $bc
    ld e, a                                       ; $64e4: $5f
    ld l, l                                       ; $64e5: $6d
    ld a, [$2298]                                 ; $64e6: $fa $98 $22
    jp z, Jump_000_10b9                           ; $64e9: $ca $b9 $10

    dec sp                                        ; $64ec: $3b
    add a                                         ; $64ed: $87
    sub [hl]                                      ; $64ee: $96
    ld d, l                                       ; $64ef: $55
    adc e                                         ; $64f0: $8b
    dec hl                                        ; $64f1: $2b
    ld a, e                                       ; $64f2: $7b
    inc c                                         ; $64f3: $0c
    ld e, b                                       ; $64f4: $58
    ld b, a                                       ; $64f5: $47
    ld d, d                                       ; $64f6: $52
    inc b                                         ; $64f7: $04
    db $dd                                        ; $64f8: $dd
    xor e                                         ; $64f9: $ab
    ld [hl], e                                    ; $64fa: $73
    adc [hl]                                      ; $64fb: $8e
    ret c                                         ; $64fc: $d8

    cp c                                          ; $64fd: $b9
    rst $08                                       ; $64fe: $cf
    ld b, e                                       ; $64ff: $43
    ld a, l                                       ; $6500: $7d
    adc $c5                                       ; $6501: $ce $c5
    ld d, $e4                                     ; $6503: $16 $e4
    ld sp, $c6f4                                  ; $6505: $31 $f4 $c6
    cpl                                           ; $6508: $2f
    ld e, $43                                     ; $6509: $1e $43

Call_064_650b:
    rst $18                                       ; $650b: $df
    push bc                                       ; $650c: $c5
    xor c                                         ; $650d: $a9
    adc c                                         ; $650e: $89
    ld [hl+], a                                   ; $650f: $22
    db $10                                        ; $6510: $10
    inc c                                         ; $6511: $0c
    cp c                                          ; $6512: $b9
    jr z, @+$01                                   ; $6513: $28 $ff

    db $10                                        ; $6515: $10
    ld h, h                                       ; $6516: $64
    and c                                         ; $6517: $a1
    push de                                       ; $6518: $d5
    dec e                                         ; $6519: $1d
    cp e                                          ; $651a: $bb
    ld d, a                                       ; $651b: $57
    rst $28                                       ; $651c: $ef
    ld sp, $2dae                                  ; $651d: $31 $ae $2d
    xor c                                         ; $6520: $a9
    rst $08                                       ; $6521: $cf
    db $e3                                        ; $6522: $e3
    jp c, $bd32                                   ; $6523: $da $32 $bd

    sbc e                                         ; $6526: $9b
    rst $28                                       ; $6527: $ef
    ld e, l                                       ; $6528: $5d
    ld a, [$e865]                                 ; $6529: $fa $65 $e8
    ld e, h                                       ; $652c: $5c
    inc c                                         ; $652d: $0c
    xor c                                         ; $652e: $a9
    call c, Call_000_2ca1                         ; $652f: $dc $a1 $2c
    ld l, d                                       ; $6532: $6a
    sub $59                                       ; $6533: $d6 $59
    ld h, $9a                                     ; $6535: $26 $9a
    xor c                                         ; $6537: $a9
    sub b                                         ; $6538: $90
    xor h                                         ; $6539: $ac
    jp nz, Jump_000_00d3                          ; $653a: $c2 $d3 $00

    ld sp, hl                                     ; $653d: $f9
    inc c                                         ; $653e: $0c
    ld b, c                                       ; $653f: $41
    ld b, $e3                                     ; $6540: $06 $e3
    inc c                                         ; $6542: $0c
    dec e                                         ; $6543: $1d
    sbc a                                         ; $6544: $9f
    cpl                                           ; $6545: $2f
    ld e, b                                       ; $6546: $58
    ld d, l                                       ; $6547: $55
    ld c, b                                       ; $6548: $48
    xor [hl]                                      ; $6549: $ae
    rst $38                                       ; $654a: $ff
    jp hl                                         ; $654b: $e9


    ld c, [hl]                                    ; $654c: $4e
    push de                                       ; $654d: $d5
    push af                                       ; $654e: $f5
    ld b, [hl]                                    ; $654f: $46
    jp $9b42                                      ; $6550: $c3 $42 $9b


    ld a, e                                       ; $6553: $7b
    ld [hl], a                                    ; $6554: $77
    adc $39                                       ; $6555: $ce $39
    inc [hl]                                      ; $6557: $34
    ld c, a                                       ; $6558: $4f
    ld b, d                                       ; $6559: $42
    ld sp, $f50f                                  ; $655a: $31 $0f $f5
    sub c                                         ; $655d: $91
    ccf                                           ; $655e: $3f
    add a                                         ; $655f: $87
    ld c, c                                       ; $6560: $49
    ld a, l                                       ; $6561: $7d
    ld e, b                                       ; $6562: $58
    ei                                            ; $6563: $fb
    dec bc                                        ; $6564: $0b
    ld l, l                                       ; $6565: $6d
    ld a, [$8b9c]                                 ; $6566: $fa $9c $8b
    dec l                                         ; $6569: $2d
    ret z                                         ; $656a: $c8

    ld h, e                                       ; $656b: $63
    add sp, -$73                                  ; $656c: $e8 $8d
    ld e, a                                       ; $656e: $5f
    inc a                                         ; $656f: $3c
    add [hl]                                      ; $6570: $86
    cp [hl]                                       ; $6571: $be
    adc e                                         ; $6572: $8b
    ld d, e                                       ; $6573: $53
    inc de                                        ; $6574: $13
    ld b, l                                       ; $6575: $45

Jump_064_6576:
    jr nz, jr_064_6590                            ; $6576: $20 $18

    ld [hl], d                                    ; $6578: $72
    adc [hl]                                      ; $6579: $8e
    ret c                                         ; $657a: $d8

    add hl, sp                                    ; $657b: $39
    inc b                                         ; $657c: $04
    sbc $41                                       ; $657d: $de $41
    ld b, b                                       ; $657f: $40
    ld sp, hl                                     ; $6580: $f9
    ld e, h                                       ; $6581: $5c
    ld d, c                                       ; $6582: $51
    ld [hl], a                                    ; $6583: $77
    ccf                                           ; $6584: $3f
    adc $b1                                       ; $6585: $ce $b1
    add l                                         ; $6587: $85
    dec [hl]                                      ; $6588: $35
    ld a, c                                       ; $6589: $79
    rst $28                                       ; $658a: $ef
    ld [hl], d                                    ; $658b: $72
    ld a, l                                       ; $658c: $7d
    adc $a1                                       ; $658d: $ce $a1
    ld a, c                                       ; $658f: $79

jr_064_6590:
    dec [hl]                                      ; $6590: $35
    inc a                                         ; $6591: $3c
    dec bc                                        ; $6592: $0b
    rst $08                                       ; $6593: $cf
    ret nc                                        ; $6594: $d0

    sub e                                         ; $6595: $93
    rst $08                                       ; $6596: $cf
    dec e                                         ; $6597: $1d
    adc d                                         ; $6598: $8a
    rst $00                                       ; $6599: $c7
    ld a, d                                       ; $659a: $7a
    ld a, d                                       ; $659b: $7a
    xor l                                         ; $659c: $ad
    and $6a                                       ; $659d: $e6 $6a
    rrca                                          ; $659f: $0f
    call z, $bae6                                 ; $65a0: $cc $e6 $ba
    ld a, [c]                                     ; $65a3: $f2
    and l                                         ; $65a4: $a5
    ld a, b                                       ; $65a5: $78
    and b                                         ; $65a6: $a0
    sub h                                         ; $65a7: $94
    rst $10                                       ; $65a8: $d7
    add hl, hl                                    ; $65a9: $29
    ld d, d                                       ; $65aa: $52
    sbc h                                         ; $65ab: $9c
    sbc [hl]                                      ; $65ac: $9e
    ld [hl], e                                    ; $65ad: $73
    and h                                         ; $65ae: $a4
    dec sp                                        ; $65af: $3b
    xor a                                         ; $65b0: $af
    ld [hl], $17                                  ; $65b1: $36 $17
    add l                                         ; $65b3: $85
    ld l, h                                       ; $65b4: $6c
    add sp, -$38                                  ; $65b5: $e8 $c8
    cp [hl]                                       ; $65b7: $be
    ld e, a                                       ; $65b8: $5f
    ld l, l                                       ; $65b9: $6d
    ld a, [$9fc8]                                 ; $65ba: $fa $c8 $9f
    inc de                                        ; $65bd: $13
    ld h, e                                       ; $65be: $63
    rst $38                                       ; $65bf: $ff
    add l                                         ; $65c0: $85
    rst $00                                       ; $65c1: $c7
    add hl, de                                    ; $65c2: $19
    ld a, [hl-]                                   ; $65c3: $3a
    ld e, d                                       ; $65c4: $5a
    ld d, $ca                                     ; $65c5: $16 $ca
    jp nc, $e688                                  ; $65c7: $d2 $88 $e6

    or l                                          ; $65ca: $b5
    dec sp                                        ; $65cb: $3b
    rra                                           ; $65cc: $1f
    ld [$7be2], sp                                ; $65cd: $08 $e2 $7b
    ld l, l                                       ; $65d0: $6d
    ld a, [$46aa]                                 ; $65d1: $fa $aa $46
    ld e, h                                       ; $65d4: $5c
    rst $30                                       ; $65d5: $f7
    ld a, c                                       ; $65d6: $79
    sub [hl]                                      ; $65d7: $96
    adc c                                         ; $65d8: $89
    ld h, [hl]                                    ; $65d9: $66
    ld a, [hl+]                                   ; $65da: $2a
    inc h                                         ; $65db: $24
    xor e                                         ; $65dc: $ab
    ldh a, [$34]                                  ; $65dd: $f0 $34
    ld b, b                                       ; $65df: $40
    ld a, $43                                     ; $65e0: $3e $43
    sub b                                         ; $65e2: $90
    push de                                       ; $65e3: $d5
    ldh a, [$4c]                                  ; $65e4: $f0 $4c
    ld a, l                                       ; $65e6: $7d
    ld e, c                                       ; $65e7: $59
    call nc, $83ac                                ; $65e8: $d4 $ac $83
    ld [hl], c                                    ; $65eb: $71
    add [hl]                                      ; $65ec: $86
    adc [hl]                                      ; $65ed: $8e
    rst $08                                       ; $65ee: $cf

jr_064_65ef:
    rla                                           ; $65ef: $17
    xor h                                         ; $65f0: $ac
    ld a, [hl+]                                   ; $65f1: $2a
    inc h                                         ; $65f2: $24
    rst $10                                       ; $65f3: $d7
    rst $38                                       ; $65f4: $ff
    ld [hl], h                                    ; $65f5: $74
    and a                                         ; $65f6: $a7
    ld [$a37a], a                                 ; $65f7: $ea $7a $a3
    ld h, c                                       ; $65fa: $61
    sbc c                                         ; $65fb: $99
    ld [hl], e                                    ; $65fc: $73
    sub [hl]                                      ; $65fd: $96
    or l                                          ; $65fe: $b5
    ld a, [hl]                                    ; $65ff: $7e
    xor l                                         ; $6600: $ad
    ld d, $f4                                     ; $6601: $16 $f4
    ld a, [de]                                    ; $6603: $1a
    xor $54                                       ; $6604: $ee $54
    ld de, $b290                                  ; $6606: $11 $90 $b2
    jr z, jr_064_65ef                             ; $6609: $28 $e4

    db $10                                        ; $660b: $10
    ld a, b                                       ; $660c: $78
    and h                                         ; $660d: $a4
    dec sp                                        ; $660e: $3b
    ei                                            ; $660f: $fb
    add hl, bc                                    ; $6610: $09
    ld a, b                                       ; $6611: $78
    cp a                                          ; $6612: $bf
    ld l, l                                       ; $6613: $6d
    ld a, [$9fc8]                                 ; $6614: $fa $c8 $9f
    dec hl                                        ; $6617: $2b
    ld c, l                                       ; $6618: $4d
    di                                            ; $6619: $f3

Jump_064_661a:
    db $10                                        ; $661a: $10
    call nz, $eba3                                ; $661b: $c4 $a3 $eb
    db $dd                                        ; $661e: $dd
    push hl                                       ; $661f: $e5
    rst $00                                       ; $6620: $c7
    adc $41                                       ; $6621: $ce $41
    or c                                          ; $6623: $b1
    ld l, b                                       ; $6624: $68
    rst $18                                       ; $6625: $df
    dec h                                         ; $6626: $25
    and h                                         ; $6627: $a4
    xor [hl]                                      ; $6628: $ae
    jp nz, Jump_064_58f3                          ; $6629: $c2 $f3 $58

    ret nc                                        ; $662c: $d0

    ld b, e                                       ; $662d: $43
    bit 1, d                                      ; $662e: $cb $4a
    rst $38                                       ; $6630: $ff
    add sp, -$6b                                  ; $6631: $e8 $95
    rra                                           ; $6633: $1f
    cp e                                          ; $6634: $bb
    ld b, b                                       ; $6635: $40
    db $ec                                        ; $6636: $ec
    db $e4                                        ; $6637: $e4
    db $fc                                        ; $6638: $fc
    ld [$410c], sp                                ; $6639: $08 $0c $41
    ld b, [hl]                                    ; $663c: $46
    cp $1c                                        ; $663d: $fe $1c
    ld h, a                                       ; $663f: $67
    add sp, -$08                                  ; $6640: $e8 $f8
    ld a, h                                       ; $6642: $7c
    pop bc                                        ; $6643: $c1
    xor d                                         ; $6644: $aa
    ld b, d                                       ; $6645: $42
    ld [hl], d                                    ; $6646: $72
    db $fd                                        ; $6647: $fd
    ld c, a                                       ; $6648: $4f
    ld [hl], a                                    ; $6649: $77
    xor d                                         ; $664a: $aa
    xor [hl]                                      ; $664b: $ae
    scf                                           ; $664c: $37
    ld a, [de]                                    ; $664d: $1a
    sub [hl]                                      ; $664e: $96
    push de                                       ; $664f: $d5
    rst $08                                       ; $6650: $cf
    or e                                          ; $6651: $b3
    ld c, h                                       ; $6652: $4c
    inc [hl]                                      ; $6653: $34
    ld d, e                                       ; $6654: $53
    ld hl, $8559                                  ; $6655: $21 $59 $85
    and a                                         ; $6658: $a7
    ld bc, $19f2                                  ; $6659: $01 $f2 $19
    add d                                         ; $665c: $82
    xor h                                         ; $665d: $ac
    push de                                       ; $665e: $d5
    ld e, h                                       ; $665f: $5c
    ld l, l                                       ; $6660: $6d
    ld b, c                                       ; $6661: $41
    ld e, a                                       ; $6662: $5f
    inc d                                         ; $6663: $14
    ld [hl], d                                    ; $6664: $72
    push af                                       ; $6665: $f5
    ccf                                           ; $6666: $3f
    db $dd                                        ; $6667: $dd
    jp hl                                         ; $6668: $e9


    ei                                            ; $6669: $fb
    dec b                                         ; $666a: $05
    ld l, l                                       ; $666b: $6d
    ld a, [$2fa2]                                 ; $666c: $fa $a2 $2f
    push bc                                       ; $666f: $c5
    add sp, -$6f                                  ; $6670: $e8 $91
    ld d, h                                       ; $6672: $54
    xor c                                         ; $6673: $a9
    ld d, $8f                                     ; $6674: $16 $8f
    and c                                         ; $6676: $a1
    xor a                                         ; $6677: $af
    db $fd                                        ; $6678: $fd
    sub a                                         ; $6679: $97
    inc b                                         ; $667a: $04
    xor h                                         ; $667b: $ac
    inc de                                        ; $667c: $13
    adc l                                         ; $667d: $8d
    ld l, c                                       ; $667e: $69
    xor e                                         ; $667f: $ab
    adc d                                         ; $6680: $8a
    jp nc, $d1bb                                  ; $6681: $d2 $bb $d1

    ld d, e                                       ; $6684: $53
    rst $38                                       ; $6685: $ff
    ld a, c                                       ; $6686: $79
    sbc h                                         ; $6687: $9c
    sbc a                                         ; $6688: $9f
    ld l, c                                       ; $6689: $69
    cp e                                          ; $668a: $bb
    inc a                                         ; $668b: $3c
    ld h, h                                       ; $668c: $64
    jp $dac9                                      ; $668d: $c3 $c9 $da


    ld [hl], a                                    ; $6690: $77
    dec c                                         ; $6691: $0d
    db $f4                                        ; $6692: $f4
    adc b                                         ; $6693: $88
    jp nc, $4a11                                  ; $6694: $d2 $11 $4a

    inc c                                         ; $6697: $0c
    ld [hl], l                                    ; $6698: $75
    adc $59                                       ; $6699: $ce $59
    ld h, $9a                                     ; $669b: $26 $9a
    xor c                                         ; $669d: $a9
    sub b                                         ; $669e: $90
    xor h                                         ; $669f: $ac
    jp nz, Jump_000_00d3                          ; $66a0: $c2 $d3 $00

    ld sp, hl                                     ; $66a3: $f9
    inc c                                         ; $66a4: $0c
    ld b, c                                       ; $66a5: $41
    ld h, $e6                                     ; $66a6: $26 $e6
    ret nc                                        ; $66a8: $d0

    sbc d                                         ; $66a9: $9a
    add sp, $63                                   ; $66aa: $e8 $63
    add sp, -$7b                                  ; $66ac: $e8 $85
    ld [hl+], a                                   ; $66ae: $22
    push bc                                       ; $66af: $c5
    dec e                                         ; $66b0: $1d
    jp z, $9c60                                   ; $66b1: $ca $60 $9c

    and c                                         ; $66b4: $a1
    db $e3                                        ; $66b5: $e3
    di                                            ; $66b6: $f3
    dec b                                         ; $66b7: $05
    xor e                                         ; $66b8: $ab
    ld a, [bc]                                    ; $66b9: $0a
    ret                                           ; $66ba: $c9


    push af                                       ; $66bb: $f5
    ccf                                           ; $66bc: $3f
    db $dd                                        ; $66bd: $dd
    xor c                                         ; $66be: $a9
    cp d                                          ; $66bf: $ba
    sbc $68                                       ; $66c0: $de $68
    ld e, b                                       ; $66c2: $58
    xor $17                                       ; $66c3: $ee $17
    ld l, l                                       ; $66c5: $6d
    ld a, [$9fc8]                                 ; $66c6: $fa $c8 $9f
    adc e                                         ; $66c9: $8b
    cp [hl]                                       ; $66ca: $be
    inc d                                         ; $66cb: $14
    di                                            ; $66cc: $f3
    ld l, $0f                                     ; $66cd: $2e $0f
    reti                                          ; $66cf: $d9


    ld [hl], b                                    ; $66d0: $70
    ld a, [c]                                     ; $66d1: $f2
    ld b, d                                       ; $66d2: $42
    ld e, c                                       ; $66d3: $59
    ld a, [de]                                    ; $66d4: $1a
    pop de                                        ; $66d5: $d1
    cp h                                          ; $66d6: $bc

Jump_064_66d7:
    or $5f                                        ; $66d7: $f6 $5f
    ld [de], a                                    ; $66d9: $12
    ld [hl], b                                    ; $66da: $70
    ld d, c                                       ; $66db: $51
    cp $35                                        ; $66dc: $fe $35
    xor b                                         ; $66de: $a8
    ld [hl], c                                    ; $66df: $71
    ld e, a                                       ; $66e0: $5f
    jr z, jr_064_674e                             ; $66e1: $28 $6b

    db $fc                                        ; $66e3: $fc
    sbc $3f                                       ; $66e4: $de $3f
    ld a, [$9b5e]                                 ; $66e6: $fa $5e $9b
    ld [hl], e                                    ; $66e9: $73
    adc $81                                       ; $66ea: $ce $81
    inc d                                         ; $66ec: $14
    bit 5, d                                      ; $66ed: $cb $6a
    ld a, b                                       ; $66ef: $78
    ld b, [hl]                                    ; $66f0: $46
    cp d                                          ; $66f1: $ba
    ld d, a                                       ; $66f2: $57
    ld e, [hl]                                    ; $66f3: $5e
    inc d                                         ; $66f4: $14
    or d                                          ; $66f5: $b2
    ld bc, $ee82                                  ; $66f6: $01 $82 $ee
    push de                                       ; $66f9: $d5
    ld a, e                                       ; $66fa: $7b
    call c, $9fbb                                 ; $66fb: $dc $bb $9f
    and c                                         ; $66fe: $a1
    ld b, l                                       ; $66ff: $45
    inc a                                         ; $6700: $3c
    sub d                                         ; $6701: $92
    ld [hl+], a                                   ; $6702: $22
    add sp, $5e                                   ; $6703: $e8 $5e
    cp l                                          ; $6705: $bd
    ld d, b                                       ; $6706: $50
    add [hl]                                      ; $6707: $86
    sub [hl]                                      ; $6708: $96
    adc c                                         ; $6709: $89
    add $53                                       ; $670a: $c6 $53
    ld hl, $8559                                  ; $670c: $21 $59 $85
    and a                                         ; $670f: $a7
    ld bc, $19f2                                  ; $6710: $01 $f2 $19
    add d                                         ; $6713: $82
    inc c                                         ; $6714: $0c
    add $19                                       ; $6715: $c6 $19
    ld a, [hl-]                                   ; $6717: $3a
    ld a, $5f                                     ; $6718: $3e $5f
    or b                                          ; $671a: $b0
    xor d                                         ; $671b: $aa
    sub b                                         ; $671c: $90
    ld e, h                                       ; $671d: $5c
    rst $38                                       ; $671e: $ff
    db $d3                                        ; $671f: $d3
    sbc l                                         ; $6720: $9d
    xor d                                         ; $6721: $aa
    db $eb                                        ; $6722: $eb
    adc l                                         ; $6723: $8d
    add [hl]                                      ; $6724: $86
    push hl                                       ; $6725: $e5
    ld a, [hl]                                    ; $6726: $7e
    ld bc, $fa6d                                  ; $6727: $01 $6d $fa
    sbc h                                         ; $672a: $9c
    sub e                                         ; $672b: $93
    and [hl]                                      ; $672c: $a6
    ld a, c                                       ; $672d: $79
    and c                                         ; $672e: $a1
    dec [hl]                                      ; $672f: $35
    jr @+$39                                      ; $6730: $18 $37

    ld d, e                                       ; $6732: $53
    call z, $8c7b                                 ; $6733: $cc $7b $8c
    cp e                                          ; $6736: $bb
    inc a                                         ; $6737: $3c
    ld h, h                                       ; $6738: $64
    jp Jump_000_0bc9                              ; $6739: $c3 $c9 $0b


    ld h, l                                       ; $673c: $65
    db $e4                                        ; $673d: $e4
    rst $08                                       ; $673e: $cf
    ld d, c                                       ; $673f: $51
    and l                                         ; $6740: $a5
    ld a, [hl+]                                   ; $6741: $2a
    di                                            ; $6742: $f3
    ret z                                         ; $6743: $c8

    rst $38                                       ; $6744: $ff
    xor h                                         ; $6745: $ac
    inc b                                         ; $6746: $04
    ld e, h                                       ; $6747: $5c
    sbc d                                         ; $6748: $9a
    ld e, [hl]                                    ; $6749: $5e
    xor l                                         ; $674a: $ad
    ld a, l                                       ; $674b: $7d
    sub a                                         ; $674c: $97
    sbc c                                         ; $674d: $99

jr_064_674e:
    reti                                          ; $674e: $d9


    inc a                                         ; $674f: $3c
    dec d                                         ; $6750: $15
    sbc [hl]                                      ; $6751: $9e
    rst $00                                       ; $6752: $c7
    add hl, sp                                    ; $6753: $39
    call nc, $e307                                ; $6754: $d4 $07 $e3
    cpl                                           ; $6757: $2f
    jp z, $cf0b                                   ; $6758: $ca $0b $cf

    ld a, $cf                                     ; $675b: $3e $cf
    ld [hl-], a                                   ; $675d: $32
    pop de                                        ; $675e: $d1
    ld c, h                                       ; $675f: $4c
    add l                                         ; $6760: $85
    ld h, h                                       ; $6761: $64
    dec d                                         ; $6762: $15
    sbc [hl]                                      ; $6763: $9e
    ld b, $c8                                     ; $6764: $06 $c8
    ld h, a                                       ; $6766: $67
    ld [$18b2], sp                                ; $6767: $08 $b2 $18
    ld a, [$4a62]                                 ; $676a: $fa $62 $4a
    ld a, d                                       ; $676d: $7a
    inc c                                         ; $676e: $0c
    cp l                                          ; $676f: $bd
    ld d, b                                       ; $6770: $50
    and h                                         ; $6771: $a4
    cp b                                          ; $6772: $b8
    ld b, e                                       ; $6773: $43
    add hl, de                                    ; $6774: $19
    ld c, h                                       ; $6775: $4c
    add l                                         ; $6776: $85
    db $e4                                        ; $6777: $e4
    ld a, [$ee9f]                                 ; $6778: $fa $9f $ee
    ld d, h                                       ; $677b: $54
    ld e, l                                       ; $677c: $5d
    ld l, a                                       ; $677d: $6f
    inc [hl]                                      ; $677e: $34
    inc l                                         ; $677f: $2c
    inc de                                        ; $6780: $13
    ld c, d                                       ; $6781: $4a
    ld h, l                                       ; $6782: $65
    rst $28                                       ; $6783: $ef
    add hl, bc                                    ; $6784: $09
    ld e, c                                       ; $6785: $59
    inc l                                         ; $6786: $2c
    rst $30                                       ; $6787: $f7
    dec bc                                        ; $6788: $0b
    ld l, l                                       ; $6789: $6d
    ld a, [$9fc8]                                 ; $678a: $fa $c8 $9f
    dec bc                                        ; $678d: $0b
    or c                                          ; $678e: $b1
    or e                                          ; $678f: $b3
    dec sp                                        ; $6790: $3b
    ld [hl], $0f                                  ; $6791: $36 $0f
    sub $66                                       ; $6793: $d6 $66
    ld e, c                                       ; $6795: $59
    inc d                                         ; $6796: $14
    or d                                          ; $6797: $b2
    and c                                         ; $6798: $a1
    inc hl                                        ; $6799: $23
    ld a, e                                       ; $679a: $7b
    ld d, l                                       ; $679b: $55
    add l                                         ; $679c: $85
    ld a, b                                       ; $679d: $78
    and c                                         ; $679e: $a1
    inc l                                         ; $679f: $2c
    jp nc, $cd05                                  ; $67a0: $d2 $05 $cd

    ld b, e                                       ; $67a3: $43
    bit 5, d                                      ; $67a4: $cb $6a
    inc sp                                        ; $67a6: $33
    adc l                                         ; $67a7: $8d
    sbc [hl]                                      ; $67a8: $9e
    add l                                         ; $67a9: $85
    and h                                         ; $67aa: $a4
    ld d, e                                       ; $67ab: $53
    ld d, e                                       ; $67ac: $53
    ld b, b                                       ; $67ad: $40
    adc d                                         ; $67ae: $8a
    or $5d                                        ; $67af: $f6 $5d
    sub e                                         ; $67b1: $93
    and c                                         ; $67b2: $a1
    db $e3                                        ; $67b3: $e3
    di                                            ; $67b4: $f3
    dec b                                         ; $67b5: $05
    xor e                                         ; $67b6: $ab
    ld a, [bc]                                    ; $67b7: $0a
    ret                                           ; $67b8: $c9


    push af                                       ; $67b9: $f5
    ccf                                           ; $67ba: $3f
    db $dd                                        ; $67bb: $dd
    xor c                                         ; $67bc: $a9
    cp d                                          ; $67bd: $ba
    sbc $68                                       ; $67be: $de $68
    ld e, b                                       ; $67c0: $58
    ld b, [hl]                                    ; $67c1: $46
    cp $dc                                        ; $67c2: $fe $dc
    ld h, e                                       ; $67c4: $63
    ld b, h                                       ; $67c5: $44
    ld [hl], a                                    ; $67c6: $77
    sbc $e7                                       ; $67c7: $de $e7
    ld e, c                                       ; $67c9: $59

jr_064_67ca:
    ld h, $9a                                     ; $67ca: $26 $9a
    xor c                                         ; $67cc: $a9
    sub b                                         ; $67cd: $90
    xor h                                         ; $67ce: $ac
    jp nz, Jump_000_00d3                          ; $67cf: $c2 $d3 $00

    ld sp, hl                                     ; $67d2: $f9
    inc c                                         ; $67d3: $0c
    ld b, c                                       ; $67d4: $41
    and $1c                                       ; $67d5: $e6 $1c
    ld b, e                                       ; $67d7: $43
    cpl                                           ; $67d8: $2f
    inc d                                         ; $67d9: $14
    add hl, hl                                    ; $67da: $29
    xor $50                                       ; $67db: $ee $50
    xor $17                                       ; $67dd: $ee $17
    rla                                           ; $67df: $17
    and a                                         ; $67e0: $a7
    ld h, $8a                                     ; $67e1: $26 $8a
    ld b, b                                       ; $67e3: $40
    jr nc, jr_064_67ca                            ; $67e4: $30 $e4

    ret z                                         ; $67e6: $c8

    sbc a                                         ; $67e7: $9f
    adc e                                         ; $67e8: $8b
    ld [hl], l                                    ; $67e9: $75
    ld b, c                                       ; $67ea: $41
    di                                            ; $67eb: $f3
    ld d, h                                       ; $67ec: $54
    add sp, -$23                                  ; $67ed: $e8 $dd
    dec b                                         ; $67ef: $05
    call c, $ea0a                                 ; $67f0: $dc $0a $ea
    ld [hl], a                                    ; $67f3: $77
    adc e                                         ; $67f4: $8b
    or $1d                                        ; $67f5: $f6 $1d
    ld [$261a], a                                 ; $67f7: $ea $1a $26
    sbc l                                         ; $67fa: $9d
    jr nz, @-$59                                  ; $67fb: $20 $a5

    xor [hl]                                      ; $67fd: $ae
    ld a, a                                       ; $67fe: $7f
    add hl, hl                                    ; $67ff: $29
    ld e, [hl]                                    ; $6800: $5e
    inc c                                         ; $6801: $0c
    add d                                         ; $6802: $82
    adc $96                                       ; $6803: $ce $96
    inc de                                        ; $6805: $13
    ld [bc], a                                    ; $6806: $02
    ld a, d                                       ; $6807: $7a
    adc $85                                       ; $6808: $ce $85
    ld d, $49                                     ; $680a: $16 $49
    ld c, l                                       ; $680c: $4d
    sub $be                                       ; $680d: $d6 $be
    ld [hl], $fd                                  ; $680f: $36 $fd
    ld l, c                                       ; $6811: $69
    ld [hl], h                                    ; $6812: $74
    ld h, e                                       ; $6813: $63
    ld c, b                                       ; $6814: $48
    xor a                                         ; $6815: $af
    ld b, b                                       ; $6816: $40
    db $ec                                        ; $6817: $ec
    inc e                                         ; $6818: $1c
    ld b, d                                       ; $6819: $42
    add hl, de                                    ; $681a: $19
    sbc d                                         ; $681b: $9a
    rst $10                                       ; $681c: $d7
    jr nc, jr_064_6875                            ; $681d: $30 $56

    or $ce                                        ; $681f: $f6 $ce
    ld [hl], a                                    ; $6821: $77
    ld d, d                                       ; $6822: $52
    rra                                           ; $6823: $1f
    or $48                                        ; $6824: $f6 $48
    xor e                                         ; $6826: $ab
    ld [$3285], a                                 ; $6827: $ea $85 $32
    adc $d0                                       ; $682a: $ce $d0
    pop af                                        ; $682c: $f1
    and c                                         ; $682d: $a1
    ld [$854e], sp                                ; $682e: $08 $4e $85
    db $e4                                        ; $6831: $e4
    db $fd                                        ; $6832: $fd
    ld l, b                                       ; $6833: $68
    add sp, $67                                   ; $6834: $e8 $67
    cp a                                          ; $6836: $bf
    ld [hl], a                                    ; $6837: $77
    rst $28                                       ; $6838: $ef
    cp [hl]                                       ; $6839: $be
    rst $28                                       ; $683a: $ef
    or l                                          ; $683b: $b5
    rst $38                                       ; $683c: $ff
    ld c, h                                       ; $683d: $4c
    call Call_000_0cae                            ; $683e: $cd $ae $0c
    call z, $a9ce                                 ; $6841: $cc $ce $a9
    sub b                                         ; $6844: $90
    ld l, h                                       ; $6845: $6c
    sub $fe                                       ; $6846: $d6 $fe
    ld [bc], a                                    ; $6848: $02
    ld l, l                                       ; $6849: $6d
    ld a, [$9fc8]                                 ; $684a: $fa $c8 $9f
    adc e                                         ; $684d: $8b
    ld [hl], h                                    ; $684e: $74
    ld b, c                                       ; $684f: $41
    di                                            ; $6850: $f3
    ld l, $4e                                     ; $6851: $2e $4e
    ld c, l                                       ; $6853: $4d
    inc d                                         ; $6854: $14
    add c                                         ; $6855: $81
    ld h, b                                       ; $6856: $60
    ld c, b                                       ; $6857: $48
    jp c, Jump_064_7810                           ; $6858: $da $10 $78

    ld a, [hl+]                                   ; $685b: $2a
    db $f4                                        ; $685c: $f4
    xor $02                                       ; $685d: $ee $02

Call_064_685f:
    ld a, [$56b3]                                 ; $685f: $fa $b3 $56
    ld [hl], e                                    ; $6862: $73
    db $ed                                        ; $6863: $ed
    and c                                         ; $6864: $a1
    db $10                                        ; $6865: $10
    ei                                            ; $6866: $fb
    ret                                           ; $6867: $c9


    sub l                                         ; $6868: $95
    ld [hl], $32                                  ; $6869: $36 $32
    ld c, $39                                     ; $686b: $0e $39
    call nc, $d557                                ; $686d: $d4 $57 $d5
    rst $28                                       ; $6870: $ef
    ld l, e                                       ; $6871: $6b
    add h                                         ; $6872: $84
    add l                                         ; $6873: $85
    or d                                          ; $6874: $b2

jr_064_6875:
    jp z, $3a3a                                   ; $6875: $ca $3a $3a

    xor l                                         ; $6878: $ad
    ld a, l                                       ; $6879: $7d
    rla                                           ; $687a: $17
    add l                                         ; $687b: $85
    call c, Call_064_45e7                         ; $687c: $dc $e7 $45
    call $c859                                    ; $687f: $cd $59 $c8
    ret c                                         ; $6882: $d8

    add hl, sp                                    ; $6883: $39
    add [hl]                                      ; $6884: $86
    cp [hl]                                       ; $6885: $be
    rst $08                                       ; $6886: $cf
    adc e                                         ; $6887: $8b
    xor b                                         ; $6888: $a8
    db $dd                                        ; $6889: $dd
    xor e                                         ; $688a: $ab
    ld d, b                                       ; $688b: $50
    ld b, [hl]                                    ; $688c: $46
    jp nc, Jump_000_3cfd                          ; $688d: $d2 $fd $3c

    ld e, [hl]                                    ; $6890: $5e
    inc c                                         ; $6891: $0c
    ld a, l                                       ; $6892: $7d
    sub [hl]                                      ; $6893: $96
    adc c                                         ; $6894: $89
    ld h, [hl]                                    ; $6895: $66
    ld a, [hl+]                                   ; $6896: $2a
    inc h                                         ; $6897: $24
    xor e                                         ; $6898: $ab
    ldh a, [$34]                                  ; $6899: $f0 $34
    ld b, b                                       ; $689b: $40
    ld a, $43                                     ; $689c: $3e $43
    sub b                                         ; $689e: $90
    adc c                                         ; $689f: $89
    cp [hl]                                       ; $68a0: $be
    sbc b                                         ; $68a1: $98
    sub d                                         ; $68a2: $92
    sbc $e7                                       ; $68a3: $de $e7
    ld b, l                                       ; $68a5: $45
    call Call_064_54c1                            ; $68a6: $cd $c1 $54
    ld c, b                                       ; $68a9: $48
    xor [hl]                                      ; $68aa: $ae
    rst $38                                       ; $68ab: $ff
    jp hl                                         ; $68ac: $e9


    ld c, [hl]                                    ; $68ad: $4e
    push de                                       ; $68ae: $d5
    push af                                       ; $68af: $f5
    ld b, [hl]                                    ; $68b0: $46
    jp $bf72                                      ; $68b1: $c3 $72 $bf


    sub a                                         ; $68b4: $97
    db $eb                                        ; $68b5: $eb
    xor e                                         ; $68b6: $ab
    ld [$391f], a                                 ; $68b7: $ea $1f $39
    call nc, $a3f7                                ; $68ba: $d4 $f7 $a3
    ld d, l                                       ; $68bd: $55
    ld [hl], $8e                                  ; $68be: $36 $8e
    and c                                         ; $68c0: $a1
    rst $28                                       ; $68c1: $ef
    ld d, d                                       ; $68c2: $52
    sub b                                         ; $68c3: $90
    ld [hl], d                                    ; $68c4: $72
    ld h, h                                       ; $68c5: $64
    db $dd                                        ; $68c6: $dd
    dec b                                         ; $68c7: $05
    add hl, de                                    ; $68c8: $19
    ld l, d                                       ; $68c9: $6a
    ld e, l                                       ; $68ca: $5d
    push hl                                       ; $68cb: $e5
    rst $08                                       ; $68cc: $cf
    db $10                                        ; $68cd: $10
    call nz, Call_064_5b42                        ; $68ce: $c4 $42 $5b
    ei                                            ; $68d1: $fb
    rst $08                                       ; $68d2: $cf
    call nc, $bbdc                                ; $68d3: $d4 $dc $bb
    ld [$d704], sp                                ; $68d6: $08 $04 $d7
    ld [hl], d                                    ; $68d9: $72
    ld h, [hl]                                    ; $68da: $66
    sub b                                         ; $68db: $90
    sbc l                                         ; $68dc: $9d
    cp c                                          ; $68dd: $b9
    sub e                                         ; $68de: $93
    adc a                                         ; $68df: $8f
    ccf                                           ; $68e0: $3f
    ld h, l                                       ; $68e1: $65
    and c                                         ; $68e2: $a1
    ld c, h                                       ; $68e3: $4c
    ld b, c                                       ; $68e4: $41
    sbc c                                         ; $68e5: $99
    inc hl                                        ; $68e6: $23
    halt                                          ; $68e7: $76
    xor [hl]                                      ; $68e8: $ae
    dec a                                         ; $68e9: $3d
    inc d                                         ; $68ea: $14
    ld h, d                                       ; $68eb: $62
    ccf                                           ; $68ec: $3f
    cp c                                          ; $68ed: $b9
    ld e, d                                       ; $68ee: $5a
    push de                                       ; $68ef: $d5
    ld d, [hl]                                    ; $68f0: $56
    cp d                                          ; $68f1: $ba
    ld d, [hl]                                    ; $68f2: $56
    set 7, l                                      ; $68f3: $cb $fd
    ld [bc], a                                    ; $68f5: $02
    sub a                                         ; $68f6: $97
    ld e, c                                       ; $68f7: $59
    ld sp, $b104                                  ; $68f8: $31 $04 $b1
    call z, $8639                                 ; $68fb: $cc $39 $86
    ld a, $0b                                     ; $68fe: $3e $0b
    ld a, [$017e]                                 ; $6900: $fa $7e $01
    rst $00                                       ; $6903: $c7
    sbc [hl]                                      ; $6904: $9e
    ld a, e                                       ; $6905: $7b
    ld [c], a                                     ; $6906: $e2
    ld e, [hl]                                    ; $6907: $5e
    rst $00                                       ; $6908: $c7
    sbc l                                         ; $6909: $9d
    ld a, e                                       ; $690a: $7b
    ld [c], a                                     ; $690b: $e2
    ld e, [hl]                                    ; $690c: $5e
    ld l, l                                       ; $690d: $6d
    ld a, [$ab42]                                 ; $690e: $fa $42 $ab
    ld b, b                                       ; $6911: $40
    db $ec                                        ; $6912: $ec
    inc a                                         ; $6913: $3c
    db $eb                                        ; $6914: $eb
    dec b                                         ; $6915: $05
    ld l, l                                       ; $6916: $6d
    ld a, [$37f8]                                 ; $6917: $fa $f8 $37
    sbc h                                         ; $691a: $9c
    dec sp                                        ; $691b: $3b
    rst $30                                       ; $691c: $f7
    call nz, $ba1d                                ; $691d: $c4 $1d $ba
    ld d, d                                       ; $6920: $52
    ei                                            ; $6921: $fb
    dec bc                                        ; $6922: $0b
    ld l, l                                       ; $6923: $6d
    ld a, [$1062]                                 ; $6924: $fa $62 $10
    ld [hl], h                                    ; $6927: $74
    xor $dc                                       ; $6928: $ee $dc
    inc de                                        ; $692a: $13
    ld [hl], a                                    ; $692b: $77
    add sp, $4a                                   ; $692c: $e8 $4a
    db $ed                                        ; $692e: $ed
    cpl                                           ; $692f: $2f
    db $ed                                        ; $6930: $ed
    ld sp, $a1d4                                  ; $6931: $31 $d4 $a1
    ld a, $50                                     ; $6934: $3e $50
    jp z, $bdfb                                   ; $6936: $ca $fb $bd

    dec sp                                        ; $6939: $3b
    adc l                                         ; $693a: $8d
    ld e, [hl]                                    ; $693b: $5e
    db $fd                                        ; $693c: $fd
    ld c, a                                       ; $693d: $4f
    ld [hl], a                                    ; $693e: $77
    xor [hl]                                      ; $693f: $ae
    push de                                       ; $6940: $d5
    call c, $4ef9                                 ; $6941: $dc $f9 $4e
    ld [$1ec3], a                                 ; $6944: $ea $c3 $1e
    ld l, c                                       ; $6947: $69
    ld d, l                                       ; $6948: $55
    cp l                                          ; $6949: $bd
    ld d, b                                       ; $694a: $50
    add $19                                       ; $694b: $c6 $19
    ld a, [hl-]                                   ; $694d: $3a
    ld a, $14                                     ; $694e: $3e $14
    pop bc                                        ; $6950: $c1
    xor c                                         ; $6951: $a9
    sub b                                         ; $6952: $90
    ld c, h                                       ; $6953: $4c
    ld e, e                                       ; $6954: $5b
    ld b, e                                       ; $6955: $43
    ld c, a                                       ; $6956: $4f
    db $f4                                        ; $6957: $f4
    ld d, b                                       ; $6958: $50
    rra                                           ; $6959: $1f
    rst $38                                       ; $695a: $ff
    ld [c], a                                     ; $695b: $e2
    add l                                         ; $695c: $85
    or d                                          ; $695d: $b2
    add [hl]                                      ; $695e: $86
    adc e                                         ; $695f: $8b
    ld b, [hl]                                    ; $6960: $46
    ret nc                                        ; $6961: $d0

    rst $30                                       ; $6962: $f7
    dec bc                                        ; $6963: $0b
    sub a                                         ; $6964: $97
    scf                                           ; $6965: $37
    ld [hl], e                                    ; $6966: $73
    xor b                                         ; $6967: $a8
    xor a                                         ; $6968: $af
    ld d, e                                       ; $6969: $53
    dec de                                        ; $696a: $1b
    adc $31                                       ; $696b: $ce $31
    dec [hl]                                      ; $696d: $35
    rla                                           ; $696e: $17
    add l                                         ; $696f: $85
    inc e                                         ; $6970: $1c
    and a                                         ; $6971: $a7
    and [hl]                                      ; $6972: $a6
    ld [hl], a                                    ; $6973: $77
    ld b, a                                       ; $6974: $47
    ld hl, $bd1f                                  ; $6975: $21 $1f $bd
    rst $38                                       ; $6978: $ff
    ld [hl], h                                    ; $6979: $74
    ld c, [hl]                                    ; $697a: $4e
    ld a, l                                       ; $697b: $7d
    sbc c                                         ; $697c: $99
    ld a, c                                       ; $697d: $79
    rst $20                                       ; $697e: $e7
    dec sp                                        ; $697f: $3b
    xor c                                         ; $6980: $a9
    rrca                                          ; $6981: $0f
    ld a, e                                       ; $6982: $7b
    and h                                         ; $6983: $a4
    ld d, l                                       ; $6984: $55
    push af                                       ; $6985: $f5
    ld b, d                                       ; $6986: $42
    add hl, de                                    ; $6987: $19
    ld h, a                                       ; $6988: $67
    add sp, -$08                                  ; $6989: $e8 $f8
    ld d, b                                       ; $698b: $50
    inc b                                         ; $698c: $04
    and a                                         ; $698d: $a7
    ld b, d                                       ; $698e: $42
    ld a, [c]                                     ; $698f: $f2
    ld h, d                                       ; $6990: $62
    ld c, d                                       ; $6991: $4a
    ld a, d                                       ; $6992: $7a
    inc c                                         ; $6993: $0c
    ld a, l                                       ; $6994: $7d
    sub l                                         ; $6995: $95
    ld b, e                                       ; $6996: $43
    adc [hl]                                      ; $6997: $8e
    and h                                         ; $6998: $a4
    ld d, e                                       ; $6999: $53
    ld a, d                                       ; $699a: $7a
    db $eb                                        ; $699b: $eb
    ld a, [hl]                                    ; $699c: $7e
    ld bc, $fe87                                  ; $699d: $01 $87 $fe
    db $d3                                        ; $69a0: $d3
    rst $10                                       ; $69a1: $d7
    ld l, d                                       ; $69a2: $6a
    xor $f7                                       ; $69a3: $ee $f7
    rlca                                          ; $69a5: $07
    inc b                                         ; $69a6: $04
    db $dd                                        ; $69a7: $dd
    and c                                         ; $69a8: $a1
    ld a, b                                       ; $69a9: $78
    rst $20                                       ; $69aa: $e7
    dec sp                                        ; $69ab: $3b
    xor c                                         ; $69ac: $a9
    rrca                                          ; $69ad: $0f
    ld a, e                                       ; $69ae: $7b
    and h                                         ; $69af: $a4
    ld d, l                                       ; $69b0: $55
    push af                                       ; $69b1: $f5
    ld b, d                                       ; $69b2: $42
    add hl, de                                    ; $69b3: $19
    ld h, a                                       ; $69b4: $67
    add sp, -$08                                  ; $69b5: $e8 $f8
    ld d, b                                       ; $69b7: $50
    inc b                                         ; $69b8: $04
    and a                                         ; $69b9: $a7
    ld b, d                                       ; $69ba: $42
    ld a, [c]                                     ; $69bb: $f2
    cp l                                          ; $69bc: $bd
    di                                            ; $69bd: $f3
    ld a, [$8203]                                 ; $69be: $fa $03 $82
    xor $50                                       ; $69c1: $ee $50
    inc a                                         ; $69c3: $3c
    dec d                                         ; $69c4: $15
    sub d                                         ; $69c5: $92
    rst $10                                       ; $69c6: $d7
    ld c, b                                       ; $69c7: $48
    adc d                                         ; $69c8: $8a
    and b                                         ; $69c9: $a0
    ld [hl], e                                    ; $69ca: $73
    and c                                         ; $69cb: $a1
    ld b, l                                       ; $69cc: $45
    dec de                                        ; $69cd: $1b
    add hl, de                                    ; $69ce: $19
    ld b, e                                       ; $69cf: $43
    dec e                                         ; $69d0: $1d
    ld [$8c7b], a                                 ; $69d1: $ea $7b $8c
    xor e                                         ; $69d4: $ab
    ld a, [hl-]                                   ; $69d5: $3a
    ld d, c                                       ; $69d6: $51
    and d                                         ; $69d7: $a2
    xor [hl]                                      ; $69d8: $ae
    ld l, e                                       ; $69d9: $6b
    and h                                         ; $69da: $a4
    ld e, [hl]                                    ; $69db: $5e
    sbc h                                         ; $69dc: $9c
    ld b, e                                       ; $69dd: $43
    ccf                                           ; $69de: $3f
    add e                                         ; $69df: $83
    ld e, c                                       ; $69e0: $59
    and [hl]                                      ; $69e1: $a6
    ld b, d                                       ; $69e2: $42
    or d                                          ; $69e3: $b2
    ld a, [bc]                                    ; $69e4: $0a
    ld c, a                                       ; $69e5: $4f
    inc bc                                        ; $69e6: $03
    db $e4                                        ; $69e7: $e4
    inc sp                                        ; $69e8: $33
    inc b                                         ; $69e9: $04
    cp c                                          ; $69ea: $b9
    ld e, a                                       ; $69eb: $5f
    rlca                                          ; $69ec: $07
    ld e, h                                       ; $69ed: $5c
    ld b, [hl]                                    ; $69ee: $46
    cp $1c                                        ; $69ef: $fe $1c
    ld c, c                                       ; $69f1: $49
    ld c, l                                       ; $69f2: $4d
    sbc $e7                                       ; $69f3: $de $e7
    ld e, l                                       ; $69f5: $5d
    rst $28                                       ; $69f6: $ef
    ld e, a                                       ; $69f7: $5f
    cp e                                          ; $69f8: $bb
    dec [hl]                                      ; $69f9: $35
    rst $00                                       ; $69fa: $c7
    ld [hl], c                                    ; $69fb: $71
    inc c                                         ; $69fc: $0c
    cp l                                          ; $69fd: $bd
    add e                                         ; $69fe: $83
    inc d                                         ; $69ff: $14
    and a                                         ; $6a00: $a7
    ld a, b                                       ; $6a01: $78
    sub l                                         ; $6a02: $95
    jp nc, Jump_064_738b                          ; $6a03: $d2 $8b $73

    rst $20                                       ; $6a06: $e7
    dec sp                                        ; $6a07: $3b
    xor c                                         ; $6a08: $a9
    rrca                                          ; $6a09: $0f
    ld a, e                                       ; $6a0a: $7b
    and h                                         ; $6a0b: $a4
    ld d, l                                       ; $6a0c: $55
    push af                                       ; $6a0d: $f5
    ld b, d                                       ; $6a0e: $42
    add hl, de                                    ; $6a0f: $19
    ld h, a                                       ; $6a10: $67
    add sp, -$08                                  ; $6a11: $e8 $f8
    ld d, b                                       ; $6a13: $50
    inc b                                         ; $6a14: $04
    and a                                         ; $6a15: $a7
    ld b, d                                       ; $6a16: $42
    ld a, [c]                                     ; $6a17: $f2
    ld h, b                                       ; $6a18: $60

jr_064_6a19:
    xor l                                         ; $6a19: $ad
    cp $59                                        ; $6a1a: $fe $59
    cpl                                           ; $6a1c: $2f
    db $dd                                        ; $6a1d: $dd
    xor l                                         ; $6a1e: $ad
    xor a                                         ; $6a1f: $af
    sub h                                         ; $6a20: $94
    di                                            ; $6a21: $f3
    ld a, [hl]                                    ; $6a22: $7e
    ld bc, $966d                                  ; $6a23: $01 $6d $96
    ld d, l                                       ; $6a26: $55
    and [hl]                                      ; $6a27: $a6
    and h                                         ; $6a28: $a4
    ld [hl], d                                    ; $6a29: $72
    ld h, l                                       ; $6a2a: $65
    rst $28                                       ; $6a2b: $ef
    ld a, h                                       ; $6a2c: $7c
    daa                                           ; $6a2d: $27
    push af                                       ; $6a2e: $f5
    ld h, c                                       ; $6a2f: $61
    adc a                                         ; $6a30: $8f
    or h                                          ; $6a31: $b4
    xor d                                         ; $6a32: $aa
    ld e, [hl]                                    ; $6a33: $5e
    jr z, jr_064_6a19                             ; $6a34: $28 $e3

    inc c                                         ; $6a36: $0c
    dec e                                         ; $6a37: $1d
    rra                                           ; $6a38: $1f
    adc d                                         ; $6a39: $8a
    ldh [rHDMA4], a                               ; $6a3a: $e0 $54
    ld c, b                                       ; $6a3c: $48
    ld d, [hl]                                    ; $6a3d: $56
    pop hl                                        ; $6a3e: $e1
    ld l, c                                       ; $6a3f: $69
    add b                                         ; $6a40: $80
    ld a, h                                       ; $6a41: $7c
    add [hl]                                      ; $6a42: $86

Jump_064_6a43:
    jr nz, jr_064_6a98                            ; $6a43: $20 $53

    ld c, c                                       ; $6a45: $49
    adc c                                         ; $6a46: $89
    sbc l                                         ; $6a47: $9d
    xor e                                         ; $6a48: $ab
    ld [hl], h                                    ; $6a49: $74
    ld c, d                                       ; $6a4a: $4a
    ld b, a                                       ; $6a4b: $47
    pop af                                        ; $6a4c: $f1
    call c, $73bb                                 ; $6a4d: $dc $bb $73
    ld a, d                                       ; $6a50: $7a
    and l                                         ; $6a51: $a5
    ld h, b                                       ; $6a52: $60
    db $fc                                        ; $6a53: $fc
    and l                                         ; $6a54: $a5
    ld b, e                                       ; $6a55: $43
    pop af                                        ; $6a56: $f1
    ld d, h                                       ; $6a57: $54
    ld c, b                                       ; $6a58: $48
    sbc $7d                                       ; $6a59: $de $7d
    rst $18                                       ; $6a5b: $df
    ld [hl], e                                    ; $6a5c: $73
    rst $28                                       ; $6a5d: $ef
    ld c, [hl]                                    ; $6a5e: $4e
    jp c, Jump_064_786a                           ; $6a5f: $da $6a $78

    ld e, $8f                                     ; $6a62: $1e $8f
    ld bc, $6b9d                                  ; $6a64: $01 $9d $6b
    cp b                                          ; $6a67: $b8
    inc d                                         ; $6a68: $14
    rrca                                          ; $6a69: $0f
    db $dd                                        ; $6a6a: $dd
    ld a, l                                       ; $6a6b: $7d
    cp a                                          ; $6a6c: $bf
    ld l, l                                       ; $6a6d: $6d
    adc $45                                       ; $6a6e: $ce $45
    jr nz, @-$16                                  ; $6a70: $20 $e8

    cp d                                          ; $6a72: $ba
    inc de                                        ; $6a73: $13
    ld c, a                                       ; $6a74: $4f
    jr c, @+$73                                   ; $6a75: $38 $71

    rst $20                                       ; $6a77: $e7
    dec sp                                        ; $6a78: $3b
    xor c                                         ; $6a79: $a9
    rrca                                          ; $6a7a: $0f
    ld a, e                                       ; $6a7b: $7b
    and h                                         ; $6a7c: $a4
    ld d, l                                       ; $6a7d: $55
    push af                                       ; $6a7e: $f5
    ld b, d                                       ; $6a7f: $42
    add hl, de                                    ; $6a80: $19
    ld h, a                                       ; $6a81: $67
    add sp, -$08                                  ; $6a82: $e8 $f8
    ld d, b                                       ; $6a84: $50
    inc b                                         ; $6a85: $04
    and a                                         ; $6a86: $a7
    ld b, d                                       ; $6a87: $42
    or d                                          ; $6a88: $b2
    ld a, [bc]                                    ; $6a89: $0a
    ld c, a                                       ; $6a8a: $4f
    inc bc                                        ; $6a8b: $03

jr_064_6a8c:
    db $e4                                        ; $6a8c: $e4
    inc sp                                        ; $6a8d: $33
    inc b                                         ; $6a8e: $04
    ld [hl], c                                    ; $6a8f: $71
    ld c, $04                                     ; $6a90: $0e $04
    pop de                                        ; $6a92: $d1
    sbc l                                         ; $6a93: $9d
    rst $20                                       ; $6a94: $e7
    adc b                                         ; $6a95: $88
    sbc l                                         ; $6a96: $9d
    ld d, e                                       ; $6a97: $53

jr_064_6a98:
    sbc a                                         ; $6a98: $9f
    ld e, l                                       ; $6a99: $5d
    ld b, d                                       ; $6a9a: $42
    add d                                         ; $6a9b: $82
    di                                            ; $6a9c: $f3
    ld a, [hl]                                    ; $6a9d: $7e
    ld bc, $ce6d                                  ; $6a9e: $01 $6d $ce
    ld b, l                                       ; $6aa1: $45
    jr nz, jr_064_6a8c                            ; $6aa2: $20 $e8

    cp d                                          ; $6aa4: $ba
    ld d, e                                       ; $6aa5: $53
    ld c, a                                       ; $6aa6: $4f
    ret c                                         ; $6aa7: $d8

    ld sp, hl                                     ; $6aa8: $f9
    ld c, [hl]                                    ; $6aa9: $4e
    ld [$1ec3], a                                 ; $6aaa: $ea $c3 $1e
    ld l, c                                       ; $6aad: $69
    ld d, l                                       ; $6aae: $55

jr_064_6aaf:
    cp l                                          ; $6aaf: $bd
    ld d, b                                       ; $6ab0: $50
    add $19                                       ; $6ab1: $c6 $19
    ld a, [hl-]                                   ; $6ab3: $3a
    ld a, $14                                     ; $6ab4: $3e $14

jr_064_6ab6:
    pop bc                                        ; $6ab6: $c1
    xor c                                         ; $6ab7: $a9
    sub b                                         ; $6ab8: $90
    xor h                                         ; $6ab9: $ac
    jp nz, Jump_000_00d3                          ; $6aba: $c2 $d3 $00

    ld sp, hl                                     ; $6abd: $f9
    inc c                                         ; $6abe: $0c
    ld b, c                                       ; $6abf: $41
    sbc h                                         ; $6ac0: $9c
    rst $30                                       ; $6ac1: $f7
    jp c, $a8bc                                   ; $6ac2: $da $bc $a8

    cp e                                          ; $6ac5: $bb
    or d                                          ; $6ac6: $b2
    and a                                         ; $6ac7: $a7
    cp [hl]                                       ; $6ac8: $be
    adc h                                         ; $6ac9: $8c
    and h                                         ; $6aca: $a4
    ld d, e                                       ; $6acb: $53
    ld a, d                                       ; $6acc: $7a
    res 6, h                                      ; $6acd: $cb $b4
    ld c, c                                       ; $6acf: $49
    jr z, jr_064_6aaf                             ; $6ad0: $28 $dd

    ld [hl], e                                    ; $6ad2: $73
    ld l, $a2                                     ; $6ad3: $2e $a2
    add a                                         ; $6ad5: $87
    sbc $8d                                       ; $6ad6: $de $8d
    ld e, [hl]                                    ; $6ad8: $5e
    jr z, @-$73                                   ; $6ad9: $28 $8b

    sbc d                                         ; $6adb: $9a
    ld d, e                                       ; $6adc: $53
    ld e, a                                       ; $6add: $5f
    ld d, $53                                     ; $6ade: $16 $53
    jp nc, Jump_064_4843                          ; $6ae0: $d2 $43 $48

    dec hl                                        ; $6ae3: $2b
    or $aa                                        ; $6ae4: $f6 $aa
    ld a, [$0ee8]                                 ; $6ae6: $fa $e8 $0e
    push bc                                       ; $6ae9: $c5
    rst $30                                       ; $6aea: $f7
    dec bc                                        ; $6aeb: $0b
    ld l, l                                       ; $6aec: $6d
    adc $75                                       ; $6aed: $ce $75
    jr z, jr_064_6ab6                             ; $6aef: $28 $c5

    add hl, sp                                    ; $6af1: $39
    add hl, bc                                    ; $6af2: $09
    and l                                         ; $6af3: $a5
    ld a, e                                       ; $6af4: $7b
    rst $20                                       ; $6af5: $e7
    dec sp                                        ; $6af6: $3b
    xor c                                         ; $6af7: $a9
    rrca                                          ; $6af8: $0f
    ld a, e                                       ; $6af9: $7b
    and h                                         ; $6afa: $a4
    ld d, l                                       ; $6afb: $55
    push af                                       ; $6afc: $f5
    ld b, d                                       ; $6afd: $42
    add hl, de                                    ; $6afe: $19
    ld h, a                                       ; $6aff: $67
    add sp, -$08                                  ; $6b00: $e8 $f8
    ld d, b                                       ; $6b02: $50
    inc b                                         ; $6b03: $04
    and a                                         ; $6b04: $a7
    ld b, d                                       ; $6b05: $42
    ld a, [c]                                     ; $6b06: $f2
    xor d                                         ; $6b07: $aa
    and d                                         ; $6b08: $a2
    db $eb                                        ; $6b09: $eb
    sbc l                                         ; $6b0a: $9d
    sub a                                         ; $6b0b: $97
    cp d                                          ; $6b0c: $ba
    jr nz, jr_064_6b3e                            ; $6b0d: $20 $2f

    inc a                                         ; $6b0f: $3c
    ld l, e                                       ; $6b10: $6b
    dec [hl]                                      ; $6b11: $35
    rst $10                                       ; $6b12: $d7
    ld e, $0a                                     ; $6b13: $1e $0a
    or c                                          ; $6b15: $b1
    sbc a                                         ; $6b16: $9f
    ld e, h                                       ; $6b17: $5c
    rst $28                                       ; $6b18: $ef
    dec e                                         ; $6b19: $1d
    ld a, [c]                                     ; $6b1a: $f2
    jp nz, Jump_064_6a43                          ; $6b1b: $c2 $43 $6a

    ld c, d                                       ; $6b1e: $4a
    ld [hl], c                                    ; $6b1f: $71
    add a                                         ; $6b20: $87
    jp nz, $c473                                  ; $6b21: $c2 $73 $c4

    adc $45                                       ; $6b24: $ce $45
    ld hl, $34f7                                  ; $6b26: $21 $f7 $34
    xor e                                         ; $6b29: $ab
    ld a, [c]                                     ; $6b2a: $f2
    call nc, $a197                                ; $6b2b: $d4 $97 $a1
    cp [hl]                                       ; $6b2e: $be
    ld [$3d04], sp                                ; $6b2f: $08 $04 $3d
    add hl, bc                                    ; $6b32: $09
    and l                                         ; $6b33: $a5
    ei                                            ; $6b34: $fb
    ld a, [hl]                                    ; $6b35: $7e
    ld bc, $31ed                                  ; $6b36: $01 $ed $31
    call nc, $bea1                                ; $6b39: $d4 $a1 $be
    add [hl]                                      ; $6b3c: $86
    add [hl]                                      ; $6b3d: $86

jr_064_6b3e:
    reti                                          ; $6b3e: $d9


    add hl, sp                                    ; $6b3f: $39
    rst $30                                       ; $6b40: $f7
    xor $1c                                       ; $6b41: $ee $1c
    ld sp, hl                                     ; $6b43: $f9
    dec b                                         ; $6b44: $05
    cp e                                          ; $6b45: $bb
    ld [hl], e                                    ; $6b46: $73
    ld [$0c65], sp                                ; $6b47: $08 $65 $0c
    ld a, l                                       ; $6b4a: $7d
    ld d, c                                       ; $6b4b: $51
    ld [hl], a                                    ; $6b4c: $77
    ld a, d                                       ; $6b4d: $7a
    rst $20                                       ; $6b4e: $e7
    dec sp                                        ; $6b4f: $3b
    xor c                                         ; $6b50: $a9
    rrca                                          ; $6b51: $0f
    ld a, e                                       ; $6b52: $7b
    and h                                         ; $6b53: $a4
    ld d, l                                       ; $6b54: $55
    push af                                       ; $6b55: $f5
    ld b, d                                       ; $6b56: $42
    add hl, de                                    ; $6b57: $19
    ld h, a                                       ; $6b58: $67
    add sp, -$08                                  ; $6b59: $e8 $f8
    ld d, b                                       ; $6b5b: $50
    inc b                                         ; $6b5c: $04
    and a                                         ; $6b5d: $a7
    ld b, d                                       ; $6b5e: $42
    ld a, [c]                                     ; $6b5f: $f2
    call nc, $a197                                ; $6b60: $d4 $97 $a1
    cp [hl]                                       ; $6b63: $be
    cp $63                                        ; $6b64: $fe $63
    cpl                                           ; $6b66: $2f
    ld [$4f4e], a                                 ; $6b67: $ea $4e $4f
    add l                                         ; $6b6a: $85
    and a                                         ; $6b6b: $a7
    ld bc, $19f2                                  ; $6b6c: $01 $f2 $19
    add d                                         ; $6b6f: $82
    jr c, @-$0f                                   ; $6b70: $38 $ef

    rla                                           ; $6b72: $17
    rst $20                                       ; $6b73: $e7
    pop af                                        ; $6b74: $f1
    ld h, d                                       ; $6b75: $62
    ld c, d                                       ; $6b76: $4a
    ld a, d                                       ; $6b77: $7a
    sub [hl]                                      ; $6b78: $96
    dec [hl]                                      ; $6b79: $35
    db $f4                                        ; $6b7a: $f4
    jp z, Jump_064_739e                           ; $6b7b: $ca $9e $73

    and b                                         ; $6b7e: $a0
    sub h                                         ; $6b7f: $94
    ld d, a                                       ; $6b80: $57
    sbc e                                         ; $6b81: $9b
    xor e                                         ; $6b82: $ab
    db $dd                                        ; $6b83: $dd
    rrca                                          ; $6b84: $0f
    rst $18                                       ; $6b85: $df
    dec sp                                        ; $6b86: $3b
    ldh [$b2], a                                  ; $6b87: $e0 $b2
    ld [$af1e], a                                 ; $6b89: $ea $1e $af
    pop hl                                        ; $6b8c: $e1
    and d                                         ; $6b8d: $a2
    ld de, $af64                                  ; $6b8e: $11 $64 $af
    add [hl]                                      ; $6b91: $86
    ld h, a                                       ; $6b92: $67
    xor l                                         ; $6b93: $ad
    rst $18                                       ; $6b94: $df
    add d                                         ; $6b95: $82
    adc h                                         ; $6b96: $8c
    add hl, hl                                    ; $6b97: $29
    add l                                         ; $6b98: $85
    rst $28                                       ; $6b99: $ef
    rla                                           ; $6b9a: $17
    ld d, a                                       ; $6b9b: $57
    add [hl]                                      ; $6b9c: $86
    db $e4                                        ; $6b9d: $e4
    and h                                         ; $6b9e: $a4
    jr nc, @+$3d                                  ; $6b9f: $30 $3b

    rst $20                                       ; $6ba1: $e7
    sbc h                                         ; $6ba2: $9c
    ld c, [hl]                                    ; $6ba3: $4e
    ld l, d                                       ; $6ba4: $6a
    ld c, d                                       ; $6ba5: $4a
    ld [hl], c                                    ; $6ba6: $71
    add a                                         ; $6ba7: $87
    ld [c], a                                     ; $6ba8: $e2
    ld a, e                                       ; $6ba9: $7b
    ld l, l                                       ; $6baa: $6d
    ld c, [hl]                                    ; $6bab: $4e
    rst $10                                       ; $6bac: $d7
    ld d, c                                       ; $6bad: $51
    jp hl                                         ; $6bae: $e9


    ld [c], a                                     ; $6baf: $e2
    ld b, l                                       ; $6bb0: $45
    call nc, $9c5e                                ; $6bb1: $d4 $5e $9c
    ld b, e                                       ; $6bb4: $43
    jr z, @+$4d                                   ; $6bb5: $28 $4b

    ld e, l                                       ; $6bb7: $5d
    sub b                                         ; $6bb8: $90
    rlca                                          ; $6bb9: $07
    ld c, e                                       ; $6bba: $4b
    db $fd                                        ; $6bbb: $fd
    ld a, c                                       ; $6bbc: $79
    call z, Call_000_0bf7                         ; $6bbd: $cc $f7 $0b
    sub a                                         ; $6bc0: $97
    ld a, l                                       ; $6bc1: $7d
    ld e, h                                       ; $6bc2: $5c
    ld c, h                                       ; $6bc3: $4c
    ld c, c                                       ; $6bc4: $49
    rst $28                                       ; $6bc5: $ef
    ld sp, $f3ee                                  ; $6bc6: $31 $ee $f3
    ld h, d                                       ; $6bc9: $62
    xor b                                         ; $6bca: $a8
    ld e, [hl]                                    ; $6bcb: $5e
    ret                                           ; $6bcc: $c9


    cpl                                           ; $6bcd: $2f
    ret nz                                        ; $6bce: $c0

    dec c                                         ; $6bcf: $0d
    cp l                                          ; $6bd0: $bd
    or d                                          ; $6bd1: $b2
    ld [hl], e                                    ; $6bd2: $73
    ld [de], a                                    ; $6bd3: $12
    adc d                                         ; $6bd4: $8a
    ld h, l                                       ; $6bd5: $65
    and c                                         ; $6bd6: $a1
    push af                                       ; $6bd7: $f5
    ld d, b                                       ; $6bd8: $50
    ld d, d                                       ; $6bd9: $52
    push de                                       ; $6bda: $d5
    ldh a, [$90]                                  ; $6bdb: $f0 $90
    add $7b                                       ; $6bdd: $c6 $7b
    ld l, l                                       ; $6bdf: $6d
    sbc [hl]                                      ; $6be0: $9e
    ld [hl], e                                    ; $6be1: $73
    ld d, c                                       ; $6be2: $51
    ret z                                         ; $6be3: $c8

    or c                                          ; $6be4: $b1
    ld l, $c5                                     ; $6be5: $2e $c5
    ei                                            ; $6be7: $fb
    inc a                                         ; $6be8: $3c

jr_064_6be9:
    db $fc                                        ; $6be9: $fc
    ld d, d                                       ; $6bea: $52
    cp l                                          ; $6beb: $bd
    rst $00                                       ; $6bec: $c7
    ld a, b                                       ; $6bed: $78
    cp a                                          ; $6bee: $bf
    rlca                                          ; $6bef: $07
    ld e, h                                       ; $6bf0: $5c
    sub $70                                       ; $6bf1: $d6 $70
    pop de                                        ; $6bf3: $d1
    ld [$57b2], sp                                ; $6bf4: $08 $b2 $57
    jp $cb33                                      ; $6bf7: $c3 $33 $cb


    ld a, [hl+]                                   ; $6bfa: $2a
    ld a, a                                       ; $6bfb: $7f
    sub $3d                                       ; $6bfc: $d6 $3d
    jr jr_064_6be9                                ; $6bfe: $18 $e9

    cp [hl]                                       ; $6c00: $be
    ld [$9e8a], sp                                ; $6c01: $08 $8a $9e
    ld a, e                                       ; $6c04: $7b
    inc l                                         ; $6c05: $2c
    xor e                                         ; $6c06: $ab
    call $5015                                    ; $6c07: $cd $15 $50
    and e                                         ; $6c0a: $a3
    cp e                                          ; $6c0b: $bb
    inc l                                         ; $6c0c: $2c
    or h                                          ; $6c0d: $b4
    ld b, $eb                                     ; $6c0e: $06 $eb
    ldh a, [$08]                                  ; $6c10: $f0 $08
    ld c, b                                       ; $6c12: $48
    or c                                          ; $6c13: $b1

jr_064_6c14:
    inc l                                         ; $6c14: $2c
    sub h                                         ; $6c15: $94
    ld e, c                                       ; $6c16: $59
    sub b                                         ; $6c17: $90
    cp l                                          ; $6c18: $bd
    ld a, [de]                                    ; $6c19: $1a
    sbc [hl]                                      ; $6c1a: $9e
    ld e, c                                       ; $6c1b: $59
    sub $d0                                       ; $6c1c: $d6 $d0
    dec hl                                        ; $6c1e: $2b
    ei                                            ; $6c1f: $fb
    ld a, [hl]                                    ; $6c20: $7e
    ld bc, $5e6d                                  ; $6c21: $01 $6d $5e
    dec hl                                        ; $6c24: $2b
    inc h                                         ; $6c25: $24
    daa                                           ; $6c26: $27
    add l                                         ; $6c27: $85
    reti                                          ; $6c28: $d9


    cp c                                          ; $6c29: $b9
    ld a, [$d350]                                 ; $6c2a: $fa $50 $d3
    cp c                                          ; $6c2d: $b9
    jr z, jr_064_6c14                             ; $6c2e: $28 $e4

    ld e, b                                       ; $6c30: $58
    and e                                         ; $6c31: $a3
    ld a, b                                       ; $6c32: $78
    xor l                                         ; $6c33: $ad
    ld h, $6d                                     ; $6c34: $26 $6d
    ld h, h                                       ; $6c36: $64
    inc c                                         ; $6c37: $0c
    ld [hl], l                                    ; $6c38: $75
    xor b                                         ; $6c39: $a8
    xor a                                         ; $6c3a: $af
    or [hl]                                       ; $6c3b: $b6
    xor b                                         ; $6c3c: $a8
    ld e, c                                       ; $6c3d: $59
    sbc h                                         ; $6c3e: $9c
    ld a, e                                       ; $6c3f: $7b
    and b                                         ; $6c40: $a0
    call c, Call_000_072f                         ; $6c41: $dc $2f $07
    ld e, h                                       ; $6c44: $5c
    ld b, [hl]                                    ; $6c45: $46
    cp $dc                                        ; $6c46: $fe $dc
    rst $28                                       ; $6c48: $ef
    inc c                                         ; $6c49: $0c
    cp b                                          ; $6c4a: $b8
    jp c, $d2b2                                   ; $6c4b: $da $b2 $d2

    cp e                                          ; $6c4e: $bb
    db $d3                                        ; $6c4f: $d3
    cp h                                          ; $6c50: $bc
    ld d, [hl]                                    ; $6c51: $56
    sub e                                         ; $6c52: $93
    ld [hl], $32                                  ; $6c53: $36 $32
    ld c, $89                                     ; $6c55: $0e $89
    ld e, a                                       ; $6c57: $5f
    add [hl]                                      ; $6c58: $86
    and $3d                                       ; $6c59: $e6 $3d
    ld b, c                                       ; $6c5b: $41
    and $dc                                       ; $6c5c: $e6 $dc
    rst $20                                       ; $6c5e: $e7
    sub c                                         ; $6c5f: $91
    ccf                                           ; $6c60: $3f
    or $aa                                        ; $6c61: $f6 $aa
    jp nc, $a63b                                  ; $6c63: $d2 $3b $a6

    rst $28                                       ; $6c66: $ef
    rla                                           ; $6c67: $17
    rst $20                                       ; $6c68: $e7
    pop af                                        ; $6c69: $f1
    ld a, [de]                                    ; $6c6a: $1a
    dec e                                         ; $6c6b: $1d
    ld h, d                                       ; $6c6c: $62
    xor a                                         ; $6c6d: $af
    dec d                                         ; $6c6e: $15
    cp d                                          ; $6c6f: $ba
    db $d3                                        ; $6c70: $d3
    inc a                                         ; $6c71: $3c
    rst $20                                       ; $6c72: $e7
    ret nc                                        ; $6c73: $d0

    ld [hl-], a                                   ; $6c74: $32
    adc e                                         ; $6c75: $8b
    dec hl                                        ; $6c76: $2b
    ld a, e                                       ; $6c77: $7b
    ld d, c                                       ; $6c78: $51
    ld c, b                                       ; $6c79: $48
    and c                                         ; $6c7a: $a1
    jp nc, $abdd                                  ; $6c7b: $d2 $dd $ab

    ld b, a                                       ; $6c7e: $47
    ld [hl], a                                    ; $6c7f: $77
    add hl, de                                    ; $6c80: $19
    ld sp, hl                                     ; $6c81: $f9
    di                                            ; $6c82: $f3
    ld a, [hl]                                    ; $6c83: $7e
    ld bc, $5c07                                  ; $6c84: $01 $07 $5c
    ld d, $43                                     ; $6c87: $16 $43
    rst $28                                       ; $6c89: $ef
    ld e, $55                                     ; $6c8a: $1e $55
    xor d                                         ; $6c8c: $aa
    ld a, [c]                                     ; $6c8d: $f2
    ld a, $8f                                     ; $6c8e: $3e $8f
    xor $32                                       ; $6c90: $ee $32
    ld a, [c]                                     ; $6c92: $f2
    rst $00                                       ; $6c93: $c7
    add sp, -$67                                  ; $6c94: $e8 $99
    and a                                         ; $6c96: $a7
    rst $20                                       ; $6c97: $e7
    ld h, b                                       ; $6c98: $60
    xor l                                         ; $6c99: $ad
    cpl                                           ; $6c9a: $2f
    ld l, b                                       ; $6c9b: $68
    ld e, c                                       ; $6c9c: $59
    inc d                                         ; $6c9d: $14
    ld [hl], d                                    ; $6c9e: $72
    or l                                          ; $6c9f: $b5
    cp c                                          ; $6ca0: $b9
    jr jr_064_6d1d                                ; $6ca1: $18 $7a

    rst $30                                       ; $6ca3: $f7
    add sp, $2e                                   ; $6ca4: $e8 $2e
    adc e                                         ; $6ca6: $8b
    xor b                                         ; $6ca7: $a8
    db $dd                                        ; $6ca8: $dd
    ld a, e                                       ; $6ca9: $7b
    and b                                         ; $6caa: $a0
    db $ec                                        ; $6cab: $ec
    ld [hl], c                                    ; $6cac: $71
    ld a, d                                       ; $6cad: $7a
    and d                                         ; $6cae: $a2
    ld h, c                                       ; $6caf: $61
    add [hl]                                      ; $6cb0: $86
    ld [hl], d                                    ; $6cb1: $72
    cp a                                          ; $6cb2: $bf
    ld l, l                                       ; $6cb3: $6d
    and $39                                       ; $6cb4: $e6 $39
    rlca                                          ; $6cb6: $07
    ld c, d                                       ; $6cb7: $4a
    ld a, c                                       ; $6cb8: $79
    or l                                          ; $6cb9: $b5
    cp c                                          ; $6cba: $b9
    jp c, $f0fd                                   ; $6cbb: $da $fd $f0

    ld a, $2f                                     ; $6cbe: $3e $2f
    and [hl]                                      ; $6cc0: $a6
    and h                                         ; $6cc1: $a4
    rst $30                                       ; $6cc2: $f7
    and e                                         ; $6cc3: $a3
    dec d                                         ; $6cc4: $15
    ld l, b                                       ; $6cc5: $68
    push de                                       ; $6cc6: $d5
    ei                                            ; $6cc7: $fb
    dec b                                         ; $6cc8: $05
    rlca                                          ; $6cc9: $07
    ld e, h                                       ; $6cca: $5c
    and $9c                                       ; $6ccb: $e6 $9c
    ld h, l                                       ; $6ccd: $65
    sub l                                         ; $6cce: $95
    ld c, d                                       ; $6ccf: $4a
    rst $28                                       ; $6cd0: $ef
    sbc $8f                                       ; $6cd1: $de $8f
    ld d, [hl]                                    ; $6cd3: $56
    ld sp, hl                                     ; $6cd4: $f9
    scf                                           ; $6cd5: $37
    and b                                         ; $6cd6: $a0
    inc bc                                        ; $6cd7: $03
    sbc e                                         ; $6cd8: $9b
    rst $28                                       ; $6cd9: $ef
    rla                                           ; $6cda: $17
    rlca                                          ; $6cdb: $07
    ld e, h                                       ; $6cdc: $5c
    ld b, [hl]                                    ; $6cdd: $46
    cp $5c                                        ; $6cde: $fe $5c
    ld b, h                                       ; $6ce0: $44
    db $ed                                        ; $6ce1: $ed
    cp h                                          ; $6ce2: $bc
    rlca                                          ; $6ce3: $07
    jp z, $203a                                   ; $6ce4: $ca $3a $20

    cpl                                           ; $6ce7: $2f
    ld [$d71f], a                                 ; $6ce8: $ea $1f $d7
    ld l, d                                       ; $6ceb: $6a
    ld c, $cd                                     ; $6cec: $0e $cd
    xor e                                         ; $6cee: $ab
    add b                                         ; $6cef: $80
    sub l                                         ; $6cf0: $95
    ld a, l                                       ; $6cf1: $7d
    cp a                                          ; $6cf2: $bf
    rlca                                          ; $6cf3: $07
    ld e, h                                       ; $6cf4: $5c
    and $5c                                       ; $6cf5: $e6 $5c
    and e                                         ; $6cf7: $a3
    dec sp                                        ; $6cf8: $3b
    ld [hl], $ef                                  ; $6cf9: $36 $ef
    ld sp, hl                                     ; $6cfb: $f9
    db $dd                                        ; $6cfc: $dd
    cp h                                          ; $6cfd: $bc
    db $10                                        ; $6cfe: $10
    dec sp                                        ; $6cff: $3b
    ld h, a                                       ; $6d00: $67
    ld e, [hl]                                    ; $6d01: $5e
    rst $38                                       ; $6d02: $ff
    add d                                         ; $6d03: $82
    ld d, l                                       ; $6d04: $55
    db $fd                                        ; $6d05: $fd
    ld b, $6d                                     ; $6d06: $06 $6d
    and c                                         ; $6d08: $a1
    xor h                                         ; $6d09: $ac
    add [hl]                                      ; $6d0a: $86
    rst $20                                       ; $6d0b: $e7
    pop af                                        ; $6d0c: $f1
    jr @-$2e                                      ; $6d0d: $18 $d0

    cp c                                          ; $6d0f: $b9
    ld d, [hl]                                    ; $6d10: $56
    add d                                         ; $6d11: $82
    ld d, d                                       ; $6d12: $52
    adc $a1                                       ; $6d13: $ce $a1
    ld a, c                                       ; $6d15: $79
    rrca                                          ; $6d16: $0f
    sub h                                         ; $6d17: $94
    pop bc                                        ; $6d18: $c1
    ld d, d                                       ; $6d19: $52
    ld d, e                                       ; $6d1a: $53
    adc d                                         ; $6d1b: $8a
    push hl                                       ; $6d1c: $e5

jr_064_6d1d:
    ld a, [hl]                                    ; $6d1d: $7e
    ld bc, $5c07                                  ; $6d1e: $01 $07 $5c
    sub $70                                       ; $6d21: $d6 $70
    pop de                                        ; $6d23: $d1
    ld [$57b2], sp                                ; $6d24: $08 $b2 $57
    jp $cb33                                      ; $6d27: $c3 $33 $cb


    ld d, h                                       ; $6d2a: $54
    rst $38                                       ; $6d2b: $ff
    adc b                                         ; $6d2c: $88
    ld e, [hl]                                    ; $6d2d: $5e
    jr z, jr_064_6d53                             ; $6d2e: $28 $23

    ld a, a                                       ; $6d30: $7f
    xor [hl]                                      ; $6d31: $ae
    ld [bc], a                                    ; $6d32: $02
    ld e, d                                       ; $6d33: $5a
    or $b3                                        ; $6d34: $f6 $b3
    ld h, c                                       ; $6d36: $61
    ld a, [hl-]                                   ; $6d37: $3a
    sbc d                                         ; $6d38: $9a
    ld b, a                                       ; $6d39: $47
    ld [hl], $13                                  ; $6d3a: $36 $13
    ld a, c                                       ; $6d3c: $79
    ld d, c                                       ; $6d3d: $51
    ret z                                         ; $6d3e: $c8

    ld a, l                                       ; $6d3f: $7d
    sbc [hl]                                      ; $6d40: $9e
    adc [hl]                                      ; $6d41: $8e
    sub c                                         ; $6d42: $91
    and [hl]                                      ; $6d43: $a6
    and e                                         ; $6d44: $a3
    rst $30                                       ; $6d45: $f7
    add b                                         ; $6d46: $80
    xor h                                         ; $6d47: $ac
    push de                                       ; $6d48: $d5
    ccf                                           ; $6d49: $3f
    sub $fb                                       ; $6d4a: $d6 $fb
    dec b                                         ; $6d4c: $05
    ld l, l                                       ; $6d4d: $6d
    and $39                                       ; $6d4e: $e6 $39
    rlca                                          ; $6d50: $07
    ld c, d                                       ; $6d51: $4a
    ld a, c                                       ; $6d52: $79

jr_064_6d53:
    cp a                                          ; $6d53: $bf
    ld [hl], a                                    ; $6d54: $77
    xor a                                         ; $6d55: $af
    dec d                                         ; $6d56: $15
    sub d                                         ; $6d57: $92
    sub e                                         ; $6d58: $93
    jp nz, Jump_064_5cec                          ; $6d59: $c2 $ec $5c

jr_064_6d5c:
    dec c                                         ; $6d5c: $0d
    rst $08                                       ; $6d5d: $cf
    and d                                         ; $6d5e: $a2
    ld h, [hl]                                    ; $6d5f: $66
    xor [hl]                                      ; $6d60: $ae
    add a                                         ; $6d61: $87
    ld a, b                                       ; $6d62: $78
    inc c                                         ; $6d63: $0c
    ld a, l                                       ; $6d64: $7d
    sbc a                                         ; $6d65: $9f
    rla                                           ; $6d66: $17
    ld d, e                                       ; $6d67: $53
    jp nc, Jump_000_356b                          ; $6d68: $d2 $6b $35

Call_064_6d6b:
    rst $10                                       ; $6d6b: $d7
    ld [hl], d                                    ; $6d6c: $72
    ld a, $5f                                     ; $6d6d: $3e $5f
    inc l                                         ; $6d6f: $2c
    inc a                                         ; $6d70: $3c
    dec e                                         ; $6d71: $1d
    dec hl                                        ; $6d72: $2b
    ld b, e                                       ; $6d73: $43
    rst $28                                       ; $6d74: $ef
    jr nz, jr_064_6d5c                            ; $6d75: $20 $e5

    ld a, [hl]                                    ; $6d77: $7e
    ld bc, $5c07                                  ; $6d78: $01 $07 $5c
    add $19                                       ; $6d7b: $c6 $19
    ld [hl], d                                    ; $6d7d: $72
    sbc a                                         ; $6d7e: $9f
    rst $30                                       ; $6d7f: $f7
    add b                                         ; $6d80: $80
    inc l                                         ; $6d81: $2c
    rst $38                                       ; $6d82: $ff
    di                                            ; $6d83: $f3
    ld a, b                                       ; $6d84: $78
    adc $3d                                       ; $6d85: $ce $3d
    ret nz                                        ; $6d87: $c0

    adc e                                         ; $6d88: $8b
    ld b, b                                       ; $6d89: $40
    ld e, h                                       ; $6d8a: $5c
    reti                                          ; $6d8b: $d9


    db $e3                                        ; $6d8c: $e3
    and h                                         ; $6d8d: $a4
    xor b                                         ; $6d8e: $a8
    ei                                            ; $6d8f: $fb
    dec b                                         ; $6d90: $05
    add a                                         ; $6d91: $87
    jp nz, Jump_064_78f3                          ; $6d92: $c2 $f3 $78

    inc c                                         ; $6d95: $0c
    add sp, $5c                                   ; $6d96: $e8 $5c
    db $fd                                        ; $6d98: $fd
    or c                                          ; $6d99: $b1
    jr c, jr_064_6de3                             ; $6d9a: $38 $47

    ld [hl], a                                    ; $6d9c: $77
    reti                                          ; $6d9d: $d9


    inc bc                                        ; $6d9e: $03
    or d                                          ; $6d9f: $b2
    sub [hl]                                      ; $6da0: $96

jr_064_6da1:
    sbc [hl]                                      ; $6da1: $9e
    sbc [hl]                                      ; $6da2: $9e
    ld l, $05                                     ; $6da3: $2e $05
    jp $fc33                                      ; $6da5: $c3 $33 $fc


    and e                                         ; $6da8: $a3
    cp e                                          ; $6da9: $bb
    call z, $a282                                 ; $6daa: $cc $82 $a2
    ld c, a                                       ; $6dad: $4f
    jp hl                                         ; $6dae: $e9


    or d                                          ; $6daf: $b2
    ld hl, sp-$19                                 ; $6db0: $f8 $e7
    inc l                                         ; $6db2: $2c
    ld l, e                                       ; $6db3: $6b
    ld [hl], h                                    ; $6db4: $74
    call $ae17                                    ; $6db5: $cd $17 $ae
    db $ec                                        ; $6db8: $ec
    ld [hl+], a                                   ; $6db9: $22
    jr nz, jr_064_6da1                            ; $6dba: $20 $e5

    ld a, [hl]                                    ; $6dbc: $7e
    ld bc, $5c07                                  ; $6dbd: $01 $07 $5c
    sub $4a                                       ; $6dc0: $d6 $4a
    ld l, d                                       ; $6dc2: $6a
    db $ec                                        ; $6dc3: $ec
    call c, $a9e7                                 ; $6dc4: $dc $e7 $a9
    ldh a, [$3c]                                  ; $6dc7: $f0 $3c
    ld e, $4c                                     ; $6dc9: $1e $4c
    dec b                                         ; $6dcb: $05
    pop hl                                        ; $6dcc: $e1
    xor a                                         ; $6dcd: $af
    ld a, b                                       ; $6dce: $78
    adc a                                         ; $6dcf: $8f
    ld [hl], c                                    ; $6dd0: $71
    rrca                                          ; $6dd1: $0f
    adc b                                         ; $6dd2: $88
    rlca                                          ; $6dd3: $07

jr_064_6dd4:
    add d                                         ; $6dd4: $82
    jp hl                                         ; $6dd5: $e9


    push bc                                       ; $6dd6: $c5
    ld e, a                                       ; $6dd7: $5f
    jr nc, jr_064_6dd4                            ; $6dd8: $30 $fa

    add hl, de                                    ; $6dda: $19
    dec sp                                        ; $6ddb: $3b
    rst $28                                       ; $6ddc: $ef
    rla                                           ; $6ddd: $17
    rlca                                          ; $6dde: $07
    ld e, h                                       ; $6ddf: $5c
    and $dc                                       ; $6de0: $e6 $dc
    db $d3                                        ; $6de2: $d3

jr_064_6de3:
    xor h                                         ; $6de3: $ac
    jp z, $f46b                                   ; $6de4: $ca $6b $f4

    ret nz                                        ; $6de7: $c0

    inc sp                                        ; $6de8: $33
    xor a                                         ; $6de9: $af
    dec d                                         ; $6dea: $15
    sub d                                         ; $6deb: $92
    sub e                                         ; $6dec: $93
    jp nz, Jump_000_2c7b                          ; $6ded: $c2 $7b $2c

    inc hl                                        ; $6df0: $23
    db $dd                                        ; $6df1: $dd
    ld a, c                                       ; $6df2: $79
    sub h                                         ; $6df3: $94
    db $ec                                        ; $6df4: $ec
    ld d, b                                       ; $6df5: $50
    sbc b                                         ; $6df6: $98
    ld [hl], $ba                                  ; $6df7: $36 $ba
    res 5, d                                      ; $6df9: $cb $aa
    ld [hl], e                                    ; $6dfb: $73
    dec c                                         ; $6dfc: $0d
    ld h, e                                       ; $6dfd: $63
    ld a, d                                       ; $6dfe: $7a
    ld a, [hl-]                                   ; $6dff: $3a
    adc $82                                       ; $6e00: $ce $82
    ld a, e                                       ; $6e02: $7b
    ld [bc], a                                    ; $6e03: $02
    cp d                                          ; $6e04: $ba
    ld [hl], a                                    ; $6e05: $77
    rrc d                                         ; $6e06: $cb $0a
    dec a                                         ; $6e08: $3d
    inc h                                         ; $6e09: $24
    ld a, [$017e]                                 ; $6e0a: $fa $7e $01
    rlca                                          ; $6e0d: $07
    ld e, h                                       ; $6e0e: $5c
    ld d, $ff                                     ; $6e0f: $16 $ff
    sbc h                                         ; $6e11: $9c
    and l                                         ; $6e12: $a5
    ld a, h                                       ; $6e13: $7c
    add hl, hl                                    ; $6e14: $29
    ld a, e                                       ; $6e15: $7b
    adc h                                         ; $6e16: $8c
    add e                                         ; $6e17: $83
    ld d, l                                       ; $6e18: $55
    dec b                                         ; $6e19: $05
    ld de, $d05b                                  ; $6e1a: $11 $5b $d0
    db $d3                                        ; $6e1d: $d3
    or c                                          ; $6e1e: $b1
    ld [hl-], a                                   ; $6e1f: $32
    db $f4                                        ; $6e20: $f4
    ld c, $52                                     ; $6e21: $0e $52
    sbc h                                         ; $6e23: $9c
    dec bc                                        ; $6e24: $0b
    ld h, l                                       ; $6e25: $65
    ld l, b                                       ; $6e26: $68
    ld e, [hl]                                    ; $6e27: $5e
    and c                                         ; $6e28: $a1
    add a                                         ; $6e29: $87
    ld b, h                                       ; $6e2a: $44
    rst $28                                       ; $6e2b: $ef
    add c                                         ; $6e2c: $81
    ld [hl-], a                                   ; $6e2d: $32
    jp nc, Jump_000_179d                          ; $6e2e: $d2 $9d $17

    add l                                         ; $6e31: $85
    adc h                                         ; $6e32: $8c
    ld hl, $7cd3                                  ; $6e33: $21 $d3 $7c
    cp a                                          ; $6e36: $bf
    ld d, a                                       ; $6e37: $57
    rst $38                                       ; $6e38: $ff
    db $e4                                        ; $6e39: $e4
    ld a, l                                       ; $6e3a: $7d
    ld e, [hl]                                    ; $6e3b: $5e
    push af                                       ; $6e3c: $f5
    db $10                                        ; $6e3d: $10
    jp z, $ebbd                                   ; $6e3e: $ca $bd $eb

    ld h, b                                       ; $6e41: $60
    ld d, c                                       ; $6e42: $51
    inc sp                                        ; $6e43: $33
    rlca                                          ; $6e44: $07
    ld c, d                                       ; $6e45: $4a
    ld a, c                                       ; $6e46: $79
    or l                                          ; $6e47: $b5
    cp c                                          ; $6e48: $b9
    rst $20                                       ; $6e49: $e7
    ld c, e                                       ; $6e4a: $4b
    pop af                                        ; $6e4b: $f1
    ld a, [de]                                    ; $6e4c: $1a
    xor [hl]                                      ; $6e4d: $ae
    call nc, Call_064_4162                        ; $6e4e: $d4 $62 $41
    adc a                                         ; $6e51: $8f
    ld [hl], h                                    ; $6e52: $74
    ld [$35e8], a                                 ; $6e53: $ea $e8 $35
    ld a, [hl]                                    ; $6e56: $7e
    adc c                                         ; $6e57: $89
    adc l                                         ; $6e58: $8d
    rst $30                                       ; $6e59: $f7
    dec bc                                        ; $6e5a: $0b
    add a                                         ; $6e5b: $87
    sbc h                                         ; $6e5c: $9c
    and e                                         ; $6e5d: $a3
    cp e                                          ; $6e5e: $bb
    adc h                                         ; $6e5f: $8c
    dec [hl]                                      ; $6e60: $35
    ld l, d                                       ; $6e61: $6a
    ld a, [hl-]                                   ; $6e62: $3a
    ld c, $86                                     ; $6e63: $0e $86
    ld d, $f1                                     ; $6e65: $16 $f1
    ld a, [c]                                     ; $6e67: $f2
    ccf                                           ; $6e68: $3f
    adc a                                         ; $6e69: $8f
    rst $08                                       ; $6e6a: $cf
    ld a, c                                       ; $6e6b: $79
    ld bc, $5be7                                  ; $6e6c: $01 $e7 $5b
    push af                                       ; $6e6f: $f5
    ld e, a                                       ; $6e70: $5f
    sbc h                                         ; $6e71: $9c
    or h                                          ; $6e72: $b4
    and c                                         ; $6e73: $a1
    ld a, $fe                                     ; $6e74: $3e $fe
    dec c                                         ; $6e76: $0d
    or $bd                                        ; $6e77: $f6 $bd
    dec hl                                        ; $6e79: $2b
    sub e                                         ; $6e7a: $93
    ld a, [de]                                    ; $6e7b: $1a
    rrca                                          ; $6e7c: $0f
    adc d                                         ; $6e7d: $8a
    push hl                                       ; $6e7e: $e5
    ld a, [hl]                                    ; $6e7f: $7e
    ld bc, $0717                                  ; $6e80: $01 $17 $07
    db $e4                                        ; $6e83: $e4
    ld b, l                                       ; $6e84: $45
    ld hl, $b52b                                  ; $6e85: $21 $2b $b5
    call c, $32bb                                 ; $6e88: $dc $bb $32
    xor c                                         ; $6e8b: $a9
    pop af                                        ; $6e8c: $f1
    and b                                         ; $6e8d: $a0
    ld e, b                                       ; $6e8e: $58
    xor $17                                       ; $6e8f: $ee $17
    ld l, l                                       ; $6e91: $6d
    ld a, [$ff54]                                 ; $6e92: $fa $54 $ff
    ld l, c                                       ; $6e95: $69
    db $f4                                        ; $6e96: $f4
    ret nc                                        ; $6e97: $d0

    inc a                                         ; $6e98: $3c
    ld d, b                                       ; $6e99: $50
    jp z, $8b43                                   ; $6e9a: $ca $43 $8b

    ld a, b                                       ; $6e9d: $78
    push hl                                       ; $6e9e: $e5
    ld c, e                                       ; $6e9f: $4b
    reti                                          ; $6ea0: $d9


    ld h, e                                       ; $6ea1: $63
    ld e, c                                       ; $6ea2: $59
    add c                                         ; $6ea3: $81
    ld a, b                                       ; $6ea4: $78
    and b                                         ; $6ea5: $a0
    sub h                                         ; $6ea6: $94
    rla                                           ; $6ea7: $17
    ld e, d                                       ; $6ea8: $5a
    rst $30                                       ; $6ea9: $f7
    dec bc                                        ; $6eaa: $0b
    rla                                           ; $6eab: $17
    add l                                         ; $6eac: $85
    call c, $c5e7                                 ; $6ead: $dc $e7 $c5
    and [hl]                                      ; $6eb0: $a6
    and a                                         ; $6eb1: $a7
    add a                                         ; $6eb2: $87
    ret nz                                        ; $6eb3: $c0

    or e                                          ; $6eb4: $b3
    cp b                                          ; $6eb5: $b8
    ld [hl], d                                    ; $6eb6: $72
    db $d3                                        ; $6eb7: $d3
    add d                                         ; $6eb8: $82
    and [hl]                                      ; $6eb9: $a6
    dec l                                         ; $6eba: $2d
    and d                                         ; $6ebb: $a2
    ld h, [hl]                                    ; $6ebc: $66
    ld h, l                                       ; $6ebd: $65
    xor a                                         ; $6ebe: $af
    sbc c                                         ; $6ebf: $99
    ld l, e                                       ; $6ec0: $6b
    dec [hl]                                      ; $6ec1: $35
    rst $10                                       ; $6ec2: $d7
    ld e, $0a                                     ; $6ec3: $1e $0a
    or c                                          ; $6ec5: $b1
    sbc a                                         ; $6ec6: $9f
    ld e, h                                       ; $6ec7: $5c
    rla                                           ; $6ec8: $17
    ld b, e                                       ; $6ec9: $43
    rra                                           ; $6eca: $1f
    db $dd                                        ; $6ecb: $dd
    ld h, l                                       ; $6ecc: $65
    dec c                                         ; $6ecd: $0d
    ld [hl], a                                    ; $6ece: $77
    xor d                                         ; $6ecf: $aa
    adc b                                         ; $6ed0: $88
    add a                                         ; $6ed1: $87
    ld d, b                                       ; $6ed2: $50
    or $18                                        ; $6ed3: $f6 $18
    ld h, a                                       ; $6ed5: $67
    sbc c                                         ; $6ed6: $99
    push bc                                       ; $6ed7: $c5
    sub l                                         ; $6ed8: $95
    sbc e                                         ; $6ed9: $9b
    ld d, $f4                                     ; $6eda: $16 $f4
    ld e, d                                       ; $6edc: $5a
    ld c, c                                       ; $6edd: $49
    ld a, c                                       ; $6ede: $79
    ret nz                                        ; $6edf: $c0

    ld h, a                                       ; $6ee0: $67
    db $ed                                        ; $6ee1: $ed
    ld b, d                                       ; $6ee2: $42
    sbc $f9                                       ; $6ee3: $de $f9
    ld c, [hl]                                    ; $6ee5: $4e
    ld [$1ec3], a                                 ; $6ee6: $ea $c3 $1e
    ld l, c                                       ; $6ee9: $69
    ld d, l                                       ; $6eea: $55
    cp l                                          ; $6eeb: $bd
    ld d, b                                       ; $6eec: $50
    add $19                                       ; $6eed: $c6 $19
    ld a, [hl-]                                   ; $6eef: $3a
    ld a, $14                                     ; $6ef0: $3e $14
    pop bc                                        ; $6ef2: $c1
    xor c                                         ; $6ef3: $a9
    sub b                                         ; $6ef4: $90
    cp h                                          ; $6ef5: $bc

jr_064_6ef6:
    rst $00                                       ; $6ef6: $c7
    cp b                                          ; $6ef7: $b8
    or $9f                                        ; $6ef8: $f6 $9f
    xor c                                         ; $6efa: $a9
    reti                                          ; $6efb: $d9


    sub l                                         ; $6efc: $95
    add c                                         ; $6efd: $81
    reti                                          ; $6efe: $d9


    xor c                                         ; $6eff: $a9
    ld a, l                                       ; $6f00: $7d
    rst $10                                       ; $6f01: $d7
    ld b, b                                       ; $6f02: $40
    rst $28                                       ; $6f03: $ef
    ld a, [de]                                    ; $6f04: $1a
    and l                                         ; $6f05: $a5
    xor h                                         ; $6f06: $ac
    db $fd                                        ; $6f07: $fd
    dec b                                         ; $6f08: $05
    adc l                                         ; $6f09: $8d
    ld d, b                                       ; $6f0a: $50
    inc l                                         ; $6f0b: $2c
    db $eb                                        ; $6f0c: $eb
    rra                                           ; $6f0d: $1f
    sbc l                                         ; $6f0e: $9d
    inc bc                                        ; $6f0f: $03
    and l                                         ; $6f10: $a5
    inc a                                         ; $6f11: $3c
    add [hl]                                      ; $6f12: $86
    cp [hl]                                       ; $6f13: $be
    rst $08                                       ; $6f14: $cf
    adc e                                         ; $6f15: $8b
    add hl, hl                                    ; $6f16: $29
    jp hl                                         ; $6f17: $e9


    and c                                         ; $6f18: $a1
    ld h, l                                       ; $6f19: $65
    db $dd                                        ; $6f1a: $dd
    call z, $ecae                                 ; $6f1b: $cc $ae $ec
    ld [hl], l                                    ; $6f1e: $75
    ld c, d                                       ; $6f1f: $4a
    dec d                                         ; $6f20: $15
    sub b                                         ; $6f21: $90
    ld [hl], d                                    ; $6f22: $72
    rst $28                                       ; $6f23: $ef
    jp z, $c6a4                                   ; $6f24: $ca $a4 $c6

    add e                                         ; $6f27: $83
    ld h, d                                       ; $6f28: $62
    and c                                         ; $6f29: $a1
    xor l                                         ; $6f2a: $ad
    db $fd                                        ; $6f2b: $fd
    ld h, a                                       ; $6f2c: $67
    ld l, d                                       ; $6f2d: $6a
    xor $17                                       ; $6f2e: $ee $17
    rst $10                                       ; $6f30: $d7
    db $fc                                        ; $6f31: $fc
    add [hl]                                      ; $6f32: $86
    sbc [hl]                                      ; $6f33: $9e
    ld h, [hl]                                    ; $6f34: $66
    or [hl]                                       ; $6f35: $b6
    xor h                                         ; $6f36: $ac
    ld [bc], a                                    ; $6f37: $02
    and d                                         ; $6f38: $a2
    ld [hl], e                                    ; $6f39: $73
    sub l                                         ; $6f3a: $95
    ccf                                           ; $6f3b: $3f
    ld b, d                                       ; $6f3c: $42
    ld e, c                                       ; $6f3d: $59
    xor e                                         ; $6f3e: $ab
    cp c                                          ; $6f3f: $b9
    ret nc                                        ; $6f40: $d0

    ld a, [hl+]                                   ; $6f41: $2a
    ccf                                           ; $6f42: $3f
    or [hl]                                       ; $6f43: $b6
    call c, $32bb                                 ; $6f44: $dc $bb $32
    xor c                                         ; $6f47: $a9
    pop af                                        ; $6f48: $f1
    and b                                         ; $6f49: $a0
    ld e, b                                       ; $6f4a: $58
    ld l, b                                       ; $6f4b: $68
    ld l, e                                       ; $6f4c: $6b
    rst $38                                       ; $6f4d: $ff
    sbc c                                         ; $6f4e: $99
    sbc d                                         ; $6f4f: $9a
    ei                                            ; $6f50: $fb
    dec b                                         ; $6f51: $05
    rst $20                                       ; $6f52: $e7
    push de                                       ; $6f53: $d5
    jr z, jr_064_6ef6                             ; $6f54: $28 $a0

    ld a, e                                       ; $6f56: $7b
    ld b, $7c                                     ; $6f57: $06 $7c
    ld bc, $50d7                                  ; $6f59: $01 $d7 $50
    inc sp                                        ; $6f5c: $33
    adc l                                         ; $6f5d: $8d
    sbc [hl]                                      ; $6f5e: $9e
    ld d, b                                       ; $6f5f: $50
    ld a, [hl-]                                   ; $6f60: $3a
    ld a, [hl-]                                   ; $6f61: $3a
    ld e, a                                       ; $6f62: $5f
    ld d, a                                       ; $6f63: $57
    and h                                         ; $6f64: $a4
    res 2, a                                      ; $6f65: $cb $97
    ldh a, [rSC]                                  ; $6f67: $f0 $02
    rlca                                          ; $6f69: $07
    ld a, a                                       ; $6f6a: $7f
    rst $10                                       ; $6f6b: $d7
    di                                            ; $6f6c: $f3
    dec b                                         ; $6f6d: $05
    rlca                                          ; $6f6e: $07
    cp a                                          ; $6f6f: $bf
    ld h, b                                       ; $6f70: $60
    ld a, [hl]                                    ; $6f71: $7e
    push hl                                       ; $6f72: $e5
    call z, $2f80                                 ; $6f73: $cc $80 $2f
    rst $10                                       ; $6f76: $d7
    add c                                         ; $6f77: $81
    or b                                          ; $6f78: $b0
    db $d3                                        ; $6f79: $d3
    ld sp, hl                                     ; $6f7a: $f9
    add l                                         ; $6f7b: $85
    and c                                         ; $6f7c: $a1
    cp [hl]                                       ; $6f7d: $be
    db $ed                                        ; $6f7e: $ed
    and [hl]                                      ; $6f7f: $a6
    db $d3                                        ; $6f80: $d3
    sub $fe                                       ; $6f81: $d6 $fe
    inc sp                                        ; $6f83: $33
    dec [hl]                                      ; $6f84: $35
    jp c, $ed5f                                   ; $6f85: $da $5f $ed

    pop af                                        ; $6f88: $f1
    rst $00                                       ; $6f89: $c7
    push de                                       ; $6f8a: $d5
    ld h, $6d                                     ; $6f8b: $26 $6d
    db $ed                                        ; $6f8d: $ed
    ccf                                           ; $6f8e: $3f
    ld d, e                                       ; $6f8f: $53
    ld [hl], e                                    ; $6f90: $73
    adc $0b                                       ; $6f91: $ce $0b
    ld d, a                                       ; $6f93: $57
    rst $38                                       ; $6f94: $ff
    db $e4                                        ; $6f95: $e4
    ld a, l                                       ; $6f96: $7d
    ld e, [hl]                                    ; $6f97: $5e
    push af                                       ; $6f98: $f5
    db $10                                        ; $6f99: $10
    ld a, [bc]                                    ; $6f9a: $0a
    ld l, l                                       ; $6f9b: $6d
    db $ed                                        ; $6f9c: $ed
    ccf                                           ; $6f9d: $3f
    ld d, e                                       ; $6f9e: $53
    ld [hl], e                                    ; $6f9f: $73
    cp a                                          ; $6fa0: $bf
    rst $10                                       ; $6fa1: $d7
    db $fc                                        ; $6fa2: $fc
    ld [hl-], a                                   ; $6fa3: $32
    di                                            ; $6fa4: $f3
    ld a, [de]                                    ; $6fa5: $1a
    ret nc                                        ; $6fa6: $d0

    cp e                                          ; $6fa7: $bb
    pop de                                        ; $6fa8: $d1
    or h                                          ; $6fa9: $b4
    and c                                         ; $6faa: $a1
    ld a, c                                       ; $6fab: $79
    pop af                                        ; $6fac: $f1
    ld c, a                                       ; $6fad: $4f
    rst $20                                       ; $6fae: $e7
    ld a, [hl-]                                   ; $6faf: $3a
    ld b, l                                       ; $6fb0: $45
    adc d                                         ; $6fb1: $8a
    db $d3                                        ; $6fb2: $d3
    rst $30                                       ; $6fb3: $f7
    dec bc                                        ; $6fb4: $0b
    db $ed                                        ; $6fb5: $ed
    and [hl]                                      ; $6fb6: $a6
    db $d3                                        ; $6fb7: $d3
    sub $fe                                       ; $6fb8: $d6 $fe
    inc sp                                        ; $6fba: $33
    dec [hl]                                      ; $6fbb: $35
    jp c, $175f                                   ; $6fbc: $da $5f $17

    rlca                                          ; $6fbf: $07
    call nz, Call_064_685f                        ; $6fc0: $c4 $5f $68
    ld l, e                                       ; $6fc3: $6b
    rst $38                                       ; $6fc4: $ff
    sbc c                                         ; $6fc5: $99
    sbc d                                         ; $6fc6: $9a
    ei                                            ; $6fc7: $fb
    dec b                                         ; $6fc8: $05
    db $ed                                        ; $6fc9: $ed
    cp a                                          ; $6fca: $bf
    ld [hl], a                                    ; $6fcb: $77
    ld a, [hl+]                                   ; $6fcc: $2a
    cp l                                          ; $6fcd: $bd
    ld a, [hl]                                    ; $6fce: $7e
    jp c, Jump_064_7fda                           ; $6fcf: $da $da $7f

    and [hl]                                      ; $6fd2: $a6
    and $7e                                       ; $6fd3: $e6 $7e
    ld bc, $e66d                                  ; $6fd5: $01 $6d $e6
    add hl, sp                                    ; $6fd8: $39
    rst $30                                       ; $6fd9: $f7
    dec sp                                        ; $6fda: $3b
    inc bc                                        ; $6fdb: $03
    ld l, $7f                                     ; $6fdc: $2e $7f
    ld a, [c]                                     ; $6fde: $f2
    ld a, $af                                     ; $6fdf: $3e $af
    ld a, d                                       ; $6fe1: $7a
    ld [$b685], sp                                ; $6fe2: $08 $85 $b6
    or $9f                                        ; $6fe5: $f6 $9f
    xor c                                         ; $6fe7: $a9
    cp c                                          ; $6fe8: $b9

jr_064_6fe9:
    ld e, a                                       ; $6fe9: $5f
    ld l, l                                       ; $6fea: $6d
    and $39                                       ; $6feb: $e6 $39
    ld d, a                                       ; $6fed: $57
    jp hl                                         ; $6fee: $e9


jr_064_6fef:
    ld hl, $35e6                                  ; $6fef: $21 $e6 $35
    ld a, [hl]                                    ; $6ff2: $7e
    ld a, d                                       ; $6ff3: $7a
    sbc a                                         ; $6ff4: $9f
    ld d, a                                       ; $6ff5: $57
    add hl, sp                                    ; $6ff6: $39
    ld c, l                                       ; $6ff7: $4d
    adc a                                         ; $6ff8: $8f
    cp h                                          ; $6ff9: $bc
    ld c, $c8                                     ; $6ffa: $0e $c8
    dec bc                                        ; $6ffc: $0b
    adc a                                         ; $6ffd: $8f
    ld c, d                                       ; $6ffe: $4a
    sub b                                         ; $6fff: $90
    ld b, d                                       ; $7000: $42
    dec de                                        ; $7001: $1b
    jr z, jr_064_6fe9                             ; $7002: $28 $e5

    ld [hl], e                                    ; $7004: $73
    ld e, [hl]                                    ; $7005: $5e
    rlca                                          ; $7006: $07
    ld e, h                                       ; $7007: $5c

jr_064_7008:
    sub $e8                                       ; $7008: $d6 $e8
    db $10                                        ; $700a: $10
    dec sp                                        ; $700b: $3b
    rla                                           ; $700c: $17
    dec de                                        ; $700d: $1b
    rst $30                                       ; $700e: $f7
    jr jr_064_7008                                ; $700f: $18 $f7

    ld a, c                                       ; $7011: $79
    sbc b                                         ; $7012: $98
    call nc, $f1e7                                ; $7013: $d4 $e7 $f1
    jp nz, $9233                                  ; $7016: $c2 $33 $92

    ld a, [hl+]                                   ; $7019: $2a
    push af                                       ; $701a: $f5
    sbc $c5                                       ; $701b: $de $c5
    rra                                           ; $701d: $1f
    rla                                           ; $701e: $17
    inc bc                                        ; $701f: $03
    sbc d                                         ; $7020: $9a
    ld [hl], $32                                  ; $7021: $36 $32
    cp $38                                        ; $7023: $fe $38
    inc [hl]                                      ; $7025: $34
    rst $28                                       ; $7026: $ef
    add hl, bc                                    ; $7027: $09
    or d                                          ; $7028: $b2
    add [hl]                                      ; $7029: $86
    ld e, c                                       ; $702a: $59
    add e                                         ; $702b: $83
    adc $73                                       ; $702c: $ce $73
    ld e, [hl]                                    ; $702e: $5e
    sub a                                         ; $702f: $97
    ld a, [de]                                    ; $7030: $1a
    db $dd                                        ; $7031: $dd
    and c                                         ; $7032: $a1
    inc c                                         ; $7033: $0c
    ld a, a                                       ; $7034: $7f
    and c                                         ; $7035: $a1
    dec c                                         ; $7036: $0d
    sub h                                         ; $7037: $94
    ld [hl-], a                                   ; $7038: $32
    ld l, l                                       ; $7039: $6d
    db $ed                                        ; $703a: $ed
    ccf                                           ; $703b: $3f
    ld d, e                                       ; $703c: $53
    ld [hl], e                                    ; $703d: $73
    adc $0b                                       ; $703e: $ce $0b
    rlca                                          ; $7040: $07
    ld e, h                                       ; $7041: $5c
    ld d, $43                                     ; $7042: $16 $43
    rst $28                                       ; $7044: $ef
    ld e, $55                                     ; $7045: $1e $55
    xor d                                         ; $7047: $aa
    ld a, [c]                                     ; $7048: $f2
    ld a, $8f                                     ; $7049: $3e $8f
    xor $32                                       ; $704b: $ee $32
    and l                                         ; $704d: $a5
    adc e                                         ; $704e: $8b
    ld a, b                                       ; $704f: $78
    ld a, [hl+]                                   ; $7050: $2a
    inc a                                         ; $7051: $3c
    adc a                                         ; $7052: $8f
    rlca                                          ; $7053: $07
    xor e                                         ; $7054: $ab
    sub [hl]                                      ; $7055: $96
    ld [hl-], a                                   ; $7056: $32
    jr z, jr_064_6fef                             ; $7057: $28 $96

    ei                                            ; $7059: $fb
    dec b                                         ; $705a: $05
    rlca                                          ; $705b: $07
    ld e, h                                       ; $705c: $5c
    and [hl]                                      ; $705d: $a6
    cp [hl]                                       ; $705e: $be
    xor h                                         ; $705f: $ac
    ld a, [c]                                     ; $7060: $f2
    ld b, a                                       ; $7061: $47
    jr z, jr_064_6fef                             ; $7062: $28 $8b

    ld a, [hl]                                    ; $7064: $7e
    ld a, d                                       ; $7065: $7a
    ld sp, $1c74                                  ; $7066: $31 $74 $1c
    jp hl                                         ; $7069: $e9


    ld e, h                                       ; $706a: $5c
    xor e                                         ; $706b: $ab
    cp c                                          ; $706c: $b9
    jp z, $f346                                   ; $706d: $ca $46 $f3

    db $fd                                        ; $7070: $fd
    ld [bc], a                                    ; $7071: $02
    rla                                           ; $7072: $17
    ld a, a                                       ; $7073: $7f
    ld e, h                                       ; $7074: $5c
    inc c                                         ; $7075: $0c
    ld l, b                                       ; $7076: $68
    jp c, $38c8                                   ; $7077: $da $c8 $38

    db $e4                                        ; $707a: $e4
    jp c, Jump_064_497f                           ; $707b: $da $7f $49

    ret nz                                        ; $707e: $c0

    sub c                                         ; $707f: $91
    ccf                                           ; $7080: $3f
    rla                                           ; $7081: $17
    ld d, e                                       ; $7082: $53
    jp nc, $ce7c                                  ; $7083: $d2 $7c $ce

    dec bc                                        ; $7086: $0b
    db $ed                                        ; $7087: $ed
    ccf                                           ; $7088: $3f
    add a                                         ; $7089: $87
    ld a, [$7caa]                                 ; $708a: $fa $aa $7c
    and l                                         ; $708d: $a5
    call z, $8c7b                                 ; $708e: $cc $7b $8c
    ld l, e                                       ; $7091: $6b
    rst $38                                       ; $7092: $ff
    dec h                                         ; $7093: $25
    ld bc, $59cf                                  ; $7094: $01 $cf $59
    ei                                            ; $7097: $fb
    sub a                                         ; $7098: $97
    sub c                                         ; $7099: $91
    ccf                                           ; $709a: $3f
    rlca                                          ; $709b: $07
    ld c, d                                       ; $709c: $4a
    ld a, c                                       ; $709d: $79
    ld sp, $cd25                                  ; $709e: $31 $25 $cd
    ld a, e                                       ; $70a1: $7b
    ld e, h                                       ; $70a2: $5c
    call z, $d1d3                                 ; $70a3: $cc $d3 $d1
    ld [de], a                                    ; $70a6: $12
    add l                                         ; $70a7: $85
    ld e, h                                       ; $70a8: $5c
    dec b                                         ; $70a9: $05
    add hl, de                                    ; $70aa: $19
    xor c                                         ; $70ab: $a9
    ld h, c                                       ; $70ac: $61

jr_064_70ad:
    or $5a                                        ; $70ad: $f6 $5a
    call Call_064_79a1                            ; $70af: $cd $a1 $79
    dec d                                         ; $70b2: $15
    or b                                          ; $70b3: $b0
    or d                                          ; $70b4: $b2
    rst $28                                       ; $70b5: $ef
    rla                                           ; $70b6: $17
    rla                                           ; $70b7: $17
    and $da                                       ; $70b8: $e6 $da
    ld a, a                                       ; $70ba: $7f
    ld c, c                                       ; $70bb: $49
    ret nz                                        ; $70bc: $c0

    ld d, l                                       ; $70bd: $55
    ld c, l                                       ; $70be: $4d
    add hl, sp                                    ; $70bf: $39
    ld h, a                                       ; $70c0: $67
    rlca                                          ; $70c1: $07
    ld e, h                                       ; $70c2: $5c
    ld b, [hl]                                    ; $70c3: $46
    cp $1c                                        ; $70c4: $fe $1c
    jr z, jr_064_70ad                             ; $70c6: $28 $e5

    ld d, l                                       ; $70c8: $55
    di                                            ; $70c9: $f3
    ret z                                         ; $70ca: $c8

    rst $38                                       ; $70cb: $ff
    inc c                                         ; $70cc: $0c
    ld h, [hl]                                    ; $70cd: $66
    ld e, [hl]                                    ; $70ce: $5e
    ld h, l                                       ; $70cf: $65
    adc l                                         ; $70d0: $8d
    ld d, d                                       ; $70d1: $52
    ld e, $03                                     ; $70d2: $1e $03
    sbc $2f                                       ; $70d4: $de $2f
    rla                                           ; $70d6: $17
    jp z, $a418                                   ; $70d7: $ca $18 $a4

    call z, $0ab9                                 ; $70da: $cc $b9 $0a
    ld c, d                                       ; $70dd: $4a
    add hl, sp                                    ; $70de: $39
    ld sp, hl                                     ; $70df: $f9
    xor h                                         ; $70e0: $ac
    or l                                          ; $70e1: $b5
    rst $38                                       ; $70e2: $ff
    sub d                                         ; $70e3: $92
    add b                                         ; $70e4: $80
    db $eb                                        ; $70e5: $eb
    add b                                         ; $70e6: $80
    adc $81                                       ; $70e7: $ce $81
    ld d, d                                       ; $70e9: $52
    sbc $8f                                       ; $70ea: $de $8f
    and [hl]                                      ; $70ec: $a6
    ld a, [$2bd7]                                 ; $70ed: $fa $d7 $2b
    ld h, a                                       ; $70f0: $67
    adc b                                         ; $70f1: $88
    ld b, d                                       ; $70f2: $42
    inc bc                                        ; $70f3: $03
    xor $b5                                       ; $70f4: $ee $b5
    ld a, a                                       ; $70f6: $7f
    add hl, de                                    ; $70f7: $19
    ld b, e                                       ; $70f8: $43
    ld l, a                                       ; $70f9: $6f
    inc h                                         ; $70fa: $24
    ld c, b                                       ; $70fb: $48
    ld [hl], c                                    ; $70fc: $71
    xor $f7                                       ; $70fd: $ee $f7
    ld d, l                                       ; $70ff: $55
    sub b                                         ; $7100: $90
    ld sp, $60e0                                  ; $7101: $31 $e0 $60
    and h                                         ; $7104: $a4
    add [hl]                                      ; $7105: $86
    reti                                          ; $7106: $d9


    or d                                          ; $7107: $b2
    jr z, @-$1a                                   ; $7108: $28 $e4

    jr @-$2e                                      ; $710a: $18 $d0

    ld [hl], d                                    ; $710c: $72
    cp a                                          ; $710d: $bf
    db $ed                                        ; $710e: $ed
    ccf                                           ; $710f: $3f
    rst $10                                       ; $7110: $d7
    cp $4b                                        ; $7111: $fe $4b
    ld [bc], a                                    ; $7113: $02
    ld l, $6a                                     ; $7114: $2e $6a
    sbc d                                         ; $7116: $9a
    ld d, a                                       ; $7117: $57
    ld e, c                                       ; $7118: $59
    rst $30                                       ; $7119: $f7
    rst $08                                       ; $711a: $cf
    ld [hl], h                                    ; $711b: $74
    push hl                                       ; $711c: $e5
    ld [hl], e                                    ; $711d: $73
    ld e, [hl]                                    ; $711e: $5e
    ld h, a                                       ; $711f: $67
    sbc [hl]                                      ; $7120: $9e
    cp c                                          ; $7121: $b9
    xor b                                         ; $7122: $a8
    rst $38                                       ; $7123: $ff
    xor d                                         ; $7124: $aa
    sbc h                                         ; $7125: $9c
    cp e                                          ; $7126: $bb
    ld e, $4a                                     ; $7127: $1e $4a
    or c                                          ; $7129: $b1
    db $10                                        ; $712a: $10
    ld [hl], e                                    ; $712b: $73
    ld b, a                                       ; $712c: $47
    ld [hl], a                                    ; $712d: $77
    ld d, b                                       ; $712e: $50
    dec d                                         ; $712f: $15
    ld [hl], d                                    ; $7130: $72
    inc h                                         ; $7131: $24
    ld b, l                                       ; $7132: $45
    adc d                                         ; $7133: $8a
    ld [hl], e                                    ; $7134: $73
    xor l                                         ; $7135: $ad
    and $2c                                       ; $7136: $e6 $2c
    adc e                                         ; $7138: $8b
    add hl, hl                                    ; $7139: $29
    add l                                         ; $713a: $85
    or [hl]                                       ; $713b: $b6
    inc sp                                        ; $713c: $33
    rst $08                                       ; $713d: $cf
    ld e, h                                       ; $713e: $5c
    call nc, Call_064_557f                        ; $713f: $d4 $7f $55
    adc $5d                                       ; $7142: $ce $5d
    rrca                                          ; $7144: $0f
    and l                                         ; $7145: $a5
    ld e, b                                       ; $7146: $58
    adc b                                         ; $7147: $88
    cp c                                          ; $7148: $b9
    and e                                         ; $7149: $a3
    dec sp                                        ; $714a: $3b
    xor b                                         ; $714b: $a8
    ld a, [bc]                                    ; $714c: $0a
    cp c                                          ; $714d: $b9
    ei                                            ; $714e: $fb
    cp [hl]                                       ; $714f: $be
    ld e, a                                       ; $7150: $5f
    rlca                                          ; $7151: $07
    ld e, h                                       ; $7152: $5c
    ld d, [hl]                                    ; $7153: $56
    ld a, a                                       ; $7154: $7f
    inc l                                         ; $7155: $2c
    adc $3d                                       ; $7156: $ce $3d
    jr nz, jr_064_71d5                            ; $7158: $20 $7b

    ld b, d                                       ; $715a: $42
    sbc $2f                                       ; $715b: $de $2f
    sub a                                         ; $715d: $97
    sub h                                         ; $715e: $94
    cpl                                           ; $715f: $2f
    dec h                                         ; $7160: $25
    and [hl]                                      ; $7161: $a6
    and h                                         ; $7162: $a4
    dec b                                         ; $7163: $05
    cp l                                          ; $7164: $bd
    rlca                                          ; $7165: $07
    ld l, d                                       ; $7166: $6a
    add l                                         ; $7167: $85
    jr nz, jr_064_7199                            ; $7168: $20 $2f

    ld l, l                                       ; $716a: $6d
    ld a, [$253a]                                 ; $716b: $fa $3a $25
    sbc l                                         ; $716e: $9d
    or e                                          ; $716f: $b3
    ld c, h                                       ; $7170: $4c
    inc [hl]                                      ; $7171: $34
    db $e3                                        ; $7172: $e3
    call nc, $eef4                                ; $7173: $d4 $f4 $ee
    jr z, @-$1a                                   ; $7176: $28 $e4

    and e                                         ; $7178: $a3
    rst $30                                       ; $7179: $f7
    sbc a                                         ; $717a: $9f
    jp c, $175f                                   ; $717b: $da $5f $17

    ei                                            ; $717e: $fb
    ld a, c                                       ; $717f: $79
    sbc h                                         ; $7180: $9c
    xor e                                         ; $7181: $ab
    dec l                                         ; $7182: $2d
    add sp, -$45                                  ; $7183: $e8 $bb
    rst $28                                       ; $7185: $ef
    ei                                            ; $7186: $fb
    dec b                                         ; $7187: $05
    add a                                         ; $7188: $87
    ld e, d                                       ; $7189: $5a
    ret nc                                        ; $718a: $d0

    ld d, a                                       ; $718b: $57
    db $fc                                        ; $718c: $fc
    or b                                          ; $718d: $b0
    or $17                                        ; $718e: $f6 $17
    ld l, l                                       ; $7190: $6d
    ld a, [$9fc8]                                 ; $7191: $fa $c8 $9f
    inc bc                                        ; $7194: $03
    and l                                         ; $7195: $a5
    inc a                                         ; $7196: $3c
    db $10                                        ; $7197: $10
    xor h                                         ; $7198: $ac

jr_064_7199:
    rst $38                                       ; $7199: $ff
    jp hl                                         ; $719a: $e9


    and $fd                                       ; $719b: $e6 $fd
    sbc $3d                                       ; $719d: $de $3d
    db $f4                                        ; $719f: $f4
    adc $77                                       ; $71a0: $ce $77
    ld d, d                                       ; $71a2: $52
    rra                                           ; $71a3: $1f
    or $48                                        ; $71a4: $f6 $48
    xor e                                         ; $71a6: $ab
    ld [$3285], a                                 ; $71a7: $ea $85 $32
    adc $d0                                       ; $71aa: $ce $d0
    pop af                                        ; $71ac: $f1
    and c                                         ; $71ad: $a1
    ld [$854e], sp                                ; $71ae: $08 $4e $85
    db $e4                                        ; $71b1: $e4
    and c                                         ; $71b2: $a1
    ld [hl], e                                    ; $71b3: $73
    dec c                                         ; $71b4: $0d
    sub e                                         ; $71b5: $93
    call nc, Call_064_75d8                        ; $71b6: $d4 $d8 $75
    inc c                                         ; $71b9: $0c
    ld a, l                                       ; $71ba: $7d
    ld l, b                                       ; $71bb: $68
    ld de, $854f                                  ; $71bc: $11 $4f $85
    and a                                         ; $71bf: $a7
    ld bc, $19f2                                  ; $71c0: $01 $f2 $19
    add d                                         ; $71c3: $82
    call c, $6d2f                                 ; $71c4: $dc $2f $6d
    ld a, [$faaa]                                 ; $71c7: $fa $aa $fa
    ld a, l                                       ; $71ca: $7d
    ld sp, $17a5                                  ; $71cb: $31 $a5 $17
    rst $28                                       ; $71ce: $ef
    ret z                                         ; $71cf: $c8

    ld c, e                                       ; $71d0: $4b
    ld b, e                                       ; $71d1: $43
    ld a, [c]                                     ; $71d2: $f2
    sub c                                         ; $71d3: $91
    db $d3                                        ; $71d4: $d3

jr_064_71d5:
    dec b                                         ; $71d5: $05
    sbc l                                         ; $71d6: $9d
    or e                                          ; $71d7: $b3
    db $ec                                        ; $71d8: $ec
    ld sp, hl                                     ; $71d9: $f9
    dec b                                         ; $71da: $05
    xor d                                         ; $71db: $aa
    sbc d                                         ; $71dc: $9a

jr_064_71dd:
    ld a, [bc]                                    ; $71dd: $0a
    ld [de], a                                    ; $71de: $12
    ld h, l                                       ; $71df: $65
    db $10                                        ; $71e0: $10
    cp $0c                                        ; $71e1: $fe $0c
    ld b, c                                       ; $71e3: $41
    ld d, $85                                     ; $71e4: $16 $85
    call c, $85e7                                 ; $71e6: $dc $e7 $85
    ld d, [hl]                                    ; $71e9: $56
    ld h, l                                       ; $71ea: $65
    add sp, -$23                                  ; $71eb: $e8 $dd
    ld b, e                                       ; $71ed: $43
    adc e                                         ; $71ee: $8b
    ld a, b                                       ; $71ef: $78
    ld a, [hl+]                                   ; $71f0: $2a
    inc h                                         ; $71f1: $24
    xor e                                         ; $71f2: $ab
    ldh a, [$34]                                  ; $71f3: $f0 $34
    ld b, b                                       ; $71f5: $40
    ld a, $43                                     ; $71f6: $3e $43
    sub b                                         ; $71f8: $90
    ei                                            ; $71f9: $fb
    dec b                                         ; $71fa: $05
    ld l, l                                       ; $71fb: $6d
    ld a, [$9fc8]                                 ; $71fc: $fa $c8 $9f
    inc bc                                        ; $71ff: $03
    and l                                         ; $7200: $a5
    cp h                                          ; $7201: $bc
    ld a, [$6e9f]                                 ; $7202: $fa $9f $6e
    sbc $ef                                       ; $7205: $de $ef
    db $dd                                        ; $7207: $dd
    ld b, e                                       ; $7208: $43
    rst $28                                       ; $7209: $ef
    ld a, h                                       ; $720a: $7c
    daa                                           ; $720b: $27
    push af                                       ; $720c: $f5
    ld h, c                                       ; $720d: $61
    adc a                                         ; $720e: $8f
    or h                                          ; $720f: $b4
    xor d                                         ; $7210: $aa
    ld e, [hl]                                    ; $7211: $5e
    jr z, @-$1b                                   ; $7212: $28 $e3

    inc c                                         ; $7214: $0c
    dec e                                         ; $7215: $1d
    rra                                           ; $7216: $1f
    adc d                                         ; $7217: $8a
    ldh [rHDMA4], a                               ; $7218: $e0 $54
    ld c, b                                       ; $721a: $48
    ld e, $3a                                     ; $721b: $1e $3a
    rst $10                                       ; $721d: $d7
    jr nc, jr_064_7269                            ; $721e: $30 $49

    adc l                                         ; $7220: $8d
    ld e, l                                       ; $7221: $5d
    rst $00                                       ; $7222: $c7
    ret nc                                        ; $7223: $d0

    add a                                         ; $7224: $87
    ld d, $f1                                     ; $7225: $16 $f1
    ld d, h                                       ; $7227: $54

jr_064_7228:
    ld c, b                                       ; $7228: $48
    ld d, [hl]                                    ; $7229: $56
    pop hl                                        ; $722a: $e1
    ld l, c                                       ; $722b: $69
    add b                                         ; $722c: $80
    ld a, h                                       ; $722d: $7c
    add [hl]                                      ; $722e: $86
    jr nz, jr_064_7228                            ; $722f: $20 $f7

    xor [hl]                                      ; $7231: $ae
    jr z, jr_064_7277                             ; $7232: $28 $43

    ld a, l                                       ; $7234: $7d
    ld d, l                                       ; $7235: $55
    db $fd                                        ; $7236: $fd
    cp [hl]                                       ; $7237: $be
    sbc b                                         ; $7238: $98
    jp nc, Jump_064_778b                          ; $7239: $d2 $8b $77

    db $e4                                        ; $723c: $e4
    and l                                         ; $723d: $a5
    ld hl, $c8f9                                  ; $723e: $21 $f9 $c8
    jp hl                                         ; $7241: $e9


    add d                                         ; $7242: $82
    adc $59                                       ; $7243: $ce $59
    or $fc                                        ; $7245: $f6 $fc
    ld [bc], a                                    ; $7247: $02
    ld d, l                                       ; $7248: $55
    ld c, l                                       ; $7249: $4d
    dec b                                         ; $724a: $05
    adc c                                         ; $724b: $89
    ld [hl-], a                                   ; $724c: $32
    ld [$867f], sp                                ; $724d: $08 $7f $86
    jr nz, jr_064_71dd                            ; $7250: $20 $8b

    ld b, d                                       ; $7252: $42
    xor $f3                                       ; $7253: $ee $f3
    ld b, d                                       ; $7255: $42
    xor e                                         ; $7256: $ab
    ld [hl-], a                                   ; $7257: $32
    db $f4                                        ; $7258: $f4
    xor $a1                                       ; $7259: $ee $a1
    ld b, l                                       ; $725b: $45
    inc a                                         ; $725c: $3c
    dec d                                         ; $725d: $15
    sub d                                         ; $725e: $92
    ld d, l                                       ; $725f: $55
    ld a, b                                       ; $7260: $78
    ld a, [de]                                    ; $7261: $1a
    jr nz, @-$5f                                  ; $7262: $20 $9f

    ld hl, $fdc8                                  ; $7264: $21 $c8 $fd
    ld [bc], a                                    ; $7267: $02
    add a                                         ; $7268: $87

jr_064_7269:
    sub h                                         ; $7269: $94
    ld b, [hl]                                    ; $726a: $46
    ld [hl], b                                    ; $726b: $70
    ld [$a265], sp                                ; $726c: $08 $65 $a2
    adc a                                         ; $726f: $8f
    and c                                         ; $7270: $a1
    scf                                           ; $7271: $37
    ld a, [hl]                                    ; $7272: $7e
    pop af                                        ; $7273: $f1
    ld h, b                                       ; $7274: $60
    push de                                       ; $7275: $d5
    ld d, d                                       ; $7276: $52

jr_064_7277:
    ld l, b                                       ; $7277: $68
    ld l, e                                       ; $7278: $6b
    rst $38                                       ; $7279: $ff
    sbc c                                         ; $727a: $99
    sbc d                                         ; $727b: $9a
    ei                                            ; $727c: $fb
    dec b                                         ; $727d: $05
    sub a                                         ; $727e: $97
    ld d, d                                       ; $727f: $52
    jp nc, $f323                                  ; $7280: $d2 $23 $f3

    sbc $95                                       ; $7283: $de $95
    add c                                         ; $7285: $81
    reti                                          ; $7286: $d9


    ld c, c                                       ; $7287: $49
    ld a, e                                       ; $7288: $7b
    ld bc, $fa6d                                  ; $7289: $01 $6d $fa
    sbc h                                         ; $728c: $9c
    dec bc                                        ; $728d: $0b
    dec l                                         ; $728e: $2d
    cp $c5                                        ; $728f: $fe $c5
    cp h                                          ; $7291: $bc
    ld d, [hl]                                    ; $7292: $56
    ld [hl], e                                    ; $7293: $73
    db $ed                                        ; $7294: $ed
    and c                                         ; $7295: $a1
    db $10                                        ; $7296: $10
    ei                                            ; $7297: $fb
    ret                                           ; $7298: $c9


    ld [hl], l                                    ; $7299: $75
    ld d, l                                       ; $729a: $55
    add l                                         ; $729b: $85
    xor $45                                       ; $729c: $ee $45
    ld hl, $5a47                                  ; $729e: $21 $47 $5a
    ld d, l                                       ; $72a1: $55
    dec hl                                        ; $72a2: $2b
    ld e, l                                       ; $72a3: $5d
    ld a, [hl+]                                   ; $72a4: $2a
    cpl                                           ; $72a5: $2f
    sub h                                         ; $72a6: $94
    ld [hl], c                                    ; $72a7: $71
    add [hl]                                      ; $72a8: $86
    adc [hl]                                      ; $72a9: $8e
    rst $08                                       ; $72aa: $cf
    rla                                           ; $72ab: $17
    xor h                                         ; $72ac: $ac
    ld d, l                                       ; $72ad: $55
    db $fd                                        ; $72ae: $fd
    add $0b                                       ; $72af: $c6 $0b
    rlca                                          ; $72b1: $07
    adc l                                         ; $72b2: $8d
    adc e                                         ; $72b3: $8b
    dec l                                         ; $72b4: $2d
    dec e                                         ; $72b5: $1d
    jp z, $e848                                   ; $72b6: $ca $48 $e8

    push de                                       ; $72b9: $d5
    ld a, [c]                                     ; $72ba: $f2
    ld [bc], a                                    ; $72bb: $02
    rst $20                                       ; $72bc: $e7
    push af                                       ; $72bd: $f5

jr_064_72be:
    add [hl]                                      ; $72be: $86
    ld e, [hl]                                    ; $72bf: $5e
    rst $10                                       ; $72c0: $d7
    and [hl]                                      ; $72c1: $a6
    ccf                                           ; $72c2: $3f
    adc l                                         ; $72c3: $8d
    ld l, [hl]                                    ; $72c4: $6e
    inc c                                         ; $72c5: $0c
    jp hl                                         ; $72c6: $e9


    rla                                           ; $72c7: $17
    ld d, a                                       ; $72c8: $57
    ld e, e                                       ; $72c9: $5b
    ld [hl], c                                    ; $72ca: $71
    ret z                                         ; $72cb: $c8

    rla                                           ; $72cc: $17
    ld l, l                                       ; $72cd: $6d
    ld a, [$4a1e]                                 ; $72ce: $fa $1e $4a
    ld a, [hl+]                                   ; $72d1: $2a
    rst $20                                       ; $72d2: $e7

jr_064_72d3:
    inc l                                         ; $72d3: $2c
    adc $02                                       ; $72d4: $ce $02
    sub [hl]                                      ; $72d6: $96
    push bc                                       ; $72d7: $c5
    sub h                                         ; $72d8: $94
    adc [hl]                                      ; $72d9: $8e
    ld e, [hl]                                    ; $72da: $5e
    ld l, b                                       ; $72db: $68
    dec c                                         ; $72dc: $0d
    add [hl]                                      ; $72dd: $86
    ld d, b                                       ; $72de: $50
    xor $17                                       ; $72df: $ee $17
    rst $20                                       ; $72e1: $e7
    db $fd                                        ; $72e2: $fd
    adc a                                         ; $72e3: $8f
    sbc b                                         ; $72e4: $98
    jp c, Jump_064_66d7                           ; $72e5: $da $d7 $66

    sbc [hl]                                      ; $72e8: $9e
    ld [hl], e                                    ; $72e9: $73
    ld a, d                                       ; $72ea: $7a
    and a                                         ; $72eb: $a7
    jr z, jr_064_72d3                             ; $72ec: $28 $e5

    db $e4                                        ; $72ee: $e4
    ei                                            ; $72ef: $fb
    dec b                                         ; $72f0: $05
    ld d, a                                       ; $72f1: $57
    or h                                          ; $72f2: $b4
    xor d                                         ; $72f3: $aa
    ld c, d                                       ; $72f4: $4a
    adc b                                         ; $72f5: $88
    ld a, b                                       ; $72f6: $78
    xor l                                         ; $72f7: $ad
    and $30                                       ; $72f8: $e6 $30
    ld b, c                                       ; $72fa: $41
    cp l                                          ; $72fb: $bd
    rla                                           ; $72fc: $17
    ld [hl], l                                    ; $72fd: $75
    ld l, b                                       ; $72fe: $68
    ld e, c                                       ; $72ff: $59
    jr nc, jr_064_72be                            ; $7300: $30 $bc

    rst $10                                       ; $7302: $d7
    add hl, sp                                    ; $7303: $39
    rra                                           ; $7304: $1f
    add sp, $1d                                   ; $7305: $e8 $1d
    add d                                         ; $7307: $82
    ld e, [hl]                                    ; $7308: $5e
    ld e, a                                       ; $7309: $5f
    rst $10                                       ; $730a: $d7
    add hl, sp                                    ; $730b: $39
    ld de, $e81e                                  ; $730c: $11 $1e $e8
    dec e                                         ; $730f: $1d
    add d                                         ; $7310: $82
    ld e, [hl]                                    ; $7311: $5e
    ld e, a                                       ; $7312: $5f
    sub a                                         ; $7313: $97
    ld [$0b51], sp                                ; $7314: $08 $51 $0b
    ld b, d                                       ; $7317: $42
    ld a, b                                       ; $7318: $78
    ld bc, $017b                                  ; $7319: $01 $7b $01
    ld a, e                                       ; $731c: $7b
    ld bc, $017b                                  ; $731d: $01 $7b $01
    ld a, e                                       ; $7320: $7b
    ld bc, $017b                                  ; $7321: $01 $7b $01
    ld a, e                                       ; $7324: $7b
    ld bc, $017b                                  ; $7325: $01 $7b $01
    ld a, e                                       ; $7328: $7b
    ld bc, $017b                                  ; $7329: $01 $7b $01
    ld a, e                                       ; $732c: $7b
    ld bc, $017b                                  ; $732d: $01 $7b $01
    ld a, e                                       ; $7330: $7b
    ld bc, $017b                                  ; $7331: $01 $7b $01
    ld a, e                                       ; $7334: $7b
    ld bc, $017b                                  ; $7335: $01 $7b $01
    ld a, e                                       ; $7338: $7b
    ld bc, $017b                                  ; $7339: $01 $7b $01
    ld a, e                                       ; $733c: $7b
    ld bc, $017b                                  ; $733d: $01 $7b $01
    ld a, e                                       ; $7340: $7b
    ld bc, $017b                                  ; $7341: $01 $7b $01
    ld a, e                                       ; $7344: $7b
    ld bc, $017b                                  ; $7345: $01 $7b $01
    ld a, e                                       ; $7348: $7b
    ld bc, $017b                                  ; $7349: $01 $7b $01
    ld a, e                                       ; $734c: $7b
    ld bc, $017b                                  ; $734d: $01 $7b $01
    ld a, e                                       ; $7350: $7b
    ld bc, $017b                                  ; $7351: $01 $7b $01
    ld a, e                                       ; $7354: $7b
    ld bc, $017b                                  ; $7355: $01 $7b $01
    ld a, e                                       ; $7358: $7b
    ld bc, $017b                                  ; $7359: $01 $7b $01
    ld a, e                                       ; $735c: $7b
    ld bc, $017b                                  ; $735d: $01 $7b $01
    ld a, e                                       ; $7360: $7b
    ld bc, $017b                                  ; $7361: $01 $7b $01
    ld a, e                                       ; $7364: $7b
    ld bc, $017b                                  ; $7365: $01 $7b $01
    ld a, e                                       ; $7368: $7b
    ld bc, $017b                                  ; $7369: $01 $7b $01
    ld a, e                                       ; $736c: $7b
    ld bc, $0307                                  ; $736d: $01 $07 $03
    ld d, $88                                     ; $7370: $16 $88
    ld hl, sp+$05                                 ; $7372: $f8 $05
    rst $10                                       ; $7374: $d7
    ld b, e                                       ; $7375: $43
    add hl, hl                                    ; $7376: $29
    ld d, $62                                     ; $7377: $16 $62
    xor $38                                       ; $7379: $ee $38
    ld [hl], a                                    ; $737b: $77
    ld d, b                                       ; $737c: $50
    dec d                                         ; $737d: $15
    ld a, [c]                                     ; $737e: $f2
    dec b                                         ; $737f: $05
    rst $10                                       ; $7380: $d7
    ld b, e                                       ; $7381: $43
    add hl, hl                                    ; $7382: $29
    ld d, $62                                     ; $7383: $16 $62
    xor $58                                       ; $7385: $ee $58
    push af                                       ; $7387: $f5
    sub [hl]                                      ; $7388: $96
    inc de                                        ; $7389: $13
    inc de                                        ; $738a: $13

Jump_064_738b:
    call nc, Call_064_570b                        ; $738b: $d4 $0b $57
    or $2f                                        ; $738e: $f6 $2f
    ld l, h                                       ; $7390: $6c
    ld c, h                                       ; $7391: $4c
    ld c, d                                       ; $7392: $4a
    jp Jump_064_7739                              ; $7393: $c3 $39 $77


    ld d, b                                       ; $7396: $50
    dec d                                         ; $7397: $15
    ld a, [c]                                     ; $7398: $f2
    dec b                                         ; $7399: $05
    rst $10                                       ; $739a: $d7
    ld bc, $07ff                                  ; $739b: $01 $ff $07

Call_064_739e:
Jump_064_739e:
    adc b                                         ; $739e: $88
    rst $08                                       ; $739f: $cf
    dec e                                         ; $73a0: $1d
    ld d, h                                       ; $73a1: $54
    add l                                         ; $73a2: $85
    ld a, h                                       ; $73a3: $7c
    ld bc, $c697                                  ; $73a4: $01 $97 $c6
    and b                                         ; $73a7: $a0
    ld b, d                                       ; $73a8: $42
    xor e                                         ; $73a9: $ab
    push hl                                       ; $73aa: $e5
    sbc h                                         ; $73ab: $9c
    dec sp                                        ; $73ac: $3b
    xor b                                         ; $73ad: $a8
    ld a, [bc]                                    ; $73ae: $0a
    ld sp, hl                                     ; $73af: $f9
    ld [bc], a                                    ; $73b0: $02
    add a                                         ; $73b1: $87
    db $f4                                        ; $73b2: $f4
    sub [hl]                                      ; $73b3: $96
    ld d, e                                       ; $73b4: $53
    push bc                                       ; $73b5: $c5
    and b                                         ; $73b6: $a0
    ld b, d                                       ; $73b7: $42
    xor e                                         ; $73b8: $ab
    push hl                                       ; $73b9: $e5
    call nz, $f504                                ; $73ba: $c4 $04 $f5
    ld [bc], a                                    ; $73bd: $02
    ld a, e                                       ; $73be: $7b
    ld bc, $017b                                  ; $73bf: $01 $7b $01
    ld a, e                                       ; $73c2: $7b
    ld bc, $017b                                  ; $73c3: $01 $7b $01
    ld a, e                                       ; $73c6: $7b
    ld bc, $017b                                  ; $73c7: $01 $7b $01
    ld a, e                                       ; $73ca: $7b
    ld bc, $017b                                  ; $73cb: $01 $7b $01
    ld a, e                                       ; $73ce: $7b
    ld bc, $017b                                  ; $73cf: $01 $7b $01
    ld a, e                                       ; $73d2: $7b
    ld bc, $8517                                  ; $73d3: $01 $17 $85
    ld l, h                                       ; $73d6: $6c
    ld a, h                                       ; $73d7: $7c
    ld b, c                                       ; $73d8: $41
    rst $30                                       ; $73d9: $f7
    ld [$08da], a                                 ; $73da: $ea $da $08
    push hl                                       ; $73dd: $e5
    dec b                                         ; $73de: $05
    ld a, e                                       ; $73df: $7b
    ld bc, $017b                                  ; $73e0: $01 $7b $01
    ld a, e                                       ; $73e3: $7b
    ld bc, $017b                                  ; $73e4: $01 $7b $01
    ld a, e                                       ; $73e7: $7b
    ld bc, $017b                                  ; $73e8: $01 $7b $01
    ld a, e                                       ; $73eb: $7b
    ld bc, $017b                                  ; $73ec: $01 $7b $01
    ld a, e                                       ; $73ef: $7b
    ld bc, $017b                                  ; $73f0: $01 $7b $01
    ld a, e                                       ; $73f3: $7b
    ld bc, $017b                                  ; $73f4: $01 $7b $01
    ld a, e                                       ; $73f7: $7b
    ld bc, $017b                                  ; $73f8: $01 $7b $01
    ld a, e                                       ; $73fb: $7b
    ld bc, $017b                                  ; $73fc: $01 $7b $01
    ld a, e                                       ; $73ff: $7b
    ld bc, $017b                                  ; $7400: $01 $7b $01
    ld a, e                                       ; $7403: $7b
    ld bc, $017b                                  ; $7404: $01 $7b $01
    ld a, e                                       ; $7407: $7b
    ld bc, $f507                                  ; $7408: $01 $07 $f5
    adc $50                                       ; $740b: $ce $50
    sbc a                                         ; $740d: $9f
    ld e, a                                       ; $740e: $5f
    ld l, d                                       ; $740f: $6a
    add e                                         ; $7410: $83
    ld a, [hl+]                                   ; $7411: $2a
    ld [c], a                                     ; $7412: $e2
    ld a, h                                       ; $7413: $7c
    ld bc, $017b                                  ; $7414: $01 $7b $01
    ld l, l                                       ; $7417: $6d
    ld a, c                                       ; $7418: $79
    rst $28                                       ; $7419: $ef
    ret nc                                        ; $741a: $d0

    adc a                                         ; $741b: $8f
    cp e                                          ; $741c: $bb
    db $eb                                        ; $741d: $eb
    xor [hl]                                      ; $741e: $ae
    pop de                                        ; $741f: $d1
    sub h                                         ; $7420: $94
    ld [c], a                                     ; $7421: $e2
    and d                                         ; $7422: $a2
    ccf                                           ; $7423: $3f
    rrca                                          ; $7424: $0f
    cp h                                          ; $7425: $bc
    rla                                           ; $7426: $17
    daa                                           ; $7427: $27
    and l                                         ; $7428: $a5
    xor d                                         ; $7429: $aa
    sbc a                                         ; $742a: $9f
    ld c, h                                       ; $742b: $4c
    ld c, c                                       ; $742c: $49
    halt                                          ; $742d: $76
    cp [hl]                                       ; $742e: $be
    sub a                                         ; $742f: $97
    ld a, [de]                                    ; $7430: $1a
    db $dd                                        ; $7431: $dd
    push de                                       ; $7432: $d5
    cpl                                           ; $7433: $2f
    adc $17                                       ; $7434: $ce $17
    sub a                                         ; $7436: $97
    ld a, l                                       ; $7437: $7d
    sub l                                         ; $7438: $95
    add b                                         ; $7439: $80
    or l                                          ; $743a: $b5

Jump_064_743b:
    ld a, [c]                                     ; $743b: $f2
    adc a                                         ; $743c: $8f
    db $fd                                        ; $743d: $fd
    ld [bc], a                                    ; $743e: $02
    ld a, e                                       ; $743f: $7b
    ld bc, $017b                                  ; $7440: $01 $7b $01
    ld a, e                                       ; $7443: $7b
    ld bc, $017b                                  ; $7444: $01 $7b $01
    ld a, e                                       ; $7447: $7b
    ld bc, $017b                                  ; $7448: $01 $7b $01
    ld a, e                                       ; $744b: $7b
    ld bc, $017b                                  ; $744c: $01 $7b $01
    ld a, e                                       ; $744f: $7b
    ld bc, $017b                                  ; $7450: $01 $7b $01
    ld a, e                                       ; $7453: $7b
    ld bc, $017b                                  ; $7454: $01 $7b $01
    ld a, e                                       ; $7457: $7b
    ld bc, $017b                                  ; $7458: $01 $7b $01
    ld a, e                                       ; $745b: $7b
    ld bc, $017b                                  ; $745c: $01 $7b $01
    ld a, e                                       ; $745f: $7b
    ld bc, $017b                                  ; $7460: $01 $7b $01
    rla                                           ; $7463: $17
    ld [hl], l                                    ; $7464: $75
    sbc l                                         ; $7465: $9d
    db $fd                                        ; $7466: $fd
    ld [bc], a                                    ; $7467: $02
    ld a, e                                       ; $7468: $7b
    ld bc, $017b                                  ; $7469: $01 $7b $01
    ld a, e                                       ; $746c: $7b
    ld bc, $017b                                  ; $746d: $01 $7b $01
    ld a, e                                       ; $7470: $7b
    ld bc, $ffff                                  ; $7471: $01 $ff $ff
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

Call_064_75d8:
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

Call_064_75e7:
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

Call_064_7695:
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff

Call_064_769d:
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

Jump_064_7739:
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

Jump_064_778b:
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

Jump_064_7810:
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

Jump_064_786a:
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

Jump_064_78bf:
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

Jump_064_78f3:
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

Call_064_79a1:
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

Jump_064_79d1:
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

Jump_064_7bd9:
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

Jump_064_7d7f:
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

Call_064_7ecb:
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

Call_064_7f8b:
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

Jump_064_7fda:
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
