; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    ld b, c                                       ; $4000: $41
    ld [hl], l                                    ; $4001: $75
    ld b, [hl]                                    ; $4002: $46
    ld d, d                                       ; $4003: $52
    ld hl, $e27b                                  ; $4004: $21 $7b $e2
    db $fc                                        ; $4007: $fc
    rlca                                          ; $4008: $07
    dec b                                         ; $4009: $05
    ld b, e                                       ; $400a: $43
    sbc a                                         ; $400b: $9f
    sub $87                                       ; $400c: $d6 $87
    inc [hl]                                      ; $400e: $34
    inc d                                         ; $400f: $14
    cp [hl]                                       ; $4010: $be
    inc l                                         ; $4011: $2c
    ld [hl], $e4                                  ; $4012: $36 $e4
    sbc e                                         ; $4014: $9b
    jr nz, jr_041_4055                            ; $4015: $20 $3e

    db $f4                                        ; $4017: $f4
    or a                                          ; $4018: $b7
    and e                                         ; $4019: $a3
    ld a, [c]                                     ; $401a: $f2
    cp d                                          ; $401b: $ba
    cp b                                          ; $401c: $b8
    xor c                                         ; $401d: $a9
    xor b                                         ; $401e: $a8
    ld hl, sp+$50                                 ; $401f: $f8 $50
    db $f4                                        ; $4021: $f4
    ld l, c                                       ; $4022: $69
    rst $28                                       ; $4023: $ef
    ld d, e                                       ; $4024: $53
    cp l                                          ; $4025: $bd
    and [hl]                                      ; $4026: $a6
    db $dd                                        ; $4027: $dd
    ld e, b                                       ; $4028: $58
    sub [hl]                                      ; $4029: $96
    scf                                           ; $402a: $37
    ld b, [hl]                                    ; $402b: $46
    db $fc                                        ; $402c: $fc
    rra                                           ; $402d: $1f
    ld a, [hl+]                                   ; $402e: $2a
    pop de                                        ; $402f: $d1
    db $d3                                        ; $4030: $d3
    sub c                                         ; $4031: $91
    sub h                                         ; $4032: $94
    ld e, a                                       ; $4033: $5f
    add $d0                                       ; $4034: $c6 $d0
    and a                                         ; $4036: $a7
    db $ed                                        ; $4037: $ed
    ld d, h                                       ; $4038: $54
    add a                                         ; $4039: $87
    adc e                                         ; $403a: $8b
    rst $10                                       ; $403b: $d7
    sbc [hl]                                      ; $403c: $9e
    or c                                          ; $403d: $b1
    rst $30                                       ; $403e: $f7
    add l                                         ; $403f: $85
    add h                                         ; $4040: $84
    xor b                                         ; $4041: $a8
    sub c                                         ; $4042: $91
    adc c                                         ; $4043: $89
    sbc d                                         ; $4044: $9a
    db $ed                                        ; $4045: $ed
    ld l, $9f                                     ; $4046: $2e $9f
    ld [c], a                                     ; $4048: $e2
    add sp, -$14                                  ; $4049: $e8 $ec
    rst $10                                       ; $404b: $d7
    and l                                         ; $404c: $a5
    ld a, [$8bec]                                 ; $404d: $fa $ec $8b
    rst $30                                       ; $4050: $f7
    ld b, l                                       ; $4051: $45
    ld h, $cb                                     ; $4052: $26 $cb
    ld l, e                                       ; $4054: $6b

jr_041_4055:
    ld l, a                                       ; $4055: $6f
    ld c, b                                       ; $4056: $48
    dec [hl]                                      ; $4057: $35
    sbc e                                         ; $4058: $9b
    daa                                           ; $4059: $27
    xor $ed                                       ; $405a: $ee $ed
    ld a, [$ed15]                                 ; $405c: $fa $15 $ed
    ld d, a                                       ; $405f: $57
    sub l                                         ; $4060: $95
    ld l, $cb                                     ; $4061: $2e $cb
    inc l                                         ; $4063: $2c
    adc l                                         ; $4064: $8d
    cp d                                          ; $4065: $ba
    ld sp, $d3e9                                  ; $4066: $31 $e9 $d3
    ld d, b                                       ; $4069: $50
    inc hl                                        ; $406a: $23
    xor l                                         ; $406b: $ad
    inc [hl]                                      ; $406c: $34
    sub c                                         ; $406d: $91
    cp d                                          ; $406e: $ba
    dec e                                         ; $406f: $1d
    dec [hl]                                      ; $4070: $35
    cp h                                          ; $4071: $bc
    ld [bc], a                                    ; $4072: $02
    ld l, l                                       ; $4073: $6d
    ret                                           ; $4074: $c9


    ld d, a                                       ; $4075: $57
    cp d                                          ; $4076: $ba
    ld d, h                                       ; $4077: $54
    ld l, a                                       ; $4078: $6f
    dec d                                         ; $4079: $15
    or $7e                                        ; $407a: $f6 $7e
    cp $28                                        ; $407c: $fe $28
    adc a                                         ; $407e: $8f
    or a                                          ; $407f: $b7
    rla                                           ; $4080: $17
    add a                                         ; $4081: $87
    ld a, $0d                                     ; $4082: $3e $0d
    dec [hl]                                      ; $4084: $35
    jp nc, Jump_000_134a                          ; $4085: $d2 $4a $13

    xor c                                         ; $4088: $a9
    db $db                                        ; $4089: $db
    ld d, c                                       ; $408a: $51
    jp $1d2b                                      ; $408b: $c3 $2b $1d


    ld d, d                                       ; $408e: $52
    db $ec                                        ; $408f: $ec
    db $fd                                        ; $4090: $fd
    xor c                                         ; $4091: $a9
    or b                                          ; $4092: $b0
    ccf                                           ; $4093: $3f
    or b                                          ; $4094: $b0
    rst $08                                       ; $4095: $cf
    adc e                                         ; $4096: $8b
    dec de                                        ; $4097: $1b
    ei                                            ; $4098: $fb
    cp h                                          ; $4099: $bc
    add e                                         ; $409a: $83
    jp hl                                         ; $409b: $e9


    cp a                                          ; $409c: $bf
    ld c, a                                       ; $409d: $4f
    ld b, e                                       ; $409e: $43
    adc l                                         ; $409f: $8d
    or h                                          ; $40a0: $b4
    jp nc, $ea44                                  ; $40a1: $d2 $44 $ea

    halt                                          ; $40a4: $76
    call nc, $0af0                                ; $40a5: $d4 $f0 $0a
    cp [hl]                                       ; $40a8: $be
    ld l, h                                       ; $40a9: $6c
    cpl                                           ; $40aa: $2f
    db $d3                                        ; $40ab: $d3
    rst $30                                       ; $40ac: $f7
    ld a, l                                       ; $40ad: $7d
    sbc [hl]                                      ; $40ae: $9e
    inc b                                         ; $40af: $04
    ld sp, hl                                     ; $40b0: $f9
    cp c                                          ; $40b1: $b9
    sbc l                                         ; $40b2: $9d
    ld a, [c]                                     ; $40b3: $f2
    rr b                                          ; $40b4: $cb $18
    and d                                         ; $40b6: $a2
    or b                                          ; $40b7: $b0
    rst $30                                       ; $40b8: $f7
    rst $00                                       ; $40b9: $c7
    call $9fde                                    ; $40ba: $cd $de $9f

jr_041_40bd:
    dec b                                         ; $40bd: $05
    sub [hl]                                      ; $40be: $96
    dec c                                         ; $40bf: $0d
    ld h, [hl]                                    ; $40c0: $66
    jr jr_041_40bd                                ; $40c1: $18 $fa

    inc [hl]                                      ; $40c3: $34
    call nc, $2b48                                ; $40c4: $d4 $48 $2b
    ld c, l                                       ; $40c7: $4d
    and h                                         ; $40c8: $a4
    ld l, [hl]                                    ; $40c9: $6e
    ld b, a                                       ; $40ca: $47
    dec c                                         ; $40cb: $0d
    xor a                                         ; $40cc: $af
    ld l, l                                       ; $40cd: $6d
    ld hl, sp+$6b                                 ; $40ce: $f8 $6b
    and [hl]                                      ; $40d0: $a6
    adc l                                         ; $40d1: $8d
    ld hl, sp+$50                                 ; $40d2: $f8 $50
    inc d                                         ; $40d4: $14
    sbc [hl]                                      ; $40d5: $9e
    cp b                                          ; $40d6: $b8
    add hl, hl                                    ; $40d7: $29
    ld e, $b0                                     ; $40d8: $1e $b0
    rst $10                                       ; $40da: $d7
    push bc                                       ; $40db: $c5
    pop bc                                        ; $40dc: $c1
    ld l, b                                       ; $40dd: $68
    add l                                         ; $40de: $85
    ld e, d                                       ; $40df: $5a
    ld l, c                                       ; $40e0: $69
    xor b                                         ; $40e1: $a8
    sub c                                         ; $40e2: $91
    ld d, [hl]                                    ; $40e3: $56
    sbc d                                         ; $40e4: $9a
    ld c, b                                       ; $40e5: $48
    db $dd                                        ; $40e6: $dd
    adc [hl]                                      ; $40e7: $8e
    ld a, [de]                                    ; $40e8: $1a
    ld e, [hl]                                    ; $40e9: $5e
    ld bc, $689d                                  ; $40ea: $01 $9d $68
    ld a, [hl]                                    ; $40ed: $7e
    ld e, l                                       ; $40ee: $5d
    sbc h                                         ; $40ef: $9c
    ld b, c                                       ; $40f0: $41
    ld c, l                                       ; $40f1: $4d
    sbc h                                         ; $40f2: $9c
    rra                                           ; $40f3: $1f
    pop af                                        ; $40f4: $f1
    ld c, [hl]                                    ; $40f5: $4e
    add hl, hl                                    ; $40f6: $29
    ret z                                         ; $40f7: $c8

    rst $28                                       ; $40f8: $ef
    ld l, b                                       ; $40f9: $68
    or h                                          ; $40fa: $b4
    ldh a, [rLY]                                  ; $40fb: $f0 $44
    ld e, l                                       ; $40fd: $5d
    call c, $27e9                                 ; $40fe: $dc $e9 $27
    dec bc                                        ; $4101: $0b
    inc l                                         ; $4102: $2c
    xor $e5                                       ; $4103: $ee $e5
    ld a, [$d434]                                 ; $4105: $fa $34 $d4
    ld c, b                                       ; $4108: $48
    dec hl                                        ; $4109: $2b
    ld c, l                                       ; $410a: $4d
    and h                                         ; $410b: $a4
    ld l, [hl]                                    ; $410c: $6e
    ld b, a                                       ; $410d: $47
    dec c                                         ; $410e: $0d
    xor a                                         ; $410f: $af
    xor l                                         ; $4110: $ad
    ld e, a                                       ; $4111: $5f
    ld d, l                                       ; $4112: $55
    sbc l                                         ; $4113: $9d
    ld l, $35                                     ; $4114: $2e $35
    ld b, d                                       ; $4116: $42
    jp nz, $ce26                                  ; $4117: $c2 $26 $ce

    adc a                                         ; $411a: $8f

Call_041_411b:
    jr nc, jr_041_416a                            ; $411b: $30 $4d

    pop bc                                        ; $411d: $c1
    and l                                         ; $411e: $a5
    or $9b                                        ; $411f: $f6 $9b
    ld de, $dd48                                  ; $4121: $11 $48 $dd
    ld h, c                                       ; $4124: $61
    add [hl]                                      ; $4125: $86
    push de                                       ; $4126: $d5
    ld e, d                                       ; $4127: $5a
    ld bc, $f5be                                  ; $4128: $01 $be $f5
    push af                                       ; $412b: $f5
    dec hl                                        ; $412c: $2b
    sbc [hl]                                      ; $412d: $9e
    ld a, [hl]                                    ; $412e: $7e
    ld b, h                                       ; $412f: $44
    ld h, c                                       ; $4130: $61
    db $d3                                        ; $4131: $d3
    ld [hl], d                                    ; $4132: $72
    inc hl                                        ; $4133: $23
    add sp, -$2d                                  ; $4134: $e8 $d3
    ld hl, $e145                                  ; $4136: $21 $45 $e1
    ld c, c                                       ; $4139: $49
    adc l                                         ; $413a: $8d
    ld [hl], h                                    ; $413b: $74
    ld a, h                                       ; $413c: $7c
    ld a, [de]                                    ; $413d: $1a
    inc l                                         ; $413e: $2c
    adc b                                         ; $413f: $88
    rrca                                          ; $4140: $0f
    ld b, l                                       ; $4141: $45
    pop hl                                        ; $4142: $e1
    ld c, c                                       ; $4143: $49
    ld e, e                                       ; $4144: $5b
    ld b, e                                       ; $4145: $43
    ld h, b                                       ; $4146: $60
    and e                                         ; $4147: $a3

Call_041_4148:
    ld e, a                                       ; $4148: $5f
    ld bc, $196d                                  ; $4149: $01 $6d $19
    dec d                                         ; $414c: $15
    xor $57                                       ; $414d: $ee $57
    cp [hl]                                       ; $414f: $be
    ld [hl-], a                                   ; $4150: $32
    add $fd                                       ; $4151: $c6 $fd
    ld a, [bc]                                    ; $4153: $0a

Jump_041_4154:
    sbc l                                         ; $4154: $9d
    ld b, d                                       ; $4155: $42
    ld c, l                                       ; $4156: $4d
    sbc h                                         ; $4157: $9c
    rra                                           ; $4158: $1f
    pop af                                        ; $4159: $f1
    rst $38                                       ; $415a: $ff
    ld b, l                                       ; $415b: $45
    cp e                                          ; $415c: $bb
    ld a, d                                       ; $415d: $7a
    ld [c], a                                     ; $415e: $e2
    ld b, [hl]                                    ; $415f: $46
    and [hl]                                      ; $4160: $a6
    cp b                                          ; $4161: $b8
    and e                                         ; $4162: $a3
    inc a                                         ; $4163: $3c
    jp hl                                         ; $4164: $e9


    inc c                                         ; $4165: $0c
    ld e, a                                       ; $4166: $5f
    ld [hl], $08                                  ; $4167: $36 $08
    db $f4                                        ; $4169: $f4

jr_041_416a:
    adc c                                         ; $416a: $89
    cpl                                           ; $416b: $2f
    rst $38                                       ; $416c: $ff
    push hl                                       ; $416d: $e5
    sbc c                                         ; $416e: $99
    ld hl, $ba3c                                  ; $416f: $21 $3c $ba
    call nc, Call_041_661d                        ; $4172: $d4 $1d $66
    ld e, b                                       ; $4175: $58
    sbc a                                         ; $4176: $9f
    ld a, [hl-]                                   ; $4177: $3a
    inc hl                                        ; $4178: $23
    ld hl, $ecc7                                  ; $4179: $21 $c7 $ec
    cpl                                           ; $417c: $2f
    push de                                       ; $417d: $d5
    cp c                                          ; $417e: $b9
    adc a                                         ; $417f: $8f
    rst $30                                       ; $4180: $f7
    dec c                                         ; $4181: $0d
    ld sp, hl                                     ; $4182: $f9
    ld [$11dc], a                                 ; $4183: $ea $dc $11
    rst $28                                       ; $4186: $ef
    db $e3                                        ; $4187: $e3
    ld b, [hl]                                    ; $4188: $46
    or d                                          ; $4189: $b2
    sub c                                         ; $418a: $91
    dec b                                         ; $418b: $05
    ld d, [hl]                                    ; $418c: $56
    ld b, [hl]                                    ; $418d: $46
    sub b                                         ; $418e: $90
    and d                                         ; $418f: $a2
    ld a, a                                       ; $4190: $7f
    ld l, l                                       ; $4191: $6d
    rst $18                                       ; $4192: $df
    inc sp                                        ; $4193: $33
    ld a, [$afbe]                                 ; $4194: $fa $be $af
    or l                                          ; $4197: $b5
    ld [bc], a                                    ; $4198: $02
    cp [hl]                                       ; $4199: $be
    inc de                                        ; $419a: $13
    dec sp                                        ; $419b: $3b
    scf                                           ; $419c: $37
    ld [hl-], a                                   ; $419d: $32
    push bc                                       ; $419e: $c5
    pop bc                                        ; $419f: $c1
    db $10                                        ; $41a0: $10
    push af                                       ; $41a1: $f5
    add hl, hl                                    ; $41a2: $29
    or e                                          ; $41a3: $b3
    daa                                           ; $41a4: $27
    dec de                                        ; $41a5: $1b
    ld e, c                                       ; $41a6: $59
    ld h, b                                       ; $41a7: $60
    ld h, l                                       ; $41a8: $65
    inc b                                         ; $41a9: $04
    add hl, hl                                    ; $41aa: $29
    ld a, [$f6d7]                                 ; $41ab: $fa $d7 $f6
    dec a                                         ; $41ae: $3d
    and e                                         ; $41af: $a3
    ld e, a                                       ; $41b0: $5f
    ld bc, $0fad                                  ; $41b1: $01 $ad $0f
    ld l, c                                       ; $41b4: $69
    jr z, @+$7e                                   ; $41b5: $28 $7c

    ld b, c                                       ; $41b7: $41
    add hl, hl                                    ; $41b8: $29
    jr nc, jr_041_421f                            ; $41b9: $30 $64

    cp c                                          ; $41bb: $b9
    ld b, $a2                                     ; $41bc: $06 $a2
    ld b, c                                       ; $41be: $41
    ld hl, sp+$36                                 ; $41bf: $f8 $36
    ld [hl], h                                    ; $41c1: $74
    xor c                                         ; $41c2: $a9
    dec sp                                        ; $41c3: $3b
    call z, Call_041_5d30                         ; $41c4: $cc $30 $5d
    ld h, $de                                     ; $41c7: $26 $de
    sub e                                         ; $41c9: $93
    or e                                          ; $41ca: $b3
    cp a                                          ; $41cb: $bf
    inc l                                         ; $41cc: $2c
    or b                                          ; $41cd: $b0
    xor b                                         ; $41ce: $a8
    inc hl                                        ; $41cf: $23
    ld hl, $86fc                                  ; $41d0: $21 $fc $86
    cp b                                          ; $41d3: $b8
    xor c                                         ; $41d4: $a9
    sub b                                         ; $41d5: $90
    adc $f0                                       ; $41d6: $ce $f0
    ld h, l                                       ; $41d8: $65
    add e                                         ; $41d9: $83
    ld b, b                                       ; $41da: $40
    cp a                                          ; $41db: $bf
    ld [bc], a                                    ; $41dc: $02
    dec l                                         ; $41dd: $2d
    and a                                         ; $41de: $a7
    add d                                         ; $41df: $82
    or [hl]                                       ; $41e0: $b6
    ld l, a                                       ; $41e1: $6f
    ld [c], a                                     ; $41e2: $e2
    db $fc                                        ; $41e3: $fc
    ld [$0889], sp                                ; $41e4: $08 $89 $08
    ld a, [c]                                     ; $41e7: $f2
    and d                                         ; $41e8: $a2
    xor $19                                       ; $41e9: $ee $19
    dec [hl]                                      ; $41eb: $35
    ld d, a                                       ; $41ec: $57
    ld [hl], l                                    ; $41ed: $75
    ld b, [hl]                                    ; $41ee: $46
    ld [c], a                                     ; $41ef: $e2
    db $10                                        ; $41f0: $10
    ld b, c                                       ; $41f1: $41
    ld e, [hl]                                    ; $41f2: $5e
    sub h                                         ; $41f3: $94
    and c                                         ; $41f4: $a1
    sbc d                                         ; $41f5: $9a
    ld a, b                                       ; $41f6: $78
    ld c, a                                       ; $41f7: $4f
    sbc h                                         ; $41f8: $9c
    cp a                                          ; $41f9: $bf
    sbc $c8                                       ; $41fa: $de $c8
    ld c, b                                       ; $41fc: $48
    sbc [hl]                                      ; $41fd: $9e
    inc [hl]                                      ; $41fe: $34
    ld d, h                                       ; $41ff: $54
    sub e                                         ; $4200: $93
    push bc                                       ; $4201: $c5
    ld d, b                                       ; $4202: $50
    ld h, $3e                                     ; $4203: $26 $3e
    db $f4                                        ; $4205: $f4
    or a                                          ; $4206: $b7
    and e                                         ; $4207: $a3
    ld [hl-], a                                   ; $4208: $32
    ld d, c                                       ; $4209: $51
    cp b                                          ; $420a: $b8
    sub b                                         ; $420b: $90
    ld d, e                                       ; $420c: $53
    ret c                                         ; $420d: $d8

    ld l, $6a                                     ; $420e: $2e $6a
    or [hl]                                       ; $4210: $b6
    cp e                                          ; $4211: $bb
    ld a, $9d                                     ; $4212: $3e $9d
    ld e, [hl]                                    ; $4214: $5e
    call c, $7908                                 ; $4215: $dc $08 $79
    db $10                                        ; $4218: $10
    db $e4                                        ; $4219: $e4
    sbc l                                         ; $421a: $9d

Call_041_421b:
    inc bc                                        ; $421b: $03

jr_041_421c:
    di                                            ; $421c: $f3
    dec de                                        ; $421d: $1b
    ld [hl], h                                    ; $421e: $74

jr_041_421f:
    or c                                          ; $421f: $b1
    rst $10                                       ; $4220: $d7
    sbc [hl]                                      ; $4221: $9e
    ld c, b                                       ; $4222: $48
    cp h                                          ; $4223: $bc
    sbc d                                         ; $4224: $9a
    dec hl                                        ; $4225: $2b
    cp [hl]                                       ; $4226: $be
    ld a, $f4                                     ; $4227: $3e $f4
    sbc b                                         ; $4229: $98
    ld l, e                                       ; $422a: $6b
    xor [hl]                                      ; $422b: $ae
    db $ed                                        ; $422c: $ed
    ld a, l                                       ; $422d: $7d
    ld d, $9b                                     ; $422e: $16 $9b
    ld d, d                                       ; $4230: $52
    xor [hl]                                      ; $4231: $ae
    ld a, [$b390]                                 ; $4232: $fa $90 $b3
    ld sp, hl                                     ; $4235: $f9
    di                                            ; $4236: $f3
    and d                                         ; $4237: $a2
    sbc [hl]                                      ; $4238: $9e
    sub c                                         ; $4239: $91
    adc a                                         ; $423a: $8f
    sbc e                                         ; $423b: $9b
    ld l, d                                       ; $423c: $6a
    add c                                         ; $423d: $81
    cp l                                          ; $423e: $bd
    sub c                                         ; $423f: $91
    ret c                                         ; $4240: $d8

    and a                                         ; $4241: $a7
    bit 0, l                                      ; $4242: $cb $45
    call Call_041_5776                            ; $4244: $cd $76 $57
    ld [hl], e                                    ; $4247: $73
    dec b                                         ; $4248: $05
    ld [hl], l                                    ; $4249: $75
    ld b, [hl]                                    ; $424a: $46
    ld [c], a                                     ; $424b: $e2
    dec a                                         ; $424c: $3d
    cp c                                          ; $424d: $b9
    ld [c], a                                     ; $424e: $e2
    db $10                                        ; $424f: $10
    rra                                           ; $4250: $1f
    ld a, d                                       ; $4251: $7a
    cp d                                          ; $4252: $ba
    call nc, Call_041_661d                        ; $4253: $d4 $1d $66
    ld e, b                                       ; $4256: $58
    call Call_041_6d15                            ; $4257: $cd $15 $6d
    reti                                          ; $425a: $d9


    inc de                                        ; $425b: $13
    rrca                                          ; $425c: $0f
    cp d                                          ; $425d: $ba
    call nc, Call_041_661d                        ; $425e: $d4 $1d $66
    ld e, b                                       ; $4261: $58
    sbc a                                         ; $4262: $9f
    jp c, Jump_041_717f                           ; $4263: $da $7f $71

    cp a                                          ; $4266: $bf
    inc e                                         ; $4267: $1c
    ld c, a                                       ; $4268: $4f
    sbc h                                         ; $4269: $9c
    rra                                           ; $426a: $1f
    xor c                                         ; $426b: $a9
    sub c                                         ; $426c: $91
    ld a, [bc]                                    ; $426d: $0a
    jp c, $89be                                   ; $426e: $da $be $89

    adc h                                         ; $4271: $8c
    and h                                         ; $4272: $a4
    ld a, b                                       ; $4273: $78
    ld c, a                                       ; $4274: $4f
    cp l                                          ; $4275: $bd
    ld hl, $7fce                                  ; $4276: $21 $ce $7f
    xor c                                         ; $4279: $a9
    sub c                                         ; $427a: $91
    push hl                                       ; $427b: $e5
    ld a, [de]                                    ; $427c: $1a
    adc b                                         ; $427d: $88
    ld [hl], a                                    ; $427e: $77
    adc h                                         ; $427f: $8c
    ld de, $6175                                  ; $4280: $11 $75 $61
    db $f4                                        ; $4283: $f4
    dec hl                                        ; $4284: $2b
    db $ed                                        ; $4285: $ed
    rst $38                                       ; $4286: $ff
    or $0e                                        ; $4287: $f6 $0e
    add c                                         ; $4289: $81
    jr z, jr_041_421c                             ; $428a: $28 $90

    adc b                                         ; $428c: $88
    sbc l                                         ; $428d: $9d
    ld l, b                                       ; $428e: $68
    or $c4                                        ; $428f: $f6 $c4
    ld a, e                                       ; $4291: $7b
    ld b, e                                       ; $4292: $43

Call_041_4293:
    ld l, [hl]                                    ; $4293: $6e
    rst $00                                       ; $4294: $c7
    dec e                                         ; $4295: $1d
    or $c4                                        ; $4296: $f6 $c4
    ld sp, hl                                     ; $4298: $f9
    ld de, $8919                                  ; $4299: $11 $19 $89
    cp e                                          ; $429c: $bb
    ld a, b                                       ; $429d: $78
    and a                                         ; $429e: $a7
    sub h                                         ; $429f: $94
    bit 1, l                                      ; $42a0: $cb $4d
    call $06b4                                    ; $42a2: $cd $b4 $06
    ld a, [c]                                     ; $42a5: $f2
    ld [c], a                                     ; $42a6: $e2

Call_041_42a7:
    ld b, e                                       ; $42a7: $43
    ld d, c                                       ; $42a8: $51
    ld hl, sp-$4d                                 ; $42a9: $f8 $b3
    inc c                                         ; $42ab: $0c
    pop af                                        ; $42ac: $f1
    ld b, [hl]                                    ; $42ad: $46
    db $10                                        ; $42ae: $10
    dec sp                                        ; $42af: $3b
    dec c                                         ; $42b0: $0d
    ld [bc], a                                    ; $42b1: $02
    ld a, e                                       ; $42b2: $7b
    or [hl]                                       ; $42b3: $b6
    ld [hl], e                                    ; $42b4: $73
    ret nc                                        ; $42b5: $d0

    push bc                                       ; $42b6: $c5
    ld d, c                                       ; $42b7: $51
    add e                                         ; $42b8: $83
    push de                                       ; $42b9: $d5
    sub e                                         ; $42ba: $93
    adc l                                         ; $42bb: $8d
    jr nc, jr_041_4303                            ; $42bc: $30 $45

    cp h                                          ; $42be: $bc
    or b                                          ; $42bf: $b0
    ld h, e                                       ; $42c0: $63
    db $f4                                        ; $42c1: $f4
    dec hl                                        ; $42c2: $2b
    dec l                                         ; $42c3: $2d
    rst $00                                       ; $42c4: $c7
    ld c, l                                       ; $42c5: $4d
    xor c                                         ; $42c6: $a9
    cpl                                           ; $42c7: $2f
    adc $8f                                       ; $42c8: $ce $8f
    add sp, -$51                                  ; $42ca: $e8 $af
    adc h                                         ; $42cc: $8c
    ld h, $1f                                     ; $42cd: $26 $1f
    or [hl]                                       ; $42cf: $b6
    ld h, a                                       ; $42d0: $67
    ld a, [hl]                                    ; $42d1: $7e
    ld b, e                                       ; $42d2: $43
    xor b                                         ; $42d3: $a8
    ld h, h                                       ; $42d4: $64
    ld sp, $c32c                                  ; $42d5: $31 $2c $c3
    db $10                                        ; $42d8: $10
    ld b, [hl]                                    ; $42d9: $46
    call $ad15                                    ; $42da: $cd $15 $ad
    ld h, c                                       ; $42dd: $61
    rst $00                                       ; $42de: $c7
    call Call_041_465e                            ; $42df: $cd $5e $46
    sub a                                         ; $42e2: $97
    jp c, Jump_041_466f                           ; $42e3: $da $6f $46

    and b                                         ; $42e6: $a0
    ld e, a                                       ; $42e7: $5f
    ld bc, $d21d                                  ; $42e8: $01 $1d $d2
    rla                                           ; $42eb: $17
    ld b, [hl]                                    ; $42ec: $46
    ld a, [bc]                                    ; $42ed: $0a
    adc a                                         ; $42ee: $8f
    dec e                                         ; $42ef: $1d
    or d                                          ; $42f0: $b2
    ret nz                                        ; $42f1: $c0

    ld b, d                                       ; $42f2: $42
    push hl                                       ; $42f3: $e5
    ld d, e                                       ; $42f4: $53
    cp l                                          ; $42f5: $bd
    cp b                                          ; $42f6: $b8
    ld a, e                                       ; $42f7: $7b
    cp $a8                                        ; $42f8: $fe $a8
    adc e                                         ; $42fa: $8b
    sbc d                                         ; $42fb: $9a
    db $ed                                        ; $42fc: $ed
    xor [hl]                                      ; $42fd: $ae
    ld e, a                                       ; $42fe: $5f
    ld bc, $521d                                  ; $42ff: $01 $1d $52
    inc d                                         ; $4302: $14

jr_041_4303:
    cp $90                                        ; $4303: $fe $90
    or e                                          ; $4305: $b3
    ld sp, hl                                     ; $4306: $f9
    jp Jump_000_1a97                              ; $4307: $c3 $97 $1a


    ld a, c                                       ; $430a: $79
    ld d, c                                       ; $430b: $51
    rst $08                                       ; $430c: $cf
    rra                                           ; $430d: $1f
    dec a                                         ; $430e: $3d
    inc b                                         ; $430f: $04
    cp d                                          ; $4310: $ba
    call nc, $337e                                ; $4311: $d4 $7e $33
    ld [bc], a                                    ; $4314: $02
    db $fd                                        ; $4315: $fd
    ld a, [bc]                                    ; $4316: $0a
    xor l                                         ; $4317: $ad
    ld a, [hl+]                                   ; $4318: $2a
    sub h                                         ; $4319: $94
    ld [hl-], a                                   ; $431a: $32
    add hl, hl                                    ; $431b: $29
    ld l, a                                       ; $431c: $6f
    push af                                       ; $431d: $f5
    db $e4                                        ; $431e: $e4
    push bc                                       ; $431f: $c5
    adc l                                         ; $4320: $8d
    ld a, l                                       ; $4321: $7d
    ld d, $68                                     ; $4322: $16 $68
    jp c, $2e8d                                   ; $4324: $da $8d $2e

    sbc d                                         ; $4327: $9a
    dec a                                         ; $4328: $3d
    pop af                                        ; $4329: $f1
    sub b                                         ; $432a: $90
    rrca                                          ; $432b: $0f
    and e                                         ; $432c: $a3
    and $0a                                       ; $432d: $e6 $0a
    ld l, l                                       ; $432f: $6d
    adc [hl]                                      ; $4330: $8e
    dec d                                         ; $4331: $15
    ld b, h                                       ; $4332: $44
    ld b, [hl]                                    ; $4333: $46
    ld d, d                                       ; $4334: $52
    ld [hl], b                                    ; $4335: $70
    ld e, c                                       ; $4336: $59
    and $e2                                       ; $4337: $e6 $e2
    ld b, e                                       ; $4339: $43
    or c                                          ; $433a: $b1
    rst $30                                       ; $433b: $f7
    db $c4, $f9, $11                              ; $433c: $c4 $f9 $11
    and [hl]                                      ; $433f: $a6
    call z, Call_041_6717                         ; $4340: $cc $17 $67
    ld d, b                                       ; $4343: $50
    inc hl                                        ; $4344: $23
    db $d3                                        ; $4345: $d3
    xor a                                         ; $4346: $af
    cp [hl]                                       ; $4347: $be

jr_041_4348:
    ld a, h                                       ; $4348: $7c
    ld e, a                                       ; $4349: $5f
    ld c, l                                       ; $434a: $4d
    sbc $ec                                       ; $434b: $de $ec
    ret z                                         ; $434d: $c8

    rla                                           ; $434e: $17
    dec [hl]                                      ; $434f: $35
    ld sp, hl                                     ; $4350: $f9
    call nc, $ad1e                                ; $4351: $d4 $1e $ad
    cp e                                          ; $4354: $bb
    scf                                           ; $4355: $37
    ld l, $7d                                     ; $4356: $2e $7d
    jp c, Jump_000_3516                           ; $4358: $da $16 $35

    and l                                         ; $435b: $a5
    inc a                                         ; $435c: $3c
    inc hl                                        ; $435d: $23
    dec de                                        ; $435e: $1b
    ld hl, $b0a7                                  ; $435f: $21 $a7 $b0

jr_041_4362:
    ld hl, $ce54                                  ; $4362: $21 $54 $ce
    dec sp                                        ; $4365: $3b
    ld d, [hl]                                    ; $4366: $56
    sbc l                                         ; $4367: $9d
    ld l, $8b                                     ; $4368: $2e $8b
    ld e, l                                       ; $436a: $5d
    push af                                       ; $436b: $f5
    ld d, c                                       ; $436c: $51
    sub a                                         ; $436d: $97
    ld [c], a                                     ; $436e: $e2
    jr nz, jr_041_437b                            ; $436f: $20 $0a

    add [hl]                                      ; $4371: $86
    xor b                                         ; $4372: $a8
    rst $18                                       ; $4373: $df
    ld h, c                                       ; $4374: $61
    add e                                         ; $4375: $83
    ld c, h                                       ; $4376: $4c
    cp a                                          ; $4377: $bf
    ld [bc], a                                    ; $4378: $02
    sbc [hl]                                      ; $4379: $9e
    ld h, e                                       ; $437a: $63

jr_041_437b:
    xor a                                         ; $437b: $af
    ld l, c                                       ; $437c: $69
    scf                                           ; $437d: $37
    cp d                                          ; $437e: $ba
    inc d                                         ; $437f: $14
    ld l, b                                       ; $4380: $68
    db $f4                                        ; $4381: $f4
    jr @-$29                                      ; $4382: $18 $d5

    push af                                       ; $4384: $f5
    dec hl                                        ; $4385: $2b
    xor l                                         ; $4386: $ad
    ld a, a                                       ; $4387: $7f
    ld a, h                                       ; $4388: $7c
    add sp, -$5b                                  ; $4389: $e8 $a5
    db $fc                                        ; $438b: $fc
    ld a, $43                                     ; $438c: $3e $43
    dec [hl]                                      ; $438e: $35
    add hl, hl                                    ; $438f: $29
    db $f4                                        ; $4390: $f4
    and d                                         ; $4391: $a2
    ld a, a                                       ; $4392: $7f
    ld h, [hl]                                    ; $4393: $66
    db $ec                                        ; $4394: $ec
    ld a, l                                       ; $4395: $7d
    ld b, c                                       ; $4396: $41
    sbc [hl]                                      ; $4397: $9e
    reti                                          ; $4398: $d9


    sbc [hl]                                      ; $4399: $9e
    add h                                         ; $439a: $84
    dec d                                         ; $439b: $15
    jr jr_041_4348                                ; $439c: $18 $aa

jr_041_439e:
    ret                                           ; $439e: $c9


    db $ed                                        ; $439f: $ed

jr_041_43a0:
    db $ec                                        ; $43a0: $ec
    rst $10                                       ; $43a1: $d7
    ld h, $de                                     ; $43a2: $26 $de
    sub e                                         ; $43a4: $93
    ret                                           ; $43a5: $c9


    and a                                         ; $43a6: $a7
    or $68                                        ; $43a7: $f6 $68
    db $dd                                        ; $43a9: $dd
    cp l                                          ; $43aa: $bd
    ld [hl], c                                    ; $43ab: $71
    jp hl                                         ; $43ac: $e9


    db $d3                                        ; $43ad: $d3
    ld sp, $8c04                                  ; $43ae: $31 $04 $8c
    ld d, h                                       ; $43b1: $54
    cpl                                           ; $43b2: $2f
    rla                                           ; $43b3: $17
    ld h, h                                       ; $43b4: $64
    add hl, sp                                    ; $43b5: $39
    xor b                                         ; $43b6: $a8
    adc e                                         ; $43b7: $8b
    add d                                         ; $43b8: $82
    or b                                          ; $43b9: $b0
    ld c, l                                       ; $43ba: $4d
    or $47                                        ; $43bb: $f6 $47
    rst $38                                       ; $43bd: $ff
    and $3e                                       ; $43be: $e6 $3e
    adc b                                         ; $43c0: $88
    adc h                                         ; $43c1: $8c
    and h                                         ; $43c2: $a4
    ld [bc], a                                    ; $43c3: $02
    inc sp                                        ; $43c4: $33
    jr jr_041_43a0                                ; $43c5: $18 $d9

    adc b                                         ; $43c7: $88
    cp $9d                                        ; $43c8: $fe $9d
    di                                            ; $43ca: $f3
    add e                                         ; $43cb: $83
    add hl, de                                    ; $43cc: $19
    xor c                                         ; $43cd: $a9
    ld e, [hl]                                    ; $43ce: $5e
    dec sp                                        ; $43cf: $3b
    rst $20                                       ; $43d0: $e7
    ld b, a                                       ; $43d1: $47
    ld c, [hl]                                    ; $43d2: $4e
    ld a, [c]                                     ; $43d3: $f2
    adc $87                                       ; $43d4: $ce $87
    ld a, [hl]                                    ; $43d6: $7e
    sbc a                                         ; $43d7: $9f
    ld c, $fc                                     ; $43d8: $0e $fc
    cp d                                          ; $43da: $ba
    jr nz, jr_041_4362                            ; $43db: $20 $85

    sbc a                                         ; $43dd: $9f
    sub c                                         ; $43de: $91
    ld h, a                                       ; $43df: $67
    add [hl]                                      ; $43e0: $86
    ldh a, [$e5]                                  ; $43e1: $f0 $e5
    ld [hl], a                                    ; $43e3: $77
    call c, $afef                                 ; $43e4: $dc $ef $af
    sbc $26                                       ; $43e7: $de $26
    jp c, $2f69                                   ; $43e9: $da $69 $2f

    adc h                                         ; $43ec: $8c
    jr nz, jr_041_439e                            ; $43ed: $20 $af

    db $ed                                        ; $43ef: $ed
    bit 5, a                                      ; $43f0: $cb $6f
    or [hl]                                       ; $43f2: $b6
    dec bc                                        ; $43f3: $0b
    jp $f4ec                                      ; $43f4: $c3 $ec $f4


    or a                                          ; $43f7: $b7
    cpl                                           ; $43f8: $2f
    push de                                       ; $43f9: $d5
    inc d                                         ; $43fa: $14
    or [hl]                                       ; $43fb: $b6
    db $eb                                        ; $43fc: $eb
    ld d, a                                       ; $43fd: $57
    dec e                                         ; $43fe: $1d
    jp $f4ec                                      ; $43ff: $c3 $ec $f4


    or a                                          ; $4402: $b7
    cpl                                           ; $4403: $2f
    push de                                       ; $4404: $d5
    inc d                                         ; $4405: $14
    or [hl]                                       ; $4406: $b6
    xor e                                         ; $4407: $ab
    or l                                          ; $4408: $b5
    ld [bc], a                                    ; $4409: $02
    sbc l                                         ; $440a: $9d
    adc [hl]                                      ; $440b: $8e
    add hl, de                                    ; $440c: $19
    ld l, $fc                                     ; $440d: $2e $fc
    jp nz, $3713                                  ; $440f: $c2 $13 $37

    ld [hl-], a                                   ; $4412: $32
    push bc                                       ; $4413: $c5
    pop bc                                        ; $4414: $c1
    db $10                                        ; $4415: $10
    rra                                           ; $4416: $1f
    ld a, [$f9db]                                 ; $4417: $fa $db $f9
    sub c                                         ; $441a: $91
    inc de                                        ; $441b: $13
    rst $30                                       ; $441c: $f7
    jp nz, Jump_041_5728                          ; $441d: $c2 $28 $57

    ld c, l                                       ; $4420: $4d
    cp a                                          ; $4421: $bf
    ld [bc], a                                    ; $4422: $02
    xor l                                         ; $4423: $ad
    xor $8d                                       ; $4424: $ee $8d
    add sp, -$21                                  ; $4426: $e8 $df
    sbc h                                         ; $4428: $9c
    rra                                           ; $4429: $1f
    dec [hl]                                      ; $442a: $35
    ld d, a                                       ; $442b: $57
    xor l                                         ; $442c: $ad
    pop bc                                        ; $442d: $c1
    xor a                                         ; $442e: $af
    dec bc                                        ; $442f: $0b

Jump_041_4430:
    dec d                                         ; $4430: $15
    rrca                                          ; $4431: $0f
    sub h                                         ; $4432: $94
    dec b                                         ; $4433: $05
    halt                                          ; $4434: $76
    db $10                                        ; $4435: $10
    ld [c], a                                     ; $4436: $e2
    add a                                         ; $4437: $87
    ld b, a                                       ; $4438: $47
    adc $7b                                       ; $4439: $ce $7b
    xor $85                                       ; $443b: $ee $85
    pop de                                        ; $443d: $d1
    and a                                         ; $443e: $a7
    inc bc                                        ; $443f: $03
    and $ab                                       ; $4440: $e6 $ab
    ld h, $fb                                     ; $4442: $26 $fb
    ret                                           ; $4444: $c9


    or c                                          ; $4445: $b1
    pop de                                        ; $4446: $d1
    and l                                         ; $4447: $a5
    or $9b                                        ; $4448: $f6 $9b
    ld de, $57e8                                  ; $444a: $11 $e8 $57
    ld l, l                                       ; $444d: $6d
    ld c, a                                       ; $444e: $4f
    rst $18                                       ; $444f: $df
    rst $30                                       ; $4450: $f7
    and c                                         ; $4451: $a1
    cp $aa                                        ; $4452: $fe $aa
    rst $28                                       ; $4454: $ef
    ei                                            ; $4455: $fb
    ld l, b                                       ; $4456: $68
    or $c4                                        ; $4457: $f6 $c4
    ld b, e                                       ; $4459: $43
    cp a                                          ; $445a: $bf
    ld [bc], a                                    ; $445b: $02
    ld l, l                                       ; $445c: $6d
    db $e4                                        ; $445d: $e4
    dec d                                         ; $445e: $15
    ld c, d                                       ; $445f: $4a
    sbc c                                         ; $4460: $99
    cp b                                          ; $4461: $b8
    res 2, a                                      ; $4462: $cb $97
    dec b                                         ; $4464: $05
    call z, $2a1f                                 ; $4465: $cc $1f $2a
    rra                                           ; $4468: $1f
    dec a                                         ; $4469: $3d
    or $fe                                        ; $446a: $f6 $fe
    cp b                                          ; $446c: $b8
    xor a                                         ; $446d: $af
    xor d                                         ; $446e: $aa
    sub e                                         ; $446f: $93
    rst $20                                       ; $4470: $e7
    rst $08                                       ; $4471: $cf
    inc sp                                        ; $4472: $33
    db $db                                        ; $4473: $db
    sub e                                         ; $4474: $93
    or b                                          ; $4475: $b0
    ld [hl-], a                                   ; $4476: $32
    cp c                                          ; $4477: $b9
    sub h                                         ; $4478: $94
    ld h, c                                       ; $4479: $61
    add [hl]                                      ; $447a: $86
    reti                                          ; $447b: $d9


    dec bc                                        ; $447c: $0b
    ld l, $de                                     ; $447d: $2e $de
    sub e                                         ; $447f: $93
    ret                                           ; $4480: $c9


    and a                                         ; $4481: $a7
    or $68                                        ; $4482: $f6 $68
    db $dd                                        ; $4484: $dd
    cp l                                          ; $4485: $bd
    ld [hl], c                                    ; $4486: $71
    jp hl                                         ; $4487: $e9


    ld d, a                                       ; $4488: $57
    ld l, l                                       ; $4489: $6d
    ld hl, sp+$4f                                 ; $448a: $f8 $4f
    rla                                           ; $448c: $17
    and [hl]                                      ; $448d: $a6
    cp d                                          ; $448e: $ba
    ld hl, sp-$01                                 ; $448f: $f8 $ff
    ld h, d                                       ; $4491: $62
    rst $00                                       ; $4492: $c7
    ld [hl], $e4                                  ; $4493: $36 $e4
    di                                            ; $4495: $f3
    db $e4                                        ; $4496: $e4
    halt                                          ; $4497: $76
    sbc b                                         ; $4498: $98
    ld c, [hl]                                    ; $4499: $4e
    ld l, h                                       ; $449a: $6c
    jp z, $b532                                   ; $449b: $ca $32 $b5

    ld d, [hl]                                    ; $449e: $56
    cp [hl]                                       ; $449f: $be
    push af                                       ; $44a0: $f5
    jp hl                                         ; $44a1: $e9


    jp nc, Jump_041_7141                          ; $44a2: $d2 $41 $71

    ld l, a                                       ; $44a5: $6f
    xor c                                         ; $44a6: $a9
    ld de, $7a1f                                  ; $44a7: $11 $1f $7a
    ld [hl], c                                    ; $44aa: $71
    inc hl                                        ; $44ab: $23
    xor c                                         ; $44ac: $a9
    ret nc                                        ; $44ad: $d0

    and a                                         ; $44ae: $a7
    dec l                                         ; $44af: $2d
    ld a, e                                       ; $44b0: $7b
    ld [c], a                                     ; $44b1: $e2
    and c                                         ; $44b2: $a1
    ld e, a                                       ; $44b3: $5f
    ld bc, $41ad                                  ; $44b4: $01 $ad $41
    ret nc                                        ; $44b7: $d0

    and a                                         ; $44b8: $a7
    ld d, l                                       ; $44b9: $55
    add l                                         ; $44ba: $85
    ld d, d                                       ; $44bb: $52
    ld h, $0e                                     ; $44bc: $26 $0e
    and $9e                                       ; $44be: $e6 $9e
    ld de, $9175                                  ; $44c0: $11 $75 $91
    sub c                                         ; $44c3: $91
    db $fc                                        ; $44c4: $fc
    sbc $23                                       ; $44c5: $de $23
    db $fc                                        ; $44c7: $fc
    ld a, [c]                                     ; $44c8: $f2
    ld b, [hl]                                    ; $44c9: $46
    ld e, [hl]                                    ; $44ca: $5e
    ld c, e                                       ; $44cb: $4b
    pop af                                        ; $44cc: $f1
    jp nc, $8bb1                                  ; $44cd: $d2 $b1 $8b

    ld a, [$029d]                                 ; $44d0: $fa $9d $02

jr_041_44d3:
    pop hl                                        ; $44d3: $e1
    add e                                         ; $44d4: $83
    ld c, l                                       ; $44d5: $4d
    ld d, $3b                                     ; $44d6: $16 $3b
    ld [hl], c                                    ; $44d8: $71
    or a                                          ; $44d9: $b7
    db $fc                                        ; $44da: $fc
    ld b, [hl]                                    ; $44db: $46
    call c, $8ca5                                 ; $44dc: $dc $a5 $8c
    ld c, h                                       ; $44df: $4c
    jp z, Jump_000_24f2                           ; $44e0: $ca $f2 $24

    add h                                         ; $44e3: $84
    and a                                         ; $44e4: $a7
    jr nz, @-$30                                  ; $44e5: $20 $ce

    ldh a, [$4c]                                  ; $44e7: $f0 $4c
    dec c                                         ; $44e9: $0d
    add hl, hl                                    ; $44ea: $29
    ld l, h                                       ; $44eb: $6c
    ld d, a                                       ; $44ec: $57
    call c, $f0bd                                 ; $44ed: $dc $bd $f0
    push af                                       ; $44f0: $f5
    ld l, c                                       ; $44f1: $69
    inc hl                                        ; $44f2: $23
    ld [$082a], a                                 ; $44f3: $ea $2a $08
    sbc a                                         ; $44f6: $9f
    ld a, e                                       ; $44f7: $7b
    ld b, $79                                     ; $44f8: $06 $79
    ld [hl], c                                    ; $44fa: $71
    ld a, [hl]                                    ; $44fb: $7e
    ld h, h                                       ; $44fc: $64
    add hl, de                                    ; $44fd: $19
    ld [hl], $e8                                  ; $44fe: $36 $e8
    push af                                       ; $4500: $f5
    ld [$814a], sp                                ; $4501: $08 $4a $81
    cp c                                          ; $4504: $b9
    dec bc                                        ; $4505: $0b
    sub l                                         ; $4506: $95
    jr nc, jr_041_44d3                            ; $4507: $30 $ca

    ret c                                         ; $4509: $d8

    ld b, h                                       ; $450a: $44
    ld [hl], b                                    ; $450b: $70
    ld [hl], c                                    ; $450c: $71
    ld h, e                                       ; $450d: $63
    halt                                          ; $450e: $76
    ld l, d                                       ; $450f: $6a
    ld l, $fb                                     ; $4510: $2e $fb
    add hl, de                                    ; $4512: $19
    or $fb                                        ; $4513: $f6 $fb
    ld a, [$aab4]                                 ; $4515: $fa $b4 $aa
    ld d, b                                       ; $4518: $50
    jp z, Jump_041_45e4                           ; $4519: $ca $e4 $45

    db $dd                                        ; $451c: $dd
    ld d, a                                       ; $451d: $57
    db $d3                                        ; $451e: $d3
    xor a                                         ; $451f: $af
    ld l, l                                       ; $4520: $6d
    jr c, jr_041_455a                             ; $4521: $38 $37

    ld a, h                                       ; $4523: $7c
    dec [hl]                                      ; $4524: $35
    db $e3                                        ; $4525: $e3
    add hl, bc                                    ; $4526: $09
    ld [hl], e                                    ; $4527: $73
    rra                                           ; $4528: $1f
    ld [hl], l                                    ; $4529: $75
    sub c                                         ; $452a: $91
    sub c                                         ; $452b: $91
    inc l                                         ; $452c: $2c
    jr nc, jr_041_4534                            ; $452d: $30 $05

    ld b, e                                       ; $452f: $43
    ld l, [hl]                                    ; $4530: $6e
    ld h, a                                       ; $4531: $67
    ld sp, hl                                     ; $4532: $f9
    ld d, d                                       ; $4533: $52

jr_041_4534:
    and [hl]                                      ; $4534: $a6
    and $0a                                       ; $4535: $e6 $0a
    ld [hl], l                                    ; $4537: $75
    ld b, [hl]                                    ; $4538: $46
    ld d, d                                       ; $4539: $52
    inc hl                                        ; $453a: $23
    push hl                                       ; $453b: $e5
    inc e                                         ; $453c: $1c
    or l                                          ; $453d: $b5
    adc c                                         ; $453e: $89
    ld e, l                                       ; $453f: $5d
    push af                                       ; $4540: $f5
    ld [bc], a                                    ; $4541: $02
    ld b, e                                       ; $4542: $43
    call nc, $cca7                                ; $4543: $d4 $a7 $cc
    ld a, $5d                                     ; $4546: $3e $5d
    ld l, d                                       ; $4548: $6a
    cp a                                          ; $4549: $bf
    add hl, de                                    ; $454a: $19
    add c                                         ; $454b: $81
    ld a, [hl]                                    ; $454c: $7e
    dec b                                         ; $454d: $05
    db $ed                                        ; $454e: $ed
    db $d3                                        ; $454f: $d3
    ld hl, $4f8f                                  ; $4550: $21 $8f $4f
    rla                                           ; $4553: $17
    add hl, de                                    ; $4554: $19
    add hl, bc                                    ; $4555: $09
    add hl, sp                                    ; $4556: $39
    jp c, $89be                                   ; $4557: $da $be $89

jr_041_455a:
    ld a, [de]                                    ; $455a: $1a
    ld [de], a                                    ; $455b: $12
    ld d, $1e                                     ; $455c: $16 $1e
    sub e                                         ; $455e: $93
    scf                                           ; $455f: $37
    db $e4                                        ; $4560: $e4
    ld b, h                                       ; $4561: $44
    dec e                                         ; $4562: $1d
    ret c                                         ; $4563: $d8

    ld h, $1f                                     ; $4564: $26 $1f
    rlca                                          ; $4566: $07
    ld [hl], e                                    ; $4567: $73
    ld l, a                                       ; $4568: $6f
    ret z                                         ; $4569: $c8

    push bc                                       ; $456a: $c5
    adc [hl]                                      ; $456b: $8e
    rst $18                                       ; $456c: $df
    call nc, $dbf3                                ; $456d: $d4 $f3 $db
    push af                                       ; $4570: $f5
    dec hl                                        ; $4571: $2b
    ld l, l                                       ; $4572: $6d
    ret c                                         ; $4573: $d8

    ld h, h                                       ; $4574: $64
    ld sp, $738c                                  ; $4575: $31 $8c $73
    ld [hl], h                                    ; $4578: $74
    ld a, c                                       ; $4579: $79
    sbc [hl]                                      ; $457a: $9e
    inc l                                         ; $457b: $2c
    or b                                          ; $457c: $b0
    jr nc, jr_041_45f3                            ; $457d: $30 $74

    xor c                                         ; $457f: $a9
    db $fd                                        ; $4580: $fd
    ld h, [hl]                                    ; $4581: $66
    inc b                                         ; $4582: $04
    ld a, [$7515]                                 ; $4583: $fa $15 $75
    ld b, [hl]                                    ; $4586: $46
    ld d, d                                       ; $4587: $52
    inc hl                                        ; $4588: $23
    xor $ed                                       ; $4589: $ee $ed
    ld h, h                                       ; $458b: $64
    and d                                         ; $458c: $a2
    ld a, $cb                                     ; $458d: $3e $cb
    dec de                                        ; $458f: $1b
    inc hl                                        ; $4590: $23
    ld c, h                                       ; $4591: $4c
    ccf                                           ; $4592: $3f
    cpl                                           ; $4593: $2f
    ld [$218d], a                                 ; $4594: $ea $8d $21
    ret z                                         ; $4597: $c8

    and a                                         ; $4598: $a7
    inc l                                         ; $4599: $2c
    ld e, a                                       ; $459a: $5f
    jp z, $f104                                   ; $459b: $ca $04 $f1

    cp [hl]                                       ; $459e: $be
    ld h, l                                       ; $459f: $65
    ld sp, $738c                                  ; $45a0: $31 $8c $73
    ld [hl], h                                    ; $45a3: $74
    ld a, c                                       ; $45a4: $79
    ld b, e                                       ; $45a5: $43
    ld l, [hl]                                    ; $45a6: $6e
    add a                                         ; $45a7: $87
    add h                                         ; $45a8: $84
    ld [hl], e                                    ; $45a9: $73
    cp $9b                                        ; $45aa: $fe $9b
    call nc, $cd7e                                ; $45ac: $d4 $7e $cd
    ld c, [hl]                                    ; $45af: $4e
    jp hl                                         ; $45b0: $e9


    ld d, d                                       ; $45b1: $52
    ei                                            ; $45b2: $fb
    call $f408                                    ; $45b3: $cd $08 $f4
    dec hl                                        ; $45b6: $2b
    dec e                                         ; $45b7: $1d
    ld d, e                                       ; $45b8: $53
    and $8b                                       ; $45b9: $e6 $8b
    or [hl]                                       ; $45bb: $b6
    cpl                                           ; $45bc: $2f
    cp a                                          ; $45bd: $bf
    reti                                          ; $45be: $d9


    ld l, $65                                     ; $45bf: $2e $65
    ld h, h                                       ; $45c1: $64
    and d                                         ; $45c2: $a2
    ld e, l                                       ; $45c3: $5d
    dec a                                         ; $45c4: $3d
    add c                                         ; $45c5: $81
    or b                                          ; $45c6: $b0
    dec a                                         ; $45c7: $3d
    ld e, a                                       ; $45c8: $5f
    cp a                                          ; $45c9: $bf
    ld [bc], a                                    ; $45ca: $02
    dec e                                         ; $45cb: $1d
    ld e, a                                       ; $45cc: $5f
    ld d, $98                                     ; $45cd: $16 $98
    cp d                                          ; $45cf: $ba
    inc l                                         ; $45d0: $2c
    rst $10                                       ; $45d1: $d7
    ld b, b                                       ; $45d2: $40
    jp z, Jump_041_5282                           ; $45d3: $ca $82 $52

    ld h, $0a                                     ; $45d6: $26 $0a
    dec sp                                        ; $45d8: $3b
    ld [hl], $65                                  ; $45d9: $36 $65
    sbc c                                         ; $45db: $99
    xor b                                         ; $45dc: $a8
    ld c, e                                       ; $45dd: $4b
    dec e                                         ; $45de: $1d
    sub b                                         ; $45df: $90
    or a                                          ; $45e0: $b7
    scf                                           ; $45e1: $37
    ld [hl], h                                    ; $45e2: $74
    xor c                                         ; $45e3: $a9

Jump_041_45e4:
    db $fd                                        ; $45e4: $fd
    ld h, [hl]                                    ; $45e5: $66
    inc b                                         ; $45e6: $04
    ld l, d                                       ; $45e7: $6a
    xor [hl]                                      ; $45e8: $ae
    ld l, l                                       ; $45e9: $6d
    jp c, Jump_000_1967                           ; $45ea: $da $67 $19

    scf                                           ; $45ed: $37
    add hl, hl                                    ; $45ee: $29
    ld l, a                                       ; $45ef: $6f
    xor b                                         ; $45f0: $a8
    ld h, $6f                                     ; $45f1: $26 $6f

jr_041_45f3:
    halt                                          ; $45f3: $76
    db $e4                                        ; $45f4: $e4
    di                                            ; $45f5: $f3
    push af                                       ; $45f6: $f5
    ld a, l                                       ; $45f7: $7d
    sbc a                                         ; $45f8: $9f
    add d                                         ; $45f9: $82
    ret c                                         ; $45fa: $d8

    ld d, l                                       ; $45fb: $55
    cpl                                           ; $45fc: $2f
    rst $30                                       ; $45fd: $f7
    push de                                       ; $45fe: $d5
    db $e4                                        ; $45ff: $e4
    and h                                         ; $4600: $a4
    inc e                                         ; $4601: $1c
    ld a, [hl+]                                   ; $4602: $2a
    db $f4                                        ; $4603: $f4
    dec hl                                        ; $4604: $2b
    ld [hl], l                                    ; $4605: $75
    ld b, [hl]                                    ; $4606: $46
    jp nz, $c5f6                                  ; $4607: $c2 $f6 $c5

    sbc l                                         ; $460a: $9d
    inc a                                         ; $460b: $3c
    inc hl                                        ; $460c: $23
    sub a                                         ; $460d: $97
    push hl                                       ; $460e: $e5
    and b                                         ; $460f: $a0
    xor [hl]                                      ; $4610: $ae
    rst $28                                       ; $4611: $ef
    ei                                            ; $4612: $fb

Call_041_4613:
    ld hl, sp-$30                                 ; $4613: $f8 $d0
    rst $18                                       ; $4615: $df
    ld l, [hl]                                    ; $4616: $6e
    jp z, Jump_000_1967                           ; $4617: $ca $67 $19

    ld [hl], $e8                                  ; $461a: $36 $e8
    push af                                       ; $461c: $f5
    ld c, b                                       ; $461d: $48
    ld h, c                                       ; $461e: $61
    ei                                            ; $461f: $fb
    ld h, l                                       ; $4620: $65
    ld a, c                                       ; $4621: $79
    inc hl                                        ; $4622: $23
    or c                                          ; $4623: $b1
    xor a                                         ; $4624: $af
    ld e, a                                       ; $4625: $5f
    ld bc, $34be                                  ; $4626: $01 $be $34
    dec bc                                        ; $4629: $0b
    inc l                                         ; $462a: $2c
    ld a, $14                                     ; $462b: $3e $14
    add l                                         ; $462d: $85
    ccf                                           ; $462e: $3f
    push bc                                       ; $462f: $c5
    db $fd                                        ; $4630: $fd
    ld a, $79                                     ; $4631: $3e $79
    cp $be                                        ; $4633: $fe $be
    rst $28                                       ; $4635: $ef
    add e                                         ; $4636: $83
    sub h                                         ; $4637: $94
    scf                                           ; $4638: $37
    ld d, h                                       ; $4639: $54
    sub e                                         ; $463a: $93
    ld c, a                                       ; $463b: $4f
    db $ed                                        ; $463c: $ed
    pop de                                        ; $463d: $d1
    cp d                                          ; $463e: $ba
    ld a, e                                       ; $463f: $7b
    db $e3                                        ; $4640: $e3
    jp nc, Jump_041_6daf                          ; $4641: $d2 $af $6d

    db $ed                                        ; $4644: $ed
    ld c, e                                       ; $4645: $4b
    ld h, c                                       ; $4646: $61
    xor d                                         ; $4647: $aa
    jr nz, jr_041_46c6                            ; $4648: $20 $7c

    ld d, c                                       ; $464a: $51
    ret c                                         ; $464b: $d8

    ld e, c                                       ; $464c: $59
    db $ec                                        ; $464d: $ec
    xor d                                         ; $464e: $aa
    ret                                           ; $464f: $c9


    adc e                                         ; $4650: $8b
    adc h                                         ; $4651: $8c
    ld l, $8b                                     ; $4652: $2e $8b
    adc l                                         ; $4654: $8d
    rla                                           ; $4655: $17
    and l                                         ; $4656: $a5
    adc h                                         ; $4657: $8c
    and c                                         ; $4658: $a1
    sub h                                         ; $4659: $94
    ld c, a                                       ; $465a: $4f
    ei                                            ; $465b: $fb
    xor [hl]                                      ; $465c: $ae
    dec l                                         ; $465d: $2d

Call_041_465e:
    ld a, e                                       ; $465e: $7b
    add hl, sp                                    ; $465f: $39
    and $7e                                       ; $4660: $e6 $7e
    dec b                                         ; $4662: $05
    xor l                                         ; $4663: $ad
    ld b, c                                       ; $4664: $41
    ld c, b                                       ; $4665: $48
    ld [$cbe5], sp                                ; $4666: $08 $e5 $cb
    and a                                         ; $4669: $a7
    or $68                                        ; $466a: $f6 $68
    db $dd                                        ; $466c: $dd
    cp l                                          ; $466d: $bd
    ld [hl], c                                    ; $466e: $71

Jump_041_466f:
    jp hl                                         ; $466f: $e9


    ld d, e                                       ; $4670: $53
    rst $10                                       ; $4671: $d7
    ld d, b                                       ; $4672: $50
    ld a, b                                       ; $4673: $78
    ld a, [c]                                     ; $4674: $f2
    and h                                         ; $4675: $a4
    push de                                       ; $4676: $d5
    sub e                                         ; $4677: $93
    sub e                                         ; $4678: $93
    inc hl                                        ; $4679: $23
    sbc $64                                       ; $467a: $de $64
    ld a, a                                       ; $467c: $7f
    inc a                                         ; $467d: $3c
    ld h, c                                       ; $467e: $61
    ld d, a                                       ; $467f: $57
    adc l                                         ; $4680: $8d
    call c, Call_041_6147                         ; $4681: $dc $47 $61
    rst $28                                       ; $4684: $ef
    adc c                                         ; $4685: $89
    ld l, a                                       ; $4686: $6f
    ld [hl], l                                    ; $4687: $75
    add l                                         ; $4688: $85
    cp a                                          ; $4689: $bf
    add d                                         ; $468a: $82
    ldh a, [$e8]                                  ; $468b: $f0 $e8
    ld [c], a                                     ; $468d: $e2

Call_041_468e:
    ld b, [hl]                                    ; $468e: $46
    or d                                          ; $468f: $b2
    ccf                                           ; $4690: $3f
    ld a, $f4                                     ; $4691: $3e $f4
    scf                                           ; $4693: $37
    ld d, d                                       ; $4694: $52
    sbc $c0                                       ; $4695: $de $c0
    ret z                                         ; $4697: $c8

    sub a                                         ; $4698: $97
    ld [bc], a                                    ; $4699: $02
    ld c, l                                       ; $469a: $4d
    sbc [hl]                                      ; $469b: $9e
    cpl                                           ; $469c: $2f
    rra                                           ; $469d: $1f
    ld a, [hl+]                                   ; $469e: $2a
    rra                                           ; $469f: $1f
    add l                                         ; $46a0: $85
    cp l                                          ; $46a1: $bd
    ld de, $fa1f                                  ; $46a2: $11 $1f $fa
    call z, $f136                                 ; $46a5: $cc $36 $f1
    db $fc                                        ; $46a8: $fc
    add d                                         ; $46a9: $82
    ld d, $d3                                     ; $46aa: $16 $d3
    sub [hl]                                      ; $46ac: $96
    sbc l                                         ; $46ad: $9d
    ld [hl], a                                    ; $46ae: $77
    ld b, h                                       ; $46af: $44
    adc l                                         ; $46b0: $8d
    adc l                                         ; $46b1: $8d
    ld l, $1d                                     ; $46b2: $2e $1d
    ld a, a                                       ; $46b4: $7f
    add hl, hl                                    ; $46b5: $29
    ld h, e                                       ; $46b6: $63
    ld d, e                                       ; $46b7: $53
    jp z, $e2e8                                   ; $46b8: $ca $e8 $e2

    add hl, sp                                    ; $46bb: $39
    ld b, [hl]                                    ; $46bc: $46
    adc [hl]                                      ; $46bd: $8e
    ret nz                                        ; $46be: $c0

    ld h, $13                                     ; $46bf: $26 $13
    ld e, a                                       ; $46c1: $5f
    ret c                                         ; $46c2: $d8

    ld [bc], a                                    ; $46c3: $02
    ld [de], a                                    ; $46c4: $12
    and [hl]                                      ; $46c5: $a6

jr_041_46c6:
    ret nc                                        ; $46c6: $d0

    and a                                         ; $46c7: $a7

Call_041_46c8:
    cp l                                          ; $46c8: $bd
    rrca                                          ; $46c9: $0f
    add hl, sp                                    ; $46ca: $39
    add l                                         ; $46cb: $85
    db $ed                                        ; $46cc: $ed
    db $e3                                        ; $46cd: $e3
    ld sp, hl                                     ; $46ce: $f9
    push hl                                       ; $46cf: $e5
    ld d, e                                       ; $46d0: $53
    sbc $ea                                       ; $46d1: $de $ea
    ret                                           ; $46d3: $c9


    db $ed                                        ; $46d4: $ed
    ld l, h                                       ; $46d5: $6c
    ld a, [hl-]                                   ; $46d6: $3a
    jp c, $0d44                                   ; $46d7: $da $44 $0d

    adc c                                         ; $46da: $89
    xor b                                         ; $46db: $a8
    or c                                          ; $46dc: $b1
    ld [$8c0c], a                                 ; $46dd: $ea $0c $8c
    jr nz, @-$79                                  ; $46e0: $20 $85

    xor c                                         ; $46e2: $a9
    ld a, [hl-]                                   ; $46e3: $3a
    jr jr_041_46fe                                ; $46e4: $18 $18

    ld a, l                                       ; $46e6: $7d
    jp c, Jump_041_65c8                           ; $46e7: $da $c8 $65

    and c                                         ; $46ea: $a1
    jp nz, $e717                                  ; $46eb: $c2 $17 $e7

    ld b, a                                       ; $46ee: $47
    inc [hl]                                      ; $46ef: $34
    ld a, [$35ea]                                 ; $46f0: $fa $ea $35
    add c                                         ; $46f3: $81
    add c                                         ; $46f4: $81
    sub c                                         ; $46f5: $91
    dec b                                         ; $46f6: $05
    sub [hl]                                      ; $46f7: $96
    db $fd                                        ; $46f8: $fd
    ld hl, $b0a7                                  ; $46f9: $21 $a7 $b0
    ld a, l                                       ; $46fc: $7d

Call_041_46fd:
    inc a                                         ; $46fd: $3c

jr_041_46fe:
    cp a                                          ; $46fe: $bf
    ld a, h                                       ; $46ff: $7c
    sub [hl]                                      ; $4700: $96
    ld h, c                                       ; $4701: $61
    add e                                         ; $4702: $83
    ld e, [hl]                                    ; $4703: $5e
    rrca                                          ; $4704: $0f
    sbc e                                         ; $4705: $9b
    ld a, b                                       ; $4706: $78
    rst $18                                       ; $4707: $df
    ret z                                         ; $4708: $c8

    dec bc                                        ; $4709: $0b
    ld a, c                                       ; $470a: $79
    ld [c], a                                     ; $470b: $e2
    ld h, b                                       ; $470c: $60
    ret z                                         ; $470d: $c8

    cp $78                                        ; $470e: $fe $78
    adc $b2                                       ; $4710: $ce $b2
    ld a, h                                       ; $4712: $7c
    inc d                                         ; $4713: $14
    or $46                                        ; $4714: $f6 $46
    inc a                                         ; $4716: $3c
    cp a                                          ; $4717: $bf
    and b                                         ; $4718: $a0
    ld e, a                                       ; $4719: $5f
    ld bc, $4b75                                  ; $471a: $01 $75 $4b
    pop hl                                        ; $471d: $e1
    cp [hl]                                       ; $471e: $be
    rst $28                                       ; $471f: $ef
    db $e3                                        ; $4720: $e3
    and [hl]                                      ; $4721: $a6
    ld a, h                                       ; $4722: $7c
    jp z, $e4c8                                   ; $4723: $ca $c8 $e4

    or d                                          ; $4726: $b2

jr_041_4727:
    ld d, b                                       ; $4727: $50
    pop hl                                        ; $4728: $e1
    adc e                                         ; $4729: $8b
    jp nz, $88de                                  ; $472a: $c2 $de $88

    rst $20                                       ; $472d: $e7
    rla                                           ; $472e: $17
    call nc, $015a                                ; $472f: $d4 $5a $01
    db $ed                                        ; $4732: $ed
    ld e, l                                       ; $4733: $5d
    inc [hl]                                      ; $4734: $34
    ld a, [$35ea]                                 ; $4735: $fa $ea $35
    ld a, c                                       ; $4738: $79
    ld b, [hl]                                    ; $4739: $46
    add [hl]                                      ; $473a: $86
    add hl, de                                    ; $473b: $19
    ld [bc], a                                    ; $473c: $02
    ld d, c                                       ; $473d: $51
    inc de                                        ; $473e: $13
    add l                                         ; $473f: $85
    dec bc                                        ; $4740: $0b
    db $db                                        ; $4741: $db
    adc l                                         ; $4742: $8d
    ld a, b                                       ; $4743: $78
    ld c, a                                       ; $4744: $4f
    sub a                                         ; $4745: $97
    ld a, l                                       ; $4746: $7d
    ld e, c                                       ; $4747: $59
    ld h, b                                       ; $4748: $60
    ld a, [bc]                                    ; $4749: $0a
    adc h                                         ; $474a: $8c
    sub b                                         ; $474b: $90
    scf                                           ; $474c: $37
    ei                                            ; $474d: $fb
    ld b, l                                       ; $474e: $45
    ld c, l                                       ; $474f: $4d
    ld [hl], $62                                  ; $4750: $36 $62
    ret nc                                        ; $4752: $d0

    ld h, [hl]                                    ; $4753: $66
    and e                                         ; $4754: $a3
    ld c, a                                       ; $4755: $4f
    xor e                                         ; $4756: $ab
    ld a, e                                       ; $4757: $7b
    ld a, a                                       ; $4758: $7f
    cp h                                          ; $4759: $bc
    daa                                           ; $475a: $27
    adc b                                         ; $475b: $88
    jp nz, $1ede                                  ; $475c: $c2 $de $1e

    cpl                                           ; $475f: $2f
    ld [hl-], a                                   ; $4760: $32
    cp d                                          ; $4761: $ba
    db $ec                                        ; $4762: $ec
    adc a                                         ; $4763: $8f
    rst $20                                       ; $4764: $e7
    sub a                                         ; $4765: $97
    adc a                                         ; $4766: $8f
    di                                            ; $4767: $f3
    inc hl                                        ; $4768: $23
    ld c, a                                       ; $4769: $4f
    ld e, d                                       ; $476a: $5a
    dec a                                         ; $476b: $3d
    pop hl                                        ; $476c: $e1
    pop hl                                        ; $476d: $e1
    rst $18                                       ; $476e: $df
    ld b, a                                       ; $476f: $47
    inc h                                         ; $4770: $24
    ld a, $4f                                     ; $4771: $3e $4f
    sub [hl]                                      ; $4773: $96
    ld l, e                                       ; $4774: $6b
    jr nz, jr_041_4782                            ; $4775: $20 $0b

    dec d                                         ; $4777: $15
    cp [hl]                                       ; $4778: $be
    sub b                                         ; $4779: $90
    jr nc, jr_041_4727                            ; $477a: $30 $ab

    daa                                           ; $477c: $27
    adc e                                         ; $477d: $8b
    and c                                         ; $477e: $a1
    cp d                                          ; $477f: $ba
    rst $20                                       ; $4780: $e7
    adc a                                         ; $4781: $8f

jr_041_4782:
    dec de                                        ; $4782: $1b
    ret                                           ; $4783: $c9


    cp $78                                        ; $4784: $fe $78
    adc $b2                                       ; $4786: $ce $b2
    ld a, h                                       ; $4788: $7c
    cp a                                          ; $4789: $bf
    ld [bc], a                                    ; $478a: $02
    ld l, l                                       ; $478b: $6d
    ld c, e                                       ; $478c: $4b
    sbc h                                         ; $478d: $9c
    rra                                           ; $478e: $1f
    xor c                                         ; $478f: $a9
    ld b, [hl]                                    ; $4790: $46
    ld c, l                                       ; $4791: $4d
    call c, $54a5                                 ; $4792: $dc $a5 $54
    ld d, a                                       ; $4795: $57
    ld hl, sp+$65                                 ; $4796: $f8 $65
    ld l, d                                       ; $4798: $6a
    xor l                                         ; $4799: $ad
    sbc [hl]                                      ; $479a: $9e
    ld b, $35                                     ; $479b: $06 $35
    ld [hl], c                                    ; $479d: $71
    ld a, [hl]                                    ; $479e: $7e
    ld b, h                                       ; $479f: $44
    dec c                                         ; $47a0: $0d
    ld l, c                                       ; $47a1: $69
    xor b                                         ; $47a2: $a8
    ld h, $7b                                     ; $47a3: $26 $7b
    sbc b                                         ; $47a5: $98
    rst $18                                       ; $47a6: $df
    db $10                                        ; $47a7: $10
    scf                                           ; $47a8: $37
    jp nz, $a136                                  ; $47a9: $c2 $36 $a1

    sub d                                         ; $47ac: $92
    ld l, d                                       ; $47ad: $6a
    ld a, [bc]                                    ; $47ae: $0a
    db $db                                        ; $47af: $db
    db $f4                                        ; $47b0: $f4
    dec hl                                        ; $47b1: $2b
    cp [hl]                                       ; $47b2: $be
    ret nc                                        ; $47b3: $d0

    add sp, $31                                   ; $47b4: $e8 $31
    xor d                                         ; $47b6: $aa
    db $eb                                        ; $47b7: $eb
    ld d, a                                       ; $47b8: $57
    cp [hl]                                       ; $47b9: $be
    dec bc                                        ; $47ba: $0b
    ld l, h                                       ; $47bb: $6c
    ld [c], a                                     ; $47bc: $e2
    db $fc                                        ; $47bd: $fc
    adc b                                         ; $47be: $88
    cp e                                          ; $47bf: $bb
    ld d, h                                       ; $47c0: $54
    ld h, b                                       ; $47c1: $60
    ld a, [hl]                                    ; $47c2: $7e
    sbc c                                         ; $47c3: $99
    ld [$fef6], sp                                ; $47c4: $08 $f6 $fe
    inc d                                         ; $47c7: $14
    ld b, [hl]                                    ; $47c8: $46
    add hl, hl                                    ; $47c9: $29
    rra                                           ; $47ca: $1f
    rst $08                                       ; $47cb: $cf
    cpl                                           ; $47cc: $2f
    xor a                                         ; $47cd: $af
    ld c, e                                       ; $47ce: $4b
    push af                                       ; $47cf: $f5
    sub c                                         ; $47d0: $91
    sub c                                         ; $47d1: $91
    ld a, h                                       ; $47d2: $7c
    ld a, h                                       ; $47d3: $7c
    ld h, c                                       ; $47d4: $61
    dec bc                                        ; $47d5: $0b
    ld c, b                                       ; $47d6: $48
    sbc b                                         ; $47d7: $98
    ld b, d                                       ; $47d8: $42
    sbc a                                         ; $47d9: $9f
    ld a, [hl-]                                   ; $47da: $3a
    inc hl                                        ; $47db: $23
    xor c                                         ; $47dc: $a9
    sub c                                         ; $47dd: $91
    ld [$95f7], a                                 ; $47de: $ea $f7 $95
    ld [hl], d                                    ; $47e1: $72
    push de                                       ; $47e2: $d5
    add sp, $52                                   ; $47e3: $e8 $52
    ld a, l                                       ; $47e5: $7d
    call c, Call_000_3c85                         ; $47e6: $dc $85 $3c
    ld [hl], d                                    ; $47e9: $72
    ld h, h                                       ; $47ea: $64
    and d                                         ; $47eb: $a2
    ld [hl], b                                    ; $47ec: $70
    pop de                                        ; $47ed: $d1
    dec de                                        ; $47ee: $1b
    ld h, l                                       ; $47ef: $65
    cp [hl]                                       ; $47f0: $be
    inc l                                         ; $47f1: $2c

jr_041_47f2:
    or b                                          ; $47f2: $b0
    ld [hl-], a                                   ; $47f3: $32
    ld a, [c]                                     ; $47f4: $f2
    sbc d                                         ; $47f5: $9a
    halt                                          ; $47f6: $76
    db $fd                                        ; $47f7: $fd
    ld a, [bc]                                    ; $47f8: $0a
    xor l                                         ; $47f9: $ad
    ld b, c                                       ; $47fa: $41
    ld c, b                                       ; $47fb: $48
    ld [$d3e5], sp                                ; $47fc: $08 $e5 $d3
    and l                                         ; $47ff: $a5
    jr nc, jr_041_4857                            ; $4800: $30 $55

    db $10                                        ; $4802: $10
    cp [hl]                                       ; $4803: $be
    jr z, jr_041_47f2                             ; $4804: $28 $ec

    inc l                                         ; $4806: $2c
    halt                                          ; $4807: $76
    push de                                       ; $4808: $d5
    db $e4                                        ; $4809: $e4
    ld b, l                                       ; $480a: $45
    and [hl]                                      ; $480b: $a6
    ld c, a                                       ; $480c: $4f
    db $db                                        ; $480d: $db
    sub e                                         ; $480e: $93
    ld [hl-], a                                   ; $480f: $32
    ld [hl-], a                                   ; $4810: $32
    ld l, c                                       ; $4811: $69
    ld [hl], l                                    ; $4812: $75
    db $eb                                        ; $4813: $eb
    ld l, c                                       ; $4814: $69
    adc c                                         ; $4815: $89
    rst $28                                       ; $4816: $ef
    ld l, l                                       ; $4817: $6d
    ld [$9743], sp                                ; $4818: $08 $43 $97
    cp d                                          ; $481b: $ba
    add [hl]                                      ; $481c: $86
    ld [hl], d                                    ; $481d: $72
    ld a, [bc]                                    ; $481e: $0a
    ld d, c                                       ; $481f: $51
    sub a                                         ; $4820: $97
    jp c, Jump_041_75a3                           ; $4821: $da $a3 $75

    rst $30                                       ; $4824: $f7
    add $a5                                       ; $4825: $c6 $a5
    ld c, a                                       ; $4827: $4f
    sbc l                                         ; $4828: $9d
    sub c                                         ; $4829: $91
    db $fc                                        ; $482a: $fc
    or d                                          ; $482b: $b2
    ld b, b                                       ; $482c: $40
    ld a, $e5                                     ; $482d: $3e $e5
    dec c                                         ; $482f: $0d
    adc h                                         ; $4830: $8c
    ld a, h                                       ; $4831: $7c
    add hl, hl                                    ; $4832: $29
    ret nc                                        ; $4833: $d0

    db $e4                                        ; $4834: $e4
    ld sp, hl                                     ; $4835: $f9
    ld a, [c]                                     ; $4836: $f2
    and c                                         ; $4837: $a1
    ld a, [c]                                     ; $4838: $f2
    pop af                                        ; $4839: $f1
    db $fc                                        ; $483a: $fc
    ld a, [c]                                     ; $483b: $f2
    cp d                                          ; $483c: $ba
    or b                                          ; $483d: $b0
    dec c                                         ; $483e: $0d
    ld sp, hl                                     ; $483f: $f9
    adc h                                         ; $4840: $8c
    inc d                                         ; $4841: $14
    xor d                                         ; $4842: $aa
    ccf                                           ; $4843: $3f
    sbc [hl]                                      ; $4844: $9e
    call c, Call_000_390e                         ; $4845: $dc $0e $39
    add l                                         ; $4848: $85
    ld l, l                                       ; $4849: $6d
    jp nz, $ce4f                                  ; $484a: $c2 $4f $ce

    sbc [hl]                                      ; $484d: $9e
    ld a, [hl]                                    ; $484e: $7e
    dec b                                         ; $484f: $05
    dec c                                         ; $4850: $0d
    cp c                                          ; $4851: $b9
    rla                                           ; $4852: $17
    ld a, [hl]                                    ; $4853: $7e
    ld d, c                                       ; $4854: $51
    db $d3                                        ; $4855: $d3
    ld [hl], b                                    ; $4856: $70

jr_041_4857:
    cp d                                          ; $4857: $ba
    xor [hl]                                      ; $4858: $ae
    dec sp                                        ; $4859: $3b
    inc c                                         ; $485a: $0c
    ld b, [hl]                                    ; $485b: $46
    jr jr_041_4860                                ; $485c: $18 $02

    inc hl                                        ; $485e: $23
    cpl                                           ; $485f: $2f

jr_041_4860:
    dec de                                        ; $4860: $1b
    ld hl, $b0a7                                  ; $4861: $21 $a7 $b0
    ld hl, $a9fa                                  ; $4864: $21 $fa $a9
    db $f4                                        ; $4867: $f4
    ld h, b                                       ; $4868: $60
    add [hl]                                      ; $4869: $86
    ld l, [hl]                                    ; $486a: $6e
    dec b                                         ; $486b: $05
    ld l, l                                       ; $486c: $6d
    add a                                         ; $486d: $87
    sbc h                                         ; $486e: $9c
    jp nz, Jump_041_7176                          ; $486f: $c2 $76 $71

    or a                                          ; $4872: $b7
    ld c, a                                       ; $4873: $4f

Call_041_4874:
    sub h                                         ; $4874: $94
    ld e, l                                       ; $4875: $5d
    ld [hl], $75                                  ; $4876: $36 $75
    and a                                         ; $4878: $a7
    ld l, $c8                                     ; $4879: $2e $c8
    ld l, a                                       ; $487b: $6f
    add [hl]                                      ; $487c: $86
    sbc l                                         ; $487d: $9d
    ld l, [hl]                                    ; $487e: $6e
    dec b                                         ; $487f: $05
    cp [hl]                                       ; $4880: $be
    inc hl                                        ; $4881: $23
    sub e                                         ; $4882: $93
    sbc e                                         ; $4883: $9b
    ld hl, sp+$50                                 ; $4884: $f8 $50
    db $ec                                        ; $4886: $ec
    dec a                                         ; $4887: $3d
    ld [hl], c                                    ; $4888: $71
    ld a, [hl]                                    ; $4889: $7e
    db $e4                                        ; $488a: $e4
    ld [hl], a                                    ; $488b: $77
    sub [hl]                                      ; $488c: $96
    add hl, hl                                    ; $488d: $29
    inc a                                         ; $488e: $3c
    ld hl, $152f                                  ; $488f: $21 $2f $15
    sbc b                                         ; $4892: $98
    or c                                          ; $4893: $b1
    ld [bc], a                                    ; $4894: $02
    ld l, l                                       ; $4895: $6d
    db $e4                                        ; $4896: $e4
    ld [hl], a                                    ; $4897: $77
    xor d                                         ; $4898: $aa
    sbc e                                         ; $4899: $9b
    cp b                                          ; $489a: $b8
    ld de, $8daf                                  ; $489b: $11 $af $8d
    ldh a, [rLY]                                  ; $489e: $f0 $44
    db $db                                        ; $48a0: $db
    sub a                                         ; $48a1: $97
    rst $18                                       ; $48a2: $df
    ld l, h                                       ; $48a3: $6c
    sub a                                         ; $48a4: $97
    ld [hl-], a                                   ; $48a5: $32
    ld [de], a                                    ; $48a6: $12
    ld [hl+], a                                   ; $48a7: $22
    db $ec                                        ; $48a8: $ec
    ld a, [$7515]                                 ; $48a9: $fa $15 $75
    ld b, [hl]                                    ; $48ac: $46
    ld [c], a                                     ; $48ad: $e2
    inc a                                         ; $48ae: $3c
    ld l, d                                       ; $48af: $6a
    ld h, h                                       ; $48b0: $64
    add c                                         ; $48b1: $81
    sub h                                         ; $48b2: $94
    add e                                         ; $48b3: $83
    ld c, l                                       ; $48b4: $4d
    sbc h                                         ; $48b5: $9c
    rra                                           ; $48b6: $1f
    sub c                                         ; $48b7: $91
    cpl                                           ; $48b8: $2f
    ld l, [hl]                                    ; $48b9: $6e
    ld b, h                                       ; $48ba: $44
    db $dd                                        ; $48bb: $dd
    inc sp                                        ; $48bc: $33
    ld d, [hl]                                    ; $48bd: $56
    sbc [hl]                                      ; $48be: $9e
    ld a, [hl]                                    ; $48bf: $7e
    db $e4                                        ; $48c0: $e4
    halt                                          ; $48c1: $76
    xor d                                         ; $48c2: $aa
    sbc e                                         ; $48c3: $9b
    inc l                                         ; $48c4: $2c
    jp Jump_041_4430                              ; $48c5: $c3 $30 $44


    ld b, [hl]                                    ; $48c8: $46
    ld d, d                                       ; $48c9: $52
    ld a, [hl]                                    ; $48ca: $7e
    ld e, c                                       ; $48cb: $59
    xor $43                                       ; $48cc: $ee $43
    ld b, d                                       ; $48ce: $42
    pop bc                                        ; $48cf: $c1
    or b                                          ; $48d0: $b0
    ld [bc], a                                    ; $48d1: $02
    dec e                                         ; $48d2: $1d
    jp nc, Jump_041_7513                          ; $48d3: $d2 $13 $75

    add hl, sp                                    ; $48d6: $39
    ld d, c                                       ; $48d7: $51
    ld d, e                                       ; $48d8: $53
    jp z, $aa33                                   ; $48d9: $ca $33 $aa

    dec bc                                        ; $48dc: $0b
    ld d, h                                       ; $48dd: $54
    cp [hl]                                       ; $48de: $be
    cp b                                          ; $48df: $b8
    reti                                          ; $48e0: $d9


    db $fc                                        ; $48e1: $fc
    adc h                                         ; $48e2: $8c
    dec d                                         ; $48e3: $15
    dec e                                         ; $48e4: $1d
    jp nc, $a9df                                  ; $48e5: $d2 $df $a9

    sub c                                         ; $48e8: $91
    db $fd                                        ; $48e9: $fd
    pop af                                        ; $48ea: $f1
    db $fc                                        ; $48eb: $fc
    ld a, [c]                                     ; $48ec: $f2
    add hl, sp                                    ; $48ed: $39
    adc c                                         ; $48ee: $89
    and e                                         ; $48ef: $a3
    rla                                           ; $48f0: $17
    cp e                                          ; $48f1: $bb
    ld [$8605], a                                 ; $48f2: $ea $05 $86
    sbc $63                                       ; $48f5: $de $63
    dec b                                         ; $48f7: $05
    ld l, l                                       ; $48f8: $6d
    reti                                          ; $48f9: $d9


    adc e                                         ; $48fa: $8b
    ld b, $d3                                     ; $48fb: $06 $d3
    and l                                         ; $48fd: $a5
    ld [hl], $ac                                  ; $48fe: $36 $ac
    cp d                                          ; $4900: $ba
    ld de, $5cd4                                  ; $4901: $11 $d4 $5c
    ld bc, $d96d                                  ; $4904: $01 $6d $d9
    ld a, c                                       ; $4907: $79
    ld b, a                                       ; $4908: $47
    call nc, $d4d8                                ; $4909: $d4 $d8 $d4
    ld e, h                                       ; $490c: $5c
    ld bc, $8775                                  ; $490d: $01 $75 $87
    add hl, de                                    ; $4910: $19
    and [hl]                                      ; $4911: $a6
    ld c, e                                       ; $4912: $4b
    db $ed                                        ; $4913: $ed
    scf                                           ; $4914: $37
    inc hl                                        ; $4915: $23
    ld d, b                                       ; $4916: $50
    ld [hl], e                                    ; $4917: $73
    dec b                                         ; $4918: $05
    ld [hl], l                                    ; $4919: $75
    ld b, [hl]                                    ; $491a: $46
    ld a, [c]                                     ; $491b: $f2
    pop af                                        ; $491c: $f1
    add l                                         ; $491d: $85
    dec l                                         ; $491e: $2d
    jr nz, jr_041_4982                            ; $491f: $20 $61

    ld a, [bc]                                    ; $4921: $0a
    cp d                                          ; $4922: $ba
    ret z                                         ; $4923: $c8

    ld c, b                                       ; $4924: $48
    ld a, $be                                     ; $4925: $3e $be
    or b                                          ; $4927: $b0
    dec b                                         ; $4928: $05
    inc h                                         ; $4929: $24
    ld c, h                                       ; $492a: $4c
    and c                                         ; $492b: $a1
    rst $28                                       ; $492c: $ef
    ei                                            ; $492d: $fb
    dec d                                         ; $492e: $15
    xor l                                         ; $492f: $ad
    pop bc                                        ; $4930: $c1
    ld b, e                                       ; $4931: $43
    sub a                                         ; $4932: $97
    add d                                         ; $4933: $82
    inc d                                         ; $4934: $14
    ld e, h                                       ; $4935: $5c
    ld d, $9b                                     ; $4936: $16 $9b
    push bc                                       ; $4938: $c5
    ld l, [hl]                                    ; $4939: $6e
    ld [c], a                                     ; $493a: $e2
    and [hl]                                      ; $493b: $a6
    call nc, Call_041_7297                        ; $493c: $d4 $97 $72
    adc [hl]                                      ; $493f: $8e
    jp c, $7df4                                   ; $4940: $da $f4 $7d

    sbc a                                         ; $4943: $9f
    ld a, [bc]                                    ; $4944: $0a
    jp c, Jump_041_49be                           ; $4945: $da $be $49

    ld e, e                                       ; $4948: $5b
    dec e                                         ; $4949: $1d
    or l                                          ; $494a: $b5
    db $dd                                        ; $494b: $dd
    ld h, [hl]                                    ; $494c: $66
    rlca                                          ; $494d: $07
    ld [hl], l                                    ; $494e: $75
    ld e, d                                       ; $494f: $5a
    rst $28                                       ; $4950: $ef
    and b                                         ; $4951: $a0
    and e                                         ; $4952: $a3
    ld c, $fa                                     ; $4953: $0e $fa
    dec d                                         ; $4955: $15
    ld l, l                                       ; $4956: $6d
    reti                                          ; $4957: $d9


    ld a, c                                       ; $4958: $79
    ld b, a                                       ; $4959: $47
    call nc, $a4d8                                ; $495a: $d4 $d8 $a4
    ld b, [hl]                                    ; $495d: $46
    or $c7                                        ; $495e: $f6 $c7
    di                                            ; $4960: $f3
    bit 0, a                                      ; $4961: $cb $47
    dec sp                                        ; $4963: $3b
    ld e, d                                       ; $4964: $5a
    ld hl, sp-$4d                                 ; $4965: $f8 $b3
    ret nz                                        ; $4967: $c0

    jp nz, $a5d0                                  ; $4968: $c2 $d0 $a5

    or $9b                                        ; $496b: $f6 $9b
    ld de, $d3e8                                  ; $496d: $11 $e8 $d3
    xor d                                         ; $4970: $aa
    ld b, d                                       ; $4971: $42
    add hl, hl                                    ; $4972: $29
    inc de                                        ; $4973: $13
    or [hl]                                       ; $4974: $b6
    ld hl, $b73f                                  ; $4975: $21 $3f $b7
    jp $c274                                      ; $4978: $c3 $74 $c2


    ld c, a                                       ; $497b: $4f
    adc $9e                                       ; $497c: $ce $9e
    ld a, [hl]                                    ; $497e: $7e
    dec b                                         ; $497f: $05
    dec e                                         ; $4980: $1d
    db $db                                        ; $4981: $db

jr_041_4982:
    sub b                                         ; $4982: $90
    sbc a                                         ; $4983: $9f
    db $db                                        ; $4984: $db
    ld h, c                                       ; $4985: $61
    ld a, [hl-]                                   ; $4986: $3a
    pop hl                                        ; $4987: $e1
    daa                                           ; $4988: $27
    ld h, a                                       ; $4989: $67
    adc a                                         ; $498a: $8f
    ld l, $75                                     ; $498b: $2e $75
    add a                                         ; $498d: $87
    add hl, de                                    ; $498e: $19
    and [hl]                                      ; $498f: $a6
    res 0, h                                      ; $4990: $cb $84
    and h                                         ; $4992: $a4
    ld [hl], e                                    ; $4993: $73
    pop de                                        ; $4994: $d1
    xor [hl]                                      ; $4995: $ae
    sbc [hl]                                      ; $4996: $9e
    ld a, b                                       ; $4997: $78
    rst $18                                       ; $4998: $df
    or d                                          ; $4999: $b2
    ret nz                                        ; $499a: $c0

    inc d                                         ; $499b: $14
    inc c                                         ; $499c: $0c
    ld e, c                                       ; $499d: $59
    xor b                                         ; $499e: $a8
    ldh a, [$e5]                                  ; $499f: $f0 $e5
    rst $30                                       ; $49a1: $f7
    cp $30                                        ; $49a2: $fe $30
    db $fd                                        ; $49a4: $fd
    ld a, b                                       ; $49a5: $78
    ld a, [hl]                                    ; $49a6: $7e
    ld sp, hl                                     ; $49a7: $f9
    ld e, d                                       ; $49a8: $5a
    dec hl                                        ; $49a9: $2b
    dec e                                         ; $49aa: $1d
    ld [hl], h                                    ; $49ab: $74
    rst $10                                       ; $49ac: $d7
    ld e, l                                       ; $49ad: $5d
    rst $18                                       ; $49ae: $df
    rst $30                                       ; $49af: $f7
    reti                                          ; $49b0: $d9


    sbc a                                         ; $49b1: $9f
    ld [$8c3e], a                                 ; $49b2: $ea $3e $8c
    jp nz, $f7df                                  ; $49b5: $c2 $df $f7

    db $fd                                        ; $49b8: $fd
    ld a, [bc]                                    ; $49b9: $0a
    dec e                                         ; $49ba: $1d
    db $db                                        ; $49bb: $db
    sub b                                         ; $49bc: $90
    sbc a                                         ; $49bd: $9f

Jump_041_49be:
    db $db                                        ; $49be: $db
    ld h, c                                       ; $49bf: $61
    ld a, [hl-]                                   ; $49c0: $3a
    pop hl                                        ; $49c1: $e1
    daa                                           ; $49c2: $27
    ld h, a                                       ; $49c3: $67
    adc a                                         ; $49c4: $8f
    ld l, $b5                                     ; $49c5: $2e $b5
    rst $18                                       ; $49c7: $df

Call_041_49c8:
    adc h                                         ; $49c8: $8c
    add b                                         ; $49c9: $80
    ld l, $37                                     ; $49ca: $2e $37
    ld d, c                                       ; $49cc: $51
    jr nz, jr_041_49f6                            ; $49cd: $20 $27

    ld a, [$6f57]                                 ; $49cf: $fa $57 $6f
    ret z                                         ; $49d2: $c8

    rst $28                                       ; $49d3: $ef
    db $fd                                        ; $49d4: $fd
    ld [hl], c                                    ; $49d5: $71
    or b                                          ; $49d6: $b0
    xor e                                         ; $49d7: $ab
    ld b, [hl]                                    ; $49d8: $46
    xor $fb                                       ; $49d9: $ee $fb
    dec d                                         ; $49db: $15
    dec e                                         ; $49dc: $1d
    scf                                           ; $49dd: $37
    jp z, $b28d                                   ; $49de: $ca $8d $b2

    dec c                                         ; $49e1: $0d
    ld sp, hl                                     ; $49e2: $f9
    cp c                                          ; $49e3: $b9
    dec e                                         ; $49e4: $1d

Call_041_49e5:
    and [hl]                                      ; $49e5: $a6

Call_041_49e6:
    inc de                                        ; $49e6: $13
    ld l, [hl]                                    ; $49e7: $6e
    sub h                                         ; $49e8: $94
    dec de                                        ; $49e9: $1b
    push hl                                       ; $49ea: $e5
    daa                                           ; $49eb: $27
    ld h, a                                       ; $49ec: $67
    ld c, a                                       ; $49ed: $4f
    rst $18                                       ; $49ee: $df
    rst $30                                       ; $49ef: $f7
    sub c                                         ; $49f0: $91
    sub c                                         ; $49f1: $91
    inc l                                         ; $49f2: $2c
    ld [hl], h                                    ; $49f3: $74
    ld l, $d5                                     ; $49f4: $2e $d5

jr_041_49f6:
    ld e, a                                       ; $49f6: $5f
    jp z, Jump_000_302f                           ; $49f7: $ca $2f $30

    call nz, Call_000_2ff9                        ; $49fa: $c4 $f9 $2f
    ld a, h                                       ; $49fd: $7c
    add hl, hl                                    ; $49fe: $29
    db $fc                                        ; $49ff: $fc
    sbc c                                         ; $4a00: $99
    ld d, d                                       ; $4a01: $52
    ld h, b                                       ; $4a02: $60
    db $e4                                        ; $4a03: $e4
    adc e                                         ; $4a04: $8b
    sbc d                                         ; $4a05: $9a
    ld a, [hl]                                    ; $4a06: $7e
    dec b                                         ; $4a07: $05
    xor l                                         ; $4a08: $ad
    ld l, [hl]                                    ; $4a09: $6e
    ld b, a                                       ; $4a0a: $47
    push hl                                       ; $4a0b: $e5
    or d                                          ; $4a0c: $b2
    jp hl                                         ; $4a0d: $e9


    ld l, b                                       ; $4a0e: $68
    cp $8b                                        ; $4a0f: $fe $8b
    cp d                                          ; $4a11: $ba
    call nc, $ad1e                                ; $4a12: $d4 $1e $ad
    cp e                                          ; $4a15: $bb
    scf                                           ; $4a16: $37
    ld l, $e1                                     ; $4a17: $2e $e1
    ld c, e                                       ; $4a19: $4b
    add hl, de                                    ; $4a1a: $19
    sbc c                                         ; $4a1b: $99
    cp h                                          ; $4a1c: $bc
    cp b                                          ; $4a1d: $b8
    or c                                          ; $4a1e: $b1
    rrca                                          ; $4a1f: $0f
    ld a, c                                       ; $4a20: $79
    ldh [$e7], a                                  ; $4a21: $e0 $e7
    db $d3                                        ; $4a23: $d3
    and l                                         ; $4a24: $a5
    or $9b                                        ; $4a25: $f6 $9b
    ld de, $57e8                                  ; $4a27: $11 $e8 $57
    dec l                                         ; $4a2a: $2d
    rst $00                                       ; $4a2b: $c7
    add a                                         ; $4a2c: $87
    and d                                         ; $4a2d: $a2
    ldh a, [$e4]                                  ; $4a2e: $f0 $e4
    halt                                          ; $4a30: $76
    ld hl, sp-$37                                 ; $4a31: $f8 $c9
    reti                                          ; $4a33: $d9


    inc de                                        ; $4a34: $13
    ld [hl], l                                    ; $4a35: $75
    ld l, c                                       ; $4a36: $69
    set 1, [hl]                                   ; $4a37: $cb $ce
    dec sp                                        ; $4a39: $3b
    and d                                         ; $4a3a: $a2
    add $a6                                       ; $4a3b: $c6 $a6
    sub $0a                                       ; $4a3d: $d6 $0a
    ld [hl], l                                    ; $4a3f: $75
    ld b, [hl]                                    ; $4a40: $46
    rla                                           ; $4a41: $17
    sbc c                                         ; $4a42: $99
    ld c, e                                       ; $4a43: $4b
    cp c                                          ; $4a44: $b9
    xor a                                         ; $4a45: $af
    ld h, $ea                                     ; $4a46: $26 $ea
    jp nc, $97f1                                  ; $4a48: $d2 $f1 $97

    ld [hl-], a                                   ; $4a4b: $32
    ld [hl], $a5                                  ; $4a4c: $36 $a5
    ld c, h                                       ; $4a4e: $4c
    cp a                                          ; $4a4f: $bf
    ld [bc], a                                    ; $4a50: $02
    dec e                                         ; $4a51: $1d
    ld a, a                                       ; $4a52: $7f
    add hl, hl                                    ; $4a53: $29
    ld h, e                                       ; $4a54: $63
    ld d, e                                       ; $4a55: $53
    jp z, $46a4                                   ; $4a56: $ca $a4 $46

    or $c7                                        ; $4a59: $f6 $c7
    di                                            ; $4a5b: $f3
    res 4, a                                      ; $4a5c: $cb $a7
    ld a, [hl-]                                   ; $4a5e: $3a
    ld l, l                                       ; $4a5f: $6d
    rst $18                                       ; $4a60: $df
    jr jr_041_4acd                                ; $4a61: $18 $6a

    xor [hl]                                      ; $4a63: $ae
    db $ed                                        ; $4a64: $ed
    ld e, a                                       ; $4a65: $5f
    jp z, $ef72                                   ; $4a66: $ca $72 $ef

    and b                                         ; $4a69: $a0
    adc e                                         ; $4a6a: $8b
    rrca                                          ; $4a6b: $0f
    cp l                                          ; $4a6c: $bd
    call nc, $e788                                ; $4a6d: $d4 $88 $e7
    jr jr_041_4aab                                ; $4a70: $18 $39

    ld [bc], a                                    ; $4a72: $02
    sbc e                                         ; $4a73: $9b
    ld a, [hl]                                    ; $4a74: $7e
    dec b                                         ; $4a75: $05
    ld [hl], l                                    ; $4a76: $75
    ld d, b                                       ; $4a77: $50
    ld a, [bc]                                    ; $4a78: $0a
    sub l                                         ; $4a79: $95
    adc c                                         ; $4a7a: $89
    cp $99                                        ; $4a7b: $fe $99
    ld de, $31cf                                  ; $4a7d: $11 $cf $31
    ld [hl], d                                    ; $4a80: $72
    inc b                                         ; $4a81: $04
    ld [hl], $35                                  ; $4a82: $36 $35
    ld d, a                                       ; $4a84: $57

Call_041_4a85:
    db $ed                                        ; $4a85: $ed
    ld a, l                                       ; $4a86: $7d
    inc a                                         ; $4a87: $3c
    cp a                                          ; $4a88: $bf
    ld a, h                                       ; $4a89: $7c
    ld l, d                                       ; $4a8a: $6a
    ld b, h                                       ; $4a8b: $44
    ld e, l                                       ; $4a8c: $5d
    add hl, de                                    ; $4a8d: $19
    ld d, e                                       ; $4a8e: $53
    daa                                           ; $4a8f: $27
    rst $08                                       ; $4a90: $cf
    rra                                           ; $4a91: $1f
    scf                                           ; $4a92: $37
    dec d                                         ; $4a93: $15
    ld [c], a                                     ; $4a94: $e2
    ld b, e                                       ; $4a95: $43
    ld d, c                                       ; $4a96: $51
    ld a, b                                       ; $4a97: $78
    jp nz, $ce4f                                  ; $4a98: $c2 $4f $ce

    sbc [hl]                                      ; $4a9b: $9e
    ld e, d                                       ; $4a9c: $5a
    dec hl                                        ; $4a9d: $2b
    dec e                                         ; $4a9e: $1d
    ld d, d                                       ; $4a9f: $52
    inc d                                         ; $4aa0: $14
    cp $d4                                        ; $4aa1: $fe $d4
    adc b                                         ; $4aa3: $88

jr_041_4aa4:
    cpl                                           ; $4aa4: $2f
    ld l, h                                       ; $4aa5: $6c
    ld bc, $5309                                  ; $4aa6: $01 $09 $53
    xor b                                         ; $4aa9: $a8
    cp c                                          ; $4aaa: $b9

jr_041_4aab:
    ld [bc], a                                    ; $4aab: $02
    cp [hl]                                       ; $4aac: $be
    or b                                          ; $4aad: $b0
    dec b                                         ; $4aae: $05
    inc h                                         ; $4aaf: $24
    ld c, h                                       ; $4ab0: $4c
    ld hl, $1232                                  ; $4ab1: $21 $32 $12
    rst $38                                       ; $4ab4: $ff
    rlca                                          ; $4ab5: $07
    ld a, [de]                                    ; $4ab6: $1a
    db $fd                                        ; $4ab7: $fd
    ld a, l                                       ; $4ab8: $7d
    dec [hl]                                      ; $4ab9: $35
    ld d, a                                       ; $4aba: $57
    dec l                                         ; $4abb: $2d
    ld h, a                                       ; $4abc: $67
    db $d3                                        ; $4abd: $d3
    db $d3                                        ; $4abe: $d3
    and l                                         ; $4abf: $a5
    ld b, [hl]                                    ; $4ac0: $46
    ld l, d                                       ; $4ac1: $6a
    cp a                                          ; $4ac2: $bf
    add hl, de                                    ; $4ac3: $19
    add c                                         ; $4ac4: $81
    call nc, Call_041_661d                        ; $4ac5: $d4 $1d $66
    ld e, b                                       ; $4ac8: $58
    call $2d15                                    ; $4ac9: $cd $15 $2d
    add a                                         ; $4acc: $87

jr_041_4acd:
    ld c, d                                       ; $4acd: $4a
    ld d, $38                                     ; $4ace: $16 $38
    rst $30                                       ; $4ad0: $f7
    inc a                                         ; $4ad1: $3c
    ld [hl], c                                    ; $4ad2: $71
    ld a, [hl]                                    ; $4ad3: $7e
    ld b, h                                       ; $4ad4: $44
    ld b, [hl]                                    ; $4ad5: $46
    ld [c], a                                     ; $4ad6: $e2
    ld l, $e5                                     ; $4ad7: $2e $e5
    ld a, $54                                     ; $4ad9: $3e $54
    jp nz, $ce4f                                  ; $4adb: $c2 $4f $ce

    sbc [hl]                                      ; $4ade: $9e
    xor b                                         ; $4adf: $a8
    ld c, e                                       ; $4ae0: $4b
    ld l, e                                       ; $4ae1: $6b
    xor a                                         ; $4ae2: $af
    rst $10                                       ; $4ae3: $d7
    cp a                                          ; $4ae4: $bf
    ld e, h                                       ; $4ae5: $5c
    ld d, $58                                     ; $4ae6: $16 $58
    jr jr_041_4aa4                                ; $4ae8: $18 $ba

    call nc, Call_041_661d                        ; $4aea: $d4 $1d $66
    ld e, b                                       ; $4aed: $58
    cp a                                          ; $4aee: $bf
    ld [bc], a                                    ; $4aef: $02
    cp [hl]                                       ; $4af0: $be
    ld h, a                                       ; $4af1: $67
    xor c                                         ; $4af2: $a9
    ld [hl], e                                    ; $4af3: $73
    adc $3f                                       ; $4af4: $ce $3f
    ei                                            ; $4af6: $fb
    ld c, e                                       ; $4af7: $4b
    inc d                                         ; $4af8: $14
    jp nc, $55fe                                  ; $4af9: $d2 $fe $55

    add l                                         ; $4afc: $85
    ld b, b                                       ; $4afd: $40
    and e                                         ; $4afe: $a3
    ld [hl], l                                    ; $4aff: $75
    rst $00                                       ; $4b00: $c7
    sub [hl]                                      ; $4b01: $96
    inc de                                        ; $4b02: $13
    adc l                                         ; $4b03: $8d
    ld b, a                                       ; $4b04: $47
    ld [hl], h                                    ; $4b05: $74
    pop af                                        ; $4b06: $f1
    cp [hl]                                       ; $4b07: $be
    ldh a, [$97]                                  ; $4b08: $f0 $97
    ld [$bd43], a                                 ; $4b0a: $ea $43 $bd
    sbc $73                                       ; $4b0d: $de $73
    rst $30                                       ; $4b0f: $f7
    dec de                                        ; $4b10: $1b
    ld d, c                                       ; $4b11: $51
    sub a                                         ; $4b12: $97
    or [hl]                                       ; $4b13: $b6
    db $ec                                        ; $4b14: $ec
    cp h                                          ; $4b15: $bc
    inc hl                                        ; $4b16: $23
    ld l, d                                       ; $4b17: $6a
    ld l, h                                       ; $4b18: $6c
    ld a, [$bab4]                                 ; $4b19: $fa $b4 $ba
    jp Jump_041_5274                              ; $4b1c: $c3 $74 $52


    ld h, b                                       ; $4b1f: $60
    db $e4                                        ; $4b20: $e4
    ld de, $fa6f                                  ; $4b21: $11 $6f $fa
    dec d                                         ; $4b24: $15
    ld [hl], l                                    ; $4b25: $75
    ld l, l                                       ; $4b26: $6d
    ld d, $bb                                     ; $4b27: $16 $bb
    adc c                                         ; $4b29: $89
    sbc e                                         ; $4b2a: $9b
    ld d, d                                       ; $4b2b: $52
    ld e, a                                       ; $4b2c: $5f
    sbc a                                         ; $4b2d: $9f
    or $0e                                        ; $4b2e: $f6 $0e
    inc a                                         ; $4b30: $3c
    ld d, c                                       ; $4b31: $51
    sub a                                         ; $4b32: $97
    daa                                           ; $4b33: $27
    ld h, c                                       ; $4b34: $61
    ld a, h                                       ; $4b35: $7c
    pop af                                        ; $4b36: $f1
    jp c, $e647                                   ; $4b37: $da $47 $e6

    ld a, [$7d15]                                 ; $4b3a: $fa $15 $7d
    rst $18                                       ; $4b3d: $df
    xor a                                         ; $4b3e: $af
    cp [hl]                                       ; $4b3f: $be
    xor b                                         ; $4b40: $a8
    db $f4                                        ; $4b41: $f4
    halt                                          ; $4b42: $76
    ld d, c                                       ; $4b43: $51
    ld c, a                                       ; $4b44: $4f
    sub d                                         ; $4b45: $92
    or b                                          ; $4b46: $b0
    add hl, bc                                    ; $4b47: $09
    sub l                                         ; $4b48: $95
    add sp, -$13                                  ; $4b49: $e8 $ed
    ret                                           ; $4b4b: $c9


    adc c                                         ; $4b4c: $89
    cp l                                          ; $4b4d: $bd
    or $44                                        ; $4b4e: $f6 $44
    ld [c], a                                     ; $4b50: $e2
    add sp, $52                                   ; $4b51: $e8 $52
    ld a, l                                       ; $4b53: $7d
    ld a, h                                       ; $4b54: $7c
    jr z, jr_041_4b61                             ; $4b55: $28 $0a

    ld c, a                                       ; $4b57: $4f
    ld h, h                                       ; $4b58: $64
    inc h                                         ; $4b59: $24
    dec [hl]                                      ; $4b5a: $35
    ld [hl], d                                    ; $4b5b: $72
    dec sp                                        ; $4b5c: $3b
    ld c, h                                       ; $4b5d: $4c
    daa                                           ; $4b5e: $27
    db $fc                                        ; $4b5f: $fc
    db $e4                                        ; $4b60: $e4

jr_041_4b61:
    db $ec                                        ; $4b61: $ec
    jp hl                                         ; $4b62: $e9


    ld d, a                                       ; $4b63: $57
    ld [hl], l                                    ; $4b64: $75
    ld b, [hl]                                    ; $4b65: $46
    ld d, d                                       ; $4b66: $52
    inc hl                                        ; $4b67: $23
    or a                                          ; $4b68: $b7
    jp $c274                                      ; $4b69: $c3 $74 $c2


    ld c, a                                       ; $4b6c: $4f
    adc $9e                                       ; $4b6d: $ce $9e
    cp [hl]                                       ; $4b6f: $be
    rst $28                                       ; $4b70: $ef
    or e                                          ; $4b71: $b3
    ld d, b                                       ; $4b72: $50
    ld h, e                                       ; $4b73: $63
    sbc e                                         ; $4b74: $9b
    ld h, l                                       ; $4b75: $65
    sbc c                                         ; $4b76: $99
    cp [hl]                                       ; $4b77: $be
    rst $28                                       ; $4b78: $ef
    ld d, a                                       ; $4b79: $57
    cp [hl]                                       ; $4b7a: $be
    push af                                       ; $4b7b: $f5
    push de                                       ; $4b7c: $d5
    adc h                                         ; $4b7d: $8c
    rst $28                                       ; $4b7e: $ef
    ld a, l                                       ; $4b7f: $7d
    dec [hl]                                      ; $4b80: $35
    ld [hl], c                                    ; $4b81: $71
    ld d, e                                       ; $4b82: $53
    ld [$178b], a                                 ; $4b83: $ea $8b $17
    ei                                            ; $4b86: $fb
    call c, $f9c5                                 ; $4b87: $dc $c5 $f9
    ld de, $29a6                                  ; $4b8a: $11 $a6 $29
    rst $30                                       ; $4b8d: $f7
    ld d, c                                       ; $4b8e: $51
    cp b                                          ; $4b8f: $b8
    ret z                                         ; $4b90: $c8

    inc d                                         ; $4b91: $14
    or [hl]                                       ; $4b92: $b6
    xor e                                         ; $4b93: $ab
    cp c                                          ; $4b94: $b9
    ld [bc], a                                    ; $4b95: $02
    or l                                          ; $4b96: $b5
    rst $18                                       ; $4b97: $df
    adc h                                         ; $4b98: $8c
    ld b, b                                       ; $4b99: $40
    call Call_041_4874                            ; $4b9a: $cd $74 $48
    ld e, a                                       ; $4b9d: $5f
    db $d3                                        ; $4b9e: $d3
    xor [hl]                                      ; $4b9f: $ae
    add c                                         ; $4ba0: $81
    sbc d                                         ; $4ba1: $9a
    dec hl                                        ; $4ba2: $2b
    ld l, l                                       ; $4ba3: $6d
    reti                                          ; $4ba4: $d9


    inc de                                        ; $4ba5: $13
    rrca                                          ; $4ba6: $0f
    ld a, l                                       ; $4ba7: $7d
    jp c, $2396                                   ; $4ba8: $da $96 $23

    sbc $93                                       ; $4bab: $de $93
    sub e                                         ; $4bad: $93
    ld c, a                                       ; $4bae: $4f
    add c                                         ; $4baf: $81
    ldh a, [$59]                                  ; $4bb0: $f0 $59
    ld [hl], l                                    ; $4bb2: $75
    add hl, hl                                    ; $4bb3: $29
    push de                                       ; $4bb4: $d5
    sbc e                                         ; $4bb5: $9b
    dec e                                         ; $4bb6: $1d
    ld c, a                                       ; $4bb7: $4f
    cp a                                          ; $4bb8: $bf
    ld [bc], a                                    ; $4bb9: $02
    sbc [hl]                                      ; $4bba: $9e
    cp $4b                                        ; $4bbb: $fe $4b
    adc l                                         ; $4bbd: $8d
    ld hl, sp+$50                                 ; $4bbe: $f8 $50
    db $ec                                        ; $4bc0: $ec
    ldh a, [rNR11]                                ; $4bc1: $f0 $11
    ld l, a                                       ; $4bc3: $6f
    ld [c], a                                     ; $4bc4: $e2
    ld b, [hl]                                    ; $4bc5: $46
    ld [hl], d                                    ; $4bc6: $72
    dec sp                                        ; $4bc7: $3b
    ld a, [c]                                     ; $4bc8: $f2
    ld h, l                                       ; $4bc9: $65
    ld a, [c]                                     ; $4bca: $f2
    adc d                                         ; $4bcb: $8a
    adc d                                         ; $4bcc: $8a
    sbc e                                         ; $4bcd: $9b
    db $ec                                        ; $4bce: $ec
    cpl                                           ; $4bcf: $2f
    and l                                         ; $4bd0: $a5
    add c                                         ; $4bd1: $81
    ld e, d                                       ; $4bd2: $5a
    xor c                                         ; $4bd3: $a9
    dec a                                         ; $4bd4: $3d
    reti                                          ; $4bd5: $d9


    sbc a                                         ; $4bd6: $9f
    ld [bc], a                                    ; $4bd7: $02
    add hl, hl                                    ; $4bd8: $29
    ld c, a                                       ; $4bd9: $4f
    cp h                                          ; $4bda: $bc
    ld de, $f9c4                                  ; $4bdb: $11 $c4 $f9
    sub c                                         ; $4bde: $91
    ld [$ea32], a                                 ; $4bdf: $ea $32 $ea
    ld a, [$2d15]                                 ; $4be2: $fa $15 $2d
    rst $20                                       ; $4be5: $e7
    halt                                          ; $4be6: $76
    ld d, $1b                                     ; $4be7: $16 $1b
    cpl                                           ; $4be9: $2f
    ld c, d                                       ; $4bea: $4a
    add hl, de                                    ; $4beb: $19
    ld c, e                                       ; $4bec: $4b
    db $dd                                        ; $4bed: $dd
    db $e3                                        ; $4bee: $e3
    sub c                                         ; $4bef: $91
    ld a, $6d                                     ; $4bf0: $3e $6d
    ld c, e                                       ; $4bf2: $4b
    add c                                         ; $4bf3: $81
    ld h, $9f                                     ; $4bf4: $26 $9f
    cp d                                          ; $4bf6: $ba
    ld b, e                                       ; $4bf7: $43
    cp h                                          ; $4bf8: $bc
    sub c                                         ; $4bf9: $91
    dec bc                                        ; $4bfa: $0b
    ld d, h                                       ; $4bfb: $54
    ld l, d                                       ; $4bfc: $6a
    db $e4                                        ; $4bfd: $e4
    halt                                          ; $4bfe: $76
    call nc, $9819                                ; $4bff: $d4 $19 $98
    rst $00                                       ; $4c02: $c7
    db $10                                        ; $4c03: $10
    ld [hl], l                                    ; $4c04: $75
    pop af                                        ; $4c05: $f1
    add l                                         ; $4c06: $85
    dec l                                         ; $4c07: $2d
    jr nz, jr_041_4c6b                            ; $4c08: $20 $61

    ld a, [bc]                                    ; $4c0a: $0a
    ld a, l                                       ; $4c0b: $7d
    ld a, h                                       ; $4c0c: $7c
    ld sp, hl                                     ; $4c0d: $f9
    cpl                                           ; $4c0e: $2f
    push de                                       ; $4c0f: $d5
    ld l, h                                       ; $4c10: $6c
    sbc [hl]                                      ; $4c11: $9e
    inc a                                         ; $4c12: $3c
    inc sp                                        ; $4c13: $33
    add h                                         ; $4c14: $84
    daa                                           ; $4c15: $27
    sbc a                                         ; $4c16: $9f
    ld c, l                                       ; $4c17: $4d
    xor a                                         ; $4c18: $af
    ld c, a                                       ; $4c19: $4f
    add a                                         ; $4c1a: $87
    inc d                                         ; $4c1b: $14
    ld a, e                                       ; $4c1c: $7b
    ld c, a                                       ; $4c1d: $4f
    call c, $30ec                                 ; $4c1e: $dc $ec $30
    dec [hl]                                      ; $4c21: $35
    db $fd                                        ; $4c22: $fd
    dec bc                                        ; $4c23: $0b
    inc hl                                        ; $4c24: $23
    dec [hl]                                      ; $4c25: $35
    ld [hl], d                                    ; $4c26: $72
    dec sp                                        ; $4c27: $3b
    adc e                                         ; $4c28: $8b
    adc l                                         ; $4c29: $8d
    rla                                           ; $4c2a: $17
    and l                                         ; $4c2b: $a5
    adc h                                         ; $4c2c: $8c
    and l                                         ; $4c2d: $a5
    and e                                         ; $4c2e: $a3
    ld e, a                                       ; $4c2f: $5f
    ld a, b                                       ; $4c30: $78
    xor h                                         ; $4c31: $ac
    and l                                         ; $4c32: $a5
    sbc h                                         ; $4c33: $9c
    inc d                                         ; $4c34: $14
    ld l, b                                       ; $4c35: $68
    ld a, [c]                                     ; $4c36: $f2
    ld l, c                                       ; $4c37: $69
    db $fd                                        ; $4c38: $fd
    cp h                                          ; $4c39: $bc
    jr z, jr_041_4c5b                             ; $4c3a: $28 $1f

    scf                                           ; $4c3c: $37
    jp nz, $d936                                  ; $4c3d: $c2 $36 $d9

    ld c, b                                       ; $4c40: $48
    xor e                                         ; $4c41: $ab
    add $97                                       ; $4c42: $c6 $97
    ld c, $8a                                     ; $4c44: $0e $8a
    and e                                         ; $4c46: $a3
    add [hl]                                      ; $4c47: $86
    ld a, $ad                                     ; $4c48: $3e $ad
    sbc a                                         ; $4c4a: $9f
    dec de                                        ; $4c4b: $1b
    sbc c                                         ; $4c4c: $99
    jr c, jr_041_4c8e                             ; $4c4d: $38 $3f

    ld d, d                                       ; $4c4f: $52
    rst $30                                       ; $4c50: $f7
    ld a, b                                       ; $4c51: $78
    inc h                                         ; $4c52: $24
    db $e4                                        ; $4c53: $e4
    ld l, b                                       ; $4c54: $68
    ei                                            ; $4c55: $fb
    ld a, $8b                                     ; $4c56: $3e $8b
    ld b, c                                       ; $4c58: $41
    inc d                                         ; $4c59: $14
    inc c                                         ; $4c5a: $0c

jr_041_4c5b:
    cp c                                          ; $4c5b: $b9
    sbc l                                         ; $4c5c: $9d
    ld b, d                                       ; $4c5d: $42
    daa                                           ; $4c5e: $27
    rl h                                          ; $4c5f: $cb $14
    sbc [hl]                                      ; $4c61: $9e
    ld a, [hl]                                    ; $4c62: $7e

Jump_041_4c63:
    dec b                                         ; $4c63: $05
    cp [hl]                                       ; $4c64: $be
    inc hl                                        ; $4c65: $23
    sub e                                         ; $4c66: $93
    jp nz, $93cf                                  ; $4c67: $c2 $cf $93

    cpl                                           ; $4c6a: $2f

jr_041_4c6b:
    dec b                                         ; $4c6b: $05
    sbc d                                         ; $4c6c: $9a
    inc a                                         ; $4c6d: $3c
    ld c, a                                       ; $4c6e: $4f
    ld a, $6d                                     ; $4c6f: $3e $6d
    reti                                          ; $4c71: $d9


    ld a, c                                       ; $4c72: $79
    ld b, a                                       ; $4c73: $47
    call nc, $d4d8                                ; $4c74: $d4 $d8 $d4
    ld e, h                                       ; $4c77: $5c
    ld bc, $be6d                                  ; $4c78: $01 $6d $be
    ldh a, [rNR22]                                ; $4c7b: $f0 $17
    ld a, $37                                     ; $4c7d: $3e $37
    cp d                                          ; $4c7f: $ba
    ld [hl], h                                    ; $4c80: $74
    inc [hl]                                      ; $4c81: $34
    ld d, d                                       ; $4c82: $52
    ld [hl], e                                    ; $4c83: $73
    dec b                                         ; $4c84: $05
    cp [hl]                                       ; $4c85: $be
    db $fc                                        ; $4c86: $fc
    or $97                                        ; $4c87: $f6 $97
    sub e                                         ; $4c89: $93
    ld [hl], d                                    ; $4c8a: $72
    xor b                                         ; $4c8b: $a8
    sub b                                         ; $4c8c: $90
    rrca                                          ; $4c8d: $0f

jr_041_4c8e:
    ld d, e                                       ; $4c8e: $53
    and $8b                                       ; $4c8f: $e6 $8b
    call z, Call_041_5cd5                         ; $4c91: $cc $d5 $5c
    ld bc, $531d                                  ; $4c94: $01 $1d $53
    and $ab                                       ; $4c97: $e6 $ab
    sub l                                         ; $4c99: $95
    sub $e0                                       ; $4c9a: $d6 $e0
    rst $28                                       ; $4c9c: $ef
    ei                                            ; $4c9d: $fb
    ld a, $d4                                     ; $4c9e: $3e $d4
    ld e, a                                       ; $4ca0: $5f
    push af                                       ; $4ca1: $f5
    ld a, l                                       ; $4ca2: $7d
    rra                                           ; $4ca3: $1f
    ld a, a                                       ; $4ca4: $7f
    ld d, l                                       ; $4ca5: $55
    push af                                       ; $4ca6: $f5
    ld a, l                                       ; $4ca7: $7d
    cp a                                          ; $4ca8: $bf
    ld [bc], a                                    ; $4ca9: $02
    db $ed                                        ; $4caa: $ed
    ld c, l                                       ; $4cab: $4d
    ld c, d                                       ; $4cac: $4a
    ld [hl], l                                    ; $4cad: $75
    add l                                         ; $4cae: $85
    cp a                                          ; $4caf: $bf
    add d                                         ; $4cb0: $82
    ldh a, [$a4]                                  ; $4cb1: $f0 $a4
    ld b, [hl]                                    ; $4cb3: $46
    jr jr_041_4d0c                                ; $4cb4: $18 $56

    sbc l                                         ; $4cb6: $9d
    inc a                                         ; $4cb7: $3c
    ld c, a                                       ; $4cb8: $4f
    sbc a                                         ; $4cb9: $9f
    sub $20                                       ; $4cba: $d6 $20

jr_041_4cbc:
    inc h                                         ; $4cbc: $24
    add h                                         ; $4cbd: $84
    ld a, [c]                                     ; $4cbe: $f2
    push hl                                       ; $4cbf: $e5
    ld [hl], a                                    ; $4cc0: $77
    add h                                         ; $4cc1: $84
    ld c, $39                                     ; $4cc2: $0e $39
    ld a, c                                       ; $4cc4: $79
    sub c                                         ; $4cc5: $91
    ld c, c                                       ; $4cc6: $49
    ld [hl], c                                    ; $4cc7: $71
    or e                                          ; $4cc8: $b3
    cp a                                          ; $4cc9: $bf
    ldh a, [$b9]                                  ; $4cca: $f0 $b9
    adc c                                         ; $4ccc: $89
    cp d                                          ; $4ccd: $ba
    call nc, $ad1e                                ; $4cce: $d4 $1e $ad
    cp e                                          ; $4cd1: $bb
    scf                                           ; $4cd2: $37
    ld l, $35                                     ; $4cd3: $2e $35
    db $e3                                        ; $4cd5: $e3
    jp hl                                         ; $4cd6: $e9


    ld b, a                                       ; $4cd7: $47
    ld l, [hl]                                    ; $4cd8: $6e
    ld b, a                                       ; $4cd9: $47
    rst $38                                       ; $4cda: $ff
    ld [c], a                                     ; $4cdb: $e2
    db $fc                                        ; $4cdc: $fc
    ld h, b                                       ; $4cdd: $60
    sbc [hl]                                      ; $4cde: $9e
    cp h                                          ; $4cdf: $bc
    ld e, [hl]                                    ; $4ce0: $5e
    ld a, a                                       ; $4ce1: $7f
    sbc a                                         ; $4ce2: $9f
    sub e                                         ; $4ce3: $93
    inc hl                                        ; $4ce4: $23
    sbc $f4                                       ; $4ce5: $de $f4
    dec hl                                        ; $4ce7: $2b
    sbc [hl]                                      ; $4ce8: $9e
    ld h, e                                       ; $4ce9: $63
    halt                                          ; $4cea: $76
    ld de, $fdec                                  ; $4ceb: $11 $ec $fd

jr_041_4cee:
    pop af                                        ; $4cee: $f1
    db $fd                                        ; $4cef: $fd
    db $fd                                        ; $4cf0: $fd
    ld l, c                                       ; $4cf1: $69
    bit 3, [hl]                                   ; $4cf2: $cb $5e
    inc d                                         ; $4cf4: $14
    ld [hl], h                                    ; $4cf5: $74
    ld sp, hl                                     ; $4cf6: $f9
    call Call_000_1576                            ; $4cf7: $cd $76 $15
    add h                                         ; $4cfa: $84
    cpl                                           ; $4cfb: $2f
    ld a, h                                       ; $4cfc: $7c
    ld e, c                                       ; $4cfd: $59
    ld h, b                                       ; $4cfe: $60
    ld a, [bc]                                    ; $4cff: $0a
    or $97                                        ; $4d00: $f6 $97
    dec a                                         ; $4d02: $3d
    add hl, hl                                    ; $4d03: $29
    push de                                       ; $4d04: $d5
    dec d                                         ; $4d05: $15
    cp $0a                                        ; $4d06: $fe $0a
    jp nz, Jump_041_7353                          ; $4d08: $c2 $53 $73

    dec b                                         ; $4d0b: $05

jr_041_4d0c:
    ld [hl], l                                    ; $4d0c: $75
    ld b, [hl]                                    ; $4d0d: $46
    ld [c], a                                     ; $4d0e: $e2
    sbc a                                         ; $4d0f: $9f
    jr nc, jr_041_4cbc                            ; $4d10: $30 $aa

    ld h, l                                       ; $4d12: $65
    or d                                          ; $4d13: $b2
    ret nz                                        ; $4d14: $c0

    or d                                          ; $4d15: $b2
    cp h                                          ; $4d16: $bc
    db $ed                                        ; $4d17: $ed
    scf                                           ; $4d18: $37
    add sp, -$5e                                  ; $4d19: $e8 $a2
    ld b, b                                       ; $4d1b: $40
    ld c, [hl]                                    ; $4d1c: $4e
    ld e, [hl]                                    ; $4d1d: $5e
    call nc, $f21b                                ; $4d1e: $d4 $1b $f2
    ld a, e                                       ; $4d21: $7b
    ld c, a                                       ; $4d22: $4f
    ld c, d                                       ; $4d23: $4a
    ld [hl], l                                    ; $4d24: $75
    add l                                         ; $4d25: $85
    cp a                                          ; $4d26: $bf
    add d                                         ; $4d27: $82
    ldh a, [$f4]                                  ; $4d28: $f0 $f4
    dec hl                                        ; $4d2a: $2b
    ld [hl], l                                    ; $4d2b: $75
    ld b, [hl]                                    ; $4d2c: $46
    ld [c], a                                     ; $4d2d: $e2
    inc a                                         ; $4d2e: $3c
    ld l, d                                       ; $4d2f: $6a
    ld b, h                                       ; $4d30: $44
    ld c, $c2                                     ; $4d31: $0e $c2
    adc b                                         ; $4d33: $88
    ld a, [$df78]                                 ; $4d34: $fa $78 $df
    db $10                                        ; $4d37: $10
    rra                                           ; $4d38: $1f
    ld a, d                                       ; $4d39: $7a
    pop af                                        ; $4d3a: $f1
    jp nc, $ebb1                                  ; $4d3b: $d2 $b1 $eb

    db $d3                                        ; $4d3e: $d3
    ld sp, $9e65                                  ; $4d3f: $31 $65 $9e
    sub h                                         ; $4d42: $94
    ld c, e                                       ; $4d43: $4b
    ld hl, $6b67                                  ; $4d44: $21 $67 $6b
    adc b                                         ; $4d47: $88
    ld h, b                                       ; $4d48: $60
    rst $28                                       ; $4d49: $ef
    adc a                                         ; $4d4a: $8f
    rst $28                                       ; $4d4b: $ef
    rst $28                                       ; $4d4c: $ef
    ld c, a                                       ; $4d4d: $4f
    ld e, e                                       ; $4d4e: $5b
    or $a2                                        ; $4d4f: $f6 $a2
    ret nc                                        ; $4d51: $d0

    xor a                                         ; $4d52: $af
    cp [hl]                                       ; $4d53: $be
    ld [$e749], sp                                ; $4d54: $08 $49 $e7
    ld a, [c]                                     ; $4d57: $f2
    ld h, [hl]                                    ; $4d58: $66
    ld b, a                                       ; $4d59: $47
    cp [hl]                                       ; $4d5a: $be
    ld hl, $cbf6                                  ; $4d5b: $21 $f6 $cb
    xor c                                         ; $4d5e: $a9
    xor a                                         ; $4d5f: $af
    jr nz, jr_041_4cee                            ; $4d60: $20 $8c

    db $fc                                        ; $4d62: $fc
    adc [hl]                                      ; $4d63: $8e
    rrca                                          ; $4d64: $0f
    dec a                                         ; $4d65: $3d
    pop hl                                        ; $4d66: $e1
    ret                                           ; $4d67: $c9


    ld [hl], d                                    ; $4d68: $72
    cpl                                           ; $4d69: $2f
    and e                                         ; $4d6a: $a3
    bit 1, c                                      ; $4d6b: $cb $49
    ld a, h                                       ; $4d6d: $7c
    jr z, jr_041_4d7a                             ; $4d6e: $28 $0a

    ld c, a                                       ; $4d70: $4f
    call c, $9d98                                 ; $4d71: $dc $98 $9d
    sbc d                                         ; $4d74: $9a
    sbc e                                         ; $4d75: $9b
    jr c, @-$6f                                   ; $4d76: $38 $8f

    ld a, [de]                                    ; $4d78: $1a
    and c                                         ; $4d79: $a1

jr_041_4d7a:
    ld a, [c]                                     ; $4d7a: $f2
    ld e, c                                       ; $4d7b: $59
    add $f8                                       ; $4d7c: $c6 $f8
    ld d, e                                       ; $4d7e: $53
    cp l                                          ; $4d7f: $bd
    halt                                          ; $4d80: $76
    xor $e3                                       ; $4d81: $ee $e3
    db $fc                                        ; $4d83: $fc
    ld [$dc5f], sp                                ; $4d84: $08 $5f $dc
    adc b                                         ; $4d87: $88
    and d                                         ; $4d88: $a2
    ld h, [hl]                                    ; $4d89: $66
    push af                                       ; $4d8a: $f5
    ld h, h                                       ; $4d8b: $64
    or c                                          ; $4d8c: $b1
    ld e, c                                       ; $4d8d: $59
    db $ec                                        ; $4d8e: $ec
    ld h, $bb                                     ; $4d8f: $26 $bb

jr_041_4d91:
    cp [hl]                                       ; $4d91: $be
    ld a, [hl]                                    ; $4d92: $7e
    dec b                                         ; $4d93: $05
    ld [hl], l                                    ; $4d94: $75
    adc a                                         ; $4d95: $8f
    ld b, a                                       ; $4d96: $47
    ld d, d                                       ; $4d97: $52
    ld d, b                                       ; $4d98: $50
    jp hl                                         ; $4d99: $e9


    db $ed                                        ; $4d9a: $ed
    add e                                         ; $4d9b: $83
    ld d, d                                       ; $4d9c: $52
    ld h, b                                       ; $4d9d: $60
    ret z                                         ; $4d9e: $c8

    sub b                                         ; $4d9f: $90
    ld d, h                                       ; $4da0: $54
    ld a, h                                       ; $4da1: $7c
    jr z, jr_041_4e18                             ; $4da2: $28 $74

    ld e, c                                       ; $4da4: $59
    ld h, b                                       ; $4da5: $60
    adc $5f                                       ; $4da6: $ce $5f
    ld l, a                                       ; $4da8: $6f
    call c, Call_000_14c8                         ; $4da9: $dc $c8 $14
    add a                                         ; $4dac: $87
    db $ec                                        ; $4dad: $ec
    adc a                                         ; $4dae: $8f
    sbc e                                         ; $4daf: $9b
    cp l                                          ; $4db0: $bd
    rst $00                                       ; $4db1: $c7
    dec a                                         ; $4db2: $3d
    pop af                                        ; $4db3: $f1
    ld b, [hl]                                    ; $4db4: $46
    db $10                                        ; $4db5: $10
    ld [hl], l                                    ; $4db6: $75
    ld h, c                                       ; $4db7: $61
    jp z, Jump_041_6c8c                           ; $4db8: $ca $8c $6c

    ld h, h                                       ; $4dbb: $64
    add hl, de                                    ; $4dbc: $19
    ld h, e                                       ; $4dbd: $63
    and h                                         ; $4dbe: $a4
    ld a, d                                       ; $4dbf: $7a
    db $ed                                        ; $4dc0: $ed
    sbc h                                         ; $4dc1: $9c
    rra                                           ; $4dc2: $1f
    ld a, l                                       ; $4dc3: $7d
    jp c, Jump_041_54fb                           ; $4dc4: $da $fb $54

    xor a                                         ; $4dc7: $af
    ld l, c                                       ; $4dc8: $69
    scf                                           ; $4dc9: $37
    sub [hl]                                      ; $4dca: $96
    push hl                                       ; $4dcb: $e5
    adc l                                         ; $4dcc: $8d
    ld de, $bd85                                  ; $4dcd: $11 $85 $bd
    ld de, $3672                                  ; $4dd0: $11 $72 $36
    inc hl                                        ; $4dd3: $23
    or h                                          ; $4dd4: $b4
    ld a, h                                       ; $4dd5: $7c
    ld a, h                                       ; $4dd6: $7c
    jr z, @-$08                                   ; $4dd7: $28 $f6

    cp $a8                                        ; $4dd9: $fe $a8
    adc e                                         ; $4ddb: $8b
    rrca                                          ; $4ddc: $0f
    ld b, l                                       ; $4ddd: $45
    pop hl                                        ; $4dde: $e1
    adc c                                         ; $4ddf: $89
    dec de                                        ; $4de0: $1b
    or e                                          ; $4de1: $b3
    ld d, e                                       ; $4de2: $53
    ld [hl], e                                    ; $4de3: $73
    db $d3                                        ; $4de4: $d3
    xor a                                         ; $4de5: $af
    dec e                                         ; $4de6: $1d
    jp nc, $bb8b                                  ; $4de7: $d2 $8b $bb

    sub h                                         ; $4dea: $94
    sub c                                         ; $4deb: $91
    ret                                           ; $4dec: $c9


    or $78                                        ; $4ded: $f6 $78
    cp d                                          ; $4def: $ba
    ccf                                           ; $4df0: $3f
    ret z                                         ; $4df1: $c8

    or $a0                                        ; $4df2: $f6 $a0
    ld e, [hl]                                    ; $4df4: $5e
    rst $28                                       ; $4df5: $ef
    cp c                                          ; $4df6: $b9
    sbc e                                         ; $4df7: $9b
    xor b                                         ; $4df8: $a8
    ld c, e                                       ; $4df9: $4b
    db $dd                                        ; $4dfa: $dd
    db $e3                                        ; $4dfb: $e3
    sub c                                         ; $4dfc: $91
    ld a, $2d                                     ; $4dfd: $3e $2d
    rst $20                                       ; $4dff: $e7
    halt                                          ; $4e00: $76
    sub [hl]                                      ; $4e01: $96
    ld l, e                                       ; $4e02: $6b
    jr nz, jr_041_4d91                            ; $4e03: $20 $8c

    adc d                                         ; $4e05: $8a
    ld a, [c]                                     ; $4e06: $f2
    call nz, $1f6b                                ; $4e07: $c4 $6b $1f
    ld l, l                                       ; $4e0a: $6d
    ld e, a                                       ; $4e0b: $5f
    ld c, [hl]                                    ; $4e0c: $4e
    ld a, [bc]                                    ; $4e0d: $0a
    inc [hl]                                      ; $4e0e: $34
    ld a, c                                       ; $4e0f: $79
    pop hl                                        ; $4e10: $e1
    db $eb                                        ; $4e11: $eb
    ld d, a                                       ; $4e12: $57
    db $ed                                        ; $4e13: $ed
    ld a, c                                       ; $4e14: $79
    ld d, b                                       ; $4e15: $50
    xor a                                         ; $4e16: $af
    rst $30                                       ; $4e17: $f7

jr_041_4e18:
    call c, Call_000_144d                         ; $4e18: $dc $4d $14
    or $fe                                        ; $4e1b: $f6 $fe
    inc l                                         ; $4e1d: $2c
    ld [hl], $5e                                  ; $4e1e: $36 $5e
    sub h                                         ; $4e20: $94
    ld [hl-], a                                   ; $4e21: $32
    add [hl]                                      ; $4e22: $86
    ld d, d                                       ; $4e23: $52
    ld a, $ed                                     ; $4e24: $3e $ed
    cp e                                          ; $4e26: $bb
    or [hl]                                       ; $4e27: $b6
    db $ec                                        ; $4e28: $ec
    push hl                                       ; $4e29: $e5
    sbc b                                         ; $4e2a: $98
    ld d, e                                       ; $4e2b: $53
    inc hl                                        ; $4e2c: $23
    add l                                         ; $4e2d: $85
    add $87                                       ; $4e2e: $c6 $87
    and d                                         ; $4e30: $a2
    ldh a, [$64]                                  ; $4e31: $f0 $64
    cp c                                          ; $4e33: $b9
    sub a                                         ; $4e34: $97
    jp hl                                         ; $4e35: $e9


    db $d3                                        ; $4e36: $d3
    pop af                                        ; $4e37: $f1
    and l                                         ; $4e38: $a5
    ld d, b                                       ; $4e39: $50
    ld c, l                                       ; $4e3a: $4d
    add e                                         ; $4e3b: $83
    ld e, l                                       ; $4e3c: $5d
    ld [hl], c                                    ; $4e3d: $71
    inc de                                        ; $4e3e: $13
    ld [hl], l                                    ; $4e3f: $75
    sub c                                         ; $4e40: $91
    sub c                                         ; $4e41: $91
    cp h                                          ; $4e42: $bc
    reti                                          ; $4e43: $d9


    sub c                                         ; $4e44: $91
    ld l, a                                       ; $4e45: $6f
    ret z                                         ; $4e46: $c8

    ld c, c                                       ; $4e47: $49
    db $ec                                        ; $4e48: $ec
    ld hl, sp+$4d                                 ; $4e49: $f8 $4d
    ld c, l                                       ; $4e4b: $4d
    ld a, [hl]                                    ; $4e4c: $7e
    ld l, a                                       ; $4e4d: $6f
    and h                                         ; $4e4e: $a4
    ld d, b                                       ; $4e4f: $50
    ld h, h                                       ; $4e50: $64
    add e                                         ; $4e51: $83
    ld a, b                                       ; $4e52: $78
    inc hl                                        ; $4e53: $23
    ld d, a                                       ; $4e54: $57
    ld [hl], e                                    ; $4e55: $73
    dec b                                         ; $4e56: $05
    cp [hl]                                       ; $4e57: $be
    ld [hl], a                                    ; $4e58: $77
    ld e, c                                       ; $4e59: $59
    adc h                                         ; $4e5a: $8c
    ld a, [hl+]                                   ; $4e5b: $2a
    ld [$4fa3], sp                                ; $4e5c: $08 $a3 $4f
    ld a, e                                       ; $4e5f: $7b
    adc b                                         ; $4e60: $88
    db $db                                        ; $4e61: $db
    ld e, a                                       ; $4e62: $5f
    jp z, $d105                                   ; $4e63: $ca $05 $d1

    or $85                                        ; $4e66: $f6 $85
    ld a, d                                       ; $4e68: $7a
    cp l                                          ; $4e69: $bd
    rst $20                                       ; $4e6a: $e7
    ld l, $af                                     ; $4e6b: $2e $af

jr_041_4e6d:
    rst $10                                       ; $4e6d: $d7
    cp a                                          ; $4e6e: $bf
    xor b                                         ; $4e6f: $a8
    sub c                                         ; $4e70: $91
    rst $20                                       ; $4e71: $e7
    adc e                                         ; $4e72: $8b
    ld a, h                                       ; $4e73: $7c
    ld [hl], c                                    ; $4e74: $71
    inc hl                                        ; $4e75: $23

jr_041_4e76:
    ld l, d                                       ; $4e76: $6a
    ld h, h                                       ; $4e77: $64
    ld d, d                                       ; $4e78: $52
    ld d, $94                                     ; $4e79: $16 $94
    ld [hl-], a                                   ; $4e7b: $32
    pop de                                        ; $4e7c: $d1

Jump_041_4e7d:
    dec de                                        ; $4e7d: $1b
    ld h, l                                       ; $4e7e: $65
    ld b, [hl]                                    ; $4e7f: $46
    jp z, Jump_041_62d8                           ; $4e80: $ca $d8 $62

    jr z, jr_041_4e6d                             ; $4e83: $28 $e8

    ld d, a                                       ; $4e85: $57
    ld [hl], l                                    ; $4e86: $75
    ld b, [hl]                                    ; $4e87: $46
    and d                                         ; $4e88: $a2
    pop de                                        ; $4e89: $d1
    scf                                           ; $4e8a: $37
    dec [hl]                                      ; $4e8b: $35
    reti                                          ; $4e8c: $d9


    adc b                                         ; $4e8d: $88
    db $db                                        ; $4e8e: $db
    jr z, jr_041_4e76                             ; $4e8f: $28 $e5

    sub h                                         ; $4e91: $94
    ld hl, $2c0b                                  ; $4e92: $21 $0b $2c
    inc h                                         ; $4e95: $24
    inc d                                         ; $4e96: $14
    inc c                                         ; $4e97: $0c
    pop af                                        ; $4e98: $f1
    and c                                         ; $4e99: $a1
    cp a                                          ; $4e9a: $bf
    ld de, $bd85                                  ; $4e9b: $11 $85 $bd
    ld de, $2fcf                                  ; $4e9e: $11 $cf $2f
    adc b                                         ; $4ea1: $88
    rst $38                                       ; $4ea2: $ff
    jp $bfc3                                      ; $4ea3: $c3 $c3 $bf


    adc a                                         ; $4ea6: $8f
    ld c, b                                       ; $4ea7: $48
    ld a, h                                       ; $4ea8: $7c
    sbc [hl]                                      ; $4ea9: $9e
    inc l                                         ; $4eaa: $2c
    rst $10                                       ; $4eab: $d7
    ld b, b                                       ; $4eac: $40
    ld d, $2a                                     ; $4ead: $16 $2a
    ld a, h                                       ; $4eaf: $7c
    ld a, l                                       ; $4eb0: $7d
    jp c, Jump_000_3443                           ; $4eb1: $da $43 $34

    ld a, [$26a6]                                 ; $4eb4: $fa $a6 $26
    dec bc                                        ; $4eb7: $0b
    call z, $ebf9                                 ; $4eb8: $cc $f9 $eb
    ld c, l                                       ; $4ebb: $4d
    add hl, de                                    ; $4ebc: $19
    sbc c                                         ; $4ebd: $99
    inc d                                         ; $4ebe: $14
    rst $28                                       ; $4ebf: $ef
    sub e                                         ; $4ec0: $93
    or a                                          ; $4ec1: $b7
    rst $30                                       ; $4ec2: $f7
    dec bc                                        ; $4ec3: $0b
    ld e, a                                       ; $4ec4: $5f
    cp a                                          ; $4ec5: $bf
    ld [bc], a                                    ; $4ec6: $02
    sbc [hl]                                      ; $4ec7: $9e
    ld e, $35                                     ; $4ec8: $1e $35
    ld [c], a                                     ; $4eca: $e2
    ld b, e                                       ; $4ecb: $43
    ld a, a                                       ; $4ecc: $7f
    cp e                                          ; $4ecd: $bb
    add hl, hl                                    ; $4ece: $29
    rra                                           ; $4ecf: $1f
    ld [hl], l                                    ; $4ed0: $75
    pop de                                        ; $4ed1: $d1
    rra                                           ; $4ed2: $1f
    sub c                                         ; $4ed3: $91
    ld hl, sp+$66                                 ; $4ed4: $f8 $66
    sub e                                         ; $4ed6: $93
    inc de                                        ; $4ed7: $13
    ld e, $93                                     ; $4ed8: $1e $93
    ret                                           ; $4eda: $c9


    rst $28                                       ; $4edb: $ef
    ret c                                         ; $4edc: $d8

    dec l                                         ; $4edd: $2d
    ld d, e                                       ; $4ede: $53
    ld hl, sp-$4c                                 ; $4edf: $f8 $b4
    ld a, l                                       ; $4ee1: $7d
    inc de                                        ; $4ee2: $13
    add l                                         ; $4ee3: $85
    cp l                                          ; $4ee4: $bd
    sub c                                         ; $4ee5: $91
    ld [c], a                                     ; $4ee6: $e2
    ld h, [hl]                                    ; $4ee7: $66
    ld b, c                                       ; $4ee8: $41
    call nc, $ada5                                ; $4ee9: $d4 $a5 $ad
    daa                                           ; $4eec: $27
    ld [de], a                                    ; $4eed: $12
    cp a                                          ; $4eee: $bf
    ld c, a                                       ; $4eef: $4f
    ld a, e                                       ; $4ef0: $7b
    inc de                                        ; $4ef1: $13
    ld [de], a                                    ; $4ef2: $12
    ld l, d                                       ; $4ef3: $6a
    ld [bc], a                                    ; $4ef4: $02
    ld h, c                                       ; $4ef5: $61
    ld a, e                                       ; $4ef6: $7b
    add e                                         ; $4ef7: $83
    ld l, $d5                                     ; $4ef8: $2e $d5
    ld b, a                                       ; $4efa: $47
    ld b, [hl]                                    ; $4efb: $46
    or d                                          ; $4efc: $b2
    daa                                           ; $4efd: $27
    inc h                                         ; $4efe: $24
    call nc, $faa4                                ; $4eff: $d4 $a4 $fa
    dec bc                                        ; $4f02: $0b
    dec l                                         ; $4f03: $2d
    xor $0c                                       ; $4f04: $ee $0c
    db $fd                                        ; $4f06: $fd
    ld a, [bc]                                    ; $4f07: $0a
    db $ed                                        ; $4f08: $ed
    ld hl, $9bda                                  ; $4f09: $21 $da $9b
    ld [hl], $04                                  ; $4f0c: $36 $04
    ld [hl], $a2                                  ; $4f0e: $36 $a2
    or b                                          ; $4f10: $b0
    rst $30                                       ; $4f11: $f7
    and a                                         ; $4f12: $a7
    db $fc                                        ; $4f13: $fc
    cp $a8                                        ; $4f14: $fe $a8
    adc e                                         ; $4f16: $8b
    dec e                                         ; $4f17: $1d
    db $db                                        ; $4f18: $db
    sub b                                         ; $4f19: $90
    inc de                                        ; $4f1a: $13
    add l                                         ; $4f1b: $85
    bit 4, d                                      ; $4f1c: $cb $62
    db $e3                                        ; $4f1e: $e3
    ld b, l                                       ; $4f1f: $45
    add hl, hl                                    ; $4f20: $29
    ld h, e                                       ; $4f21: $63
    rla                                           ; $4f22: $17
    rst $28                                       ; $4f23: $ef
    adc e                                         ; $4f24: $8b
    ld c, h                                       ; $4f25: $4c
    or $47                                        ; $4f26: $f6 $47
    and e                                         ; $4f28: $a3
    ld l, a                                       ; $4f29: $6f
    ld [$bf3e], a                                 ; $4f2a: $ea $3e $bf
    rst $30                                       ; $4f2d: $f7
    ld h, a                                       ; $4f2e: $67
    add hl, de                                    ; $4f2f: $19

Jump_041_4f30:
    db $e3                                        ; $4f30: $e3
    rrca                                          ; $4f31: $0f
    ld d, e                                       ; $4f32: $53
    and $c9                                       ; $4f33: $e6 $c9
    db $ed                                        ; $4f35: $ed
    ld l, b                                       ; $4f36: $68
    scf                                           ; $4f37: $37
    ld h, $a3                                     ; $4f38: $26 $a3
    ld c, e                                       ; $4f3a: $4b
    push af                                       ; $4f3b: $f5
    ld d, c                                       ; $4f3c: $51

Call_041_4f3d:
    rla                                           ; $4f3d: $17
    add hl, de                                    ; $4f3e: $19
    ld h, [hl]                                    ; $4f3f: $66
    ld b, h                                       ; $4f40: $44
    adc l                                         ; $4f41: $8d
    ld d, l                                       ; $4f42: $55
    inc hl                                        ; $4f43: $23
    db $d3                                        ; $4f44: $d3
    xor a                                         ; $4f45: $af
    ld l, l                                       ; $4f46: $6d
    ld c, e                                       ; $4f47: $4b
    ld a, h                                       ; $4f48: $7c
    jr z, jr_041_4f55                             ; $4f49: $28 $0a

    ld c, a                                       ; $4f4b: $4f
    call c, $9d98                                 ; $4f4c: $dc $98 $9d
    sbc d                                         ; $4f4f: $9a
    sbc e                                         ; $4f50: $9b
    xor b                                         ; $4f51: $a8
    ld hl, $7a0d                                  ; $4f52: $21 $0d $7a

jr_041_4f55:
    dec a                                         ; $4f55: $3d
    add d                                         ; $4f56: $82
    ld d, d                                       ; $4f57: $52
    ld h, b                                       ; $4f58: $60
    xor $42                                       ; $4f59: $ee $42
    push hl                                       ; $4f5b: $e5
    ld d, e                                       ; $4f5c: $53
    call c, $93ef                                 ; $4f5d: $dc $ef $93
    rst $20                                       ; $4f60: $e7
    ld c, a                                       ; $4f61: $4f
    add c                                         ; $4f62: $81
    ld h, [hl]                                    ; $4f63: $66
    ldh [$8f], a                                  ; $4f64: $e0 $8f
    di                                            ; $4f66: $f3
    inc hl                                        ; $4f67: $23
    ld l, [hl]                                    ; $4f68: $6e
    ld b, h                                       ; $4f69: $44
    ld d, c                                       ; $4f6a: $51
    add a                                         ; $4f6b: $87
    db $fc                                        ; $4f6c: $fc
    adc [hl]                                      ; $4f6d: $8e
    rrca                                          ; $4f6e: $0f
    ld a, l                                       ; $4f6f: $7d
    db $e3                                        ; $4f70: $e3
    ret                                           ; $4f71: $c9


    ld [hl], d                                    ; $4f72: $72
    cpl                                           ; $4f73: $2f
    and e                                         ; $4f74: $a3
    ld c, e                                       ; $4f75: $4b
    push af                                       ; $4f76: $f5
    sub c                                         ; $4f77: $91
    sub c                                         ; $4f78: $91
    sub h                                         ; $4f79: $94
    adc c                                         ; $4f7a: $89
    ld a, [de]                                    ; $4f7b: $1a
    ld [de], a                                    ; $4f7c: $12
    add hl, hl                                    ; $4f7d: $29
    rst $30                                       ; $4f7e: $f7
    sub c                                         ; $4f7f: $91
    cpl                                           ; $4f80: $2f
    ld l, [hl]                                    ; $4f81: $6e
    ld a, [bc]                                    ; $4f82: $0a
    ld a, a                                       ; $4f83: $7f
    cp a                                          ; $4f84: $bf
    ld [bc], a                                    ; $4f85: $02
    dec e                                         ; $4f86: $1d
    rra                                           ; $4f87: $1f
    db $e4                                        ; $4f88: $e4
    and d                                         ; $4f89: $a2
    db $ed                                        ; $4f8a: $ed
    srl b                                         ; $4f8b: $cb $38
    rst $20                                       ; $4f8d: $e7
    cp a                                          ; $4f8e: $bf
    add sp, $21                                   ; $4f8f: $e8 $21
    ret z                                         ; $4f91: $c8

    cpl                                           ; $4f92: $2f
    jr nc, jr_041_4fd3                            ; $4f93: $30 $3e

    ld e, l                                       ; $4f95: $5d
    ld a, [bc]                                    ; $4f96: $0a
    ld d, d                                       ; $4f97: $52
    ld hl, sp+$2f                                 ; $4f98: $f8 $2f
    cpl                                           ; $4f9a: $2f
    ld [$4d45], a                                 ; $4f9b: $ea $45 $4d
    inc b                                         ; $4f9e: $04
    ld a, e                                       ; $4f9f: $7b
    ld a, e                                       ; $4fa0: $7b
    ld d, b                                       ; $4fa1: $50
    xor a                                         ; $4fa2: $af
    rst $30                                       ; $4fa3: $f7
    call c, Call_000_144d                         ; $4fa4: $dc $4d $14
    halt                                          ; $4fa7: $76
    ld d, $1b                                     ; $4fa8: $16 $1b
    cpl                                           ; $4faa: $2f
    ld c, d                                       ; $4fab: $4a
    add hl, de                                    ; $4fac: $19
    ld c, e                                       ; $4fad: $4b
    and a                                         ; $4fae: $a7
    rst $00                                       ; $4faf: $c7
    scf                                           ; $4fb0: $37
    or h                                          ; $4fb1: $b4
    or h                                          ; $4fb2: $b4
    inc d                                         ; $4fb3: $14
    ld a, [c]                                     ; $4fb4: $f2
    call c, $e4c9                                 ; $4fb5: $dc $c9 $e4
    rst $30                                       ; $4fb8: $f7
    cp $14                                        ; $4fb9: $fe $14
    ld a, [$c659]                                 ; $4fbb: $fa $59 $c6
    ld hl, sp-$1d                                 ; $4fbe: $f8 $e3
    inc a                                         ; $4fc0: $3c
    ld l, d                                       ; $4fc1: $6a
    add h                                         ; $4fc2: $84
    jp z, $b8a4                                   ; $4fc3: $ca $a4 $b8

    inc hl                                        ; $4fc6: $23
    ld h, a                                       ; $4fc7: $67
    ld c, a                                       ; $4fc8: $4f
    sbc h                                         ; $4fc9: $9c
    rra                                           ; $4fca: $1f
    ld a, c                                       ; $4fcb: $79
    or e                                          ; $4fcc: $b3
    inc hl                                        ; $4fcd: $23
    ccf                                           ; $4fce: $3f
    ld [$1877], a                                 ; $4fcf: $ea $77 $18
    ld b, [hl]                                    ; $4fd2: $46

jr_041_4fd3:
    sbc h                                         ; $4fd3: $9c
    inc l                                         ; $4fd4: $2c
    rst $30                                       ; $4fd5: $f7

jr_041_4fd6:
    ld [hl-], a                                   ; $4fd6: $32
    db $fd                                        ; $4fd7: $fd
    ld a, [bc]                                    ; $4fd8: $0a
    sbc l                                         ; $4fd9: $9d
    ret z                                         ; $4fda: $c8

    ld b, a                                       ; $4fdb: $47
    ld e, l                                       ; $4fdc: $5d
    ld a, h                                       ; $4fdd: $7c
    jr z, jr_041_4fd6                             ; $4fde: $28 $f6

    ld b, [hl]                                    ; $4fe0: $46
    ld a, [bc]                                    ; $4fe1: $0a
    ccf                                           ; $4fe2: $3f
    ld d, e                                       ; $4fe3: $53
    ld b, h                                       ; $4fe4: $44
    pop hl                                        ; $4fe5: $e1
    and d                                         ; $4fe6: $a2
    reti                                          ; $4fe7: $d9


    ld a, c                                       ; $4fe8: $79
    ld b, a                                       ; $4fe9: $47
    ld l, $6e                                     ; $4fea: $2e $6e
    ld b, h                                       ; $4fec: $44
    ld d, c                                       ; $4fed: $51
    add a                                         ; $4fee: $87
    ld a, h                                       ; $4fef: $7c
    xor b                                         ; $4ff0: $a8
    db $e4                                        ; $4ff1: $e4
    scf                                           ; $4ff2: $37
    db $db                                        ; $4ff3: $db

jr_041_4ff4:
    call nz, $d98d                                ; $4ff4: $c4 $8d $d9
    xor c                                         ; $4ff7: $a9
    cp c                                          ; $4ff8: $b9
    jp hl                                         ; $4ff9: $e9


    ld d, a                                       ; $4ffa: $57
    sbc l                                         ; $4ffb: $9d
    ret z                                         ; $4ffc: $c8

    ld b, h                                       ; $4ffd: $44
    ld e, l                                       ; $4ffe: $5d
    ld a, h                                       ; $4fff: $7c
    jr z, @+$30                                   ; $5000: $28 $2e

    sbc d                                         ; $5002: $9a
    sbc l                                         ; $5003: $9d
    ld [hl], a                                    ; $5004: $77
    db $e4                                        ; $5005: $e4
    or d                                          ; $5006: $b2
    inc c                                         ; $5007: $0c
    dec de                                        ; $5008: $1b
    db $f4                                        ; $5009: $f4
    ld a, d                                       ; $500a: $7a
    ld b, h                                       ; $500b: $44
    cp l                                          ; $500c: $bd
    pop af                                        ; $500d: $f1
    add l                                         ; $500e: $85
    ld c, d                                       ; $500f: $4a
    sub [hl]                                      ; $5010: $96
    cpl                                           ; $5011: $2f
    push hl                                       ; $5012: $e5
    dec [hl]                                      ; $5013: $35
    db $ed                                        ; $5014: $ed
    ld h, $24                                     ; $5015: $26 $24
    xor h                                         ; $5017: $ac
    ld c, h                                       ; $5018: $4c
    xor b                                         ; $5019: $a8
    db $e4                                        ; $501a: $e4
    scf                                           ; $501b: $37
    db $db                                        ; $501c: $db
    ld h, h                                       ; $501d: $64
    cp c                                          ; $501e: $b9
    sub a                                         ; $501f: $97
    jp hl                                         ; $5020: $e9


    ei                                            ; $5021: $fb
    ld a, $05                                     ; $5022: $3e $05
    ld b, d                                       ; $5024: $42
    db $fc                                        ; $5025: $fc
    db $fc                                        ; $5026: $fc
    halt                                          ; $5027: $76
    ld d, h                                       ; $5028: $54
    and d                                         ; $5029: $a2
    cp a                                          ; $502a: $bf
    ld [hl-], a                                   ; $502b: $32
    sbc d                                         ; $502c: $9a
    ld c, h                                       ; $502d: $4c
    call nc, $a2a5                                ; $502e: $d4 $a5 $a2
    ld b, e                                       ; $5031: $43
    jp nz, $f5ca                                  ; $5032: $c2 $ca $f5

    dec hl                                        ; $5035: $2b
    ld [hl], l                                    ; $5036: $75
    ld b, [hl]                                    ; $5037: $46
    ld [c], a                                     ; $5038: $e2
    sbc a                                         ; $5039: $9f
    ld d, h                                       ; $503a: $54
    ld a, a                                       ; $503b: $7f
    ld hl, $f0af                                  ; $503c: $21 $af $f0
    ld b, h                                       ; $503f: $44
    ld d, b                                       ; $5040: $50
    ld a, [bc]                                    ; $5041: $0a
    sub l                                         ; $5042: $95
    add hl, bc                                    ; $5043: $09
    add h                                         ; $5044: $84
    db $ed                                        ; $5045: $ed
    dec c                                         ; $5046: $0d
    add hl, sp                                    ; $5047: $39
    adc c                                         ; $5048: $89
    rrca                                          ; $5049: $0f
    push bc                                       ; $504a: $c5
    sbc $9f                                       ; $504b: $de $9f
    ld h, l                                       ; $504d: $65
    adc h                                         ; $504e: $8c
    ccf                                           ; $504f: $3f
    adc $7f                                       ; $5050: $ce $7f
    or h                                          ; $5052: $b4
    ld a, h                                       ; $5053: $7c
    ld a, $ce                                     ; $5054: $3e $ce
    ld a, a                                       ; $5056: $7f
    ld c, a                                       ; $5057: $4f
    ld [hl+], a                                   ; $5058: $22
    db $e4                                        ; $5059: $e4
    cp c                                          ; $505a: $b9
    sub e                                         ; $505b: $93
    ret                                           ; $505c: $c9


    rst $28                                       ; $505d: $ef
    db $fd                                        ; $505e: $fd
    ld e, c                                       ; $505f: $59
    add [hl]                                      ; $5060: $86
    ld c, b                                       ; $5061: $48
    db $fc                                        ; $5062: $fc
    jr z, jr_041_4ff4                             ; $5063: $28 $8f

    ld [hl], a                                    ; $5065: $77
    ld a, $f4                                     ; $5066: $3e $f4
    ei                                            ; $5068: $fb
    dec d                                         ; $5069: $15
    ld [hl], l                                    ; $506a: $75
    ld b, [hl]                                    ; $506b: $46
    ld [bc], a                                    ; $506c: $02
    ld h, c                                       ; $506d: $61
    ld a, e                                       ; $506e: $7b
    ld b, e                                       ; $506f: $43
    ld c, [hl]                                    ; $5070: $4e
    ld b, d                                       ; $5071: $42
    push bc                                       ; $5072: $c5
    db $e3                                        ; $5073: $e3
    jp hl                                         ; $5074: $e9


    cp $28                                        ; $5075: $fe $28
    ld l, d                                       ; $5077: $6a
    cpl                                           ; $5078: $2f
    adc h                                         ; $5079: $8c
    ld d, b                                       ; $507a: $50
    ld sp, hl                                     ; $507b: $f9
    ld l, h                                       ; $507c: $6c
    db $10                                        ; $507d: $10
    ld l, a                                       ; $507e: $6f
    inc b                                         ; $507f: $04
    ld a, l                                       ; $5080: $7d
    ld a, [hl-]                                   ; $5081: $3a
    and h                                         ; $5082: $a4
    ld e, a                                       ; $5083: $5f
    ld l, $4c                                     ; $5084: $2e $4c
    sbc c                                         ; $5086: $99
    cpl                                           ; $5087: $2f
    jp c, $9cbe                                   ; $5088: $da $be $9c

    inc d                                         ; $508b: $14
    ld l, b                                       ; $508c: $68
    ld a, [c]                                     ; $508d: $f2
    jp nz, $3297                                  ; $508e: $c2 $97 $32

    call z, $9af6                                 ; $5091: $cc $f6 $9a
    ld [hl], $32                                  ; $5094: $36 $32
    ld d, c                                       ; $5096: $51
    cp b                                          ; $5097: $b8
    inc l                                         ; $5098: $2c
    ld d, h                                       ; $5099: $54
    ld hl, sp-$0e                                 ; $509a: $f8 $f2
    ld a, e                                       ; $509c: $7b
    ld a, a                                       ; $509d: $7f
    sbc b                                         ; $509e: $98
    ld a, [hl]                                    ; $509f: $7e
    inc a                                         ; $50a0: $3c
    cp a                                          ; $50a1: $bf
    cp h                                          ; $50a2: $bc
    ld l, $05                                     ; $50a3: $2e $05
    ld hl, $da21                                  ; $50a5: $21 $21 $da
    ret z                                         ; $50a8: $c8

    db $e4                                        ; $50a9: $e4
    add h                                         ; $50aa: $84
    ld h, c                                       ; $50ab: $61
    ld [hl], $cc                                  ; $50ac: $36 $cc
    rst $10                                       ; $50ae: $d7
    xor a                                         ; $50af: $af
    sbc l                                         ; $50b0: $9d
    ld c, b                                       ; $50b1: $48
    sub [hl]                                      ; $50b2: $96
    cpl                                           ; $50b3: $2f
    push hl                                       ; $50b4: $e5
    dec [hl]                                      ; $50b5: $35
    db $ed                                        ; $50b6: $ed
    ld h, $f6                                     ; $50b7: $26 $f6
    res 5, c                                      ; $50b9: $cb $a9
    ret                                           ; $50bb: $c9


    ld [bc], a                                    ; $50bc: $02
    set 5, l                                      ; $50bd: $cb $ed
    inc d                                         ; $50bf: $14
    cp b                                          ; $50c0: $b8
    ld de, $5935                                  ; $50c1: $11 $35 $59
    xor $65                                       ; $50c4: $ee $65
    ld d, d                                       ; $50c6: $52
    inc hl                                        ; $50c7: $23
    rst $08                                       ; $50c8: $cf
    ld l, h                                       ; $50c9: $6c
    ld c, a                                       ; $50ca: $4f
    jp nz, Jump_041_64ca                          ; $50cb: $c2 $ca $64

    ld c, a                                       ; $50ce: $4f
    adc d                                         ; $50cf: $8a
    dec sp                                        ; $50d0: $3b
    ld [hl], d                                    ; $50d1: $72
    or $44                                        ; $50d2: $f6 $44
    cp [hl]                                       ; $50d4: $be
    cp b                                          ; $50d5: $b8
    add hl, hl                                    ; $50d6: $29
    inc a                                         ; $50d7: $3c
    ld sp, hl                                     ; $50d8: $f9
    cp l                                          ; $50d9: $bd
    ccf                                           ; $50da: $3f
    sbc $13                                       ; $50db: $de $13
    ld b, h                                       ; $50dd: $44
    ld h, c                                       ; $50de: $61
    rst $00                                       ; $50df: $c7
    adc l                                         ; $50e0: $8d
    reti                                          ; $50e1: $d9


    xor c                                         ; $50e2: $a9
    cp c                                          ; $50e3: $b9
    jp hl                                         ; $50e4: $e9


    ld d, a                                       ; $50e5: $57
    ld l, l                                       ; $50e6: $6d
    cp $e5                                        ; $50e7: $fe $e5
    sbc c                                         ; $50e9: $99
    ld hl, $1bc4                                  ; $50ea: $21 $c4 $1b
    add c                                         ; $50ed: $81
    ld l, $3e                                     ; $50ee: $2e $3e
    db $f4                                        ; $50f0: $f4
    ld b, l                                       ; $50f1: $45
    ld c, l                                       ; $50f2: $4d
    sbc $ec                                       ; $50f3: $de $ec
    ret z                                         ; $50f5: $c8

    set 5, a                                      ; $50f6: $cb $ef
    db $ed                                        ; $50f8: $ed
    add c                                         ; $50f9: $81
    jp nz, $ea86                                  ; $50fa: $c2 $86 $ea

    cp b                                          ; $50fd: $b8
    sbc [hl]                                      ; $50fe: $9e
    ret z                                         ; $50ff: $c8

    sbc b                                         ; $5100: $98
    adc d                                         ; $5101: $8a
    cp d                                          ; $5102: $ba
    ld hl, sp+$50                                 ; $5103: $f8 $50
    inc d                                         ; $5105: $14
    sbc [hl]                                      ; $5106: $9e
    cp b                                          ; $5107: $b8
    ld sp, $353b                                  ; $5108: $31 $3b $35
    scf                                           ; $510b: $37
    ld a, l                                       ; $510c: $7d
    ld a, h                                       ; $510d: $7c

Jump_041_510e:
    ld de, $8919                                  ; $510e: $11 $19 $89
    ld b, [hl]                                    ; $5111: $46
    rst $18                                       ; $5112: $df
    call nc, $0d45                                ; $5113: $d4 $45 $0d
    adc c                                         ; $5116: $89
    ld d, h                                       ; $5117: $54
    ld h, b                                       ; $5118: $60
    cp [hl]                                       ; $5119: $be
    ld e, h                                       ; $511a: $5c
    sub [hl]                                      ; $511b: $96
    add e                                         ; $511c: $83
    ld a, [hl-]                                   ; $511d: $3a
    ld e, l                                       ; $511e: $5d
    db $ec                                        ; $511f: $ec
    adc d                                         ; $5120: $8a
    di                                            ; $5121: $f3
    ld e, a                                       ; $5122: $5f
    call nc, $8ec5                                ; $5123: $d4 $c5 $8e
    ld l, l                                       ; $5126: $6d
    ret z                                         ; $5127: $c8

    scf                                           ; $5128: $37
    cp [hl]                                       ; $5129: $be
    inc d                                         ; $512a: $14
    ld a, [de]                                    ; $512b: $1a
    ld a, [hl+]                                   ; $512c: $2a
    ld sp, hl                                     ; $512d: $f9
    call Call_041_5936                            ; $512e: $cd $36 $59
    xor $65                                       ; $5131: $ee $65
    ld a, [$9e15]                                 ; $5133: $fa $15 $9e
    jr nc, @-$07                                  ; $5136: $30 $f7

    ld a, c                                       ; $5138: $79
    ld h, [hl]                                    ; $5139: $66
    ld [$057f], sp                                ; $513a: $08 $7f $05
    ld h, c                                       ; $513d: $61
    ld b, h                                       ; $513e: $44
    ld [hl], b                                    ; $513f: $70
    ld e, c                                       ; $5140: $59
    and [hl]                                      ; $5141: $a6
    ldh a, [$65]                                  ; $5142: $f0 $65

Call_041_5144:
    cp c                                          ; $5144: $b9
    ld b, $52                                     ; $5145: $06 $52
    ret c                                         ; $5147: $d8

    ld e, [hl]                                    ; $5148: $5e
    ld l, $27                                     ; $5149: $2e $27
    inc a                                         ; $514b: $3c
    ld h, $93                                     ; $514c: $26 $93
    rst $18                                       ; $514e: $df
    ei                                            ; $514f: $fb
    ld d, e                                       ; $5150: $53
    inc e                                         ; $5151: $1c
    sbc l                                         ; $5152: $9d
    db $fd                                        ; $5153: $fd
    ld a, l                                       ; $5154: $7d
    jp c, $97da                                   ; $5155: $da $da $97

    jp nz, Jump_041_4154                          ; $5158: $c2 $54 $41

    ld hl, sp+$42                                 ; $515b: $f8 $42
    ld e, [hl]                                    ; $515d: $5e
    db $e4                                        ; $515e: $e4
    adc e                                         ; $515f: $8b
    dec de                                        ; $5160: $1b
    ld d, c                                       ; $5161: $51
    inc hl                                        ; $5162: $23
    sub e                                         ; $5163: $93
    pop de                                        ; $5164: $d1
    inc [hl]                                      ; $5165: $34
    jr nc, jr_041_51c7                            ; $5166: $30 $5f

    cp h                                          ; $5168: $bc
    daa                                           ; $5169: $27
    ld d, c                                       ; $516a: $51
    ld a, a                                       ; $516b: $7f
    ld h, c                                       ; $516c: $61
    ld d, h                                       ; $516d: $54
    bit 0, l                                      ; $516e: $cb $45
    ld h, c                                       ; $5170: $61
    rst $28                                       ; $5171: $ef
    adc a                                         ; $5172: $8f
    ld a, h                                       ; $5173: $7c
    ld [hl], c                                    ; $5174: $71
    rst $00                                       ; $5175: $c7
    rra                                           ; $5176: $1f
    ld [hl], l                                    ; $5177: $75
    xor c                                         ; $5178: $a9
    dec a                                         ; $5179: $3d
    ld e, d                                       ; $517a: $5a
    ld [hl], a                                    ; $517b: $77
    ld l, a                                       ; $517c: $6f
    ld e, h                                       ; $517d: $5c
    ld a, [$ed15]                                 ; $517e: $fa $15 $ed
    ld e, a                                       ; $5181: $5f
    sbc h                                         ; $5182: $9c
    rst $38                                       ; $5183: $ff
    and b                                         ; $5184: $a0

Call_041_5185:
    ld h, $6e                                     ; $5185: $26 $6e
    jp z, Jump_041_5dc7                           ; $5187: $ca $c7 $5d

    jp z, Jump_041_4e7d                           ; $518a: $ca $7d $4e

    ld [c], a                                     ; $518d: $e2
    ld b, e                                       ; $518e: $43
    or c                                          ; $518f: $b1
    db $e3                                        ; $5190: $e3
    add $ec                                       ; $5191: $c6 $ec
    call nc, Call_041_64dc                        ; $5193: $d4 $dc $64
    ccf                                           ; $5196: $3f
    jp $237e                                      ; $5197: $c3 $7e $23


    ld [$7c77], a                                 ; $519a: $ea $77 $7c
    add sp, $6f                                   ; $519d: $e8 $6f
    call nz, Call_000_36f7                        ; $519f: $c4 $f7 $36
    add h                                         ; $51a2: $84
    ld de, $f177                                  ; $51a3: $11 $77 $f1
    ld a, a                                       ; $51a6: $7f
    inc d                                         ; $51a7: $14
    sbc b                                         ; $51a8: $98
    daa                                           ; $51a9: $27
    ld [$f852], a                                 ; $51aa: $ea $52 $f8
    dec c                                         ; $51ad: $0d
    ld sp, hl                                     ; $51ae: $f9
    cp l                                          ; $51af: $bd
    ccf                                           ; $51b0: $3f
    ei                                            ; $51b1: $fb
    ld c, l                                       ; $51b2: $4d
    ei                                            ; $51b3: $fb
    ld a, [hl]                                    ; $51b4: $7e
    dec b                                         ; $51b5: $05
    ld l, l                                       ; $51b6: $6d
    rst $28                                       ; $51b7: $ef
    inc l                                         ; $51b8: $2c
    ld [hl], $5e                                  ; $51b9: $36 $5e
    sub h                                         ; $51bb: $94
    ld [hl-], a                                   ; $51bc: $32
    sub [hl]                                      ; $51bd: $96
    adc [hl]                                      ; $51be: $8e
    ld a, [hl]                                    ; $51bf: $7e
    pop hl                                        ; $51c0: $e1
    or c                                          ; $51c1: $b1
    inc d                                         ; $51c2: $14
    ld d, h                                       ; $51c3: $54
    ld a, d                                       ; $51c4: $7a
    ei                                            ; $51c5: $fb
    sub h                                         ; $51c6: $94

jr_041_51c7:
    push hl                                       ; $51c7: $e5
    ld c, c                                       ; $51c8: $49
    ld [$4f3f], sp                                ; $51c9: $08 $3f $4f
    call nc, $3467                                ; $51cc: $d4 $67 $34
    cp c                                          ; $51cf: $b9
    cp b                                          ; $51d0: $b8
    add hl, hl                                    ; $51d1: $29
    sbc a                                         ; $51d2: $9f
    ld [$f175], a                                 ; $51d3: $ea $75 $f1
    and c                                         ; $51d6: $a1
    cpl                                           ; $51d7: $2f
    ld l, d                                       ; $51d8: $6a
    ld d, d                                       ; $51d9: $52
    ld b, [hl]                                    ; $51da: $46
    ld h, $10                                     ; $51db: $26 $10
    or [hl]                                       ; $51dd: $b6
    rst $20                                       ; $51de: $e7
    adc c                                         ; $51df: $89
    ld h, b                                       ; $51e0: $60
    and a                                         ; $51e1: $a7
    ret nc                                        ; $51e2: $d0

    add hl, bc                                    ; $51e3: $09
    push af                                       ; $51e4: $f5
    ld a, d                                       ; $51e5: $7a
    rst $08                                       ; $51e6: $cf
    db $dd                                        ; $51e7: $dd
    add sp, $52                                   ; $51e8: $e8 $52
    ld b, [hl]                                    ; $51ea: $46
    ld h, $85                                     ; $51eb: $26 $85
    sbc a                                         ; $51ed: $9f
    daa                                           ; $51ee: $27
    scf                                           ; $51ef: $37
    ld sp, hl                                     ; $51f0: $f9
    inc l                                         ; $51f1: $2c
    ld b, $51                                     ; $51f2: $06 $51
    or b                                          ; $51f4: $b0
    ld [$2542], a                                 ; $51f5: $ea $42 $25
    ld a, d                                       ; $51f8: $7a
    db $ec                                        ; $51f9: $ec
    dec a                                         ; $51fa: $3d
    add hl, hl                                    ; $51fb: $29
    res 2, e                                      ; $51fc: $cb $93
    db $10                                        ; $51fe: $10
    sbc [hl]                                      ; $51ff: $9e
    ld a, [hl]                                    ; $5200: $7e
    dec b                                         ; $5201: $05
    cp [hl]                                       ; $5202: $be
    cp b                                          ; $5203: $b8
    ld d, h                                       ; $5204: $54
    ld a, a                                       ; $5205: $7f
    add hl, hl                                    ; $5206: $29
    db $fc                                        ; $5207: $fc
    inc a                                         ; $5208: $3c
    ld de, $fdec                                  ; $5209: $11 $ec $fd
    add hl, hl                                    ; $520c: $29
    cp a                                          ; $520d: $bf
    ccf                                           ; $520e: $3f
    ld a, [bc]                                    ; $520f: $0a
    rla                                           ; $5210: $17
    or [hl]                                       ; $5211: $b6
    pop af                                        ; $5212: $f1
    ld [c], a                                     ; $5213: $e2
    ld l, d                                       ; $5214: $6a
    and l                                         ; $5215: $a5
    xor l                                         ; $5216: $ad
    and e                                         ; $5217: $a3
    ld b, $c3                                     ; $5218: $06 $c3
    push bc                                       ; $521a: $c5
    ld sp, hl                                     ; $521b: $f9
    and c                                         ; $521c: $a1
    adc e                                         ; $521d: $8b
    rrca                                          ; $521e: $0f
    ld a, l                                       ; $521f: $7d
    ld d, c                                       ; $5220: $51
    inc de                                        ; $5221: $13
    ld a, [hl+]                                   ; $5222: $2a
    inc de                                        ; $5223: $13
    add hl, de                                    ; $5224: $19
    adc c                                         ; $5225: $89
    ld b, [hl]                                    ; $5226: $46
    rst $18                                       ; $5227: $df
    call nc, $b2eb                                ; $5228: $d4 $eb $b2
    sub c                                         ; $522b: $91
    or a                                          ; $522c: $b7
    ld [$1a99], a                                 ; $522d: $ea $99 $1a
    ld d, d                                       ; $5230: $52
    ld l, $15                                     ; $5231: $2e $15
    dec e                                         ; $5233: $1d
    ld [hl], d                                    ; $5234: $72
    ld h, h                                       ; $5235: $64
    ld a, [$ad15]                                 ; $5236: $fa $15 $ad
    xor $fd                                       ; $5239: $ee $fd
    pop af                                        ; $523b: $f1
    sbc [hl]                                      ; $523c: $9e
    jr nz, @-$14                                  ; $523d: $20 $ea

    ld [c], a                                     ; $523f: $e2
    ld b, e                                       ; $5240: $43
    ld d, c                                       ; $5241: $51
    ld a, b                                       ; $5242: $78
    ld [c], a                                     ; $5243: $e2
    add $ec                                       ; $5244: $c6 $ec
    call nc, $c4dc                                ; $5246: $d4 $dc $c4
    ld a, c                                       ; $5249: $79
    call nc, $9508                                ; $524a: $d4 $08 $95
    inc l                                         ; $524d: $2c
    ld e, a                                       ; $524e: $5f
    jp z, $da6b                                   ; $524f: $ca $6b $da

    ld c, l                                       ; $5252: $4d
    db $ec                                        ; $5253: $ec
    sub a                                         ; $5254: $97
    ld d, e                                       ; $5255: $53
    sub e                                         ; $5256: $93
    dec b                                         ; $5257: $05
    sub [hl]                                      ; $5258: $96
    db $db                                        ; $5259: $db
    add hl, hl                                    ; $525a: $29
    ld h, b                                       ; $525b: $60
    cp [hl]                                       ; $525c: $be
    ld l, d                                       ; $525d: $6a
    or d                                          ; $525e: $b2
    call c, $f4cb                                 ; $525f: $dc $cb $f4
    dec hl                                        ; $5262: $2b
    db $ed                                        ; $5263: $ed
    ld a, l                                       ; $5264: $7d
    ret z                                         ; $5265: $c8

    ei                                            ; $5266: $fb
    inc l                                         ; $5267: $2c
    rst $10                                       ; $5268: $d7
    ld b, b                                       ; $5269: $40
    db $ec                                        ; $526a: $ec
    sub a                                         ; $526b: $97
    ld d, e                                       ; $526c: $53
    sbc a                                         ; $526d: $9f
    dec b                                         ; $526e: $05
    sub [hl]                                      ; $526f: $96
    scf                                           ; $5270: $37
    dec sp                                        ; $5271: $3b
    ld a, [c]                                     ; $5272: $f2
    dec c                                         ; $5273: $0d

Jump_041_5274:
    ld sp, hl                                     ; $5274: $f9
    or h                                          ; $5275: $b4
    ld h, l                                       ; $5276: $65
    rst $20                                       ; $5277: $e7
    dec e                                         ; $5278: $1d
    ld d, c                                       ; $5279: $51
    ld h, e                                       ; $527a: $63
    inc de                                        ; $527b: $13
    push af                                       ; $527c: $f5
    pop af                                        ; $527d: $f1
    and c                                         ; $527e: $a1
    sub a                                         ; $527f: $97
    ld a, [de]                                    ; $5280: $1a
    ld a, c                                       ; $5281: $79

Jump_041_5282:
    ld h, [hl]                                    ; $5282: $66
    ld a, e                                       ; $5283: $7b
    ld [de], a                                    ; $5284: $12
    ld d, [hl]                                    ; $5285: $56
    ld h, $fb                                     ; $5286: $26 $fb
    or e                                          ; $5288: $b3
    adc h                                         ; $5289: $8c
    pop af                                        ; $528a: $f1
    and a                                         ; $528b: $a7
    ld a, d                                       ; $528c: $7a
    db $ed                                        ; $528d: $ed
    call c, $f7e7                                 ; $528e: $dc $e7 $f7
    cp $78                                        ; $5291: $fe $78
    ld c, a                                       ; $5293: $4f
    db $10                                        ; $5294: $10
    add l                                         ; $5295: $85
    dec e                                         ; $5296: $1d
    scf                                           ; $5297: $37
    ld h, [hl]                                    ; $5298: $66
    and a                                         ; $5299: $a7
    and $a6                                       ; $529a: $e6 $a6
    ld e, a                                       ; $529c: $5f
    ld bc, $27b5                                  ; $529d: $01 $b5 $27
    dec b                                         ; $52a0: $05
    jp nz, $13c7                                  ; $52a1: $c2 $c7 $13

    ld [hl], l                                    ; $52a4: $75
    add [hl]                                      ; $52a5: $86
    jr c, jr_041_52e7                             ; $52a6: $38 $3f

    add d                                         ; $52a8: $82
    ld [hl], d                                    ; $52a9: $72
    add l                                         ; $52aa: $85
    ld de, $9f2a                                  ; $52ab: $11 $2a $9f
    ld [c], a                                     ; $52ae: $e2
    add $dc                                       ; $52af: $c6 $dc
    dec a                                         ; $52b1: $3d
    rst $08                                       ; $52b2: $cf
    ld a, l                                       ; $52b3: $7d
    ld d, $58                                     ; $52b4: $16 $58
    ld l, [hl]                                    ; $52b6: $6e
    and a                                         ; $52b7: $a7
    and b                                         ; $52b8: $a0
    ldh a, [$64]                                  ; $52b9: $f0 $64
    cp c                                          ; $52bb: $b9
    sub a                                         ; $52bc: $97
    ret                                           ; $52bd: $c9


    rst $28                                       ; $52be: $ef
    db $ed                                        ; $52bf: $ed
    add c                                         ; $52c0: $81
    jp nz, $ea86                                  ; $52c1: $c2 $86 $ea

    cp b                                          ; $52c4: $b8
    sbc [hl]                                      ; $52c5: $9e
    and b                                         ; $52c6: $a0
    ld [hl], b                                    ; $52c7: $70
    call nc, $87c5                                ; $52c8: $d4 $c5 $87
    and d                                         ; $52cb: $a2
    ldh a, [$c4]                                  ; $52cc: $f0 $c4
    adc l                                         ; $52ce: $8d
    reti                                          ; $52cf: $d9


    xor c                                         ; $52d0: $a9
    cp c                                          ; $52d1: $b9
    jp hl                                         ; $52d2: $e9


    ld d, a                                       ; $52d3: $57
    db $ed                                        ; $52d4: $ed
    ld c, l                                       ; $52d5: $4d
    jp z, $e702                                   ; $52d6: $ca $02 $e7

    db $fc                                        ; $52d9: $fc
    scf                                           ; $52da: $37
    ld a, c                                       ; $52db: $79
    rst $20                                       ; $52dc: $e7
    ld e, [hl]                                    ; $52dd: $5e
    ld a, b                                       ; $52de: $78
    ld a, [c]                                     ; $52df: $f2
    ld a, e                                       ; $52e0: $7b
    ld a, a                                       ; $52e1: $7f
    sub [hl]                                      ; $52e2: $96
    ld sp, $28fe                                  ; $52e3: $31 $fe $28
    db $ec                                        ; $52e6: $ec

jr_041_52e7:
    db $ed                                        ; $52e7: $ed

Jump_041_52e8:
    ld [hl], c                                    ; $52e8: $71
    ld [c], a                                     ; $52e9: $e2
    add l                                         ; $52ea: $85

Call_041_52eb:
    ld d, l                                       ; $52eb: $55
    or b                                          ; $52ec: $b0
    ei                                            ; $52ed: $fb
    xor b                                         ; $52ee: $a8
    ld hl, $7a0d                                  ; $52ef: $21 $0d $7a
    dec a                                         ; $52f2: $3d
    ld [c], a                                     ; $52f3: $e2
    ld b, [hl]                                    ; $52f4: $46
    inc d                                         ; $52f5: $14
    dec [hl]                                      ; $52f6: $35
    ld b, e                                       ; $52f7: $43
    call nc, $87c7                                ; $52f8: $d4 $c7 $87
    cp $76                                        ; $52fb: $fe $76
    ld a, [hl]                                    ; $52fd: $7e
    ld h, h                                       ; $52fe: $64
    ld a, c                                       ; $52ff: $79
    ld h, e                                       ; $5300: $63
    db $f4                                        ; $5301: $f4
    dec hl                                        ; $5302: $2b
    db $ed                                        ; $5303: $ed
    rst $18                                       ; $5304: $df
    ld h, h                                       ; $5305: $64
    ld a, c                                       ; $5306: $79
    ld h, l                                       ; $5307: $65
    ld c, b                                       ; $5308: $48
    ld [hl], l                                    ; $5309: $75
    pop af                                        ; $530a: $f1
    ld a, a                                       ; $530b: $7f
    sub [hl]                                      ; $530c: $96
    or a                                          ; $530d: $b7
    db $fd                                        ; $530e: $fd
    inc a                                         ; $530f: $3c
    ld d, c                                       ; $5310: $51
    rla                                           ; $5311: $17
    ld a, [hl+]                                   ; $5312: $2a
    ld e, c                                       ; $5313: $59
    cp [hl]                                       ; $5314: $be
    sub h                                         ; $5315: $94
    rst $10                                       ; $5316: $d7
    or h                                          ; $5317: $b4
    sbc e                                         ; $5318: $9b
    inc d                                         ; $5319: $14
    ld l, b                                       ; $531a: $68
    ld b, $9e                                     ; $531b: $06 $9e
    xor b                                         ; $531d: $a8
    inc bc                                        ; $531e: $03
    db $db                                        ; $531f: $db
    ld h, h                                       ; $5320: $64
    ld c, a                                       ; $5321: $4f
    jp z, $e702                                   ; $5322: $ca $02 $e7

    db $fc                                        ; $5325: $fc
    scf                                           ; $5326: $37
    ld sp, hl                                     ; $5327: $f9
    cp l                                          ; $5328: $bd
    ccf                                           ; $5329: $3f
    sbc $13                                       ; $532a: $de $13
    ld b, h                                       ; $532c: $44
    ld e, l                                       ; $532d: $5d
    ld a, h                                       ; $532e: $7c
    jr z, jr_041_533b                             ; $532f: $28 $0a

    ld c, a                                       ; $5331: $4f
    call c, $9d98                                 ; $5332: $dc $98 $9d
    sbc d                                         ; $5335: $9a
    sbc e                                         ; $5336: $9b
    ld a, [hl]                                    ; $5337: $7e
    dec b                                         ; $5338: $05
    ld l, c                                       ; $5339: $69
    ld a, e                                       ; $533a: $7b

jr_041_533b:
    ld h, a                                       ; $533b: $67
    or c                                          ; $533c: $b1
    pop af                                        ; $533d: $f1
    and d                                         ; $533e: $a2
    sub h                                         ; $533f: $94
    or c                                          ; $5340: $b1
    ld [hl], h                                    ; $5341: $74
    call nc, Call_000_37a0                        ; $5342: $d4 $a0 $37
    daa                                           ; $5345: $27
    dec b                                         ; $5346: $05
    sbc d                                         ; $5347: $9a
    ld a, h                                       ; $5348: $7c
    ld a, h                                       ; $5349: $7c
    ld a, c                                       ; $534a: $79
    db $ec                                        ; $534b: $ec
    ld a, $0a                                     ; $534c: $3e $0a
    ld a, e                                       ; $534e: $7b
    ld a, a                                       ; $534f: $7f
    jp c, $ed7f                                   ; $5350: $da $7f $ed

    ld a, $85                                     ; $5353: $3e $85

Call_041_5355:
    add $87                                       ; $5355: $c6 $87
    and d                                         ; $5357: $a2
    ldh a, [$64]                                  ; $5358: $f0 $64
    cp c                                          ; $535a: $b9
    sub a                                         ; $535b: $97
    jp hl                                         ; $535c: $e9


    ei                                            ; $535d: $fb
    ld a, $5f                                     ; $535e: $3e $5f
    ld d, l                                       ; $5360: $55
    jr z, jr_041_53c8                             ; $5361: $28 $65

    ld [c], a                                     ; $5363: $e2
    db $fc                                        ; $5364: $fc
    adc b                                         ; $5365: $88
    rrca                                          ; $5366: $0f
    push bc                                       ; $5367: $c5
    sbc $13                                       ; $5368: $de $13
    rst $20                                       ; $536a: $e7
    ld b, a                                       ; $536b: $47
    cp h                                          ; $536c: $bc
    sbc a                                         ; $536d: $9f
    ld [hl], d                                    ; $536e: $72
    ld e, c                                       ; $536f: $59
    and [hl]                                      ; $5370: $a6
    sub h                                         ; $5371: $94
    adc a                                         ; $5372: $8f
    add d                                         ; $5373: $82
    rst $30                                       ; $5374: $f7
    db $e4                                        ; $5375: $e4
    inc c                                         ; $5376: $0c
    pop af                                        ; $5377: $f1
    jr c, jr_041_53a3                             ; $5378: $38 $29

    ret nc                                        ; $537a: $d0

    db $e4                                        ; $537b: $e4
    dec c                                         ; $537c: $0d
    ld e, $fd                                     ; $537d: $1e $fd
    ld a, [bc]                                    ; $537f: $0a
    sbc [hl]                                      ; $5380: $9e
    ld b, $35                                     ; $5381: $06 $35
    ld [hl], c                                    ; $5383: $71
    ld a, [hl]                                    ; $5384: $7e
    db $e4                                        ; $5385: $e4
    halt                                          ; $5386: $76
    ld d, $1b                                     ; $5387: $16 $1b
    cpl                                           ; $5389: $2f
    ld c, d                                       ; $538a: $4a
    add hl, de                                    ; $538b: $19
    ld c, e                                       ; $538c: $4b
    ld b, a                                       ; $538d: $47
    dec c                                         ; $538e: $0d
    ld a, d                                       ; $538f: $7a
    di                                            ; $5390: $f3
    inc h                                         ; $5391: $24
    ld c, d                                       ; $5392: $4a
    ld b, c                                       ; $5393: $41
    xor b                                         ; $5394: $a8
    add h                                         ; $5395: $84
    ld a, d                                       ; $5396: $7a
    cp l                                          ; $5397: $bd
    rst $20                                       ; $5398: $e7
    ld l, [hl]                                    ; $5399: $6e
    ld d, d                                       ; $539a: $52
    ld l, b                                       ; $539b: $68
    ld a, h                                       ; $539c: $7c
    jr z, jr_041_53a9                             ; $539d: $28 $0a

    ld c, a                                       ; $539f: $4f
    sub [hl]                                      ; $53a0: $96
    ld a, e                                       ; $53a1: $7b
    add hl, de                                    ; $53a2: $19

jr_041_53a3:
    ld e, l                                       ; $53a3: $5d
    ld d, $bb                                     ; $53a4: $16 $bb
    ld [$2ea3], a                                 ; $53a6: $ea $a3 $2e

jr_041_53a9:
    push de                                       ; $53a9: $d5
    ret c                                         ; $53aa: $d8

    add hl, de                                    ; $53ab: $19
    add d                                         ; $53ac: $82
    xor b                                         ; $53ad: $a8
    set 1, c                                      ; $53ae: $cb $c9
    ld de, $0def                                  ; $53b0: $11 $ef $0d
    ld sp, hl                                     ; $53b3: $f9
    or b                                          ; $53b4: $b0
    ld a, l                                       ; $53b5: $7d
    ld [hl], c                                    ; $53b6: $71
    ld h, e                                       ; $53b7: $63
    ld b, $43                                     ; $53b8: $06 $43
    ld l, [hl]                                    ; $53ba: $6e
    and a                                         ; $53bb: $a7
    ret nc                                        ; $53bc: $d0

    add hl, bc                                    ; $53bd: $09
    and e                                         ; $53be: $a3
    ld e, d                                       ; $53bf: $5a
    ld h, $fb                                     ; $53c0: $26 $fb
    db $f4                                        ; $53c2: $f4
    or b                                          ; $53c3: $b0
    adc c                                         ; $53c4: $89
    ld h, b                                       ; $53c5: $60

jr_041_53c6:
    rst $28                                       ; $53c6: $ef
    ld c, a                                       ; $53c7: $4f

jr_041_53c8:
    ld sp, hl                                     ; $53c8: $f9
    db $fd                                        ; $53c9: $fd
    ld d, c                                       ; $53ca: $51
    rla                                           ; $53cb: $17
    dec sp                                        ; $53cc: $3b
    or [hl]                                       ; $53cd: $b6
    ld hl, $0a27                                  ; $53ce: $21 $27 $0a
    jp c, $9cbe                                   ; $53d1: $da $be $9c

    inc d                                         ; $53d4: $14
    ld l, b                                       ; $53d5: $68
    ld a, [c]                                     ; $53d6: $f2
    jp nz, $afd7                                  ; $53d7: $c2 $d7 $af

    db $ed                                        ; $53da: $ed
    ld a, c                                       ; $53db: $79
    sbc h                                         ; $53dc: $9c
    ld a, b                                       ; $53dd: $78
    ld h, c                                       ; $53de: $61
    dec d                                         ; $53df: $15
    db $ec                                        ; $53e0: $ec
    ld a, $35                                     ; $53e1: $3e $35
    ld d, d                                       ; $53e3: $52
    ld l, b                                       ; $53e4: $68
    ld a, h                                       ; $53e5: $7c
    jr z, @+$0c                                   ; $53e6: $28 $0a

    ld c, a                                       ; $53e8: $4f
    sub [hl]                                      ; $53e9: $96
    ld a, e                                       ; $53ea: $7b
    sbc c                                         ; $53eb: $99
    ld a, $be                                     ; $53ec: $3e $be
    ld l, [hl]                                    ; $53ee: $6e
    xor d                                         ; $53ef: $aa
    ld a, [bc]                                    ; $53f0: $0a
    call z, $e713                                 ; $53f1: $cc $13 $e7
    ld b, a                                       ; $53f4: $47
    jp c, $f57f                                   ; $53f5: $da $7f $f5

    push de                                       ; $53f8: $d5
    rst $00                                       ; $53f9: $c7
    db $d3                                        ; $53fa: $d3
    ld a, a                                       ; $53fb: $7f
    ld c, e                                       ; $53fc: $4b
    add hl, bc                                    ; $53fd: $09
    ld a, c                                       ; $53fe: $79
    pop hl                                        ; $53ff: $e1
    add e                                         ; $5400: $83
    jr nz, jr_041_5457                            ; $5401: $20 $54

    ld a, $9a                                     ; $5403: $3e $9a
    cp l                                          ; $5405: $bd
    call nz, $be87                                ; $5406: $c4 $87 $be
    ldh a, [$71]                                  ; $5409: $f0 $71
    dec a                                         ; $540b: $3d
    ld d, c                                       ; $540c: $51
    sub a                                         ; $540d: $97
    ld h, l                                       ; $540e: $65
    adc b                                         ; $540f: $88
    scf                                           ; $5410: $37
    ld [hl], d                                    ; $5411: $72
    or c                                          ; $5412: $b1
    db $d3                                        ; $5413: $d3
    jr nz, jr_041_53c6                            ; $5414: $20 $b0

    ld h, a                                       ; $5416: $67
    dec sp                                        ; $5417: $3b
    ld [hl], a                                    ; $5418: $77
    db $fd                                        ; $5419: $fd
    ld a, [bc]                                    ; $541a: $0a
    ld l, c                                       ; $541b: $69
    ld e, e                                       ; $541c: $5b
    ld [c], a                                     ; $541d: $e2
    ld b, e                                       ; $541e: $43
    ld d, c                                       ; $541f: $51
    ld a, b                                       ; $5420: $78
    ld [c], a                                     ; $5421: $e2
    add $ec                                       ; $5422: $c6 $ec
    call nc, $c4dc                                ; $5424: $d4 $dc $c4
    ld a, c                                       ; $5427: $79
    call nc, $9508                                ; $5428: $d4 $08 $95
    rst $08                                       ; $542b: $cf
    ld [hl-], a                                   ; $542c: $32
    add $9f                                       ; $542d: $c6 $9f
    ld [$73b5], a                                 ; $542f: $ea $b5 $73
    rra                                           ; $5432: $1f
    rst $20                                       ; $5433: $e7
    ld b, a                                       ; $5434: $47
    call c, $a288                                 ; $5435: $dc $88 $a2
    ld c, $f1                                     ; $5438: $0e $f1
    sbc [hl]                                      ; $543a: $9e
    ld b, h                                       ; $543b: $44
    cp e                                          ; $543c: $bb

jr_041_543d:
    ld b, $22                                     ; $543d: $06 $22
    cp b                                          ; $543f: $b8
    sub h                                         ; $5440: $94
    ld h, c                                       ; $5441: $61
    add [hl]                                      ; $5442: $86
    reti                                          ; $5443: $d9


    dec bc                                        ; $5444: $0b
    xor [hl]                                      ; $5445: $ae
    ld c, a                                       ; $5446: $4f
    res 5, c                                      ; $5447: $cb $a9
    ld h, [hl]                                    ; $5449: $66
    di                                            ; $544a: $f3
    call nz, $354d                                ; $544b: $c4 $4d $35
    ld [$2975], a                                 ; $544e: $ea $75 $29
    ld c, b                                       ; $5451: $48
    pop bc                                        ; $5452: $c1
    push hl                                       ; $5453: $e5
    inc h                                         ; $5454: $24
    halt                                          ; $5455: $76
    db $fc                                        ; $5456: $fc

jr_041_5457:
    and [hl]                                      ; $5457: $a6
    ld h, $0b                                     ; $5458: $26 $0b
    inc l                                         ; $545a: $2c
    ei                                            ; $545b: $fb
    or e                                          ; $545c: $b3
    ld b, c                                       ; $545d: $41
    cp h                                          ; $545e: $bc
    ld de, $6144                                  ; $545f: $11 $44 $61
    ld h, a                                       ; $5462: $67
    or c                                          ; $5463: $b1
    pop af                                        ; $5464: $f1
    and d                                         ; $5465: $a2
    sub h                                         ; $5466: $94
    or c                                          ; $5467: $b1
    call nc, $1e3d                                ; $5468: $d4 $3d $1e
    jp hl                                         ; $546b: $e9


    ld d, a                                       ; $546c: $57
    dec e                                         ; $546d: $1d
    ld d, e                                       ; $546e: $53
    ld h, [hl]                                    ; $546f: $66
    ld h, h                                       ; $5470: $64
    inc hl                                        ; $5471: $23
    ld c, a                                       ; $5472: $4f
    scf                                           ; $5473: $37
    and d                                         ; $5474: $a2
    or b                                          ; $5475: $b0
    scf                                           ; $5476: $37
    ld d, d                                       ; $5477: $52
    dec a                                         ; $5478: $3d
    jp Jump_041_510e                              ; $5479: $c3 $0e $51


    cp b                                          ; $547c: $b8
    or h                                          ; $547d: $b4
    or $7a                                        ; $547e: $f6 $7a
    db $fd                                        ; $5480: $fd
    set 5, c                                      ; $5481: $cb $e9
    ld [c], a                                     ; $5483: $e2
    and [hl]                                      ; $5484: $a6
    ld e, d                                       ; $5485: $5a
    inc c                                         ; $5486: $0c
    dec b                                         ; $5487: $05
    ld l, c                                       ; $5488: $69
    push de                                       ; $5489: $d5
    jr @+$43                                      ; $548a: $18 $41

    jp c, $e5a7                                   ; $548c: $da $a7 $e5

    call c, Call_041_52eb                         ; $548f: $dc $eb $52
    ld l, $6c                                     ; $5492: $2e $6c
    ld b, e                                       ; $5494: $43
    cp [hl]                                       ; $5495: $be
    ld c, h                                       ; $5496: $4c
    ld a, [bc]                                    ; $5497: $0a
    adc l                                         ; $5498: $8d
    rrca                                          ; $5499: $0f
    ld b, l                                       ; $549a: $45
    pop hl                                        ; $549b: $e1
    ret                                           ; $549c: $c9


    ld [hl], d                                    ; $549d: $72
    cpl                                           ; $549e: $2f
    db $d3                                        ; $549f: $d3
    xor a                                         ; $54a0: $af
    ld l, l                                       ; $54a1: $6d
    ld c, e                                       ; $54a2: $4b
    ld a, h                                       ; $54a3: $7c
    jr z, jr_041_54b0                             ; $54a4: $28 $0a

    ld c, a                                       ; $54a6: $4f
    call c, $9d98                                 ; $54a7: $dc $98 $9d
    sbc d                                         ; $54aa: $9a
    sbc e                                         ; $54ab: $9b
    jr c, jr_041_543d                             ; $54ac: $38 $8f

    ld a, [de]                                    ; $54ae: $1a
    and c                                         ; $54af: $a1

jr_041_54b0:
    ld a, [c]                                     ; $54b0: $f2
    ld e, c                                       ; $54b1: $59
    add $f8                                       ; $54b2: $c6 $f8
    ld d, e                                       ; $54b4: $53
    cp l                                          ; $54b5: $bd
    halt                                          ; $54b6: $76
    xor $e3                                       ; $54b7: $ee $e3
    db $fc                                        ; $54b9: $fc
    ld [$dc5f], sp                                ; $54ba: $08 $5f $dc
    adc b                                         ; $54bd: $88
    and d                                         ; $54be: $a2
    ld h, [hl]                                    ; $54bf: $66
    push af                                       ; $54c0: $f5
    add h                                         ; $54c1: $84
    inc a                                         ; $54c2: $3c
    ld [hl], a                                    ; $54c3: $77
    ld [hl-], a                                   ; $54c4: $32
    ld sp, hl                                     ; $54c5: $f9
    cp l                                          ; $54c6: $bd
    dec a                                         ; $54c7: $3d
    sbc [hl]                                      ; $54c8: $9e
    xor $8f                                       ; $54c9: $ee $8f
    jp nz, Jump_041_62ce                          ; $54cb: $c2 $ce $62

    db $e3                                        ; $54ce: $e3
    ld b, l                                       ; $54cf: $45
    add hl, hl                                    ; $54d0: $29
    ld h, e                                       ; $54d1: $63
    jp hl                                         ; $54d2: $e9


    db $f4                                        ; $54d3: $f4
    ld hl, sp-$7a                                 ; $54d4: $f8 $86
    sub [hl]                                      ; $54d6: $96
    ld a, [hl]                                    ; $54d7: $7e
    dec b                                         ; $54d8: $05
    ld l, l                                       ; $54d9: $6d
    cp $e5                                        ; $54da: $fe $e5
    sbc c                                         ; $54dc: $99
    ld hl, $1bc4                                  ; $54dd: $21 $c4 $1b
    ld b, c                                       ; $54e0: $41
    ld a, h                                       ; $54e1: $7c
    add sp, -$75                                  ; $54e2: $e8 $8b
    sbc d                                         ; $54e4: $9a
    ld b, b                                       ; $54e5: $40
    ret c                                         ; $54e6: $d8

    ld l, $27                                     ; $54e7: $2e $27
    and c                                         ; $54e9: $a1
    ld [c], a                                     ; $54ea: $e2
    pop af                                        ; $54eb: $f1
    ld [hl], h                                    ; $54ec: $74
    ld a, a                                       ; $54ed: $7f
    ld c, [hl]                                    ; $54ee: $4e
    and d                                         ; $54ef: $a2
    xor [hl]                                      ; $54f0: $ae
    ret nc                                        ; $54f1: $d0

    ld [hl-], a                                   ; $54f2: $32
    ld a, l                                       ; $54f3: $7d
    rst $18                                       ; $54f4: $df
    ld h, a                                       ; $54f5: $67
    add hl, de                                    ; $54f6: $19
    ld [hl], $14                                  ; $54f7: $36 $14
    cp [hl]                                       ; $54f9: $be
    inc a                                         ; $54fa: $3c

Jump_041_54fb:
    add hl, bc                                    ; $54fb: $09
    ld b, e                                       ; $54fc: $43
    ld a, h                                       ; $54fd: $7c
    add sp, $6f                                   ; $54fe: $e8 $6f
    rst $20                                       ; $5500: $e7
    ld b, a                                       ; $5501: $47
    db $f4                                        ; $5502: $f4
    ld b, [hl]                                    ; $5503: $46
    sbc c                                         ; $5504: $99
    ccf                                           ; $5505: $3f
    ld h, l                                       ; $5506: $65
    ld l, h                                       ; $5507: $6c
    ld sp, $ef94                                  ; $5508: $31 $94 $ef
    ld d, a                                       ; $550b: $57
    ld l, l                                       ; $550c: $6d
    rst $28                                       ; $550d: $ef
    ld a, b                                       ; $550e: $78
    ld l, [hl]                                    ; $550f: $6e
    xor d                                         ; $5510: $aa
    adc a                                         ; $5511: $8f
    jp nz, Jump_041_73c5                          ; $5512: $c2 $c5 $73

    or $06                                        ; $5515: $f6 $06
    pop af                                        ; $5517: $f1
    ld b, [hl]                                    ; $5518: $46
    xor [hl]                                      ; $5519: $ae
    ldh a, [rLYC]                                 ; $551a: $f0 $45
    ld e, l                                       ; $551c: $5d
    ld a, h                                       ; $551d: $7c
    reti                                          ; $551e: $d9


    and b                                         ; $551f: $a0
    ld sp, hl                                     ; $5520: $f9
    ld de, $7aa4                                  ; $5521: $11 $a4 $7a
    call $f17f                                    ; $5524: $cd $7f $f1
    ld a, [hl]                                    ; $5527: $7e
    dec [hl]                                      ; $5528: $35
    push hl                                       ; $5529: $e5

jr_041_552a:
    ld d, d                                       ; $552a: $52
    inc hl                                        ; $552b: $23
    ld d, h                                       ; $552c: $54
    and d                                         ; $552d: $a2
    and a                                         ; $552e: $a7
    inc hl                                        ; $552f: $23
    ld e, c                                       ; $5530: $59
    and [hl]                                      ; $5531: $a6
    ldh a, [$64]                                  ; $5532: $f0 $64
    add c                                         ; $5534: $81
    and l                                         ; $5535: $a5
    inc l                                         ; $5536: $2c

jr_041_5537:
    or b                                          ; $5537: $b0
    xor e                                         ; $5538: $ab
    jr nz, jr_041_5537                            ; $5539: $20 $fc

    add [hl]                                      ; $553b: $86
    jr z, jr_041_552a                             ; $553c: $28 $ec

    adc l                                         ; $553e: $8d
    cp b                                          ; $553f: $b8
    xor c                                         ; $5540: $a9
    db $f4                                        ; $5541: $f4
    daa                                           ; $5542: $27
    ld c, a                                       ; $5543: $4f
    cp h                                          ; $5544: $bc
    sub c                                         ; $5545: $91
    adc e                                         ; $5546: $8b
    cp d                                          ; $5547: $ba
    ld a, b                                       ; $5548: $78
    ld c, a                                       ; $5549: $4f
    and e                                         ; $554a: $a3
    halt                                          ; $554b: $76
    add d                                         ; $554c: $82
    ld a, [hl]                                    ; $554d: $7e
    dec b                                         ; $554e: $05
    sbc l                                         ; $554f: $9d
    sub h                                         ; $5550: $94
    rst $08                                       ; $5551: $cf
    cp $2c                                        ; $5552: $fe $2c
    ld h, e                                       ; $5554: $63
    db $fc                                        ; $5555: $fc
    xor c                                         ; $5556: $a9
    ld e, [hl]                                    ; $5557: $5e
    dec sp                                        ; $5558: $3b
    rst $30                                       ; $5559: $f7
    add hl, hl                                    ; $555a: $29
    ld [hl], h                                    ; $555b: $74
    rst $28                                       ; $555c: $ef
    rst $08                                       ; $555d: $cf
    ld a, [c]                                     ; $555e: $f2
    ld b, $46                                     ; $555f: $06 $46
    ld d, b                                       ; $5561: $50
    jr c, jr_041_556f                             ; $5562: $38 $0b

    inc l                                         ; $5564: $2c
    or $9a                                        ; $5565: $f6 $9a
    halt                                          ; $5567: $76
    ld d, h                                       ; $5568: $54
    inc [hl]                                      ; $5569: $34
    jr jr_041_55de                                ; $556a: $18 $72

    dec sp                                        ; $556c: $3b
    ld a, $f4                                     ; $556d: $3e $f4

jr_041_556f:
    adc l                                         ; $556f: $8d
    daa                                           ; $5570: $27
    res 7, l                                      ; $5571: $cb $bd
    ld c, h                                       ; $5573: $4c
    sbc a                                         ; $5574: $9f
    adc [hl]                                      ; $5575: $8e
    cpl                                           ; $5576: $2f
    ld l, [hl]                                    ; $5577: $6e
    ld b, h                                       ; $5578: $44
    ld d, c                                       ; $5579: $51
    or e                                          ; $557a: $b3
    ld a, d                                       ; $557b: $7a
    ld h, d                                       ; $557c: $62
    cp a                                          ; $557d: $bf
    sbc h                                         ; $557e: $9c
    ld a, [$c20a]                                 ; $557f: $fa $0a $c2
    ld [$ee79], sp                                ; $5582: $08 $79 $ee
    ld h, h                                       ; $5585: $64
    ld a, [c]                                     ; $5586: $f2
    ld a, e                                       ; $5587: $7b
    ld a, e                                       ; $5588: $7b
    sbc h                                         ; $5589: $9c
    ld a, b                                       ; $558a: $78
    ld h, c                                       ; $558b: $61
    dec d                                         ; $558c: $15
    db $ec                                        ; $558d: $ec
    ld e, [hl]                                    ; $558e: $5e
    sub a                                         ; $558f: $97
    sub e                                         ; $5590: $93
    cp b                                          ; $5591: $b8
    cpl                                           ; $5592: $2f
    inc de                                        ; $5593: $13
    dec [hl]                                      ; $5594: $35
    inc h                                         ; $5595: $24
    ld c, d                                       ; $5596: $4a
    cp c                                          ; $5597: $b9
    inc a                                         ; $5598: $3c
    add hl, bc                                    ; $5599: $09
    inc de                                        ; $559a: $13
    ld b, h                                       ; $559b: $44
    ld a, a                                       ; $559c: $7f
    ld h, l                                       ; $559d: $65
    inc [hl]                                      ; $559e: $34
    sbc c                                         ; $559f: $99
    ld a, [hl]                                    ; $55a0: $7e
    dec b                                         ; $55a1: $05
    ld l, l                                       ; $55a2: $6d
    dec a                                         ; $55a3: $3d
    sub c                                         ; $55a4: $91
    ld hl, sp+$59                                 ; $55a5: $f8 $59

Jump_041_55a7:
    cp [hl]                                       ; $55a7: $be
    sub h                                         ; $55a8: $94
    adc a                                         ; $55a9: $8f
    db $fd                                        ; $55aa: $fd
    ld [hl], d                                    ; $55ab: $72
    ld [$b94a], a                                 ; $55ac: $ea $4a $b9
    ld [$082b], a                                 ; $55af: $ea $2b $08
    inc hl                                        ; $55b2: $23
    ld [$9677], a                                 ; $55b3: $ea $77 $96
    ld a, e                                       ; $55b6: $7b
    add hl, bc                                    ; $55b7: $09
    jp Jump_000_320c                              ; $55b8: $c3 $0c $32


    ld sp, hl                                     ; $55bb: $f9
    ld hl, sp+$50                                 ; $55bc: $f8 $50
    inc d                                         ; $55be: $14
    sbc [hl]                                      ; $55bf: $9e
    inc l                                         ; $55c0: $2c
    rst $30                                       ; $55c1: $f7
    ld [hl-], a                                   ; $55c2: $32
    ld a, l                                       ; $55c3: $7d
    inc a                                         ; $55c4: $3c
    dec c                                         ; $55c5: $0d
    ld l, d                                       ; $55c6: $6a
    ld [c], a                                     ; $55c7: $e2
    db $fc                                        ; $55c8: $fc
    adc b                                         ; $55c9: $88
    cp e                                          ; $55ca: $bb
    sub h                                         ; $55cb: $94
    ei                                            ; $55cc: $fb
    ld d, b                                       ; $55cd: $50
    ld sp, hl                                     ; $55ce: $f9
    inc l                                         ; $55cf: $2c
    ld h, e                                       ; $55d0: $63
    db $fc                                        ; $55d1: $fc
    xor c                                         ; $55d2: $a9
    ld e, [hl]                                    ; $55d3: $5e
    dec sp                                        ; $55d4: $3b
    rst $30                                       ; $55d5: $f7
    ld de, $14ec                                  ; $55d6: $11 $ec $14
    ld a, [hl-]                                   ; $55d9: $3a
    and c                                         ; $55da: $a1
    ld e, [hl]                                    ; $55db: $5e
    rst $28                                       ; $55dc: $ef
    cp c                                          ; $55dd: $b9

jr_041_55de:
    sbc e                                         ; $55de: $9b
    ld c, h                                       ; $55df: $4c
    inc b                                         ; $55e0: $04
    dec sp                                        ; $55e1: $3b
    halt                                          ; $55e2: $76
    rl h                                          ; $55e3: $cb $14
    ld a, $6d                                     ; $55e5: $3e $6d
    rst $18                                       ; $55e7: $df
    ld b, h                                       ; $55e8: $44
    ld h, c                                       ; $55e9: $61
    ld l, a                                       ; $55ea: $6f
    and h                                         ; $55eb: $a4
    cp b                                          ; $55ec: $b8
    ld e, c                                       ; $55ed: $59
    db $10                                        ; $55ee: $10
    rst $20                                       ; $55ef: $e7
    ld b, a                                       ; $55f0: $47
    call c, $a288                                 ; $55f1: $dc $88 $a2
    ld c, $f1                                     ; $55f4: $0e $f1
    and c                                         ; $55f6: $a1
    ld e, a                                       ; $55f7: $5f
    ld c, d                                       ; $55f8: $4a
    inc bc                                        ; $55f9: $03
    db $fd                                        ; $55fa: $fd
    ld a, [bc]                                    ; $55fb: $0a
    cp [hl]                                       ; $55fc: $be
    ld [$e749], sp                                ; $55fd: $08 $49 $e7
    ld a, [c]                                     ; $5600: $f2
    ld h, [hl]                                    ; $5601: $66
    ld b, a                                       ; $5602: $47
    cp [hl]                                       ; $5603: $be
    ld hl, $f127                                  ; $5604: $21 $27 $f1
    ld a, [de]                                    ; $5607: $1a
    sbc b                                         ; $5608: $98
    ccf                                           ; $5609: $3f
    cp a                                          ; $560a: $bf
    db $e3                                        ; $560b: $e3
    ld b, e                                       ; $560c: $43
    rst $18                                       ; $560d: $df
    ld a, b                                       ; $560e: $78
    or d                                          ; $560f: $b2

jr_041_5610:
    call c, $e8cb                                 ; $5610: $dc $cb $e8
    ld [c], a                                     ; $5613: $e2
    ld h, b                                       ; $5614: $60
    xor $b3                                       ; $5615: $ee $b3
    sub c                                         ; $5617: $91
    ld [c], a                                     ; $5618: $e2
    ld a, [hl]                                    ; $5619: $7e
    inc hl                                        ; $561a: $23
    cp a                                          ; $561b: $bf
    or a                                          ; $561c: $b7
    rlca                                          ; $561d: $07
    ld a, [bc]                                    ; $561e: $0a
    dec de                                        ; $561f: $1b
    xor d                                         ; $5620: $aa
    db $e3                                        ; $5621: $e3
    ld a, d                                       ; $5622: $7a
    ld d, d                                       ; $5623: $52
    xor b                                         ; $5624: $a8
    adc d                                         ; $5625: $8a
    jp nz, $1b8e                                  ; $5626: $c2 $8e $1b

    or e                                          ; $5629: $b3
    ld d, e                                       ; $562a: $53
    ld [hl], e                                    ; $562b: $73
    db $d3                                        ; $562c: $d3
    xor a                                         ; $562d: $af
    db $ed                                        ; $562e: $ed
    ld c, l                                       ; $562f: $4d
    ld a, [bc]                                    ; $5630: $0a
    cp a                                          ; $5631: $bf
    db $10                                        ; $5632: $10
    ld c, a                                       ; $5633: $4f
    ld h, $ea                                     ; $5634: $26 $ea
    jp nc, $13d6                                  ; $5636: $d2 $d6 $13

    adc c                                         ; $5639: $89
    sbc a                                         ; $563a: $9f
    ld a, [de]                                    ; $563b: $1a
    add hl, hl                                    ; $563c: $29
    inc [hl]                                      ; $563d: $34
    ld a, $14                                     ; $563e: $3e $14
    add l                                         ; $5640: $85
    daa                                           ; $5641: $27
    res 7, l                                      ; $5642: $cb $bd
    ld c, h                                       ; $5644: $4c
    sbc a                                         ; $5645: $9f
    or [hl]                                       ; $5646: $b6
    adc $3e                                       ; $5647: $ce $3e
    db $e4                                        ; $5649: $e4
    jr c, jr_041_5610                             ; $564a: $38 $c4

    ld sp, hl                                     ; $564c: $f9
    sub c                                         ; $564d: $91
    db $db                                        ; $564e: $db
    ld e, c                                       ; $564f: $59
    and [hl]                                      ; $5650: $a6
    ldh a, [rLY]                                  ; $5651: $f0 $44
    cp [hl]                                       ; $5653: $be
    cp b                                          ; $5654: $b8
    ld de, $d1f5                                  ; $5655: $11 $f5 $d1
    dec de                                        ; $5658: $1b
    ld h, l                                       ; $5659: $65
    ld b, [hl]                                    ; $565a: $46
    jp z, Jump_041_62d8                           ; $565b: $ca $d8 $62

    jr z, @-$16                                   ; $565e: $28 $e8

    ld d, a                                       ; $5660: $57
    sbc [hl]                                      ; $5661: $9e
    ld e, $35                                     ; $5662: $1e $35
    ld b, d                                       ; $5664: $42
    dec h                                         ; $5665: $25
    halt                                          ; $5666: $76
    rl h                                          ; $5667: $cb $14
    ld a, $6d                                     ; $5669: $3e $6d
    rst $18                                       ; $566b: $df
    ld h, h                                       ; $566c: $64
    add c                                         ; $566d: $81
    ld h, l                                       ; $566e: $65
    ld a, a                                       ; $566f: $7f
    call c, $c38b                                 ; $5670: $dc $8b $c3
    sbc $b0                                       ; $5673: $de $b0
    ld a, e                                       ; $5675: $7b
    ld e, l                                       ; $5676: $5d

jr_041_5677:
    ld a, [bc]                                    ; $5677: $0a
    adc l                                         ; $5678: $8d
    ld h, b                                       ; $5679: $60
    ld l, a                                       ; $567a: $6f
    adc a                                         ; $567b: $8f
    rla                                           ; $567c: $17
    ld l, l                                       ; $567d: $6d
    or $f4                                        ; $567e: $f6 $f4
    jp hl                                         ; $5680: $e9


    ld b, h                                       ; $5681: $44
    ld a, $e4                                     ; $5682: $3e $e4
    ld l, h                                       ; $5684: $6c
    ld a, [hl]                                    ; $5685: $7e
    ld e, l                                       ; $5686: $5d
    call nc, $d767                                ; $5687: $d4 $67 $d7
    and a                                         ; $568a: $a7
    adc e                                         ; $568b: $8b
    ld a, a                                       ; $568c: $7f
    ld d, d                                       ; $568d: $52
    jr nz, jr_041_570c                            ; $568e: $20 $7c

    inc a                                         ; $5690: $3c
    ld e, c                                       ; $5691: $59
    ld l, h                                       ; $5692: $6c
    ld c, b                                       ; $5693: $48
    ret z                                         ; $5694: $c8

    add hl, de                                    ; $5695: $19
    and d                                         ; $5696: $a2
    ld [hl], b                                    ; $5697: $70
    add hl, hl                                    ; $5698: $29
    ld [hl], h                                    ; $5699: $74
    db $e4                                        ; $569a: $e4
    ld d, d                                       ; $569b: $52
    call Call_041_49e6                            ; $569c: $cd $e6 $49
    ld h, c                                       ; $569f: $61
    ld a, e                                       ; $56a0: $7b
    cp c                                          ; $56a1: $b9
    ld a, [hl]                                    ; $56a2: $7e
    dec b                                         ; $56a3: $05
    ld [hl], l                                    ; $56a4: $75
    ld b, [hl]                                    ; $56a5: $46
    ld b, d                                       ; $56a6: $42
    ld b, d                                       ; $56a7: $42
    ld c, l                                       ; $56a8: $4d
    or [hl]                                       ; $56a9: $b6
    rst $00                                       ; $56aa: $c7
    ret c                                         ; $56ab: $d8

    ld b, a                                       ; $56ac: $47
    ld e, l                                       ; $56ad: $5d
    ld c, [hl]                                    ; $56ae: $4e
    adc [hl]                                      ; $56af: $8e
    ld a, b                                       ; $56b0: $78
    ld l, a                                       ; $56b1: $6f
    adc b                                         ; $56b2: $88
    dec de                                        ; $56b3: $1b
    ret                                           ; $56b4: $c9


    or $f8                                        ; $56b5: $f6 $f8
    jp nz, Jump_000_3236                          ; $56b7: $c2 $36 $32

    push de                                       ; $56ba: $d5
    ld a, l                                       ; $56bb: $7d
    sbc a                                         ; $56bc: $9f
    or $3e                                        ; $56bd: $f6 $3e
    rr b                                          ; $56bf: $cb $18
    ld a, a                                       ; $56c1: $7f
    inc d                                         ; $56c2: $14
    or $f6                                        ; $56c3: $f6 $f6
    sbc b                                         ; $56c5: $98
    ld d, d                                       ; $56c6: $52
    ld h, b                                       ; $56c7: $60
    db $e4                                        ; $56c8: $e4
    di                                            ; $56c9: $f3
    ret c                                         ; $56ca: $d8

    ld c, l                                       ; $56cb: $4d
    ld l, d                                       ; $56cc: $6a
    call nz, $a94d                                ; $56cd: $c4 $4d $a9
    cpl                                           ; $56d0: $2f
    ld e, a                                       ; $56d1: $5f
    ld d, l                                       ; $56d2: $55
    cp a                                          ; $56d3: $bf
    rst $28                                       ; $56d4: $ef
    add l                                         ; $56d5: $85
    pop de                                        ; $56d6: $d1
    xor a                                         ; $56d7: $af
    ld l, l                                       ; $56d8: $6d
    rst $28                                       ; $56d9: $ef
    ret c                                         ; $56da: $d8

    or c                                          ; $56db: $b1
    dec a                                         ; $56dc: $3d
    di                                            ; $56dd: $f3
    and h                                         ; $56de: $a4
    ret nc                                        ; $56df: $d0

    cp l                                          ; $56e0: $bd
    ccf                                           ; $56e1: $3f
    rr e                                          ; $56e2: $cb $1b
    jr jr_041_5677                                ; $56e4: $18 $91

    ld sp, $f7d5                                  ; $56e6: $31 $d5 $f7
    ld a, l                                       ; $56e9: $7d
    ld a, $e4                                     ; $56ea: $3e $e4
    ld l, h                                       ; $56ec: $6c
    ld b, [hl]                                    ; $56ed: $46
    xor d                                         ; $56ee: $aa
    ld c, e                                       ; $56ef: $4b
    adc l                                         ; $56f0: $8d
    inc l                                         ; $56f1: $2c
    ld l, a                                       ; $56f2: $6f
    ld h, l                                       ; $56f3: $65
    ld [c], a                                     ; $56f4: $e2
    db $fc                                        ; $56f5: $fc
    adc b                                         ; $56f6: $88
    ld a, [hl]                                    ; $56f7: $7e
    ld c, h                                       ; $56f8: $4c
    ccf                                           ; $56f9: $3f
    call z, Call_000_0a5f                         ; $56fa: $cc $5f $0a

Call_041_56fd:
    ld [c], a                                     ; $56fd: $e2

jr_041_56fe:
    ld b, e                                       ; $56fe: $43
    ld a, a                                       ; $56ff: $7f
    cp e                                          ; $5700: $bb
    add hl, hl                                    ; $5701: $29
    rst $18                                       ; $5702: $df
    xor a                                         ; $5703: $af
    sbc [hl]                                      ; $5704: $9e
    inc hl                                        ; $5705: $23
    ld a, h                                       ; $5706: $7c
    ld b, d                                       ; $5707: $42
    daa                                           ; $5708: $27
    rra                                           ; $5709: $1f
    adc l                                         ; $570a: $8d
    cp [hl]                                       ; $570b: $be

jr_041_570c:
    xor c                                         ; $570c: $a9
    scf                                           ; $570d: $37
    db $e4                                        ; $570e: $e4
    inc h                                         ; $570f: $24
    ld a, $14                                     ; $5710: $3e $14
    ld a, e                                       ; $5712: $7b
    ld a, a                                       ; $5713: $7f
    inc [hl]                                      ; $5714: $34
    ld a, e                                       ; $5715: $7b
    ld d, c                                       ; $5716: $51
    ld c, b                                       ; $5717: $48
    pop af                                        ; $5718: $f1
    jp nz, $ea3e                                  ; $5719: $c2 $3e $ea

    ld [c], a                                     ; $571c: $e2
    db $ec                                        ; $571d: $ec
    ld a, [bc]                                    ; $571e: $0a
    rst $38                                       ; $571f: $ff
    sbc $a3                                       ; $5720: $de $a3
    ld c, e                                       ; $5722: $4b
    push af                                       ; $5723: $f5
    sub c                                         ; $5724: $91
    sub c                                         ; $5725: $91
    ret c                                         ; $5726: $d8

    and c                                         ; $5727: $a1

Jump_041_5728:
    cp b                                          ; $5728: $b8
    ld c, c                                       ; $5729: $49
    push af                                       ; $572a: $f5
    sub a                                         ; $572b: $97
    rrca                                          ; $572c: $0f
    add hl, bc                                    ; $572d: $09
    dec b                                         ; $572e: $05
    ld b, e                                       ; $572f: $43
    ld l, [hl]                                    ; $5730: $6e
    rst $00                                       ; $5731: $c7
    ld c, e                                       ; $5732: $4b
    sbc c                                         ; $5733: $99
    jp c, $2bf4                                   ; $5734: $da $f4 $2b

    cp [hl]                                       ; $5737: $be
    dec bc                                        ; $5738: $0b
    ld l, h                                       ; $5739: $6c
    ld [c], a                                     ; $573a: $e2
    db $fc                                        ; $573b: $fc
    ret z                                         ; $573c: $c8

    db $ed                                        ; $573d: $ed
    add sp, $5f                                   ; $573e: $e8 $5f
    sbc h                                         ; $5740: $9c
    rra                                           ; $5741: $1f
    call z, Call_041_7513                         ; $5742: $cc $13 $75
    pop de                                        ; $5745: $d1
    ld b, e                                       ; $5746: $43
    ld c, b                                       ; $5747: $48
    ld [$49e5], sp                                ; $5748: $08 $e5 $49
    cp c                                          ; $574b: $b9
    ld c, a                                       ; $574c: $4f
    pop hl                                        ; $574d: $e1
    rst $20                                       ; $574e: $e7
    adc c                                         ; $574f: $89
    cp d                                          ; $5750: $ba
    sub b                                         ; $5751: $90
    ld d, e                                       ; $5752: $53
    ret c                                         ; $5753: $d8

    ld h, $9a                                     ; $5754: $26 $9a
    cp l                                          ; $5756: $bd
    cp d                                          ; $5757: $ba
    ld a, [bc]                                    ; $5758: $0a
    jp nz, $a7d3                                  ; $5759: $c2 $d3 $a7

    ld d, l                                       ; $575c: $55
    add l                                         ; $575d: $85
    ld d, d                                       ; $575e: $52
    ld h, $2f                                     ; $575f: $26 $2f
    ld [$f919], a                                 ; $5761: $ea $19 $f9
    jr c, jr_041_56fe                             ; $5764: $38 $98

    ld a, e                                       ; $5766: $7b
    ld b, e                                       ; $5767: $43
    ld [hl], $42                                  ; $5768: $36 $42
    ld c, [hl]                                    ; $576a: $4e
    ld h, c                                       ; $576b: $61
    ld b, e                                       ; $576c: $43
    inc a                                         ; $576d: $3c
    cp a                                          ; $576e: $bf
    and b                                         ; $576f: $a0
    and $0a                                       ; $5770: $e6 $0a
    xor l                                         ; $5772: $ad
    rrca                                          ; $5773: $0f
    jp hl                                         ; $5774: $e9


    ld d, c                                       ; $5775: $51

Call_041_5776:
    inc hl                                        ; $5776: $23
    ld l, l                                       ; $5777: $6d
    reti                                          ; $5778: $d9


    ld a, c                                       ; $5779: $79
    ld b, a                                       ; $577a: $47
    call nc, $d4d8                                ; $577b: $d4 $d8 $d4
    ld e, d                                       ; $577e: $5a
    ld bc, $a72d                                  ; $577f: $01 $2d $a7
    and b                                         ; $5782: $a0
    ld e, d                                       ; $5783: $5a
    inc c                                         ; $5784: $0c
    ld sp, hl                                     ; $5785: $f9
    sbc l                                         ; $5786: $9d
    ld [hl-], a                                   ; $5787: $32
    ei                                            ; $5788: $fb
    ld a, b                                       ; $5789: $78
    or d                                          ; $578a: $b2
    ld c, h                                       ; $578b: $4c
    pop hl                                        ; $578c: $e1
    pop de                                        ; $578d: $d1
    and l                                         ; $578e: $a5
    jr nz, @+$34                                  ; $578f: $20 $32

    sub d                                         ; $5791: $92
    ld [$f452], a                                 ; $5792: $ea $52 $f4
    xor a                                         ; $5795: $af
    db $ed                                        ; $5796: $ed
    sbc e                                         ; $5797: $9b
    ld a, [hl]                                    ; $5798: $7e
    dec b                                         ; $5799: $05
    db $ed                                        ; $579a: $ed
    ld e, a                                       ; $579b: $5f
    jp z, $ef72                                   ; $579c: $ca $72 $ef

    and b                                         ; $579f: $a0
    adc e                                         ; $57a0: $8b
    adc h                                         ; $57a1: $8c
    and h                                         ; $57a2: $a4
    ld b, [hl]                                    ; $57a3: $46
    or $a7                                        ; $57a4: $f6 $a7
    cp d                                          ; $57a6: $ba
    adc a                                         ; $57a7: $8f
    rst $20                                       ; $57a8: $e7
    sub a                                         ; $57a9: $97
    rst $28                                       ; $57aa: $ef
    ld d, a                                       ; $57ab: $57
    sbc [hl]                                      ; $57ac: $9e
    cp $83                                        ; $57ad: $fe $83
    sbc d                                         ; $57af: $9a
    inc d                                         ; $57b0: $14
    ld b, a                                       ; $57b1: $47
    set 5, e                                      ; $57b2: $cb $eb
    or d                                          ; $57b4: $b2
    ret c                                         ; $57b5: $d8

    ld a, b                                       ; $57b6: $78
    ld d, c                                       ; $57b7: $51
    jp z, Jump_041_7418                           ; $57b8: $ca $18 $74

    ld d, c                                       ; $57bb: $51
    ld b, e                                       ; $57bc: $43
    ld a, d                                       ; $57bd: $7a
    call nc, Call_041_5b48                        ; $57be: $d4 $48 $5b
    halt                                          ; $57c1: $76
    sbc $11                                       ; $57c2: $de $11
    dec [hl]                                      ; $57c4: $35
    ld [hl], $b5                                  ; $57c5: $36 $b5
    ld d, [hl]                                    ; $57c7: $56
    dec e                                         ; $57c8: $1d
    ld e, a                                       ; $57c9: $5f
    call c, $7908                                 ; $57ca: $dc $08 $79
    db $10                                        ; $57cd: $10
    add h                                         ; $57ce: $84
    ld l, l                                       ; $57cf: $6d
    ret z                                         ; $57d0: $c8

    or a                                          ; $57d1: $b7
    dec a                                         ; $57d2: $3d
    ld e, c                                       ; $57d3: $59
    db $ec                                        ; $57d4: $ec
    xor d                                         ; $57d5: $aa
    adc a                                         ; $57d6: $8f
    di                                            ; $57d7: $f3
    inc hl                                        ; $57d8: $23
    sbc $77                                       ; $57d9: $de $77
    xor $3e                                       ; $57db: $ee $3e
    ld a, d                                       ; $57dd: $7a
    ld a, d                                       ; $57de: $7a
    and e                                         ; $57df: $a3
    ld c, e                                       ; $57e0: $4b
    db $dd                                        ; $57e1: $dd
    ld h, c                                       ; $57e2: $61
    add [hl]                                      ; $57e3: $86
    push af                                       ; $57e4: $f5
    dec hl                                        ; $57e5: $2b
    ld [hl], l                                    ; $57e6: $75
    ld b, [hl]                                    ; $57e7: $46
    ld d, d                                       ; $57e8: $52
    ld a, [hl]                                    ; $57e9: $7e
    ld sp, $bf5c                                  ; $57ea: $31 $5c $bf
    ld [bc], a                                    ; $57ed: $02
    ld [hl], l                                    ; $57ee: $75
    add a                                         ; $57ef: $87
    dec c                                         ; $57f0: $0d
    ld a, d                                       ; $57f1: $7a
    dec a                                         ; $57f2: $3d
    add d                                         ; $57f3: $82
    ld d, d                                       ; $57f4: $52
    ld h, b                                       ; $57f5: $60

jr_041_57f6:
    ret z                                         ; $57f6: $c8

    sub b                                         ; $57f7: $90
    ld d, h                                       ; $57f8: $54
    ld a, h                                       ; $57f9: $7c

jr_041_57fa:
    jr z, jr_041_57f6                             ; $57fa: $28 $fa

    dec d                                         ; $57fc: $15
    db $ed                                        ; $57fd: $ed
    rst $18                                       ; $57fe: $df
    ld c, a                                       ; $57ff: $4f
    cp a                                          ; $5800: $bf
    ld [bc], a                                    ; $5801: $02
    ld [hl], l                                    ; $5802: $75
    ld b, [hl]                                    ; $5803: $46
    ld [hl], d                                    ; $5804: $72
    ld [c], a                                     ; $5805: $e2
    db $fd                                        ; $5806: $fd
    jp nz, $8ea7                                  ; $5807: $c2 $a7 $8e

    sub c                                         ; $580a: $91
    db $fd                                        ; $580b: $fd
    ld e, c                                       ; $580c: $59
    add [hl]                                      ; $580d: $86
    add h                                         ; $580e: $84
    ld a, l                                       ; $580f: $7d
    ld c, b                                       ; $5810: $48
    jr c, jr_041_57fa                             ; $5811: $38 $e7

    cp a                                          ; $5813: $bf
    ld c, a                                       ; $5814: $4f
    ei                                            ; $5815: $fb
    ld d, [hl]                                    ; $5816: $56
    ld a, [$a5d4]                                 ; $5817: $fa $d4 $a5
    ld h, [hl]                                    ; $581a: $66
    dec [hl]                                      ; $581b: $35
    db $d3                                        ; $581c: $d3
    jp hl                                         ; $581d: $e9


    add l                                         ; $581e: $85
    ld hl, $44da                                  ; $581f: $21 $da $44
    ld a, c                                       ; $5822: $79
    adc h                                         ; $5823: $8c
    ld [hl], e                                    ; $5824: $73
    cp $9b                                        ; $5825: $fe $9b
    jr nc, jr_041_588e                            ; $5827: $30 $65

    cp [hl]                                       ; $5829: $be
    ld hl, sp-$30                                 ; $582a: $f8 $d0
    rla                                           ; $582c: $17
    cp [hl]                                       ; $582d: $be
    sbc d                                         ; $582e: $9a
    dec hl                                        ; $582f: $2b
    ld [hl], l                                    ; $5830: $75
    ld b, [hl]                                    ; $5831: $46
    ld [hl+], a                                   ; $5832: $22
    ld c, b                                       ; $5833: $48
    add hl, de                                    ; $5834: $19
    sbc c                                         ; $5835: $99
    sub h                                         ; $5836: $94
    ld [hl], e                                    ; $5837: $73
    call nc, $efa6                                ; $5838: $d4 $a6 $ef
    ei                                            ; $583b: $fb
    cp b                                          ; $583c: $b8
    xor c                                         ; $583d: $a9

Jump_041_583e:
    xor b                                         ; $583e: $a8
    ld hl, sp+$50                                 ; $583f: $f8 $50
    and h                                         ; $5841: $a4
    ld e, h                                       ; $5842: $5c
    ret c                                         ; $5843: $d8

    add [hl]                                      ; $5844: $86
    db $fc                                        ; $5845: $fc
    inc l                                         ; $5846: $2c
    rst $10                                       ; $5847: $d7
    ld b, b                                       ; $5848: $40
    ld c, [hl]                                    ; $5849: $4e
    ld a, [c]                                     ; $584a: $f2
    sbc e                                         ; $584b: $9b
    and a                                         ; $584c: $a7
    rst $28                                       ; $584d: $ef
    ei                                            ; $584e: $fb
    dec d                                         ; $584f: $15
    dec e                                         ; $5850: $1d
    ld hl, sp+$75                                 ; $5851: $f8 $75
    ld e, c                                       ; $5853: $59
    adc [hl]                                      ; $5854: $8e
    call nz, Call_000_27de                        ; $5855: $c4 $de $27
    rla                                           ; $5858: $17
    add l                                         ; $5859: $85
    sbc l                                         ; $585a: $9d
    push bc                                       ; $585b: $c5
    xor [hl]                                      ; $585c: $ae
    sbc d                                         ; $585d: $9a
    cp h                                          ; $585e: $bc
    ret z                                         ; $585f: $c8

    add sp, $52                                   ; $5860: $e8 $52
    ld a, l                                       ; $5862: $7d
    sbc h                                         ; $5863: $9c
    rra                                           ; $5864: $1f
    pop de                                        ; $5865: $d1
    ld h, e                                       ; $5866: $63
    rst $28                                       ; $5867: $ef
    xor c                                         ; $5868: $a9
    cp c                                          ; $5869: $b9
    ld [bc], a                                    ; $586a: $02
    sbc [hl]                                      ; $586b: $9e
    ld d, e                                       ; $586c: $53
    dec l                                         ; $586d: $2d
    ld h, e                                       ; $586e: $63
    db $fc                                        ; $586f: $fc
    ld a, h                                       ; $5870: $7c
    pop de                                        ; $5871: $d1
    ld b, e                                       ; $5872: $43
    and b                                         ; $5873: $a0
    ld c, e                                       ; $5874: $4b
    db $dd                                        ; $5875: $dd
    db $eb                                        ; $5876: $eb
    cp [hl]                                       ; $5877: $be
    rst $28                                       ; $5878: $ef
    ei                                            ; $5879: $fb
    ld c, h                                       ; $587a: $4c
    ld c, b                                       ; $587b: $48
    ld a, [hl-]                                   ; $587c: $3a
    rla                                           ; $587d: $17
    rst $20                                       ; $587e: $e7
    ld b, a                                       ; $587f: $47
    sbc h                                         ; $5880: $9c
    rst $38                                       ; $5881: $ff
    cp [hl]                                       ; $5882: $be
    cp d                                          ; $5883: $ba
    call c, $6b4e                                 ; $5884: $dc $4e $6b
    ld l, a                                       ; $5887: $6f
    inc hl                                        ; $5888: $23
    adc b                                         ; $5889: $88
    rst $28                                       ; $588a: $ef
    adc e                                         ; $588b: $8b
    ld b, [hl]                                    ; $588c: $46
    ld c, a                                       ; $588d: $4f

jr_041_588e:
    sbc $6e                                       ; $588e: $de $6e
    ld l, d                                       ; $5890: $6a
    xor l                                         ; $5891: $ad

jr_041_5892:
    sbc l                                         ; $5892: $9d
    adc $06                                       ; $5893: $ce $06
    add hl, sp                                    ; $5895: $39
    add hl, hl                                    ; $5896: $29
    or e                                          ; $5897: $b3
    daa                                           ; $5898: $27
    ld [$1848], a                                 ; $5899: $ea $48 $18
    sbc a                                         ; $589c: $9f
    ld d, l                                       ; $589d: $55
    rla                                           ; $589e: $17
    ld a, [hl+]                                   ; $589f: $2a
    ld e, c                                       ; $58a0: $59
    add $a3                                       ; $58a1: $c6 $a3
    rst $28                                       ; $58a3: $ef
    ei                                            ; $58a4: $fb
    dec d                                         ; $58a5: $15
    ld l, l                                       ; $58a6: $6d
    call nz, Call_041_6287                        ; $58a7: $c4 $87 $62
    rst $28                                       ; $58aa: $ef
    adc c                                         ; $58ab: $89
    di                                            ; $58ac: $f3
    ld e, a                                       ; $58ad: $5f
    ld h, b                                       ; $58ae: $60
    ld e, a                                       ; $58af: $5f
    ld l, e                                       ; $58b0: $6b
    dec b                                         ; $58b1: $05
    ld [hl], l                                    ; $58b2: $75
    xor a                                         ; $58b3: $af
    ei                                            ; $58b4: $fb
    call c, $dd4e                                 ; $58b5: $dc $4e $dd
    reti                                          ; $58b8: $d9


    inc c                                         ; $58b9: $0c
    db $d3                                        ; $58ba: $d3
    ld [hl], b                                    ; $58bb: $70
    add l                                         ; $58bc: $85
    ei                                            ; $58bd: $fb
    or h                                          ; $58be: $b4
    ld a, $24                                     ; $58bf: $3e $24
    jr @-$2d                                      ; $58c1: $18 $d1

    add sp, -$65                                  ; $58c3: $e8 $9b
    ld a, d                                       ; $58c5: $7a
    inc hl                                        ; $58c6: $23
    cpl                                           ; $58c7: $2f
    ld [$e9b3], a                                 ; $58c8: $ea $b3 $e9
    push de                                       ; $58cb: $d5
    ld c, h                                       ; $58cc: $4c
    db $db                                        ; $58cd: $db
    dec sp                                        ; $58ce: $3b
    xor l                                         ; $58cf: $ad
    cp l                                          ; $58d0: $bd
    adc l                                         ; $58d1: $8d
    jr nz, jr_041_5892                            ; $58d2: $20 $be

    cpl                                           ; $58d4: $2f
    ld a, [de]                                    ; $58d5: $1a
    dec a                                         ; $58d6: $3d
    ld a, c                                       ; $58d7: $79
    cp e                                          ; $58d8: $bb
    pop de                                        ; $58d9: $d1
    push hl                                       ; $58da: $e5
    halt                                          ; $58db: $76
    cp h                                          ; $58dc: $bc
    cpl                                           ; $58dd: $2f
    db $fc                                        ; $58de: $fc
    and l                                         ; $58df: $a5
    ld a, [$8ba8]                                 ; $58e0: $fa $a8 $8b
    cpl                                           ; $58e3: $2f
    ld l, h                                       ; $58e4: $6c
    ld bc, $5309                                  ; $58e5: $01 $09 $53
    ret nc                                        ; $58e8: $d0

    and l                                         ; $58e9: $a5
    ld b, [hl]                                    ; $58ea: $46
    or [hl]                                       ; $58eb: $b6
    rlca                                          ; $58ec: $07
    sub l                                         ; $58ed: $95
    ld [hl], e                                    ; $58ee: $73
    inc de                                        ; $58ef: $13
    rst $20                                       ; $58f0: $e7
    ld b, a                                       ; $58f1: $47
    db $ec                                        ; $58f2: $ec
    ld d, b                                       ; $58f3: $50
    inc e                                         ; $58f4: $1c
    ld a, [c]                                     ; $58f5: $f2
    ld [hl], c                                    ; $58f6: $71
    inc hl                                        ; $58f7: $23
    ld l, h                                       ; $58f8: $6c

jr_041_58f9:
    or e                                          ; $58f9: $b3
    rst $30                                       ; $58fa: $f7
    db $db                                        ; $58fb: $db
    sbc [hl]                                      ; $58fc: $9e
    ld a, [hl]                                    ; $58fd: $7e
    dec b                                         ; $58fe: $05
    sbc [hl]                                      ; $58ff: $9e
    jr nc, jr_041_58f9                            ; $5900: $30 $f7

    and c                                         ; $5902: $a1
    ld a, [c]                                     ; $5903: $f2
    add hl, hl                                    ; $5904: $29
    and a                                         ; $5905: $a7
    ret                                           ; $5906: $c9


    ret c                                         ; $5907: $d8

    ld b, a                                       ; $5908: $47
    or e                                          ; $5909: $b3
    cpl                                           ; $590a: $2f
    push hl                                       ; $590b: $e5
    db $e3                                        ; $590c: $e3
    ld b, [hl]                                    ; $590d: $46
    ld b, d                                       ; $590e: $42
    dec h                                         ; $590f: $25
    xor a                                         ; $5910: $af
    ccf                                           ; $5911: $3f
    sbc [hl]                                      ; $5912: $9e
    ret c                                         ; $5913: $d8

    sub h                                         ; $5914: $94
    rst $28                                       ; $5915: $ef
    ei                                            ; $5916: $fb
    ld a, $32                                     ; $5917: $3e $32
    sub d                                         ; $5919: $92
    ld [hl-], a                                   ; $591a: $32
    ld sp, hl                                     ; $591b: $f9
    call $fd36                                    ; $591c: $cd $36 $fd
    ld a, [bc]                                    ; $591f: $0a
    xor l                                         ; $5920: $ad
    rrca                                          ; $5921: $0f
    ld l, c                                       ; $5922: $69
    ret nc                                        ; $5923: $d0

    db $eb                                        ; $5924: $eb
    ld de, $0294                                  ; $5925: $11 $94 $02
    ld b, e                                       ; $5928: $43
    ld c, [hl]                                    ; $5929: $4e
    ld b, d                                       ; $592a: $42
    push hl                                       ; $592b: $e5
    jp $8663                                      ; $592c: $c3 $63 $86


    ld a, $6d                                     ; $592f: $3e $6d
    adc [hl]                                      ; $5931: $8e

jr_041_5932:
    dec d                                         ; $5932: $15
    ld b, h                                       ; $5933: $44
    dec c                                         ; $5934: $0d
    ld l, c                                       ; $5935: $69

Call_041_5936:
    jr z, @+$7e                                   ; $5936: $28 $7c

    ld [hl], c                                    ; $5938: $71
    jr nc, jr_041_5932                            ; $5939: $30 $f7

    add [hl]                                      ; $593b: $86
    ld a, h                                       ; $593c: $7c
    xor b                                         ; $593d: $a8
    ld h, h                                       ; $593e: $64
    cp c                                          ; $593f: $b9
    sub a                                         ; $5940: $97
    ld c, c                                       ; $5941: $49

jr_041_5942:
    and c                                         ; $5942: $a1
    dec bc                                        ; $5943: $0b
    db $ec                                        ; $5944: $ec
    add $d0                                       ; $5945: $c6 $d0
    xor a                                         ; $5947: $af
    sbc [hl]                                      ; $5948: $9e
    jr nc, jr_041_5942                            ; $5949: $30 $f7

    add hl, sp                                    ; $594b: $39
    ret                                           ; $594c: $c9


    ld l, a                                       ; $594d: $6f
    ld e, $5d                                     ; $594e: $1e $5d
    ld h, h                                       ; $5950: $64
    inc h                                         ; $5951: $24
    daa                                           ; $5952: $27
    pop de                                        ; $5953: $d1
    ld a, a                                       ; $5954: $7f
    add hl, hl                                    ; $5955: $29
    db $d3                                        ; $5956: $d3
    xor a                                         ; $5957: $af
    or l                                          ; $5958: $b5
    daa                                           ; $5959: $27
    dec b                                         ; $595a: $05
    jp nz, $13c7                                  ; $595b: $c2 $c7 $13

    ld [hl], l                                    ; $595e: $75
    add [hl]                                      ; $595f: $86
    jr c, jr_041_59a1                             ; $5960: $38 $3f

    ld d, d                                       ; $5962: $52
    ld l, $6c                                     ; $5963: $2e $6c
    ld b, e                                       ; $5965: $43
    ld a, [hl]                                    ; $5966: $7e
    ret z                                         ; $5967: $c8

    ld [hl], e                                    ; $5968: $73
    daa                                           ; $5969: $27
    sub e                                         ; $596a: $93
    rrca                                          ; $596b: $0f
    sub l                                         ; $596c: $95
    adc a                                         ; $596d: $8f
    ld h, [hl]                                    ; $596e: $66
    ld d, e                                       ; $596f: $53
    jp z, $78a7                                   ; $5970: $ca $a7 $78

    ld h, c                                       ; $5973: $61

Jump_041_5974:
    rst $18                                       ; $5974: $df
    xor a                                         ; $5975: $af
    ld [hl], l                                    ; $5976: $75
    add a                                         ; $5977: $87
    dec c                                         ; $5978: $0d
    ld a, d                                       ; $5979: $7a
    dec a                                         ; $597a: $3d
    jp nz, $e436                                  ; $597b: $c2 $36 $e4

    ld e, e                                       ; $597e: $5b
    cp c                                          ; $597f: $b9
    xor b                                         ; $5980: $a8
    inc bc                                        ; $5981: $03
    db $db                                        ; $5982: $db
    add h                                         ; $5983: $84
    ld c, d                                       ; $5984: $4a
    ld a, h                                       ; $5985: $7c
    add sp, $2b                                   ; $5986: $e8 $2b
    sbc e                                         ; $5988: $9b
    ld a, [hl]                                    ; $5989: $7e
    dec b                                         ; $598a: $05
    sbc l                                         ; $598b: $9d
    sbc [hl]                                      ; $598c: $9e
    dec sp                                        ; $598d: $3b
    sbc c                                         ; $598e: $99
    cp [hl]                                       ; $598f: $be
    rst $28                                       ; $5990: $ef
    ld d, e                                       ; $5991: $53
    call $09e6                                    ; $5992: $cd $e6 $09
    ld a, c                                       ; $5995: $79
    xor $64                                       ; $5996: $ee $64
    ld a, [$1d15]                                 ; $5998: $fa $15 $1d
    db $d3                                        ; $599b: $d3
    sub h                                         ; $599c: $94
    cp a                                          ; $599d: $bf
    inc l                                         ; $599e: $2c
    ld l, a                                       ; $599f: $6f
    ei                                            ; $59a0: $fb

jr_041_59a1:
    dec c                                         ; $59a1: $0d
    or l                                          ; $59a2: $b5
    ld d, [hl]                                    ; $59a3: $56
    ld [hl], l                                    ; $59a4: $75
    ld h, c                                       ; $59a5: $61
    adc $5f                                       ; $59a6: $ce $5f
    ld l, a                                       ; $59a8: $6f
    xor d                                         ; $59a9: $aa
    cp a                                          ; $59aa: $bf
    ret z                                         ; $59ab: $c8

    ld c, b                                       ; $59ac: $48
    call nc, $8690                                ; $59ad: $d4 $90 $86
    dec bc                                        ; $59b0: $0b
    ld c, d                                       ; $59b1: $4a
    add c                                         ; $59b2: $81
    ld hl, $97ee                                  ; $59b3: $21 $ee $97
    ld [hl], a                                    ; $59b6: $77
    adc b                                         ; $59b7: $88
    cp d                                          ; $59b8: $ba
    inc l                                         ; $59b9: $2c
    ld l, a                                       ; $59ba: $6f
    ei                                            ; $59bb: $fb
    dec c                                         ; $59bc: $0d
    or l                                          ; $59bd: $b5
    ld d, [hl]                                    ; $59be: $56
    cp [hl]                                       ; $59bf: $be
    ld a, a                                       ; $59c0: $7f
    ld d, c                                       ; $59c1: $51
    ld h, a                                       ; $59c2: $67
    push de                                       ; $59c3: $d5
    ld b, l                                       ; $59c4: $45
    dec c                                         ; $59c5: $0d
    jp hl                                         ; $59c6: $e9


    ld d, c                                       ; $59c7: $51
    inc hl                                        ; $59c8: $23
    ld l, l                                       ; $59c9: $6d
    reti                                          ; $59ca: $d9


    ld a, c                                       ; $59cb: $79
    ld b, a                                       ; $59cc: $47
    call nc, $d4d8                                ; $59cd: $d4 $d8 $d4
    ld e, d                                       ; $59d0: $5a
    ld bc, $309e                                  ; $59d1: $01 $9e $30
    sbc [hl]                                      ; $59d4: $9e
    jr c, @+$41                                   ; $59d5: $38 $3f

    or d                                          ; $59d7: $b2
    daa                                           ; $59d8: $27
    ld h, l                                       ; $59d9: $65
    ld a, [$8ef8]                                 ; $59da: $fa $f8 $8e
    ld c, h                                       ; $59dd: $4c
    or $47                                        ; $59de: $f6 $47
    and e                                         ; $59e0: $a3
    ld l, a                                       ; $59e1: $6f
    ld [$3e5e], a                                 ; $59e2: $ea $5e $3e
    ld [$96d2], a                                 ; $59e5: $ea $d2 $96
    sbc l                                         ; $59e8: $9d
    ld [hl], a                                    ; $59e9: $77
    ld b, h                                       ; $59ea: $44
    adc l                                         ; $59eb: $8d
    ld c, l                                       ; $59ec: $4d
    cp a                                          ; $59ed: $bf
    ld [bc], a                                    ; $59ee: $02
    sbc [hl]                                      ; $59ef: $9e
    ld d, e                                       ; $59f0: $53
    ld hl, $77de                                  ; $59f1: $21 $de $77
    xor $26                                       ; $59f4: $ee $26
    rra                                           ; $59f6: $1f
    ld [$1bdb], sp                                ; $59f7: $08 $db $1b
    ld l, d                                       ; $59fa: $6a
    xor l                                         ; $59fb: $ad
    xor l                                         ; $59fc: $ad
    sbc a                                         ; $59fd: $9f
    add e                                         ; $59fe: $83
    xor b                                         ; $59ff: $a8
    xor c                                         ; $5a00: $a9
    ld l, $fb                                     ; $5a01: $2e $fb
    or e                                          ; $5a03: $b3
    cp h                                          ; $5a04: $bc
    call $28fe                                    ; $5a05: $cd $fe $28
    adc a                                         ; $5a08: $8f
    ld sp, $8275                                  ; $5a09: $31 $75 $82
    inc d                                         ; $5a0c: $14
    ld l, b                                       ; $5a0d: $68
    ld b, $fe                                     ; $5a0e: $06 $fe
    ld a, [hl]                                    ; $5a10: $7e
    dec b                                         ; $5a11: $05
    db $ed                                        ; $5a12: $ed
    ld a, a                                       ; $5a13: $7f

jr_041_5a14:
    ld a, h                                       ; $5a14: $7c
    add sp, -$11                                  ; $5a15: $e8 $ef
    call nc, $fec8                                ; $5a17: $d4 $c8 $fe
    inc l                                         ; $5a1a: $2c
    ld l, a                                       ; $5a1b: $6f
    or e                                          ; $5a1c: $b3
    ccf                                           ; $5a1d: $3f
    jp z, Jump_041_4c63                           ; $5a1e: $ca $63 $4c

    sbc l                                         ; $5a21: $9d
    jr nz, jr_041_5a29                            ; $5a22: $20 $05

    sbc d                                         ; $5a24: $9a
    add c                                         ; $5a25: $81
    cp a                                          ; $5a26: $bf
    sub $0a                                       ; $5a27: $d6 $0a

jr_041_5a29:
    ld [hl], l                                    ; $5a29: $75
    ld b, [hl]                                    ; $5a2a: $46
    ld d, d                                       ; $5a2b: $52
    sbc $a0                                       ; $5a2c: $de $a0
    rst $10                                       ; $5a2e: $d7
    inc hl                                        ; $5a2f: $23
    swap l                                        ; $5a30: $cb $35
    sub b                                         ; $5a32: $90
    ld [bc], a                                    ; $5a33: $02
    call $afc0                                    ; $5a34: $cd $c0 $af
    ld c, e                                       ; $5a37: $4b
    ld b, c                                       ; $5a38: $41
    jr jr_041_5a14                                ; $5a39: $18 $d9

    rra                                           ; $5a3b: $1f
    ld [hl], l                                    ; $5a3c: $75
    ld c, $a5                                     ; $5a3d: $0e $a5
    ld e, h                                       ; $5a3f: $5c
    sbc a                                         ; $5a40: $9f
    sub $41                                       ; $5a41: $d6 $41
    ld e, [hl]                                    ; $5a43: $5e
    ret c                                         ; $5a44: $d8

    add [hl]                                      ; $5a45: $86
    ld a, h                                       ; $5a46: $7c
    db $db                                        ; $5a47: $db
    rra                                           ; $5a48: $1f
    push af                                       ; $5a49: $f5
    add hl, hl                                    ; $5a4a: $29
    or e                                          ; $5a4b: $b3
    and a                                         ; $5a4c: $a7
    ld e, a                                       ; $5a4d: $5f
    ld bc, $239e                                  ; $5a4e: $01 $9e $23
    ld d, e                                       ; $5a51: $53
    call c, Call_041_7f65                         ; $5a52: $dc $65 $7f
    sub [hl]                                      ; $5a55: $96
    or a                                          ; $5a56: $b7
    reti                                          ; $5a57: $d9


    rra                                           ; $5a58: $1f
    push hl                                       ; $5a59: $e5
    ld sp, $4ea6                                  ; $5a5a: $31 $a6 $4e
    sub b                                         ; $5a5d: $90
    ld [bc], a                                    ; $5a5e: $02
    call Call_000_1fc0                            ; $5a5f: $cd $c0 $1f
    ld [hl], l                                    ; $5a62: $75
    ld l, c                                       ; $5a63: $69
    set 1, [hl]                                   ; $5a64: $cb $ce
    dec sp                                        ; $5a66: $3b
    and d                                         ; $5a67: $a2
    add $a6                                       ; $5a68: $c6 $a6
    sub $0a                                       ; $5a6a: $d6 $0a
    sbc [hl]                                      ; $5a6c: $9e
    cp $83                                        ; $5a6d: $fe $83
    cp d                                          ; $5a6f: $ba
    db $fd                                        ; $5a70: $fd
    ld sp, hl                                     ; $5a71: $f9
    ld hl, sp-$30                                 ; $5a72: $f8 $d0
    rst $18                                       ; $5a74: $df
    adc [hl]                                      ; $5a75: $8e
    jp z, Jump_041_5d44                           ; $5a76: $ca $44 $5d

    jp c, $f3b2                                   ; $5a79: $da $b2 $f3

    adc [hl]                                      ; $5a7c: $8e
    xor b                                         ; $5a7d: $a8
    or c                                          ; $5a7e: $b1
    jp hl                                         ; $5a7f: $e9


    ld d, a                                       ; $5a80: $57
    ld [hl], l                                    ; $5a81: $75
    ld b, [hl]                                    ; $5a82: $46
    ld [c], a                                     ; $5a83: $e2
    ld b, [hl]                                    ; $5a84: $46
    and [hl]                                      ; $5a85: $a6
    cp b                                          ; $5a86: $b8
    adc c                                         ; $5a87: $89
    ld h, b                                       ; $5a88: $60
    ld e, c                                       ; $5a89: $59
    xor b                                         ; $5a8a: $a8
    ld hl, $53fb                                  ; $5a8b: $21 $fb $53
    db $dd                                        ; $5a8e: $dd
    db $eb                                        ; $5a8f: $eb
    and d                                         ; $5a90: $a2
    ld l, $cb                                     ; $5a91: $2e $cb
    db $db                                        ; $5a93: $db
    db $ec                                        ; $5a94: $ec
    adc a                                         ; $5a95: $8f
    ld a, [c]                                     ; $5a96: $f2
    jr jr_041_5aec                                ; $5a97: $18 $53

    daa                                           ; $5a99: $27
    add sp, $57                                   ; $5a9a: $e8 $57
    sbc [hl]                                      ; $5a9c: $9e
    inc hl                                        ; $5a9d: $23
    ld d, e                                       ; $5a9e: $53
    call c, Call_041_7f65                         ; $5a9f: $dc $65 $7f
    sub [hl]                                      ; $5aa2: $96
    or a                                          ; $5aa3: $b7
    reti                                          ; $5aa4: $d9


    rra                                           ; $5aa5: $1f
    push hl                                       ; $5aa6: $e5
    ld sp, $4ea6                                  ; $5aa7: $31 $a6 $4e
    sub b                                         ; $5aaa: $90
    dec b                                         ; $5aab: $05
    ld d, $08                                     ; $5aac: $16 $08
    db $db                                        ; $5aae: $db
    dec de                                        ; $5aaf: $1b
    ld a, [c]                                     ; $5ab0: $f2
    ld l, c                                       ; $5ab1: $69
    set 1, [hl]                                   ; $5ab2: $cb $ce
    dec sp                                        ; $5ab4: $3b
    and d                                         ; $5ab5: $a2
    add $a6                                       ; $5ab6: $c6 $a6
    sub $0a                                       ; $5ab8: $d6 $0a
    cp [hl]                                       ; $5aba: $be
    ld l, a                                       ; $5abb: $6f
    cp b                                          ; $5abc: $b8
    ld d, b                                       ; $5abd: $50
    adc c                                         ; $5abe: $89
    rst $30                                       ; $5abf: $f7
    add l                                         ; $5ac0: $85
    cp a                                          ; $5ac1: $bf
    ld d, h                                       ; $5ac2: $54
    rra                                           ; $5ac3: $1f
    ld [$9ef5], a                                 ; $5ac4: $ea $f5 $9e
    cp e                                          ; $5ac7: $bb
    rst $18                                       ; $5ac8: $df
    adc b                                         ; $5ac9: $88
    jp nz, Jump_000_1fde                          ; $5aca: $c2 $de $1f

    rst $08                                       ; $5acd: $cf
    cpl                                           ; $5ace: $2f
    rra                                           ; $5acf: $1f
    push af                                       ; $5ad0: $f5
    inc h                                         ; $5ad1: $24
    add hl, bc                                    ; $5ad2: $09
    sbc e                                         ; $5ad3: $9b
    ld d, h                                       ; $5ad4: $54
    ld d, b                                       ; $5ad5: $50
    scf                                           ; $5ad6: $37
    adc $a0                                       ; $5ad7: $ce $a0
    ld c, e                                       ; $5ad9: $4b
    ld b, c                                       ; $5ada: $41
    ld h, h                                       ; $5adb: $64
    inc h                                         ; $5adc: $24
    ei                                            ; $5add: $fb
    db $e3                                        ; $5ade: $e3
    ld b, [hl]                                    ; $5adf: $46
    and [hl]                                      ; $5ae0: $a6
    jr c, @-$6a                                   ; $5ae1: $38 $94

    ld [hl], d                                    ; $5ae3: $72
    dec [hl]                                      ; $5ae4: $35
    ld d, a                                       ; $5ae5: $57
    dec e                                         ; $5ae6: $1d
    jp nc, $a9df                                  ; $5ae7: $d2 $df $a9

    ld d, c                                       ; $5aea: $51
    ld l, e                                       ; $5aeb: $6b

jr_041_5aec:
    dec b                                         ; $5aec: $05
    ld [hl], l                                    ; $5aed: $75
    db $ed                                        ; $5aee: $ed
    xor d                                         ; $5aef: $aa
    rst $28                                       ; $5af0: $ef
    ei                                            ; $5af1: $fb
    ld a, $de                                     ; $5af2: $3e $de
    or c                                          ; $5af4: $b1
    add d                                         ; $5af5: $82
    cp [hl]                                       ; $5af6: $be
    rst $28                                       ; $5af7: $ef
    or e                                          ; $5af8: $b3
    inc c                                         ; $5af9: $0c
    dec de                                        ; $5afa: $1b
    ld a, [bc]                                    ; $5afb: $0a
    ld e, a                                       ; $5afc: $5f
    cp h                                          ; $5afd: $bc
    ld l, a                                       ; $5afe: $6f
    push de                                       ; $5aff: $d5
    add l                                         ; $5b00: $85
    ld c, d                                       ; $5b01: $4a
    cp h                                          ; $5b02: $bc
    ld c, a                                       ; $5b03: $4f
    adc [hl]                                      ; $5b04: $8e
    and c                                         ; $5b05: $a1
    rst $28                                       ; $5b06: $ef
    ei                                            ; $5b07: $fb
    dec d                                         ; $5b08: $15
    sbc [hl]                                      ; $5b09: $9e
    ld a, [hl]                                    ; $5b0a: $7e
    ld b, h                                       ; $5b0b: $44
    add e                                         ; $5b0c: $83
    ret nz                                        ; $5b0d: $c0

    db $10                                        ; $5b0e: $10
    ld [hl], l                                    ; $5b0f: $75
    pop af                                        ; $5b10: $f1
    ld a, $39                                     ; $5b11: $3e $39
    add [hl]                                      ; $5b13: $86
    ld e, d                                       ; $5b14: $5a
    dec hl                                        ; $5b15: $2b
    xor l                                         ; $5b16: $ad
    add [hl]                                      ; $5b17: $86
    sbc h                                         ; $5b18: $9c
    call Call_041_49c8                            ; $5b19: $cd $c8 $49
    ld a, h                                       ; $5b1c: $7c
    jr z, jr_041_5b29                             ; $5b1d: $28 $0a

    ld e, a                                       ; $5b1f: $5f
    call c, $9d98                                 ; $5b20: $dc $98 $9d
    sbc d                                         ; $5b23: $9a
    dec bc                                        ; $5b24: $0b
    sbc a                                         ; $5b25: $9f
    ld a, l                                       ; $5b26: $7d
    xor b                                         ; $5b27: $a8

jr_041_5b28:
    add h                                         ; $5b28: $84

jr_041_5b29:
    add h                                         ; $5b29: $84
    ldh a, [$f4]                                  ; $5b2a: $f0 $f4
    ld a, l                                       ; $5b2c: $7d
    rra                                           ; $5b2d: $1f
    ld a, [hl+]                                   ; $5b2e: $2a
    sub e                                         ; $5b2f: $93
    ld h, l                                       ; $5b30: $65
    ret c                                         ; $5b31: $d8

    and b                                         ; $5b32: $a0
    rst $10                                       ; $5b33: $d7
    inc hl                                        ; $5b34: $23
    inc h                                         ; $5b35: $24
    inc d                                         ; $5b36: $14
    xor h                                         ; $5b37: $ac
    ld e, h                                       ; $5b38: $5c
    or $87                                        ; $5b39: $f6 $87
    ld d, c                                       ; $5b3b: $51
    ld hl, sp+$63                                 ; $5b3c: $f8 $63
    jp $dfb3                                      ; $5b3e: $c3 $b3 $df


    db $10                                        ; $5b41: $10
    ld a, [c]                                     ; $5b42: $f2
    ld a, $3e                                     ; $5b43: $3e $3e
    db $f4                                        ; $5b45: $f4
    ld b, l                                       ; $5b46: $45
    ld c, l                                       ; $5b47: $4d

Call_041_5b48:
    ld a, [hl+]                                   ; $5b48: $2a
    ret z                                         ; $5b49: $c8

    and h                                         ; $5b4a: $a4
    jr nz, jr_041_5b28                            ; $5b4b: $20 $db

    db $e3                                        ; $5b4d: $e3
    rlc d                                         ; $5b4e: $cb $02
    and $ef                                       ; $5b50: $e6 $ef
    ld d, a                                       ; $5b52: $57
    ld l, l                                       ; $5b53: $6d
    adc [hl]                                      ; $5b54: $8e
    dec d                                         ; $5b55: $15
    ld h, h                                       ; $5b56: $64
    add hl, de                                    ; $5b57: $19
    ld [hl], $14                                  ; $5b58: $36 $14
    cp [hl]                                       ; $5b5a: $be
    or b                                          ; $5b5b: $b0
    dec c                                         ; $5b5c: $0d
    ld sp, hl                                     ; $5b5d: $f9
    add [hl]                                      ; $5b5e: $86
    ld hl, sp-$30                                 ; $5b5f: $f8 $d0
    rst $18                                       ; $5b61: $df
    ld l, [hl]                                    ; $5b62: $6e
    jp z, $f9c7                                   ; $5b63: $ca $c7 $f9

    sub c                                         ; $5b66: $91
    ld [$47f2], a                                 ; $5b67: $ea $f2 $47
    ld sp, hl                                     ; $5b6a: $f9
    ld a, [c]                                     ; $5b6b: $f2
    ld h, c                                       ; $5b6c: $61
    ld [$d90c], sp                                ; $5b6d: $08 $0c $d9
    rra                                           ; $5b70: $1f

jr_041_5b71:
    ld b, [hl]                                    ; $5b71: $46
    pop hl                                        ; $5b72: $e1
    adc a                                         ; $5b73: $8f
    rst $30                                       ; $5b74: $f7
    ld c, d                                       ; $5b75: $4a
    ld a, c                                       ; $5b76: $79
    cp $fc                                        ; $5b77: $fe $fc
    adc [hl]                                      ; $5b79: $8e
    and c                                         ; $5b7a: $a1
    ldh a, [rLY]                                  ; $5b7b: $f0 $44
    ld h, c                                       ; $5b7d: $61
    rst $00                                       ; $5b7e: $c7
    adc l                                         ; $5b7f: $8d
    dec l                                         ; $5b80: $2d
    db $d3                                        ; $5b81: $d3
    xor a                                         ; $5b82: $af
    dec e                                         ; $5b83: $1d
    jp nc, $6edf                                  ; $5b84: $d2 $df $6e

    jp z, Jump_041_5d47                           ; $5b87: $ca $47 $5d

    sbc h                                         ; $5b8a: $9c
    rra                                           ; $5b8b: $1f
    pop de                                        ; $5b8c: $d1
    jr nz, @+$32                                  ; $5b8d: $20 $30

    call nc, $015a                                ; $5b8f: $d4 $5a $01
    sbc l                                         ; $5b92: $9d
    ret z                                         ; $5b93: $c8

    rst $00                                       ; $5b94: $c7
    reti                                          ; $5b95: $d9


    sub e                                         ; $5b96: $93
    rst $08                                       ; $5b97: $cf
    db $fc                                        ; $5b98: $fc
    ld d, c                                       ; $5b99: $51
    ret c                                         ; $5b9a: $d8

    db $db                                        ; $5b9b: $db
    add e                                         ; $5b9c: $83
    jp z, $c779                                   ; $5b9d: $ca $79 $c7

    ld a, [hl+]                                   ; $5ba0: $2a
    and h                                         ; $5ba1: $a4
    cp h                                          ; $5ba2: $bc
    ld b, c                                       ; $5ba3: $41
    xor a                                         ; $5ba4: $af
    ld b, a                                       ; $5ba5: $47
    ld d, $98                                     ; $5ba6: $16 $98
    rla                                           ; $5ba8: $17
    call z, $afdf                                 ; $5ba9: $cc $df $af
    db $ed                                        ; $5bac: $ed
    ld a, a                                       ; $5bad: $7f
    ld l, [hl]                                    ; $5bae: $6e
    ld [hl+], a                                   ; $5baf: $22
    adc b                                         ; $5bb0: $88
    ld a, a                                       ; $5bb1: $7f
    and d                                         ; $5bb2: $a2
    ld e, l                                       ; $5bb3: $5d
    dec a                                         ; $5bb4: $3d
    and c                                         ; $5bb5: $a1
    ld a, [c]                                     ; $5bb6: $f2
    dec [hl]                                      ; $5bb7: $35
    ld d, a                                       ; $5bb8: $57
    ld [hl], l                                    ; $5bb9: $75
    ld h, c                                       ; $5bba: $61
    ld e, [hl]                                    ; $5bbb: $5e
    jr nc, jr_041_5c0d                            ; $5bbc: $30 $4f

    call Call_041_4874                            ; $5bbe: $cd $74 $48
    ld d, c                                       ; $5bc1: $51
    ld hl, sp-$3d                                 ; $5bc2: $f8 $c3
    jr nc, jr_041_5b71                            ; $5bc4: $30 $ab

    daa                                           ; $5bc6: $27
    ld a, d                                       ; $5bc7: $7a
    ld c, b                                       ; $5bc8: $48
    jp z, $f56f                                   ; $5bc9: $ca $6f $f5

    reti                                          ; $5bcc: $d9


    sbc a                                         ; $5bcd: $9f
    ld [$8c3e], a                                 ; $5bce: $ea $3e $8c
    jp nz, $335f                                  ; $5bd1: $c2 $5f $33

    db $ed                                        ; $5bd4: $ed
    ld a, l                                       ; $5bd5: $7d
    sub [hl]                                      ; $5bd6: $96
    or a                                          ; $5bd7: $b7
    reti                                          ; $5bd8: $d9


    rra                                           ; $5bd9: $1f
    push hl                                       ; $5bda: $e5
    ld sp, $4ea6                                  ; $5bdb: $31 $a6 $4e
    sub b                                         ; $5bde: $90
    ld a, [de]                                    ; $5bdf: $1a
    pop af                                        ; $5be0: $f1
    ldh a, [$fc]                                  ; $5be1: $f0 $fc
    add l                                         ; $5be3: $85
    ld [hl], d                                    ; $5be4: $72
    ld e, d                                       ; $5be5: $5a
    or a                                          ; $5be6: $b7
    ld [hl], a                                    ; $5be7: $77
    inc hl                                        ; $5be8: $23
    ld d, a                                       ; $5be9: $57
    inc a                                         ; $5bea: $3c
    ld a, [$5e78]                                 ; $5beb: $fa $78 $5e
    ld c, b                                       ; $5bee: $48
    xor b                                         ; $5bef: $a8
    ei                                            ; $5bf0: $fb

jr_041_5bf1:
    ld l, d                                       ; $5bf1: $6a
    ld l, d                                       ; $5bf2: $6a
    xor [hl]                                      ; $5bf3: $ae
    xor l                                         ; $5bf4: $ad
    rrca                                          ; $5bf5: $0f
    adc c                                         ; $5bf6: $89
    inc l                                         ; $5bf7: $2c
    ld d, e                                       ; $5bf8: $53
    jp z, Jump_041_6d84                           ; $5bf9: $ca $84 $6d

    ret z                                         ; $5bfc: $c8

    or a                                          ; $5bfd: $b7
    db $fd                                        ; $5bfe: $fd
    or l                                          ; $5bff: $b5
    ld d, [hl]                                    ; $5c00: $56
    db $ed                                        ; $5c01: $ed
    ld e, a                                       ; $5c02: $5f
    ld a, [bc]                                    ; $5c03: $0a
    ld a, [hl+]                                   ; $5c04: $2a
    cp l                                          ; $5c05: $bd
    ld a, l                                       ; $5c06: $7d
    call nc, Call_041_49e5                        ; $5c07: $d4 $e5 $49
    sbc b                                         ; $5c0a: $98
    jr nz, jr_041_5bf1                            ; $5c0b: $20 $e4

jr_041_5c0d:
    dec d                                         ; $5c0d: $15
    cp $50                                        ; $5c0e: $fe $50
    ld sp, hl                                     ; $5c10: $f9
    ld [$ca76], sp                                ; $5c11: $08 $76 $ca
    rst $28                                       ; $5c14: $ef
    ld de, $7944                                  ; $5c15: $11 $44 $79
    sbc h                                         ; $5c18: $9c
    ld l, b                                       ; $5c19: $68
    add [hl]                                      ; $5c1a: $86
    ld d, d                                       ; $5c1b: $52
    and [hl]                                      ; $5c1c: $a6
    ld e, a                                       ; $5c1d: $5f
    ld bc, $c72d                                  ; $5c1e: $01 $2d $c7
    add a                                         ; $5c21: $87
    and d                                         ; $5c22: $a2
    ldh a, [$67]                                  ; $5c23: $f0 $67
    ld a, a                                       ; $5c25: $7f
    sbc h                                         ; $5c26: $9c
    dec a                                         ; $5c27: $3d
    ld sp, hl                                     ; $5c28: $f9
    call z, Call_041_751f                         ; $5c29: $cc $1f $75
    ld [hl], c                                    ; $5c2c: $71
    db $f4                                        ; $5c2d: $f4
    ld [c], a                                     ; $5c2e: $e2
    rst $38                                       ; $5c2f: $ff
    adc e                                         ; $5c30: $8b
    cp $ca                                        ; $5c31: $fe $ca
    ld l, b                                       ; $5c33: $68
    ld [hl-], a                                   ; $5c34: $32
    or l                                          ; $5c35: $b5
    ld d, [hl]                                    ; $5c36: $56
    ld [hl], l                                    ; $5c37: $75
    ld b, [hl]                                    ; $5c38: $46
    ld d, d                                       ; $5c39: $52
    ld b, [hl]                                    ; $5c3a: $46
    ld h, $76                                     ; $5c3b: $26 $76
    or h                                          ; $5c3d: $b4
    cp b                                          ; $5c3e: $b8
    db $e3                                        ; $5c3f: $e3
    ret                                           ; $5c40: $c9


    add a                                         ; $5c41: $87
    ld l, l                                       ; $5c42: $6d
    ret z                                         ; $5c43: $c8

    or a                                          ; $5c44: $b7
    db $fd                                        ; $5c45: $fd
    db $fd                                        ; $5c46: $fd
    ld a, [bc]                                    ; $5c47: $0a
    or l                                          ; $5c48: $b5
    rst $38                                       ; $5c49: $ff
    ld [c], a                                     ; $5c4a: $e2
    ld h, b                                       ; $5c4b: $60
    xor $79                                       ; $5c4c: $ee $79
    ld [hl+], a                                   ; $5c4e: $22
    ret c                                         ; $5c4f: $d8

    add hl, hl                                    ; $5c50: $29
    cp a                                          ; $5c51: $bf
    ld b, a                                       ; $5c52: $47
    db $10                                        ; $5c53: $10
    push hl                                       ; $5c54: $e5
    ld [hl], c                                    ; $5c55: $71
    and d                                         ; $5c56: $a2
    add hl, de                                    ; $5c57: $19
    ld c, d                                       ; $5c58: $4a
    sbc c                                         ; $5c59: $99
    ld e, d                                       ; $5c5a: $5a
    pop af                                        ; $5c5b: $f1
    inc [hl]                                      ; $5c5c: $34
    xor b                                         ; $5c5d: $a8
    adc c                                         ; $5c5e: $89
    di                                            ; $5c5f: $f3
    inc hl                                        ; $5c60: $23
    ld d, h                                       ; $5c61: $54
    ld a, $da                                     ; $5c62: $3e $da
    sbc e                                         ; $5c64: $9b
    ld [hl], $04                                  ; $5c65: $36 $04
    ld [hl], $f2                                  ; $5c67: $36 $f2
    inc h                                         ; $5c69: $24
    ld c, d                                       ; $5c6a: $4a
    ld b, c                                       ; $5c6b: $41
    ld e, [hl]                                    ; $5c6c: $5e
    xor c                                         ; $5c6d: $a9
    add hl, hl                                    ; $5c6e: $29
    ld h, l                                       ; $5c6f: $65
    ld [c], a                                     ; $5c70: $e2
    ld b, e                                       ; $5c71: $43
    ld a, a                                       ; $5c72: $7f
    cp e                                          ; $5c73: $bb
    add hl, hl                                    ; $5c74: $29
    rra                                           ; $5c75: $1f
    ld [hl], l                                    ; $5c76: $75
    xor c                                         ; $5c77: $a9
    ld h, [hl]                                    ; $5c78: $66
    di                                            ; $5c79: $f3
    and h                                         ; $5c7a: $a4
    ld e, h                                       ; $5c7b: $5c
    ld [hl], l                                    ; $5c7c: $75
    dec de                                        ; $5c7d: $1b
    ld sp, hl                                     ; $5c7e: $f9
    ld d, b                                       ; $5c7f: $50
    ld sp, hl                                     ; $5c80: $f9
    jr c, jr_041_5cfe                             ; $5c81: $38 $7b

    ld a, [c]                                     ; $5c83: $f2
    sbc c                                         ; $5c84: $99
    cp a                                          ; $5c85: $bf
    ld c, a                                       ; $5c86: $4f
    sbc e                                         ; $5c87: $9b
    ld h, e                                       ; $5c88: $63
    dec b                                         ; $5c89: $05
    ld d, c                                       ; $5c8a: $51
    ld b, e                                       ; $5c8b: $43
    ld a, [de]                                    ; $5c8c: $1a
    ld a, [bc]                                    ; $5c8d: $0a
    ld e, a                                       ; $5c8e: $5f
    call nc, Call_041_421b                        ; $5c8f: $d4 $1b $42
    push bc                                       ; $5c92: $c5
    db $e3                                        ; $5c93: $e3
    scf                                           ; $5c94: $37
    db $db                                        ; $5c95: $db
    ld h, a                                       ; $5c96: $67
    sbc h                                         ; $5c97: $9c
    di                                            ; $5c98: $f3
    rst $18                                       ; $5c99: $df
    di                                            ; $5c9a: $f3
    rst $30                                       ; $5c9b: $f7
    dec hl                                        ; $5c9c: $2b
    sbc [hl]                                      ; $5c9d: $9e
    ld d, e                                       ; $5c9e: $53
    inc a                                         ; $5c9f: $3c
    ld l, d                                       ; $5ca0: $6a
    add h                                         ; $5ca1: $84
    jp z, Jump_041_7967                           ; $5ca2: $ca $67 $79

    sbc e                                         ; $5ca5: $9b
    db $fd                                        ; $5ca6: $fd
    ld d, c                                       ; $5ca7: $51
    ld e, $63                                     ; $5ca8: $1e $63
    ld [$b504], a                                 ; $5caa: $ea $04 $b5
    ld d, [hl]                                    ; $5cad: $56
    sbc [hl]                                      ; $5cae: $9e
    inc hl                                        ; $5caf: $23
    ld d, e                                       ; $5cb0: $53
    call c, Call_041_7f64                         ; $5cb1: $dc $64 $7f
    xor d                                         ; $5cb4: $aa
    ld a, e                                       ; $5cb5: $7b
    ld e, l                                       ; $5cb6: $5d
    xor d                                         ; $5cb7: $aa
    adc a                                         ; $5cb8: $8f
    adc h                                         ; $5cb9: $8c
    ld h, h                                       ; $5cba: $64
    ld a, a                                       ; $5cbb: $7f
    sbc b                                         ; $5cbc: $98
    ld a, [hl]                                    ; $5cbd: $7e
    cp a                                          ; $5cbe: $bf
    ld [bc], a                                    ; $5cbf: $02
    ld [hl], l                                    ; $5cc0: $75
    ld b, [hl]                                    ; $5cc1: $46
    sub a                                         ; $5cc2: $97
    ld [$9652], a                                 ; $5cc3: $ea $52 $96
    ld a, e                                       ; $5cc6: $7b
    add a                                         ; $5cc7: $87
    ld a, [hl]                                    ; $5cc8: $7e
    dec b                                         ; $5cc9: $05
    ld [hl], l                                    ; $5cca: $75
    ld b, [hl]                                    ; $5ccb: $46
    ld d, d                                       ; $5ccc: $52
    ld a, [hl]                                    ; $5ccd: $7e
    ld sp, $bf5c                                  ; $5cce: $31 $5c $bf
    ld [bc], a                                    ; $5cd1: $02
    ld [hl], l                                    ; $5cd2: $75
    ld l, l                                       ; $5cd3: $6d
    ret z                                         ; $5cd4: $c8

Call_041_5cd5:
    adc a                                         ; $5cd5: $8f
    dec de                                        ; $5cd6: $1b
    adc c                                         ; $5cd7: $89
    ld b, a                                       ; $5cd8: $47
    ld l, e                                       ; $5cd9: $6b
    xor a                                         ; $5cda: $af
    rst $10                                       ; $5cdb: $d7
    ld h, e                                       ; $5cdc: $63
    inc a                                         ; $5cdd: $3c
    ld a, [$7eb4]                                 ; $5cde: $fa $b4 $7e
    add hl, hl                                    ; $5ce1: $29
    rst $20                                       ; $5ce2: $e7
    xor b                                         ; $5ce3: $a8
    ld c, l                                       ; $5ce4: $4d
    ld hl, sp+$52                                 ; $5ce5: $f8 $52
    ld l, $af                                     ; $5ce7: $2e $af
    call nc, $f439                                ; $5ce9: $d4 $39 $f4
    dec hl                                        ; $5cec: $2b
    ld [hl], l                                    ; $5ced: $75
    ld b, [hl]                                    ; $5cee: $46
    ld [hl+], a                                   ; $5cef: $22
    adc b                                         ; $5cf0: $88
    ld a, a                                       ; $5cf1: $7f
    ld [hl], d                                    ; $5cf2: $72
    ld a, [bc]                                    ; $5cf3: $0a
    rst $18                                       ; $5cf4: $df
    xor a                                         ; $5cf5: $af
    sbc [hl]                                      ; $5cf6: $9e
    rst $30                                       ; $5cf7: $f7
    db $d3                                        ; $5cf8: $d3
    xor a                                         ; $5cf9: $af
    sbc [hl]                                      ; $5cfa: $9e
    cp a                                          ; $5cfb: $bf
    ld d, b                                       ; $5cfc: $50
    ld c, [hl]                                    ; $5cfd: $4e

jr_041_5cfe:
    db $eb                                        ; $5cfe: $eb
    or $6e                                        ; $5cff: $f6 $6e
    db $e4                                        ; $5d01: $e4
    ld c, d                                       ; $5d02: $4a
    call $ad15                                    ; $5d03: $cd $15 $ad
    ld b, c                                       ; $5d06: $41
    ld c, b                                       ; $5d07: $48
    ld [$c9e5], sp                                ; $5d08: $08 $e5 $c9
    and a                                         ; $5d0b: $a7
    dec l                                         ; $5d0c: $2d
    dec sp                                        ; $5d0d: $3b
    rst $28                                       ; $5d0e: $ef
    adc b                                         ; $5d0f: $88
    ld a, [de]                                    ; $5d10: $1a
    dec de                                        ; $5d11: $1b
    ld e, l                                       ; $5d12: $5d
    call c, $f4db                                 ; $5d13: $dc $db $f4
    ld l, c                                       ; $5d16: $69
    ld b, e                                       ; $5d17: $43
    ret c                                         ; $5d18: $d8

    ld a, $0b                                     ; $5d19: $3e $0b
    dec [hl]                                      ; $5d1b: $35
    db $f4                                        ; $5d1c: $f4
    dec hl                                        ; $5d1d: $2b
    sbc [hl]                                      ; $5d1e: $9e
    rst $30                                       ; $5d1f: $f7
    db $d3                                        ; $5d20: $d3
    xor a                                         ; $5d21: $af
    xor l                                         ; $5d22: $ad
    ld b, c                                       ; $5d23: $41
    ld c, b                                       ; $5d24: $48
    ld [$89e5], sp                                ; $5d25: $08 $e5 $89
    ld h, b                                       ; $5d28: $60
    rst $28                                       ; $5d29: $ef
    adc a                                         ; $5d2a: $8f
    rst $20                                       ; $5d2b: $e7
    sub a                                         ; $5d2c: $97
    adc a                                         ; $5d2d: $8f
    cp d                                          ; $5d2e: $ba
    or h                                          ; $5d2f: $b4

Call_041_5d30:
    ld h, l                                       ; $5d30: $65
    rst $20                                       ; $5d31: $e7
    dec e                                         ; $5d32: $1d
    ld d, c                                       ; $5d33: $51
    ld h, e                                       ; $5d34: $63
    db $d3                                        ; $5d35: $d3
    and a                                         ; $5d36: $a7
    dec c                                         ; $5d37: $0d
    ld h, c                                       ; $5d38: $61
    ld a, e                                       ; $5d39: $7b
    ld e, l                                       ; $5d3a: $5d
    call c, $f4db                                 ; $5d3b: $dc $db $f4
    dec hl                                        ; $5d3e: $2b
    ld [hl], l                                    ; $5d3f: $75
    ld b, [hl]                                    ; $5d40: $46
    and d                                         ; $5d41: $a2
    xor [hl]                                      ; $5d42: $ae
    add d                                         ; $5d43: $82

Jump_041_5d44:
    ldh a, [$b9]                                  ; $5d44: $f0 $b9
    scf                                           ; $5d46: $37

Jump_041_5d47:
    add $fe                                       ; $5d47: $c6 $fe
    sbc d                                         ; $5d49: $9a
    ld l, c                                       ; $5d4a: $69
    rst $28                                       ; $5d4b: $ef
    or e                                          ; $5d4c: $b3
    cp h                                          ; $5d4d: $bc
    call $28fe                                    ; $5d4e: $cd $fe $28
    adc a                                         ; $5d51: $8f
    ld sp, $8275                                  ; $5d52: $31 $75 $82
    call nc, $8788                                ; $5d55: $d4 $88 $87
    rst $20                                       ; $5d58: $e7
    cpl                                           ; $5d59: $2f
    sub h                                         ; $5d5a: $94
    db $d3                                        ; $5d5b: $d3
    cp d                                          ; $5d5c: $ba
    cp l                                          ; $5d5d: $bd
    dec de                                        ; $5d5e: $1b
    cp c                                          ; $5d5f: $b9
    ld [c], a                                     ; $5d60: $e2
    pop de                                        ; $5d61: $d1
    xor a                                         ; $5d62: $af
    ld l, l                                       ; $5d63: $6d
    ld [$67db], sp                                ; $5d64: $08 $db $67
    and c                                         ; $5d67: $a1
    ld b, $5d                                     ; $5d68: $06 $5d
    call c, $f4db                                 ; $5d6a: $dc $db $f4
    dec hl                                        ; $5d6d: $2b
    xor l                                         ; $5d6e: $ad
    ld b, c                                       ; $5d6f: $41
    ld c, b                                       ; $5d70: $48
    ld [$c9e5], sp                                ; $5d71: $08 $e5 $c9
    and a                                         ; $5d74: $a7
    dec l                                         ; $5d75: $2d
    dec sp                                        ; $5d76: $3b
    rst $28                                       ; $5d77: $ef
    adc b                                         ; $5d78: $88
    ld a, [de]                                    ; $5d79: $1a
    dec de                                        ; $5d7a: $1b
    ld e, l                                       ; $5d7b: $5d
    ld l, d                                       ; $5d7c: $6a
    cp a                                          ; $5d7d: $bf
    add hl, de                                    ; $5d7e: $19
    add c                                         ; $5d7f: $81
    sbc d                                         ; $5d80: $9a
    ld l, c                                       ; $5d81: $69
    db $fd                                        ; $5d82: $fd
    cpl                                           ; $5d83: $2f
    ld d, h                                       ; $5d84: $54
    inc a                                         ; $5d85: $3c
    add $39                                       ; $5d86: $c6 $39
    rst $38                                       ; $5d88: $ff
    dec a                                         ; $5d89: $3d
    ld a, a                                       ; $5d8a: $7f
    ld c, [hl]                                    ; $5d8b: $4e
    and d                                         ; $5d8c: $a2
    sbc l                                         ; $5d8d: $9d
    ld c, l                                       ; $5d8e: $4d
    cp a                                          ; $5d8f: $bf
    ld [bc], a                                    ; $5d90: $02
    cp [hl]                                       ; $5d91: $be
    inc hl                                        ; $5d92: $23
    inc de                                        ; $5d93: $13
    cpl                                           ; $5d94: $2f
    or $39                                        ; $5d95: $f6 $39
    ld b, h                                       ; $5d97: $44

Call_041_5d98:
    ld e, l                                       ; $5d98: $5d
    ld d, b                                       ; $5d99: $50
    ld a, [bc]                                    ; $5d9a: $0a
    inc c                                         ; $5d9b: $0c
    pop af                                        ; $5d9c: $f1
    and c                                         ; $5d9d: $a1
    and a                                         ; $5d9e: $a7
    adc e                                         ; $5d9f: $8b
    rst $30                                       ; $5da0: $f7
    db $e4                                        ; $5da1: $e4
    ld [hl], a                                    ; $5da2: $77
    dec b                                         ; $5da3: $05
    ld h, c                                       ; $5da4: $61
    db $f4                                        ; $5da5: $f4
    dec hl                                        ; $5da6: $2b
    xor l                                         ; $5da7: $ad
    rrca                                          ; $5da8: $0f
    adc c                                         ; $5da9: $89
    inc d                                         ; $5daa: $14
    cp $cb                                        ; $5dab: $fe $cb

jr_041_5dad:
    adc e                                         ; $5dad: $8b
    ld a, d                                       ; $5dae: $7a
    ld d, c                                       ; $5daf: $51
    ld d, e                                       ; $5db0: $53
    dec hl                                        ; $5db1: $2b
    db $ed                                        ; $5db2: $ed
    push de                                       ; $5db3: $d5
    rla                                           ; $5db4: $17
    rst $20                                       ; $5db5: $e7
    ld d, c                                       ; $5db6: $51
    inc hl                                        ; $5db7: $23
    or a                                          ; $5db8: $b7
    and e                                         ; $5db9: $a3
    add $aa                                       ; $5dba: $c6 $aa

jr_041_5dbc:
    db $e3                                        ; $5dbc: $e3
    or c                                          ; $5dbd: $b1
    sbc e                                         ; $5dbe: $9b
    jr z, jr_041_5dad                             ; $5dbf: $28 $ec

    adc l                                         ; $5dc1: $8d
    ret c                                         ; $5dc2: $d8

    ld l, e                                       ; $5dc3: $6b
    ld c, a                                       ; $5dc4: $4f
    inc h                                         ; $5dc5: $24
    and d                                         ; $5dc6: $a2

Jump_041_5dc7:
    ld h, [hl]                                    ; $5dc7: $66
    jp c, $bd8e                                   ; $5dc8: $da $8e $bd

    or $44                                        ; $5dcb: $f6 $44
    ld [c], a                                     ; $5dcd: $e2
    ld b, l                                       ; $5dce: $45
    ld b, [hl]                                    ; $5dcf: $46
    ld d, d                                       ; $5dd0: $52
    ld b, [hl]                                    ; $5dd1: $46
    ld h, $5f                                     ; $5dd2: $26 $5f
    ld d, l                                       ; $5dd4: $55
    jr z, jr_041_5dbc                             ; $5dd5: $28 $e5

    ld l, d                                       ; $5dd7: $6a
    xor [hl]                                      ; $5dd8: $ae
    dec e                                         ; $5dd9: $1d
    sbc l                                         ; $5dda: $9d
    dec de                                        ; $5ddb: $1b
    ld d, e                                       ; $5ddc: $53
    rst $08                                       ; $5ddd: $cf
    rla                                           ; $5dde: $17
    ld [hl], l                                    ; $5ddf: $75
    pop de                                        ; $5de0: $d1
    add sp, -$65                                  ; $5de1: $e8 $9b
    ld a, d                                       ; $5de3: $7a
    ld b, e                                       ; $5de4: $43
    or $47                                        ; $5de5: $f6 $47
    rst $38                                       ; $5de7: $ff
    adc $0f                                       ; $5de8: $ce $0f
    rst $30                                       ; $5dea: $f7
    ld d, c                                       ; $5deb: $51
    ret nc                                        ; $5dec: $d0

    or $e5                                        ; $5ded: $f6 $e5
    ld b, l                                       ; $5def: $45
    xor b                                         ; $5df0: $a8
    cp b                                          ; $5df1: $b8
    db $eb                                        ; $5df2: $eb
    ld d, a                                       ; $5df3: $57
    cp [hl]                                       ; $5df4: $be
    ld [$bb8a], sp                                ; $5df5: $08 $8a $bb
    xor b                                         ; $5df8: $a8
    ld c, a                                       ; $5df9: $4f
    ld e, e                                       ; $5dfa: $5b
    halt                                          ; $5dfb: $76
    sbc $11                                       ; $5dfc: $de $11
    dec [hl]                                      ; $5dfe: $35
    ld [hl], $51                                  ; $5dff: $36 $51
    rla                                           ; $5e01: $17
    add hl, de                                    ; $5e02: $19
    ld h, [hl]                                    ; $5e03: $66
    add sp, $62                                   ; $5e04: $e8 $62
    ld d, a                                       ; $5e06: $57
    sbc h                                         ; $5e07: $9c
    rst $38                                       ; $5e08: $ff
    and d                                         ; $5e09: $a2
    ld l, $cb                                     ; $5e0a: $2e $cb
    sub a                                         ; $5e0c: $97
    ld a, [c]                                     ; $5e0d: $f2
    add [hl]                                      ; $5e0e: $86
    ld l, b                                       ; $5e0f: $68
    db $f4                                        ; $5e10: $f4
    cpl                                           ; $5e11: $2f
    dec b                                         ; $5e12: $05
    halt                                          ; $5e13: $76
    ld a, l                                       ; $5e14: $7d
    rst $18                                       ; $5e15: $df
    and a                                         ; $5e16: $a7
    ld a, [$d994]                                 ; $5e17: $fa $94 $d9
    sub e                                         ; $5e1a: $93
    add d                                         ; $5e1b: $82
    ldh a, [$c5]                                  ; $5e1c: $f0 $c5
    ei                                            ; $5e1e: $fb
    sub a                                         ; $5e1f: $97
    ld [hl-], a                                   ; $5e20: $32
    or [hl]                                       ; $5e21: $b6
    jr @+$46                                      ; $5e22: $18 $44

    pop bc                                        ; $5e24: $c1
    ret nc                                        ; $5e25: $d0

    xor a                                         ; $5e26: $af
    cp [hl]                                       ; $5e27: $be
    dec bc                                        ; $5e28: $0b
    ld l, h                                       ; $5e29: $6c

jr_041_5e2a:
    ld [c], a                                     ; $5e2a: $e2
    db $fc                                        ; $5e2b: $fc
    ld [$e279], sp                                ; $5e2c: $08 $79 $e2
    ld h, b                                       ; $5e2f: $60
    xor b                                         ; $5e30: $a8
    ld h, $b7                                     ; $5e31: $26 $b7
    db $e3                                        ; $5e33: $e3
    cp [hl]                                       ; $5e34: $be
    ld e, d                                       ; $5e35: $5a
    ld l, [hl]                                    ; $5e36: $6e
    db $e4                                        ; $5e37: $e4
    ld a, c                                       ; $5e38: $79
    ld [hl], h                                    ; $5e39: $74
    pop af                                        ; $5e3a: $f1
    and c                                         ; $5e3b: $a1
    jr z, jr_041_5e2a                             ; $5e3c: $28 $ec

    pop af                                        ; $5e3e: $f1
    ld [hl+], a                                   ; $5e3f: $22
    db $d3                                        ; $5e40: $d3
    rst $00                                       ; $5e41: $c7
    rla                                           ; $5e42: $17
    or [hl]                                       ; $5e43: $b6
    add b                                         ; $5e44: $80
    add h                                         ; $5e45: $84
    add hl, hl                                    ; $5e46: $29
    call nz, Call_000_21ff                        ; $5e47: $c4 $ff $21
    ld c, a                                       ; $5e4a: $4f
    ld a, b                                       ; $5e4b: $78
    or d                                          ; $5e4c: $b2
    ccf                                           ; $5e4d: $3f
    sbc [hl]                                      ; $5e4e: $9e
    or e                                          ; $5e4f: $b3
    inc l                                         ; $5e50: $2c
    rra                                           ; $5e51: $1f
    add l                                         ; $5e52: $85
    cp l                                          ; $5e53: $bd
    ld de, $2fcf                                  ; $5e54: $11 $cf $2f
    ret z                                         ; $5e57: $c8

    ld [bc], a                                    ; $5e58: $02
    ld c, e                                       ; $5e59: $4b
    pop bc                                        ; $5e5a: $c1
    push hl                                       ; $5e5b: $e5
    ld b, l                                       ; $5e5c: $45
    ld l, $ea                                     ; $5e5d: $2e $ea
    ld [c], a                                     ; $5e5f: $e2
    cp l                                          ; $5e60: $bd
    db $fd                                        ; $5e61: $fd
    dec [hl]                                      ; $5e62: $35
    ld d, a                                       ; $5e63: $57
    ld [hl], l                                    ; $5e64: $75
    jp hl                                         ; $5e65: $e9


    ld e, h                                       ; $5e66: $5c
    call c, $db08                                 ; $5e67: $dc $08 $db
    db $ec                                        ; $5e6a: $ec
    db $fd                                        ; $5e6b: $fd
    add [hl]                                      ; $5e6c: $86
    ld e, h                                       ; $5e6d: $5c
    ld d, $2a                                     ; $5e6e: $16 $2a
    ld a, h                                       ; $5e70: $7c
    ld d, c                                       ; $5e71: $51
    ret c                                         ; $5e72: $d8

    ei                                            ; $5e73: $fb
    jp $e3f4                                      ; $5e74: $c3 $f4 $e3


    ld sp, hl                                     ; $5e77: $f9
    push hl                                       ; $5e78: $e5
    and e                                         ; $5e79: $a3
    pop de                                        ; $5e7a: $d1
    scf                                           ; $5e7b: $37
    push af                                       ; $5e7c: $f5
    and d                                         ; $5e7d: $a2
    ld h, $1b                                     ; $5e7e: $26 $1b
    ld [hl], c                                    ; $5e80: $71
    dec de                                        ; $5e81: $1b
    and l                                         ; $5e82: $a5
    sbc h                                         ; $5e83: $9c
    ld [hl-], a                                   ; $5e84: $32
    ld b, h                                       ; $5e85: $44
    or b                                          ; $5e86: $b0
    ld d, e                                       ; $5e87: $53
    ld a, [hl]                                    ; $5e88: $7e
    adc a                                         ; $5e89: $8f
    jr nz, @-$34                                  ; $5e8a: $20 $ca

    db $e3                                        ; $5e8c: $e3
    ld b, h                                       ; $5e8d: $44
    inc sp                                        ; $5e8e: $33
    sub h                                         ; $5e8f: $94
    ld [hl-], a                                   ; $5e90: $32
    db $fd                                        ; $5e91: $fd
    ld a, [bc]                                    ; $5e92: $0a
    ld [hl], l                                    ; $5e93: $75
    or b                                          ; $5e94: $b0
    rst $30                                       ; $5e95: $f7
    and a                                         ; $5e96: $a7
    db $fc                                        ; $5e97: $fc
    cp $a8                                        ; $5e98: $fe $a8
    adc e                                         ; $5e9a: $8b
    dec e                                         ; $5e9b: $1d
    db $db                                        ; $5e9c: $db
    sub b                                         ; $5e9d: $90
    inc de                                        ; $5e9e: $13
    dec b                                         ; $5e9f: $05
    ld l, l                                       ; $5ea0: $6d
    ld e, a                                       ; $5ea1: $5f
    ld c, [hl]                                    ; $5ea2: $4e
    ld a, [bc]                                    ; $5ea3: $0a
    inc [hl]                                      ; $5ea4: $34
    ld a, c                                       ; $5ea5: $79
    pop hl                                        ; $5ea6: $e1
    adc e                                         ; $5ea7: $8b
    ld a, [de]                                    ; $5ea8: $1a
    jp nc, $d7a0                                  ; $5ea9: $d2 $a0 $d7

    inc hl                                        ; $5eac: $23
    jr z, jr_041_5eb4                             ; $5ead: $28 $05

    and $2e                                       ; $5eaf: $e6 $2e
    ld d, h                                       ; $5eb1: $54
    ld a, $c5                                     ; $5eb2: $3e $c5

jr_041_5eb4:
    dec a                                         ; $5eb4: $3d
    rst $08                                       ; $5eb5: $cf
    cp $a8                                        ; $5eb6: $fe $a8
    bit 5, b                                      ; $5eb8: $cb $68
    ld a, [de]                                    ; $5eba: $1a
    sbc b                                         ; $5ebb: $98
    cpl                                           ; $5ebc: $2f
    dec b                                         ; $5ebd: $05
    ld a, $14                                     ; $5ebe: $3e $14
    add l                                         ; $5ec0: $85
    db $ed                                        ; $5ec1: $ed
    ld sp, hl                                     ; $5ec2: $f9
    ld a, [$baf8]                                 ; $5ec3: $fa $f8 $ba
    xor c                                         ; $5ec6: $a9
    ld a, [hl+]                                   ; $5ec7: $2a
    jr nc, jr_041_5f19                            ; $5ec8: $30 $4f

    sbc h                                         ; $5eca: $9c
    rra                                           ; $5ecb: $1f
    xor c                                         ; $5ecc: $a9
    sub c                                         ; $5ecd: $91
    push hl                                       ; $5ece: $e5
    jr nz, jr_041_5ef0                            ; $5ecf: $20 $1f

    ld [hl], l                                    ; $5ed1: $75
    pop de                                        ; $5ed2: $d1
    ld h, e                                       ; $5ed3: $63
    ld l, a                                       ; $5ed4: $6f
    and h                                         ; $5ed5: $a4
    adc h                                         ; $5ed6: $8c
    dec l                                         ; $5ed7: $2d
    add [hl]                                      ; $5ed8: $86
    add d                                         ; $5ed9: $82
    ld a, [hl]                                    ; $5eda: $7e
    dec b                                         ; $5edb: $05
    db $ed                                        ; $5edc: $ed
    ld a, l                                       ; $5edd: $7d
    ld h, h                                       ; $5ede: $64
    ld a, [bc]                                    ; $5edf: $0a
    db $db                                        ; $5ee0: $db
    ld h, a                                       ; $5ee1: $67
    or c                                          ; $5ee2: $b1
    xor e                                         ; $5ee3: $ab
    ld a, $1b                                     ; $5ee4: $3e $1b
    call nz, Call_041_411b                        ; $5ee6: $c4 $1b $41
    ld l, d                                       ; $5ee9: $6a
    call nz, Call_041_6287                        ; $5eea: $c4 $87 $62
    rst $28                                       ; $5eed: $ef
    adc a                                         ; $5eee: $8f
    cp d                                          ; $5eef: $ba

jr_041_5ef0:
    call nc, $e21d                                ; $5ef0: $d4 $1d $e2
    adc l                                         ; $5ef3: $8d
    ld e, h                                       ; $5ef4: $5c
    call c, $6e48                                 ; $5ef5: $dc $48 $6e
    ld h, a                                       ; $5ef8: $67
    or c                                          ; $5ef9: $b1
    pop af                                        ; $5efa: $f1
    and d                                         ; $5efb: $a2
    sub h                                         ; $5efc: $94
    or c                                          ; $5efd: $b1
    call nc, $1e3d                                ; $5efe: $d4 $3d $1e
    jp hl                                         ; $5f01: $e9


    ei                                            ; $5f02: $fb
    ld a, $88                                     ; $5f03: $3e $88
    dec de                                        ; $5f05: $1b
    ret                                           ; $5f06: $c9


    push bc                                       ; $5f07: $c5
    rla                                           ; $5f08: $17
    or [hl]                                       ; $5f09: $b6
    add b                                         ; $5f0a: $80
    add h                                         ; $5f0b: $84
    add hl, hl                                    ; $5f0c: $29
    call nc, $015c                                ; $5f0d: $d4 $5c $01
    sbc l                                         ; $5f10: $9d
    ld b, d                                       ; $5f11: $42
    inc d                                         ; $5f12: $14
    jp z, $cd45                                   ; $5f13: $ca $45 $cd

    halt                                          ; $5f16: $76
    rst $10                                       ; $5f17: $d7
    and a                                         ; $5f18: $a7

jr_041_5f19:
    xor [hl]                                      ; $5f19: $ae
    add c                                         ; $5f1a: $81
    ld c, b                                       ; $5f1b: $48
    cp h                                          ; $5f1c: $bc
    ret c                                         ; $5f1d: $d8

    ld l, e                                       ; $5f1e: $6b
    scf                                           ; $5f1f: $37
    ld [bc], a                                    ; $5f20: $02
    ld [hl], d                                    ; $5f21: $72
    or $f5                                        ; $5f22: $f6 $f5
    ld l, c                                       ; $5f24: $69
    di                                            ; $5f25: $f3
    xor h                                         ; $5f26: $ac
    ld a, d                                       ; $5f27: $7a
    sbc [hl]                                      ; $5f28: $9e
    ld d, $d3                                     ; $5f29: $16 $d3
    and [hl]                                      ; $5f2b: $a6
    ld b, c                                       ; $5f2c: $41
    dec b                                         ; $5f2d: $05
    ld l, c                                       ; $5f2e: $69
    dec bc                                        ; $5f2f: $0b
    ld h, e                                       ; $5f30: $63
    ld a, [de]                                    ; $5f31: $1a
    jp nc, $be19                                  ; $5f32: $d2 $19 $be

    ld l, h                                       ; $5f35: $6c
    db $10                                        ; $5f36: $10
    ld e, b                                       ; $5f37: $58
    ld bc, $ef6d                                  ; $5f38: $01 $6d $ef
    sub h                                         ; $5f3b: $94
    db $d3                                        ; $5f3c: $d3
    ld h, h                                       ; $5f3d: $64
    inc l                                         ; $5f3e: $2c
    ld l, l                                       ; $5f3f: $6d
    dec a                                         ; $5f40: $3d
    sub c                                         ; $5f41: $91
    ld hl, sp-$46                                 ; $5f42: $f8 $ba
    call c, Call_041_468e                         ; $5f44: $dc $8e $46
    rst $18                                       ; $5f47: $df
    call nc, $8cbd                                ; $5f48: $d4 $bd $8c
    ld l, $76                                     ; $5f4b: $2e $76
    ld l, [hl]                                    ; $5f4d: $6e
    ld c, h                                       ; $5f4e: $4c
    ld a, l                                       ; $5f4f: $7d
    ld a, $e4                                     ; $5f50: $3e $e4
    ld e, h                                       ; $5f52: $5c
    sbc b                                         ; $5f53: $98
    ld [hl-], a                                   ; $5f54: $32
    ld e, a                                       ; $5f55: $5f
    sbc h                                         ; $5f56: $9c
    rra                                           ; $5f57: $1f
    xor c                                         ; $5f58: $a9
    ld de, $c0f2                                  ; $5f59: $11 $f2 $c0
    rst $08                                       ; $5f5c: $cf
    inc de                                        ; $5f5d: $13
    rst $28                                       ; $5f5e: $ef
    dec de                                        ; $5f5f: $1b
    and d                                         ; $5f60: $a2
    cp l                                          ; $5f61: $bd
    ld hl, $52ea                                  ; $5f62: $21 $ea $52
    cp l                                          ; $5f65: $bd
    halt                                          ; $5f66: $76
    rra                                           ; $5f67: $1f
    or [hl]                                       ; $5f68: $b6
    adc a                                         ; $5f69: $8f
    db $db                                        ; $5f6a: $db
    ld e, a                                       ; $5f6b: $5f
    jp z, Jump_041_7045                           ; $5f6c: $ca $45 $70

    ld [hl], c                                    ; $5f6f: $71
    ld h, e                                       ; $5f70: $63
    halt                                          ; $5f71: $76
    ld l, d                                       ; $5f72: $6a
    xor [hl]                                      ; $5f73: $ae
    ld c, a                                       ; $5f74: $4f
    db $db                                        ; $5f75: $db
    ld h, c                                       ; $5f76: $61
    ei                                            ; $5f77: $fb
    and d                                         ; $5f78: $a2
    add hl, de                                    ; $5f79: $19
    ld c, d                                       ; $5f7a: $4a
    add hl, de                                    ; $5f7b: $19
    cp e                                          ; $5f7c: $bb
    sub h                                         ; $5f7d: $94
    or a                                          ; $5f7e: $b7
    rla                                           ; $5f7f: $17
    sbc c                                         ; $5f80: $99
    inc l                                         ; $5f81: $2c
    ld d, h                                       ; $5f82: $54
    adc [hl]                                      ; $5f83: $8e
    cpl                                           ; $5f84: $2f
    ld l, [hl]                                    ; $5f85: $6e
    inc h                                         ; $5f86: $24
    ld d, h                                       ; $5f87: $54
    ld a, $0b                                     ; $5f88: $3e $0b
    db $e4                                        ; $5f8a: $e4
    rst $30                                       ; $5f8b: $f7
    ld de, $4f89                                  ; $5f8c: $11 $89 $4f
    cp h                                          ; $5f8f: $bc
    ld de, $5d44                                  ; $5f90: $11 $44 $5d
    ld d, $2a                                     ; $5f93: $16 $2a
    ld a, h                                       ; $5f95: $7c
    ld e, c                                       ; $5f96: $59
    ld h, b                                       ; $5f97: $60
    reti                                          ; $5f98: $d9


    sbc a                                         ; $5f99: $9f
    dec a                                         ; $5f9a: $3d
    ld [hl], $f1                                  ; $5f9b: $36 $f1
    db $fc                                        ; $5f9d: $fc
    ld a, [c]                                     ; $5f9e: $f2
    db $fd                                        ; $5f9f: $fd
    ld a, [bc]                                    ; $5fa0: $0a
    db $ed                                        ; $5fa1: $ed
    ld a, c                                       ; $5fa2: $79
    cp h                                          ; $5fa3: $bc
    ld [hl], e                                    ; $5fa4: $73
    jr z, @+$67                                   ; $5fa5: $28 $65

    ld a, [c]                                     ; $5fa7: $f2
    ld a, e                                       ; $5fa8: $7b
    ld a, a                                       ; $5fa9: $7f

jr_041_5faa:
    cp h                                          ; $5faa: $bc
    ld h, e                                       ; $5fab: $63
    jr z, jr_041_5faa                             ; $5fac: $28 $fc

    pop af                                        ; $5fae: $f1
    and c                                         ; $5faf: $a1
    sub a                                         ; $5fb0: $97
    inc de                                        ; $5fb1: $13
    ld e, $93                                     ; $5fb2: $1e $93
    ld c, c                                       ; $5fb4: $49
    adc l                                         ; $5fb5: $8d
    inc d                                         ; $5fb6: $14
    ld d, h                                       ; $5fb7: $54
    adc e                                         ; $5fb8: $8b
    ld hl, $cd8b                                  ; $5fb9: $21 $8b $cd
    jp hl                                         ; $5fbc: $e9


    adc a                                         ; $5fbd: $8f
    daa                                           ; $5fbe: $27
    rra                                           ; $5fbf: $1f
    and [hl]                                      ; $5fc0: $a6
    call z, Call_041_6d17                         ; $5fc1: $cc $17 $6d
    ld e, a                                       ; $5fc4: $5f
    ld a, [hl]                                    ; $5fc5: $7e
    ld d, e                                       ; $5fc6: $53
    sub c                                         ; $5fc7: $91
    db $eb                                        ; $5fc8: $eb
    ld d, a                                       ; $5fc9: $57
    dec l                                         ; $5fca: $2d
    add a                                         ; $5fcb: $87
    inc a                                         ; $5fcc: $3c
    ldh a, [$f3]                                  ; $5fcd: $f0 $f3
    db $e4                                        ; $5fcf: $e4
    jp $f994                                      ; $5fd0: $c3 $94 $f9


    or d                                          ; $5fd3: $b2
    dec a                                         ; $5fd4: $3d
    sbc $39                                       ; $5fd5: $de $39
    sub h                                         ; $5fd7: $94
    ld [hl-], a                                   ; $5fd8: $32
    ld sp, hl                                     ; $5fd9: $f9
    dec e                                         ; $5fda: $1d
    scf                                           ; $5fdb: $37
    ld h, [hl]                                    ; $5fdc: $66
    and a                                         ; $5fdd: $a7
    and $26                                       ; $5fde: $e6 $26
    ld a, [bc]                                    ; $5fe0: $0a
    dec sp                                        ; $5fe1: $3b
    inc c                                         ; $5fe2: $0c
    inc hl                                        ; $5fe3: $23
    ld c, [hl]                                    ; $5fe4: $4e
    sub [hl]                                      ; $5fe5: $96
    ld a, e                                       ; $5fe6: $7b
    sbc c                                         ; $5fe7: $99
    ld a, h                                       ; $5fe8: $7c
    inc d                                         ; $5fe9: $14
    ld a, [bc]                                    ; $5fea: $0a
    db $db                                        ; $5feb: $db
    db $eb                                        ; $5fec: $eb
    ld a, [c]                                     ; $5fed: $f2
    xor c                                         ; $5fee: $a9
    jr nz, jr_041_6004                            ; $5fef: $20 $13

    rst $20                                       ; $5ff1: $e7
    ld b, a                                       ; $5ff2: $47
    ld h, h                                       ; $5ff3: $64
    inc h                                         ; $5ff4: $24
    ld a, [bc]                                    ; $5ff5: $0a
    push hl                                       ; $5ff6: $e5
    inc d                                         ; $5ff7: $14
    db $ec                                        ; $5ff8: $ec
    sbc [hl]                                      ; $5ff9: $9e
    ld de, $1bef                                  ; $5ffa: $11 $ef $1b
    ld b, d                                       ; $5ffd: $42
    push hl                                       ; $5ffe: $e5
    db $e3                                        ; $5fff: $e3
    dec a                                         ; $6000: $3d
    ld b, c                                       ; $6001: $41
    xor d                                         ; $6002: $aa
    reti                                          ; $6003: $d9


jr_041_6004:
    inc a                                         ; $6004: $3c
    ld d, c                                       ; $6005: $51
    or e                                          ; $6006: $b3
    rst $00                                       ; $6007: $c7
    and [hl]                                      ; $6008: $a6
    ld a, h                                       ; $6009: $7c
    sbc a                                         ; $600a: $9f
    ld [hl], $cf                                  ; $600b: $36 $cf
    xor d                                         ; $600d: $aa
    rst $20                                       ; $600e: $e7
    ld l, c                                       ; $600f: $69
    ld sp, $6ead                                  ; $6010: $31 $ad $6e
    dec a                                         ; $6013: $3d
    dec l                                         ; $6014: $2d
    pop af                                        ; $6015: $f1
    cp l                                          ; $6016: $bd
    dec c                                         ; $6017: $0d
    ld h, c                                       ; $6018: $61
    db $f4                                        ; $6019: $f4
    dec hl                                        ; $601a: $2b
    ld [hl], l                                    ; $601b: $75
    rst $18                                       ; $601c: $df
    ld h, [hl]                                    ; $601d: $66
    ld a, a                                       ; $601e: $7f
    sub h                                         ; $601f: $94
    rst $00                                       ; $6020: $c7
    sbc b                                         ; $6021: $98
    ld a, [hl-]                                   ; $6022: $3a
    ld b, c                                       ; $6023: $41
    adc e                                         ; $6024: $8b
    pop af                                        ; $6025: $f1
    db $fc                                        ; $6026: $fc
    add l                                         ; $6027: $85
    ld [hl], d                                    ; $6028: $72
    ld e, d                                       ; $6029: $5a
    or a                                          ; $602a: $b7
    ld [hl], a                                    ; $602b: $77
    inc hl                                        ; $602c: $23
    ld d, a                                       ; $602d: $57
    ld a, [$1d15]                                 ; $602e: $fa $15 $1d
    ld d, d                                       ; $6031: $52
    db $ec                                        ; $6032: $ec
    dec a                                         ; $6033: $3d
    xor c                                         ; $6034: $a9
    sub c                                         ; $6035: $91
    db $db                                        ; $6036: $db
    ld d, c                                       ; $6037: $51
    ld h, e                                       ; $6038: $63
    push de                                       ; $6039: $d5
    pop af                                        ; $603a: $f1
    ret c                                         ; $603b: $d8

    ld c, l                                       ; $603c: $4d
    inc d                                         ; $603d: $14
    ld l, $f6                                     ; $603e: $2e $f6
    jp c, $8913                                   ; $6040: $da $13 $89

    rst $10                                       ; $6043: $d7
    and a                                         ; $6044: $a7
    xor l                                         ; $6045: $ad
    ld a, l                                       ; $6046: $7d
    add hl, hl                                    ; $6047: $29
    ld c, h                                       ; $6048: $4c
    dec d                                         ; $6049: $15
    add h                                         ; $604a: $84
    cpl                                           ; $604b: $2f
    ld a, [bc]                                    ; $604c: $0a
    dec sp                                        ; $604d: $3b
    adc e                                         ; $604e: $8b
    ld e, l                                       ; $604f: $5d
    dec [hl]                                      ; $6050: $35
    ld a, c                                       ; $6051: $79
    sub c                                         ; $6052: $91
    adc c                                         ; $6053: $89
    ld a, [de]                                    ; $6054: $1a
    xor e                                         ; $6055: $ab
    ld b, [hl]                                    ; $6056: $46
    ld h, $bf                                     ; $6057: $26 $bf
    or e                                          ; $6059: $b3
    ret c                                         ; $605a: $d8

    ld d, l                                       ; $605b: $55
    sub e                                         ; $605c: $93
    ld a, l                                       ; $605d: $7d
    inc h                                         ; $605e: $24
    or $9e                                        ; $605f: $f6 $9e
    ld a, [hl]                                    ; $6061: $7e
    dec b                                         ; $6062: $05
    ld [hl], l                                    ; $6063: $75
    ld l, l                                       ; $6064: $6d
    ld a, [bc]                                    ; $6065: $0a
    inc [hl]                                      ; $6066: $34
    ld a, [hl-]                                   ; $6067: $3a
    ld [hl-], a                                   ; $6068: $32
    reti                                          ; $6069: $d9


    ret z                                         ; $606a: $c8

Call_041_606b:
    adc c                                         ; $606b: $89
    ld a, d                                       ; $606c: $7a
    db $ed                                        ; $606d: $ed
    db $e4                                        ; $606e: $e4
    ld d, d                                       ; $606f: $52
    add sp, -$22                                  ; $6070: $e8 $de
    rra                                           ; $6072: $1f
    ei                                            ; $6073: $fb
    push hl                                       ; $6074: $e5
    db $e4                                        ; $6075: $e4
    di                                            ; $6076: $f3
    inc h                                         ; $6077: $24
    add hl, bc                                    ; $6078: $09
    and c                                         ; $6079: $a1
    db $fc                                        ; $607a: $fc
    ld sp, hl                                     ; $607b: $f9
    cp l                                          ; $607c: $bd
    ccf                                           ; $607d: $3f
    ld l, l                                       ; $607e: $6d
    reti                                          ; $607f: $d9


    adc c                                         ; $6080: $89
    ld [hl], $cc                                  ; $6081: $36 $cc
    ld sp, hl                                     ; $6083: $f9
    call z, $fb02                                 ; $6084: $cc $02 $fb
    xor b                                         ; $6087: $a8

Jump_041_6088:
    bit 5, c                                      ; $6088: $cb $69
    ld [hl-], a                                   ; $608a: $32
    ld a, h                                       ; $608b: $7c
    xor c                                         ; $608c: $a9
    ld e, [hl]                                    ; $608d: $5e
    di                                            ; $608e: $f3
    ld e, a                                       ; $608f: $5f
    ld h, $85                                     ; $6090: $26 $85
    dec c                                         ; $6092: $0d
    sbc d                                         ; $6093: $9a
    rra                                           ; $6094: $1f
    ld d, c                                       ; $6095: $51
    cp a                                          ; $6096: $bf
    scf                                           ; $6097: $37
    jp nc, $f1aa                                  ; $6098: $d2 $aa $f1

    and l                                         ; $609b: $a5
    add e                                         ; $609c: $83
    ld [c], a                                     ; $609d: $e2
    xor b                                         ; $609e: $a8
    and c                                         ; $609f: $a1
    ld c, a                                       ; $60a0: $4f
    dec e                                         ; $60a1: $1d
    cp d                                          ; $60a2: $ba
    rst $30                                       ; $60a3: $f7
    and a                                         ; $60a4: $a7
    ld b, [hl]                                    ; $60a5: $46
    ld a, [bc]                                    ; $60a6: $0a
    ccf                                           ; $60a7: $3f
    ld c, a                                       ; $60a8: $4f
    ret c                                         ; $60a9: $d8

    sbc $4b                                       ; $60aa: $de $4b
    or l                                          ; $60ac: $b5
    rst $20                                       ; $60ad: $e7
    jp hl                                         ; $60ae: $e9


    db $d3                                        ; $60af: $d3
    xor d                                         ; $60b0: $aa
    db $10                                        ; $60b1: $10
    ld c, a                                       ; $60b2: $4f
    sub a                                         ; $60b3: $97
    db $fd                                        ; $60b4: $fd
    ld [hl], c                                    ; $60b5: $71
    ld e, a                                       ; $60b6: $5f
    pop bc                                        ; $60b7: $c1
    ld a, $ea                                     ; $60b8: $3e $ea
    ld d, d                                       ; $60ba: $52
    adc $51                                       ; $60bb: $ce $51
    inc bc                                        ; $60bd: $03
    sub c                                         ; $60be: $91
    ld hl, sp+$71                                 ; $60bf: $f8 $71
    ld a, [hl]                                    ; $60c1: $7e
    db $e4                                        ; $60c2: $e4
    ld h, d                                       ; $60c3: $62
    cp a                                          ; $60c4: $bf
    sbc h                                         ; $60c5: $9c
    inc a                                         ; $60c6: $3c
    adc a                                         ; $60c7: $8f
    ld e, l                                       ; $60c8: $5d
    sbc [hl]                                      ; $60c9: $9e
    inc b                                         ; $60ca: $04
    ld sp, hl                                     ; $60cb: $f9
    ld [hl-], a                                   ; $60cc: $32
    ld e, c                                       ; $60cd: $59
    inc c                                         ; $60ce: $0c
    ld h, l                                       ; $60cf: $65
    and d                                         ; $60d0: $a2
    ld l, $d5                                     ; $60d1: $2e $d5
    reti                                          ; $60d3: $d9


    rlca                                          ; $60d4: $07
    or $29                                        ; $60d5: $f6 $29
    db $fc                                        ; $60d7: $fc
    db $fc                                        ; $60d8: $fc
    add hl, hl                                    ; $60d9: $29
    inc h                                         ; $60da: $24
    dec e                                         ; $60db: $1d
    ld a, [hl]                                    ; $60dc: $7e
    cp $dc                                        ; $60dd: $fe $dc
    adc [hl]                                      ; $60df: $8e
    halt                                          ; $60e0: $76
    ld h, e                                       ; $60e1: $63
    ld [hl-], a                                   ; $60e2: $32
    add hl, hl                                    ; $60e3: $29
    adc h                                         ; $60e4: $8c
    ld d, d                                       ; $60e5: $52
    and [hl]                                      ; $60e6: $a6
    adc a                                         ; $60e7: $8f
    ld b, a                                       ; $60e8: $47
    ei                                            ; $60e9: $fb
    rra                                           ; $60ea: $1f
    ld a, [hl]                                    ; $60eb: $7e
    pop hl                                        ; $60ec: $e1
    adc c                                         ; $60ed: $89
    adc h                                         ; $60ee: $8c
    add h                                         ; $60ef: $84
    cp h                                          ; $60f0: $bc
    xor b                                         ; $60f1: $a8
    inc sp                                        ; $60f2: $33
    ld d, h                                       ; $60f3: $54
    inc de                                        ; $60f4: $13
    rst $20                                       ; $60f5: $e7
    ld b, a                                       ; $60f6: $47
    call c, $8f94                                 ; $60f7: $dc $94 $8f
    dec de                                        ; $60fa: $1b
    ld h, c                                       ; $60fb: $61
    ld [$6fc8], sp                                ; $60fc: $08 $c8 $6f
    add hl, hl                                    ; $60ff: $29
    ld a, $f4                                     ; $6100: $3e $f4
    ld b, h                                       ; $6102: $44
    sbc l                                         ; $6103: $9d
    ld l, $05                                     ; $6104: $2e $05
    sub c                                         ; $6106: $91
    sub c                                         ; $6107: $91
    sub b                                         ; $6108: $90
    or e                                          ; $6109: $b3
    pop bc                                        ; $610a: $c1
    adc b                                         ; $610b: $88
    ld b, [hl]                                    ; $610c: $46
    rst $38                                       ; $610d: $ff
    ld [hl], h                                    ; $610e: $74
    sub c                                         ; $610f: $91
    sub c                                         ; $6110: $91
    ld a, b                                       ; $6111: $78
    rst $08                                       ; $6112: $cf
    cp c                                          ; $6113: $b9
    ld h, a                                       ; $6114: $67
    db $e4                                        ; $6115: $e4
    halt                                          ; $6116: $76
    db $e4                                        ; $6117: $e4
    set 4, h                                      ; $6118: $cb $e4
    inc h                                         ; $611a: $24
    ld a, $14                                     ; $611b: $3e $14
    add l                                         ; $611d: $85
    ccf                                           ; $611e: $3f
    sbc $77                                       ; $611f: $de $77
    ld c, $a2                                     ; $6121: $0e $a2
    sbc $a3                                       ; $6123: $de $a3
    push bc                                       ; $6125: $c5
    cp b                                          ; $6126: $b8
    add hl, hl                                    ; $6127: $29
    push af                                       ; $6128: $f5
    push bc                                       ; $6129: $c5
    rst $38                                       ; $612a: $ff
    ld d, c                                       ; $612b: $51
    rst $20                                       ; $612c: $e7
    db $fc                                        ; $612d: $fc
    rst $30                                       ; $612e: $f7
    or $3c                                        ; $612f: $f6 $3c
    add hl, de                                    ; $6131: $19
    ld c, l                                       ; $6132: $4d
    cp e                                          ; $6133: $bb
    call c, Call_041_778e                         ; $6134: $dc $8e $77
    or $06                                        ; $6137: $f6 $06
    di                                            ; $6139: $f3
    ld h, h                                       ; $613a: $64
    add hl, de                                    ; $613b: $19
    db $e3                                        ; $613c: $e3
    daa                                           ; $613d: $27
    rst $00                                       ; $613e: $c7
    ld hl, $7b0a                                  ; $613f: $21 $0a $7b
    ld a, a                                       ; $6142: $7f
    jp c, $13b2                                   ; $6143: $da $b2 $13

    ld l, l                                       ; $6146: $6d

Call_041_6147:
    sbc b                                         ; $6147: $98
    ei                                            ; $6148: $fb
    dec d                                         ; $6149: $15
    dec l                                         ; $614a: $2d
    and a                                         ; $614b: $a7
    add d                                         ; $614c: $82
    or [hl]                                       ; $614d: $b6
    ld l, a                                       ; $614e: $6f
    ld a, [c]                                     ; $614f: $f2
    and d                                         ; $6150: $a2
    sbc $90                                       ; $6151: $de $90
    adc a                                         ; $6153: $8f
    ld a, [de]                                    ; $6154: $1a
    xor e                                         ; $6155: $ab
    adc $a0                                       ; $6156: $ce $a0
    ld c, e                                       ; $6158: $4b
    db $ed                                        ; $6159: $ed
    scf                                           ; $615a: $37
    inc hl                                        ; $615b: $23
    ret nc                                        ; $615c: $d0

    and a                                         ; $615d: $a7
    push af                                       ; $615e: $f5
    xor c                                         ; $615f: $a9
    ld e, [hl]                                    ; $6160: $5e
    ld l, $e5                                     ; $6161: $2e $e5
    xor l                                         ; $6163: $ad
    sbc [hl]                                      ; $6164: $9e
    ld d, b                                       ; $6165: $50
    adc c                                         ; $6166: $89
    ld h, [hl]                                    ; $6167: $66
    cpl                                           ; $6168: $2f
    ld a, [bc]                                    ; $6169: $0a
    pop de                                        ; $616a: $d1
    ld l, [hl]                                    ; $616b: $6e
    ld c, h                                       ; $616c: $4c
    and [hl]                                      ; $616d: $a6
    ld e, a                                       ; $616e: $5f
    ld bc, $23be                                  ; $616f: $01 $be $23
    inc de                                        ; $6172: $13
    or [hl]                                       ; $6173: $b6
    ld e, c                                       ; $6174: $59
    sub [hl]                                      ; $6175: $96
    ld c, c                                       ; $6176: $49
    pop hl                                        ; $6177: $e1
    rla                                           ; $6178: $17
    scf                                           ; $6179: $37
    ld e, c                                       ; $617a: $59
    ld h, b                                       ; $617b: $60
    ld [hl], c                                    ; $617c: $71
    inc hl                                        ; $617d: $23
    ld a, h                                       ; $617e: $7c
    ld b, d                                       ; $617f: $42
    rst $18                                       ; $6180: $df
    sub b                                         ; $6181: $90
    rst $08                                       ; $6182: $cf
    ld a, [c]                                     ; $6183: $f2
    or [hl]                                       ; $6184: $b6
    rst $18                                       ; $6185: $df
    ret nc                                        ; $6186: $d0

    xor a                                         ; $6187: $af
    ld l, l                                       ; $6188: $6d
    ld c, a                                       ; $6189: $4f
    sub b                                         ; $618a: $90
    ld c, $8a                                     ; $618b: $0e $8a
    ld a, e                                       ; $618d: $7b
    ld c, e                                       ; $618e: $4b
    pop hl                                        ; $618f: $e1
    ei                                            ; $6190: $fb
    ld l, d                                       ; $6191: $6a
    ld a, [c]                                     ; $6192: $f2
    and d                                         ; $6193: $a2
    ld e, [hl]                                    ; $6194: $5e
    call nc, $b3e4                                ; $6195: $d4 $e4 $b3
    pop bc                                        ; $6198: $c1
    inc a                                         ; $6199: $3c
    cp d                                          ; $619a: $ba
    sub b                                         ; $619b: $90
    or b                                          ; $619c: $b0
    ld c, c                                       ; $619d: $49
    rlca                                          ; $619e: $07
    push bc                                       ; $619f: $c5
    cp l                                          ; $61a0: $bd
    push de                                       ; $61a1: $d5
    ld c, d                                       ; $61a2: $4a
    rlca                                          ; $61a3: $07
    push bc                                       ; $61a4: $c5
    cp l                                          ; $61a5: $bd
    push af                                       ; $61a6: $f5
    ld a, l                                       ; $61a7: $7d
    ld e, a                                       ; $61a8: $5f
    ld l, e                                       ; $61a9: $6b
    dec b                                         ; $61aa: $05
    xor l                                         ; $61ab: $ad
    pop de                                        ; $61ac: $d1
    sub c                                         ; $61ad: $91
    sub a                                         ; $61ae: $97
    ld h, c                                       ; $61af: $61
    add [hl]                                      ; $61b0: $86
    ld l, $b5                                     ; $61b1: $2e $b5
    rst $18                                       ; $61b3: $df
    adc h                                         ; $61b4: $8c
    ld b, b                                       ; $61b5: $40
    sbc a                                         ; $61b6: $9f
    sub [hl]                                      ; $61b7: $96
    ld b, e                                       ; $61b8: $43
    dec h                                         ; $61b9: $25
    inc hl                                        ; $61ba: $23
    ld h, e                                       ; $61bb: $63
    ret z                                         ; $61bc: $c8

    cpl                                           ; $61bd: $2f
    rr e                                          ; $61be: $cb $1b
    ld b, e                                       ; $61c0: $43
    ld h, b                                       ; $61c1: $60
    ret z                                         ; $61c2: $c8

    rst $28                                       ; $61c3: $ef
    db $fd                                        ; $61c4: $fd
    ld h, c                                       ; $61c5: $61
    ld a, [$8c29]                                 ; $61c6: $fa $29 $8c
    ld d, d                                       ; $61c9: $52
    ld a, $9e                                     ; $61ca: $3e $9e
    ld e, a                                       ; $61cc: $5f
    cp [hl]                                       ; $61cd: $be
    ld e, a                                       ; $61ce: $5f
    ld bc, $3cbe                                  ; $61cf: $01 $be $3c
    xor c                                         ; $61d2: $a9
    add $20                                       ; $61d3: $c6 $20
    ld l, d                                       ; $61d5: $6a
    and d                                         ; $61d6: $a2
    ld l, $65                                     ; $61d7: $2e $65
    ld b, h                                       ; $61d9: $44
    and [hl]                                      ; $61da: $a6
    ld c, a                                       ; $61db: $4f
    ld l, e                                       ; $61dc: $6b
    ld [hl], h                                    ; $61dd: $74
    db $e4                                        ; $61de: $e4
    ld h, l                                       ; $61df: $65
    sbc b                                         ; $61e0: $98
    pop de                                        ; $61e1: $d1
    xor a                                         ; $61e2: $af

jr_041_61e3:
    xor l                                         ; $61e3: $ad
    pop de                                        ; $61e4: $d1
    sub c                                         ; $61e5: $91
    sub a                                         ; $61e6: $97
    ld h, c                                       ; $61e7: $61
    add [hl]                                      ; $61e8: $86
    ld l, $b5                                     ; $61e9: $2e $b5
    rst $18                                       ; $61eb: $df
    adc h                                         ; $61ec: $8c
    ld b, b                                       ; $61ed: $40
    cp a                                          ; $61ee: $bf
    ld [bc], a                                    ; $61ef: $02
    cp [hl]                                       ; $61f0: $be
    ld a, d                                       ; $61f1: $7a
    dec sp                                        ; $61f2: $3b
    db $ed                                        ; $61f3: $ed
    ld sp, hl                                     ; $61f4: $f9
    ld [hl], h                                    ; $61f5: $74
    xor c                                         ; $61f6: $a9
    db $fd                                        ; $61f7: $fd
    ld h, [hl]                                    ; $61f8: $66
    inc b                                         ; $61f9: $04
    ld a, [$aab4]                                 ; $61fa: $fa $b4 $aa
    rst $10                                       ; $61fd: $d7
    rst $18                                       ; $61fe: $df
    ld d, a                                       ; $61ff: $57
    sub e                                         ; $6200: $93
    db $fd                                        ; $6201: $fd
    reti                                          ; $6202: $d9


    jr nz, jr_041_61e3                            ; $6203: $20 $de

    ld [$2ea2], sp                                ; $6205: $08 $a2 $2e
    ld [hl], l                                    ; $6208: $75
    add a                                         ; $6209: $87
    ld a, b                                       ; $620a: $78
    inc hl                                        ; $620b: $23
    ld d, a                                       ; $620c: $57
    inc sp                                        ; $620d: $33
    ld [hl], l                                    ; $620e: $75
    adc a                                         ; $620f: $8f
    ld b, a                                       ; $6210: $47
    ld [hl+], a                                   ; $6211: $22
    inc hl                                        ; $6212: $23
    add hl, hl                                    ; $6213: $29
    or e                                          ; $6214: $b3
    inc l                                         ; $6215: $2c
    ld h, e                                       ; $6216: $63
    db $fc                                        ; $6217: $fc
    cp c                                          ; $6218: $b9
    ret c                                         ; $6219: $d8

    pop af                                        ; $621a: $f1
    sbc e                                         ; $621b: $9b
    ld a, d                                       ; $621c: $7a
    ld a, [hl]                                    ; $621d: $7e
    cp e                                          ; $621e: $bb
    sbc d                                         ; $621f: $9a
    dec hl                                        ; $6220: $2b
    cp [hl]                                       ; $6221: $be
    jr nc, @+$7d                                  ; $6222: $30 $7b

    sbc [hl]                                      ; $6224: $9e
    ld a, [hl]                                    ; $6225: $7e
    dec b                                         ; $6226: $05
    xor l                                         ; $6227: $ad
    rrca                                          ; $6228: $0f
    jp hl                                         ; $6229: $e9


    ld d, c                                       ; $622a: $51
    inc hl                                        ; $622b: $23
    ei                                            ; $622c: $fb
    or e                                          ; $622d: $b3
    ld b, c                                       ; $622e: $41
    cp h                                          ; $622f: $bc
    ld de, $5d44                                  ; $6230: $11 $44 $5d
    ld [$f10e], a                                 ; $6233: $ea $0e $f1
    ld b, [hl]                                    ; $6236: $46
    xor [hl]                                      ; $6237: $ae
    sub $0a                                       ; $6238: $d6 $0a
    ld l, l                                       ; $623a: $6d
    sub h                                         ; $623b: $94
    ld h, a                                       ; $623c: $67
    cp $0a                                        ; $623d: $fe $0a
    jp nz, Jump_041_6088                          ; $623f: $c2 $88 $60

    ld h, a                                       ; $6242: $67
    and c                                         ; $6243: $a1
    jp nz, $e593                                  ; $6244: $c2 $93 $e5

    ld a, [de]                                    ; $6247: $1a
    ret z                                         ; $6248: $c8

    ld e, $e1                                     ; $6249: $1e $e1
    sub a                                         ; $624b: $97
    ret                                           ; $624c: $c9


    rst $28                                       ; $624d: $ef
    db $ed                                        ; $624e: $ed
    ld [hl], c                                    ; $624f: $71
    jp nz, $9930                                  ; $6250: $c2 $30 $99

    jr z, @-$12                                   ; $6253: $28 $ec

    db $ed                                        ; $6255: $ed
    ld bc, $de75                                  ; $6256: $01 $75 $de
    ld [hl], e                                    ; $6259: $73
    scf                                           ; $625a: $37
    ld a, l                                       ; $625b: $7d
    ld a, h                                       ; $625c: $7c
    ld de, $7307                                  ; $625d: $11 $07 $73
    cp $8b                                        ; $6260: $fe $8b
    ld e, $02                                     ; $6262: $1e $02
    ld e, l                                       ; $6264: $5d
    sub [hl]                                      ; $6265: $96
    ld h, c                                       ; $6266: $61
    ei                                            ; $6267: $fb
    dec bc                                        ; $6268: $0b
    db $db                                        ; $6269: $db
    sub b                                         ; $626a: $90
    ld l, a                                       ; $626b: $6f
    ret z                                         ; $626c: $c8

    db $ed                                        ; $626d: $ed
    ld d, h                                       ; $626e: $54
    and e                                         ; $626f: $a3
    ld h, $0b                                     ; $6270: $26 $0b
    inc l                                         ; $6272: $2c
    ld l, a                                       ; $6273: $6f
    halt                                          ; $6274: $76
    db $e4                                        ; $6275: $e4
    sbc e                                         ; $6276: $9b
    cp e                                          ; $6277: $bb
    inc l                                         ; $6278: $2c
    rst $10                                       ; $6279: $d7
    ld b, b                                       ; $627a: $40
    db $ec                                        ; $627b: $ec
    sub a                                         ; $627c: $97
    ld d, e                                       ; $627d: $53
    ld e, a                                       ; $627e: $5f

jr_041_627f:
    ld b, c                                       ; $627f: $41
    jr jr_041_627f                                ; $6280: $18 $fd

    ld a, [bc]                                    ; $6282: $0a
    ld l, l                                       ; $6283: $6d
    ld c, e                                       ; $6284: $4b
    xor b                                         ; $6285: $a8
    ld h, h                                       ; $6286: $64

Call_041_6287:
    db $d3                                        ; $6287: $d3
    pop de                                        ; $6288: $d1
    ld h, $8b                                     ; $6289: $26 $8b
    adc l                                         ; $628b: $8d
    ld [hl], a                                    ; $628c: $77
    ld b, h                                       ; $628d: $44
    adc l                                         ; $628e: $8d
    ld l, $7a                                     ; $628f: $2e $7a
    ld a, d                                       ; $6291: $7a
    inc de                                        ; $6292: $13
    add h                                         ; $6293: $84
    ld d, [hl]                                    ; $6294: $56
    and a                                         ; $6295: $a7
    and [hl]                                      ; $6296: $a6
    rst $28                                       ; $6297: $ef
    ei                                            ; $6298: $fb
    inc l                                         ; $6299: $2c
    ld [hl], $8b                                  ; $629a: $36 $8b
    db $dd                                        ; $629c: $dd
    call nz, $854d                                ; $629d: $c4 $4d $85
    inc l                                         ; $62a0: $2c
    rst $30                                       ; $62a1: $f7
    ld c, $f9                                     ; $62a2: $0e $f9
    call nc, $1e3d                                ; $62a4: $d4 $3d $1e
    jp hl                                         ; $62a7: $e9


    ld d, a                                       ; $62a8: $57
    ld e, $6d                                     ; $62a9: $1e $6d
    ld h, a                                       ; $62ab: $67
    ld sp, $8910                                  ; $62ac: $31 $10 $89
    rla                                           ; $62af: $17
    add l                                         ; $62b0: $85
    cp l                                          ; $62b1: $bd
    sub c                                         ; $62b2: $91
    ld h, l                                       ; $62b3: $65
    adc b                                         ; $62b4: $88
    scf                                           ; $62b5: $37
    ld [hl], d                                    ; $62b6: $72
    ld e, c                                       ; $62b7: $59
    inc c                                         ; $62b8: $0c
    xor $96                                       ; $62b9: $ee $96
    db $e3                                        ; $62bb: $e3
    sub a                                         ; $62bc: $97
    pop de                                        ; $62bd: $d1
    push hl                                       ; $62be: $e5
    call $848e                                    ; $62bf: $cd $8e $84
    cp l                                          ; $62c2: $bd
    ret z                                         ; $62c3: $c8

    call nz, $127b                                ; $62c4: $c4 $7b $12
    pop bc                                        ; $62c7: $c1

Call_041_62c8:
    and l                                         ; $62c8: $a5
    inc c                                         ; $62c9: $0c
    inc sp                                        ; $62ca: $33
    call z, Call_041_705e                         ; $62cb: $cc $5e $70

Jump_041_62ce:
    or l                                          ; $62ce: $b5
    inc a                                         ; $62cf: $3c
    ld d, [hl]                                    ; $62d0: $56
    dec e                                         ; $62d1: $1d
    ld e, a                                       ; $62d2: $5f
    cp [hl]                                       ; $62d3: $be
    inc l                                         ; $62d4: $2c
    ld h, b                                       ; $62d5: $60
    cp $50                                        ; $62d6: $fe $50

Jump_041_62d8:
    ret                                           ; $62d8: $c9


    and [hl]                                      ; $62d9: $a6
    and d                                         ; $62da: $a2
    ld c, l                                       ; $62db: $4d
    call c, $d557                                 ; $62dc: $dc $57 $d5
    ret                                           ; $62df: $c9


    db $f4                                        ; $62e0: $f4
    dec hl                                        ; $62e1: $2b
    cp [hl]                                       ; $62e2: $be
    inc a                                         ; $62e3: $3c
    ld [hl], c                                    ; $62e4: $71
    jr nc, @-$07                                  ; $62e5: $30 $f7

    and d                                         ; $62e7: $a2
    ld h, $db                                     ; $62e8: $26 $db
    db $e3                                        ; $62ea: $e3
    call nz, $ab0b                                ; $62eb: $c4 $0b $ab
    ld h, b                                       ; $62ee: $60
    rst $30                                       ; $62ef: $f7
    ld a, l                                       ; $62f0: $7d
    rst $18                                       ; $62f1: $df
    and a                                         ; $62f2: $a7
    ld l, l                                       ; $62f3: $6d
    ret c                                         ; $62f4: $d8

    and l                                         ; $62f5: $a5
    ret nz                                        ; $62f6: $c0

    ld a, $fe                                     ; $62f7: $3e $fe
    ld c, c                                       ; $62f9: $49
    push af                                       ; $62fa: $f5
    and d                                         ; $62fb: $a2
    db $dd                                        ; $62fc: $dd
    di                                            ; $62fd: $f3
    add h                                         ; $62fe: $84
    ld l, l                                       ; $62ff: $6d
    sub [hl]                                      ; $6300: $96
    ld h, l                                       ; $6301: $65
    ld a, [$6d15]                                 ; $6302: $fa $15 $6d
    sbc [hl]                                      ; $6305: $9e
    jr c, jr_041_6387                             ; $6306: $38 $7f

    cp l                                          ; $6308: $bd
    sub c                                         ; $6309: $91
    sub c                                         ; $630a: $91
    sub h                                         ; $630b: $94
    rst $18                                       ; $630c: $df
    rla                                           ; $630d: $17
    ld b, h                                       ; $630e: $44
    ld b, [hl]                                    ; $630f: $46
    ld h, d                                       ; $6310: $62
    ld d, a                                       ; $6311: $57
    cp l                                          ; $6312: $bd
    ld e, h                                       ; $6313: $5c
    cp h                                          ; $6314: $bc
    or b                                          ; $6315: $b0
    ld l, d                                       ; $6316: $6a
    ld [hl], h                                    ; $6317: $74
    add hl, hl                                    ; $6318: $29
    db $fc                                        ; $6319: $fc
    sub a                                         ; $631a: $97
    rla                                           ; $631b: $17
    push af                                       ; $631c: $f5
    and d                                         ; $631d: $a2
    ld h, $82                                     ; $631e: $26 $82
    cp l                                          ; $6320: $bd
    ccf                                           ; $6321: $3f
    ld [$c40c], a                                 ; $6322: $ea $0c $c4
    dec de                                        ; $6325: $1b
    ld b, c                                       ; $6326: $41
    or h                                          ; $6327: $b4
    and e                                         ; $6328: $a3
    add l                                         ; $6329: $85
    cp a                                          ; $632a: $bf
    ld e, a                                       ; $632b: $5f
    ld bc, $27b5                                  ; $632c: $01 $b5 $27
    jp c, $93d5                                   ; $632f: $da $d5 $93

    ld c, e                                       ; $6332: $4b
    ld [hl], l                                    ; $6333: $75
    cp b                                          ; $6334: $b8
    inc l                                         ; $6335: $2c
    ld [hl], $fa                                  ; $6336: $36 $fa
    adc l                                         ; $6338: $8d
    ld [$71f2], a                                 ; $6339: $ea $f2 $71
    db $f4                                        ; $633c: $f4
    or d                                          ; $633d: $b2
    ld b, b                                       ; $633e: $40
    jp z, Jump_041_6a1b                           ; $633f: $ca $1b $6a

    xor [hl]                                      ; $6342: $ae
    db $ed                                        ; $6343: $ed
    ld a, c                                       ; $6344: $79
    ld d, b                                       ; $6345: $50
    xor a                                         ; $6346: $af
    rst $30                                       ; $6347: $f7
    call c, $d44d                                 ; $6348: $dc $4d $d4
    and l                                         ; $634b: $a5
    xor $f1                                       ; $634c: $ee $f1
    ld c, b                                       ; $634e: $48
    ld l, d                                       ; $634f: $6a
    ld b, h                                       ; $6350: $44
    ld [hl], b                                    ; $6351: $70
    add hl, hl                                    ; $6352: $29
    jp $b30c                                      ; $6353: $c3 $0c $b3


    rla                                           ; $6356: $17
    ld e, h                                       ; $6357: $5c
    sbc a                                         ; $6358: $9f
    or $3e                                        ; $6359: $f6 $3e
    add l                                         ; $635b: $85
    ld a, [hl]                                    ; $635c: $7e
    sbc [hl]                                      ; $635d: $9e
    xor $8f                                       ; $635e: $ee $8f
    adc h                                         ; $6360: $8c
    ld b, h                                       ; $6361: $44
    dec c                                         ; $6362: $0d
    ld l, c                                       ; $6363: $69
    ret nc                                        ; $6364: $d0

    db $eb                                        ; $6365: $eb
    ld de, $0294                                  ; $6366: $11 $94 $02
    ld b, e                                       ; $6369: $43
    or $08                                        ; $636a: $f6 $08
    cp a                                          ; $636c: $bf
    ld a, h                                       ; $636d: $7c
    cp a                                          ; $636e: $bf
    ld [bc], a                                    ; $636f: $02
    dec e                                         ; $6370: $1d
    rst $18                                       ; $6371: $df
    ld [hl], d                                    ; $6372: $72
    ld l, [hl]                                    ; $6373: $6e
    and d                                         ; $6374: $a2
    ld l, $54                                     ; $6375: $2e $54
    jp nc, $9d96                                  ; $6377: $d2 $96 $9d

    ld [hl], a                                    ; $637a: $77
    ld b, h                                       ; $637b: $44
    adc l                                         ; $637c: $8d
    ld c, l                                       ; $637d: $4d
    ld d, $98                                     ; $637e: $16 $98
    add d                                         ; $6380: $82
    sub l                                         ; $6381: $95
    xor e                                         ; $6382: $ab
    cp c                                          ; $6383: $b9
    ld [bc], a                                    ; $6384: $02
    dec e                                         ; $6385: $1d
    db $d3                                        ; $6386: $d3

jr_041_6387:
    sbc d                                         ; $6387: $9a
    xor c                                         ; $6388: $a9
    dec bc                                        ; $6389: $0b
    ld [hl], e                                    ; $638a: $73
    cp $7a                                        ; $638b: $fe $7a
    inc hl                                        ; $638d: $23
    inc hl                                        ; $638e: $23
    add hl, hl                                    ; $638f: $29
    cp b                                          ; $6390: $b8
    sbc h                                         ; $6391: $9c
    call nz, Call_000_2fed                        ; $6392: $c4 $ed $2f
    dec b                                         ; $6395: $05
    or l                                          ; $6396: $b5
    ld d, [hl]                                    ; $6397: $56
    cp [hl]                                       ; $6398: $be
    inc a                                         ; $6399: $3c
    ld [hl], c                                    ; $639a: $71
    jr nc, @-$07                                  ; $639b: $30 $f7

    and d                                         ; $639d: $a2
    ld h, $db                                     ; $639e: $26 $db
    db $e3                                        ; $63a0: $e3
    jp hl                                         ; $63a1: $e9


    cp $a8                                        ; $63a2: $fe $a8
    ld c, e                                       ; $63a4: $4b
    db $dd                                        ; $63a5: $dd
    ld hl, $c8de                                  ; $63a6: $21 $de $c8
    push af                                       ; $63a9: $f5
    dec hl                                        ; $63aa: $2b
    dec l                                         ; $63ab: $2d
    ld b, a                                       ; $63ac: $47
    ld [hl], b                                    ; $63ad: $70
    add hl, hl                                    ; $63ae: $29
    jp $b30c                                      ; $63af: $c3 $0c $b3


    rla                                           ; $63b2: $17
    ld e, h                                       ; $63b3: $5c
    call Call_000_2ab4                            ; $63b4: $cd $b4 $2a
    adc $8f                                       ; $63b7: $ce $8f
    ld d, b                                       ; $63b9: $50
    sbc c                                         ; $63ba: $99
    inc d                                         ; $63bb: $14
    and [hl]                                      ; $63bc: $a6
    ld a, [bc]                                    ; $63bd: $0a
    jp nz, $c288                                  ; $63be: $c2 $88 $c2

    adc $62                                       ; $63c1: $ce $62
    ld d, a                                       ; $63c3: $57
    ld c, l                                       ; $63c4: $4d
    ld e, [hl]                                    ; $63c5: $5e
    ld h, h                                       ; $63c6: $64
    and d                                         ; $63c7: $a2
    add [hl]                                      ; $63c8: $86
    inc [hl]                                      ; $63c9: $34
    add sp, -$0b                                  ; $63ca: $e8 $f5
    ld c, b                                       ; $63cc: $48
    ld sp, hl                                     ; $63cd: $f9
    dec b                                         ; $63ce: $05
    or [hl]                                       ; $63cf: $b6
    and a                                         ; $63d0: $a7
    and $0a                                       ; $63d1: $e6 $0a
    sbc l                                         ; $63d3: $9d
    cp $e5                                        ; $63d4: $fe $e5
    inc h                                         ; $63d6: $24
    ld l, [hl]                                    ; $63d7: $6e
    ld a, a                                       ; $63d8: $7f
    add hl, hl                                    ; $63d9: $29
    ret nc                                        ; $63da: $d0

    and l                                         ; $63db: $a5
    xor $30                                       ; $63dc: $ee $30
    jp $ae6a                                      ; $63de: $c3 $6a $ae


    xor l                                         ; $63e1: $ad
    ld b, c                                       ; $63e2: $41
    and b                                         ; $63e3: $a0
    ld c, e                                       ; $63e4: $4b
    db $ed                                        ; $63e5: $ed
    scf                                           ; $63e6: $37
    inc hl                                        ; $63e7: $23
    sub b                                         ; $63e8: $90
    cp d                                          ; $63e9: $ba
    jp $eb0c                                      ; $63ea: $c3 $0c $eb


    db $d3                                        ; $63ed: $d3
    sbc $47                                       ; $63ee: $de $47
    and [hl]                                      ; $63f0: $a6
    or b                                          ; $63f1: $b0
    ld a, l                                       ; $63f2: $7d
    add h                                         ; $63f3: $84
    ld c, $f9                                     ; $63f4: $0e $f9
    ld a, l                                       ; $63f6: $7d
    rst $18                                       ; $63f7: $df
    rst $00                                       ; $63f8: $c7
    ld h, c                                       ; $63f9: $61
    ld b, e                                       ; $63fa: $43
    ld l, a                                       ; $63fb: $6f
    rst $00                                       ; $63fc: $c7
    push af                                       ; $63fd: $f5
    db $f4                                        ; $63fe: $f4
    jp hl                                         ; $63ff: $e9


    ret c                                         ; $6400: $d8

    add [hl]                                      ; $6401: $86
    db $fc                                        ; $6402: $fc
    ld d, b                                       ; $6403: $50
    ret                                           ; $6404: $c9


    ld [hl-], a                                   ; $6405: $32
    add l                                         ; $6406: $85
    daa                                           ; $6407: $27
    ld l, d                                       ; $6408: $6a
    ld c, b                                       ; $6409: $48
    and h                                         ; $640a: $a4
    ld b, b                                       ; $640b: $40
    pop bc                                        ; $640c: $c1
    ld hl, sp-$06                                 ; $640d: $f8 $fa
    dec d                                         ; $640f: $15
    ld [hl], l                                    ; $6410: $75
    add a                                         ; $6411: $87
    add hl, de                                    ; $6412: $19
    and [hl]                                      ; $6413: $a6
    adc e                                         ; $6414: $8b
    ld a, [de]                                    ; $6415: $1a
    ld [de], a                                    ; $6416: $12
    pop de                                        ; $6417: $d1
    add sp, -$65                                  ; $6418: $e8 $9b
    add d                                         ; $641a: $82
    and c                                         ; $641b: $a1
    ldh a, [$a5]                                  ; $641c: $f0 $a5
    jr nz, jr_041_649c                            ; $641e: $20 $7c

    ld d, c                                       ; $6420: $51
    rst $20                                       ; $6421: $e7
    ld d, b                                       ; $6422: $50
    jp z, $5d45                                   ; $6423: $ca $45 $5d

    ret c                                         ; $6426: $d8

    add [hl]                                      ; $6427: $86
    ld a, h                                       ; $6428: $7c
    xor e                                         ; $6429: $ab
    ld l, $54                                     ; $642a: $2e $54
    ld a, $cb                                     ; $642c: $3e $cb
    add c                                         ; $642e: $81
    db $ed                                        ; $642f: $ed
    and e                                         ; $6430: $a3
    rlca                                          ; $6431: $07
    ld [hl], c                                    ; $6432: $71
    sbc $6a                                       ; $6433: $de $6a
    xor l                                         ; $6435: $ad
    ld l, l                                       ; $6436: $6d
    ld c, a                                       ; $6437: $4f
    or $a4                                        ; $6438: $f6 $a4
    adc h                                         ; $643a: $8c
    ld l, $37                                     ; $643b: $2e $37
    reti                                          ; $643d: $d9


    sub e                                         ; $643e: $93
    ld [hl-], a                                   ; $643f: $32
    dec [hl]                                      ; $6440: $35
    ld d, a                                       ; $6441: $57
    ld [hl], l                                    ; $6442: $75
    ld b, [hl]                                    ; $6443: $46
    or d                                          ; $6444: $b2
    daa                                           ; $6445: $27
    ld h, l                                       ; $6446: $65

jr_041_6447:
    ld [hl], h                                    ; $6447: $74
    add hl, hl                                    ; $6448: $29
    and a                                         ; $6449: $a7
    ret                                           ; $644a: $c9


    jr jr_041_6447                                ; $644b: $18 $fa

    or h                                          ; $644d: $b4
    rst $38                                       ; $644e: $ff
    ld e, c                                       ; $644f: $59
    jr nz, jr_041_64b7                            ; $6450: $20 $65

    ld [c], a                                     ; $6452: $e2
    db $fc                                        ; $6453: $fc
    ld c, b                                       ; $6454: $48
    ld l, l                                       ; $6455: $6d
    ld e, b                                       ; $6456: $58
    ld [hl], l                                    ; $6457: $75
    inc hl                                        ; $6458: $23
    ret z                                         ; $6459: $c8

    sbc [hl]                                      ; $645a: $9e
    sub h                                         ; $645b: $94
    ld e, a                                       ; $645c: $5f
    sub [hl]                                      ; $645d: $96
    ei                                            ; $645e: $fb
    ld a, $75                                     ; $645f: $3e $75
    ld h, c                                       ; $6461: $61
    adc $5f                                       ; $6462: $ce $5f
    ld l, a                                       ; $6464: $6f
    ld h, h                                       ; $6465: $64
    inc h                                         ; $6466: $24
    adc e                                         ; $6467: $8b
    dec c                                         ; $6468: $0d
    ld sp, hl                                     ; $6469: $f9
    ld sp, hl                                     ; $646a: $f9
    jr c, @+$01                                   ; $646b: $38 $ff

    ld b, c                                       ; $646d: $41
    pop bc                                        ; $646e: $c1
    or $e4                                        ; $646f: $f6 $e4
    or e                                          ; $6471: $b3
    ld [hl], c                                    ; $6472: $71
    or l                                          ; $6473: $b5
    ld d, [hl]                                    ; $6474: $56
    sbc l                                         ; $6475: $9d
    ld c, b                                       ; $6476: $48
    ld d, $2a                                     ; $6477: $16 $2a
    inc a                                         ; $6479: $3c
    add hl, sp                                    ; $647a: $39
    ld c, c                                       ; $647b: $49
    dec b                                         ; $647c: $05
    sbc c                                         ; $647d: $99
    db $fc                                        ; $647e: $fc
    sbc $1f                                       ; $647f: $de $1f
    rst $08                                       ; $6481: $cf
    cpl                                           ; $6482: $2f
    rra                                           ; $6483: $1f
    ld [hl], l                                    ; $6484: $75
    ld l, c                                       ; $6485: $69
    set 1, [hl]                                   ; $6486: $cb $ce
    dec sp                                        ; $6488: $3b
    and d                                         ; $6489: $a2
    add $46                                       ; $648a: $c6 $46
    sub a                                         ; $648c: $97
    cp d                                          ; $648d: $ba
    jp $eb0c                                      ; $648e: $c3 $0c $eb


    ld d, a                                       ; $6491: $57
    dec e                                         ; $6492: $1d
    ld [hl], h                                    ; $6493: $74
    and a                                         ; $6494: $a7
    bit 6, h                                      ; $6495: $cb $74
    and a                                         ; $6497: $a7
    bit 6, h                                      ; $6498: $cb $74
    ld d, a                                       ; $649a: $57
    ld [hl], e                                    ; $649b: $73

jr_041_649c:
    dec b                                         ; $649c: $05
    cp [hl]                                       ; $649d: $be
    xor b                                         ; $649e: $a8
    db $f4                                        ; $649f: $f4
    or $71                                        ; $64a0: $f6 $71
    ld a, [hl]                                    ; $64a2: $7e
    db $e4                                        ; $64a3: $e4
    halt                                          ; $64a4: $76
    sbc b                                         ; $64a5: $98
    ld c, [hl]                                    ; $64a6: $4e
    cp [hl]                                       ; $64a7: $be
    ld a, [hl-]                                   ; $64a8: $3a
    scf                                           ; $64a9: $37
    xor c                                         ; $64aa: $a9
    inc bc                                        ; $64ab: $03
    ld a, [c]                                     ; $64ac: $f2
    or $46                                        ; $64ad: $f6 $46
    jp z, $dca5                                   ; $64af: $ca $a5 $dc

    rst $00                                       ; $64b2: $c7
    ei                                            ; $64b3: $fb
    call z, $ea93                                 ; $64b4: $cc $93 $ea

jr_041_64b7:
    scf                                           ; $64b7: $37
    ld a, [$7c74]                                 ; $64b8: $fa $74 $7c
    ld e, c                                       ; $64bb: $59
    ld h, b                                       ; $64bc: $60
    dec d                                         ; $64bd: $15
    sbc b                                         ; $64be: $98
    ld h, c                                       ; $64bf: $61
    push af                                       ; $64c0: $f5
    ld b, a                                       ; $64c1: $47
    ld e, l                                       ; $64c2: $5d
    ret c                                         ; $64c3: $d8

    add [hl]                                      ; $64c4: $86
    ld a, h                                       ; $64c5: $7c
    ld b, e                                       ; $64c6: $43
    or h                                          ; $64c7: $b4
    ld a, l                                       ; $64c8: $7d
    add hl, sp                                    ; $64c9: $39

Jump_041_64ca:
    pop de                                        ; $64ca: $d1
    inc c                                         ; $64cb: $0c
    ld [$7c20], a                                 ; $64cc: $ea $20 $7c
    ld d, c                                       ; $64cf: $51
    ret c                                         ; $64d0: $d8

    ei                                            ; $64d1: $fb
    or e                                          ; $64d2: $b3
    inc c                                         ; $64d3: $0c
    pop af                                        ; $64d4: $f1
    ld b, [hl]                                    ; $64d5: $46
    sub b                                         ; $64d6: $90
    dec b                                         ; $64d7: $05
    ld d, $8d                                     ; $64d8: $16 $8d
    cp [hl]                                       ; $64da: $be
    sbc l                                         ; $64db: $9d

Call_041_64dc:
    db $ed                                        ; $64dc: $ed
    pop de                                        ; $64dd: $d1
    and l                                         ; $64de: $a5
    xor $30                                       ; $64df: $ee $30
    jp Jump_000_15fa                              ; $64e1: $c3 $fa $15


    db $ed                                        ; $64e4: $ed
    ld a, a                                       ; $64e5: $7f
    rst $18                                       ; $64e6: $df
    rst $30                                       ; $64e7: $f7
    dec hl                                        ; $64e8: $2b
    xor l                                         ; $64e9: $ad
    add e                                         ; $64ea: $83
    cp h                                          ; $64eb: $bc
    or b                                          ; $64ec: $b0
    dec c                                         ; $64ed: $0d
    ld sp, hl                                     ; $64ee: $f9
    add [hl]                                      ; $64ef: $86
    inc [hl]                                      ; $64f0: $34
    sbc c                                         ; $64f1: $99
    ld h, l                                       ; $64f2: $65
    adc h                                         ; $64f3: $8c
    ld a, b                                       ; $64f4: $78
    inc hl                                        ; $64f5: $23
    rla                                           ; $64f6: $17
    ld [hl], l                                    ; $64f7: $75
    add hl, de                                    ; $64f8: $19
    rst $20                                       ; $64f9: $e7
    db $fc                                        ; $64fa: $fc
    rla                                           ; $64fb: $17
    ld [hl], l                                    ; $64fc: $75
    ld [hl], c                                    ; $64fd: $71
    or e                                          ; $64fe: $b3
    ld sp, $b0cc                                  ; $64ff: $31 $cc $b0
    pop de                                        ; $6502: $d1
    and l                                         ; $6503: $a5
    adc c                                         ; $6504: $89
    inc l                                         ; $6505: $2c
    ld h, e                                       ; $6506: $63

jr_041_6507:
    call nz, Call_041_411b                        ; $6507: $c4 $1b $41
    call nc, $f885                                ; $650a: $d4 $85 $f8
    ld [hl+], a                                   ; $650d: $22
    adc b                                         ; $650e: $88
    cp d                                          ; $650f: $ba
    inc d                                         ; $6510: $14
    ret c                                         ; $6511: $d8

    ld [bc], a                                    ; $6512: $02
    ld h, c                                       ; $6513: $61
    inc b                                         ; $6514: $04
    ld l, c                                       ; $6515: $69
    ld [hl+], a                                   ; $6516: $22
    rr b                                          ; $6517: $cb $18
    pop af                                        ; $6519: $f1
    ld b, [hl]                                    ; $651a: $46
    db $10                                        ; $651b: $10
    ld [hl], l                                    ; $651c: $75
    ld e, c                                       ; $651d: $59
    or b                                          ; $651e: $b0
    scf                                           ; $651f: $37
    and d                                         ; $6520: $a2
    ld l, $6d                                     ; $6521: $2e $6d
    sbc l                                         ; $6523: $9d
    db $dd                                        ; $6524: $dd
    ld a, [hl]                                    ; $6525: $7e
    rst $20                                       ; $6526: $e7
    and [hl]                                      ; $6527: $a6
    adc a                                         ; $6528: $8f
    daa                                           ; $6529: $27
    call z, Call_041_46fd                         ; $652a: $cc $fd $46
    ld a, [hl]                                    ; $652d: $7e
    ld l, a                                       ; $652e: $6f
    adc a                                         ; $652f: $8f
    inc de                                        ; $6530: $13
    add [hl]                                      ; $6531: $86
    ret                                           ; $6532: $c9


    ld b, h                                       ; $6533: $44
    ld e, l                                       ; $6534: $5d
    ld l, d                                       ; $6535: $6a
    adc a                                         ; $6536: $8f
    sub $dd                                       ; $6537: $d6 $dd
    dec de                                        ; $6539: $1b
    sub a                                         ; $653a: $97
    ld c, h                                       ; $653b: $4c
    inc b                                         ; $653c: $04
    sub a                                         ; $653d: $97
    ld b, d                                       ; $653e: $42
    rst $20                                       ; $653f: $e7
    and d                                         ; $6540: $a2
    ld c, [hl]                                    ; $6541: $4e
    ld a, b                                       ; $6542: $78
    ld c, h                                       ; $6543: $4c
    xor [hl]                                      ; $6544: $ae
    ld c, a                                       ; $6545: $4f
    sbc e                                         ; $6546: $9b
    ld h, e                                       ; $6547: $63
    dec b                                         ; $6548: $05
    pop hl                                        ; $6549: $e1
    adc e                                         ; $654a: $8b
    dec de                                        ; $654b: $1b
    ld hl, $5661                                  ; $654c: $21 $61 $56
    ld c, a                                       ; $654f: $4f
    sub [hl]                                      ; $6550: $96
    or a                                          ; $6551: $b7
    db $fd                                        ; $6552: $fd
    add [hl]                                      ; $6553: $86
    cp b                                          ; $6554: $b8
    sub c                                         ; $6555: $91
    call nc, $cd7e                                ; $6556: $d4 $7e $cd
    ld c, [hl]                                    ; $6559: $4e
    jp hl                                         ; $655a: $e9


    ld [hl], d                                    ; $655b: $72
    dec sp                                        ; $655c: $3b
    ld a, [de]                                    ; $655d: $1a
    ld a, l                                       ; $655e: $7d
    ld d, e                                       ; $655f: $53
    rst $28                                       ; $6560: $ef
    sbc $b9                                       ; $6561: $de $b9
    ld a, e                                       ; $6563: $7b
    ld e, l                                       ; $6564: $5d
    ld d, $58                                     ; $6565: $16 $58
    jp z, Jump_000_302f                           ; $6567: $ca $2f $30

    ld b, h                                       ; $656a: $44
    dec c                                         ; $656b: $0d
    adc c                                         ; $656c: $89
    jr c, jr_041_6507                             ; $656d: $38 $98

    ld a, e                                       ; $656f: $7b
    ld b, e                                       ; $6570: $43
    sbc a                                         ; $6571: $9f
    ld [hl], $e2                                  ; $6572: $36 $e2
    db $fd                                        ; $6574: $fd
    bit 1, c                                      ; $6575: $cb $49
    cp h                                          ; $6577: $bc
    ld b, $e6                                     ; $6578: $06 $e6
    rst $28                                       ; $657a: $ef
    db $e3                                        ; $657b: $e3
    adc e                                         ; $657c: $8b
    sub h                                         ; $657d: $94
    or a                                          ; $657e: $b7
    cp a                                          ; $657f: $bf
    ld l, h                                       ; $6580: $6c
    ld [$2e8f], sp                                ; $6581: $08 $8f $2e
    inc a                                         ; $6584: $3c
    jp c, Jump_041_583e                           ; $6585: $da $3e $58

    db $fd                                        ; $6588: $fd
    ld d, c                                       ; $6589: $51
    cp b                                          ; $658a: $b8
    inc l                                         ; $658b: $2c
    ld d, h                                       ; $658c: $54
    ld hl, sp-$0e                                 ; $658d: $f8 $f2
    ld a, e                                       ; $658f: $7b
    ld a, a                                       ; $6590: $7f
    sbc b                                         ; $6591: $98
    ld a, [hl]                                    ; $6592: $7e
    inc a                                         ; $6593: $3c
    cp a                                          ; $6594: $bf
    ld a, h                                       ; $6595: $7c
    cp a                                          ; $6596: $bf
    ld [bc], a                                    ; $6597: $02
    ld l, l                                       ; $6598: $6d
    cp $e5                                        ; $6599: $fe $e5
    inc h                                         ; $659b: $24
    ld e, [hl]                                    ; $659c: $5e
    inc bc                                        ; $659d: $03
    di                                            ; $659e: $f3
    db $eb                                        ; $659f: $eb
    ld d, d                                       ; $65a0: $52
    ei                                            ; $65a1: $fb
    call $f408                                    ; $65a2: $cd $08 $f4
    ld a, l                                       ; $65a5: $7d
    cp a                                          ; $65a6: $bf
    ld [bc], a                                    ; $65a7: $02
    ld a, l                                       ; $65a8: $7d
    rst $18                                       ; $65a9: $df
    ld d, a                                       ; $65aa: $57
    rla                                           ; $65ab: $17
    rst $28                                       ; $65ac: $ef
    and a                                         ; $65ad: $a7
    ld a, [$a57d]                                 ; $65ae: $fa $7d $a5
    ld e, h                                       ; $65b1: $5c
    dec [hl]                                      ; $65b2: $35
    dec [hl]                                      ; $65b3: $35
    ld d, a                                       ; $65b4: $57
    ld [hl], l                                    ; $65b5: $75
    ld b, [hl]                                    ; $65b6: $46
    ld d, d                                       ; $65b7: $52
    inc hl                                        ; $65b8: $23
    ld a, $f4                                     ; $65b9: $3e $f4
    and d                                         ; $65bb: $a2
    jr nz, @+$6e                                  ; $65bc: $20 $6c

    inc de                                        ; $65be: $13
    rst $20                                       ; $65bf: $e7
    ld b, a                                       ; $65c0: $47
    ret c                                         ; $65c1: $d8

    add [hl]                                      ; $65c2: $86
    add h                                         ; $65c3: $84
    db $fd                                        ; $65c4: $fd
    push bc                                       ; $65c5: $c5
    add a                                         ; $65c6: $87
    ld h, d                                       ; $65c7: $62

Jump_041_65c8:
    rst $28                                       ; $65c8: $ef
    adc c                                         ; $65c9: $89
    di                                            ; $65ca: $f3
    inc hl                                        ; $65cb: $23
    add l                                         ; $65cc: $85
    rst $38                                       ; $65cd: $ff
    ld [c], a                                     ; $65ce: $e2
    ld h, b                                       ; $65cf: $60
    xor $45                                       ; $65d0: $ee $45
    adc l                                         ; $65d2: $8d
    ld l, $75                                     ; $65d3: $2e $75
    add a                                         ; $65d5: $87
    add hl, de                                    ; $65d6: $19
    sub $af                                       ; $65d7: $d6 $af
    db $ed                                        ; $65d9: $ed
    ld a, c                                       ; $65da: $79
    cp h                                          ; $65db: $bc
    ld [hl], e                                    ; $65dc: $73
    jr z, @+$67                                   ; $65dd: $28 $65

    ld a, [c]                                     ; $65df: $f2
    pop af                                        ; $65e0: $f1
    and c                                         ; $65e1: $a1
    ret c                                         ; $65e2: $d8

    ei                                            ; $65e3: $fb
    ld d, e                                       ; $65e4: $53
    ld hl, sp-$7b                                 ; $65e5: $f8 $85
    ld hl, sp-$57                                 ; $65e7: $f8 $a9
    sub c                                         ; $65e9: $91
    dec b                                         ; $65ea: $05
    ld d, [hl]                                    ; $65eb: $56
    and c                                         ; $65ec: $a1
    sub h                                         ; $65ed: $94
    adc c                                         ; $65ee: $89
    ld l, a                                       ; $65ef: $6f
    rlca                                          ; $65f0: $07
    db $ed                                        ; $65f1: $ed
    ld [hl], l                                    ; $65f2: $75
    sub b                                         ; $65f3: $90
    rst $10                                       ; $65f4: $d7
    or $a5                                        ; $65f5: $f6 $a5
    jr nc, jr_041_664e                            ; $65f7: $30 $55

    db $10                                        ; $65f9: $10
    cp [hl]                                       ; $65fa: $be
    inc a                                         ; $65fb: $3c
    ld sp, hl                                     ; $65fc: $f9
    ld b, d                                       ; $65fd: $42
    ld a, h                                       ; $65fe: $7c

jr_041_65ff:
    ld a, $5d                                     ; $65ff: $3e $5d
    ld [$330e], a                                 ; $6601: $ea $0e $33
    xor h                                         ; $6604: $ac
    ld e, a                                       ; $6605: $5f
    ld bc, $dfb5                                  ; $6606: $01 $b5 $df
    adc h                                         ; $6609: $8c
    add b                                         ; $660a: $80
    ld l, $6e                                     ; $660b: $2e $6e
    ld a, [hl+]                                   ; $660d: $2a
    and h                                         ; $660e: $a4
    ld a, [$8c8b]                                 ; $660f: $fa $8b $8c
    and h                                         ; $6612: $a4
    ldh [$72], a                                  ; $6613: $e0 $72
    ld [de], a                                    ; $6615: $12
    or a                                          ; $6616: $b7
    cp a                                          ; $6617: $bf
    inc d                                         ; $6618: $14
    call nc, $db4a                                ; $6619: $d4 $4a $db
    sub e                                         ; $661c: $93

Call_041_661d:
    ld [hl-], a                                   ; $661d: $32
    ld [hl-], a                                   ; $661e: $32
    and c                                         ; $661f: $a1
    sub d                                         ; $6620: $92
    push bc                                       ; $6621: $c5
    ldh [rTIMA], a                                ; $6622: $e0 $05
    di                                            ; $6624: $f3
    add sp, -$1e                                  ; $6625: $e8 $e2
    ld b, e                                       ; $6627: $43
    ld c, a                                       ; $6628: $4f
    call nc, $8ca5                                ; $6629: $d4 $a5 $8c
    ld c, h                                       ; $662c: $4c
    ld b, [hl]                                    ; $662d: $46
    xor a                                         ; $662e: $af
    rst $18                                       ; $662f: $df
    and a                                         ; $6630: $a7
    dec a                                         ; $6631: $3d
    ld c, a                                       ; $6632: $4f
    ld a, $ce                                     ; $6633: $3e $ce
    ld a, a                                       ; $6635: $7f
    ld d, b                                       ; $6636: $50
    jr nc, jr_041_65ff                            ; $6637: $30 $c6

    sbc [hl]                                      ; $6639: $9e
    ld a, [hl]                                    ; $663a: $7e
    dec b                                         ; $663b: $05
    ld [hl], l                                    ; $663c: $75
    ld b, b                                       ; $663d: $40
    sbc $de                                       ; $663e: $de $de
    ld c, b                                       ; $6640: $48
    cp c                                          ; $6641: $b9
    call nc, $f788                                ; $6642: $d4 $88 $f7
    sbc c                                         ; $6645: $99
    daa                                           ; $6646: $27
    push de                                       ; $6647: $d5
    ld l, a                                       ; $6648: $6f
    db $e4                                        ; $6649: $e4
    inc h                                         ; $664a: $24
    ld d, h                                       ; $664b: $54
    ld [hl], d                                    ; $664c: $72
    ld [c], a                                     ; $664d: $e2

jr_041_664e:
    ld c, [hl]                                    ; $664e: $4e
    ld b, c                                       ; $664f: $41
    jr jr_041_6693                                ; $6650: $18 $41

    ld [$8f1e], a                                 ; $6652: $ea $1e $8f
    and h                                         ; $6655: $a4
    cp d                                          ; $6656: $ba
    ld hl, sp+$3f                                 ; $6657: $f8 $3f
    push de                                       ; $6659: $d5
    adc e                                         ; $665a: $8b
    ld a, d                                       ; $665b: $7a
    sbc [hl]                                      ; $665c: $9e
    ld a, h                                       ; $665d: $7c
    inc e                                         ; $665e: $1c
    call z, Call_000_21bd                         ; $665f: $cc $bd $21
    ld a, [bc]                                    ; $6662: $0a
    jp c, $9cbe                                   ; $6663: $da $be $9c

    ld l, b                                       ; $6666: $68
    ld b, $75                                     ; $6667: $06 $75
    db $10                                        ; $6669: $10
    cp [hl]                                       ; $666a: $be
    inc l                                         ; $666b: $2c
    or b                                          ; $666c: $b0
    ld d, b                                       ; $666d: $50
    ld sp, hl                                     ; $666e: $f9
    inc l                                         ; $666f: $2c
    ld b, e                                       ; $6670: $43
    cp h                                          ; $6671: $bc
    ld de, $a344                                  ; $6672: $11 $44 $a3
    ld l, a                                       ; $6675: $6f
    rst $00                                       ; $6676: $c7
    halt                                          ; $6677: $76
    ld c, $fd                                     ; $6678: $0e $fd
    ld a, [bc]                                    ; $667a: $0a
    ld [hl], l                                    ; $667b: $75
    rst $18                                       ; $667c: $df
    or $c7                                        ; $667d: $f6 $c7
    adc l                                         ; $667f: $8d
    and h                                         ; $6680: $a4
    or $6b                                        ; $6681: $f6 $6b
    halt                                          ; $6683: $76
    xor d                                         ; $6684: $aa
    ld c, a                                       ; $6685: $4f
    db $eb                                        ; $6686: $eb
    sub a                                         ; $6687: $97
    ld [hl-], a                                   ; $6688: $32
    ei                                            ; $6689: $fb
    ld a, b                                       ; $668a: $78
    or d                                          ; $668b: $b2
    jp hl                                         ; $668c: $e9


    and l                                         ; $668d: $a5
    ld a, h                                       ; $668e: $7c
    ld a, [bc]                                    ; $668f: $0a
    xor d                                         ; $6690: $aa
    push bc                                       ; $6691: $c5
    db $10                                        ; $6692: $10

jr_041_6693:
    and [hl]                                      ; $6693: $a6
    call z, Call_041_4293                         ; $6694: $cc $93 $42
    or l                                          ; $6697: $b5
    ld a, l                                       ; $6698: $7d
    add hl, de                                    ; $6699: $19
    ld c, l                                       ; $669a: $4d
    inc bc                                        ; $669b: $03
    di                                            ; $669c: $f3
    push bc                                       ; $669d: $c5
    ld sp, hl                                     ; $669e: $f9
    sub c                                         ; $669f: $91
    ld [hl], d                                    ; $66a0: $72
    ld h, c                                       ; $66a1: $61
    dec de                                        ; $66a2: $1b
    ld a, [c]                                     ; $66a3: $f2
    ld h, l                                       ; $66a4: $65
    ld d, d                                       ; $66a5: $52
    sub [hl]                                      ; $66a6: $96
    or a                                          ; $66a7: $b7
    ld [hl], d                                    ; $66a8: $72
    ld d, c                                       ; $66a9: $51
    rra                                           ; $66aa: $1f
    rra                                           ; $66ab: $1f
    adc d                                         ; $66ac: $8a
    jp nz, $f2c8                                  ; $66ad: $c2 $c8 $f2

    add $d7                                       ; $66b0: $c6 $d7
    xor a                                         ; $66b2: $af
    sbc [hl]                                      ; $66b3: $9e
    ld d, e                                       ; $66b4: $53
    ld a, $7c                                     ; $66b5: $3e $7c
    add hl, hl                                    ; $66b7: $29
    res 1, c                                      ; $66b8: $cb $89
    add [hl]                                      ; $66ba: $86
    xor b                                         ; $66bb: $a8
    adc a                                         ; $66bc: $8f
    rrca                                          ; $66bd: $0f
    ld b, l                                       ; $66be: $45
    ld h, c                                       ; $66bf: $61
    ld h, h                                       ; $66c0: $64
    ld a, c                                       ; $66c1: $79
    db $e3                                        ; $66c2: $e3
    adc e                                         ; $66c3: $8b
    and d                                         ; $66c4: $a2
    or $c2                                        ; $66c5: $f6 $c2
    ret z                                         ; $66c7: $c8

    or $18                                        ; $66c8: $f6 $18
    ld a, e                                       ; $66ca: $7b
    cp e                                          ; $66cb: $bb
    adc c                                         ; $66cc: $89
    cp d                                          ; $66cd: $ba
    ld l, h                                       ; $66ce: $6c
    db $10                                        ; $66cf: $10
    ld l, a                                       ; $66d0: $6f
    inc b                                         ; $66d1: $04
    cp d                                          ; $66d2: $ba
    call nc, $337e                                ; $66d3: $d4 $7e $33
    ld [bc], a                                    ; $66d6: $02
    or l                                          ; $66d7: $b5
    ld d, [hl]                                    ; $66d8: $56
    ld l, l                                       ; $66d9: $6d
    rst $28                                       ; $66da: $ef
    inc l                                         ; $66db: $2c
    ld [hl], $5e                                  ; $66dc: $36 $5e
    sub h                                         ; $66de: $94
    ld [hl-], a                                   ; $66df: $32
    sub [hl]                                      ; $66e0: $96
    cp d                                          ; $66e1: $ba
    rst $00                                       ; $66e2: $c7
    inc hl                                        ; $66e3: $23
    xor c                                         ; $66e4: $a9
    ld l, $fe                                     ; $66e5: $2e $fe
    ld c, a                                       ; $66e7: $4f
    push af                                       ; $66e8: $f5
    and d                                         ; $66e9: $a2
    sbc [hl]                                      ; $66ea: $9e
    daa                                           ; $66eb: $27
    rra                                           ; $66ec: $1f
    rlca                                          ; $66ed: $07
    ld [hl], e                                    ; $66ee: $73
    ld l, a                                       ; $66ef: $6f
    adc b                                         ; $66f0: $88
    add d                                         ; $66f1: $82
    or [hl]                                       ; $66f2: $b6
    cpl                                           ; $66f3: $2f
    daa                                           ; $66f4: $27
    sbc d                                         ; $66f5: $9a
    ld b, c                                       ; $66f6: $41
    dec e                                         ; $66f7: $1d
    add h                                         ; $66f8: $84
    cpl                                           ; $66f9: $2f
    dec bc                                        ; $66fa: $0b
    inc l                                         ; $66fb: $2c
    ld d, h                                       ; $66fc: $54
    ld a, $cb                                     ; $66fd: $3e $cb
    db $10                                        ; $66ff: $10
    ld l, a                                       ; $6700: $6f
    inc b                                         ; $6701: $04
    dec l                                         ; $6702: $2d
    ld h, [hl]                                    ; $6703: $66
    sbc h                                         ; $6704: $9c
    di                                            ; $6705: $f3
    ld e, a                                       ; $6706: $5f
    call nc, $cdc5                                ; $6707: $d4 $c5 $cd
    add $30                                       ; $670a: $c6 $30
    jp $9746                                      ; $670c: $c3 $46 $97


    dec b                                         ; $670f: $05
    ld a, e                                       ; $6710: $7b
    inc hl                                        ; $6711: $23
    ld [$d6d2], a                                 ; $6712: $ea $d2 $d6
    reti                                          ; $6715: $d9


    db $ed                                        ; $6716: $ed

Call_041_6717:
    ld [hl], a                                    ; $6717: $77
    ld l, [hl]                                    ; $6718: $6e
    add d                                         ; $6719: $82
    db $10                                        ; $671a: $10
    ld e, a                                       ; $671b: $5f
    inc b                                         ; $671c: $04
    ld d, c                                       ; $671d: $51
    sub a                                         ; $671e: $97
    ld [bc], a                                    ; $671f: $02
    ld e, e                                       ; $6720: $5b
    jr nz, @-$72                                  ; $6721: $20 $8c

    ld a, [hl]                                    ; $6723: $7e
    dec b                                         ; $6724: $05
    xor l                                         ; $6725: $ad
    add [hl]                                      ; $6726: $86
    sbc h                                         ; $6727: $9c
    call Call_041_4148                            ; $6728: $cd $48 $41
    inc b                                         ; $672b: $04
    ld h, c                                       ; $672c: $61
    dec de                                        ; $672d: $1b
    ld a, [c]                                     ; $672e: $f2
    db $e3                                        ; $672f: $e3
    ld b, e                                       ; $6730: $43
    ld a, a                                       ; $6731: $7f
    dec sp                                        ; $6732: $3b
    ld a, [hl+]                                   ; $6733: $2a
    sub e                                         ; $6734: $93
    or d                                          ; $6735: $b2
    cp h                                          ; $6736: $bc
    sub l                                         ; $6737: $95
    ret                                           ; $6738: $c9


    ld [bc], a                                    ; $6739: $02
    bit 0, l                                      ; $673a: $cb $45
    cp e                                          ; $673c: $bb
    scf                                           ; $673d: $37
    ld [hl], l                                    ; $673e: $75
    ld [hl], d                                    ; $673f: $72
    ld d, c                                       ; $6740: $51
    ret c                                         ; $6741: $d8

    ei                                            ; $6742: $fb
    ld d, e                                       ; $6743: $53
    inc e                                         ; $6744: $1c
    sbc l                                         ; $6745: $9d
    db $fd                                        ; $6746: $fd
    ld a, l                                       ; $6747: $7d
    ld a, [hl-]                                   ; $6748: $3a
    and h                                         ; $6749: $a4
    cpl                                           ; $674a: $2f
    inc a                                         ; $674b: $3c
    ld sp, hl                                     ; $674c: $f9
    cp l                                          ; $674d: $bd
    ccf                                           ; $674e: $3f
    dec bc                                        ; $674f: $0b
    or $46                                        ; $6750: $f6 $46
    call nc, $ada5                                ; $6752: $d4 $a5 $ad
    or e                                          ; $6755: $b3
    db $db                                        ; $6756: $db
    rst $28                                       ; $6757: $ef
    call c, $22e8                                 ; $6758: $dc $e8 $22
    inc hl                                        ; $675b: $23
    xor c                                         ; $675c: $a9
    ld l, $85                                     ; $675d: $2e $85
    jp hl                                         ; $675f: $e9


    ld [hl], d                                    ; $6760: $72
    add [hl]                                      ; $6761: $86
    ld c, e                                       ; $6762: $4b
    ld b, c                                       ; $6763: $41
    ld [$8f1e], a                                 ; $6764: $ea $1e $8f
    ld b, h                                       ; $6767: $44
    sub b                                         ; $6768: $90
    daa                                           ; $6769: $27
    ld d, c                                       ; $676a: $51
    ld a, [bc]                                    ; $676b: $0a
    ld b, d                                       ; $676c: $42
    dec h                                         ; $676d: $25
    bit 7, b                                      ; $676e: $cb $78
    ld b, h                                       ; $6770: $44
    or b                                          ; $6771: $b0
    ld d, e                                       ; $6772: $53
    add sp, -$7c                                  ; $6773: $e8 $84
    ld a, d                                       ; $6775: $7a
    cp l                                          ; $6776: $bd
    rst $20                                       ; $6777: $e7
    ld l, [hl]                                    ; $6778: $6e
    ld a, [$fed4]                                 ; $6779: $fa $d4 $fe
    ld d, b                                       ; $677c: $50
    ld sp, hl                                     ; $677d: $f9
    ldh a, [$6f]                                  ; $677e: $f0 $6f
    db $e4                                        ; $6780: $e4
    push de                                       ; $6781: $d5
    ret c                                         ; $6782: $d8

    inc de                                        ; $6783: $13
    ld l, a                                       ; $6784: $6f
    inc b                                         ; $6785: $04
    ld e, c                                       ; $6786: $59
    ld h, b                                       ; $6787: $60
    cp c                                          ; $6788: $b9
    inc d                                         ; $6789: $14
    ret c                                         ; $678a: $d8

    ld [bc], a                                    ; $678b: $02
    pop hl                                        ; $678c: $e1
    db $eb                                        ; $678d: $eb
    ei                                            ; $678e: $fb
    ld a, [hl]                                    ; $678f: $7e
    dec b                                         ; $6790: $05
    cp [hl]                                       ; $6791: $be
    db $fc                                        ; $6792: $fc
    sub a                                         ; $6793: $97
    inc de                                        ; $6794: $13
    add [hl]                                      ; $6795: $86
    reti                                          ; $6796: $d9


    ld d, h                                       ; $6797: $54
    dec bc                                        ; $6798: $0b
    ld b, h                                       ; $6799: $44
    ld c, l                                       ; $679a: $4d
    xor b                                         ; $679b: $a8
    ld a, h                                       ; $679c: $7c
    ld [hl], $88                                  ; $679d: $36 $88
    scf                                           ; $679f: $37
    add d                                         ; $67a0: $82
    sbc d                                         ; $67a1: $9a
    jp hl                                         ; $67a2: $e9


    sub b                                         ; $67a3: $90
    and d                                         ; $67a4: $a2
    ldh a, [$87]                                  ; $67a5: $f0 $87
    cp h                                          ; $67a7: $bc
    reti                                          ; $67a8: $d9


    ld c, a                                       ; $67a9: $4f
    cp h                                          ; $67aa: $bc
    ld de, $4dc4                                  ; $67ab: $11 $c4 $4d
    ld h, c                                       ; $67ae: $61
    ld e, b                                       ; $67af: $58
    dec a                                         ; $67b0: $3d
    ld l, c                                       ; $67b1: $69
    ld h, $0b                                     ; $67b2: $26 $0b
    dec d                                         ; $67b4: $15
    cp [hl]                                       ; $67b5: $be
    db $fc                                        ; $67b6: $fc
    sbc $1f                                       ; $67b7: $de $1f
    rst $08                                       ; $67b9: $cf
    cpl                                           ; $67ba: $2f
    rra                                           ; $67bb: $1f
    ld [hl], l                                    ; $67bc: $75
    ld l, c                                       ; $67bd: $69
    set 1, [hl]                                   ; $67be: $cb $ce
    dec sp                                        ; $67c0: $3b
    and d                                         ; $67c1: $a2
    add $a6                                       ; $67c2: $c6 $a6
    and $0a                                       ; $67c4: $e6 $0a
    sbc l                                         ; $67c6: $9d
    ld c, b                                       ; $67c7: $48
    xor d                                         ; $67c8: $aa
    xor c                                         ; $67c9: $a9
    jr nz, jr_041_6808                            ; $67ca: $20 $3c

    ld a, l                                       ; $67cc: $7d
    rst $18                                       ; $67cd: $df
    and a                                         ; $67ce: $a7
    or $6b                                        ; $67cf: $f6 $6b
    halt                                          ; $67d1: $76
    ld a, [hl+]                                   ; $67d2: $2a
    cp $8f                                        ; $67d3: $fe $8f
    ld [bc], a                                    ; $67d5: $02
    di                                            ; $67d6: $f3
    call nz, $91f9                                ; $67d7: $c4 $f9 $91
    jp nz, $7e4f                                  ; $67da: $c2 $4f $7e

    jp z, $9462                                   ; $67dd: $ca $62 $94

    ld c, b                                       ; $67e0: $48
    ld a, h                                       ; $67e1: $7c
    ld d, c                                       ; $67e2: $51
    sub e                                         ; $67e3: $93
    db $ed                                        ; $67e4: $ed
    ld [hl], c                                    ; $67e5: $71
    ld d, d                                       ; $67e6: $52
    ret nz                                        ; $67e7: $c0

    ld a, h                                       ; $67e8: $7c
    xor $d4                                       ; $67e9: $ee $d4
    rst $00                                       ; $67eb: $c7
    adc l                                         ; $67ec: $8d

jr_041_67ed:
    or b                                          ; $67ed: $b0
    ld c, l                                       ; $67ee: $4d
    ld l, $6e                                     ; $67ef: $2e $6e
    ld [hl], $86                                  ; $67f1: $36 $86
    add hl, de                                    ; $67f3: $19
    halt                                          ; $67f4: $76
    pop af                                        ; $67f5: $f1
    and c                                         ; $67f6: $a1
    rla                                           ; $67f7: $17
    ld [hl], l                                    ; $67f8: $75
    ld h, b                                       ; $67f9: $60
    sbc e                                         ; $67fa: $9b
    sbc d                                         ; $67fb: $9a
    dec hl                                        ; $67fc: $2b

jr_041_67fd:
    dec e                                         ; $67fd: $1d
    ld d, d                                       ; $67fe: $52
    inc d                                         ; $67ff: $14
    cp [hl]                                       ; $6800: $be
    sub h                                         ; $6801: $94
    sub c                                         ; $6802: $91
    ret                                           ; $6803: $c9


    jr c, jr_041_67ed                             ; $6804: $38 $e7

    cp a                                          ; $6806: $bf
    xor b                                         ; $6807: $a8

jr_041_6808:
    adc e                                         ; $6808: $8b
    sbc e                                         ; $6809: $9b
    adc l                                         ; $680a: $8d
    ld h, c                                       ; $680b: $61
    add [hl]                                      ; $680c: $86
    ld c, l                                       ; $680d: $4d
    sbc a                                         ; $680e: $9f
    ld [hl], $5f                                  ; $680f: $36 $5f
    ld hl, sp+$0b                                 ; $6811: $f8 $0b
    sbc a                                         ; $6813: $9f
    sbc e                                         ; $6814: $9b
    sbc d                                         ; $6815: $9a
    dec hl                                        ; $6816: $2b
    dec e                                         ; $6817: $1d
    ld d, d                                       ; $6818: $52
    inc d                                         ; $6819: $14
    cp [hl]                                       ; $681a: $be
    inc d                                         ; $681b: $14
    ld d, h                                       ; $681c: $54
    ld a, d                                       ; $681d: $7a
    ld a, e                                       ; $681e: $7b
    sbc c                                         ; $681f: $99
    ld l, b                                       ; $6820: $68
    ei                                            ; $6821: $fb
    ld [hl-], a                                   ; $6822: $32
    adc $f9                                       ; $6823: $ce $f9
    cpl                                           ; $6825: $2f
    ld [$43e2], a                                 ; $6826: $ea $e2 $43
    ld a, a                                       ; $6829: $7f
    dec sp                                        ; $682a: $3b
    ccf                                           ; $682b: $3f
    ld [hl], d                                    ; $682c: $72
    ld d, d                                       ; $682d: $52
    ret nz                                        ; $682e: $c0

    inc a                                         ; $682f: $3c
    ld a, l                                       ; $6830: $7d
    rst $18                                       ; $6831: $df
    ld b, a                                       ; $6832: $47
    ld e, l                                       ; $6833: $5d
    xor b                                         ; $6834: $a8
    call nz, $c6cd                                ; $6835: $c4 $cd $c6
    jr nc, jr_041_67fd                            ; $6838: $30 $c3

    ld b, [hl]                                    ; $683a: $46
    rla                                           ; $683b: $17
    ld [hl], l                                    ; $683c: $75
    add [hl]                                      ; $683d: $86
    xor e                                         ; $683e: $ab
    cp c                                          ; $683f: $b9
    ld [bc], a                                    ; $6840: $02
    sbc [hl]                                      ; $6841: $9e
    ld a, [hl]                                    ; $6842: $7e
    ld b, h                                       ; $6843: $44
    ld c, a                                       ; $6844: $4f
    cp l                                          ; $6845: $bd
    sbc $89                                       ; $6846: $de $89
    rrca                                          ; $6848: $0f
    ld b, l                                       ; $6849: $45
    pop hl                                        ; $684a: $e1
    ld c, c                                       ; $684b: $49
    add c                                         ; $684c: $81
    dec l                                         ; $684d: $2d
    db $10                                        ; $684e: $10
    ld b, [hl]                                    ; $684f: $46
    rst $18                                       ; $6850: $df
    rst $30                                       ; $6851: $f7
    dec hl                                        ; $6852: $2b
    dec e                                         ; $6853: $1d
    ld d, d                                       ; $6854: $52
    inc d                                         ; $6855: $14
    cp $d4                                        ; $6856: $fe $d4
    ld [$0f95], sp                                ; $6858: $08 $95 $0f
    add hl, bc                                    ; $685b: $09
    ei                                            ; $685c: $fb
    inc l                                         ; $685d: $2c
    ret c                                         ; $685e: $d8

    dec de                                        ; $685f: $1b
    ld d, c                                       ; $6860: $51
    sub a                                         ; $6861: $97
    ld [bc], a                                    ; $6862: $02
    ld e, e                                       ; $6863: $5b
    jr nz, @-$72                                  ; $6864: $20 $8c

    ld a, $9d                                     ; $6866: $3e $9d
    ld c, b                                       ; $6868: $48
    xor d                                         ; $6869: $aa
    xor c                                         ; $686a: $a9
    jr nz, jr_041_68a9                            ; $686b: $20 $3c

    ld a, l                                       ; $686d: $7d
    rst $18                                       ; $686e: $df
    rst $20                                       ; $686f: $e7
    halt                                          ; $6870: $76
    jp c, $bb3a                                   ; $6871: $da $3a $bb

    db $fd                                        ; $6874: $fd
    adc $4d                                       ; $6875: $ce $4d
    ld l, d                                       ; $6877: $6a
    add h                                         ; $6878: $84
    ld c, d                                       ; $6879: $4a
    ld a, [bc]                                    ; $687a: $0a
    ld l, h                                       ; $687b: $6c
    add c                                         ; $687c: $81
    jr nc, jr_041_68e9                            ; $687d: $30 $6a

    xor [hl]                                      ; $687f: $ae
    sbc [hl]                                      ; $6880: $9e
    ld d, e                                       ; $6881: $53
    ld a, $ce                                     ; $6882: $3e $ce
    and e                                         ; $6884: $a3
    ld b, [hl]                                    ; $6885: $46
    cp h                                          ; $6886: $bc
    or $d9                                        ; $6887: $f6 $d9
    ld [$abf1], sp                                ; $6889: $08 $f1 $ab
    dec b                                         ; $688c: $05
    ld d, c                                       ; $688d: $51
    ret c                                         ; $688e: $d8

    pop de                                        ; $688f: $d1
    db $ec                                        ; $6890: $ec
    cp h                                          ; $6891: $bc
    inc hl                                        ; $6892: $23
    xor b                                         ; $6893: $a8
    or l                                          ; $6894: $b5
    ld [bc], a                                    ; $6895: $02
    cp [hl]                                       ; $6896: $be
    xor b                                         ; $6897: $a8
    db $f4                                        ; $6898: $f4
    ld b, $83                                     ; $6899: $06 $83
    ld e, [hl]                                    ; $689b: $5e
    rrca                                          ; $689c: $0f
    sbc e                                         ; $689d: $9b
    jr z, jr_041_68a8                             ; $689e: $28 $08

    ld e, a                                       ; $68a0: $5f
    call nc, $c0a5                                ; $68a1: $d4 $a5 $c0
    ld d, $08                                     ; $68a4: $16 $08
    and e                                         ; $68a6: $a3
    adc a                                         ; $68a7: $8f

jr_041_68a8:
    rst $28                                       ; $68a8: $ef

jr_041_68a9:
    ld [bc], a                                    ; $68a9: $02
    sbc e                                         ; $68aa: $9b
    jr c, jr_041_68ec                             ; $68ab: $38 $3f

    ld d, d                                       ; $68ad: $52
    xor $65                                       ; $68ae: $ee $65
    ld [c], a                                     ; $68b0: $e2
    ld b, e                                       ; $68b1: $43
    or c                                          ; $68b2: $b1
    rst $30                                       ; $68b3: $f7
    ld b, l                                       ; $68b4: $45
    dec sp                                        ; $68b5: $3b
    ld e, d                                       ; $68b6: $5a
    ld hl, sp-$06                                 ; $68b7: $f8 $fa
    dec d                                         ; $68b9: $15
    ld [hl], l                                    ; $68ba: $75
    ld b, [hl]                                    ; $68bb: $46
    ld [c], a                                     ; $68bc: $e2
    ld l, $e5                                     ; $68bd: $2e $e5
    cp [hl]                                       ; $68bf: $be
    sbc d                                         ; $68c0: $9a
    ld a, $9d                                     ; $68c1: $3e $9d
    ld c, b                                       ; $68c3: $48
    ld d, $2a                                     ; $68c4: $16 $2a
    inc a                                         ; $68c6: $3c
    add hl, sp                                    ; $68c7: $39
    ld c, c                                       ; $68c8: $49
    dec b                                         ; $68c9: $05
    sbc c                                         ; $68ca: $99
    ld a, $2d                                     ; $68cb: $3e $2d
    rst $00                                       ; $68cd: $c7
    ld sp, hl                                     ; $68ce: $f9
    rst $28                                       ; $68cf: $ef
    ld l, l                                       ; $68d0: $6d
    ld [c], a                                     ; $68d1: $e2
    db $fc                                        ; $68d2: $fc
    ret z                                         ; $68d3: $c8

    cp $78                                        ; $68d4: $fe $78
    cp a                                          ; $68d6: $bf
    ld a, [$48c8]                                 ; $68d7: $fa $c8 $48
    ld l, d                                       ; $68da: $6a
    add h                                         ; $68db: $84

jr_041_68dc:
    add hl, hl                                    ; $68dc: $29
    di                                            ; $68dd: $f3
    db $f4                                        ; $68de: $f4
    pop af                                        ; $68df: $f1
    inc e                                         ; $68e0: $1c
    pop hl                                        ; $68e1: $e1
    inc de                                        ; $68e2: $13
    ld a, [$38f9]                                 ; $68e3: $fa $f9 $38
    sbc b                                         ; $68e6: $98
    ld a, e                                       ; $68e7: $7b
    ld b, e                                       ; $68e8: $43

jr_041_68e9:
    cp a                                          ; $68e9: $bf
    ld [bc], a                                    ; $68ea: $02
    db $ed                                        ; $68eb: $ed

jr_041_68ec:
    cp a                                          ; $68ec: $bf
    cp b                                          ; $68ed: $b8
    adc a                                         ; $68ee: $8f
    rrca                                          ; $68ef: $0f
    db $fd                                        ; $68f0: $fd
    db $ed                                        ; $68f1: $ed
    and [hl]                                      ; $68f2: $a6
    ld a, h                                       ; $68f3: $7c
    sbc a                                         ; $68f4: $9f
    ld h, $b2                                     ; $68f5: $26 $b2
    ld d, b                                       ; $68f7: $50
    pop hl                                        ; $68f8: $e1
    ret                                           ; $68f9: $c9


    ld c, c                                       ; $68fa: $49
    ld a, [hl+]                                   ; $68fb: $2a
    ret z                                         ; $68fc: $c8

    db $f4                                        ; $68fd: $f4
    pop af                                        ; $68fe: $f1
    push hl                                       ; $68ff: $e5
    cp a                                          ; $6900: $bf
    inc l                                         ; $6901: $2c
    jr nc, jr_041_6909                            ; $6902: $30 $05

    ld d, c                                       ; $6904: $51
    inc de                                        ; $6905: $13
    ld b, [hl]                                    ; $6906: $46
    or l                                          ; $6907: $b5
    ld c, h                                       ; $6908: $4c

jr_041_6909:
    ld d, $03                                     ; $6909: $16 $03
    pop af                                        ; $690b: $f1
    and [hl]                                      ; $690c: $a6
    ld c, h                                       ; $690d: $4c
    ld d, $58                                     ; $690e: $16 $58
    ld l, [hl]                                    ; $6910: $6e
    add a                                         ; $6911: $87
    jp hl                                         ; $6912: $e9


    db $e4                                        ; $6913: $e4
    xor e                                         ; $6914: $ab
    ld [hl], e                                    ; $6915: $73
    sub e                                         ; $6916: $93
    ld a, [hl-]                                   ; $6917: $3a
    jr nz, jr_041_6989                            ; $6918: $20 $6f

    ld l, a                                       ; $691a: $6f
    db $f4                                        ; $691b: $f4
    dec hl                                        ; $691c: $2b
    ld l, l                                       ; $691d: $6d
    db $ed                                        ; $691e: $ed
    res 1, c                                      ; $691f: $cb $89
    ld h, [hl]                                    ; $6921: $66
    ld d, b                                       ; $6922: $50
    rlca                                          ; $6923: $07
    pop hl                                        ; $6924: $e1
    adc e                                         ; $6925: $8b
    adc h                                         ; $6926: $8c
    ld b, h                                       ; $6927: $44
    rst $38                                       ; $6928: $ff
    add l                                         ; $6929: $85
    ld e, a                                       ; $692a: $5f
    ld b, [hl]                                    ; $692b: $46
    sub a                                         ; $692c: $97
    cp d                                          ; $692d: $ba
    jp $eb0c                                      ; $692e: $c3 $0c $eb


    db $d3                                        ; $6931: $d3
    pop af                                        ; $6932: $f1
    sbc b                                         ; $6933: $98
    ld a, h                                       ; $6934: $7c
    ld a, $0e                                     ; $6935: $3e $0e
    and $de                                       ; $6937: $e6 $de
    ret nc                                        ; $6939: $d0

    xor a                                         ; $693a: $af
    ld l, l                                       ; $693b: $6d
    rst $28                                       ; $693c: $ef
    jr nc, jr_041_68dc                            ; $693d: $30 $9d

    ld a, h                                       ; $693f: $7c
    ld [hl], l                                    ; $6940: $75
    ld l, [hl]                                    ; $6941: $6e
    ld [hl+], a                                   ; $6942: $22
    inc hl                                        ; $6943: $23
    ld [hl], c                                    ; $6944: $71
    ret z                                         ; $6945: $c8

    cp $78                                        ; $6946: $fe $78
    rst $18                                       ; $6948: $df
    add c                                         ; $6949: $81
    db $fc                                        ; $694a: $fc
    inc l                                         ; $694b: $2c
    rst $10                                       ; $694c: $d7
    ld b, b                                       ; $694d: $40
    ld e, [hl]                                    ; $694e: $5e
    push hl                                       ; $694f: $e5
    rlc d                                         ; $6950: $cb $02
    and $37                                       ; $6952: $e6 $37
    inc b                                         ; $6954: $04
    ld a, [hl+]                                   ; $6955: $2a
    dec [hl]                                      ; $6956: $35
    and d                                         ; $6957: $a2
    add [hl]                                      ; $6958: $86
    and h                                         ; $6959: $a4
    inc a                                         ; $695a: $3c
    ld a, c                                       ; $695b: $79
    ld d, c                                       ; $695c: $51
    ld l, a                                       ; $695d: $6f
    ret z                                         ; $695e: $c8

    ld c, c                                       ; $695f: $49
    ld c, [hl]                                    ; $6960: $4e
    cp h                                          ; $6961: $bc
    or b                                          ; $6962: $b0
    ld a, [bc]                                    ; $6963: $0a
    halt                                          ; $6964: $76
    rst $18                                       ; $6965: $df
    and a                                         ; $6966: $a7
    ld l, $4a                                     ; $6967: $2e $4a
    cp c                                          ; $6969: $b9
    ld l, d                                       ; $696a: $6a
    or d                                          ; $696b: $b2
    sbc a                                         ; $696c: $9f
    inc e                                         ; $696d: $1c
    dec de                                        ; $696e: $1b
    ld e, l                                       ; $696f: $5d
    ld [$330e], a                                 ; $6970: $ea $0e $33
    xor h                                         ; $6973: $ac
    ld c, a                                       ; $6974: $4f
    inc sp                                        ; $6975: $33
    ld e, c                                       ; $6976: $59
    xor b                                         ; $6977: $a8
    ldh a, [rLYC]                                 ; $6978: $f0 $45
    ld e, l                                       ; $697a: $5d
    ld d, $c8                                     ; $697b: $16 $c8
    rst $28                                       ; $697d: $ef
    db $e3                                        ; $697e: $e3
    ld a, d                                       ; $697f: $7a
    or d                                          ; $6980: $b2
    ret nz                                        ; $6981: $c0

    jp nc, $9d96                                  ; $6982: $d2 $96 $9d

    ld [hl], a                                    ; $6985: $77
    ld b, h                                       ; $6986: $44
    adc l                                         ; $6987: $8d
    ld c, l                                       ; $6988: $4d

jr_041_6989:
    sbc a                                         ; $6989: $9f
    or $3e                                        ; $698a: $f6 $3e
    dec de                                        ; $698c: $1b
    call nz, Call_041_411b                        ; $698d: $c4 $1b $41
    ld l, d                                       ; $6990: $6a
    add h                                         ; $6991: $84
    ld h, c                                       ; $6992: $61
    push de                                       ; $6993: $d5
    ret                                           ; $6994: $c9


    di                                            ; $6995: $f3
    rst $30                                       ; $6996: $f7
    dec hl                                        ; $6997: $2b
    sbc [hl]                                      ; $6998: $9e
    sub a                                         ; $6999: $97
    ld [hl], d                                    ; $699a: $72
    ld e, a                                       ; $699b: $5f
    adc l                                         ; $699c: $8d
    ld l, $fe                                     ; $699d: $2e $fe
    adc c                                         ; $699f: $89
    rst $30                                       ; $69a0: $f7
    db $e4                                        ; $69a1: $e4
    ld a, b                                       ; $69a2: $78
    ld a, [$0a74]                                 ; $69a3: $fa $74 $0a
    ld [hl], l                                    ; $69a6: $75
    ld e, a                                       ; $69a7: $5f
    ld c, l                                       ; $69a8: $4d
    ld a, [bc]                                    ; $69a9: $0a
    ld d, d                                       ; $69aa: $52
    rst $30                                       ; $69ab: $f7
    ld a, b                                       ; $69ac: $78
    inc h                                         ; $69ad: $24
    ld c, a                                       ; $69ae: $4f
    ld e, d                                       ; $69af: $5a
    dec a                                         ; $69b0: $3d
    cp c                                          ; $69b1: $b9
    dec e                                         ; $69b2: $1d
    scf                                           ; $69b3: $37
    or $9a                                        ; $69b4: $f6 $9a
    halt                                          ; $69b6: $76
    inc de                                        ; $69b7: $13
    ld [hl], l                                    ; $69b8: $75
    pop hl                                        ; $69b9: $e1
    pop de                                        ; $69ba: $d1
    or $c1                                        ; $69bb: $f6 $c1
    xor d                                         ; $69bd: $aa
    adc e                                         ; $69be: $8b
    jp nz, $a165                                  ; $69bf: $c2 $65 $a1

    jp nz, $cba7                                  ; $69c2: $c2 $a7 $cb

    dec hl                                        ; $69c5: $2b
    sub h                                         ; $69c6: $94
    ld [hl-], a                                   ; $69c7: $32
    dec [hl]                                      ; $69c8: $35
    ld d, a                                       ; $69c9: $57
    call $a166                                    ; $69ca: $cd $66 $a1
    jp nz, $df97                                  ; $69cd: $c2 $97 $df

    ei                                            ; $69d0: $fb
    jp $e3f4                                      ; $69d1: $c3 $f4 $e3


    ld sp, hl                                     ; $69d4: $f9
    push hl                                       ; $69d5: $e5
    or e                                          ; $69d6: $b3
    ret nz                                        ; $69d7: $c0

    ld a, [c]                                     ; $69d8: $f2
    inc h                                         ; $69d9: $24
    inc l                                         ; $69da: $2c
    ld l, h                                       ; $69db: $6c
    ld b, e                                       ; $69dc: $43
    ld a, $4f                                     ; $69dd: $3e $4f
    or h                                          ; $69df: $b4
    ld a, l                                       ; $69e0: $7d
    add hl, sp                                    ; $69e1: $39
    pop de                                        ; $69e2: $d1
    inc c                                         ; $69e3: $0c
    ld [$7c20], a                                 ; $69e4: $ea $20 $7c
    cp d                                          ; $69e7: $ba
    ld d, h                                       ; $69e8: $54
    rra                                           ; $69e9: $1f
    dec [hl]                                      ; $69ea: $35
    and h                                         ; $69eb: $a4
    push de                                       ; $69ec: $d5
    sbc a                                         ; $69ed: $9f
    ld [hl-], a                                   ; $69ee: $32
    call z, Call_000_26f6                         ; $69ef: $cc $f6 $26
    ld c, b                                       ; $69f2: $48
    inc de                                        ; $69f3: $13
    ld e, c                                       ; $69f4: $59
    ld h, b                                       ; $69f5: $60
    adc $5f                                       ; $69f6: $ce $5f
    ld l, a                                       ; $69f8: $6f
    db $fc                                        ; $69f9: $fc
    ld a, a                                       ; $69fa: $7f
    cp c                                          ; $69fb: $b9
    ld l, d                                       ; $69fc: $6a
    add hl, sp                                    ; $69fd: $39
    ld l, b                                       ; $69fe: $68
    rst $08                                       ; $69ff: $cf
    inc de                                        ; $6a00: $13
    or [hl]                                       ; $6a01: $b6
    ld e, c                                       ; $6a02: $59
    sub [hl]                                      ; $6a03: $96
    add hl, bc                                    ; $6a04: $09
    and e                                         ; $6a05: $a3
    ld e, d                                       ; $6a06: $5a
    and [hl]                                      ; $6a07: $a6
    ld c, a                                       ; $6a08: $4f
    xor e                                         ; $6a09: $ab
    ld a, [bc]                                    ; $6a0a: $0a
    and l                                         ; $6a0b: $a5
    ld c, h                                       ; $6a0c: $4c
    call c, Call_041_5d98                         ; $6a0d: $dc $98 $5d
    ld a, [hl]                                    ; $6a10: $7e
    rst $28                                       ; $6a11: $ef
    rst $08                                       ; $6a12: $cf
    ld h, d                                       ; $6a13: $62
    ld d, e                                       ; $6a14: $53
    jp z, $9f55                                   ; $6a15: $ca $55 $9f

    dec c                                         ; $6a18: $0d
    ld [c], a                                     ; $6a19: $e2
    adc l                                         ; $6a1a: $8d

Jump_041_6a1b:
    and b                                         ; $6a1b: $a0
    rst $28                                       ; $6a1c: $ef
    ei                                            ; $6a1d: $fb
    ld a, h                                       ; $6a1e: $7c
    ld a, [hl+]                                   ; $6a1f: $2a

Call_041_6a20:
    ret z                                         ; $6a20: $c8

    db $c4, $f9, $11                              ; $6a21: $c4 $f9 $11
    and [hl]                                      ; $6a24: $a6
    sub c                                         ; $6a25: $91
    sub c                                         ; $6a26: $91
    sub b                                         ; $6a27: $90
    and e                                         ; $6a28: $a3
    db $ed                                        ; $6a29: $ed
    ei                                            ; $6a2a: $fb
    ld a, b                                       ; $6a2b: $78
    rst $18                                       ; $6a2c: $df
    sub b                                         ; $6a2d: $90
    dec b                                         ; $6a2e: $05
    and [hl]                                      ; $6a2f: $a6
    ld h, b                                       ; $6a30: $60
    ret z                                         ; $6a31: $c8

    ld l, a                                       ; $6a32: $6f
    or [hl]                                       ; $6a33: $b6
    bit 0, d                                      ; $6a34: $cb $42
    add l                                         ; $6a36: $85
    cpl                                           ; $6a37: $2f
    cp a                                          ; $6a38: $bf
    rst $30                                       ; $6a39: $f7
    add a                                         ; $6a3a: $87
    jp hl                                         ; $6a3b: $e9


    rst $00                                       ; $6a3c: $c7
    di                                            ; $6a3d: $f3
    set 6, a                                      ; $6a3e: $cb $f7
    dec hl                                        ; $6a40: $2b
    dec e                                         ; $6a41: $1d
    rra                                           ; $6a42: $1f
    db $e4                                        ; $6a43: $e4
    and d                                         ; $6a44: $a2
    inc a                                         ; $6a45: $3c
    add $39                                       ; $6a46: $c6 $39
    rst $38                                       ; $6a48: $ff
    ld c, l                                       ; $6a49: $4d
    ld [hl], $a2                                  ; $6a4a: $36 $a2
    cp l                                          ; $6a4c: $bd
    ld l, c                                       ; $6a4d: $69
    ld b, e                                       ; $6a4e: $43
    ld h, b                                       ; $6a4f: $60
    inc hl                                        ; $6a50: $23
    add d                                         ; $6a51: $82
    sbc l                                         ; $6a52: $9d
    ld a, [c]                                     ; $6a53: $f2
    ld a, e                                       ; $6a54: $7b
    inc b                                         ; $6a55: $04
    ld d, c                                       ; $6a56: $51
    ld e, $27                                     ; $6a57: $1e $27
    sbc d                                         ; $6a59: $9a
    and c                                         ; $6a5a: $a1
    sub h                                         ; $6a5b: $94
    jp hl                                         ; $6a5c: $e9


    db $d3                                        ; $6a5d: $d3
    ld hl, $edfd                                  ; $6a5e: $21 $fd $ed
    xor b                                         ; $6a61: $a8
    db $e4                                        ; $6a62: $e4
    scf                                           ; $6a63: $37
    db $db                                        ; $6a64: $db
    call nz, $fc5d                                ; $6a65: $c4 $5d $fc
    sbc a                                         ; $6a68: $9f
    ld a, [bc]                                    ; $6a69: $0a
    and l                                         ; $6a6a: $a5
    ld c, h                                       ; $6a6b: $4c
    or h                                          ; $6a6c: $b4
    ld a, l                                       ; $6a6d: $7d
    add hl, de                                    ; $6a6e: $19
    rst $20                                       ; $6a6f: $e7
    db $fc                                        ; $6a70: $fc
    sub a                                         ; $6a71: $97

jr_041_6a72:
    ld d, a                                       ; $6a72: $57
    ld l, d                                       ; $6a73: $6a
    ld c, d                                       ; $6a74: $4a
    sbc c                                         ; $6a75: $99
    ld a, [hl]                                    ; $6a76: $7e
    dec b                                         ; $6a77: $05
    sbc [hl]                                      ; $6a78: $9e
    jr nc, jr_041_6a72                            ; $6a79: $30 $f7

    ld de, $165c                                  ; $6a7b: $11 $5c $16
    ld b, e                                       ; $6a7e: $43
    add hl, hl                                    ; $6a7f: $29
    rla                                           ; $6a80: $17
    add l                                         ; $6a81: $85
    cp l                                          ; $6a82: $bd
    ccf                                           ; $6a83: $3f
    xor $0b                                       ; $6a84: $ee $0b
    sbc b                                         ; $6a86: $98
    ccf                                           ; $6a87: $3f
    ld [$fb52], a                                 ; $6a88: $ea $52 $fb
    dec [hl]                                      ; $6a8b: $35
    dec sp                                        ; $6a8c: $3b
    push de                                       ; $6a8d: $d5
    and a                                         ; $6a8e: $a7
    ld l, l                                       ; $6a8f: $6d
    ret                                           ; $6a90: $c9


    ld a, [c]                                     ; $6a91: $f2
    and l                                         ; $6a92: $a5
    inc a                                         ; $6a93: $3c
    ld c, a                                       ; $6a94: $4f
    xor d                                         ; $6a95: $aa
    ld c, e                                       ; $6a96: $4b
    adc l                                         ; $6a97: $8d
    cp b                                          ; $6a98: $b8
    ld e, a                                       ; $6a99: $5f
    adc [hl]                                      ; $6a9a: $8e
    sbc a                                         ; $6a9b: $9f
    daa                                           ; $6a9c: $27
    ld [$36c2], a                                 ; $6a9d: $ea $c2 $36
    db $e4                                        ; $6aa0: $e4
    dec de                                        ; $6aa1: $1b
    and d                                         ; $6aa2: $a2
    and b                                         ; $6aa3: $a0
    db $ed                                        ; $6aa4: $ed
    res 1, c                                      ; $6aa5: $cb $89
    ld h, [hl]                                    ; $6aa7: $66
    ld d, b                                       ; $6aa8: $50
    rlca                                          ; $6aa9: $07
    pop hl                                        ; $6aaa: $e1
    adc e                                         ; $6aab: $8b
    ld h, b                                       ; $6aac: $60
    and a                                         ; $6aad: $a7
    ret nc                                        ; $6aae: $d0

    adc c                                         ; $6aaf: $89
    halt                                          ; $6ab0: $76
    ld l, a                                       ; $6ab1: $6f
    ld [$fa64], a                                 ; $6ab2: $ea $64 $fa
    dec d                                         ; $6ab5: $15
    db $ed                                        ; $6ab6: $ed
    ld e, a                                       ; $6ab7: $5f
    ld l, d                                       ; $6ab8: $6a
    and h                                         ; $6ab9: $a4
    and b                                         ; $6aba: $a0
    jp nc, $f3db                                  ; $6abb: $d2 $db $f3

    ld b, h                                       ; $6abe: $44
    ld e, l                                       ; $6abf: $5d
    sbc [hl]                                      ; $6ac0: $9e
    add h                                         ; $6ac1: $84
    add hl, bc                                    ; $6ac2: $09
    ld b, d                                       ; $6ac3: $42
    ld e, [hl]                                    ; $6ac4: $5e
    pop hl                                        ; $6ac5: $e1
    adc c                                         ; $6ac6: $89
    rrca                                          ; $6ac7: $0f
    db $fd                                        ; $6ac8: $fd
    db $ed                                        ; $6ac9: $ed
    xor b                                         ; $6aca: $a8
    ld c, h                                       ; $6acb: $4c
    ld a, [bc]                                    ; $6acc: $0a
    adc l                                         ; $6acd: $8d
    rrca                                          ; $6ace: $0f
    add l                                         ; $6acf: $85
    or [hl]                                       ; $6ad0: $b6
    cpl                                           ; $6ad1: $2f
    add l                                         ; $6ad2: $85
    db $ed                                        ; $6ad3: $ed
    push hl                                       ; $6ad4: $e5
    or d                                          ; $6ad5: $b2
    ld sp, $7172                                  ; $6ad6: $31 $72 $71
    inc hl                                        ; $6ad9: $23
    reti                                          ; $6ada: $d9


    rra                                           ; $6adb: $1f
    ld b, [hl]                                    ; $6adc: $46
    pop hl                                        ; $6add: $e1
    adc a                                         ; $6ade: $8f
    ld a, [c]                                     ; $6adf: $f2
    ld a, b                                       ; $6ae0: $78
    rra                                           ; $6ae1: $1f
    ld a, d                                       ; $6ae2: $7a
    ei                                            ; $6ae3: $fb
    di                                            ; $6ae4: $f3
    dec sp                                        ; $6ae5: $3b
    dec b                                         ; $6ae6: $05
    ld l, [hl]                                    ; $6ae7: $6e
    ld b, h                                       ; $6ae8: $44
    ld c, l                                       ; $6ae9: $4d
    sub [hl]                                      ; $6aea: $96
    ld a, e                                       ; $6aeb: $7b
    sbc c                                         ; $6aec: $99
    ld a, [hl]                                    ; $6aed: $7e
    dec b                                         ; $6aee: $05
    ld [hl], l                                    ; $6aef: $75
    or b                                          ; $6af0: $b0
    or a                                          ; $6af1: $b7
    rlca                                          ; $6af2: $07
    push af                                       ; $6af3: $f5
    ld a, d                                       ; $6af4: $7a
    rst $08                                       ; $6af5: $cf
    db $dd                                        ; $6af6: $dd
    ld b, h                                       ; $6af7: $44
    ld e, l                                       ; $6af8: $5d
    ld [$8f1e], a                                 ; $6af9: $ea $1e $8f
    call nz, $ca5d                                ; $6afc: $c4 $5d $ca
    ret z                                         ; $6aff: $c8

    call nz, $7e87                                ; $6b00: $c4 $87 $7e
    cp c                                          ; $6b03: $b9
    inc d                                         ; $6b04: $14
    ld d, h                                       ; $6b05: $54
    adc e                                         ; $6b06: $8b
    ld hl, $da0a                                  ; $6b07: $21 $0a $da
    cp [hl]                                       ; $6b0a: $be
    sbc h                                         ; $6b0b: $9c
    ld l, b                                       ; $6b0c: $68
    ld b, $75                                     ; $6b0d: $06 $75
    db $10                                        ; $6b0f: $10
    cp [hl]                                       ; $6b10: $be
    ld a, $75                                     ; $6b11: $3e $75
    add a                                         ; $6b13: $87
    dec c                                         ; $6b14: $0d
    ld a, d                                       ; $6b15: $7a
    dec a                                         ; $6b16: $3d
    ld l, h                                       ; $6b17: $6c
    add d                                         ; $6b18: $82
    ld d, d                                       ; $6b19: $52
    ld h, b                                       ; $6b1a: $60
    ret z                                         ; $6b1b: $c8

    sub b                                         ; $6b1c: $90
    ld d, h                                       ; $6b1d: $54
    ld a, h                                       ; $6b1e: $7c
    jr z, jr_041_6b95                             ; $6b1f: $28 $74

    ld e, c                                       ; $6b21: $59
    ld h, b                                       ; $6b22: $60
    push hl                                       ; $6b23: $e5
    ld h, h                                       ; $6b24: $64
    ld d, d                                       ; $6b25: $52
    add sp, -$22                                  ; $6b26: $e8 $de
    ret z                                         ; $6b28: $c8

    ld a, [c]                                     ; $6b29: $f2
    ld b, $be                                     ; $6b2a: $06 $be
    ld a, [hl]                                    ; $6b2c: $7e
    dec b                                         ; $6b2d: $05
    or l                                          ; $6b2e: $b5
    rst $38                                       ; $6b2f: $ff
    or d                                          ; $6b30: $b2
    ret nz                                        ; $6b31: $c0

    ld [c], a                                     ; $6b32: $e2
    cp [hl]                                       ; $6b33: $be
    ld c, h                                       ; $6b34: $4c
    ret z                                         ; $6b35: $c8

    dec hl                                        ; $6b36: $2b
    inc a                                         ; $6b37: $3c
    pop af                                        ; $6b38: $f1
    and c                                         ; $6b39: $a1
    cp a                                          ; $6b3a: $bf
    sbc l                                         ; $6b3b: $9d
    rra                                           ; $6b3c: $1f
    add hl, sp                                    ; $6b3d: $39
    pop de                                        ; $6b3e: $d1
    inc c                                         ; $6b3f: $0c
    ld [$8c20], a                                 ; $6b40: $ea $20 $8c
    inc l                                         ; $6b43: $2c
    or b                                          ; $6b44: $b0
    inc l                                         ; $6b45: $2c
    ld b, e                                       ; $6b46: $43
    cp h                                          ; $6b47: $bc
    sub c                                         ; $6b48: $91
    adc e                                         ; $6b49: $8b
    rrca                                          ; $6b4a: $0f

jr_041_6b4b:
    cp l                                          ; $6b4b: $bd
    sbc h                                         ; $6b4c: $9c
    ldh a, [$98]                                  ; $6b4d: $f0 $98
    ld c, h                                       ; $6b4f: $4c
    xor l                                         ; $6b50: $ad
    dec d                                         ; $6b51: $15
    ld [hl], l                                    ; $6b52: $75
    ld d, b                                       ; $6b53: $50
    ld a, [bc]                                    ; $6b54: $0a
    sub l                                         ; $6b55: $95
    rst $08                                       ; $6b56: $cf
    ld [hl-], a                                   ; $6b57: $32
    call nz, Call_041_411b                        ; $6b58: $c4 $1b $41
    ld d, $5a                                     ; $6b5b: $16 $5a
    ld a, a                                       ; $6b5d: $7f
    inc e                                         ; $6b5e: $1c
    or l                                          ; $6b5f: $b5
    scf                                           ; $6b60: $37
    cp [hl]                                       ; $6b61: $be
    xor b                                         ; $6b62: $a8
    rrca                                          ; $6b63: $0f
    inc hl                                        ; $6b64: $23
    add l                                         ; $6b65: $85
    ld d, c                                       ; $6b66: $51
    jp z, Jump_041_52e8                           ; $6b67: $ca $e8 $52

    ld [hl], a                                    ; $6b6a: $77
    sbc b                                         ; $6b6b: $98
    ld h, c                                       ; $6b6c: $61
    db $fd                                        ; $6b6d: $fd
    ld a, [bc]                                    ; $6b6e: $0a
    cp [hl]                                       ; $6b6f: $be
    db $fc                                        ; $6b70: $fc
    sub a                                         ; $6b71: $97
    ld h, a                                       ; $6b72: $67
    add [hl]                                      ; $6b73: $86
    ldh a, [$e4]                                  ; $6b74: $f0 $e4
    inc hl                                        ; $6b76: $23
    inc hl                                        ; $6b77: $23
    pop af                                        ; $6b78: $f1
    ld [hl], b                                    ; $6b79: $70
    xor a                                         ; $6b7a: $af
    ld h, b                                       ; $6b7b: $60
    ldh a, [$88]                                  ; $6b7c: $f0 $88
    add d                                         ; $6b7e: $82
    or b                                          ; $6b7f: $b0
    ld c, l                                       ; $6b80: $4d
    xor b                                         ; $6b81: $a8
    call nz, Call_041_56fd                        ; $6b82: $c4 $fd $56
    or b                                          ; $6b85: $b0
    ld de, $52e8                                  ; $6b86: $11 $e8 $52
    ld [hl], a                                    ; $6b89: $77
    sbc b                                         ; $6b8a: $98
    ld h, c                                       ; $6b8b: $61
    db $fd                                        ; $6b8c: $fd
    ld a, [bc]                                    ; $6b8d: $0a
    xor l                                         ; $6b8e: $ad
    sbc a                                         ; $6b8f: $9f
    dec de                                        ; $6b90: $1b
    sbc c                                         ; $6b91: $99
    jr c, jr_041_6bd3                             ; $6b92: $38 $3f

    ld d, d                                       ; $6b94: $52

jr_041_6b95:
    rst $30                                       ; $6b95: $f7
    ld a, b                                       ; $6b96: $78
    inc h                                         ; $6b97: $24
    xor a                                         ; $6b98: $af
    rst $10                                       ; $6b99: $d7
    rst $18                                       ; $6b9a: $df
    and a                                         ; $6b9b: $a7
    ld e, h                                       ; $6b9c: $5c
    or l                                          ; $6b9d: $b5
    inc a                                         ; $6b9e: $3c
    rst $18                                       ; $6b9f: $df
    and a                                         ; $6ba0: $a7
    call z, $0afe                                 ; $6ba1: $cc $fe $0a
    jp nz, Jump_000_02c8                          ; $6ba4: $c2 $c8 $02

    adc e                                         ; $6ba7: $8b
    cpl                                           ; $6ba8: $2f
    ld l, h                                       ; $6ba9: $6c
    ld bc, $5309                                  ; $6baa: $01 $09 $53
    ret nc                                        ; $6bad: $d0

    ld h, l                                       ; $6bae: $65
    ld a, a                                       ; $6baf: $7f
    inc a                                         ; $6bb0: $3c
    cp a                                          ; $6bb1: $bf
    ld a, h                                       ; $6bb2: $7c
    call nc, $d1c5                                ; $6bb3: $d4 $c5 $d1
    ld c, e                                       ; $6bb6: $4b
    adc l                                         ; $6bb7: $8d
    xor b                                         ; $6bb8: $a8
    inc sp                                        ; $6bb9: $33
    jr nc, jr_041_6b4b                            ; $6bba: $30 $8f

    and c                                         ; $6bbc: $a1
    ld e, a                                       ; $6bbd: $5f
    ld bc, $8f75                                  ; $6bbe: $01 $75 $8f
    ld b, a                                       ; $6bc1: $47
    ld d, d                                       ; $6bc2: $52
    ld e, l                                       ; $6bc3: $5d
    cp h                                          ; $6bc4: $bc
    rra                                           ; $6bc5: $1f
    ld [de], a                                    ; $6bc6: $12
    ld [hl], d                                    ; $6bc7: $72
    add [hl]                                      ; $6bc8: $86
    ld e, h                                       ; $6bc9: $5c
    db $f4                                        ; $6bca: $f4
    halt                                          ; $6bcb: $76
    db $e4                                        ; $6bcc: $e4
    xor c                                         ; $6bcd: $a9
    db $eb                                        ; $6bce: $eb
    ld d, a                                       ; $6bcf: $57
    sbc l                                         ; $6bd0: $9d
    adc [hl]                                      ; $6bd1: $8e
    add hl, de                                    ; $6bd2: $19

jr_041_6bd3:
    ld l, $57                                     ; $6bd3: $2e $57
    dec l                                         ; $6bd5: $2d
    ld l, a                                       ; $6bd6: $6f
    ld l, a                                       ; $6bd7: $6f
    ret z                                         ; $6bd8: $c8

    ld h, a                                       ; $6bd9: $67
    ld sp, $6f2c                                  ; $6bda: $31 $2c $6f
    ld l, a                                       ; $6bdd: $6f
    adc b                                         ; $6bde: $88
    cp $f4                                        ; $6bdf: $fe $f4
    rst $00                                       ; $6be1: $c7
    ret z                                         ; $6be2: $c8

    ld [hl], d                                    ; $6be3: $72
    db $10                                        ; $6be4: $10
    ld b, h                                       ; $6be5: $44
    ld e, l                                       ; $6be6: $5d
    db $f4                                        ; $6be7: $f4
    or e                                          ; $6be8: $b3
    rst $30                                       ; $6be9: $f7
    cp c                                          ; $6bea: $b9
    inc de                                        ; $6beb: $13
    db $f4                                        ; $6bec: $f4
    dec hl                                        ; $6bed: $2b
    dec e                                         ; $6bee: $1d
    jp nc, $828b                                  ; $6bef: $d2 $8b $82

    or b                                          ; $6bf2: $b0
    ld c, l                                       ; $6bf3: $4d
    sbc h                                         ; $6bf4: $9c
    ld b, a                                       ; $6bf5: $47
    adc l                                         ; $6bf6: $8d
    inc l                                         ; $6bf7: $2c
    sub h                                         ; $6bf8: $94
    ld c, b                                       ; $6bf9: $48
    db $fc                                        ; $6bfa: $fc
    xor b                                         ; $6bfb: $a8
    dec bc                                        ; $6bfc: $0b
    dec e                                         ; $6bfd: $1d
    ld a, [c]                                     ; $6bfe: $f2
    ld d, e                                       ; $6bff: $53
    cp l                                          ; $6c00: $bd
    add hl, sp                                    ; $6c01: $39
    db $f4                                        ; $6c02: $f4
    dec hl                                        ; $6c03: $2b
    db $ed                                        ; $6c04: $ed
    rst $18                                       ; $6c05: $df
    call nz, $cf6b                                ; $6c06: $c4 $6b $cf
    ret c                                         ; $6c09: $d8

    ld a, e                                       ; $6c0a: $7b
    ld d, d                                       ; $6c0b: $52
    ld e, l                                       ; $6c0c: $5d
    db $fc                                        ; $6c0d: $fc
    rra                                           ; $6c0e: $1f
    dec b                                         ; $6c0f: $05
    and $89                                       ; $6c10: $e6 $89
    di                                            ; $6c12: $f3
    ld b, e                                       ; $6c13: $43
    sub a                                         ; $6c14: $97
    rst $10                                       ; $6c15: $d7

jr_041_6c16:
    adc [hl]                                      ; $6c16: $8e
    ld e, a                                       ; $6c17: $5f
    call nc, $ca84                                ; $6c18: $d4 $84 $ca
    ld b, a                                       ; $6c1b: $47
    ccf                                           ; $6c1c: $3f
    call z, $eda7                                 ; $6c1d: $cc $a7 $ed
    ei                                            ; $6c20: $fb
    xor b                                         ; $6c21: $a8
    swap d                                        ; $6c22: $cb $32
    call nz, Call_041_411b                        ; $6c24: $c4 $1b $41
    call c, $eaec                                 ; $6c27: $dc $ec $ea
    ld [hl], l                                    ; $6c2a: $75
    ld e, c                                       ; $6c2b: $59
    ld l, b                                       ; $6c2c: $68
    db $fd                                        ; $6c2d: $fd
    add hl, hl                                    ; $6c2e: $29
    call nc, $2839                                ; $6c2f: $d4 $39 $28
    jr jr_041_6c16                                ; $6c32: $18 $e2

    ld b, e                                       ; $6c34: $43
    ld a, a                                       ; $6c35: $7f
    cp e                                          ; $6c36: $bb
    add hl, hl                                    ; $6c37: $29
    rra                                           ; $6c38: $1f
    ld [hl], l                                    ; $6c39: $75
    xor c                                         ; $6c3a: $a9
    ld h, [hl]                                    ; $6c3b: $66
    di                                            ; $6c3c: $f3
    ld b, h                                       ; $6c3d: $44
    dec e                                         ; $6c3e: $1d
    add hl, bc                                    ; $6c3f: $09
    ld h, e                                       ; $6c40: $63
    ld [$5fa3], sp                                ; $6c41: $08 $a3 $5f
    ld bc, $8e9d                                  ; $6c44: $01 $9d $8e
    or [hl]                                       ; $6c47: $b6
    ld l, a                                       ; $6c48: $6f
    ld [hl], d                                    ; $6c49: $72
    push de                                       ; $6c4a: $d5

jr_041_6c4b:
    ld a, [c]                                     ; $6c4b: $f2
    or $86                                        ; $6c4c: $f6 $86
    ld a, h                                       ; $6c4e: $7c
    ld d, $c3                                     ; $6c4f: $16 $c3
    ld a, [c]                                     ; $6c51: $f2
    or $86                                        ; $6c52: $f6 $86
    ld d, b                                       ; $6c54: $50
    ld sp, hl                                     ; $6c55: $f9
    inc l                                         ; $6c56: $2c
    ld b, e                                       ; $6c57: $43
    cp h                                          ; $6c58: $bc
    ld de, $a344                                  ; $6c59: $11 $44 $a3
    ld l, a                                       ; $6c5c: $6f
    rst $00                                       ; $6c5d: $c7
    halt                                          ; $6c5e: $76
    ld c, $ba                                     ; $6c5f: $0e $ba
    inc l                                         ; $6c61: $2c
    jr nc, jr_041_6c4b                            ; $6c62: $30 $e7

    xor a                                         ; $6c64: $af
    scf                                           ; $6c65: $37
    rla                                           ; $6c66: $17
    ld e, a                                       ; $6c67: $5f
    ret c                                         ; $6c68: $d8

    ld [bc], a                                    ; $6c69: $02
    ld [de], a                                    ; $6c6a: $12
    and [hl]                                      ; $6c6b: $a6
    db $10                                        ; $6c6c: $10
    scf                                           ; $6c6d: $37
    jp nz, $f427                                  ; $6c6e: $c2 $27 $f4

jr_041_6c71:
    ld h, l                                       ; $6c71: $65
    ld a, [c]                                     ; $6c72: $f2
    pop af                                        ; $6c73: $f1
    cp [hl]                                       ; $6c74: $be
    ld d, l                                       ; $6c75: $55
    sub a                                         ; $6c76: $97
    inc de                                        ; $6c77: $13
    ld [hl], a                                    ; $6c78: $77
    ld e, a                                       ; $6c79: $5f
    dec l                                         ; $6c7a: $2d
    ld l, a                                       ; $6c7b: $6f
    adc b                                         ; $6c7c: $88
    ldh [$e2], a                                  ; $6c7d: $e0 $e2

jr_041_6c7f:
    add $ec                                       ; $6c7f: $c6 $ec
    call nc, $bf5c                                ; $6c81: $d4 $5c $bf
    ld [bc], a                                    ; $6c84: $02
    sbc [hl]                                      ; $6c85: $9e
    jr nc, jr_041_6c7f                            ; $6c86: $30 $f7

    ld d, c                                       ; $6c88: $51
    rla                                           ; $6c89: $17
    add hl, de                                    ; $6c8a: $19
    adc c                                         ; $6c8b: $89

Jump_041_6c8c:
    sbc e                                         ; $6c8c: $9b
    ld c, d                                       ; $6c8d: $4a
    ld a, a                                       ; $6c8e: $7f
    ld a, [c]                                     ; $6c8f: $f2
    add [hl]                                      ; $6c90: $86
    or b                                          ; $6c91: $b0
    call $5cb2                                    ; $6c92: $cd $b2 $5c
    call nc, $9c8b                                ; $6c95: $d4 $8b $9c
    ld l, $75                                     ; $6c98: $2e $75
    add a                                         ; $6c9a: $87
    add hl, de                                    ; $6c9b: $19
    sub $af                                       ; $6c9c: $d6 $af
    cp [hl]                                       ; $6c9e: $be
    dec bc                                        ; $6c9f: $0b
    ld l, h                                       ; $6ca0: $6c
    and d                                         ; $6ca1: $a2
    ld l, $76                                     ; $6ca2: $2e $76
    or h                                          ; $6ca4: $b4
    cp b                                          ; $6ca5: $b8
    inc sp                                        ; $6ca6: $33
    db $e4                                        ; $6ca7: $e4
    inc hl                                        ; $6ca8: $23
    inc hl                                        ; $6ca9: $23
    or c                                          ; $6caa: $b1
    ld hl, $dc51                                  ; $6cab: $21 $51 $dc
    cp l                                          ; $6cae: $bd
    ld hl, $994c                                  ; $6caf: $21 $4c $99
    ld b, a                                       ; $6cb2: $47
    rla                                           ; $6cb3: $17
    scf                                           ; $6cb4: $37
    dec d                                         ; $6cb5: $15
    ld [c], a                                     ; $6cb6: $e2
    ld a, l                                       ; $6cb7: $7d
    rst $20                                       ; $6cb8: $e7
    ld l, [hl]                                    ; $6cb9: $6e
    and d                                         ; $6cba: $a2
    ld l, $65                                     ; $6cbb: $2e $65
    or $f1                                        ; $6cbd: $f6 $f1
    db $f4                                        ; $6cbf: $f4
    dec hl                                        ; $6cc0: $2b
    ld l, l                                       ; $6cc1: $6d
    rst $28                                       ; $6cc2: $ef
    ld d, h                                       ; $6cc3: $54
    scf                                           ; $6cc4: $37
    ld [hl], c                                    ; $6cc5: $71
    cp a                                          ; $6cc6: $bf
    dec d                                         ; $6cc7: $15
    ld l, h                                       ; $6cc8: $6c
    inc b                                         ; $6cc9: $04
    xor c                                         ; $6cca: $a9
    sub c                                         ; $6ccb: $91
    push hl                                       ; $6ccc: $e5
    ld a, [de]                                    ; $6ccd: $1a
    adc b                                         ; $6cce: $88
    db $dd                                        ; $6ccf: $dd
    and [hl]                                      ; $6cd0: $a6
    ld c, $c2                                     ; $6cd1: $0e $c2
    adc b                                         ; $6cd3: $88
    cp d                                          ; $6cd4: $ba
    jr nc, jr_041_6d3c                            ; $6cd5: $30 $65

    cp [hl]                                       ; $6cd7: $be
    ld l, b                                       ; $6cd8: $68
    ei                                            ; $6cd9: $fb
    ld a, [c]                                     ; $6cda: $f2
    sbc e                                         ; $6cdb: $9b
    db $ed                                        ; $6cdc: $ed
    ld a, [$2ab4]                                 ; $6cdd: $fa $b4 $2a
    adc $8f                                       ; $6ce0: $ce $8f
    jr nc, jr_041_6c71                            ; $6ce2: $30 $8d

    ld a, [de]                                    ; $6ce4: $1a
    jp nc, $f850                                  ; $6ce5: $d2 $50 $f8

    and d                                         ; $6ce8: $a2
    sbc $10                                       ; $6ce9: $de $10
    ld a, [hl+]                                   ; $6ceb: $2a
    rra                                           ; $6cec: $1f
    dec a                                         ; $6ced: $3d
    or $fe                                        ; $6cee: $f6 $fe
    ld l, h                                       ; $6cf0: $6c
    ld [$3d4e], a                                 ; $6cf1: $ea $4e $3d
    ld a, a                                       ; $6cf4: $7f
    ld a, [hl]                                    ; $6cf5: $7e
    add a                                         ; $6cf6: $87
    jp hl                                         ; $6cf7: $e9


    db $f4                                        ; $6cf8: $f4
    dec hl                                        ; $6cf9: $2b
    cp [hl]                                       ; $6cfa: $be
    ld [hl], b                                    ; $6cfb: $70
    inc hl                                        ; $6cfc: $23
    ld l, d                                       ; $6cfd: $6a
    ld [hl], d                                    ; $6cfe: $72
    xor c                                         ; $6cff: $a9
    ld c, $17                                     ; $6d00: $0e $17
    xor a                                         ; $6d02: $af
    dec a                                         ; $6d03: $3d
    ld h, e                                       ; $6d04: $63
    rst $28                                       ; $6d05: $ef
    db $d3                                        ; $6d06: $d3
    push hl                                       ; $6d07: $e5
    halt                                          ; $6d08: $76
    ld d, $1b                                     ; $6d09: $16 $1b
    cpl                                           ; $6d0b: $2f
    ld c, d                                       ; $6d0c: $4a
    add hl, de                                    ; $6d0d: $19
    ld c, e                                       ; $6d0e: $4b
    db $dd                                        ; $6d0f: $dd

Jump_041_6d10:
    db $e3                                        ; $6d10: $e3

jr_041_6d11:
    sub c                                         ; $6d11: $91
    call nc, Call_041_62c8                        ; $6d12: $d4 $c8 $62

Call_041_6d15:
    or e                                          ; $6d15: $b3
    ret c                                         ; $6d16: $d8

Call_041_6d17:
    ld c, l                                       ; $6d17: $4d
    call c, $1f33                                 ; $6d18: $dc $33 $1f
    add hl, sp                                    ; $6d1b: $39
    ld [hl], c                                    ; $6d1c: $71
    ld d, e                                       ; $6d1d: $53
    ld hl, $9505                                  ; $6d1e: $21 $05 $95
    sbc $be                                       ; $6d21: $de $be
    ld e, a                                       ; $6d23: $5f
    ld bc, $639e                                  ; $6d24: $01 $9e $63
    push hl                                       ; $6d27: $e5
    and d                                         ; $6d28: $a2
    or b                                          ; $6d29: $b0
    or e                                          ; $6d2a: $b3
    ret c                                         ; $6d2b: $d8

    ld d, l                                       ; $6d2c: $55
    sub e                                         ; $6d2d: $93
    rla                                           ; $6d2e: $17
    sbc c                                         ; $6d2f: $99
    ld d, $d3                                     ; $6d30: $16 $d3
    or c                                          ; $6d32: $b1
    ld a, l                                       ; $6d33: $7d
    pop af                                        ; $6d34: $f1
    sbc [hl]                                      ; $6d35: $9e
    ld b, [hl]                                    ; $6d36: $46
    db $ed                                        ; $6d37: $ed
    adc c                                         ; $6d38: $89
    scf                                           ; $6d39: $37
    ld [bc], a                                    ; $6d3a: $02
    ld e, l                                       ; $6d3b: $5d

jr_041_6d3c:
    ld [$f10e], a                                 ; $6d3c: $ea $0e $f1
    ld b, [hl]                                    ; $6d3f: $46
    ld c, [hl]                                    ; $6d40: $4e
    sub a                                         ; $6d41: $97
    or [hl]                                       ; $6d42: $b6
    push bc                                       ; $6d43: $c5
    cp l                                          ; $6d44: $bd
    jr nc, jr_041_6d11                            ; $6d45: $30 $ca

    ld d, l                                       ; $6d47: $55
    and a                                         ; $6d48: $a7
    adc e                                         ; $6d49: $8b
    cpl                                           ; $6d4a: $2f
    adc a                                         ; $6d4b: $8f
    db $dd                                        ; $6d4c: $dd
    ld b, a                                       ; $6d4d: $47
    ld h, c                                       ; $6d4e: $61
    rst $28                                       ; $6d4f: $ef
    ld c, a                                       ; $6d50: $4f
    ei                                            ; $6d51: $fb
    xor a                                         ; $6d52: $af
    db $dd                                        ; $6d53: $dd
    db $eb                                        ; $6d54: $eb
    jp nc, $e986                                  ; $6d55: $d2 $86 $e9

    ld h, a                                       ; $6d58: $67
    adc a                                         ; $6d59: $8f
    halt                                          ; $6d5a: $76
    xor a                                         ; $6d5b: $af
    ld c, e                                       ; $6d5c: $4b
    db $eb                                        ; $6d5d: $eb
    rst $20                                       ; $6d5e: $e7
    ld b, l                                       ; $6d5f: $45
    ld sp, hl                                     ; $6d60: $f9
    cp b                                          ; $6d61: $b8
    ld de, $c9b6                                  ; $6d62: $11 $b6 $c9
    ld b, [hl]                                    ; $6d65: $46
    ld e, d                                       ; $6d66: $5a
    dec [hl]                                      ; $6d67: $35
    cp [hl]                                       ; $6d68: $be
    ld [hl], h                                    ; $6d69: $74
    ld d, b                                       ; $6d6a: $50
    inc e                                         ; $6d6b: $1c
    dec [hl]                                      ; $6d6c: $35
    inc b                                         ; $6d6d: $04
    jp hl                                         ; $6d6e: $e9


    ld [hl], h                                    ; $6d6f: $74
    or $f4                                        ; $6d70: $f6 $f4
    dec hl                                        ; $6d72: $2b
    dec e                                         ; $6d73: $1d
    ld e, a                                       ; $6d74: $5f
    call c, $7908                                 ; $6d75: $dc $08 $79
    db $10                                        ; $6d78: $10
    call nz, $86fb                                ; $6d79: $c4 $fb $86
    sbc h                                         ; $6d7c: $9c
    call nz, Call_041_606b                        ; $6d7d: $c4 $6b $60
    cp $7c                                        ; $6d80: $fe $7c
    ret c                                         ; $6d82: $d8

    add [hl]                                      ; $6d83: $86

Jump_041_6d84:
    ld a, h                                       ; $6d84: $7c
    ld b, e                                       ; $6d85: $43
    or $87                                        ; $6d86: $f6 $87
    jp hl                                         ; $6d88: $e9


    ld h, a                                       ; $6d89: $67
    or c                                          ; $6d8a: $b1
    add hl, hl                                    ; $6d8b: $29
    push hl                                       ; $6d8c: $e5
    xor d                                         ; $6d8d: $aa
    rst $08                                       ; $6d8e: $cf
    ld b, $f1                                     ; $6d8f: $06 $f1
    ld b, [hl]                                    ; $6d91: $46
    ret nc                                        ; $6d92: $d0

    xor a                                         ; $6d93: $af
    cp [hl]                                       ; $6d94: $be
    adc b                                         ; $6d95: $88
    adc h                                         ; $6d96: $8c
    and h                                         ; $6d97: $a4
    db $fc                                        ; $6d98: $fc
    push bc                                       ; $6d99: $c5
    add a                                         ; $6d9a: $87
    cp $be                                        ; $6d9b: $fe $be
    sub h                                         ; $6d9d: $94
    ld a, e                                       ; $6d9e: $7b
    sbc c                                         ; $6d9f: $99
    ld l, h                                       ; $6da0: $6c
    add h                                         ; $6da1: $84
    add hl, hl                                    ; $6da2: $29
    or d                                          ; $6da3: $b2
    ld b, c                                       ; $6da4: $41
    cp h                                          ; $6da5: $bc
    sub c                                         ; $6da6: $91
    db $d3                                        ; $6da7: $d3
    push bc                                       ; $6da8: $c5
    adc l                                         ; $6da9: $8d
    inc d                                         ; $6daa: $14
    cp d                                          ; $6dab: $ba
    ld sp, hl                                     ; $6dac: $f9
    or e                                          ; $6dad: $b3
    ccf                                           ; $6dae: $3f

Jump_041_6daf:
    ld a, [$7e77]                                 ; $6daf: $fa $77 $7e
    cp b                                          ; $6db2: $b8
    adc a                                         ; $6db3: $8f
    add d                                         ; $6db4: $82
    or [hl]                                       ; $6db5: $b6
    cpl                                           ; $6db6: $2f
    cpl                                           ; $6db7: $2f
    ld b, d                                       ; $6db8: $42
    push bc                                       ; $6db9: $c5
    ld e, l                                       ; $6dba: $5d
    inc b                                         ; $6dbb: $04
    ld a, e                                       ; $6dbc: $7b
    ld a, a                                       ; $6dbd: $7f
    jp z, $8fef                                   ; $6dbe: $ca $ef $8f

    cp d                                          ; $6dc1: $ba
    ret c                                         ; $6dc2: $d8

    or c                                          ; $6dc3: $b1
    dec c                                         ; $6dc4: $0d
    add hl, sp                                    ; $6dc5: $39
    ld d, c                                       ; $6dc6: $51
    ret c                                         ; $6dc7: $d8

    ei                                            ; $6dc8: $fb
    jp $e3f4                                      ; $6dc9: $c3 $f4 $e3


    ld sp, hl                                     ; $6dcc: $f9
    push hl                                       ; $6dcd: $e5
    ei                                            ; $6dce: $fb
    dec d                                         ; $6dcf: $15
    cp [hl]                                       ; $6dd0: $be
    inc a                                         ; $6dd1: $3c
    ld a, c                                       ; $6dd2: $79
    ld d, c                                       ; $6dd3: $51
    cpl                                           ; $6dd4: $2f
    ld l, d                                       ; $6dd5: $6a
    ld a, [c]                                     ; $6dd6: $f2
    ld a, e                                       ; $6dd7: $7b
    ld a, a                                       ; $6dd8: $7f
    ld [hl], $88                                  ; $6dd9: $36 $88
    scf                                           ; $6ddb: $37
    add d                                         ; $6ddc: $82
    xor b                                         ; $6ddd: $a8
    ld c, e                                       ; $6dde: $4b
    dec de                                        ; $6ddf: $1b
    and [hl]                                      ; $6de0: $a6
    sbc a                                         ; $6de1: $9f
    dec a                                         ; $6de2: $3d
    jp c, Jump_000_1f7d                           ; $6de3: $da $7d $1f

    rst $18                                       ; $6de6: $df
    dec bc                                        ; $6de7: $0b
    rra                                           ; $6de8: $1f
    inc b                                         ; $6de9: $04
    ld sp, hl                                     ; $6dea: $f9
    cp l                                          ; $6deb: $bd
    dec a                                         ; $6dec: $3d
    ld d, b                                       ; $6ded: $50
    jr @+$28                                      ; $6dee: $18 $26

    and e                                         ; $6df0: $a3
    adc e                                         ; $6df1: $8b
    ld h, b                                       ; $6df2: $60
    rst $28                                       ; $6df3: $ef
    ld c, a                                       ; $6df4: $4f

jr_041_6df5:
    add c                                         ; $6df5: $81
    reti                                          ; $6df6: $d9


    rst $30                                       ; $6df7: $f7
    dec hl                                        ; $6df8: $2b
    cp [hl]                                       ; $6df9: $be
    inc a                                         ; $6dfa: $3c
    ld [hl], c                                    ; $6dfb: $71
    jr nc, jr_041_6df5                            ; $6dfc: $30 $f7

    and d                                         ; $6dfe: $a2
    ld h, $fb                                     ; $6dff: $26 $fb
    or e                                          ; $6e01: $b3
    ld b, c                                       ; $6e02: $41
    cp h                                          ; $6e03: $bc
    ld de, $5d44                                  ; $6e04: $11 $44 $5d
    jp c, $f716                                   ; $6e07: $da $16 $f7

    jp nz, Jump_041_5728                          ; $6e0a: $c2 $28 $57

    ld e, l                                       ; $6e0d: $5d
    rra                                           ; $6e0e: $1f
    ld c, a                                       ; $6e0f: $4f
    add e                                         ; $6e10: $83
    sbc d                                         ; $6e11: $9a
    jr c, jr_041_6e53                             ; $6e12: $38 $3f

    ld d, d                                       ; $6e14: $52
    xor $f3                                       ; $6e15: $ee $f3
    dec sp                                        ; $6e17: $3b
    dec b                                         ; $6e18: $05
    ld l, [hl]                                    ; $6e19: $6e
    ld b, h                                       ; $6e1a: $44
    ld c, l                                       ; $6e1b: $4d
    sub [hl]                                      ; $6e1c: $96
    ld a, e                                       ; $6e1d: $7b
    sbc c                                         ; $6e1e: $99
    ld a, [hl]                                    ; $6e1f: $7e
    dec b                                         ; $6e20: $05
    db $ed                                        ; $6e21: $ed
    ld a, l                                       ; $6e22: $7d
    ld [hl], $88                                  ; $6e23: $36 $88
    scf                                           ; $6e25: $37
    add d                                         ; $6e26: $82

jr_041_6e27:
    xor b                                         ; $6e27: $a8
    ld c, e                                       ; $6e28: $4b
    db $eb                                        ; $6e29: $eb
    rst $20                                       ; $6e2a: $e7
    ld b, l                                       ; $6e2b: $45
    ld sp, hl                                     ; $6e2c: $f9
    cp b                                          ; $6e2d: $b8
    ld de, $c9b6                                  ; $6e2e: $11 $b6 $c9
    ld b, [hl]                                    ; $6e31: $46
    ld e, d                                       ; $6e32: $5a
    dec [hl]                                      ; $6e33: $35
    cp [hl]                                       ; $6e34: $be
    ld [hl], h                                    ; $6e35: $74
    ld d, b                                       ; $6e36: $50
    inc e                                         ; $6e37: $1c
    dec [hl]                                      ; $6e38: $35
    and h                                         ; $6e39: $a4
    and b                                         ; $6e3a: $a0
    jp nc, $e7db                                  ; $6e3b: $d2 $db $e7

    add h                                         ; $6e3e: $84
    ld h, c                                       ; $6e3f: $61
    jr z, jr_041_6e27                             ; $6e40: $28 $e5

    add l                                         ; $6e42: $85
    pop de                                        ; $6e43: $d1
    and a                                         ; $6e44: $a7
    push hl                                       ; $6e45: $e5
    db $fc                                        ; $6e46: $fc
    ld c, $c3                                     ; $6e47: $0e $c3
    adc b                                         ; $6e49: $88
    sub e                                         ; $6e4a: $93
    push hl                                       ; $6e4b: $e5
    ld e, [hl]                                    ; $6e4c: $5e
    and [hl]                                      ; $6e4d: $a6
    ld e, a                                       ; $6e4e: $5f
    ld bc, $4675                                  ; $6e4f: $01 $75 $46
    ld [c], a                                     ; $6e52: $e2

jr_041_6e53:
    inc a                                         ; $6e53: $3c
    ld l, d                                       ; $6e54: $6a
    ld b, h                                       ; $6e55: $44
    ld d, b                                       ; $6e56: $50
    ld a, [bc]                                    ; $6e57: $0a
    sub l                                         ; $6e58: $95
    rst $08                                       ; $6e59: $cf
    ld b, $f1                                     ; $6e5a: $06 $f1
    ld b, [hl]                                    ; $6e5c: $46
    sub b                                         ; $6e5d: $90
    rst $18                                       ; $6e5e: $df
    ld e, c                                       ; $6e5f: $59
    xor $25                                       ; $6e60: $ee $25
    inc c                                         ; $6e62: $0c
    inc sp                                        ; $6e63: $33
    ret z                                         ; $6e64: $c8

    db $f4                                        ; $6e65: $f4
    dec hl                                        ; $6e66: $2b
    db $ed                                        ; $6e67: $ed
    ld hl, $c41b                                  ; $6e68: $21 $1b $c4
    dec de                                        ; $6e6b: $1b
    cp c                                          ; $6e6c: $b9
    jr z, @-$12                                   ; $6e6d: $28 $ec

    inc l                                         ; $6e6f: $2c
    halt                                          ; $6e70: $76
    push de                                       ; $6e71: $d5
    db $e4                                        ; $6e72: $e4
    ld b, l                                       ; $6e73: $45
    ld h, $65                                     ; $6e74: $26 $65
    ld h, h                                       ; $6e76: $64

jr_041_6e77:
    add d                                         ; $6e77: $82
    or d                                          ; $6e78: $b2
    ld c, h                                       ; $6e79: $4c
    ld h, c                                       ; $6e7a: $61
    ld b, h                                       ; $6e7b: $44
    or b                                          ; $6e7c: $b0
    rst $30                                       ; $6e7d: $f7
    and a                                         ; $6e7e: $a7
    db $fc                                        ; $6e7f: $fc
    cp $a8                                        ; $6e80: $fe $a8
    adc e                                         ; $6e82: $8b
    dec e                                         ; $6e83: $1d
    db $db                                        ; $6e84: $db
    sub b                                         ; $6e85: $90
    inc de                                        ; $6e86: $13
    ld [hl], l                                    ; $6e87: $75
    ld l, c                                       ; $6e88: $69
    set 1, [hl]                                   ; $6e89: $cb $ce
    dec sp                                        ; $6e8b: $3b
    and d                                         ; $6e8c: $a2

jr_041_6e8d:
    add $a6                                       ; $6e8d: $c6 $a6
    ld e, a                                       ; $6e8f: $5f
    ld bc, $79ed                                  ; $6e90: $01 $ed $79
    ld d, b                                       ; $6e93: $50
    add hl, sp                                    ; $6e94: $39
    rst $30                                       ; $6e95: $f7
    reti                                          ; $6e96: $d9


    jr nz, jr_041_6e77                            ; $6e97: $20 $de

    ld [$fce2], sp                                ; $6e99: $08 $e2 $fc
    ld c, b                                       ; $6e9c: $48
    cp c                                          ; $6e9d: $b9
    ldh a, [rSTAT]                                ; $6e9e: $f0 $41
    db $10                                        ; $6ea0: $10

jr_041_6ea1:
    rra                                           ; $6ea1: $1f
    ld a, [$769a]                                 ; $6ea2: $fa $9a $76
    dec c                                         ; $6ea5: $0d
    and h                                         ; $6ea6: $a4
    ld b, [hl]                                    ; $6ea7: $46
    ld a, h                                       ; $6ea8: $7c
    jr z, jr_041_6ea1                             ; $6ea9: $28 $f6

    cp $a8                                        ; $6eab: $fe $a8
    ld c, e                                       ; $6ead: $4b
    db $dd                                        ; $6eae: $dd
    ld hl, $c8de                                  ; $6eaf: $21 $de $c8
    push af                                       ; $6eb2: $f5
    dec hl                                        ; $6eb3: $2b
    sbc l                                         ; $6eb4: $9d
    adc [hl]                                      ; $6eb5: $8e
    add hl, de                                    ; $6eb6: $19
    ld l, $4f                                     ; $6eb7: $2e $4f
    jp nz, $e590                                  ; $6eb9: $c2 $90 $e5

    ld a, [de]                                    ; $6ebc: $1a
    adc b                                         ; $6ebd: $88
    cp d                                          ; $6ebe: $ba
    ld d, b                                       ; $6ebf: $50
    ld sp, hl                                     ; $6ec0: $f9
    ld l, h                                       ; $6ec1: $6c
    db $10                                        ; $6ec2: $10
    ld l, a                                       ; $6ec3: $6f
    inc b                                         ; $6ec4: $04
    ld de, $ca5c                                  ; $6ec5: $11 $5c $ca
    jr nc, jr_041_6e8d                            ; $6ec8: $30 $c3

    db $ec                                        ; $6eca: $ec
    dec b                                         ; $6ecb: $05
    rst $10                                       ; $6ecc: $d7
    rst $00                                       ; $6ecd: $c7
    ld [hl], a                                    ; $6ece: $77
    ld h, h                                       ; $6ecf: $64
    ld b, d                                       ; $6ed0: $42
    sbc [hl]                                      ; $6ed1: $9e
    dec sp                                        ; $6ed2: $3b
    cp c                                          ; $6ed3: $b9
    db $fc                                        ; $6ed4: $fc
    sbc $9f                                       ; $6ed5: $de $9f
    ld [$9e3e], a                                 ; $6ed7: $ea $3e $9e
    ld e, a                                       ; $6eda: $5f
    cp [hl]                                       ; $6edb: $be
    ld e, a                                       ; $6edc: $5f
    ld bc, $4675                                  ; $6edd: $01 $75 $46
    ld [c], a                                     ; $6ee0: $e2

jr_041_6ee1:
    ld l, $65                                     ; $6ee1: $2e $65
    ld h, h                                       ; $6ee3: $64
    or d                                          ; $6ee4: $b2
    ld b, c                                       ; $6ee5: $41
    cp h                                          ; $6ee6: $bc
    sub c                                         ; $6ee7: $91
    set 5, a                                      ; $6ee8: $cb $ef
    ld hl, sp-$30                                 ; $6eea: $f8 $d0
    scf                                           ; $6eec: $37
    sbc [hl]                                      ; $6eed: $9e
    inc l                                         ; $6eee: $2c
    rst $30                                       ; $6eef: $f7
    ld [hl-], a                                   ; $6ef0: $32
    db $fd                                        ; $6ef1: $fd
    ld a, [bc]                                    ; $6ef2: $0a
    db $ed                                        ; $6ef3: $ed
    ld a, l                                       ; $6ef4: $7d
    xor d                                         ; $6ef5: $aa
    rst $10                                       ; $6ef6: $d7
    or h                                          ; $6ef7: $b4
    dec de                                        ; $6ef8: $1b
    set 6, d                                      ; $6ef9: $cb $f2
    add $88                                       ; $6efb: $c6 $88
    jp nz, $c8de                                  ; $6efd: $c2 $de $c8

    ld b, $f1                                     ; $6f00: $06 $f1
    ld b, [hl]                                    ; $6f02: $46
    ld l, $0a                                     ; $6f03: $2e $0a
    dec sp                                        ; $6f05: $3b
    adc e                                         ; $6f06: $8b
    ld e, l                                       ; $6f07: $5d
    dec [hl]                                      ; $6f08: $35
    ld a, c                                       ; $6f09: $79
    sub c                                         ; $6f0a: $91
    ld c, c                                       ; $6f0b: $49
    cp c                                          ; $6f0c: $b9
    jr nc, jr_041_6f53                            ; $6f0d: $30 $44

    dec de                                        ; $6f0f: $1b
    sbc c                                         ; $6f10: $99
    db $fc                                        ; $6f11: $fc
    ld h, l                                       ; $6f12: $65
    cp c                                          ; $6f13: $b9
    sub a                                         ; $6f14: $97
    ld c, e                                       ; $6f15: $4b
    and c                                         ; $6f16: $a1
    dec bc                                        ; $6f17: $0b
    db $ec                                        ; $6f18: $ec
    add $4e                                       ; $6f19: $c6 $4e
    sub a                                         ; $6f1b: $97
    ld d, a                                       ; $6f1c: $57
    add c                                         ; $6f1d: $81
    ld [hl], e                                    ; $6f1e: $73
    jr nz, @-$20                                  ; $6f1f: $20 $de

    ld [$2ea2], sp                                ; $6f21: $08 $a2 $2e
    ld [hl], l                                    ; $6f24: $75
    add a                                         ; $6f25: $87
    ld a, b                                       ; $6f26: $78
    inc hl                                        ; $6f27: $23
    rla                                           ; $6f28: $17
    xor b                                         ; $6f29: $a8
    or h                                          ; $6f2a: $b4
    ld h, c                                       ; $6f2b: $61
    ld a, [$a3d9]                                 ; $6f2c: $fa $d9 $a3
    db $dd                                        ; $6f2f: $dd
    rst $30                                       ; $6f30: $f7
    dec hl                                        ; $6f31: $2b
    db $ed                                        ; $6f32: $ed
    ld a, l                                       ; $6f33: $7d
    jp z, $8fef                                   ; $6f34: $ca $ef $8f

    cp d                                          ; $6f37: $ba
    ret c                                         ; $6f38: $d8

    or c                                          ; $6f39: $b1
    dec c                                         ; $6f3a: $0d
    add hl, sp                                    ; $6f3b: $39
    ld d, c                                       ; $6f3c: $51
    ret nc                                        ; $6f3d: $d0

    or $e5                                        ; $6f3e: $f6 $e5
    and h                                         ; $6f40: $a4
    ld b, b                                       ; $6f41: $40
    sub e                                         ; $6f42: $93
    rla                                           ; $6f43: $17
    cp [hl]                                       ; $6f44: $be
    call nc, $a148                                ; $6f45: $d4 $48 $a1
    pop af                                        ; $6f48: $f1
    and c                                         ; $6f49: $a1
    jr z, jr_041_6f88                             ; $6f4a: $28 $3c

    ld e, c                                       ; $6f4c: $59
    xor $65                                       ; $6f4d: $ee $65
    ld [hl], h                                    ; $6f4f: $74
    xor c                                         ; $6f50: $a9
    ld a, $3e                                     ; $6f51: $3e $3e

jr_041_6f53:
    db $f4                                        ; $6f53: $f4
    ld [hl+], a                                   ; $6f54: $22
    inc hl                                        ; $6f55: $23
    ld [hl], c                                    ; $6f56: $71
    ld e, $35                                     ; $6f57: $1e $35
    ld [hl+], a                                   ; $6f59: $22
    jr z, jr_041_6ee1                             ; $6f5a: $28 $85

    jp z, $edc7                                   ; $6f5c: $ca $c7 $ed

    cpl                                           ; $6f5f: $2f
    dec b                                         ; $6f60: $05
    db $fd                                        ; $6f61: $fd
    ld a, [bc]                                    ; $6f62: $0a
    ld [hl], l                                    ; $6f63: $75
    ld b, [hl]                                    ; $6f64: $46
    ld d, d                                       ; $6f65: $52
    ld h, $8b                                     ; $6f66: $26 $8b
    call Call_000_3762                            ; $6f68: $cd $62 $37
    ld d, c                                       ; $6f6b: $51
    ld b, e                                       ; $6f6c: $43
    ld [hl+], a                                   ; $6f6d: $22
    cpl                                           ; $6f6e: $2f
    ld [$fd0d], a                                 ; $6f6f: $ea $0d $fd
    ld a, [bc]                                    ; $6f72: $0a
    db $ed                                        ; $6f73: $ed
    ld a, l                                       ; $6f74: $7d
    ld [hl], $88                                  ; $6f75: $36 $88
    scf                                           ; $6f77: $37
    add d                                         ; $6f78: $82
    xor b                                         ; $6f79: $a8
    ld c, e                                       ; $6f7a: $4b
    rst $00                                       ; $6f7b: $c7
    or $c5                                        ; $6f7c: $f6 $c5
    ld a, e                                       ; $6f7e: $7b
    ld a, [de]                                    ; $6f7f: $1a
    or l                                          ; $6f80: $b5
    daa                                           ; $6f81: $27
    sbc $08                                       ; $6f82: $de $08
    ld d, d                                       ; $6f84: $52
    ld l, $7c                                     ; $6f85: $2e $7c
    db $10                                        ; $6f87: $10

jr_041_6f88:
    and h                                         ; $6f88: $a4
    ret nc                                        ; $6f89: $d0

    ld hl, sp+$50                                 ; $6f8a: $f8 $50
    inc d                                         ; $6f8c: $14
    sbc [hl]                                      ; $6f8d: $9e
    inc l                                         ; $6f8e: $2c
    rst $30                                       ; $6f8f: $f7
    ld [hl-], a                                   ; $6f90: $32
    or l                                          ; $6f91: $b5
    jp nc, $fd21                                  ; $6f92: $d2 $21 $fd

    db $ed                                        ; $6f95: $ed
    xor b                                         ; $6f96: $a8
    ld c, h                                       ; $6f97: $4c
    xor d                                         ; $6f98: $aa
    adc e                                         ; $6f99: $8b
    rst $38                                       ; $6f9a: $ff
    and e                                         ; $6f9b: $a3
    ret nz                                        ; $6f9c: $c0

    inc a                                         ; $6f9d: $3c
    ld d, c                                       ; $6f9e: $51
    sub a                                         ; $6f9f: $97
    ld d, d                                       ; $6fa0: $52
    ld e, a                                       ; $6fa1: $5f
    cp a                                          ; $6fa2: $bf
    ld [bc], a                                    ; $6fa3: $02
    db $ed                                        ; $6fa4: $ed

jr_041_6fa5:
    ld a, l                                       ; $6fa5: $7d
    ld [hl], $88                                  ; $6fa6: $36 $88
    scf                                           ; $6fa8: $37
    add d                                         ; $6fa9: $82
    xor b                                         ; $6faa: $a8
    ld c, e                                       ; $6fab: $4b
    rst $00                                       ; $6fac: $c7
    or $c5                                        ; $6fad: $f6 $c5
    ld a, e                                       ; $6faf: $7b
    ld a, [de]                                    ; $6fb0: $1a
    or l                                          ; $6fb1: $b5
    daa                                           ; $6fb2: $27
    sbc $08                                       ; $6fb3: $de $08
    and d                                         ; $6fb5: $a2

jr_041_6fb6:
    or b                                          ; $6fb6: $b0
    rst $30                                       ; $6fb7: $f7
    ld h, a                                       ; $6fb8: $67
    or c                                          ; $6fb9: $b1
    pop af                                        ; $6fba: $f1
    and d                                         ; $6fbb: $a2
    sub h                                         ; $6fbc: $94
    ld sp, $f294                                  ; $6fbd: $31 $94 $f2
    ld l, c                                       ; $6fc0: $69
    rst $18                                       ; $6fc1: $df
    or l                                          ; $6fc2: $b5
    ld h, l                                       ; $6fc3: $65
    cpl                                           ; $6fc4: $2f
    rst $00                                       ; $6fc5: $c7
    sbc h                                         ; $6fc6: $9c
    ld [hl], d                                    ; $6fc7: $72
    pop hl                                        ; $6fc8: $e1
    add e                                         ; $6fc9: $83
    jr nz, jr_041_6fb6                            ; $6fca: $20 $ea

    db $e3                                        ; $6fcc: $e3
    ld b, e                                       ; $6fcd: $43
    ld a, a                                       ; $6fce: $7f
    dec sp                                        ; $6fcf: $3b
    ccf                                           ; $6fd0: $3f
    or d                                          ; $6fd1: $b2
    cp h                                          ; $6fd2: $bc
    ld sp, $43e2                                  ; $6fd3: $31 $e2 $43
    cpl                                           ; $6fd6: $2f
    daa                                           ; $6fd7: $27
    inc a                                         ; $6fd8: $3c
    ld h, $d3                                     ; $6fd9: $26 $d3
    xor a                                         ; $6fdb: $af
    db $ed                                        ; $6fdc: $ed
    ld e, a                                       ; $6fdd: $5f
    sbc h                                         ; $6fde: $9c
    rst $38                                       ; $6fdf: $ff
    and b                                         ; $6fe0: $a0
    ld h, $3e                                     ; $6fe1: $26 $3e
    db $f4                                        ; $6fe3: $f4
    add l                                         ; $6fe4: $85
    cpl                                           ; $6fe5: $2f
    push hl                                       ; $6fe6: $e5
    ld e, [hl]                                    ; $6fe7: $5e
    ld h, $da                                     ; $6fe8: $26 $da
    cp [hl]                                       ; $6fea: $be
    inc d                                         ; $6feb: $14
    and [hl]                                      ; $6fec: $a6
    ld a, [bc]                                    ; $6fed: $0a
    jp nz, $c597                                  ; $6fee: $c2 $97 $c5

    add [hl]                                      ; $6ff1: $86

jr_041_6ff2:
    add h                                         ; $6ff2: $84
    inc e                                         ; $6ff3: $1c
    add h                                         ; $6ff4: $84
    cpl                                           ; $6ff5: $2f
    ld [$fde3], a                                 ; $6ff6: $ea $e3 $fd
    ld [$7db4], a                                 ; $6ff9: $ea $b4 $7d
    adc b                                         ; $6ffc: $88
    cp d                                          ; $6ffd: $ba
    or h                                          ; $6ffe: $b4
    or $7a                                        ; $6fff: $f6 $7a
    db $fd                                        ; $7001: $fd
    set 6, l                                      ; $7002: $cb $f5
    ld a, l                                       ; $7004: $7d
    cp a                                          ; $7005: $bf
    ld [bc], a                                    ; $7006: $02
    cp [hl]                                       ; $7007: $be
    ld c, b                                       ; $7008: $48
    pop hl                                        ; $7009: $e1
    cp a                                          ; $700a: $bf
    jr c, jr_041_6fa5                             ; $700b: $38 $98

    ld a, e                                       ; $700d: $7b
    ld d, c                                       ; $700e: $51
    sub e                                         ; $700f: $93
    db $fd                                        ; $7010: $fd
    reti                                          ; $7011: $d9


    jr nz, jr_041_6ff2                            ; $7012: $20 $de

    ld [$2ea2], sp                                ; $7014: $08 $a2 $2e
    ld l, l                                       ; $7017: $6d
    adc e                                         ; $7018: $8b
    ld a, e                                       ; $7019: $7b
    ld h, c                                       ; $701a: $61
    sub h                                         ; $701b: $94
    xor e                                         ; $701c: $ab
    ld c, [hl]                                    ; $701d: $4e
    sub a                                         ; $701e: $97
    ld [hl], d                                    ; $701f: $72
    ld h, c                                       ; $7020: $61
    dec de                                        ; $7021: $1b
    ld a, [c]                                     ; $7022: $f2
    di                                            ; $7023: $f3
    ld a, e                                       ; $7024: $7b
    ld a, e                                       ; $7025: $7b
    and b                                         ; $7026: $a0
    or b                                          ; $7027: $b0
    and c                                         ; $7028: $a1
    ld a, [hl-]                                   ; $7029: $3a
    xor [hl]                                      ; $702a: $ae
    daa                                           ; $702b: $27
    ld [hl-], a                                   ; $702c: $32
    and [hl]                                      ; $702d: $a6
    and d                                         ; $702e: $a2
    ld l, $3e                                     ; $702f: $2e $3e
    inc d                                         ; $7031: $14
    add l                                         ; $7032: $85
    daa                                           ; $7033: $27
    ld l, [hl]                                    ; $7034: $6e
    call z, $cd4e                                 ; $7035: $cc $4e $cd
    ld c, l                                       ; $7038: $4d
    cp a                                          ; $7039: $bf
    ld [bc], a                                    ; $703a: $02
    cp [hl]                                       ; $703b: $be
    inc [hl]                                      ; $703c: $34
    ld a, $14                                     ; $703d: $3e $14
    add l                                         ; $703f: $85
    daa                                           ; $7040: $27
    res 7, l                                      ; $7041: $cb $bd
    ld c, h                                       ; $7043: $4c
    sbc h                                         ; $7044: $9c

Jump_041_7045:
    ld b, a                                       ; $7045: $47
    adc l                                         ; $7046: $8d
    ld d, b                                       ; $7047: $50
    ld sp, hl                                     ; $7048: $f9
    ld l, b                                       ; $7049: $68
    or $a2                                        ; $704a: $f6 $a2
    sub b                                         ; $704c: $90
    jp nz, $c42f                                  ; $704d: $c2 $2f $c4

    rst $08                                       ; $7050: $cf
    ld [hl], d                                    ; $7051: $72
    sub b                                         ; $7052: $90
    adc a                                         ; $7053: $8f
    cp d                                          ; $7054: $ba
    db $ec                                        ; $7055: $ec
    db $d3                                        ; $7056: $d3
    db $db                                        ; $7057: $db

jr_041_7058:
    push af                                       ; $7058: $f5
    pop af                                        ; $7059: $f1
    ld [hl], l                                    ; $705a: $75
    ld d, e                                       ; $705b: $53
    ld d, l                                       ; $705c: $55
    ld h, b                                       ; $705d: $60

Call_041_705e:
    sbc [hl]                                      ; $705e: $9e
    jr c, jr_041_70a0                             ; $705f: $38 $3f

    ld d, d                                       ; $7061: $52
    ld l, $6c                                     ; $7062: $2e $6c
    rst $08                                       ; $7064: $cf
    db $fc                                        ; $7065: $fc
    ld d, c                                       ; $7066: $51
    ret c                                         ; $7067: $d8

    ei                                            ; $7068: $fb
    and e                                         ; $7069: $a3
    ccf                                           ; $706a: $3f
    db $fd                                        ; $706b: $fd
    cp [hl]                                       ; $706c: $be
    ld h, c                                       ; $706d: $61
    cp b                                          ; $706e: $b8
    rst $28                                       ; $706f: $ef
    ld d, a                                       ; $7070: $57
    db $ed                                        ; $7071: $ed
    ld a, c                                       ; $7072: $79
    inc a                                         ; $7073: $3c
    db $dd                                        ; $7074: $dd
    rra                                           ; $7075: $1f
    ld [hl], l                                    ; $7076: $75
    ld l, c                                       ; $7077: $69
    ld e, e                                       ; $7078: $5b
    call c, $a30b                                 ; $7079: $dc $0b $a3
    ld e, h                                       ; $707c: $5c
    ld [hl], l                                    ; $707d: $75
    add hl, hl                                    ; $707e: $29
    rla                                           ; $707f: $17
    or [hl]                                       ; $7080: $b6
    ld hl, $5e3f                                  ; $7081: $21 $3f $5e
    ei                                            ; $7084: $fb
    ld e, h                                       ; $7085: $5c
    inc d                                         ; $7086: $14
    ld b, l                                       ; $7087: $45
    sbc $9e                                       ; $7088: $de $9e
    ld c, b                                       ; $708a: $48
    cp h                                          ; $708b: $bc
    db $fc                                        ; $708c: $fc
    sbc $1f                                       ; $708d: $de $1f
    rst $28                                       ; $708f: $ef
    add hl, bc                                    ; $7090: $09
    and d                                         ; $7091: $a2
    or b                                          ; $7092: $b0
    db $e3                                        ; $7093: $e3
    add $ec                                       ; $7094: $c6 $ec
    call nc, $f4dc                                ; $7096: $d4 $dc $f4
    dec hl                                        ; $7099: $2b
    db $ed                                        ; $709a: $ed
    ld hl, $c41b                                  ; $709b: $21 $1b $c4
    dec de                                        ; $709e: $1b
    cp c                                          ; $709f: $b9

jr_041_70a0:
    xor b                                         ; $70a0: $a8
    ld c, e                                       ; $70a1: $4b
    db $eb                                        ; $70a2: $eb
    rst $20                                       ; $70a3: $e7
    ld b, l                                       ; $70a4: $45
    ld sp, hl                                     ; $70a5: $f9
    cp b                                          ; $70a6: $b8
    ld de, $c9b6                                  ; $70a7: $11 $b6 $c9
    ld b, [hl]                                    ; $70aa: $46
    ld e, d                                       ; $70ab: $5a
    dec [hl]                                      ; $70ac: $35
    cp [hl]                                       ; $70ad: $be
    ld [hl], h                                    ; $70ae: $74
    ld d, b                                       ; $70af: $50
    inc e                                         ; $70b0: $1c
    dec [hl]                                      ; $70b1: $35
    and h                                         ; $70b2: $a4
    ld e, h                                       ; $70b3: $5c
    jr jr_041_7058                                ; $70b4: $18 $a2

    adc l                                         ; $70b6: $8d
    ld c, h                                       ; $70b7: $4c
    ld a, [bc]                                    ; $70b8: $0a
    adc l                                         ; $70b9: $8d
    rrca                                          ; $70ba: $0f
    ld b, l                                       ; $70bb: $45
    pop hl                                        ; $70bc: $e1
    ret                                           ; $70bd: $c9


    ld [hl], d                                    ; $70be: $72
    cpl                                           ; $70bf: $2f
    db $d3                                        ; $70c0: $d3
    xor a                                         ; $70c1: $af
    db $ed                                        ; $70c2: $ed
    cp l                                          ; $70c3: $bd
    and [hl]                                      ; $70c4: $a6
    ld e, l                                       ; $70c5: $5d
    inc bc                                        ; $70c6: $03
    ld [hl], c                                    ; $70c7: $71
    ld e, $35                                     ; $70c8: $1e $35
    or d                                          ; $70ca: $b2
    dec a                                         ; $70cb: $3d
    xor b                                         ; $70cc: $a8
    rst $10                                       ; $70cd: $d7
    ld a, e                                       ; $70ce: $7b
    xor $26                                       ; $70cf: $ee $26
    ld a, [bc]                                    ; $70d1: $0a
    dec sp                                        ; $70d2: $3b
    adc e                                         ; $70d3: $8b
    adc l                                         ; $70d4: $8d
    rla                                           ; $70d5: $17
    and l                                         ; $70d6: $a5
    adc h                                         ; $70d7: $8c
    and l                                         ; $70d8: $a5
    and e                                         ; $70d9: $a3
    ld e, a                                       ; $70da: $5f
    ld a, b                                       ; $70db: $78
    xor h                                         ; $70dc: $ac
    ld c, a                                       ; $70dd: $4f
    ld a, e                                       ; $70de: $7b
    sbc a                                         ; $70df: $9f
    ld b, d                                       ; $70e0: $42
    ccf                                           ; $70e1: $3f
    ld c, a                                       ; $70e2: $4f
    rst $30                                       ; $70e3: $f7

jr_041_70e4:
    ld b, a                                       ; $70e4: $47
    ld e, l                                       ; $70e5: $5d
    ld e, d                                       ; $70e6: $5a
    ccf                                           ; $70e7: $3f
    cpl                                           ; $70e8: $2f
    jp z, $8dc7                                   ; $70e9: $ca $c7 $8d

    or b                                          ; $70ec: $b0
    ld c, l                                       ; $70ed: $4d
    ld [hl], $d2                                  ; $70ee: $36 $d2
    xor d                                         ; $70f0: $aa
    pop af                                        ; $70f1: $f1
    and l                                         ; $70f2: $a5
    add e                                         ; $70f3: $83
    ld [c], a                                     ; $70f4: $e2
    xor b                                         ; $70f5: $a8
    ld hl, $1232                                  ; $70f6: $21 $32 $12
    dec b                                         ; $70f9: $05
    jp nc, $a503                                  ; $70fa: $d2 $03 $a5

    ret nz                                        ; $70fd: $c0

    sub b                                         ; $70fe: $90
    dec a                                         ; $70ff: $3d
    jp nz, $df2f                                  ; $7100: $c2 $2f $df

    xor a                                         ; $7103: $af
    db $ed                                        ; $7104: $ed
    ld a, l                                       ; $7105: $7d
    sub [hl]                                      ; $7106: $96
    ld sp, $38fe                                  ; $7107: $31 $fe $38
    ccf                                           ; $710a: $3f
    ld [c], a                                     ; $710b: $e2
    ld b, [hl]                                    ; $710c: $46
    inc d                                         ; $710d: $14
    ld [hl], l                                    ; $710e: $75
    ret z                                         ; $710f: $c8

    rst $28                                       ; $7110: $ef
    db $ec                                        ; $7111: $ec
    inc hl                                        ; $7112: $23
    or c                                          ; $7113: $b1
    rst $30                                       ; $7114: $f7
    and h                                         ; $7115: $a4
    ret nc                                        ; $7116: $d0

    dec b                                         ; $7117: $05
    halt                                          ; $7118: $76
    ld h, e                                       ; $7119: $63
    adc b                                         ; $711a: $88
    jp nz, Jump_000_1fde                          ; $711b: $c2 $de $1f

    db $fd                                        ; $711e: $fd
    jp hl                                         ; $711f: $e9


    rst $30                                       ; $7120: $f7
    dec c                                         ; $7121: $0d
    jp $ca7d                                      ; $7122: $c3 $7d $ca


    add l                                         ; $7125: $85
    ld l, l                                       ; $7126: $6d
    ret z                                         ; $7127: $c8

    rst $08                                       ; $7128: $cf
    rst $28                                       ; $7129: $ef
    db $ed                                        ; $712a: $ed
    add c                                         ; $712b: $81
    jp nz, $ea86                                  ; $712c: $c2 $86 $ea

    cp b                                          ; $712f: $b8
    sbc [hl]                                      ; $7130: $9e
    call z, $4cb2                                 ; $7131: $cc $b2 $4c
    pop hl                                        ; $7134: $e1
    adc a                                         ; $7135: $8f
    jp nz, $1b8e                                  ; $7136: $c2 $8e $1b

jr_041_7139:
    or e                                          ; $7139: $b3
    ld d, e                                       ; $713a: $53
    ld [hl], e                                    ; $713b: $73
    inc de                                        ; $713c: $13
    cp e                                          ; $713d: $bb
    or d                                          ; $713e: $b2
    add b                                         ; $713f: $80
    ld a, c                                       ; $7140: $79

Jump_041_7141:
    ld a, [c]                                     ; $7141: $f2
    ld a, e                                       ; $7142: $7b
    ld a, e                                       ; $7143: $7b
    inc a                                         ; $7144: $3c
    db $dd                                        ; $7145: $dd
    rra                                           ; $7146: $1f
    ld [hl], l                                    ; $7147: $75
    ld l, c                                       ; $7148: $69
    db $fd                                        ; $7149: $fd
    cp h                                          ; $714a: $bc
    jr z, @+$21                                   ; $714b: $28 $1f

    push af                                       ; $714d: $f5
    ld a, e                                       ; $714e: $7b
    inc hl                                        ; $714f: $23
    xor l                                         ; $7150: $ad
    ld a, [de]                                    ; $7151: $1a
    ld e, a                                       ; $7152: $5f
    ld a, [hl-]                                   ; $7153: $3a
    jr z, jr_041_70e4                             ; $7154: $28 $8e

    ld a, [de]                                    ; $7156: $1a
    ld a, [$7515]                                 ; $7157: $fa $15 $75
    ld h, c                                       ; $715a: $61
    adc $5f                                       ; $715b: $ce $5f
    ld l, a                                       ; $715d: $6f
    xor d                                         ; $715e: $aa
    cp a                                          ; $715f: $bf
    xor b                                         ; $7160: $a8
    ld hl, $170d                                  ; $7161: $21 $0d $17
    cp e                                          ; $7164: $bb
    ld [$8605], a                                 ; $7165: $ea $05 $86
    inc d                                         ; $7168: $14
    ld [de], a                                    ; $7169: $12
    jp c, $89be                                   ; $716a: $da $be $89

    and d                                         ; $716d: $a2
    or $c2                                        ; $716e: $f6 $c2
    ret z                                         ; $7170: $c8

    cp $6c                                        ; $7171: $fe $6c
    db $10                                        ; $7173: $10
    ld l, a                                       ; $7174: $6f
    inc b                                         ; $7175: $04

Jump_041_7176:
    ld d, c                                       ; $7176: $51
    rla                                           ; $7177: $17
    ld e, a                                       ; $7178: $5f
    ld e, $bb                                     ; $7179: $1e $bb
    adc a                                         ; $717b: $8f
    jp nz, $9fde                                  ; $717c: $c2 $de $9f

Jump_041_717f:
    or $5f                                        ; $717f: $f6 $5f
    cp e                                          ; $7181: $bb
    adc a                                         ; $7182: $8f
    rrca                                          ; $7183: $0f
    ld a, l                                       ; $7184: $7d
    ld d, c                                       ; $7185: $51

jr_041_7186:
    sub e                                         ; $7186: $93
    db $db                                        ; $7187: $db
    ld e, c                                       ; $7188: $59
    ld l, h                                       ; $7189: $6c
    cp h                                          ; $718a: $bc
    jr z, jr_041_71f2                             ; $718b: $28 $65

    inc c                                         ; $718d: $0c
    add hl, hl                                    ; $718e: $29
    sub a                                         ; $718f: $97
    ld d, a                                       ; $7190: $57
    ld l, d                                       ; $7191: $6a
    xor h                                         ; $7192: $ac
    add d                                         ; $7193: $82
    ldh a, [$a7]                                  ; $7194: $f0 $a7
    and b                                         ; $7196: $a0
    ld e, d                                       ; $7197: $5a
    inc c                                         ; $7198: $0c
    or l                                          ; $7199: $b5
    ld d, [hl]                                    ; $719a: $56
    cp [hl]                                       ; $719b: $be
    ld c, b                                       ; $719c: $48
    pop hl                                        ; $719d: $e1
    cp a                                          ; $719e: $bf
    jr c, jr_041_7139                             ; $719f: $38 $98

    ld a, e                                       ; $71a1: $7b
    ld d, c                                       ; $71a2: $51
    sub e                                         ; $71a3: $93
    db $fd                                        ; $71a4: $fd
    reti                                          ; $71a5: $d9


    jr nz, jr_041_7186                            ; $71a6: $20 $de

    ld [$2ea2], sp                                ; $71a8: $08 $a2 $2e
    cp [hl]                                       ; $71ab: $be
    inc a                                         ; $71ac: $3c
    halt                                          ; $71ad: $76
    rra                                           ; $71ae: $1f
    add l                                         ; $71af: $85
    cp l                                          ; $71b0: $bd
    ccf                                           ; $71b1: $3f
    db $ed                                        ; $71b2: $ed
    cp a                                          ; $71b3: $bf
    halt                                          ; $71b4: $76
    xor a                                         ; $71b5: $af
    ld c, e                                       ; $71b6: $4b
    cp c                                          ; $71b7: $b9
    ldh a, [rSTAT]                                ; $71b8: $f0 $41
    sub b                                         ; $71ba: $90
    ld b, d                                       ; $71bb: $42
    db $e3                                        ; $71bc: $e3
    ld b, e                                       ; $71bd: $43
    ld d, c                                       ; $71be: $51
    ld a, b                                       ; $71bf: $78
    or d                                          ; $71c0: $b2
    call c, $f4cb                                 ; $71c1: $dc $cb $f4
    dec hl                                        ; $71c4: $2b
    ld l, l                                       ; $71c5: $6d
    db $ed                                        ; $71c6: $ed
    ld c, e                                       ; $71c7: $4b
    ld h, c                                       ; $71c8: $61
    xor d                                         ; $71c9: $aa
    jr nz, jr_041_7248                            ; $71ca: $20 $7c

    ld d, c                                       ; $71cc: $51
    cp b                                          ; $71cd: $b8
    inc l                                         ; $71ce: $2c
    rst $30                                       ; $71cf: $f7
    ld [hl], d                                    ; $71d0: $72
    add hl, hl                                    ; $71d1: $29
    ld [hl], h                                    ; $71d2: $74
    add c                                         ; $71d3: $81
    db $dd                                        ; $71d4: $dd
    ret c                                         ; $71d5: $d8

    and l                                         ; $71d6: $a5
    cp d                                          ; $71d7: $ba
    ld hl, sp+$5f                                 ; $71d8: $f8 $5f
    ld h, h                                       ; $71da: $64
    and d                                         ; $71db: $a2
    ret nz                                        ; $71dc: $c0

    inc a                                         ; $71dd: $3c
    ld d, c                                       ; $71de: $51
    sub a                                         ; $71df: $97
    ld [c], a                                     ; $71e0: $e2

jr_041_71e1:
    jr nz, jr_041_71ed                            ; $71e1: $20 $0a

    add [hl]                                      ; $71e3: $86
    ld hl, sp-$30                                 ; $71e4: $f8 $d0
    rst $10                                       ; $71e6: $d7
    or h                                          ; $71e7: $b4
    ld l, e                                       ; $71e8: $6b
    and b                                         ; $71e9: $a0
    ld c, a                                       ; $71ea: $4f
    dec de                                        ; $71eb: $1b
    ld a, c                                       ; $71ec: $79

jr_041_71ed:
    add l                                         ; $71ed: $85
    ld d, d                                       ; $71ee: $52
    and [hl]                                      ; $71ef: $a6
    sub $0a                                       ; $71f0: $d6 $0a

jr_041_71f2:
    dec e                                         ; $71f2: $1d
    jp nc, $a52f                                  ; $71f3: $d2 $2f $a5

    add c                                         ; $71f6: $81
    ret z                                         ; $71f7: $c8

    ld c, b                                       ; $71f8: $48
    sbc h                                         ; $71f9: $9c
    ld b, a                                       ; $71fa: $47
    adc l                                         ; $71fb: $8d
    ld [$a14a], sp                                ; $71fc: $08 $4a $a1
    ld a, [c]                                     ; $71ff: $f2
    reti                                          ; $7200: $d9


    jr nz, jr_041_71e1                            ; $7201: $20 $de

    ld [$c0b2], sp                                ; $7203: $08 $b2 $c0
    and d                                         ; $7206: $a2
    db $ed                                        ; $7207: $ed
    ld c, e                                       ; $7208: $4b
    ld h, c                                       ; $7209: $61
    xor d                                         ; $720a: $aa
    jr nz, jr_041_7289                            ; $720b: $20 $7c

    ld d, c                                       ; $720d: $51
    ret c                                         ; $720e: $d8

    ld e, c                                       ; $720f: $59
    db $ec                                        ; $7210: $ec
    xor d                                         ; $7211: $aa
    ret                                           ; $7212: $c9


    adc e                                         ; $7213: $8b
    ld c, h                                       ; $7214: $4c
    cp a                                          ; $7215: $bf
    ld [bc], a                                    ; $7216: $02
    ld [hl], l                                    ; $7217: $75
    ld d, b                                       ; $7218: $50
    ld a, [bc]                                    ; $7219: $0a
    sub l                                         ; $721a: $95
    adc a                                         ; $721b: $8f
    jp nz, $c8de                                  ; $721c: $c2 $de $c8

    ld b, $f1                                     ; $721f: $06 $f1
    ld b, [hl]                                    ; $7221: $46
    ld l, $ce                                     ; $7222: $2e $ce
    adc a                                         ; $7224: $8f
    sub h                                         ; $7225: $94

jr_041_7226:
    dec bc                                        ; $7226: $0b
    ld b, e                                       ; $7227: $43
    or h                                          ; $7228: $b4
    sub c                                         ; $7229: $91
    ld c, c                                       ; $722a: $49
    and c                                         ; $722b: $a1
    pop af                                        ; $722c: $f1
    and c                                         ; $722d: $a1
    jr z, @+$3e                                   ; $722e: $28 $3c

    ld e, c                                       ; $7230: $59
    xor $65                                       ; $7231: $ee $65
    ld [c], a                                     ; $7233: $e2
    db $fd                                        ; $7234: $fd
    inc l                                         ; $7235: $2c
    ld l, a                                       ; $7236: $6f
    adc h                                         ; $7237: $8c
    jr z, jr_041_7226                             ; $7238: $28 $ec

    ld d, h                                       ; $723a: $54
    scf                                           ; $723b: $37
    ld e, c                                       ; $723c: $59
    ld l, h                                       ; $723d: $6c
    inc [hl]                                      ; $723e: $34
    ei                                            ; $723f: $fb
    xor d                                         ; $7240: $aa
    ld a, [$057e]                                 ; $7241: $fa $7e $05
    dec e                                         ; $7244: $1d
    jp nc, $8edf                                  ; $7245: $d2 $df $8e

jr_041_7248:
    jp z, $baa4                                   ; $7248: $ca $a4 $ba

    ld hl, sp+$3f                                 ; $724b: $f8 $3f
    halt                                          ; $724d: $76
    ld e, [hl]                                    ; $724e: $5e
    ret c                                         ; $724f: $d8

    pop af                                        ; $7250: $f1
    db $c4, $f9, $11                              ; $7251: $c4 $f9 $11
    and [hl]                                      ; $7254: $a6
    call z, Call_041_46c8                         ; $7255: $cc $c8 $46
    ld [hl], $88                                  ; $7258: $36 $88
    scf                                           ; $725a: $37
    ld [hl], d                                    ; $725b: $72
    ld d, c                                       ; $725c: $51
    ret c                                         ; $725d: $d8

    ld e, c                                       ; $725e: $59
    db $ec                                        ; $725f: $ec
    xor d                                         ; $7260: $aa
    ret                                           ; $7261: $c9


    adc e                                         ; $7262: $8b
    ld c, h                                       ; $7263: $4c
    jp z, $90a5                                   ; $7264: $ca $a5 $90

    or e                                          ; $7267: $b3
    or l                                          ; $7268: $b5
    sub c                                         ; $7269: $91
    adc c                                         ; $726a: $89
    ld a, [$1f1d]                                 ; $726b: $fa $1d $1f
    ld a, [$93c6]                                 ; $726e: $fa $c6 $93

jr_041_7271:
    push hl                                       ; $7271: $e5
    ld e, [hl]                                    ; $7272: $5e
    ld h, $27                                     ; $7273: $26 $27
    pop de                                        ; $7275: $d1
    xor [hl]                                      ; $7276: $ae
    add c                                         ; $7277: $81
    ld a, [hl]                                    ; $7278: $7e
    dec b                                         ; $7279: $05
    dec e                                         ; $727a: $1d
    ld d, e                                       ; $727b: $53
    ld h, [hl]                                    ; $727c: $66
    ld h, h                                       ; $727d: $64
    inc hl                                        ; $727e: $23
    dec de                                        ; $727f: $1b
    call nz, $b91b                                ; $7280: $c4 $1b $b9
    jr z, jr_041_7271                             ; $7283: $28 $ec

    inc l                                         ; $7285: $2c
    halt                                          ; $7286: $76
    push de                                       ; $7287: $d5
    db $e4                                        ; $7288: $e4

jr_041_7289:
    ld b, l                                       ; $7289: $45
    ld h, $e5                                     ; $728a: $26 $e5
    jp nz, Jump_041_6d10                          ; $728c: $c2 $10 $6d

    ld h, h                                       ; $728f: $64
    ld a, [c]                                     ; $7290: $f2
    sub a                                         ; $7291: $97
    push hl                                       ; $7292: $e5
    ld e, [hl]                                    ; $7293: $5e
    ld l, $27                                     ; $7294: $2e $27
    ld e, [hl]                                    ; $7296: $5e

Call_041_7297:
    ret c                                         ; $7297: $d8

    adc l                                         ; $7298: $8d
    ld e, l                                       ; $7299: $5d
    cp a                                          ; $729a: $bf
    ld [bc], a                                    ; $729b: $02
    or l                                          ; $729c: $b5
    daa                                           ; $729d: $27
    push bc                                       ; $729e: $c5
    call $e302                                    ; $729f: $cd $02 $e3
    adc c                                         ; $72a2: $89
    rrca                                          ; $72a3: $0f
    db $fd                                        ; $72a4: $fd
    ld a, l                                       ; $72a5: $7d
    pop af                                        ; $72a6: $f1
    ld c, [hl]                                    ; $72a7: $4e
    add hl, hl                                    ; $72a8: $29
    or b                                          ; $72a9: $b0
    ret                                           ; $72aa: $c9


    ld b, [hl]                                    ; $72ab: $46
    xor d                                         ; $72ac: $aa
    ld b, e                                       ; $72ad: $43
    ld [hl], $88                                  ; $72ae: $36 $88
    scf                                           ; $72b0: $37
    ld [hl], d                                    ; $72b1: $72
    pop de                                        ; $72b2: $d1
    add sp, -$65                                  ; $72b3: $e8 $9b
    ld a, d                                       ; $72b5: $7a
    ld d, c                                       ; $72b6: $51
    sub e                                         ; $72b7: $93
    db $fd                                        ; $72b8: $fd
    pop de                                        ; $72b9: $d1
    cp a                                          ; $72ba: $bf
    di                                            ; $72bb: $f3
    jp $147d                                      ; $72bc: $c3 $7d $14


    or h                                          ; $72bf: $b4
    ld a, l                                       ; $72c0: $7d
    ld a, c                                       ; $72c1: $79
    ld de, $ee2a                                  ; $72c2: $11 $2a $ee
    ld [hl+], a                                   ; $72c5: $22
    ret c                                         ; $72c6: $d8

    ei                                            ; $72c7: $fb
    ld d, e                                       ; $72c8: $53
    ld a, [hl]                                    ; $72c9: $7e
    ld a, a                                       ; $72ca: $7f
    call nc, $8ec5                                ; $72cb: $d4 $c5 $8e
    ld l, l                                       ; $72ce: $6d
    ret z                                         ; $72cf: $c8

    adc c                                         ; $72d0: $89
    jp nz, Jump_000_1fde                          ; $72d1: $c2 $de $1f

    rst $08                                       ; $72d4: $cf
    cpl                                           ; $72d5: $2f
    rst $18                                       ; $72d6: $df
    xor a                                         ; $72d7: $af
    ld [hl], l                                    ; $72d8: $75
    ld b, [hl]                                    ; $72d9: $46
    ld [c], a                                     ; $72da: $e2
    ld b, [hl]                                    ; $72db: $46
    and [hl]                                      ; $72dc: $a6
    cp b                                          ; $72dd: $b8
    adc c                                         ; $72de: $89
    and b                                         ; $72df: $a0
    inc d                                         ; $72e0: $14
    ld a, [hl+]                                   ; $72e1: $2a
    rra                                           ; $72e2: $1f
    add l                                         ; $72e3: $85
    cp l                                          ; $72e4: $bd
    sub c                                         ; $72e5: $91
    dec c                                         ; $72e6: $0d
    ld [c], a                                     ; $72e7: $e2
    adc l                                         ; $72e8: $8d
    ld e, h                                       ; $72e9: $5c
    sbc h                                         ; $72ea: $9c
    rra                                           ; $72eb: $1f
    add hl, hl                                    ; $72ec: $29
    rla                                           ; $72ed: $17
    add [hl]                                      ; $72ee: $86
    ld l, b                                       ; $72ef: $68
    inc hl                                        ; $72f0: $23
    sub e                                         ; $72f1: $93
    ld b, d                                       ; $72f2: $42
    db $e3                                        ; $72f3: $e3
    ld b, e                                       ; $72f4: $43
    ld d, c                                       ; $72f5: $51
    ld a, b                                       ; $72f6: $78
    or d                                          ; $72f7: $b2
    call c, $f4cb                                 ; $72f8: $dc $cb $f4
    dec hl                                        ; $72fb: $2b
    cp [hl]                                       ; $72fc: $be
    ld [hl], h                                    ; $72fd: $74
    ld e, c                                       ; $72fe: $59
    ld b, [hl]                                    ; $72ff: $46
    or h                                          ; $7300: $b4
    adc c                                         ; $7301: $89
    di                                            ; $7302: $f3
    inc hl                                        ; $7303: $23
    add d                                         ; $7304: $82
    ld d, d                                       ; $7305: $52
    xor b                                         ; $7306: $a8
    ld a, h                                       ; $7307: $7c
    inc d                                         ; $7308: $14
    or $46                                        ; $7309: $f6 $46
    ld [hl], $88                                  ; $730b: $36 $88
    scf                                           ; $730d: $37
    ld [hl], d                                    ; $730e: $72
    ld d, c                                       ; $730f: $51
    ret c                                         ; $7310: $d8

    ld e, c                                       ; $7311: $59
    db $ec                                        ; $7312: $ec
    xor d                                         ; $7313: $aa
    ret                                           ; $7314: $c9


    adc e                                         ; $7315: $8b
    ld c, h                                       ; $7316: $4c
    jp z, Jump_000_2185                           ; $7317: $ca $85 $21

    jp c, $87c7                                   ; $731a: $da $c7 $87

    ld a, [hl]                                    ; $731d: $7e
    add hl, hl                                    ; $731e: $29
    dec c                                         ; $731f: $0d
    db $f4                                        ; $7320: $f4
    dec hl                                        ; $7321: $2b
    ld l, l                                       ; $7322: $6d
    rst $28                                       ; $7323: $ef
    inc l                                         ; $7324: $2c
    ld b, $2f                                     ; $7325: $06 $2f
    sbc b                                         ; $7327: $98
    daa                                           ; $7328: $27
    ld a, [bc]                                    ; $7329: $0a
    ld a, e                                       ; $732a: $7b
    ld a, a                                       ; $732b: $7f
    xor d                                         ; $732c: $aa
    ei                                            ; $732d: $fb
    ld a, b                                       ; $732e: $78
    ld a, [hl]                                    ; $732f: $7e
    ld sp, hl                                     ; $7330: $f9
    ld d, h                                       ; $7331: $54
    rla                                           ; $7332: $17
    rst $38                                       ; $7333: $ff
    ld b, a                                       ; $7334: $47
    add c                                         ; $7335: $81
    ld a, c                                       ; $7336: $79
    and d                                         ; $7337: $a2
    ld l, $c5                                     ; $7338: $2e $c5
    ld b, c                                       ; $733a: $41
    inc d                                         ; $733b: $14
    inc c                                         ; $733c: $0c
    add hl, sp                                    ; $733d: $39
    adc c                                         ; $733e: $89
    db $db                                        ; $733f: $db
    ld e, a                                       ; $7340: $5f
    ld a, [bc]                                    ; $7341: $0a
    ld a, [$5db4]                                 ; $7342: $fa $b4 $5d
    ld d, l                                       ; $7345: $55
    xor a                                         ; $7346: $af
    sbc l                                         ; $7347: $9d
    ld c, h                                       ; $7348: $4c
    sbc h                                         ; $7349: $9c
    rra                                           ; $734a: $1f
    ld e, c                                       ; $734b: $59
    sbc $f6                                       ; $734c: $de $f6
    sub a                                         ; $734e: $97
    add d                                         ; $734f: $82
    xor b                                         ; $7350: $a8
    set 6, d                                      ; $7351: $cb $f2

Jump_041_7353:
    and l                                         ; $7353: $a5
    cp h                                          ; $7354: $bc
    ld hl, $2a1f                                  ; $7355: $21 $1f $2a
    ld e, c                                       ; $7358: $59
    xor $65                                       ; $7359: $ee $65

jr_041_735b:
    ld [hl], d                                    ; $735b: $72
    ld [c], a                                     ; $735c: $e2
    add l                                         ; $735d: $85
    db $dd                                        ; $735e: $dd
    jr jr_041_735b                                ; $735f: $18 $fa

    dec d                                         ; $7361: $15
    ld [hl], l                                    ; $7362: $75
    and $52                                       ; $7363: $e6 $52
    sbc b                                         ; $7365: $98
    ld a, [hl+]                                   ; $7366: $2a
    ld [$145f], sp                                ; $7367: $08 $5f $14
    halt                                          ; $736a: $76
    ld d, $bb                                     ; $736b: $16 $bb
    ld l, d                                       ; $736d: $6a
    ld a, [c]                                     ; $736e: $f2
    ld [hl+], a                                   ; $736f: $22
    inc de                                        ; $7370: $13
    add hl, de                                    ; $7371: $19
    ret                                           ; $7372: $c9


    sub e                                         ; $7373: $93
    add [hl]                                      ; $7374: $86
    ld l, d                                       ; $7375: $6a
    or d                                          ; $7376: $b2
    ld b, c                                       ; $7377: $41
    cp h                                          ; $7378: $bc
    sub c                                         ; $7379: $91
    ld c, e                                       ; $737a: $4b
    and c                                         ; $737b: $a1
    pop af                                        ; $737c: $f1
    and c                                         ; $737d: $a1
    jr z, jr_041_73bc                             ; $737e: $28 $3c

    ld e, c                                       ; $7380: $59
    xor $65                                       ; $7381: $ee $65
    or d                                          ; $7383: $b2
    ret nz                                        ; $7384: $c0

    ld d, d                                       ; $7385: $52
    call $d1e6                                    ; $7386: $cd $e6 $d1
    and l                                         ; $7389: $a5
    sbc d                                         ; $738a: $9a
    call Call_041_4613                            ; $738b: $cd $13 $46
    or l                                          ; $738e: $b5
    ld c, h                                       ; $738f: $4c
    cp a                                          ; $7390: $bf
    ld [bc], a                                    ; $7391: $02
    ld l, l                                       ; $7392: $6d
    jp nc, $4bb1                                  ; $7393: $d2 $b1 $4b

    add c                                         ; $7396: $81
    sub c                                         ; $7397: $91
    ld b, a                                       ; $7398: $47
    cp h                                          ; $7399: $bc
    jp hl                                         ; $739a: $e9


    ld d, a                                       ; $739b: $57
    dec e                                         ; $739c: $1d
    ld hl, sp+$75                                 ; $739d: $f8 $75
    and c                                         ; $739f: $a1
    sub d                                         ; $73a0: $92
    push hl                                       ; $73a1: $e5
    ld c, b                                       ; $73a2: $48
    db $ec                                        ; $73a3: $ec
    ld a, l                                       ; $73a4: $7d
    ld [hl-], a                                   ; $73a5: $32
    ld d, c                                       ; $73a6: $51
    ret c                                         ; $73a7: $d8

    ld e, c                                       ; $73a8: $59
    db $ec                                        ; $73a9: $ec
    xor d                                         ; $73aa: $aa
    ret                                           ; $73ab: $c9


    adc e                                         ; $73ac: $8b
    ld c, h                                       ; $73ad: $4c
    sbc h                                         ; $73ae: $9c
    rra                                           ; $73af: $1f
    add hl, hl                                    ; $73b0: $29
    rla                                           ; $73b1: $17
    add e                                         ; $73b2: $83
    ei                                            ; $73b3: $fb
    ld a, h                                       ; $73b4: $7c
    ld [hl], $88                                  ; $73b5: $36 $88
    scf                                           ; $73b7: $37
    add d                                         ; $73b8: $82
    sbc d                                         ; $73b9: $9a
    ld l, c                                       ; $73ba: $69
    ld a, l                                       ; $73bb: $7d

jr_041_73bc:
    ld c, b                                       ; $73bc: $48
    and h                                         ; $73bd: $a4
    ldh a, [$5b]                                  ; $73be: $f0 $5b
    dec a                                         ; $73c0: $3d
    ld a, c                                       ; $73c1: $79
    ld d, c                                       ; $73c2: $51
    cpl                                           ; $73c3: $2f
    ld l, d                                       ; $73c4: $6a

Jump_041_73c5:
    ld l, d                                       ; $73c5: $6a
    xor l                                         ; $73c6: $ad
    dec e                                         ; $73c7: $1d
    ld e, a                                       ; $73c8: $5f
    ld a, [bc]                                    ; $73c9: $0a
    ld c, a                                       ; $73ca: $4f
    ld c, [hl]                                    ; $73cb: $4e
    sub e                                         ; $73cc: $93
    or c                                          ; $73cd: $b1
    rla                                           ; $73ce: $17
    dec [hl]                                      ; $73cf: $35
    cp d                                          ; $73d0: $ba
    call nc, $eebd                                ; $73d1: $d4 $bd $ee
    ei                                            ; $73d4: $fb
    dec d                                         ; $73d5: $15
    xor l                                         ; $73d6: $ad
    xor $3d                                       ; $73d7: $ee $3d
    or $ba                                        ; $73d9: $f6 $ba
    ld a, b                                       ; $73db: $78
    rst $00                                       ; $73dc: $c7
    ld a, [bc]                                    ; $73dd: $0a
    ld [hl], h                                    ; $73de: $74
    ld d, c                                       ; $73df: $51
    ld b, e                                       ; $73e0: $43
    ld a, [de]                                    ; $73e1: $1a
    ld l, $ea                                     ; $73e2: $2e $ea
    adc l                                         ; $73e4: $8d
    cpl                                           ; $73e5: $2f
    ld a, $f4                                     ; $73e6: $3e $f4
    or a                                          ; $73e8: $b7
    sbc e                                         ; $73e9: $9b
    ld a, [c]                                     ; $73ea: $f2
    ld [hl], c                                    ; $73eb: $71
    ld a, [hl]                                    ; $73ec: $7e
    ld b, h                                       ; $73ed: $44
    ld b, [hl]                                    ; $73ee: $46
    or d                                          ; $73ef: $b2
    inc c                                         ; $73f0: $0c
    db $db                                        ; $73f1: $db
    ld e, a                                       ; $73f2: $5f
    ld c, [hl]                                    ; $73f3: $4e
    sub e                                         ; $73f4: $93
    or c                                          ; $73f5: $b1
    scf                                           ; $73f6: $37
    db $f4                                        ; $73f7: $f4
    dec hl                                        ; $73f8: $2b
    xor l                                         ; $73f9: $ad
    ld a, [hl-]                                   ; $73fa: $3a
    ccf                                           ; $73fb: $3f
    and l                                         ; $73fc: $a5
    ld a, l                                       ; $73fd: $7d
    rst $18                                       ; $73fe: $df
    and a                                         ; $73ff: $a7
    ret z                                         ; $7400: $c8

    ld a, c                                       ; $7401: $79
    cp l                                          ; $7402: $bd
    ld a, l                                       ; $7403: $7d
    rst $18                                       ; $7404: $df
    rst $20                                       ; $7405: $e7
    sbc l                                         ; $7406: $9d
    sbc a                                         ; $7407: $9f
    jp nc, $efbe                                  ; $7408: $d2 $be $ef

    ld d, a                                       ; $740b: $57
    ld l, l                                       ; $740c: $6d
    ld hl, sp+$03                                 ; $740d: $f8 $03
    ld a, a                                       ; $740f: $7f
    ldh [rIF], a                                  ; $7410: $e0 $0f
    db $fc                                        ; $7412: $fc
    ld a, l                                       ; $7413: $7d
    rst $18                                       ; $7414: $df
    rst $30                                       ; $7415: $f7
    dec hl                                        ; $7416: $2b
    xor l                                         ; $7417: $ad

Jump_041_7418:
    ld a, [hl-]                                   ; $7418: $3a
    ccf                                           ; $7419: $3f
    and l                                         ; $741a: $a5
    cp d                                          ; $741b: $ba
    inc d                                         ; $741c: $14
    add hl, sp                                    ; $741d: $39
    xor a                                         ; $741e: $af
    ld d, a                                       ; $741f: $57
    rla                                           ; $7420: $17
    ld e, d                                       ; $7421: $5a
    dec l                                         ; $7422: $2d
    cp $be                                        ; $7423: $fe $be
    rst $28                                       ; $7425: $ef
    ld d, a                                       ; $7426: $57
    ld [hl], l                                    ; $7427: $75
    dec de                                        ; $7428: $1b
    xor l                                         ; $7429: $ad
    db $db                                        ; $742a: $db
    ld l, b                                       ; $742b: $68
    db $dd                                        ; $742c: $dd
    ld h, c                                       ; $742d: $61
    add [hl]                                      ; $742e: $86
    jp hl                                         ; $742f: $e9


    ld d, d                                       ; $7430: $52
    ld [hl], b                                    ; $7431: $70
    ld sp, hl                                     ; $7432: $f9
    xor d                                         ; $7433: $aa
    ld a, [$3cfd]                                 ; $7434: $fa $fd $3c
    or l                                          ; $7437: $b5
    ld d, [hl]                                    ; $7438: $56
    ld [hl], l                                    ; $7439: $75
    ld b, [hl]                                    ; $743a: $46
    sub a                                         ; $743b: $97
    cp d                                          ; $743c: $ba
    rst $10                                       ; $743d: $d7
    ld a, l                                       ; $743e: $7d
    xor d                                         ; $743f: $aa
    adc e                                         ; $7440: $8b
    rst $38                                       ; $7441: $ff
    db $e3                                        ; $7442: $e3
    ld h, [hl]                                    ; $7443: $66
    cpl                                           ; $7444: $2f
    rst $00                                       ; $7445: $c7
    inc de                                        ; $7446: $13
    scf                                           ; $7447: $37
    ld [de], a                                    ; $7448: $12
    ld a, [hl+]                                   ; $7449: $2a
    add hl, sp                                    ; $744a: $39
    ld [hl], c                                    ; $744b: $71
    cpl                                           ; $744c: $2f
    adc h                                         ; $744d: $8c
    ld [hl], d                                    ; $744e: $72
    push de                                       ; $744f: $d5
    db $f4                                        ; $7450: $f4
    ld l, c                                       ; $7451: $69
    push de                                       ; $7452: $d5
    ld sp, hl                                     ; $7453: $f9
    add hl, hl                                    ; $7454: $29
    push de                                       ; $7455: $d5
    and l                                         ; $7456: $a5
    ret z                                         ; $7457: $c8

    ld a, c                                       ; $7458: $79
    cp l                                          ; $7459: $bd
    ld a, l                                       ; $745a: $7d
    rst $18                                       ; $745b: $df
    xor a                                         ; $745c: $af
    xor l                                         ; $745d: $ad
    ld b, [hl]                                    ; $745e: $46
    ld l, e                                       ; $745f: $6b
    ld d, h                                       ; $7460: $54
    ld l, e                                       ; $7461: $6b
    ld d, h                                       ; $7462: $54
    dec sp                                        ; $7463: $3b
    xor d                                         ; $7464: $aa
    adc $bd                                       ; $7465: $ce $bd
    ld hl, $2fea                                  ; $7467: $21 $ea $2f
    push hl                                       ; $746a: $e5
    add h                                         ; $746b: $84
    and a                                         ; $746c: $a7
    ld a, [hl-]                                   ; $746d: $3a
    ld e, l                                       ; $746e: $5d
    call nc, Call_000_2e19                        ; $746f: $d4 $19 $2e
    adc $8f                                       ; $7472: $ce $8f
    inc d                                         ; $7474: $14
    ld e, h                                       ; $7475: $5c
    jp z, Jump_041_4f30                           ; $7476: $ca $30 $4f

    or h                                          ; $7479: $b4
    ld a, l                                       ; $747a: $7d
    add c                                         ; $747b: $81
    rst $10                                       ; $747c: $d7
    dec bc                                        ; $747d: $0b
    and $8b                                       ; $747e: $e6 $8b
    jp nz, $fb4e                                  ; $7480: $c2 $4e $fb

    call nc, $92d1                                ; $7483: $d4 $d1 $92
    ld d, [hl]                                    ; $7486: $56
    ld d, l                                       ; $7487: $55
    ld [$2d3c], a                                 ; $7488: $ea $3c $2d
    ld hl, sp-$56                                 ; $748b: $f8 $aa
    rst $28                                       ; $748d: $ef
    ei                                            ; $748e: $fb
    db $ec                                        ; $748f: $ec
    ld c, a                                       ; $7490: $4f
    ei                                            ; $7491: $fb
    adc l                                         ; $7492: $8d
    or [hl]                                       ; $7493: $b6
    rst $18                                       ; $7494: $df
    ld l, b                                       ; $7495: $68
    ei                                            ; $7496: $fb
    cp a                                          ; $7497: $bf
    and c                                         ; $7498: $a1
    adc [hl]                                      ; $7499: $8e
    ld a, b                                       ; $749a: $78
    inc hl                                        ; $749b: $23
    adc b                                         ; $749c: $88
    jp nz, $cda5                                  ; $749d: $c2 $a5 $cd

    rla                                           ; $74a0: $17
    cp $52                                        ; $74a1: $fe $52
    ld e, l                                       ; $74a3: $5d
    call $be15                                    ; $74a4: $cd $15 $be
    ld [hl], d                                    ; $74a7: $72
    ld e, [hl]                                    ; $74a8: $5e
    ld l, a                                       ; $74a9: $6f
    call Call_041_7515                            ; $74aa: $cd $15 $75
    ld l, l                                       ; $74ad: $6d
    ld d, $bb                                     ; $74ae: $16 $bb
    adc c                                         ; $74b0: $89
    sbc e                                         ; $74b1: $9b
    ld d, d                                       ; $74b2: $52
    ld e, a                                       ; $74b3: $5f
    sbc a                                         ; $74b4: $9f
    ld c, $1b                                     ; $74b5: $0e $1b
    db $ed                                        ; $74b7: $ed
    or b                                          ; $74b8: $b0
    pop de                                        ; $74b9: $d1
    ld c, $e9                                     ; $74ba: $0e $e9
    push bc                                       ; $74bc: $c5
    ld e, l                                       ; $74bd: $5d
    ld c, b                                       ; $74be: $48
    ld a, [hl-]                                   ; $74bf: $3a
    dec de                                        ; $74c0: $1b
    and c                                         ; $74c1: $a1
    sub d                                         ; $74c2: $92
    inc de                                        ; $74c3: $13
    rst $30                                       ; $74c4: $f7
    halt                                          ; $74c5: $76
    ld l, [hl]                                    ; $74c6: $6e
    ld d, d                                       ; $74c7: $52
    ld d, $b8                                     ; $74c8: $16 $b8
    ei                                            ; $74ca: $fb
    dec c                                         ; $74cb: $0d
    ld e, l                                       ; $74cc: $5d
    sbc h                                         ; $74cd: $9c
    rra                                           ; $74ce: $1f
    pop de                                        ; $74cf: $d1
    jr nz, @-$4e                                  ; $74d0: $20 $b0

    rst $18                                       ; $74d2: $df
    dec d                                         ; $74d3: $15
    add h                                         ; $74d4: $84
    sub c                                         ; $74d5: $91
    cpl                                           ; $74d6: $2f
    dec b                                         ; $74d7: $05
    sbc d                                         ; $74d8: $9a
    ret nz                                        ; $74d9: $c0

    ld [hl], b                                    ; $74da: $70
    add hl, hl                                    ; $74db: $29
    or e                                          ; $74dc: $b3
    daa                                           ; $74dd: $27
    rra                                           ; $74de: $1f
    ld a, [hl+]                                   ; $74df: $2a
    sub e                                         ; $74e0: $93
    jp nz, Jump_041_4154                          ; $74e1: $c2 $54 $41

    jr @+$5b                                      ; $74e4: $18 $59

    xor [hl]                                      ; $74e6: $ae
    add c                                         ; $74e7: $81
    and b                                         ; $74e8: $a0
    inc l                                         ; $74e9: $2c
    jr nc, jr_041_750a                            ; $74ea: $30 $1e

    ld e, l                                       ; $74ec: $5d
    xor d                                         ; $74ed: $aa
    rst $10                                       ; $74ee: $d7
    push bc                                       ; $74ef: $c5
    adc l                                         ; $74f0: $8d
    sub h                                         ; $74f1: $94
    ld d, e                                       ; $74f2: $53
    or b                                          ; $74f3: $b0
    rst $20                                       ; $74f4: $e7
    adc c                                         ; $74f5: $89
    di                                            ; $74f6: $f3
    inc hl                                        ; $74f7: $23
    dec b                                         ; $74f8: $05
    sub a                                         ; $74f9: $97
    jp c, $d68d                                   ; $74fa: $da $8d $d6

    ld l, [hl]                                    ; $74fd: $6e
    or h                                          ; $74fe: $b4
    or $9b                                        ; $74ff: $f6 $9b
    ld de, $dd48                                  ; $7501: $11 $48 $dd
    ld h, c                                       ; $7504: $61
    add [hl]                                      ; $7505: $86
    push af                                       ; $7506: $f5
    ld a, l                                       ; $7507: $7d
    cp a                                          ; $7508: $bf
    ld [bc], a                                    ; $7509: $02

jr_041_750a:
    xor l                                         ; $750a: $ad
    ld e, a                                       ; $750b: $5f
    call c, $4f94                                 ; $750c: $dc $94 $4f
    cp c                                          ; $750f: $b9
    or b                                          ; $7510: $b0
    dec a                                         ; $7511: $3d
    di                                            ; $7512: $f3

Call_041_7513:
Jump_041_7513:
    rst $10                                       ; $7513: $d7
    adc d                                         ; $7514: $8a

Call_041_7515:
    xor a                                         ; $7515: $af
    sbc h                                         ; $7516: $9c

Jump_041_7517:
    rst $10                                       ; $7517: $d7
    db $db                                        ; $7518: $db
    xor a                                         ; $7519: $af
    dec e                                         ; $751a: $1d
    db $db                                        ; $751b: $db
    sub b                                         ; $751c: $90
    sbc a                                         ; $751d: $9f
    db $fd                                        ; $751e: $fd

Call_041_751f:
    ld [hl], c                                    ; $751f: $71
    adc l                                         ; $7520: $8d
    cp d                                          ; $7521: $ba
    ld b, [hl]                                    ; $7522: $46
    db $dd                                        ; $7523: $dd
    ld [$54db], sp                                ; $7524: $08 $db $54
    cp a                                          ; $7527: $bf
    and c                                         ; $7528: $a1
    adc [hl]                                      ; $7529: $8e
    ld a, b                                       ; $752a: $78
    inc hl                                        ; $752b: $23
    add sp, -$2d                                  ; $752c: $e8 $d3
    ld b, [hl]                                    ; $752e: $46
    cp h                                          ; $752f: $bc
    ld a, a                                       ; $7530: $7f
    add hl, sp                                    ; $7531: $39
    adc c                                         ; $7532: $89
    rst $10                                       ; $7533: $d7
    ret nz                                        ; $7534: $c0

    db $fc                                        ; $7535: $fc
    ld a, l                                       ; $7536: $7d
    rst $18                                       ; $7537: $df
    ld h, a                                       ; $7538: $67
    ld a, a                                       ; $7539: $7f
    jp c, Jump_000_0dff                           ; $753a: $da $ff $0d

    ld [hl], l                                    ; $753d: $75

Jump_041_753e:
    call nz, Call_041_411b                        ; $753e: $c4 $1b $41
    inc d                                         ; $7541: $14
    halt                                          ; $7542: $76
    jp c, $e17c                                   ; $7543: $da $7c $e1

    cpl                                           ; $7546: $2f
    push de                                       ; $7547: $d5
    add a                                         ; $7548: $87
    cpl                                           ; $7549: $2f
    ld b, $51                                     ; $754a: $06 $51
    or b                                          ; $754c: $b0
    ld a, d                                       ; $754d: $7a
    ld d, d                                       ; $754e: $52
    ld a, [de]                                    ; $754f: $1a
    dec l                                         ; $7550: $2d
    adc l                                         ; $7551: $8d
    ld d, $54                                     ; $7552: $16 $54
    adc e                                         ; $7554: $8b

jr_041_7555:
    ld hl, $35cb                                  ; $7555: $21 $cb $35
    db $10                                        ; $7558: $10
    dec b                                         ; $7559: $05
    db $fd                                        ; $755a: $fd
    ld l, h                                       ; $755b: $6c
    add sp, -$1e                                  ; $755c: $e8 $e2
    dec a                                         ; $755e: $3d
    sbc c                                         ; $755f: $99
    ld a, h                                       ; $7560: $7c
    call c, $b614                                 ; $7561: $dc $14 $b6
    inc de                                        ; $7564: $13
    dec c                                         ; $7565: $0d
    add $97                                       ; $7566: $c6 $97
    adc a                                         ; $7568: $8f
    dec [hl]                                      ; $7569: $35
    ld l, d                                       ; $756a: $6a
    adc l                                         ; $756b: $8d
    jp c, $2f55                                   ; $756c: $da $55 $2f

    jr nc, jr_041_7555                            ; $756f: $30 $e4

    or e                                          ; $7571: $b3
    pop bc                                        ; $7572: $c1
    inc a                                         ; $7573: $3c
    db $fd                                        ; $7574: $fd
    ld a, [bc]                                    ; $7575: $0a
    ld [hl], l                                    ; $7576: $75
    ld b, [hl]                                    ; $7577: $46
    jp nz, $2436                                  ; $7578: $c2 $36 $24

    db $ec                                        ; $757b: $ec
    cpl                                           ; $757c: $2f
    ei                                            ; $757d: $fb
    db $e3                                        ; $757e: $e3
    ld a, [de]                                    ; $757f: $1a
    ld [hl], l                                    ; $7580: $75
    adc l                                         ; $7581: $8d
    cp d                                          ; $7582: $ba
    ld de, $a9b6                                  ; $7583: $11 $b6 $a9
    ld a, [hl]                                    ; $7586: $7e
    ld b, e                                       ; $7587: $43
    dec e                                         ; $7588: $1d
    pop af                                        ; $7589: $f1
    ld b, [hl]                                    ; $758a: $46
    db $10                                        ; $758b: $10
    rra                                           ; $758c: $1f
    ld a, d                                       ; $758d: $7a
    ld d, c                                       ; $758e: $51
    db $10                                        ; $758f: $10
    or [hl]                                       ; $7590: $b6
    pop de                                        ; $7591: $d1
    and l                                         ; $7592: $a5
    or $9b                                        ; $7593: $f6 $9b
    ld de, $b9a8                                  ; $7595: $11 $a8 $b9
    ld [bc], a                                    ; $7598: $02
    ld l, l                                       ; $7599: $6d
    ld c, a                                       ; $759a: $4f
    rst $18                                       ; $759b: $df
    rst $30                                       ; $759c: $f7
    sub c                                         ; $759d: $91
    sub c                                         ; $759e: $91
    ld d, h                                       ; $759f: $54
    sub a                                         ; $75a0: $97
    ld [bc], a                                    ; $75a1: $02
    pop hl                                        ; $75a2: $e1

Jump_041_75a3:
    jp hl                                         ; $75a3: $e9


    ei                                            ; $75a4: $fb
    ld a, $d5                                     ; $75a5: $3e $d5
    ld l, h                                       ; $75a7: $6c
    sbc [hl]                                      ; $75a8: $9e
    add sp, $21                                   ; $75a9: $e8 $21
    add sp, -$05                                  ; $75ab: $e8 $fb
    ld a, [hl]                                    ; $75ad: $7e
    dec b                                         ; $75ae: $05
    sbc l                                         ; $75af: $9d
    ld a, [hl]                                    ; $75b0: $7e
    ld a, [hl+]                                   ; $75b1: $2a
    ld l, b                                       ; $75b2: $68
    ei                                            ; $75b3: $fb
    and [hl]                                      ; $75b4: $a6
    ld d, [hl]                                    ; $75b5: $56
    ld e, d                                       ; $75b6: $5a
    dec h                                         ; $75b7: $25
    ld b, c                                       ; $75b8: $41
    ld e, [hl]                                    ; $75b9: $5e
    xor b                                         ; $75ba: $a8
    db $e4                                        ; $75bb: $e4
    rlc d                                         ; $75bc: $cb $02
    and $09                                       ; $75be: $e6 $09
    jp $f4ec                                      ; $75c0: $c3 $ec $f4


    or a                                          ; $75c3: $b7
    ld de, $fa1f                                  ; $75c4: $11 $1f $fa
    and d                                         ; $75c7: $a2
    ld h, $05                                     ; $75c8: $26 $05
    sub a                                         ; $75ca: $97
    jp nz, $93cf                                  ; $75cb: $c2 $cf $93

    ld h, l                                       ; $75ce: $65
    adc h                                         ; $75cf: $8c
    sbc a                                         ; $75d0: $9f
    daa                                           ; $75d1: $27
    ld a, $f4                                     ; $75d2: $3e $f4
    ld a, [$be15]                                 ; $75d4: $fa $15 $be
    inc hl                                        ; $75d7: $23
    sub e                                         ; $75d8: $93
    jp nz, $13cf                                  ; $75d9: $c2 $cf $13

    scf                                           ; $75dc: $37
    ld a, e                                       ; $75dd: $7b
    add hl, sp                                    ; $75de: $39
    sbc [hl]                                      ; $75df: $9e
    xor b                                         ; $75e0: $a8
    rst $18                                       ; $75e1: $df
    ei                                            ; $75e2: $fb
    db $d3                                        ; $75e3: $d3
    cp $6f                                        ; $75e4: $fe $6f
    xor b                                         ; $75e6: $a8
    inc hl                                        ; $75e7: $23
    sbc $08                                       ; $75e8: $de $08
    and d                                         ; $75ea: $a2
    ld [hl], b                                    ; $75eb: $70
    ld l, c                                       ; $75ec: $69
    di                                            ; $75ed: $f3
    add l                                         ; $75ee: $85
    cp a                                          ; $75ef: $bf
    ld d, h                                       ; $75f0: $54

jr_041_75f1:
    rst $10                                       ; $75f1: $d7
    rst $00                                       ; $75f2: $c7
    ld d, a                                       ; $75f3: $57
    adc $eb                                       ; $75f4: $ce $eb
    db $ed                                        ; $75f6: $ed
    db $d3                                        ; $75f7: $d3
    or $ce                                        ; $75f8: $f6 $ce
    ld h, d                                       ; $75fa: $62
    db $e3                                        ; $75fb: $e3
    ld b, l                                       ; $75fc: $45
    add hl, hl                                    ; $75fd: $29
    ld h, e                                       ; $75fe: $63
    jp hl                                         ; $75ff: $e9


    add sp, $17                                   ; $7600: $e8 $17
    ld e, $4b                                     ; $7602: $1e $4b
    ld [hl], l                                    ; $7604: $75
    pop af                                        ; $7605: $f1
    ld a, a                                       ; $7606: $7f
    xor d                                         ; $7607: $aa
    rla                                           ; $7608: $17
    push af                                       ; $7609: $f5
    inc a                                         ; $760a: $3c
    ld sp, hl                                     ; $760b: $f9
    cp l                                          ; $760c: $bd
    ccf                                           ; $760d: $3f
    halt                                          ; $760e: $76
    ld c, $e6                                     ; $760f: $0e $e6
    ld a, $ea                                     ; $7611: $3e $ea
    ld b, d                                       ; $7613: $42
    push hl                                       ; $7614: $e5
    db $e3                                        ; $7615: $e3
    ld b, [hl]                                    ; $7616: $46
    ret c                                         ; $7617: $d8

    and [hl]                                      ; $7618: $a6
    ld a, [$750d]                                 ; $7619: $fa $0d $75
    call nz, Call_041_411b                        ; $761c: $c4 $1b $41
    sbc a                                         ; $761f: $9f
    ld d, [hl]                                    ; $7620: $56
    sbc l                                         ; $7621: $9d
    sbc a                                         ; $7622: $9f
    jp nc, Jump_041_753e                          ; $7623: $d2 $3e $75

    add a                                         ; $7626: $87
    dec c                                         ; $7627: $0d
    ld a, d                                       ; $7628: $7a
    dec a                                         ; $7629: $3d
    ld a, [c]                                     ; $762a: $f2
    ld b, a                                       ; $762b: $47
    ld sp, hl                                     ; $762c: $f9
    xor l                                         ; $762d: $ad
    cp d                                          ; $762e: $ba
    ld e, d                                       ; $762f: $5a
    dec hl                                        ; $7630: $2b
    ld [hl], l                                    ; $7631: $75
    dec c                                         ; $7632: $0d
    and d                                         ; $7633: $a2
    ld l, $3e                                     ; $7634: $2e $3e
    inc d                                         ; $7636: $14
    add l                                         ; $7637: $85
    ccf                                           ; $7638: $3f
    rl b                                          ; $7639: $cb $10
    ld l, a                                       ; $763b: $6f
    inc b                                         ; $763c: $04
    or c                                          ; $763d: $b1
    db $d3                                        ; $763e: $d3
    jr nz, jr_041_75f1                            ; $763f: $20 $b0

    ld h, a                                       ; $7641: $67
    dec sp                                        ; $7642: $3b
    add a                                         ; $7643: $87
    sub [hl]                                      ; $7644: $96
    ld [hl+], a                                   ; $7645: $22
    inc hl                                        ; $7646: $23
    pop bc                                        ; $7647: $c1
    cp [hl]                                       ; $7648: $be
    ld [$5604], a                                 ; $7649: $ea $04 $56
    ld c, a                                       ; $764c: $4f
    or $a7                                        ; $764d: $f6 $a7
    ld a, [$750d]                                 ; $764f: $fa $0d $75
    call nz, $811b                                ; $7652: $c4 $1b $81
    ld l, $d5                                     ; $7655: $2e $d5
    add a                                         ; $7657: $87
    cpl                                           ; $7658: $2f
    sbc $b7                                       ; $7659: $de $b7
    ld a, d                                       ; $765b: $7a
    ld d, d                                       ; $765c: $52
    jr nz, jr_041_76db                            ; $765d: $20 $7c

    add [hl]                                      ; $765f: $86
    ld d, h                                       ; $7660: $54
    ret nc                                        ; $7661: $d0

    or $4d                                        ; $7662: $f6 $4d
    cp a                                          ; $7664: $bf
    ld [bc], a                                    ; $7665: $02
    ld l, l                                       ; $7666: $6d
    reti                                          ; $7667: $d9


    inc de                                        ; $7668: $13
    rrca                                          ; $7669: $0f
    cp d                                          ; $766a: $ba
    or h                                          ; $766b: $b4
    rst $38                                       ; $766c: $ff
    ld [$8fab], a                                 ; $766d: $ea $ab $8f
    and a                                         ; $7670: $a7
    rst $38                                       ; $7671: $ff
    sub [hl]                                      ; $7672: $96
    jp nc, Jump_000_1daf                          ; $7673: $d2 $af $1d

    inc hl                                        ; $7676: $23
    db $db                                        ; $7677: $db
    db $e3                                        ; $7678: $e3
    ld c, c                                       ; $7679: $49
    sub b                                         ; $767a: $90
    inc de                                        ; $767b: $13
    dec b                                         ; $767c: $05
    and $e9                                       ; $767d: $e6 $e9
    ld d, a                                       ; $767f: $57
    sbc [hl]                                      ; $7680: $9e
    inc hl                                        ; $7681: $23
    ld d, e                                       ; $7682: $53
    call c, Call_041_4a85                         ; $7683: $dc $85 $4a
    ld a, [hl+]                                   ; $7686: $2a
    ldh a, [$a8]                                  ; $7687: $f0 $a8
    ret                                           ; $7689: $c9


    ld [bc], a                                    ; $768a: $02
    dec bc                                        ; $768b: $0b
    or $55                                        ; $768c: $f6 $55
    daa                                           ; $768e: $27
    ld l, a                                       ; $768f: $6f
    ld [$4f95], sp                                ; $7690: $08 $95 $4f
    push af                                       ; $7693: $f5
    dec de                                        ; $7694: $1b

jr_041_7695:
    ld [$3788], a                                 ; $7695: $ea $88 $37
    add d                                         ; $7698: $82
    ld e, d                                       ; $7699: $5a
    dec hl                                        ; $769a: $2b
    dec e                                         ; $769b: $1d
    db $d3                                        ; $769c: $d3
    ld hl, sp-$4a                                 ; $769d: $f8 $b6
    pop de                                        ; $769f: $d1

jr_041_76a0:
    halt                                          ; $76a0: $76
    xor b                                         ; $76a1: $a8
    ld a, h                                       ; $76a2: $7c
    xor d                                         ; $76a3: $aa
    rst $18                                       ; $76a4: $df
    ld d, b                                       ; $76a5: $50
    ld b, a                                       ; $76a6: $47
    cp h                                          ; $76a7: $bc
    ld de, $52e8                                  ; $76a8: $11 $e8 $52
    ld [hl], a                                    ; $76ab: $77
    sbc b                                         ; $76ac: $98
    ld h, c                                       ; $76ad: $61
    cp d                                          ; $76ae: $ba
    jr nz, jr_041_7695                            ; $76af: $20 $e4

    sbc b                                         ; $76b1: $98
    pop hl                                        ; $76b2: $e1
    jp nc, $ab71                                  ; $76b3: $d2 $71 $ab

    ld [hl], l                                    ; $76b6: $75
    ld a, [hl-]                                   ; $76b7: $3a
    xor $20                                       ; $76b8: $ee $20
    push hl                                       ; $76ba: $e5
    rla                                           ; $76bb: $17
    jr jr_041_76a0                                ; $76bc: $18 $e2

    and [hl]                                      ; $76be: $a6
    ld b, d                                       ; $76bf: $42
    or b                                          ; $76c0: $b0
    xor a                                         ; $76c1: $af
    ld a, [hl-]                                   ; $76c2: $3a
    ld a, c                                       ; $76c3: $79
    db $e3                                        ; $76c4: $e3
    db $eb                                        ; $76c5: $eb
    ld d, a                                       ; $76c6: $57
    cp [hl]                                       ; $76c7: $be
    db $fc                                        ; $76c8: $fc
    rla                                           ; $76c9: $17
    or [hl]                                       ; $76ca: $b6
    cpl                                           ; $76cb: $2f
    ld l, [hl]                                    ; $76cc: $6e
    call z, Call_041_6a20                         ; $76cd: $cc $20 $6a
    ld d, d                                       ; $76d0: $52
    call $09e6                                    ; $76d1: $cd $e6 $09
    and e                                         ; $76d4: $a3
    ld e, d                                       ; $76d5: $5a
    ld h, $5e                                     ; $76d6: $26 $5e
    ld a, [hl-]                                   ; $76d8: $3a
    halt                                          ; $76d9: $76
    ld d, c                                       ; $76da: $51

jr_041_76db:
    cp a                                          ; $76db: $bf
    rst $30                                       ; $76dc: $f7
    rst $00                                       ; $76dd: $c7
    db $ed                                        ; $76de: $ed
    cpl                                           ; $76df: $2f
    dec b                                         ; $76e0: $05
    cp d                                          ; $76e1: $ba
    call nc, $337e                                ; $76e2: $d4 $7e $33
    ld [bc], a                                    ; $76e5: $02
    db $fd                                        ; $76e6: $fd
    ld a, [bc]                                    ; $76e7: $0a
    cp [hl]                                       ; $76e8: $be
    inc hl                                        ; $76e9: $23
    sub e                                         ; $76ea: $93
    jp nz, $13cf                                  ; $76eb: $c2 $cf $13

    scf                                           ; $76ee: $37
    ld a, e                                       ; $76ef: $7b
    add hl, sp                                    ; $76f0: $39
    sbc [hl]                                      ; $76f1: $9e
    xor b                                         ; $76f2: $a8
    rrca                                          ; $76f3: $0f
    sub l                                         ; $76f4: $95
    ld c, a                                       ; $76f5: $4f
    push af                                       ; $76f6: $f5
    dec de                                        ; $76f7: $1b
    ld [$3788], a                                 ; $76f8: $ea $88 $37
    ld [bc], a                                    ; $76fb: $02
    ld e, l                                       ; $76fc: $5d
    adc d                                         ; $76fd: $8a
    sbc h                                         ; $76fe: $9c
    rst $10                                       ; $76ff: $d7
    db $db                                        ; $7700: $db
    xor a                                         ; $7701: $af
    sbc [hl]                                      ; $7702: $9e
    cp $0b                                        ; $7703: $fe $0b
    ld e, a                                       ; $7705: $5f
    db $fc                                        ; $7706: $fc
    sbc a                                         ; $7707: $9f
    db $fd                                        ; $7708: $fd
    ld [c], a                                     ; $7709: $e2
    xor $79                                       ; $770a: $ee $79
    or d                                          ; $770c: $b2
    ccf                                           ; $770d: $3f
    push de                                       ; $770e: $d5
    ld l, a                                       ; $770f: $6f
    xor b                                         ; $7710: $a8
    inc hl                                        ; $7711: $23
    sbc $08                                       ; $7712: $de $08
    ld l, d                                       ; $7714: $6a
    xor l                                         ; $7715: $ad
    ld [hl], l                                    ; $7716: $75
    xor a                                         ; $7717: $af
    ei                                            ; $7718: $fb
    ld a, $b5                                     ; $7719: $3e $b5
    ccf                                           ; $771b: $3f
    push bc                                       ; $771c: $c5
    dec a                                         ; $771d: $3d
    ld b, e                                       ; $771e: $43
    sbc [hl]                                      ; $771f: $9e
    daa                                           ; $7720: $27
    ld l, [hl]                                    ; $7721: $6e
    add h                                         ; $7722: $84
    ld l, l                                       ; $7723: $6d
    and d                                         ; $7724: $a2
    ld l, $15                                     ; $7725: $2e $15
    or d                                          ; $7727: $b2
    ccf                                           ; $7728: $3f
    db $ed                                        ; $7729: $ed
    rst $38                                       ; $772a: $ff

jr_041_772b:
    add [hl]                                      ; $772b: $86
    ld a, [hl-]                                   ; $772c: $3a
    ld [c], a                                     ; $772d: $e2
    adc l                                         ; $772e: $8d
    jr nz, jr_041_773b                            ; $772f: $20 $0a

    sub a                                         ; $7731: $97
    ld [hl], $5f                                  ; $7732: $36 $5f
    ld hl, sp+$4b                                 ; $7734: $f8 $4b
    ld [hl], l                                    ; $7736: $75
    ld b, c                                       ; $7737: $41
    ld l, [hl]                                    ; $7738: $6e
    ld h, a                                       ; $7739: $67
    or c                                          ; $773a: $b1

jr_041_773b:
    pop af                                        ; $773b: $f1
    and d                                         ; $773c: $a2
    sub h                                         ; $773d: $94
    or c                                          ; $773e: $b1
    ld [hl], h                                    ; $773f: $74
    db $f4                                        ; $7740: $f4
    dec bc                                        ; $7741: $0b
    adc a                                         ; $7742: $8f
    and l                                         ; $7743: $a5
    cp d                                          ; $7744: $ba
    ld hl, sp+$3f                                 ; $7745: $f8 $3f
    push de                                       ; $7747: $d5
    adc e                                         ; $7748: $8b
    ld a, d                                       ; $7749: $7a
    sbc [hl]                                      ; $774a: $9e
    ld a, h                                       ; $774b: $7c
    inc e                                         ; $774c: $1c
    call z, Call_000_21bd                         ; $774d: $cc $bd $21
    ld d, h                                       ; $7750: $54
    ld a, $8e                                     ; $7751: $3e $8e
    jp c, $69f7                                   ; $7753: $da $f7 $69

    push de                                       ; $7756: $d5
    ld sp, hl                                     ; $7757: $f9

jr_041_7758:
    add hl, hl                                    ; $7758: $29
    db $ed                                        ; $7759: $ed
    ld d, a                                       ; $775a: $57
    dec e                                         ; $775b: $1d

jr_041_775c:
    ld d, d                                       ; $775c: $52
    inc d                                         ; $775d: $14
    cp $54                                        ; $775e: $fe $54
    cp a                                          ; $7760: $bf
    and c                                         ; $7761: $a1
    adc [hl]                                      ; $7762: $8e
    ld a, b                                       ; $7763: $78
    inc hl                                        ; $7764: $23
    ld [$0c5f], sp                                ; $7765: $08 $5f $0c
    and d                                         ; $7768: $a2
    ld h, b                                       ; $7769: $60
    push af                                       ; $776a: $f5
    and h                                         ; $776b: $a4
    and b                                         ; $776c: $a0
    ld e, d                                       ; $776d: $5a
    inc c                                         ; $776e: $0c
    ld e, c                                       ; $776f: $59
    xor [hl]                                      ; $7770: $ae
    add c                                         ; $7771: $81
    jr z, jr_041_775c                             ; $7772: $28 $e8

jr_041_7774:
    ld h, a                                       ; $7774: $67
    and e                                         ; $7775: $a3
    adc a                                         ; $7776: $8f
    xor a                                         ; $7777: $af
    sbc e                                         ; $7778: $9b
    xor d                                         ; $7779: $aa
    ld [bc], a                                    ; $777a: $02
    di                                            ; $777b: $f3
    call nz, $91f9                                ; $777c: $c4 $f9 $91
    sub e                                         ; $777f: $93
    add sp, $4f                                   ; $7780: $e8 $4f
    cp a                                          ; $7782: $bf
    ld l, a                                       ; $7783: $6f
    jr jr_041_7774                                ; $7784: $18 $ee

    db $e3                                        ; $7786: $e3
    inc a                                         ; $7787: $3c
    ld l, d                                       ; $7788: $6a
    call nz, $fe87                                ; $7789: $c4 $87 $fe
    halt                                          ; $778c: $76
    ld d, e                                       ; $778d: $53

Call_041_778e:
    ld a, $ce                                     ; $778e: $3e $ce
    adc a                                         ; $7790: $8f
    inc l                                         ; $7791: $2c
    jp $bd06                                      ; $7792: $c3 $06 $bd


    ld e, $41                                     ; $7795: $1e $41
    add hl, hl                                    ; $7797: $29
    jr nc, jr_041_7758                            ; $7798: $30 $be

    jr z, jr_041_772b                             ; $779a: $28 $8f

    ccf                                           ; $779c: $3f
    jp z, $afd3                                   ; $779d: $ca $d3 $af

    or l                                          ; $77a0: $b5
    rst $18                                       ; $77a1: $df
    adc h                                         ; $77a2: $8c
    ld b, b                                       ; $77a3: $40
    call $85d4                                    ; $77a4: $cd $d4 $85
    add hl, sp                                    ; $77a7: $39
    ld a, a                                       ; $77a8: $7f
    cp l                                          ; $77a9: $bd
    sub c                                         ; $77aa: $91
    sub c                                         ; $77ab: $91
    inc d                                         ; $77ac: $14
    ld e, h                                       ; $77ad: $5c
    ld c, [hl]                                    ; $77ae: $4e
    ld [c], a                                     ; $77af: $e2
    or $97                                        ; $77b0: $f6 $97
    add d                                         ; $77b2: $82
    ld e, d                                       ; $77b3: $5a
    dec hl                                        ; $77b4: $2b
    ld l, l                                       ; $77b5: $6d
    rst $28                                       ; $77b6: $ef
    inc l                                         ; $77b7: $2c
    ld [hl], $5e                                  ; $77b8: $36 $5e
    sub h                                         ; $77ba: $94
    ld [hl-], a                                   ; $77bb: $32
    sub [hl]                                      ; $77bc: $96
    adc [hl]                                      ; $77bd: $8e
    ld a, [hl]                                    ; $77be: $7e
    pop hl                                        ; $77bf: $e1
    or c                                          ; $77c0: $b1
    ld d, h                                       ; $77c1: $54
    rla                                           ; $77c2: $17
    rst $38                                       ; $77c3: $ff
    and a                                         ; $77c4: $a7
    ld a, d                                       ; $77c5: $7a
    ld d, c                                       ; $77c6: $51
    rst $08                                       ; $77c7: $cf
    sub e                                         ; $77c8: $93
    rst $08                                       ; $77c9: $cf
    ld d, l                                       ; $77ca: $55
    set 3, e                                      ; $77cb: $cb $db
    dec de                                        ; $77cd: $1b
    ld [c], a                                     ; $77ce: $e2
    and [hl]                                      ; $77cf: $a6
    ld b, d                                       ; $77d0: $42
    or b                                          ; $77d1: $b0
    xor a                                         ; $77d2: $af
    ld a, [hl-]                                   ; $77d3: $3a
    ld a, c                                       ; $77d4: $79
    ld b, e                                       ; $77d5: $43
    or $a7                                        ; $77d6: $f6 $a7
    ld a, [$750d]                                 ; $77d8: $fa $0d $75
    call nz, Call_041_411b                        ; $77db: $c4 $1b $41
    sbc h                                         ; $77de: $9c
    rra                                           ; $77df: $1f

jr_041_77e0:
    xor c                                         ; $77e0: $a9
    ld l, $fe                                     ; $77e1: $2e $fe
    adc a                                         ; $77e3: $8f
    sbc e                                         ; $77e4: $9b
    cp l                                          ; $77e5: $bd
    inc e                                         ; $77e6: $1c
    ld c, a                                       ; $77e7: $4f
    sbc a                                         ; $77e8: $9f
    ld d, [hl]                                    ; $77e9: $56
    sbc l                                         ; $77ea: $9d
    sbc a                                         ; $77eb: $9f
    jp nc, $057e                                  ; $77ec: $d2 $7e $05

    sbc [hl]                                      ; $77ef: $9e
    cp $83                                        ; $77f0: $fe $83
    cp d                                          ; $77f2: $ba
    ld a, h                                       ; $77f3: $7c
    jp c, $f57f                                   ; $77f4: $da $7f $f5

    push de                                       ; $77f7: $d5
    and a                                         ; $77f8: $a7
    xor $89                                       ; $77f9: $ee $89
    add e                                         ; $77fb: $83
    ld l, $27                                     ; $77fc: $2e $27
    pop de                                        ; $77fe: $d1
    sbc a                                         ; $77ff: $9f
    ld a, [hl]                                    ; $7800: $7e
    rst $18                                       ; $7801: $df
    jr nc, jr_041_77e0                            ; $7802: $30 $dc

    rst $30                                       ; $7804: $f7
    pop af                                        ; $7805: $f1
    db $f4                                        ; $7806: $f4
    xor b                                         ; $7807: $a8
    ld de, $312a                                  ; $7808: $11 $2a $31
    inc l                                         ; $780b: $2c
    ld l, a                                       ; $780c: $6f
    inc a                                         ; $780d: $3c
    add hl, sp                                    ; $780e: $39
    adc c                                         ; $780f: $89
    and e                                         ; $7810: $a3
    sub a                                         ; $7811: $97
    ld [hl-], a                                   ; $7812: $32
    ld [hl-], a                                   ; $7813: $32
    ld h, c                                       ; $7814: $61
    ld a, e                                       ; $7815: $7b
    and $67                                       ; $7816: $e6 $67
    db $e4                                        ; $7818: $e4
    inc h                                         ; $7819: $24
    push de                                       ; $781a: $d5
    set 0, c                                      ; $781b: $cb $c1
    ld a, $af                                     ; $781d: $3e $af
    rst $10                                       ; $781f: $d7
    ld a, a                                       ; $7820: $7f
    pop hl                                        ; $7821: $e1
    rla                                           ; $7822: $17
    ld [c], a                                     ; $7823: $e2
    rst $20                                       ; $7824: $e7
    sub a                                         ; $7825: $97
    push bc                                       ; $7826: $c5
    add $3b                                       ; $7827: $c6 $3b
    and d                                         ; $7829: $a2
    adc [hl]                                      ; $782a: $8e
    ccf                                           ; $782b: $3f
    dec de                                        ; $782c: $1b
    ld [hl], c                                    ; $782d: $71
    inc hl                                        ; $782e: $23
    ld l, h                                       ; $782f: $6c
    ld d, e                                       ; $7830: $53
    db $fd                                        ; $7831: $fd
    add [hl]                                      ; $7832: $86
    ld a, [hl-]                                   ; $7833: $3a
    ld [c], a                                     ; $7834: $e2
    adc l                                         ; $7835: $8d
    ld e, h                                       ; $7836: $5c
    cp a                                          ; $7837: $bf
    ld [bc], a                                    ; $7838: $02
    sbc [hl]                                      ; $7839: $9e
    inc hl                                        ; $783a: $23
    ld d, e                                       ; $783b: $53
    call c, Call_041_4a85                         ; $783c: $dc $85 $4a
    ld a, [hl+]                                   ; $783f: $2a
    ldh a, [$a8]                                  ; $7840: $f0 $a8
    ret                                           ; $7842: $c9


    ld [bc], a                                    ; $7843: $02
    dec bc                                        ; $7844: $0b
    or $55                                        ; $7845: $f6 $55
    daa                                           ; $7847: $27
    ld l, a                                       ; $7848: $6f
    ld [$4f95], sp                                ; $7849: $08 $95 $4f
    push af                                       ; $784c: $f5
    dec de                                        ; $784d: $1b
    ld [$3788], a                                 ; $784e: $ea $88 $37
    add d                                         ; $7851: $82
    ld e, d                                       ; $7852: $5a
    dec hl                                        ; $7853: $2b
    ld [hl], l                                    ; $7854: $75
    and [hl]                                      ; $7855: $a6
    ld c, a                                       ; $7856: $4f
    dec de                                        ; $7857: $1b
    pop hl                                        ; $7858: $e1
    bit 4, d                                      ; $7859: $cb $62
    ret nc                                        ; $785b: $d0

    ld h, $ea                                     ; $785c: $26 $ea
    ld [hl+], a                                   ; $785e: $22
    inc hl                                        ; $785f: $23
    ld [hl], c                                    ; $7860: $71
    inc hl                                        ; $7861: $23
    db $fc                                        ; $7862: $fc
    jp c, Jump_000_21bd                           ; $7863: $da $bd $21

    ld c, h                                       ; $7866: $4c
    sbc c                                         ; $7867: $99
    ccf                                           ; $7868: $3f
    ei                                            ; $7869: $fb
    db $e3                                        ; $786a: $e3
    ld sp, hl                                     ; $786b: $f9
    push hl                                       ; $786c: $e5
    and e                                         ; $786d: $a3
    ld l, $6d                                     ; $786e: $2e $6d
    reti                                          ; $7870: $d9


    ld a, c                                       ; $7871: $79
    ld b, a                                       ; $7872: $47
    call nc, $f4d8                                ; $7873: $d4 $d8 $f4
    dec hl                                        ; $7876: $2b
    ld [hl], l                                    ; $7877: $75
    ld b, [hl]                                    ; $7878: $46
    ld [c], a                                     ; $7879: $e2
    sub b                                         ; $787a: $90
    db $ed                                        ; $787b: $ed
    pop hl                                        ; $787c: $e1
    ld a, a                                       ; $787d: $7f
    sub c                                         ; $787e: $91
    ret                                           ; $787f: $c9


    adc e                                         ; $7880: $8b
    dec de                                        ; $7881: $1b
    ei                                            ; $7882: $fb
    sbc h                                         ; $7883: $9c
    inc d                                         ; $7884: $14
    ld l, b                                       ; $7885: $68
    ld a, [c]                                     ; $7886: $f2
    inc a                                         ; $7887: $3c
    db $fd                                        ; $7888: $fd
    ld a, [bc]                                    ; $7889: $0a
    ld l, l                                       ; $788a: $6d
    ld hl, sp-$55                                 ; $788b: $f8 $ab
    ld a, $be                                     ; $788d: $3e $be
    ld c, b                                       ; $788f: $48
    pop bc                                        ; $7890: $c1
    and l                                         ; $7891: $a5
    ld a, [$050d]                                 ; $7892: $fa $0d $05
    and $d1                                       ; $7895: $e6 $d1
    and l                                         ; $7897: $a5
    ldh a, [$5f]                                  ; $7898: $f0 $5f
    or $08                                        ; $789a: $f6 $08
    cp a                                          ; $789c: $bf
    ld c, h                                       ; $789d: $4c
    call nc, Call_041_42a7                        ; $789e: $d4 $a7 $42
    call $9e15                                    ; $78a1: $cd $15 $9e
    rla                                           ; $78a4: $17
    sub d                                         ; $78a5: $92
    adc $46                                       ; $78a6: $ce $46
    xor b                                         ; $78a8: $a8
    ld a, h                                       ; $78a9: $7c
    call c, $db08                                 ; $78aa: $dc $08 $db
    ld d, h                                       ; $78ad: $54
    cp a                                          ; $78ae: $bf
    and c                                         ; $78af: $a1
    adc [hl]                                      ; $78b0: $8e
    ld a, b                                       ; $78b1: $78
    inc hl                                        ; $78b2: $23
    ret nc                                        ; $78b3: $d0

    and l                                         ; $78b4: $a5
    cp d                                          ; $78b5: $ba
    inc d                                         ; $78b6: $14
    ld d, h                                       ; $78b7: $54
    ld a, d                                       ; $78b8: $7a
    ei                                            ; $78b9: $fb
    inc c                                         ; $78ba: $0c
    ld c, c                                       ; $78bb: $49
    sbc $d4                                       ; $78bc: $de $d4
    ld e, h                                       ; $78be: $5c
    ld bc, $ef6d                                  ; $78bf: $01 $6d $ef
    inc l                                         ; $78c2: $2c
    ld [hl], $5e                                  ; $78c3: $36 $5e
    sub h                                         ; $78c5: $94
    ld [hl-], a                                   ; $78c6: $32
    sub [hl]                                      ; $78c7: $96
    adc [hl]                                      ; $78c8: $8e
    ld a, [hl]                                    ; $78c9: $7e
    pop hl                                        ; $78ca: $e1
    or c                                          ; $78cb: $b1
    sub h                                         ; $78cc: $94
    ld e, a                                       ; $78cd: $5f
    inc c                                         ; $78ce: $0c
    ld a, d                                       ; $78cf: $7a
    dec a                                         ; $78d0: $3d
    ld [c], a                                     ; $78d1: $e2
    and [hl]                                      ; $78d2: $a6
    ld a, h                                       ; $78d3: $7c
    cp h                                          ; $78d4: $bc
    ld l, a                                       ; $78d5: $6f
    add sp, $57                                   ; $78d6: $e8 $57
    ld l, l                                       ; $78d8: $6d
    pop de                                        ; $78d9: $d1
    scf                                           ; $78da: $37
    push af                                       ; $78db: $f5
    add hl, sp                                    ; $78dc: $39
    adc c                                         ; $78dd: $89
    cp $f4                                        ; $78de: $fe $f4
    ei                                            ; $78e0: $fb
    add [hl]                                      ; $78e1: $86
    pop hl                                        ; $78e2: $e1
    cp [hl]                                       ; $78e3: $be
    adc a                                         ; $78e4: $8f
    rst $20                                       ; $78e5: $e7
    and l                                         ; $78e6: $a5
    adc h                                         ; $78e7: $8c
    ld c, h                                       ; $78e8: $4c
    or $e9                                        ; $78e9: $f6 $e9
    db $ed                                        ; $78eb: $ed
    ld d, d                                       ; $78ec: $52
    ld l, b                                       ; $78ed: $68
    ld a, h                                       ; $78ee: $7c
    add sp, -$11                                  ; $78ef: $e8 $ef
    ld [hl], d                                    ; $78f1: $72
    ld e, a                                       ; $78f2: $5f
    ld l, $6f                                     ; $78f3: $2e $6f
    jp c, Jump_000_1054                           ; $78f5: $da $54 $10

    sbc [hl]                                      ; $78f8: $9e
    ld a, [hl]                                    ; $78f9: $7e
    dec b                                         ; $78fa: $05
    cp [hl]                                       ; $78fb: $be
    inc hl                                        ; $78fc: $23
    inc de                                        ; $78fd: $13
    rra                                           ; $78fe: $1f
    ld a, d                                       ; $78ff: $7a
    ld e, c                                       ; $7900: $59
    ld h, b                                       ; $7901: $60
    add hl, hl                                    ; $7902: $29
    ld l, [hl]                                    ; $7903: $6e
    ld d, $3b                                     ; $7904: $16 $3b
    ld b, e                                       ; $7906: $43
    call c, $0854                                 ; $7907: $dc $54 $08
    or $55                                        ; $790a: $f6 $55
    daa                                           ; $790c: $27
    ld l, a                                       ; $790d: $6f
    ld [$4f95], sp                                ; $790e: $08 $95 $4f
    push af                                       ; $7911: $f5
    dec de                                        ; $7912: $1b
    ld [$3788], a                                 ; $7913: $ea $88 $37
    add d                                         ; $7916: $82
    ld a, $be                                     ; $7917: $3e $be
    ld [hl], d                                    ; $7919: $72
    ld e, [hl]                                    ; $791a: $5e
    ld l, a                                       ; $791b: $6f
    cp a                                          ; $791c: $bf
    ld [bc], a                                    ; $791d: $02
    ld [hl], l                                    ; $791e: $75
    add $aa                                       ; $791f: $c6 $aa
    rst $18                                       ; $7921: $df
    dec d                                         ; $7922: $15
    add h                                         ; $7923: $84
    ld de, $b8be                                  ; $7924: $11 $be $b8
    sub c                                         ; $7927: $91
    ld [hl], d                                    ; $7928: $72
    jp c, $183e                                   ; $7929: $da $3e $18

    ld l, $ea                                     ; $792c: $2e $ea
    ld [c], a                                     ; $792e: $e2
    ld b, [hl]                                    ; $792f: $46
    ld a, [bc]                                    ; $7930: $0a
    db $dd                                        ; $7931: $dd
    db $fc                                        ; $7932: $fc
    add [hl]                                      ; $7933: $86
    call c, $fb4e                                 ; $7934: $dc $4e $fb
    cpl                                           ; $7937: $2f
    db $f4                                        ; $7938: $f4
    scf                                           ; $7939: $37
    ld a, [c]                                     ; $793a: $f2
    sbc d                                         ; $793b: $9a
    halt                                          ; $793c: $76
    ld h, e                                       ; $793d: $63
    ld a, [c]                                     ; $793e: $f2
    inc a                                         ; $793f: $3c
    ld d, c                                       ; $7940: $51
    rla                                           ; $7941: $17
    rst $08                                       ; $7942: $cf
    ld de, $a9b6                                  ; $7943: $11 $b6 $a9
    ld a, [hl]                                    ; $7946: $7e
    ld b, e                                       ; $7947: $43
    dec e                                         ; $7948: $1d
    pop af                                        ; $7949: $f1
    ld b, [hl]                                    ; $794a: $46
    ld c, [hl]                                    ; $794b: $4e
    rla                                           ; $794c: $17
    ld e, a                                       ; $794d: $5f
    cp b                                          ; $794e: $b8
    ld de, $81f5                                  ; $794f: $11 $f5 $81
    ld a, [hl-]                                   ; $7952: $3a
    ld [c], a                                     ; $7953: $e2
    adc l                                         ; $7954: $8d
    ld b, b                                       ; $7955: $40
    sub a                                         ; $7956: $97
    ld [$3ea3], a                                 ; $7957: $ea $a3 $3e
    ld d, h                                       ; $795a: $54
    or d                                          ; $795b: $b2
    adc h                                         ; $795c: $8c
    ld b, a                                       ; $795d: $47
    call nc, Call_041_5185                        ; $795e: $d4 $85 $51
    dec l                                         ; $7961: $2d
    sub e                                         ; $7962: $93
    ld a, [de]                                    ; $7963: $1a
    add hl, hl                                    ; $7964: $29
    ld l, [hl]                                    ; $7965: $6e
    xor d                                         ; $7966: $aa

Jump_041_7967:
    push hl                                       ; $7967: $e5
    xor l                                         ; $7968: $ad
    ld c, h                                       ; $7969: $4c
    call nc, $fb6b                                ; $796a: $d4 $6b $fb
    ld d, d                                       ; $796d: $52
    call c, $bd7b                                 ; $796e: $dc $7b $bd
    cp a                                          ; $7971: $bf
    xor a                                         ; $7972: $af
    ld e, a                                       ; $7973: $5f
    ld bc, $fe9e                                  ; $7974: $01 $9e $fe
    set 6, [hl]                                   ; $7977: $cb $f6
    ldh a, [$7f]                                  ; $7979: $f0 $7f
    ld d, $43                                     ; $797b: $16 $43
    sbc c                                         ; $797d: $99
    sbc h                                         ; $797e: $9c
    ld h, h                                       ; $797f: $64
    ld sp, $3e14                                  ; $7980: $31 $14 $3e
    sbc [hl]                                      ; $7983: $9e
    ld e, d                                       ; $7984: $5a
    ld l, c                                       ; $7985: $69
    push de                                       ; $7986: $d5
    ld sp, hl                                     ; $7987: $f9
    add hl, hl                                    ; $7988: $29
    db $ed                                        ; $7989: $ed
    ld d, a                                       ; $798a: $57
    ld [hl], l                                    ; $798b: $75
    ld d, b                                       ; $798c: $50
    ld a, [bc]                                    ; $798d: $0a
    sub l                                         ; $798e: $95
    jp hl                                         ; $798f: $e9


    db $d3                                        ; $7990: $d3
    ld [hl], d                                    ; $7991: $72
    ld a, [bc]                                    ; $7992: $0a
    ccf                                           ; $7993: $3f
    ld c, a                                       ; $7994: $4f
    adc h                                         ; $7995: $8c
    ld [$479f], a                                 ; $7996: $ea $9f $47
    sub a                                         ; $7999: $97
    ld e, c                                       ; $799a: $59
    ld d, $6a                                     ; $799b: $16 $6a
    adc b                                         ; $799d: $88
    rrca                                          ; $799e: $0f
    db $fd                                        ; $799f: $fd
    db $ed                                        ; $79a0: $ed
    xor b                                         ; $79a1: $a8
    ld c, h                                       ; $79a2: $4c
    ld a, [bc]                                    ; $79a3: $0a
    ld a, a                                       ; $79a4: $7f
    cp h                                          ; $79a5: $bc
    rst $28                                       ; $79a6: $ef
    jr nz, jr_041_7a13                            ; $79a7: $20 $6a

    ld b, d                                       ; $79a9: $42
    ld h, l                                       ; $79aa: $65
    ld d, d                                       ; $79ab: $52
    sbc h                                         ; $79ac: $9c
    rra                                           ; $79ad: $1f
    ld b, [hl]                                    ; $79ae: $46
    sbc h                                         ; $79af: $9c
    ld a, $b5                                     ; $79b0: $3e $b5
    daa                                           ; $79b2: $27
    dec bc                                        ; $79b3: $0b
    xor h                                         ; $79b4: $ac
    sbc h                                         ; $79b5: $9c
    ld c, h                                       ; $79b6: $4c
    add $eb                                       ; $79b7: $c6 $eb
    add l                                         ; $79b9: $85
    pop af                                        ; $79ba: $f1
    add h                                         ; $79bb: $84
    jp z, $cec7                                   ; $79bc: $ca $c7 $ce

    ld c, l                                       ; $79bf: $4d
    or l                                          ; $79c0: $b5
    ld b, b                                       ; $79c1: $40
    jp z, $8167                                   ; $79c2: $ca $67 $81

    push bc                                       ; $79c5: $c5
    ld sp, hl                                     ; $79c6: $f9
    cpl                                           ; $79c7: $2f
    ld l, d                                       ; $79c8: $6a
    ld c, b                                       ; $79c9: $48
    sub h                                         ; $79ca: $94
    add d                                         ; $79cb: $82
    ret c                                         ; $79cc: $d8

    dec l                                         ; $79cd: $2d
    ld h, e                                       ; $79ce: $63
    db $fc                                        ; $79cf: $fc
    or [hl]                                       ; $79d0: $b6
    and a                                         ; $79d1: $a7
    ld c, a                                       ; $79d2: $4f
    dec de                                        ; $79d3: $1b

jr_041_79d4:
    sub c                                         ; $79d4: $91
    sub c                                         ; $79d5: $91
    inc d                                         ; $79d6: $14
    ld a, [hl]                                    ; $79d7: $7e
    inc de                                        ; $79d8: $13
    jp z, $c867                                   ; $79d9: $ca $67 $c8

    ld c, c                                       ; $79dc: $49
    db $f4                                        ; $79dd: $f4
    and a                                         ; $79de: $a7
    rst $18                                       ; $79df: $df
    scf                                           ; $79e0: $37
    inc c                                         ; $79e1: $0c
    rst $30                                       ; $79e2: $f7
    cp d                                          ; $79e3: $ba
    inc l                                         ; $79e4: $2c
    or b                                          ; $79e5: $b0
    ld a, b                                       ; $79e6: $78
    sbc a                                         ; $79e7: $9f
    inc e                                         ; $79e8: $1c
    ld b, e                                       ; $79e9: $43
    cp a                                          ; $79ea: $bf
    ld [bc], a                                    ; $79eb: $02
    xor l                                         ; $79ec: $ad
    ld b, c                                       ; $79ed: $41
    and b                                         ; $79ee: $a0
    ld c, e                                       ; $79ef: $4b
    db $dd                                        ; $79f0: $dd
    db $eb                                        ; $79f1: $eb
    ld e, [hl]                                    ; $79f2: $5e
    sub a                                         ; $79f3: $97
    db $db                                        ; $79f4: $db
    pop de                                        ; $79f5: $d1
    ld l, [hl]                                    ; $79f6: $6e
    call c, $46a4                                 ; $79f7: $dc $a4 $46
    db $f4                                        ; $79fa: $f4
    ret c                                         ; $79fb: $d8

    ld a, e                                       ; $79fc: $7b
    ld [c], a                                     ; $79fd: $e2
    ld b, e                                       ; $79fe: $43
    ld e, a                                       ; $79ff: $5f
    call nc, Call_041_5144                        ; $7a00: $d4 $44 $51
    ei                                            ; $7a03: $fb
    inc l                                         ; $7a04: $2c
    db $e3                                        ; $7a05: $e3
    and [hl]                                      ; $7a06: $a6
    rst $28                                       ; $7a07: $ef
    ei                                            ; $7a08: $fb
    cp h                                          ; $7a09: $bc
    di                                            ; $7a0a: $f3
    ld d, e                                       ; $7a0b: $53
    jp c, Jump_041_55a7                           ; $7a0c: $da $a7 $55

    add l                                         ; $7a0f: $85
    ld d, d                                       ; $7a10: $52
    ld h, $e4                                     ; $7a11: $26 $e4

jr_041_7a13:
    sbc b                                         ; $7a13: $98
    pop hl                                        ; $7a14: $e1
    or d                                          ; $7a15: $b2
    ld c, a                                       ; $7a16: $4f
    rrca                                          ; $7a17: $0f
    ld a, e                                       ; $7a18: $7b
    xor e                                         ; $7a19: $ab
    ld l, $ea                                     ; $7a1a: $2e $ea
    db $e3                                        ; $7a1c: $e3
    ld b, e                                       ; $7a1d: $43
    ld d, c                                       ; $7a1e: $51
    ld hl, sp+$53                                 ; $7a1f: $f8 $53
    db $fd                                        ; $7a21: $fd
    add [hl]                                      ; $7a22: $86
    ld a, [hl-]                                   ; $7a23: $3a
    ld [c], a                                     ; $7a24: $e2
    adc l                                         ; $7a25: $8d
    and b                                         ; $7a26: $a0
    ld e, a                                       ; $7a27: $5f
    ld bc, $ef6d                                  ; $7a28: $01 $6d $ef
    inc l                                         ; $7a2b: $2c
    ld b, a                                       ; $7a2c: $47
    ld h, d                                       ; $7a2d: $62
    rst $28                                       ; $7a2e: $ef
    sub e                                         ; $7a2f: $93
    adc c                                         ; $7a30: $89
    jp nz, Jump_041_62ce                          ; $7a31: $c2 $ce $62

    ld d, a                                       ; $7a34: $57
    ld c, l                                       ; $7a35: $4d
    ld e, [hl]                                    ; $7a36: $5e
    ld h, h                                       ; $7a37: $64
    ld [c], a                                     ; $7a38: $e2
    rst $38                                       ; $7a39: $ff
    jr c, jr_041_79d4                             ; $7a3a: $38 $98

    ld a, e                                       ; $7a3c: $7b
    sbc [hl]                                      ; $7a3d: $9e
    sbc h                                         ; $7a3e: $9c
    ld b, h                                       ; $7a3f: $44
    ld a, a                                       ; $7a40: $7f
    ld a, [$c37d]                                 ; $7a41: $fa $7d $c3
    ld [hl], b                                    ; $7a44: $70
    ld e, a                                       ; $7a45: $5f
    ld l, e                                       ; $7a46: $6b
    dec b                                         ; $7a47: $05
    cp [hl]                                       ; $7a48: $be
    push af                                       ; $7a49: $f5
    jp hl                                         ; $7a4a: $e9


    ld [hl], d                                    ; $7a4b: $72
    dec sp                                        ; $7a4c: $3b
    res 2, c                                      ; $7a4d: $cb $91
    ret c                                         ; $7a4f: $d8

    ei                                            ; $7a50: $fb
    ld h, h                                       ; $7a51: $64
    ld a, [$0fbe]                                 ; $7a52: $fa $be $0f
    push af                                       ; $7a55: $f5
    ld d, a                                       ; $7a56: $57
    cp d                                          ; $7a57: $ba
    sub h                                         ; $7a58: $94
    ld a, [$f174]                                 ; $7a59: $fa $74 $f1
    ld c, a                                       ; $7a5c: $4f
    inc e                                         ; $7a5d: $1c
    call z, Call_041_4f3d                         ; $7a5e: $cc $3d $4f
    sbc a                                         ; $7a61: $9f
    or $3f                                        ; $7a62: $f6 $3f
    or a                                          ; $7a64: $b7
    or e                                          ; $7a65: $b3
    ld c, a                                       ; $7a66: $4f
    ld l, a                                       ; $7a67: $6f
    inc de                                        ; $7a68: $13
    db $ed                                        ; $7a69: $ed
    ld l, b                                       ; $7a6a: $68
    pop hl                                        ; $7a6b: $e1
    adc c                                         ; $7a6c: $89
    adc h                                         ; $7a6d: $8c
    call nz, $d479                                ; $7a6e: $c4 $79 $d4
    add sp, -$2d                                  ; $7a71: $e8 $d3
    xor d                                         ; $7a73: $aa
    di                                            ; $7a74: $f3
    ld d, e                                       ; $7a75: $53
    ld e, d                                       ; $7a76: $5a
    ld [hl], e                                    ; $7a77: $73
    dec b                                         ; $7a78: $05
    ld l, l                                       ; $7a79: $6d
    ld c, a                                       ; $7a7a: $4f
    ld h, h                                       ; $7a7b: $64
    inc h                                         ; $7a7c: $24
    ld c, $d9                                     ; $7a7d: $0e $d9
    ld e, $fe                                     ; $7a7f: $1e $fe
    jp hl                                         ; $7a81: $e9


    ld d, e                                       ; $7a82: $53
    ld h, a                                       ; $7a83: $67
    inc h                                         ; $7a84: $24
    xor a                                         ; $7a85: $af
    ld d, b                                       ; $7a86: $50
    jp z, $f2e8                                   ; $7a87: $ca $e8 $f2

    cp e                                          ; $7a8a: $bb
    add d                                         ; $7a8b: $82
    ld c, h                                       ; $7a8c: $4c
    sbc a                                         ; $7a8d: $9f
    sub $87                                       ; $7a8e: $d6 $87
    ld b, h                                       ; $7a90: $44
    sub [hl]                                      ; $7a91: $96
    ld h, c                                       ; $7a92: $61
    add e                                         ; $7a93: $83
    ld e, [hl]                                    ; $7a94: $5e
    adc a                                         ; $7a95: $8f
    and b                                         ; $7a96: $a0
    inc d                                         ; $7a97: $14
    jr jr_041_7b04                                ; $7a98: $18 $6a

    and l                                         ; $7a9a: $a5
    call $82b1                                    ; $7a9b: $cd $b1 $82
    db $ec                                        ; $7a9e: $ec
    ld c, c                                       ; $7a9f: $49
    pop hl                                        ; $7aa0: $e1
    rst $08                                       ; $7aa1: $cf
    add [hl]                                      ; $7aa2: $86
    and [hl]                                      ; $7aa3: $a6
    ld b, c                                       ; $7aa4: $41
    call nc, $87c4                                ; $7aa5: $d4 $c4 $87
    cp $76                                        ; $7aa8: $fe $76
    ld a, [hl]                                    ; $7aaa: $7e
    and h                                         ; $7aab: $a4
    or l                                          ; $7aac: $b5
    rst $10                                       ; $7aad: $d7
    db $eb                                        ; $7aae: $eb
    ld e, a                                       ; $7aaf: $5f
    and [hl]                                      ; $7ab0: $a6
    rst $28                                       ; $7ab1: $ef
    ei                                            ; $7ab2: $fb
    dec d                                         ; $7ab3: $15
    cp [hl]                                       ; $7ab4: $be
    inc hl                                        ; $7ab5: $23
    sub e                                         ; $7ab6: $93
    jp nz, $13cf                                  ; $7ab7: $c2 $cf $13

    scf                                           ; $7aba: $37
    ld a, e                                       ; $7abb: $7b
    add hl, sp                                    ; $7abc: $39
    sbc [hl]                                      ; $7abd: $9e
    xor b                                         ; $7abe: $a8
    rst $18                                       ; $7abf: $df
    ei                                            ; $7ac0: $fb
    db $d3                                        ; $7ac1: $d3
    cp $6f                                        ; $7ac2: $fe $6f
    xor b                                         ; $7ac4: $a8
    inc hl                                        ; $7ac5: $23
    sbc $08                                       ; $7ac6: $de $08
    and d                                         ; $7ac8: $a2
    ld [hl], b                                    ; $7ac9: $70
    ld l, c                                       ; $7aca: $69
    di                                            ; $7acb: $f3
    add l                                         ; $7acc: $85
    cp a                                          ; $7acd: $bf
    ld d, h                                       ; $7ace: $54
    rst $10                                       ; $7acf: $d7
    rst $00                                       ; $7ad0: $c7
    ld d, a                                       ; $7ad1: $57
    adc $eb                                       ; $7ad2: $ce $eb
    db $ed                                        ; $7ad4: $ed
    db $d3                                        ; $7ad5: $d3
    or $ce                                        ; $7ad6: $f6 $ce
    ld h, d                                       ; $7ad8: $62
    db $e3                                        ; $7ad9: $e3
    ld b, l                                       ; $7ada: $45
    add hl, hl                                    ; $7adb: $29
    ld h, e                                       ; $7adc: $63
    jp hl                                         ; $7add: $e9


    add sp, $17                                   ; $7ade: $e8 $17
    ld e, $4b                                     ; $7ae0: $1e $4b
    ld [hl], l                                    ; $7ae2: $75
    pop af                                        ; $7ae3: $f1
    ld a, a                                       ; $7ae4: $7f
    xor d                                         ; $7ae5: $aa
    rla                                           ; $7ae6: $17
    push af                                       ; $7ae7: $f5
    inc a                                         ; $7ae8: $3c
    ld sp, hl                                     ; $7ae9: $f9
    cp l                                          ; $7aea: $bd
    ccf                                           ; $7aeb: $3f
    halt                                          ; $7aec: $76
    ld c, $e6                                     ; $7aed: $0e $e6
    ld a, $ea                                     ; $7aef: $3e $ea
    ld b, d                                       ; $7af1: $42
    push hl                                       ; $7af2: $e5
    db $e3                                        ; $7af3: $e3
    ld b, [hl]                                    ; $7af4: $46
    ret c                                         ; $7af5: $d8

    and [hl]                                      ; $7af6: $a6
    ld a, [$750d]                                 ; $7af7: $fa $0d $75
    call nz, Call_041_411b                        ; $7afa: $c4 $1b $41
    sbc a                                         ; $7afd: $9f
    ld d, [hl]                                    ; $7afe: $56
    sbc l                                         ; $7aff: $9d
    sbc a                                         ; $7b00: $9f
    jp nc, Jump_041_753e                          ; $7b01: $d2 $3e $75

jr_041_7b04:
    add a                                         ; $7b04: $87
    dec c                                         ; $7b05: $0d
    add l                                         ; $7b06: $85
    cpl                                           ; $7b07: $2f
    ld a, a                                       ; $7b08: $7f
    sub h                                         ; $7b09: $94
    rst $18                                       ; $7b0a: $df
    xor d                                         ; $7b0b: $aa
    xor e                                         ; $7b0c: $ab
    or l                                          ; $7b0d: $b5
    ld [bc], a                                    ; $7b0e: $02
    cp [hl]                                       ; $7b0f: $be
    db $fc                                        ; $7b10: $fc
    sub a                                         ; $7b11: $97
    ld h, a                                       ; $7b12: $67
    add [hl]                                      ; $7b13: $86
    ldh a, [$e4]                                  ; $7b14: $f0 $e4
    rst $30                                       ; $7b16: $f7
    or $78                                        ; $7b17: $f6 $78
    cp d                                          ; $7b19: $ba
    ccf                                           ; $7b1a: $3f
    ld [$dad2], a                                 ; $7b1b: $ea $d2 $da

jr_041_7b1e:
    db $eb                                        ; $7b1e: $eb
    push af                                       ; $7b1f: $f5
    cpl                                           ; $7b20: $2f
    or e                                          ; $7b21: $b3
    ld b, a                                       ; $7b22: $47
    cp e                                          ; $7b23: $bb
    rst $28                                       ; $7b24: $ef
    db $d3                                        ; $7b25: $d3
    ld de, $841c                                  ; $7b26: $11 $1c $84
    ld d, c                                       ; $7b29: $51
    ld b, c                                       ; $7b2a: $41
    jr jr_041_7b1e                                ; $7b2b: $18 $f1

    ld c, a                                       ; $7b2d: $4f
    ret z                                         ; $7b2e: $c8

    dec hl                                        ; $7b2f: $2b
    inc a                                         ; $7b30: $3c
    xor c                                         ; $7b31: $a9
    ld a, e                                       ; $7b32: $7b
    db $dd                                        ; $7b33: $dd
    rlca                                          ; $7b34: $07
    jp nz, $86f6                                  ; $7b35: $c2 $f6 $86

    jr nz, @-$4a                                  ; $7b38: $20 $b4

    cp b                                          ; $7b3a: $b8
    inc sp                                        ; $7b3b: $33
    ld b, h                                       ; $7b3c: $44
    ld a, l                                       ; $7b3d: $7d
    ld a, h                                       ; $7b3e: $7c
    jr z, @-$08                                   ; $7b3f: $28 $f6

    or $78                                        ; $7b41: $f6 $78
    cp d                                          ; $7b43: $ba
    cp a                                          ; $7b44: $bf
    ld e, a                                       ; $7b45: $5f
    ld bc, $fcbe                                  ; $7b46: $01 $be $fc
    rla                                           ; $7b49: $17
    rlca                                          ; $7b4a: $07
    ld [hl], e                                    ; $7b4b: $73
    cpl                                           ; $7b4c: $2f
    ld l, d                                       ; $7b4d: $6a
    ld [c], a                                     ; $7b4e: $e2
    ld b, e                                       ; $7b4f: $43
    ld a, a                                       ; $7b50: $7f
    cp e                                          ; $7b51: $bb
    add hl, hl                                    ; $7b52: $29
    rra                                           ; $7b53: $1f
    push af                                       ; $7b54: $f5
    reti                                          ; $7b55: $d9


    ret nc                                        ; $7b56: $d0

    inc [hl]                                      ; $7b57: $34
    jr jr_041_7bc4                                ; $7b58: $18 $6a

    xor l                                         ; $7b5a: $ad
    xor l                                         ; $7b5b: $ad
    rrca                                          ; $7b5c: $0f
    jp hl                                         ; $7b5d: $e9


    ld d, c                                       ; $7b5e: $51
    inc hl                                        ; $7b5f: $23
    or a                                          ; $7b60: $b7
    or e                                          ; $7b61: $b3
    ld c, a                                       ; $7b62: $4f
    ld l, a                                       ; $7b63: $6f
    and e                                         ; $7b64: $a3
    ld c, e                                       ; $7b65: $4b
    db $dd                                        ; $7b66: $dd
    db $eb                                        ; $7b67: $eb
    cp [hl]                                       ; $7b68: $be
    sub $0a                                       ; $7b69: $d6 $0a
    db $ed                                        ; $7b6b: $ed
    ld a, l                                       ; $7b6c: $7d
    ld [hl], $98                                  ; $7b6d: $36 $98
    xor c                                         ; $7b6f: $a9
    ld a, l                                       ; $7b70: $7d
    ld l, d                                       ; $7b71: $6a
    call nz, $a94d                                ; $7b72: $c4 $4d $a9
    cpl                                           ; $7b75: $2f
    ld [hl-], a                                   ; $7b76: $32
    scf                                           ; $7b77: $37
    push hl                                       ; $7b78: $e5
    ei                                            ; $7b79: $fb
    cp [hl]                                       ; $7b7a: $be
    ld c, a                                       ; $7b7b: $4f
    ld a, e                                       ; $7b7c: $7b
    rra                                           ; $7b7d: $1f
    add $06                                       ; $7b7e: $c6 $06
    ld a, c                                       ; $7b80: $79
    push hl                                       ; $7b81: $e5
    ld b, [hl]                                    ; $7b82: $46
    sub b                                         ; $7b83: $90
    ld a, [de]                                    ; $7b84: $1a
    xor c                                         ; $7b85: $a9
    ld h, [hl]                                    ; $7b86: $66
    di                                            ; $7b87: $f3
    and h                                         ; $7b88: $a4
    add d                                         ; $7b89: $82
    or [hl]                                       ; $7b8a: $b6
    ld l, a                                       ; $7b8b: $6f
    ld a, [$6d15]                                 ; $7b8c: $fa $15 $6d
    jr c, jr_041_7bc8                             ; $7b8f: $38 $37

    ld a, e                                       ; $7b91: $7b
    ld [hl], h                                    ; $7b92: $74
    xor c                                         ; $7b93: $a9
    db $fd                                        ; $7b94: $fd
    ld h, [hl]                                    ; $7b95: $66
    inc b                                         ; $7b96: $04
    ld a, [$4874]                                 ; $7b97: $fa $74 $48
    cp a                                          ; $7b9a: $bf
    ld e, h                                       ; $7b9b: $5c
    call c, $8854                                 ; $7b9c: $dc $54 $88
    ret nc                                        ; $7b9f: $d0

    ld hl, $5fa7                                  ; $7ba0: $21 $a7 $5f
    ld bc, $d96d                                  ; $7ba3: $01 $6d $d9
    inc de                                        ; $7ba6: $13
    rrca                                          ; $7ba7: $0f
    ld a, l                                       ; $7ba8: $7d
    ld e, d                                       ; $7ba9: $5a
    ld [hl], l                                    ; $7baa: $75
    ld a, [hl]                                    ; $7bab: $7e
    ld c, d                                       ; $7bac: $4a
    ei                                            ; $7bad: $fb
    dec d                                         ; $7bae: $15
    sbc [hl]                                      ; $7baf: $9e
    ld d, e                                       ; $7bb0: $53
    ld hl, $1cea                                  ; $7bb1: $21 $ea $1c
    ret z                                         ; $7bb4: $c8

    jp hl                                         ; $7bb5: $e9


    ei                                            ; $7bb6: $fb
    ld a, $1e                                     ; $7bb7: $3e $1e
    ld a, $f4                                     ; $7bb9: $3e $f4
    bit 7, c                                      ; $7bbb: $cb $79
    db $f4                                        ; $7bbd: $f4
    dec hl                                        ; $7bbe: $2b
    sbc [hl]                                      ; $7bbf: $9e
    rst $30                                       ; $7bc0: $f7
    and e                                         ; $7bc1: $a3
    ld c, e                                       ; $7bc2: $4b
    db $ed                                        ; $7bc3: $ed

jr_041_7bc4:
    scf                                           ; $7bc4: $37
    inc hl                                        ; $7bc5: $23
    ret nc                                        ; $7bc6: $d0

    and a                                         ; $7bc7: $a7

jr_041_7bc8:
    db $e3                                        ; $7bc8: $e3
    ld c, e                                       ; $7bc9: $4b
    add c                                         ; $7bca: $81
    ldh a, [$a5]                                  ; $7bcb: $f0 $a5
    add d                                         ; $7bcd: $82
    or [hl]                                       ; $7bce: $b6
    ld l, a                                       ; $7bcf: $6f
    ld l, d                                       ; $7bd0: $6a
    xor l                                         ; $7bd1: $ad
    cp [hl]                                       ; $7bd2: $be
    push af                                       ; $7bd3: $f5
    push af                                       ; $7bd4: $f5
    pop af                                        ; $7bd5: $f1
    sub l                                         ; $7bd6: $95
    di                                            ; $7bd7: $f3
    ld a, d                                       ; $7bd8: $7a
    ei                                            ; $7bd9: $fb
    or h                                          ; $7bda: $b4
    rst $38                                       ; $7bdb: $ff
    sub c                                         ; $7bdc: $91
    sub c                                         ; $7bdd: $91
    jr z, @-$12                                   ; $7bde: $28 $ec

    jr nc, jr_041_7c47                            ; $7be0: $30 $65

    sbc [hl]                                      ; $7be2: $9e
    ld a, [hl]                                    ; $7be3: $7e
    dec b                                         ; $7be4: $05
    xor l                                         ; $7be5: $ad
    ld a, [$7175]                                 ; $7be6: $fa $75 $71
    ld d, e                                       ; $7be9: $53
    ld [$f90b], a                                 ; $7bea: $ea $0b $f9
    xor c                                         ; $7bed: $a9
    and b                                         ; $7bee: $a0
    db $ed                                        ; $7bef: $ed
    sbc e                                         ; $7bf0: $9b
    ld a, $9e                                     ; $7bf1: $3e $9e
    ld b, $35                                     ; $7bf3: $06 $35
    ld a, c                                       ; $7bf5: $79
    ld [hl], c                                    ; $7bf6: $71
    ld a, [hl]                                    ; $7bf7: $7e
    ld b, h                                       ; $7bf8: $44
    ld e, l                                       ; $7bf9: $5d
    db $ec                                        ; $7bfa: $ec
    ld l, b                                       ; $7bfb: $68
    ld [hl], c                                    ; $7bfc: $71
    ld h, a                                       ; $7bfd: $67
    ret z                                         ; $7bfe: $c8

    rst $00                                       ; $7bff: $c7
    adc $8d                                       ; $7c00: $ce $8d
    xor c                                         ; $7c02: $a9
    scf                                           ; $7c03: $37
    call nz, $a287                                ; $7c04: $c4 $87 $a2
    ldh a, [$e4]                                  ; $7c07: $f0 $e4
    call nz, Call_000_30bd                        ; $7c09: $c4 $bd $30
    jp z, $d355                                   ; $7c0c: $ca $55 $d3

    xor a                                         ; $7c0f: $af
    or l                                          ; $7c10: $b5
    daa                                           ; $7c11: $27
    ld l, h                                       ; $7c12: $6c
    ld b, e                                       ; $7c13: $43
    ld a, $4f                                     ; $7c14: $3e $4f
    ld l, [hl]                                    ; $7c16: $6e
    ld h, a                                       ; $7c17: $67
    sbc a                                         ; $7c18: $9f
    sbc $26                                       ; $7c19: $de $26
    ld a, [bc]                                    ; $7c1b: $0a
    ld a, e                                       ; $7c1c: $7b
    ld a, a                                       ; $7c1d: $7f
    call c, $db08                                 ; $7c1e: $dc $08 $db
    ld d, h                                       ; $7c21: $54
    cp a                                          ; $7c22: $bf
    and c                                         ; $7c23: $a1
    adc [hl]                                      ; $7c24: $8e
    ld a, b                                       ; $7c25: $78
    inc hl                                        ; $7c26: $23
    add sp, $57                                   ; $7c27: $e8 $57
    xor l                                         ; $7c29: $ad
    rrca                                          ; $7c2a: $0f
    adc c                                         ; $7c2b: $89
    ld l, h                                       ; $7c2c: $6c
    rrca                                          ; $7c2d: $0f
    rst $38                                       ; $7c2e: $ff
    ld e, a                                       ; $7c2f: $5f
    ret c                                         ; $7c30: $d8

    add [hl]                                      ; $7c31: $86
    ld a, h                                       ; $7c32: $7c
    sbc [hl]                                      ; $7c33: $9e
    ld e, d                                       ; $7c34: $5a
    dec hl                                        ; $7c35: $2b
    ld [hl], l                                    ; $7c36: $75
    xor a                                         ; $7c37: $af
    ei                                            ; $7c38: $fb
    ld l, h                                       ; $7c39: $6c
    adc a                                         ; $7c3a: $8f
    daa                                           ; $7c3b: $27
    ld b, c                                       ; $7c3c: $41
    ld a, [hl]                                    ; $7c3d: $7e
    db $e4                                        ; $7c3e: $e4
    adc e                                         ; $7c3f: $8b
    sbc e                                         ; $7c40: $9b
    jp nz, $c113                                  ; $7c41: $c2 $13 $c1

    sbc $1e                                       ; $7c44: $de $1e
    ld c, a                                       ; $7c46: $4f

jr_041_7c47:
    rst $30                                       ; $7c47: $f7
    ld b, a                                       ; $7c48: $47
    ld e, l                                       ; $7c49: $5d
    ld e, d                                       ; $7c4a: $5a
    ld a, e                                       ; $7c4b: $7b
    cp l                                          ; $7c4c: $bd
    cp $65                                        ; $7c4d: $fe $65
    or $68                                        ; $7c4f: $f6 $68
    rst $30                                       ; $7c51: $f7
    db $fd                                        ; $7c52: $fd
    ld a, [bc]                                    ; $7c53: $0a
    xor l                                         ; $7c54: $ad
    sub d                                         ; $7c55: $92
    add [hl]                                      ; $7c56: $86
    adc e                                         ; $7c57: $8b
    ld a, [de]                                    ; $7c58: $1a
    sub d                                         ; $7c59: $92
    ld a, [c]                                     ; $7c5a: $f2
    db $e4                                        ; $7c5b: $e4
    xor d                                         ; $7c5c: $aa
    ld [$93b5], a                                 ; $7c5d: $ea $b5 $93
    scf                                           ; $7c60: $37
    db $c4, $f9, $11                              ; $7c61: $c4 $f9 $11
    rst $20                                       ; $7c64: $e7
    ld bc, $a8fb                                  ; $7c65: $01 $fb $a8
    ld c, e                                       ; $7c68: $4b
    dec b                                         ; $7c69: $05
    ld [hl+], a                                   ; $7c6a: $22
    ld [hl], c                                    ; $7c6b: $71
    ld d, d                                       ; $7c6c: $52
    rst $30                                       ; $7c6d: $f7
    cp d                                          ; $7c6e: $ba
    rst $28                                       ; $7c6f: $ef
    db $d3                                        ; $7c70: $d3
    ld h, h                                       ; $7c71: $64
    inc sp                                        ; $7c72: $33
    ld e, c                                       ; $7c73: $59
    xor b                                         ; $7c74: $a8
    ldh a, [$e5]                                  ; $7c75: $f0 $e5
    db $d3                                        ; $7c77: $d3
    sub [hl]                                      ; $7c78: $96
    sbc l                                         ; $7c79: $9d
    ld [hl], a                                    ; $7c7a: $77
    ld b, h                                       ; $7c7b: $44
    adc l                                         ; $7c7c: $8d
    ld c, l                                       ; $7c7d: $4d
    ld d, $58                                     ; $7c7e: $16 $58
    sbc [hl]                                      ; $7c80: $9e
    add h                                         ; $7c81: $84
    push bc                                       ; $7c82: $c5
    adc [hl]                                      ; $7c83: $8e
    ld l, l                                       ; $7c84: $6d
    ret z                                         ; $7c85: $c8

    rst $20                                       ; $7c86: $e7
    ret                                           ; $7c87: $c9


    db $ed                                        ; $7c88: $ed
    db $ec                                        ; $7c89: $ec
    db $d3                                        ; $7c8a: $d3
    db $db                                        ; $7c8b: $db
    ld b, h                                       ; $7c8c: $44
    ld h, c                                       ; $7c8d: $61
    rst $28                                       ; $7c8e: $ef
    adc a                                         ; $7c8f: $8f
    cp $f4                                        ; $7c90: $fe $f4
    ei                                            ; $7c92: $fb
    add [hl]                                      ; $7c93: $86
    pop hl                                        ; $7c94: $e1
    ld a, $46                                     ; $7c95: $3e $46
    push af                                       ; $7c97: $f5
    rst $08                                       ; $7c98: $cf
    db $d3                                        ; $7c99: $d3
    and a                                         ; $7c9a: $a7
    db $e3                                        ; $7c9b: $e3
    ld sp, $08f9                                  ; $7c9c: $31 $f9 $08
    or $f6                                        ; $7c9f: $f6 $f6
    ld a, b                                       ; $7ca1: $78
    cp d                                          ; $7ca2: $ba
    ccf                                           ; $7ca3: $3f
    ld [$fad2], a                                 ; $7ca4: $ea $d2 $fa
    ld a, c                                       ; $7ca7: $79
    ld d, c                                       ; $7ca8: $51
    ld a, $6e                                     ; $7ca9: $3e $6e
    add h                                         ; $7cab: $84
    ld l, l                                       ; $7cac: $6d
    or d                                          ; $7cad: $b2
    sub c                                         ; $7cae: $91
    ld d, [hl]                                    ; $7caf: $56
    adc l                                         ; $7cb0: $8d
    cpl                                           ; $7cb1: $2f
    dec e                                         ; $7cb2: $1d
    inc d                                         ; $7cb3: $14
    ld b, a                                       ; $7cb4: $47
    dec c                                         ; $7cb5: $0d
    ld e, c                                       ; $7cb6: $59
    ld h, b                                       ; $7cb7: $60
    ld [hl], c                                    ; $7cb8: $71
    ld d, e                                       ; $7cb9: $53
    dec l                                         ; $7cba: $2d
    dec de                                        ; $7cbb: $1b
    db $fc                                        ; $7cbc: $fc
    add [hl]                                      ; $7cbd: $86
    call c, $d30e                                 ; $7cbe: $dc $0e $d3
    ret                                           ; $7cc1: $c9


    adc c                                         ; $7cc2: $89
    ld a, e                                       ; $7cc3: $7b
    dec sp                                        ; $7cc4: $3b
    scf                                           ; $7cc5: $37
    db $fd                                        ; $7cc6: $fd
    ld a, [bc]                                    ; $7cc7: $0a
    dec e                                         ; $7cc8: $1d
    ld e, a                                       ; $7cc9: $5f
    ld a, [bc]                                    ; $7cca: $0a
    add h                                         ; $7ccb: $84
    cpl                                           ; $7ccc: $2f
    dec d                                         ; $7ccd: $15
    or h                                          ; $7cce: $b4
    ld a, l                                       ; $7ccf: $7d
    and e                                         ; $7cd0: $a3
    ld c, e                                       ; $7cd1: $4b
    db $ed                                        ; $7cd2: $ed
    scf                                           ; $7cd3: $37
    inc hl                                        ; $7cd4: $23
    ld d, b                                       ; $7cd5: $50
    ld l, e                                       ; $7cd6: $6b
    dec b                                         ; $7cd7: $05
    cp [hl]                                       ; $7cd8: $be
    push af                                       ; $7cd9: $f5
    jp hl                                         ; $7cda: $e9


    ld [c], a                                     ; $7cdb: $e2
    sbc a                                         ; $7cdc: $9f
    or b                                          ; $7cdd: $b0
    dec c                                         ; $7cde: $0d
    ld sp, hl                                     ; $7cdf: $f9
    inc a                                         ; $7ce0: $3c
    reti                                          ; $7ce1: $d9


    ret z                                         ; $7ce2: $c8

    dec d                                         ; $7ce3: $15
    ld [hl], $4a                                  ; $7ce4: $36 $4a
    cp h                                          ; $7ce6: $bc
    sub c                                         ; $7ce7: $91
    rlc d                                         ; $7ce8: $cb $02
    set 7, [hl]                                   ; $7cea: $cb $fe
    cp b                                          ; $7cec: $b8
    ld de, $a9b6                                  ; $7ced: $11 $b6 $a9
    ld a, [hl]                                    ; $7cf0: $7e
    ld b, e                                       ; $7cf1: $43
    dec e                                         ; $7cf2: $1d
    pop af                                        ; $7cf3: $f1
    ld b, [hl]                                    ; $7cf4: $46
    ret nc                                        ; $7cf5: $d0

    xor a                                         ; $7cf6: $af
    dec e                                         ; $7cf7: $1d
    jr nc, @+$61                                  ; $7cf8: $30 $5f

    dec [hl]                                      ; $7cfa: $35
    reti                                          ; $7cfb: $d9


    ld c, a                                       ; $7cfc: $4f
    adc [hl]                                      ; $7cfd: $8e
    adc l                                         ; $7cfe: $8d
    ld l, $b5                                     ; $7cff: $2e $b5
    rst $18                                       ; $7d01: $df
    adc h                                         ; $7d02: $8c
    ld b, b                                       ; $7d03: $40
    sbc a                                         ; $7d04: $9f
    or $5f                                        ; $7d05: $f6 $5f
    ld a, l                                       ; $7d07: $7d
    push af                                       ; $7d08: $f5
    xor c                                         ; $7d09: $a9
    ld a, e                                       ; $7d0a: $7b
    ld [c], a                                     ; $7d0b: $e2
    sub b                                         ; $7d0c: $90
    ld a, [c]                                     ; $7d0d: $f2
    ld d, [hl]                                    ; $7d0e: $56
    ld c, a                                       ; $7d0f: $4f
    cp h                                          ; $7d10: $bc
    ret c                                         ; $7d11: $d8

    rst $20                                       ; $7d12: $e7
    db $10                                        ; $7d13: $10
    ld [hl], l                                    ; $7d14: $75
    or c                                          ; $7d15: $b1
    ld a, e                                       ; $7d16: $7b
    ld [de], a                                    ; $7d17: $12
    add [hl]                                      ; $7d18: $86
    call c, Call_000_3ece                         ; $7d19: $dc $ce $3e
    cp l                                          ; $7d1c: $bd
    ld c, l                                       ; $7d1d: $4d
    cp h                                          ; $7d1e: $bc

jr_041_7d1f:
    or $d1                                        ; $7d1f: $f6 $d1
    or $a5                                        ; $7d21: $f6 $a5
    cp b                                          ; $7d23: $b8
    rst $30                                       ; $7d24: $f7
    ld a, d                                       ; $7d25: $7a
    ld a, a                                       ; $7d26: $7f
    ld e, a                                       ; $7d27: $5f
    inc d                                         ; $7d28: $14

jr_041_7d29:
    or $fe                                        ; $7d29: $f6 $fe
    add sp, $4f                                   ; $7d2b: $e8 $4f
    cp a                                          ; $7d2d: $bf
    ld l, a                                       ; $7d2e: $6f
    jr jr_041_7d1f                                ; $7d2f: $18 $ee

    ei                                            ; $7d31: $fb
    dec d                                         ; $7d32: $15
    or l                                          ; $7d33: $b5
    rst $18                                       ; $7d34: $df
    adc h                                         ; $7d35: $8c
    ld b, b                                       ; $7d36: $40
    call Call_000_19d4                            ; $7d37: $cd $d4 $19
    ld c, c                                       ; $7d3a: $49
    ld l, c                                       ; $7d3b: $69
    or h                                          ; $7d3c: $b4
    inc [hl]                                      ; $7d3d: $34
    ld e, d                                       ; $7d3e: $5a
    ld hl, sp+$4d                                 ; $7d3f: $f8 $4d
    jr z, jr_041_7da2                             ; $7d41: $28 $5f

    ld [hl], c                                    ; $7d43: $71
    sub a                                         ; $7d44: $97
    push hl                                       ; $7d45: $e5
    ld a, [de]                                    ; $7d46: $1a
    ret nc                                        ; $7d47: $d0

    add l                                         ; $7d48: $85
    add h                                         ; $7d49: $84
    sbc d                                         ; $7d4a: $9a
    ld a, [hl]                                    ; $7d4b: $7e
    dec b                                         ; $7d4c: $05
    or l                                          ; $7d4d: $b5
    daa                                           ; $7d4e: $27
    ld l, h                                       ; $7d4f: $6c
    ld b, e                                       ; $7d50: $43
    ld a, $4f                                     ; $7d51: $3e $4f
    ld l, [hl]                                    ; $7d53: $6e
    ld h, a                                       ; $7d54: $67
    sbc a                                         ; $7d55: $9f
    sbc $26                                       ; $7d56: $de $26
    jp c, $c2d1                                   ; $7d58: $da $d1 $c2

    inc de                                        ; $7d5b: $13
    scf                                           ; $7d5c: $37
    sub d                                         ; $7d5d: $92
    db $fd                                        ; $7d5e: $fd
    ld [hl], c                                    ; $7d5f: $71
    inc hl                                        ; $7d60: $23
    ld l, h                                       ; $7d61: $6c
    ld d, e                                       ; $7d62: $53
    db $fd                                        ; $7d63: $fd
    add [hl]                                      ; $7d64: $86
    ld a, [hl-]                                   ; $7d65: $3a
    ld [c], a                                     ; $7d66: $e2
    adc l                                         ; $7d67: $8d
    jr nz, jr_041_7d29                            ; $7d68: $20 $bf

    inc l                                         ; $7d6a: $2c
    ld [hl], $8b                                  ; $7d6b: $36 $8b
    db $dd                                        ; $7d6d: $dd
    di                                            ; $7d6e: $f3
    rst $30                                       ; $7d6f: $f7
    ld a, l                                       ; $7d70: $7d
    rra                                           ; $7d71: $1f
    ld h, h                                       ; $7d72: $64
    ld a, e                                       ; $7d73: $7b
    ld hl, sp+$27                                 ; $7d74: $f8 $27
    halt                                          ; $7d76: $76
    rr b                                          ; $7d77: $cb $18
    ccf                                           ; $7d79: $3f
    ld c, a                                       ; $7d7a: $4f
    ld c, [hl]                                    ; $7d7b: $4e
    and d                                         ; $7d7c: $a2
    ccf                                           ; $7d7d: $3f
    db $fd                                        ; $7d7e: $fd
    cp [hl]                                       ; $7d7f: $be
    ld h, c                                       ; $7d80: $61
    cp b                                          ; $7d81: $b8
    rst $28                                       ; $7d82: $ef
    ld d, a                                       ; $7d83: $57
    dec e                                         ; $7d84: $1d
    jr nc, jr_041_7de6                            ; $7d85: $30 $5f

    dec [hl]                                      ; $7d87: $35
    reti                                          ; $7d88: $d9


    adc l                                         ; $7d89: $8d
    xor $46                                       ; $7d8a: $ee $46
    rst $30                                       ; $7d8c: $f7
    sub e                                         ; $7d8d: $93
    ld h, e                                       ; $7d8e: $63
    and e                                         ; $7d8f: $a3
    ld c, e                                       ; $7d90: $4b
    db $ed                                        ; $7d91: $ed
    scf                                           ; $7d92: $37
    inc hl                                        ; $7d93: $23
    and b                                         ; $7d94: $a0
    bit 4, d                                      ; $7d95: $cb $62
    or e                                          ; $7d97: $b3
    ret c                                         ; $7d98: $d8

    ld c, l                                       ; $7d99: $4d

jr_041_7d9a:
    call c, $c854                                 ; $7d9a: $dc $54 $c8
    ld d, l                                       ; $7d9d: $55
    push de                                       ; $7d9e: $d5
    ld l, e                                       ; $7d9f: $6b
    daa                                           ; $7da0: $27
    ld c, a                                       ; $7da1: $4f

jr_041_7da2:
    ld c, [hl]                                    ; $7da2: $4e
    sbc a                                         ; $7da3: $9f
    ld h, $1a                                     ; $7da4: $26 $1a
    rst $08                                       ; $7da6: $cf
    ld b, d                                       ; $7da7: $42
    add l                                         ; $7da8: $85
    cpl                                           ; $7da9: $2f
    cp a                                          ; $7daa: $bf
    rst $30                                       ; $7dab: $f7
    rst $00                                       ; $7dac: $c7
    di                                            ; $7dad: $f3
    bit 0, a                                      ; $7dae: $cb $47
    ld e, l                                       ; $7db0: $5d
    jp c, $b46a                                   ; $7db1: $da $6a $b4

    xor l                                         ; $7db4: $ad
    ld b, [hl]                                    ; $7db5: $46
    db $db                                        ; $7db6: $db
    or d                                          ; $7db7: $b2
    di                                            ; $7db8: $f3
    adc [hl]                                      ; $7db9: $8e
    xor b                                         ; $7dba: $a8
    or c                                          ; $7dbb: $b1
    jp hl                                         ; $7dbc: $e9


    ld d, a                                       ; $7dbd: $57
    or l                                          ; $7dbe: $b5
    daa                                           ; $7dbf: $27
    ld l, h                                       ; $7dc0: $6c
    ld b, e                                       ; $7dc1: $43
    ld a, $4f                                     ; $7dc2: $3e $4f
    ld l, [hl]                                    ; $7dc4: $6e
    ld h, a                                       ; $7dc5: $67
    sbc a                                         ; $7dc6: $9f
    sbc $26                                       ; $7dc7: $de $26
    jp c, $c2d1                                   ; $7dc9: $da $d1 $c2

    inc de                                        ; $7dcc: $13
    scf                                           ; $7dcd: $37
    sub d                                         ; $7dce: $92
    db $fd                                        ; $7dcf: $fd
    ld [hl], c                                    ; $7dd0: $71
    inc hl                                        ; $7dd1: $23
    ld l, h                                       ; $7dd2: $6c
    ld d, e                                       ; $7dd3: $53
    db $fd                                        ; $7dd4: $fd
    add [hl]                                      ; $7dd5: $86
    ld a, [hl-]                                   ; $7dd6: $3a
    ld [c], a                                     ; $7dd7: $e2
    adc l                                         ; $7dd8: $8d
    jr nz, jr_041_7d9a                            ; $7dd9: $20 $bf

    inc l                                         ; $7ddb: $2c
    ld [hl], $8b                                  ; $7ddc: $36 $8b
    db $dd                                        ; $7dde: $dd
    di                                            ; $7ddf: $f3
    rst $30                                       ; $7de0: $f7
    dec hl                                        ; $7de1: $2b
    dec e                                         ; $7de2: $1d
    jr nc, jr_041_7e44                            ; $7de3: $30 $5f

    dec [hl]                                      ; $7de5: $35

jr_041_7de6:
    reti                                          ; $7de6: $d9


    adc l                                         ; $7de7: $8d
    xor $46                                       ; $7de8: $ee $46
    rst $30                                       ; $7dea: $f7
    sub e                                         ; $7deb: $93
    ld h, e                                       ; $7dec: $63
    and e                                         ; $7ded: $a3
    ld c, e                                       ; $7dee: $4b
    db $ed                                        ; $7def: $ed
    scf                                           ; $7df0: $37
    inc hl                                        ; $7df1: $23
    and b                                         ; $7df2: $a0
    bit 4, d                                      ; $7df3: $cb $62
    or e                                          ; $7df5: $b3
    ret c                                         ; $7df6: $d8

    ld c, l                                       ; $7df7: $4d
    call c, $c854                                 ; $7df8: $dc $54 $c8
    ld d, l                                       ; $7dfb: $55
    push de                                       ; $7dfc: $d5
    ld l, e                                       ; $7dfd: $6b
    daa                                           ; $7dfe: $27
    ld c, a                                       ; $7dff: $4f
    ld c, [hl]                                    ; $7e00: $4e
    sbc a                                         ; $7e01: $9f
    ld h, $1a                                     ; $7e02: $26 $1a
    rst $08                                       ; $7e04: $cf
    ld b, d                                       ; $7e05: $42
    add l                                         ; $7e06: $85
    cpl                                           ; $7e07: $2f
    cp a                                          ; $7e08: $bf
    rst $30                                       ; $7e09: $f7
    rst $00                                       ; $7e0a: $c7
    di                                            ; $7e0b: $f3
    bit 0, a                                      ; $7e0c: $cb $47
    ld e, l                                       ; $7e0e: $5d
    jp c, $b46a                                   ; $7e0f: $da $6a $b4

    xor l                                         ; $7e12: $ad
    ld b, [hl]                                    ; $7e13: $46
    db $db                                        ; $7e14: $db
    or d                                          ; $7e15: $b2
    di                                            ; $7e16: $f3
    adc [hl]                                      ; $7e17: $8e
    xor b                                         ; $7e18: $a8
    or c                                          ; $7e19: $b1
    jp hl                                         ; $7e1a: $e9


    db $e3                                        ; $7e1b: $e3
    add hl, sp                                    ; $7e1c: $39
    ld d, d                                       ; $7e1d: $52
    and b                                         ; $7e1e: $a0
    ret                                           ; $7e1f: $c9


    ld d, a                                       ; $7e20: $57
    sub a                                         ; $7e21: $97
    db $db                                        ; $7e22: $db
    reti                                          ; $7e23: $d9


    adc l                                         ; $7e24: $8d
    xor $46                                       ; $7e25: $ee $46
    rst $30                                       ; $7e27: $f7
    jp hl                                         ; $7e28: $e9


    ld l, l                                       ; $7e29: $6d
    ld [hl], h                                    ; $7e2a: $74
    reti                                          ; $7e2b: $d9


    inc de                                        ; $7e2c: $13
    cp e                                          ; $7e2d: $bb
    ld h, l                                       ; $7e2e: $65
    adc h                                         ; $7e2f: $8c
    ld h, c                                       ; $7e30: $61
    push af                                       ; $7e31: $f5
    rst $20                                       ; $7e32: $e7
    db $d3                                        ; $7e33: $d3
    cp $ab                                        ; $7e34: $fe $ab
    xor a                                         ; $7e36: $af
    ld a, $75                                     ; $7e37: $3e $75
    ld c, a                                       ; $7e39: $4f
    inc e                                         ; $7e3a: $1c
    ld a, [$6d15]                                 ; $7e3b: $fa $15 $6d
    jr c, jr_041_7e77                             ; $7e3e: $38 $37

    ld a, e                                       ; $7e40: $7b
    ld a, [$9e15]                                 ; $7e41: $fa $15 $9e

jr_041_7e44:
    ld d, e                                       ; $7e44: $53
    ld hl, $4d8b                                  ; $7e45: $21 $8b $4d
    add c                                         ; $7e48: $81
    ld b, [hl]                                    ; $7e49: $46
    sub c                                         ; $7e4a: $91
    db $fd                                        ; $7e4b: $fd
    ld h, c                                       ; $7e4c: $61
    ld a, [$46b1]                                 ; $7e4d: $fa $b1 $46
    xor l                                         ; $7e50: $ad
    ld d, c                                       ; $7e51: $51
    dec sp                                        ; $7e52: $3b
    rlca                                          ; $7e53: $07
    ld [hl], e                                    ; $7e54: $73
    xor a                                         ; $7e55: $af
    ld c, e                                       ; $7e56: $4b
    db $ed                                        ; $7e57: $ed
    scf                                           ; $7e58: $37
    inc hl                                        ; $7e59: $23
    ld d, b                                       ; $7e5a: $50
    ld l, e                                       ; $7e5b: $6b
    dec b                                         ; $7e5c: $05
    cp [hl]                                       ; $7e5d: $be
    ld [hl], d                                    ; $7e5e: $72
    ld e, [hl]                                    ; $7e5f: $5e
    xor a                                         ; $7e60: $af
    ld l, $ef                                     ; $7e61: $2e $ef
    db $fc                                        ; $7e63: $fc
    sub h                                         ; $7e64: $94
    or $7d                                        ; $7e65: $f6 $7d
    cp a                                          ; $7e67: $bf
    ld [bc], a                                    ; $7e68: $02
    dec e                                         ; $7e69: $1d
    ld e, a                                       ; $7e6a: $5f
    call c, $7908                                 ; $7e6b: $dc $08 $79
    db $10                                        ; $7e6e: $10
    ld b, h                                       ; $7e6f: $44
    dec [hl]                                      ; $7e70: $35
    xor d                                         ; $7e71: $aa
    ld a, [de]                                    ; $7e72: $1a
    ld d, l                                       ; $7e73: $55
    ld l, a                                       ; $7e74: $6f
    xor $a2                                       ; $7e75: $ee $a2

jr_041_7e77:
    jr nz, @+$6e                                  ; $7e77: $20 $6c

    and e                                         ; $7e79: $a3
    ld c, e                                       ; $7e7a: $4b
    db $ed                                        ; $7e7b: $ed
    scf                                           ; $7e7c: $37
    inc hl                                        ; $7e7d: $23
    ret nc                                        ; $7e7e: $d0

    xor a                                         ; $7e7f: $af
    or l                                          ; $7e80: $b5
    rst $38                                       ; $7e81: $ff
    ld [hl], d                                    ; $7e82: $72
    jp nz, Jump_000_1b30                          ; $7e83: $c2 $30 $1b

    and $09                                       ; $7e86: $e6 $09
    sub l                                         ; $7e88: $95
    rst $08                                       ; $7e89: $cf
    ld b, $f1                                     ; $7e8a: $06 $f1
    ld b, [hl]                                    ; $7e8c: $46
    ld d, b                                       ; $7e8d: $50
    inc sp                                        ; $7e8e: $33
    dec e                                         ; $7e8f: $1d
    ld d, d                                       ; $7e90: $52
    inc d                                         ; $7e91: $14
    sbc [hl]                                      ; $7e92: $9e
    cp b                                          ; $7e93: $b8
    add hl, hl                                    ; $7e94: $29
    inc c                                         ; $7e95: $0c
    xor e                                         ; $7e96: $ab
    daa                                           ; $7e97: $27
    cp a                                          ; $7e98: $bf
    rst $30                                       ; $7e99: $f7
    add a                                         ; $7e9a: $87
    jp hl                                         ; $7e9b: $e9


    rst $00                                       ; $7e9c: $c7
    ld a, l                                       ; $7e9d: $7d
    ld sp, hl                                     ; $7e9e: $f9
    ld d, b                                       ; $7e9f: $50
    ld sp, hl                                     ; $7ea0: $f9
    inc l                                         ; $7ea1: $2c
    sub b                                         ; $7ea2: $90
    rst $18                                       ; $7ea3: $df
    rst $00                                       ; $7ea4: $c7
    push af                                       ; $7ea5: $f5
    ld b, h                                       ; $7ea6: $44
    ld e, l                                       ; $7ea7: $5d
    sbc d                                         ; $7ea8: $9a
    ret                                           ; $7ea9: $c9


    ld b, d                                       ; $7eaa: $42
    add l                                         ; $7eab: $85
    xor a                                         ; $7eac: $af
    and $0a                                       ; $7ead: $e6 $0a
    ld a, l                                       ; $7eaf: $7d
    rst $18                                       ; $7eb0: $df
    dec hl                                        ; $7eb1: $2b
    ld l, d                                       ; $7eb2: $6a
    cpl                                           ; $7eb3: $2f
    adc h                                         ; $7eb4: $8c
    call c, $f78e                                 ; $7eb5: $dc $8e $f7
    xor e                                         ; $7eb8: $ab
    add hl, hl                                    ; $7eb9: $29
    inc de                                        ; $7eba: $13
    ld e, a                                       ; $7ebb: $5f
    ld [hl], a                                    ; $7ebc: $77
    or e                                          ; $7ebd: $b3
    ret nz                                        ; $7ebe: $c0

    ld h, $0a                                     ; $7ebf: $26 $0a
    ld a, e                                       ; $7ec1: $7b
    inc hl                                        ; $7ec2: $23
    ld l, l                                       ; $7ec3: $6d
    cp l                                          ; $7ec4: $bd
    ld l, c                                       ; $7ec5: $69
    ld b, e                                       ; $7ec6: $43
    ld h, b                                       ; $7ec7: $60
    inc hl                                        ; $7ec8: $23
    ld a, [bc]                                    ; $7ec9: $0a
    dec sp                                        ; $7eca: $3b
    ld c, l                                       ; $7ecb: $4d
    or h                                          ; $7ecc: $b4
    ret nc                                        ; $7ecd: $d0

    ld b, h                                       ; $7ece: $44
    inc de                                        ; $7ecf: $13
    cp d                                          ; $7ed0: $ba
    ld e, h                                       ; $7ed1: $5c
    call nc, Call_041_5355                        ; $7ed2: $d4 $55 $53
    ret c                                         ; $7ed5: $d8

    ld e, [hl]                                    ; $7ed6: $5e
    ld hl, sp+$52                                 ; $7ed7: $f8 $52
    ld hl, sp-$37                                 ; $7ed9: $f8 $c9
    sub a                                         ; $7edb: $97
    ret                                           ; $7edc: $c9


    sub e                                         ; $7edd: $93
    db $10                                        ; $7ede: $10
    dec [hl]                                      ; $7edf: $35
    reti                                          ; $7ee0: $d9


    sbc a                                         ; $7ee1: $9f
    ld a, [bc]                                    ; $7ee2: $0a
    jp c, $e9be                                   ; $7ee3: $da $be $e9

    ei                                            ; $7ee6: $fb
    ld a, [hl]                                    ; $7ee7: $7e
    dec b                                         ; $7ee8: $05
    cp [hl]                                       ; $7ee9: $be
    ld l, a                                       ; $7eea: $6f
    ld a, a                                       ; $7eeb: $7f
    pop af                                        ; $7eec: $f1
    ld h, d                                       ; $7eed: $62
    sbc a                                         ; $7eee: $9f
    ld b, e                                       ; $7eef: $43

jr_041_7ef0:
    call nc, $fca5                                ; $7ef0: $d4 $a5 $fc
    ld [bc], a                                    ; $7ef3: $02
    ld b, e                                       ; $7ef4: $43
    sbc h                                         ; $7ef5: $9c
    rra                                           ; $7ef6: $1f
    pop af                                        ; $7ef7: $f1
    rst $38                                       ; $7ef8: $ff
    push hl                                       ; $7ef9: $e5
    sub a                                         ; $7efa: $97
    dec b                                         ; $7efb: $05
    ld a, [c]                                     ; $7efc: $f2
    or c                                          ; $7efd: $b1
    ld [hl], e                                    ; $7efe: $73
    jr nz, jr_041_7f2a                            ; $7eff: $20 $29

    ld c, a                                       ; $7f01: $4f
    xor b                                         ; $7f02: $a8
    ld a, h                                       ; $7f03: $7c
    ld d, $c8                                     ; $7f04: $16 $c8
    rst $28                                       ; $7f06: $ef
    db $e3                                        ; $7f07: $e3
    ld a, d                                       ; $7f08: $7a
    and d                                         ; $7f09: $a2
    ld l, $cd                                     ; $7f0a: $2e $cd
    ld h, h                                       ; $7f0c: $64
    and c                                         ; $7f0d: $a1
    jp nz, $0597                                  ; $7f0e: $c2 $97 $05

    sub [hl]                                      ; $7f11: $96
    daa                                           ; $7f12: $27
    ld h, c                                       ; $7f13: $61
    add hl, sp                                    ; $7f14: $39
    ld h, c                                       ; $7f15: $61
    sbc b                                         ; $7f16: $98
    dec c                                         ; $7f17: $0d
    di                                            ; $7f18: $f3
    ld h, h                                       ; $7f19: $64
    ld a, a                                       ; $7f1a: $7f
    xor d                                         ; $7f1b: $aa
    ei                                            ; $7f1c: $fb
    ld l, h                                       ; $7f1d: $6c
    db $10                                        ; $7f1e: $10
    ld l, a                                       ; $7f1f: $6f
    inc b                                         ; $7f20: $04
    cp d                                          ; $7f21: $ba
    call nc, Call_041_661d                        ; $7f22: $d4 $1d $66
    ld e, b                                       ; $7f25: $58
    call $cd15                                    ; $7f26: $cd $15 $cd
    ld h, h                                       ; $7f29: $64

jr_041_7f2a:
    and c                                         ; $7f2a: $a1
    jp nz, Jump_041_7517                          ; $7f2b: $c2 $17 $75

    ld e, c                                       ; $7f2e: $59
    jr nz, jr_041_7ef0                            ; $7f2f: $20 $bf

    adc a                                         ; $7f31: $8f
    db $eb                                        ; $7f32: $eb
    pop de                                        ; $7f33: $d1
    and l                                         ; $7f34: $a5
    xor $30                                       ; $7f35: $ee $30
    jp Jump_041_5974                              ; $7f37: $c3 $74 $59


    ld h, b                                       ; $7f3a: $60
    ld b, c                                       ; $7f3b: $41
    add hl, hl                                    ; $7f3c: $29
    jr nc, @-$1a                                  ; $7f3d: $30 $e4

    sbc c                                         ; $7f3f: $99
    ld h, c                                       ; $7f40: $61
    or $3c                                        ; $7f41: $f6 $3c
    add hl, hl                                    ; $7f43: $29
    ld [hl], h                                    ; $7f44: $74
    and a                                         ; $7f45: $a7
    cp d                                          ; $7f46: $ba
    adc c                                         ; $7f47: $89
    ei                                            ; $7f48: $fb

jr_041_7f49:
    ld l, d                                       ; $7f49: $6a
    sbc c                                         ; $7f4a: $99
    sbc d                                         ; $7f4b: $9a
    dec hl                                        ; $7f4c: $2b
    cp [hl]                                       ; $7f4d: $be
    cp a                                          ; $7f4e: $bf
    add hl, hl                                    ; $7f4f: $29
    ccf                                           ; $7f50: $3f
    inc hl                                        ; $7f51: $23
    or l                                          ; $7f52: $b5
    rst $18                                       ; $7f53: $df
    adc h                                         ; $7f54: $8c
    add b                                         ; $7f55: $80
    ld l, $4c                                     ; $7f56: $2e $4c
    sbc c                                         ; $7f58: $99
    cpl                                           ; $7f59: $2f
    ld a, $f4                                     ; $7f5a: $3e $f4
    add l                                         ; $7f5c: $85
    xor a                                         ; $7f5d: $af
    ld c, a                                       ; $7f5e: $4f
    dec de                                        ; $7f5f: $1b
    ld h, c                                       ; $7f60: $61
    xor d                                         ; $7f61: $aa
    ld c, e                                       ; $7f62: $4b
    db $ed                                        ; $7f63: $ed

Call_041_7f64:
    scf                                           ; $7f64: $37

Call_041_7f65:
    inc hl                                        ; $7f65: $23
    and b                                         ; $7f66: $a0
    adc e                                         ; $7f67: $8b
    ld a, [hl-]                                   ; $7f68: $3a
    adc a                                         ; $7f69: $8f
    inc l                                         ; $7f6a: $2c
    call nc, $5790                                ; $7f6b: $d4 $90 $57
    ld [$9f26], a                                 ; $7f6e: $ea $26 $9f
    ld h, [hl]                                    ; $7f71: $66
    or d                                          ; $7f72: $b2
    ld d, b                                       ; $7f73: $50
    pop hl                                        ; $7f74: $e1
    rlc d                                         ; $7f75: $cb $02
    res 2, e                                      ; $7f77: $cb $93
    or b                                          ; $7f79: $b0
    sbc h                                         ; $7f7a: $9c
    jr nc, jr_041_7f49                            ; $7f7b: $30 $cc

    add [hl]                                      ; $7f7d: $86
    ld a, c                                       ; $7f7e: $79
    or d                                          ; $7f7f: $b2
    ccf                                           ; $7f80: $3f
    dec de                                        ; $7f81: $1b
    call nz, Call_041_411b                        ; $7f82: $c4 $1b $41
    cp a                                          ; $7f85: $bf
    ld [bc], a                                    ; $7f86: $02
    cp [hl]                                       ; $7f87: $be
    xor b                                         ; $7f88: $a8
    db $f4                                        ; $7f89: $f4
    halt                                          ; $7f8a: $76
    ld a, l                                       ; $7f8b: $7d
    rst $18                                       ; $7f8c: $df
    add a                                         ; $7f8d: $87
    add h                                         ; $7f8e: $84
    add hl, hl                                    ; $7f8f: $29
    add sp, $52                                   ; $7f90: $e8 $52
    ei                                            ; $7f92: $fb
    call $f408                                    ; $7f93: $cd $08 $f4
    dec hl                                        ; $7f96: $2b
    dec e                                         ; $7f97: $1d
    ld e, a                                       ; $7f98: $5f
    ld a, [bc]                                    ; $7f99: $0a
    add h                                         ; $7f9a: $84
    cpl                                           ; $7f9b: $2f
    ld a, d                                       ; $7f9c: $7a
    ld [$a974], sp                                ; $7f9d: $08 $74 $a9
    db $fd                                        ; $7fa0: $fd
    ld h, [hl]                                    ; $7fa1: $66
    inc b                                         ; $7fa2: $04
    ld l, d                                       ; $7fa3: $6a
    xor l                                         ; $7fa4: $ad
    db $ed                                        ; $7fa5: $ed
    ld a, l                                       ; $7fa6: $7d
    sbc b                                         ; $7fa7: $98
    ld a, [hl]                                    ; $7fa8: $7e
    xor d                                         ; $7fa9: $aa
    rst $18                                       ; $7faa: $df
    ld d, b                                       ; $7fab: $50
    ld b, a                                       ; $7fac: $47
    cp h                                          ; $7fad: $bc
    ld de, $46a4                                  ; $7fae: $11 $a4 $46
    adc d                                         ; $7fb1: $8a
    sbc e                                         ; $7fb2: $9b
    ld l, d                                       ; $7fb3: $6a
    ld a, c                                       ; $7fb4: $79
    dec hl                                        ; $7fb5: $2b
    ld e, a                                       ; $7fb6: $5f
    ld [hl], e                                    ; $7fb7: $73
    dec b                                         ; $7fb8: $05
    ld [hl], l                                    ; $7fb9: $75
    ld b, [hl]                                    ; $7fba: $46
    jp nz, Jump_000_0297                          ; $7fbb: $c2 $97 $02

    pop hl                                        ; $7fbe: $e1
    adc e                                         ; $7fbf: $8b
    ld e, $02                                     ; $7fc0: $1e $02
    ld e, l                                       ; $7fc2: $5d
    ld l, d                                       ; $7fc3: $6a
    cp a                                          ; $7fc4: $bf
    add hl, de                                    ; $7fc5: $19
    add c                                         ; $7fc6: $81
    ld e, d                                       ; $7fc7: $5a
    dec hl                                        ; $7fc8: $2b
    cp [hl]                                       ; $7fc9: $be
    ld [hl], d                                    ; $7fca: $72
    ld e, [hl]                                    ; $7fcb: $5e
    ld l, a                                       ; $7fcc: $6f
    rst $18                                       ; $7fcd: $df
    rst $30                                       ; $7fce: $f7
    ld a, c                                       ; $7fcf: $79
    rst $20                                       ; $7fd0: $e7
    and a                                         ; $7fd1: $a7
    or h                                          ; $7fd2: $b4
    ld c, a                                       ; $7fd3: $4f
    db $dd                                        ; $7fd4: $dd
    db $eb                                        ; $7fd5: $eb
    ld a, $fe                                     ; $7fd6: $3e $fe
    rst $08                                       ; $7fd8: $cf
    ld a, [hl]                                    ; $7fd9: $7e
    ld [hl], c                                    ; $7fda: $71
    rst $30                                       ; $7fdb: $f7
    inc a                                         ; $7fdc: $3c
    add hl, hl                                    ; $7fdd: $29
    inc [hl]                                      ; $7fde: $34
    ld [$2152], a                                 ; $7fdf: $ea $52 $21
    ld d, h                                       ; $7fe2: $54
    ld a, $d5                                     ; $7fe3: $3e $d5
    ld l, a                                       ; $7fe5: $6f
    xor b                                         ; $7fe6: $a8
    inc hl                                        ; $7fe7: $23
    sbc $08                                       ; $7fe8: $de $08
    add d                                         ; $7fea: $82
    ld d, h                                       ; $7feb: $54
    rla                                           ; $7fec: $17
    rst $38                                       ; $7fed: $ff
    rst $00                                       ; $7fee: $c7
    ei                                            ; $7fef: $fb
    call z, $af93                                 ; $7ff0: $cc $93 $af
    xor d                                         ; $7ff3: $aa
    rst $18                                       ; $7ff4: $df
    ld l, a                                       ; $7ff5: $6f
    add sp, $57                                   ; $7ff6: $e8 $57
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
