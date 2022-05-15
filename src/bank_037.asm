; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    scf                                           ; $4000: $37
    inc hl                                        ; $4001: $23
    db $fd                                        ; $4002: $fd
    and h                                         ; $4003: $a4
    adc h                                         ; $4004: $8c
    sub h                                         ; $4005: $94
    call nz, $8d6f                                ; $4006: $c4 $6f $8d
    and e                                         ; $4009: $a3
    sbc e                                         ; $400a: $9b
    ret z                                         ; $400b: $c8

    rra                                           ; $400c: $1f
    add d                                         ; $400d: $82
    or a                                          ; $400e: $b7
    or e                                          ; $400f: $b3
    cp $27                                        ; $4010: $fe $27
    rst $20                                       ; $4012: $e7
    ld h, $7f                                     ; $4013: $26 $7f
    sub c                                         ; $4015: $91
    ld sp, $751d                                  ; $4016: $31 $1d $75
    ld bc, $d258                                  ; $4019: $01 $58 $d2
    adc $f2                                       ; $401c: $ce $f2
    add hl, hl                                    ; $401e: $29
    push bc                                       ; $401f: $c5
    ld l, d                                       ; $4020: $6a
    ld d, l                                       ; $4021: $55
    ld [de], a                                    ; $4022: $12
    ld l, e                                       ; $4023: $6b
    ld a, c                                       ; $4024: $79
    ld e, a                                       ; $4025: $5f
    dec c                                         ; $4026: $0d
    ld b, b                                       ; $4027: $40
    ret                                           ; $4028: $c9


    ld c, d                                       ; $4029: $4a
    ld c, b                                       ; $402a: $48
    db $fc                                        ; $402b: $fc
    halt                                          ; $402c: $76
    cp e                                          ; $402d: $bb
    adc [hl]                                      ; $402e: $8e
    inc bc                                        ; $402f: $03
    and c                                         ; $4030: $a1
    ld l, c                                       ; $4031: $69
    sbc d                                         ; $4032: $9a
    and $b3                                       ; $4033: $e6 $b3
    xor e                                         ; $4035: $ab
    dec a                                         ; $4036: $3d
    rst $10                                       ; $4037: $d7
    ret c                                         ; $4038: $d8

    ld b, b                                       ; $4039: $40
    add sp, -$57                                  ; $403a: $e8 $a9
    cp a                                          ; $403c: $bf
    dec de                                        ; $403d: $1b
    db $fc                                        ; $403e: $fc
    ld b, c                                       ; $403f: $41
    pop af                                        ; $4040: $f1
    ld a, [hl-]                                   ; $4041: $3a
    rst $30                                       ; $4042: $f7
    ld d, e                                       ; $4043: $53
    db $ec                                        ; $4044: $ec
    ld c, e                                       ; $4045: $4b
    inc b                                         ; $4046: $04
    ld [hl], b                                    ; $4047: $70
    add e                                         ; $4048: $83
    cp a                                          ; $4049: $bf
    ld a, [de]                                    ; $404a: $1a
    cp e                                          ; $404b: $bb
    pop bc                                        ; $404c: $c1
    rra                                           ; $404d: $1f
    ld [hl], h                                    ; $404e: $74
    ret nc                                        ; $404f: $d0

    add d                                         ; $4050: $82
    adc d                                         ; $4051: $8a
    ccf                                           ; $4052: $3f
    ld l, b                                       ; $4053: $68
    sbc d                                         ; $4054: $9a
    and [hl]                                      ; $4055: $a6
    add hl, sp                                    ; $4056: $39
    ret                                           ; $4057: $c9


    sbc a                                         ; $4058: $9f
    jp nc, $dceb                                  ; $4059: $d2 $eb $dc

    db $e4                                        ; $405c: $e4
    cpl                                           ; $405d: $2f
    ld [hl-], a                                   ; $405e: $32
    ld h, $cd                                     ; $405f: $26 $cd
    ld bc, $aa49                                  ; $4061: $01 $49 $aa
    ld l, h                                       ; $4064: $6c
    jr nz, @-$0a                                  ; $4065: $20 $f4

    call nc, Call_037_41df                        ; $4067: $d4 $df $41
    dec bc                                        ; $406a: $0b
    dec [hl]                                      ; $406b: $35
    sub b                                         ; $406c: $90
    ld hl, $c8ed                                  ; $406d: $21 $ed $c8
    or c                                          ; $4070: $b1
    ld sp, hl                                     ; $4071: $f9
    inc bc                                        ; $4072: $03
    inc hl                                        ; $4073: $23

jr_037_4074:
    ld d, h                                       ; $4074: $54
    xor e                                         ; $4075: $ab
    ld [hl], e                                    ; $4076: $73
    push af                                       ; $4077: $f5
    ld b, a                                       ; $4078: $47
    ld l, h                                       ; $4079: $6c
    ldh a, [$57]                                  ; $407a: $f0 $57
    dec e                                         ; $407c: $1d
    db $fc                                        ; $407d: $fc
    push af                                       ; $407e: $f5
    add hl, sp                                    ; $407f: $39
    xor b                                         ; $4080: $a8
    ld h, a                                       ; $4081: $67
    call z, $b301                                 ; $4082: $cc $01 $b3
    cp $73                                        ; $4085: $fe $73
    reti                                          ; $4087: $d9


    nop                                           ; $4088: $00
    ldh a, [$90]                                  ; $4089: $f0 $90
    inc e                                         ; $408b: $1c
    call z, $dceb                                 ; $408c: $cc $eb $dc
    ld d, e                                       ; $408f: $53
    dec c                                         ; $4090: $0d
    ld h, h                                       ; $4091: $64
    add sp, $41                                   ; $4092: $e8 $41
    ld b, d                                       ; $4094: $42
    inc b                                         ; $4095: $04
    rst $10                                       ; $4096: $d7
    ld e, b                                       ; $4097: $58
    db $e4                                        ; $4098: $e4
    rst $28                                       ; $4099: $ef
    jp c, Jump_037_46b2                           ; $409a: $da $b2 $46

    or h                                          ; $409d: $b4
    inc [hl]                                      ; $409e: $34
    di                                            ; $409f: $f3
    di                                            ; $40a0: $f3
    and [hl]                                      ; $40a1: $a6
    add hl, sp                                    ; $40a2: $39
    ld c, c                                       ; $40a3: $49
    ld a, a                                       ; $40a4: $7f
    ld l, a                                       ; $40a5: $6f
    ld a, $77                                     ; $40a6: $3e $77
    db $e4                                        ; $40a8: $e4
    rst $10                                       ; $40a9: $d7
    rst $38                                       ; $40aa: $ff
    add sp, -$58                                  ; $40ab: $e8 $a8
    db $eb                                        ; $40ad: $eb
    jr nz, jr_037_4074                            ; $40ae: $20 $c4

    ld h, e                                       ; $40b0: $63
    jp nc, Jump_037_491c                          ; $40b1: $d2 $1c $49

    xor d                                         ; $40b4: $aa
    or a                                          ; $40b5: $b7
    cp a                                          ; $40b6: $bf
    adc e                                         ; $40b7: $8b
    ret nc                                        ; $40b8: $d0

    ld d, e                                       ; $40b9: $53
    xor l                                         ; $40ba: $ad
    dec l                                         ; $40bb: $2d
    ld h, h                                       ; $40bc: $64
    rlca                                          ; $40bd: $07
    sub h                                         ; $40be: $94
    xor h                                         ; $40bf: $ac
    ld a, d                                       ; $40c0: $7a
    add h                                         ; $40c1: $84
    db $f4                                        ; $40c2: $f4
    halt                                          ; $40c3: $76
    dec e                                         ; $40c4: $1d
    add a                                         ; $40c5: $87
    scf                                           ; $40c6: $37
    call Call_037_4c01                            ; $40c7: $cd $01 $4c
    cp $c6                                        ; $40ca: $fe $c6
    sbc $73                                       ; $40cc: $de $73
    push af                                       ; $40ce: $f5
    ld b, a                                       ; $40cf: $47
    xor h                                         ; $40d0: $ac
    ld d, [hl]                                    ; $40d1: $56
    dec e                                         ; $40d2: $1d
    cp h                                          ; $40d3: $bc
    add h                                         ; $40d4: $84
    ld [hl], l                                    ; $40d5: $75
    ld h, h                                       ; $40d6: $64
    cp [hl]                                       ; $40d7: $be
    ld e, l                                       ; $40d8: $5d
    rst $00                                       ; $40d9: $c7
    pop hl                                        ; $40da: $e1
    dec l                                         ; $40db: $2d
    dec de                                        ; $40dc: $1b
    ld [$0e69], sp                                ; $40dd: $08 $69 $0e
    ld c, c                                       ; $40e0: $49
    xor d                                         ; $40e1: $aa
    xor h                                         ; $40e2: $ac
    ld l, a                                       ; $40e3: $6f
    rst $10                                       ; $40e4: $d7
    ld [hl], c                                    ; $40e5: $71
    jr nz, jr_037_415c                            ; $40e6: $20 $74

    and [hl]                                      ; $40e8: $a6
    ret                                           ; $40e9: $c9


    jp z, Jump_037_7e0c                           ; $40ea: $ca $0c $7e

    inc sp                                        ; $40ed: $33
    dec e                                         ; $40ee: $1d
    sub d                                         ; $40ef: $92
    inc bc                                        ; $40f0: $03
    ld c, c                                       ; $40f1: $49
    xor d                                         ; $40f2: $aa
    xor h                                         ; $40f3: $ac
    ld l, a                                       ; $40f4: $6f
    rst $10                                       ; $40f5: $d7
    ld [hl], c                                    ; $40f6: $71
    jr nz, jr_037_4145                            ; $40f7: $20 $4c

    sbc a                                         ; $40f9: $9f
    inc bc                                        ; $40fa: $03
    ld c, c                                       ; $40fb: $49
    xor d                                         ; $40fc: $aa
    ld l, h                                       ; $40fd: $6c
    jr nz, jr_037_4174                            ; $40fe: $20 $74

    ldh a, [$a2]                                  ; $4100: $f0 $a2
    inc d                                         ; $4102: $14
    ld hl, $7571                                  ; $4103: $21 $71 $75
    ld h, h                                       ; $4106: $64
    call $1cfc                                    ; $4107: $cd $fc $1c
    inc d                                         ; $410a: $14
    add [hl]                                      ; $410b: $86
    db $e4                                        ; $410c: $e4
    ld c, h                                       ; $410d: $4c
    ld hl, sp-$60                                 ; $410e: $f8 $a0
    or b                                          ; $4110: $b0
    sub e                                         ; $4111: $93
    ld [hl], h                                    ; $4112: $74
    xor b                                         ; $4113: $a8
    ld b, d                                       ; $4114: $42
    ld hl, $a821                                  ; $4115: $21 $21 $a8
    call $8c72                                    ; $4118: $cd $72 $8c
    adc $bc                                       ; $411b: $ce $bc
    ld [$757f], sp                                ; $411d: $08 $7f $75
    ld c, $27                                     ; $4120: $0e $27
    jr z, @-$06                                   ; $4122: $28 $f8

    ldh [$a5], a                                  ; $4124: $e0 $a5
    ld a, $3d                                     ; $4126: $3e $3d
    ld l, [hl]                                    ; $4128: $6e
    rst $10                                       ; $4129: $d7
    and $b3                                       ; $412a: $e6 $b3
    ld e, h                                       ; $412c: $5c
    inc [hl]                                      ; $412d: $34
    xor [hl]                                      ; $412e: $ae
    adc [hl]                                      ; $412f: $8e
    db $fc                                        ; $4130: $fc
    ld e, c                                       ; $4131: $59
    db $e4                                        ; $4132: $e4
    or e                                          ; $4133: $b3
    ld e, h                                       ; $4134: $5c
    inc [hl]                                      ; $4135: $34
    xor [hl]                                      ; $4136: $ae
    adc $2d                                       ; $4137: $ce $2d
    ld sp, $8340                                  ; $4139: $31 $40 $83
    dec hl                                        ; $413c: $2b
    call z, $cc01                                 ; $413d: $cc $01 $cc
    add c                                         ; $4140: $81
    jr nc, jr_037_4170                            ; $4141: $30 $2d

    ld c, $38                                     ; $4143: $0e $38

jr_037_4145:
    ld hl, sp-$4d                                 ; $4145: $f8 $b3
    ld l, h                                       ; $4147: $6c
    ld c, $b3                                     ; $4148: $0e $b3
    ld a, c                                       ; $414a: $79
    ret nc                                        ; $414b: $d0

    inc [hl]                                      ; $414c: $34
    rlca                                          ; $414d: $07
    jp $f885                                      ; $414e: $c3 $85 $f8


    ld c, a                                       ; $4151: $4f
    call nc, Call_000_3966                        ; $4152: $d4 $66 $39
    or e                                          ; $4155: $b3
    daa                                           ; $4156: $27
    ld a, [c]                                     ; $4157: $f2
    add a                                         ; $4158: $87
    ld h, b                                       ; $4159: $60
    jp hl                                         ; $415a: $e9


    ld l, h                                       ; $415b: $6c

jr_037_415c:
    add e                                         ; $415c: $83
    inc [hl]                                      ; $415d: $34
    rlca                                          ; $415e: $07
    call z, Call_000_37e0                         ; $415f: $cc $e0 $37
    db $d3                                        ; $4162: $d3
    inc e                                         ; $4163: $1c
    inc hl                                        ; $4164: $23
    db $e4                                        ; $4165: $e4
    inc de                                        ; $4166: $13
    sub b                                         ; $4167: $90
    inc bc                                        ; $4168: $03
    inc hl                                        ; $4169: $23
    ld a, a                                       ; $416a: $7f
    ld d, $ce                                     ; $416b: $16 $ce
    ld bc, $484c                                  ; $416d: $01 $4c $48

jr_037_4170:
    sub h                                         ; $4170: $94
    sbc e                                         ; $4171: $9b
    ld [hl], e                                    ; $4172: $73
    di                                            ; $4173: $f3

jr_037_4174:
    ld e, d                                       ; $4174: $5a
    ret nz                                        ; $4175: $c0

    and c                                         ; $4176: $a1
    db $d3                                        ; $4177: $d3
    inc e                                         ; $4178: $1c
    jp Jump_037_777c                              ; $4179: $c3 $7c $77


    and $cd                                       ; $417c: $e6 $cd
    ld bc, $7f23                                  ; $417e: $01 $23 $7f
    sub [hl]                                      ; $4181: $96
    ld [hl-], a                                   ; $4182: $32
    ld hl, $6e51                                  ; $4183: $21 $51 $6e
    adc $01                                       ; $4186: $ce $01
    inc hl                                        ; $4188: $23
    ld a, a                                       ; $4189: $7f
    sub [hl]                                      ; $418a: $96
    adc $6b                                       ; $418b: $ce $6b
    ld bc, $a59d                                  ; $418d: $01 $9d $a5
    add hl, sp                                    ; $4190: $39
    inc sp                                        ; $4191: $33
    ld c, l                                       ; $4192: $4d
    ld [hl], $c9                                  ; $4193: $36 $c9
    ld c, h                                       ; $4195: $4c
    sub e                                         ; $4196: $93
    scf                                           ; $4197: $37
    rlca                                          ; $4198: $07
    daa                                           ; $4199: $27
    add h                                         ; $419a: $84
    ld e, a                                       ; $419b: $5f
    or l                                          ; $419c: $b5
    ld h, e                                       ; $419d: $63
    db $dd                                        ; $419e: $dd
    db $e4                                        ; $419f: $e4
    cp a                                          ; $41a0: $bf
    ld a, [de]                                    ; $41a1: $1a
    ld sp, hl                                     ; $41a2: $f9
    ld d, e                                       ; $41a3: $53
    rst $08                                       ; $41a4: $cf
    db $fd                                        ; $41a5: $fd
    ld a, [bc]                                    ; $41a6: $0a
    db $d3                                        ; $41a7: $d3
    inc e                                         ; $41a8: $1c
    ld c, c                                       ; $41a9: $49
    ld a, [c]                                     ; $41aa: $f2
    ld sp, hl                                     ; $41ab: $f9
    di                                            ; $41ac: $f3
    cp [hl]                                       ; $41ad: $be
    xor a                                         ; $41ae: $af
    ld h, b                                       ; $41af: $60
    ld [c], a                                     ; $41b0: $e2
    rst $30                                       ; $41b1: $f7
    ld d, a                                       ; $41b2: $57
    inc hl                                        ; $41b3: $23
    ld a, a                                       ; $41b4: $7f
    ld l, c                                       ; $41b5: $69
    ld c, $73                                     ; $41b6: $0e $73
    xor d                                         ; $41b8: $aa
    ld c, a                                       ; $41b9: $4f
    inc bc                                        ; $41ba: $03
    ld [de], a                                    ; $41bb: $12
    ld bc, $7e27                                  ; $41bc: $01 $27 $7e
    ld a, a                                       ; $41bf: $7f
    dec [hl]                                      ; $41c0: $35
    ld a, [c]                                     ; $41c1: $f2
    and a                                         ; $41c2: $a7
    sbc [hl]                                      ; $41c3: $9e
    ld [hl], e                                    ; $41c4: $73
    ld c, c                                       ; $41c5: $49
    ld a, [c]                                     ; $41c6: $f2
    ld sp, hl                                     ; $41c7: $f9
    di                                            ; $41c8: $f3
    sub d                                         ; $41c9: $92
    db $fd                                        ; $41ca: $fd
    ld h, $7e                                     ; $41cb: $26 $7e
    ld a, a                                       ; $41cd: $7f
    dec [hl]                                      ; $41ce: $35
    ld a, [c]                                     ; $41cf: $f2
    and a                                         ; $41d0: $a7
    sbc [hl]                                      ; $41d1: $9e
    ld [hl], e                                    ; $41d2: $73
    or e                                          ; $41d3: $b3
    ret nc                                        ; $41d4: $d0

jr_037_41d5:
    ret c                                         ; $41d5: $d8

    db $db                                        ; $41d6: $db
    ld [hl], e                                    ; $41d7: $73
    nop                                           ; $41d8: $00
    ld c, [hl]                                    ; $41d9: $4e
    db $fc                                        ; $41da: $fc
    cp $6a                                        ; $41db: $fe $6a
    db $e4                                        ; $41dd: $e4
    ld c, a                                       ; $41de: $4f

Call_037_41df:
    dec a                                         ; $41df: $3d
    rst $20                                       ; $41e0: $e7
    daa                                           ; $41e1: $27
    ld a, h                                       ; $41e2: $7c
    push bc                                       ; $41e3: $c5
    ld e, d                                       ; $41e4: $5a
    inc l                                         ; $41e5: $2c
    inc de                                        ; $41e6: $13
    cp a                                          ; $41e7: $bf
    cp a                                          ; $41e8: $bf
    ld a, [de]                                    ; $41e9: $1a
    ld sp, hl                                     ; $41ea: $f9
    ld d, e                                       ; $41eb: $53
    rst $08                                       ; $41ec: $cf
    add hl, sp                                    ; $41ed: $39
    daa                                           ; $41ee: $27
    ld a, h                                       ; $41ef: $7c
    push bc                                       ; $41f0: $c5
    ld e, d                                       ; $41f1: $5a
    db $10                                        ; $41f2: $10
    ld a, $3b                                     ; $41f3: $3e $3b
    pop af                                        ; $41f5: $f1
    ei                                            ; $41f6: $fb
    xor e                                         ; $41f7: $ab
    sub c                                         ; $41f8: $91
    ccf                                           ; $41f9: $3f
    push af                                       ; $41fa: $f5
    ld [hl], d                                    ; $41fb: $72
    daa                                           ; $41fc: $27
    add h                                         ; $41fd: $84
    ld e, a                                       ; $41fe: $5f
    or l                                          ; $41ff: $b5
    ld h, e                                       ; $4200: $63
    cp l                                          ; $4201: $bd
    ld c, l                                       ; $4202: $4d
    ld d, [hl]                                    ; $4203: $56
    ret nc                                        ; $4204: $d0

    xor a                                         ; $4205: $af

Call_037_4206:
Jump_037_4206:
    jr nc, jr_037_41d5                            ; $4206: $30 $cd

    ld bc, $81cc                                  ; $4208: $01 $cc $81
    nop                                           ; $420b: $00
    ld a, [c]                                     ; $420c: $f2
    ld d, e                                       ; $420d: $53
    sub b                                         ; $420e: $90
    inc bc                                        ; $420f: $03
    ld [hl], e                                    ; $4210: $73
    xor d                                         ; $4211: $aa
    ld c, a                                       ; $4212: $4f
    inc bc                                        ; $4213: $03
    ld [de], a                                    ; $4214: $12
    ld bc, $2071                                  ; $4215: $01 $71 $20
    add b                                         ; $4218: $80
    db $fc                                        ; $4219: $fc
    inc d                                         ; $421a: $14
    db $e4                                        ; $421b: $e4
    inc hl                                        ; $421c: $23
    call nz, $c0c7                                ; $421d: $c4 $c7 $c0
    ld d, e                                       ; $4220: $53
    sub b                                         ; $4221: $90
    inc bc                                        ; $4222: $03
    ret                                           ; $4223: $c9


    ld a, [bc]                                    ; $4224: $0a
    xor d                                         ; $4225: $aa
    dec l                                         ; $4226: $2d
    ld h, l                                       ; $4227: $65
    xor d                                         ; $4228: $aa
    ld bc, $fd0b                                  ; $4229: $01 $0b $fd
    db $10                                        ; $422c: $10
    add e                                         ; $422d: $83
    adc $01                                       ; $422e: $ce $01
    ld c, h                                       ; $4230: $4c
    cp $14                                        ; $4231: $fe $14
    sub b                                         ; $4233: $90
    sbc a                                         ; $4234: $9f
    jp hl                                         ; $4235: $e9


    sub c                                         ; $4236: $91
    inc bc                                        ; $4237: $03
    ld [hl], e                                    ; $4238: $73
    inc c                                         ; $4239: $0c
    ld b, b                                       ; $423a: $40
    inc e                                         ; $423b: $1c
    ld [$3898], a                                 ; $423c: $ea $98 $38
    ld e, c                                       ; $423f: $59
    ld b, c                                       ; $4240: $41
    ld c, $27                                     ; $4241: $0e $27
    add h                                         ; $4243: $84
    ld e, a                                       ; $4244: $5f
    or l                                          ; $4245: $b5
    ld h, e                                       ; $4246: $63
    set 5, b                                      ; $4247: $cb $e8
    ei                                            ; $4249: $fb
    call nz, Call_037_757f                        ; $424a: $c4 $7f $75
    cp a                                          ; $424d: $bf
    jp nz, Jump_000_0734                          ; $424e: $c2 $34 $07

    daa                                           ; $4251: $27
    call nz, Call_037_5060                        ; $4252: $c4 $60 $50
    ld [hl], a                                    ; $4255: $77
    xor b                                         ; $4256: $a8
    or b                                          ; $4257: $b0
    ld c, $c0                                     ; $4258: $0e $c0
    dec de                                        ; $425a: $1b
    ld [hl], l                                    ; $425b: $75
    ld l, b                                       ; $425c: $68
    or l                                          ; $425d: $b5
    ld e, c                                       ; $425e: $59
    ld c, $a3                                     ; $425f: $0e $a3
    ld h, e                                       ; $4261: $63
    pop bc                                        ; $4262: $c1
    ld [hl], d                                    ; $4263: $72
    db $fc                                        ; $4264: $fc
    dec b                                         ; $4265: $05
    db $d3                                        ; $4266: $d3
    inc e                                         ; $4267: $1c
    ld [hl], e                                    ; $4268: $73
    xor d                                         ; $4269: $aa
    ld c, a                                       ; $426a: $4f
    ld h, e                                       ; $426b: $63
    ld [c], a                                     ; $426c: $e2
    and c                                         ; $426d: $a1
    jp nz, Jump_000_003a                          ; $426e: $c2 $3a $00

    ld l, a                                       ; $4271: $6f
    call nc, $d5a1                                ; $4272: $d4 $a1 $d5
    ld h, [hl]                                    ; $4275: $66
    add hl, sp                                    ; $4276: $39
    ld [hl], e                                    ; $4277: $73
    xor d                                         ; $4278: $aa
    ld c, a                                       ; $4279: $4f
    inc bc                                        ; $427a: $03
    ld [de], a                                    ; $427b: $12
    ld bc, $be27                                  ; $427c: $01 $27 $be
    rst $00                                       ; $427f: $c7
    add d                                         ; $4280: $82
    push hl                                       ; $4281: $e5
    ld hl, sp+$0b                                 ; $4282: $f8 $0b
    and [hl]                                      ; $4284: $a6
    add hl, sp                                    ; $4285: $39
    jp $bf14                                      ; $4286: $c3 $14 $bf


    ret                                           ; $4289: $c9


    ccf                                           ; $428a: $3f
    ld h, $1e                                     ; $428b: $26 $1e
    ld sp, hl                                     ; $428d: $f9
    rla                                           ; $428e: $17
    ld c, h                                       ; $428f: $4c
    ld [hl], e                                    ; $4290: $73
    ld c, h                                       ; $4291: $4c
    cp $d6                                        ; $4292: $fe $d6
    ld b, [hl]                                    ; $4294: $46
    ld d, b                                       ; $4295: $50
    ld [hl], d                                    ; $4296: $72
    ld c, h                                       ; $4297: $4c
    inc a                                         ; $4298: $3c
    ld a, [c]                                     ; $4299: $f2
    cpl                                           ; $429a: $2f
    sbc b                                         ; $429b: $98
    and $27                                       ; $429c: $e6 $27
    add h                                         ; $429e: $84
    ld e, a                                       ; $429f: $5f
    or l                                          ; $42a0: $b5
    ld h, e                                       ; $42a1: $63
    cp l                                          ; $42a2: $bd
    ld h, l                                       ; $42a3: $65
    inc h                                         ; $42a4: $24
    add hl, bc                                    ; $42a5: $09
    sbc b                                         ; $42a6: $98
    or $2b                                        ; $42a7: $f6 $2b
    ld c, h                                       ; $42a9: $4c
    ld [hl], e                                    ; $42aa: $73
    or e                                          ; $42ab: $b3
    ld e, c                                       ; $42ac: $59
    ld e, e                                       ; $42ad: $5b
    ld [hl-], a                                   ; $42ae: $32
    sub d                                         ; $42af: $92
    add b                                         ; $42b0: $80
    ld l, c                                       ; $42b1: $69
    ld c, $73                                     ; $42b2: $0e $73
    ld e, a                                       ; $42b4: $5f
    inc bc                                        ; $42b5: $03
    ld b, h                                       ; $42b6: $44
    ret nz                                        ; $42b7: $c0

    call nz, Call_000_248c                        ; $42b8: $c4 $8c $24
    ld bc, $1cd3                                  ; $42bb: $01 $d3 $1c
    inc hl                                        ; $42be: $23
    db $e4                                        ; $42bf: $e4
    inc de                                        ; $42c0: $13
    jr nc, @+$33                                  ; $42c1: $30 $31

    inc hl                                        ; $42c3: $23
    ld c, c                                       ; $42c4: $49
    ret nz                                        ; $42c5: $c0

    inc [hl]                                      ; $42c6: $34
    rlca                                          ; $42c7: $07
    ld c, c                                       ; $42c8: $49
    ld h, e                                       ; $42c9: $63
    or $1f                                        ; $42ca: $f6 $1f
    ld [hl], c                                    ; $42cc: $71
    bit 1, b                                      ; $42cd: $cb $48
    ld [bc], a                                    ; $42cf: $02
    and [hl]                                      ; $42d0: $a6
    add hl, sp                                    ; $42d1: $39
    ld [hl], e                                    ; $42d2: $73
    ld e, l                                       ; $42d3: $5d
    xor h                                         ; $42d4: $ac
    ld b, d                                       ; $42d5: $42
    or b                                          ; $42d6: $b0
    sub h                                         ; $42d7: $94
    sub c                                         ; $42d8: $91
    inc h                                         ; $42d9: $24
    ld h, b                                       ; $42da: $60
    sbc d                                         ; $42db: $9a
    inc bc                                        ; $42dc: $03
    ld c, h                                       ; $42dd: $4c
    cp $14                                        ; $42de: $fe $14
    sub b                                         ; $42e0: $90
    inc sp                                        ; $42e1: $33
    sub d                                         ; $42e2: $92
    add b                                         ; $42e3: $80
    ld l, c                                       ; $42e4: $69
    ld c, $27                                     ; $42e5: $0e $27
    add h                                         ; $42e7: $84
    ld e, a                                       ; $42e8: $5f
    or l                                          ; $42e9: $b5
    ld h, e                                       ; $42ea: $63
    ld e, l                                       ; $42eb: $5d
    ld h, $84                                     ; $42ec: $26 $84
    add hl, bc                                    ; $42ee: $09
    db $d3                                        ; $42ef: $d3
    ld a, [hl]                                    ; $42f0: $7e
    add l                                         ; $42f1: $85
    ld l, c                                       ; $42f2: $69
    ld c, $27                                     ; $42f3: $0e $27
    call nz, Call_037_5060                        ; $42f5: $c4 $60 $50
    sub a                                         ; $42f8: $97
    add hl, bc                                    ; $42f9: $09
    ld h, c                                       ; $42fa: $61
    jp nz, Jump_000_0734                          ; $42fb: $c2 $34 $07

    ld [hl], e                                    ; $42fe: $73
    xor d                                         ; $42ff: $aa
    ld c, a                                       ; $4300: $4f

Call_037_4301:
    inc bc                                        ; $4301: $03
    ld [de], a                                    ; $4302: $12
    ld bc, $c211                                  ; $4303: $01 $11 $c2
    add h                                         ; $4306: $84
    ld l, c                                       ; $4307: $69
    ld c, $f3                                     ; $4308: $0e $f3
    ld e, d                                       ; $430a: $5a
    db $10                                        ; $430b: $10
    ld [de], a                                    ; $430c: $12
    push hl                                       ; $430d: $e5
    ld b, $2e                                     ; $430e: $06 $2e
    inc de                                        ; $4310: $13
    jp nz, Jump_037_6984                          ; $4311: $c2 $84 $69

    ld c, $4c                                     ; $4314: $0e $4c
    ld [$a613], sp                                ; $4316: $08 $13 $a6
    push de                                       ; $4319: $d5
    sub [hl]                                      ; $431a: $96
    ld [hl-], a                                   ; $431b: $32
    push de                                       ; $431c: $d5
    add b                                         ; $431d: $80
    add l                                         ; $431e: $85
    ld a, [hl]                                    ; $431f: $7e
    adc b                                         ; $4320: $88
    ld b, c                                       ; $4321: $41
    rst $20                                       ; $4322: $e7
    call z, $cfe0                                 ; $4323: $cc $e0 $cf
    ld a, [c]                                     ; $4326: $f2
    inc e                                         ; $4327: $1c
    add b                                         ; $4328: $80
    ld [$c261], sp                                ; $4329: $08 $61 $c2
    inc [hl]                                      ; $432c: $34
    rlca                                          ; $432d: $07
    ld [hl], e                                    ; $432e: $73
    inc c                                         ; $432f: $0c
    ld b, b                                       ; $4330: $40
    inc e                                         ; $4331: $1c
    ld [$9898], a                                 ; $4332: $ea $98 $98
    add hl, bc                                    ; $4335: $09
    ld h, c                                       ; $4336: $61
    jp nz, Jump_000_0734                          ; $4337: $c2 $34 $07

    or e                                          ; $433a: $b3
    dec b                                         ; $433b: $05
    add d                                         ; $433c: $82
    ld a, e                                       ; $433d: $7b
    inc b                                         ; $433e: $04
    sub h                                         ; $433f: $94
    ret                                           ; $4340: $c9


    sbc a                                         ; $4341: $9f
    and d                                         ; $4342: $a2
    ld hl, sp-$07                                 ; $4343: $f8 $f9
    di                                            ; $4345: $f3
    and $c3                                       ; $4346: $e6 $c3
    cp h                                          ; $4348: $bc
    rla                                           ; $4349: $17
    xor b                                         ; $434a: $a8
    call Call_000_0690                            ; $434b: $cd $90 $06
    add d                                         ; $434e: $82
    ld [hl], e                                    ; $434f: $73
    inc hl                                        ; $4350: $23
    inc h                                         ; $4351: $24
    ld d, c                                       ; $4352: $51
    add c                                         ; $4353: $81
    add l                                         ; $4354: $85
    ld b, $82                                     ; $4355: $06 $82
    ld [hl], e                                    ; $4357: $73
    jp $de8c                                      ; $4358: $c3 $8c $de


    ld bc, $3a82                                  ; $435b: $01 $82 $3a
    di                                            ; $435e: $f3
    call nz, $434c                                ; $435f: $c4 $4c $43
    ld c, $a3                                     ; $4362: $0e $a3
    ld [de], a                                    ; $4364: $12
    ld sp, hl                                     ; $4365: $f9
    adc l                                         ; $4366: $8d
    ccf                                           ; $4367: $3f
    ld l, a                                       ; $4368: $6f
    ld h, a                                       ; $4369: $67

Call_037_436a:
    rst $38                                       ; $436a: $ff
    add a                                         ; $436b: $87
    rla                                           ; $436c: $17
    dec c                                         ; $436d: $0d
    ld [hl], c                                    ; $436e: $71
    inc sp                                        ; $436f: $33
    add b                                         ; $4370: $80
    scf                                           ; $4371: $37
    rlca                                          ; $4372: $07
    ld c, h                                       ; $4373: $4c
    or b                                          ; $4374: $b0
    xor h                                         ; $4375: $ac
    rst $30                                       ; $4376: $f7
    or $05                                        ; $4377: $f6 $05
    sbc h                                         ; $4379: $9c
    inc bc                                        ; $437a: $03
    and e                                         ; $437b: $a3
    inc l                                         ; $437c: $2c
    reti                                          ; $437d: $d9


    ccf                                           ; $437e: $3f
    cp h                                          ; $437f: $bc
    sub b                                         ; $4380: $90
    inc bc                                        ; $4381: $03
    adc h                                         ; $4382: $8c
    adc $bc                                       ; $4383: $ce $bc
    ld b, a                                       ; $4385: $47
    nop                                           ; $4386: $00
    sbc b                                         ; $4387: $98
    and $23                                       ; $4388: $e6 $23
    sbc l                                         ; $438a: $9d
    db $fd                                        ; $438b: $fd
    add c                                         ; $438c: $81
    db $eb                                        ; $438d: $eb
    ld l, [hl]                                    ; $438e: $6e
    sbc c                                         ; $438f: $99
    ld a, b                                       ; $4390: $78
    ld l, [hl]                                    ; $4391: $6e
    ld sp, hl                                     ; $4392: $f9
    ld a, e                                       ; $4393: $7b
    rlc c                                         ; $4394: $cb $01
    ld c, h                                       ; $4396: $4c
    dec [hl]                                      ; $4397: $35
    ld h, b                                       ; $4398: $60
    sbc c                                         ; $4399: $99
    ld a, b                                       ; $439a: $78
    and h                                         ; $439b: $a4
    or e                                          ; $439c: $b3
    ccf                                           ; $439d: $3f
    ld [hl], b                                    ; $439e: $70
    db $dd                                        ; $439f: $dd
    dec l                                         ; $43a0: $2d
    inc de                                        ; $43a1: $13
    rst $08                                       ; $43a2: $cf
    dec l                                         ; $43a3: $2d
    ld a, a                                       ; $43a4: $7f

jr_037_43a5:
    ld l, a                                       ; $43a5: $6f
    add hl, sp                                    ; $43a6: $39
    ret                                           ; $43a7: $c9


    ld d, $36                                     ; $43a8: $16 $36
    ret z                                         ; $43aa: $c8

    and c                                         ; $43ab: $a1
    daa                                           ; $43ac: $27
    ld a, $e1                                     ; $43ad: $3e $e1
    dec hl                                        ; $43af: $2b
    sub $02                                       ; $43b0: $d6 $02
    ld a, [c]                                     ; $43b2: $f2
    rst $30                                       ; $43b3: $f7
    sub [hl]                                      ; $43b4: $96
    inc bc                                        ; $43b5: $03
    di                                            ; $43b6: $f3
    ld b, $fc                                     ; $43b7: $06 $fc
    inc hl                                        ; $43b9: $23
    ld c, [hl]                                    ; $43ba: $4e
    sbc a                                         ; $43bb: $9f
    ld hl, sp-$7c                                 ; $43bc: $f8 $84
    xor a                                         ; $43be: $af
    ld e, b                                       ; $43bf: $58
    dec bc                                        ; $43c0: $0b
    ret z                                         ; $43c1: $c8

    rst $18                                       ; $43c2: $df
    ld e, e                                       ; $43c3: $5b
    ld c, $43                                     ; $43c4: $0e $43
    dec d                                         ; $43c6: $15
    ld sp, $3890                                  ; $43c7: $31 $90 $38
    jr nc, jr_037_442c                            ; $43ca: $30 $60

jr_037_43cc:
    ld a, [bc]                                    ; $43cc: $0a
    ld a, [c]                                     ; $43cd: $f2
    rst $30                                       ; $43ce: $f7
    sub [hl]                                      ; $43cf: $96
    inc bc                                        ; $43d0: $03
    ld c, h                                       ; $43d1: $4c
    dec [hl]                                      ; $43d2: $35
    ld h, b                                       ; $43d3: $60
    sbc c                                         ; $43d4: $99
    ld a, b                                       ; $43d5: $78
    xor b                                         ; $43d6: $a8
    ld [hl+], a                                   ; $43d7: $22
    ld b, $12                                     ; $43d8: $06 $12
    rlca                                          ; $43da: $07

Jump_037_43db:
    ld b, $4c                                     ; $43db: $06 $4c
    ld b, c                                       ; $43dd: $41
    cp $de                                        ; $43de: $fe $de
    ld [hl], d                                    ; $43e0: $72
    daa                                           ; $43e1: $27
    ld a, h                                       ; $43e2: $7c
    push bc                                       ; $43e3: $c5
    ld e, d                                       ; $43e4: $5a
    ld b, b                                       ; $43e5: $40
    cp $de                                        ; $43e6: $fe $de
    ld h, $1e                                     ; $43e8: $26 $1e
    ld a, [hl]                                    ; $43ea: $7e
    ld a, [$7a40]                                 ; $43eb: $fa $40 $7a
    ei                                            ; $43ee: $fb
    ld [$1cde], sp                                ; $43ef: $08 $de $1c
    or e                                          ; $43f2: $b3
    ld a, h                                       ; $43f3: $7c
    ld a, [bc]                                    ; $43f4: $0a
    db $ec                                        ; $43f5: $ec
    rla                                           ; $43f6: $17
    ld c, e                                       ; $43f7: $4b
    ld b, a                                       ; $43f8: $47
    jr jr_037_43cc                                ; $43f9: $18 $d1

    inc [hl]                                      ; $43fb: $34
    rlca                                          ; $43fc: $07
    inc hl                                        ; $43fd: $23
    call nc, Call_037_6100                        ; $43fe: $d4 $00 $61
    cp c                                          ; $4401: $b9
    add hl, de                                    ; $4402: $19
    pop de                                        ; $4403: $d1
    inc [hl]                                      ; $4404: $34
    rlca                                          ; $4405: $07
    inc hl                                        ; $4406: $23
    adc l                                         ; $4407: $8d
    jr jr_037_43a5                                ; $4408: $18 $9b

    db $dd                                        ; $440a: $dd
    adc h                                         ; $440b: $8c
    ld l, b                                       ; $440c: $68
    sbc d                                         ; $440d: $9a
    inc bc                                        ; $440e: $03
    call z, $aca0                                 ; $440f: $cc $a0 $ac
    push hl                                       ; $4412: $e5

jr_037_4413:
    ld h, [hl]                                    ; $4413: $66
    ld b, h                                       ; $4414: $44
    db $d3                                        ; $4415: $d3
    inc e                                         ; $4416: $1c
    ld c, h                                       ; $4417: $4c
    ld d, e                                       ; $4418: $53
    ld d, $a1                                     ; $4419: $16 $a1
    ld [$d210], a                                 ; $441b: $ea $10 $d2
    inc de                                        ; $441e: $13
    xor a                                         ; $441f: $af
    or [hl]                                       ; $4420: $b6
    ld [hl], h                                    ; $4421: $74
    add h                                         ; $4422: $84
    ld de, $734d                                  ; $4423: $11 $4d $73
    daa                                           ; $4426: $27
    ld a, h                                       ; $4427: $7c
    push bc                                       ; $4428: $c5
    ld e, d                                       ; $4429: $5a
    ld e, b                                       ; $442a: $58
    push bc                                       ; $442b: $c5

jr_037_442c:
    ld e, a                                       ; $442c: $5f
    ld c, $4c                                     ; $442d: $0e $4c
    cp $14                                        ; $442f: $fe $14
    ld h, l                                       ; $4431: $65
    ld c, c                                       ; $4432: $49
    db $fc                                        ; $4433: $fc
    ld e, c                                       ; $4434: $59
    ld [hl], d                                    ; $4435: $72
    or e                                          ; $4436: $b3
    ld e, h                                       ; $4437: $5c
    inc [hl]                                      ; $4438: $34
    xor [hl]                                      ; $4439: $ae
    adc $2d                                       ; $443a: $ce $2d
    ld sp, $8340                                  ; $443c: $31 $40 $83
    dec hl                                        ; $443f: $2b
    call z, $b301                                 ; $4440: $cc $01 $b3
    ld e, h                                       ; $4443: $5c
    inc [hl]                                      ; $4444: $34
    xor [hl]                                      ; $4445: $ae
    adc [hl]                                      ; $4446: $8e
    db $fc                                        ; $4447: $fc
    ld e, c                                       ; $4448: $59
    db $e4                                        ; $4449: $e4
    or e                                          ; $444a: $b3
    ld e, a                                       ; $444b: $5f
    db $10                                        ; $444c: $10
    ld h, h                                       ; $444d: $64
    ld d, [hl]                                    ; $444e: $56
    pop af                                        ; $444f: $f1
    sub a                                         ; $4450: $97
    inc bc                                        ; $4451: $03
    or e                                          ; $4452: $b3
    ld d, b                                       ; $4453: $50
    push bc                                       ; $4454: $c5
    rst $18                                       ; $4455: $df
    ei                                            ; $4456: $fb
    xor e                                         ; $4457: $ab
    ld e, c                                       ; $4458: $59
    push bc                                       ; $4459: $c5
    ld e, a                                       ; $445a: $5f
    ld c, $c9                                     ; $445b: $0e $c9
    ld e, a                                       ; $445d: $5f
    ld h, h                                       ; $445e: $64
    inc c                                         ; $445f: $0c
    or $84                                        ; $4460: $f6 $84
    xor a                                         ; $4462: $af
    ld e, b                                       ; $4463: $58
    dec bc                                        ; $4464: $0b
    jp nz, Jump_037_7367                          ; $4465: $c2 $67 $73

    or e                                          ; $4468: $b3
    ld e, a                                       ; $4469: $5f
    ld [hl], d                                    ; $446a: $72
    ld a, h                                       ; $446b: $7c
    ld l, d                                       ; $446c: $6a
    jp hl                                         ; $446d: $e9


    jr nc, jr_037_4413                            ; $446e: $30 $a3

    scf                                           ; $4470: $37
    rlca                                          ; $4471: $07
    inc hl                                        ; $4472: $23
    xor [hl]                                      ; $4473: $ae
    jp $c9d0                                      ; $4474: $c3 $d0 $c9


    and a                                         ; $4477: $a7
    sbc [hl]                                      ; $4478: $9e
    inc [hl]                                      ; $4479: $34
    rlca                                          ; $447a: $07
    call z, $5d77                                 ; $447b: $cc $77 $5d
    db $10                                        ; $447e: $10
    sbc e                                         ; $447f: $9b
    sub l                                         ; $4480: $95
    add hl, bc                                    ; $4481: $09
    ld e, a                                       ; $4482: $5f
    ld [hl], d                                    ; $4483: $72
    or e                                          ; $4484: $b3
    rst $00                                       ; $4485: $c7
    pop bc                                        ; $4486: $c1
    ld a, [hl+]                                   ; $4487: $2a
    db $ec                                        ; $4488: $ec
    db $e4                                        ; $4489: $e4
    sub e                                         ; $448a: $93
    ld c, [hl]                                    ; $448b: $4e
    ld a, [hl-]                                   ; $448c: $3a
    ld l, c                                       ; $448d: $69
    ld c, $43                                     ; $448e: $0e $43
    add hl, bc                                    ; $4490: $09
    ld [c], a                                     ; $4491: $e2
    jp nc, $ef41                                  ; $4492: $d2 $41 $ef

    ld c, d                                       ; $4495: $4a
    ret z                                         ; $4496: $c8

    and [hl]                                      ; $4497: $a6
    add hl, sp                                    ; $4498: $39
    jp $bd03                                      ; $4499: $c3 $03 $bd


    ld c, a                                       ; $449c: $4f
    ld b, c                                       ; $449d: $41
    ld c, $8c                                     ; $449e: $0e $8c
    ld b, $b9                                     ; $44a0: $06 $b9
    ld hl, sp+$6d                                 ; $44a2: $f8 $6d
    dec c                                         ; $44a4: $0d
    xor $30                                       ; $44a5: $ee $30
    pop af                                        ; $44a7: $f1
    xor $1a                                       ; $44a8: $ee $1a
    pop de                                        ; $44aa: $d1
    inc [hl]                                      ; $44ab: $34
    rlca                                          ; $44ac: $07
    ld c, c                                       ; $44ad: $49
    ld sp, $ff00                                  ; $44ae: $31 $00 $ff
    ret z                                         ; $44b1: $c8

    ld bc, $2da3                                  ; $44b2: $01 $a3 $2d
    add a                                         ; $44b5: $87
    add d                                         ; $44b6: $82
    inc e                                         ; $44b7: $1c
    ld b, e                                       ; $44b8: $43
    xor c                                         ; $44b9: $a9
    ld a, h                                       ; $44ba: $7c
    or l                                          ; $44bb: $b5
    adc $01                                       ; $44bc: $ce $01
    jp $3abe                                      ; $44be: $c3 $be $3a


    sub b                                         ; $44c1: $90
    ccf                                           ; $44c2: $3f
    ld a, [$f337]                                 ; $44c3: $fa $37 $f3
    cp [hl]                                       ; $44c6: $be
    xor a                                         ; $44c7: $af
    jr nz, jr_037_44d1                            ; $44c8: $20 $07

    ld c, h                                       ; $44ca: $4c
    ld hl, sp-$04                                 ; $44cb: $f8 $fc
    sbc c                                         ; $44cd: $99
    ld l, [hl]                                    ; $44ce: $6e
    rlca                                          ; $44cf: $07
    xor a                                         ; $44d0: $af

jr_037_44d1:
    and e                                         ; $44d1: $a3
    ld c, h                                       ; $44d2: $4c
    ld hl, sp-$04                                 ; $44d3: $f8 $fc
    sbc c                                         ; $44d5: $99
    ld [hl+], a                                   ; $44d6: $22
    ld a, a                                       ; $44d7: $7f
    ld [hl], a                                    ; $44d8: $77
    rst $00                                       ; $44d9: $c7
    and $73                                       ; $44da: $e6 $73
    rst $00                                       ; $44dc: $c7
    add d                                         ; $44dd: $82
    sub a                                         ; $44de: $97
    ld [$6fe4], sp                                ; $44df: $08 $e4 $6f
    ld [c], a                                     ; $44e2: $e2
    ld d, c                                       ; $44e3: $51
    adc d                                         ; $44e4: $8a
    ld c, $a6                                     ; $44e5: $0e $a6
    add hl, sp                                    ; $44e7: $39
    inc hl                                        ; $44e8: $23
    ld [de], a                                    ; $44e9: $12
    add hl, bc                                    ; $44ea: $09
    bit 2, a                                      ; $44eb: $cb $57
    sbc c                                         ; $44ed: $99
    scf                                           ; $44ee: $37
    rlca                                          ; $44ef: $07
    daa                                           ; $44f0: $27

jr_037_44f1:
    call c, $ef1d                                 ; $44f1: $dc $1d $ef
    sub d                                         ; $44f4: $92
    sbc l                                         ; $44f5: $9d
    jr c, jr_037_44f1                             ; $44f6: $38 $f9

    sub d                                         ; $44f8: $92
    call Call_037_4c01                            ; $44f9: $cd $01 $4c
    cp $e8                                        ; $44fc: $fe $e8
    rst $18                                       ; $44fe: $df
    call z, Call_037_4e4b                         ; $44ff: $cc $4b $4e
    ld a, h                                       ; $4502: $7c
    db $eb                                        ; $4503: $eb
    inc e                                         ; $4504: $1c
    jp $be4c                                      ; $4505: $c3 $4c $be


    cp [hl]                                       ; $4508: $be
    ld c, h                                       ; $4509: $4c
    call z, $c704                                 ; $450a: $cc $04 $c7
    and $cc                                       ; $450d: $e6 $cc
    and b                                         ; $450f: $a0
    xor h                                         ; $4510: $ac
    ld h, l                                       ; $4511: $65
    adc l                                         ; $4512: $8d
    dec e                                         ; $4513: $1d
    ld e, $fb                                     ; $4514: $1e $fb
    ld l, $d9                                     ; $4516: $2e $d9
    adc c                                         ; $4518: $89
    sub e                                         ; $4519: $93
    cpl                                           ; $451a: $2f
    reti                                          ; $451b: $d9


    inc e                                         ; $451c: $1c
    and e                                         ; $451d: $a3
    cpl                                           ; $451e: $2f
    ld c, d                                       ; $451f: $4a
    ldh [$5d], a                                  ; $4520: $e0 $5d
    add hl, bc                                    ; $4522: $09
    add hl, sp                                    ; $4523: $39
    rlca                                          ; $4524: $07
    ld b, e                                       ; $4525: $43
    ld sp, hl                                     ; $4526: $f9
    or l                                          ; $4527: $b5
    ld bc, $c8ea                                  ; $4528: $01 $ea $c8
    ld bc, $2943                                  ; $452b: $01 $43 $29
    sbc l                                         ; $452e: $9d
    sbc b                                         ; $452f: $98
    pop de                                        ; $4530: $d1
    ret z                                         ; $4531: $c8

    rst $18                                       ; $4532: $df
    pop af                                        ; $4533: $f1
    ld sp, hl                                     ; $4534: $f9
    ld l, l                                       ; $4535: $6d
    ld [c], a                                     ; $4536: $e2
    ld h, c                                       ; $4537: $61
    rst $10                                       ; $4538: $d7
    ld e, e                                       ; $4539: $5b
    ld l, a                                       ; $453a: $6f
    ld c, $4c                                     ; $453b: $0e $4c
    cp $ae                                        ; $453d: $fe $ae
    db $db                                        ; $453f: $db
    ld b, l                                       ; $4540: $45
    ret z                                         ; $4541: $c8

    ret c                                         ; $4542: $d8

    ret z                                         ; $4543: $c8

    sbc a                                         ; $4544: $9f
    ld [hl], e                                    ; $4545: $73

jr_037_4546:
    jp Jump_037_608c                              ; $4546: $c3 $8c $60


    jp hl                                         ; $4549: $e9


    jr nc, jr_037_4546                            ; $454a: $30 $fa

    pop de                                        ; $454c: $d1
    ld a, e                                       ; $454d: $7b
    ei                                            ; $454e: $fb
    ld a, [hl+]                                   ; $454f: $2a
    ld d, e                                       ; $4550: $53
    rst $00                                       ; $4551: $c7
    ld de, $2339                                  ; $4552: $11 $39 $23
    ld c, b                                       ; $4555: $48
    jp nz, $0e06                                  ; $4556: $c2 $06 $0e

    ld a, h                                       ; $4559: $7c
    inc b                                         ; $455a: $04
    add e                                         ; $455b: $83
    scf                                           ; $455c: $37
    rlca                                          ; $455d: $07
    inc hl                                        ; $455e: $23
    adc h                                         ; $455f: $8c
    ld l, b                                       ; $4560: $68
    ld a, d                                       ; $4561: $7a
    ld d, e                                       ; $4562: $53
    db $fc                                        ; $4563: $fc

jr_037_4564:
    ld a, c                                       ; $4564: $79
    ld [hl], e                                    ; $4565: $73
    or e                                          ; $4566: $b3
    db $fd                                        ; $4567: $fd
    sbc e                                         ; $4568: $9b
    inc b                                         ; $4569: $04
    sub b                                         ; $456a: $90
    daa                                           ; $456b: $27
    ld a, $e1                                     ; $456c: $3e $e1
    dec hl                                        ; $456e: $2b
    sub $82                                       ; $456f: $d6 $82
    sub b                                         ; $4571: $90
    ret z                                         ; $4572: $c8

    ld a, [hl-]                                   ; $4573: $3a
    rlca                                          ; $4574: $07
    ld c, c                                       ; $4575: $49
    pop hl                                        ; $4576: $e1
    ld c, $57                                     ; $4577: $0e $57
    call nc, $b64d                                ; $4579: $d4 $4d $b6
    cp [hl]                                       ; $457c: $be
    ld b, a                                       ; $457d: $47
    sub [hl]                                      ; $457e: $96
    inc bc                                        ; $457f: $03
    ld b, e                                       ; $4580: $43
    dec d                                         ; $4581: $15
    sbc $1d                                       ; $4582: $de $1d
    sbc b                                         ; $4584: $98
    inc bc                                        ; $4585: $03
    di                                            ; $4586: $f3
    add $45                                       ; $4587: $c6 $45
    dec c                                         ; $4589: $0d
    ld h, b                                       ; $458a: $60
    ld l, c                                       ; $458b: $69
    ld a, [c]                                     ; $458c: $f2
    ld b, a                                       ; $458d: $47
    rst $20                                       ; $458e: $e7
    inc hl                                        ; $458f: $23
    db $fc                                        ; $4590: $fc
    inc b                                         ; $4591: $04
    ld sp, hl                                     ; $4592: $f9
    ei                                            ; $4593: $fb
    adc d                                         ; $4594: $8a
    jr nc, jr_037_4564                            ; $4595: $30 $cd

    ld bc, $ae23                                  ; $4597: $01 $23 $ae
    ld b, a                                       ; $459a: $47
    sbc l                                         ; $459b: $9d
    inc bc                                        ; $459c: $03
    adc [hl]                                      ; $459d: $8e
    ld l, l                                       ; $459e: $6d
    or d                                          ; $459f: $b2
    ld a, d                                       ; $45a0: $7a
    sbc e                                         ; $45a1: $9b
    inc bc                                        ; $45a2: $03
    ld c, h                                       ; $45a3: $4c
    sub b                                         ; $45a4: $90
    xor a                                         ; $45a5: $af
    add $f1                                       ; $45a6: $c6 $f1
    ld [de], a                                    ; $45a8: $12
    sub $96                                       ; $45a9: $d6 $96
    inc e                                         ; $45ab: $1c
    and e                                         ; $45ac: $a3
    cp [hl]                                       ; $45ad: $be
    ret nz                                        ; $45ae: $c0

    sbc b                                         ; $45af: $98
    adc [hl]                                      ; $45b0: $8e
    cp d                                          ; $45b1: $ba
    ld b, $06                                     ; $45b2: $06 $06
    inc l                                         ; $45b4: $2c
    add hl, sp                                    ; $45b5: $39
    ld [hl], e                                    ; $45b6: $73
    rst $38                                       ; $45b7: $ff
    call z, $2038                                 ; $45b8: $cc $38 $20
    rst $10                                       ; $45bb: $d7
    ret nz                                        ; $45bc: $c0

    inc sp                                        ; $45bd: $33
    db $e4                                        ; $45be: $e4
    ld b, e                                       ; $45bf: $43
    add hl, hl                                    ; $45c0: $29
    cp b                                          ; $45c1: $b8
    ld c, h                                       ; $45c2: $4c
    cp $14                                        ; $45c3: $fe $14
    cp l                                          ; $45c5: $bd
    ret                                           ; $45c6: $c9


    cp a                                          ; $45c7: $bf
    ld a, a                                       ; $45c8: $7f
    nop                                           ; $45c9: $00
    rst $20                                       ; $45ca: $e7
    daa                                           ; $45cb: $27
    sub b                                         ; $45cc: $90
    ld hl, sp+$03                                 ; $45cd: $f8 $03
    ld [hl], a                                    ; $45cf: $77
    db $f4                                        ; $45d0: $f4
    rla                                           ; $45d1: $17
    or d                                          ; $45d2: $b2
    ld [hl], a                                    ; $45d3: $77
    ld [c], a                                     ; $45d4: $e2
    ld de, $c11f                                  ; $45d5: $11 $1f $c1
    sbc e                                         ; $45d8: $9b
    inc bc                                        ; $45d9: $03
    ld d, e                                       ; $45da: $53
    ld c, l                                       ; $45db: $4d
    ld a, [hl-]                                   ; $45dc: $3a
    pop af                                        ; $45dd: $f1
    jr z, jr_037_460f                             ; $45de: $28 $2f

    rst $30                                       ; $45e0: $f7
    call nz, Call_000_204c                        ; $45e1: $c4 $4c $20
    pop af                                        ; $45e4: $f1
    ld e, e                                       ; $45e5: $5b
    ld c, $b3                                     ; $45e6: $0e $b3
    ld e, c                                       ; $45e8: $59
    pop af                                        ; $45e9: $f1
    rlca                                          ; $45ea: $07
    db $ec                                        ; $45eb: $ec
    and a                                         ; $45ec: $a7
    db $f4                                        ; $45ed: $f4
    ld e, d                                       ; $45ee: $5a
    call z, $a301                                 ; $45ef: $cc $01 $a3
    dec e                                         ; $45f2: $1d
    ld l, a                                       ; $45f3: $6f
    ccf                                           ; $45f4: $3f
    ld a, a                                       ; $45f5: $7f
    add b                                         ; $45f6: $80
    sbc c                                         ; $45f7: $99
    sub c                                         ; $45f8: $91
    ccf                                           ; $45f9: $3f
    rst $28                                       ; $45fa: $ef
    dec l                                         ; $45fb: $2d
    rlca                                          ; $45fc: $07
    ret                                           ; $45fd: $c9


    ccf                                           ; $45fe: $3f
    sub e                                         ; $45ff: $93
    ret nc                                        ; $4600: $d0

    ld e, b                                       ; $4601: $58
    ld h, $7f                                     ; $4602: $26 $7f
    ld hl, $0e47                                  ; $4604: $21 $47 $0e
    ld c, c                                       ; $4607: $49
    sub [hl]                                      ; $4608: $96
    ld [hl-], a                                   ; $4609: $32
    pop bc                                        ; $460a: $c1
    or c                                          ; $460b: $b1
    push de                                       ; $460c: $d5
    sub [hl]                                      ; $460d: $96
    adc [hl]                                      ; $460e: $8e

jr_037_460f:
    halt                                          ; $460f: $76
    and b                                         ; $4610: $a0
    scf                                           ; $4611: $37
    rlca                                          ; $4612: $07
    jp Jump_037_7625                              ; $4613: $c3 $25 $76


jr_037_4616:
    dec l                                         ; $4616: $2d
    ld b, a                                       ; $4617: $47
    ldh a, [$97]                                  ; $4618: $f0 $97
    inc bc                                        ; $461a: $03
    daa                                           ; $461b: $27
    jr z, jr_037_4616                             ; $461c: $28 $f8

    ldh [$a5], a                                  ; $461e: $e0 $a5
    ld a, $3d                                     ; $4620: $3e $3d
    ld l, [hl]                                    ; $4622: $6e
    rst $10                                       ; $4623: $d7
    and $b3                                       ; $4624: $e6 $b3
    ret nc                                        ; $4626: $d0

    or c                                          ; $4627: $b1
    pop bc                                        ; $4628: $c1
    add hl, sp                                    ; $4629: $39
    or e                                          ; $462a: $b3
    ret nc                                        ; $462b: $d0

    ld [hl], b                                    ; $462c: $70
    and $d5                                       ; $462d: $e6 $d5
    sub [hl]                                      ; $462f: $96
    ld [hl-], a                                   ; $4630: $32
    ld sp, hl                                     ; $4631: $f9
    and e                                         ; $4632: $a3
    inc h                                         ; $4633: $24
    ld b, h                                       ; $4634: $44
    db $d3                                        ; $4635: $d3
    inc e                                         ; $4636: $1c
    call z, Call_000_37e0                         ; $4637: $cc $e0 $37
    db $d3                                        ; $463a: $d3
    inc e                                         ; $463b: $1c
    ret                                           ; $463c: $c9


    ld c, $ea                                     ; $463d: $0e $ea
    push de                                       ; $463f: $d5
    sub [hl]                                      ; $4640: $96
    adc $a2                                       ; $4641: $ce $a2
    or $e6                                        ; $4643: $f6 $e6
    inc e                                         ; $4645: $1c
    ld [hl], e                                    ; $4646: $73
    ld a, a                                       ; $4647: $7f
    ld e, c                                       ; $4648: $59
    ld [hl], l                                    ; $4649: $75
    cp h                                          ; $464a: $bc
    cp a                                          ; $464b: $bf
    ld e, c                                       ; $464c: $59
    ld c, $23                                     ; $464d: $0e $23
    cp [hl]                                       ; $464f: $be
    add b                                         ; $4650: $80
    rst $30                                       ; $4651: $f7
    halt                                          ; $4652: $76
    dec e                                         ; $4653: $1d
    ld l, h                                       ; $4654: $6c
    db $ec                                        ; $4655: $ec
    add a                                         ; $4656: $87
    cp b                                          ; $4657: $b8
    ld [hl], $07                                  ; $4658: $36 $07
    ld c, c                                       ; $465a: $49

Jump_037_465b:
    xor d                                         ; $465b: $aa
    xor h                                         ; $465c: $ac
    ld sp, $0c80                                  ; $465d: $31 $80 $0c
    cp l                                          ; $4660: $bd
    add hl, sp                                    ; $4661: $39
    sub $65                                       ; $4662: $d6 $65
    ld [hl], h                                    ; $4664: $74
    and $45                                       ; $4665: $e6 $45
    ld c, b                                       ; $4667: $48
    ld e, h                                       ; $4668: $5c
    db $ed                                        ; $4669: $ed
    ld hl, $2339                                  ; $466a: $21 $39 $23
    cp [hl]                                       ; $466d: $be
    add b                                         ; $466e: $80
    or a                                          ; $466f: $b7
    xor h                                         ; $4670: $ac
    add l                                         ; $4671: $85
    db $f4                                        ; $4672: $f4
    ld c, $b0                                     ; $4673: $0e $b0
    inc [hl]                                      ; $4675: $34
    reti                                          ; $4676: $d9


    and a                                         ; $4677: $a7
    ld a, e                                       ; $4678: $7b
    dec sp                                        ; $4679: $3b
    ld d, c                                       ; $467a: $51
    ld c, a                                       ; $467b: $4f
    ld hl, sp-$76                                 ; $467c: $f8 $8a
    or l                                          ; $467e: $b5
    ld e, b                                       ; $467f: $58
    ld [hl], d                                    ; $4680: $72
    adc h                                         ; $4681: $8c
    adc $bc                                       ; $4682: $ce $bc
    ld [$757f], sp                                ; $4684: $08 $7f $75
    rlca                                          ; $4687: $07
    dec l                                         ; $4688: $2d
    ld [hl], a                                    ; $4689: $77
    xor a                                         ; $468a: $af
    or $ce                                        ; $468b: $f6 $ce
    sbc b                                         ; $468d: $98
    inc bc                                        ; $468e: $03
    and a                                         ; $468f: $a7
    rst $08                                       ; $4690: $cf
    inc [hl]                                      ; $4691: $34
    ld e, c                                       ; $4692: $59
    ld [hl], e                                    ; $4693: $73
    or e                                          ; $4694: $b3
    rlca                                          ; $4695: $07
    ld a, a                                       ; $4696: $7f
    add b                                         ; $4697: $80
    dec e                                         ; $4698: $1d
    ld hl, sp-$78                                 ; $4699: $f8 $88
    ld h, c                                       ; $469b: $61
    add c                                         ; $469c: $81
    ld hl, $4939                                  ; $469d: $21 $39 $49
    xor d                                         ; $46a0: $aa
    or a                                          ; $46a1: $b7
    cp a                                          ; $46a2: $bf
    adc e                                         ; $46a3: $8b
    ret nc                                        ; $46a4: $d0

    ld a, b                                       ; $46a5: $78
    db $db                                        ; $46a6: $db
    ld d, l                                       ; $46a7: $55
    db $db                                        ; $46a8: $db
    ld b, c                                       ; $46a9: $41
    set 3, l                                      ; $46aa: $cb $dd
    xor e                                         ; $46ac: $ab
    cp l                                          ; $46ad: $bd
    ld b, e                                       ; $46ae: $43
    ld [hl], d                                    ; $46af: $72
    ld c, c                                       ; $46b0: $49
    ld b, d                                       ; $46b1: $42

Jump_037_46b2:
    ld [c], a                                     ; $46b2: $e2
    scf                                           ; $46b3: $37
    rst $10                                       ; $46b4: $d7
    or c                                          ; $46b5: $b1
    sbc $8e                                       ; $46b6: $de $8e
    ret c                                         ; $46b8: $d8

    ld l, e                                       ; $46b9: $6b
    add b                                         ; $46ba: $80
    jr c, jr_037_4714                             ; $46bb: $38 $57

    dec e                                         ; $46bd: $1d
    cp l                                          ; $46be: $bd
    dec sp                                        ; $46bf: $3b
    ret nz                                        ; $46c0: $c0

    ld b, d                                       ; $46c1: $42
    ld d, [hl]                                    ; $46c2: $56
    rst $00                                       ; $46c3: $c7
    rst $20                                       ; $46c4: $e7
    rst $08                                       ; $46c5: $cf
    sbc e                                         ; $46c6: $9b
    and $c9                                       ; $46c7: $e6 $c9
    ld e, a                                       ; $46c9: $5f
    ld h, h                                       ; $46ca: $64
    ld c, h                                       ; $46cb: $4c
    dec l                                         ; $46cc: $2d
    cpl                                           ; $46cd: $2f
    sub c                                         ; $46ce: $91
    ld b, d                                       ; $46cf: $42
    ld h, a                                       ; $46d0: $67
    sbc d                                         ; $46d1: $9a
    xor h                                         ; $46d2: $ac
    ld c, c                                       ; $46d3: $49
    ld c, d                                       ; $46d4: $4a
    ld hl, sp+$7b                                 ; $46d5: $f8 $7b
    sbc a                                         ; $46d7: $9f
    add d                                         ; $46d8: $82
    rlca                                          ; $46d9: $07
    call nc, Call_037_60de                        ; $46da: $d4 $de $60
    ld [bc], a                                    ; $46dd: $02
    ld c, a                                       ; $46de: $4f
    sbc b                                         ; $46df: $98
    and $c9                                       ; $46e0: $e6 $c9
    ld e, a                                       ; $46e2: $5f
    ld h, h                                       ; $46e3: $64
    ld c, h                                       ; $46e4: $4c
    dec l                                         ; $46e5: $2d
    cpl                                           ; $46e6: $2f
    sub c                                         ; $46e7: $91
    ld b, d                                       ; $46e8: $42
    ld h, a                                       ; $46e9: $67
    sbc d                                         ; $46ea: $9a
    xor h                                         ; $46eb: $ac
    inc hl                                        ; $46ec: $23
    ld a, a                                       ; $46ed: $7f
    ld d, $1e                                     ; $46ee: $16 $1e
    ld d, b                                       ; $46f0: $50
    ld a, e                                       ; $46f1: $7b
    add e                                         ; $46f2: $83
    add hl, bc                                    ; $46f3: $09
    inc a                                         ; $46f4: $3c
    ld h, c                                       ; $46f5: $61
    sbc d                                         ; $46f6: $9a
    inc bc                                        ; $46f7: $03
    inc hl                                        ; $46f8: $23
    rst $38                                       ; $46f9: $ff
    ld d, $7f                                     ; $46fa: $16 $7f
    ld b, $e7                                     ; $46fc: $06 $e7
    ld a, [de]                                    ; $46fe: $1a
    dec sp                                        ; $46ff: $3b
    ld l, b                                       ; $4700: $68
    and c                                         ; $4701: $a1
    ld h, c                                       ; $4702: $61
    add c                                         ; $4703: $81
    ld l, [hl]                                    ; $4704: $6e
    ld hl, sp-$08                                 ; $4705: $f8 $f8
    inc d                                         ; $4707: $14
    adc e                                         ; $4708: $8b
    adc [hl]                                      ; $4709: $8e
    push af                                       ; $470a: $f5
    sub [hl]                                      ; $470b: $96
    pop de                                        ; $470c: $d1
    ret z                                         ; $470d: $c8

    rst $18                                       ; $470e: $df
    pop af                                        ; $470f: $f1
    ld sp, hl                                     ; $4710: $f9
    ld l, l                                       ; $4711: $6d
    ld c, b                                       ; $4712: $48
    dec sp                                        ; $4713: $3b

jr_037_4714:
    pop bc                                        ; $4714: $c1
    ld b, h                                       ; $4715: $44
    inc sp                                        ; $4716: $33
    ld c, l                                       ; $4717: $4d
    ld d, [hl]                                    ; $4718: $56
    and $a8                                       ; $4719: $e6 $a8
    add hl, bc                                    ; $471b: $09
    ld [hl], e                                    ; $471c: $73
    jp Jump_037_688c                              ; $471d: $c3 $8c $68


jr_037_4720:
    jp hl                                         ; $4720: $e9


    and a                                         ; $4721: $a7
    ret c                                         ; $4722: $d8

    ld d, e                                       ; $4723: $53
    xor l                                         ; $4724: $ad
    dec l                                         ; $4725: $2d
    dec e                                         ; $4726: $1d
    ld b, c                                       ; $4727: $41
    ld [de], a                                    ; $4728: $12
    ld [hl], $f0                                  ; $4729: $36 $f0
    and [hl]                                      ; $472b: $a6
    ld hl, sp-$0d                                 ; $472c: $f8 $f3
    ld c, $69                                     ; $472e: $0e $69
    daa                                           ; $4730: $27
    sbc b                                         ; $4731: $98
    ld l, b                                       ; $4732: $68
    and [hl]                                      ; $4733: $a6
    ret                                           ; $4734: $c9


    jp z, Jump_000_351c                           ; $4735: $ca $1c $35

    ld h, c                                       ; $4738: $61
    ld c, $cc                                     ; $4739: $0e $cc
    xor e                                         ; $473b: $ab
    call nc, Call_037_66fc                        ; $473c: $d4 $fc $66
    jp hl                                         ; $473f: $e9


    call nz, $bfd5                                ; $4740: $c4 $d5 $bf
    inc l                                         ; $4743: $2c
    ld [hl], l                                    ; $4744: $75
    or b                                          ; $4745: $b0
    ret nc                                        ; $4746: $d0

Jump_037_4747:
    sbc e                                         ; $4747: $9b
    ld h, e                                       ; $4748: $63
    dec sp                                        ; $4749: $3b
    ld b, d                                       ; $474a: $42
    ld c, b                                       ; $474b: $48
    add a                                         ; $474c: $87
    ld l, c                                       ; $474d: $69
    ld c, c                                       ; $474e: $49
    xor h                                         ; $474f: $ac
    ld b, h                                       ; $4750: $44
    ld [hl], $a4                                  ; $4751: $36 $a4
    sbc l                                         ; $4753: $9d
    ld h, b                                       ; $4754: $60
    and d                                         ; $4755: $a2
    sbc c                                         ; $4756: $99
    ld h, $2b                                     ; $4757: $26 $2b
    ld [hl], e                                    ; $4759: $73
    call nc, Call_000_3984                        ; $475a: $d4 $84 $39
    ld c, c                                       ; $475d: $49
    sub [hl]                                      ; $475e: $96
    ld [hl-], a                                   ; $475f: $32
    ld a, [de]                                    ; $4760: $1a
    ld sp, hl                                     ; $4761: $f9
    dec sp                                        ; $4762: $3b
    ld a, $bf                                     ; $4763: $3e $bf
    dec [hl]                                      ; $4765: $35
    db $10                                        ; $4766: $10
    ld [$7258], a                                 ; $4767: $ea $58 $72
    ld h, h                                       ; $476a: $64
    ld e, a                                       ; $476b: $5f
    jr nz, jr_037_4720                            ; $476c: $20 $b2

    ld hl, $04ed                                  ; $476e: $21 $ed $04
    inc de                                        ; $4771: $13
    call $5934                                    ; $4772: $cd $34 $59
    sbc c                                         ; $4775: $99
    and e                                         ; $4776: $a3
    ld h, $cc                                     ; $4777: $26 $cc
    ld bc, $1f49                                  ; $4779: $01 $49 $1f
    dec sp                                        ; $477c: $3b
    call z, $3e08                                 ; $477d: $cc $08 $3e
    rst $30                                       ; $4780: $f7
    cp $b1                                        ; $4781: $fe $b1
    pop bc                                        ; $4783: $c1
    ld e, a                                       ; $4784: $5f
    ld c, a                                       ; $4785: $4f
    ld [hl], l                                    ; $4786: $75
    inc sp                                        ; $4787: $33
    ld h, a                                       ; $4788: $67
    ld b, [hl]                                    ; $4789: $46
    db $f4                                        ; $478a: $f4
    or $7d                                        ; $478b: $f6 $7d
    sub $43                                       ; $478d: $d6 $43
    ld a, [hl-]                                   ; $478f: $3a
    pop bc                                        ; $4790: $c1
    ld b, h                                       ; $4791: $44
    inc sp                                        ; $4792: $33
    ld c, l                                       ; $4793: $4d
    sub $a4                                       ; $4794: $d6 $a4
    ld d, c                                       ; $4796: $51
    inc de                                        ; $4797: $13
    and $49                                       ; $4798: $e6 $49
    rra                                           ; $479a: $1f
    dec sp                                        ; $479b: $3b
    call z, $3e08                                 ; $479c: $cc $08 $3e
    rst $30                                       ; $479f: $f7
    cp $b1                                        ; $47a0: $fe $b1
    pop bc                                        ; $47a2: $c1
    ld e, a                                       ; $47a3: $5f
    ld c, a                                       ; $47a4: $4f
    ld [hl], l                                    ; $47a5: $75
    inc sp                                        ; $47a6: $33
    ld h, a                                       ; $47a7: $67
    ld b, [hl]                                    ; $47a8: $46
    db $f4                                        ; $47a9: $f4
    or $7d                                        ; $47aa: $f6 $7d
    sub $43                                       ; $47ac: $d6 $43
    ld a, [hl-]                                   ; $47ae: $3a
    pop bc                                        ; $47af: $c1
    ld b, h                                       ; $47b0: $44
    inc sp                                        ; $47b1: $33
    ld c, l                                       ; $47b2: $4d
    sub $a4                                       ; $47b3: $d6 $a4
    ld d, c                                       ; $47b5: $51
    inc de                                        ; $47b6: $13
    and $b3                                       ; $47b7: $e6 $b3
    cp $1c                                        ; $47b9: $fe $1c
    or e                                          ; $47bb: $b3
    dec sp                                        ; $47bc: $3b
    ld [hl], $07                                  ; $47bd: $36 $07
    ld l, l                                       ; $47bf: $6d
    dec sp                                        ; $47c0: $3b
    db $d3                                        ; $47c1: $d3
    ld h, h                                       ; $47c2: $64
    ld h, l                                       ; $47c3: $65
    ld a, [c]                                     ; $47c4: $f2
    inc e                                         ; $47c5: $1c
    ld c, h                                       ; $47c6: $4c
    sbc [hl]                                      ; $47c7: $9e
    inc bc                                        ; $47c8: $03
    inc hl                                        ; $47c9: $23
    cp [hl]                                       ; $47ca: $be
    ld [hl+], a                                   ; $47cb: $22
    cp h                                          ; $47cc: $bc
    add hl, sp                                    ; $47cd: $39
    di                                            ; $47ce: $f3
    ld e, d                                       ; $47cf: $5a
    ld l, [hl]                                    ; $47d0: $6e
    ld e, a                                       ; $47d1: $5f
    ld de, $1cde                                  ; $47d2: $11 $de $1c
    ld b, e                                       ; $47d5: $43
    dec d                                         ; $47d6: $15
    ld h, [hl]                                    ; $47d7: $66
    ld a, a                                       ; $47d8: $7f
    or e                                          ; $47d9: $b3
    inc e                                         ; $47da: $1c
    inc hl                                        ; $47db: $23
    adc h                                         ; $47dc: $8c
    ld l, b                                       ; $47dd: $68
    sbc d                                         ; $47de: $9a
    add hl, de                                    ; $47df: $19
    ld sp, hl                                     ; $47e0: $f9
    ld c, e                                       ; $47e1: $4b
    inc h                                         ; $47e2: $24
    and b                                         ; $47e3: $a0
    and e                                         ; $47e4: $a3
    ld l, $f8                                     ; $47e5: $2e $f8
    sbc c                                         ; $47e7: $99
    ld sp, $a307                                  ; $47e8: $31 $07 $a3
    add e                                         ; $47eb: $83
    jp nc, Jump_037_75db                          ; $47ec: $d2 $db $75

    inc e                                         ; $47ef: $1c
    sbc $c6                                       ; $47f0: $de $c6
    pop de                                        ; $47f2: $d1
    ld de, $3446                                  ; $47f3: $11 $46 $34
    call $fc8c                                    ; $47f6: $cd $8c $fc
    dec h                                         ; $47f9: $25
    ld [de], a                                    ; $47fa: $12
    ret nc                                        ; $47fb: $d0

    ld d, c                                       ; $47fc: $51
    rla                                           ; $47fd: $17
    db $fc                                        ; $47fe: $fc
    call z, $e698                                 ; $47ff: $cc $98 $e6
    and e                                         ; $4802: $a3
    ld b, e                                       ; $4803: $43
    adc d                                         ; $4804: $8a
    or c                                          ; $4805: $b1
    cp d                                          ; $4806: $ba
    ld [hl], c                                    ; $4807: $71
    inc e                                         ; $4808: $1c
    sub [hl]                                      ; $4809: $96
    cp $ad                                        ; $480a: $fe $ad
    ld h, e                                       ; $480c: $63
    ld a, l                                       ; $480d: $7d
    inc [hl]                                      ; $480e: $34
    ld d, e                                       ; $480f: $53
    ldh [$2d], a                                  ; $4810: $e0 $2d
    and e                                         ; $4812: $a3
    sub c                                         ; $4813: $91
    cp a                                          ; $4814: $bf
    ld b, h                                       ; $4815: $44
    ld [bc], a                                    ; $4816: $02
    ld a, [de]                                    ; $4817: $1a
    dec bc                                        ; $4818: $0b
    ld d, $23                                     ; $4819: $16 $23
    add [hl]                                      ; $481b: $86
    dec b                                         ; $481c: $05
    jp nc, $cc1c                                  ; $481d: $d2 $1c $cc

    ld [hl], b                                    ; $4820: $70
    rst $28                                       ; $4821: $ef
    and h                                         ; $4822: $a4
    ld b, l                                       ; $4823: $45
    cp $bc                                        ; $4824: $fe $bc
    ld h, l                                       ; $4826: $65
    inc bc                                        ; $4827: $03
    ret nz                                        ; $4828: $c0

    inc sp                                        ; $4829: $33
    or [hl]                                       ; $482a: $b6
    add hl, sp                                    ; $482b: $39

jr_037_482c:
    jp $dd63                                      ; $482c: $c3 $63 $dd


    ld c, h                                       ; $482f: $4c
    add c                                         ; $4830: $81
    dec sp                                        ; $4831: $3b
    ld a, [$9a3f]                                 ; $4832: $fa $3f $9a
    sub [hl]                                      ; $4835: $96
    ld a, c                                       ; $4836: $79
    dec l                                         ; $4837: $2d
    ld b, d                                       ; $4838: $42
    rst $30                                       ; $4839: $f7
    ld [c], a                                     ; $483a: $e2
    xor a                                         ; $483b: $af
    add [hl]                                      ; $483c: $86
    ei                                            ; $483d: $fb
    rst $00                                       ; $483e: $c7
    add hl, de                                    ; $483f: $19
    ld [hl], e                                    ; $4840: $73
    ld c, h                                       ; $4841: $4c
    cp $be                                        ; $4842: $fe $be
    halt                                          ; $4844: $76
    ld e, d                                       ; $4845: $5a
    and $b5                                       ; $4846: $e6 $b5
    ld [$8bdd], sp                                ; $4848: $08 $dd $8b
    cp a                                          ; $484b: $bf
    ld a, [de]                                    ; $484c: $1a
    xor $1f                                       ; $484d: $ee $1f
    ld h, a                                       ; $484f: $67
    call z, Call_037_4901                         ; $4850: $cc $01 $49
    ld h, c                                       ; $4853: $61
    or h                                          ; $4854: $b4
    ld [hl], h                                    ; $4855: $74
    add h                                         ; $4856: $84
    ld de, $7b4d                                  ; $4857: $11 $4d $7b
    cp e                                          ; $485a: $bb
    db $10                                        ; $485b: $10
    inc c                                         ; $485c: $0c
    sbc l                                         ; $485d: $9d
    ld l, c                                       ; $485e: $69
    or d                                          ; $485f: $b2
    ld [hl-], a                                   ; $4860: $32
    ld a, c                                       ; $4861: $79
    sbc d                                         ; $4862: $9a
    inc bc                                        ; $4863: $03
    ld c, c                                       ; $4864: $49
    cp a                                          ; $4865: $bf
    sub [hl]                                      ; $4866: $96
    ld [hl+], a                                   ; $4867: $22
    ld a, a                                       ; $4868: $7f
    rst $10                                       ; $4869: $d7
    ld [hl], $33                                  ; $486a: $36 $33
    dec hl                                        ; $486c: $2b
    ld e, a                                       ; $486d: $5f
    pop af                                        ; $486e: $f1
    rlca                                          ; $486f: $07
    dec c                                         ; $4870: $0d
    add h                                         ; $4871: $84
    ld [hl], e                                    ; $4872: $73
    rlca                                          ; $4873: $07
    dec l                                         ; $4874: $2d
    or a                                          ; $4875: $b7
    xor a                                         ; $4876: $af
    ld [$f837], sp                                ; $4877: $08 $37 $f8
    ld l, e                                       ; $487a: $6b
    cp h                                          ; $487b: $bc
    dec l                                         ; $487c: $2d
    ld b, c                                       ; $487d: $41
    sub d                                         ; $487e: $92
    adc $34                                       ; $487f: $ce $34
    ld e, c                                       ; $4881: $59
    sbc c                                         ; $4882: $99
    inc a                                         ; $4883: $3c
    call $2301                                    ; $4884: $cd $01 $23
    xor [hl]                                      ; $4887: $ae
    db $e3                                        ; $4888: $e3
    ldh a, [$f6]                                  ; $4889: $f0 $f6
    ld e, $d2                                     ; $488b: $1e $d2
    ld e, b                                       ; $488d: $58
    inc l                                         ; $488e: $2c
    and e                                         ; $488f: $a3
    sub c                                         ; $4890: $91
    cp a                                          ; $4891: $bf
    ld b, h                                       ; $4892: $44
    ld [bc], a                                    ; $4893: $02
    ld h, [hl]                                    ; $4894: $66
    call z, $cc01                                 ; $4895: $cc $01 $cc
    ld [hl], b                                    ; $4898: $70
    rlca                                          ; $4899: $07
    dec l                                         ; $489a: $2d
    inc b                                         ; $489b: $04
    add hl, hl                                    ; $489c: $29
    di                                            ; $489d: $f3
    halt                                          ; $489e: $76
    add e                                         ; $489f: $83
    ccf                                           ; $48a0: $3f
    jr z, jr_037_482c                             ; $48a1: $28 $89

    or l                                          ; $48a3: $b5
    ld d, h                                       ; $48a4: $54
    add a                                         ; $48a5: $87
    cp e                                          ; $48a6: $bb
    ld h, e                                       ; $48a7: $63
    ld b, e                                       ; $48a8: $43
    ld h, h                                       ; $48a9: $64
    sbc $12                                       ; $48aa: $de $12
    or c                                          ; $48ac: $b1
    ld a, a                                       ; $48ad: $7f
    ret                                           ; $48ae: $c9


jr_037_48af:
    ld h, c                                       ; $48af: $61
    ld c, d                                       ; $48b0: $4a
    cp l                                          ; $48b1: $bd
    dec e                                         ; $48b2: $1d
    add hl, de                                    ; $48b3: $19
    nop                                           ; $48b4: $00
    and [hl]                                      ; $48b5: $a6
    ld l, c                                       ; $48b6: $69
    ld c, $73                                     ; $48b7: $0e $73
    xor d                                         ; $48b9: $aa
    rst $08                                       ; $48ba: $cf
    ld l, a                                       ; $48bb: $6f
    ld hl, sp+$29                                 ; $48bc: $f8 $29
    ld l, e                                       ; $48be: $6b
    pop bc                                        ; $48bf: $c1
    ld c, $1d                                     ; $48c0: $0e $1d
    cp b                                          ; $48c2: $b8
    ldh [$f9], a                                  ; $48c3: $e0 $f9
    and $1c                                       ; $48c5: $e6 $1c
    and e                                         ; $48c7: $a3
    ld b, e                                       ; $48c8: $43
    ld a, [$eb3e]                                 ; $48c9: $fa $3e $eb
    ld l, l                                       ; $48cc: $6d
    inc e                                         ; $48cd: $1c
    dec e                                         ; $48ce: $1d
    ld a, c                                       ; $48cf: $79
    dec e                                         ; $48d0: $1d
    ld e, [hl]                                    ; $48d1: $5e
    add sp, $06                                   ; $48d2: $e8 $06
    ld a, a                                       ; $48d4: $7f
    ld d, b                                       ; $48d5: $50
    cp h                                          ; $48d6: $bc
    ld a, [hl-]                                   ; $48d7: $3a
    jr @-$58                                      ; $48d8: $18 $a6

    db $fd                                        ; $48da: $fd
    adc d                                         ; $48db: $8a
    add sp, $6c                                   ; $48dc: $e8 $6c
    ccf                                           ; $48de: $3f
    or e                                          ; $48df: $b3
    inc [hl]                                      ; $48e0: $34
    ld c, l                                       ; $48e1: $4d
    db $d3                                        ; $48e2: $d3
    inc e                                         ; $48e3: $1c
    and e                                         ; $48e4: $a3
    ccf                                           ; $48e5: $3f
    or $18                                        ; $48e6: $f6 $18
    sbc e                                         ; $48e8: $9b
    ccf                                           ; $48e9: $3f
    ldh a, [$96]                                  ; $48ea: $f0 $96
    add hl, de                                    ; $48ec: $19
    xor $a0                                       ; $48ed: $ee $a0
    push hl                                       ; $48ef: $e5
    or $15                                        ; $48f0: $f6 $15
    pop hl                                        ; $48f2: $e1
    sbc l                                         ; $48f3: $9d
    ld sp, $a307                                  ; $48f4: $31 $07 $a3
    ld b, e                                       ; $48f7: $43
    ld a, [$eb3e]                                 ; $48f8: $fa $3e $eb
    ld l, l                                       ; $48fb: $6d
    inc e                                         ; $48fc: $1c
    dec e                                         ; $48fd: $1d
    ld a, c                                       ; $48fe: $79
    dec e                                         ; $48ff: $1d
    ld e, [hl]                                    ; $4900: $5e

Call_037_4901:
    add sp, $06                                   ; $4901: $e8 $06
    ld a, a                                       ; $4903: $7f
    ld d, b                                       ; $4904: $50
    cp h                                          ; $4905: $bc
    ld a, [hl-]                                   ; $4906: $3a
    jr jr_037_48af                                ; $4907: $18 $a6

    db $fd                                        ; $4909: $fd
    adc d                                         ; $490a: $8a
    add sp, $6c                                   ; $490b: $e8 $6c
    ccf                                           ; $490d: $3f
    or e                                          ; $490e: $b3
    inc [hl]                                      ; $490f: $34
    ld c, l                                       ; $4910: $4d
    db $d3                                        ; $4911: $d3
    inc e                                         ; $4912: $1c
    add hl, bc                                    ; $4913: $09
    db $fc                                        ; $4914: $fc
    push af                                       ; $4915: $f5
    ld c, [hl]                                    ; $4916: $4e
    ld e, d                                       ; $4917: $5a
    db $e4                                        ; $4918: $e4
    rrca                                          ; $4919: $0f
    ld a, h                                       ; $491a: $7c
    ld l, [hl]                                    ; $491b: $6e

Jump_037_491c:
    ldh a, [$d7]                                  ; $491c: $f0 $d7
    sub a                                         ; $491e: $97
    ld [$dee0], sp                                ; $491f: $08 $e0 $de
    ccf                                           ; $4922: $3f
    sbc [hl]                                      ; $4923: $9e
    xor e                                         ; $4924: $ab
    ccf                                           ; $4925: $3f
    ld h, d                                       ; $4926: $62
    add e                                         ; $4927: $83
    cp a                                          ; $4928: $bf
    ld h, $bc                                     ; $4929: $26 $bc
    push af                                       ; $492b: $f5
    halt                                          ; $492c: $76
    ret nc                                        ; $492d: $d0

    ld [hl], d                                    ; $492e: $72
    ei                                            ; $492f: $fb
    adc d                                         ; $4930: $8a
    ldh a, [$f6]                                  ; $4931: $f0 $f6
    ld [hl], $f6                                  ; $4933: $36 $f6
    ld l, $38                                     ; $4935: $2e $38
    call Call_037_4c01                            ; $4937: $cd $01 $4c
    cp $be                                        ; $493a: $fe $be

jr_037_493c:
    halt                                          ; $493c: $76
    jp c, Jump_037_5893                           ; $493d: $da $93 $58

    dec bc                                        ; $4940: $0b
    ld [hl], l                                    ; $4941: $75
    and $2d                                       ; $4942: $e6 $2d
    inc sp                                        ; $4944: $33
    ld e, h                                       ; $4945: $5c
    ld h, e                                       ; $4946: $63
    ld sp, $abf8                                  ; $4947: $31 $f8 $ab
    cp [hl]                                       ; $494a: $be
    ld hl, sp-$15                                 ; $494b: $f8 $eb
    ld e, [hl]                                    ; $494d: $5e
    db $fc                                        ; $494e: $fc
    push af                                       ; $494f: $f5
    ld hl, sp-$4c                                 ; $4950: $f8 $b4
    inc h                                         ; $4952: $24
    sub $42                                       ; $4953: $d6 $42
    sbc l                                         ; $4955: $9d
    ld a, c                                       ; $4956: $79
    ld h, a                                       ; $4957: $67
    call z, Call_037_4901                         ; $4958: $cc $01 $49
    sub [hl]                                      ; $495b: $96
    adc [hl]                                      ; $495c: $8e
    ld [de], a                                    ; $495d: $12
    rlca                                          ; $495e: $07
    sub [hl]                                      ; $495f: $96
    dec [hl]                                      ; $4960: $35
    ld c, b                                       ; $4961: $48
    ld h, d                                       ; $4962: $62
    ld b, $c5                                     ; $4963: $06 $c5
    ld l, e                                       ; $4965: $6b
    ld de, $99da                                  ; $4966: $11 $da $99
    ld h, $2b                                     ; $4969: $26 $2b
    sub e                                         ; $496b: $93
    and a                                         ; $496c: $a7
    add hl, sp                                    ; $496d: $39
    ld c, c                                       ; $496e: $49
    pop hl                                        ; $496f: $e1
    adc [hl]                                      ; $4970: $8e
    cp $e2                                        ; $4971: $fe $e2
    ld b, $42                                     ; $4973: $06 $42
    scf                                           ; $4975: $37
    ld hl, sp-$7d                                 ; $4976: $f8 $83
    ld e, $7e                                     ; $4978: $1e $7e
    jp nc, Jump_000_2fec                          ; $497a: $d2 $ec $2f

    cp c                                          ; $497d: $b9
    ld l, e                                       ; $497e: $6b
    push de                                       ; $497f: $d5
    inc [hl]                                      ; $4980: $34
    ld c, l                                       ; $4981: $4d
    sbc e                                         ; $4982: $9b
    ret nz                                        ; $4983: $c0

    ld e, a                                       ; $4984: $5f
    inc sp                                        ; $4985: $33
    or e                                          ; $4986: $b3
    ld l, [hl]                                    ; $4987: $6e
    jp nz, Jump_037_6f5b                          ; $4988: $c2 $5b $6f

    ld h, a                                       ; $498b: $67
    sbc d                                         ; $498c: $9a
    xor h                                         ; $498d: $ac
    ld c, h                                       ; $498e: $4c
    sbc [hl]                                      ; $498f: $9e
    and $cc                                       ; $4990: $e6 $cc
    ld e, b                                       ; $4992: $58
    db $dd                                        ; $4993: $dd
    ld a, e                                       ; $4994: $7b
    ld c, b                                       ; $4995: $48
    db $e3                                        ; $4996: $e3
    jr z, jr_037_493c                             ; $4997: $28 $a3

    sub c                                         ; $4999: $91
    cp a                                          ; $499a: $bf
    ld b, h                                       ; $499b: $44
    ld [bc], a                                    ; $499c: $02
    ld h, [hl]                                    ; $499d: $66
    call z, $cc01                                 ; $499e: $cc $01 $cc
    ld [hl], b                                    ; $49a1: $70
    rst $18                                       ; $49a2: $df
    ld h, a                                       ; $49a3: $67
    cp l                                          ; $49a4: $bd
    db $dd                                        ; $49a5: $dd
    ldh [rIF], a                                  ; $49a6: $e0 $0f
    adc d                                         ; $49a8: $8a
    ld d, a                                       ; $49a9: $57
    rlca                                          ; $49aa: $07
    jp Jump_037_65d4                              ; $49ab: $c3 $d4 $65


    ld b, $bf                                     ; $49ae: $06 $bf
    sbc c                                         ; $49b0: $99
    and [hl]                                      ; $49b1: $a6
    add hl, sp                                    ; $49b2: $39
    ld c, h                                       ; $49b3: $4c
    sub l                                         ; $49b4: $95
    ld a, l                                       ; $49b5: $7d
    add hl, de                                    ; $49b6: $19
    and b                                         ; $49b7: $a0
    ld [$32c0], a                                 ; $49b8: $ea $c0 $32
    ld c, c                                       ; $49bb: $49
    db $e3                                        ; $49bc: $e3
    ld b, h                                       ; $49bd: $44
    halt                                          ; $49be: $76
    ld [hl], e                                    ; $49bf: $73
    add b                                         ; $49c0: $80
    scf                                           ; $49c1: $37
    rlca                                          ; $49c2: $07
    and e                                         ; $49c3: $a3
    add e                                         ; $49c4: $83
    jp nc, Jump_037_75db                          ; $49c5: $d2 $db $75

    inc e                                         ; $49c8: $1c
    sbc $b2                                       ; $49c9: $de $b2
    adc [hl]                                      ; $49cb: $8e
    ld [hl-], a                                   ; $49cc: $32
    ld d, l                                       ; $49cd: $55
    or $65                                        ; $49ce: $f6 $65
    add b                                         ; $49d0: $80
    xor d                                         ; $49d1: $aa
    inc bc                                        ; $49d2: $03
    dec sp                                        ; $49d3: $3b
    ld a, [c]                                     ; $49d4: $f2
    ld h, a                                       ; $49d5: $67
    add c                                         ; $49d6: $81
    db $fc                                        ; $49d7: $fc
    cp c                                          ; $49d8: $b9
    ld c, h                                       ; $49d9: $4c
    jp nc, $9138                                  ; $49da: $d2 $38 $91

    db $dd                                        ; $49dd: $dd
    inc e                                         ; $49de: $1c
    ldh [$cd], a                                  ; $49df: $e0 $cd
    ld bc, $5fb3                                  ; $49e1: $01 $b3 $5f
    ld [hl], d                                    ; $49e4: $72
    ld a, h                                       ; $49e5: $7c
    ld l, d                                       ; $49e6: $6a
    cp c                                          ; $49e7: $b9
    dec sp                                        ; $49e8: $3b
    ret nc                                        ; $49e9: $d0

    ld e, l                                       ; $49ea: $5d
    cp a                                          ; $49eb: $bf
    jp $fe0d                                      ; $49ec: $c3 $0d $fe


    ld a, d                                       ; $49ef: $7a
    ld [hl], e                                    ; $49f0: $73
    xor h                                         ; $49f1: $ac
    sla h                                         ; $49f2: $cb $24
    adc l                                         ; $49f4: $8d
    inc de                                        ; $49f5: $13
    reti                                          ; $49f6: $d9


    call $de01                                    ; $49f7: $cd $01 $de
    sub d                                         ; $49fa: $92
    sub l                                         ; $49fb: $95
    sub b                                         ; $49fc: $90
    ld hl, sp-$53                                 ; $49fd: $f8 $ad
    ld l, c                                       ; $49ff: $69
    sbc d                                         ; $4a00: $9a
    or $fe                                        ; $4a01: $f6 $fe
    or c                                          ; $4a03: $b1
    rst $28                                       ; $4a04: $ef
    or e                                          ; $4a05: $b3
    sbc $32                                       ; $4a06: $de $32
    jp $ded5                                      ; $4a08: $c3 $d5 $de


    sbc l                                         ; $4a0b: $9d
    ld sp, $a307                                  ; $4a0c: $31 $07 $a3
    ccf                                           ; $4a0f: $3f

Call_037_4a10:
    or $25                                        ; $4a10: $f6 $25
    ld [bc], a                                    ; $4a12: $02
    ld a, b                                       ; $4a13: $78
    rrc h                                         ; $4a14: $cb $0c
    scf                                           ; $4a16: $37
    or e                                          ; $4a17: $b3
    xor h                                         ; $4a18: $ac
    ld h, a                                       ; $4a19: $67
    call z, Call_037_4901                         ; $4a1a: $cc $01 $49
    rra                                           ; $4a1d: $1f
    ld a, e                                       ; $4a1e: $7b
    daa                                           ; $4a1f: $27
    adc c                                         ; $4a20: $89
    halt                                          ; $4a21: $76
    add e                                         ; $4a22: $83
    cp a                                          ; $4a23: $bf
    ld a, [hl]                                    ; $4a24: $7e
    push bc                                       ; $4a25: $c5
    ld e, a                                       ; $4a26: $5f
    pop de                                        ; $4a27: $d1
    ld c, a                                       ; $4a28: $4f
    sbc d                                         ; $4a29: $9a
    ld e, c                                       ; $4a2a: $59
    sub $35                                       ; $4a2b: $d6 $35
    and d                                         ; $4a2d: $a2
    ld [hl], a                                    ; $4a2e: $77
    ld c, b                                       ; $4a2f: $48
    ld b, a                                       ; $4a30: $47
    sub e                                         ; $4a31: $93
    ld d, $f9                                     ; $4a32: $16 $f9
    di                                            ; $4a34: $f3
    sub [hl]                                      ; $4a35: $96
    add hl, de                                    ; $4a36: $19
    xor [hl]                                      ; $4a37: $ae
    pop hl                                        ; $4a38: $e1
    cp $b1                                        ; $4a39: $fe $b1
    ld a, a                                       ; $4a3b: $7f
    or l                                          ; $4a3c: $b5
    push bc                                       ; $4a3d: $c5
    jr c, @+$65                                   ; $4a3e: $38 $63

    ld c, $49                                     ; $4a40: $0e $49
    ld h, c                                       ; $4a42: $61
    db $ec                                        ; $4a43: $ec
    ld l, l                                       ; $4a44: $6d
    db $ec                                        ; $4a45: $ec
    ld e, l                                       ; $4a46: $5d
    ld l, a                                       ; $4a47: $6f
    sbc c                                         ; $4a48: $99
    pop hl                                        ; $4a49: $e1
    ld h, d                                       ; $4a4a: $62
    ldh a, [$d7]                                  ; $4a4b: $f0 $d7
    dec c                                         ; $4a4d: $0d
    cp $a0                                        ; $4a4e: $fe $a0
    call nc, $e081                                ; $4a50: $d4 $81 $e0
    ld c, l                                       ; $4a53: $4d
    dec sp                                        ; $4a54: $3b
    inc e                                         ; $4a55: $1c
    xor $1f                                       ; $4a56: $ee $1f
    ei                                            ; $4a58: $fb
    ld d, a                                       ; $4a59: $57
    ld e, e                                       ; $4a5a: $5b
    adc h                                         ; $4a5b: $8c
    dec e                                         ; $4a5c: $1d
    inc c                                         ; $4a5d: $0c
    ld d, e                                       ; $4a5e: $53
    ld [$0fe0], a                                 ; $4a5f: $ea $e0 $0f
    ld h, [hl]                                    ; $4a62: $66
    call z, Call_037_4901                         ; $4a63: $cc $01 $49
    rra                                           ; $4a66: $1f
    ld a, e                                       ; $4a67: $7b
    ld a, h                                       ; $4a68: $7c
    cp $a0                                        ; $4a69: $fe $a0
    xor e                                         ; $4a6b: $ab
    and h                                         ; $4a6c: $a4
    inc sp                                        ; $4a6d: $33
    ld c, l                                       ; $4a6e: $4d
    ld d, [hl]                                    ; $4a6f: $56
    ld h, $4f                                     ; $4a70: $26 $4f
    ld [hl], e                                    ; $4a72: $73
    ld c, c                                       ; $4a73: $49
    rra                                           ; $4a74: $1f
    ld a, e                                       ; $4a75: $7b
    cp e                                          ; $4a76: $bb
    db $10                                        ; $4a77: $10
    inc c                                         ; $4a78: $0c
    db $ed                                        ; $4a79: $ed
    ld c, h                                       ; $4a7a: $4c
    sub e                                         ; $4a7b: $93
    sub l                                         ; $4a7c: $95
    ret                                           ; $4a7d: $c9


    db $d3                                        ; $4a7e: $d3
    inc e                                         ; $4a7f: $1c
    call z, Call_037_5d58                         ; $4a80: $cc $58 $5d
    ld h, [hl]                                    ; $4a83: $66
    cp b                                          ; $4a84: $b8
    adc [hl]                                      ; $4a85: $8e

jr_037_4a86:
    dec e                                         ; $4a86: $1d
    or h                                          ; $4a87: $b4
    jr nz, jr_037_4a86                            ; $4a88: $20 $fc

    push de                                       ; $4a8a: $d5
    sbc $19                                       ; $4a8b: $de $19
    ld [hl], e                                    ; $4a8d: $73
    ld c, c                                       ; $4a8e: $49
    rra                                           ; $4a8f: $1f
    or c                                          ; $4a90: $b1
    add c                                         ; $4a91: $81
    ld d, b                                       ; $4a92: $50
    add d                                         ; $4a93: $82
    inc h                                         ; $4a94: $24
    ld c, l                                       ; $4a95: $4d
    ld a, b                                       ; $4a96: $78
    ld [c], a                                     ; $4a97: $e2
    dec l                                         ; $4a98: $2d
    and e                                         ; $4a99: $a3
    sub c                                         ; $4a9a: $91
    cp a                                          ; $4a9b: $bf
    db $e3                                        ; $4a9c: $e3
    di                                            ; $4a9d: $f3
    ld e, e                                       ; $4a9e: $5b
    ret                                           ; $4a9f: $c9


    xor d                                         ; $4aa0: $aa
    add h                                         ; $4aa1: $84
    ld bc, $4b22                                  ; $4aa2: $01 $22 $4b
    dec sp                                        ; $4aa5: $3b
    sbc d                                         ; $4aa6: $9a
    or h                                          ; $4aa7: $b4
    ret z                                         ; $4aa8: $c8

    sbc a                                         ; $4aa9: $9f
    or a                                          ; $4aaa: $b7
    call z, Call_000_0d70                         ; $4aab: $cc $70 $0d
    rst $30                                       ; $4aae: $f7
    adc a                                         ; $4aaf: $8f
    db $fd                                        ; $4ab0: $fd
    xor e                                         ; $4ab1: $ab
    dec l                                         ; $4ab2: $2d
    add $19                                       ; $4ab3: $c6 $19
    ld [hl], e                                    ; $4ab5: $73
    inc hl                                        ; $4ab6: $23
    cp a                                          ; $4ab7: $bf
    cp $47                                        ; $4ab8: $fe $47
    ld b, a                                       ; $4aba: $47
    ld a, [hl]                                    ; $4abb: $7e
    ld a, d                                       ; $4abc: $7a
    adc e                                         ; $4abd: $8b
    push bc                                       ; $4abe: $c5
    inc e                                         ; $4abf: $1c
    and e                                         ; $4ac0: $a3
    add e                                         ; $4ac1: $83
    jp nc, Jump_037_75db                          ; $4ac2: $d2 $db $75

    inc e                                         ; $4ac5: $1c
    sbc $b2                                       ; $4ac6: $de $b2
    adc [hl]                                      ; $4ac8: $8e
    adc [hl]                                      ; $4ac9: $8e
    db $fc                                        ; $4aca: $fc
    ld a, [$1d1f]                                 ; $4acb: $fa $1f $1d
    ld sp, hl                                     ; $4ace: $f9
    jp hl                                         ; $4acf: $e9


    dec l                                         ; $4ad0: $2d
    ld d, $3b                                     ; $4ad1: $16 $3b
    ld [hl], h                                    ; $4ad3: $74
    ret                                           ; $4ad4: $c9


    and h                                         ; $4ad5: $a4
    call z, $4825                                 ; $4ad6: $cc $25 $48
    jp nc, $a94f                                  ; $4ad9: $d2 $4f $a9

    bit 5, b                                      ; $4adc: $cb $68
    ld [$fbcc], a                                 ; $4ade: $ea $cc $fb
    inc e                                         ; $4ae1: $1c
    ldh [rKEY1], a                                ; $4ae2: $e0 $4d
    ld [hl], e                                    ; $4ae4: $73
    and e                                         ; $4ae5: $a3
    cpl                                           ; $4ae6: $2f
    ld c, d                                       ; $4ae7: $4a
    cp l                                          ; $4ae8: $bd
    ld h, l                                       ; $4ae9: $65
    add [hl]                                      ; $4aea: $86
    ld l, e                                       ; $4aeb: $6b
    cp b                                          ; $4aec: $b8
    ld a, a                                       ; $4aed: $7f
    db $ec                                        ; $4aee: $ec
    and b                                         ; $4aef: $a0
    push hl                                       ; $4af0: $e5
    or $15                                        ; $4af1: $f6 $15
    pop hl                                        ; $4af3: $e1
    sbc l                                         ; $4af4: $9d
    or c                                          ; $4af5: $b1
    or e                                          ; $4af6: $b3
    ld a, l                                       ; $4af7: $7d
    ld b, h                                       ; $4af8: $44
    ld l, a                                       ; $4af9: $6f
    sbc c                                         ; $4afa: $99
    pop hl                                        ; $4afb: $e1
    ld e, $9f                                     ; $4afc: $1e $9f
    ld d, $fd                                     ; $4afe: $16 $fd
    cp h                                          ; $4b00: $bc
    ld l, c                                       ; $4b01: $69
    ld c, $a3                                     ; $4b02: $0e $a3
    ccf                                           ; $4b04: $3f
    sub [hl]                                      ; $4b05: $96
    sub l                                         ; $4b06: $95
    xor a                                         ; $4b07: $af
    ld hl, sp-$0d                                 ; $4b08: $f8 $f3
    sub [hl]                                      ; $4b0a: $96
    add hl, de                                    ; $4b0b: $19
    sbc [hl]                                      ; $4b0c: $9e
    or c                                          ; $4b0d: $b1
    add hl, bc                                    ; $4b0e: $09
    db $fc                                        ; $4b0f: $fc
    sub l                                         ; $4b10: $95
    adc l                                         ; $4b11: $8d
    dec l                                         ; $4b12: $2d
    ld b, $7f                                     ; $4b13: $06 $7f
    sub [hl]                                      ; $4b15: $96
    sbc $43                                       ; $4b16: $de $43
    ld c, d                                       ; $4b18: $4a
    sub b                                         ; $4b19: $90
    sbc [hl]                                      ; $4b1a: $9e
    ld a, b                                       ; $4b1b: $78
    sbc e                                         ; $4b1c: $9b
    ldh a, [$c4]                                  ; $4b1d: $f0 $c4
    ld h, l                                       ; $4b1f: $65
    sub h                                         ; $4b20: $94
    or c                                          ; $4b21: $b1
    rst $00                                       ; $4b22: $c7
    ld [hl], c                                    ; $4b23: $71
    sbc d                                         ; $4b24: $9a
    inc bc                                        ; $4b25: $03
    ld c, c                                       ; $4b26: $49
    rra                                           ; $4b27: $1f
    ld a, e                                       ; $4b28: $7b
    rrca                                          ; $4b29: $0f
    pop de                                        ; $4b2a: $d1
    ld c, l                                       ; $4b2b: $4d
    ld a, b                                       ; $4b2c: $78
    db $eb                                        ; $4b2d: $eb
    dec l                                         ; $4b2e: $2d
    ld a, [$3349]                                 ; $4b2f: $fa $49 $33
    dec b                                         ; $4b32: $05
    ld b, l                                       ; $4b33: $45
    ldh a, [$f3]                                  ; $4b34: $f0 $f3
    and [hl]                                      ; $4b36: $a6
    ld h, l                                       ; $4b37: $65
    ld e, [hl]                                    ; $4b38: $5e
    adc e                                         ; $4b39: $8b
    ret nc                                        ; $4b3a: $d0

    cp l                                          ; $4b3b: $bd
    ld hl, sp-$55                                 ; $4b3c: $f8 $ab
    ld h, e                                       ; $4b3e: $63
    cp l                                          ; $4b3f: $bd
    dec e                                         ; $4b40: $1d
    xor l                                         ; $4b41: $ad
    ld d, $f9                                     ; $4b42: $16 $f9
    sbc e                                         ; $4b44: $9b
    ld sp, $4907                                  ; $4b45: $31 $07 $49
    rra                                           ; $4b48: $1f
    dec de                                        ; $4b49: $1b
    ld [$3f45], sp                                ; $4b4a: $08 $45 $3f
    add hl, hl                                    ; $4b4d: $29
    ld a, [c]                                     ; $4b4e: $f2
    rst $30                                       ; $4b4f: $f7
    or l                                          ; $4b50: $b5
    db $d3                                        ; $4b51: $d3
    ld [hl-], a                                   ; $4b52: $32
    xor a                                         ; $4b53: $af
    ld b, l                                       ; $4b54: $45
    add sp, $5e                                   ; $4b55: $e8 $5e
    db $fc                                        ; $4b57: $fc
    push de                                       ; $4b58: $d5
    ld [hl], b                                    ; $4b59: $70
    rst $38                                       ; $4b5a: $ff
    jr c, jr_037_4bc0                             ; $4b5b: $38 $63

    ld c, $49                                     ; $4b5d: $0e $49
    rra                                           ; $4b5f: $1f
    ld a, e                                       ; $4b60: $7b
    cp e                                          ; $4b61: $bb
    db $10                                        ; $4b62: $10
    inc c                                         ; $4b63: $0c
    sbc l                                         ; $4b64: $9d
    ld l, c                                       ; $4b65: $69
    or d                                          ; $4b66: $b2
    ld [hl-], a                                   ; $4b67: $32
    ld a, c                                       ; $4b68: $79
    sbc d                                         ; $4b69: $9a
    inc bc                                        ; $4b6a: $03
    add hl, bc                                    ; $4b6b: $09
    db $fc                                        ; $4b6c: $fc
    push af                                       ; $4b6d: $f5
    ld [hl], $f6                                  ; $4b6e: $36 $f6
    ld l, $b8                                     ; $4b70: $2e $b8
    add hl, bc                                    ; $4b72: $09
    ld l, a                                       ; $4b73: $6f
    cp l                                          ; $4b74: $bd
    sbc l                                         ; $4b75: $9d
    ld l, c                                       ; $4b76: $69
    or d                                          ; $4b77: $b2
    ld [hl-], a                                   ; $4b78: $32
    ld a, c                                       ; $4b79: $79
    inc sp                                        ; $4b7a: $33
    or e                                          ; $4b7b: $b3

Jump_037_4b7c:
    sbc $34                                       ; $4b7c: $de $34
    rlca                                          ; $4b7e: $07
    jp Jump_000_0763                              ; $4b7f: $c3 $63 $07


    dec l                                         ; $4b82: $2d
    ld [$b57f], sp                                ; $4b83: $08 $7f $b5
    ld [hl], a                                    ; $4b86: $77
    add $1c                                       ; $4b87: $c6 $1c

jr_037_4b89:
    add hl, bc                                    ; $4b89: $09
    db $fc                                        ; $4b8a: $fc
    dec [hl]                                      ; $4b8b: $35
    and e                                         ; $4b8c: $a3
    ld e, a                                       ; $4b8d: $5f
    or c                                          ; $4b8e: $b1
    ld a, $57                                     ; $4b8f: $3e $57
    ld a, a                                       ; $4b91: $7f
    ld l, h                                       ; $4b92: $6c
    jr nz, jr_037_4b89                            ; $4b93: $20 $f4

    ldh a, [$93]                                  ; $4b95: $f0 $93
    ld a, [hl]                                    ; $4b97: $7e
    adc d                                         ; $4b98: $8a
    ld h, l                                       ; $4b99: $65
    add [hl]                                      ; $4b9a: $86
    rr d                                          ; $4b9b: $cb $1a
    inc bc                                        ; $4b9d: $03
    ret z                                         ; $4b9e: $c8

    sbc $73                                       ; $4b9f: $de $73
    scf                                           ; $4ba1: $37
    ld hl, sp-$7d                                 ; $4ba2: $f8 $83
    sbc $ff                                       ; $4ba4: $de $ff
    sub e                                         ; $4ba6: $93
    add hl, de                                    ; $4ba7: $19
    res 7, h                                      ; $4ba8: $cb $bc
    ld d, $a1                                     ; $4baa: $16 $a1
    ld a, e                                       ; $4bac: $7b
    pop af                                        ; $4bad: $f1
    ld d, a                                       ; $4bae: $57
    jp $e3fd                                      ; $4baf: $c3 $fd $e3


    adc h                                         ; $4bb2: $8c
    add hl, sp                                    ; $4bb3: $39
    ld c, h                                       ; $4bb4: $4c
    jp nc, $9138                                  ; $4bb5: $d2 $38 $91

    db $dd                                        ; $4bb8: $dd
    inc e                                         ; $4bb9: $1c
    ldh [$9d], a                                  ; $4bba: $e0 $9d
    ld a, b                                       ; $4bbc: $78
    db $f4                                        ; $4bbd: $f4
    rst $08                                       ; $4bbe: $cf
    cp h                                          ; $4bbf: $bc

jr_037_4bc0:
    add hl, sp                                    ; $4bc0: $39
    inc hl                                        ; $4bc1: $23
    rst $00                                       ; $4bc2: $c7
    and $0f                                       ; $4bc3: $e6 $0f
    cp h                                          ; $4bc5: $bc
    ld h, l                                       ; $4bc6: $65
    add [hl]                                      ; $4bc7: $86
    sla h                                         ; $4bc8: $cb $24
    adc l                                         ; $4bca: $8d
    inc de                                        ; $4bcb: $13
    reti                                          ; $4bcc: $d9


    call $de01                                    ; $4bcd: $cd $01 $de
    sbc $be                                       ; $4bd0: $de $be
    ld [hl+], a                                   ; $4bd2: $22
    cp h                                          ; $4bd3: $bc
    inc sp                                        ; $4bd4: $33
    or [hl]                                       ; $4bd5: $b6
    call z, Call_000_3170                         ; $4bd6: $cc $70 $31
    ld d, [hl]                                    ; $4bd9: $56
    rst $30                                       ; $4bda: $f7
    ld d, e                                       ; $4bdb: $53
    ld [$f352], a                                 ; $4bdc: $ea $52 $f3
    sbc e                                         ; $4bdf: $9b
    dec h                                         ; $4be0: $25
    call $2301                                    ; $4be1: $cd $01 $23
    ccf                                           ; $4be4: $3f
    dec l                                         ; $4be5: $2d
    ld a, [$cf79]                                 ; $4be6: $fa $79 $cf
    cp l                                          ; $4be9: $bd

Call_037_4bea:
    ld a, a                                       ; $4bea: $7f
    inc l                                         ; $4beb: $2c
    inc sp                                        ; $4bec: $33
    ld e, h                                       ; $4bed: $5c
    or d                                          ; $4bee: $b2
    ld a, [hl+]                                   ; $4bef: $2a
    dec de                                        ; $4bf0: $1b
    ld b, $6f                                     ; $4bf1: $06 $6f
    rst $18                                       ; $4bf3: $df
    ld h, a                                       ; $4bf4: $67
    cp l                                          ; $4bf5: $bd
    ld l, c                                       ; $4bf6: $69
    ld c, $a3                                     ; $4bf7: $0e $a3
    ccf                                           ; $4bf9: $3f
    or $7e                                        ; $4bfa: $f6 $7e
    ld d, c                                       ; $4bfc: $51
    ld [$332d], a                                 ; $4bfd: $ea $2d $33
    ld e, h                                       ; $4c00: $5c

Call_037_4c01:
    db $fd                                        ; $4c01: $fd
    add hl, bc                                    ; $4c02: $09
    sub d                                         ; $4c03: $92
    db $f4                                        ; $4c04: $f4
    ld a, l                                       ; $4c05: $7d
    sub $3b                                       ; $4c06: $d6 $3b
    ld h, e                                       ; $4c08: $63
    ld c, $49                                     ; $4c09: $0e $49
    rra                                           ; $4c0b: $1f
    ld a, e                                       ; $4c0c: $7b
    rrca                                          ; $4c0d: $0f
    pop de                                        ; $4c0e: $d1
    ld c, l                                       ; $4c0f: $4d
    ld a, b                                       ; $4c10: $78
    db $eb                                        ; $4c11: $eb
    db $ed                                        ; $4c12: $ed
    ld d, a                                       ; $4c13: $57
    ld b, h                                       ; $4c14: $44
    or l                                          ; $4c15: $b5
    and l                                         ; $4c16: $a5
    daa                                           ; $4c17: $27
    xor b                                         ; $4c18: $a8
    call $b25c                                    ; $4c19: $cd $5c $b2

Jump_037_4c1c:
    dec h                                         ; $4c1c: $25
    di                                            ; $4c1d: $f3
    di                                            ; $4c1e: $f3
    and [hl]                                      ; $4c1f: $a6
    sbc l                                         ; $4c20: $9d
    db $fd                                        ; $4c21: $fd
    ld [c], a                                     ; $4c22: $e2
    xor a                                         ; $4c23: $af
    adc [hl]                                      ; $4c24: $8e
    push af                                       ; $4c25: $f5
    halt                                          ; $4c26: $76
    or h                                          ; $4c27: $b4
    ld e, d                                       ; $4c28: $5a
    db $e4                                        ; $4c29: $e4
    ld l, a                                       ; $4c2a: $6f
    add $1c                                       ; $4c2b: $c6 $1c
    or e                                          ; $4c2d: $b3
    xor e                                         ; $4c2e: $ab
    dec a                                         ; $4c2f: $3d
    ld d, a                                       ; $4c30: $57
    ld a, a                                       ; $4c31: $7f
    call nz, Call_037_4206                        ; $4c32: $c4 $06 $42
    ld e, c                                       ; $4c35: $59
    db $eb                                        ; $4c36: $eb
    xor a                                         ; $4c37: $af
    inc l                                         ; $4c38: $2c
    inc [hl]                                      ; $4c39: $34
    ld hl, sp+$4b                                 ; $4c3a: $f8 $4b
    ld e, e                                       ; $4c3c: $5b
    and $b5                                       ; $4c3d: $e6 $b5
    ld [$8bdd], sp                                ; $4c3f: $08 $dd $8b
    cp a                                          ; $4c42: $bf
    ld a, [de]                                    ; $4c43: $1a
    xor $1f                                       ; $4c44: $ee $1f
    ld h, a                                       ; $4c46: $67
    call z, Call_037_4c01                         ; $4c47: $cc $01 $4c
    ccf                                           ; $4c4a: $3f
    add hl, hl                                    ; $4c4b: $29
    dec [hl]                                      ; $4c4c: $35
    cp a                                          ; $4c4d: $bf
    ld e, c                                       ; $4c4e: $59
    xor d                                         ; $4c4f: $aa
    ld d, [hl]                                    ; $4c50: $56
    ld [hl], a                                    ; $4c51: $77
    sub l                                         ; $4c52: $95
    sub h                                         ; $4c53: $94
    jr nz, jr_037_4c9f                            ; $4c54: $20 $49

    ld h, a                                       ; $4c56: $67
    sbc d                                         ; $4c57: $9a
    xor h                                         ; $4c58: $ac
    ld c, h                                       ; $4c59: $4c
    sbc [hl]                                      ; $4c5a: $9e
    and $09                                       ; $4c5b: $e6 $09
    db $fc                                        ; $4c5d: $fc
    push af                                       ; $4c5e: $f5
    or $15                                        ; $4c5f: $f6 $15
    pop hl                                        ; $4c61: $e1
    ld a, [de]                                    ; $4c62: $1a
    ld c, e                                       ; $4c63: $4b
    sub b                                         ; $4c64: $90
    and h                                         ; $4c65: $a4
    inc sp                                        ; $4c66: $33
    ld c, l                                       ; $4c67: $4d
    ld d, [hl]                                    ; $4c68: $56
    ld h, $4f                                     ; $4c69: $26 $4f
    ld [hl], e                                    ; $4c6b: $73
    call z, $dd58                                 ; $4c6c: $cc $58 $dd
    ld a, e                                       ; $4c6f: $7b
    ld c, b                                       ; $4c70: $48
    ld c, a                                       ; $4c71: $4f
    dec [hl]                                      ; $4c72: $35
    sub b                                         ; $4c73: $90
    and c                                         ; $4c74: $a1
    ld [hl], c                                    ; $4c75: $71
    sub h                                         ; $4c76: $94
    pop de                                        ; $4c77: $d1
    ret z                                         ; $4c78: $c8

    ld e, a                                       ; $4c79: $5f
    ld [hl+], a                                   ; $4c7a: $22
    ld bc, $e633                                  ; $4c7b: $01 $33 $e6
    ld [hl], e                                    ; $4c7e: $73
    cp h                                          ; $4c7f: $bc
    ld [hl], e                                    ; $4c80: $73
    add e                                         ; $4c81: $83
    cp a                                          ; $4c82: $bf
    ld h, [hl]                                    ; $4c83: $66
    db $f4                                        ; $4c84: $f4
    dec hl                                        ; $4c85: $2b
    sub $e7                                       ; $4c86: $d6 $e7
    ld [hl-], a                                   ; $4c88: $32
    jp $9f7d                                      ; $4c89: $c3 $7d $9f


    push af                                       ; $4c8c: $f5
    halt                                          ; $4c8d: $76
    add e                                         ; $4c8e: $83
    ccf                                           ; $4c8f: $3f
    ld l, b                                       ; $4c90: $68
    and $55                                       ; $4c91: $e6 $55
    ld e, c                                       ; $4c93: $59
    add hl, de                                    ; $4c94: $19
    ld c, l                                       ; $4c95: $4d
    push af                                       ; $4c96: $f5
    cp c                                          ; $4c97: $b9
    ld [$fea8], a                                 ; $4c98: $ea $a8 $fe
    ld e, b                                       ; $4c9b: $58
    or d                                          ; $4c9c: $b2
    ld a, [hl+]                                   ; $4c9d: $2a
    ld l, e                                       ; $4c9e: $6b

jr_037_4c9f:
    ld a, [c]                                     ; $4c9f: $f2
    ld a, a                                       ; $4ca0: $7f
    call nc, $e69b                                ; $4ca1: $d4 $9b $e6
    and e                                         ; $4ca4: $a3
    db $fd                                        ; $4ca5: $fd
    sub c                                         ; $4ca6: $91
    ld a, d                                       ; $4ca7: $7a
    inc c                                         ; $4ca8: $0c
    halt                                          ; $4ca9: $76
    ld hl, sp+$31                                 ; $4caa: $f8 $31
    ld [hl], b                                    ; $4cac: $70
    ld c, c                                       ; $4cad: $49
    xor b                                         ; $4cae: $a8
    inc hl                                        ; $4caf: $23
    rlca                                          ; $4cb0: $07
    and e                                         ; $4cb1: $a3
    add e                                         ; $4cb2: $83
    jp nc, Jump_037_75db                          ; $4cb3: $d2 $db $75

    inc e                                         ; $4cb6: $1c
    sbc $c6                                       ; $4cb7: $de $c6

Jump_037_4cb9:
    halt                                          ; $4cb9: $76
    or h                                          ; $4cba: $b4
    ccf                                           ; $4cbb: $3f
    ld d, d                                       ; $4cbc: $52
    adc a                                         ; $4cbd: $8f
    pop bc                                        ; $4cbe: $c1
    ld [hl-], a                                   ; $4cbf: $32
    ld c, c                                       ; $4cc0: $49
    db $e3                                        ; $4cc1: $e3
    ld b, h                                       ; $4cc2: $44
    halt                                          ; $4cc3: $76
    ld [hl], e                                    ; $4cc4: $73
    add b                                         ; $4cc5: $80
    ld [hl], a                                    ; $4cc6: $77
    ld [c], a                                     ; $4cc7: $e2
    pop hl                                        ; $4cc8: $e1
    rst $00                                       ; $4cc9: $c7
    ret nz                                        ; $4cca: $c0

    dec h                                         ; $4ccb: $25
    and c                                         ; $4ccc: $a1
    adc [hl]                                      ; $4ccd: $8e
    inc [hl]                                      ; $4cce: $34
    rlca                                          ; $4ccf: $07
    and e                                         ; $4cd0: $a3
    ccf                                           ; $4cd1: $3f
    or $7d                                        ; $4cd2: $f6 $7d
    ld d, $1a                                     ; $4cd4: $16 $1a
    ld c, a                                       ; $4cd6: $4f
    xor d                                         ; $4cd7: $aa
    cp l                                          ; $4cd8: $bd
    ld e, e                                       ; $4cd9: $5b
    or d                                          ; $4cda: $b2
    ld a, [hl+]                                   ; $4cdb: $2a
    dec de                                        ; $4cdc: $1b
    ld b, $ef                                     ; $4cdd: $06 $ef
    adc h                                         ; $4cdf: $8c
    add hl, sp                                    ; $4ce0: $39
    and e                                         ; $4ce1: $a3
    ccf                                           ; $4ce2: $3f
    ld d, $15                                     ; $4ce3: $16 $15
    ld a, a                                       ; $4ce5: $7f
    ld [$6ad5], sp                                ; $4ce6: $08 $d5 $6a
    add $1c                                       ; $4ce9: $c6 $1c
    ld c, c                                       ; $4ceb: $49
    rra                                           ; $4cec: $1f
    ld a, e                                       ; $4ced: $7b
    rrca                                          ; $4cee: $0f
    pop de                                        ; $4cef: $d1
    adc l                                         ; $4cf0: $8d
    db $e3                                        ; $4cf1: $e3
    or b                                          ; $4cf2: $b0
    db $f4                                        ; $4cf3: $f4
    ld e, $d6                                     ; $4cf4: $1e $d6
    sub [hl]                                      ; $4cf6: $96
    ld h, [hl]                                    ; $4cf7: $66
    sub [hl]                                      ; $4cf8: $96
    ld [hl], l                                    ; $4cf9: $75
    inc sp                                        ; $4cfa: $33
    rst $18                                       ; $4cfb: $df
    cp [hl]                                       ; $4cfc: $be
    ld [hl+], a                                   ; $4cfd: $22
    jr nz, @+$6f                                  ; $4cfe: $20 $6d

    ld h, a                                       ; $4d00: $67
    cp a                                          ; $4d01: $bf
    ld hl, sp-$55                                 ; $4d02: $f8 $ab
    ld h, e                                       ; $4d04: $63
    cp l                                          ; $4d05: $bd
    dec e                                         ; $4d06: $1d
    xor l                                         ; $4d07: $ad
    ld d, $f9                                     ; $4d08: $16 $f9
    sbc e                                         ; $4d0a: $9b
    ld sp, $f307                                  ; $4d0b: $31 $07 $f3
    add [hl]                                      ; $4d0e: $86
    add hl, hl                                    ; $4d0f: $29
    ld [hl], l                                    ; $4d10: $75
    ldh a, [rTAC]                                 ; $4d11: $f0 $07
    dec h                                         ; $4d13: $25
    or c                                          ; $4d14: $b1
    ld d, $ea                                     ; $4d15: $16 $ea
    inc c                                         ; $4d17: $0c
    and c                                         ; $4d18: $a1
    ld e, d                                       ; $4d19: $5a
    push de                                       ; $4d1a: $d5
    ld e, b                                       ; $4d1b: $58
    dec e                                         ; $4d1c: $1d
    ld d, d                                       ; $4d1d: $52
    inc e                                         ; $4d1e: $1c
    ld c, b                                       ; $4d1f: $48
    inc b                                         ; $4d20: $04
    ld c, e                                       ; $4d21: $4b
    rst $30                                       ; $4d22: $f7
    ld [c], a                                     ; $4d23: $e2
    xor a                                         ; $4d24: $af
    ld a, a                                       ; $4d25: $7f
    or l                                          ; $4d26: $b5
    dec b                                         ; $4d27: $05
    db $d3                                        ; $4d28: $d3
    halt                                          ; $4d29: $76
    or $8b                                        ; $4d2a: $f6 $8b
    cp a                                          ; $4d2c: $bf
    ld a, [de]                                    ; $4d2d: $1a
    xor $1f                                       ; $4d2e: $ee $1f
    ld h, a                                       ; $4d30: $67
    call z, Call_037_4901                         ; $4d31: $cc $01 $49

Call_037_4d34:
    rra                                           ; $4d34: $1f
    ld a, e                                       ; $4d35: $7b
    cp e                                          ; $4d36: $bb
    db $10                                        ; $4d37: $10
    inc c                                         ; $4d38: $0c
    sbc l                                         ; $4d39: $9d
    ld l, c                                       ; $4d3a: $69
    or d                                          ; $4d3b: $b2
    ld [hl-], a                                   ; $4d3c: $32
    ld a, c                                       ; $4d3d: $79
    sbc d                                         ; $4d3e: $9a
    inc bc                                        ; $4d3f: $03
    ld c, c                                       ; $4d40: $49
    cp a                                          ; $4d41: $bf
    ld a, [hl-]                                   ; $4d42: $3a
    adc h                                         ; $4d43: $8c
    ld b, l                                       ; $4d44: $45
    cp $ae                                        ; $4d45: $fe $ae
    ld l, l                                       ; $4d47: $6d
    ld h, [hl]                                    ; $4d48: $66
    ld d, [hl]                                    ; $4d49: $56
    cp [hl]                                       ; $4d4a: $be
    ld [c], a                                     ; $4d4b: $e2
    rrca                                          ; $4d4c: $0f
    ld a, [de]                                    ; $4d4d: $1a
    ld [$66e7], sp                                ; $4d4e: $08 $e7 $66
    ld h, [hl]                                    ; $4d51: $66
    db $dd                                        ; $4d52: $dd
    ldh [$af], a                                  ; $4d53: $e0 $af
    ld d, [hl]                                    ; $4d55: $56
    db $fc                                        ; $4d56: $fc
    ld [hl], l                                    ; $4d57: $75
    and [hl]                                      ; $4d58: $a6
    ret                                           ; $4d59: $c9


    jp z, Jump_037_69e4                           ; $4d5a: $ca $e4 $69

    ld c, $cc                                     ; $4d5d: $0e $cc
    ld e, b                                       ; $4d5f: $58
    db $dd                                        ; $4d60: $dd
    ld a, e                                       ; $4d61: $7b
    ld c, b                                       ; $4d62: $48
    db $e3                                        ; $4d63: $e3
    jr z, @-$5b                                   ; $4d64: $28 $a3

jr_037_4d66:
    sub c                                         ; $4d66: $91
    cp a                                          ; $4d67: $bf
    ld b, h                                       ; $4d68: $44
    ld [bc], a                                    ; $4d69: $02
    ld h, [hl]                                    ; $4d6a: $66
    call z, Call_037_4901                         ; $4d6b: $cc $01 $49
    rra                                           ; $4d6e: $1f
    ld a, e                                       ; $4d6f: $7b
    ei                                            ; $4d70: $fb
    cp e                                          ; $4d71: $bb
    ld [$aad5], sp                                ; $4d72: $08 $d5 $aa
    ld a, [hl-]                                   ; $4d75: $3a
    and h                                         ; $4d76: $a4
    dec de                                        ; $4d77: $1b
    db $fc                                        ; $4d78: $fc
    ld b, c                                       ; $4d79: $41
    xor c                                         ; $4d7a: $a9
    inc bc                                        ; $4d7b: $03
    pop bc                                        ; $4d7c: $c1
    ld a, e                                       ; $4d7d: $7b
    ld l, [hl]                                    ; $4d7e: $6e
    ld a, [c]                                     ; $4d7f: $f2
    rla                                           ; $4d80: $17
    add hl, de                                    ; $4d81: $19
    sub e                                         ; $4d82: $93
    and $a3                                       ; $4d83: $e6 $a3
    db $fd                                        ; $4d85: $fd
    sub c                                         ; $4d86: $91
    ld a, d                                       ; $4d87: $7a
    call z, Call_037_58f8                         ; $4d88: $cc $f8 $58
    ld h, $7f                                     ; $4d8b: $26 $7f
    sbc e                                         ; $4d8d: $9b
    jr c, jr_037_4dc0                             ; $4d8e: $38 $30

    ret nz                                        ; $4d90: $c0

    sbc a                                         ; $4d91: $9f
    scf                                           ; $4d92: $37

Call_037_4d93:
    rlca                                          ; $4d93: $07
    and e                                         ; $4d94: $a3
    add e                                         ; $4d95: $83
    jp nc, Jump_037_75db                          ; $4d96: $d2 $db $75

    inc e                                         ; $4d99: $1c
    sbc $b2                                       ; $4d9a: $de $b2
    adc [hl]                                      ; $4d9c: $8e
    adc [hl]                                      ; $4d9d: $8e
    or $47                                        ; $4d9e: $f6 $47
    ld [$e331], a                                 ; $4da0: $ea $31 $e3
    ld h, e                                       ; $4da3: $63
    sbc c                                         ; $4da4: $99
    db $fc                                        ; $4da5: $fc
    ld l, l                                       ; $4da6: $6d
    ld [c], a                                     ; $4da7: $e2
    ret nz                                        ; $4da8: $c0

    nop                                           ; $4da9: $00
    ld a, a                                       ; $4daa: $7f
    sbc $34                                       ; $4dab: $de $34
    rlca                                          ; $4dad: $07
    and e                                         ; $4dae: $a3
    ccf                                           ; $4daf: $3f
    ld [hl], $0b                                  ; $4db0: $36 $0b
    ld d, $c6                                     ; $4db2: $16 $c6
    rst $00                                       ; $4db4: $c7
    ld l, d                                       ; $4db5: $6a
    rst $28                                       ; $4db6: $ef
    sub [hl]                                      ; $4db7: $96
    ld [hl], l                                    ; $4db8: $75
    call nc, $bf8a                                ; $4db9: $d4 $8a $bf
    add hl, de                                    ; $4dbc: $19
    ld [hl], e                                    ; $4dbd: $73
    and e                                         ; $4dbe: $a3
    ccf                                           ; $4dbf: $3f

jr_037_4dc0:
    or $25                                        ; $4dc0: $f6 $25
    ld [bc], a                                    ; $4dc2: $02
    jr jr_037_4d66                                ; $4dc3: $18 $a1

    ld e, d                                       ; $4dc5: $5a
    dec [hl]                                      ; $4dc6: $35
    or e                                          ; $4dc7: $b3
    db $ec                                        ; $4dc8: $ec
    adc h                                         ; $4dc9: $8c
    add hl, sp                                    ; $4dca: $39
    ld c, c                                       ; $4dcb: $49
    rra                                           ; $4dcc: $1f
    ld a, e                                       ; $4dcd: $7b
    rrca                                          ; $4dce: $0f
    pop de                                        ; $4dcf: $d1
    adc l                                         ; $4dd0: $8d
    db $e3                                        ; $4dd1: $e3
    or b                                          ; $4dd2: $b0
    db $f4                                        ; $4dd3: $f4
    ld e, $d6                                     ; $4dd4: $1e $d6
    sub [hl]                                      ; $4dd6: $96
    ld h, [hl]                                    ; $4dd7: $66

jr_037_4dd8:
    sub [hl]                                      ; $4dd8: $96
    ld [hl], l                                    ; $4dd9: $75
    inc sp                                        ; $4dda: $33
    rst $18                                       ; $4ddb: $df
    cp [hl]                                       ; $4ddc: $be
    ld [hl+], a                                   ; $4ddd: $22
    jr nz, jr_037_4e4d                            ; $4dde: $20 $6d

Call_037_4de0:
    ld h, a                                       ; $4de0: $67
    cp a                                          ; $4de1: $bf
    ld hl, sp-$55                                 ; $4de2: $f8 $ab
    ld h, e                                       ; $4de4: $63
    cp l                                          ; $4de5: $bd
    dec e                                         ; $4de6: $1d
    xor l                                         ; $4de7: $ad
    ld d, $f9                                     ; $4de8: $16 $f9
    sbc e                                         ; $4dea: $9b
    ld sp, $8c07                                  ; $4deb: $31 $07 $8c
    ld a, a                                       ; $4dee: $7f
    ret                                           ; $4def: $c9


    cp l                                          ; $4df0: $bd
    add a                                         ; $4df1: $87
    xor e                                         ; $4df2: $ab
    ld d, l                                       ; $4df3: $55

Jump_037_4df4:
    adc a                                         ; $4df4: $8f
    sbc a                                         ; $4df5: $9f
    ld hl, $eda4                                  ; $4df6: $21 $a4 $ed
    db $ec                                        ; $4df9: $ec
    rla                                           ; $4dfa: $17
    ld a, a                                       ; $4dfb: $7f
    dec [hl]                                      ; $4dfc: $35
    call c, $ce3f                                 ; $4dfd: $dc $3f $ce
    sbc b                                         ; $4e00: $98
    inc bc                                        ; $4e01: $03
    ld c, c                                       ; $4e02: $49
    rra                                           ; $4e03: $1f
    ld a, e                                       ; $4e04: $7b
    cp e                                          ; $4e05: $bb
    db $10                                        ; $4e06: $10
    inc c                                         ; $4e07: $0c
    sbc l                                         ; $4e08: $9d
    ld l, c                                       ; $4e09: $69
    or d                                          ; $4e0a: $b2
    ld [hl-], a                                   ; $4e0b: $32
    ld a, c                                       ; $4e0c: $79
    sbc d                                         ; $4e0d: $9a
    inc bc                                        ; $4e0e: $03
    ld c, c                                       ; $4e0f: $49
    cp a                                          ; $4e10: $bf
    ld a, [hl-]                                   ; $4e11: $3a
    adc h                                         ; $4e12: $8c
    ld b, l                                       ; $4e13: $45
    cp $ae                                        ; $4e14: $fe $ae
    ld l, l                                       ; $4e16: $6d
    ld h, [hl]                                    ; $4e17: $66
    ld d, [hl]                                    ; $4e18: $56
    cp [hl]                                       ; $4e19: $be
    ld [c], a                                     ; $4e1a: $e2
    rrca                                          ; $4e1b: $0f
    ld a, [de]                                    ; $4e1c: $1a
    ld [$66e7], sp                                ; $4e1d: $08 $e7 $66
    ld h, [hl]                                    ; $4e20: $66
    db $dd                                        ; $4e21: $dd
    ldh [$af], a                                  ; $4e22: $e0 $af
    ld d, [hl]                                    ; $4e24: $56
    db $fc                                        ; $4e25: $fc
    ld [hl], l                                    ; $4e26: $75
    and [hl]                                      ; $4e27: $a6
    ret                                           ; $4e28: $c9


    jp z, Jump_037_69e4                           ; $4e29: $ca $e4 $69

    ld c, $cc                                     ; $4e2c: $0e $cc
    ld e, b                                       ; $4e2e: $58
    db $dd                                        ; $4e2f: $dd
    ld a, e                                       ; $4e30: $7b
    ld c, b                                       ; $4e31: $48
    db $e3                                        ; $4e32: $e3
    jr z, jr_037_4dd8                             ; $4e33: $28 $a3

    sub c                                         ; $4e35: $91
    cp a                                          ; $4e36: $bf
    ld b, h                                       ; $4e37: $44
    ld [bc], a                                    ; $4e38: $02
    ld h, [hl]                                    ; $4e39: $66
    call z, $a301                                 ; $4e3a: $cc $01 $a3
    ld b, e                                       ; $4e3d: $43
    adc d                                         ; $4e3e: $8a
    db $fc                                        ; $4e3f: $fc
    adc c                                         ; $4e40: $89
    add e                                         ; $4e41: $83
    push af                                       ; $4e42: $f5
    halt                                          ; $4e43: $76
    add e                                         ; $4e44: $83
    ccf                                           ; $4e45: $3f
    ret nz                                        ; $4e46: $c0

    cp $3d                                        ; $4e47: $fe $3d
    ld d, a                                       ; $4e49: $57
    rst $38                                       ; $4e4a: $ff

Call_037_4e4b:
    ld e, $9f                                     ; $4e4b: $1e $9f

jr_037_4e4d:
    ccf                                           ; $4e4d: $3f
    ld l, a                                       ; $4e4e: $6f
    rst $28                                       ; $4e4f: $ef
    ld hl, $8afd                                  ; $4e50: $21 $fd $8a
    cp a                                          ; $4e53: $bf
    or d                                          ; $4e54: $b2
    adc [hl]                                      ; $4e55: $8e
    ld a, [hl-]                                   ; $4e56: $3a
    sub $47                                       ; $4e57: $d6 $47
    add hl, de                                    ; $4e59: $19
    ld h, l                                       ; $4e5a: $65
    inc c                                         ; $4e5b: $0c
    ld b, c                                       ; $4e5c: $41
    call nz, Call_037_4bea                        ; $4e5d: $c4 $ea $4b
    ld a, d                                       ; $4e60: $7a
    ld [hl], e                                    ; $4e61: $73
    xor h                                         ; $4e62: $ac
    dec sp                                        ; $4e63: $3b
    ld d, h                                       ; $4e64: $54
    pop hl                                        ; $4e65: $e1
    cp $77                                        ; $4e66: $fe $77
    ld a, b                                       ; $4e68: $78
    ld c, b                                       ; $4e69: $48
    ld c, $49                                     ; $4e6a: $0e $49
    ld h, c                                       ; $4e6c: $61
    inc [hl]                                      ; $4e6d: $34
    halt                                          ; $4e6e: $76
    add h                                         ; $4e6f: $84
    ld a, h                                       ; $4e70: $7c
    dec b                                         ; $4e71: $05
    cp l                                          ; $4e72: $bd
    add a                                         ; $4e73: $87
    add sp, $7e                                   ; $4e74: $e8 $7e
    push bc                                       ; $4e76: $c5
    ld e, a                                       ; $4e77: $5f
    add a                                         ; $4e78: $87
    ld [c], a                                     ; $4e79: $e2
    ret nz                                        ; $4e7a: $c0

    cp e                                          ; $4e7b: $bb
    or h                                          ; $4e7c: $b4
    xor c                                         ; $4e7d: $a9
    jp nz, $ca7e                                  ; $4e7e: $c2 $7e $ca

    ld a, [hl+]                                   ; $4e81: $2a
    ld l, h                                       ; $4e82: $6c
    and $fd                                       ; $4e83: $e6 $fd
    cp e                                          ; $4e85: $bb
    sub b                                         ; $4e86: $90
    halt                                          ; $4e87: $76
    jr c, @-$08                                   ; $4e88: $38 $f6

    sbc [hl]                                      ; $4e8a: $9e
    ret z                                         ; $4e8b: $c8

    rra                                           ; $4e8c: $1f
    ld b, d                                       ; $4e8d: $42
    cp a                                          ; $4e8e: $bf
    ld [hl+], a                                   ; $4e8f: $22
    xor d                                         ; $4e90: $aa
    dec l                                         ; $4e91: $2d
    call $92fe                                    ; $4e92: $cd $fe $92
    cp l                                          ; $4e95: $bd
    dec e                                         ; $4e96: $1d
    ld l, l                                       ; $4e97: $6d
    ld a, [bc]                                    ; $4e98: $0a
    ld d, l                                       ; $4e99: $55
    xor e                                         ; $4e9a: $ab
    ld c, e                                       ; $4e9b: $4b
    call nz, Call_037_436a                        ; $4e9c: $c4 $6a $43
    scf                                           ; $4e9f: $37
    ld hl, sp-$7d                                 ; $4ea0: $f8 $83
    xor [hl]                                      ; $4ea2: $ae
    sub d                                         ; $4ea3: $92
    add $56                                       ; $4ea4: $c6 $56
    ld e, e                                       ; $4ea6: $5b
    ld a, [hl-]                                   ; $4ea7: $3a
    ld a, [c]                                     ; $4ea8: $f2
    ld h, a                                       ; $4ea9: $67
    pop hl                                        ; $4eaa: $e1
    adc $6b                                       ; $4eab: $ce $6b
    cp c                                          ; $4ead: $b9
    ld a, e                                       ; $4eae: $7b
    or l                                          ; $4eaf: $b5
    jp c, $cd2c                                   ; $4eb0: $da $2c $cd

    ld bc, $6149                                  ; $4eb3: $01 $49 $61
    ld [hl], h                                    ; $4eb6: $74

jr_037_4eb7:
    ld c, a                                       ; $4eb7: $4f
    ld d, b                                       ; $4eb8: $50
    ldh a, [$c1]                                  ; $4eb9: $f0 $c1
    db $db                                        ; $4ebb: $db
    add e                                         ; $4ebc: $83
    add h                                         ; $4ebd: $84
    add sp, -$13                                  ; $4ebe: $e8 $ed

jr_037_4ec0:
    ldh [rNR51], a                                ; $4ec0: $e0 $25
    jr jr_037_4ec0                                ; $4ec2: $18 $fc

    ld b, c                                       ; $4ec4: $41
    ld h, h                                       ; $4ec5: $64
    ld h, l                                       ; $4ec6: $65
    db $fd                                        ; $4ec7: $fd
    cp $6a                                        ; $4ec8: $fe $6a
    ld d, e                                       ; $4eca: $53
    xor b                                         ; $4ecb: $a8
    ld e, d                                       ; $4ecc: $5a
    ld e, l                                       ; $4ecd: $5d
    or d                                          ; $4ece: $b2
    ld h, d                                       ; $4ecf: $62
    dec l                                         ; $4ed0: $2d
    ld c, $30                                     ; $4ed1: $0e $30

Call_037_4ed3:
    db $f4                                        ; $4ed3: $f4
    ld l, [hl]                                    ; $4ed4: $6e
    pop de                                        ; $4ed5: $d1
    sbc $73                                       ; $4ed6: $de $73
    push af                                       ; $4ed8: $f5
    cpl                                           ; $4ed9: $2f
    add [hl]                                      ; $4eda: $86
    ei                                            ; $4edb: $fb
    rla                                           ; $4edc: $17
    xor a                                         ; $4edd: $af
    ld b, l                                       ; $4ede: $45
    ldh a, [$36]                                  ; $4edf: $f0 $36
    dec bc                                        ; $4ee1: $0b
    ld [bc], a                                    ; $4ee2: $02
    ld [hl+], a                                   ; $4ee3: $22
    dec hl                                        ; $4ee4: $2b
    ld a, [hl-]                                   ; $4ee5: $3a
    or [hl]                                       ; $4ee6: $b6
    or a                                          ; $4ee7: $b7
    or c                                          ; $4ee8: $b1
    ld [hl], a                                    ; $4ee9: $77
    cp l                                          ; $4eea: $bd
    ld l, c                                       ; $4eeb: $69
    ld c, $c3                                     ; $4eec: $0e $c3
    ld h, e                                       ; $4eee: $63
    db $dd                                        ; $4eef: $dd
    cp e                                          ; $4ef0: $bb
    inc bc                                        ; $4ef1: $03
    ld b, $2d                                     ; $4ef2: $06 $2d
    xor h                                         ; $4ef4: $ac
    jr c, jr_037_4eb7                             ; $4ef5: $38 $c0

    ldh [$8e], a                                  ; $4ef7: $e0 $8e
    ld [hl+], a                                   ; $4ef9: $22
    add sp, $5f                                   ; $4efa: $e8 $5f
    or d                                          ; $4efc: $b2
    rst $08                                       ; $4efd: $cf
    push de                                       ; $4efe: $d5
    pop hl                                        ; $4eff: $e1
    ld a, [hl]                                    ; $4f00: $7e
    ld b, l                                       ; $4f01: $45
    ld h, h                                       ; $4f02: $64
    and d                                         ; $4f03: $a2
    ld d, [hl]                                    ; $4f04: $56
    ld d, a                                       ; $4f05: $57
    ld e, e                                       ; $4f06: $5b
    ld a, [hl-]                                   ; $4f07: $3a
    db $10                                        ; $4f08: $10
    db $fc                                        ; $4f09: $fc
    and $d5                                       ; $4f0a: $e6 $d5
    sbc $26                                       ; $4f0c: $de $26
    daa                                           ; $4f0e: $27
    ld a, [bc]                                    ; $4f0f: $0a
    ld a, a                                       ; $4f10: $7f
    sbc $7e                                       ; $4f11: $de $7e
    ld b, l                                       ; $4f13: $45
    inc [hl]                                      ; $4f14: $34
    sbc [hl]                                      ; $4f15: $9e
    ld a, b                                       ; $4f16: $78
    dec sp                                        ; $4f17: $3b
    adc h                                         ; $4f18: $8c
    ld h, $02                                     ; $4f19: $26 $02
    ld e, b                                       ; $4f1b: $58
    or [hl]                                       ; $4f1c: $b6
    xor h                                         ; $4f1d: $ac
    ld l, a                                       ; $4f1e: $6f
    ld a, a                                       ; $4f1f: $7f
    rla                                           ; $4f20: $17
    ld a, [de]                                    ; $4f21: $1a
    ld [$0e69], sp                                ; $4f22: $08 $69 $0e
    ld c, c                                       ; $4f25: $49
    ld h, c                                       ; $4f26: $61
    ld [hl], h                                    ; $4f27: $74
    ld b, a                                       ; $4f28: $47
    ld de, $2ff4                                  ; $4f29: $11 $f4 $2f

jr_037_4f2c:
    reti                                          ; $4f2c: $d9


    cp l                                          ; $4f2d: $bd
    add a                                         ; $4f2e: $87
    add sp, $7e                                   ; $4f2f: $e8 $7e
    push bc                                       ; $4f31: $c5
    ld e, a                                       ; $4f32: $5f
    add a                                         ; $4f33: $87
    adc c                                         ; $4f34: $89
    ld [hl], a                                    ; $4f35: $77
    cp l                                          ; $4f36: $bd
    jp c, Jump_037_61d2                           ; $4f37: $da $d2 $61

    ld a, [bc]                                    ; $4f3a: $0a
    ld sp, hl                                     ; $4f3b: $f9
    ld l, e                                       ; $4f3c: $6b
    and $fd                                       ; $4f3d: $e6 $fd
    cp e                                          ; $4f3f: $bb
    ld [hl], b                                    ; $4f40: $70
    xor [hl]                                      ; $4f41: $ae
    cp $c5                                        ; $4f42: $fe $c5
    ld [hl], b                                    ; $4f44: $70
    adc a                                         ; $4f45: $8f
    cp a                                          ; $4f46: $bf
    db $fc                                        ; $4f47: $fc
    dec e                                         ; $4f48: $1d
    sbc a                                         ; $4f49: $9f
    sub $0b                                       ; $4f4a: $d6 $0b
    inc b                                         ; $4f4c: $04
    db $fd                                        ; $4f4d: $fd
    rst $00                                       ; $4f4e: $c7
    pop bc                                        ; $4f4f: $c1

jr_037_4f50:
    ld a, [hl]                                    ; $4f50: $7e
    ld [hl], c                                    ; $4f51: $71
    add hl, de                                    ; $4f52: $19
    ccf                                           ; $4f53: $3f
    cp d                                          ; $4f54: $ba
    ld e, a                                       ; $4f55: $5f
    ld hl, $ab5e                                  ; $4f56: $21 $5e $ab
    dec l                                         ; $4f59: $2d
    sub b                                         ; $4f5a: $90
    halt                                          ; $4f5b: $76
    ld h, h                                       ; $4f5c: $64
    ld b, b                                       ; $4f5d: $40
    rst $20                                       ; $4f5e: $e7
    cp l                                          ; $4f5f: $bd
    inc b                                         ; $4f60: $04
    add e                                         ; $4f61: $83
    ccf                                           ; $4f62: $3f
    jr z, jr_037_4f50                             ; $4f63: $28 $eb

    rst $30                                       ; $4f65: $f7
    ld d, a                                       ; $4f66: $57
    sbc e                                         ; $4f67: $9b
    xor $90                                       ; $4f68: $ee $90
    inc e                                         ; $4f6a: $1c
    jp $8b63                                      ; $4f6b: $c3 $63 $8b


    ld a, [hl]                                    ; $4f6e: $7e
    ld d, d                                       ; $4f6f: $52
    ld [hl], $00                                  ; $4f70: $36 $00
    inc l                                         ; $4f72: $2c
    add $8e                                       ; $4f73: $c6 $8e
    sub b                                         ; $4f75: $90
    xor a                                         ; $4f76: $af
    ldh [$5c], a                                  ; $4f77: $e0 $5c
    db $fd                                        ; $4f79: $fd
    or c                                          ; $4f7a: $b1
    ret z                                         ; $4f7b: $c8

    rst $18                                       ; $4f7c: $df
    or l                                          ; $4f7d: $b5
    ld b, l                                       ; $4f7e: $45
    rlca                                          ; $4f7f: $07
    sub h                                         ; $4f80: $94
    cp $cd                                        ; $4f81: $fe $cd
    inc l                                         ; $4f83: $2c
    rst $20                                       ; $4f84: $e7
    jp nc, $99bf                                  ; $4f85: $d2 $bf $99

    and l                                         ; $4f88: $a5
    daa                                           ; $4f89: $27
    jr c, jr_037_4f2c                             ; $4f8a: $38 $a0

    add e                                         ; $4f8c: $83
    sub [hl]                                      ; $4f8d: $96
    cp e                                          ; $4f8e: $bb
    ld d, a                                       ; $4f8f: $57
    dec de                                        ; $4f90: $1b
    ld a, d                                       ; $4f91: $7a
    rrca                                          ; $4f92: $0f
    pop de                                        ; $4f93: $d1
    ld l, c                                       ; $4f94: $69
    ld c, $c3                                     ; $4f95: $0e $c3
    ld h, e                                       ; $4f97: $63
    ld e, l                                       ; $4f98: $5d
    db $f4                                        ; $4f99: $f4
    sub e                                         ; $4f9a: $93
    sbc $43                                       ; $4f9b: $de $43
    ld l, [hl]                                    ; $4f9d: $6e
    ld hl, sp+$0f                                 ; $4f9e: $f8 $0f
    rst $30                                       ; $4fa0: $f7
    inc b                                         ; $4fa1: $04
    dec b                                         ; $4fa2: $05
    rra                                           ; $4fa3: $1f
    adc $d5                                       ; $4fa4: $ce $d5
    pop hl                                        ; $4fa6: $e1
    ld l, d                                       ; $4fa7: $6a
    ld l, a                                       ; $4fa8: $6f
    add a                                         ; $4fa9: $87
    or d                                          ; $4faa: $b2
    sub [hl]                                      ; $4fab: $96
    adc h                                         ; $4fac: $8c
    ld a, [hl]                                    ; $4fad: $7e
    push bc                                       ; $4fae: $c5
    ld a, d                                       ; $4faf: $7a
    xor e                                         ; $4fb0: $ab
    dec l                                         ; $4fb1: $2d
    dec e                                         ; $4fb2: $1d
    xor c                                         ; $4fb3: $a9
    or d                                          ; $4fb4: $b2
    call z, $8b14                                 ; $4fb5: $cc $14 $8b
    db $fc                                        ; $4fb8: $fc
    ld e, l                                       ; $4fb9: $5d
    db $db                                        ; $4fba: $db
    adc e                                         ; $4fbb: $8b
    add b                                         ; $4fbc: $80
    db $e3                                        ; $4fbd: $e3
    ld d, e                                       ; $4fbe: $53
    db $ec                                        ; $4fbf: $ec
    rst $18                                       ; $4fc0: $df
    call z, Call_000_0ce2                         ; $4fc1: $cc $e2 $0c
    ld a, [$a43e]                                 ; $4fc4: $fa $3e $a4
    add hl, sp                                    ; $4fc7: $39
    ld c, c                                       ; $4fc8: $49
    pop hl                                        ; $4fc9: $e1
    ld c, $fb                                     ; $4fca: $0e $fb
    ld [$fe40], a                                 ; $4fcc: $ea $40 $fe
    add sp, -$21                                  ; $4fcf: $e8 $df
    call z, $840d                                 ; $4fd1: $cc $0d $84
    ld a, [hl-]                                   ; $4fd4: $3a
    sub $fd                                       ; $4fd5: $d6 $fd
    add h                                         ; $4fd7: $84
    call nz, Call_037_6fed                        ; $4fd8: $c4 $ed $6f

Call_037_4fdb:
    jr nz, jr_037_505c                            ; $4fdb: $20 $7f

    ld l, $63                                     ; $4fdd: $2e $63
    db $10                                        ; $4fdf: $10
    add b                                         ; $4fe0: $80
    db $fc                                        ; $4fe1: $fc
    pop de                                        ; $4fe2: $d1
    cp a                                          ; $4fe3: $bf
    sbc c                                         ; $4fe4: $99
    db $d3                                        ; $4fe5: $d3
    ld h, $85                                     ; $4fe6: $26 $85
    sbc e                                         ; $4fe8: $9b
    db $fc                                        ; $4fe9: $fc
    dec d                                         ; $4fea: $15
    db $f4                                        ; $4feb: $f4
    ld d, b                                       ; $4fec: $50
    adc b                                         ; $4fed: $88
    db $fd                                        ; $4fee: $fd
    adc d                                         ; $4fef: $8a
    ret z                                         ; $4ff0: $c8

    adc h                                         ; $4ff1: $8c
    rst $38                                       ; $4ff2: $ff
    jr c, jr_037_5041                             ; $4ff3: $38 $4c

    and c                                         ; $4ff5: $a1
    ld [hl], a                                    ; $4ff6: $77
    adc e                                         ; $4ff7: $8b
    or $9e                                        ; $4ff8: $f6 $9e
    cp e                                          ; $4ffa: $bb
    sbc a                                         ; $4ffb: $9f
    ccf                                           ; $4ffc: $3f

jr_037_4ffd:
    db $ed                                        ; $4ffd: $ed
    and e                                         ; $4ffe: $a3
    jr jr_037_4ffd                                ; $4fff: $18 $fc

    ld d, l                                       ; $5001: $55
    add a                                         ; $5002: $87
    set 4, h                                      ; $5003: $cb $e4
    adc a                                         ; $5005: $8f
    cp $cd                                        ; $5006: $fe $cd
    call c, $2fcc                                 ; $5008: $dc $cc $2f
    ld d, c                                       ; $500b: $51
    add c                                         ; $500c: $81
    and c                                         ; $500d: $a1
    rst $28                                       ; $500e: $ef
    ld b, e                                       ; $500f: $43
    sbc d                                         ; $5010: $9a
    inc bc                                        ; $5011: $03
    ld c, h                                       ; $5012: $4c
    ld hl, sp-$04                                 ; $5013: $f8 $fc
    sbc c                                         ; $5015: $99
    ld l, [hl]                                    ; $5016: $6e
    rlca                                          ; $5017: $07
    xor a                                         ; $5018: $af
    and e                                         ; $5019: $a3
    ld c, h                                       ; $501a: $4c
    ld hl, sp-$04                                 ; $501b: $f8 $fc
    sbc c                                         ; $501d: $99
    ld [hl+], a                                   ; $501e: $22
    ld a, a                                       ; $501f: $7f
    ld [hl], a                                    ; $5020: $77
    rst $00                                       ; $5021: $c7
    ld [hl], $0b                                  ; $5022: $36 $0b
    ld d, $6a                                     ; $5024: $16 $6a
    inc l                                         ; $5026: $2c
    ld e, c                                       ; $5027: $59
    sub l                                         ; $5028: $95
    pop de                                        ; $5029: $d1
    ld c, e                                       ; $502a: $4b
    jp z, $ae7c                                   ; $502b: $ca $7c $ae

    cp $c5                                        ; $502e: $fe $c5
    ld [hl], b                                    ; $5030: $70
    db $e3                                        ; $5031: $e3
    jr c, jr_037_5060                             ; $5032: $38 $2c

    cp l                                          ; $5034: $bd
    add a                                         ; $5035: $87
    or l                                          ; $5036: $b5
    and l                                         ; $5037: $a5
    ei                                            ; $5038: $fb
    ld sp, hl                                     ; $5039: $f9
    cp e                                          ; $503a: $bb
    ld a, a                                       ; $503b: $7f
    cp $d0                                        ; $503c: $fe $d0
    sbc e                                         ; $503e: $9b
    sub [hl]                                      ; $503f: $96
    add hl, bc                                    ; $5040: $09

jr_037_5041:
    sbc a                                         ; $5041: $9f
    ccf                                           ; $5042: $3f
    db $d3                                        ; $5043: $d3
    dec a                                         ; $5044: $3d
    ld d, a                                       ; $5045: $57
    add a                                         ; $5046: $87
    cp e                                          ; $5047: $bb
    pop hl                                        ; $5048: $e1
    db $e3                                        ; $5049: $e3
    xor a                                         ; $504a: $af
    or $76                                        ; $504b: $f6 $76
    ret nc                                        ; $504d: $d0

    ld b, d                                       ; $504e: $42
    dec c                                         ; $504f: $0d
    ld h, h                                       ; $5050: $64
    add sp, -$05                                  ; $5051: $e8 $fb
    xor h                                         ; $5053: $ac
    rst $30                                       ; $5054: $f7
    ld e, h                                       ; $5055: $5c
    adc h                                         ; $5056: $8c
    push de                                       ; $5057: $d5
    push de                                       ; $5058: $d5
    pop hl                                        ; $5059: $e1
    or d                                          ; $505a: $b2
    ld b, [hl]                                    ; $505b: $46

jr_037_505c:
    ldh a, [$a6]                                  ; $505c: $f0 $a6
    add hl, sp                                    ; $505e: $39
    ret                                           ; $505f: $c9


Call_037_5060:
jr_037_5060:
    sub [hl]                                      ; $5060: $96
    call z, $a608                                 ; $5061: $cc $08 $a6
    inc d                                         ; $5064: $14
    ld a, [$5615]                                 ; $5065: $fa $15 $56
    ei                                            ; $5068: $fb
    ld l, b                                       ; $5069: $68
    ld h, [hl]                                    ; $506a: $66
    sub b                                         ; $506b: $90
    adc e                                         ; $506c: $8b
    rst $18                                       ; $506d: $df
    sub $e0                                       ; $506e: $d6 $e0
    db $ed                                        ; $5070: $ed
    inc l                                         ; $5071: $2c
    call nc, $fc81                                ; $5072: $d4 $81 $fc
    push de                                       ; $5075: $d5
    or c                                          ; $5076: $b1
    add $ce                                       ; $5077: $c6 $ce
    dec e                                         ; $5079: $1d
    dec bc                                        ; $507a: $0b
    ld e, [hl]                                    ; $507b: $5e
    ld [hl+], a                                   ; $507c: $22
    sub b                                         ; $507d: $90
    ccf                                           ; $507e: $3f
    ld c, h                                       ; $507f: $4c
    dec sp                                        ; $5080: $3b
    inc e                                         ; $5081: $1c
    ld l, e                                       ; $5082: $6b
    ld a, c                                       ; $5083: $79
    ld h, e                                       ; $5084: $63
    ccf                                           ; $5085: $3f
    xor b                                         ; $5086: $a8
    ld c, $77                                     ; $5087: $0e $77
    ld [hl], h                                    ; $5089: $74
    ret z                                         ; $508a: $c8

    ld c, l                                       ; $508b: $4d
    ld l, l                                       ; $508c: $6d
    add [hl]                                      ; $508d: $86
    scf                                           ; $508e: $37
    ld sp, hl                                     ; $508f: $f9
    inc b                                         ; $5090: $04
    ld [hl], h                                    ; $5091: $74
    ldh a, [$da]                                  ; $5092: $f0 $da
    sbc [hl]                                      ; $5094: $9e
    ldh a, [$15]                                  ; $5095: $f0 $15
    ld l, e                                       ; $5097: $6b
    ld bc, $dc49                                  ; $5098: $01 $49 $dc
    sbc e                                         ; $509b: $9b
    scf                                           ; $509c: $37
    call $cc01                                    ; $509d: $cd $01 $cc
    db $db                                        ; $50a0: $db
    sub a                                         ; $50a1: $97
    rst $08                                       ; $50a2: $cf
    ld h, $2a                                     ; $50a3: $26 $2a
    sbc h                                         ; $50a5: $9c
    ld a, b                                       ; $50a6: $78
    xor b                                         ; $50a7: $a8
    jp z, Jump_037_75bc                           ; $50a8: $ca $bc $75

    ld h, h                                       ; $50ab: $64
    db $eb                                        ; $50ac: $eb
    dec l                                         ; $50ad: $2d
    ld b, $7f                                     ; $50ae: $06 $7f
    ld h, l                                       ; $50b0: $65
    adc l                                         ; $50b1: $8d
    rst $10                                       ; $50b2: $d7

Call_037_50b3:
    ld l, d                                       ; $50b3: $6a
    dec bc                                        ; $50b4: $0b
    ld [hl], $53                                  ; $50b5: $36 $53
    ld d, b                                       ; $50b7: $50
    add d                                         ; $50b8: $82
    inc h                                         ; $50b9: $24
    push de                                       ; $50ba: $d5
    pop hl                                        ; $50bb: $e1
    ld h, $5b                                     ; $50bc: $26 $5b
    db $10                                        ; $50be: $10
    ld c, h                                       ; $50bf: $4c
    xor c                                         ; $50c0: $a9
    jp c, $83ac                                   ; $50c1: $da $ac $83

    rst $10                                       ; $50c4: $d7
    or $84                                        ; $50c5: $f6 $84
    xor a                                         ; $50c7: $af
    ld e, b                                       ; $50c8: $58
    dec bc                                        ; $50c9: $0b
    ld c, b                                       ; $50ca: $48
    ld [c], a                                     ; $50cb: $e2
    sbc $bc                                       ; $50cc: $de $bc
    ld l, c                                       ; $50ce: $69
    ld c, $cc                                     ; $50cf: $0e $cc
    ld [hl], b                                    ; $50d1: $70
    rst $28                                       ; $50d2: $ef
    ld d, $ed                                     ; $50d3: $16 $ed
    db $ed                                        ; $50d5: $ed
    ld d, a                                       ; $50d6: $57
    ld b, h                                       ; $50d7: $44
    ld h, [hl]                                    ; $50d8: $66
    db $fc                                        ; $50d9: $fc
    rst $00                                       ; $50da: $c7
    ld h, c                                       ; $50db: $61
    ld a, [bc]                                    ; $50dc: $0a
    rst $20                                       ; $50dd: $e7
    sbc $bd                                       ; $50de: $de $bd
    ld e, e                                       ; $50e0: $5b
    ld h, e                                       ; $50e1: $63
    scf                                           ; $50e2: $37
    ld hl, sp-$7d                                 ; $50e3: $f8 $83
    cp [hl]                                       ; $50e5: $be
    ld e, b                                       ; $50e6: $58
    inc c                                         ; $50e7: $0c
    ccf                                           ; $50e8: $3f
    ld c, b                                       ; $50e9: $48
    ld [hl], e                                    ; $50ea: $73
    jp Jump_037_5d63                              ; $50eb: $c3 $63 $5d


    ld [hl], c                                    ; $50ee: $71
    ldh a, [rBGP]                                 ; $50ef: $f0 $47
    add e                                         ; $50f1: $83
    cp a                                          ; $50f2: $bf
    ld c, $5e                                     ; $50f3: $0e $5e
    ld a, [c]                                     ; $50f5: $f2
    cp $6a                                        ; $50f6: $fe $6a
    xor a                                         ; $50f8: $af
    ld a, e                                       ; $50f9: $7b
    add d                                         ; $50fa: $82
    add d                                         ; $50fb: $82
    rrca                                          ; $50fc: $0f
    rst $20                                       ; $50fd: $e7
    ld [$3770], a                                 ; $50fe: $ea $70 $37
    ld hl, sp-$7d                                 ; $5101: $f8 $83
    xor d                                         ; $5103: $aa
    ld h, l                                       ; $5104: $65
    xor l                                         ; $5105: $ad
    ld h, e                                       ; $5106: $63
    inc sp                                        ; $5107: $33
    add sp, -$20                                  ; $5108: $e8 $e0
    or l                                          ; $510a: $b5
    ld h, l                                       ; $510b: $65
    inc c                                         ; $510c: $0c
    ld [bc], a                                    ; $510d: $02
    sub b                                         ; $510e: $90
    ccf                                           ; $510f: $3f
    ld a, [$f337]                                 ; $5110: $fa $37 $f3
    ld d, $e1                                     ; $5113: $16 $e1
    rra                                           ; $5115: $1f
    add a                                         ; $5116: $87
    or a                                          ; $5117: $b7
    add a                                         ; $5118: $87
    ld b, d                                       ; $5119: $42
    ld c, h                                       ; $511a: $4c
    ld [hl], e                                    ; $511b: $73
    jp $be4c                                      ; $511c: $c3 $4c $be


    cp [hl]                                       ; $511f: $be
    ld a, b                                       ; $5120: $78
    db $eb                                        ; $5121: $eb
    dec b                                         ; $5122: $05
    inc b                                         ; $5123: $04
    ccf                                           ; $5124: $3f
    ld l, a                                       ; $5125: $6f
    db $e3                                        ; $5126: $e3
    add sp, -$38                                  ; $5127: $e8 $c8
    sbc a                                         ; $5129: $9f
    ld a, c                                       ; $512a: $79
    dec sp                                        ; $512b: $3b
    ld a, b                                       ; $512c: $78
    ld l, l                                       ; $512d: $6d
    ld c, a                                       ; $512e: $4f
    ld [$de67], sp                                ; $512f: $08 $67 $de
    or h                                          ; $5132: $b4
    call z, $f170                                 ; $5133: $cc $70 $f1
    and d                                         ; $5136: $a2
    call nc, Call_037_4fdb                        ; $5137: $d4 $db $4f
    or c                                          ; $513a: $b1
    adc h                                         ; $513b: $8c
    adc $bc                                       ; $513c: $ce $bc
    ld e, c                                       ; $513e: $59
    db $10                                        ; $513f: $10
    ret nc                                        ; $5140: $d0

    ld a, e                                       ; $5141: $7b
    ret z                                         ; $5142: $c8

    call $e69b                                    ; $5143: $cd $9b $e6
    call z, Call_000_3170                         ; $5146: $cc $70 $31
    ld d, [hl]                                    ; $5149: $56
    rla                                           ; $514a: $17
    db $fd                                        ; $514b: $fd
    and h                                         ; $514c: $a4
    ld l, b                                       ; $514d: $68
    ld a, [bc]                                    ; $514e: $0a
    sbc $73                                       ; $514f: $de $73
    push af                                       ; $5151: $f5
    rst $28                                       ; $5152: $ef
    pop af                                        ; $5153: $f1
    or a                                          ; $5154: $b7
    jr @-$10                                      ; $5155: $18 $ee

    ld a, [hl+]                                   ; $5157: $2a
    add hl, hl                                    ; $5158: $29
    db $eb                                        ; $5159: $eb
    xor b                                         ; $515a: $a8
    sub d                                         ; $515b: $92
    ld c, a                                       ; $515c: $4f
    pop bc                                        ; $515d: $c1
    db $db                                        ; $515e: $db
    pop hl                                        ; $515f: $e1
    or c                                          ; $5160: $b1
    ld l, a                                       ; $5161: $6f
    ld l, h                                       ; $5162: $6c
    ld e, c                                       ; $5163: $59
    res 2, [hl]                                   ; $5164: $cb $96
    adc b                                         ; $5166: $88
    push de                                       ; $5167: $d5
    add [hl]                                      ; $5168: $86
    xor d                                         ; $5169: $aa
    push de                                       ; $516a: $d5
    ld b, l                                       ; $516b: $45
    ld d, e                                       ; $516c: $53
    ldh a, [$f6]                                  ; $516d: $f0 $f6
    or e                                          ; $516f: $b3
    sbc c                                         ; $5170: $99
    ld de, $71ae                                  ; $5171: $11 $ae $71
    cp h                                          ; $5174: $bc
    cp l                                          ; $5175: $bd
    ld e, e                                       ; $5176: $5b
    or h                                          ; $5177: $b4
    scf                                           ; $5178: $37
    call Call_037_4901                            ; $5179: $cd $01 $49
    rst $38                                       ; $517c: $ff
    ld [$5e28], sp                                ; $517d: $08 $28 $5e
    sub h                                         ; $5180: $94
    or $f8                                        ; $5181: $f6 $f8
    db $db                                        ; $5183: $db
    pop de                                        ; $5184: $d1
    sub [hl]                                      ; $5185: $96
    ei                                            ; $5186: $fb
    ret c                                         ; $5187: $d8

    sub h                                         ; $5188: $94
    ld [hl], b                                    ; $5189: $70
    ld h, c                                       ; $518a: $61
    ld l, h                                       ; $518b: $6c
    ldh a, [$f6]                                  ; $518c: $f0 $f6
    ld [hl], $f6                                  ; $518e: $36 $f6
    xor [hl]                                      ; $5190: $ae
    rst $30                                       ; $5191: $f7
    ld e, h                                       ; $5192: $5c
    dec e                                         ; $5193: $1d
    add $06                                       ; $5194: $c6 $06
    ld b, d                                       ; $5196: $42
    ld c, a                                       ; $5197: $4f
    or l                                          ; $5198: $b5
    cp [hl]                                       ; $5199: $be
    ld hl, sp-$15                                 ; $519a: $f8 $eb
    ld b, $7f                                     ; $519c: $06 $7f
    ld d, b                                       ; $519e: $50
    srl l                                         ; $519f: $cb $3d
    adc h                                         ; $51a1: $8c
    sbc $34                                       ; $51a2: $de $34
    rlca                                          ; $51a4: $07
    jp Jump_000_1163                              ; $51a5: $c3 $63 $11


    ld a, d                                       ; $51a8: $7a
    rst $38                                       ; $51a9: $ff
    ld d, d                                       ; $51aa: $52
    dec e                                         ; $51ab: $1d
    ld b, [hl]                                    ; $51ac: $46
    ld h, e                                       ; $51ad: $63
    ld b, a                                       ; $51ae: $47
    ret z                                         ; $51af: $c8

    ld d, a                                       ; $51b0: $57
    ret nc                                        ; $51b1: $d0

    cp e                                          ; $51b2: $bb
    inc bc                                        ; $51b3: $03
    ld a, [hl-]                                   ; $51b4: $3a
    ld l, b                                       ; $51b5: $68
    ld h, c                                       ; $51b6: $61
    push bc                                       ; $51b7: $c5
    ld bc, $7386                                  ; $51b8: $01 $86 $73
    ld c, a                                       ; $51bb: $4f
    dec [hl]                                      ; $51bc: $35
    sub b                                         ; $51bd: $90
    and c                                         ; $51be: $a1
    add c                                         ; $51bf: $81
    ld d, b                                       ; $51c0: $50
    ld h, e                                       ; $51c1: $63
    ld c, a                                       ; $51c2: $4f
    or l                                          ; $51c3: $b5
    cp [hl]                                       ; $51c4: $be
    ld hl, sp-$15                                 ; $51c5: $f8 $eb
    ld a, [hl+]                                   ; $51c7: $2a
    jp hl                                         ; $51c8: $e9


    ld e, [hl]                                    ; $51c9: $5e
    db $fc                                        ; $51ca: $fc
    dec [hl]                                      ; $51cb: $35
    or [hl]                                       ; $51cc: $b6
    sbc a                                         ; $51cd: $9f
    push bc                                       ; $51ce: $c5
    adc e                                         ; $51cf: $8b
    ld a, [hl+]                                   ; $51d0: $2a
    or b                                          ; $51d1: $b0
    ld [hl], h                                    ; $51d2: $74
    ld [hl], h                                    ; $51d3: $74
    ld d, b                                       ; $51d4: $50
    cp l                                          ; $51d5: $bd
    add c                                         ; $51d6: $81
    dec h                                         ; $51d7: $25
    xor e                                         ; $51d8: $ab
    ld [de], a                                    ; $51d9: $12
    or c                                          ; $51da: $b1
    jp c, Jump_037_769b                           ; $51db: $da $9b $76

    jr jr_037_5205                                ; $51de: $18 $25

    add c                                         ; $51e0: $81
    ld [hl], a                                    ; $51e1: $77
    ld a, [$6bce]                                 ; $51e2: $fa $ce $6b
    cp c                                          ; $51e5: $b9
    ld a, e                                       ; $51e6: $7b
    or l                                          ; $51e7: $b5
    and c                                         ; $51e8: $a1
    inc b                                         ; $51e9: $04
    ld c, c                                       ; $51ea: $49
    ld a, d                                       ; $51eb: $7a
    jp nz, $ac57                                  ; $51ec: $c2 $57 $ac

    dec b                                         ; $51ef: $05
    inc h                                         ; $51f0: $24
    ld [hl], c                                    ; $51f1: $71
    ld l, a                                       ; $51f2: $6f
    ld a, $77                                     ; $51f3: $3e $77
    jr @+$4f                                      ; $51f5: $18 $4d

    inc b                                         ; $51f7: $04
    or b                                          ; $51f8: $b0
    ld c, h                                       ; $51f9: $4c
    rst $18                                       ; $51fa: $df
    ld [hl], a                                    ; $51fb: $77
    pop af                                        ; $51fc: $f1
    sub a                                         ; $51fd: $97
    dec b                                         ; $51fe: $05
    ld bc, $e591                                  ; $51ff: $01 $91 $e5
    ret                                           ; $5202: $c9


    add $01                                       ; $5203: $c6 $01

jr_037_5205:
    ld c, e                                       ; $5205: $4b
    sbc c                                         ; $5206: $99
    ldh a, [$e5]                                  ; $5207: $f0 $e5
    and $31                                       ; $5209: $e6 $31
    add hl, sp                                    ; $520b: $39
    and e                                         ; $520c: $a3
    cp [hl]                                       ; $520d: $be
    ld a, h                                       ; $520e: $7c
    ld l, [hl]                                    ; $520f: $6e
    adc d                                         ; $5210: $8a
    ld a, [bc]                                    ; $5211: $0a
    ld [hl], e                                    ; $5212: $73
    ld b, e                                       ; $5213: $43
    add l                                         ; $5214: $85
    cp a                                          ; $5215: $bf
    ld h, b                                       ; $5216: $60
    ccf                                           ; $5217: $3f
    push de                                       ; $5218: $d5
    dec e                                         ; $5219: $1d
    ld c, d                                       ; $521a: $4a
    or l                                          ; $521b: $b5
    dec b                                         ; $521c: $05
    xor [hl]                                      ; $521d: $ae
    call $c301                                    ; $521e: $cd $01 $c3
    add hl, hl                                    ; $5221: $29
    db $fd                                        ; $5222: $fd
    ld a, [$df92]                                 ; $5223: $fa $92 $df
    ld de, $b006                                  ; $5226: $11 $06 $b0
    add h                                         ; $5229: $84
    adc $9c                                       ; $522a: $ce $9c
    inc bc                                        ; $522c: $03
    adc h                                         ; $522d: $8c
    rra                                           ; $522e: $1f
    rlca                                          ; $522f: $07
    cp [hl]                                       ; $5230: $be
    add sp, $32                                   ; $5231: $e8 $32
    ld e, a                                       ; $5233: $5f
    ld l, h                                       ; $5234: $6c
    ld b, [hl]                                    ; $5235: $46
    dec c                                         ; $5236: $0d
    rst $10                                       ; $5237: $d7
    and $8c                                       ; $5238: $e6 $8c
    db $f4                                        ; $523a: $f4
    ld a, [de]                                    ; $523b: $1a
    or h                                          ; $523c: $b4
    inc [hl]                                      ; $523d: $34
    add hl, sp                                    ; $523e: $39
    ld b, $ee                                     ; $523f: $06 $ee
    sub a                                         ; $5241: $97
    ret nz                                        ; $5242: $c0

    rlc c                                         ; $5243: $cb $01
    adc h                                         ; $5245: $8c
    ld [c], a                                     ; $5246: $e2
    db $ec                                        ; $5247: $ec
    sub d                                         ; $5248: $92
    ld l, d                                       ; $5249: $6a
    ld c, e                                       ; $524a: $4b
    ld b, a                                       ; $524b: $47
    ld c, b                                       ; $524c: $48
    sbc b                                         ; $524d: $98
    ccf                                           ; $524e: $3f
    ld c, e                                       ; $524f: $4b
    ld c, $b3                                     ; $5250: $0e $b3
    db $fd                                        ; $5252: $fd
    ld b, c                                       ; $5253: $41
    res 7, d                                      ; $5254: $cb $ba
    ld c, c                                       ; $5256: $49
    ld e, $79                                     ; $5257: $1e $79
    dec l                                         ; $5259: $2d
    inc e                                         ; $525a: $1c
    sub a                                         ; $525b: $97
    ld a, b                                       ; $525c: $78
    ld sp, hl                                     ; $525d: $f9
    sbc b                                         ; $525e: $98
    inc e                                         ; $525f: $1c
    add hl, bc                                    ; $5260: $09
    reti                                          ; $5261: $d9


    ld a, [hl]                                    ; $5262: $7e
    adc b                                         ; $5263: $88
    rst $18                                       ; $5264: $df
    pop de                                        ; $5265: $d1
    ld b, c                                       ; $5266: $41
    dec [hl]                                      ; $5267: $35
    ld e, $01                                     ; $5268: $1e $01
    cpl                                           ; $526a: $2f
    rlca                                          ; $526b: $07
    call z, $dfcf                                 ; $526c: $cc $cf $df
    sub a                                         ; $526f: $97
    ld b, b                                       ; $5270: $40
    db $fc                                        ; $5271: $fc
    sbc l                                         ; $5272: $9d
    ld e, e                                       ; $5273: $5b
    ld h, l                                       ; $5274: $65
    rst $30                                       ; $5275: $f7
    db $eb                                        ; $5276: $eb
    jp nc, $8c39                                  ; $5277: $d2 $39 $8c

    db $f4                                        ; $527a: $f4
    rst $28                                       ; $527b: $ef
    ld [hl], c                                    ; $527c: $71
    adc c                                         ; $527d: $89
    dec sp                                        ; $527e: $3b
    jp z, Jump_037_66ff                           ; $527f: $ca $ff $66

    call z, $c301                                 ; $5282: $cc $01 $c3
    ld a, $25                                     ; $5285: $3e $25
    ld l, $25                                     ; $5287: $2e $25
    dec e                                         ; $5289: $1d
    ld b, [hl]                                    ; $528a: $46
    rst $38                                       ; $528b: $ff
    ld a, [hl-]                                   ; $528c: $3a
    rlca                                          ; $528d: $07
    or e                                          ; $528e: $b3
    sbc b                                         ; $528f: $98
    add $e9                                       ; $5290: $c6 $e9
    ld h, l                                       ; $5292: $65
    xor d                                         ; $5293: $aa
    db $e3                                        ; $5294: $e3
    or b                                          ; $5295: $b0
    or b                                          ; $5296: $b0
    halt                                          ; $5297: $76
    ld c, $8c                                     ; $5298: $0e $8c
    ld h, d                                       ; $529a: $62
    ld hl, sp-$63                                 ; $529b: $f8 $9d
    ld sp, hl                                     ; $529d: $f9
    inc bc                                        ; $529e: $03
    ld a, a                                       ; $529f: $7f
    db $f4                                        ; $52a0: $f4
    ld a, [de]                                    ; $52a1: $1a
    ld [hl], h                                    ; $52a2: $74
    ld c, $c9                                     ; $52a3: $0e $c9
    rst $10                                       ; $52a5: $d7
    ld e, [hl]                                    ; $52a6: $5e
    ld c, d                                       ; $52a7: $4a
    ld [c], a                                     ; $52a8: $e2
    ld [hl], a                                    ; $52a9: $77
    halt                                          ; $52aa: $76
    dec b                                         ; $52ab: $05
    db $fc                                        ; $52ac: $fc
    ld a, [hl-]                                   ; $52ad: $3a
    ld e, b                                       ; $52ae: $58
    rst $20                                       ; $52af: $e7
    adc h                                         ; $52b0: $8c
    ld b, c                                       ; $52b1: $41
    db $10                                        ; $52b2: $10
    sub a                                         ; $52b3: $97
    add sp, -$32                                  ; $52b4: $e8 $ce
    ld b, c                                       ; $52b6: $41
    xor c                                         ; $52b7: $a9
    dec b                                         ; $52b8: $05
    xor [hl]                                      ; $52b9: $ae
    call $b301                                    ; $52ba: $cd $01 $b3
    ld e, [hl]                                    ; $52bd: $5e
    ld e, h                                       ; $52be: $5c
    xor l                                         ; $52bf: $ad
    cp $65                                        ; $52c0: $fe $65
    adc [hl]                                      ; $52c2: $8e
    cp c                                          ; $52c3: $b9
    add hl, de                                    ; $52c4: $19
    ld [hl], e                                    ; $52c5: $73
    ld [hl], e                                    ; $52c6: $73
    xor d                                         ; $52c7: $aa
    ld l, e                                       ; $52c8: $6b
    or e                                          ; $52c9: $b3
    adc [hl]                                      ; $52ca: $8e
    cp d                                          ; $52cb: $ba
    ld [hl], d                                    ; $52cc: $72
    ld c, c                                       ; $52cd: $49
    sub a                                         ; $52ce: $97
    ldh a, [$8f]                                  ; $52cf: $f0 $8f
    dec e                                         ; $52d1: $1d
    ld l, l                                       ; $52d2: $6d
    ld c, d                                       ; $52d3: $4a
    ld e, c                                       ; $52d4: $59
    db $d3                                        ; $52d5: $d3
    ld l, e                                       ; $52d6: $6b
    ret nc                                        ; $52d7: $d0

    ld a, [hl-]                                   ; $52d8: $3a
    rlca                                          ; $52d9: $07
    inc hl                                        ; $52da: $23
    cp a                                          ; $52db: $bf
    inc c                                         ; $52dc: $0c
    add $56                                       ; $52dd: $c6 $56
    ld e, e                                       ; $52df: $5b
    ld a, [hl-]                                   ; $52e0: $3a
    ld l, h                                       ; $52e1: $6c
    ld l, h                                       ; $52e2: $6c
    ld [hl], h                                    ; $52e3: $74
    ld c, $23                                     ; $52e4: $0e $23
    cpl                                           ; $52e6: $2f
    ret                                           ; $52e7: $c9


    cp $ba                                        ; $52e8: $fe $ba
    call nc, $e59d                                ; $52ea: $d4 $9d $e5
    adc a                                         ; $52ed: $8f
    ret                                           ; $52ee: $c9


    ld bc, $4b33                                  ; $52ef: $01 $33 $4b
    ldh [rLCDC], a                                ; $52f2: $e0 $40
    ld l, h                                       ; $52f4: $6c
    ld h, a                                       ; $52f5: $67
    sub [hl]                                      ; $52f6: $96
    ld l, e                                       ; $52f7: $6b
    ld l, a                                       ; $52f8: $6f
    add hl, sp                                    ; $52f9: $39
    add hl, bc                                    ; $52fa: $09
    sbc e                                         ; $52fb: $9b
    or c                                          ; $52fc: $b1
    ld d, $a8                                     ; $52fd: $16 $a8
    or [hl]                                       ; $52ff: $b6
    inc [hl]                                      ; $5300: $34
    pop hl                                        ; $5301: $e1
    jr c, @+$2e                                   ; $5302: $38 $2c

    jp $0e2c                                      ; $5304: $c3 $2c $0e


    ld [hl], b                                    ; $5307: $70
    ld c, $c3                                     ; $5308: $0e $c3
    db $fc                                        ; $530a: $fc
    ld b, c                                       ; $530b: $41
    ld [c], a                                     ; $530c: $e2
    db $f4                                        ; $530d: $f4
    ld c, $a3                                     ; $530e: $0e $a3
    rst $10                                       ; $5310: $d7
    jp hl                                         ; $5311: $e9


    rst $38                                       ; $5312: $ff
    ret z                                         ; $5313: $c8

    ld bc, $2943                                  ; $5314: $01 $43 $29
    ld l, e                                       ; $5317: $6b
    add c                                         ; $5318: $81
    rst $18                                       ; $5319: $df
    cp c                                          ; $531a: $b9
    xor a                                         ; $531b: $af
    dec bc                                        ; $531c: $0b
    ld e, [hl]                                    ; $531d: $5e
    ld d, b                                       ; $531e: $50
    sbc d                                         ; $531f: $9a
    inc bc                                        ; $5320: $03
    di                                            ; $5321: $f3
    db $fd                                        ; $5322: $fd
    pop bc                                        ; $5323: $c1
    or b                                          ; $5324: $b0
    ld [hl], h                                    ; $5325: $74
    xor [hl]                                      ; $5326: $ae
    adc a                                         ; $5327: $8f
    jr nz, @-$3d                                  ; $5328: $20 $c1

    ld l, a                                       ; $532a: $6f
    add hl, sp                                    ; $532b: $39
    di                                            ; $532c: $f3
    ld a, a                                       ; $532d: $7f
    pop de                                        ; $532e: $d1
    call nc, Call_000_3a63                        ; $532f: $d4 $63 $3a

Jump_037_5332:
    adc d                                         ; $5332: $8a
    ld a, [hl]                                    ; $5333: $7e
    add b                                         ; $5334: $80
    inc e                                         ; $5335: $1c
    ld c, c                                       ; $5336: $49
    ld h, e                                       ; $5337: $63
    adc [hl]                                      ; $5338: $8e
    add c                                         ; $5339: $81
    or a                                          ; $533a: $b7
    cp a                                          ; $533b: $bf
    or e                                          ; $533c: $b3
    jr z, jr_037_5378                             ; $533d: $28 $39

    ld a, [hl]                                    ; $533f: $7e
    and $1c                                       ; $5340: $e6 $1c
    or e                                          ; $5342: $b3
    jr z, @-$34                                   ; $5343: $28 $ca

    ld e, d                                       ; $5345: $5a
    and b                                         ; $5346: $a0
    jp c, Jump_000_2652                           ; $5347: $da $52 $26

    ld a, a                                       ; $534a: $7f
    ld h, d                                       ; $534b: $62
    ld a, [hl]                                    ; $534c: $7e
    and e                                         ; $534d: $a3
    pop bc                                        ; $534e: $c1
    sbc a                                         ; $534f: $9f
    ld [hl], e                                    ; $5350: $73
    and e                                         ; $5351: $a3
    cp l                                          ; $5352: $bd
    jp c, $b634                                   ; $5353: $da $34 $b6

    jp c, Jump_037_79d2                           ; $5356: $da $d2 $79

    add sp, $2d                                   ; $5359: $e8 $2d
    ld [hl-], a                                   ; $535b: $32
    rst $20                                       ; $535c: $e7
    ld [hl], e                                    ; $535d: $73
    rlca                                          ; $535e: $07
    and l                                         ; $535f: $a5
    ld h, e                                       ; $5360: $63
    ld a, [hl-]                                   ; $5361: $3a
    rst $30                                       ; $5362: $f7
    ld [hl], l                                    ; $5363: $75
    ld [hl], e                                    ; $5364: $73
    ld c, $33                                     ; $5365: $0e $33
    ld a, a                                       ; $5367: $7f
    and c                                         ; $5368: $a1
    rla                                           ; $5369: $17
    ret nz                                        ; $536a: $c0

    rst $28                                       ; $536b: $ef
    xor b                                         ; $536c: $a8
    ret c                                         ; $536d: $d8

    dec de                                        ; $536e: $1b
    jp nz, $ceb5                                  ; $536f: $c2 $b5 $ce

    ld bc, $75c3                                  ; $5372: $01 $c3 $75
    or $a5                                        ; $5375: $f6 $a5
    ld c, h                                       ; $5377: $4c

jr_037_5378:
    sub b                                         ; $5378: $90
    ld c, e                                       ; $5379: $4b
    pop de                                        ; $537a: $d1

Call_037_537b:
    call z, Call_000_0392                         ; $537b: $cc $92 $03
    ret                                           ; $537e: $c9


    ld a, a                                       ; $537f: $7f
    ret nc                                        ; $5380: $d0

    db $f4                                        ; $5381: $f4
    ld [c], a                                     ; $5382: $e2
    or a                                          ; $5383: $b7
    ld [hl-], a                                   ; $5384: $32
    rst $28                                       ; $5385: $ef
    ld [hl], $c4                                  ; $5386: $36 $c4
    ld h, [hl]                                    ; $5388: $66
    add hl, sp                                    ; $5389: $39
    or e                                          ; $538a: $b3
    ret nc                                        ; $538b: $d0

    ccf                                           ; $538c: $3f
    jr jr_037_5399                                ; $538d: $18 $0a

    dec sp                                        ; $538f: $3b
    call z, Call_000_1d94                         ; $5390: $cc $94 $1d
    sub e                                         ; $5393: $93
    inc bc                                        ; $5394: $03
    or e                                          ; $5395: $b3
    ld a, [hl+]                                   ; $5396: $2a
    inc b                                         ; $5397: $04
    add l                                         ; $5398: $85

jr_037_5399:
    dec e                                         ; $5399: $1d
    dec d                                         ; $539a: $15
    sub h                                         ; $539b: $94
    add $3d                                       ; $539c: $c6 $3d
    ld hl, sp-$73                                 ; $539e: $f8 $8d
    ld a, [hl-]                                   ; $53a0: $3a
    rlca                                          ; $53a1: $07
    or e                                          ; $53a2: $b3
    ld e, a                                       ; $53a3: $5f
    ld [hl-], a                                   ; $53a4: $32
    ld l, b                                       ; $53a5: $68
    jp c, $efb9                                   ; $53a6: $da $b9 $ef

    rst $10                                       ; $53a9: $d7
    sbc $72                                       ; $53aa: $de $72
    ld [hl], e                                    ; $53ac: $73
    ldh [$fd], a                                  ; $53ad: $e0 $fd
    ld d, e                                       ; $53af: $53
    db $dd                                        ; $53b0: $dd
    ld h, c                                       ; $53b1: $61
    cp $47                                        ; $53b2: $fe $47
    ldh [$cb], a                                  ; $53b4: $e0 $cb
    ld bc, $5f33                                  ; $53b6: $01 $33 $5f
    or d                                          ; $53b9: $b2
    and [hl]                                      ; $53ba: $a6
    and c                                         ; $53bb: $a1
    or b                                          ; $53bc: $b0
    ld b, e                                       ; $53bd: $43
    inc sp                                        ; $53be: $33
    adc c                                         ; $53bf: $89
    add c                                         ; $53c0: $81
    add c                                         ; $53c1: $81
    sbc a                                         ; $53c2: $9f
    inc bc                                        ; $53c3: $03
    adc h                                         ; $53c4: $8c
    adc d                                         ; $53c5: $8a
    jp nc, $b418                                  ; $53c6: $d2 $18 $b4

    ld [hl], h                                    ; $53c9: $74
    call nc, Call_000_3375                        ; $53ca: $d4 $75 $33
    dec sp                                        ; $53cd: $3b
    ld h, $07                                     ; $53ce: $26 $07
    or e                                          ; $53d0: $b3
    add hl, hl                                    ; $53d1: $29
    pop hl                                        ; $53d2: $e1
    xor a                                         ; $53d3: $af
    ld c, h                                       ; $53d4: $4c
    cp $8f                                        ; $53d5: $fe $8f
    cp a                                          ; $53d7: $bf
    jp c, Jump_000_0392                           ; $53d8: $da $92 $03

    adc h                                         ; $53db: $8c
    call nc, Call_037_7fab                        ; $53dc: $d4 $ab $7f
    ld h, a                                       ; $53df: $67
    ld a, [hl]                                    ; $53e0: $7e
    ld bc, $f170                                  ; $53e1: $01 $70 $f1
    ld e, e                                       ; $53e4: $5b
    ld c, $43                                     ; $53e5: $0e $43
    push af                                       ; $53e7: $f5
    and a                                         ; $53e8: $a7
    xor h                                         ; $53e9: $ac
    dec b                                         ; $53ea: $05
    jp z, $efe4                                   ; $53eb: $ca $e4 $ef

    cp $1f                                        ; $53ee: $fe $1f
    ld h, c                                       ; $53f0: $61
    sbc d                                         ; $53f1: $9a
    inc bc                                        ; $53f2: $03
    and e                                         ; $53f3: $a3
    inc l                                         ; $53f4: $2c
    inc bc                                        ; $53f5: $03
    ld b, $f5                                     ; $53f6: $06 $f5
    dec sp                                        ; $53f8: $3b
    bit 3, a                                      ; $53f9: $cb $5f
    ld a, [hl]                                    ; $53fb: $7e
    add hl, hl                                    ; $53fc: $29
    add c                                         ; $53fd: $81
    inc e                                         ; $53fe: $1c
    inc sp                                        ; $53ff: $33
    ld a, a                                       ; $5400: $7f
    call nz, Call_037_5abf                        ; $5401: $c4 $bf $5a
    ld a, [hl]                                    ; $5404: $7e
    ld b, a                                       ; $5405: $47
    ld a, a                                       ; $5406: $7f
    sub [hl]                                      ; $5407: $96
    ld a, [hl]                                    ; $5408: $7e
    ld b, b                                       ; $5409: $40
    cp $6e                                        ; $540a: $fe $6e
    sub c                                         ; $540c: $91
    inc bc                                        ; $540d: $03
    inc hl                                        ; $540e: $23
    xor a                                         ; $540f: $af
    ld bc, $9854                                  ; $5410: $01 $54 $98
    inc bc                                        ; $5413: $03
    jp $f7a8                                      ; $5414: $c3 $a8 $f7


    add hl, sp                                    ; $5417: $39
    adc [hl]                                      ; $5418: $8e
    ld [hl-], a                                   ; $5419: $32
    pop hl                                        ; $541a: $e1
    db $d3                                        ; $541b: $d3
    ld e, e                                       ; $541c: $5b
    ld c, $43                                     ; $541d: $0e $43
    add hl, hl                                    ; $541f: $29
    ld l, e                                       ; $5420: $6b
    add hl, bc                                    ; $5421: $09
    cp $ca                                        ; $5422: $fe $ca
    jr z, jr_037_5490                             ; $5424: $28 $6a

    scf                                           ; $5426: $37
    xor [hl]                                      ; $5427: $ae
    call $2301                                    ; $5428: $cd $01 $23
    dec l                                         ; $542b: $2d
    inc [hl]                                      ; $542c: $34
    ld [hl], $07                                  ; $542d: $36 $07
    jp Jump_000_2129                              ; $542f: $c3 $29 $21


    and c                                         ; $5432: $a1
    ld a, a                                       ; $5433: $7f
    ld h, a                                       ; $5434: $67
    and [hl]                                      ; $5435: $a6
    ccf                                           ; $5436: $3f
    bit 6, d                                      ; $5437: $cb $72
    adc h                                         ; $5439: $8c
    ld [hl], d                                    ; $543a: $72
    ld h, l                                       ; $543b: $65
    ld a, a                                       ; $543c: $7f
    rlc h                                         ; $543d: $cb $04
    ld [hl], l                                    ; $543f: $75
    inc c                                         ; $5440: $0c
    db $e4                                        ; $5441: $e4
    jp $e894                                      ; $5442: $c3 $94 $e8


    adc e                                         ; $5445: $8b
    rst $18                                       ; $5446: $df
    ld a, [hl-]                                   ; $5447: $3a
    ld d, d                                       ; $5448: $52
    ld d, c                                       ; $5449: $51
    ld a, l                                       ; $544a: $7d
    ld e, l                                       ; $544b: $5d
    sbc e                                         ; $544c: $9b
    inc bc                                        ; $544d: $03
    ld b, e                                       ; $544e: $43
    jp hl                                         ; $544f: $e9


    ld h, c                                       ; $5450: $61
    add hl, bc                                    ; $5451: $09
    ld a, [hl]                                    ; $5452: $7e
    dec hl                                        ; $5453: $2b
    di                                            ; $5454: $f3
    rst $18                                       ; $5455: $df
    ld e, c                                       ; $5456: $59
    add hl, bc                                    ; $5457: $09
    sbc l                                         ; $5458: $9d
    add hl, sp                                    ; $5459: $39
    rlca                                          ; $545a: $07
    ld b, e                                       ; $545b: $43
    dec b                                         ; $545c: $05
    ld a, h                                       ; $545d: $7c
    inc b                                         ; $545e: $04
    add $ef                                       ; $545f: $c6 $ef

Jump_037_5461:
    ld l, h                                       ; $5461: $6c
    adc d                                         ; $5462: $8a
    cp b                                          ; $5463: $b8
    push bc                                       ; $5464: $c5
    and $8c                                       ; $5465: $e6 $8c
    rst $10                                       ; $5467: $d7
    ld [$c68b], a                                 ; $5468: $ea $8b $c6
    cp d                                          ; $546b: $ba
    ld [hl], e                                    ; $546c: $73
    ret nc                                        ; $546d: $d0

    jr jr_037_54e8                                ; $546e: $18 $78

    ld a, a                                       ; $5470: $7f
    ld hl, $2307                                  ; $5471: $21 $07 $23
    xor a                                         ; $5474: $af
    add l                                         ; $5475: $85
    sbc a                                         ; $5476: $9f
    add hl, hl                                    ; $5477: $29
    ld [hl], a                                    ; $5478: $77
    call nz, $f646                                ; $5479: $c4 $46 $f6
    add b                                         ; $547c: $80
    ld a, d                                       ; $547d: $7a
    ld c, h                                       ; $547e: $4c
    ld c, $c9                                     ; $547f: $0e $c9
    ld e, a                                       ; $5481: $5f
    ld h, h                                       ; $5482: $64
    ld c, h                                       ; $5483: $4c
    ld b, a                                       ; $5484: $47
    ld e, l                                       ; $5485: $5d
    nop                                           ; $5486: $00
    sub [hl]                                      ; $5487: $96
    inc e                                         ; $5488: $1c
    ld c, c                                       ; $5489: $49
    sub [hl]                                      ; $548a: $96
    cp e                                          ; $548b: $bb
    rla                                           ; $548c: $17
    jp z, $717c                                   ; $548d: $ca $7c $71

jr_037_5490:
    inc c                                         ; $5490: $0c
    ret nc                                        ; $5491: $d0

    ret c                                         ; $5492: $d8

    inc l                                         ; $5493: $2c
    rlca                                          ; $5494: $07
    adc h                                         ; $5495: $8c
    ld l, d                                       ; $5496: $6a
    ld e, a                                       ; $5497: $5f
    ld d, b                                       ; $5498: $50
    db $fd                                        ; $5499: $fd
    ld a, e                                       ; $549a: $7b
    ld de, $bc65                                  ; $549b: $11 $65 $bc
    inc b                                         ; $549e: $04
    ld a, l                                       ; $549f: $7d
    ld e, h                                       ; $54a0: $5c
    sub a                                         ; $54a1: $97
    db $e4                                        ; $54a2: $e4
    inc sp                                        ; $54a3: $33
    db $d3                                        ; $54a4: $d3
    cp b                                          ; $54a5: $b8
    db $f4                                        ; $54a6: $f4
    cp $1c                                        ; $54a7: $fe $1c
    jp $d5fc                                      ; $54a9: $c3 $fc $d5


    ld [hl], c                                    ; $54ac: $71
    dec l                                         ; $54ad: $2d
    ld [hl], h                                    ; $54ae: $74
    db $e4                                        ; $54af: $e4
    sub a                                         ; $54b0: $97
    ld d, e                                       ; $54b1: $53
    cpl                                           ; $54b2: $2f
    add hl, bc                                    ; $54b3: $09
    or $ef                                        ; $54b4: $f6 $ef
    dec c                                         ; $54b6: $0d
    ld [hl], e                                    ; $54b7: $73
    inc sp                                        ; $54b8: $33
    cp a                                          ; $54b9: $bf
    xor a                                         ; $54ba: $af
    sub [hl]                                      ; $54bb: $96
    ld a, e                                       ; $54bc: $7b
    ld c, h                                       ; $54bd: $4c
    rst $20                                       ; $54be: $e7
    and b                                         ; $54bf: $a0
    ld e, d                                       ; $54c0: $5a
    ld b, d                                       ; $54c1: $42
    ld h, a                                       ; $54c2: $67
    adc $01                                       ; $54c3: $ce $01
    inc hl                                        ; $54c5: $23
    push de                                       ; $54c6: $d5
    ld h, [hl]                                    ; $54c7: $66
    ld d, a                                       ; $54c8: $57
    add a                                         ; $54c9: $87
    ld e, l                                       ; $54ca: $5d
    ei                                            ; $54cb: $fb
    cp $91                                        ; $54cc: $fe $91
    inc bc                                        ; $54ce: $03
    and e                                         ; $54cf: $a3
    add e                                         ; $54d0: $83
    ld [de], a                                    ; $54d1: $12
    ld h, d                                       ; $54d2: $62
    db $dd                                        ; $54d3: $dd
    pop hl                                        ; $54d4: $e1
    ld [hl], h                                    ; $54d5: $74
    ldh [rTIMA], a                                ; $54d6: $e0 $05
    cp a                                          ; $54d8: $bf
    push hl                                       ; $54d9: $e5
    jp Jump_037_7424                              ; $54da: $c3 $24 $74


    ld h, [hl]                                    ; $54dd: $66
    add sp, $68                                   ; $54de: $e8 $68
    cpl                                           ; $54e0: $2f
    cp l                                          ; $54e1: $bd
    ld hl, sp+$2d                                 ; $54e2: $f8 $2d
    rlca                                          ; $54e4: $07
    adc h                                         ; $54e5: $8c
    sub a                                         ; $54e6: $97
    sub [hl]                                      ; $54e7: $96

jr_037_54e8:
    ldh [$65], a                                  ; $54e8: $e0 $65
    sub h                                         ; $54ea: $94
    ld sp, $1104                                  ; $54eb: $31 $04 $11
    xor e                                         ; $54ee: $ab
    cpl                                           ; $54ef: $2f
    ret                                           ; $54f0: $c9


    ld bc, $4323                                  ; $54f1: $01 $23 $43
    cp $ea                                        ; $54f4: $fe $ea
    rst $18                                       ; $54f6: $df
    db $e4                                        ; $54f7: $e4
    rst $08                                       ; $54f8: $cf
    ld b, $7f                                     ; $54f9: $06 $7f
    sub b                                         ; $54fb: $90
    inc bc                                        ; $54fc: $03
    call z, Call_000_3f4f                         ; $54fd: $cc $4f $3f
    ld sp, hl                                     ; $5500: $f9
    ld c, e                                       ; $5501: $4b
    sbc c                                         ; $5502: $99
    ld [hl], h                                    ; $5503: $74
    inc c                                         ; $5504: $0c
    inc a                                         ; $5505: $3c
    ld c, e                                       ; $5506: $4b
    ld l, h                                       ; $5507: $6c
    ld c, $73                                     ; $5508: $0e $73
    ld a, [hl+]                                   ; $550a: $2a
    ld a, e                                       ; $550b: $7b
    dec sp                                        ; $550c: $3b
    ld a, [c]                                     ; $550d: $f2
    ld a, e                                       ; $550e: $7b
    ret nc                                        ; $550f: $d0

    add hl, sp                                    ; $5510: $39
    ret                                           ; $5511: $c9


    and [hl]                                      ; $5512: $a6
    reti                                          ; $5513: $d9


    ld l, a                                       ; $5514: $6f
    or d                                          ; $5515: $b2
    ld [hl+], a                                   ; $5516: $22
    ld [$01ea], sp                                ; $5517: $08 $ea $01
    ld b, l                                       ; $551a: $45
    db $10                                        ; $551b: $10
    add hl, sp                                    ; $551c: $39
    ld [hl], e                                    ; $551d: $73
    ld e, l                                       ; $551e: $5d
    ld [hl], a                                    ; $551f: $77
    rst $28                                       ; $5520: $ef
    rst $28                                       ; $5521: $ef
    ld e, h                                       ; $5522: $5c
    ld a, a                                       ; $5523: $7f
    ret nc                                        ; $5524: $d0

    set 5, c                                      ; $5525: $cb $e9
    cp a                                          ; $5527: $bf
    rst $20                                       ; $5528: $e7
    ret                                           ; $5529: $c9


    sbc $2c                                       ; $552a: $de $2c
    or b                                          ; $552c: $b0
    add e                                         ; $552d: $83
    rst $10                                       ; $552e: $d7
    halt                                          ; $552f: $76
    db $f4                                        ; $5530: $f4
    ld [hl], l                                    ; $5531: $75
    ld l, c                                       ; $5532: $69
    ld l, $17                                     ; $5533: $2e $17
    ld bc, $4939                                  ; $5535: $01 $39 $49
    ccf                                           ; $5538: $3f

Call_037_5539:
    ld [hl], b                                    ; $5539: $70
    ld c, h                                       ; $553a: $4c
    sub e                                         ; $553b: $93
    ld l, $ad                                     ; $553c: $2e $ad
    dec l                                         ; $553e: $2d
    and c                                         ; $553f: $a1
    inc sp                                        ; $5540: $33
    rst $20                                       ; $5541: $e7
    ld b, e                                       ; $5542: $43
    add hl, hl                                    ; $5543: $29
    xor e                                         ; $5544: $ab
    or b                                          ; $5545: $b0
    ld c, c                                       ; $5546: $49
    ld [$a960], a                                 ; $5547: $ea $60 $a9
    push af                                       ; $554a: $f5
    dec h                                         ; $554b: $25
    adc $01                                       ; $554c: $ce $01
    ld c, c                                       ; $554e: $49
    rst $10                                       ; $554f: $d7
    cp $ec                                        ; $5550: $fe $ec
    db $fd                                        ; $5552: $fd
    db $ed                                        ; $5553: $ed
    call c, $83e2                                 ; $5554: $dc $e2 $83
    ld a, [de]                                    ; $5557: $1a
    jr nz, jr_037_5561                            ; $5558: $20 $07

    inc hl                                        ; $555a: $23
    dec d                                         ; $555b: $15
    add [hl]                                      ; $555c: $86
    cp [hl]                                       ; $555d: $be
    db $e4                                        ; $555e: $e4
    ld [hl], a                                    ; $555f: $77
    ret c                                         ; $5560: $d8

jr_037_5561:
    sub a                                         ; $5561: $97
    db $db                                        ; $5562: $db
    dec a                                         ; $5563: $3d
    ldh [$e5], a                                  ; $5564: $e0 $e5

Call_037_5566:
    adc h                                         ; $5566: $8c
    and c                                         ; $5567: $a1
    ld a, l                                       ; $5568: $7d
    ld l, l                                       ; $5569: $6d
    ld h, a                                       ; $556a: $67
    ld d, $75                                     ; $556b: $16 $75
    or b                                          ; $556d: $b0
    add hl, sp                                    ; $556e: $39
    ret                                           ; $556f: $c9


    sub [hl]                                      ; $5570: $96
    db $e3                                        ; $5571: $e3
    ld l, a                                       ; $5572: $6f
    ld b, a                                       ; $5573: $47
    rst $00                                       ; $5574: $c7
    add d                                         ; $5575: $82
    call nz, $ef66                                ; $5576: $c4 $66 $ef
    rra                                           ; $5579: $1f
    add hl, sp                                    ; $557a: $39
    inc hl                                        ; $557b: $23
    ld b, d                                       ; $557c: $42
    xor b                                         ; $557d: $a8
    rst $00                                       ; $557e: $c7
    inc [hl]                                      ; $557f: $34
    ld c, c                                       ; $5580: $49
    db $dd                                        ; $5581: $dd
    sbc h                                         ; $5582: $9c
    inc bc                                        ; $5583: $03
    inc hl                                        ; $5584: $23
    rst $00                                       ; $5585: $c7
    ret z                                         ; $5586: $c8

    or l                                          ; $5587: $b5
    dec e                                         ; $5588: $1d
    db $fd                                        ; $5589: $fd
    inc sp                                        ; $558a: $33
    ld hl, sp+$41                                 ; $558b: $f8 $41
    ld [hl], e                                    ; $558d: $73
    ld [hl], e                                    ; $558e: $73
    ld [$5ec6], sp                                ; $558f: $08 $c6 $5e

Jump_037_5592:
    sbc l                                         ; $5592: $9d
    ei                                            ; $5593: $fb
    adc c                                         ; $5594: $89
    ld b, d                                       ; $5595: $42
    cp b                                          ; $5596: $b8
    ld [hl], $07                                  ; $5597: $36 $07
    inc sp                                        ; $5599: $33
    sbc e                                         ; $559a: $9b
    ld a, [de]                                    ; $559b: $1a
    ld hl, $77f6                                  ; $559c: $21 $f6 $77
    db $f4                                        ; $559f: $f4
    rla                                           ; $55a0: $17
    sub $fc                                       ; $55a1: $d6 $fc
    sub [hl]                                      ; $55a3: $96
    inc bc                                        ; $55a4: $03
    ret                                           ; $55a5: $c9


    cp $f0                                        ; $55a6: $fe $f0
    ld hl, sp+$05                                 ; $55a8: $f8 $05
    xor $b0                                       ; $55aa: $ee $b0
    cpl                                           ; $55ac: $2f
    db $ec                                        ; $55ad: $ec
    sub a                                         ; $55ae: $97
    ld sp, $2339                                  ; $55af: $31 $39 $23
    dec l                                         ; $55b2: $2d
    ld [hl], b                                    ; $55b3: $70
    ld l, l                                       ; $55b4: $6d
    add hl, de                                    ; $55b5: $19
    push hl                                       ; $55b6: $e5
    rrca                                          ; $55b7: $0f
    ld a, [de]                                    ; $55b8: $1a
    ld [hl], e                                    ; $55b9: $73
    jp $fbae                                      ; $55ba: $c3 $ae $fb


    pop af                                        ; $55bd: $f1
    or a                                          ; $55be: $b7
    and e                                         ; $55bf: $a3
    dec h                                         ; $55c0: $25
    or d                                          ; $55c1: $b2
    rlca                                          ; $55c2: $07
    add hl, sp                                    ; $55c3: $39
    or e                                          ; $55c4: $b3
    ld e, [hl]                                    ; $55c5: $5e
    ret z                                         ; $55c6: $c8

    ld c, l                                       ; $55c7: $4d
    ld h, e                                       ; $55c8: $63
    ld [hl], l                                    ; $55c9: $75
    ld b, a                                       ; $55ca: $47
    ld a, a                                       ; $55cb: $7f
    call Call_037_7e2f                            ; $55cc: $cd $2f $7e
    rlc c                                         ; $55cf: $cb $01
    adc h                                         ; $55d1: $8c
    ld [hl], a                                    ; $55d2: $77
    rst $28                                       ; $55d3: $ef
    sub l                                         ; $55d4: $95
    ld [hl], l                                    ; $55d5: $75
    sub $6b                                       ; $55d6: $d6 $6b
    adc l                                         ; $55d8: $8d
    add hl, sp                                    ; $55d9: $39
    inc sp                                        ; $55da: $33
    adc a                                         ; $55db: $8f
    add hl, de                                    ; $55dc: $19
    sub b                                         ; $55dd: $90
    ld hl, sp-$25                                 ; $55de: $f8 $db
    ld sp, hl                                     ; $55e0: $f9
    cpl                                           ; $55e1: $2f
    and l                                         ; $55e2: $a5
    xor c                                         ; $55e3: $a9
    ld [hl], e                                    ; $55e4: $73
    ld c, c                                       ; $55e5: $49
    ld e, $a4                                     ; $55e6: $1e $a4
    or c                                          ; $55e8: $b1
    dec e                                         ; $55e9: $1d
    db $fd                                        ; $55ea: $fd
    ld [bc], a                                    ; $55eb: $02
    db $fc                                        ; $55ec: $fc
    ld l, $d9                                     ; $55ed: $2e $d9
    inc e                                         ; $55ef: $1c
    ld c, c                                       ; $55f0: $49
    ld l, d                                       ; $55f1: $6a
    reti                                          ; $55f2: $d9


    cpl                                           ; $55f3: $2f
    sbc l                                         ; $55f4: $9d
    inc hl                                        ; $55f5: $23
    and e                                         ; $55f6: $a3
    add [hl]                                      ; $55f7: $86
    ld [hl], a                                    ; $55f8: $77
    ret                                           ; $55f9: $c9


    add b                                         ; $55fa: $80
    ld [hl], e                                    ; $55fb: $73
    or e                                          ; $55fc: $b3
    ld sp, hl                                     ; $55fd: $f9
    ld a, [de]                                    ; $55fe: $1a
    cp b                                          ; $55ff: $b8
    xor b                                         ; $5600: $a8
    adc [hl]                                      ; $5601: $8e
    db $fd                                        ; $5602: $fd
    ld h, l                                       ; $5603: $65
    ld e, $86                                     ; $5604: $1e $86
    ld [hl], a                                    ; $5606: $77
    rra                                           ; $5607: $1f
    jp Jump_000_396f                              ; $5608: $c3 $6f $39


    ld [hl], e                                    ; $560b: $73
    ld e, l                                       ; $560c: $5d
    jp c, $fc12                                   ; $560d: $da $12 $fc

    sub $51                                       ; $5610: $d6 $51

jr_037_5612:
    ld d, h                                       ; $5612: $54
    dec e                                         ; $5613: $1d
    inc bc                                        ; $5614: $03
    ld [hl], b                                    ; $5615: $70
    ld l, l                                       ; $5616: $6d
    ld c, $73                                     ; $5617: $0e $73
    ld e, l                                       ; $5619: $5d
    db $f4                                        ; $561a: $f4
    xor a                                         ; $561b: $af
    xor $08                                       ; $561c: $ee $08
    ld h, a                                       ; $561e: $67
    ld e, c                                       ; $561f: $59
    ld c, $c9                                     ; $5620: $0e $c9
    sub [hl]                                      ; $5622: $96
    add c                                         ; $5623: $81
    xor e                                         ; $5624: $ab
    jp c, $93d2                                   ; $5625: $da $d2 $93

    ld e, b                                       ; $5628: $58
    ld [$431c], a                                 ; $5629: $ea $1c $43
    ld d, a                                       ; $562c: $57
    res 0, l                                      ; $562d: $cb $85
    push de                                       ; $562f: $d5
    sub [hl]                                      ; $5630: $96
    adc $b3                                       ; $5631: $ce $b3
    xor h                                         ; $5633: $ac
    ld sp, $b19c                                  ; $5634: $31 $9c $b1
    ld e, a                                       ; $5637: $5f
    sbc h                                         ; $5638: $9c
    inc bc                                        ; $5639: $03
    di                                            ; $563a: $f3
    ld d, b                                       ; $563b: $50
    add hl, bc                                    ; $563c: $09
    cp $aa                                        ; $563d: $fe $aa
    dec l                                         ; $563f: $2d
    dec e                                         ; $5640: $1d
    ld [hl], c                                    ; $5641: $71
    dec e                                         ; $5642: $1d
    add c                                         ; $5643: $81
    db $fc                                        ; $5644: $fc
    cp c                                          ; $5645: $b9
    inc hl                                        ; $5646: $23
    cp [hl]                                       ; $5647: $be

jr_037_5648:
    ld [hl+], a                                   ; $5648: $22
    rst $20                                       ; $5649: $e7
    or e                                          ; $564a: $b3
    ld e, l                                       ; $564b: $5d
    and d                                         ; $564c: $a2
    res 0, h                                      ; $564d: $cb $84
    ld c, e                                       ; $564f: $4b
    db $eb                                        ; $5650: $eb
    cpl                                           ; $5651: $2f
    cp d                                          ; $5652: $ba
    and e                                         ; $5653: $a3
    inc bc                                        ; $5654: $03
    sbc [hl]                                      ; $5655: $9e
    dec b                                         ; $5656: $05
    ld [hl], e                                    ; $5657: $73
    inc sp                                        ; $5658: $33
    add a                                         ; $5659: $87
    ld [hl], b                                    ; $565a: $70
    rst $20                                       ; $565b: $e7
    inc hl                                        ; $565c: $23
    ld b, e                                       ; $565d: $43
    ld a, $6b                                     ; $565e: $3e $6b
    ld c, d                                       ; $5660: $4a
    ld a, a                                       ; $5661: $7f
    ld b, a                                       ; $5662: $47
    ld d, c                                       ; $5663: $51
    or l                                          ; $5664: $b5
    scf                                           ; $5665: $37
    inc bc                                        ; $5666: $03
    db $e4                                        ; $5667: $e4
    jp Jump_000_102c                              ; $5668: $c3 $2c $10


    xor $b0                                       ; $566b: $ee $b0
    dec bc                                        ; $566d: $0b
    jr nz, @+$09                                  ; $566e: $20 $07

    ld [hl], e                                    ; $5670: $73
    cp a                                          ; $5671: $bf
    xor a                                         ; $5672: $af
    or l                                          ; $5673: $b5
    dec d                                         ; $5674: $15
    halt                                          ; $5675: $76
    xor $a7                                       ; $5676: $ee $a7
    db $e4                                        ; $5678: $e4

Jump_037_5679:
    ld h, [hl]                                    ; $5679: $66
    ld c, d                                       ; $567a: $4a
    ld [hl], e                                    ; $567b: $73
    di                                            ; $567c: $f3
    inc l                                         ; $567d: $2c
    db $eb                                        ; $567e: $eb
    db $db                                        ; $567f: $db
    rst $18                                       ; $5680: $df
    add l                                         ; $5681: $85
    inc e                                         ; $5682: $1c
    call Call_037_4301                            ; $5683: $cd $01 $43
    scf                                           ; $5686: $37
    sub e                                         ; $5687: $93
    jr nz, jr_037_5612                            ; $5688: $20 $88

    ld a, [hl]                                    ; $568a: $7e
    add l                                         ; $568b: $85
    inc b                                         ; $568c: $04
    jp hl                                         ; $568d: $e9


    adc c                                         ; $568e: $89
    scf                                           ; $568f: $37
    rlca                                          ; $5690: $07
    db $ed                                        ; $5691: $ed
    ret                                           ; $5692: $c9


    jp $b885                                      ; $5693: $c3 $85 $b8


    inc b                                         ; $5696: $04
    ld sp, hl                                     ; $5697: $f9
    inc bc                                        ; $5698: $03
    sbc a                                         ; $5699: $9f
    ld a, e                                       ; $569a: $7b
    rrca                                          ; $569b: $0f
    rla                                           ; $569c: $17
    add e                                         ; $569d: $83
    cp a                                          ; $569e: $bf
    ld [$4770], a                                 ; $569f: $ea $70 $47
    ld e, [hl]                                    ; $56a2: $5e
    xor e                                         ; $56a3: $ab
    rlca                                          ; $56a4: $07
    sbc $47                                       ; $56a5: $de $47
    ld l, a                                       ; $56a7: $6f
    cp a                                          ; $56a8: $bf
    ld [hl+], a                                   ; $56a9: $22
    xor d                                         ; $56aa: $aa
    jp $b64d                                      ; $56ab: $c3 $4d $b6


    jr nz, jr_037_5648                            ; $56ae: $20 $98

    ld d, d                                       ; $56b0: $52
    or l                                          ; $56b1: $b5
    ld e, c                                       ; $56b2: $59
    rlca                                          ; $56b3: $07
    xor a                                         ; $56b4: $af
    db $ed                                        ; $56b5: $ed
    add hl, bc                                    ; $56b6: $09
    ld e, a                                       ; $56b7: $5f
    or c                                          ; $56b8: $b1
    ld d, $90                                     ; $56b9: $16 $90
    call nz, Call_037_79bd                        ; $56bb: $c4 $bd $79
    ei                                            ; $56be: $fb
    dec d                                         ; $56bf: $15
    sbc $43                                       ; $56c0: $de $43
    ld l, [hl]                                    ; $56c2: $6e
    sbc $34                                       ; $56c3: $de $34
    rlca                                          ; $56c5: $07

Call_037_56c6:
    db $ed                                        ; $56c6: $ed
    ret                                           ; $56c7: $c9


    ld c, c                                       ; $56c8: $49
    sub [hl]                                      ; $56c9: $96
    ld [hl-], a                                   ; $56ca: $32
    jp z, $e3d8                                   ; $56cb: $ca $d8 $e3

    add b                                         ; $56ce: $80
    ei                                            ; $56cf: $fb
    add hl, hl                                    ; $56d0: $29
    or l                                          ; $56d1: $b5
    ld [hl], h                                    ; $56d2: $74
    jr z, @-$19                                   ; $56d3: $28 $e5

    rst $08                                       ; $56d5: $cf
    ld b, a                                       ; $56d6: $47
    jr nz, jr_037_5751                            ; $56d7: $20 $78

    xor e                                         ; $56d9: $ab
    adc l                                         ; $56da: $8d
    dec e                                         ; $56db: $1d
    add hl, de                                    ; $56dc: $19
    nop                                           ; $56dd: $00
    and [hl]                                      ; $56de: $a6
    sbc a                                         ; $56df: $9f
    add d                                         ; $56e0: $82
    dec b                                         ; $56e1: $05
    db $d3                                        ; $56e2: $d3
    inc e                                         ; $56e3: $1c
    call z, $f101                                 ; $56e4: $cc $01 $f1
    ld h, [hl]                                    ; $56e7: $66
    ldh [$ea], a                                  ; $56e8: $e0 $ea
    adc a                                         ; $56ea: $8f
    ld c, l                                       ; $56eb: $4d
    cp d                                          ; $56ec: $ba
    add h                                         ; $56ed: $84
    add sp, $6c                                   ; $56ee: $e8 $6c
    ld bc, $dd40                                  ; $56f0: $01 $40 $dd
    inc h                                         ; $56f3: $24
    cp c                                          ; $56f4: $b9
    ld b, $06                                     ; $56f5: $06 $06
    ld h, d                                       ; $56f7: $62
    or e                                          ; $56f8: $b3
    add $56                                       ; $56f9: $c6 $56
    add a                                         ; $56fb: $87
    dec sp                                        ; $56fc: $3b
    sbc e                                         ; $56fd: $9b
    ld [hl+], a                                   ; $56fe: $22
    ldh [$dc], a                                  ; $56ff: $e0 $dc
    ld c, a                                       ; $5701: $4f
    or c                                          ; $5702: $b1
    sub [hl]                                      ; $5703: $96
    ld c, $5a                                     ; $5704: $0e $5a
    ld d, b                                       ; $5706: $50
    pop af                                        ; $5707: $f1
    rlca                                          ; $5708: $07
    ld a, $f7                                     ; $5709: $3e $f7
    ld [$c8e8], sp                                ; $570b: $08 $e8 $c8
    sbc a                                         ; $570e: $9f
    add l                                         ; $570f: $85
    db $eb                                        ; $5710: $eb
    ld e, b                                       ; $5711: $58
    ld l, a                                       ; $5712: $6f
    add hl, de                                    ; $5713: $19
    call $012a                                    ; $5714: $cd $2a $01
    add h                                         ; $5717: $84
    sbc a                                         ; $5718: $9f
    pop hl                                        ; $5719: $e1
    ld c, l                                       ; $571a: $4d
    pop af                                        ; $571b: $f1
    rst $20                                       ; $571c: $e7
    dec l                                         ; $571d: $2d
    ld e, c                                       ; $571e: $59
    sub l                                         ; $571f: $95
    db $fd                                        ; $5720: $fd
    db $fc                                        ; $5721: $fc
    and $4d                                       ; $5722: $e6 $4d
    ld [hl], e                                    ; $5724: $73
    db $ed                                        ; $5725: $ed
    ret                                           ; $5726: $c9


    jp $b417                                      ; $5727: $c3 $17 $b4


    ld sp, hl                                     ; $572a: $f9
    dec c                                         ; $572b: $0d
    ld e, h                                       ; $572c: $5c
    dec e                                         ; $572d: $1d
    xor $bc                                       ; $572e: $ee $bc
    sub [hl]                                      ; $5730: $96
    cp e                                          ; $5731: $bb
    ld d, a                                       ; $5732: $57
    xor e                                         ; $5733: $ab
    call Call_037_783a                            ; $5734: $cd $3a $78
    ld l, l                                       ; $5737: $6d
    sub e                                         ; $5738: $93
    ld [c], a                                     ; $5739: $e2
    cpl                                           ; $573a: $2f
    inc a                                         ; $573b: $3c
    add l                                         ; $573c: $85
    scf                                           ; $573d: $37
    ld sp, hl                                     ; $573e: $f9
    ld a, [bc]                                    ; $573f: $0a
    adc $fd                                       ; $5740: $ce $fd
    inc d                                         ; $5742: $14
    adc e                                         ; $5743: $8b
    pop hl                                        ; $5744: $e1
    add $13                                       ; $5745: $c6 $13
    ld l, a                                       ; $5747: $6f
    ld b, a                                       ; $5748: $47
    ld e, h                                       ; $5749: $5c
    inc bc                                        ; $574a: $03
    ld b, h                                       ; $574b: $44
    ld h, e                                       ; $574c: $63
    db $eb                                        ; $574d: $eb
    ld e, b                                       ; $574e: $58
    ld l, a                                       ; $574f: $6f
    add a                                         ; $5750: $87

jr_037_5751:
    rst $00                                       ; $5751: $c7
    ld h, c                                       ; $5752: $61
    jp hl                                         ; $5753: $e9


    add sp, -$71                                  ; $5754: $e8 $8f
    ld l, b                                       ; $5756: $68
    add hl, hl                                    ; $5757: $29
    add d                                         ; $5758: $82
    ld sp, hl                                     ; $5759: $f9
    dec c                                         ; $575a: $0d
    sbc h                                         ; $575b: $9c
    and $ed                                       ; $575c: $e6 $ed
    ret                                           ; $575e: $c9


    adc h                                         ; $575f: $8c
    ld h, $1c                                     ; $5760: $26 $1c
    ld d, $b0                                     ; $5762: $16 $b0
    ld [hl], h                                    ; $5764: $74
    cp b                                          ; $5765: $b8
    db $10                                        ; $5766: $10
    or c                                          ; $5767: $b1
    jp c, Jump_037_6d52                           ; $5768: $da $52 $6d

    inc l                                         ; $576b: $2c
    sbc d                                         ; $576c: $9a
    or d                                          ; $576d: $b2
    ld [$d215], sp                                ; $576e: $08 $15 $d2
    inc de                                        ; $5771: $13
    xor a                                         ; $5772: $af
    or $76                                        ; $5773: $f6 $76
    add h                                         ; $5775: $84
    ld de, $314d                                  ; $5776: $11 $4d $31
    call $ed01                                    ; $5779: $cd $01 $ed
    ret                                           ; $577c: $c9


    jp $8885                                      ; $577d: $c3 $85 $88


    push de                                       ; $5780: $d5
    sub [hl]                                      ; $5781: $96
    ld l, d                                       ; $5782: $6a
    ld h, e                                       ; $5783: $63
    add a                                         ; $5784: $87
    ld a, [hl+]                                   ; $5785: $2a
    ld h, d                                       ; $5786: $62
    jr nz, jr_037_57fa                            ; $5787: $20 $71

    ld h, b                                       ; $5789: $60
    ret nz                                        ; $578a: $c0

    ld [hl], h                                    ; $578b: $74
    ld [c], a                                     ; $578c: $e2
    cp c                                          ; $578d: $b9
    push hl                                       ; $578e: $e5
    rst $28                                       ; $578f: $ef
    dec c                                         ; $5790: $0d
    sbc e                                         ; $5791: $9b
    add hl, sp                                    ; $5792: $39
    di                                            ; $5793: $f3
    halt                                          ; $5794: $76
    cp b                                          ; $5795: $b8
    call c, Call_000_2912                         ; $5796: $dc $12 $29

Jump_037_5799:
    xor b                                         ; $5799: $a8
    call Call_000_1cd2                            ; $579a: $cd $d2 $1c
    db $ed                                        ; $579d: $ed
    ret                                           ; $579e: $c9


    jp $8885                                      ; $579f: $c3 $85 $88


    push de                                       ; $57a2: $d5
    sub [hl]                                      ; $57a3: $96
    sbc $4d                                       ; $57a4: $de $4d
    add c                                         ; $57a6: $81
    or l                                          ; $57a7: $b5
    sub b                                         ; $57a8: $90
    sbc $01                                       ; $57a9: $de $01
    sub [hl]                                      ; $57ab: $96
    ld [hl-], a                                   ; $57ac: $32
    ccf                                           ; $57ad: $3f
    ld h, l                                       ; $57ae: $65
    cp l                                          ; $57af: $bd
    ld l, c                                       ; $57b0: $69
    ld c, $ed                                     ; $57b1: $0e $ed
    ret                                           ; $57b3: $c9


jr_037_57b4:
    jp $f885                                      ; $57b4: $c3 $85 $f8


    xor e                                         ; $57b7: $ab
    dec sp                                        ; $57b8: $3b
    jr @-$58                                      ; $57b9: $18 $a6

    xor $6c                                       ; $57bb: $ee $6c
    ld h, c                                       ; $57bd: $61
    sub $08                                       ; $57be: $d6 $08
    sub d                                         ; $57c0: $92
    cp b                                          ; $57c1: $b8
    scf                                           ; $57c2: $37
    and a                                         ; $57c3: $a7
    add hl, sp                                    ; $57c4: $39
    db $ed                                        ; $57c5: $ed
    ret                                           ; $57c6: $c9


    ld c, c                                       ; $57c7: $49
    pop hl                                        ; $57c8: $e1
    ld h, $fb                                     ; $57c9: $26 $fb
    ld [hl], h                                    ; $57cb: $74
    sbc a                                         ; $57cc: $9f
    xor e                                         ; $57cd: $ab
    jp $1fd5                                      ; $57ce: $c3 $d5 $1f


    dec sp                                        ; $57d1: $3b
    dec bc                                        ; $57d2: $0b
    cp l                                          ; $57d3: $bd
    sbc $c4                                       ; $57d4: $de $c4
    and e                                         ; $57d6: $a3
    inc d                                         ; $57d7: $14
    dec e                                         ; $57d8: $1d
    or h                                          ; $57d9: $b4
    call nc, $a842                                ; $57da: $d4 $42 $a8
    push de                                       ; $57dd: $d5
    sbc $be                                       ; $57de: $de $be
    rrca                                          ; $57e0: $0f
    ld l, c                                       ; $57e1: $69
    ld c, $ed                                     ; $57e2: $0e $ed
    ret                                           ; $57e4: $c9


    jp $b417                                      ; $57e5: $c3 $17 $b4


    ld sp, hl                                     ; $57e8: $f9
    dec c                                         ; $57e9: $0d
    ld e, h                                       ; $57ea: $5c
    db $ed                                        ; $57eb: $ed
    db $ed                                        ; $57ec: $ed
    jr nc, jr_037_57b4                            ; $57ed: $30 $c5

    ld e, [hl]                                    ; $57ef: $5e
    and b                                         ; $57f0: $a0
    ld e, b                                       ; $57f1: $58
    ld l, d                                       ; $57f2: $6a
    sbc c                                         ; $57f3: $99
    ld a, b                                       ; $57f4: $78
    ld a, b                                       ; $57f5: $78
    add b                                         ; $57f6: $80
    push hl                                       ; $57f7: $e5
    ld e, h                                       ; $57f8: $5c
    ld l, l                                       ; $57f9: $6d

jr_037_57fa:
    ld l, c                                       ; $57fa: $69
    and $cc                                       ; $57fb: $e6 $cc
    db $db                                        ; $57fd: $db
    ld d, c                                       ; $57fe: $51
    rla                                           ; $57ff: $17
    cp a                                          ; $5800: $bf
    ld a, c                                       ; $5801: $79
    ld a, e                                       ; $5802: $7b
    rrca                                          ; $5803: $0f
    cp c                                          ; $5804: $b9
    ld b, c                                       ; $5805: $41
    sbc d                                         ; $5806: $9a
    inc bc                                        ; $5807: $03
    db $ed                                        ; $5808: $ed
    ret                                           ; $5809: $c9


    jp $e18c                                      ; $580a: $c3 $8c $e1


    inc c                                         ; $580d: $0c
    ld e, h                                       ; $580e: $5c
    dec e                                         ; $580f: $1d
    ld l, $d3                                     ; $5810: $2e $d3
    ld b, [hl]                                    ; $5812: $46
    cp $e8                                        ; $5813: $fe $e8
    rst $18                                       ; $5815: $df
    call z, $bc1d                                 ; $5816: $cc $1d $bc
    or [hl]                                       ; $5819: $b6
    inc sp                                        ; $581a: $33
    bit 6, l                                      ; $581b: $cb $75
    ld e, b                                       ; $581d: $58
    jp nc, $ed1c                                  ; $581e: $d2 $1c $ed

    ret                                           ; $5821: $c9


    adc h                                         ; $5822: $8c
    ld b, d                                       ; $5823: $42
    ld e, d                                       ; $5824: $5a
    ld l, l                                       ; $5825: $6d
    ld [hl], b                                    ; $5826: $70
    push af                                       ; $5827: $f5
    rst $00                                       ; $5828: $c7
    adc [hl]                                      ; $5829: $8e
    cp b                                          ; $582a: $b8
    adc [hl]                                      ; $582b: $8e
    nop                                           ; $582c: $00
    cp e                                          ; $582d: $bb
    inc b                                         ; $582e: $04
    ld c, c                                       ; $582f: $49
    ld a, [hl-]                                   ; $5830: $3a
    dec bc                                        ; $5831: $0b
    ld d, l                                       ; $5832: $55
    db $fc                                        ; $5833: $fc
    ld sp, hl                                     ; $5834: $f9
    db $f4                                        ; $5835: $f4
    ld bc, $1c4b                                  ; $5836: $01 $4b $1c
    ld e, [hl]                                    ; $5839: $5e
    ld [hl], b                                    ; $583a: $70
    sbc d                                         ; $583b: $9a
    inc bc                                        ; $583c: $03
    db $ed                                        ; $583d: $ed
    ret                                           ; $583e: $c9


    jp $8885                                      ; $583f: $c3 $85 $88


    push de                                       ; $5842: $d5
    sub [hl]                                      ; $5843: $96
    ld l, d                                       ; $5844: $6a
    ld h, e                                       ; $5845: $63
    ld h, a                                       ; $5846: $67
    ld d, l                                       ; $5847: $55
    xor h                                         ; $5848: $ac
    jp hl                                         ; $5849: $e9


    call nz, Call_037_50b3                        ; $584a: $c4 $b3 $50
    push bc                                       ; $584d: $c5
    rra                                           ; $584e: $1f
    and [hl]                                      ; $584f: $a6
    add hl, sp                                    ; $5850: $39
    db $ed                                        ; $5851: $ed
    ret                                           ; $5852: $c9


    ld b, e                                       ; $5853: $43
    dec d                                         ; $5854: $15
    ld e, h                                       ; $5855: $5c
    ld [de], a                                    ; $5856: $12
    db $db                                        ; $5857: $db
    pop bc                                        ; $5858: $c1
    ld l, e                                       ; $5859: $6b
    dec sp                                        ; $585a: $3b
    cp $bc                                        ; $585b: $fe $bc
    ld d, $82                                     ; $585d: $16 $82
    ld a, [hl+]                                   ; $585f: $2a
    cp $5c                                        ; $5860: $fe $5c
    db $ed                                        ; $5862: $ed
    ld e, b                                       ; $5863: $58
    ld l, a                                       ; $5864: $6f
    dec e                                         ; $5865: $1d
    sbc c                                         ; $5866: $99
    rst $10                                       ; $5867: $d7
    db $db                                        ; $5868: $db

jr_037_5869:
    ld de, $e889                                  ; $5869: $11 $89 $e8
    pop af                                        ; $586c: $f1
    db $d3                                        ; $586d: $d3
    inc e                                         ; $586e: $1c
    db $ed                                        ; $586f: $ed
    ret                                           ; $5870: $c9


    adc h                                         ; $5871: $8c
    ld b, d                                       ; $5872: $42
    ld e, d                                       ; $5873: $5a
    ld l, l                                       ; $5874: $6d
    ld [hl], b                                    ; $5875: $70
    ld [hl], l                                    ; $5876: $75
    cp b                                          ; $5877: $b8
    adc h                                         ; $5878: $8c
    ld b, [hl]                                    ; $5879: $46
    ld d, e                                       ; $587a: $53
    adc d                                         ; $587b: $8a
    db $fc                                        ; $587c: $fc
    ld a, l                                       ; $587d: $7d
    ld [bc], a                                    ; $587e: $02
    ld c, d                                       ; $587f: $4a
    ld d, [hl]                                    ; $5880: $56
    jp nc, Jump_037_4cb9                          ; $5881: $d2 $b9 $4c

    ld e, h                                       ; $5884: $5c
    ld [hl], d                                    ; $5885: $72
    ld a, h                                       ; $5886: $7c
    adc b                                         ; $5887: $88
    ld l, e                                       ; $5888: $6b
    dec sp                                        ; $5889: $3b
    ld a, b                                       ; $588a: $78
    ld l, l                                       ; $588b: $6d
    sub e                                         ; $588c: $93
    ld a, l                                       ; $588d: $7d
    cp d                                          ; $588e: $ba
    scf                                           ; $588f: $37
    call $ed01                                    ; $5890: $cd $01 $ed

Jump_037_5893:
    ret                                           ; $5893: $c9


    jp $a42c                                      ; $5894: $c3 $2c $a4


    ld [hl], a                                    ; $5897: $77
    add b                                         ; $5898: $80
    and l                                         ; $5899: $a5
    ld [hl], e                                    ; $589a: $73
    add l                                         ; $589b: $85
    pop de                                        ; $589c: $d1
    dec bc                                        ; $589d: $0b
    ld h, e                                       ; $589e: $63
    add e                                         ; $589f: $83
    dec h                                         ; $58a0: $25
    db $ed                                        ; $58a1: $ed

jr_037_58a2:
    cp h                                          ; $58a2: $bc
    sub [hl]                                      ; $58a3: $96
    dec c                                         ; $58a4: $0d
    cp $c0                                        ; $58a5: $fe $c0
    ldh [rOCPS], a                                ; $58a7: $e0 $6a
    ld l, a                                       ; $58a9: $6f
    rst $20                                       ; $58aa: $e7
    ld a, [bc]                                    ; $58ab: $0a
    and e                                         ; $58ac: $a3
    or a                                          ; $58ad: $b7
    ret                                           ; $58ae: $c9


    sbc $2c                                       ; $58af: $de $2c
    db $10                                        ; $58b1: $10
    ld a, [hl-]                                   ; $58b2: $3a
    ld a, b                                       ; $58b3: $78
    ld l, l                                       ; $58b4: $6d
    rst $20                                       ; $58b5: $e7
    add hl, de                                    ; $58b6: $19
    jr jr_037_5869                                ; $58b7: $18 $b0

    ld [hl], h                                    ; $58b9: $74
    ret c                                         ; $58ba: $d8

    sub a                                         ; $58bb: $97
    add l                                         ; $58bc: $85
    ld l, e                                       ; $58bd: $6b
    db $d3                                        ; $58be: $d3
    inc e                                         ; $58bf: $1c
    db $ed                                        ; $58c0: $ed
    ret                                           ; $58c1: $c9


    ld c, c                                       ; $58c2: $49
    pop hl                                        ; $58c3: $e1
    ld e, d                                       ; $58c4: $5a
    db $10                                        ; $58c5: $10
    call c, Call_000_1651                         ; $58c6: $dc $51 $16
    cp h                                          ; $58c9: $bc
    or $5c                                        ; $58ca: $f6 $5c
    dec e                                         ; $58cc: $1d
    xor [hl]                                      ; $58cd: $ae
    or $76                                        ; $58ce: $f6 $76
    jr z, jr_037_58a2                             ; $58d0: $28 $d0

    cp a                                          ; $58d2: $bf
    db $10                                        ; $58d3: $10
    or a                                          ; $58d4: $b7
    ld a, [hl]                                    ; $58d5: $7e
    ld b, l                                       ; $58d6: $45

jr_037_58d7:
    call nc, $3eb1                                ; $58d7: $d4 $b1 $3e
    ld a, [hl-]                                   ; $58da: $3a
    call z, Call_000_2de8                         ; $58db: $cc $e8 $2d
    adc c                                         ; $58de: $89
    or l                                          ; $58df: $b5
    sbc h                                         ; $58e0: $9c
    and [hl]                                      ; $58e1: $a6
    inc l                                         ; $58e2: $2c
    ldh [$34], a                                  ; $58e3: $e0 $34
    rlca                                          ; $58e5: $07
    db $ed                                        ; $58e6: $ed
    ret                                           ; $58e7: $c9


    inc sp                                        ; $58e8: $33
    cp a                                          ; $58e9: $bf
    ld e, b                                       ; $58ea: $58
    ld h, e                                       ; $58eb: $63
    jr nz, jr_037_596d                            ; $58ec: $20 $7f

    sub [hl]                                      ; $58ee: $96
    sbc [hl]                                      ; $58ef: $9e
    ldh a, [$15]                                  ; $58f0: $f0 $15
    ld l, e                                       ; $58f2: $6b
    or c                                          ; $58f3: $b1
    ld d, h                                       ; $58f4: $54
    xor l                                         ; $58f5: $ad
    xor $70                                       ; $58f6: $ee $70

Call_037_58f8:
    ld hl, $b562                                  ; $58f8: $21 $62 $b5
    and l                                         ; $58fb: $a5
    jp c, Jump_037_59d2                           ; $58fc: $da $d2 $59

    xor h                                         ; $58ff: $ac
    inc l                                         ; $5900: $2c
    db $ec                                        ; $5901: $ec
    and a                                         ; $5902: $a7
    ld [hl], h                                    ; $5903: $74
    ld [c], a                                     ; $5904: $e2
    pop hl                                        ; $5905: $e1
    ld h, c                                       ; $5906: $61
    ld c, c                                       ; $5907: $49
    ld [hl], e                                    ; $5908: $73
    db $ed                                        ; $5909: $ed
    ret                                           ; $590a: $c9


    adc h                                         ; $590b: $8c
    ld b, d                                       ; $590c: $42
    ld e, d                                       ; $590d: $5a
    ld l, l                                       ; $590e: $6d
    ld [hl], b                                    ; $590f: $70
    ld [hl], l                                    ; $5910: $75
    cp b                                          ; $5911: $b8
    di                                            ; $5912: $f3
    ld e, d                                       ; $5913: $5a
    inc e                                         ; $5914: $1c
    dec de                                        ; $5915: $1b
    sbc c                                         ; $5916: $99
    jp c, Jump_000_04ac                           ; $5917: $da $ac $04

    ld c, c                                       ; $591a: $49
    ld a, [hl-]                                   ; $591b: $3a
    ld l, b                                       ; $591c: $68
    ld hl, $1ddf                                  ; $591d: $21 $df $1d
    add h                                         ; $5920: $84
    add hl, hl                                    ; $5921: $29
    cp b                                          ; $5922: $b8
    ret                                           ; $5923: $c9


    ld a, $dd                                     ; $5924: $3e $dd
    sbc e                                         ; $5926: $9b
    and $ed                                       ; $5927: $e6 $ed
    ret                                           ; $5929: $c9


    jp $f885                                      ; $592a: $c3 $85 $f8


    xor e                                         ; $592d: $ab
    dec sp                                        ; $592e: $3b
    jr jr_037_58d7                                ; $592f: $18 $a6

    ld l, $3b                                     ; $5931: $2e $3b
    ld [hl], $ba                                  ; $5933: $36 $ba
    or e                                          ; $5935: $b3
    ld d, b                                       ; $5936: $50
    ld [de], a                                    ; $5937: $12
    ld a, a                                       ; $5938: $7f
    xor [hl]                                      ; $5939: $ae
    ld e, d                                       ; $593a: $5a
    db $dd                                        ; $593b: $dd
    inc de                                        ; $593c: $13
    cp [hl]                                       ; $593d: $be
    ld h, d                                       ; $593e: $62
    dec l                                         ; $593f: $2d
    ld c, $6f                                     ; $5940: $0e $6f
    sbc d                                         ; $5942: $9a
    inc bc                                        ; $5943: $03
    db $ed                                        ; $5944: $ed
    ret                                           ; $5945: $c9


    ret                                           ; $5946: $c9


    sbc a                                         ; $5947: $9f
    or d                                          ; $5948: $b2
    ret z                                         ; $5949: $c8

    rst $18                                       ; $594a: $df
    db $dd                                        ; $594b: $dd
    ld [$0e96], sp                                ; $594c: $08 $96 $0e
    ld e, [hl]                                    ; $594f: $5e
    db $db                                        ; $5950: $db
    ld de, $6f63                                  ; $5951: $11 $63 $6f
    ld h, h                                       ; $5954: $64
    dec e                                         ; $5955: $1d
    ld a, [hl+]                                   ; $5956: $2a
    and b                                         ; $5957: $a0
    jr nc, jr_037_5987                            ; $5958: $30 $2d

    sub e                                         ; $595a: $93
    cp a                                          ; $595b: $bf
    ei                                            ; $595c: $fb
    rla                                           ; $595d: $17
    or d                                          ; $595e: $b2
    dec sp                                        ; $595f: $3b
    ld a, [c]                                     ; $5960: $f2
    ld h, a                                       ; $5961: $67
    ld h, c                                       ; $5962: $61
    adc c                                         ; $5963: $89
    xor l                                         ; $5964: $ad
    ld e, d                                       ; $5965: $5a
    db $dd                                        ; $5966: $dd
    ld e, c                                       ; $5967: $59
    inc e                                         ; $5968: $1c
    xor e                                         ; $5969: $ab
    ld h, e                                       ; $596a: $63
    dec sp                                        ; $596b: $3b
    ld a, b                                       ; $596c: $78

jr_037_596d:
    ld l, l                                       ; $596d: $6d
    ld b, a                                       ; $596e: $47
    ld e, d                                       ; $596f: $5a

jr_037_5970:
    ld l, b                                       ; $5970: $68
    ld l, h                                       ; $5971: $6c
    sbc d                                         ; $5972: $9a
    inc bc                                        ; $5973: $03
    db $ed                                        ; $5974: $ed
    ret                                           ; $5975: $c9


    and e                                         ; $5976: $a3
    sub l                                         ; $5977: $95
    ld l, b                                       ; $5978: $68
    ld [hl], a                                    ; $5979: $77
    ccf                                           ; $597a: $3f
    ld a, a                                       ; $597b: $7f
    dec e                                         ; $597c: $1d
    adc d                                         ; $597d: $8a
    or a                                          ; $597e: $b7
    rst $08                                       ; $597f: $cf
    cp $6d                                        ; $5980: $fe $6d
    ld h, [hl]                                    ; $5982: $66
    db $e4                                        ; $5983: $e4
    cpl                                           ; $5984: $2f
    ld hl, sp+$0d                                 ; $5985: $f8 $0d

jr_037_5987:
    adc $bd                                       ; $5987: $ce $bd
    dec sp                                        ; $5989: $3b
    ld l, b                                       ; $598a: $68
    dec l                                         ; $598b: $2d
    push de                                       ; $598c: $d5
    pop hl                                        ; $598d: $e1
    ld [hl-], a                                   ; $598e: $32
    rlca                                          ; $598f: $07
    ld e, [hl]                                    ; $5990: $5e
    db $ec                                        ; $5991: $ec
    jp hl                                         ; $5992: $e9


    adc l                                         ; $5993: $8d
    dec l                                         ; $5994: $2d
    ld a, [hl-]                                   ; $5995: $3a
    sub $47                                       ; $5996: $d6 $47
    add hl, de                                    ; $5998: $19
    cp a                                          ; $5999: $bf
    add b                                         ; $599a: $80
    or a                                          ; $599b: $b7
    add e                                         ; $599c: $83
    ld d, $04                                     ; $599d: $16 $04
    di                                            ; $599f: $f3
    dec de                                        ; $59a0: $1b

jr_037_59a1:
    jr c, jr_037_5970                             ; $59a1: $38 $cd

    ld bc, $c9ed                                  ; $59a3: $01 $ed $c9
    and e                                         ; $59a6: $a3
    cp a                                          ; $59a7: $bf
    ld d, h                                       ; $59a8: $54
    ld a, a                                       ; $59a9: $7f
    add d                                         ; $59aa: $82
    inc h                                         ; $59ab: $24
    ld h, l                                       ; $59ac: $65
    ld a, l                                       ; $59ad: $7d
    ei                                            ; $59ae: $fb
    cp e                                          ; $59af: $bb
    ld [hl], b                                    ; $59b0: $70
    xor [hl]                                      ; $59b1: $ae
    cp $88                                        ; $59b2: $fe $88
    or l                                          ; $59b4: $b5
    db $f4                                        ; $59b5: $f4
    ld d, h                                       ; $59b6: $54
    ld l, e                                       ; $59b7: $6b
    ld l, a                                       ; $59b8: $6f
    inc sp                                        ; $59b9: $33
    ld d, c                                       ; $59ba: $51
    xor e                                         ; $59bb: $ab
    jp hl                                         ; $59bc: $e9


    add l                                         ; $59bd: $85
    db $fd                                        ; $59be: $fd
    sbc e                                         ; $59bf: $9b
    ld c, c                                       ; $59c0: $49
    db $10                                        ; $59c1: $10
    ld b, h                                       ; $59c2: $44
    push de                                       ; $59c3: $d5
    ld [$b3ce], a                                 ; $59c4: $ea $ce $b3
    ret z                                         ; $59c7: $c8

    sbc a                                         ; $59c8: $9f
    and d                                         ; $59c9: $a2
    ld a, [hl-]                                   ; $59ca: $3a
    ld [hl-], a                                   ; $59cb: $32
    ld [hl], a                                    ; $59cc: $77
    ret nc                                        ; $59cd: $d0

    ld b, d                                       ; $59ce: $42
    ld d, b                                       ; $59cf: $50
    push bc                                       ; $59d0: $c5
    rra                                           ; $59d1: $1f

Jump_037_59d2:
    jr c, jr_037_59a1                             ; $59d2: $38 $cd

    ld bc, $c9ed                                  ; $59d4: $01 $ed $c9
    ld c, h                                       ; $59d7: $4c
    cp $24                                        ; $59d8: $fe $24
    call z, $d196                                 ; $59da: $cc $96 $d1
    ret z                                         ; $59dd: $c8

    ld e, a                                       ; $59de: $5f
    ldh a, [rTAC]                                 ; $59df: $f0 $07
    sbc $92                                       ; $59e1: $de $92
    ld e, b                                       ; $59e3: $58
    ld c, e                                       ; $59e4: $4b
    add hl, de                                    ; $59e5: $19
    add e                                         ; $59e6: $83
    add b                                         ; $59e7: $80
    add c                                         ; $59e8: $81
    and b                                         ; $59e9: $a0
    ld h, h                                       ; $59ea: $64
    sbc a                                         ; $59eb: $9f
    xor e                                         ; $59ec: $ab
    jp $d53d                                      ; $59ed: $c3 $3d $d5


    ld b, b                                       ; $59f0: $40
    add [hl]                                      ; $59f1: $86
    ld c, $5e                                     ; $59f2: $0e $5e
    ld b, a                                       ; $59f4: $47
    ld b, a                                       ; $59f5: $47
    ld a, [hl]                                    ; $59f6: $7e
    cp c                                          ; $59f7: $b9
    ld b, c                                       ; $59f8: $41
    inc sp                                        ; $59f9: $33
    rst $28                                       ; $59fa: $ef
    ld [hl], l                                    ; $59fb: $75
    inc e                                         ; $59fc: $1c
    sbc $de                                       ; $59fd: $de $de
    sub l                                         ; $59ff: $95
    ld l, b                                       ; $5a00: $68
    rst $28                                       ; $5a01: $ef
    cp c                                          ; $5a02: $b9
    ld [hl], a                                    ; $5a03: $77
    rlca                                          ; $5a04: $07
    dec l                                         ; $5a05: $2d
    add [hl]                                      ; $5a06: $86
    ld a, e                                       ; $5a07: $7b
    ld [de], a                                    ; $5a08: $12
    ld l, e                                       ; $5a09: $6b
    ld a, d                                       ; $5a0a: $7a
    ld [hl], e                                    ; $5a0b: $73
    ld b, b                                       ; $5a0c: $40
    sbc a                                         ; $5a0d: $9f
    ld h, l                                       ; $5a0e: $65
    ldh a, [rNR12]                                ; $5a0f: $f0 $12
    add hl, bc                                    ; $5a11: $09
    inc de                                        ; $5a12: $13
    sbc $34                                       ; $5a13: $de $34
    rlca                                          ; $5a15: $07
    db $ed                                        ; $5a16: $ed
    ret                                           ; $5a17: $c9


    adc h                                         ; $5a18: $8c
    cp [hl]                                       ; $5a19: $be
    rst $00                                       ; $5a1a: $c7
    xor [hl]                                      ; $5a1b: $ae
    dec h                                         ; $5a1c: $25
    or [hl]                                       ; $5a1d: $b6
    jp c, Jump_037_6f52                           ; $5a1e: $da $52 $6f

    ld b, [hl]                                    ; $5a21: $46
    inc bc                                        ; $5a22: $03
    ld sp, hl                                     ; $5a23: $f9
    di                                            ; $5a24: $f3
    or $84                                        ; $5a25: $f6 $84
    xor a                                         ; $5a27: $af
    ld e, b                                       ; $5a28: $58
    adc e                                         ; $5a29: $8b
    ld d, [hl]                                    ; $5a2a: $56
    and [hl]                                      ; $5a2b: $a6
    ld [hl], h                                    ; $5a2c: $74
    ld [c], a                                     ; $5a2d: $e2
    adc [hl]                                      ; $5a2e: $8e
    ld [hl], h                                    ; $5a2f: $74
    jr nz, jr_037_5a8a                            ; $5a30: $20 $58

    sub b                                         ; $5a32: $90
    cp a                                          ; $5a33: $bf
    ld c, a                                       ; $5a34: $4f
    add b                                         ; $5a35: $80
    or a                                          ; $5a36: $b7
    add e                                         ; $5a37: $83
    rst $10                                       ; $5a38: $d7
    halt                                          ; $5a39: $76
    or d                                          ; $5a3a: $b2
    add hl, hl                                    ; $5a3b: $29
    and a                                         ; $5a3c: $a7
    sbc b                                         ; $5a3d: $98
    inc [hl]                                      ; $5a3e: $34
    call $8c01                                    ; $5a3f: $cd $01 $8c
    ld [hl], d                                    ; $5a42: $72
    adc l                                         ; $5a43: $8d
    di                                            ; $5a44: $f3
    dec b                                         ; $5a45: $05
    ld [hl+], a                                   ; $5a46: $22
    or e                                          ; $5a47: $b3
    db $f4                                        ; $5a48: $f4
    add h                                         ; $5a49: $84
    xor a                                         ; $5a4a: $af
    ld e, b                                       ; $5a4b: $58
    adc e                                         ; $5a4c: $8b
    ld h, l                                       ; $5a4d: $65
    ld [c], a                                     ; $5a4e: $e2
    pop hl                                        ; $5a4f: $e1
    dec bc                                        ; $5a50: $0b
    ld d, $f8                                     ; $5a51: $16 $f8
    or c                                          ; $5a53: $b1
    sub [hl]                                      ; $5a54: $96
    ld [hl], e                                    ; $5a55: $73
    or l                                          ; $5a56: $b5
    and l                                         ; $5a57: $a5
    rst $30                                       ; $5a58: $f7
    call nz, Call_037_5e27                        ; $5a59: $c4 $27 $5e
    ld e, l                                       ; $5a5c: $5d
    ld l, l                                       ; $5a5d: $6d
    jp hl                                         ; $5a5e: $e9


    ld d, b                                       ; $5a5f: $50
    ld b, l                                       ; $5a60: $45
    db $10                                        ; $5a61: $10
    and h                                         ; $5a62: $a4
    daa                                           ; $5a63: $27
    ld l, d                                       ; $5a64: $6a
    or e                                          ; $5a65: $b3
    ld a, [hl-]                                   ; $5a66: $3a
    sub $58                                       ; $5a67: $d6 $58
    ld h, $78                                     ; $5a69: $26 $78
    ld h, b                                       ; $5a6b: $60
    nop                                           ; $5a6c: $00
    cp $92                                        ; $5a6d: $fe $92
    adc l                                         ; $5a6f: $8d
    dec e                                         ; $5a70: $1d
    and b                                         ; $5a71: $a0
    ld h, e                                       ; $5a72: $63
    inc bc                                        ; $5a73: $03
    sbc c                                         ; $5a74: $99
    ld b, $7f                                     ; $5a75: $06 $7f
    dec e                                         ; $5a77: $1d
    or h                                          ; $5a78: $b4
    jr nz, jr_037_5afa                            ; $5a79: $20 $7f

    rst $30                                       ; $5a7b: $f7
    cp a                                          ; $5a7c: $bf
    ld a, [hl-]                                   ; $5a7d: $3a
    call $ed01                                    ; $5a7e: $cd $01 $ed
    ret                                           ; $5a81: $c9


    inc hl                                        ; $5a82: $23
    ld l, $f6                                     ; $5a83: $2e $f6
    and d                                         ; $5a85: $a2
    ld a, [$9416]                                 ; $5a86: $fa $16 $94
    ld e, d                                       ; $5a89: $5a

jr_037_5a8a:
    jp nc, Jump_037_4c1c                          ; $5a8a: $d2 $1c $4c

    cp $1c                                        ; $5a8d: $fe $1c
    ld h, b                                       ; $5a8f: $60
    ld bc, $7597                                  ; $5a90: $01 $97 $75
    inc d                                         ; $5a93: $14
    dec e                                         ; $5a94: $1d
    db $eb                                        ; $5a95: $eb
    and e                                         ; $5a96: $a3
    di                                            ; $5a97: $f3
    ld e, d                                       ; $5a98: $5a
    ld d, b                                       ; $5a99: $50
    pop af                                        ; $5a9a: $f1
    ld [hl], a                                    ; $5a9b: $77
    xor [hl]                                      ; $5a9c: $ae
    cp $88                                        ; $5a9d: $fe $88
    dec a                                         ; $5a9f: $3d
    pop hl                                        ; $5aa0: $e1
    dec hl                                        ; $5aa1: $2b
    sub $e2                                       ; $5aa2: $d6 $e2
    jr c, @+$64                                   ; $5aa4: $38 $62

    inc bc                                        ; $5aa6: $03
    pop bc                                        ; $5aa7: $c1
    ld [de], a                                    ; $5aa8: $12
    ld [$fea8], a                                 ; $5aa9: $ea $a8 $fe
    ld h, h                                       ; $5aac: $64
    ld d, l                                       ; $5aad: $55
    or d                                          ; $5aae: $b2
    ld a, [hl+]                                   ; $5aaf: $2a
    adc c                                         ; $5ab0: $89
    or l                                          ; $5ab1: $b5
    adc b                                         ; $5ab2: $88
    or l                                          ; $5ab3: $b5
    rst $30                                       ; $5ab4: $f7
    call c, $a94f                                 ; $5ab5: $dc $4f $a9
    dec sp                                        ; $5ab8: $3b

Call_037_5ab9:
Jump_037_5ab9:
    ld [c], a                                     ; $5ab9: $e2
    ld h, d                                       ; $5aba: $62
    cpl                                           ; $5abb: $2f
    xor d                                         ; $5abc: $aa
    db $dd                                        ; $5abd: $dd
    ld b, c                                       ; $5abe: $41

Call_037_5abf:
    rlc [hl]                                      ; $5abf: $cb $06
    ld a, a                                       ; $5ac1: $7f
    ldh [$2d], a                                  ; $5ac2: $e0 $2d
    ld e, c                                       ; $5ac4: $59
    sub l                                         ; $5ac5: $95
    ld a, [hl]                                    ; $5ac6: $7e
    ld b, h                                       ; $5ac7: $44
    ld l, a                                       ; $5ac8: $6f
    sbc d                                         ; $5ac9: $9a
    inc bc                                        ; $5aca: $03
    di                                            ; $5acb: $f3
    ld e, d                                       ; $5acc: $5a
    ld l, b                                       ; $5acd: $68
    jr @-$43                                      ; $5ace: $18 $bb

    pop hl                                        ; $5ad0: $e1
    and d                                         ; $5ad1: $a2
    ld h, e                                       ; $5ad2: $63
    sbc e                                         ; $5ad3: $9b
    db $fc                                        ; $5ad4: $fc
    dec d                                         ; $5ad5: $15
    sbc [hl]                                      ; $5ad6: $9e
    rlc [hl]                                      ; $5ad7: $cb $06
    sub [hl]                                      ; $5ad9: $96
    xor h                                         ; $5ada: $ac
    xor d                                         ; $5adb: $aa
    ld a, l                                       ; $5adc: $7d
    ld [hl], h                                    ; $5add: $74
    xor $9f                                       ; $5ade: $ee $9f
    sbc l                                         ; $5ae0: $9d
    ei                                            ; $5ae1: $fb
    add hl, hl                                    ; $5ae2: $29
    or $2b                                        ; $5ae3: $f6 $2b
    ld [hl+], a                                   ; $5ae5: $22
    inc de                                        ; $5ae6: $13
    or l                                          ; $5ae7: $b5
    cp d                                          ; $5ae8: $ba
    adc [hl]                                      ; $5ae9: $8e
    dec [hl]                                      ; $5aea: $35
    sub [hl]                                      ; $5aeb: $96
    ldh a, [$a3]                                  ; $5aec: $f0 $a3
    sbc c                                         ; $5aee: $99
    ret                                           ; $5aef: $c9


    and h                                         ; $5af0: $a4
    push de                                       ; $5af1: $d5
    ld b, $6f                                     ; $5af2: $06 $6f
    ld h, a                                       ; $5af4: $67
    and c                                         ; $5af5: $a1
    adc d                                         ; $5af6: $8a
    ccf                                           ; $5af7: $3f
    ld h, e                                       ; $5af8: $63
    push af                                       ; $5af9: $f5

jr_037_5afa:
    rst $00                                       ; $5afa: $c7
    ld h, $7d                                     ; $5afb: $26 $7d
    cp $8a                                        ; $5afd: $fe $8a
    adc [hl]                                      ; $5aff: $8e
    dec [hl]                                      ; $5b00: $35
    ld [hl], $f9                                  ; $5b01: $36 $f9
    dec hl                                        ; $5b03: $2b
    inc [hl]                                      ; $5b04: $34
    sub $b1                                       ; $5b05: $d6 $b1
    ld [$2124], sp                                ; $5b07: $08 $24 $21
    add e                                         ; $5b0a: $83
    db $d3                                        ; $5b0b: $d3
    inc e                                         ; $5b0c: $1c
    db $ed                                        ; $5b0d: $ed
    ret                                           ; $5b0e: $c9


    call z, $ef70                                 ; $5b0f: $cc $70 $ef
    ld e, a                                       ; $5b12: $5f
    adc d                                         ; $5b13: $8a
    ld d, a                                       ; $5b14: $57
    adc c                                         ; $5b15: $89
    adc a                                         ; $5b16: $8f
    db $e4                                        ; $5b17: $e4
    ret c                                         ; $5b18: $d8

    or b                                          ; $5b19: $b0

Call_037_5b1a:
    ld b, b                                       ; $5b1a: $40
    rlca                                          ; $5b1b: $07
    xor a                                         ; $5b1c: $af
    dec l                                         ; $5b1d: $2d
    sub e                                         ; $5b1e: $93
    ccf                                           ; $5b1f: $3f
    rlca                                          ; $5b20: $07
    ld e, b                                       ; $5b21: $58
    sbc $57                                       ; $5b22: $de $57
    add h                                         ; $5b24: $84
    rst $30                                       ; $5b25: $f7
    ld e, h                                       ; $5b26: $5c
    db $fd                                        ; $5b27: $fd
    ld de, $e18b                                  ; $5b28: $11 $8b $e1
    ld h, d                                       ; $5b2b: $62
    ldh a, [$57]                                  ; $5b2c: $f0 $57
    inc [hl]                                      ; $5b2e: $34
    ld h, l                                       ; $5b2f: $65
    ld de, $618a                                  ; $5b30: $11 $8a $61
    sub $ab                                       ; $5b33: $d6 $ab
    ld d, [hl]                                    ; $5b35: $56
    rrca                                          ; $5b36: $0f
    add [hl]                                      ; $5b37: $86
    add l                                         ; $5b38: $85
    inc e                                         ; $5b39: $1c
    ld e, c                                       ; $5b3a: $59
    ld b, a                                       ; $5b3b: $47
    ld a, [hl]                                    ; $5b3c: $7e
    jp c, $64bf                                   ; $5b3d: $da $bf $64

    jp nc, Jump_037_6f6a                          ; $5b40: $d2 $6a $6f

    ld l, c                                       ; $5b43: $69
    ld a, b                                       ; $5b44: $78
    sbc h                                         ; $5b45: $9c
    inc [hl]                                      ; $5b46: $34
    rlca                                          ; $5b47: $07
    db $ed                                        ; $5b48: $ed
    ret                                           ; $5b49: $c9


    ld [hl], e                                    ; $5b4a: $73
    add hl, de                                    ; $5b4b: $19
    ret nz                                        ; $5b4c: $c0

    ldh [$0e], a                                  ; $5b4d: $e0 $0e
    add [hl]                                      ; $5b4f: $86
    xor c                                         ; $5b50: $a9
    dec sp                                        ; $5b51: $3b
    ld d, d                                       ; $5b52: $52
    ld h, l                                       ; $5b53: $65
    sbc c                                         ; $5b54: $99
    add hl, hl                                    ; $5b55: $29
    sbc [hl]                                      ; $5b56: $9e
    ei                                            ; $5b57: $fb
    add hl, hl                                    ; $5b58: $29
    sub $b1                                       ; $5b59: $d6 $b1
    ld c, l                                       ; $5b5b: $4d
    sub d                                         ; $5b5c: $92
    rst $08                                       ; $5b5d: $cf

jr_037_5b5e:
    sbc a                                         ; $5b5e: $9f
    or a                                          ; $5b5f: $b7
    jr jr_037_5b5e                                ; $5b60: $18 $fc

    push af                                       ; $5b62: $f5
    dec hl                                        ; $5b63: $2b
    and d                                         ; $5b64: $a2
    adc [hl]                                      ; $5b65: $8e
    push af                                       ; $5b66: $f5
    sub [hl]                                      ; $5b67: $96
    add hl, bc                                    ; $5b68: $09
    ld a, [c]                                     ; $5b69: $f2
    ld d, a                                       ; $5b6a: $57
    ld [hl], a                                    ; $5b6b: $77
    ldh a, [$a2]                                  ; $5b6c: $f0 $a2
    call nc, $e652                                ; $5b6e: $d4 $52 $e6
    or l                                          ; $5b71: $b5
    db $eb                                        ; $5b72: $eb
    db $fd                                        ; $5b73: $fd
    rr d                                          ; $5b74: $cb $1a
    inc l                                         ; $5b76: $2c
    ld b, l                                       ; $5b77: $45
    jr nz, jr_037_5b83                            ; $5b78: $20 $09

    add hl, de                                    ; $5b7a: $19
    sbc h                                         ; $5b7b: $9c
    and $ed                                       ; $5b7c: $e6 $ed
    ret                                           ; $5b7e: $c9


    and e                                         ; $5b7f: $a3
    cpl                                           ; $5b80: $2f
    ld c, d                                       ; $5b81: $4a
    pop bc                                        ; $5b82: $c1

jr_037_5b83:
    push de                                       ; $5b83: $d5
    pop hl                                        ; $5b84: $e1
    ld [hl-], a                                   ; $5b85: $32
    ld a, [$8e39]                                 ; $5b86: $fa $39 $8e
    rst $30                                       ; $5b89: $f7
    add hl, hl                                    ; $5b8a: $29
    xor b                                         ; $5b8b: $a8
    call $c626                                    ; $5b8c: $cd $26 $c6
    ld bc, $0682                                  ; $5b8f: $01 $82 $06
    ld a, a                                       ; $5b92: $7f
    ret nc                                        ; $5b93: $d0

    xor a                                         ; $5b94: $af
    adc b                                         ; $5b95: $88
    ld h, a                                       ; $5b96: $67
    sub $5b                                       ; $5b97: $d6 $5b
    or l                                          ; $5b99: $b5
    cp d                                          ; $5b9a: $ba
    jp c, $91db                                   ; $5b9b: $da $db $91

    ld a, [hl+]                                   ; $5b9e: $2a
    bit 1, h                                      ; $5b9f: $cb $4c
    or a                                          ; $5ba1: $b7
    ld d, $72                                     ; $5ba2: $16 $72
    ld [c], a                                     ; $5ba4: $e2
    and e                                         ; $5ba5: $a3
    sbc $73                                       ; $5ba6: $de $73
    push af                                       ; $5ba8: $f5
    ld b, a                                       ; $5ba9: $47
    xor h                                         ; $5baa: $ac
    or c                                          ; $5bab: $b1
    daa                                           ; $5bac: $27
    ld a, h                                       ; $5bad: $7c
    push bc                                       ; $5bae: $c5
    ld e, d                                       ; $5baf: $5a
    inc l                                         ; $5bb0: $2c
    call $8582                                    ; $5bb1: $cd $82 $85
    inc [hl]                                      ; $5bb4: $34
    rlca                                          ; $5bb5: $07
    db $ed                                        ; $5bb6: $ed
    ret                                           ; $5bb7: $c9


    jp $8885                                      ; $5bb8: $c3 $85 $88


    push de                                       ; $5bbb: $d5
    sub [hl]                                      ; $5bbc: $96

Jump_037_5bbd:
    ld l, d                                       ; $5bbd: $6a
    ld h, e                                       ; $5bbe: $63
    rst $20                                       ; $5bbf: $e7
    cp $c8                                        ; $5bc0: $fe $c8
    sbc a                                         ; $5bc2: $9f
    rla                                           ; $5bc3: $17
    rlca                                          ; $5bc4: $07
    add d                                         ; $5bc5: $82
    rst $18                                       ; $5bc6: $df
    ld l, $bc                                     ; $5bc7: $2e $bc
    ld e, l                                       ; $5bc9: $5d
    inc bc                                        ; $5bca: $03
    sbc b                                         ; $5bcb: $98
    and $ed                                       ; $5bcc: $e6 $ed
    ret                                           ; $5bce: $c9


    jp $df63                                      ; $5bcf: $c3 $63 $df


    dec h                                         ; $5bd2: $25
    db $eb                                        ; $5bd3: $eb
    db $d3                                        ; $5bd4: $d3
    rlca                                          ; $5bd5: $07
    inc l                                         ; $5bd6: $2c
    ldh [$b4], a                                  ; $5bd7: $e0 $b4
    or e                                          ; $5bd9: $b3
    add l                                         ; $5bda: $85
    ld de, $db1b                                  ; $5bdb: $11 $1b $db
    db $ec                                        ; $5bde: $ec
    cpl                                           ; $5bdf: $2f
    cp c                                          ; $5be0: $b9
    adc h                                         ; $5be1: $8c
    ld [hl], d                                    ; $5be2: $72
    adc l                                         ; $5be3: $8d
    jp $c04a                                      ; $5be4: $c3 $4a $c0


    rst $18                                       ; $5be7: $df
    dec c                                         ; $5be8: $0d
    ld l, a                                       ; $5be9: $6f
    add a                                         ; $5bea: $87
    rst $00                                       ; $5beb: $c7
    cp [hl]                                       ; $5bec: $be
    ld c, e                                       ; $5bed: $4b
    ld d, [hl]                                    ; $5bee: $56
    adc h                                         ; $5bef: $8c
    sub [hl]                                      ; $5bf0: $96
    pop bc                                        ; $5bf1: $c1
    rrca                                          ; $5bf2: $0f
    xor [hl]                                      ; $5bf3: $ae
    ld b, l                                       ; $5bf4: $45
    add d                                         ; $5bf5: $82
    ccf                                           ; $5bf6: $3f
    ldh a, [$a6]                                  ; $5bf7: $f0 $a6
    add hl, sp                                    ; $5bf9: $39
    db $ed                                        ; $5bfa: $ed
    ret                                           ; $5bfb: $c9


    ld c, c                                       ; $5bfc: $49
    sub [hl]                                      ; $5bfd: $96
    ld a, [hl-]                                   ; $5bfe: $3a
    sub [hl]                                      ; $5bff: $96
    inc e                                         ; $5c00: $1c
    sbc c                                         ; $5c01: $99
    ld a, e                                       ; $5c02: $7b
    jp nz, $ac57                                  ; $5c03: $c2 $57 $ac

    push bc                                       ; $5c06: $c5
    ld [hl], d                                    ; $5c07: $72
    xor [hl]                                      ; $5c08: $ae
    or [hl]                                       ; $5c09: $b6
    db $f4                                        ; $5c0a: $f4
    ld d, h                                       ; $5c0b: $54
    ld d, a                                       ; $5c0c: $57
    ld a, e                                       ; $5c0d: $7b
    dec sp                                        ; $5c0e: $3b
    ld [hl], h                                    ; $5c0f: $74
    inc sp                                        ; $5c10: $33
    add hl, bc                                    ; $5c11: $09
    add d                                         ; $5c12: $82
    xor b                                         ; $5c13: $a8
    ld h, e                                       ; $5c14: $63
    adc l                                         ; $5c15: $8d
    sbc l                                         ; $5c16: $9d
    ei                                            ; $5c17: $fb
    jp nc, $2246                                  ; $5c18: $d2 $46 $22

    sub c                                         ; $5c1b: $91
    ld [bc], a                                    ; $5c1c: $02
    or l                                          ; $5c1d: $b5
    ld h, b                                       ; $5c1e: $60
    ld c, c                                       ; $5c1f: $49
    xor h                                         ; $5c20: $ac
    add l                                         ; $5c21: $85
    sbc d                                         ; $5c22: $9a
    add l                                         ; $5c23: $85
    cp [hl]                                       ; $5c24: $be
    rrca                                          ; $5c25: $0f
    ld l, c                                       ; $5c26: $69
    ld c, $ed                                     ; $5c27: $0e $ed
    ret                                           ; $5c29: $c9


    inc sp                                        ; $5c2a: $33
    ccf                                           ; $5c2b: $3f
    inc de                                        ; $5c2c: $13
    push de                                       ; $5c2d: $d5
    sub [hl]                                      ; $5c2e: $96
    ld c, $65                                     ; $5c2f: $0e $65
    pop bc                                        ; $5c31: $c1
    ld b, c                                       ; $5c32: $41
    push de                                       ; $5c33: $d5
    ld h, [hl]                                    ; $5c34: $66
    dec h                                         ; $5c35: $25
    ld c, b                                       ; $5c36: $48
    jp nc, Jump_037_67e3                          ; $5c37: $d2 $e3 $67

    add c                                         ; $5c3a: $81
    db $fc                                        ; $5c3b: $fc
    cp c                                          ; $5c3c: $b9
    ld c, h                                       ; $5c3d: $4c
    sub b                                         ; $5c3e: $90
    ld c, a                                       ; $5c3f: $4f
    inc c                                         ; $5c40: $0c
    ld e, d                                       ; $5c41: $5a
    adc b                                         ; $5c42: $88
    adc e                                         ; $5c43: $8b
    ld h, [hl]                                    ; $5c44: $66
    ld l, d                                       ; $5c45: $6a
    or e                                          ; $5c46: $b3
    inc [hl]                                      ; $5c47: $34
    rlca                                          ; $5c48: $07
    db $ed                                        ; $5c49: $ed
    ret                                           ; $5c4a: $c9


    ld c, h                                       ; $5c4b: $4c
    ld hl, sp-$3e                                 ; $5c4c: $f8 $c2
    sbc [hl]                                      ; $5c4e: $9e
    ei                                            ; $5c4f: $fb
    add hl, hl                                    ; $5c50: $29
    sub $52                                       ; $5c51: $d6 $52
    rst $00                                       ; $5c53: $c7
    halt                                          ; $5c54: $76
    and h                                         ; $5c55: $a4
    jp z, $d332                                   ; $5c56: $ca $32 $d3

    ld e, e                                       ; $5c59: $5b
    xor h                                         ; $5c5a: $ac
    xor $e0                                       ; $5c5b: $ee $e0
    dec h                                         ; $5c5d: $25
    ld [hl], l                                    ; $5c5e: $75
    xor h                                         ; $5c5f: $ac
    adc a                                         ; $5c60: $8f
    ld a, d                                       ; $5c61: $7a
    add c                                         ; $5c62: $81
    ld a, [hl]                                    ; $5c63: $7e
    ld b, l                                       ; $5c64: $45
    ld a, b                                       ; $5c65: $78
    cp l                                          ; $5c66: $bd
    dec e                                         ; $5c67: $1d
    ld sp, hl                                     ; $5c68: $f9
    rla                                           ; $5c69: $17
    ld [c], a                                     ; $5c6a: $e2
    halt                                          ; $5c6b: $76
    ld c, c                                       ; $5c6c: $49
    push bc                                       ; $5c6d: $c5
    nop                                           ; $5c6e: $00
    sbc $de                                       ; $5c6f: $de $de
    cpl                                           ; $5c71: $2f
    ld c, d                                       ; $5c72: $4a
    pop bc                                        ; $5c73: $c1
    ld l, c                                       ; $5c74: $69
    ld c, $ed                                     ; $5c75: $0e $ed
    ret                                           ; $5c77: $c9


    and e                                         ; $5c78: $a3
    sbc l                                         ; $5c79: $9d
    or c                                          ; $5c7a: $b1
    ld d, $07                                     ; $5c7b: $16 $07
    ld e, b                                       ; $5c7d: $58
    xor d                                         ; $5c7e: $aa
    dec l                                         ; $5c7f: $2d
    dec e                                         ; $5c80: $1d
    ld [hl], c                                    ; $5c81: $71
    or c                                          ; $5c82: $b1
    rla                                           ; $5c83: $17
    push de                                       ; $5c84: $d5
    ld h, d                                       ; $5c85: $62
    cp $c0                                        ; $5c86: $fe $c0
    ld l, c                                       ; $5c88: $69
    ld c, $ed                                     ; $5c89: $0e $ed
    ret                                           ; $5c8b: $c9


    jp $a42c                                      ; $5c8c: $c3 $2c $a4


    ld [hl], a                                    ; $5c8f: $77
    add b                                         ; $5c90: $80
    and l                                         ; $5c91: $a5
    daa                                           ; $5c92: $27
    ld a, h                                       ; $5c93: $7c
    push bc                                       ; $5c94: $c5
    ld e, d                                       ; $5c95: $5a
    inc l                                         ; $5c96: $2c
    rst $20                                       ; $5c97: $e7
    ld l, d                                       ; $5c98: $6a
    ld c, e                                       ; $5c99: $4b
    rlca                                          ; $5c9a: $07
    xor a                                         ; $5c9b: $af
    xor l                                         ; $5c9c: $ad
    or $76                                        ; $5c9d: $f6 $76
    and h                                         ; $5c9f: $a4
    jp z, Jump_037_5332                           ; $5ca0: $ca $32 $53

    db $ec                                        ; $5ca3: $ec
    ld d, a                                       ; $5ca4: $57
    ld b, h                                       ; $5ca5: $44
    ld h, $6a                                     ; $5ca6: $26 $6a
    ld [hl], l                                    ; $5ca8: $75
    or l                                          ; $5ca9: $b5
    and l                                         ; $5caa: $a5
    add e                                         ; $5cab: $83
    rst $10                                       ; $5cac: $d7
    ld [hl], $de                                  ; $5cad: $36 $de
    pop de                                        ; $5caf: $d1
    ld b, c                                       ; $5cb0: $41
    dec bc                                        ; $5cb1: $0b
    pop af                                        ; $5cb2: $f1
    ld de, $5bc1                                  ; $5cb3: $11 $c1 $5b
    ld h, $7f                                     ; $5cb6: $26 $7f
    ld [de], a                                    ; $5cb8: $12
    inc b                                         ; $5cb9: $04
    ld a, b                                       ; $5cba: $78
    dec sp                                        ; $5cbb: $3b
    ld l, b                                       ; $5cbc: $68
    ld d, c                                       ; $5cbd: $51
    ld [bc], a                                    ; $5cbe: $02
    ld c, $0a                                     ; $5cbf: $0e $0a
    cp l                                          ; $5cc1: $bd
    dec hl                                        ; $5cc2: $2b
    pop de                                        ; $5cc3: $d1
    ld c, [hl]                                    ; $5cc4: $4e
    ld [hl], e                                    ; $5cc5: $73
    jp $1f4f                                      ; $5cc6: $c3 $4f $1f


    or b                                          ; $5cc9: $b0
    add b                                         ; $5cca: $80
    ei                                            ; $5ccb: $fb
    dec d                                         ; $5ccc: $15
    ld d, c                                       ; $5ccd: $51
    db $ed                                        ; $5cce: $ed
    and e                                         ; $5ccf: $a3
    adc h                                         ; $5cd0: $8c
    ld h, [hl]                                    ; $5cd1: $66
    jp Jump_037_6d50                              ; $5cd2: $c3 $50 $6d


    jp hl                                         ; $5cd5: $e9


    pop af                                        ; $5cd6: $f1
    or e                                          ; $5cd7: $b3
    ld b, b                                       ; $5cd8: $40
    cp $bc                                        ; $5cd9: $fe $bc
    sbc l                                         ; $5cdb: $9d
    ld [hl], a                                    ; $5cdc: $77
    db $ec                                        ; $5cdd: $ec
    call z, Call_037_6d34                         ; $5cde: $cc $34 $6d
    sub d                                         ; $5ce1: $92
    and l                                         ; $5ce2: $a5
    jp $c105                                      ; $5ce3: $c3 $05 $c1


    rst $20                                       ; $5ce6: $e7
    ld l, d                                       ; $5ce7: $6a
    ld c, e                                       ; $5ce8: $4b
    ld h, e                                       ; $5ce9: $63
    xor e                                         ; $5cea: $ab
    dec l                                         ; $5ceb: $2d
    sbc l                                         ; $5cec: $9d
    db $ed                                        ; $5ced: $ed
    ld h, a                                       ; $5cee: $67
    xor $fd                                       ; $5cef: $ee $fd
    res 7, c                                      ; $5cf1: $cb $b9
    jp c, Jump_037_465b                           ; $5cf3: $da $5b $46

    db $e3                                        ; $5cf6: $e3
    rst $18                                       ; $5cf7: $df
    xor h                                         ; $5cf8: $ac
    jp c, $a1d2                                   ; $5cf9: $da $d2 $a1

    ld a, [hl+]                                   ; $5cfc: $2a
    ld d, e                                       ; $5cfd: $53
    ld [c], a                                     ; $5cfe: $e2
    ld sp, $b258                                  ; $5cff: $31 $58 $b2
    xor d                                         ; $5d02: $aa
    or [hl]                                       ; $5d03: $b6
    ld [bc], a                                    ; $5d04: $02
    ld l, a                                       ; $5d05: $6f
    sbc d                                         ; $5d06: $9a
    inc bc                                        ; $5d07: $03
    db $ed                                        ; $5d08: $ed
    ret                                           ; $5d09: $c9


    ld b, e                                       ; $5d0a: $43
    dec d                                         ; $5d0b: $15
    ld e, h                                       ; $5d0c: $5c
    ld d, d                                       ; $5d0d: $52
    ld l, l                                       ; $5d0e: $6d
    inc l                                         ; $5d0f: $2c
    ld l, e                                       ; $5d10: $6b
    ld hl, $03bd                                  ; $5d11: $21 $bd $03
    cp h                                          ; $5d14: $bc
    dec e                                         ; $5d15: $1d
    ld l, l                                       ; $5d16: $6d
    cp c                                          ; $5d17: $b9
    add hl, de                                    ; $5d18: $19
    dec sp                                        ; $5d19: $3b
    ld a, $f3                                     ; $5d1a: $3e $f3
    ld h, a                                       ; $5d1c: $67
    ld e, [hl]                                    ; $5d1d: $5e
    ld [$ab8b], sp                                ; $5d1e: $08 $8b $ab
    ld d, [hl]                                    ; $5d21: $56
    rst $30                                       ; $5d22: $f7
    ld a, [hl]                                    ; $5d23: $7e
    dec d                                         ; $5d24: $15
    jp $ab25                                      ; $5d25: $c3 $25 $ab


    ld [de], a                                    ; $5d28: $12
    or c                                          ; $5d29: $b1
    jp c, $8c5b                                   ; $5d2a: $da $5b $8c

    push de                                       ; $5d2d: $d5
    db $e3                                        ; $5d2e: $e3
    and a                                         ; $5d2f: $a7
    add hl, sp                                    ; $5d30: $39
    db $ed                                        ; $5d31: $ed
    ret                                           ; $5d32: $c9


    inc hl                                        ; $5d33: $23
    cpl                                           ; $5d34: $2f
    ld l, l                                       ; $5d35: $6d
    ld sp, hl                                     ; $5d36: $f9
    ld [hl], b                                    ; $5d37: $70
    ld c, c                                       ; $5d38: $49
    ld l, h                                       ; $5d39: $6c
    or l                                          ; $5d3a: $b5
    or c                                          ; $5d3b: $b1
    and e                                         ; $5d3c: $a3
    db $d3                                        ; $5d3d: $d3
    pop de                                        ; $5d3e: $d1
    jp hl                                         ; $5d3f: $e9


    db $ec                                        ; $5d40: $ec
    jp hl                                         ; $5d41: $e9


    call nz, $e4a3                                ; $5d42: $c4 $a3 $e4
    jp z, $1fe4                                   ; $5d45: $ca $e4 $1f

    rlca                                          ; $5d48: $07
    halt                                          ; $5d49: $76
    add d                                         ; $5d4a: $82
    pop de                                        ; $5d4b: $d1
    ld b, c                                       ; $5d4c: $41
    cp $a2                                        ; $5d4d: $fe $a2
    ld h, e                                       ; $5d4f: $63
    or e                                          ; $5d50: $b3
    adc [hl]                                      ; $5d51: $8e
    ld c, $31                                     ; $5d52: $0e $31
    dec [hl]                                      ; $5d54: $35
    ld h, d                                       ; $5d55: $62
    ld h, a                                       ; $5d56: $67
    scf                                           ; $5d57: $37

Call_037_5d58:
    call c, $b92f                                 ; $5d58: $dc $2f $b9
    ld c, l                                       ; $5d5b: $4d
    ret c                                         ; $5d5c: $d8

    pop af                                        ; $5d5d: $f1
    add hl, de                                    ; $5d5e: $19
    dec e                                         ; $5d5f: $1d
    ld [$0416], sp                                ; $5d60: $08 $16 $04

Jump_037_5d63:
    or l                                          ; $5d63: $b5
    jp c, $a7e3                                   ; $5d64: $da $e3 $a7

    add hl, sp                                    ; $5d67: $39
    db $ed                                        ; $5d68: $ed
    ret                                           ; $5d69: $c9


    jp $a42c                                      ; $5d6a: $c3 $2c $a4


    ld [hl], a                                    ; $5d6d: $77
    add b                                         ; $5d6e: $80
    and l                                         ; $5d6f: $a5
    rst $00                                       ; $5d70: $c7
    rst $08                                       ; $5d71: $cf
    ld [bc], a                                    ; $5d72: $02
    ld sp, hl                                     ; $5d73: $f9
    or e                                          ; $5d74: $b3
    ld [hl], h                                    ; $5d75: $74
    xor $e7                                       ; $5d76: $ee $e7
    ld c, e                                       ; $5d78: $4b
    inc c                                         ; $5d79: $0c
    ld [hl], c                                    ; $5d7a: $71
    or e                                          ; $5d7b: $b3
    and h                                         ; $5d7c: $a4
    add hl, sp                                    ; $5d7d: $39
    db $ed                                        ; $5d7e: $ed
    ret                                           ; $5d7f: $c9


    jp $8885                                      ; $5d80: $c3 $85 $88


    push de                                       ; $5d83: $d5
    sub [hl]                                      ; $5d84: $96
    ret c                                         ; $5d85: $d8

    ld l, d                                       ; $5d86: $6a
    ld h, e                                       ; $5d87: $63
    ld h, a                                       ; $5d88: $67
    ld d, e                                       ; $5d89: $53
    ei                                            ; $5d8a: $fb
    pop af                                        ; $5d8b: $f1
    halt                                          ; $5d8c: $76
    dec c                                         ; $5d8d: $0d
    ld h, b                                       ; $5d8e: $60
    sbc d                                         ; $5d8f: $9a
    inc bc                                        ; $5d90: $03
    db $ed                                        ; $5d91: $ed
    ret                                           ; $5d92: $c9


    jp $a42c                                      ; $5d93: $c3 $2c $a4


    ld [hl], a                                    ; $5d96: $77
    add b                                         ; $5d97: $80
    set 6, h                                      ; $5d98: $cb $f4
    or e                                          ; $5d9a: $b3
    call nz, $ad56                                ; $5d9b: $c4 $56 $ad
    xor $50                                       ; $5d9e: $ee $50
    dec b                                         ; $5da0: $05
    sub a                                         ; $5da1: $97
    call nz, $f076                                ; $5da2: $c4 $76 $f0
    jp c, $3f8e                                   ; $5da5: $da $8e $3f

    call z, $8ad4                                 ; $5da8: $cc $d4 $8a
    ccf                                           ; $5dab: $3f
    ld d, b                                       ; $5dac: $50
    sbc e                                         ; $5dad: $9b
    ld d, l                                       ; $5dae: $55
    ld e, e                                       ; $5daf: $5b
    ld a, d                                       ; $5db0: $7a
    add d                                         ; $5db1: $82
    cp d                                          ; $5db2: $ba
    xor c                                         ; $5db3: $a9
    dec h                                         ; $5db4: $25
    ld h, b                                       ; $5db5: $60
    db $fc                                        ; $5db6: $fc
    inc [hl]                                      ; $5db7: $34
    rlca                                          ; $5db8: $07
    db $ed                                        ; $5db9: $ed
    ret                                           ; $5dba: $c9


    jp $a42c                                      ; $5dbb: $c3 $2c $a4


    ld [hl], a                                    ; $5dbe: $77
    add b                                         ; $5dbf: $80
    and l                                         ; $5dc0: $a5
    and e                                         ; $5dc1: $a3
    rst $38                                       ; $5dc2: $ff
    inc de                                        ; $5dc3: $13
    db $fc                                        ; $5dc4: $fc
    sbc c                                         ; $5dc5: $99
    push hl                                       ; $5dc6: $e5
    ld e, h                                       ; $5dc7: $5c
    ld l, l                                       ; $5dc8: $6d
    xor c                                         ; $5dc9: $a9
    or $96                                        ; $5dca: $f6 $96
    jp hl                                         ; $5dcc: $e9


    ld h, a                                       ; $5dcd: $67
    jp hl                                         ; $5dce: $e9


    call z, $f29f                                 ; $5dcf: $cc $9f $f2
    rst $30                                       ; $5dd2: $f7
    or c                                          ; $5dd3: $b1
    ld [hl], c                                    ; $5dd4: $71
    ld [hl], h                                    ; $5dd5: $74
    db $f4                                        ; $5dd6: $f4
    ld a, a                                       ; $5dd7: $7f
    add d                                         ; $5dd8: $82
    ccf                                           ; $5dd9: $3f
    di                                            ; $5dda: $f3
    sub [hl]                                      ; $5ddb: $96
    dec [hl]                                      ; $5ddc: $35
    add [hl]                                      ; $5ddd: $86
    inc sp                                        ; $5dde: $33
    ld [hl], b                                    ; $5ddf: $70
    sbc d                                         ; $5de0: $9a
    inc bc                                        ; $5de1: $03
    db $ed                                        ; $5de2: $ed
    ret                                           ; $5de3: $c9


    inc hl                                        ; $5de4: $23
    ld d, l                                       ; $5de5: $55
    sub [hl]                                      ; $5de6: $96
    sbc c                                         ; $5de7: $99
    ld a, [$01f4]                                 ; $5de8: $fa $f4 $01
    dec bc                                        ; $5deb: $0b
    cp b                                          ; $5dec: $b8
    ld l, d                                       ; $5ded: $6a
    ld [hl], l                                    ; $5dee: $75
    add a                                         ; $5def: $87
    ld a, [hl+]                                   ; $5df0: $2a
    cp b                                          ; $5df1: $b8
    and h                                         ; $5df2: $a4
    add e                                         ; $5df3: $83
    ld h, c                                       ; $5df4: $61
    ld l, d                                       ; $5df5: $6a
    jp hl                                         ; $5df6: $e9


    jr nc, jr_037_5e0b                            ; $5df7: $30 $12

    ld a, a                                       ; $5df9: $7f
    sub [hl]                                      ; $5dfa: $96
    inc [hl]                                      ; $5dfb: $34
    rlca                                          ; $5dfc: $07
    db $ed                                        ; $5dfd: $ed
    ret                                           ; $5dfe: $c9


    jp $8885                                      ; $5dff: $c3 $85 $88


    push de                                       ; $5e02: $d5
    sub [hl]                                      ; $5e03: $96
    ld l, d                                       ; $5e04: $6a
    ld c, e                                       ; $5e05: $4b
    sbc c                                         ; $5e06: $99
    db $10                                        ; $5e07: $10
    ld a, e                                       ; $5e08: $7b
    ld h, e                                       ; $5e09: $63
    xor a                                         ; $5e0a: $af

jr_037_5e0b:
    add e                                         ; $5e0b: $83
    ld [hl], l                                    ; $5e0c: $75
    sbc d                                         ; $5e0d: $9a
    inc bc                                        ; $5e0e: $03
    db $ed                                        ; $5e0f: $ed
    ret                                           ; $5e10: $c9


    jp $a42c                                      ; $5e11: $c3 $2c $a4


    ld [hl], a                                    ; $5e14: $77
    add b                                         ; $5e15: $80
    ld de, $3d2c                                  ; $5e16: $11 $2c $3d
    pop hl                                        ; $5e19: $e1
    dec hl                                        ; $5e1a: $2b
    sub $62                                       ; $5e1b: $d6 $62
    jp hl                                         ; $5e1d: $e9


    and a                                         ; $5e1e: $a7
    call nc, Call_000_13d2                        ; $5e1f: $d4 $d2 $13
    inc e                                         ; $5e22: $1c
    ldh [rKEY1], a                                ; $5e23: $e0 $4d
    set 5, b                                      ; $5e25: $cb $e8

Call_037_5e27:
    scf                                           ; $5e27: $37
    or [hl]                                       ; $5e28: $b6
    add b                                         ; $5e29: $80
    ld c, e                                       ; $5e2a: $4b
    ld d, [hl]                                    ; $5e2b: $56
    ld b, a                                       ; $5e2c: $47
    sub e                                         ; $5e2d: $93
    cpl                                           ; $5e2e: $2f
    jp nz, $bc1d                                  ; $5e2f: $c2 $1d $bc

    or [hl]                                       ; $5e32: $b6
    inc hl                                        ; $5e33: $23
    add $de                                       ; $5e34: $c6 $de
    ret z                                         ; $5e36: $c8

    ld a, [hl-]                                   ; $5e37: $3a
    ld d, h                                       ; $5e38: $54
    ld b, b                                       ; $5e39: $40
    ld h, c                                       ; $5e3a: $61
    sbc d                                         ; $5e3b: $9a
    inc bc                                        ; $5e3c: $03
    db $ed                                        ; $5e3d: $ed
    ret                                           ; $5e3e: $c9


    di                                            ; $5e3f: $f3
    ld e, [hl]                                    ; $5e40: $5e
    add d                                         ; $5e41: $82
    ld bc, $af64                                  ; $5e42: $01 $64 $af
    halt                                          ; $5e45: $76
    or l                                          ; $5e46: $b5
    or c                                          ; $5e47: $b1
    ld [hl], e                                    ; $5e48: $73
    ld a, l                                       ; $5e49: $7d
    jr nc, jr_037_5ea2                            ; $5e4a: $30 $56

    ld e, e                                       ; $5e4c: $5b
    ld a, d                                       ; $5e4d: $7a
    jp nz, $ac57                                  ; $5e4e: $c2 $57 $ac

    push bc                                       ; $5e51: $c5
    jp nc, Jump_037_6bc1                          ; $5e52: $d2 $c1 $6b

    dec sp                                        ; $5e55: $3b
    reti                                          ; $5e56: $d9


    call nc, Call_037_4d93                        ; $5e57: $d4 $93 $4d
    sbc $89                                       ; $5e5a: $de $89
    dec sp                                        ; $5e5c: $3b
    reti                                          ; $5e5d: $d9


    call nc, Call_037_4ed3                        ; $5e5e: $d4 $d3 $4e
    sub e                                         ; $5e61: $93
    and $ed                                       ; $5e62: $e6 $ed
    ret                                           ; $5e64: $c9


    jp $c34c                                      ; $5e65: $c3 $4c $c3


    inc l                                         ; $5e68: $2c
    ld e, b                                       ; $5e69: $58
    ld a, [hl-]                                   ; $5e6a: $3a
    ld a, [c]                                     ; $5e6b: $f2
    ld h, a                                       ; $5e6c: $67
    pop hl                                        ; $5e6d: $e1
    inc hl                                        ; $5e6e: $23
    ld [hl], $10                                  ; $5e6f: $36 $10
    inc l                                         ; $5e71: $2c
    rst $20                                       ; $5e72: $e7
    add $d1                                       ; $5e73: $c6 $d1
    ld e, c                                       ; $5e75: $59
    rst $38                                       ; $5e76: $ff
    inc de                                        ; $5e77: $13
    ld [hl], a                                    ; $5e78: $77
    or d                                          ; $5e79: $b2
    ld l, c                                       ; $5e7a: $69
    daa                                           ; $5e7b: $27
    sbc e                                         ; $5e7c: $9b
    xor h                                         ; $5e7d: $ac
    sub [hl]                                      ; $5e7e: $96
    db $fd                                        ; $5e7f: $fd
    cp e                                          ; $5e80: $bb
    sub b                                         ; $5e81: $90
    and $ed                                       ; $5e82: $e6 $ed
    ret                                           ; $5e84: $c9


    di                                            ; $5e85: $f3
    ld e, [hl]                                    ; $5e86: $5e
    add d                                         ; $5e87: $82
    ld bc, $af64                                  ; $5e88: $01 $64 $af
    or [hl]                                       ; $5e8b: $b6

Jump_037_5e8c:
    ld d, h                                       ; $5e8c: $54
    dec de                                        ; $5e8d: $1b
    ld a, e                                       ; $5e8e: $7b
    jp nz, $ac57                                  ; $5e8f: $c2 $57 $ac

    push bc                                       ; $5e92: $c5
    ld [hl+], a                                   ; $5e93: $22
    rra                                           ; $5e94: $1f
    adc h                                         ; $5e95: $8c
    dec e                                         ; $5e96: $1d
    cp h                                          ; $5e97: $bc
    or [hl]                                       ; $5e98: $b6
    sub e                                         ; $5e99: $93
    ld c, l                                       ; $5e9a: $4d
    add hl, sp                                    ; $5e9b: $39
    push hl                                       ; $5e9c: $e5
    or h                                          ; $5e9d: $b4
    sbc l                                         ; $5e9e: $9d
    cp b                                          ; $5e9f: $b8
    ld d, e                                       ; $5ea0: $53
    ld c, l                                       ; $5ea1: $4d

jr_037_5ea2:
    sbc d                                         ; $5ea2: $9a
    and $ed                                       ; $5ea3: $e6 $ed
    ret                                           ; $5ea5: $c9


    jp Jump_037_4b7c                              ; $5ea6: $c3 $7c $4b


    inc a                                         ; $5ea9: $3c
    ld b, $08                                     ; $5eaa: $06 $08
    ld [hl], b                                    ; $5eac: $70
    dec e                                         ; $5ead: $1d
    db $eb                                        ; $5eae: $eb
    db $ed                                        ; $5eaf: $ed
    call c, $5172                                 ; $5eb0: $dc $72 $51
    ld a, d                                       ; $5eb3: $7a
    xor [hl]                                      ; $5eb4: $ae
    or [hl]                                       ; $5eb5: $b6
    ld d, h                                       ; $5eb6: $54
    add a                                         ; $5eb7: $87
    ld c, a                                       ; $5eb8: $4f
    push af                                       ; $5eb9: $f5
    ld b, [hl]                                    ; $5eba: $46
    and $2d                                       ; $5ebb: $e6 $2d
    ld e, b                                       ; $5ebd: $58
    db $e4                                        ; $5ebe: $e4
    sub d                                         ; $5ebf: $92
    ret nz                                        ; $5ec0: $c0

    or b                                          ; $5ec1: $b0
    add b                                         ; $5ec2: $80
    rst $08                                       ; $5ec3: $cf
    push de                                       ; $5ec4: $d5
    pop hl                                        ; $5ec5: $e1
    ld l, d                                       ; $5ec6: $6a
    ld l, a                                       ; $5ec7: $6f
    ld h, a                                       ; $5ec8: $67
    and c                                         ; $5ec9: $a1
    ld a, [bc]                                    ; $5eca: $0a
    or c                                          ; $5ecb: $b1
    and e                                         ; $5ecc: $a3
    rst $00                                       ; $5ecd: $c7
    cp b                                          ; $5ece: $b8
    inc h                                         ; $5ecf: $24
    sub $72                                       ; $5ed0: $d6 $72
    sbc d                                         ; $5ed2: $9a
    or d                                          ; $5ed3: $b2
    ld a, b                                       ; $5ed4: $78
    ld a, e                                       ; $5ed5: $7b
    cp a                                          ; $5ed6: $bf
    jr z, jr_037_5ede                             ; $5ed7: $28 $05

    ld l, a                                       ; $5ed9: $6f
    sbc d                                         ; $5eda: $9a
    inc bc                                        ; $5edb: $03
    db $ed                                        ; $5edc: $ed
    ret                                           ; $5edd: $c9


jr_037_5ede:
    ld c, c                                       ; $5ede: $49
    pop hl                                        ; $5edf: $e1
    ld e, d                                       ; $5ee0: $5a
    db $10                                        ; $5ee1: $10
    call c, $9f64                                 ; $5ee2: $dc $64 $9f
    xor $73                                       ; $5ee5: $ee $73
    ld [hl], l                                    ; $5ee7: $75
    cp b                                          ; $5ee8: $b8
    inc hl                                        ; $5ee9: $23
    ld a, a                                       ; $5eea: $7f
    ld d, $3e                                     ; $5eeb: $16 $3e
    ld h, d                                       ; $5eed: $62
    inc bc                                        ; $5eee: $03
    pop bc                                        ; $5eef: $c1
    ld [de], a                                    ; $5ef0: $12
    db $db                                        ; $5ef1: $db
    cp e                                          ; $5ef2: $bb
    ld [de], a                                    ; $5ef3: $12
    db $ed                                        ; $5ef4: $ed
    inc [hl]                                      ; $5ef5: $34
    rlca                                          ; $5ef6: $07
    db $ed                                        ; $5ef7: $ed
    ret                                           ; $5ef8: $c9


    or e                                          ; $5ef9: $b3
    sub b                                         ; $5efa: $90
    sbc [hl]                                      ; $5efb: $9e
    add b                                         ; $5efc: $80
    dec sp                                        ; $5efd: $3b
    or a                                          ; $5efe: $b7
    ld e, h                                       ; $5eff: $5c
    sub h                                         ; $5f00: $94
    ld [hl+], a                                   ; $5f01: $22
    jr z, jr_037_5f21                             ; $5f02: $28 $1d

    sbc $6a                                       ; $5f04: $de $6a
    dec h                                         ; $5f06: $25
    db $fc                                        ; $5f07: $fc
    ld d, l                                       ; $5f08: $55
    xor l                                         ; $5f09: $ad
    xor $5d                                       ; $5f0a: $ee $5d
    adc c                                         ; $5f0c: $89
    halt                                          ; $5f0d: $76
    ld e, c                                       ; $5f0e: $59
    rst $00                                       ; $5f0f: $c7
    pop de                                        ; $5f10: $d1
    ld a, c                                       ; $5f11: $79
    dec l                                         ; $5f12: $2d
    xor b                                         ; $5f13: $a8
    ld hl, sp+$3b                                 ; $5f14: $f8 $3b
    rst $10                                       ; $5f16: $d7
    or c                                          ; $5f17: $b1
    sbc $e2                                       ; $5f18: $de $e2
    ld b, l                                       ; $5f1a: $45
    ld sp, hl                                     ; $5f1b: $f9
    di                                            ; $5f1c: $f3
    sub $b1                                       ; $5f1d: $d6 $b1
    ld h, h                                       ; $5f1f: $64
    ld b, l                                       ; $5f20: $45

jr_037_5f21:
    db $fc                                        ; $5f21: $fc
    call $cdbc                                    ; $5f22: $cd $bc $cd
    inc c                                         ; $5f25: $0c
    ld h, e                                       ; $5f26: $63
    add e                                         ; $5f27: $83
    ld hl, $01cd                                  ; $5f28: $21 $cd $01
    db $ed                                        ; $5f2b: $ed
    ret                                           ; $5f2c: $c9


    and e                                         ; $5f2d: $a3
    ld c, l                                       ; $5f2e: $4d
    pop hl                                        ; $5f2f: $e1
    ld [hl], b                                    ; $5f30: $70
    jr nz, @+$5a                                  ; $5f31: $20 $58

    ld a, [de]                                    ; $5f33: $1a
    ld b, a                                       ; $5f34: $47
    ld c, a                                       ; $5f35: $4f
    ld hl, sp-$76                                 ; $5f36: $f8 $8a
    or l                                          ; $5f38: $b5
    jr nz, jr_037_5fba                            ; $5f39: $20 $7f

    sbc a                                         ; $5f3b: $9f
    cp a                                          ; $5f3c: $bf
    ld c, $5e                                     ; $5f3d: $0e $5e
    db $db                                        ; $5f3f: $db
    ret                                           ; $5f40: $c9


    and [hl]                                      ; $5f41: $a6
    sbc d                                         ; $5f42: $9a
    ld [hl], h                                    ; $5f43: $74
    ld [$dc4e], a                                 ; $5f44: $ea $4e $dc
    ret                                           ; $5f47: $c9


    and [hl]                                      ; $5f48: $a6
    sbc d                                         ; $5f49: $9a
    halt                                          ; $5f4a: $76
    jp c, Jump_000_0734                           ; $5f4b: $da $34 $07

    db $ed                                        ; $5f4e: $ed
    ret                                           ; $5f4f: $c9


    ld c, c                                       ; $5f50: $49
    sub [hl]                                      ; $5f51: $96
    adc $aa                                       ; $5f52: $ce $aa
    ld [hl], $f3                                  ; $5f54: $36 $f3
    cp c                                          ; $5f56: $b9
    jp c, Jump_000_1252                           ; $5f57: $da $52 $12

    ld l, e                                       ; $5f5a: $6b
    and c                                         ; $5f5b: $a1
    ld h, [hl]                                    ; $5f5c: $66
    pop bc                                        ; $5f5d: $c1
    ld l, c                                       ; $5f5e: $69
    ld c, $ed                                     ; $5f5f: $0e $ed
    ret                                           ; $5f61: $c9


    di                                            ; $5f62: $f3
    ld e, d                                       ; $5f63: $5a
    ld [hl], b                                    ; $5f64: $70
    ret nz                                        ; $5f65: $c0

    add c                                         ; $5f66: $81
    ldh [$3a], a                                  ; $5f67: $e0 $3a
    sub $cd                                       ; $5f69: $d6 $cd
    cp $92                                        ; $5f6b: $fe $92
    ld e, l                                       ; $5f6d: $5d
    add $20                                       ; $5f6e: $c6 $20
    nop                                           ; $5f70: $00
    rlca                                          ; $5f71: $07
    ld h, d                                       ; $5f72: $62
    rst $10                                       ; $5f73: $d7
    ld d, l                                       ; $5f74: $55
    xor e                                         ; $5f75: $ab
    ld c, e                                       ; $5f76: $4b
    ld h, d                                       ; $5f77: $62
    dec l                                         ; $5f78: $2d
    call nc, $f82c                                ; $5f79: $d4 $2c $f8
    call c, $bd8b                                 ; $5f7c: $dc $8b $bd
    ld e, a                                       ; $5f7f: $5f
    adc a                                         ; $5f80: $8f
    sub $52                                       ; $5f81: $d6 $52
    db $fd                                        ; $5f83: $fd
    rst $30                                       ; $5f84: $f7
    di                                            ; $5f85: $f3
    rst $10                                       ; $5f86: $d7
    pop bc                                        ; $5f87: $c1
    cp b                                          ; $5f88: $b8
    xor b                                         ; $5f89: $a8
    ld bc, $577a                                  ; $5f8a: $01 $7a $57
    and d                                         ; $5f8d: $a2
    ld e, l                                       ; $5f8e: $5d
    or l                                          ; $5f8f: $b5
    cp d                                          ; $5f90: $ba
    add $12                                       ; $5f91: $c6 $12
    inc h                                         ; $5f93: $24
    ld l, c                                       ; $5f94: $69
    inc e                                         ; $5f95: $1c
    add a                                         ; $5f96: $87
    and l                                         ; $5f97: $a5
    inc l                                         ; $5f98: $2c
    dec c                                         ; $5f99: $0d
    or e                                          ; $5f9a: $b3
    ld l, c                                       ; $5f9b: $69
    ld c, $ed                                     ; $5f9c: $0e $ed
    ret                                           ; $5f9e: $c9


    jp Jump_000_1363                              ; $5f9f: $c3 $63 $13


    ld d, l                                       ; $5fa2: $55
    ld d, $99                                     ; $5fa3: $16 $99
    xor e                                         ; $5fa5: $ab
    ld d, [hl]                                    ; $5fa6: $56

jr_037_5fa7:
    sub a                                         ; $5fa7: $97
    ld d, l                                       ; $5fa8: $55
    db $fc                                        ; $5fa9: $fc
    ld h, [hl]                                    ; $5faa: $66
    ld a, [de]                                    ; $5fab: $1a
    sbc c                                         ; $5fac: $99
    sbc e                                         ; $5fad: $9b
    db $ec                                        ; $5fae: $ec
    db $d3                                        ; $5faf: $d3
    ld a, l                                       ; $5fb0: $7d
    xor [hl]                                      ; $5fb1: $ae
    ld c, $57                                     ; $5fb2: $0e $57
    ld a, e                                       ; $5fb4: $7b
    sbc e                                         ; $5fb5: $9b
    inc h                                         ; $5fb6: $24
    sbc a                                         ; $5fb7: $9f
    ccf                                           ; $5fb8: $3f
    rst $28                                       ; $5fb9: $ef

jr_037_5fba:
    ret nz                                        ; $5fba: $c0

    push bc                                       ; $5fbb: $c5
    ld l, a                                       ; $5fbc: $6f
    sbc $89                                       ; $5fbd: $de $89
    ld h, a                                       ; $5fbf: $67
    and c                                         ; $5fc0: $a1
    adc d                                         ; $5fc1: $8a
    cp a                                          ; $5fc2: $bf
    ld e, d                                       ; $5fc3: $5a
    adc b                                         ; $5fc4: $88
    cp a                                          ; $5fc5: $bf
    ld a, [hl-]                                   ; $5fc6: $3a
    call $ed01                                    ; $5fc7: $cd $01 $ed
    ret                                           ; $5fca: $c9


    add hl, bc                                    ; $5fcb: $09
    ld [de], a                                    ; $5fcc: $12
    ret z                                         ; $5fcd: $c8

    sbc a                                         ; $5fce: $9f
    sbc e                                         ; $5fcf: $9b
    inc h                                         ; $5fd0: $24
    ld a, [hl+]                                   ; $5fd1: $2a
    ld [hl], h                                    ; $5fd2: $74
    db $ec                                        ; $5fd3: $ec
    cp c                                          ; $5fd4: $b9
    ld a, [hl-]                                   ; $5fd5: $3a
    ld e, h                                       ; $5fd6: $5c
    db $ed                                        ; $5fd7: $ed
    db $ed                                        ; $5fd8: $ed
    ret z                                         ; $5fd9: $c8

    ld l, e                                       ; $5fda: $6b
    dec [hl]                                      ; $5fdb: $35
    ld a, h                                       ; $5fdc: $7c
    push de                                       ; $5fdd: $d5
    cp a                                          ; $5fde: $bf
    sbc a                                         ; $5fdf: $9f
    adc [hl]                                      ; $5fe0: $8e
    pop bc                                        ; $5fe1: $c1
    or b                                          ; $5fe2: $b0
    add b                                         ; $5fe3: $80
    db $d3                                        ; $5fe4: $d3
    inc e                                         ; $5fe5: $1c
    db $ed                                        ; $5fe6: $ed
    ret                                           ; $5fe7: $c9


    di                                            ; $5fe8: $f3
    ld e, [hl]                                    ; $5fe9: $5e
    ld [hl+], a                                   ; $5fea: $22
    ld c, $b0                                     ; $5feb: $0e $b0
    ld d, h                                       ; $5fed: $54
    ld e, e                                       ; $5fee: $5b
    ld a, [hl-]                                   ; $5fef: $3a
    ld b, d                                       ; $5ff0: $42
    ld [de], a                                    ; $5ff1: $12
    dec d                                         ; $5ff2: $15
    ld e, b                                       ; $5ff3: $58
    ld l, [hl]                                    ; $5ff4: $6e
    ld l, d                                       ; $5ff5: $6a
    or l                                          ; $5ff6: $b5
    xor e                                         ; $5ff7: $ab
    ld d, [hl]                                    ; $5ff8: $56
    sub a                                         ; $5ff9: $97
    ld sp, hl                                     ; $5ffa: $f9
    adc a                                         ; $5ffb: $8f
    add e                                         ; $5ffc: $83
    ld e, d                                       ; $5ffd: $5a
    ld a, [hl-]                                   ; $5ffe: $3a
    jr jr_037_5fa7                                ; $5fff: $18 $a6

    sub [hl]                                      ; $6001: $96
    ld e, $3f                                     ; $6002: $1e $3f
    dec bc                                        ; $6004: $0b
    db $e4                                        ; $6005: $e4
    rst $08                                       ; $6006: $cf
    jp nc, Jump_037_5461                          ; $6007: $d2 $61 $54

    dec e                                         ; $600a: $1d
    sbc $34                                       ; $600b: $de $34
    rlca                                          ; $600d: $07
    db $ed                                        ; $600e: $ed
    ret                                           ; $600f: $c9


    jp $c105                                      ; $6010: $c3 $05 $c1


    ld e, b                                       ; $6013: $58
    sub $b7                                       ; $6014: $d6 $b7
    cp a                                          ; $6016: $bf
    dec bc                                        ; $6017: $0b
    add $ce                                       ; $6018: $c6 $ce
    ld sp, $5840                                  ; $601a: $31 $40 $58
    xor d                                         ; $601d: $aa
    dec l                                         ; $601e: $2d
    ld c, l                                       ; $601f: $4d
    sub d                                         ; $6020: $92
    rst $08                                       ; $6021: $cf

jr_037_6022:
    sbc a                                         ; $6022: $9f
    ld [hl], a                                    ; $6023: $77
    ldh [$e2], a                                  ; $6024: $e0 $e2
    scf                                           ; $6026: $37
    ld l, a                                       ; $6027: $6f
    sbc d                                         ; $6028: $9a
    inc bc                                        ; $6029: $03
    db $ed                                        ; $602a: $ed
    ret                                           ; $602b: $c9


    adc h                                         ; $602c: $8c
    ld b, d                                       ; $602d: $42
    ld e, d                                       ; $602e: $5a
    ld l, l                                       ; $602f: $6d
    ld [hl], b                                    ; $6030: $70
    push af                                       ; $6031: $f5
    rst $00                                       ; $6032: $c7
    ld [hl-], a                                   ; $6033: $32
    rst $38                                       ; $6034: $ff
    sbc $60                                       ; $6035: $de $60
    ld [c], a                                     ; $6037: $e2
    sub c                                         ; $6038: $91
    ld l, d                                       ; $6039: $6a
    or e                                          ; $603a: $b3
    dec bc                                        ; $603b: $0b
    daa                                           ; $603c: $27
    ld c, [hl]                                    ; $603d: $4e
    cp [hl]                                       ; $603e: $be
    ld [hl], b                                    ; $603f: $70
    jr nz, jr_037_6022                            ; $6040: $20 $e0

    db $d3                                        ; $6042: $d3
    ld [de], a                                    ; $6043: $12
    inc h                                         ; $6044: $24
    jp hl                                         ; $6045: $e9


    ret z                                         ; $6046: $c8

    sbc a                                         ; $6047: $9f
    dec b                                         ; $6048: $05
    ld a, [c]                                     ; $6049: $f2
    rst $20                                       ; $604a: $e7
    adc [hl]                                      ; $604b: $8e
    sub b                                         ; $604c: $90
    cp a                                          ; $604d: $bf
    or a                                          ; $604e: $b7
    rst $20                                       ; $604f: $e7
    nop                                           ; $6050: $00
    ld l, a                                       ; $6051: $6f
    push de                                       ; $6052: $d5
    ld [$6bce], a                                 ; $6053: $ea $ce $6b
    and c                                         ; $6056: $a1
    ld b, $b2                                     ; $6057: $06 $b2
    jp c, $9bcc                                   ; $6059: $da $cc $9b

    and $ed                                       ; $605c: $e6 $ed
    ret                                           ; $605e: $c9


    jp $c105                                      ; $605f: $c3 $05 $c1


    jp nc, $be13                                  ; $6062: $d2 $13 $be

    ld h, d                                       ; $6065: $62
    dec l                                         ; $6066: $2d
    sub [hl]                                      ; $6067: $96
    ld [hl], e                                    ; $6068: $73
    or l                                          ; $6069: $b5
    and l                                         ; $606a: $a5
    add e                                         ; $606b: $83
    rst $10                                       ; $606c: $d7

jr_037_606d:
    sub $b1                                       ; $606d: $d6 $b1
    ld a, $fa                                     ; $606f: $3e $fa
    add hl, bc                                    ; $6071: $09
    adc c                                         ; $6072: $89
    db $db                                        ; $6073: $db
    rst $18                                       ; $6074: $df
    ld b, b                                       ; $6075: $40
    cp $bc                                        ; $6076: $fe $bc
    dec e                                         ; $6078: $1d
    ld l, $ea                                     ; $6079: $2e $ea
    jr jr_037_606d                                ; $607b: $18 $f0

    ld b, d                                       ; $607d: $42
    rst $38                                       ; $607e: $ff
    ld h, [hl]                                    ; $607f: $66
    adc $24                                       ; $6080: $ce $24
    ld [$dbc2], sp                                ; $6082: $08 $c2 $db
    cp e                                          ; $6085: $bb
    ld [de], a                                    ; $6086: $12
    db $ed                                        ; $6087: $ed
    inc [hl]                                      ; $6088: $34
    rlca                                          ; $6089: $07
    db $ed                                        ; $608a: $ed
    ret                                           ; $608b: $c9


Jump_037_608c:
    jp $c105                                      ; $608c: $c3 $05 $c1


    jp nc, $12a1                                  ; $608f: $d2 $a1 $12

    ldh a, [$8e]                                  ; $6092: $f0 $8e
    cp a                                          ; $6094: $bf
    db $10                                        ; $6095: $10
    scf                                           ; $6096: $37
    res 7, c                                      ; $6097: $cb $b9
    jp c, $1d52                                   ; $6099: $da $52 $1d

    xor $f1                                       ; $609c: $ee $f1
    or e                                          ; $609e: $b3
    ld b, b                                       ; $609f: $40
    cp $bc                                        ; $60a0: $fe $bc
    dec e                                         ; $60a2: $1d
    ld e, $99                                     ; $60a3: $1e $99
    rla                                           ; $60a5: $17
    ld sp, hl                                     ; $60a6: $f9
    ei                                            ; $60a7: $fb
    inc b                                         ; $60a8: $04
    ld a, b                                       ; $60a9: $78
    xor e                                         ; $60aa: $ab
    dec l                                         ; $60ab: $2d
    dec a                                         ; $60ac: $3d
    pop hl                                        ; $60ad: $e1
    ccf                                           ; $60ae: $3f
    jp c, Jump_037_6a69                           ; $60af: $da $69 $6a

    ld hl, $412e                                  ; $60b2: $21 $2e $41
    cp $c0                                        ; $60b5: $fe $c0
    ld l, c                                       ; $60b7: $69
    ld c, $ed                                     ; $60b8: $0e $ed
    ret                                           ; $60ba: $c9


    inc hl                                        ; $60bb: $23
    inc bc                                        ; $60bc: $03
    ld e, b                                       ; $60bd: $58
    ld h, a                                       ; $60be: $67
    ld b, d                                       ; $60bf: $42
    ld e, d                                       ; $60c0: $5a
    ld l, l                                       ; $60c1: $6d
    jp hl                                         ; $60c2: $e9


    ldh [$b5], a                                  ; $60c3: $e0 $b5
    ld c, l                                       ; $60c5: $4d
    cp [hl]                                       ; $60c6: $be
    or d                                          ; $60c7: $b2
    ei                                            ; $60c8: $fb
    rla                                           ; $60c9: $17
    ret nz                                        ; $60ca: $c0

    or h                                          ; $60cb: $b4
    or e                                          ; $60cc: $b3
    ld a, a                                       ; $60cd: $7f
    cp $1a                                        ; $60ce: $fe $1a
    rst $28                                       ; $60d0: $ef
    add sp, $5d                                   ; $60d1: $e8 $5d
    adc c                                         ; $60d3: $89
    halt                                          ; $60d4: $76
    dec e                                         ; $60d5: $1d
    ld l, e                                       ; $60d6: $6b
    xor h                                         ; $60d7: $ac
    or [hl]                                       ; $60d8: $b6
    ld [hl], h                                    ; $60d9: $74
    jr nc, jr_037_6108                            ; $60da: $30 $2c

    ld c, l                                       ; $60dc: $4d
    ld c, [hl]                                    ; $60dd: $4e

Call_037_60de:
    ld d, h                                       ; $60de: $54
    ld l, b                                       ; $60df: $68
    add hl, hl                                    ; $60e0: $29
    db $eb                                        ; $60e1: $eb
    db $fd                                        ; $60e2: $fd
    cp e                                          ; $60e3: $bb
    sub b                                         ; $60e4: $90
    and $ed                                       ; $60e5: $e6 $ed
    ret                                           ; $60e7: $c9


    jp $a42c                                      ; $60e8: $c3 $2c $a4


    ld [hl], a                                    ; $60eb: $77
    add b                                         ; $60ec: $80
    dec sp                                        ; $60ed: $3b
    ld d, h                                       ; $60ee: $54
    pop bc                                        ; $60ef: $c1
    dec h                                         ; $60f0: $25
    or c                                          ; $60f1: $b1
    dec e                                         ; $60f2: $1d
    cp h                                          ; $60f3: $bc
    or [hl]                                       ; $60f4: $b6
    daa                                           ; $60f5: $27
    ld a, h                                       ; $60f6: $7c
    push bc                                       ; $60f7: $c5
    ld e, d                                       ; $60f8: $5a
    ld e, b                                       ; $60f9: $58
    ld [de], a                                    ; $60fa: $12
    ld a, a                                       ; $60fb: $7f
    sub [hl]                                      ; $60fc: $96
    ld c, l                                       ; $60fd: $4d
    ld [hl], e                                    ; $60fe: $73
    db $ed                                        ; $60ff: $ed

Call_037_6100:
    ret                                           ; $6100: $c9


    inc hl                                        ; $6101: $23
    inc bc                                        ; $6102: $03
    ld e, b                                       ; $6103: $58
    ld h, a                                       ; $6104: $67
    ld b, d                                       ; $6105: $42
    ld e, d                                       ; $6106: $5a
    ld l, l                                       ; $6107: $6d

jr_037_6108:
    jp hl                                         ; $6108: $e9


    ldh [$b5], a                                  ; $6109: $e0 $b5
    ld c, l                                       ; $610b: $4d
    cp [hl]                                       ; $610c: $be
    or d                                          ; $610d: $b2
    ei                                            ; $610e: $fb
    rla                                           ; $610f: $17
    ret nz                                        ; $6110: $c0

    or h                                          ; $6111: $b4
    or e                                          ; $6112: $b3
    ld a, a                                       ; $6113: $7f
    cp $1a                                        ; $6114: $fe $1a
    rst $28                                       ; $6116: $ef
    add sp, $5d                                   ; $6117: $e8 $5d
    adc c                                         ; $6119: $89
    halt                                          ; $611a: $76
    dec e                                         ; $611b: $1d
    ld l, e                                       ; $611c: $6b
    xor h                                         ; $611d: $ac
    or [hl]                                       ; $611e: $b6
    ld [hl], h                                    ; $611f: $74
    jr nc, jr_037_614e                            ; $6120: $30 $2c

    ld c, l                                       ; $6122: $4d
    ld c, [hl]                                    ; $6123: $4e
    ld d, h                                       ; $6124: $54
    ld l, b                                       ; $6125: $68
    add hl, hl                                    ; $6126: $29
    db $eb                                        ; $6127: $eb
    db $fd                                        ; $6128: $fd
    cp e                                          ; $6129: $bb
    sub b                                         ; $612a: $90
    and $ed                                       ; $612b: $e6 $ed
    ret                                           ; $612d: $c9


    jp $fb7c                                      ; $612e: $c3 $7c $fb


    cp e                                          ; $6131: $bb
    ldh [rNR52], a                                ; $6132: $e0 $26
    ei                                            ; $6134: $fb
    ld [hl], h                                    ; $6135: $74
    sbc a                                         ; $6136: $9f
    xor e                                         ; $6137: $ab
    jp $553d                                      ; $6138: $c3 $3d $55


    ld l, l                                       ; $613b: $6d
    and $26                                       ; $613c: $e6 $26
    ei                                            ; $613e: $fb
    ld [hl], h                                    ; $613f: $74
    rst $28                                       ; $6140: $ef
    pop hl                                        ; $6141: $e1
    ld b, b                                       ; $6142: $40
    or b                                          ; $6143: $b0
    inc [hl]                                      ; $6144: $34
    or [hl]                                       ; $6145: $b6
    add hl, bc                                    ; $6146: $09
    ld b, d                                       ; $6147: $42
    rst $38                                       ; $6148: $ff
    ld [$857e], a                                 ; $6149: $ea $7e $85
    ld l, h                                       ; $614c: $6c
    ld d, b                                       ; $614d: $50

jr_037_614e:
    ld l, l                                       ; $614e: $6d
    ld [hl], b                                    ; $614f: $70
    sbc d                                         ; $6150: $9a
    inc bc                                        ; $6151: $03
    db $ed                                        ; $6152: $ed
    ret                                           ; $6153: $c9


    inc hl                                        ; $6154: $23
    inc bc                                        ; $6155: $03
    ld e, b                                       ; $6156: $58
    ld h, a                                       ; $6157: $67
    ld b, d                                       ; $6158: $42
    ld e, d                                       ; $6159: $5a
    ld l, l                                       ; $615a: $6d
    adc c                                         ; $615b: $89
    db $ed                                        ; $615c: $ed
    ldh [$b5], a                                  ; $615d: $e0 $b5
    ld c, l                                       ; $615f: $4d
    cp [hl]                                       ; $6160: $be
    or d                                          ; $6161: $b2
    ei                                            ; $6162: $fb
    rla                                           ; $6163: $17
    ret nz                                        ; $6164: $c0

    or h                                          ; $6165: $b4
    or e                                          ; $6166: $b3
    ld a, a                                       ; $6167: $7f
    cp $1a                                        ; $6168: $fe $1a
    ld c, a                                       ; $616a: $4f
    ld a, d                                       ; $616b: $7a
    ld d, a                                       ; $616c: $57
    and d                                         ; $616d: $a2
    ld e, l                                       ; $616e: $5d
    rst $00                                       ; $616f: $c7
    ld a, [de]                                    ; $6170: $1a
    xor e                                         ; $6171: $ab
    dec l                                         ; $6172: $2d
    dec e                                         ; $6173: $1d
    inc c                                         ; $6174: $0c
    ld c, e                                       ; $6175: $4b

jr_037_6176:
    sub e                                         ; $6176: $93
    inc de                                        ; $6177: $13
    dec d                                         ; $6178: $15
    ld e, d                                       ; $6179: $5a
    jp z, $ff7a                                   ; $617a: $ca $7a $ff

    ld l, $a4                                     ; $617d: $2e $a4
    add hl, sp                                    ; $617f: $39
    db $ed                                        ; $6180: $ed
    ret                                           ; $6181: $c9


    inc hl                                        ; $6182: $23
    inc bc                                        ; $6183: $03
    ld e, b                                       ; $6184: $58
    ld h, a                                       ; $6185: $67
    ld b, d                                       ; $6186: $42
    ld e, d                                       ; $6187: $5a
    ld l, l                                       ; $6188: $6d
    adc c                                         ; $6189: $89
    db $ed                                        ; $618a: $ed
    ldh [$b5], a                                  ; $618b: $e0 $b5
    ld c, l                                       ; $618d: $4d
    cp [hl]                                       ; $618e: $be
    or d                                          ; $618f: $b2
    ei                                            ; $6190: $fb
    rla                                           ; $6191: $17
    ret nz                                        ; $6192: $c0

    or h                                          ; $6193: $b4
    or e                                          ; $6194: $b3
    ld a, a                                       ; $6195: $7f
    cp $1a                                        ; $6196: $fe $1a
    ld c, a                                       ; $6198: $4f
    ld a, d                                       ; $6199: $7a
    ld d, a                                       ; $619a: $57
    and d                                         ; $619b: $a2
    ld e, l                                       ; $619c: $5d
    rst $00                                       ; $619d: $c7
    ld a, [de]                                    ; $619e: $1a
    xor e                                         ; $619f: $ab
    dec l                                         ; $61a0: $2d
    dec e                                         ; $61a1: $1d
    inc c                                         ; $61a2: $0c
    ld c, e                                       ; $61a3: $4b
    sub e                                         ; $61a4: $93
    inc de                                        ; $61a5: $13
    dec d                                         ; $61a6: $15
    ld e, d                                       ; $61a7: $5a
    jp z, $ff7a                                   ; $61a8: $ca $7a $ff

    ld l, $a4                                     ; $61ab: $2e $a4
    add hl, sp                                    ; $61ad: $39
    db $ed                                        ; $61ae: $ed
    ret                                           ; $61af: $c9


    adc h                                         ; $61b0: $8c
    ld b, d                                       ; $61b1: $42
    ld e, d                                       ; $61b2: $5a
    ld l, l                                       ; $61b3: $6d
    jp hl                                         ; $61b4: $e9


    ldh [$b5], a                                  ; $61b5: $e0 $b5
    ld c, l                                       ; $61b7: $4d
    cp [hl]                                       ; $61b8: $be
    ld [hl-], a                                   ; $61b9: $32
    inc a                                         ; $61ba: $3c

jr_037_61bb:
    db $fc                                        ; $61bb: $fc
    or l                                          ; $61bc: $b5
    db $d3                                        ; $61bd: $d3
    inc e                                         ; $61be: $1c
    db $ed                                        ; $61bf: $ed
    ret                                           ; $61c0: $c9


    jp $c105                                      ; $61c1: $c3 $05 $c1


    dec e                                         ; $61c4: $1d
    dec e                                         ; $61c5: $1d
    ld [bc], a                                    ; $61c6: $02
    or c                                          ; $61c7: $b1
    push de                                       ; $61c8: $d5
    add $ce                                       ; $61c9: $c6 $ce
    dec l                                         ; $61cb: $2d
    rst $10                                       ; $61cc: $d7
    nop                                           ; $61cd: $00
    pop hl                                        ; $61ce: $e1
    push de                                       ; $61cf: $d5
    sbc $8e                                       ; $61d0: $de $8e

Jump_037_61d2:
    jr nc, jr_037_6176                            ; $61d2: $30 $a2

    add hl, hl                                    ; $61d4: $29
    and [hl]                                      ; $61d5: $a6
    add hl, sp                                    ; $61d6: $39
    db $ed                                        ; $61d7: $ed
    ret                                           ; $61d8: $c9


    ld c, h                                       ; $61d9: $4c
    cp $14                                        ; $61da: $fe $14
    and l                                         ; $61dc: $a5
    ld c, $b0                                     ; $61dd: $0e $b0
    ld [hl], h                                    ; $61df: $74
    ldh a, [$da]                                  ; $61e0: $f0 $da
    ld h, $5f                                     ; $61e2: $26 $5f
    reti                                          ; $61e4: $d9


    db $fd                                        ; $61e5: $fd
    dec bc                                        ; $61e6: $0b
    ld h, b                                       ; $61e7: $60
    jp c, $c459                                   ; $61e8: $da $59 $c4

    ld l, d                                       ; $61eb: $6a
    ld [hl], l                                    ; $61ec: $75
    rlca                                          ; $61ed: $07
    xor a                                         ; $61ee: $af
    db $ed                                        ; $61ef: $ed
    db $ec                                        ; $61f0: $ec
    pop bc                                        ; $61f1: $c1
    cpl                                           ; $61f2: $2f
    ld a, [$b3b1]                                 ; $61f3: $fa $b1 $b3
    ret nc                                        ; $61f6: $d0

    ld a, a                                       ; $61f7: $7f
    sbc b                                         ; $61f8: $98
    halt                                          ; $61f9: $76
    ld [c], a                                     ; $61fa: $e2
    ld h, $5b                                     ; $61fb: $26 $5b
    db $10                                        ; $61fd: $10
    ld c, h                                       ; $61fe: $4c
    xor c                                         ; $61ff: $a9
    and l                                         ; $6200: $a5

jr_037_6201:
    jp c, $2658                                   ; $6201: $da $58 $26

    jr c, jr_037_621c                             ; $6204: $38 $16

    xor e                                         ; $6206: $ab
    dec l                                         ; $6207: $2d
    dec e                                         ; $6208: $1d
    db $ed                                        ; $6209: $ed
    ld b, b                                       ; $620a: $40
    ld l, a                                       ; $620b: $6f
    sbc d                                         ; $620c: $9a
    inc bc                                        ; $620d: $03
    db $ed                                        ; $620e: $ed
    ret                                           ; $620f: $c9


    call z, $3081                                 ; $6210: $cc $81 $30
    add l                                         ; $6213: $85
    ld l, d                                       ; $6214: $6a
    ld l, a                                       ; $6215: $6f
    add a                                         ; $6216: $87
    ld a, l                                       ; $6217: $7d
    call nz, Call_037_56c6                        ; $6218: $c4 $c6 $56
    ld e, e                                       ; $621b: $5b

jr_037_621c:
    ld a, [hl-]                                   ; $621c: $3a
    ld [hl], b                                    ; $621d: $70
    dec c                                         ; $621e: $0d
    jr z, jr_037_61bb                             ; $621f: $28 $9a

    jr z, jr_037_6201                             ; $6221: $28 $de

    adc [hl]                                      ; $6223: $8e
    ld d, h                                       ; $6224: $54
    jr @+$39                                      ; $6225: $18 $37

    or $af                                        ; $6227: $f6 $af
    ld l, $93                                     ; $6229: $2e $93
    cp a                                          ; $622b: $bf
    cp e                                          ; $622c: $bb
    ld de, $5b2c                                  ; $622d: $11 $2c $5b
    ld l, l                                       ; $6230: $6d
    inc l                                         ; $6231: $2c
    sub e                                         ; $6232: $93
    cp a                                          ; $6233: $bf
    ldh [$37], a                                  ; $6234: $e0 $37
    db $fc                                        ; $6236: $fc
    inc d                                         ; $6237: $14
    db $d3                                        ; $6238: $d3
    inc e                                         ; $6239: $1c
    db $ed                                        ; $623a: $ed
    ret                                           ; $623b: $c9


    inc hl                                        ; $623c: $23
    xor [hl]                                      ; $623d: $ae
    ld h, e                                       ; $623e: $63
    ldh [$da], a                                  ; $623f: $e0 $da
    ld b, b                                       ; $6241: $40
    adc b                                         ; $6242: $88
    xor l                                         ; $6243: $ad
    or [hl]                                       ; $6244: $b6
    ld d, h                                       ; $6245: $54
    db $ed                                        ; $6246: $ed
    ldh [rLYC], a                                 ; $6247: $e0 $45
    xor c                                         ; $6249: $a9
    ld d, a                                       ; $624a: $57
    dec de                                        ; $624b: $1b
    cp h                                          ; $624c: $bc
    ld h, l                                       ; $624d: $65
    ld [hl], h                                    ; $624e: $74
    jr nz, jr_037_62a9                            ; $624f: $20 $58

    ld h, $66                                     ; $6251: $26 $66
    xor d                                         ; $6253: $aa
    nop                                           ; $6254: $00
    sbc a                                         ; $6255: $9f
    xor e                                         ; $6256: $ab
    jp $4825                                      ; $6257: $c3 $25 $48


    ld d, d                                       ; $625a: $52
    rst $00                                       ; $625b: $c7
    cp d                                          ; $625c: $ba
    ld a, $7d                                     ; $625d: $3e $7d
    add b                                         ; $625f: $80
    ld e, [hl]                                    ; $6260: $5e
    ld a, [hl-]                                   ; $6261: $3a
    inc l                                         ; $6262: $2c
    ldh [$ce], a                                  ; $6263: $e0 $ce
    xor l                                         ; $6265: $ad
    ret c                                         ; $6266: $d8

    rst $18                                       ; $6267: $df
    db $db                                        ; $6268: $db
    ld [hl], l                                    ; $6269: $75
    inc c                                         ; $626a: $0c
    ld e, h                                       ; $626b: $5c
    dec de                                        ; $626c: $1b
    ld d, $e8                                     ; $626d: $16 $e8
    ld e, l                                       ; $626f: $5d
    adc c                                         ; $6270: $89
    halt                                          ; $6271: $76
    sbc d                                         ; $6272: $9a
    inc bc                                        ; $6273: $03
    db $ed                                        ; $6274: $ed
    ret                                           ; $6275: $c9


    call z, $3081                                 ; $6276: $cc $81 $30
    add l                                         ; $6279: $85
    ld [$9370], a                                 ; $627a: $ea $70 $93
    ld h, e                                       ; $627d: $63
    pop bc                                        ; $627e: $c1
    sub d                                         ; $627f: $92
    adc c                                         ; $6280: $89
    ld e, d                                       ; $6281: $5a
    ld c, l                                       ; $6282: $4d
    ret nc                                        ; $6283: $d0

    or c                                          ; $6284: $b1
    pop bc                                        ; $6285: $c1
    adc l                                         ; $6286: $8d
    xor l                                         ; $6287: $ad
    or [hl]                                       ; $6288: $b6
    ld [hl], h                                    ; $6289: $74
    ldh [rNR30], a                                ; $628a: $e0 $1a
    ld d, b                                       ; $628c: $50
    inc [hl]                                      ; $628d: $34
    ld d, c                                       ; $628e: $51
    cp h                                          ; $628f: $bc
    dec e                                         ; $6290: $1d
    xor c                                         ; $6291: $a9
    jr nc, jr_037_6302                            ; $6292: $30 $6e

    db $ec                                        ; $6294: $ec
    ld e, a                                       ; $6295: $5f
    ld e, l                                       ; $6296: $5d
    ld h, $7f                                     ; $6297: $26 $7f
    ld [hl], a                                    ; $6299: $77
    inc hl                                        ; $629a: $23
    ld e, b                                       ; $629b: $58
    or [hl]                                       ; $629c: $b6
    jp c, $2658                                   ; $629d: $da $58 $26

    ld a, a                                       ; $62a0: $7f
    pop bc                                        ; $62a1: $c1
    ld l, a                                       ; $62a2: $6f
    ld hl, sp+$29                                 ; $62a3: $f8 $29
    and [hl]                                      ; $62a5: $a6
    add hl, sp                                    ; $62a6: $39
    db $ed                                        ; $62a7: $ed
    ret                                           ; $62a8: $c9


jr_037_62a9:
    call z, $3081                                 ; $62a9: $cc $81 $30
    add l                                         ; $62ac: $85
    ld [$6770], a                                 ; $62ad: $ea $70 $67
    ei                                            ; $62b0: $fb
    ld a, [bc]                                    ; $62b1: $0a
    call c, Call_037_6ad8                         ; $62b2: $dc $d8 $6a
    ld c, e                                       ; $62b5: $4b
    rlca                                          ; $62b6: $07
    xor [hl]                                      ; $62b7: $ae
    ld bc, $1345                                  ; $62b8: $01 $45 $13
    push bc                                       ; $62bb: $c5
    db $db                                        ; $62bc: $db
    sub c                                         ; $62bd: $91
    ld a, [bc]                                    ; $62be: $0a
    db $e3                                        ; $62bf: $e3
    add $fe                                       ; $62c0: $c6 $fe
    push de                                       ; $62c2: $d5
    ld h, l                                       ; $62c3: $65
    ld a, [c]                                     ; $62c4: $f2
    ld [hl], a                                    ; $62c5: $77
    scf                                           ; $62c6: $37
    add d                                         ; $62c7: $82
    ld h, l                                       ; $62c8: $65
    xor e                                         ; $62c9: $ab
    adc l                                         ; $62ca: $8d
    ld h, l                                       ; $62cb: $65
    ld a, [c]                                     ; $62cc: $f2
    rla                                           ; $62cd: $17
    db $fc                                        ; $62ce: $fc
    add [hl]                                      ; $62cf: $86
    sbc a                                         ; $62d0: $9f
    ld h, d                                       ; $62d1: $62
    sbc d                                         ; $62d2: $9a
    inc bc                                        ; $62d3: $03
    db $ed                                        ; $62d4: $ed
    ret                                           ; $62d5: $c9


    call z, $3081                                 ; $62d6: $cc $81 $30
    add l                                         ; $62d9: $85
    ld [$6770], a                                 ; $62da: $ea $70 $67
    di                                            ; $62dd: $f3
    rst $10                                       ; $62de: $d7
    ld e, c                                       ; $62df: $59
    ret nz                                        ; $62e0: $c0

    rla                                           ; $62e1: $17
    ld [hl], c                                    ; $62e2: $71
    ld h, e                                       ; $62e3: $63
    xor e                                         ; $62e4: $ab
    dec l                                         ; $62e5: $2d
    dec e                                         ; $62e6: $1d
    cp b                                          ; $62e7: $b8
    ld b, $14                                     ; $62e8: $06 $14
    ld c, l                                       ; $62ea: $4d
    inc d                                         ; $62eb: $14
    ld l, a                                       ; $62ec: $6f
    ld b, a                                       ; $62ed: $47
    ld a, [hl+]                                   ; $62ee: $2a
    adc h                                         ; $62ef: $8c
    dec de                                        ; $62f0: $1b
    ei                                            ; $62f1: $fb
    ld d, a                                       ; $62f2: $57
    sub a                                         ; $62f3: $97
    ret                                           ; $62f4: $c9


    rst $18                                       ; $62f5: $df
    db $dd                                        ; $62f6: $dd
    ld [$ad96], sp                                ; $62f7: $08 $96 $ad
    ld [hl], $96                                  ; $62fa: $36 $96
    ret                                           ; $62fc: $c9


    ld e, a                                       ; $62fd: $5f
    ldh a, [rNR31]                                ; $62fe: $f0 $1b
    ld a, [hl]                                    ; $6300: $7e
    adc d                                         ; $6301: $8a

jr_037_6302:
    ld l, c                                       ; $6302: $69
    ld c, $ed                                     ; $6303: $0e $ed
    ret                                           ; $6305: $c9


    call z, Call_000_0cd8                         ; $6306: $cc $d8 $0c
    ld a, [de]                                    ; $6309: $1a
    ld e, e                                       ; $630a: $5b
    ld l, l                                       ; $630b: $6d
    jp hl                                         ; $630c: $e9


    ret nz                                        ; $630d: $c0

    dec [hl]                                      ; $630e: $35
    and b                                         ; $630f: $a0
    ld l, b                                       ; $6310: $68
    and d                                         ; $6311: $a2
    ld a, b                                       ; $6312: $78
    dec sp                                        ; $6313: $3b
    ld d, d                                       ; $6314: $52
    ld h, c                                       ; $6315: $61
    call c, $bfd8                                 ; $6316: $dc $d8 $bf
    cp d                                          ; $6319: $ba
    ld c, h                                       ; $631a: $4c
    cp $ee                                        ; $631b: $fe $ee
    ld b, [hl]                                    ; $631d: $46
    or b                                          ; $631e: $b0
    ld l, h                                       ; $631f: $6c
    or l                                          ; $6320: $b5
    or c                                          ; $6321: $b1

jr_037_6322:
    ld c, h                                       ; $6322: $4c
    cp $82                                        ; $6323: $fe $82
    rst $18                                       ; $6325: $df
    ldh a, [rHDMA3]                               ; $6326: $f0 $53
    ld c, h                                       ; $6328: $4c
    ld [hl], e                                    ; $6329: $73
    db $ed                                        ; $632a: $ed
    ret                                           ; $632b: $c9


    call z, $3081                                 ; $632c: $cc $81 $30
    add l                                         ; $632f: $85
    ld [hl-], a                                   ; $6330: $32
    ld sp, hl                                     ; $6331: $f9
    and e                                         ; $6332: $a3
    ccf                                           ; $6333: $3f
    inc hl                                        ; $6334: $23
    ld e, e                                       ; $6335: $5b
    ld h, l                                       ; $6336: $65
    adc l                                         ; $6337: $8d
    xor l                                         ; $6338: $ad
    or [hl]                                       ; $6339: $b6
    ld [hl], h                                    ; $633a: $74

Jump_037_633b:
    ldh [rNR30], a                                ; $633b: $e0 $1a
    ld d, b                                       ; $633d: $50
    inc [hl]                                      ; $633e: $34
    ld d, c                                       ; $633f: $51
    cp h                                          ; $6340: $bc
    dec e                                         ; $6341: $1d
    xor c                                         ; $6342: $a9
    jr nc, jr_037_63b3                            ; $6343: $30 $6e

    db $ec                                        ; $6345: $ec
    ld e, a                                       ; $6346: $5f
    ld e, l                                       ; $6347: $5d
    ld h, $7f                                     ; $6348: $26 $7f
    ld [hl], a                                    ; $634a: $77
    inc hl                                        ; $634b: $23
    ld e, b                                       ; $634c: $58
    or [hl]                                       ; $634d: $b6
    jp c, $2658                                   ; $634e: $da $58 $26

    ld a, a                                       ; $6351: $7f
    pop bc                                        ; $6352: $c1
    ld l, a                                       ; $6353: $6f
    ld hl, sp+$29                                 ; $6354: $f8 $29
    and [hl]                                      ; $6356: $a6
    add hl, sp                                    ; $6357: $39
    db $ed                                        ; $6358: $ed
    ret                                           ; $6359: $c9


    jp $a42c                                      ; $635a: $c3 $2c $a4


    ld [hl], a                                    ; $635d: $77
    add b                                         ; $635e: $80
    adc e                                         ; $635f: $8b
    or c                                          ; $6360: $b1
    sbc c                                         ; $6361: $99
    ld d, a                                       ; $6362: $57
    cp e                                          ; $6363: $bb
    ret                                           ; $6364: $c9


    ld a, $dd                                     ; $6365: $3e $dd
    ld a, e                                       ; $6367: $7b

jr_037_6368:
    jr c, @+$12                                   ; $6368: $38 $10

    inc l                                         ; $636a: $2c
    or c                                          ; $636b: $b1
    ld l, c                                       ; $636c: $69
    ld c, $ed                                     ; $636d: $0e $ed
    ret                                           ; $636f: $c9


    call z, $3081                                 ; $6370: $cc $81 $30
    add l                                         ; $6373: $85
    ld [$e770], a                                 ; $6374: $ea $70 $e7
    ld a, d                                       ; $6377: $7a
    ld h, e                                       ; $6378: $63
    ldh [rNR33], a                                ; $6379: $e0 $1d
    ld a, [bc]                                    ; $637b: $0a
    or e                                          ; $637c: $b3
    add b                                         ; $637d: $80
    cpl                                           ; $637e: $2f
    ld [c], a                                     ; $637f: $e2
    add $56                                       ; $6380: $c6 $56
    ld e, e                                       ; $6382: $5b
    ld a, [hl-]                                   ; $6383: $3a
    ld [hl], b                                    ; $6384: $70
    dec c                                         ; $6385: $0d
    jr z, jr_037_6322                             ; $6386: $28 $9a

    jr z, jr_037_6368                             ; $6388: $28 $de

    adc [hl]                                      ; $638a: $8e
    ld d, h                                       ; $638b: $54
    jr @+$39                                      ; $638c: $18 $37

    or $af                                        ; $638e: $f6 $af
    ld l, $93                                     ; $6390: $2e $93
    cp a                                          ; $6392: $bf
    cp e                                          ; $6393: $bb
    ld de, $5b2c                                  ; $6394: $11 $2c $5b
    ld l, l                                       ; $6397: $6d
    inc l                                         ; $6398: $2c
    sub e                                         ; $6399: $93
    cp a                                          ; $639a: $bf
    ldh [$37], a                                  ; $639b: $e0 $37
    db $fc                                        ; $639d: $fc
    inc d                                         ; $639e: $14
    db $d3                                        ; $639f: $d3
    inc e                                         ; $63a0: $1c
    db $ed                                        ; $63a1: $ed
    ret                                           ; $63a2: $c9


    call z, $3081                                 ; $63a3: $cc $81 $30
    add l                                         ; $63a6: $85
    ld [$9d8f], a                                 ; $63a7: $ea $8f $9d
    reti                                          ; $63aa: $d9


    sub h                                         ; $63ab: $94
    ld e, [hl]                                    ; $63ac: $5e
    adc l                                         ; $63ad: $8d
    xor l                                         ; $63ae: $ad
    or [hl]                                       ; $63af: $b6
    ld [hl], h                                    ; $63b0: $74
    ldh [rNR30], a                                ; $63b1: $e0 $1a

jr_037_63b3:
    ld d, b                                       ; $63b3: $50
    inc [hl]                                      ; $63b4: $34
    ld d, c                                       ; $63b5: $51
    cp h                                          ; $63b6: $bc
    dec e                                         ; $63b7: $1d
    xor c                                         ; $63b8: $a9
    jr nc, @+$70                                  ; $63b9: $30 $6e

    db $ec                                        ; $63bb: $ec
    ld e, a                                       ; $63bc: $5f
    ld e, l                                       ; $63bd: $5d
    ld h, $7f                                     ; $63be: $26 $7f
    ld [hl], a                                    ; $63c0: $77
    inc hl                                        ; $63c1: $23
    ld e, b                                       ; $63c2: $58
    or [hl]                                       ; $63c3: $b6
    jp c, $2658                                   ; $63c4: $da $58 $26

    ld a, a                                       ; $63c7: $7f
    pop bc                                        ; $63c8: $c1
    ld l, a                                       ; $63c9: $6f
    ld hl, sp+$29                                 ; $63ca: $f8 $29
    and [hl]                                      ; $63cc: $a6
    add hl, sp                                    ; $63cd: $39
    db $ed                                        ; $63ce: $ed
    ret                                           ; $63cf: $c9


    jp $ee17                                      ; $63d0: $c3 $17 $ee


    pop bc                                        ; $63d3: $c1
    ld l, a                                       ; $63d4: $6f
    and [hl]                                      ; $63d5: $a6
    ldh [rOCPS], a                                ; $63d6: $e0 $6a
    ld l, a                                       ; $63d8: $6f
    add hl, de                                    ; $63d9: $19
    cpl                                           ; $63da: $2f
    xor d                                         ; $63db: $aa
    cp l                                          ; $63dc: $bd
    sbc $32                                       ; $63dd: $de $32
    ld sp, hl                                     ; $63df: $f9
    db $db                                        ; $63e0: $db
    rrca                                          ; $63e1: $0f
    db $e4                                        ; $63e2: $e4
    inc [hl]                                      ; $63e3: $34
    rlca                                          ; $63e4: $07
    db $ed                                        ; $63e5: $ed
    ret                                           ; $63e6: $c9


    jp Jump_000_1c85                              ; $63e7: $c3 $85 $1c


    and [hl]                                      ; $63ea: $a6
    ldh [$c6], a                                  ; $63eb: $e0 $c6
    ld d, [hl]                                    ; $63ed: $56
    add a                                         ; $63ee: $87
    pop de                                        ; $63ef: $d1
    ld b, a                                       ; $63f0: $47
    ld h, a                                       ; $63f1: $67
    db $fd                                        ; $63f2: $fd
    ld c, a                                       ; $63f3: $4f
    sbc [hl]                                      ; $63f4: $9e
    ld e, d                                       ; $63f5: $5a
    ld l, l                                       ; $63f6: $6d
    add c                                         ; $63f7: $81
    ld [$0f70], a                                 ; $63f8: $ea $70 $0f
    rlca                                          ; $63fb: $07
    add d                                         ; $63fc: $82
    or a                                          ; $63fd: $b7
    ld [hl], e                                    ; $63fe: $73
    adc e                                         ; $63ff: $8b
    add hl, bc                                    ; $6400: $09
    jp nz, Jump_000_38d2                          ; $6401: $c2 $d2 $38

    ld a, [hl-]                                   ; $6404: $3a
    and a                                         ; $6405: $a7
    ld a, [bc]                                    ; $6406: $0a
    xor l                                         ; $6407: $ad
    inc bc                                        ; $6408: $03
    ld hl, sp+$4b                                 ; $6409: $f8 $4b
    ld [hl], e                                    ; $640b: $73
    db $ed                                        ; $640c: $ed
    ret                                           ; $640d: $c9


    inc hl                                        ; $640e: $23

jr_037_640f:
    cp $40                                        ; $640f: $fe $40
    ld b, b                                       ; $6411: $40
    ld [c], a                                     ; $6412: $e2
    add $56                                       ; $6413: $c6 $56
    ld e, e                                       ; $6415: $5b
    cp d                                          ; $6416: $ba
    rra                                           ; $6417: $1f
    ld [c], a                                     ; $6418: $e2
    jp c, $bd4f                                   ; $6419: $da $4f $bd

    sbc l                                         ; $641c: $9d
    ld d, e                                       ; $641d: $53
    add l                                         ; $641e: $85
    sub $01                                       ; $641f: $d6 $01
    db $fc                                        ; $6421: $fc
    ld c, l                                       ; $6422: $4d
    inc a                                         ; $6423: $3c
    adc e                                         ; $6424: $8b
    ld a, h                                       ; $6425: $7c
    push hl                                       ; $6426: $e5
    dec a                                         ; $6427: $3d
    cp $2e                                        ; $6428: $fe $2e
    ld a, [c]                                     ; $642a: $f2
    rst $30                                       ; $642b: $f7
    add hl, bc                                    ; $642c: $09
    jr c, jr_037_6486                             ; $642d: $38 $57

    ld a, e                                       ; $642f: $7b
    sbc e                                         ; $6430: $9b
    ld a, h                                       ; $6431: $7c
    pop de                                        ; $6432: $d1
    ld sp, $5fcf                                  ; $6433: $31 $cf $5f
    scf                                           ; $6436: $37
    ld sp, hl                                     ; $6437: $f9
    bit 0, b                                      ; $6438: $cb $40
    jr jr_037_640f                                ; $643a: $18 $d3

    inc e                                         ; $643c: $1c
    db $ed                                        ; $643d: $ed
    ret                                           ; $643e: $c9


    ld c, c                                       ; $643f: $49
    sub [hl]                                      ; $6440: $96
    ld a, [hl-]                                   ; $6441: $3a
    sub [hl]                                      ; $6442: $96
    inc e                                         ; $6443: $1c
    sbc c                                         ; $6444: $99
    dec sp                                        ; $6445: $3b
    and a                                         ; $6446: $a7

jr_037_6447:
    ld a, [bc]                                    ; $6447: $0a
    xor l                                         ; $6448: $ad
    inc bc                                        ; $6449: $03
    ld hl, sp-$65                                 ; $644a: $f8 $9b
    sbc b                                         ; $644c: $98
    ret                                           ; $644d: $c9


    ld e, a                                       ; $644e: $5f
    ld e, b                                       ; $644f: $58
    and e                                         ; $6450: $a3
    inc b                                         ; $6451: $04
    ld a, a                                       ; $6452: $7f
    ld h, b                                       ; $6453: $60
    add hl, sp                                    ; $6454: $39
    ld d, a                                       ; $6455: $57
    ld e, e                                       ; $6456: $5b
    ld a, d                                       ; $6457: $7a
    ld c, a                                       ; $6458: $4f
    ld a, h                                       ; $6459: $7c
    ld [c], a                                     ; $645a: $e2
    push de                                       ; $645b: $d5
    ld [hl], l                                    ; $645c: $75
    xor h                                         ; $645d: $ac
    or c                                          ; $645e: $b1
    call z, $3081                                 ; $645f: $cc $81 $30
    push bc                                       ; $6462: $c5
    sub d                                         ; $6463: $92
    ld d, l                                       ; $6464: $55
    rst $20                                       ; $6465: $e7
    cp [hl]                                       ; $6466: $be
    or h                                          ; $6467: $b4
    ld a, e                                       ; $6468: $7b
    ei                                            ; $6469: $fb
    ld b, a                                       ; $646a: $47
    sbc d                                         ; $646b: $9a
    inc bc                                        ; $646c: $03
    db $ed                                        ; $646d: $ed
    ret                                           ; $646e: $c9


    adc h                                         ; $646f: $8c
    ld b, d                                       ; $6470: $42
    ld e, d                                       ; $6471: $5a
    ld l, l                                       ; $6472: $6d
    xor c                                         ; $6473: $a9
    or [hl]                                       ; $6474: $b6
    ld [hl], h                                    ; $6475: $74
    or $38                                        ; $6476: $f6 $38
    ld e, b                                       ; $6478: $58
    add l                                         ; $6479: $85
    inc de                                        ; $647a: $13
    rst $08                                       ; $647b: $cf
    push hl                                       ; $647c: $e5
    ld e, l                                       ; $647d: $5d
    sub $e8                                       ; $647e: $d6 $e8
    dec l                                         ; $6480: $2d
    and e                                         ; $6481: $a3
    pop de                                        ; $6482: $d1
    sub h                                         ; $6483: $94
    ld [hl+], a                                   ; $6484: $22
    ld a, a                                       ; $6485: $7f

jr_037_6486:
    sbc a                                         ; $6486: $9f
    add b                                         ; $6487: $80
    inc [hl]                                      ; $6488: $34
    rlca                                          ; $6489: $07
    db $ed                                        ; $648a: $ed
    ret                                           ; $648b: $c9


    di                                            ; $648c: $f3
    ld e, [hl]                                    ; $648d: $5e
    add d                                         ; $648e: $82
    ld bc, $af64                                  ; $648f: $01 $64 $af
    or [hl]                                       ; $6492: $b6
    ld d, h                                       ; $6493: $54
    ld e, e                                       ; $6494: $5b
    ld a, [hl-]                                   ; $6495: $3a
    and a                                         ; $6496: $a7
    ld a, [bc]                                    ; $6497: $0a
    xor l                                         ; $6498: $ad
    inc bc                                        ; $6499: $03
    ld hl, sp-$65                                 ; $649a: $f8 $9b
    ld a, b                                       ; $649c: $78
    ld e, [hl]                                    ; $649d: $5e
    set 7, l                                      ; $649e: $cb $fd
    ld d, e                                       ; $64a0: $53
    ld d, b                                       ; $64a1: $50
    sbc e                                         ; $64a2: $9b
    ld [hl], l                                    ; $64a3: $75
    adc $79                                       ; $64a4: $ce $79
    add [hl]                                      ; $64a6: $86
    ld c, $1b                                     ; $64a7: $0e $1b
    ld [hl], $db                                  ; $64a9: $36 $db
    ldh a, [$34]                                  ; $64ab: $f0 $34
    rlca                                          ; $64ad: $07
    db $ed                                        ; $64ae: $ed
    ret                                           ; $64af: $c9


    jp $c105                                      ; $64b0: $c3 $05 $c1


    ld h, l                                       ; $64b3: $65
    dec h                                         ; $64b4: $25
    jr nz, jr_037_6447                            ; $64b5: $20 $90

    ccf                                           ; $64b7: $3f
    scf                                           ; $64b8: $37
    reti                                          ; $64b9: $d9


    and a                                         ; $64ba: $a7
    ei                                            ; $64bb: $fb
    ld e, h                                       ; $64bc: $5c
    dec e                                         ; $64bd: $1d
    ld l, $eb                                     ; $64be: $2e $eb
    xor b                                         ; $64c0: $a8
    ld h, e                                       ; $64c1: $63
    ld a, l                                       ; $64c2: $7d
    ld [hl], h                                    ; $64c3: $74
    ld c, [hl]                                    ; $64c4: $4e
    dec d                                         ; $64c5: $15
    ld e, d                                       ; $64c6: $5a
    rlca                                          ; $64c7: $07
    ldh a, [$37]                                  ; $64c8: $f0 $37
    ld sp, $2073                                  ; $64ca: $31 $73 $20
    ld c, h                                       ; $64cd: $4c
    set 4, h                                      ; $64ce: $cb $e4
    cpl                                           ; $64d0: $2f
    xor h                                         ; $64d1: $ac
    ld d, c                                       ; $64d2: $51
    add d                                         ; $64d3: $82
    ccf                                           ; $64d4: $3f
    or b                                          ; $64d5: $b0
    call nz, $fef6                                ; $64d6: $c4 $f6 $fe
    dec h                                         ; $64d9: $25
    call $ed01                                    ; $64da: $cd $01 $ed
    ret                                           ; $64dd: $c9


    or e                                          ; $64de: $b3
    call nz, $8d66                                ; $64df: $c4 $66 $8d
    db $ed                                        ; $64e2: $ed
    inc d                                         ; $64e3: $14
    rst $20                                       ; $64e4: $e7
    xor c                                         ; $64e5: $a9
    jp z, Jump_037_4df4                           ; $64e6: $ca $f4 $4d

    xor l                                         ; $64e9: $ad
    or $56                                        ; $64ea: $f6 $56
    ld a, e                                       ; $64ec: $7b
    set 4, h                                      ; $64ed: $cb $e4
    ld l, a                                       ; $64ef: $6f
    ccf                                           ; $64f0: $3f
    sub b                                         ; $64f1: $90
    xor e                                         ; $64f2: $ab
    ld d, [hl]                                    ; $64f3: $56
    rst $30                                       ; $64f4: $f7
    dec h                                         ; $64f5: $25
    ld d, d                                       ; $64f6: $52
    jr z, jr_037_6557                             ; $64f7: $28 $5e

    ld b, a                                       ; $64f9: $47
    ld b, b                                       ; $64fa: $40
    or l                                          ; $64fb: $b5
    or a                                          ; $64fc: $b7
    xor h                                         ; $64fd: $ac
    inc b                                         ; $64fe: $04
    inc b                                         ; $64ff: $04
    ld a, [c]                                     ; $6500: $f2
    rst $20                                       ; $6501: $e7
    db $ed                                        ; $6502: $ed
    ld e, h                                       ; $6503: $5c
    cp [hl]                                       ; $6504: $be
    ld e, l                                       ; $6505: $5d
    and d                                         ; $6506: $a2
    db $d3                                        ; $6507: $d3
    inc e                                         ; $6508: $1c
    db $ed                                        ; $6509: $ed
    ret                                           ; $650a: $c9


    ld c, c                                       ; $650b: $49
    ld d, $b2                                     ; $650c: $16 $b2
    inc bc                                        ; $650e: $03
    ld [hl+], a                                   ; $650f: $22
    or e                                          ; $6510: $b3
    ld [hl], h                                    ; $6511: $74
    sub h                                         ; $6512: $94
    inc h                                         ; $6513: $24
    ld h, d                                       ; $6514: $62
    ld l, b                                       ; $6515: $68
    cpl                                           ; $6516: $2f
    ld d, h                                       ; $6517: $54
    dec de                                        ; $6518: $1b
    db $eb                                        ; $6519: $eb
    call Call_000_2068                            ; $651a: $cd $68 $20
    ld a, a                                       ; $651d: $7f
    sbc $ce                                       ; $651e: $de $ce
    xor c                                         ; $6520: $a9
    ld b, d                                       ; $6521: $42
    db $eb                                        ; $6522: $eb
    nop                                           ; $6523: $00
    cp $26                                        ; $6524: $fe $26
    sbc [hl]                                      ; $6526: $9e
    db $db                                        ; $6527: $db
    rst $38                                       ; $6528: $ff
    ret nz                                        ; $6529: $c0

    ld [hl-], a                                   ; $652a: $32
    ld e, [hl]                                    ; $652b: $5e
    inc l                                         ; $652c: $2c
    jp nz, $c6b5                                  ; $652d: $c2 $b5 $c6

    inc [hl]                                      ; $6530: $34
    rlca                                          ; $6531: $07
    db $ed                                        ; $6532: $ed
    ret                                           ; $6533: $c9


    jp $f905                                      ; $6534: $c3 $05 $f9


    ld d, e                                       ; $6537: $53
    ld b, h                                       ; $6538: $44
    or l                                          ; $6539: $b5
    or a                                          ; $653a: $b7
    ld d, $04                                     ; $653b: $16 $04
    ld l, a                                       ; $653d: $6f
    add a                                         ; $653e: $87
    ld a, l                                       ; $653f: $7d
    inc c                                         ; $6540: $0c
    ld a, [de]                                    ; $6541: $1a
    ld a, b                                       ; $6542: $78
    ld c, e                                       ; $6543: $4b
    ld [hl], e                                    ; $6544: $73
    db $ed                                        ; $6545: $ed
    ret                                           ; $6546: $c9


    ld c, c                                       ; $6547: $49
    sub [hl]                                      ; $6548: $96
    ld e, d                                       ; $6549: $5a
    db $10                                        ; $654a: $10
    call c, $be13                                 ; $654b: $dc $13 $be
    ld h, d                                       ; $654e: $62
    dec l                                         ; $654f: $2d
    sub [hl]                                      ; $6550: $96
    ld [hl], e                                    ; $6551: $73
    or l                                          ; $6552: $b5
    and l                                         ; $6553: $a5
    adc [hl]                                      ; $6554: $8e
    push af                                       ; $6555: $f5
    halt                                          ; $6556: $76

jr_037_6557:
    call nc, $b907                                ; $6557: $d4 $07 $b9
    ld d, [hl]                                    ; $655a: $56
    ld h, c                                       ; $655b: $61
    adc a                                         ; $655c: $8f
    add b                                         ; $655d: $80
    ld h, [hl]                                    ; $655e: $66
    sub c                                         ; $655f: $91
    db $fd                                        ; $6560: $fd
    add l                                         ; $6561: $85
    ld b, b                                       ; $6562: $40
    cp $bc                                        ; $6563: $fe $bc
    dec e                                         ; $6565: $1d
    xor d                                         ; $6566: $aa
    ldh a, [$f8]                                  ; $6567: $f0 $f8
    db $e3                                        ; $6569: $e3
    ld a, b                                       ; $656a: $78
    ld l, e                                       ; $656b: $6b
    ld b, c                                       ; $656c: $41
    cp $14                                        ; $656d: $fe $14
    sub c                                         ; $656f: $91
    and $ed                                       ; $6570: $e6 $ed
    ret                                           ; $6572: $c9


    ld c, h                                       ; $6573: $4c
    ccf                                           ; $6574: $3f
    xor c                                         ; $6575: $a9
    ld c, a                                       ; $6576: $4f
    daa                                           ; $6577: $27
    ld a, e                                       ; $6578: $7b
    ld b, c                                       ; $6579: $41
    ld [bc], a                                    ; $657a: $02
    ld sp, hl                                     ; $657b: $f9
    or e                                          ; $657c: $b3
    db $f4                                        ; $657d: $f4
    add h                                         ; $657e: $84
    xor a                                         ; $657f: $af
    ld e, b                                       ; $6580: $58
    adc e                                         ; $6581: $8b
    push hl                                       ; $6582: $e5
    ld e, h                                       ; $6583: $5c
    ld l, l                                       ; $6584: $6d
    xor c                                         ; $6585: $a9
    ld h, e                                       ; $6586: $63
    db $dd                                        ; $6587: $dd
    add hl, sp                                    ; $6588: $39
    push de                                       ; $6589: $d5
    and a                                         ; $658a: $a7
    call nc, Call_000_14fd                        ; $658b: $d4 $fd $14
    dec sp                                        ; $658e: $3b
    ld [c], a                                     ; $658f: $e2
    ld a, [de]                                    ; $6590: $1a
    jr nz, jr_037_65eb                            ; $6591: $20 $58

    ld l, e                                       ; $6593: $6b
    di                                            ; $6594: $f3
    sbc e                                         ; $6595: $9b
    jp c, Jump_000_20ac                           ; $6596: $da $ac $20

    ld a, [hl+]                                   ; $6599: $2a
    ld c, e                                       ; $659a: $4b
    ld [hl], e                                    ; $659b: $73
    db $ed                                        ; $659c: $ed
    ret                                           ; $659d: $c9


    daa                                           ; $659e: $27
    sub b                                         ; $659f: $90
    ld hl, sp+$03                                 ; $65a0: $f8 $03
    ld c, e                                       ; $65a2: $4b
    rlca                                          ; $65a3: $07
    xor a                                         ; $65a4: $af
    dec l                                         ; $65a5: $2d
    ld b, c                                       ; $65a6: $41
    jp Jump_037_5799                              ; $65a7: $c3 $99 $57


    ld a, e                                       ; $65aa: $7b
    dec sp                                        ; $65ab: $3b
    adc d                                         ; $65ac: $8a
    or b                                          ; $65ad: $b0
    ld l, b                                       ; $65ae: $68
    ld l, a                                       ; $65af: $6f
    sbc d                                         ; $65b0: $9a
    inc bc                                        ; $65b1: $03
    db $ed                                        ; $65b2: $ed
    ret                                           ; $65b3: $c9


    adc h                                         ; $65b4: $8c
    ld [de], a                                    ; $65b5: $12
    and $2f                                       ; $65b6: $e6 $2f
    or $5c                                        ; $65b8: $f6 $5c
    dec e                                         ; $65ba: $1d
    xor $57                                       ; $65bb: $ee $57
    ld b, h                                       ; $65bd: $44
    or l                                          ; $65be: $b5
    and l                                         ; $65bf: $a5
    add hl, bc                                    ; $65c0: $09
    adc e                                         ; $65c1: $8b
    and [hl]                                      ; $65c2: $a6
    dec e                                         ; $65c3: $1d
    ld a, [de]                                    ; $65c4: $1a
    cp a                                          ; $65c5: $bf
    call nc, $382c                                ; $65c6: $d4 $2c $38
    db $ed                                        ; $65c9: $ed
    cp h                                          ; $65ca: $bc
    sub [hl]                                      ; $65cb: $96

jr_037_65cc:
    ei                                            ; $65cc: $fb
    ld e, a                                       ; $65cd: $5f
    ld l, l                                       ; $65ce: $6d
    ld a, [bc]                                    ; $65cf: $0a
    xor $a0                                       ; $65d0: $ee $a0
    dec b                                         ; $65d2: $05
    ld sp, hl                                     ; $65d3: $f9

Jump_037_65d4:
    cp e                                          ; $65d4: $bb
    jr z, jr_037_65cc                             ; $65d5: $28 $f5

    cp d                                          ; $65d7: $ba
    ld c, h                                       ; $65d8: $4c
    ld h, a                                       ; $65d9: $67
    call nc, $d8d2                                ; $65da: $d4 $d2 $d8
    ld [hl-], a                                   ; $65dd: $32
    ld sp, hl                                     ; $65de: $f9
    cp e                                          ; $65df: $bb
    dec sp                                        ; $65e0: $3b
    sub $69                                       ; $65e1: $d6 $69
    ld c, $ed                                     ; $65e3: $0e $ed
    ret                                           ; $65e5: $c9


    and e                                         ; $65e6: $a3
    sub l                                         ; $65e7: $95
    ld l, b                                       ; $65e8: $68
    sub a                                         ; $65e9: $97
    push af                                       ; $65ea: $f5

jr_037_65eb:
    db $ed                                        ; $65eb: $ed
    rst $28                                       ; $65ec: $ef
    jp nz, Jump_037_77b9                          ; $65ed: $c2 $b9 $77

    rlca                                          ; $65f0: $07

jr_037_65f1:
    dec l                                         ; $65f1: $2d
    add [hl]                                      ; $65f2: $86
    adc e                                         ; $65f3: $8b
    pop bc                                        ; $65f4: $c1
    ld e, a                                       ; $65f5: $5f
    ld h, e                                       ; $65f6: $63
    db $eb                                        ; $65f7: $eb
    ld e, b                                       ; $65f8: $58
    ld l, a                                       ; $65f9: $6f
    ld b, a                                       ; $65fa: $47
    ld a, a                                       ; $65fb: $7f
    ld b, h                                       ; $65fc: $44
    ld c, e                                       ; $65fd: $4b
    and $40                                       ; $65fe: $e6 $40
    add sp, -$60                                  ; $6600: $e8 $a0
    add l                                         ; $6602: $85
    add [hl]                                      ; $6603: $86
    ld e, c                                       ; $6604: $59
    ld [hl], b                                    ; $6605: $70

jr_037_6606:
    push de                                       ; $6606: $d5
    ld [$f062], a                                 ; $6607: $ea $62 $f0
    ld d, a                                       ; $660a: $57
    db $fd                                        ; $660b: $fd
    ld [hl], a                                    ; $660c: $77
    adc e                                         ; $660d: $8b

jr_037_660e:
    and [hl]                                      ; $660e: $a6
    inc l                                         ; $660f: $2c
    ld b, d                                       ; $6610: $42
    ld h, e                                       ; $6611: $63
    db $eb                                        ; $6612: $eb
    ld e, b                                       ; $6613: $58
    ld l, a                                       ; $6614: $6f
    sbc c                                         ; $6615: $99
    db $fc                                        ; $6616: $fc
    sbc c                                         ; $6617: $99
    ld d, d                                       ; $6618: $52
    ld [hl+], a                                   ; $6619: $22
    sub b                                         ; $661a: $90
    cp a                                          ; $661b: $bf
    ld c, $5a                                     ; $661c: $0e $5a
    xor $7f                                       ; $661e: $ee $7f
    or l                                          ; $6620: $b5
    add hl, hl                                    ; $6621: $29
    jr c, jr_037_65f1                             ; $6622: $38 $cd

    ld bc, $c9ed                                  ; $6624: $01 $ed $c9
    jp $8885                                      ; $6627: $c3 $85 $88


    push de                                       ; $662a: $d5
    sub [hl]                                      ; $662b: $96
    ld l, d                                       ; $662c: $6a
    ld c, e                                       ; $662d: $4b
    add a                                         ; $662e: $87
    ld e, c                                       ; $662f: $59
    jr nz, jr_037_660e                            ; $6630: $20 $dc

    ld h, c                                       ; $6632: $61
    rla                                           ; $6633: $17
    nop                                           ; $6634: $00
    halt                                          ; $6635: $76
    ret c                                         ; $6636: $d8

    push af                                       ; $6637: $f5
    sub $db                                       ; $6638: $d6 $db
    ld c, a                                       ; $663a: $4f
    xor c                                         ; $663b: $a9
    and l                                         ; $663c: $a5
    adc h                                         ; $663d: $8c
    ld b, [hl]                                    ; $663e: $46
    cp $8e                                        ; $663f: $fe $8e
    rst $08                                       ; $6641: $cf
    ld l, a                                       ; $6642: $6f
    jr z, jr_037_6606                             ; $6643: $28 $c1

    rra                                           ; $6645: $1f
    xor b                                         ; $6646: $a8
    call Call_037_69bc                            ; $6647: $cd $bc $69
    ld c, $ed                                     ; $664a: $0e $ed
    ret                                           ; $664c: $c9


    and e                                         ; $664d: $a3
    sub l                                         ; $664e: $95
    ld l, b                                       ; $664f: $68
    sub a                                         ; $6650: $97
    or l                                          ; $6651: $b5
    sub b                                         ; $6652: $90
    sbc $01                                       ; $6653: $de $01
    rst $20                                       ; $6655: $e7
    sbc $1d                                       ; $6656: $de $1d
    or h                                          ; $6658: $b4
    sub [hl]                                      ; $6659: $96
    and d                                         ; $665a: $a2
    ld h, e                                       ; $665b: $63
    ld e, l                                       ; $665c: $5d
    inc c                                         ; $665d: $0c
    or e                                          ; $665e: $b3
    sbc $32                                       ; $665f: $de $32
    rst $00                                       ; $6661: $c7
    ld a, [hl]                                    ; $6662: $7e
    db $eb                                        ; $6663: $eb
    add $36                                       ; $6664: $c6 $36
    ld hl, $ed33                                  ; $6666: $21 $33 $ed
    and b                                         ; $6669: $a0
    push hl                                       ; $666a: $e5
    cp $57                                        ; $666b: $fe $57
    sbc e                                         ; $666d: $9b
    add d                                         ; $666e: $82
    db $d3                                        ; $666f: $d3
    inc e                                         ; $6670: $1c
    db $ed                                        ; $6671: $ed
    ret                                           ; $6672: $c9


    ld c, c                                       ; $6673: $49
    xor d                                         ; $6674: $aa
    xor h                                         ; $6675: $ac
    ld sp, $0c80                                  ; $6676: $31 $80 $0c
    push de                                       ; $6679: $d5
    ld h, c                                       ; $667a: $61
    ld [hl], h                                    ; $667b: $74
    ld b, a                                       ; $667c: $47
    ld a, h                                       ; $667d: $7c
    ld bc, $2f77                                  ; $667e: $01 $77 $2f
    cp $ba                                        ; $6681: $fe $ba
    pop bc                                        ; $6683: $c1
    rra                                           ; $6684: $1f
    and h                                         ; $6685: $a4
    add hl, sp                                    ; $6686: $39
    ld c, c                                       ; $6687: $49
    xor d                                         ; $6688: $aa
    rst $28                                       ; $6689: $ef
    inc hl                                        ; $668a: $23
    db $f4                                        ; $668b: $f4
    and $58                                       ; $668c: $e6 $58
    ld [hl], a                                    ; $668e: $77
    call nz, $f017                                ; $668f: $c4 $17 $f0
    sbc [hl]                                      ; $6692: $9e
    xor e                                         ; $6693: $ab
    jp $9bfd                                      ; $6694: $c3 $fd $9b


    sbc c                                         ; $6697: $99
    db $ec                                        ; $6698: $ec
    ret z                                         ; $6699: $c8

    and b                                         ; $669a: $a0
    ld [hl], a                                    ; $669b: $77
    adc e                                         ; $669c: $8b
    or $f6                                        ; $669d: $f6 $f6
    ld [hl], $f6                                  ; $669f: $36 $f6
    ld l, $78                                     ; $66a1: $2e $78
    db $d3                                        ; $66a3: $d3
    inc e                                         ; $66a4: $1c
    ld c, c                                       ; $66a5: $49
    ld h, c                                       ; $66a6: $61
    db $f4                                        ; $66a7: $f4
    halt                                          ; $66a8: $76
    call nz, $f017                                ; $66a9: $c4 $17 $f0
    cp $cd                                        ; $66ac: $fe $cd
    inc h                                         ; $66ae: $24
    ld [$5fa2], sp                                ; $66af: $08 $a2 $5f
    ld hl, $7a41                                  ; $66b2: $21 $41 $7a
    ld [c], a                                     ; $66b5: $e2
    ld c, l                                       ; $66b6: $4d
    ld [hl], e                                    ; $66b7: $73
    ld b, e                                       ; $66b8: $43
    add hl, hl                                    ; $66b9: $29
    ld a, a                                       ; $66ba: $7f
    ld a, $c2                                     ; $66bb: $3e $c2
    add hl, sp                                    ; $66bd: $39
    daa                                           ; $66be: $27
    ld a, h                                       ; $66bf: $7c
    push bc                                       ; $66c0: $c5
    ld e, d                                       ; $66c1: $5a
    ld l, [hl]                                    ; $66c2: $6e
    ld l, d                                       ; $66c3: $6a
    ld de, $b372                                  ; $66c4: $11 $72 $b3
    ld d, b                                       ; $66c7: $50
    ld [de], a                                    ; $66c8: $12
    ld a, a                                       ; $66c9: $7f
    adc $01                                       ; $66ca: $ce $01
    di                                            ; $66cc: $f3
    ld e, d                                       ; $66cd: $5a
    ret nz                                        ; $66ce: $c0

    and c                                         ; $66cf: $a1
    inc hl                                        ; $66d0: $23
    ld d, e                                       ; $66d1: $53
    sbc e                                         ; $66d2: $9b
    push hl                                       ; $66d3: $e5
    and e                                         ; $66d4: $a3
    rst $38                                       ; $66d5: $ff
    inc de                                        ; $66d6: $13
    db $fc                                        ; $66d7: $fc
    sbc c                                         ; $66d8: $99
    dec h                                         ; $66d9: $25
    rlca                                          ; $66da: $07
    adc h                                         ; $66db: $8c
    ld e, [hl]                                    ; $66dc: $5e
    res 4, a                                      ; $66dd: $cb $a7
    add c                                         ; $66df: $81
    sub b                                         ; $66e0: $90
    inc bc                                        ; $66e1: $03
    ret                                           ; $66e2: $c9


    ld c, $7a                                     ; $66e3: $0e $7a
    ld d, e                                       ; $66e5: $53
    adc e                                         ; $66e6: $8b
    sub b                                         ; $66e7: $90
    inc bc                                        ; $66e8: $03
    ret                                           ; $66e9: $c9


    ld d, a                                       ; $66ea: $57
    halt                                          ; $66eb: $76
    rst $38                                       ; $66ec: $ff
    ld [bc], a                                    ; $66ed: $02
    sbc b                                         ; $66ee: $98
    inc bc                                        ; $66ef: $03
    inc hl                                        ; $66f0: $23
    dec d                                         ; $66f1: $15
    add $cd                                       ; $66f2: $c6 $cd
    sub d                                         ; $66f4: $92
    inc bc                                        ; $66f5: $03
    ld [hl], e                                    ; $66f6: $73
    xor d                                         ; $66f7: $aa
    ret nc                                        ; $66f8: $d0

    ld a, [hl-]                                   ; $66f9: $3a
    add b                                         ; $66fa: $80
    cp a                                          ; $66fb: $bf

Call_037_66fc:
    inc e                                         ; $66fc: $1c
    di                                            ; $66fd: $f3
    ld e, d                                       ; $66fe: $5a

Jump_037_66ff:
    xor $7f                                       ; $66ff: $ee $7f
    dec [hl]                                      ; $6701: $35
    ld d, l                                       ; $6702: $55
    sbc e                                         ; $6703: $9b
    ld a, c                                       ; $6704: $79
    ld [hl], e                                    ; $6705: $73
    jp $9ae7                                      ; $6706: $c3 $e7 $9a


    dec h                                         ; $6709: $25
    rlca                                          ; $670a: $07
    call z, Call_000_37e0                         ; $670b: $cc $e0 $37
    db $d3                                        ; $670e: $d3
    inc e                                         ; $670f: $1c
    ret                                           ; $6710: $c9


    ld e, a                                       ; $6711: $5f
    ld h, h                                       ; $6712: $64
    inc c                                         ; $6713: $0c
    halt                                          ; $6714: $76
    xor b                                         ; $6715: $a8
    ld b, d                                       ; $6716: $42
    sub $0a                                       ; $6717: $d6 $0a
    sbc h                                         ; $6719: $9c
    inc bc                                        ; $671a: $03
    ld c, c                                       ; $671b: $49
    ld h, c                                       ; $671c: $61
    db $f4                                        ; $671d: $f4
    ld [hl], $f9                                  ; $671e: $36 $f9
    xor a                                         ; $6720: $af
    ld [hl], $ad                                  ; $6721: $36 $ad
    ld h, e                                       ; $6723: $63
    inc sp                                        ; $6724: $33
    ccf                                           ; $6725: $3f
    rst $28                                       ; $6726: $ef
    adc h                                         ; $6727: $8c
    add hl, sp                                    ; $6728: $39
    ld l, l                                       ; $6729: $6d
    dec sp                                        ; $672a: $3b
    db $eb                                        ; $672b: $eb
    rst $08                                       ; $672c: $cf
    ld bc, $3b6d                                  ; $672d: $01 $6d $3b
    cp e                                          ; $6730: $bb
    ld h, e                                       ; $6731: $63
    ld [hl], e                                    ; $6732: $73
    ld c, c                                       ; $6733: $49
    ld h, c                                       ; $6734: $61
    ld [hl], h                                    ; $6735: $74
    rst $20                                       ; $6736: $e7
    ld h, $49                                     ; $6737: $26 $49
    inc bc                                        ; $6739: $03
    and c                                         ; $673a: $a1
    add h                                         ; $673b: $84
    ld de, $683a                                  ; $673c: $11 $3a $68
    ld b, c                                       ; $673f: $41
    cp $e8                                        ; $6740: $fe $e8
    add l                                         ; $6742: $85
    add sp, $1d                                   ; $6743: $e8 $1d
    sub d                                         ; $6745: $92
    inc bc                                        ; $6746: $03
    ld c, c                                       ; $6747: $49
    pop hl                                        ; $6748: $e1
    adc $6b                                       ; $6749: $ce $6b
    and c                                         ; $674b: $a1
    ld h, c                                       ; $674c: $61
    ld [hl], h                                    ; $674d: $74
    rlca                                          ; $674e: $07
    xor a                                         ; $674f: $af
    dec l                                         ; $6750: $2d
    and e                                         ; $6751: $a3
    call nz, $1766                                ; $6752: $c4 $66 $17
    nop                                           ; $6755: $00
    ld d, $63                                     ; $6756: $16 $63
    ld [hl], l                                    ; $6758: $75
    ccf                                           ; $6759: $3f
    adc e                                         ; $675a: $8b
    rla                                           ; $675b: $17
    ld d, l                                       ; $675c: $55
    ld d, b                                       ; $675d: $50
    inc c                                         ; $675e: $0c
    cp $2c                                        ; $675f: $fe $2c
    ld b, e                                       ; $6761: $43
    ld [hl], d                                    ; $6762: $72
    and e                                         ; $6763: $a3
    dec l                                         ; $6764: $2d
    cp l                                          ; $6765: $bd
    dec sp                                        ; $6766: $3b
    add $39                                       ; $6767: $c6 $39
    rst $30                                       ; $6769: $f7

jr_037_676a:
    cp $b1                                        ; $676a: $fe $b1
    jr jr_037_676a                                ; $676c: $18 $fc

    dec [hl]                                      ; $676e: $35
    or [hl]                                       ; $676f: $b6
    ld a, [hl-]                                   ; $6770: $3a
    adc h                                         ; $6771: $8c
    ld a, $3a                                     ; $6772: $3e $3a
    xor a                                         ; $6774: $af
    add l                                         ; $6775: $85
    add [hl]                                      ; $6776: $86
    or c                                          ; $6777: $b1
    xor h                                         ; $6778: $ac
    adc c                                         ; $6779: $89
    ld e, b                                       ; $677a: $58
    ld l, l                                       ; $677b: $6d
    sbc b                                         ; $677c: $98
    or c                                          ; $677d: $b1
    ld c, c                                       ; $677e: $49
    xor d                                         ; $677f: $aa
    ld [hl], a                                    ; $6780: $77

jr_037_6781:
    rst $00                                       ; $6781: $c7
    jr c, @+$52                                   ; $6782: $38 $50

    ld h, e                                       ; $6784: $63
    ld c, a                                       ; $6785: $4f
    or l                                          ; $6786: $b5
    or $12                                        ; $6787: $f6 $12
    sbc a                                         ; $6789: $9f
    ld d, d                                       ; $678a: $52
    db $ec                                        ; $678b: $ec
    ld b, $7f                                     ; $678c: $06 $7f
    sub b                                         ; $678e: $90
    and $cc                                       ; $678f: $e6 $cc
    xor e                                         ; $6791: $ab
    add e                                         ; $6792: $83
    ld h, c                                       ; $6793: $61
    ld [$5a0e], a                                 ; $6794: $ea $0e $5a
    sub b                                         ; $6797: $90
    ccf                                           ; $6798: $3f
    ld a, d                                       ; $6799: $7a
    ld hl, $dd7a                                  ; $679a: $21 $7a $dd
    cp c                                          ; $679d: $b9
    ld c, c                                       ; $679e: $49
    ld [c], a                                     ; $679f: $e2
    dec e                                         ; $67a0: $1d
    sub d                                         ; $67a1: $92
    inc bc                                        ; $67a2: $03
    ld c, c                                       ; $67a3: $49
    xor d                                         ; $67a4: $aa
    or a                                          ; $67a5: $b7
    cp a                                          ; $67a6: $bf
    adc e                                         ; $67a7: $8b
    ret nc                                        ; $67a8: $d0

    ld d, l                                       ; $67a9: $55
    ld d, d                                       ; $67aa: $52
    db $ed                                        ; $67ab: $ed
    ret c                                         ; $67ac: $d8

    ld a, [hl-]                                   ; $67ad: $3a
    ld [hl-], a                                   ; $67ae: $32
    xor a                                         ; $67af: $af
    or c                                          ; $67b0: $b1
    di                                            ; $67b1: $f3
    ld e, d                                       ; $67b2: $5a
    ld l, b                                       ; $67b3: $68
    jr jr_037_6781                                ; $67b4: $18 $cb

    ld a, [de]                                    ; $67b6: $1a
    call nz, Call_037_4de0                        ; $67b7: $c4 $e0 $4d
    ld [hl], e                                    ; $67ba: $73
    ret                                           ; $67bb: $c9


    rra                                           ; $67bc: $1f
    and c                                         ; $67bd: $a1
    ld e, d                                       ; $67be: $5a
    ld [hl], l                                    ; $67bf: $75
    cpl                                           ; $67c0: $2f
    cp $ba                                        ; $67c1: $fe $ba
    pop hl                                        ; $67c3: $e1
    ld c, $5a                                     ; $67c4: $0e $5a
    ld d, b                                       ; $67c6: $50
    pop af                                        ; $67c7: $f1
    rlca                                          ; $67c8: $07
    rst $20                                       ; $67c9: $e7
    ld l, d                                       ; $67ca: $6a
    rst $00                                       ; $67cb: $c7
    sub $91                                       ; $67cc: $d6 $91

jr_037_67ce:
    ld a, c                                       ; $67ce: $79
    adc l                                         ; $67cf: $8d
    sbc l                                         ; $67d0: $9d
    rst $10                                       ; $67d1: $d7
    ld b, d                                       ; $67d2: $42
    jp $b258                                      ; $67d3: $c3 $58 $b2


    ld a, [hl+]                                   ; $67d6: $2a
    ld l, e                                       ; $67d7: $6b
    db $10                                        ; $67d8: $10
    add e                                         ; $67d9: $83
    ld [hl], a                                    ; $67da: $77
    add $1c                                       ; $67db: $c6 $1c
    ld c, h                                       ; $67dd: $4c
    cp $ae                                        ; $67de: $fe $ae
    db $ed                                        ; $67e0: $ed
    dec a                                         ; $67e1: $3d
    xor h                                         ; $67e2: $ac

Jump_037_67e3:
    dec l                                         ; $67e3: $2d
    ld [hl], l                                    ; $67e4: $75
    xor h                                         ; $67e5: $ac
    dec sp                                        ; $67e6: $3b
    ld l, b                                       ; $67e7: $68
    ld b, c                                       ; $67e8: $41
    cp $e8                                        ; $67e9: $fe $e8
    add l                                         ; $67eb: $85
    add sp, $75                                   ; $67ec: $e8 $75
    rst $20                                       ; $67ee: $e7
    ld h, $c9                                     ; $67ef: $26 $c9
    sub b                                         ; $67f1: $90
    inc e                                         ; $67f2: $1c
    ld b, e                                       ; $67f3: $43
    add hl, hl                                    ; $67f4: $29
    xor l                                         ; $67f5: $ad
    ld c, $a3                                     ; $67f6: $0e $a3
    dec sp                                        ; $67f8: $3b
    ld l, b                                       ; $67f9: $68
    ld b, c                                       ; $67fa: $41
    cp $e8                                        ; $67fb: $fe $e8
    add l                                         ; $67fd: $85
    add sp, -$0b                                  ; $67fe: $e8 $f5
    halt                                          ; $6800: $76
    ld l, [hl]                                    ; $6801: $6e
    sub d                                         ; $6802: $92
    ld a, b                                       ; $6803: $78
    sbc e                                         ; $6804: $9b
    sbc c                                         ; $6805: $99
    push af                                       ; $6806: $f5
    ld d, [hl]                                    ; $6807: $56
    add a                                         ; $6808: $87
    db $f4                                        ; $6809: $f4
    xor $8d                                       ; $680a: $ee $8d
    inc c                                         ; $680c: $0c
    pop bc                                        ; $680d: $c1
    adc e                                         ; $680e: $8b
    push de                                       ; $680f: $d5
    rra                                           ; $6810: $1f
    bit 5, b                                      ; $6811: $cb $68
    add d                                         ; $6813: $82
    db $f4                                        ; $6814: $f4
    add sp, -$47                                  ; $6815: $e8 $b9

jr_037_6817:
    ld a, [$5623]                                 ; $6817: $fa $23 $56
    dec sp                                        ; $681a: $3b
    or [hl]                                       ; $681b: $b6
    adc [hl]                                      ; $681c: $8e
    call z, $ec6b                                 ; $681d: $cc $6b $ec
    cp h                                          ; $6820: $bc
    ld d, $1a                                     ; $6821: $16 $1a
    add $62                                       ; $6823: $c6 $62
    ldh a, [$67]                                  ; $6825: $f0 $67
    ld l, c                                       ; $6827: $69
    jr nz, jr_037_67ce                            ; $6828: $20 $a4

    add hl, sp                                    ; $682a: $39
    and e                                         ; $682b: $a3
    jp $8c25                                      ; $682c: $c3 $25 $8c


    ret nc                                        ; $682f: $d0

    ld b, c                                       ; $6830: $41
    dec bc                                        ; $6831: $0b
    ld a, [c]                                     ; $6832: $f2
    ld b, a                                       ; $6833: $47
    cpl                                           ; $6834: $2f
    ld b, h                                       ; $6835: $44
    ld l, a                                       ; $6836: $6f
    ld [hl], l                                    ; $6837: $75
    jr jr_037_6817                                ; $6838: $18 $dd

    cp c                                          ; $683a: $b9
    ld c, c                                       ; $683b: $49
    ld d, d                                       ; $683c: $52
    ld a, l                                       ; $683d: $7d
    pop af                                        ; $683e: $f1
    rst $10                                       ; $683f: $d7
    ld b, b                                       ; $6840: $40
    ld c, b                                       ; $6841: $48
    ld [hl], e                                    ; $6842: $73
    ld c, c                                       ; $6843: $49
    xor d                                         ; $6844: $aa
    rst $28                                       ; $6845: $ef
    inc hl                                        ; $6846: $23
    call nc, $da0b                                ; $6847: $d4 $0b $da
    db $fc                                        ; $684a: $fc
    ld b, $e7                                     ; $684b: $06 $e7
    ld [$588f], a                                 ; $684d: $ea $8f $58
    dec e                                         ; $6850: $1d
    ld b, [hl]                                    ; $6851: $46
    ld [hl], a                                    ; $6852: $77
    ld l, [hl]                                    ; $6853: $6e
    sub d                                         ; $6854: $92
    sub h                                         ; $6855: $94
    jr nc, jr_037_689a                            ; $6856: $30 $42

    rlca                                          ; $6858: $07
    dec l                                         ; $6859: $2d
    ret z                                         ; $685a: $c8

    rra                                           ; $685b: $1f
    cp l                                          ; $685c: $bd
    db $10                                        ; $685d: $10
    cp l                                          ; $685e: $bd
    dec c                                         ; $685f: $0d
    add h                                         ; $6860: $84
    inc [hl]                                      ; $6861: $34
    rlca                                          ; $6862: $07
    ld c, h                                       ; $6863: $4c
    ld d, e                                       ; $6864: $53
    ld d, $a1                                     ; $6865: $16 $a1
    ret                                           ; $6867: $c9


    ccf                                           ; $6868: $3f
    sub e                                         ; $6869: $93
    ret nc                                        ; $686a: $d0

    cp l                                          ; $686b: $bd
    adc l                                         ; $686c: $8d
    cp l                                          ; $686d: $bd
    dec bc                                        ; $686e: $0b
    xor [hl]                                      ; $686f: $ae
    ld c, $a3                                     ; $6870: $0e $a3
    dec sp                                        ; $6872: $3b
    scf                                           ; $6873: $37
    ld c, c                                       ; $6874: $49
    cp d                                          ; $6875: $ba
    pop bc                                        ; $6876: $c1
    rra                                           ; $6877: $1f
    ld [hl], h                                    ; $6878: $74
    ld l, h                                       ; $6879: $6c
    add d                                         ; $687a: $82
    ld e, b                                       ; $687b: $58
    ld l, a                                       ; $687c: $6f
    sbc d                                         ; $687d: $9a
    inc bc                                        ; $687e: $03
    ret                                           ; $687f: $c9


    or c                                          ; $6880: $b1
    ld h, b                                       ; $6881: $60
    xor c                                         ; $6882: $a9
    or [hl]                                       ; $6883: $b6
    ld [hl], h                                    ; $6884: $74
    ret nc                                        ; $6885: $d0

    add d                                         ; $6886: $82
    db $fc                                        ; $6887: $fc
    pop de                                        ; $6888: $d1
    dec bc                                        ; $6889: $0b
    pop de                                        ; $688a: $d1
    db $eb                                        ; $688b: $eb

Jump_037_688c:
    db $ed                                        ; $688c: $ed
    call c, $e924                                 ; $688d: $dc $24 $e9
    db $ed                                        ; $6890: $ed
    rst $28                                       ; $6891: $ef
    or $53                                        ; $6892: $f6 $53
    ld l, d                                       ; $6894: $6a
    db $ec                                        ; $6895: $ec
    ret z                                         ; $6896: $c8

    or c                                          ; $6897: $b1
    inc sp                                        ; $6898: $33
    ld a, [de]                                    ; $6899: $1a

jr_037_689a:
    db $fc                                        ; $689a: $fc
    cp c                                          ; $689b: $b9
    add sp, -$28                                  ; $689c: $e8 $d8

jr_037_689e:
    ld hl, $4a1d                                  ; $689e: $21 $1d $4a
    xor c                                         ; $68a1: $a9
    pop af                                        ; $68a2: $f1
    call c, $5255                                 ; $68a3: $dc $55 $52
    xor l                                         ; $68a6: $ad
    cp d                                          ; $68a7: $ba
    pop bc                                        ; $68a8: $c1

jr_037_68a9:
    rra                                           ; $68a9: $1f
    and h                                         ; $68aa: $a4
    add hl, sp                                    ; $68ab: $39
    call z, $83ab                                 ; $68ac: $cc $ab $83
    ld h, c                                       ; $68af: $61
    ld [$5a0e], a                                 ; $68b0: $ea $0e $5a
    sub b                                         ; $68b3: $90
    ccf                                           ; $68b4: $3f
    ld a, d                                       ; $68b5: $7a
    ld hl, $dd7a                                  ; $68b6: $21 $7a $dd
    cp c                                          ; $68b9: $b9
    ld c, c                                       ; $68ba: $49
    ld [c], a                                     ; $68bb: $e2
    db $ed                                        ; $68bc: $ed
    call nz, $abc5                                ; $68bd: $c4 $c5 $ab
    ld [hl], a                                    ; $68c0: $77
    ld l, a                                       ; $68c1: $6f
    ld h, h                                       ; $68c2: $64
    ld l, $93                                     ; $68c3: $2e $93
    ccf                                           ; $68c5: $3f
    ld c, d                                       ; $68c6: $4a
    ld b, d                                       ; $68c7: $42
    inc [hl]                                      ; $68c8: $34
    ld c, l                                       ; $68c9: $4d
    ld [hl], e                                    ; $68ca: $73
    ld c, c                                       ; $68cb: $49
    xor d                                         ; $68cc: $aa
    or a                                          ; $68cd: $b7
    cp a                                          ; $68ce: $bf
    adc e                                         ; $68cf: $8b
    ret nc                                        ; $68d0: $d0

    ld d, l                                       ; $68d1: $55
    ld d, d                                       ; $68d2: $52
    db $ed                                        ; $68d3: $ed
    ret c                                         ; $68d4: $d8

    ld a, [hl-]                                   ; $68d5: $3a
    ld [hl-], a                                   ; $68d6: $32
    xor a                                         ; $68d7: $af
    or c                                          ; $68d8: $b1
    di                                            ; $68d9: $f3
    ld e, d                                       ; $68da: $5a
    ld l, b                                       ; $68db: $68
    jr jr_037_68a9                                ; $68dc: $18 $cb

    ld a, [de]                                    ; $68de: $1a
    call nz, Call_037_4de0                        ; $68df: $c4 $e0 $4d
    ld [hl], e                                    ; $68e2: $73
    inc hl                                        ; $68e3: $23
    add $de                                       ; $68e4: $c6 $de
    dec b                                         ; $68e6: $05
    scf                                           ; $68e7: $37
    ld l, c                                       ; $68e8: $69
    jr z, jr_037_689e                             ; $68e9: $28 $b3

    ret                                           ; $68eb: $c9


    ld e, a                                       ; $68ec: $5f
    ld h, h                                       ; $68ed: $64
    ld c, h                                       ; $68ee: $4c
    ld b, a                                       ; $68ef: $47
    ld e, l                                       ; $68f0: $5d
    nop                                           ; $68f1: $00
    ld d, $ec                                     ; $68f2: $16 $ec
    cp h                                          ; $68f4: $bc
    ld d, $1a                                     ; $68f5: $16 $1a
    add $a2                                       ; $68f7: $c6 $a2
    ld h, e                                       ; $68f9: $63
    ld h, a                                       ; $68fa: $67
    ld l, h                                       ; $68fb: $6c
    ld h, a                                       ; $68fc: $67
    ld [hl], a                                    ; $68fd: $77
    db $ec                                        ; $68fe: $ec
    cp c                                          ; $68ff: $b9
    or a                                          ; $6900: $b7
    or c                                          ; $6901: $b1
    ld [hl], a                                    ; $6902: $77
    pop bc                                        ; $6903: $c1
    dec [hl]                                      ; $6904: $35
    halt                                          ; $6905: $76
    add e                                         ; $6906: $83
    ccf                                           ; $6907: $3f
    ld c, b                                       ; $6908: $48
    ld [hl], e                                    ; $6909: $73
    ld c, c                                       ; $690a: $49
    xor d                                         ; $690b: $aa
    or a                                          ; $690c: $b7
    cp a                                          ; $690d: $bf
    adc e                                         ; $690e: $8b
    ld d, b                                       ; $690f: $50
    ld a, l                                       ; $6910: $7d
    add hl, bc                                    ; $6911: $09
    ld [hl], h                                    ; $6912: $74
    add e                                         ; $6913: $83
    ccf                                           ; $6914: $3f
    add sp, -$75                                  ; $6915: $e8 $8b
    ld [hl], l                                    ; $6917: $75
    db $ec                                        ; $6918: $ec
    cp c                                          ; $6919: $b9
    sbc a                                         ; $691a: $9f
    or l                                          ; $691b: $b5
    db $f4                                        ; $691c: $f4
    xor $8d                                       ; $691d: $ee $8d
    inc c                                         ; $691f: $0c
    pop bc                                        ; $6920: $c1
    adc e                                         ; $6921: $8b
    dec a                                         ; $6922: $3d
    inc d                                         ; $6923: $14
    ld [hl+], a                                   ; $6924: $22
    ld d, h                                       ; $6925: $54
    xor e                                         ; $6926: $ab
    ld l, [hl]                                    ; $6927: $6e
    ldh a, [rTAC]                                 ; $6928: $f0 $07
    dec e                                         ; $692a: $1d
    or h                                          ; $692b: $b4
    and b                                         ; $692c: $a0
    ld [c], a                                     ; $692d: $e2
    rst $08                                       ; $692e: $cf
    ld a, e                                       ; $692f: $7b
    xor $3d                                       ; $6930: $ee $3d
    xor h                                         ; $6932: $ac
    dec l                                         ; $6933: $2d
    ld a, l                                       ; $6934: $7d
    sub [hl]                                      ; $6935: $96
    xor a                                         ; $6936: $af
    or b                                          ; $6937: $b0
    ld h, h                                       ; $6938: $64
    push de                                       ; $6939: $d5
    db $db                                        ; $693a: $db
    ld [hl], l                                    ; $693b: $75
    inc e                                         ; $693c: $1c
    sbc $21                                       ; $693d: $de $21
    add hl, sp                                    ; $693f: $39
    and e                                         ; $6940: $a3
    ld c, l                                       ; $6941: $4d
    ld sp, hl                                     ; $6942: $f9
    db $eb                                        ; $6943: $eb
    ld c, c                                       ; $6944: $49
    xor h                                         ; $6945: $ac
    ld b, l                                       ; $6946: $45
    ld a, $f2                                     ; $6947: $3e $f2
    and a                                         ; $6949: $a7
    ld [hl], $3b                                  ; $694a: $36 $3b
    ld d, a                                       ; $694c: $57
    add a                                         ; $694d: $87
    dec sp                                        ; $694e: $3b
    scf                                           ; $694f: $37
    ld c, c                                       ; $6950: $49
    ld a, [de]                                    ; $6951: $1a
    ld [$b41d], sp                                ; $6952: $08 $1d $b4
    jr nz, jr_037_69d6                            ; $6955: $20 $7f

    db $f4                                        ; $6957: $f4
    ld b, d                                       ; $6958: $42
    db $f4                                        ; $6959: $f4
    and [hl]                                      ; $695a: $a6
    add hl, sp                                    ; $695b: $39
    or e                                          ; $695c: $b3
    ld e, a                                       ; $695d: $5f
    db $fc                                        ; $695e: $fc
    push de                                       ; $695f: $d5
    or c                                          ; $6960: $b1
    sbc l                                         ; $6961: $9d
    rst $10                                       ; $6962: $d7
    ld b, d                                       ; $6963: $42
    jp Jump_037_6e78                              ; $6964: $c3 $78 $6e


    ld l, h                                       ; $6967: $6c
    push af                                       ; $6968: $f5
    rst $00                                       ; $6969: $c7
    ld l, d                                       ; $696a: $6a
    push de                                       ; $696b: $d5
    dec c                                         ; $696c: $0d
    cp $a0                                        ; $696d: $fe $a0
    cpl                                           ; $696f: $2f
    sub $b1                                       ; $6970: $d6 $b1
    cp l                                          ; $6972: $bd
    db $fd                                        ; $6973: $fd
    ld e, l                                       ; $6974: $5d
    add h                                         ; $6975: $84
    inc [hl]                                      ; $6976: $34
    rlca                                          ; $6977: $07
    ld c, c                                       ; $6978: $49
    ld h, c                                       ; $6979: $61
    ld [hl], h                                    ; $697a: $74
    rst $20                                       ; $697b: $e7
    ld h, $49                                     ; $697c: $26 $49
    inc bc                                        ; $697e: $03
    and c                                         ; $697f: $a1
    add h                                         ; $6980: $84
    ld de, $683a                                  ; $6981: $11 $3a $68

Jump_037_6984:
    ld b, c                                       ; $6984: $41
    cp $e8                                        ; $6985: $fe $e8
    add l                                         ; $6987: $85
    add sp, $4d                                   ; $6988: $e8 $4d
    ld [hl], e                                    ; $698a: $73
    and e                                         ; $698b: $a3

jr_037_698c:
    inc de                                        ; $698c: $13
    rra                                           ; $698d: $1f
    ld [hl], l                                    ; $698e: $75
    ld [hl], l                                    ; $698f: $75
    cp b                                          ; $6990: $b8
    daa                                           ; $6991: $27
    jr z, jr_037_698c                             ; $6992: $28 $f8

    ldh [$ad], a                                  ; $6994: $e0 $ad
    ld e, d                                       ; $6996: $5a
    ld e, l                                       ; $6997: $5d
    dec l                                         ; $6998: $2d
    inc h                                         ; $6999: $24
    ld a, [hl]                                    ; $699a: $7e
    ld [hl], e                                    ; $699b: $73
    sbc c                                         ; $699c: $99
    ld [hl], e                                    ; $699d: $73
    rrca                                          ; $699e: $0f
    sbc l                                         ; $699f: $9d
    ld l, e                                       ; $69a0: $6b
    xor $73                                       ; $69a1: $ee $73
    push de                                       ; $69a3: $d5
    ld d, c                                       ; $69a4: $51
    inc c                                         ; $69a5: $0c
    sub a                                         ; $69a6: $97
    xor h                                         ; $69a7: $ac
    ld a, d                                       ; $69a8: $7a
    inc b                                         ; $69a9: $04
    ld a, [c]                                     ; $69aa: $f2
    rst $20                                       ; $69ab: $e7
    ld c, l                                       ; $69ac: $4d
    ld [hl], e                                    ; $69ad: $73
    call $cd01                                    ; $69ae: $cd $01 $cd
    ld bc, $07b3                                  ; $69b1: $01 $b3 $07
    ld a, a                                       ; $69b4: $7f
    add b                                         ; $69b5: $80
    dec e                                         ; $69b6: $1d
    ld hl, sp-$78                                 ; $69b7: $f8 $88
    ld h, c                                       ; $69b9: $61
    add c                                         ; $69ba: $81
    or h                                          ; $69bb: $b4

Call_037_69bc:
    ld c, c                                       ; $69bc: $49
    xor d                                         ; $69bd: $aa
    add e                                         ; $69be: $83
    ld d, $1a                                     ; $69bf: $16 $1a

jr_037_69c1:
    ld d, $84                                     ; $69c1: $16 $84
    ld l, d                                       ; $69c3: $6a
    rst $00                                       ; $69c4: $c7
    cp d                                          ; $69c5: $ba
    daa                                           ; $69c6: $27
    jr z, jr_037_69c1                             ; $69c7: $28 $f8

    ldh [rKEY1], a                                ; $69c9: $e0 $4d
    ld [hl], e                                    ; $69cb: $73
    ld c, h                                       ; $69cc: $4c
    ccf                                           ; $69cd: $3f
    ld l, c                                       ; $69ce: $69
    and [hl]                                      ; $69cf: $a6
    ld h, b                                       ; $69d0: $60
    ld c, b                                       ; $69d1: $48
    add a                                         ; $69d2: $87
    dec bc                                        ; $69d3: $0b
    add d                                         ; $69d4: $82
    add hl, hl                                    ; $69d5: $29

jr_037_69d6:
    dec b                                         ; $69d6: $05
    ld l, a                                       ; $69d7: $6f
    sbc c                                         ; $69d8: $99
    pop hl                                        ; $69d9: $e1
    jp hl                                         ; $69da: $e9


    ld [hl], e                                    ; $69db: $73
    or e                                          ; $69dc: $b3
    ld e, e                                       ; $69dd: $5b
    add hl, de                                    ; $69de: $19
    rr h                                          ; $69df: $cb $1c
    ld [$1cd3], sp                                ; $69e1: $08 $d3 $1c

Jump_037_69e4:
    call z, $3081                                 ; $69e4: $cc $81 $30
    dec l                                         ; $69e7: $2d
    db $fd                                        ; $69e8: $fd
    jp c, Jump_000_039b                           ; $69e9: $da $9b $03

    call z, $f901                                 ; $69ec: $cc $01 $f9
    db $fc                                        ; $69ef: $fc
    ld a, l                                       ; $69f0: $7d
    add l                                         ; $69f1: $85
    rst $30                                       ; $69f2: $f7
    rst $38                                       ; $69f3: $ff
    ld l, b                                       ; $69f4: $68
    ld c, $c3                                     ; $69f5: $0e $c3
    xor [hl]                                      ; $69f7: $ae
    ld d, l                                       ; $69f8: $55
    jr c, jr_037_6a2c                             ; $69f9: $38 $31

    ld [hl], e                                    ; $69fb: $73
    jr nz, jr_037_6a4a                            ; $69fc: $20 $4c

    sbc l                                         ; $69fe: $9d
    inc bc                                        ; $69ff: $03
    adc h                                         ; $6a00: $8c
    ld a, [hl]                                    ; $6a01: $7e
    ld d, b                                       ; $6a02: $50
    dec e                                         ; $6a03: $1d
    jp nc, $cb64                                  ; $6a04: $d2 $64 $cb

    ld de, $6eeb                                  ; $6a07: $11 $eb $6e
    ldh a, [rTAC]                                 ; $6a0a: $f0 $07
    db $fd                                        ; $6a0c: $fd
    adc d                                         ; $6a0d: $8a
    xor b                                         ; $6a0e: $a8
    ld c, $77                                     ; $6a0f: $0e $77
    halt                                          ; $6a11: $76
    res 4, b                                      ; $6a12: $cb $a0
    ld [hl], a                                    ; $6a14: $77
    add $32                                       ; $6a15: $c6 $32
    jp Jump_000_1c3d                              ; $6a17: $c3 $3d $1c


    dec bc                                        ; $6a1a: $0b
    rst $20                                       ; $6a1b: $e7
    ld h, d                                       ; $6a1c: $62
    cp b                                          ; $6a1d: $b8
    ld [hl], a                                    ; $6a1e: $77
    ld [de], a                                    ; $6a1f: $12
    ld [hl+], a                                   ; $6a20: $22
    cp b                                          ; $6a21: $b8
    sbc a                                         ; $6a22: $9f
    ld d, d                                       ; $6a23: $52
    ld h, e                                       ; $6a24: $63
    sbc d                                         ; $6a25: $9a
    inc bc                                        ; $6a26: $03
    jp $81b1                                      ; $6a27: $c3 $b1 $81


    ret nc                                        ; $6a2a: $d0

    sbc e                                         ; $6a2b: $9b

jr_037_6a2c:
    ld h, e                                       ; $6a2c: $63
    dec sp                                        ; $6a2d: $3b
    ld e, d                                       ; $6a2e: $5a
    xor l                                         ; $6a2f: $ad
    or [hl]                                       ; $6a30: $b6
    sbc h                                         ; $6a31: $9c
    xor e                                         ; $6a32: $ab
    ccf                                           ; $6a33: $3f
    ld h, d                                       ; $6a34: $62
    ld l, a                                       ; $6a35: $6f
    adc [hl]                                      ; $6a36: $8e
    or l                                          ; $6a37: $b5
    inc d                                         ; $6a38: $14
    jp $0ea5                                      ; $6a39: $c3 $a5 $0e


    db $ed                                        ; $6a3c: $ed
    db $ed                                        ; $6a3d: $ed
    db $ed                                        ; $6a3e: $ed
    rst $28                                       ; $6a3f: $ef
    and [hl]                                      ; $6a40: $a6
    add hl, sp                                    ; $6a41: $39
    and e                                         ; $6a42: $a3
    jp $d34d                                      ; $6a43: $c3 $4d $d3


    or h                                          ; $6a46: $b4
    rst $30                                       ; $6a47: $f7
    ld [hl], b                                    ; $6a48: $70
    ld l, a                                       ; $6a49: $6f

jr_037_6a4a:
    ld h, e                                       ; $6a4a: $63
    rst $28                                       ; $6a4b: $ef
    ld a, d                                       ; $6a4c: $7a
    adc e                                         ; $6a4d: $8b
    pop hl                                        ; $6a4e: $e1
    ld [c], a                                     ; $6a4f: $e2
    push de                                       ; $6a50: $d5
    ei                                            ; $6a51: $fb
    rst $00                                       ; $6a52: $c7
    sub d                                         ; $6a53: $92
    ld e, b                                       ; $6a54: $58
    ld c, e                                       ; $6a55: $4b
    adc a                                         ; $6a56: $8f
    ldh [$af], a                                  ; $6a57: $e0 $af
    ld hl, sp+$33                                 ; $6a59: $f8 $33
    rst $28                                       ; $6a5b: $ef
    adc h                                         ; $6a5c: $8c
    add hl, sp                                    ; $6a5d: $39
    add hl, bc                                    ; $6a5e: $09
    db $fc                                        ; $6a5f: $fc
    dec [hl]                                      ; $6a60: $35
    and e                                         ; $6a61: $a3
    ld e, a                                       ; $6a62: $5f
    or c                                          ; $6a63: $b1
    ld a, $17                                     ; $6a64: $3e $17
    jp Jump_000_1f7d                              ; $6a66: $c3 $7d $1f


Jump_037_6a69:
    ld a, [$3529]                                 ; $6a69: $fa $29 $35
    or $08                                        ; $6a6c: $f6 $08
    add sp, -$21                                  ; $6a6e: $e8 $df
    call z, $6c6f                                 ; $6a70: $cc $6f $6c
    add c                                         ; $6a73: $81
    and [hl]                                      ; $6a74: $a6
    ld l, c                                       ; $6a75: $69
    sbc d                                         ; $6a76: $9a
    inc bc                                        ; $6a77: $03
    ret                                           ; $6a78: $c9


    rra                                           ; $6a79: $1f
    and c                                         ; $6a7a: $a1
    ld e, d                                       ; $6a7b: $5a
    dec [hl]                                      ; $6a7c: $35
    reti                                          ; $6a7d: $d9


    ld [hl], d                                    ; $6a7e: $72
    call nz, $8cba                                ; $6a7f: $c4 $ba $8c
    ld a, [c]                                     ; $6a82: $f2
    scf                                           ; $6a83: $37
    or e                                          ; $6a84: $b3
    inc [hl]                                      ; $6a85: $34
    inc sp                                        ; $6a86: $33
    ld a, [$6779]                                 ; $6a87: $fa $79 $67
    call z, Call_000_0901                         ; $6a8a: $cc $01 $09
    db $fc                                        ; $6a8d: $fc
    push af                                       ; $6a8e: $f5
    ld a, l                                       ; $6a8f: $7d
    sub $c5                                       ; $6a90: $d6 $c5
    ld [hl], b                                    ; $6a92: $70
    call $bb7a                                    ; $6a93: $cd $7a $bb
    rla                                           ; $6a96: $17
    ld a, a                                       ; $6a97: $7f
    call Call_037_7e8c                            ; $6a98: $cd $8c $7e
    sbc $73                                       ; $6a9b: $de $73
    add e                                         ; $6a9d: $83
    cp a                                          ; $6a9e: $bf
    sbc $1d                                       ; $6a9f: $de $1d
    db $e3                                        ; $6aa1: $e3
    db $f4                                        ; $6aa2: $f4
    or e                                          ; $6aa3: $b3
    sub [hl]                                      ; $6aa4: $96
    ld l, [hl]                                    ; $6aa5: $6e
    ldh a, [rTAC]                                 ; $6aa6: $f0 $07
    rst $20                                       ; $6aa8: $e7
    sbc $af                                       ; $6aa9: $de $af
    ld h, d                                       ; $6aab: $62
    cp b                                          ; $6aac: $b8
    cpl                                           ; $6aad: $2f
    ld [hl], $73                                  ; $6aae: $36 $73
    or $37                                        ; $6ab0: $f6 $37
    di                                            ; $6ab2: $f3
    ld [hl], $10                                  ; $6ab3: $36 $10
    jp nc, $b31c                                  ; $6ab5: $d2 $1c $b3

    xor e                                         ; $6ab8: $ab
    dec a                                         ; $6ab9: $3d

Call_037_6aba:
    ld d, a                                       ; $6aba: $57
    rst $38                                       ; $6abb: $ff
    db $dd                                        ; $6abc: $dd
    and d                                         ; $6abd: $a2
    ld [c], a                                     ; $6abe: $e2
    xor a                                         ; $6abf: $af
    ei                                            ; $6ac0: $fb
    ld sp, hl                                     ; $6ac1: $f9
    ld l, e                                       ; $6ac2: $6b
    inc a                                         ; $6ac3: $3c
    ld c, c                                       ; $6ac4: $49
    dec sp                                        ; $6ac5: $3b
    sub h                                         ; $6ac6: $94
    ld d, d                                       ; $6ac7: $52
    rla                                           ; $6ac8: $17
    cpl                                           ; $6ac9: $2f
    ld c, d                                       ; $6aca: $4a
    cp l                                          ; $6acb: $bd
    push bc                                       ; $6acc: $c5
    ldh [$af], a                                  ; $6acd: $e0 $af
    ld h, h                                       ; $6acf: $64
    dec h                                         ; $6ad0: $25
    ld c, l                                       ; $6ad1: $4d
    cp $94                                        ; $6ad2: $fe $94
    ld e, [hl]                                    ; $6ad4: $5e
    ld [hl], a                                    ; $6ad5: $77
    ld a, e                                       ; $6ad6: $7b
    daa                                           ; $6ad7: $27

Call_037_6ad8:
    ld e, $f5                                     ; $6ad8: $1e $f5
    dec b                                         ; $6ada: $05
    add $74                                       ; $6adb: $c6 $74
    ret nc                                        ; $6add: $d0

    add d                                         ; $6ade: $82
    rst $38                                       ; $6adf: $ff
    jr c, jr_037_6b2e                             ; $6ae0: $38 $4c

    scf                                           ; $6ae2: $37
    call $f301                                    ; $6ae3: $cd $01 $f3
    ld e, d                                       ; $6ae6: $5a
    ld d, b                                       ; $6ae7: $50
    pop af                                        ; $6ae8: $f1
    add a                                         ; $6ae9: $87
    ld d, b                                       ; $6aea: $50
    xor l                                         ; $6aeb: $ad
    adc $d5                                       ; $6aec: $ce $d5
    pop bc                                        ; $6aee: $c1
    ld e, a                                       ; $6aef: $5f
    push af                                       ; $6af0: $f5
    rra                                           ; $6af1: $1f
    cp h                                          ; $6af2: $bc
    sub [hl]                                      ; $6af3: $96
    xor h                                         ; $6af4: $ac
    sub b                                         ; $6af5: $90
    ccf                                           ; $6af6: $3f
    ld [$cfe0], a                                 ; $6af7: $ea $e0 $cf
    dec sp                                        ; $6afa: $3b
    ld h, e                                       ; $6afb: $63
    add a                                         ; $6afc: $87
    ld l, [hl]                                    ; $6afd: $6e
    adc a                                         ; $6afe: $8f
    sub b                                         ; $6aff: $90
    sbc $ae                                       ; $6b00: $de $ae
    db $e3                                        ; $6b02: $e3
    ld b, b                                       ; $6b03: $40
    xor b                                         ; $6b04: $a8
    ld d, [hl]                                    ; $6b05: $56
    db $dd                                        ; $6b06: $dd
    ldh [rIF], a                                  ; $6b07: $e0 $0f
    ld a, [hl-]                                   ; $6b09: $3a
    ld a, b                                       ; $6b0a: $78
    add hl, bc                                    ; $6b0b: $09
    db $eb                                        ; $6b0c: $eb
    ld c, b                                       ; $6b0d: $48
    dec sp                                        ; $6b0e: $3b
    adc h                                         ; $6b0f: $8c
    ld a, [hl-]                                   ; $6b10: $3a
    ret c                                         ; $6b11: $d8

    cp [hl]                                       ; $6b12: $be
    or b                                          ; $6b13: $b0
    ld d, h                                       ; $6b14: $54
    xor l                                         ; $6b15: $ad
    xor $c6                                       ; $6b16: $ee $c6
    ld [hl], c                                    ; $6b18: $71
    db $f4                                        ; $6b19: $f4
    rra                                           ; $6b1a: $1f
    dec e                                         ; $6b1b: $1d
    or $f7                                        ; $6b1c: $f6 $f7
    ld h, [hl]                                    ; $6b1e: $66
    add b                                         ; $6b1f: $80
    add d                                         ; $6b20: $82
    add e                                         ; $6b21: $83
    and [hl]                                      ; $6b22: $a6
    add hl, sp                                    ; $6b23: $39
    add hl, bc                                    ; $6b24: $09
    db $fc                                        ; $6b25: $fc
    sub l                                         ; $6b26: $95
    push af                                       ; $6b27: $f5
    db $fd                                        ; $6b28: $fd
    di                                            ; $6b29: $f3
    rst $20                                       ; $6b2a: $e7
    ld [$ba30], a                                 ; $6b2b: $ea $30 $ba

jr_037_6b2e:
    ld [hl], e                                    ; $6b2e: $73
    sub e                                         ; $6b2f: $93
    db $e4                                        ; $6b30: $e4
    ld e, h                                       ; $6b31: $5c
    ld [hl], $b0                                  ; $6b32: $36 $b0
    ld a, [$8763]                                 ; $6b34: $fa $63 $87
    db $fd                                        ; $6b37: $fd
    cp l                                          ; $6b38: $bd
    add hl, de                                    ; $6b39: $19
    and b                                         ; $6b3a: $a0
    xor h                                         ; $6b3b: $ac
    or e                                          ; $6b3c: $b3
    ret c                                         ; $6b3d: $d8

    add l                                         ; $6b3e: $85
    or h                                          ; $6b3f: $b4
    jp $fab1                                      ; $6b40: $c3 $b1 $fa


    dec bc                                        ; $6b43: $0b
    pop de                                        ; $6b44: $d1
    inc hl                                        ; $6b45: $23
    and h                                         ; $6b46: $a4
    scf                                           ; $6b47: $37
    rst $00                                       ; $6b48: $c7
    ld e, d                                       ; $6b49: $5a
    ld a, d                                       ; $6b4a: $7a
    ld hl, sp+$49                                 ; $6b4b: $f8 $49
    rlca                                          ; $6b4d: $07
    xor a                                         ; $6b4e: $af
    xor l                                         ; $6b4f: $ad
    dec d                                         ; $6b50: $15
    ld a, a                                       ; $6b51: $7f
    push af                                       ; $6b52: $f5
    jp nz, $903d                                  ; $6b53: $c2 $3d $90

    ccf                                           ; $6b56: $3f
    ld l, a                                       ; $6b57: $6f
    sbc d                                         ; $6b58: $9a
    inc bc                                        ; $6b59: $03
    ret                                           ; $6b5a: $c9


    ld h, c                                       ; $6b5b: $61
    jp hl                                         ; $6b5c: $e9


    push bc                                       ; $6b5d: $c5
    ld a, d                                       ; $6b5e: $7a
    sbc e                                         ; $6b5f: $9b
    dec b                                         ; $6b60: $05
    dec bc                                        ; $6b61: $0b
    dec [hl]                                      ; $6b62: $35
    halt                                          ; $6b63: $76
    add e                                         ; $6b64: $83
    ccf                                           ; $6b65: $3f
    ret nz                                        ; $6b66: $c0

    sub d                                         ; $6b67: $92
    ld d, l                                       ; $6b68: $55
    pop de                                        ; $6b69: $d1
    rst $08                                       ; $6b6a: $cf
    ld a, e                                       ; $6b6b: $7b
    ld l, [hl]                                    ; $6b6c: $6e
    ld a, [c]                                     ; $6b6d: $f2
    rla                                           ; $6b6e: $17
    add hl, de                                    ; $6b6f: $19
    sub e                                         ; $6b70: $93
    ld [hl], $29                                  ; $6b71: $36 $29
    call c, Call_000_1c59                         ; $6b73: $dc $59 $1c
    sub [hl]                                      ; $6b76: $96
    ld [de], a                                    ; $6b77: $12
    or c                                          ; $6b78: $b1
    jp c, $b550                                   ; $6b79: $da $50 $b5

    ldh [$2d], a                                  ; $6b7c: $e0 $2d
    jp nz, Jump_000_1807                          ; $6b7e: $c2 $07 $18

    sub d                                         ; $6b81: $92
    inc bc                                        ; $6b82: $03
    ld c, c                                       ; $6b83: $49
    xor d                                         ; $6b84: $aa
    rst $30                                       ; $6b85: $f7
    db $10                                        ; $6b86: $10
    add h                                         ; $6b87: $84
    ld e, $21                                     ; $6b88: $1e $21
    dec a                                         ; $6b8a: $3d
    inc e                                         ; $6b8b: $1c
    db $eb                                        ; $6b8c: $eb
    dec l                                         ; $6b8d: $2d
    ld a, [c]                                     ; $6b8e: $f2
    scf                                           ; $6b8f: $37
    or $7a                                        ; $6b90: $f6 $7a
    rst $08                                       ; $6b92: $cf
    push bc                                       ; $6b93: $c5
    xor a                                         ; $6b94: $af
    ld e, b                                       ; $6b95: $58
    adc e                                         ; $6b96: $8b
    or a                                          ; $6b97: $b7
    inc hl                                        ; $6b98: $23
    inc l                                         ; $6b99: $2c
    scf                                           ; $6b9a: $37

jr_037_6b9b:
    ld c, e                                       ; $6b9b: $4b
    scf                                           ; $6b9c: $37
    ld hl, sp-$7d                                 ; $6b9d: $f8 $83
    ld l, d                                       ; $6b9f: $6a
    dec h                                         ; $6ba0: $25
    db $fc                                        ; $6ba1: $fc
    add hl, sp                                    ; $6ba2: $39
    or $af                                        ; $6ba3: $f6 $af
    or [hl]                                       ; $6ba5: $b6
    or b                                          ; $6ba6: $b0
    ld [de], a                                    ; $6ba7: $12
    sbc e                                         ; $6ba8: $9b
    ld a, c                                       ; $6ba9: $79
    db $d3                                        ; $6baa: $d3
    ld h, $85                                     ; $6bab: $26 $85
    dec sp                                        ; $6bad: $3b
    ld [$8c0b], a                                 ; $6bae: $ea $0b $8c
    add hl, hl                                    ; $6bb1: $29
    add d                                         ; $6bb2: $82
    inc hl                                        ; $6bb3: $23
    add e                                         ; $6bb4: $83
    add $56                                       ; $6bb5: $c6 $56
    ld e, e                                       ; $6bb7: $5b
    jp z, $d728                                   ; $6bb8: $ca $28 $d7

    jr c, jr_037_6b9b                             ; $6bbb: $38 $de

    ld h, $7f                                     ; $6bbd: $26 $7f
    ld c, d                                       ; $6bbf: $4a
    db $dd                                        ; $6bc0: $dd

Jump_037_6bc1:
    adc c                                         ; $6bc1: $89
    xor e                                         ; $6bc2: $ab
    jp $fe0d                                      ; $6bc3: $c3 $0d $fe


    cp d                                          ; $6bc6: $ba
    sbc a                                         ; $6bc7: $9f
    cp a                                          ; $6bc8: $bf
    ld h, a                                       ; $6bc9: $67
    jp hl                                         ; $6bca: $e9


    ld d, a                                       ; $6bcb: $57
    add h                                         ; $6bcc: $84
    inc h                                         ; $6bcd: $24
    xor d                                         ; $6bce: $aa
    jp Jump_037_43db                              ; $6bcf: $c3 $db $43


    ld hl, $39a6                                  ; $6bd2: $21 $a6 $39
    jp $fab1                                      ; $6bd5: $c3 $b1 $fa


    dec bc                                        ; $6bd8: $0b
    pop de                                        ; $6bd9: $d1
    cp l                                          ; $6bda: $bd
    ld hl, sp-$15                                 ; $6bdb: $f8 $eb
    call $96b1                                    ; $6bdd: $cd $b1 $96
    cp [hl]                                       ; $6be0: $be
    ld e, b                                       ; $6be1: $58
    rst $00                                       ; $6be2: $c7
    sbc [hl]                                      ; $6be3: $9e
    xor e                                         ; $6be4: $ab
    jp $f24d                                      ; $6be5: $c3 $4d $f2


    db $ed                                        ; $6be8: $ed
    sub d                                         ; $6be9: $92
    rrca                                          ; $6bea: $0f
    ld [hl], c                                    ; $6beb: $71
    ld l, l                                       ; $6bec: $6d
    inc bc                                        ; $6bed: $03
    and c                                         ; $6bee: $a1
    ld a, e                                       ; $6bef: $7b
    pop af                                        ; $6bf0: $f1
    rst $10                                       ; $6bf1: $d7
    dec c                                         ; $6bf2: $0d
    cp $a0                                        ; $6bf3: $fe $a0
    add h                                         ; $6bf5: $84
    dec b                                         ; $6bf6: $05
    ld [hl+], a                                   ; $6bf7: $22
    ld c, e                                       ; $6bf8: $4b
    ld [hl], e                                    ; $6bf9: $73
    ld c, c                                       ; $6bfa: $49
    ld e, a                                       ; $6bfb: $5f
    ld [$aa84], sp                                ; $6bfc: $08 $84 $aa
    and e                                         ; $6bff: $a3
    ld a, [hl-]                                   ; $6c00: $3a
    adc h                                         ; $6c01: $8c
    xor $09                                       ; $6c02: $ee $09
    ld c, $e8                                     ; $6c04: $0e $e8
    ld b, $7f                                     ; $6c06: $06 $7f
    ret nc                                        ; $6c08: $d0

    rla                                           ; $6c09: $17
    sub [hl]                                      ; $6c0a: $96
    ld l, d                                       ; $6c0b: $6a
    ld sp, hl                                     ; $6c0c: $f9
    ld l, d                                       ; $6c0d: $6a
    inc e                                         ; $6c0e: $1c
    ld l, a                                       ; $6c0f: $6f
    ld b, l                                       ; $6c10: $45
    dec e                                         ; $6c11: $1d
    db $f4                                        ; $6c12: $f4
    dec hl                                        ; $6c13: $2b
    jp nz, Jump_037_6e7b                          ; $6c14: $c2 $7b $6e

    ld a, [c]                                     ; $6c17: $f2
    rla                                           ; $6c18: $17
    add hl, de                                    ; $6c19: $19
    sub e                                         ; $6c1a: $93
    and $c9                                       ; $6c1b: $e6 $c9
    rra                                           ; $6c1d: $1f
    and c                                         ; $6c1e: $a1
    ld e, d                                       ; $6c1f: $5a
    dec [hl]                                      ; $6c20: $35
    reti                                          ; $6c21: $d9


    ld [hl], d                                    ; $6c22: $72
    call nz, $99ba                                ; $6c23: $c4 $ba $99
    pop de                                        ; $6c26: $d1
    rst $08                                       ; $6c27: $cf
    dec sp                                        ; $6c28: $3b
    ld h, e                                       ; $6c29: $63
    ld c, $09                                     ; $6c2a: $0e $09
    db $fc                                        ; $6c2c: $fc
    dec [hl]                                      ; $6c2d: $35
    and e                                         ; $6c2e: $a3
    ld e, a                                       ; $6c2f: $5f
    or c                                          ; $6c30: $b1
    ld a, $37                                     ; $6c31: $3e $37
    ld hl, sp-$15                                 ; $6c33: $f8 $eb
    ei                                            ; $6c35: $fb
    xor h                                         ; $6c36: $ac
    adc e                                         ; $6c37: $8b
    pop hl                                        ; $6c38: $e1
    or d                                          ; $6c39: $b2
    adc [hl]                                      ; $6c3a: $8e
    and e                                         ; $6c3b: $a3
    jp Jump_037_5e8c                              ; $6c3c: $c3 $8c $5e


    db $e4                                        ; $6c3f: $e4
    ld c, a                                       ; $6c40: $4f
    cp $de                                        ; $6c41: $fe $de
    sbc d                                         ; $6c43: $9a
    add hl, de                                    ; $6c44: $19
    db $fd                                        ; $6c45: $fd
    cp h                                          ; $6c46: $bc
    ld l, c                                       ; $6c47: $69
    ld c, $09                                     ; $6c48: $0e $09
    ld c, a                                       ; $6c4a: $4f
    call c, Call_000_3fd9                         ; $6c4b: $dc $d9 $3f
    cp d                                          ; $6c4e: $ba
    ld [$37e6], sp                                ; $6c4f: $08 $e6 $37
    jr z, @+$08                                   ; $6c52: $28 $06

    ld a, a                                       ; $6c54: $7f
    sub [hl]                                      ; $6c55: $96
    add $d6                                       ; $6c56: $c6 $d6
    or c                                          ; $6c58: $b1
    ld a, $3a                                     ; $6c59: $3e $3a
    ld c, h                                       ; $6c5b: $4c
    pop af                                        ; $6c5c: $f1
    ld [hl], a                                    ; $6c5d: $77
    ld l, [hl]                                    ; $6c5e: $6e
    ldh a, [$d7]                                  ; $6c5f: $f0 $d7
    cp e                                          ; $6c61: $bb
    ld h, e                                       ; $6c62: $63
    sbc h                                         ; $6c63: $9c
    ld a, [hl]                                    ; $6c64: $7e
    ld c, d                                       ; $6c65: $4a
    dec l                                         ; $6c66: $2d
    ld a, [hl-]                                   ; $6c67: $3a
    ld [hl], $c3                                  ; $6c68: $36 $c3
    ld l, [hl]                                    ; $6c6a: $6e
    ldh a, [rTAC]                                 ; $6c6b: $f0 $07
    rst $20                                       ; $6c6d: $e7
    sbc $af                                       ; $6c6e: $de $af
    ld l, d                                       ; $6c70: $6a
    ld c, e                                       ; $6c71: $4b
    rst $20                                       ; $6c72: $e7
    ld [hl-], a                                   ; $6c73: $32
    ld b, d                                       ; $6c74: $42
    rlca                                          ; $6c75: $07
    xor a                                         ; $6c76: $af
    ld l, l                                       ; $6c77: $6d
    inc a                                         ; $6c78: $3c
    add hl, hl                                    ; $6c79: $29
    add d                                         ; $6c7a: $82
    ld sp, hl                                     ; $6c7b: $f9
    dec c                                         ; $6c7c: $0d
    jp nc, $f31c                                  ; $6c7d: $d2 $1c $f3

    add [hl]                                      ; $6c80: $86
    add hl, hl                                    ; $6c81: $29
    ld [hl], l                                    ; $6c82: $75
    ldh a, [rTAC]                                 ; $6c83: $f0 $07
    ld a, l                                       ; $6c85: $7d
    rra                                           ; $6c86: $1f
    adc d                                         ; $6c87: $8a
    pop hl                                        ; $6c88: $e1
    ld h, d                                       ; $6c89: $62
    ldh a, [$57]                                  ; $6c8a: $f0 $57
    or d                                          ; $6c8c: $b2
    jp nz, Jump_000_1c7f                          ; $6c8d: $c2 $7f $1c

    sbc $1e                                       ; $6c90: $de $1e
    ld bc, $dd9d                                  ; $6c92: $01 $9d $dd
    add e                                         ; $6c95: $83
    ld b, c                                       ; $6c96: $41
    xor c                                         ; $6c97: $a9
    or c                                          ; $6c98: $b1
    inc hl                                        ; $6c99: $23
    ld h, h                                       ; $6c9a: $64
    ld l, h                                       ; $6c9b: $6c
    ld [hl], b                                    ; $6c9c: $70
    rlca                                          ; $6c9d: $07
    dec l                                         ; $6c9e: $2d
    db $f4                                        ; $6c9f: $f4
    dec hl                                        ; $6ca0: $2b
    jp nz, $e69b                                  ; $6ca1: $c2 $9b $e6

    call z, Call_000_0370                         ; $6ca4: $cc $70 $03
    and c                                         ; $6ca7: $a1
    or c                                          ; $6ca8: $b1
    push de                                       ; $6ca9: $d5
    sub [hl]                                      ; $6caa: $96
    adc [hl]                                      ; $6cab: $8e
    ld c, h                                       ; $6cac: $4c
    call nc, Call_037_79fc                        ; $6cad: $d4 $fc $79
    pop hl                                        ; $6cb0: $e1
    ld a, [bc]                                    ; $6cb1: $0a
    ld l, d                                       ; $6cb2: $6a
    nop                                           ; $6cb3: $00
    scf                                           ; $6cb4: $37
    adc [hl]                                      ; $6cb5: $8e
    ld e, d                                       ; $6cb6: $5a
    db $10                                        ; $6cb7: $10
    cp h                                          ; $6cb8: $bc
    ld h, l                                       ; $6cb9: $65
    jp nz, Jump_037_6fc5                          ; $6cba: $c2 $c5 $6f

    ld d, l                                       ; $6cbd: $55
    xor e                                         ; $6cbe: $ab
    ei                                            ; $6cbf: $fb
    xor h                                         ; $6cc0: $ac
    jr z, jr_037_6cd7                             ; $6cc1: $28 $14

    add e                                         ; $6cc3: $83
    cp a                                          ; $6cc4: $bf
    ld [$8770], a                                 ; $6cc5: $ea $70 $87
    xor d                                         ; $6cc8: $aa
    call z, $afdb                                 ; $6cc9: $cc $db $af
    or b                                          ; $6ccc: $b0
    jp c, Jump_037_4747                           ; $6ccd: $da $47 $47

    ld e, h                                       ; $6cd0: $5c
    inc bc                                        ; $6cd1: $03
    call nz, $fab9                                ; $6cd2: $c4 $b9 $fa
    rst $28                                       ; $6cd5: $ef
    xor l                                         ; $6cd6: $ad

jr_037_6cd7:
    ld d, [hl]                                    ; $6cd7: $56
    db $fc                                        ; $6cd8: $fc
    dec c                                         ; $6cd9: $0d
    ret                                           ; $6cda: $c9


    ld bc, $bc73                                  ; $6cdb: $01 $73 $bc
    ld [hl], e                                    ; $6cde: $73
    rst $10                                       ; $6cdf: $d7
    or c                                          ; $6ce0: $b1
    ld b, e                                       ; $6ce1: $43
    sbc d                                         ; $6ce2: $9a
    db $f4                                        ; $6ce3: $f4
    or c                                          ; $6ce4: $b1
    rst $30                                       ; $6ce5: $f7
    adc e                                         ; $6ce6: $8b
    ld d, d                                       ; $6ce7: $52
    ld [hl], b                                    ; $6ce8: $70
    add e                                         ; $6ce9: $83
    cp a                                          ; $6cea: $bf
    sbc $43                                       ; $6ceb: $de $43
    ld l, [hl]                                    ; $6ced: $6e
    inc [hl]                                      ; $6cee: $34
    ld hl, sp-$15                                 ; $6cef: $f8 $eb
    ld b, $7f                                     ; $6cf1: $06 $7f
    sub b                                         ; $6cf3: $90
    and $b3                                       ; $6cf4: $e6 $b3
    ld a, l                                       ; $6cf6: $7d
    call nz, $c5aa                                ; $6cf7: $c4 $aa $c5
    ld e, $01                                     ; $6cfa: $1e $01
    adc l                                         ; $6cfc: $8d
    daa                                           ; $6cfd: $27
    dec d                                         ; $6cfe: $15
    ld l, e                                       ; $6cff: $6b
    rst $28                                       ; $6d00: $ef
    cp c                                          ; $6d01: $b9
    ld [hl], a                                    ; $6d02: $77
    rst $28                                       ; $6d03: $ef
    ld d, $c3                                     ; $6d04: $16 $c3
    dec h                                         ; $6d06: $25
    dec hl                                        ; $6d07: $2b
    ld hl, $dbf1                                  ; $6d08: $21 $f1 $db
    db $ed                                        ; $6d0b: $ed
    ld a, [hl-]                                   ; $6d0c: $3a
    ld c, $48                                     ; $6d0d: $0e $48
    ld [hl], e                                    ; $6d0f: $73
    ld b, e                                       ; $6d10: $43
    add hl, hl                                    ; $6d11: $29
    ld [hl], l                                    ; $6d12: $75
    ld h, e                                       ; $6d13: $63
    xor e                                         ; $6d14: $ab
    jp $9465                                      ; $6d15: $c3 $65 $94


    ld l, e                                       ; $6d18: $6b
    inc e                                         ; $6d19: $1c
    scf                                           ; $6d1a: $37
    ld sp, hl                                     ; $6d1b: $f9
    ld d, e                                       ; $6d1c: $53
    ld [$d973], a                                 ; $6d1d: $ea $73 $d9
    nop                                           ; $6d20: $00
    ldh a, [$90]                                  ; $6d21: $f0 $90
    ld h, $85                                     ; $6d23: $26 $85
    sbc e                                         ; $6d25: $9b
    db $fc                                        ; $6d26: $fc
    add hl, hl                                    ; $6d27: $29
    cp l                                          ; $6d28: $bd
    xor $f6                                       ; $6d29: $ee $f6
    ld c, [hl]                                    ; $6d2b: $4e
    inc a                                         ; $6d2c: $3c
    ld [$8c0b], a                                 ; $6d2d: $ea $0b $8c
    add hl, hl                                    ; $6d30: $29
    db $eb                                        ; $6d31: $eb
    inc l                                         ; $6d32: $2c
    halt                                          ; $6d33: $76

Call_037_6d34:
    ld h, c                                       ; $6d34: $61
    ld c, b                                       ; $6d35: $48
    ld c, $73                                     ; $6d36: $0e $73
    ld c, a                                       ; $6d38: $4f
    inc c                                         ; $6d39: $0c
    inc de                                        ; $6d3a: $13
    add e                                         ; $6d3b: $83
    ld e, h                                       ; $6d3c: $5c
    sub h                                         ; $6d3d: $94
    ld [hl], $4d                                  ; $6d3e: $36 $4d
    db $d3                                        ; $6d40: $d3
    add $51                                       ; $6d41: $c6 $51
    ld c, a                                       ; $6d43: $4f
    db $ec                                        ; $6d44: $ec
    adc c                                         ; $6d45: $89
    dec l                                         ; $6d46: $2d
    ld [$32de], sp                                ; $6d47: $08 $de $32
    daa                                           ; $6d4a: $27
    ld h, [hl]                                    ; $6d4b: $66
    ld c, [hl]                                    ; $6d4c: $4e
    call z, $8b84                                 ; $6d4d: $cc $84 $8b

Jump_037_6d50:
    rst $18                                       ; $6d50: $df
    sbc d                                         ; $6d51: $9a

Jump_037_6d52:
    and [hl]                                      ; $6d52: $a6
    ld l, c                                       ; $6d53: $69
    push af                                       ; $6d54: $f5
    rst $20                                       ; $6d55: $e7
    rrca                                          ; $6d56: $0f
    ld a, h                                       ; $6d57: $7c
    xor $a7                                       ; $6d58: $ee $a7
    call nc, $8bc5                                ; $6d5a: $d4 $c5 $8b
    ld d, d                                       ; $6d5d: $52
    ldh a, [$d6]                                  ; $6d5e: $f0 $d6
    ret c                                         ; $6d60: $d8

    ld a, e                                       ; $6d61: $7b
    jr nz, @+$7c                                  ; $6d62: $20 $7a

    db $d3                                        ; $6d64: $d3
    inc e                                         ; $6d65: $1c
    di                                            ; $6d66: $f3
    ld e, d                                       ; $6d67: $5a
    ld b, b                                       ; $6d68: $40
    cp [hl]                                       ; $6d69: $be
    ld a, [c]                                     ; $6d6a: $f2
    ld [hl+], a                                   ; $6d6b: $22
    ld a, [c]                                     ; $6d6c: $f2
    ld b, a                                       ; $6d6d: $47
    and d                                         ; $6d6e: $a2
    sub [hl]                                      ; $6d6f: $96
    ld [hl], e                                    ; $6d70: $73
    add hl, bc                                    ; $6d71: $09
    jp nc, $a813                                  ; $6d72: $d2 $13 $a8

    sub l                                         ; $6d75: $95
    cp b                                          ; $6d76: $b8
    ret                                           ; $6d77: $c9


    adc c                                         ; $6d78: $89
    ld a, [bc]                                    ; $6d79: $0a

jr_037_6d7a:
    dec l                                         ; $6d7a: $2d
    push bc                                       ; $6d7b: $c5
    adc e                                         ; $6d7c: $8b
    cp b                                          ; $6d7d: $b8
    inc b                                         ; $6d7e: $04
    ld c, d                                       ; $6d7f: $4a
    ld d, [hl]                                    ; $6d80: $56
    ld b, d                                       ; $6d81: $42
    ld [c], a                                     ; $6d82: $e2
    or a                                          ; $6d83: $b7
    add $56                                       ; $6d84: $c6 $56
    add a                                         ; $6d86: $87
    set 4, h                                      ; $6d87: $cb $e4
    adc a                                         ; $6d89: $8f
    ld a, [hl]                                    ; $6d8a: $7e
    ld [bc], a                                    ; $6d8b: $02
    inc de                                        ; $6d8c: $13
    xor c                                         ; $6d8d: $a9
    add a                                         ; $6d8e: $87
    db $e4                                        ; $6d8f: $e4
    jp $83a8                                      ; $6d90: $c3 $a8 $83


    add l                                         ; $6d93: $85
    sub d                                         ; $6d94: $92
    dec d                                         ; $6d95: $15
    cp $e3                                        ; $6d96: $fe $e3
    ldh a, [$9e]                                  ; $6d98: $f0 $9e
    dec sp                                        ; $6d9a: $3b
    ld e, h                                       ; $6d9b: $5c
    db $10                                        ; $6d9c: $10
    ld l, [hl]                                    ; $6d9d: $6e
    inc [hl]                                      ; $6d9e: $34
    ld de, $5a91                                  ; $6d9f: $11 $91 $5a
    add [hl]                                      ; $6da2: $86
    ld [hl], h                                    ; $6da3: $74
    sub [hl]                                      ; $6da4: $96
    adc e                                         ; $6da5: $8b
    ld h, [hl]                                    ; $6da6: $66
    ret nc                                        ; $6da7: $d0

    inc hl                                        ; $6da8: $23
    ld h, h                                       ; $6da9: $64
    ld c, b                                       ; $6daa: $48
    ld c, $a3                                     ; $6dab: $0e $a3
    jp $5dbd                                      ; $6dad: $c3 $bd $5d


    cp e                                          ; $6db0: $bb
    ldh [$3a], a                                  ; $6db1: $e0 $3a
    or [hl]                                       ; $6db3: $b6
    ld [hl], e                                    ; $6db4: $73
    bit 0, l                                      ; $6db5: $cb $45
    ld l, c                                       ; $6db7: $69
    push bc                                       ; $6db8: $c5
    or c                                          ; $6db9: $b1
    or a                                          ; $6dba: $b7
    db $eb                                        ; $6dbb: $eb
    jr c, jr_037_6d7a                             ; $6dbc: $38 $bc

    inc sp                                        ; $6dbe: $33
    and $f3                                       ; $6dbf: $e6 $f3
    add [hl]                                      ; $6dc1: $86
    add hl, hl                                    ; $6dc2: $29
    ld [hl], l                                    ; $6dc3: $75
    ldh a, [rTAC]                                 ; $6dc4: $f0 $07
    ld a, l                                       ; $6dc6: $7d
    rra                                           ; $6dc7: $1f
    ld a, [hl-]                                   ; $6dc8: $3a
    jp z, $341e                                   ; $6dc9: $ca $1e $34

    ld [hl], $de                                  ; $6dcc: $36 $de
    ld d, [hl]                                    ; $6dce: $56
    inc e                                         ; $6dcf: $1c
    sbc e                                         ; $6dd0: $9b
    sbc c                                         ; $6dd1: $99
    ld a, [hl]                                    ; $6dd2: $7e
    ld b, h                                       ; $6dd3: $44
    rst $28                                       ; $6dd4: $ef
    cp c                                          ; $6dd5: $b9
    sbc a                                         ; $6dd6: $9f
    ld h, d                                       ; $6dd7: $62
    sub e                                         ; $6dd8: $93
    ccf                                           ; $6dd9: $3f
    and l                                         ; $6dda: $a5
    rst $10                                       ; $6ddb: $d7
    db $dd                                        ; $6ddc: $dd
    sbc $89                                       ; $6ddd: $de $89
    sbc c                                         ; $6ddf: $99
    jr nz, @+$10                                  ; $6de0: $20 $0e

    cp $d2                                        ; $6de2: $fe $d2
    inc e                                         ; $6de4: $1c
    and e                                         ; $6de5: $a3
    cp a                                          ; $6de6: $bf
    add b                                         ; $6de7: $80
    db $eb                                        ; $6de8: $eb
    ld e, b                                       ; $6de9: $58
    ld l, a                                       ; $6dea: $6f
    ld b, a                                       ; $6deb: $47
    ld e, [hl]                                    ; $6dec: $5e
    add a                                         ; $6ded: $87
    rla                                           ; $6dee: $17
    adc $4d                                       ; $6def: $ce $4d
    or [hl]                                       ; $6df1: $b6
    inc e                                         ; $6df2: $1c
    or c                                          ; $6df3: $b1
    xor $dd                                       ; $6df4: $ee $dd
    ld sp, $374e                                  ; $6df6: $31 $4e $37
    ld hl, sp+$03                                 ; $6df9: $f8 $03
    inc l                                         ; $6dfb: $2c
    adc c                                         ; $6dfc: $89
    or l                                          ; $6dfd: $b5
    ld d, h                                       ; $6dfe: $54
    ld a, e                                       ; $6dff: $7b
    dec sp                                        ; $6e00: $3b
    or a                                          ; $6e01: $b7
    ld e, h                                       ; $6e02: $5c
    sub h                                         ; $6e03: $94
    ld c, $69                                     ; $6e04: $0e $69
    ld b, a                                       ; $6e06: $47
    add a                                         ; $6e07: $87
    db $f4                                        ; $6e08: $f4
    jr nz, jr_037_6e2c                            ; $6e09: $20 $21

    ld a, d                                       ; $6e0b: $7a
    adc e                                         ; $6e0c: $8b
    pop hl                                        ; $6e0d: $e1
    sbc $bf                                       ; $6e0e: $de $bf
    xor h                                         ; $6e10: $ac
    ld [hl], a                                    ; $6e11: $77
    ld c, b                                       ; $6e12: $48
    ld c, $a3                                     ; $6e13: $0e $a3
    ccf                                           ; $6e15: $3f
    or $f8                                        ; $6e16: $f6 $f8
    db $fc                                        ; $6e18: $fc
    ld b, c                                       ; $6e19: $41
    sbc c                                         ; $6e1a: $99
    ei                                            ; $6e1b: $fb
    rlca                                          ; $6e1c: $07
    ld e, h                                       ; $6e1d: $5c
    db $ed                                        ; $6e1e: $ed
    db $dd                                        ; $6e1f: $dd
    cp [hl]                                       ; $6e20: $be
    or b                                          ; $6e21: $b0
    db $f4                                        ; $6e22: $f4
    ld h, d                                       ; $6e23: $62
    cp l                                          ; $6e24: $bd
    inc sp                                        ; $6e25: $33
    and $49                                       ; $6e26: $e6 $49
    ld e, a                                       ; $6e28: $5f
    ld c, b                                       ; $6e29: $48
    xor h                                         ; $6e2a: $ac
    and l                                         ; $6e2b: $a5

jr_037_6e2c:
    rst $00                                       ; $6e2c: $c7
    rst $20                                       ; $6e2d: $e7
    rst $08                                       ; $6e2e: $cf
    db $db                                        ; $6e2f: $db
    ld a, e                                       ; $6e30: $7b
    ld c, b                                       ; $6e31: $48
    push de                                       ; $6e32: $d5
    ld h, d                                       ; $6e33: $62
    ld [hl], c                                    ; $6e34: $71
    jr nz, jr_037_6e48                            ; $6e35: $20 $11

    inc l                                         ; $6e37: $2c
    ld h, l                                       ; $6e38: $65
    or h                                          ; $6e39: $b4
    cp $7b                                        ; $6e3a: $fe $7b
    di                                            ; $6e3c: $f3
    and [hl]                                      ; $6e3d: $a6
    sbc l                                         ; $6e3e: $9d
    db $ed                                        ; $6e3f: $ed
    inc hl                                        ; $6e40: $23
    ld d, [hl]                                    ; $6e41: $56
    dec l                                         ; $6e42: $2d
    or $54                                        ; $6e43: $f6 $54
    inc bc                                        ; $6e45: $03
    add hl, de                                    ; $6e46: $19
    ld c, d                                       ; $6e47: $4a

jr_037_6e48:
    jp $a5ac                                      ; $6e48: $c3 $ac $a5


    ret                                           ; $6e4b: $c9


    sub [hl]                                      ; $6e4c: $96
    inc hl                                        ; $6e4d: $23
    sub $45                                       ; $6e4e: $d6 $45
    push bc                                       ; $6e50: $c5
    sbc a                                         ; $6e51: $9f
    ld [hl], a                                    ; $6e52: $77
    ld c, b                                       ; $6e53: $48
    ld c, $73                                     ; $6e54: $0e $73
    add l                                         ; $6e56: $85
    ld sp, hl                                     ; $6e57: $f9
    ld b, e                                       ; $6e58: $43
    xor b                                         ; $6e59: $a8
    ld d, [hl]                                    ; $6e5a: $56
    push de                                       ; $6e5b: $d5
    rra                                           ; $6e5c: $1f
    ld h, a                                       ; $6e5d: $67
    call z, $b301                                 ; $6e5e: $cc $01 $b3
    cp $73                                        ; $6e61: $fe $73
    adc l                                         ; $6e63: $8d
    sub l                                         ; $6e64: $95
    jr nc, @+$81                                  ; $6e65: $30 $7f

    ret nc                                        ; $6e67: $d0

    db $fd                                        ; $6e68: $fd
    db $fc                                        ; $6e69: $fc
    push de                                       ; $6e6a: $d5
    or c                                          ; $6e6b: $b1
    sub [hl]                                      ; $6e6c: $96
    adc [hl]                                      ; $6e6d: $8e
    inc c                                         ; $6e6e: $0c
    db $e4                                        ; $6e6f: $e4
    ld c, a                                       ; $6e70: $4f
    ld l, l                                       ; $6e71: $6d
    sub $af                                       ; $6e72: $d6 $af
    or b                                          ; $6e74: $b0
    sbc c                                         ; $6e75: $99
    ld b, c                                       ; $6e76: $41
    ld a, [hl]                                    ; $6e77: $7e

Jump_037_6e78:
    and $f5                                       ; $6e78: $e6 $f5
    sub [hl]                                      ; $6e7a: $96

Jump_037_6e7b:
    ld a, c                                       ; $6e7b: $79
    pop af                                        ; $6e7c: $f1
    sbc e                                         ; $6e7d: $9b
    or a                                          ; $6e7e: $b7
    ld l, d                                       ; $6e7f: $6a
    ld [hl], l                                    ; $6e80: $75
    rst $00                                       ; $6e81: $c7
    ld h, $08                                     ; $6e82: $26 $08
    cpl                                           ; $6e84: $2f
    ret nc                                        ; $6e85: $d0

    ldh [$cf], a                                  ; $6e86: $e0 $cf
    jp nc, $afb9                                  ; $6e88: $d2 $b9 $af

    and b                                         ; $6e8b: $a0
    ld b, $70                                     ; $6e8c: $06 $70
    jp c, $c379                                   ; $6e8e: $da $79 $c3

    sub h                                         ; $6e91: $94
    ld a, [hl-]                                   ; $6e92: $3a
    ld hl, sp-$7d                                 ; $6e93: $f8 $83
    ld h, d                                       ; $6e95: $62
    xor h                                         ; $6e96: $ac
    xor $3d                                       ; $6e97: $ee $3d
    and h                                         ; $6e99: $a4
    or c                                          ; $6e9a: $b1
    push de                                       ; $6e9b: $d5
    sub [hl]                                      ; $6e9c: $96
    adc $9e                                       ; $6e9d: $ce $9e
    ld hl, sp-$24                                 ; $6e9f: $f8 $dc
    pop bc                                        ; $6ea1: $c1
    ld l, e                                       ; $6ea2: $6b
    res 4, h                                      ; $6ea3: $cb $a4
    ld h, e                                       ; $6ea5: $63
    ldh [$59], a                                  ; $6ea6: $e0 $59
    ld h, d                                       ; $6ea8: $62
    db $d3                                        ; $6ea9: $d3
    inc e                                         ; $6eaa: $1c
    ld [hl], e                                    ; $6eab: $73
    ld e, l                                       ; $6eac: $5d
    ld a, e                                       ; $6ead: $7b
    ld l, $86                                     ; $6eae: $2e $86
    ld e, a                                       ; $6eb0: $5f
    push af                                       ; $6eb1: $f5
    push bc                                       ; $6eb2: $c5
    rst $18                                       ; $6eb3: $df
    sub b                                         ; $6eb4: $90
    inc e                                         ; $6eb5: $1c
    and e                                         ; $6eb6: $a3
    xor a                                         ; $6eb7: $af
    ld b, $42                                     ; $6eb8: $06 $42
    dec l                                         ; $6eba: $2d
    ld e, l                                       ; $6ebb: $5d
    dec h                                         ; $6ebc: $25
    ld a, l                                       ; $6ebd: $7d
    or c                                          ; $6ebe: $b1
    inc sp                                        ; $6ebf: $33
    and $c9                                       ; $6ec0: $e6 $c9
    ld b, c                                       ; $6ec2: $41
    add hl, bc                                    ; $6ec3: $09
    rrca                                          ; $6ec4: $0f
    add hl, de                                    ; $6ec5: $19
    ld [hl-], a                                   ; $6ec6: $32
    inc h                                         ; $6ec7: $24
    rlca                                          ; $6ec8: $07
    and e                                         ; $6ec9: $a3
    ccf                                           ; $6eca: $3f
    or $fe                                        ; $6ecb: $f6 $fe
    and l                                         ; $6ecd: $a5
    ld a, [$8ce3]                                 ; $6ece: $fa $e3 $8c
    add hl, sp                                    ; $6ed1: $39
    ret                                           ; $6ed2: $c9


    sub [hl]                                      ; $6ed3: $96
    inc hl                                        ; $6ed4: $23
    sub $43                                       ; $6ed5: $d6 $43
    sbc d                                         ; $6ed7: $9a
    ld h, h                                       ; $6ed8: $64
    jp hl                                         ; $6ed9: $e9


    call c, $5172                                 ; $6eda: $dc $72 $51
    jp c, $a1f7                                   ; $6edd: $da $f7 $a1

    jr @+$70                                      ; $6ee0: $18 $6e

    ld h, [hl]                                    ; $6ee2: $66
    ld b, d                                       ; $6ee3: $42
    xor l                                         ; $6ee4: $ad
    or $0e                                        ; $6ee5: $f6 $0e
    ret                                           ; $6ee7: $c9


    ld bc, $5fc9                                  ; $6ee8: $01 $c9 $5f
    ld h, h                                       ; $6eeb: $64
    call z, Call_037_5ab9                         ; $6eec: $cc $b9 $5a
    push af                                       ; $6eef: $f5
    ld d, b                                       ; $6ef0: $50
    adc b                                         ; $6ef1: $88
    ld d, b                                       ; $6ef2: $50
    inc c                                         ; $6ef3: $0c
    ld d, a                                       ; $6ef4: $57
    inc c                                         ; $6ef5: $0c
    ldh [rNR33], a                                ; $6ef6: $e0 $1d
    sub d                                         ; $6ef8: $92
    inc bc                                        ; $6ef9: $03
    add hl, bc                                    ; $6efa: $09
    db $fc                                        ; $6efb: $fc
    push af                                       ; $6efc: $f5
    ld a, l                                       ; $6efd: $7d
    sub $d5                                       ; $6efe: $d6 $d5
    pop bc                                        ; $6f00: $c1
    ld e, a                                       ; $6f01: $5f
    inc sp                                        ; $6f02: $33
    set 2, a                                      ; $6f03: $cb $d7
    xor $5e                                       ; $6f05: $ee $5e
    db $fc                                        ; $6f07: $fc
    ld d, l                                       ; $6f08: $55
    call z, $901f                                 ; $6f09: $cc $1f $90
    dec e                                         ; $6f0c: $1d
    db $10                                        ; $6f0d: $10
    ld e, c                                       ; $6f0e: $59
    sbc a                                         ; $6f0f: $9f
    push hl                                       ; $6f10: $e5
    dec hl                                        ; $6f11: $2b
    ld h, h                                       ; $6f12: $64
    ld a, l                                       ; $6f13: $7d
    cp e                                          ; $6f14: $bb
    adc [hl]                                      ; $6f15: $8e
    jp $a43b                                      ; $6f16: $c3 $3b $a4


    daa                                           ; $6f19: $27
    xor b                                         ; $6f1a: $a8
    and e                                         ; $6f1b: $a3
    adc h                                         ; $6f1c: $8c
    sub h                                         ; $6f1d: $94
    call nz, Call_037_7d6f                        ; $6f1e: $c4 $6f $7d
    rra                                           ; $6f21: $1f
    ret nz                                        ; $6f22: $c0

    dec c                                         ; $6f23: $0d
    cp $3a                                        ; $6f24: $fe $3a
    jp nc, $9fd9                                  ; $6f26: $d2 $d9 $9f

    ld a, b                                       ; $6f29: $78
    call nc, $b775                                ; $6f2a: $d4 $75 $b7
    ld c, h                                       ; $6f2d: $4c
    inc a                                         ; $6f2e: $3c
    or a                                          ; $6f2f: $b7
    db $fc                                        ; $6f30: $fc
    cp l                                          ; $6f31: $bd
    sub l                                         ; $6f32: $95
    ld [hl], l                                    ; $6f33: $75
    db $f4                                        ; $6f34: $f4
    ld [$3b49], sp                                ; $6f35: $08 $49 $3b
    sub h                                         ; $6f38: $94
    or l                                          ; $6f39: $b5
    inc [hl]                                      ; $6f3a: $34
    reti                                          ; $6f3b: $d9


    ld [hl], d                                    ; $6f3c: $72
    call nz, $81ba                                ; $6f3d: $c4 $ba $81
    ret nc                                        ; $6f40: $d0

    jr c, @+$10                                   ; $6f41: $38 $0e

    ld c, e                                       ; $6f43: $4b
    rst $30                                       ; $6f44: $f7
    ld [c], a                                     ; $6f45: $e2
    xor a                                         ; $6f46: $af
    ld a, [$4b57]                                 ; $6f47: $fa $57 $4b
    ld l, h                                       ; $6f4a: $6c
    jp c, $d524                                   ; $6f4b: $da $24 $d5

    ld b, e                                       ; $6f4e: $43
    ld hl, $3142                                  ; $6f4f: $21 $42 $31

Jump_037_6f52:
    ld e, h                                       ; $6f52: $5c
    ld sp, $7780                                  ; $6f53: $31 $80 $77
    ld c, b                                       ; $6f56: $48
    ld c, $09                                     ; $6f57: $0e $09
    db $fc                                        ; $6f59: $fc
    push af                                       ; $6f5a: $f5

Jump_037_6f5b:
    ld a, l                                       ; $6f5b: $7d
    sub $d5                                       ; $6f5c: $d6 $d5
    pop bc                                        ; $6f5e: $c1
    ld e, a                                       ; $6f5f: $5f
    inc sp                                        ; $6f60: $33
    set 2, a                                      ; $6f61: $cb $d7
    xor $5e                                       ; $6f63: $ee $5e
    db $fc                                        ; $6f65: $fc
    ld d, l                                       ; $6f66: $55
    call z, $901f                                 ; $6f67: $cc $1f $90

Jump_037_6f6a:
    dec e                                         ; $6f6a: $1d
    db $10                                        ; $6f6b: $10
    ld e, c                                       ; $6f6c: $59
    sbc a                                         ; $6f6d: $9f
    push hl                                       ; $6f6e: $e5
    dec hl                                        ; $6f6f: $2b
    ld h, h                                       ; $6f70: $64
    ld a, l                                       ; $6f71: $7d
    cp e                                          ; $6f72: $bb
    adc [hl]                                      ; $6f73: $8e
    jp $a43b                                      ; $6f74: $c3 $3b $a4


    daa                                           ; $6f77: $27
    xor b                                         ; $6f78: $a8
    and e                                         ; $6f79: $a3
    adc h                                         ; $6f7a: $8c
    sub h                                         ; $6f7b: $94
    call nz, Call_037_7d6f                        ; $6f7c: $c4 $6f $7d
    rra                                           ; $6f7f: $1f
    ret nz                                        ; $6f80: $c0

    dec c                                         ; $6f81: $0d
    cp $ba                                        ; $6f82: $fe $ba
    rla                                           ; $6f84: $17
    ld a, a                                       ; $6f85: $7f
    add a                                         ; $6f86: $87
    sbc a                                         ; $6f87: $9f
    ld [hl], h                                    ; $6f88: $74
    and h                                         ; $6f89: $a4
    or e                                          ; $6f8a: $b3
    ccf                                           ; $6f8b: $3f
    pop af                                        ; $6f8c: $f1
    xor b                                         ; $6f8d: $a8
    db $eb                                        ; $6f8e: $eb
    ld l, [hl]                                    ; $6f8f: $6e
    sbc c                                         ; $6f90: $99
    ld a, b                                       ; $6f91: $78
    ld l, [hl]                                    ; $6f92: $6e
    ld sp, hl                                     ; $6f93: $f9
    ld a, e                                       ; $6f94: $7b
    dec hl                                        ; $6f95: $2b
    db $eb                                        ; $6f96: $eb
    add sp, $11                                   ; $6f97: $e8 $11
    sub d                                         ; $6f99: $92
    halt                                          ; $6f9a: $76
    jr z, @+$6d                                   ; $6f9b: $28 $6b

    xor c                                         ; $6f9d: $a9
    ld d, [hl]                                    ; $6f9e: $56
    dec a                                         ; $6f9f: $3d
    inc d                                         ; $6fa0: $14
    ld [hl+], a                                   ; $6fa1: $22
    inc [hl]                                      ; $6fa2: $34
    reti                                          ; $6fa3: $d9


    ld [hl], d                                    ; $6fa4: $72
    call nz, Call_037_7bba                        ; $6fa5: $c4 $ba $7b
    pop af                                        ; $6fa8: $f1
    ld d, a                                       ; $6fa9: $57
    ld sp, $7780                                  ; $6faa: $31 $80 $77
    ld c, b                                       ; $6fad: $48
    ld c, $c9                                     ; $6fae: $0e $c9
    sub [hl]                                      ; $6fb0: $96
    inc hl                                        ; $6fb1: $23
    sub $43                                       ; $6fb2: $d6 $43
    sbc d                                         ; $6fb4: $9a
    add b                                         ; $6fb5: $80
    ret nc                                        ; $6fb6: $d0

jr_037_6fb7:
    ld c, a                                       ; $6fb7: $4f
    xor c                                         ; $6fb8: $a9
    or c                                          ; $6fb9: $b1
    or c                                          ; $6fba: $b1
    sbc l                                         ; $6fbb: $9d
    ld b, e                                       ; $6fbc: $43
    db $f4                                        ; $6fbd: $f4
    xor d                                         ; $6fbe: $aa
    call $cc66                                    ; $6fbf: $cd $66 $cc
    ld bc, $feb3                                  ; $6fc2: $01 $b3 $fe

Jump_037_6fc5:
    ld [hl], e                                    ; $6fc5: $73
    add e                                         ; $6fc6: $83
    cp a                                          ; $6fc7: $bf
    ld h, [hl]                                    ; $6fc8: $66
    db $f4                                        ; $6fc9: $f4
    dec hl                                        ; $6fca: $2b
    sub $45                                       ; $6fcb: $d6 $45
    cp $ae                                        ; $6fcd: $fe $ae
    ld c, l                                       ; $6fcf: $4d
    ld [hl], e                                    ; $6fd0: $73
    and e                                         ; $6fd1: $a3
    ccf                                           ; $6fd2: $3f
    ld [hl], $10                                  ; $6fd3: $36 $10
    xor d                                         ; $6fd5: $aa
    cp l                                          ; $6fd6: $bd
    db $db                                        ; $6fd7: $db
    add c                                         ; $6fd8: $81
    adc a                                         ; $6fd9: $8f
    jr jr_037_6ff2                                ; $6fda: $18 $16

    ld l, b                                       ; $6fdc: $68
    sbc d                                         ; $6fdd: $9a
    and [hl]                                      ; $6fde: $a6
    cp l                                          ; $6fdf: $bd
    sbc $b9                                       ; $6fe0: $de $b9
    rst $30                                       ; $6fe2: $f7
    sub b                                         ; $6fe3: $90
    ld h, d                                       ; $6fe4: $62
    xor h                                         ; $6fe5: $ac
    xor $a9                                       ; $6fe6: $ee $a9
    cp a                                          ; $6fe8: $bf
    ld [hl], c                                    ; $6fe9: $71
    ld [hl], h                                    ; $6fea: $74
    ld h, h                                       ; $6feb: $64
    and d                                         ; $6fec: $a2

Call_037_6fed:
    and $cf                                       ; $6fed: $e6 $cf
    ld a, e                                       ; $6fef: $7b
    and e                                         ; $6ff0: $a3
    ld d, a                                       ; $6ff1: $57

jr_037_6ff2:
    sbc d                                         ; $6ff2: $9a
    inc bc                                        ; $6ff3: $03
    ret                                           ; $6ff4: $c9


    sbc a                                         ; $6ff5: $9f
    add l                                         ; $6ff6: $85
    add $93                                       ; $6ff7: $c6 $93
    ld l, d                                       ; $6ff9: $6a
    ld [hl], c                                    ; $6ffa: $71
    call nc, $ff70                                ; $6ffb: $d4 $70 $ff
    db $dd                                        ; $6ffe: $dd
    rst $08                                       ; $6fff: $cf
    ld e, a                                       ; $7000: $5f
    or l                                          ; $7001: $b5
    adc a                                         ; $7002: $8f
    adc $2d                                       ; $7003: $ce $2d
    rla                                           ; $7005: $17
    and l                                         ; $7006: $a5
    call $8a8c                                    ; $7007: $cd $8c $8a
    ccf                                           ; $700a: $3f
    sbc b                                         ; $700b: $98
    or c                                          ; $700c: $b1
    add hl, bc                                    ; $700d: $09
    ld c, a                                       ; $700e: $4f
    ld a, d                                       ; $700f: $7a
    dec de                                        ; $7010: $1b
    ld a, e                                       ; $7011: $7b
    rla                                           ; $7012: $17
    ld c, d                                       ; $7013: $4a
    ret z                                         ; $7014: $c8

    push af                                       ; $7015: $f5
    adc d                                         ; $7016: $8a
    adc [hl]                                      ; $7017: $8e
    dec a                                         ; $7018: $3d
    ld d, a                                       ; $7019: $57
    ld a, a                                       ; $701a: $7f
    call nz, $93c6                                ; $701b: $c4 $c6 $93
    xor $c5                                       ; $701e: $ee $c5
    ld e, a                                       ; $7020: $5f
    xor c                                         ; $7021: $a9
    ld e, c                                       ; $7022: $59
    jr jr_037_6fb7                                ; $7023: $18 $92

    inc bc                                        ; $7025: $03
    add hl, bc                                    ; $7026: $09
    db $fc                                        ; $7027: $fc
    sub l                                         ; $7028: $95
    adc l                                         ; $7029: $8d
    xor l                                         ; $702a: $ad
    or $d1                                        ; $702b: $f6 $d1
    cp c                                          ; $702d: $b9
    push hl                                       ; $702e: $e5
    and d                                         ; $702f: $a2
    or h                                          ; $7030: $b4
    sbc a                                         ; $7031: $9f
    ld d, d                                       ; $7032: $52
    rst $00                                       ; $7033: $c7
    cp d                                          ; $7034: $ba
    ei                                            ; $7035: $fb
    ld sp, hl                                     ; $7036: $f9
    bit 1, h                                      ; $7037: $cb $4c
    cp a                                          ; $7039: $bf
    ld [hl+], a                                   ; $703a: $22
    cp h                                          ; $703b: $bc
    ld l, c                                       ; $703c: $69
    sbc e                                         ; $703d: $9b
    ret nz                                        ; $703e: $c0

    ld e, a                                       ; $703f: $5f
    push af                                       ; $7040: $f5
    rst $20                                       ; $7041: $e7
    rrca                                          ; $7042: $0f
    ld a, h                                       ; $7043: $7c
    ld l, [hl]                                    ; $7044: $6e
    ldh a, [$d7]                                  ; $7045: $f0 $d7
    db $db                                        ; $7047: $db
    ret c                                         ; $7048: $d8

    cp e                                          ; $7049: $bb
    ldh [$7e], a                                  ; $704a: $e0 $7e
    ld c, d                                       ; $704c: $4a
    dec e                                         ; $704d: $1d
    db $eb                                        ; $704e: $eb
    ld e, $01                                     ; $704f: $1e $01
    adc l                                         ; $7051: $8d
    ld [hl], a                                    ; $7052: $77
    sub h                                         ; $7053: $94
    or b                                          ; $7054: $b0
    ld b, b                                       ; $7055: $40
    ld h, h                                       ; $7056: $64
    cp l                                          ; $7057: $bd
    ld e, e                                       ; $7058: $5b
    or h                                          ; $7059: $b4
    rst $30                                       ; $705a: $f7
    call c, $83bb                                 ; $705b: $dc $bb $83
    ld [hl], $f8                                  ; $705e: $36 $f8
    db $eb                                        ; $7060: $eb
    and a                                         ; $7061: $a7
    call nc, Call_000_1258                        ; $7062: $d4 $58 $12
    ld l, e                                       ; $7065: $6b
    jp hl                                         ; $7066: $e9


    call c, $5172                                 ; $7067: $dc $72 $51
    ld [$a666], a                                 ; $706a: $ea $66 $a6
    ld b, [hl]                                    ; $706d: $46
    ld l, a                                       ; $706e: $6f
    rst $18                                       ; $706f: $df
    ld h, a                                       ; $7070: $67
    sbc l                                         ; $7071: $9d
    halt                                          ; $7072: $76
    or h                                          ; $7073: $b4
    ld [hl], a                                    ; $7074: $77
    dec sp                                        ; $7075: $3b
    rst $10                                       ; $7076: $d7
    or l                                          ; $7077: $b5
    ld d, l                                       ; $7078: $55
    xor e                                         ; $7079: $ab
    sbc e                                         ; $707a: $9b
    db $fc                                        ; $707b: $fc
    ld b, l                                       ; $707c: $45
    add $f4                                       ; $707d: $c6 $f4
    ld [$bafe], sp                                ; $707f: $08 $fe $ba
    pop bc                                        ; $7082: $c1
    rra                                           ; $7083: $1f
    inc [hl]                                      ; $7084: $34
    inc sp                                        ; $7085: $33
    and c                                         ; $7086: $a1
    ld d, [hl]                                    ; $7087: $56
    ld a, e                                       ; $7088: $7b
    ei                                            ; $7089: $fb
    ld [de], a                                    ; $708a: $12
    ld bc, $e7bc                                  ; $708b: $01 $bc $e7
    sbc $13                                       ; $708e: $de $13
    push bc                                       ; $7090: $c5
    dec c                                         ; $7091: $0d
    cp $7a                                        ; $7092: $fe $7a
    xor d                                         ; $7094: $aa
    add c                                         ; $7095: $81
    inc c                                         ; $7096: $0c
    db $dd                                        ; $7097: $dd
    ldh [rIF], a                                  ; $7098: $e0 $0f
    ld a, d                                       ; $709a: $7a
    ld hl, sp+$49                                 ; $709b: $f8 $49
    rst $38                                       ; $709d: $ff
    pop de                                        ; $709e: $d1
    reti                                          ; $709f: $d9


    call z, $d37a                                 ; $70a0: $cc $7a $d3
    inc e                                         ; $70a3: $1c
    ld b, e                                       ; $70a4: $43
    add hl, hl                                    ; $70a5: $29
    ld e, [hl]                                    ; $70a6: $5e
    dec a                                         ; $70a7: $3d
    inc d                                         ; $70a8: $14
    ld [hl+], a                                   ; $70a9: $22
    ld d, h                                       ; $70aa: $54
    xor e                                         ; $70ab: $ab
    ld a, [hl]                                    ; $70ac: $7e
    push bc                                       ; $70ad: $c5
    ld e, a                                       ; $70ae: $5f
    ld [hl], l                                    ; $70af: $75
    cp b                                          ; $70b0: $b8
    di                                            ; $70b1: $f3
    ld e, d                                       ; $70b2: $5a
    cp $c2                                        ; $70b3: $fe $c2
    db $fd                                        ; $70b5: $fd
    ld [de], a                                    ; $70b6: $12
    ld d, b                                       ; $70b7: $50
    sbc e                                         ; $70b8: $9b
    ld d, l                                       ; $70b9: $55
    ld a, a                                       ; $70ba: $7f
    add d                                         ; $70bb: $82
    inc h                                         ; $70bc: $24
    dec b                                         ; $70bd: $05
    ld sp, hl                                     ; $70be: $f9
    sbc c                                         ; $70bf: $99
    scf                                           ; $70c0: $37
    ld l, l                                       ; $70c1: $6d
    ld [bc], a                                    ; $70c2: $02
    ld a, a                                       ; $70c3: $7f
    cp l                                          ; $70c4: $bd
    ld e, e                                       ; $70c5: $5b
    or h                                          ; $70c6: $b4
    sra b                                         ; $70c7: $cb $28
    ld h, e                                       ; $70c9: $63
    ld [$5622], sp                                ; $70ca: $08 $22 $56
    ld e, a                                       ; $70cd: $5f
    ld d, d                                       ; $70ce: $52
    db $fd                                        ; $70cf: $fd
    add hl, bc                                    ; $70d0: $09
    sub d                                         ; $70d1: $92
    sub h                                         ; $70d2: $94
    jr nz, jr_037_7102                            ; $70d3: $20 $2d

    pop de                                        ; $70d5: $d1
    ld d, c                                       ; $70d6: $51
    ld l, d                                       ; $70d7: $6a
    ld l, a                                       ; $70d8: $6f
    ldh [$7e], a                                  ; $70d9: $e0 $7e
    sub [hl]                                      ; $70db: $96
    inc e                                         ; $70dc: $1c
    ld a, [hl]                                    ; $70dd: $7e
    sbc $b4                                       ; $70de: $de $b4
    or e                                          ; $70e0: $b3
    ld a, [de]                                    ; $70e1: $1a
    ret z                                         ; $70e2: $c8

    ret nc                                        ; $70e3: $d0

    db $e3                                        ; $70e4: $e3
    di                                            ; $70e5: $f3
    rlca                                          ; $70e6: $07
    rst $20                                       ; $70e7: $e7
    ld [$d88f], a                                 ; $70e8: $ea $8f $d8
    ld a, b                                       ; $70eb: $78
    jp nc, $5ad8                                  ; $70ec: $d2 $d8 $5a

    adc c                                         ; $70ef: $89
    dec sp                                        ; $70f0: $3b
    call z, $de00                                 ; $70f1: $cc $00 $de
    sbc $ae                                       ; $70f4: $de $ae
    db $e3                                        ; $70f6: $e3
    add b                                         ; $70f7: $80
    inc [hl]                                      ; $70f8: $34
    rlca                                          ; $70f9: $07
    or e                                          ; $70fa: $b3
    rlca                                          ; $70fb: $07
    ld a, a                                       ; $70fc: $7f
    ret nc                                        ; $70fd: $d0

    pop bc                                        ; $70fe: $c1
    jr nc, jr_037_7176                            ; $70ff: $30 $75

    add a                                         ; $7101: $87

jr_037_7102:
    dec bc                                        ; $7102: $0b
    jp nz, Jump_000_268d                          ; $7103: $c2 $8d $26

    ld [hl+], a                                   ; $7106: $22
    ld d, d                                       ; $7107: $52
    ld c, e                                       ; $7108: $4b
    ld e, a                                       ; $7109: $5f
    ld [hl+], a                                   ; $710a: $22
    add b                                         ; $710b: $80
    or a                                          ; $710c: $b7
    add $1e                                       ; $710d: $c6 $1e
    ld bc, $ac75                                  ; $710f: $01 $75 $ac
    adc a                                         ; $7112: $8f
    ld a, [hl]                                    ; $7113: $7e
    add l                                         ; $7114: $85
    sbc c                                         ; $7115: $99
    rst $28                                       ; $7116: $ef
    sbc a                                         ; $7117: $9f
    ccf                                           ; $7118: $3f
    db $f4                                        ; $7119: $f4
    ld a, d                                       ; $711a: $7a
    dec sp                                        ; $711b: $3b
    call z, $8192                                 ; $711c: $cc $92 $81
    ld e, h                                       ; $711f: $5c
    sub h                                         ; $7120: $94
    or $2b                                        ; $7121: $f6 $2b
    ld h, d                                       ; $7123: $62
    db $fd                                        ; $7124: $fd
    ld c, $6f                                     ; $7125: $0e $6f
    ld l, a                                       ; $7127: $6f
    ld h, e                                       ; $7128: $63
    rst $28                                       ; $7129: $ef
    ld a, d                                       ; $712a: $7a

jr_037_712b:
    db $d3                                        ; $712b: $d3
    ld h, $3c                                     ; $712c: $26 $3c
    ld l, c                                       ; $712e: $69
    and $7b                                       ; $712f: $e6 $7b
    db $ec                                        ; $7131: $ec
    ld b, d                                       ; $7132: $42
    ld e, c                                       ; $7133: $59
    add a                                         ; $7134: $87
    halt                                          ; $7135: $76
    ld c, a                                       ; $7136: $4f
    ld [hl], l                                    ; $7137: $75
    add hl, bc                                    ; $7138: $09
    jp nc, $1d12                                  ; $7139: $d2 $12 $1d

    and l                                         ; $713c: $a5
    or $06                                        ; $713d: $f6 $06
    ld l, $41                                     ; $713f: $2e $41
    sub d                                         ; $7141: $92
    ld [hl-], a                                   ; $7142: $32
    jp z, $8218                                   ; $7143: $ca $18 $82

    adc b                                         ; $7146: $88
    push de                                       ; $7147: $d5
    sub a                                         ; $7148: $97
    and h                                         ; $7149: $a4
    ld l, l                                       ; $714a: $6d
    jp nz, $de93                                  ; $714b: $c2 $93 $de

    add $de                                       ; $714e: $c6 $de
    add l                                         ; $7150: $85
    sbc [hl]                                      ; $7151: $9e
    ld l, d                                       ; $7152: $6a
    jr nz, jr_037_7198                            ; $7153: $20 $43

    inc sp                                        ; $7155: $33
    ccf                                           ; $7156: $3f
    ld l, a                                       ; $7157: $6f
    sbc d                                         ; $7158: $9a
    inc bc                                        ; $7159: $03
    ld c, c                                       ; $715a: $49
    xor d                                         ; $715b: $aa
    rst $28                                       ; $715c: $ef
    inc hl                                        ; $715d: $23
    ld d, h                                       ; $715e: $54
    dec l                                         ; $715f: $2d
    sub $b1                                       ; $7160: $d6 $b1
    xor $48                                       ; $7162: $ee $48
    ld l, a                                       ; $7164: $6f
    and $8e                                       ; $7165: $e6 $8e
    dec hl                                        ; $7167: $2b
    sbc c                                         ; $7168: $99
    and l                                         ; $7169: $a5
    ld d, $1c                                     ; $716a: $16 $1c
    ld hl, sp+$02                                 ; $716c: $f8 $02
    ld l, c                                       ; $716e: $69
    sub e                                         ; $716f: $93
    ld a, $f6                                     ; $7170: $3e $f6
    cp $a5                                        ; $7172: $fe $a5
    add sp, $27                                   ; $7174: $e8 $27

jr_037_7176:
    ld e, l                                       ; $7176: $5d
    inc bc                                        ; $7177: $03
    ld [hl], h                                    ; $7178: $74
    ldh a, [$da]                                  ; $7179: $f0 $da
    ld [$3490], a                                 ; $717b: $ea $90 $34
    rlca                                          ; $717e: $07
    or e                                          ; $717f: $b3
    xor e                                         ; $7180: $ab
    dec a                                         ; $7181: $3d
    scf                                           ; $7182: $37
    sbc [hl]                                      ; $7183: $9e
    db $f4                                        ; $7184: $f4
    ld a, l                                       ; $7185: $7d
    ld d, $7a                                     ; $7186: $16 $7a
    inc b                                         ; $7188: $04
    ld a, a                                       ; $7189: $7f
    call $062c                                    ; $718a: $cd $2c $06
    jr nc, jr_037_712b                            ; $718d: $30 $9c

    ld a, e                                       ; $718f: $7b
    or c                                          ; $7190: $b1
    rst $30                                       ; $7191: $f7
    db $eb                                        ; $7192: $eb
    pop de                                        ; $7193: $d1
    ld b, $7f                                     ; $7194: $06 $7f
    dec a                                         ; $7196: $3d
    add d                                         ; $7197: $82

jr_037_7198:
    cp a                                          ; $7198: $bf
    ld [c], a                                     ; $7199: $e2
    ld d, l                                       ; $719a: $55
    sub [hl]                                      ; $719b: $96
    adc [hl]                                      ; $719c: $8e
    xor l                                         ; $719d: $ad
    bit 7, d                                      ; $719e: $cb $7a
    xor a                                         ; $71a0: $af
    db $e3                                        ; $71a1: $e3
    ldh a, [$f6]                                  ; $71a2: $f0 $f6
    ld a, l                                       ; $71a4: $7d
    sub $69                                       ; $71a5: $d6 $69
    ld c, $a3                                     ; $71a7: $0e $a3
    ld b, e                                       ; $71a9: $43
    adc d                                         ; $71aa: $8a
    rla                                           ; $71ab: $17
    and l                                         ; $71ac: $a5
    ldh [$ed], a                                  ; $71ad: $e0 $ed
    inc l                                         ; $71af: $2c
    ld h, d                                       ; $71b0: $62
    or l                                          ; $71b1: $b5
    jp c, Jump_037_5bbd                           ; $71b2: $da $bd $5b

    or h                                          ; $71b5: $b4
    or a                                          ; $71b6: $b7
    ld l, d                                       ; $71b7: $6a
    ld [hl], l                                    ; $71b8: $75
    push de                                       ; $71b9: $d5
    ld h, d                                       ; $71ba: $62
    inc sp                                        ; $71bb: $33
    ld h, a                                       ; $71bc: $67
    ld e, [hl]                                    ; $71bd: $5e
    ld [hl], h                                    ; $71be: $74
    ld b, b                                       ; $71bf: $40
    ld h, h                                       ; $71c0: $64
    ld a, l                                       ; $71c1: $7d
    and [hl]                                      ; $71c2: $a6
    add h                                         ; $71c3: $84
    scf                                           ; $71c4: $37
    db $ed                                        ; $71c5: $ed
    ld [hl], b                                    ; $71c6: $70
    ld l, h                                       ; $71c7: $6c
    ld d, $2c                                     ; $71c8: $16 $2c
    inc [hl]                                      ; $71ca: $34
    add hl, hl                                    ; $71cb: $29
    ld [hl], $f3                                  ; $71cc: $36 $f3
    cp c                                          ; $71ce: $b9
    ld a, [hl-]                                   ; $71cf: $3a
    ld e, h                                       ; $71d0: $5c
    rst $00                                       ; $71d1: $c7
    ld a, d                                       ; $71d2: $7a
    ld c, e                                       ; $71d3: $4b
    ld d, [hl]                                    ; $71d4: $56
    ld hl, sp-$71                                 ; $71d5: $f8 $8f
    jp $fc8b                                      ; $71d7: $c3 $8b $fc


    db $dd                                        ; $71da: $dd
    dec e                                         ; $71db: $1d
    db $e3                                        ; $71dc: $e3
    ld a, b                                       ; $71dd: $78
    rst $08                                       ; $71de: $cf
    ld d, l                                       ; $71df: $55
    xor e                                         ; $71e0: $ab
    db $eb                                        ; $71e1: $eb
    ld e, b                                       ; $71e2: $58
    ld l, a                                       ; $71e3: $6f
    add a                                         ; $71e4: $87
    ld e, c                                       ; $71e5: $59
    ld [hl-], a                                   ; $71e6: $32
    sub b                                         ; $71e7: $90
    adc e                                         ; $71e8: $8b
    jp nc, Jump_037_5592                          ; $71e9: $d2 $92 $55

    dec l                                         ; $71ec: $2d
    call nc, $b799                                ; $71ed: $d4 $99 $b7
    sbc c                                         ; $71f0: $99
    rst $18                                       ; $71f1: $df
    ret c                                         ; $71f2: $d8

    ld [bc], a                                    ; $71f3: $02
    call $92fe                                    ; $71f4: $cd $fe $92
    adc e                                         ; $71f7: $8b
    pop bc                                        ; $71f8: $c1
    sbc a                                         ; $71f9: $9f
    and l                                         ; $71fa: $a5
    ld a, [$5593]                                 ; $71fb: $fa $93 $55
    sbc d                                         ; $71fe: $9a
    inc bc                                        ; $71ff: $03
    jp Jump_000_0763                              ; $7200: $c3 $63 $07


    dec l                                         ; $7203: $2d
    ld [$b57f], sp                                ; $7204: $08 $7f $b5
    rst $30                                       ; $7207: $f7
    ld e, h                                       ; $7208: $5c
    ld a, [$a111]                                 ; $7209: $fa $11 $a1
    ld l, d                                       ; $720c: $6a
    or c                                          ; $720d: $b1
    or e                                          ; $720e: $b3
    adc b                                         ; $720f: $88
    push de                                       ; $7210: $d5
    ld l, d                                       ; $7211: $6a
    rla                                           ; $7212: $17
    dec e                                         ; $7213: $1d
    dec sp                                        ; $7214: $3b
    inc h                                         ; $7215: $24
    rlca                                          ; $7216: $07
    and e                                         ; $7217: $a3
    ld b, e                                       ; $7218: $43
    ld a, [$0112]                                 ; $7219: $fa $12 $01
    cp h                                          ; $721c: $bc
    dec a                                         ; $721d: $3d
    db $fc                                        ; $721e: $fc
    and h                                         ; $721f: $a4
    ret                                           ; $7220: $c9


    ld e, a                                       ; $7221: $5f
    pop hl                                        ; $7222: $e1
    add b                                         ; $7223: $80
    jp c, $b81b                                   ; $7224: $da $1b $b8

    ld a, [$2413]                                 ; $7227: $fa $13 $24
    add hl, hl                                    ; $722a: $29
    db $eb                                        ; $722b: $eb
    db $db                                        ; $722c: $db
    ld [hl], l                                    ; $722d: $75
    inc e                                         ; $722e: $1c
    sbc $e2                                       ; $722f: $de $e2
    ld b, l                                       ; $7231: $45
    xor c                                         ; $7232: $a9
    scf                                           ; $7233: $37
    call Call_000_0901                            ; $7234: $cd $01 $09
    db $fc                                        ; $7237: $fc
    push af                                       ; $7238: $f5
    ld a, l                                       ; $7239: $7d
    sub $75                                       ; $723a: $d6 $75
    xor h                                         ; $723c: $ac
    sbc e                                         ; $723d: $9b
    and b                                         ; $723e: $a0
    db $ed                                        ; $723f: $ed
    ld [hl], e                                    ; $7240: $73
    rst $28                                       ; $7241: $ef
    ld hl, $8bc5                                  ; $7242: $21 $c5 $8b
    ld d, d                                       ; $7245: $52
    ldh a, [$f6]                                  ; $7246: $f0 $f6
    ld [$f268], sp                                ; $7248: $08 $68 $f2
    rst $08                                       ; $724b: $cf
    inc h                                         ; $724c: $24
    ld [hl], h                                    ; $724d: $74
    ld [hl], c                                    ; $724e: $71
    ld b, b                                       ; $724f: $40
    call z, $379f                                 ; $7250: $cc $9f $37
    db $ed                                        ; $7253: $ed
    ld [hl], b                                    ; $7254: $70
    ld l, c                                       ; $7255: $69
    jr nz, @+$56                                  ; $7256: $20 $54

    ld e, e                                       ; $7258: $5b
    ld a, [hl-]                                   ; $7259: $3a
    ld a, [hl-]                                   ; $725a: $3a
    xor b                                         ; $725b: $a8
    ld a, [hl]                                    ; $725c: $7e
    inc h                                         ; $725d: $24
    or b                                          ; $725e: $b0
    ld d, h                                       ; $725f: $54
    xor l                                         ; $7260: $ad
    xor [hl]                                      ; $7261: $ae
    and l                                         ; $7262: $a5
    ld [hl], a                                    ; $7263: $77
    rst $00                                       ; $7264: $c7

jr_037_7265:
    jr c, jr_037_72dc                             ; $7265: $38 $75

    xor h                                         ; $7267: $ac
    dec sp                                        ; $7268: $3b
    jp nc, $b99b                                  ; $7269: $d2 $9b $b9

    inc h                                         ; $726c: $24
    sub $d2                                       ; $726d: $d6 $d2
    cp c                                          ; $726f: $b9
    jp $b4e2                                      ; $7270: $c3 $e2 $b4


    di                                            ; $7273: $f3
    add [hl]                                      ; $7274: $86
    add hl, hl                                    ; $7275: $29
    ld [hl], l                                    ; $7276: $75
    ldh a, [rTAC]                                 ; $7277: $f0 $07
    cp l                                          ; $7279: $bd
    dec sp                                        ; $727a: $3b
    add $a9                                       ; $727b: $c6 $a9
    and l                                         ; $727d: $a5
    add [hl]                                      ; $727e: $86
    ei                                            ; $727f: $fb
    rst $00                                       ; $7280: $c7
    sub d                                         ; $7281: $92
    ld e, b                                       ; $7282: $58
    ld c, e                                       ; $7283: $4b
    or l                                          ; $7284: $b5
    or a                                          ; $7285: $b7
    ld e, d                                       ; $7286: $5a
    inc e                                         ; $7287: $1c
    or a                                          ; $7288: $b7
    or c                                          ; $7289: $b1
    rlca                                          ; $728a: $07
    adc b                                         ; $728b: $88
    ret z                                         ; $728c: $c8

    cp h                                          ; $728d: $bc
    ld c, l                                       ; $728e: $4d
    ld d, [hl]                                    ; $728f: $56
    xor e                                         ; $7290: $ab
    db $d3                                        ; $7291: $d3
    inc e                                         ; $7292: $1c
    ld c, c                                       ; $7293: $49
    ld e, a                                       ; $7294: $5f
    cp $f6                                        ; $7295: $fe $f6
    ld a, l                                       ; $7297: $7d
    sub $0d                                       ; $7298: $d6 $0d
    cp $ba                                        ; $729a: $fe $ba
    rla                                           ; $729c: $17
    ld a, a                                       ; $729d: $7f
    call Call_037_74be                            ; $729e: $cd $be $74
    add e                                         ; $72a1: $83
    ccf                                           ; $72a2: $3f
    ld l, b                                       ; $72a3: $68
    ld h, [hl]                                    ; $72a4: $66
    db $fd                                        ; $72a5: $fd
    ld sp, hl                                     ; $72a6: $f9
    add e                                         ; $72a7: $83
    or h                                          ; $72a8: $b4
    ld c, h                                       ; $72a9: $4c
    ld d, e                                       ; $72aa: $53
    ld d, $a1                                     ; $72ab: $16 $a1
    ld [hl], a                                    ; $72ad: $77
    rst $28                                       ; $72ae: $ef
    sub $d2                                       ; $72af: $d6 $d2
    dec c                                         ; $72b1: $0d
    cp $00                                        ; $72b2: $fe $00
    ld a, e                                       ; $72b4: $7b
    ld [hl], a                                    ; $72b5: $77
    adc h                                         ; $72b6: $8c
    ld [hl], e                                    ; $72b7: $73
    xor $ed                                       ; $72b8: $ee $ed
    rst $28                                       ; $72ba: $ef
    sub $d2                                       ; $72bb: $d6 $d2
    pop bc                                        ; $72bd: $c1
    jr nc, jr_037_7265                            ; $72be: $30 $a5

    ld c, $fe                                     ; $72c0: $0e $fe
    and b                                         ; $72c2: $a0
    add [hl]                                      ; $72c3: $86
    ei                                            ; $72c4: $fb
    rst $00                                       ; $72c5: $c7
    ld a, $cb                                     ; $72c6: $3e $cb
    ld d, a                                       ; $72c8: $57
    ret z                                         ; $72c9: $c8

    ld a, [$1d76]                                 ; $72ca: $fa $76 $1d
    add a                                         ; $72cd: $87
    scf                                           ; $72ce: $37
    db $ed                                        ; $72cf: $ed
    ld l, h                                       ; $72d0: $6c
    rra                                           ; $72d1: $1f
    ld de, $16aa                                  ; $72d2: $11 $aa $16
    sbc e                                         ; $72d5: $9b
    ld sp, hl                                     ; $72d6: $f9
    ld a, c                                       ; $72d7: $79
    db $d3                                        ; $72d8: $d3
    inc e                                         ; $72d9: $1c
    di                                            ; $72da: $f3
    ld e, d                                       ; $72db: $5a

jr_037_72dc:
    db $f4                                        ; $72dc: $f4
    ccf                                           ; $72dd: $3f
    ld c, $30                                     ; $72de: $0e $30
    halt                                          ; $72e0: $76
    sbc $f0                                       ; $72e1: $de $f0
    dec sp                                        ; $72e3: $3b
    rst $30                                       ; $72e4: $f7
    ld [$8afe], sp                                ; $72e5: $08 $fe $8a
    ld d, a                                       ; $72e8: $57
    ret                                           ; $72e9: $c9


    xor d                                         ; $72ea: $aa
    xor h                                         ; $72eb: $ac
    ld h, e                                       ; $72ec: $63
    inc e                                         ; $72ed: $1c
    ld l, a                                       ; $72ee: $6f
    jp c, $e1d1                                   ; $72ef: $da $d1 $e1

    ld [c], a                                     ; $72f2: $e2
    ld b, l                                       ; $72f3: $45
    ld l, c                                       ; $72f4: $69
    adc a                                         ; $72f5: $8f
    cp a                                          ; $72f6: $bf
    push de                                       ; $72f7: $d5
    sbc $ed                                       ; $72f8: $de $ed
    and a                                         ; $72fa: $a7
    call nc, $e2d5                                ; $72fb: $d4 $d5 $e2
    add sp, -$78                                  ; $72fe: $e8 $88
    or c                                          ; $7300: $b1
    rlca                                          ; $7301: $07
    ld [$2bf7], sp                                ; $7302: $08 $f7 $2b
    and d                                         ; $7305: $a2
    adc [hl]                                      ; $7306: $8e
    dec a                                         ; $7307: $3d
    ld a, $6d                                     ; $7308: $3e $6d
    inc e                                         ; $730a: $1c
    dec e                                         ; $730b: $1d
    ld b, [hl]                                    ; $730c: $46
    add e                                         ; $730d: $83
    rst $18                                       ; $730e: $df
    jp z, Jump_037_7dfa                           ; $730f: $ca $fa $7d

    ld a, [bc]                                    ; $7312: $0a
    sbc $19                                       ; $7313: $de $19
    ld [hl], e                                    ; $7315: $73
    jp $9017                                      ; $7316: $c3 $17 $90


    ccf                                           ; $7319: $3f
    ld b, l                                       ; $731a: $45
    ld [hl], l                                    ; $731b: $75
    ld h, h                                       ; $731c: $64
    ld l, d                                       ; $731d: $6a
    or e                                          ; $731e: $b3
    ld [hl], e                                    ; $731f: $73
    inc bc                                        ; $7320: $03
    and c                                         ; $7321: $a1
    add [hl]                                      ; $7322: $86
    ei                                            ; $7323: $fb
    rst $00                                       ; $7324: $c7
    ld c, $7c                                     ; $7325: $0e $7c
    call nz, $c0b0                                ; $7327: $c4 $b0 $c0
    adc h                                         ; $732a: $8c
    ld h, l                                       ; $732b: $65
    add [hl]                                      ; $732c: $86
    ei                                            ; $732d: $fb
    ld h, d                                       ; $732e: $62
    ld l, a                                       ; $732f: $6f
    sbc $34                                       ; $7330: $de $34
    rlca                                          ; $7332: $07
    call z, $b881                                 ; $7333: $cc $81 $b8
    ld [hl], $2c                                  ; $7336: $36 $2c
    ld [$aad5], sp                                ; $7338: $08 $d5 $aa
    ld b, a                                       ; $733b: $47
    ld c, b                                       ; $733c: $48
    rst $30                                       ; $733d: $f7
    di                                            ; $733e: $f3
    ld [hl], a                                    ; $733f: $77
    xor $a8                                       ; $7340: $ee $a8
    dec bc                                        ; $7342: $0b
    ret nz                                        ; $7343: $c0

    ld [hl-], a                                   ; $7344: $32
    ld h, e                                       ; $7345: $63
    sub e                                         ; $7346: $93
    ld d, h                                       ; $7347: $54
    pop af                                        ; $7348: $f1
    and d                                         ; $7349: $a2
    inc d                                         ; $734a: $14
    adc h                                         ; $734b: $8c
    ld d, b                                       ; $734c: $50
    dec e                                         ; $734d: $1d
    db $fc                                        ; $734e: $fc
    sub l                                         ; $734f: $95
    dec [hl]                                      ; $7350: $35
    and d                                         ; $7351: $a2
    and l                                         ; $7352: $a5
    ld e, a                                       ; $7353: $5f
    ld de, $63e3                                  ; $7354: $11 $e3 $63
    ld h, a                                       ; $7357: $67
    or e                                          ; $7358: $b3
    xor h                                         ; $7359: $ac
    or a                                          ; $735a: $b7
    or a                                          ; $735b: $b7
    ld l, e                                       ; $735c: $6b
    ret                                           ; $735d: $c9


    ld e, [hl]                                    ; $735e: $5e
    sub b                                         ; $735f: $90
    or b                                          ; $7360: $b0
    ld a, b                                       ; $7361: $78
    ei                                            ; $7362: $fb
    rla                                           ; $7363: $17
    pop hl                                        ; $7364: $e1
    inc bc                                        ; $7365: $03
    ld d, h                                       ; $7366: $54

Jump_037_7367:
    rlca                                          ; $7367: $07
    ld a, a                                       ; $7368: $7f
    adc l                                         ; $7369: $8d
    ld l, l                                       ; $736a: $6d
    ld d, d                                       ; $736b: $52
    ld l, h                                       ; $736c: $6c
    and $92                                       ; $736d: $e6 $92
    ld d, l                                       ; $736f: $55
    adc a                                         ; $7370: $8f
    ld b, b                                       ; $7371: $40
    cp $bc                                        ; $7372: $fe $bc
    rst $20                                       ; $7374: $e7
    ld [$7570], a                                 ; $7375: $ea $70 $75
    ldh a, [$d7]                                  ; $7378: $f0 $d7
    dec c                                         ; $737a: $0d
    cp $00                                        ; $737b: $fe $00
    ei                                            ; $737d: $fb
    scf                                           ; $737e: $37
    di                                            ; $737f: $f3
    di                                            ; $7380: $f3
    and [hl]                                      ; $7381: $a6
    add hl, sp                                    ; $7382: $39
    ld c, c                                       ; $7383: $49
    ld [c], a                                     ; $7384: $e2
    add sp, -$78                                  ; $7385: $e8 $88
    or c                                          ; $7387: $b1
    rlca                                          ; $7388: $07
    ld [$d8cf], sp                                ; $7389: $08 $cf $d8
    pop hl                                        ; $738c: $e1
    jp nc, $a1f7                                  ; $738d: $d2 $f7 $a1

    ld a, a                                       ; $7390: $7f
    sbc e                                         ; $7391: $9b
    db $fc                                        ; $7392: $fc
    add hl, hl                                    ; $7393: $29
    cp l                                          ; $7394: $bd
    xor $f6                                       ; $7395: $ee $f6
    halt                                          ; $7397: $76
    ret nc                                        ; $7398: $d0

    add d                                         ; $7399: $82
    adc d                                         ; $739a: $8a
    ccf                                           ; $739b: $3f
    jr c, jr_037_73b5                             ; $739c: $38 $17

    add e                                         ; $739e: $83
    cp a                                          ; $739f: $bf
    cp $ad                                        ; $73a0: $fe $ad
    or $51                                        ; $73a2: $f6 $51
    dec l                                         ; $73a4: $2d
    adc [hl]                                      ; $73a5: $8e
    db $db                                        ; $73a6: $db
    ret c                                         ; $73a7: $d8

    inc bc                                        ; $73a8: $03
    ld b, h                                       ; $73a9: $44
    ld h, h                                       ; $73aa: $64
    sbc $26                                       ; $73ab: $de $26
    xor e                                         ; $73ad: $ab
    push de                                       ; $73ae: $d5
    dec e                                         ; $73af: $1d
    cp h                                          ; $73b0: $bc
    add h                                         ; $73b1: $84
    ld [hl], l                                    ; $73b2: $75
    sub b                                         ; $73b3: $90
    dec d                                         ; $73b4: $15

jr_037_73b5:
    ld a, [c]                                     ; $73b5: $f2
    ld b, a                                       ; $73b6: $47
    dec e                                         ; $73b7: $1d
    db $fc                                        ; $73b8: $fc
    ld a, c                                       ; $73b9: $79
    add a                                         ; $73ba: $87
    ld [hl], h                                    ; $73bb: $74
    sbc [hl]                                      ; $73bc: $9e
    push de                                       ; $73bd: $d5
    ld h, l                                       ; $73be: $65
    adc l                                         ; $73bf: $8d
    db $10                                        ; $73c0: $10
    rst $00                                       ; $73c1: $c7
    ld bc, $1f7d                                  ; $73c2: $01 $7d $1f
    ld l, d                                       ; $73c5: $6a
    jp hl                                         ; $73c6: $e9


    ld d, a                                       ; $73c7: $57
    db $fc                                        ; $73c8: $fc
    ld d, l                                       ; $73c9: $55
    ld a, e                                       ; $73ca: $7b
    dec sp                                        ; $73cb: $3b
    or a                                          ; $73cc: $b7
    ld e, h                                       ; $73cd: $5c
    sub h                                         ; $73ce: $94
    or $59                                        ; $73cf: $f6 $59
    inc e                                         ; $73d1: $1c
    sbc e                                         ; $73d2: $9b
    sbc c                                         ; $73d3: $99
    ld a, [hl]                                    ; $73d4: $7e
    ld b, h                                       ; $73d5: $44
    ld l, a                                       ; $73d6: $6f
    daa                                           ; $73d7: $27
    ld l, $59                                     ; $73d8: $2e $59
    ld c, c                                       ; $73da: $49
    add a                                         ; $73db: $87
    or d                                          ; $73dc: $b2
    call nc, Call_037_537b                        ; $73dd: $d4 $7b $53
    sbc e                                         ; $73e0: $9b
    dec c                                         ; $73e1: $0d
    jp hl                                         ; $73e2: $e9


    ld l, h                                       ; $73e3: $6c
    rra                                           ; $73e4: $1f
    ld de, $16aa                                  ; $73e5: $11 $aa $16
    ld c, e                                       ; $73e8: $4b
    ld d, [hl]                                    ; $73e9: $56
    ld c, l                                       ; $73ea: $4d
    cp $99                                        ; $73eb: $fe $99
    add h                                         ; $73ed: $84
    ld l, [hl]                                    ; $73ee: $6e
    and $e7                                       ; $73ef: $e6 $e7
    dec e                                         ; $73f1: $1d
    sub d                                         ; $73f2: $92
    inc bc                                        ; $73f3: $03
    ret                                           ; $73f4: $c9


    sbc a                                         ; $73f5: $9f
    jp nc, $486b                                  ; $73f6: $d2 $6b $48

    sub e                                         ; $73f9: $93
    ccf                                           ; $73fa: $3f
    db $db                                        ; $73fb: $db
    dec c                                         ; $73fc: $0d
    cp $a0                                        ; $73fd: $fe $a0
    sbc c                                         ; $73ff: $99
    push af                                       ; $7400: $f5
    rst $20                                       ; $7401: $e7
    rrca                                          ; $7402: $0f
    adc $d5                                       ; $7403: $ce $d5
    rra                                           ; $7405: $1f
    or c                                          ; $7406: $b1
    pop af                                        ; $7407: $f1
    and h                                         ; $7408: $a4
    rst $08                                       ; $7409: $cf
    ld a, [bc]                                    ; $740a: $0a
    call c, $9617                                 ; $740b: $dc $17 $96
    ld a, [hl]                                    ; $740e: $7e
    ld b, l                                       ; $740f: $45
    ret nz                                        ; $7410: $c0

    ld d, a                                       ; $7411: $57
    db $fc                                        ; $7412: $fc
    ld b, c                                       ; $7413: $41
    sbc d                                         ; $7414: $9a
    inc bc                                        ; $7415: $03
    call z, Call_000_03fd                         ; $7416: $cc $fd $03
    xor $fb                                       ; $7419: $ee $fb
    ret nc                                        ; $741b: $d0

    ld b, c                                       ; $741c: $41
    dec bc                                        ; $741d: $0b
    ld a, [hl+]                                   ; $741e: $2a
    cp $e0                                        ; $741f: $fe $e0
    call c, $d5bf                                 ; $7421: $dc $bf $d5

Jump_037_7424:
    ld a, $aa                                     ; $7424: $3e $aa
    push bc                                       ; $7426: $c5
    ld [hl], c                                    ; $7427: $71
    dec de                                        ; $7428: $1b
    ld a, e                                       ; $7429: $7b
    add b                                         ; $742a: $80
    adc b                                         ; $742b: $88
    call z, $64db                                 ; $742c: $cc $db $64
    or l                                          ; $742f: $b5
    cp d                                          ; $7430: $ba
    ld [hl], c                                    ; $7431: $71
    ld [hl], h                                    ; $7432: $74
    ret nc                                        ; $7433: $d0

    jp nz, $e05e                                  ; $7434: $c2 $5e $e0

    push af                                       ; $7437: $f5
    halt                                          ; $7438: $76
    call nz, Call_000_1225                        ; $7439: $c4 $25 $12
    ld a, [$0e92]                                 ; $743c: $fa $92 $0e
    ld e, [hl]                                    ; $743f: $5e
    jp nz, $c83a                                  ; $7440: $c2 $3a $c8

    ld [$1d76], a                                 ; $7443: $ea $76 $1d
    add a                                         ; $7446: $87
    scf                                           ; $7447: $37
    db $ed                                        ; $7448: $ed
    ld [hl], b                                    ; $7449: $70
    ld l, c                                       ; $744a: $69
    jr nz, jr_037_7481                            ; $744b: $20 $34

    inc sp                                        ; $744d: $33
    dec de                                        ; $744e: $1b
    adc b                                         ; $744f: $88
    sbc $de                                       ; $7450: $de $de
    cpl                                           ; $7452: $2f
    pop de                                        ; $7453: $d1
    sbc $b4                                       ; $7454: $de $b4
    and e                                         ; $7456: $a3
    ld b, e                                       ; $7457: $43
    sbc d                                         ; $7458: $9a
    pop de                                        ; $7459: $d1
    xor a                                         ; $745a: $af
    ld e, b                                       ; $745b: $58
    rst $28                                       ; $745c: $ef
    cp c                                          ; $745d: $b9
    ld a, [$9623]                                 ; $745e: $fa $23 $96
    cp c                                          ; $7461: $b9
    ld a, a                                       ; $7462: $7f
    ret nz                                        ; $7463: $c0

    dec e                                         ; $7464: $1d
    or h                                          ; $7465: $b4
    and b                                         ; $7466: $a0
    ld [c], a                                     ; $7467: $e2
    rrca                                          ; $7468: $0f
    ld a, [$943e]                                 ; $7469: $fa $3e $94
    xor h                                         ; $746c: $ac
    adc d                                         ; $746d: $8a
    ldh [rBGP], a                                 ; $746e: $e0 $47
    cp l                                          ; $7470: $bd
    rst $20                                       ; $7471: $e7
    sbc $3f                                       ; $7472: $de $3f
    ld [hl], $8e                                  ; $7474: $36 $8e
    jp Jump_037_6d52                              ; $7476: $c3 $52 $6d


    ld l, c                                       ; $7479: $69
    or d                                          ; $747a: $b2
    ld e, d                                       ; $747b: $5a
    db $dd                                        ; $747c: $dd
    xor a                                         ; $747d: $af
    ld hl, sp+$2b                                 ; $747e: $f8 $2b
    db $eb                                        ; $7480: $eb

jr_037_7481:
    ei                                            ; $7481: $fb
    rst $20                                       ; $7482: $e7
    rst $08                                       ; $7483: $cf
    db $db                                        ; $7484: $db
    db $e3                                        ; $7485: $e3
    ld h, a                                       ; $7486: $67
    ld l, c                                       ; $7487: $69
    ld c, $a3                                     ; $7488: $0e $a3
    xor a                                         ; $748a: $af
    ld h, a                                       ; $748b: $67
    jp hl                                         ; $748c: $e9


    dec a                                         ; $748d: $3d
    db $10                                        ; $748e: $10
    and c                                         ; $748f: $a1
    pop af                                        ; $7490: $f1
    and h                                         ; $7491: $a4
    add e                                         ; $7492: $83
    rst $10                                       ; $7493: $d7
    halt                                          ; $7494: $76
    ld d, $aa                                     ; $7495: $16 $aa
    ld [$cc62], sp                                ; $7497: $08 $62 $cc
    cp c                                          ; $749a: $b9
    add a                                         ; $749b: $87
    ld h, e                                       ; $749c: $63
    ld a, l                                       ; $749d: $7d
    ld d, h                                       ; $749e: $54
    adc e                                         ; $749f: $8b
    db $e3                                        ; $74a0: $e3
    ld [hl], $f6                                  ; $74a1: $36 $f6
    nop                                           ; $74a3: $00
    ld de, $b799                                  ; $74a4: $11 $99 $b7
    ret                                           ; $74a7: $c9


    ld l, d                                       ; $74a8: $6a
    push af                                       ; $74a9: $f5
    adc h                                         ; $74aa: $8c
    ld c, l                                       ; $74ab: $4d
    ldh [$af], a                                  ; $74ac: $e0 $af
    rst $28                                       ; $74ae: $ef
    or e                                          ; $74af: $b3
    adc l                                         ; $74b0: $8d
    or a                                          ; $74b1: $b7
    and l                                         ; $74b2: $a5
    ld b, $32                                     ; $74b3: $06 $32
    jr @+$3d                                      ; $74b5: $18 $3b

    db $eb                                        ; $74b7: $eb
    ld a, a                                       ; $74b8: $7f
    jp nc, $b0af                                  ; $74b9: $d2 $af $b0

    adc h                                         ; $74bc: $8c
    ld [de], a                                    ; $74bd: $12

Call_037_74be:
    and $cf                                       ; $74be: $e6 $cf
    ld c, e                                       ; $74c0: $4b
    rst $38                                       ; $74c1: $ff
    ld [$011e], a                                 ; $74c2: $ea $1e $01
    sbc c                                         ; $74c5: $99
    ld e, c                                       ; $74c6: $59
    ld sp, hl                                     ; $74c7: $f9
    db $fc                                        ; $74c8: $fc
    ld b, c                                       ; $74c9: $41
    push de                                       ; $74ca: $d5
    ld [$dbc6], a                                 ; $74cb: $ea $c6 $db
    ld h, $a9                                     ; $74ce: $26 $a9
    add e                                         ; $74d0: $83
    and l                                         ; $74d1: $a5
    sub $97                                       ; $74d2: $d6 $97
    cp b                                          ; $74d4: $b8
    sbc c                                         ; $74d5: $99
    inc sp                                        ; $74d6: $33
    or e                                          ; $74d7: $b3
    sbc $73                                       ; $74d8: $de $73
    ccf                                           ; $74da: $3f
    push bc                                       ; $74db: $c5
    adc [hl]                                      ; $74dc: $8e
    cp $fc                                        ; $74dd: $fe $fc
    dec a                                         ; $74df: $3d
    or l                                          ; $74e0: $b5
    cp d                                          ; $74e1: $ba
    ld l, c                                       ; $74e2: $69
    sbc d                                         ; $74e3: $9a
    or $1d                                        ; $74e4: $f6 $1d
    rst $20                                       ; $74e6: $e7
    ld b, $42                                     ; $74e7: $06 $42
    ld c, a                                       ; $74e9: $4f
    db $fd                                        ; $74ea: $fd
    db $fd                                        ; $74eb: $fd
    adc d                                         ; $74ec: $8a
    cp a                                          ; $74ed: $bf
    ld a, [hl-]                                   ; $74ee: $3a
    ei                                            ; $74ef: $fb
    inc [hl]                                      ; $74f0: $34
    call $a301                                    ; $74f1: $cd $01 $a3
    ccf                                           ; $74f4: $3f
    ld d, $2f                                     ; $74f5: $16 $2f
    ld c, d                                       ; $74f7: $4a
    ld l, e                                       ; $74f8: $6b
    xor c                                         ; $74f9: $a9
    or $6e                                        ; $74fa: $f6 $6e
    ld e, c                                       ; $74fc: $59
    rst $18                                       ; $74fd: $df
    ccf                                           ; $74fe: $3f
    ld a, a                                       ; $74ff: $7f
    sbc $19                                       ; $7500: $de $19
    ld [hl], e                                    ; $7502: $73
    inc hl                                        ; $7503: $23
    inc bc                                        ; $7504: $03
    ld sp, hl                                     ; $7505: $f9
    add e                                         ; $7506: $83
    ld e, d                                       ; $7507: $5a
    pop af                                        ; $7508: $f1
    rst $10                                       ; $7509: $d7
    dec c                                         ; $750a: $0d
    cp $a0                                        ; $750b: $fe $a0
    or c                                          ; $750d: $b1
    ld c, l                                       ; $750e: $4d
    adc d                                         ; $750f: $8a
    call $ae7c                                    ; $7510: $cd $7c $ae
    ld c, $d7                                     ; $7513: $0e $d7
    adc d                                         ; $7515: $8a
    cp a                                          ; $7516: $bf
    ld l, [hl]                                    ; $7517: $6e
    sbc h                                         ; $7518: $9c
    sbc $bf                                       ; $7519: $de $bf
    sbc c                                         ; $751b: $99
    sbc a                                         ; $751c: $9f
    scf                                           ; $751d: $37
    db $ed                                        ; $751e: $ed
    cp h                                          ; $751f: $bc
    sub [hl]                                      ; $7520: $96
    call z, $5088                                 ; $7521: $cc $88 $50
    dec e                                         ; $7524: $1d
    ld b, [hl]                                    ; $7525: $46
    ld l, a                                       ; $7526: $6f
    sub e                                         ; $7527: $93
    push de                                       ; $7528: $d5
    ld [$d5aa], a                                 ; $7529: $ea $aa $d5
    push de                                       ; $752c: $d5
    rra                                           ; $752d: $1f
    rst $08                                       ; $752e: $cf
    cp l                                          ; $752f: $bd
    ld a, a                                       ; $7530: $7f
    xor h                                         ; $7531: $ac
    and l                                         ; $7532: $a5
    xor h                                         ; $7533: $ac
    rst $28                                       ; $7534: $ef
    sbc a                                         ; $7535: $9f
    ccf                                           ; $7536: $3f
    ld c, b                                       ; $7537: $48
    sbc e                                         ; $7538: $9b
    db $f4                                        ; $7539: $f4
    or c                                          ; $753a: $b1
    add c                                         ; $753b: $81
    ld d, b                                       ; $753c: $50
    rst $00                                       ; $753d: $c7
    cp d                                          ; $753e: $ba
    call z, $9fcf                                 ; $753f: $cc $cf $9f
    ld c, e                                       ; $7542: $4b
    cp [hl]                                       ; $7543: $be
    rlca                                          ; $7544: $07
    ld a, [c]                                     ; $7545: $f2
    rst $20                                       ; $7546: $e7
    ld l, l                                       ; $7547: $6d
    sub d                                         ; $7548: $92
    ld a, [hl-]                                   ; $7549: $3a
    ld e, b                                       ; $754a: $58
    ld l, d                                       ; $754b: $6a
    ld a, l                                       ; $754c: $7d
    adc c                                         ; $754d: $89
    xor e                                         ; $754e: $ab
    ld d, [hl]                                    ; $754f: $56
    ld [hl], a                                    ; $7550: $77
    or $e0                                        ; $7551: $f6 $e0
    rla                                           ; $7553: $17
    db $fd                                        ; $7554: $fd
    ret c                                         ; $7555: $d8

    ld e, c                                       ; $7556: $59
    add sp, $3f                                   ; $7557: $e8 $3f
    ld c, h                                       ; $7559: $4c
    db $d3                                        ; $755a: $d3
    inc e                                         ; $755b: $1c
    ld b, e                                       ; $755c: $43
    rst $18                                       ; $755d: $df
    ccf                                           ; $755e: $3f
    rst $30                                       ; $755f: $f7
    ld d, e                                       ; $7560: $53
    cp h                                          ; $7561: $bc
    ld a, [$f43e]                                 ; $7562: $fa $3e $f4
    dec hl                                        ; $7565: $2b
    cp $3a                                        ; $7566: $fe $3a
    ld a, e                                       ; $7568: $7b
    ldh a, [$8b]                                  ; $7569: $f0 $8b
    ld a, [hl]                                    ; $756b: $7e
    db $ec                                        ; $756c: $ec
    inc l                                         ; $756d: $2c
    db $f4                                        ; $756e: $f4
    rra                                           ; $756f: $1f
    and [hl]                                      ; $7570: $a6
    push de                                       ; $7571: $d5
    rst $38                                       ; $7572: $ff
    ld [$fde8], sp                                ; $7573: $08 $e8 $fd
    ld h, e                                       ; $7576: $63
    ret                                           ; $7577: $c9


    xor d                                         ; $7578: $aa
    and b                                         ; $7579: $a0
    ld [hl], $cd                                  ; $757a: $36 $cd
    ld bc, $fc09                                  ; $757c: $01 $09 $fc

Call_037_757f:
    dec d                                         ; $757f: $15
    ld a, a                                       ; $7580: $7f
    sub $8d                                       ; $7581: $d6 $8d
    db $d3                                        ; $7583: $d3
    ld a, e                                       ; $7584: $7b
    ld hl, sp-$37                                 ; $7585: $f8 $c9
    sub b                                         ; $7587: $90
    inc e                                         ; $7588: $1c
    and e                                         ; $7589: $a3
    ld b, e                                       ; $758a: $43
    ld a, d                                       ; $758b: $7a
    sub b                                         ; $758c: $90
    db $10                                        ; $758d: $10
    cp l                                          ; $758e: $bd
    ld c, l                                       ; $758f: $4d
    or [hl]                                       ; $7590: $b6
    inc e                                         ; $7591: $1c
    or c                                          ; $7592: $b1
    xor [hl]                                      ; $7593: $ae
    sub [hl]                                      ; $7594: $96
    ret c                                         ; $7595: $d8

    call z, $4bab                                 ; $7596: $cc $ab $4b
    call nz, $ef6a                                ; $7599: $c4 $6a $ef
    cp c                                          ; $759c: $b9
    ret                                           ; $759d: $c9


    ld e, a                                       ; $759e: $5f
    ld h, h                                       ; $759f: $64
    ld c, h                                       ; $75a0: $4c
    ld e, d                                       ; $75a1: $5a
    ld h, [hl]                                    ; $75a2: $66
    cp b                                          ; $75a3: $b8
    add a                                         ; $75a4: $87
    ld b, d                                       ; $75a5: $42

jr_037_75a6:
    ld l, h                                       ; $75a6: $6c
    ld c, b                                       ; $75a7: $48
    and $d5                                       ; $75a8: $e6 $d5
    rst $30                                       ; $75aa: $f7
    xor e                                         ; $75ab: $ab
    ld [hl], c                                    ; $75ac: $71
    call nc, $e082                                ; $75ad: $d4 $82 $e0
    dec l                                         ; $75b0: $2d
    inc de                                        ; $75b1: $13
    ld l, $7e                                     ; $75b2: $2e $7e
    dec hl                                        ; $75b4: $2b
    ld a, [hl-]                                   ; $75b5: $3a
    halt                                          ; $75b6: $76
    ld c, b                                       ; $75b7: $48
    ld c, $23                                     ; $75b8: $0e $23
    dec h                                         ; $75ba: $25
    db $ed                                        ; $75bb: $ed

Jump_037_75bc:
    inc l                                         ; $75bc: $2c
    ld b, c                                       ; $75bd: $41
    ld sp, hl                                     ; $75be: $f9
    db $eb                                        ; $75bf: $eb
    ei                                            ; $75c0: $fb
    ld d, b                                       ; $75c1: $50
    dec hl                                        ; $75c2: $2b
    cp $1a                                        ; $75c3: $fe $1a
    ld b, a                                       ; $75c5: $47
    add a                                         ; $75c6: $87
    ld [hl+], a                                   ; $75c7: $22
    ret z                                         ; $75c8: $c8

    or l                                          ; $75c9: $b5
    rst $10                                       ; $75ca: $d7
    ld de, $789e                                  ; $75cb: $11 $9e $78
    ld l, [hl]                                    ; $75ce: $6e
    dec h                                         ; $75cf: $25
    ld b, a                                       ; $75d0: $47
    inc sp                                        ; $75d1: $33
    inc de                                        ; $75d2: $13
    ld l, d                                       ; $75d3: $6a
    or l                                          ; $75d4: $b5
    ld [hl], a                                    ; $75d5: $77
    ld c, b                                       ; $75d6: $48
    ld c, $c9                                     ; $75d7: $0e $c9
    ld e, a                                       ; $75d9: $5f
    ld h, h                                       ; $75da: $64

Jump_037_75db:
    call z, $2690                                 ; $75db: $cc $90 $26
    ldh a, [$d7]                                  ; $75de: $f0 $d7
    rst $30                                       ; $75e0: $f7
    ld e, c                                       ; $75e1: $59
    ld [hl], a                                    ; $75e2: $77
    ret nc                                        ; $75e3: $d0

    add d                                         ; $75e4: $82
    adc d                                         ; $75e5: $8a
    ccf                                           ; $75e6: $3f
    jr c, jr_037_7640                             ; $75e7: $38 $57

    rlca                                          ; $75e9: $07
    ld a, a                                       ; $75ea: $7f
    dec h                                         ; $75eb: $25
    xor e                                         ; $75ec: $ab
    sbc $bf                                       ; $75ed: $de $bf
    xor h                                         ; $75ef: $ac
    scf                                           ; $75f0: $37
    db $ed                                        ; $75f1: $ed
    ret z                                         ; $75f2: $c8

    ld c, a                                       ; $75f3: $4f
    adc c                                         ; $75f4: $89
    ld l, e                                       ; $75f5: $6b
    ld c, h                                       ; $75f6: $4c
    rst $18                                       ; $75f7: $df
    add a                                         ; $75f8: $87
    ld e, d                                       ; $75f9: $5a
    ret z                                         ; $75fa: $c8

    adc c                                         ; $75fb: $89
    adc a                                         ; $75fc: $8f
    jp nz, Jump_037_5ab9                          ; $75fd: $c2 $b9 $5a

jr_037_7600:
    push af                                       ; $7600: $f5
    dec h                                         ; $7601: $25
    ld [bc], a                                    ; $7602: $02
    jr jr_037_75a6                                ; $7603: $18 $a1

    adc [hl]                                      ; $7605: $8e
    push af                                       ; $7606: $f5
    ld [hl], $49                                  ; $7607: $36 $49
    ld a, $7f                                     ; $7609: $3e $7f
    ld l, c                                       ; $760b: $69
    sbc d                                         ; $760c: $9a
    and $a3                                       ; $760d: $e6 $a3
    db $10                                        ; $760f: $10
    add [hl]                                      ; $7610: $86
    db $e4                                        ; $7611: $e4
    ld c, c                                       ; $7612: $49
    xor d                                         ; $7613: $aa
    rst $28                                       ; $7614: $ef
    inc hl                                        ; $7615: $23
    ld [hl], h                                    ; $7616: $74
    db $e4                                        ; $7617: $e4
    and a                                         ; $7618: $a7
    call nz, $a635                                ; $7619: $c4 $35 $a6
    adc [hl]                                      ; $761c: $8e
    ld [hl], l                                    ; $761d: $75
    add hl, de                                    ; $761e: $19
    adc l                                         ; $761f: $8d
    db $fc                                        ; $7620: $fc
    dec b                                         ; $7621: $05
    ld a, a                                       ; $7622: $7f
    ldh [rNR34], a                                ; $7623: $e0 $1e

Jump_037_7625:
    ld bc, $ac75                                  ; $7625: $01 $75 $ac
    adc a                                         ; $7628: $8f
    ld h, $c9                                     ; $7629: $26 $c9
    rst $20                                       ; $762b: $e7
    rst $08                                       ; $762c: $cf
    ld e, e                                       ; $762d: $5b
    dec bc                                        ; $762e: $0b
    add hl, sp                                    ; $762f: $39
    pop af                                        ; $7630: $f1
    ld d, c                                       ; $7631: $51
    jr c, jr_037_768b                             ; $7632: $38 $57

    rst $38                                       ; $7634: $ff
    inc hl                                        ; $7635: $23
    and b                                         ; $7636: $a0
    sub [hl]                                      ; $7637: $96
    ld h, d                                       ; $7638: $62
    ldh a, [$d7]                                  ; $7639: $f0 $d7
    xor a                                         ; $763b: $af
    adc b                                         ; $763c: $88
    ld [$9970], a                                 ; $763d: $ea $70 $99

jr_037_7640:
    adc d                                         ; $7640: $8a
    ccf                                           ; $7641: $3f
    rst $30                                       ; $7642: $f7
    ld hl, sp-$04                                 ; $7643: $f8 $fc
    ld b, c                                       ; $7645: $41
    push de                                       ; $7646: $d5
    ld [$96c6], a                                 ; $7647: $ea $c6 $96
    ret                                           ; $764a: $c9


    rst $18                                       ; $764b: $df
    dec a                                         ; $764c: $3d
    inc l                                         ; $764d: $2c
    sub c                                         ; $764e: $91
    db $dd                                        ; $764f: $dd
    inc e                                         ; $7650: $1c

jr_037_7651:
    ldh [$6d], a                                  ; $7651: $e0 $6d
    ld h, [hl]                                    ; $7653: $66
    ld c, c                                       ; $7654: $49
    add h                                         ; $7655: $84
    or h                                          ; $7656: $b4
    add hl, bc                                    ; $7657: $09
    db $fc                                        ; $7658: $fc
    push af                                       ; $7659: $f5
    ld a, l                                       ; $765a: $7d
    sub $8d                                       ; $765b: $d6 $8d
    or a                                          ; $765d: $b7
    ld h, l                                       ; $765e: $65
    dec l                                         ; $765f: $2d
    ld c, $c0                                     ; $7660: $0e $c0
    ld e, d                                       ; $7662: $5a
    xor $81                                       ; $7663: $ee $81
    db $fc                                        ; $7665: $fc
    ld b, c                                       ; $7666: $41
    jp c, Jump_000_3dd9                           ; $7667: $da $d9 $3d

    jr jr_037_7600                                ; $766a: $18 $94

    cp d                                          ; $766c: $ba
    rst $28                                       ; $766d: $ef
    ld b, e                                       ; $766e: $43
    adc l                                         ; $766f: $8d
    db $fd                                        ; $7670: $fd
    adc d                                         ; $7671: $8a
    cp a                                          ; $7672: $bf
    ld h, [hl]                                    ; $7673: $66
    adc $e8                                       ; $7674: $ce $e8
    ld d, a                                       ; $7676: $57
    inc l                                         ; $7677: $2c
    ld d, h                                       ; $7678: $54
    xor l                                         ; $7679: $ad
    ld l, [hl]                                    ; $767a: $6e
    jr nz, jr_037_7651                            ; $767b: $20 $d4

    xor h                                         ; $767d: $ac
    sub a                                         ; $767e: $97
    ld hl, sp-$6c                                 ; $767f: $f8 $94
    ld h, d                                       ; $7681: $62
    cp a                                          ; $7682: $bf
    ld [hl+], a                                   ; $7683: $22
    ld [hl-], a                                   ; $7684: $32
    inc hl                                        ; $7685: $23
    db $fc                                        ; $7686: $fc
    push de                                       ; $7687: $d5
    sbc $34                                       ; $7688: $de $34
    rlca                                          ; $768a: $07

jr_037_768b:
    ld b, e                                       ; $768b: $43
    ld e, c                                       ; $768c: $59
    ld c, e                                       ; $768d: $4b
    db $d3                                        ; $768e: $d3
    inc [hl]                                      ; $768f: $34
    call Call_000_0901                            ; $7690: $cd $01 $09
    ld c, a                                       ; $7693: $4f
    jp z, $76fa                                   ; $7694: $ca $fa $76

    dec e                                         ; $7697: $1d
    rlca                                          ; $7698: $07
    db $f4                                        ; $7699: $f4
    ld d, e                                       ; $769a: $53

Jump_037_769b:
    ld [$716a], a                                 ; $769b: $ea $6a $71
    call nc, Call_000_2eb1                        ; $769e: $d4 $b1 $2e
    inc de                                        ; $76a1: $13
    db $e4                                        ; $76a2: $e4
    inc de                                        ; $76a3: $13
    xor [hl]                                      ; $76a4: $ae
    ld e, d                                       ; $76a5: $5a
    ld e, l                                       ; $76a6: $5d
    add d                                         ; $76a7: $82
    or h                                          ; $76a8: $b4
    inc b                                         ; $76a9: $04
    add hl, sp                                    ; $76aa: $39
    or d                                          ; $76ab: $b2
    ld [hl-], a                                   ; $76ac: $32
    ld b, c                                       ; $76ad: $41
    ld a, $31                                     ; $76ae: $3e $31
    and b                                         ; $76b0: $a0
    or $06                                        ; $76b1: $f6 $06
    ld l, $41                                     ; $76b3: $2e $41
    sub d                                         ; $76b5: $92
    ld h, $7f                                     ; $76b6: $26 $7f
    add l                                         ; $76b8: $85
    ld h, l                                       ; $76b9: $65
    sub h                                         ; $76ba: $94
    ld sp, $1104                                  ; $76bb: $31 $04 $11
    xor e                                         ; $76be: $ab
    cpl                                           ; $76bf: $2f
    ld l, c                                       ; $76c0: $69
    sbc d                                         ; $76c1: $9a
    and [hl]                                      ; $76c2: $a6
    dec h                                         ; $76c3: $25
    ld c, b                                       ; $76c4: $48
    ld c, e                                       ; $76c5: $4b
    sub b                                         ; $76c6: $90
    inc hl                                        ; $76c7: $23
    dec hl                                        ; $76c8: $2b
    inc de                                        ; $76c9: $13
    db $e4                                        ; $76ca: $e4
    inc de                                        ; $76cb: $13
    inc bc                                        ; $76cc: $03
    ld l, d                                       ; $76cd: $6a
    ld l, a                                       ; $76ce: $6f
    ldh [rNR12], a                                ; $76cf: $e0 $12
    inc h                                         ; $76d1: $24
    jp hl                                         ; $76d2: $e9


    xor c                                         ; $76d3: $a9
    sub $de                                       ; $76d4: $d6 $de
    ld hl, $b339                                  ; $76d6: $21 $39 $b3
    sub b                                         ; $76d9: $90
    sub [hl]                                      ; $76da: $96
    jr nz, jr_037_7724                            ; $76db: $20 $47

    ld d, [hl]                                    ; $76dd: $56
    add d                                         ; $76de: $82
    inc h                                         ; $76df: $24
    dec a                                         ; $76e0: $3d
    push de                                       ; $76e1: $d5
    jp c, Jump_037_633b                           ; $76e2: $da $3b $63

    ld c, $c3                                     ; $76e5: $0e $c3
    sub l                                         ; $76e7: $95
    cp b                                          ; $76e8: $b8
    ld c, h                                       ; $76e9: $4c
    sub b                                         ; $76ea: $90
    ld c, a                                       ; $76eb: $4f
    cp b                                          ; $76ec: $b8
    xor h                                         ; $76ed: $ac
    or e                                          ; $76ee: $b3
    ret c                                         ; $76ef: $d8

    add l                                         ; $76f0: $85
    ld e, $97                                     ; $76f1: $1e $97
    ld h, h                                       ; $76f3: $64
    sbc $0e                                       ; $76f4: $de $0e
    ld h, l                                       ; $76f6: $65
    cp l                                          ; $76f7: $bd
    cp d                                          ; $76f8: $ba
    ld [$29a8], a                                 ; $76f9: $ea $a8 $29
    pop de                                        ; $76fc: $d1
    ld a, c                                       ; $76fd: $79
    sbc [hl]                                      ; $76fe: $9e
    and h                                         ; $76ff: $a4
    dec e                                         ; $7700: $1d
    add hl, hl                                    ; $7701: $29
    ld l, c                                       ; $7702: $69
    ld h, a                                       ; $7703: $67
    add hl, bc                                    ; $7704: $09
    jp z, $ef5f                                   ; $7705: $ca $5f $ef

    ld hl, $ffba                                  ; $7708: $21 $ba $ff
    ld l, b                                       ; $770b: $68
    ld a, [c]                                     ; $770c: $f2
    ld d, a                                       ; $770d: $57
    inc bc                                        ; $770e: $03
    ldh [$d8], a                                  ; $770f: $e0 $d8
    db $ec                                        ; $7711: $ec
    ld l, a                                       ; $7712: $6f
    sub $af                                       ; $7713: $d6 $af
    adc b                                         ; $7715: $88
    ld e, d                                       ; $7716: $5a
    pop af                                        ; $7717: $f1
    rst $10                                       ; $7718: $d7
    ei                                            ; $7719: $fb
    rla                                           ; $771a: $17
    ldh a, [$a6]                                  ; $771b: $f0 $a6
    ld h, l                                       ; $771d: $65
    db $f4                                        ; $771e: $f4
    add e                                         ; $771f: $83
    sbc [hl]                                      ; $7720: $9e
    ld l, d                                       ; $7721: $6a
    jr nz, jr_037_7767                            ; $7722: $20 $43

jr_037_7724:
    rst $28                                       ; $7724: $ef
    ld h, c                                       ; $7725: $61
    ld l, l                                       ; $7726: $6d
    add hl, hl                                    ; $7727: $29
    ld e, c                                       ; $7728: $59
    add hl, bc                                    ; $7729: $09
    adc c                                         ; $772a: $89
    rst $18                                       ; $772b: $df
    ld a, [de]                                    ; $772c: $1a
    adc e                                         ; $772d: $8b
    dec e                                         ; $772e: $1d
    ld h, [hl]                                    ; $772f: $66
    add b                                         ; $7730: $80
    ld [hl], e                                    ; $7731: $73
    ccf                                           ; $7732: $3f
    and l                                         ; $7733: $a5
    ld c, [hl]                                    ; $7734: $4e
    sbc e                                         ; $7735: $9b
    ret nz                                        ; $7736: $c0

    ld e, a                                       ; $7737: $5f
    rst $18                                       ; $7738: $df
    ld h, a                                       ; $7739: $67
    db $dd                                        ; $773a: $dd
    inc hl                                        ; $773b: $23
    ld hl, sp-$15                                 ; $773c: $f8 $eb
    ld e, [hl]                                    ; $773e: $5e
    db $fc                                        ; $773f: $fc
    ld [hl], l                                    ; $7740: $75
    jp $96d5                                      ; $7741: $c3 $d5 $96


    db $e3                                        ; $7744: $e3
    adc a                                         ; $7745: $8f
    db $e3                                        ; $7746: $e3
    dec l                                         ; $7747: $2d
    ld b, c                                       ; $7748: $41
    sub d                                         ; $7749: $92
    ld [hl-], a                                   ; $774a: $32
    ld sp, hl                                     ; $774b: $f9
    inc hl                                        ; $774c: $23
    ld d, c                                       ; $774d: $51
    ld c, e                                       ; $774e: $4b
    rlca                                          ; $774f: $07
    xor a                                         ; $7750: $af
    dec l                                         ; $7751: $2d
    and e                                         ; $7752: $a3
    adc h                                         ; $7753: $8c
    ld hl, $5888                                  ; $7754: $21 $88 $58
    ld a, l                                       ; $7757: $7d
    ld c, c                                       ; $7758: $49
    inc sp                                        ; $7759: $33
    inc hl                                        ; $775a: $23
    ld a, a                                       ; $775b: $7f
    adc c                                         ; $775c: $89
    rlca                                          ; $775d: $07
    and h                                         ; $775e: $a4
    add hl, sp                                    ; $775f: $39
    ld c, c                                       ; $7760: $49
    rra                                           ; $7761: $1f
    dec de                                        ; $7762: $1b
    ld [$96d5], sp                                ; $7763: $08 $d5 $96
    ld [hl+], a                                   ; $7766: $22

jr_037_7767:
    ld a, a                                       ; $7767: $7f
    inc [hl]                                      ; $7768: $34
    adc [hl]                                      ; $7769: $8e
    inc bc                                        ; $776a: $03
    pop bc                                        ; $776b: $c1
    sbc l                                         ; $776c: $9d
    ei                                            ; $776d: $fb
    ld h, a                                       ; $776e: $67
    adc l                                         ; $776f: $8d
    db $ed                                        ; $7770: $ed
    pop hl                                        ; $7771: $e1
    ld e, b                                       ; $7772: $58
    rra                                           ; $7773: $1f
    call $92fe                                    ; $7774: $cd $fe $92
    cp l                                          ; $7777: $bd
    sbc l                                         ; $7778: $9d
    call Call_000_37ac                            ; $7779: $cd $ac $37

Jump_037_777c:
    db $ed                                        ; $777c: $ed
    xor h                                         ; $777d: $ac
    sub $96                                       ; $777e: $d6 $96
    sbc $1d                                       ; $7780: $de $1d
    db $e3                                        ; $7782: $e3
    sbc h                                         ; $7783: $9c
    xor e                                         ; $7784: $ab
    ccf                                           ; $7785: $3f
    ld h, d                                       ; $7786: $62
    rst $28                                       ; $7787: $ef
    ld hl, $ec75                                  ; $7788: $21 $75 $ec
    ld d, e                                       ; $778b: $53
    xor e                                         ; $778c: $ab
    dec l                                         ; $778d: $2d
    ld b, b                                       ; $778e: $40
    sub b                                         ; $778f: $90
    sub [hl]                                      ; $7790: $96
    jr nz, @+$49                                  ; $7791: $20 $47

    sub $51                                       ; $7793: $d6 $51
    ld l, d                                       ; $7795: $6a
    ld l, a                                       ; $7796: $6f
    ldh [$0e], a                                  ; $7797: $e0 $0e
    ld e, d                                       ; $7799: $5a
    add sp, $25                                   ; $779a: $e8 $25
    sbc $be                                       ; $779c: $de $be
    rst $08                                       ; $779e: $cf
    ld a, d                                       ; $779f: $7a
    db $d3                                        ; $77a0: $d3
    inc e                                         ; $77a1: $1c
    call z, $fb2b                                 ; $77a2: $cc $2b $fb
    ld d, d                                       ; $77a5: $52
    dec e                                         ; $77a6: $1d
    ld l, [hl]                                    ; $77a7: $6e
    or d                                          ; $77a8: $b2
    ld [hl+], a                                   ; $77a9: $22
    ld [$01ea], sp                                ; $77aa: $08 $ea $01
    ld b, l                                       ; $77ad: $45
    db $10                                        ; $77ae: $10
    ld e, b                                       ; $77af: $58
    or l                                          ; $77b0: $b5
    cp d                                          ; $77b1: $ba
    ld [hl], e                                    ; $77b2: $73
    db $fd                                        ; $77b3: $fd
    ld b, c                                       ; $77b4: $41
    cpl                                           ; $77b5: $2f
    and a                                         ; $77b6: $a7
    rst $38                                       ; $77b7: $ff
    adc [hl]                                      ; $77b8: $8e

Jump_037_77b9:
    cp l                                          ; $77b9: $bd
    ld e, e                                       ; $77ba: $5b
    or h                                          ; $77bb: $b4
    or a                                          ; $77bc: $b7
    ld hl, sp-$6b                                 ; $77bd: $f8 $95

Jump_037_77bf:
    and l                                         ; $77bf: $a5
    ld e, a                                       ; $77c0: $5f
    ld de, $8b55                                  ; $77c1: $11 $55 $8b
    ld b, l                                       ; $77c4: $45
    rst $00                                       ; $77c5: $c7
    and [hl]                                      ; $77c6: $a6
    ld h, l                                       ; $77c7: $65
    add [hl]                                      ; $77c8: $86
    ei                                            ; $77c9: $fb
    ld a, $eb                                     ; $77ca: $3e $eb
    ld l, l                                       ; $77cc: $6d
    and $77                                       ; $77cd: $e6 $77
    ld de, $9c04                                  ; $77cf: $11 $04 $9c
    xor e                                         ; $77d2: $ab
    ccf                                           ; $77d3: $3f
    ld h, d                                       ; $77d4: $62
    rst $28                                       ; $77d5: $ef
    ld hl, $d265                                  ; $77d6: $21 $65 $d2
    ld sp, $2cf0                                  ; $77d9: $31 $f0 $2c
    or c                                          ; $77dc: $b1
    ld b, l                                       ; $77dd: $45
    cp $e8                                        ; $77de: $fe $e8
    rst $08                                       ; $77e0: $cf
    cp h                                          ; $77e1: $bc
    ld d, l                                       ; $77e2: $55
    xor e                                         ; $77e3: $ab
    xor e                                         ; $77e4: $ab
    cp l                                          ; $77e5: $bd
    ld c, l                                       ; $77e6: $4d
    cp $0a                                        ; $77e7: $fe $0a
    rlca                                          ; $77e9: $07
    xor [hl]                                      ; $77ea: $ae
    db $db                                        ; $77eb: $db
    and a                                         ; $77ec: $a7
    ld h, l                                       ; $77ed: $65
    ld a, l                                       ; $77ee: $7d
    cp e                                          ; $77ef: $bb
    adc [hl]                                      ; $77f0: $8e
    jp Jump_000_3bdb                              ; $77f1: $c3 $db $3b


    ld c, c                                       ; $77f4: $49
    or h                                          ; $77f5: $b4
    scf                                           ; $77f6: $37
    db $ed                                        ; $77f7: $ed
    add sp, -$70                                  ; $77f8: $e8 $90
    and d                                         ; $77fa: $a2
    sbc a                                         ; $77fb: $9f
    or a                                          ; $77fc: $b7
    ld l, d                                       ; $77fd: $6a
    or c                                          ; $77fe: $b1
    ld l, d                                       ; $77ff: $6a
    pop bc                                        ; $7800: $c1
    sbc e                                         ; $7801: $9b
    and $b3                                       ; $7802: $e6 $b3
    dec sp                                        ; $7804: $3b
    or $dc                                        ; $7805: $f6 $dc
    ld [hl], l                                    ; $7807: $75
    db $ec                                        ; $7808: $ec
    cp c                                          ; $7809: $b9
    dec de                                        ; $780a: $1b
    db $fc                                        ; $780b: $fc
    ld b, c                                       ; $780c: $41
    sub c                                         ; $780d: $91
    cp a                                          ; $780e: $bf
    ld l, e                                       ; $780f: $6b
    ld a, e                                       ; $7810: $7b
    rrca                                          ; $7811: $0f
    ld l, e                                       ; $7812: $6b
    res 7, c                                      ; $7813: $cb $b9
    ld l, h                                       ; $7815: $6c
    nop                                           ; $7816: $00
    cp b                                          ; $7817: $b8
    ld l, c                                       ; $7818: $69
    sbc d                                         ; $7819: $9a
    and $49                                       ; $781a: $e6 $49
    rra                                           ; $781c: $1f
    ei                                            ; $781d: $fb
    add $16                                       ; $781e: $c6 $16
    jr z, jr_037_7828                             ; $7820: $28 $06

    ld a, a                                       ; $7822: $7f
    db $dd                                        ; $7823: $dd
    rst $08                                       ; $7824: $cf
    ld e, a                                       ; $7825: $5f
    rst $20                                       ; $7826: $e7
    ld d, h                                       ; $7827: $54

jr_037_7828:
    ld hl, $4a62                                  ; $7828: $21 $62 $4a
    ei                                            ; $782b: $fb
    scf                                           ; $782c: $37
    call $2301                                    ; $782d: $cd $01 $23
    sub l                                         ; $7830: $95
    inc e                                         ; $7831: $1c
    and [hl]                                      ; $7832: $a6
    rst $20                                       ; $7833: $e7
    ld e, $4a                                     ; $7834: $1e $4a
    ld c, $d3                                     ; $7836: $0e $d3
    ld [hl], e                                    ; $7838: $73
    inc sp                                        ; $7839: $33

Call_037_783a:
    sub c                                         ; $783a: $91
    inc [hl]                                      ; $783b: $34
    rlca                                          ; $783c: $07
    add hl, bc                                    ; $783d: $09
    ld [$f53d], sp                                ; $783e: $08 $3d $f5
    rla                                           ; $7841: $17
    ld sp, hl                                     ; $7842: $f9
    cp e                                          ; $7843: $bb
    or [hl]                                       ; $7844: $b6
    sbc c                                         ; $7845: $99
    add d                                         ; $7846: $82
    ld [hl], e                                    ; $7847: $73
    inc bc                                        ; $7848: $03
    and c                                         ; $7849: $a1
    and a                                         ; $784a: $a7
    cp $22                                        ; $784b: $fe $22
    ld a, a                                       ; $784d: $7f
    rst $10                                       ; $784e: $d7
    ld [hl], $53                                  ; $784f: $36 $53
    ld [hl], b                                    ; $7851: $70
    ld l, [hl]                                    ; $7852: $6e
    ldh a, [$57]                                  ; $7853: $f0 $57
    db $fc                                        ; $7855: $fc
    sbc c                                         ; $7856: $99
    ei                                            ; $7857: $fb
    add hl, hl                                    ; $7858: $29
    dec [hl]                                      ; $7859: $35
    ld [hl], $4d                                  ; $785a: $36 $4d
    db $d3                                        ; $785c: $d3
    inc e                                         ; $785d: $1c
    and e                                         ; $785e: $a3
    db $10                                        ; $785f: $10
    adc $4d                                       ; $7860: $ce $4d
    or [hl]                                       ; $7862: $b6
    inc e                                         ; $7863: $1c
    or c                                          ; $7864: $b1
    ld a, $37                                     ; $7865: $3e $37
    ld hl, sp-$15                                 ; $7867: $f8 $eb
    ei                                            ; $7869: $fb
    xor h                                         ; $786a: $ac
    sbc e                                         ; $786b: $9b
    ld sp, hl                                     ; $786c: $f9
    adc l                                         ; $786d: $8d
    dec l                                         ; $786e: $2d
    ld [hl], b                                    ; $786f: $70
    xor $3d                                       ; $7870: $ee $3d
    call c, Call_037_5539                         ; $7872: $dc $39 $55
    adc b                                         ; $7875: $88
    sbc b                                         ; $7876: $98
    jp nc, $011e                                  ; $7877: $d2 $1e $01

    dec a                                         ; $787a: $3d
    push de                                       ; $787b: $d5
    rst $00                                       ; $787c: $c7
    ld e, a                                       ; $787d: $5f
    db $ed                                        ; $787e: $ed
    and e                                         ; $787f: $a3
    sbc c                                         ; $7880: $99
    ld [hl], c                                    ; $7881: $71

jr_037_7882:
    ld b, b                                       ; $7882: $40
    ld l, $fe                                     ; $7883: $2e $fe
    cp h                                          ; $7885: $bc
    ld a, l                                       ; $7886: $7d
    rra                                           ; $7887: $1f
    jp nc, $970e                                  ; $7888: $d2 $0e $97

    ld [hl+], a                                   ; $788b: $22
    ld a, a                                       ; $788c: $7f
    pop hl                                        ; $788d: $e1
    db $ed                                        ; $788e: $ed
    ret nc                                        ; $788f: $d0

    call Call_037_4a10                            ; $7890: $cd $10 $4a
    ld d, [hl]                                    ; $7893: $56
    ld a, l                                       ; $7894: $7d
    sbc a                                         ; $7895: $9f
    push af                                       ; $7896: $f5
    and [hl]                                      ; $7897: $a6
    add hl, sp                                    ; $7898: $39
    jp $f7b1                                      ; $7899: $c3 $b1 $f7


    cpl                                           ; $789c: $2f
    ld h, l                                       ; $789d: $65
    adc l                                         ; $789e: $8d
    db $10                                        ; $789f: $10
    rst $00                                       ; $78a0: $c7
    ld bc, $87bd                                  ; $78a1: $01 $bd $87
    or l                                          ; $78a4: $b5
    and l                                         ; $78a5: $a5
    call z, Call_000_03fd                         ; $78a6: $cc $fd $03
    ld e, $92                                     ; $78a9: $1e $92
    inc bc                                        ; $78ab: $03
    add hl, bc                                    ; $78ac: $09
    db $fc                                        ; $78ad: $fc
    dec [hl]                                      ; $78ae: $35
    and e                                         ; $78af: $a3
    ld e, a                                       ; $78b0: $5f
    or c                                          ; $78b1: $b1
    ld a, $d7                                     ; $78b2: $3e $d7
    jp nc, $887b                                  ; $78b4: $d2 $7b $88

    ld l, $73                                     ; $78b7: $2e $73
    rst $38                                       ; $78b9: $ff
    add b                                         ; $78ba: $80
    dec sp                                        ; $78bb: $3b
    ld l, b                                       ; $78bc: $68
    sub c                                         ; $78bd: $91
    rrca                                          ; $78be: $0f
    sbc $73                                       ; $78bf: $de $73
    rst $28                                       ; $78c1: $ef
    pop hl                                        ; $78c2: $e1
    ld e, $7f                                     ; $78c3: $1e $7f
    ei                                            ; $78c5: $fb
    or a                                          ; $78c6: $b7
    jp c, $265b                                   ; $78c7: $da $5b $26

    jr c, jr_037_7882                             ; $78ca: $38 $b6

    or a                                          ; $78cc: $b7
    db $eb                                        ; $78cd: $eb
    jr c, @+$62                                   ; $78ce: $38 $60

    ld c, b                                       ; $78d0: $48
    ld c, $a3                                     ; $78d1: $0e $a3
    ld b, e                                       ; $78d3: $43
    ld a, d                                       ; $78d4: $7a
    sub b                                         ; $78d5: $90
    db $10                                        ; $78d6: $10
    cp l                                          ; $78d7: $bd
    dec h                                         ; $78d8: $25
    xor e                                         ; $78d9: $ab
    ld h, $a9                                     ; $78da: $26 $a9
    add e                                         ; $78dc: $83
    and l                                         ; $78dd: $a5
    sub $97                                       ; $78de: $d6 $97
    cp b                                          ; $78e0: $b8
    sbc c                                         ; $78e1: $99
    sbc a                                         ; $78e2: $9f
    scf                                           ; $78e3: $37
    ld l, l                                       ; $78e4: $6d
    jp nc, $bec7                                  ; $78e5: $d2 $c7 $be

    ld b, h                                       ; $78e8: $44
    nop                                           ; $78e9: $00
    ld l, a                                       ; $78ea: $6f
    rst $28                                       ; $78eb: $ef
    ld hl, $fe45                                  ; $78ec: $21 $45 $fe
    xor [hl]                                      ; $78ef: $ae
    dec l                                         ; $78f0: $2d
    ld c, l                                       ; $78f1: $4d
    call c, $a10c                                 ; $78f2: $dc $0c $a1
    and b                                         ; $78f5: $a0
    or [hl]                                       ; $78f6: $b6
    ld a, b                                       ; $78f7: $78
    ld d, c                                       ; $78f8: $51
    ld [$734d], a                                 ; $78f9: $ea $4d $73
    ld b, e                                       ; $78fc: $43
    ld e, c                                       ; $78fd: $59
    ld c, e                                       ; $78fe: $4b
    rst $28                                       ; $78ff: $ef
    ld hl, $9f7d                                  ; $7900: $21 $7d $9f
    push af                                       ; $7903: $f5
    or $e6                                        ; $7904: $f6 $e6
    ld e, b                                       ; $7906: $58
    ld [hl], a                                    ; $7907: $77
    sbc b                                         ; $7908: $98
    rst $28                                       ; $7909: $ef
    ld c, $f4                                     ; $790a: $0e $f4
    sub b                                         ; $790c: $90
    adc $b3                                       ; $790d: $ce $b3
    cp d                                          ; $790f: $ba
    adc [hl]                                      ; $7910: $8e
    call z, $340b                                 ; $7911: $cc $0b $34
    ld hl, sp-$55                                 ; $7914: $f8 $ab
    ld h, $09                                     ; $7916: $26 $09
    ld bc, $dede                                  ; $7918: $01 $de $de
    ld b, e                                       ; $791b: $43
    ld a, d                                       ; $791c: $7a
    ld [$f66f], a                                 ; $791d: $ea $6f $f6
    and l                                         ; $7920: $a5
    dec de                                        ; $7921: $1b
    db $fc                                        ; $7922: $fc
    ld bc, $c496                                  ; $7923: $01 $96 $c4
    ld e, d                                       ; $7926: $5a
    xor d                                         ; $7927: $aa
    cp l                                          ; $7928: $bd
    ld h, l                                       ; $7929: $65
    add d                                         ; $792a: $82
    ld h, e                                       ; $792b: $63
    xor e                                         ; $792c: $ab
    ld d, [hl]                                    ; $792d: $56
    ld [hl], a                                    ; $792e: $77
    ld d, $aa                                     ; $792f: $16 $aa
    ld [$4c62], sp                                ; $7931: $08 $62 $4c
    rst $28                                       ; $7934: $ef
    add c                                         ; $7935: $81
    add sp, $4d                                   ; $7936: $e8 $4d
    ld [hl], e                                    ; $7938: $73

jr_037_7939:
    or e                                          ; $7939: $b3
    ld e, h                                       ; $793a: $5c
    inc [hl]                                      ; $793b: $34
    add e                                         ; $793c: $83
    ld e, $21                                     ; $793d: $1e $21
    ld l, c                                       ; $793f: $69
    inc de                                        ; $7940: $13
    ld hl, sp-$15                                 ; $7941: $f8 $eb
    db $dd                                        ; $7943: $dd
    nop                                           ; $7944: $00
    ld a, $37                                     ; $7945: $3e $37
    sbc [hl]                                      ; $7947: $9e
    sub h                                         ; $7948: $94
    call nz, $a85a                                ; $7949: $c4 $5a $a8
    inc sp                                        ; $794c: $33
    xor b                                         ; $794d: $a8
    or c                                          ; $794e: $b1
    ld d, [hl]                                    ; $794f: $56
    db $fc                                        ; $7950: $fc
    ld d, l                                       ; $7951: $55
    ei                                            ; $7952: $fb
    ret c                                         ; $7953: $d8

    ld b, h                                       ; $7954: $44
    cp $10                                        ; $7955: $fe $10
    ld c, d                                       ; $7957: $4a
    cp [hl]                                       ; $7958: $be
    dec sp                                        ; $7959: $3b
    adc [hl]                                      ; $795a: $8e
    ld c, a                                       ; $795b: $4f
    rst $08                                       ; $795c: $cf
    ld h, l                                       ; $795d: $65
    dec a                                         ; $795e: $3d
    ld a, b                                       ; $795f: $78
    ld c, c                                       ; $7960: $49
    db $e3                                        ; $7961: $e3
    ld c, c                                       ; $7962: $49
    dec e                                         ; $7963: $1d
    db $eb                                        ; $7964: $eb
    ld [hl-], a                                   ; $7965: $32
    ld sp, hl                                     ; $7966: $f9
    ld d, e                                       ; $7967: $53
    ld [hl], h                                    ; $7968: $74
    ldh a, [rNR12]                                ; $7969: $f0 $12
    db $e4                                        ; $796b: $e4
    ld c, a                                       ; $796c: $4f
    add d                                         ; $796d: $82
    add b                                         ; $796e: $80
    or d                                          ; $796f: $b2
    ld h, d                                       ; $7970: $62
    cp $e0                                        ; $7971: $fe $e0
    call c, $fe0d                                 ; $7973: $dc $0d $fe
    and b                                         ; $7976: $a0
    rst $30                                       ; $7977: $f7
    rst $38                                       ; $7978: $ff
    ld h, h                                       ; $7979: $64
    add $1c                                       ; $797a: $c6 $1c
    and e                                         ; $797c: $a3
    ld b, e                                       ; $797d: $43
    ld l, [hl]                                    ; $797e: $6e
    inc [hl]                                      ; $797f: $34
    ld hl, sp+$2b                                 ; $7980: $f8 $2b
    ld a, [c]                                     ; $7982: $f2
    rst $30                                       ; $7983: $f7
    or l                                          ; $7984: $b5
    rst $08                                       ; $7985: $cf
    push de                                       ; $7986: $d5
    rra                                           ; $7987: $1f
    or c                                          ; $7988: $b1
    jr jr_037_7939                                ; $7989: $18 $ae

    ld c, $f7                                     ; $798b: $0e $f7
    ld d, e                                       ; $798d: $53
    ldh a, [$96]                                  ; $798e: $f0 $96
    add hl, bc                                    ; $7990: $09
    ld a, [c]                                     ; $7991: $f2
    add hl, bc                                    ; $7992: $09
    ld l, a                                       ; $7993: $6f
    scf                                           ; $7994: $37
    ld hl, sp-$7d                                 ; $7995: $f8 $83
    ld e, $7e                                     ; $7997: $1e $7e
    jp nc, Jump_037_77bf                          ; $7999: $d2 $bf $77

    xor a                                         ; $799c: $af
    or $a6                                        ; $799d: $f6 $a6
    ld c, l                                       ; $799f: $4d
    ldh [$af], a                                  ; $79a0: $e0 $af
    rst $28                                       ; $79a2: $ef
    or e                                          ; $79a3: $b3
    xor $5e                                       ; $79a4: $ee $5e
    db $fc                                        ; $79a6: $fc
    push de                                       ; $79a7: $d5
    or c                                          ; $79a8: $b1
    dec e                                         ; $79a9: $1d
    ld hl, sp+$5f                                 ; $79aa: $f8 $5f
    ld a, [hl-]                                   ; $79ac: $3a
    jp nz, $de00                                  ; $79ad: $c2 $00 $de

    add $f6                                       ; $79b0: $c6 $f6
    ld [hl], b                                    ; $79b2: $70
    xor h                                         ; $79b3: $ac
    adc a                                         ; $79b4: $8f
    ld c, $23                                     ; $79b5: $0e $23
    ret                                           ; $79b7: $c9


    sub l                                         ; $79b8: $95
    and $a3                                       ; $79b9: $e6 $a3
    cp a                                          ; $79bb: $bf
    add b                                         ; $79bc: $80

Call_037_79bd:
    and c                                         ; $79bd: $a1
    cpl                                           ; $79be: $2f
    inc l                                         ; $79bf: $2c
    db $fd                                        ; $79c0: $fd
    adc d                                         ; $79c1: $8a
    ld l, b                                       ; $79c2: $68
    ld a, [c]                                     ; $79c3: $f2
    rst $08                                       ; $79c4: $cf
    inc h                                         ; $79c5: $24
    ld [hl], h                                    ; $79c6: $74
    jp c, Jump_037_5679                           ; $79c7: $da $79 $56

    sub a                                         ; $79ca: $97
    ld a, [hl]                                    ; $79cb: $7e
    ld b, l                                       ; $79cc: $45
    ld b, b                                       ; $79cd: $40
    ld e, c                                       ; $79ce: $59
    ld a, d                                       ; $79cf: $7a
    adc l                                         ; $79d0: $8d
    db $d3                                        ; $79d1: $d3

Jump_037_79d2:
    dec c                                         ; $79d2: $0d
    cp $a0                                        ; $79d3: $fe $a0
    ld [hl], a                                    ; $79d5: $77
    ld h, a                                       ; $79d6: $67
    ld l, c                                       ; $79d7: $69
    sub e                                         ; $79d8: $93
    cp $11                                        ; $79d9: $fe $11
    ret nc                                        ; $79db: $d0

    dec sp                                        ; $79dc: $3b
    ld c, c                                       ; $79dd: $49
    or h                                          ; $79de: $b4
    and c                                         ; $79df: $a1

jr_037_79e0:
    pop af                                        ; $79e0: $f1
    and h                                         ; $79e1: $a4
    sbc a                                         ; $79e2: $9f
    ld d, d                                       ; $79e3: $52
    ld h, e                                       ; $79e4: $63
    ld d, a                                       ; $79e5: $57
    ld c, c                                       ; $79e6: $49
    rst $30                                       ; $79e7: $f7
    ld [c], a                                     ; $79e8: $e2
    xor a                                         ; $79e9: $af
    ret z                                         ; $79ea: $c8

    rra                                           ; $79eb: $1f
    adc l                                         ; $79ec: $8d
    db $e3                                        ; $79ed: $e3
    or b                                          ; $79ee: $b0
    db $f4                                        ; $79ef: $f4
    ld hl, sp-$04                                 ; $79f0: $f8 $fc
    ld a, c                                       ; $79f2: $79
    db $d3                                        ; $79f3: $d3
    inc e                                         ; $79f4: $1c
    or e                                          ; $79f5: $b3
    adc a                                         ; $79f6: $8f
    rst $38                                       ; $79f7: $ff
    ld e, c                                       ; $79f8: $59
    xor a                                         ; $79f9: $af
    ld c, [hl]                                    ; $79fa: $4e
    dec sp                                        ; $79fb: $3b

Call_037_79fc:
    call z, $80e2                                 ; $79fc: $cc $e2 $80
    ld [hl], e                                    ; $79ff: $73
    push de                                       ; $7a00: $d5
    pop de                                        ; $7a01: $d1
    ret c                                         ; $7a02: $d8

    ld l, d                                       ; $7a03: $6a
    ld l, a                                       ; $7a04: $6f
    ld b, a                                       ; $7a05: $47
    ld a, a                                       ; $7a06: $7f
    xor d                                         ; $7a07: $aa
    ld c, e                                       ; $7a08: $4b
    ld d, [hl]                                    ; $7a09: $56
    call $bcfc                                    ; $7a0a: $cd $fc $bc
    inc sp                                        ; $7a0d: $33
    and $09                                       ; $7a0e: $e6 $09
    db $fc                                        ; $7a10: $fc
    dec [hl]                                      ; $7a11: $35
    di                                            ; $7a12: $f3
    ld [hl], e                                    ; $7a13: $73
    scf                                           ; $7a14: $37
    ld hl, sp-$7d                                 ; $7a15: $f8 $83
    add $56                                       ; $7a17: $c6 $56
    add a                                         ; $7a19: $87
    pop de                                        ; $7a1a: $d1
    db $db                                        ; $7a1b: $db
    pop de                                        ; $7a1c: $d1
    sbc a                                         ; $7a1d: $9f
    ld [$3921], a                                 ; $7a1e: $ea $21 $39
    ld c, c                                       ; $7a21: $49
    xor d                                         ; $7a22: $aa
    add a                                         ; $7a23: $87
    ld b, d                                       ; $7a24: $42
    add h                                         ; $7a25: $84
    ld [hl], e                                    ; $7a26: $73
    rst $28                                       ; $7a27: $ef
    sbc $ad                                       ; $7a28: $de $ad
    ld d, [hl]                                    ; $7a2a: $56
    adc l                                         ; $7a2b: $8d
    ld l, l                                       ; $7a2c: $6d
    ld a, [c]                                     ; $7a2d: $f2
    sub l                                         ; $7a2e: $95
    db $dd                                        ; $7a2f: $dd
    cp a                                          ; $7a30: $bf
    nop                                           ; $7a31: $00
    sub [hl]                                      ; $7a32: $96
    and l                                         ; $7a33: $a5
    ld c, $d6                                     ; $7a34: $0e $d6
    db $db                                        ; $7a36: $db
    ld a, e                                       ; $7a37: $7b
    ld d, b                                       ; $7a38: $50
    adc d                                         ; $7a39: $8a
    jr nc, jr_037_79e0                            ; $7a3a: $30 $a4

    ld h, l                                       ; $7a3c: $65
    ld a, [$8f41]                                 ; $7a3d: $fa $41 $8f
    ld c, a                                       ; $7a40: $4f
    rst $08                                       ; $7a41: $cf
    push de                                       ; $7a42: $d5
    rra                                           ; $7a43: $1f
    adc e                                         ; $7a44: $8b
    ld b, c                                       ; $7a45: $41
    ld e, c                                       ; $7a46: $59
    adc c                                         ; $7a47: $89
    call z, $c13d                                 ; $7a48: $cc $3d $c1
    ld a, [hl+]                                   ; $7a4b: $2a
    db $eb                                        ; $7a4c: $eb
    dec bc                                        ; $7a4d: $0b
    ld c, e                                       ; $7a4e: $4b
    cp a                                          ; $7a4f: $bf
    ld [hl+], a                                   ; $7a50: $22
    xor d                                         ; $7a51: $aa
    ld a, l                                       ; $7a52: $7d
    ld [hl], h                                    ; $7a53: $74
    ret c                                         ; $7a54: $d8

    and l                                         ; $7a55: $a5
    cp l                                          ; $7a56: $bd
    dec c                                         ; $7a57: $0d
    add h                                         ; $7a58: $84
    ld c, $8f                                     ; $7a59: $0e $8f
    ld a, l                                       ; $7a5b: $7d
    sub a                                         ; $7a5c: $97
    inc l                                         ; $7a5d: $2c
    ld c, e                                       ; $7a5e: $4b
    dec d                                         ; $7a5f: $15
    and h                                         ; $7a60: $a4
    ld c, l                                       ; $7a61: $4d
    sub b                                         ; $7a62: $90
    call z, $efab                                 ; $7a63: $cc $ab $ef
    ld d, a                                       ; $7a66: $57
    inc bc                                        ; $7a67: $03
    and c                                         ; $7a68: $a1
    cpl                                           ; $7a69: $2f
    inc l                                         ; $7a6a: $2c
    ld [hl], l                                    ; $7a6b: $75
    ld l, h                                       ; $7a6c: $6c
    add a                                         ; $7a6d: $87
    rst $00                                       ; $7a6e: $c7
    cp [hl]                                       ; $7a6f: $be
    ld c, e                                       ; $7a70: $4b
    or $5c                                        ; $7a71: $f6 $5c
    db $fd                                        ; $7a73: $fd
    or c                                          ; $7a74: $b1
    ret z                                         ; $7a75: $c8

    rst $18                                       ; $7a76: $df
    db $dd                                        ; $7a77: $dd
    jp nc, $0b41                                  ; $7a78: $d2 $41 $0b

    dec [hl]                                      ; $7a7b: $35
    sub b                                         ; $7a7c: $90
    and c                                         ; $7a7d: $a1
    add c                                         ; $7a7e: $81
    sub b                                         ; $7a7f: $90
    halt                                          ; $7a80: $76
    ld [hl], h                                    ; $7a81: $74
    ld c, b                                       ; $7a82: $48
    rlca                                          ; $7a83: $07
    dec l                                         ; $7a84: $2d
    xor b                                         ; $7a85: $a8
    ld hl, sp-$0d                                 ; $7a86: $f8 $f3
    or $54                                        ; $7a88: $f6 $54
    inc bc                                        ; $7a8a: $03
    add hl, de                                    ; $7a8b: $19
    adc $d5                                       ; $7a8c: $ce $d5
    rra                                           ; $7a8e: $1f
    ei                                            ; $7a8f: $fb
    push hl                                       ; $7a90: $e5
    ld [hl], b                                    ; $7a91: $70
    rst $20                                       ; $7a92: $e7
    ld c, $4b                                     ; $7a93: $0e $4b
    ret                                           ; $7a95: $c9


    xor d                                         ; $7a96: $aa
    ld b, h                                       ; $7a97: $44
    xor h                                         ; $7a98: $ac
    or $a6                                        ; $7a99: $f6 $a6
    add hl, sp                                    ; $7a9b: $39
    and e                                         ; $7a9c: $a3
    ccf                                           ; $7a9d: $3f
    halt                                          ; $7a9e: $76
    ldh [rNR44], a                                ; $7a9f: $e0 $23
    add [hl]                                      ; $7aa1: $86
    dec b                                         ; $7aa2: $05
    adc $bd                                       ; $7aa3: $ce $bd
    ld a, e                                       ; $7aa5: $7b
    or a                                          ; $7aa6: $b7
    ld a, [hl-]                                   ; $7aa7: $3a
    call c, $e211                                 ; $7aa8: $dc $11 $e2
    rrca                                          ; $7aab: $0f
    ld c, d                                       ; $7aac: $4a
    adc $d5                                       ; $7aad: $ce $d5
    pop hl                                        ; $7aaf: $e1
    ld [$1d8f], a                                 ; $7ab0: $ea $8f $1d
    ld e, $fb                                     ; $7ab3: $1e $fb
    ld l, $d9                                     ; $7ab5: $2e $d9
    ld c, $5a                                     ; $7ab7: $0e $5a
    xor b                                         ; $7ab9: $a8
    add c                                         ; $7aba: $81
    inc c                                         ; $7abb: $0c
    ld a, l                                       ; $7abc: $7d
    rra                                           ; $7abd: $1f
    adc $55                                       ; $7abe: $ce $55
    adc e                                         ; $7ac0: $8b
    dec h                                         ; $7ac1: $25
    dec hl                                        ; $7ac2: $2b
    dec bc                                        ; $7ac3: $0b
    ld b, d                                       ; $7ac4: $42
    adc c                                         ; $7ac5: $89
    ld e, b                                       ; $7ac6: $58
    ld l, l                                       ; $7ac7: $6d
    sbc b                                         ; $7ac8: $98
    ld sp, $0907                                  ; $7ac9: $31 $07 $09
    ld e, e                                       ; $7acc: $5b
    dec e                                         ; $7acd: $1d
    ld b, [hl]                                    ; $7ace: $46
    rra                                           ; $7acf: $1f
    dec e                                         ; $7ad0: $1d
    db $fd                                        ; $7ad1: $fd
    xor c                                         ; $7ad2: $a9
    ld l, [hl]                                    ; $7ad3: $6e
    jr nz, @+$76                                  ; $7ad4: $20 $74

    add e                                         ; $7ad6: $83
    ccf                                           ; $7ad7: $3f
    ret nz                                        ; $7ad8: $c0

    ld [hl], e                                    ; $7ad9: $73
    rst $28                                       ; $7ada: $ef
    rra                                           ; $7adb: $1f
    ld l, e                                       ; $7adc: $6b
    push bc                                       ; $7add: $c5
    ld e, a                                       ; $7ade: $5f
    dec c                                         ; $7adf: $0d
    rst $30                                       ; $7ae0: $f7
    adc a                                         ; $7ae1: $8f
    dec h                                         ; $7ae2: $25
    xor e                                         ; $7ae3: $ab
    adc $e6                                       ; $7ae4: $ce $e6
    ret nc                                        ; $7ae6: $d0

    ld l, $28                                     ; $7ae7: $2e $28
    jr c, jr_037_7b02                             ; $7ae9: $38 $17

    cpl                                           ; $7aeb: $2f
    ld a, [$7337]                                 ; $7aec: $fa $37 $73
    ld h, a                                       ; $7aef: $67
    ld sp, hl                                     ; $7af0: $f9
    sbc e                                         ; $7af1: $9b
    ld d, l                                       ; $7af2: $55
    xor l                                         ; $7af3: $ad
    ld l, [hl]                                    ; $7af4: $6e
    ldh a, [$57]                                  ; $7af5: $f0 $57
    db $fd                                        ; $7af7: $fd
    ld e, c                                       ; $7af8: $59
    ld b, a                                       ; $7af9: $47
    ld sp, $a756                                  ; $7afa: $31 $56 $a7
    dec e                                         ; $7afd: $1d
    ld b, [hl]                                    ; $7afe: $46
    dec e                                         ; $7aff: $1d
    inc l                                         ; $7b00: $2c
    db $f4                                        ; $7b01: $f4

jr_037_7b02:
    dec hl                                        ; $7b02: $2b
    ld h, d                                       ; $7b03: $62
    db $fc                                        ; $7b04: $fc
    and e                                         ; $7b05: $a3
    and e                                         ; $7b06: $a3
    sbc l                                         ; $7b07: $9d
    and l                                         ; $7b08: $a5
    dec e                                         ; $7b09: $1d
    dec e                                         ; $7b0a: $1d
    ld d, d                                       ; $7b0b: $52
    ld [hl], b                                    ; $7b0c: $70
    ld d, b                                       ; $7b0d: $50
    ld l, a                                       ; $7b0e: $6f
    push de                                       ; $7b0f: $d5
    ld h, d                                       ; $7b10: $62
    ld h, e                                       ; $7b11: $63
    ld c, e                                       ; $7b12: $4b
    cp [hl]                                       ; $7b13: $be
    dec sp                                        ; $7b14: $3b
    jp z, $6a28                                   ; $7b15: $ca $28 $6a

    ld h, b                                       ; $7b18: $60
    ret nz                                        ; $7b19: $c0

    ld e, e                                       ; $7b1a: $5b
    or l                                          ; $7b1b: $b5
    cp d                                          ; $7b1c: $ba
    call nz, $3345                                ; $7b1d: $c4 $45 $33
    ld l, a                                       ; $7b20: $6f
    or l                                          ; $7b21: $b5
    and l                                         ; $7b22: $a5
    call z, Call_000_2501                         ; $7b23: $cc $01 $25
    ld l, c                                       ; $7b26: $69
    ld c, $09                                     ; $7b27: $0e $09
    db $fc                                        ; $7b29: $fc
    dec [hl]                                      ; $7b2a: $35
    di                                            ; $7b2b: $f3
    ld [hl], e                                    ; $7b2c: $73
    ld d, a                                       ; $7b2d: $57
    ld c, c                                       ; $7b2e: $49
    push af                                       ; $7b2f: $f5
    dec h                                         ; $7b30: $25
    ret nc                                        ; $7b31: $d0

    rla                                           ; $7b32: $17
    db $eb                                        ; $7b33: $eb
    ret c                                         ; $7b34: $d8

    ld [hl], e                                    ; $7b35: $73
    rst $28                                       ; $7b36: $ef
    sbc $6d                                       ; $7b37: $de $6d
    ldh a, [$d7]                                  ; $7b39: $f0 $d7
    ld e, c                                       ; $7b3b: $59
    cp $66                                        ; $7b3c: $fe $66
    ld h, l                                       ; $7b3e: $65
    ld a, l                                       ; $7b3f: $7d
    cp e                                          ; $7b40: $bb
    adc [hl]                                      ; $7b41: $8e
    jp Jump_000_0e69                              ; $7b42: $c3 $69 $0e


    or e                                          ; $7b45: $b3
    rst $38                                       ; $7b46: $ff
    ld h, [hl]                                    ; $7b47: $66
    ld a, [bc]                                    ; $7b48: $0a
    jp nc, $a50e                                  ; $7b49: $d2 $0e $a5

    ld a, b                                       ; $7b4c: $78
    dec [hl]                                      ; $7b4d: $35
    di                                            ; $7b4e: $f3
    di                                            ; $7b4f: $f3
    ld [hl], $f9                                  ; $7b50: $36 $f9
    adc e                                         ; $7b52: $8b
    adc h                                         ; $7b53: $8c
    add hl, sp                                    ; $7b54: $39
    scf                                           ; $7b55: $37
    reti                                          ; $7b56: $d9


    ld [hl], d                                    ; $7b57: $72
    call nz, Call_037_6aba                        ; $7b58: $c4 $ba $6a
    ld [hl], l                                    ; $7b5b: $75
    add e                                         ; $7b5c: $83
    cp a                                          ; $7b5d: $bf
    add $56                                       ; $7b5e: $c6 $56
    add a                                         ; $7b60: $87
    db $eb                                        ; $7b61: $eb
    ld e, b                                       ; $7b62: $58
    ld [hl], a                                    ; $7b63: $77
    xor [hl]                                      ; $7b64: $ae
    ldh [rIF], a                                  ; $7b65: $e0 $0f
    call nc, Call_037_5566                        ; $7b67: $d4 $66 $55
    xor e                                         ; $7b6a: $ab
    dec sp                                        ; $7b6b: $3b
    ld a, [c]                                     ; $7b6c: $f2
    ld d, e                                       ; $7b6d: $53
    ld [c], a                                     ; $7b6e: $e2
    ld a, [de]                                    ; $7b6f: $1a
    ld [hl], e                                    ; $7b70: $73
    xor $ec                                       ; $7b71: $ee $ec
    ld e, $0c                                     ; $7b73: $1e $0c
    ld c, d                                       ; $7b75: $4a
    ld e, l                                       ; $7b76: $5d
    or l                                          ; $7b77: $b5
    cp d                                          ; $7b78: $ba
    or e                                          ; $7b79: $b3
    db $fc                                        ; $7b7a: $fc
    call Call_037_5b1a                            ; $7b7b: $cd $1a $5b
    dec e                                         ; $7b7e: $1d
    xor $5f                                       ; $7b7f: $ee $5f
    ld l, l                                       ; $7b81: $6d
    ld [hl], c                                    ; $7b82: $71
    jp c, $ded1                                   ; $7b83: $da $d1 $de

    xor l                                         ; $7b86: $ad
    ld h, e                                       ; $7b87: $63
    dec l                                         ; $7b88: $2d
    adc l                                         ; $7b89: $8d
    dec l                                         ; $7b8a: $2d
    sub e                                         ; $7b8b: $93
    cp a                                          ; $7b8c: $bf
    ld a, e                                       ; $7b8d: $7b
    ld e, b                                       ; $7b8e: $58
    ld [hl+], a                                   ; $7b8f: $22
    cp e                                          ; $7b90: $bb
    add hl, sp                                    ; $7b91: $39
    ret nz                                        ; $7b92: $c0

    db $db                                        ; $7b93: $db
    call z, $0892                                 ; $7b94: $cc $92 $08
    rst $20                                       ; $7b97: $e7
    and d                                         ; $7b98: $a2
    ld d, a                                       ; $7b99: $57
    dec de                                        ; $7b9a: $1b
    ld l, d                                       ; $7b9b: $6a
    jp hl                                         ; $7b9c: $e9


    ld de, $7450                                  ; $7b9d: $11 $50 $74
    xor h                                         ; $7ba0: $ac
    adc a                                         ; $7ba1: $8f
    sbc [hl]                                      ; $7ba2: $9e
    ldh a, [$15]                                  ; $7ba3: $f0 $15
    ld l, e                                       ; $7ba5: $6b
    ld b, c                                       ; $7ba6: $41
    ld hl, sp+$6c                                 ; $7ba7: $f8 $6c
    push hl                                       ; $7ba9: $e5
    ld [bc], a                                    ; $7baa: $02
    ld [hl], a                                    ; $7bab: $77
    ld d, $b5                                     ; $7bac: $16 $b5
    scf                                           ; $7bae: $37
    ld l, a                                       ; $7baf: $6f
    cp a                                          ; $7bb0: $bf
    jp nz, Jump_000_0734                          ; $7bb1: $c2 $34 $07

    di                                            ; $7bb4: $f3
    ld e, d                                       ; $7bb5: $5a
    ld d, b                                       ; $7bb6: $50
    pop af                                        ; $7bb7: $f1
    ld d, a                                       ; $7bb8: $57
    ld h, e                                       ; $7bb9: $63

Call_037_7bba:
    adc a                                         ; $7bba: $8f
    ld c, a                                       ; $7bbb: $4f
    xor e                                         ; $7bbc: $ab
    ld d, [hl]                                    ; $7bbd: $56
    sub a                                         ; $7bbe: $97
    and l                                         ; $7bbf: $a5
    ld c, $b6                                     ; $7bc0: $0e $b6
    xor h                                         ; $7bc2: $ac
    and e                                         ; $7bc3: $a3
    ld l, d                                       ; $7bc4: $6a
    pop af                                        ; $7bc5: $f1
    call c, Call_000_2fe4                         ; $7bc6: $dc $e4 $2f
    ld [hl-], a                                   ; $7bc9: $32
    ld h, $6d                                     ; $7bca: $26 $6d
    ld d, d                                       ; $7bcc: $52
    jr jr_037_7bfc                                ; $7bcd: $18 $2d

    dec e                                         ; $7bcf: $1d
    db $fd                                        ; $7bd0: $fd
    xor c                                         ; $7bd1: $a9
    ld l, [hl]                                    ; $7bd2: $6e
    jr nz, jr_037_7c09                            ; $7bd3: $20 $34

    inc sp                                        ; $7bd5: $33
    sub c                                         ; $7bd6: $91
    ld hl, sp-$7c                                 ; $7bd7: $f8 $84
    ld b, $7f                                     ; $7bd9: $06 $7f
    ld l, c                                       ; $7bdb: $69
    ld c, $a3                                     ; $7bdc: $0e $a3
    dec l                                         ; $7bde: $2d
    push de                                       ; $7bdf: $d5
    ld a, a                                       ; $7be0: $7f
    add $0e                                       ; $7be1: $c6 $0e
    push hl                                       ; $7be3: $e5
    rst $28                                       ; $7be4: $ef
    ld e, h                                       ; $7be5: $5c
    xor l                                         ; $7be6: $ad
    jp z, Jump_037_4206                           ; $7be7: $ca $06 $42

    adc l                                         ; $7bea: $8d
    ld l, c                                       ; $7beb: $69
    ld c, $c3                                     ; $7bec: $0e $c3
    ld h, e                                       ; $7bee: $63
    cp l                                          ; $7bef: $bd
    call $7814                                    ; $7bf0: $cd $14 $78
    dec sp                                        ; $7bf3: $3b
    sub h                                         ; $7bf4: $94
    push af                                       ; $7bf5: $f5
    ld [$90ea], a                                 ; $7bf6: $ea $ea $90
    ld [hl], e                                    ; $7bf9: $73
    sub e                                         ; $7bfa: $93
    ld a, a                                       ; $7bfb: $7f

jr_037_7bfc:
    ld h, $a1                                     ; $7bfc: $26 $a1
    db $d3                                        ; $7bfe: $d3
    inc e                                         ; $7bff: $1c
    ld c, c                                       ; $7c00: $49
    rra                                           ; $7c01: $1f
    adc e                                         ; $7c02: $8b
    or c                                          ; $7c03: $b1
    cp d                                          ; $7c04: $ba
    ret                                           ; $7c05: $c9


    ld e, a                                       ; $7c06: $5f
    ld h, h                                       ; $7c07: $64
    ld c, h                                       ; $7c08: $4c

jr_037_7c09:
    ld b, a                                       ; $7c09: $47
    ld e, l                                       ; $7c0a: $5d
    nop                                           ; $7c0b: $00
    sub [hl]                                      ; $7c0c: $96
    xor d                                         ; $7c0d: $aa
    push de                                       ; $7c0e: $d5

jr_037_7c0f:
    ld c, l                                       ; $7c0f: $4d
    or [hl]                                       ; $7c10: $b6
    inc e                                         ; $7c11: $1c
    or c                                          ; $7c12: $b1
    ld l, $a3                                     ; $7c13: $2e $a3
    db $fc                                        ; $7c15: $fc
    call $e72c                                    ; $7c16: $cd $2c $e7
    ld [hl-], a                                   ; $7c19: $32
    ld sp, hl                                     ; $7c1a: $f9
    inc hl                                        ; $7c1b: $23
    ld d, c                                       ; $7c1c: $51
    ld c, e                                       ; $7c1d: $4b
    rlca                                          ; $7c1e: $07
    xor a                                         ; $7c1f: $af
    xor l                                         ; $7c20: $ad
    or [hl]                                       ; $7c21: $b6
    sub h                                         ; $7c22: $94
    ret                                           ; $7c23: $c9


    sbc a                                         ; $7c24: $9f
    and d                                         ; $7c25: $a2
    xor [hl]                                      ; $7c26: $ae
    cp $bd                                        ; $7c27: $fe $bd
    ld e, b                                       ; $7c29: $58
    ld l, a                                       ; $7c2a: $6f
    jp c, Jump_037_5679                           ; $7c2b: $da $79 $56

    ld d, a                                       ; $7c2e: $57
    ld a, a                                       ; $7c2f: $7f
    ld l, h                                       ; $7c30: $6c
    jr nz, jr_037_7ca7                            ; $7c31: $20 $74

    xor [hl]                                      ; $7c33: $ae
    ld l, e                                       ; $7c34: $6b
    rst $38                                       ; $7c35: $ff
    sbc [hl]                                      ; $7c36: $9e
    ld l, e                                       ; $7c37: $6b
    ld l, c                                       ; $7c38: $69
    jr nz, jr_037_7c0f                            ; $7c39: $20 $d4

    or c                                          ; $7c3b: $b1
    dec a                                         ; $7c3c: $3d
    pop bc                                        ; $7c3d: $c1
    dec bc                                        ; $7c3e: $0b
    ld e, a                                       ; $7c3f: $5f
    ld c, c                                       ; $7c40: $49
    sbc d                                         ; $7c41: $9a
    inc bc                                        ; $7c42: $03
    ld c, c                                       ; $7c43: $49
    rra                                           ; $7c44: $1f
    ei                                            ; $7c45: $fb
    ld a, $eb                                     ; $7c46: $3e $eb
    db $ed                                        ; $7c48: $ed
    dec a                                         ; $7c49: $3d
    and h                                         ; $7c4a: $a4
    ret z                                         ; $7c4b: $c8

    rst $18                                       ; $7c4c: $df
    or l                                          ; $7c4d: $b5
    ld h, l                                       ; $7c4e: $65
    ld a, l                                       ; $7c4f: $7d
    ld e, b                                       ; $7c50: $58
    ld l, [hl]                                    ; $7c51: $6e
    sub b                                         ; $7c52: $90
    and $c9                                       ; $7c53: $e6 $c9
    ld h, c                                       ; $7c55: $61
    ld l, c                                       ; $7c56: $69
    jr nz, @-$2a                                  ; $7c57: $20 $d4

    or c                                          ; $7c59: $b1
    dec e                                         ; $7c5a: $1d
    ld e, $fb                                     ; $7c5b: $1e $fb
    ld l, $d9                                     ; $7c5d: $2e $d9
    ld c, $5a                                     ; $7c5f: $0e $5a
    xor b                                         ; $7c61: $a8
    add c                                         ; $7c62: $81
    inc c                                         ; $7c63: $0c
    cp l                                          ; $7c64: $bd
    ld e, a                                       ; $7c65: $5f
    and d                                         ; $7c66: $a2
    cp l                                          ; $7c67: $bd
    sbc l                                         ; $7c68: $9d
    cp b                                          ; $7c69: $b8
    rst $28                                       ; $7c6a: $ef
    inc hl                                        ; $7c6b: $23
    ld d, h                                       ; $7c6c: $54
    xor e                                         ; $7c6d: $ab
    sbc $3f                                       ; $7c6e: $de $3f
    halt                                          ; $7c70: $76
    sbc [hl]                                      ; $7c71: $9e
    call $1f7c                                    ; $7c72: $cd $7c $1f
    ei                                            ; $7c75: $fb
    dec l                                         ; $7c76: $2d
    dec c                                         ; $7c77: $0d
    cp $8c                                        ; $7c78: $fe $8c
    call Call_037_7e8c                            ; $7c7a: $cd $8c $7e
    sbc $19                                       ; $7c7d: $de $19
    ld [hl], e                                    ; $7c7f: $73
    ld c, c                                       ; $7c80: $49
    sub [hl]                                      ; $7c81: $96
    adc [hl]                                      ; $7c82: $8e
    db $fc                                        ; $7c83: $fc
    add d                                         ; $7c84: $82
    dec c                                         ; $7c85: $0d
    add h                                         ; $7c86: $84
    xor d                                         ; $7c87: $aa
    call $1f7c                                    ; $7c88: $cd $7c $1f
    ei                                            ; $7c8b: $fb
    dec l                                         ; $7c8c: $2d
    dec c                                         ; $7c8d: $0d
    cp $fa                                        ; $7c8e: $fe $fa
    ld c, h                                       ; $7c90: $4c
    ld l, c                                       ; $7c91: $69
    sbc a                                         ; $7c92: $9f
    dec d                                         ; $7c93: $15
    cp b                                          ; $7c94: $b8
    or e                                          ; $7c95: $b3
    ld a, a                                       ; $7c96: $7f
    cp $20                                        ; $7c97: $fe $20
    call Call_000_0901                            ; $7c99: $cd $01 $09
    db $fc                                        ; $7c9c: $fc
    push af                                       ; $7c9d: $f5
    ld [hl], b                                    ; $7c9e: $70
    inc l                                         ; $7c9f: $2c
    cp b                                          ; $7ca0: $b8
    add [hl]                                      ; $7ca1: $86
    ei                                            ; $7ca2: $fb
    rst $00                                       ; $7ca3: $c7
    adc $b3                                       ; $7ca4: $ce $b3
    sbc c                                         ; $7ca6: $99

jr_037_7ca7:
    rst $28                                       ; $7ca7: $ef
    ld h, e                                       ; $7ca8: $63
    cp a                                          ; $7ca9: $bf
    and l                                         ; $7caa: $a5
    pop bc                                        ; $7cab: $c1
    sbc a                                         ; $7cac: $9f
    or c                                          ; $7cad: $b1
    add a                                         ; $7cae: $87
    sbc a                                         ; $7caf: $9f
    inc [hl]                                      ; $7cb0: $34
    or [hl]                                       ; $7cb1: $b6
    jp c, $d9d2                                   ; $7cb2: $da $d2 $d9

    inc de                                        ; $7cb5: $13
    sbc a                                         ; $7cb6: $9f
    db $d3                                        ; $7cb7: $d3
    inc e                                         ; $7cb8: $1c
    ld c, c                                       ; $7cb9: $49
    sub [hl]                                      ; $7cba: $96
    adc [hl]                                      ; $7cbb: $8e
    cp $54                                        ; $7cbc: $fe $54
    sub a                                         ; $7cbe: $97
    dec c                                         ; $7cbf: $0d
    ret                                           ; $7cc0: $c9


    and b                                         ; $7cc1: $a0
    add e                                         ; $7cc2: $83
    ld h, c                                       ; $7cc3: $61
    ld [$fa32], a                                 ; $7cc4: $ea $32 $fa
    add hl, sp                                    ; $7cc7: $39
    adc [hl]                                      ; $7cc8: $8e
    dec c                                         ; $7cc9: $0d
    ld b, h                                       ; $7cca: $44
    and a                                         ; $7ccb: $a7
    add hl, sp                                    ; $7ccc: $39
    or e                                          ; $7ccd: $b3
    dec de                                        ; $7cce: $1b
    and b                                         ; $7ccf: $a0
    add e                                         ; $7cd0: $83
    rst $10                                       ; $7cd1: $d7
    ld d, [hl]                                    ; $7cd2: $56
    add a                                         ; $7cd3: $87
    sbc h                                         ; $7cd4: $9c
    xor e                                         ; $7cd5: $ab
    ccf                                           ; $7cd6: $3f
    ld h, d                                       ; $7cd7: $62
    or l                                          ; $7cd8: $b5
    xor d                                         ; $7cd9: $aa
    cp $64                                        ; $7cda: $fe $64
    ld d, l                                       ; $7cdc: $55
    sub $01                                       ; $7cdd: $d6 $01
    sub d                                         ; $7cdf: $92
    sbc b                                         ; $7ce0: $98
    ld hl, $8b9c                                  ; $7ce1: $21 $9c $8b
    pop hl                                        ; $7ce4: $e1
    sub d                                         ; $7ce5: $92
    ld d, l                                       ; $7ce6: $55
    rra                                           ; $7ce7: $1f
    add hl, bc                                    ; $7ce8: $09
    cp h                                          ; $7ce9: $bc
    ld l, c                                       ; $7cea: $69
    ld c, $c9                                     ; $7ceb: $0e $c9
    sbc a                                         ; $7ced: $9f
    jp nc, $dceb                                  ; $7cee: $d2 $eb $dc

    db $e4                                        ; $7cf1: $e4
    sbc a                                         ; $7cf2: $9f
    ld c, c                                       ; $7cf3: $49
    add sp, $34                                   ; $7cf4: $e8 $34
    rlca                                          ; $7cf6: $07
    ret                                           ; $7cf7: $c9


    sbc a                                         ; $7cf8: $9f
    jp nc, $dceb                                  ; $7cf9: $d2 $eb $dc

    ld h, c                                       ; $7cfc: $61
    ld a, a                                       ; $7cfd: $7f
    sbc l                                         ; $7cfe: $9d
    ld [hl], $79                                  ; $7cff: $36 $79
    ld l, h                                       ; $7d01: $6c
    jp hl                                         ; $7d02: $e9


    pop af                                        ; $7d03: $f1
    jp hl                                         ; $7d04: $e9


    cp c                                          ; $7d05: $b9
    pop bc                                        ; $7d06: $c1
    ld e, a                                       ; $7d07: $5f
    rst $18                                       ; $7d08: $df
    ld h, a                                       ; $7d09: $67
    sbc e                                         ; $7d0a: $9b
    ld e, c                                       ; $7d0b: $59
    cp [hl]                                       ; $7d0c: $be
    halt                                          ; $7d0d: $76
    sub c                                         ; $7d0e: $91
    cp a                                          ; $7d0f: $bf
    ld l, e                                       ; $7d10: $6b
    dec sp                                        ; $7d11: $3b
    rst $10                                       ; $7d12: $d7
    or l                                          ; $7d13: $b5
    call $c84c                                    ; $7d14: $cd $4c $c8
    rst $08                                       ; $7d17: $cf
    ldh [$dc], a                                  ; $7d18: $e0 $dc
    rst $30                                       ; $7d1a: $f7
    ld de, $55aa                                  ; $7d1b: $11 $aa $55
    ld h, e                                       ; $7d1e: $63
    ld c, e                                       ; $7d1f: $4b
    dec c                                         ; $7d20: $0d
    ld h, h                                       ; $7d21: $64
    or b                                          ; $7d22: $b0
    db $f4                                        ; $7d23: $f4
    inc b                                         ; $7d24: $04
    rlca                                          ; $7d25: $07
    db $f4                                        ; $7d26: $f4
    add l                                         ; $7d27: $85
    and l                                         ; $7d28: $a5
    ld hl, $5799                                  ; $7d29: $21 $99 $57
    rst $18                                       ; $7d2c: $df
    ccf                                           ; $7d2d: $3f
    halt                                          ; $7d2e: $76
    and h                                         ; $7d2f: $a4
    push hl                                       ; $7d30: $e5
    halt                                          ; $7d31: $76
    daa                                           ; $7d32: $27
    adc c                                         ; $7d33: $89
    adc [hl]                                      ; $7d34: $8e
    call z, $ccd8                                 ; $7d35: $cc $d8 $cc
    add sp, -$19                                  ; $7d38: $e8 $e7
    sbc l                                         ; $7d3a: $9d
    ld sp, $4907                                  ; $7d3b: $31 $07 $49
    sub [hl]                                      ; $7d3e: $96
    adc [hl]                                      ; $7d3f: $8e
    db $fc                                        ; $7d40: $fc
    add d                                         ; $7d41: $82
    dec c                                         ; $7d42: $0d
    add h                                         ; $7d43: $84
    ld e, $96                                     ; $7d44: $1e $96
    db $db                                        ; $7d46: $db
    sbc l                                         ; $7d47: $9d
    inc h                                         ; $7d48: $24
    ld a, [hl-]                                   ; $7d49: $3a
    or d                                          ; $7d4a: $b2
    ld a, $53                                     ; $7d4b: $3e $53
    jp c, $0567                                   ; $7d4d: $da $67 $05

    xor $ec                                       ; $7d50: $ee $ec
    sbc a                                         ; $7d52: $9f
    ccf                                           ; $7d53: $3f
    ld c, b                                       ; $7d54: $48
    ld [hl], e                                    ; $7d55: $73
    ld c, c                                       ; $7d56: $49
    rra                                           ; $7d57: $1f
    ei                                            ; $7d58: $fb
    ld a, $eb                                     ; $7d59: $3e $eb
    db $ed                                        ; $7d5b: $ed
    dec a                                         ; $7d5c: $3d
    and h                                         ; $7d5d: $a4
    ret z                                         ; $7d5e: $c8

    rst $18                                       ; $7d5f: $df
    or l                                          ; $7d60: $b5
    call $c6fc                                    ; $7d61: $cd $fc $c6
    ld d, $48                                     ; $7d64: $16 $48
    dec sp                                        ; $7d66: $3b
    ld a, [hl-]                                   ; $7d67: $3a
    and h                                         ; $7d68: $a4
    add e                                         ; $7d69: $83
    ld d, $e4                                     ; $7d6a: $16 $e4
    rst $28                                       ; $7d6c: $ef
    ld e, $ab                                     ; $7d6d: $1e $ab

Call_037_7d6f:
    cp l                                          ; $7d6f: $bd
    dec a                                         ; $7d70: $3d
    push de                                       ; $7d71: $d5
    ld b, b                                       ; $7d72: $40
    add [hl]                                      ; $7d73: $86
    sbc $c3                                       ; $7d74: $de $c3
    jp c, $7692                                   ; $7d76: $da $92 $76

    or h                                          ; $7d79: $b4
    ld [hl], a                                    ; $7d7a: $77
    db $eb                                        ; $7d7b: $eb
    ld e, b                                       ; $7d7c: $58
    ld c, e                                       ; $7d7d: $4b
    rlca                                          ; $7d7e: $07
    xor a                                         ; $7d7f: $af
    xor l                                         ; $7d80: $ad
    dec d                                         ; $7d81: $15
    ld a, a                                       ; $7d82: $7f
    dec [hl]                                      ; $7d83: $35
    call c, $763f                                 ; $7d84: $dc $3f $76
    sbc [hl]                                      ; $7d87: $9e
    call $1f7c                                    ; $7d88: $cd $7c $1f
    ei                                            ; $7d8b: $fb
    dec l                                         ; $7d8c: $2d
    dec c                                         ; $7d8d: $0d
    cp $8c                                        ; $7d8e: $fe $8c
    push bc                                       ; $7d90: $c5

jr_037_7d91:
    ldh a, [$83]                                  ; $7d91: $f0 $83
    ld [hl], e                                    ; $7d93: $73
    push af                                       ; $7d94: $f5
    ld b, a                                       ; $7d95: $47
    inc l                                         ; $7d96: $2c
    ld b, $7f                                     ; $7d97: $06 $7f
    ld a, l                                       ; $7d99: $7d
    ld h, c                                       ; $7d9a: $61
    ld l, c                                       ; $7d9b: $69
    ld l, h                                       ; $7d9c: $6c
    or l                                          ; $7d9d: $b5
    and l                                         ; $7d9e: $a5
    or e                                          ; $7d9f: $b3
    daa                                           ; $7da0: $27
    ld a, $f7                                     ; $7da1: $3e $f7
    or e                                          ; $7da3: $b3
    jr c, jr_037_7db6                             ; $7da4: $38 $10

    and [hl]                                      ; $7da6: $a6
    ld [hl], b                                    ; $7da7: $70
    ld l, $fd                                     ; $7da8: $2e $fd
    adc b                                         ; $7daa: $88
    ld d, b                                       ; $7dab: $50
    ld h, e                                       ; $7dac: $63
    adc a                                         ; $7dad: $8f
    ldh [$af], a                                  ; $7dae: $e0 $af
    rst $30                                       ; $7db0: $f7
    ld b, b                                       ; $7db1: $40
    db $f4                                        ; $7db2: $f4
    and [hl]                                      ; $7db3: $a6
    add hl, sp                                    ; $7db4: $39
    ld c, c                                       ; $7db5: $49

jr_037_7db6:
    pop hl                                        ; $7db6: $e1
    ld [hl-], a                                   ; $7db7: $32
    pop bc                                        ; $7db8: $c1
    or d                                          ; $7db9: $b2
    ld l, $fe                                     ; $7dba: $2e $fe
    call z, $b55b                                 ; $7dbc: $cc $5b $b5
    ld e, b                                       ; $7dbf: $58
    dec e                                         ; $7dc0: $1d
    xor $09                                       ; $7dc1: $ee $09
    ld [$96a6], a                                 ; $7dc3: $ea $a6 $96
    add b                                         ; $7dc6: $80
    ld c, $5e                                     ; $7dc7: $0e $5e
    ld a, [c]                                     ; $7dc9: $f2
    dec d                                         ; $7dca: $15
    and [hl]                                      ; $7dcb: $a6
    dec e                                         ; $7dcc: $1d
    dec e                                         ; $7dcd: $1d
    ld d, d                                       ; $7dce: $52
    cp h                                          ; $7dcf: $bc
    jr z, jr_037_7dd7                             ; $7dd0: $28 $05

    ld l, a                                       ; $7dd2: $6f
    ld [hl], l                                    ; $7dd3: $75
    cp b                                          ; $7dd4: $b8
    daa                                           ; $7dd5: $27
    xor b                                         ; $7dd6: $a8

jr_037_7dd7:
    sbc e                                         ; $7dd7: $9b
    ld e, d                                       ; $7dd8: $5a
    ld [bc], a                                    ; $7dd9: $02
    ld a, [$646f]                                 ; $7dda: $fa $6f $64
    rrca                                          ; $7ddd: $0f
    ld b, b                                       ; $7dde: $40
    ld e, b                                       ; $7ddf: $58
    cp h                                          ; $7de0: $bc
    ld l, c                                       ; $7de1: $69
    ld c, $c3                                     ; $7de2: $0e $c3
    or c                                          ; $7de4: $b1
    add c                                         ; $7de5: $81
    ret nc                                        ; $7de6: $d0

    dec c                                         ; $7de7: $0d
    cp $a0                                        ; $7de8: $fe $a0
    ld [hl], c                                    ; $7dea: $71
    inc e                                         ; $7deb: $1c
    sub [hl]                                      ; $7dec: $96
    xor [hl]                                      ; $7ded: $ae
    sub d                                         ; $7dee: $92
    ld [hl-], a                                   ; $7def: $32
    ld a, [hl+]                                   ; $7df0: $2a
    jr nc, jr_037_7d91                            ; $7df1: $30 $9e

    ld a, e                                       ; $7df3: $7b
    rst $38                                       ; $7df4: $ff
    ld e, b                                       ; $7df5: $58
    dec e                                         ; $7df6: $1d
    ld l, $13                                     ; $7df7: $2e $13
    inc l                                         ; $7df9: $2c

Jump_037_7dfa:
    db $eb                                        ; $7dfa: $eb
    xor d                                         ; $7dfb: $aa
    push bc                                       ; $7dfc: $c5
    ld c, $5e                                     ; $7dfd: $0e $5e
    ld a, [c]                                     ; $7dff: $f2
    dec d                                         ; $7e00: $15
    ld [c], a                                     ; $7e01: $e2
    rst $08                                       ; $7e02: $cf
    cp h                                          ; $7e03: $bc
    ld l, c                                       ; $7e04: $69
    ld c, $b3                                     ; $7e05: $0e $b3
    ld a, e                                       ; $7e07: $7b
    nop                                           ; $7e08: $00
    call nc, $1036                                ; $7e09: $d4 $36 $10

Jump_037_7e0c:
    cp d                                          ; $7e0c: $ba
    pop bc                                        ; $7e0d: $c1
    rra                                           ; $7e0e: $1f
    inc d                                         ; $7e0f: $14
    xor a                                         ; $7e10: $af
    ld a, $53                                     ; $7e11: $3e $53

jr_037_7e13:
    jp c, $0567                                   ; $7e13: $da $67 $05

    xor $ec                                       ; $7e16: $ee $ec
    sbc a                                         ; $7e18: $9f
    ccf                                           ; $7e19: $3f
    jr c, jr_037_7e13                             ; $7e1a: $38 $f7

    or e                                          ; $7e1c: $b3
    sub [hl]                                      ; $7e1d: $96
    ld e, d                                       ; $7e1e: $5a
    ld c, d                                       ; $7e1f: $4a
    xor l                                         ; $7e20: $ad
    ld hl, sp+$03                                 ; $7e21: $f8 $03
    ld b, e                                       ; $7e23: $43
    sbc a                                         ; $7e24: $9f
    add hl, hl                                    ; $7e25: $29
    or l                                          ; $7e26: $b5
    db $f4                                        ; $7e27: $f4
    ld d, e                                       ; $7e28: $53
    db $ec                                        ; $7e29: $ec
    ld e, [hl]                                    ; $7e2a: $5e
    ld [hl], d                                    ; $7e2b: $72
    ld a, h                                       ; $7e2c: $7c
    ld l, d                                       ; $7e2d: $6a
    cp c                                          ; $7e2e: $b9

Call_037_7e2f:
    dec sp                                        ; $7e2f: $3b
    ret nc                                        ; $7e30: $d0

    ld l, c                                       ; $7e31: $69
    ld c, $a3                                     ; $7e32: $0e $a3
    ld b, e                                       ; $7e34: $43
    adc d                                         ; $7e35: $8a
    rla                                           ; $7e36: $17
    and l                                         ; $7e37: $a5
    ldh [$6d], a                                  ; $7e38: $e0 $6d
    cp h                                          ; $7e3a: $bc
    push af                                       ; $7e3b: $f5
    halt                                          ; $7e3c: $76
    add e                                         ; $7e3d: $83
    ccf                                           ; $7e3e: $3f
    add sp, $33                                   ; $7e3f: $e8 $33
    dec h                                         ; $7e41: $25
    cp h                                          ; $7e42: $bc
    rst $20                                       ; $7e43: $e7
    ld [$9970], a                                 ; $7e44: $ea $70 $99
    ld h, b                                       ; $7e47: $60
    ld e, c                                       ; $7e48: $59
    rla                                           ; $7e49: $17
    ld a, a                                       ; $7e4a: $7f
    and $6d                                       ; $7e4b: $e6 $6d
    inc a                                         ; $7e4d: $3c
    pop af                                        ; $7e4e: $f1
    halt                                          ; $7e4f: $76
    sbc [hl]                                      ; $7e50: $9e
    dec b                                         ; $7e51: $05
    ld c, e                                       ; $7e52: $4b
    or $37                                        ; $7e53: $f6 $37
    db $eb                                        ; $7e55: $eb
    ldh [rNR51], a                                ; $7e56: $e0 $25
    ld e, a                                       ; $7e58: $5f
    ld h, c                                       ; $7e59: $61
    sbc d                                         ; $7e5a: $9a
    inc bc                                        ; $7e5b: $03
    and e                                         ; $7e5c: $a3
    ld b, e                                       ; $7e5d: $43
    ld a, d                                       ; $7e5e: $7a

jr_037_7e5f:
    sub b                                         ; $7e5f: $90
    db $10                                        ; $7e60: $10
    cp l                                          ; $7e61: $bd
    ld d, l                                       ; $7e62: $55
    adc e                                         ; $7e63: $8b
    push de                                       ; $7e64: $d5
    ld a, $3a                                     ; $7e65: $3e $3a
    ld a, [hl-]                                   ; $7e67: $3a
    jr z, jr_037_7e5f                             ; $7e68: $28 $f5

jr_037_7e6a:
    ld d, [hl]                                    ; $7e6a: $56
    ld e, e                                       ; $7e6b: $5b
    jp z, $cb04                                   ; $7e6c: $ca $04 $cb

    cp d                                          ; $7e6f: $ba
    xor h                                         ; $7e70: $ac
    ld d, l                                       ; $7e71: $55
    and $4d                                       ; $7e72: $e6 $4d
    ld [hl], e                                    ; $7e74: $73
    ld c, c                                       ; $7e75: $49
    sub [hl]                                      ; $7e76: $96
    adc [hl]                                      ; $7e77: $8e
    cp $54                                        ; $7e78: $fe $54
    scf                                           ; $7e7a: $37
    db $10                                        ; $7e7b: $10
    ld [$1ed8], a                                 ; $7e7c: $ea $d8 $1e
    ld h, e                                       ; $7e7f: $63
    db $10                                        ; $7e80: $10
    inc l                                         ; $7e81: $2c
    ld sp, $5a36                                  ; $7e82: $31 $36 $5a
    ld a, [hl-]                                   ; $7e85: $3a
    add a                                         ; $7e86: $87
    ld b, b                                       ; $7e87: $40
    sbc d                                         ; $7e88: $9a
    inc bc                                        ; $7e89: $03
    ret                                           ; $7e8a: $c9


    ccf                                           ; $7e8b: $3f

Call_037_7e8c:
    sub e                                         ; $7e8c: $93
    ret nc                                        ; $7e8d: $d0

    rst $20                                       ; $7e8e: $e7
    ld h, d                                       ; $7e8f: $62
    ld hl, sp-$0b                                 ; $7e90: $f8 $f5
    ld hl, sp-$0c                                 ; $7e92: $f8 $f4
    ld e, h                                       ; $7e94: $5c
    cp c                                          ; $7e95: $b9
    ret nz                                        ; $7e96: $c0

    sbc l                                         ; $7e97: $9d
    ld b, l                                       ; $7e98: $45
    db $ed                                        ; $7e99: $ed
    call $a43b                                    ; $7e9a: $cd $3b $a4
    ld c, c                                       ; $7e9d: $49
    pop hl                                        ; $7e9e: $e1
    cp $d5                                        ; $7e9f: $fe $d5
    ld d, $6f                                     ; $7ea1: $16 $6f
    ld sp, $3756                                  ; $7ea3: $31 $56 $37
    or [hl]                                       ; $7ea6: $b6
    ld c, h                                       ; $7ea7: $4c
    cp $ee                                        ; $7ea8: $fe $ee
    ld h, c                                       ; $7eaa: $61
    adc c                                         ; $7eab: $89
    db $ec                                        ; $7eac: $ec
    and $00                                       ; $7ead: $e6 $00
    ld l, a                                       ; $7eaf: $6f
    sbc d                                         ; $7eb0: $9a
    inc bc                                        ; $7eb1: $03
    add hl, bc                                    ; $7eb2: $09
    ld c, a                                       ; $7eb3: $4f
    ld a, d                                       ; $7eb4: $7a
    rst $38                                       ; $7eb5: $ff
    ld [bc], a                                    ; $7eb6: $02
    add [hl]                                      ; $7eb7: $86
    cp [hl]                                       ; $7eb8: $be
    or b                                          ; $7eb9: $b0
    and h                                         ; $7eba: $a4
    add hl, sp                                    ; $7ebb: $39
    ret                                           ; $7ebc: $c9


    rla                                           ; $7ebd: $17
    ld b, c                                       ; $7ebe: $41
    ld a, b                                       ; $7ebf: $78
    add c                                         ; $7ec0: $81
    ld b, $7f                                     ; $7ec1: $06 $7f
    dec c                                         ; $7ec3: $0d
    add h                                         ; $7ec4: $84
    sbc $1c                                       ; $7ec5: $de $1c
    ld l, e                                       ; $7ec7: $6b
    jp hl                                         ; $7ec8: $e9


    and b                                         ; $7ec9: $a0
    add l                                         ; $7eca: $85
    ld a, [de]                                    ; $7ecb: $1a
    ret z                                         ; $7ecc: $c8

    jr nc, @+$26                                  ; $7ecd: $30 $24

    rlca                                          ; $7ecf: $07
    ld b, e                                       ; $7ed0: $43
    push de                                       ; $7ed1: $d5
    jr c, jr_037_7e6a                             ; $7ed2: $38 $96

    ld c, $86                                     ; $7ed4: $0e $86
    add hl, hl                                    ; $7ed6: $29
    ld [hl], l                                    ; $7ed7: $75
    ldh a, [rTAC]                                 ; $7ed8: $f0 $07
    dec e                                         ; $7eda: $1d
    ld sp, hl                                     ; $7edb: $f9
    add hl, hl                                    ; $7edc: $29
    ld [hl], c                                    ; $7edd: $71
    adc l                                         ; $7ede: $8d
    ld l, c                                       ; $7edf: $69
    sbc d                                         ; $7ee0: $9a
    and [hl]                                      ; $7ee1: $a6
    add hl, sp                                    ; $7ee2: $39
    and e                                         ; $7ee3: $a3
    ccf                                           ; $7ee4: $3f
    ld [hl], $10                                  ; $7ee5: $36 $10
    ld a, [hl-]                                   ; $7ee7: $3a
    ldh a, [rNR11]                                ; $7ee8: $f0 $11
    jp Jump_000_3302                              ; $7eea: $c3 $02 $33


    and $23                                       ; $7eed: $e6 $23
    ccf                                           ; $7eef: $3f
    dec h                                         ; $7ef0: $25
    xor [hl]                                      ; $7ef1: $ae
    ld sp, $1f7d                                  ; $7ef2: $31 $7d $1f
    adc d                                         ; $7ef5: $8a
    pop bc                                        ; $7ef6: $c1
    ld e, a                                       ; $7ef7: $5f
    rlca                                          ; $7ef8: $07
    xor a                                         ; $7ef9: $af
    db $ed                                        ; $7efa: $ed
    adc e                                         ; $7efb: $8b
    dec b                                         ; $7efc: $05
    ld l, a                                       ; $7efd: $6f
    rst $38                                       ; $7efe: $ff
    ld h, [hl]                                    ; $7eff: $66
    ld b, [hl]                                    ; $7f00: $46
    cp $68                                        ; $7f01: $fe $68
    ldh a, [$e7]                                  ; $7f03: $f0 $e7
    xor l                                         ; $7f05: $ad
    ld e, d                                       ; $7f06: $5a

jr_037_7f07:
    db $dd                                        ; $7f07: $dd
    inc hl                                        ; $7f08: $23

jr_037_7f09:
    ld hl, sp+$6b                                 ; $7f09: $f8 $6b
    and $81                                       ; $7f0b: $e6 $81
    rst $08                                       ; $7f0d: $cf
    ld l, a                                       ; $7f0e: $6f
    sub b                                         ; $7f0f: $90
    halt                                          ; $7f10: $76
    jr c, jr_037_7f09                             ; $7f11: $38 $f6

    cp $a5                                        ; $7f13: $fe $a5
    adc [hl]                                      ; $7f15: $8e
    db $ed                                        ; $7f16: $ed
    add sp, $00                                   ; $7f17: $e8 $00
    ld a, [c]                                     ; $7f19: $f2
    cp c                                          ; $7f1a: $b9
    sbc a                                         ; $7f1b: $9f
    or l                                          ; $7f1c: $b5
    inc [hl]                                      ; $7f1d: $34
    ld hl, sp+$2b                                 ; $7f1e: $f8 $2b
    dec de                                        ; $7f20: $1b
    db $db                                        ; $7f21: $db
    ret c                                         ; $7f22: $d8

    adc [hl]                                      ; $7f23: $8e
    ld a, [$b71b]                                 ; $7f24: $fa $1b $b7
    ld h, [hl]                                    ; $7f27: $66
    sub [hl]                                      ; $7f28: $96
    rrca                                          ; $7f29: $0f

jr_037_7f2a:
    sbc $34                                       ; $7f2a: $de $34
    rlca                                          ; $7f2c: $07
    and e                                         ; $7f2d: $a3
    ld b, e                                       ; $7f2e: $43
    sbc d                                         ; $7f2f: $9a
    cp b                                          ; $7f30: $b8
    jp c, $d5b2                                   ; $7f31: $da $b2 $d5

    pop hl                                        ; $7f34: $e1
    ld [hl-], a                                   ; $7f35: $32
    adc d                                         ; $7f36: $8a
    ld a, [de]                                    ; $7f37: $1a
    jr jr_037_7f2a                                ; $7f38: $18 $f0

    and [hl]                                      ; $7f3a: $a6
    sbc l                                         ; $7f3b: $9d
    db $dd                                        ; $7f3c: $dd
    add e                                         ; $7f3d: $83
    ld b, c                                       ; $7f3e: $41
    xor c                                         ; $7f3f: $a9
    xor e                                         ; $7f40: $ab
    ld d, [hl]                                    ; $7f41: $56
    scf                                           ; $7f42: $37
    reti                                          ; $7f43: $d9


    ld [hl], d                                    ; $7f44: $72
    call nz, $b7ba                                ; $7f45: $c4 $ba $b7
    db $eb                                        ; $7f48: $eb
    jr c, jr_037_7f07                             ; $7f49: $38 $bc

    dec a                                         ; $7f4b: $3d
    ld [bc], a                                    ; $7f4c: $02
    ld a, d                                       ; $7f4d: $7a
    add h                                         ; $7f4e: $84
    and h                                         ; $7f4f: $a4
    ld c, l                                       ; $7f50: $4d
    cp $22                                        ; $7f51: $fe $22
    ld h, e                                       ; $7f53: $63
    adc $d5                                       ; $7f54: $ce $d5
    xor d                                         ; $7f56: $aa
    sbc c                                         ; $7f57: $99
    rra                                           ; $7f58: $1f
    ld b, d                                       ; $7f59: $42
    adc a                                         ; $7f5a: $8f

jr_037_7f5b:
    add b                                         ; $7f5b: $80
    adc [hl]                                      ; $7f5c: $8e
    db $fc                                        ; $7f5d: $fc
    sub h                                         ; $7f5e: $94
    cp b                                          ; $7f5f: $b8
    add $54                                       ; $7f60: $c6 $54
    xor l                                         ; $7f62: $ad
    xor $2c                                       ; $7f63: $ee $2c
    ld a, a                                       ; $7f65: $7f
    or e                                          ; $7f66: $b3
    or h                                          ; $7f67: $b4
    ld c, c                                       ; $7f68: $49
    ld h, c                                       ; $7f69: $61
    or h                                          ; $7f6a: $b4
    inc [hl]                                      ; $7f6b: $34
    ld b, c                                       ; $7f6c: $41
    rst $00                                       ; $7f6d: $c7
    dec b                                         ; $7f6e: $05
    cp l                                          ; $7f6f: $bd
    add a                                         ; $7f70: $87
    add sp, -$16                                  ; $7f71: $e8 $ea
    ldh [$af], a                                  ; $7f73: $e0 $af
    dec de                                        ; $7f75: $1b
    db $fc                                        ; $7f76: $fc
    ld b, c                                       ; $7f77: $41
    pop af                                        ; $7f78: $f1
    ld a, [hl+]                                   ; $7f79: $2a
    ld a, [c]                                     ; $7f7a: $f2
    or a                                          ; $7f7b: $b7
    and [hl]                                      ; $7f7c: $a6
    or h                                          ; $7f7d: $b4
    ld d, $e4                                     ; $7f7e: $16 $e4
    ld c, a                                       ; $7f80: $4f
    call z, $de6f                                 ; $7f81: $cc $6f $de
    inc [hl]                                      ; $7f84: $34
    rlca                                          ; $7f85: $07
    call z, $ebf0                                 ; $7f86: $cc $f0 $eb
    pop af                                        ; $7f89: $f1
    jp hl                                         ; $7f8a: $e9


    sub b                                         ; $7f8b: $90
    ld h, $7d                                     ; $7f8c: $26 $7d
    db $ec                                        ; $7f8e: $ec
    and c                                         ; $7f8f: $a1
    db $10                                        ; $7f90: $10
    db $eb                                        ; $7f91: $eb
    ret c                                         ; $7f92: $d8

    ld c, $8f                                     ; $7f93: $0e $8f
    ld a, l                                       ; $7f95: $7d
    sub a                                         ; $7f96: $97
    ld l, h                                       ; $7f97: $6c
    pop de                                        ; $7f98: $d1
    or c                                          ; $7f99: $b1
    ld l, c                                       ; $7f9a: $69
    add a                                         ; $7f9b: $87
    ld h, e                                       ; $7f9c: $63
    inc bc                                        ; $7f9d: $03
    and c                                         ; $7f9e: $a1
    ld [hl], b                                    ; $7f9f: $70
    pop bc                                        ; $7fa0: $c1
    sub b                                         ; $7fa1: $90
    inc e                                         ; $7fa2: $1c
    ld b, e                                       ; $7fa3: $43
    rst $38                                       ; $7fa4: $ff
    rst $38                                       ; $7fa5: $ff
    ld [hl+], a                                   ; $7fa6: $22
    ld [hl+], a                                   ; $7fa7: $22
    ld a, [c]                                     ; $7fa8: $f2
    add [hl]                                      ; $7fa9: $86
    db $e4                                        ; $7faa: $e4

Call_037_7fab:
    ld b, e                                       ; $7fab: $43
    rst $18                                       ; $7fac: $df
    cp c                                          ; $7fad: $b9
    jp c, Jump_000_2652                           ; $7fae: $da $52 $26

    ld a, a                                       ; $7fb1: $7f
    add a                                         ; $7fb2: $87
    add l                                         ; $7fb3: $85
    call c, Call_037_4d34                         ; $7fb4: $dc $34 $4d
    dec de                                        ; $7fb7: $1b
    db $db                                        ; $7fb8: $db
    jp $3eb1                                      ; $7fb9: $c3 $b1 $3e


    ld a, [hl-]                                   ; $7fbc: $3a
    ld [c], a                                     ; $7fbd: $e2
    ld a, [de]                                    ; $7fbe: $1a
    jr nz, jr_037_7f5b                            ; $7fbf: $20 $9a

    and [hl]                                      ; $7fc1: $a6
    ld l, c                                       ; $7fc2: $69
    ld c, $a3                                     ; $7fc3: $0e $a3
    ccf                                           ; $7fc5: $3f
    ld [hl], $10                                  ; $7fc6: $36 $10
    sbc d                                         ; $7fc8: $9a
    add hl, de                                    ; $7fc9: $19
    ld sp, hl                                     ; $7fca: $f9
    di                                            ; $7fcb: $f3
    di                                            ; $7fcc: $f3
    adc $98                                       ; $7fcd: $ce $98
    inc bc                                        ; $7fcf: $03
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
