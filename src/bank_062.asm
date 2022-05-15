; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

    ld h, d                                       ; $4000: $62
    db $ed                                        ; $4001: $ed
    cp a                                          ; $4002: $bf
    inc h                                         ; $4003: $24
    jr nz, @+$6f                                  ; $4004: $20 $6d

    db $e4                                        ; $4006: $e4
    sub a                                         ; $4007: $97
    add hl, sp                                    ; $4008: $39
    ld b, a                                       ; $4009: $47
    rrca                                          ; $400a: $0f
    adc e                                         ; $400b: $8b
    add e                                         ; $400c: $83
    xor d                                         ; $400d: $aa
    and $c1                                       ; $400e: $e6 $c1
    ret nc                                        ; $4010: $d0

    ld [hl-], a                                   ; $4011: $32
    dec d                                         ; $4012: $15
    sub d                                         ; $4013: $92
    dec a                                         ; $4014: $3d
    ld b, $1c                                     ; $4015: $06 $1c
    db $dd                                        ; $4017: $dd
    ld h, l                                       ; $4018: $65
    pop af                                        ; $4019: $f1
    rst $08                                       ; $401a: $cf
    push bc                                       ; $401b: $c5
    inc d                                         ; $401c: $14
    and l                                         ; $401d: $a5
    ld a, l                                       ; $401e: $7d
    ld d, a                                       ; $401f: $57
    inc a                                         ; $4020: $3c
    or e                                          ; $4021: $b3
    ld c, h                                       ; $4022: $4c
    cpl                                           ; $4023: $2f
    sbc [hl]                                      ; $4024: $9e
    ld [hl], e                                    ; $4025: $73
    db $e4                                        ; $4026: $e4
    sub a                                         ; $4027: $97
    ld d, l                                       ; $4028: $55
    and [hl]                                      ; $4029: $a6
    ld h, [hl]                                    ; $402a: $66
    ld a, d                                       ; $402b: $7a
    ld d, $1c                                     ; $402c: $16 $1c
    add d                                         ; $402e: $82
    adc h                                         ; $402f: $8c
    call nc, $fb30                                ; $4030: $d4 $30 $fb
    sbc $c1                                       ; $4033: $de $c1
    rst $18                                       ; $4035: $df
    and e                                         ; $4036: $a3
    and b                                         ; $4037: $a0
    sbc c                                         ; $4038: $99
    ld a, [$08b2]                                 ; $4039: $fa $b2 $08
    inc b                                         ; $403c: $04
    cp l                                          ; $403d: $bd
    ld d, [hl]                                    ; $403e: $56
    ld [hl], e                                    ; $403f: $73
    sbc a                                         ; $4040: $9f
    rst $30                                       ; $4041: $f7
    and e                                         ; $4042: $a3
    jp c, $e9a9                                   ; $4043: $da $a9 $e9

    ld hl, $4994                                  ; $4046: $21 $94 $49
    inc sp                                        ; $4049: $33
    ld d, a                                       ; $404a: $57
    jp $d233                                      ; $404b: $c3 $33 $d2


    cp l                                          ; $404e: $bd
    ld a, [c]                                     ; $404f: $f2
    db $fd                                        ; $4050: $fd
    ld [bc], a                                    ; $4051: $02
    rlca                                          ; $4052: $07
    ld e, h                                       ; $4053: $5c
    ld d, $1b                                     ; $4054: $16 $1b
    ld d, a                                       ; $4056: $57
    ld [bc], a                                    ; $4057: $02
    ld a, [c]                                     ; $4058: $f2
    ld a, $8f                                     ; $4059: $3e $8f
    xor $32                                       ; $405b: $ee $32
    ld d, b                                       ; $405d: $50
    ld b, a                                       ; $405e: $47
    ld c, [hl]                                    ; $405f: $4e
    db $fd                                        ; $4060: $fd
    inc hl                                        ; $4061: $23
    rst $10                                       ; $4062: $d7
    jr nc, @+$1b                                  ; $4063: $30 $19

    ld a, [hl-]                                   ; $4065: $3a
    ld a, d                                       ; $4066: $7a
    db $e4                                        ; $4067: $e4
    ld a, a                                       ; $4068: $7f
    or $3b                                        ; $4069: $f6 $3b
    inc bc                                        ; $406b: $03
    jp nc, Jump_062_58f6                          ; $406c: $d2 $f6 $58

    ld b, [hl]                                    ; $406f: $46
    ld [hl], a                                    ; $4070: $77
    sbc c                                         ; $4071: $99
    ld a, [$8e47]                                 ; $4072: $fa $47 $8e
    ld e, $46                                     ; $4075: $1e $46
    cp d                                          ; $4077: $ba
    ld [hl], a                                    ; $4078: $77
    rst $20                                       ; $4079: $e7
    ld b, b                                       ; $407a: $40

Call_062_407b:
Jump_062_407b:
    dec e                                         ; $407b: $1d
    cp c                                          ; $407c: $b9
    jp c, $d5a1                                   ; $407d: $da $a1 $d5

    ld a, [c]                                     ; $4080: $f2
    ret z                                         ; $4081: $c8

    rst $38                                       ; $4082: $ff
    xor h                                         ; $4083: $ac
    ld d, e                                       ; $4084: $53
    db $eb                                        ; $4085: $eb
    ld e, d                                       ; $4086: $5a
    call Call_062_58b9                            ; $4087: $cd $b9 $58
    ld b, [hl]                                    ; $408a: $46
    ld [hl], $05                                  ; $408b: $36 $05
    rst $28                                       ; $408d: $ef
    rla                                           ; $408e: $17
    rlca                                          ; $408f: $07
    ld b, c                                       ; $4090: $41
    sub $c8                                       ; $4091: $d6 $c8
    sub b                                         ; $4093: $90
    or h                                          ; $4094: $b4
    ld e, l                                       ; $4095: $5d
    ld b, b                                       ; $4096: $40
    cp $ec                                        ; $4097: $fe $ec
    ld h, b                                       ; $4099: $60
    jp c, $eb2a                                   ; $409a: $da $2a $eb

    add sp, $74                                   ; $409d: $e8 $74
    ld c, $f3                                     ; $409f: $0e $f3
    rla                                           ; $40a1: $17
    rst $20                                       ; $40a2: $e7
    ld h, b                                       ; $40a3: $60
    ld d, a                                       ; $40a4: $57
    db $eb                                        ; $40a5: $eb
    rrca                                          ; $40a6: $0f
    ld b, l                                       ; $40a7: $45
    ret nz                                        ; $40a8: $c0

    ld [hl], d                                    ; $40a9: $72
    rst $28                                       ; $40aa: $ef
    ld h, b                                       ; $40ab: $60
    or e                                          ; $40ac: $b3
    ld a, [hl+]                                   ; $40ad: $2a
    ld c, a                                       ; $40ae: $4f
    ld a, l                                       ; $40af: $7d
    add hl, de                                    ; $40b0: $19
    ld sp, hl                                     ; $40b1: $f9
    ld h, l                                       ; $40b2: $65
    ld de, $7a08                                  ; $40b3: $11 $08 $7a
    and $55                                       ; $40b6: $e6 $55
    ld [hl], $8e                                  ; $40b8: $36 $8e
    and c                                         ; $40ba: $a1
    rst $28                                       ; $40bb: $ef
    ld a, [c]                                     ; $40bc: $f2
    sub b                                         ; $40bd: $90
    dec c                                         ; $40be: $0d
    daa                                           ; $40bf: $27
    rst $18                                       ; $40c0: $df
    cpl                                           ; $40c1: $2f
    sub a                                         ; $40c2: $97
    ld a, l                                       ; $40c3: $7d
    ld e, h                                       ; $40c4: $5c
    xor b                                         ; $40c5: $a8
    xor e                                         ; $40c6: $ab
    ld d, $f4                                     ; $40c7: $16 $f4
    jp c, Jump_000_318d                           ; $40c9: $da $8d $31

jr_062_40cc:
    sub h                                         ; $40cc: $94
    db $fd                                        ; $40cd: $fd
    ld l, b                                       ; $40ce: $68
    sub l                                         ; $40cf: $95
    adc l                                         ; $40d0: $8d
    ld h, e                                       ; $40d1: $63
    add sp, $23                                   ; $40d2: $e8 $23
    rst $38                                       ; $40d4: $ff
    or e                                          ; $40d5: $b3
    rst $00                                       ; $40d6: $c7
    jr c, jr_062_40cc                             ; $40d7: $38 $f3

    ld a, [de]                                    ; $40d9: $1a
    jp hl                                         ; $40da: $e9


    ld hl, sp+$5e                                 ; $40db: $f8 $5e
    ld a, e                                       ; $40dd: $7b
    db $fc                                        ; $40de: $fc
    ld [hl], c                                    ; $40df: $71
    ld d, l                                       ; $40e0: $55
    inc hl                                        ; $40e1: $23
    xor [hl]                                      ; $40e2: $ae
    cp e                                          ; $40e3: $bb
    db $e4                                        ; $40e4: $e4
    sbc h                                         ; $40e5: $9c
    rla                                           ; $40e6: $17
    rst $10                                       ; $40e7: $d7
    ret nc                                        ; $40e8: $d0

    ccf                                           ; $40e9: $3f
    ld l, l                                       ; $40ea: $6d
    or l                                          ; $40eb: $b5
    ld a, c                                       ; $40ec: $79
    and h                                         ; $40ed: $a4
    db $ec                                        ; $40ee: $ec
    ld l, c                                       ; $40ef: $69
    ld c, $cd                                     ; $40f0: $0e $cd
    adc e                                         ; $40f2: $8b
    db $dd                                        ; $40f3: $dd
    rla                                           ; $40f4: $17
    ld d, e                                       ; $40f5: $53
    jp nc, Jump_000_0bf7                          ; $40f6: $d2 $f7 $0b

    rla                                           ; $40f9: $17
    ld a, l                                       ; $40fa: $7d
    ld b, c                                       ; $40fb: $41
    ld e, $ea                                     ; $40fc: $1e $ea
    ld a, e                                       ; $40fe: $7b
    and b                                         ; $40ff: $a0
    xor h                                         ; $4100: $ac
    ld [hl], $87                                  ; $4101: $36 $87
    sbc $a9                                       ; $4103: $de $a9
    inc hl                                        ; $4105: $23
    xor c                                         ; $4106: $a9
    ld d, d                                       ; $4107: $52
    ld l, c                                       ; $4108: $69
    ld l, e                                       ; $4109: $6b
    rst $38                                       ; $410a: $ff
    sbc c                                         ; $410b: $99
    sbc d                                         ; $410c: $9a
    ld [hl], e                                    ; $410d: $73
    ld e, [hl]                                    ; $410e: $5e
    sub a                                         ; $410f: $97
    jr z, @-$19                                   ; $4110: $28 $e5

    ld e, c                                       ; $4112: $59
    ld d, b                                       ; $4113: $50
    db $f4                                        ; $4114: $f4
    ei                                            ; $4115: $fb
    dec b                                         ; $4116: $05
    sub a                                         ; $4117: $97
    scf                                           ; $4118: $37
    ld l, c                                       ; $4119: $69
    ld a, e                                       ; $411a: $7b
    inc l                                         ; $411b: $2c
    xor e                                         ; $411c: $ab
    call $a555                                    ; $411d: $cd $55 $a5
    ld de, $421c                                  ; $4120: $11 $1c $42
    pop de                                        ; $4123: $d1
    cp [hl]                                       ; $4124: $be
    or $2f                                        ; $4125: $f6 $2f
    ld l, e                                       ; $4127: $6b
    dec h                                         ; $4128: $25
    dec [hl]                                      ; $4129: $35
    halt                                          ; $412a: $76
    xor [hl]                                      ; $412b: $ae
    jp z, $de4f                                   ; $412c: $ca $4f $de

    rst $20                                       ; $412f: $e7
    ld d, c                                       ; $4130: $51
    ret nc                                        ; $4131: $d0

    cp e                                          ; $4132: $bb
    ld a, [hl-]                                   ; $4133: $3a
    ld [$646d], sp                                ; $4134: $08 $6d $64
    inc c                                         ; $4137: $0c
    ld [hl], l                                    ; $4138: $75
    and b                                         ; $4139: $a0
    adc [hl]                                      ; $413a: $8e
    inc e                                         ; $413b: $1c
    ld sp, hl                                     ; $413c: $f9
    ld h, l                                       ; $413d: $65
    ld d, c                                       ; $413e: $51
    inc sp                                        ; $413f: $33
    daa                                           ; $4140: $27
    pop hl                                        ; $4141: $e1
    ld c, b                                       ; $4142: $48
    di                                            ; $4143: $f3
    sbc [hl]                                      ; $4144: $9e
    adc a                                         ; $4145: $8f
    add e                                         ; $4146: $83
    ld e, c                                       ; $4147: $59
    ld d, $fd                                     ; $4148: $16 $fd
    ld h, h                                       ; $414a: $64
    db $ed                                        ; $414b: $ed
    cpl                                           ; $414c: $2f
    sub a                                         ; $414d: $97
    scf                                           ; $414e: $37
    ld l, c                                       ; $414f: $69
    ld b, e                                       ; $4150: $43
    rst $20                                       ; $4151: $e7
    sbc h                                         ; $4152: $9c
    ld b, e                                       ; $4153: $43
    sbc l                                         ; $4154: $9d
    or [hl]                                       ; $4155: $b6
    or $9f                                        ; $4156: $f6 $9f
    xor c                                         ; $4158: $a9
    cp c                                          ; $4159: $b9
    ld [hl], a                                    ; $415a: $77
    dec e                                         ; $415b: $1d
    adc h                                         ; $415c: $8c
    db $fc                                        ; $415d: $fc

jr_062_415e:
    cp c                                          ; $415e: $b9
    ret c                                         ; $415f: $d8

    jp nz, $b5e6                                  ; $4160: $c2 $e6 $b5

    sbc d                                         ; $4163: $9a
    ld b, e                                       ; $4164: $43
    jr z, jr_062_415e                             ; $4165: $28 $f7

    dec bc                                        ; $4167: $0b
    rlca                                          ; $4168: $07
    ld e, h                                       ; $4169: $5c
    add $d4                                       ; $416a: $c6 $d4
    ld e, h                                       ; $416c: $5c
    ld c, h                                       ; $416d: $4c
    ld b, c                                       ; $416e: $41
    db $f4                                        ; $416f: $f4
    ld e, d                                       ; $4170: $5a
    call Call_062_5e7d                            ; $4171: $cd $7d $5e
    ei                                            ; $4174: $fb
    cpl                                           ; $4175: $2f
    add hl, bc                                    ; $4176: $09
    jr c, @-$0c                                   ; $4177: $38 $f2

    rst $20                                       ; $4179: $e7
    ld b, b                                       ; $417a: $40
    ret c                                         ; $417b: $d8

    jp hl                                         ; $417c: $e9


    ld e, d                                       ; $417d: $5a
    cp a                                          ; $417e: $bf
    or b                                          ; $417f: $b0
    rst $00                                       ; $4180: $c7
    jr nz, jr_062_41e8                            ; $4181: $20 $65

    sbc a                                         ; $4183: $9f
    rla                                           ; $4184: $17
    add l                                         ; $4185: $85
    ld h, h                                       ; $4186: $64
    ld c, d                                       ; $4187: $4a
    rst $28                                       ; $4188: $ef
    ld e, [hl]                                    ; $4189: $5e
    ld a, b                                       ; $418a: $78
    halt                                          ; $418b: $76
    adc b                                         ; $418c: $88
    dec l                                         ; $418d: $2d
    sub [hl]                                      ; $418e: $96
    ei                                            ; $418f: $fb
    dec b                                         ; $4190: $05
    db $ed                                        ; $4191: $ed
    pop af                                        ; $4192: $f1
    rst $00                                       ; $4193: $c7
    dec d                                         ; $4194: $15

Call_062_4195:
    ld l, d                                       ; $4195: $6a
    ld c, $f5                                     ; $4196: $0e $f5
    sub c                                         ; $4198: $91
    ld c, [hl]                                    ; $4199: $4e
    jp c, $fe0e                                   ; $419a: $da $0e $fe

    ld e, $05                                     ; $419d: $1e $05
    call $2f39                                    ; $419f: $cd $39 $2f
    rlca                                          ; $41a2: $07
    ld e, h                                       ; $41a3: $5c
    sub $ea                                       ; $41a4: $d6 $ea
    cp d                                          ; $41a6: $ba
    ld d, d                                       ; $41a7: $52
    adc $59                                       ; $41a8: $ce $59
    or $a3                                        ; $41aa: $f6 $a3
    xor d                                         ; $41ac: $aa
    adc h                                         ; $41ad: $8c
    dec c                                         ; $41ae: $0d
    ld e, l                                       ; $41af: $5d
    sbc c                                         ; $41b0: $99
    rst $00                                       ; $41b1: $c7
    ret nc                                        ; $41b2: $d0

    ld h, a                                       ; $41b3: $67
    sbc c                                         ; $41b4: $99
    cp e                                          ; $41b5: $bb
    db $e3                                        ; $41b6: $e3
    and c                                         ; $41b7: $a1
    ld [hl], e                                    ; $41b8: $73
    ld d, l                                       ; $41b9: $55
    ld a, [hl]                                    ; $41ba: $7e
    ld a, [c]                                     ; $41bb: $f2
    ld a, [de]                                    ; $41bc: $1a
    dec e                                         ; $41bd: $1d
    ld h, d                                       ; $41be: $62
    rst $20                                       ; $41bf: $e7
    ld [$c803], a                                 ; $41c0: $ea $03 $c8
    db $d3                                        ; $41c3: $d3
    ld [hl], c                                    ; $41c4: $71
    push af                                       ; $41c5: $f5
    ccf                                           ; $41c6: $3f
    adc a                                         ; $41c7: $8f
    ld h, l                                       ; $41c8: $65
    adc a                                         ; $41c9: $8f
    ld [hl], c                                    ; $41ca: $71
    dec d                                         ; $41cb: $15
    call nz, $2d8b                                ; $41cc: $c4 $8b $2d
    ld [c], a                                     ; $41cf: $e2
    cp h                                          ; $41d0: $bc
    ld e, a                                       ; $41d1: $5f
    add a                                         ; $41d2: $87
    ld c, h                                       ; $41d3: $4c
    ld e, e                                       ; $41d4: $5b

Jump_062_41d5:
    cp e                                          ; $41d5: $bb
    ld sp, $3286                                  ; $41d6: $31 $86 $32
    rst $20                                       ; $41d9: $e7
    jr jr_062_4256                                ; $41da: $18 $7a

    db $e3                                        ; $41dc: $e3
    rla                                           ; $41dd: $17
    ld l, e                                       ; $41de: $6b
    ld a, a                                       ; $41df: $7f
    ld bc, $baed                                  ; $41e0: $01 $ed $ba
    adc h                                         ; $41e3: $8c
    db $fc                                        ; $41e4: $fc
    add hl, sp                                    ; $41e5: $39
    rr d                                          ; $41e6: $cb $1a

jr_062_41e8:
    xor [hl]                                      ; $41e8: $ae
    jp z, Jump_000_28b8                           ; $41e9: $ca $b8 $28

    rst $38                                       ; $41ec: $ff
    ld l, $20                                     ; $41ed: $2e $20
    ld a, a                                       ; $41ef: $7f
    halt                                          ; $41f0: $76
    ldh a, [$bd]                                  ; $41f1: $f0 $bd
    sra b                                         ; $41f3: $cb $28
    sub l                                         ; $41f5: $95
    ld [hl], $32                                  ; $41f6: $36 $32
    cp $38                                        ; $41f8: $fe $38
    ld [hl], h                                    ; $41fa: $74
    xor [hl]                                      ; $41fb: $ae
    ld [hl], d                                    ; $41fc: $72
    inc sp                                        ; $41fd: $33
    ld l, c                                       ; $41fe: $69
    cp e                                          ; $41ff: $bb
    ld a, [hl-]                                   ; $4200: $3a
    ret z                                         ; $4201: $c8

    db $fd                                        ; $4202: $fd
    ld [bc], a                                    ; $4203: $02
    ld b, a                                       ; $4204: $47
    ld e, [hl]                                    ; $4205: $5e
    ld c, d                                       ; $4206: $4a
    ld c, c                                       ; $4207: $49
    rst $28                                       ; $4208: $ef
    ld [$b420], a                                 ; $4209: $ea $20 $b4
    inc hl                                        ; $420c: $23
    ld e, a                                       ; $420d: $5f
    ld b, a                                       ; $420e: $47
    ld e, $70                                     ; $420f: $1e $70
    ld e, c                                       ; $4211: $59
    inc c                                         ; $4212: $0c
    ld a, l                                       ; $4213: $7d
    adc a                                         ; $4214: $8f
    ld [hl], c                                    ; $4215: $71
    and l                                         ; $4216: $a5
    ld d, e                                       ; $4217: $53
    ret nc                                        ; $4218: $d0

    db $e3                                        ; $4219: $e3
    ld e, a                                       ; $421a: $5f
    cp h                                          ; $421b: $bc
    rlca                                          ; $421c: $07
    jp z, $347e                                   ; $421d: $ca $7e $34

    call z, $2c5f                                 ; $4220: $cc $5f $2c
    or h                                          ; $4223: $b4
    dec a                                         ; $4224: $3d
    sub [hl]                                      ; $4225: $96
    and c                                         ; $4226: $a1
    ld a, c                                       ; $4227: $79
    adc l                                         ; $4228: $8d
    ld c, $b1                                     ; $4229: $0e $b1
    ld [hl], e                                    ; $422b: $73
    and b                                         ; $422c: $a0
    sub h                                         ; $422d: $94
    rst $10                                       ; $422e: $d7
    call $daf7                                    ; $422f: $cd $f7 $da
    call z, Call_000_186b                         ; $4232: $cc $6b $18
    dec hl                                        ; $4235: $2b
    ld a, e                                       ; $4236: $7b
    ld sp, $eef4                                  ; $4237: $31 $f4 $ee
    push bc                                       ; $423a: $c5
    sub h                                         ; $423b: $94
    db $f4                                        ; $423c: $f4
    ld a, $af                                     ; $423d: $3e $af
    ld e, d                                       ; $423f: $5a
    ret nc                                        ; $4240: $d0

    inc hl                                        ; $4241: $23
    rst $38                                       ; $4242: $ff
    or e                                          ; $4243: $b3
    rra                                           ; $4244: $1f
    xor l                                         ; $4245: $ad
    or d                                          ; $4246: $b2
    ld [hl], c                                    ; $4247: $71
    adc a                                         ; $4248: $8f
    ld [hl], c                                    ; $4249: $71
    ld [de], a                                    ; $424a: $12
    ld c, d                                       ; $424b: $4a
    rst $30                                       ; $424c: $f7
    ld a, [hl]                                    ; $424d: $7e
    or h                                          ; $424e: $b4
    rlca                                          ; $424f: $07
    call nz, $2d8b                                ; $4250: $c4 $8b $2d
    ld [c], a                                     ; $4253: $e2
    ld e, h                                       ; $4254: $5c
    dec c                                         ; $4255: $0d

jr_062_4256:
    rst $08                                       ; $4256: $cf
    xor d                                         ; $4257: $aa
    ld a, [$2a7d]                                 ; $4258: $fa $7d $2a
    inc a                                         ; $425b: $3c
    adc a                                         ; $425c: $8f
    rlca                                          ; $425d: $07
    inc de                                        ; $425e: $13
    ld c, d                                       ; $425f: $4a
    ld h, l                                       ; $4260: $65
    ld c, a                                       ; $4261: $4f
    cpl                                           ; $4262: $2f
    cp [hl]                                       ; $4263: $be
    ld [hl], a                                    ; $4264: $77
    jp hl                                         ; $4265: $e9


    sub a                                         ; $4266: $97
    ld e, l                                       ; $4267: $5d
    or d                                          ; $4268: $b2
    xor b                                         ; $4269: $a8
    add hl, sp                                    ; $426a: $39
    cp $8a                                        ; $426b: $fe $8a
    db $fc                                        ; $426d: $fc
    db $dd                                        ; $426e: $dd
    or d                                          ; $426f: $b2
    ret nc                                        ; $4270: $d0

    ld a, [de]                                    ; $4271: $1a
    inc c                                         ; $4272: $0c
    call $a923                                    ; $4273: $cd $23 $a9
    ld [hl], h                                    ; $4276: $74
    ld d, a                                       ; $4277: $57
    or $b8                                        ; $4278: $f6 $b8
    sbc c                                         ; $427a: $99
    or d                                          ; $427b: $b2
    ret c                                         ; $427c: $d8

    cp b                                          ; $427d: $b8
    rlca                                          ; $427e: $07
    ld d, b                                       ; $427f: $50
    ld a, $af                                     ; $4280: $3e $af
    push de                                       ; $4282: $d5
    ld e, h                                       ; $4283: $5c
    and a                                         ; $4284: $a7
    ld h, $fe                                     ; $4285: $26 $fe
    ld [hl], d                                    ; $4287: $72
    adc $da                                       ; $4288: $ce $da
    inc a                                         ; $428a: $3c

Call_062_428b:
Jump_062_428b:
    push af                                       ; $428b: $f5
    ld h, l                                       ; $428c: $65
    rrca                                          ; $428d: $0f
    dec d                                         ; $428e: $15
    dec a                                         ; $428f: $3d
    cp d                                          ; $4290: $ba
    ld [hl], e                                    ; $4291: $73
    add sp, $5c                                   ; $4292: $e8 $5c
    jr z, @-$1b                                   ; $4294: $28 $e3

    ld e, a                                       ; $4296: $5f
    inc a                                         ; $4297: $3c
    ld a, [c]                                     ; $4298: $f2
    ccf                                           ; $4299: $3f
    ld a, e                                       ; $429a: $7b
    adc h                                         ; $429b: $8c
    ld a, e                                       ; $429c: $7b
    inc l                                         ; $429d: $2c
    ld [hl], l                                    ; $429e: $75
    ld l, b                                       ; $429f: $68
    ld e, [hl]                                    ; $42a0: $5e
    push hl                                       ; $42a1: $e5
    adc a                                         ; $42a2: $8f
    ld d, b                                       ; $42a3: $50
    and $dc                                       ; $42a4: $e6 $dc
    ld b, e                                       ; $42a6: $43
    ld c, l                                       ; $42a7: $4d
    push bc                                       ; $42a8: $c5
    rst $30                                       ; $42a9: $f7
    ld c, $59                                     ; $42aa: $0e $59
    ld [hl], b                                    ; $42ac: $70
    rrca                                          ; $42ad: $0f
    sub h                                         ; $42ae: $94
    sbc c                                         ; $42af: $99
    ld d, a                                       ; $42b0: $57
    db $e3                                        ; $42b1: $e3
    sbc a                                         ; $42b2: $9f
    xor e                                         ; $42b3: $ab
    call $7a91                                    ; $42b4: $cd $91 $7a
    ld [hl-], a                                   ; $42b7: $32
    inc d                                         ; $42b8: $14
    ld e, [hl]                                    ; $42b9: $5e
    dec c                                         ; $42ba: $0d
    rst $08                                       ; $42bb: $cf
    ld e, $bd                                     ; $42bc: $1e $bd
    ld b, e                                       ; $42be: $43
    pop hl                                        ; $42bf: $e1
    dec e                                         ; $42c0: $1d
    ld sp, hl                                     ; $42c1: $f9
    ld [bc], a                                    ; $42c2: $02
    ld b, a                                       ; $42c3: $47
    ld e, [hl]                                    ; $42c4: $5e
    ld c, d                                       ; $42c5: $4a
    ret                                           ; $42c6: $c9


    ld c, $65                                     ; $42c7: $0e $65
    inc h                                         ; $42c9: $24
    db $f4                                        ; $42ca: $f4
    ld l, d                                       ; $42cb: $6a
    and c                                         ; $42cc: $a1
    db $ed                                        ; $42cd: $ed
    ld [bc], a                                    ; $42ce: $02
    ld a, [c]                                     ; $42cf: $f2
    ld h, a                                       ; $42d0: $67
    rlca                                          ; $42d1: $07
    rst $28                                       ; $42d2: $ef
    ret z                                         ; $42d3: $c8

    ei                                            ; $42d4: $fb
    dec b                                         ; $42d5: $05
    rst $10                                       ; $42d6: $d7
    pop bc                                        ; $42d7: $c1
    call nc, Call_000_3597                        ; $42d8: $d4 $97 $35
    ld d, d                                       ; $42db: $52
    cpl                                           ; $42dc: $2f
    sbc [hl]                                      ; $42dd: $9e
    ld e, [hl]                                    ; $42de: $5e
    dec [hl]                                      ; $42df: $35
    jp nc, $90a1                                  ; $42e0: $d2 $a1 $90

    add $aa                                       ; $42e3: $c6 $aa
    ld a, [hl]                                    ; $42e5: $7e
    xor e                                         ; $42e6: $ab
    ld h, l                                       ; $42e7: $65
    add hl, de                                    ; $42e8: $19
    ld b, e                                       ; $42e9: $43
    rst $18                                       ; $42ea: $df
    rst $20                                       ; $42eb: $e7
    ld [hl], l                                    ; $42ec: $75
    xor b                                         ; $42ed: $a8
    db $ec                                        ; $42ee: $ec
    sub c                                         ; $42ef: $91
    rst $38                                       ; $42f0: $ff
    ld e, c                                       ; $42f1: $59
    ld l, b                                       ; $42f2: $68
    dec c                                         ; $42f3: $0d
    add $cd                                       ; $42f4: $c6 $cd
    inc d                                         ; $42f6: $14
    di                                            ; $42f7: $f3
    cp l                                          ; $42f8: $bd
    inc bc                                        ; $42f9: $03
    ld l, $e3                                     ; $42fa: $2e $e3
    inc c                                         ; $42fc: $0c
    cp c                                          ; $42fd: $b9
    rst $08                                       ; $42fe: $cf
    ld b, e                                       ; $42ff: $43
    res 3, h                                      ; $4300: $cb $9c
    xor e                                         ; $4302: $ab
    inc e                                         ; $4303: $1c
    ld [hl], d                                    ; $4304: $72
    ld [de], a                                    ; $4305: $12
    call nc, $fa18                                ; $4306: $d4 $18 $fa
    ld a, $0f                                     ; $4309: $3e $0f
    add hl, hl                                    ; $430b: $29
    ld c, d                                       ; $430c: $4a
    ld a, c                                       ; $430d: $79
    and c                                         ; $430e: $a1
    xor [hl]                                      ; $430f: $ae
    pop hl                                        ; $4310: $e1
    ld d, d                                       ; $4311: $52
    cp h                                          ; $4312: $bc
    ld a, [$de1f]                                 ; $4313: $fa $1f $de
    push hl                                       ; $4316: $e5
    ld hl, $4e1b                                  ; $4317: $21 $1b $4e
    cp [hl]                                       ; $431a: $be
    ld [hl], a                                    ; $431b: $77

Jump_062_431c:
    ret nz                                        ; $431c: $c0

    ld h, l                                       ; $431d: $65
    push de                                       ; $431e: $d5
    add d                                         ; $431f: $82

jr_062_4320:
    adc $b5                                       ; $4320: $ce $b5
    dec de                                        ; $4322: $1b

Call_062_4323:
    ld h, e                                       ; $4323: $63
    jr z, jr_062_4389                             ; $4324: $28 $63

    add sp, -$73                                  ; $4326: $e8 $8d
    ld e, a                                       ; $4328: $5f
    cp h                                          ; $4329: $bc
    rst $00                                       ; $432a: $c7
    jr c, jr_062_4320                             ; $432b: $38 $f3

    ld l, d                                       ; $432d: $6a
    db $fc                                        ; $432e: $fc
    di                                            ; $432f: $f3
    sbc $65                                       ; $4330: $de $65
    rra                                           ; $4332: $1f
    rla                                           ; $4333: $17
    ld [$5f44], a                                 ; $4334: $ea $44 $5f
    ld l, c                                       ; $4337: $69

Jump_062_4338:
    ld c, $04                                     ; $4338: $0e $04
    rla                                           ; $433a: $17
    jp z, $142a                                   ; $433b: $ca $2a $14

    rrca                                          ; $433e: $0f
    call $e863                                    ; $433f: $cd $63 $e8
    ld l, e                                       ; $4342: $6b
    rst $38                                       ; $4343: $ff
    dec h                                         ; $4344: $25
    ld bc, $17ef                                  ; $4345: $01 $ef $17
    sub a                                         ; $4348: $97
    add a                                         ; $4349: $87
    ld l, h                                       ; $434a: $6c
    jr c, jr_062_43a6                             ; $434b: $38 $59

    ei                                            ; $434d: $fb
    jp c, $acbf                                   ; $434e: $da $bf $ac

    or $df                                        ; $4351: $f6 $df
    ld e, d                                       ; $4353: $5a
    ld c, h                                       ; $4354: $4c
    ld d, c                                       ; $4355: $51
    jp c, Jump_062_4877                           ; $4356: $da $77 $48

    ld l, c                                       ; $4359: $69
    inc b                                         ; $435a: $04
    add a                                         ; $435b: $87
    ld d, b                                       ; $435c: $50
    ld l, b                                       ; $435d: $68
    ld l, e                                       ; $435e: $6b
    rst $38                                       ; $435f: $ff
    sbc c                                         ; $4360: $99
    ld a, [de]                                    ; $4361: $1a
    jp c, Jump_000_2fa2                           ; $4362: $da $a2 $2f

    ld h, l                                       ; $4365: $65
    db $e4                                        ; $4366: $e4
    ld a, a                                       ; $4367: $7f
    or h                                          ; $4368: $b4
    cp a                                          ; $4369: $bf
    db $ed                                        ; $436a: $ed
    adc $39                                       ; $436b: $ce $39
    ld b, a                                       ; $436d: $47
    ld a, [hl]                                    ; $436e: $7e
    cp c                                          ; $436f: $b9
    rst $10                                       ; $4370: $d7
    and [hl]                                      ; $4371: $a6
    cpl                                           ; $4372: $2f
    ld [hl], $ae                                  ; $4373: $36 $ae
    inc b                                         ; $4375: $04
    db $e4                                        ; $4376: $e4
    ld a, l                                       ; $4377: $7d
    ld e, $9a                                     ; $4378: $1e $9a
    reti                                          ; $437a: $d9


    adc e                                         ; $437b: $8b
    and c                                         ; $437c: $a1
    xor a                                         ; $437d: $af
    ld a, [hl+]                                   ; $437e: $2a
    rrca                                          ; $437f: $0f
    adc d                                         ; $4380: $8a
    add l                                         ; $4381: $85
    ld [hl], $50                                  ; $4382: $36 $50
    jp z, $bce7                                   ; $4384: $ca $e7 $bc

    rlca                                          ; $4387: $07
    ld e, h                                       ; $4388: $5c

jr_062_4389:
    ld d, $1b                                     ; $4389: $16 $1b
    add a                                         ; $438b: $87
    and $95                                       ; $438c: $e6 $95
    add b                                         ; $438e: $80
    ld a, h                                       ; $438f: $7c
    rst $28                                       ; $4390: $ef
    add b                                         ; $4391: $80
    rr d                                          ; $4392: $cb $1a
    dec e                                         ; $4394: $1d

Call_062_4395:
    adc [hl]                                      ; $4395: $8e
    call z, Call_000_1509                         ; $4396: $cc $09 $15
    ld a, c                                       ; $4399: $79
    inc c                                         ; $439a: $0c
    ld a, l                                       ; $439b: $7d
    ld b, a                                       ; $439c: $47
    ld d, l                                       ; $439d: $55
    and c                                         ; $439e: $a1
    ld b, [hl]                                    ; $439f: $46
    db $ec                                        ; $43a0: $ec
    and e                                         ; $43a1: $a3
    rst $30                                       ; $43a2: $f7
    ld a, c                                       ; $43a3: $79
    push de                                       ; $43a4: $d5
    add d                                         ; $43a5: $82

jr_062_43a6:
    ld e, [hl]                                    ; $43a6: $5e
    add a                                         ; $43a7: $87
    sbc $bd                                       ; $43a8: $de $bd
    bit 0, e                                      ; $43aa: $cb $43
    ld [hl], $9c                                  ; $43ac: $36 $9c
    cp h                                          ; $43ae: $bc
    ld b, [hl]                                    ; $43af: $46
    ld c, b                                       ; $43b0: $48
    cp [hl]                                       ; $43b1: $be
    ld e, a                                       ; $43b2: $5f
    rst $10                                       ; $43b3: $d7
    pop bc                                        ; $43b4: $c1
    ret z                                         ; $43b5: $c8

    sbc a                                         ; $43b6: $9f
    adc e                                         ; $43b7: $8b
    sbc d                                         ; $43b8: $9a
    and $35                                       ; $43b9: $e6 $35
    jp nc, $a2f1                                  ; $43bb: $d2 $f1 $a2

    db $fc                                        ; $43be: $fc
    cp e                                          ; $43bf: $bb
    add b                                         ; $43c0: $80
    db $fc                                        ; $43c1: $fc
    reti                                          ; $43c2: $d9


    pop bc                                        ; $43c3: $c1
    cp e                                          ; $43c4: $bb
    sbc $bf                                       ; $43c5: $de $bf
    halt                                          ; $43c7: $76
    ld l, e                                       ; $43c8: $6b
    xor $b5                                       ; $43c9: $ee $b5
    ld a, a                                       ; $43cb: $7f
    add hl, de                                    ; $43cc: $19
    ld sp, hl                                     ; $43cd: $f9
    ld [hl], e                                    ; $43ce: $73
    ld [de], a                                    ; $43cf: $12
    ld c, d                                       ; $43d0: $4a
    rst $30                                       ; $43d1: $f7
    ld h, d                                       ; $43d2: $62
    adc e                                         ; $43d3: $8b
    jr c, jr_062_442d                             ; $43d4: $38 $57

    jp $18b3                                      ; $43d6: $c3 $b3 $18


    ld a, [$17f8]                                 ; $43d9: $fa $f8 $17
    rst $28                                       ; $43dc: $ef
    ld a, [c]                                     ; $43dd: $f2
    sub b                                         ; $43de: $90
    dec c                                         ; $43df: $0d
    daa                                           ; $43e0: $27
    rst $28                                       ; $43e1: $ef
    ld sp, $53ae                                  ; $43e2: $31 $ae $53
    inc de                                        ; $43e5: $13
    ld a, a                                       ; $43e6: $7f
    ld e, c                                       ; $43e7: $59
    ld l, h                                       ; $43e8: $6c
    call c, $2803                                 ; $43e9: $dc $03 $28
    sbc a                                         ; $43ec: $9f
    rst $28                                       ; $43ed: $ef
    rla                                           ; $43ee: $17
    ld l, l                                       ; $43ef: $6d
    and $39                                       ; $43f0: $e6 $39
    rlca                                          ; $43f2: $07

jr_062_43f3:
    dec bc                                        ; $43f3: $0b
    adc c                                         ; $43f4: $89
    sub [hl]                                      ; $43f5: $96
    ld a, e                                       ; $43f6: $7b
    add a                                         ; $43f7: $87
    sbc d                                         ; $43f8: $9a
    xor e                                         ; $43f9: $ab
    xor [hl]                                      ; $43fa: $ae
    adc e                                         ; $43fb: $8b
    ld h, c                                       ; $43fc: $61
    add sp, -$44                                  ; $43fd: $e8 $bc
    ld e, a                                       ; $43ff: $5f
    rla                                           ; $4400: $17
    ld a, l                                       ; $4401: $7d
    add hl, hl                                    ; $4402: $29
    ld b, [hl]                                    ; $4403: $46
    rst $28                                       ; $4404: $ef
    sub d                                         ; $4405: $92
    sub c                                         ; $4406: $91
    rst $38                                       ; $4407: $ff
    add hl, sp                                    ; $4408: $39
    rst $20                                       ; $4409: $e7
    dec b                                         ; $440a: $05
    sub a                                         ; $440b: $97
    jr z, jr_062_43f3                             ; $440c: $28 $e5

    ld e, c                                       ; $440e: $59
    ld d, b                                       ; $440f: $50
    db $f4                                        ; $4410: $f4
    ei                                            ; $4411: $fb
    dec b                                         ; $4412: $05
    ld d, a                                       ; $4413: $57
    ld h, $35                                     ; $4414: $26 $35
    ld e, $14                                     ; $4416: $1e $14
    dec bc                                        ; $4418: $0b
    ld l, l                                       ; $4419: $6d
    db $ed                                        ; $441a: $ed
    ccf                                           ; $441b: $3f
    ld d, e                                       ; $441c: $53
    and e                                         ; $441d: $a3
    ld a, l                                       ; $441e: $7d
    rst $10                                       ; $441f: $d7
    pop bc                                        ; $4420: $c1
    sbc [hl]                                      ; $4421: $9e
    and $c8                                       ; $4422: $e6 $c8
    rra                                           ; $4424: $1f
    ld a, e                                       ; $4425: $7b
    db $e4                                        ; $4426: $e4
    ld a, a                                       ; $4427: $7f
    add $d0                                       ; $4428: $c6 $d0
    dec de                                        ; $442a: $1b
    cp a                                          ; $442b: $bf
    ld e, b                                       ; $442c: $58

jr_062_442d:
    ei                                            ; $442d: $fb
    dec bc                                        ; $442e: $0b
    rst $10                                       ; $442f: $d7
    pop bc                                        ; $4430: $c1
    sbc [hl]                                      ; $4431: $9e
    and $48                                       ; $4432: $e6 $48
    rst $30                                       ; $4434: $f7
    xor $f4                                       ; $4435: $ee $f4
    xor d                                         ; $4437: $aa
    rst $30                                       ; $4438: $f7
    ld a, c                                       ; $4439: $79
    ld a, [hl+]                                   ; $443a: $2a

Call_062_443b:
    inc a                                         ; $443b: $3c
    adc a                                         ; $443c: $8f
    rst $30                                       ; $443d: $f7
    and e                                         ; $443e: $a3

jr_062_443f:
    ld d, l                                       ; $443f: $55
    ld [hl], $de                                  ; $4440: $36 $de
    cpl                                           ; $4442: $2f
    rlca                                          ; $4443: $07
    ld e, h                                       ; $4444: $5c
    add $19                                       ; $4445: $c6 $19
    ld [hl], d                                    ; $4447: $72
    sub l                                         ; $4448: $95
    ccf                                           ; $4449: $3f
    ld b, d                                       ; $444a: $42
    reti                                          ; $444b: $d9


    rst $20                                       ; $444c: $e7
    pop de                                        ; $444d: $d1
    ld e, l                                       ; $444e: $5d
    sub $d0                                       ; $444f: $d6 $d0
    inc de                                        ; $4451: $13
    cp l                                          ; $4452: $bd
    jp nc, $ac1c                                  ; $4453: $d2 $1c $ac

    or d                                          ; $4456: $b2
    pop de                                        ; $4457: $d1
    cp h                                          ; $4458: $bc
    jr z, jr_062_443f                             ; $4459: $28 $e4

    db $10                                        ; $445b: $10

Jump_062_445c:
    ld a, [bc]                                    ; $445c: $0a
    ld l, l                                       ; $445d: $6d
    db $ed                                        ; $445e: $ed
    adc $07                                       ; $445f: $ce $07
    add d                                         ; $4461: $82
    ld hl, sp+$7e                                 ; $4462: $f8 $7e
    ld bc, $fa6d                                  ; $4464: $01 $6d $fa
    ret z                                         ; $4467: $c8

    sbc a                                         ; $4468: $9f
    adc e                                         ; $4469: $8b
    add hl, hl                                    ; $446a: $29
    ld l, c                                       ; $446b: $69
    ld e, [hl]                                    ; $446c: $5e
    push de                                       ; $446d: $d5
    sub h                                         ; $446e: $94
    ld a, e                                       ; $446f: $7b
    ld l, l                                       ; $4470: $6d
    xor [hl]                                      ; $4471: $ae
    ld a, [hl-]                                   ; $4472: $3a
    ld e, d                                       ; $4473: $5a
    and [hl]                                      ; $4474: $a6
    cp [hl]                                       ; $4475: $be
    adc h                                         ; $4476: $8c
    xor $32                                       ; $4477: $ee $32
    push de                                       ; $4479: $d5
    ld a, a                                       ; $447a: $7f
    ld a, d                                       ; $447b: $7a
    rrca                                          ; $447c: $0f
    sub h                                         ; $447d: $94
    ld [hl], l                                    ; $447e: $75
    jr z, jr_062_44df                             ; $447f: $28 $5e

    ld l, l                                       ; $4481: $6d
    xor [hl]                                      ; $4482: $ae
    inc b                                         ; $4483: $04
    db $e4                                        ; $4484: $e4
    push de                                       ; $4485: $d5
    ldh a, [$0c]                                  ; $4486: $f0 $0c
    push af                                       ; $4488: $f5
    xor c                                         ; $4489: $a9
    cpl                                           ; $448a: $2f
    rst $30                                       ; $448b: $f7
    dec bc                                        ; $448c: $0b
    add a                                         ; $448d: $87
    sbc d                                         ; $448e: $9a
    ld [hl], e                                    ; $448f: $73
    ld c, $cd                                     ; $4490: $0e $cd
    ei                                            ; $4492: $fb
    ld d, c                                       ; $4493: $51
    and c                                         ; $4494: $a1
    add a                                         ; $4495: $87
    ld h, h                                       ; $4496: $64
    db $ed                                        ; $4497: $ed
    cp e                                          ; $4498: $bb
    inc [hl]                                      ; $4499: $34
    inc a                                         ; $449a: $3c
    or h                                          ; $449b: $b4
    or l                                          ; $449c: $b5
    dec sp                                        ; $449d: $3b
    rra                                           ; $449e: $1f
    ld [$fbe2], sp                                ; $449f: $08 $e2 $fb
    dec b                                         ; $44a2: $05
    add a                                         ; $44a3: $87
    sbc d                                         ; $44a4: $9a
    ld [hl], e                                    ; $44a5: $73
    adc [hl]                                      ; $44a6: $8e
    ld bc, $032d                                  ; $44a7: $01 $2d $03
    ld b, c                                       ; $44aa: $41
    db $d3                                        ; $44ab: $d3
    sub $fe                                       ; $44ac: $d6 $fe
    ld c, e                                       ; $44ae: $4b
    ld [bc], a                                    ; $44af: $02
    sbc $2f                                       ; $44b0: $de $2f
    db $ed                                        ; $44b2: $ed
    ld e, a                                       ; $44b3: $5f
    ld b, [hl]                                    ; $44b4: $46
    cp $dc                                        ; $44b5: $fe $dc
    di                                            ; $44b7: $f3
    ld l, e                                       ; $44b8: $6b
    ld [hl], l                                    ; $44b9: $75
    xor $47                                       ; $44ba: $ee $47
    ld a, e                                       ; $44bc: $7b
    ld a, $8e                                     ; $44bd: $3e $8e
    and c                                         ; $44bf: $a1
    cpl                                           ; $44c0: $2f
    ld c, l                                       ; $44c1: $4d
    xor a                                         ; $44c2: $af
    sub [hl]                                      ; $44c3: $96
    ld a, e                                       ; $44c4: $7b
    ld d, a                                       ; $44c5: $57
    sub h                                         ; $44c6: $94
    pop de                                        ; $44c7: $d1
    ld e, l                                       ; $44c8: $5d
    ld b, [hl]                                    ; $44c9: $46
    cp $5c                                        ; $44ca: $fe $5c
    db $eb                                        ; $44cc: $eb
    dec hl                                        ; $44cd: $2b
    ld h, l                                       ; $44ce: $65
    ld e, $f9                                     ; $44cf: $1e $f9
    and l                                         ; $44d1: $a5
    xor [hl]                                      ; $44d2: $ae
    pop af                                        ; $44d3: $f1
    sbc a                                         ; $44d4: $9f
    ld [$7189], a                                 ; $44d5: $ea $89 $71
    or l                                          ; $44d8: $b5
    add hl, sp                                    ; $44d9: $39
    ld a, [c]                                     ; $44da: $f2
    bit 0, b                                      ; $44db: $cb $40

jr_062_44dd:
    dec e                                         ; $44dd: $1d
    add hl, sp                                    ; $44de: $39

jr_062_44df:
    dec d                                         ; $44df: $15
    sbc [hl]                                      ; $44e0: $9e
    rst $00                                       ; $44e1: $c7
    add hl, sp                                    ; $44e2: $39
    add [hl]                                      ; $44e3: $86
    cp [hl]                                       ; $44e4: $be
    rst $08                                       ; $44e5: $cf
    adc e                                         ; $44e6: $8b
    xor b                                         ; $44e7: $a8
    db $dd                                        ; $44e8: $dd
    xor e                                         ; $44e9: $ab
    ld d, b                                       ; $44ea: $50
    ld h, [hl]                                    ; $44eb: $66
    xor c                                         ; $44ec: $a9
    pop hl                                        ; $44ed: $e1
    cp c                                          ; $44ee: $b9
    ld e, a                                       ; $44ef: $5f
    db $ed                                        ; $44f0: $ed
    ld e, a                                       ; $44f1: $5f
    ld b, [hl]                                    ; $44f2: $46
    ld b, c                                       ; $44f3: $41
    rst $20                                       ; $44f4: $e7
    ld a, [hl+]                                   ; $44f5: $2a
    jr z, jr_062_44dd                             ; $44f6: $28 $e5

    db $e4                                        ; $44f8: $e4
    and c                                         ; $44f9: $a1
    ld h, l                                       ; $44fa: $65
    adc l                                         ; $44fb: $8d
    rst $38                                       ; $44fc: $ff

jr_062_44fd:
    ld d, h                                       ; $44fd: $54
    cpl                                           ; $44fe: $2f
    and d                                         ; $44ff: $a2
    ld h, [hl]                                    ; $4500: $66
    push hl                                       ; $4501: $e5
    ei                                            ; $4502: $fb
    dec b                                         ; $4503: $05
    rst $10                                       ; $4504: $d7
    pop bc                                        ; $4505: $c1
    sbc [hl]                                      ; $4506: $9e
    and $aa                                       ; $4507: $e6 $aa
    rst $30                                       ; $4509: $f7
    ld a, c                                       ; $450a: $79
    ld a, [hl+]                                   ; $450b: $2a
    inc a                                         ; $450c: $3c
    adc a                                         ; $450d: $8f
    rst $30                                       ; $450e: $f7
    and e                                         ; $450f: $a3
    ld d, l                                       ; $4510: $55
    ld [hl], $d2                                  ; $4511: $36 $d2

jr_062_4513:
    ld b, [hl]                                    ; $4513: $46
    add $50                                       ; $4514: $c6 $50
    rla                                           ; $4516: $17
    jp $faaa                                      ; $4517: $c3 $aa $fa


    ld a, l                                       ; $451a: $7d
    jp nc, Jump_062_685c                          ; $451b: $d2 $5c $68

    xor l                                         ; $451e: $ad
    push de                                       ; $451f: $d5
    inc e                                         ; $4520: $1c
    add a                                         ; $4521: $87
    ld d, [hl]                                    ; $4522: $56
    res 6, d                                      ; $4523: $cb $b2
    rra                                           ; $4525: $1f
    adc l                                         ; $4526: $8d
    sbc e                                         ; $4527: $9b
    add hl, hl                                    ; $4528: $29
    and $c1                                       ; $4529: $e6 $c1
    jr jr_062_44fd                                ; $452b: $18 $d0

    rst $30                                       ; $452d: $f7
    dec bc                                        ; $452e: $0b
    rla                                           ; $452f: $17
    db $fd                                        ; $4530: $fd
    adc h                                         ; $4531: $8c
    db $dd                                        ; $4532: $dd
    ld l, c                                       ; $4533: $69
    cp e                                          ; $4534: $bb
    inc a                                         ; $4535: $3c
    ld h, h                                       ; $4536: $64
    jp $dac9                                      ; $4537: $c3 $c9 $da


    ld [hl], a                                    ; $453a: $77
    ret nz                                        ; $453b: $c0

    ld h, l                                       ; $453c: $65
    ld sp, $fdf4                                  ; $453d: $31 $f4 $fd
    adc [hl]                                      ; $4540: $8e
    add hl, bc                                    ; $4541: $09
    ld h, l                                       ; $4542: $65
    and l                                         ; $4543: $a5
    ei                                            ; $4544: $fb
    ld a, c                                       ; $4545: $79
    inc a                                         ; $4546: $3c
    add h                                         ; $4547: $84
    and d                                         ; $4548: $a2
    db $fd                                        ; $4549: $fd
    dec b                                         ; $454a: $05
    add a                                         ; $454b: $87
    ld h, d                                       ; $454c: $62
    and e                                         ; $454d: $a3
    ld [hl], e                                    ; $454e: $73
    and c                                         ; $454f: $a1
    db $ec                                        ; $4550: $ec
    and h                                         ; $4551: $a4
    inc de                                        ; $4552: $13
    sub $0a                                       ; $4553: $d6 $0a
    jr nz, jr_062_4513                            ; $4555: $20 $bc

    jr z, @+$01                                   ; $4557: $28 $ff

    ld c, $75                                     ; $4559: $0e $75
    dec c                                         ; $455b: $0d
    sub e                                         ; $455c: $93
    ld c, [hl]                                    ; $455d: $4e
    sub b                                         ; $455e: $90
    ld b, l                                       ; $455f: $45
    ld hl, $79f7                                  ; $4560: $21 $f7 $79
    sub l                                         ; $4563: $95
    db $d3                                        ; $4564: $d3
    db $f4                                        ; $4565: $f4
    ret z                                         ; $4566: $c8

    ld c, e                                       ; $4567: $4b
    ld e, l                                       ; $4568: $5d
    sub b                                         ; $4569: $90
    rla                                           ; $456a: $17
    sbc [hl]                                      ; $456b: $9e
    dec a                                         ; $456c: $3d
    add b                                         ; $456d: $80
    cp h                                          ; $456e: $bc
    ldh a, [$4c]                                  ; $456f: $f0 $4c
    ld a, $b3                                     ; $4571: $3e $b3
    ld b, l                                       ; $4573: $45
    ei                                            ; $4574: $fb
    dec bc                                        ; $4575: $0b
    ld l, l                                       ; $4576: $6d
    ld a, [$90a2]                                 ; $4577: $fa $a2 $90
    sub l                                         ; $457a: $95
    sbc e                                         ; $457b: $9b
    add hl, sp                                    ; $457c: $39
    ld d, b                                       ; $457d: $50
    jp z, $b5b4                                   ; $457e: $ca $b4 $b5

    ld [hl-], a                                   ; $4581: $32
    ld b, h                                       ; $4582: $44
    xor [hl]                                      ; $4583: $ae
    dec [hl]                                      ; $4584: $35
    db $e4                                        ; $4585: $e4
    cp l                                          ; $4586: $bd
    or $9f                                        ; $4587: $f6 $9f
    xor c                                         ; $4589: $a9
    reti                                          ; $458a: $d9


    sub l                                         ; $458b: $95
    add c                                         ; $458c: $81
    reti                                          ; $458d: $d9


    add hl, sp                                    ; $458e: $39
    rst $20                                       ; $458f: $e7
    ld e, d                                       ; $4590: $5a
    call $a6c5                                    ; $4591: $cd $c5 $a6
    cpl                                           ; $4594: $2f
    sub h                                         ; $4595: $94
    sub c                                         ; $4596: $91
    ld e, a                                       ; $4597: $5f
    ld b, [hl]                                    ; $4598: $46
    cp $9c                                        ; $4599: $fe $9c
    ld h, l                                       ; $459b: $65
    sbc b                                         ; $459c: $98
    cp a                                          ; $459d: $bf
    ld e, b                                       ; $459e: $58
    ei                                            ; $459f: $fb
    dec bc                                        ; $45a0: $0b
    sub a                                         ; $45a1: $97
    ld a, l                                       ; $45a2: $7d
    ld h, [hl]                                    ; $45a3: $66
    ld h, a                                       ; $45a4: $67
    add a                                         ; $45a5: $87
    jp nz, Jump_062_77da                          ; $45a6: $c2 $da $77

    ld h, l                                       ; $45a9: $65
    add [hl]                                      ; $45aa: $86
    ret z                                         ; $45ab: $c8

    or l                                          ; $45ac: $b5
    add [hl]                                      ; $45ad: $86
    call c, $f921                                 ; $45ae: $dc $21 $f9
    dec l                                         ; $45b1: $2d
    xor a                                         ; $45b2: $af
    xor d                                         ; $45b3: $aa
    rst $18                                       ; $45b4: $df
    daa                                           ; $45b5: $27
    ld b, c                                       ; $45b6: $41
    dec l                                         ; $45b7: $2d
    ld l, d                                       ; $45b8: $6a
    xor [hl]                                      ; $45b9: $ae
    pop hl                                        ; $45ba: $e1
    xor d                                         ; $45bb: $aa
    adc h                                         ; $45bc: $8c
    dec bc                                        ; $45bd: $0b
    rst $08                                       ; $45be: $cf
    ret nc                                        ; $45bf: $d0

    call z, $fed6                                 ; $45c0: $cc $d6 $fe
    ld [bc], a                                    ; $45c3: $02
    add a                                         ; $45c4: $87
    ld c, h                                       ; $45c5: $4c
    dec de                                        ; $45c6: $1b
    ld a, [hl-]                                   ; $45c7: $3a
    rst $20                                       ; $45c8: $e7
    inc e                                         ; $45c9: $1c
    ld e, d                                       ; $45ca: $5a
    ei                                            ; $45cb: $fb
    dec bc                                        ; $45cc: $0b
    rst $10                                       ; $45cd: $d7
    pop bc                                        ; $45ce: $c1
    sbc h                                         ; $45cf: $9c
    inc hl                                        ; $45d0: $23
    sbc l                                         ; $45d1: $9d
    ld h, d                                       ; $45d2: $62
    or h                                          ; $45d3: $b4
    or $17                                        ; $45d4: $f6 $17
    rla                                           ; $45d6: $17
    db $eb                                        ; $45d7: $eb
    ld e, b                                       ; $45d8: $58
    sub l                                         ; $45d9: $95
    ld a, e                                       ; $45da: $7b
    adc b                                         ; $45db: $88
    rst $30                                       ; $45dc: $f7
    ld a, c                                       ; $45dd: $79
    ld l, b                                       ; $45de: $68

Jump_062_45df:
    sbc [hl]                                      ; $45df: $9e
    ld [hl], e                                    ; $45e0: $73
    ld hl, $5676                                  ; $45e1: $21 $76 $56
    ld l, [hl]                                    ; $45e4: $6e
    sbc d                                         ; $45e5: $9a
    rst $28                                       ; $45e6: $ef

Call_062_45e7:
    rla                                           ; $45e7: $17
    ld l, l                                       ; $45e8: $6d
    and $39                                       ; $45e9: $e6 $39
    rlca                                          ; $45eb: $07
    ld c, d                                       ; $45ec: $4a
    ld a, c                                       ; $45ed: $79
    ld hl, $5676                                  ; $45ee: $21 $76 $56
    ld l, [hl]                                    ; $45f1: $6e
    sbc d                                         ; $45f2: $9a
    ld h, a                                       ; $45f3: $67
    ld b, c                                       ; $45f4: $41
    pop de                                        ; $45f5: $d1
    rst $28                                       ; $45f6: $ef
    ld e, l                                       ; $45f7: $5d
    rlca                                          ; $45f8: $07
    xor e                                         ; $45f9: $ab
    ld [$55f7], a                                 ; $45fa: $ea $f7 $55
    cp $08                                        ; $45fd: $fe $08
    ld h, l                                       ; $45ff: $65
    jp nc, Jump_062_431c                          ; $4600: $d2 $1c $43

    ld l, a                                       ; $4603: $6f
    db $fc                                        ; $4604: $fc
    ld [c], a                                     ; $4605: $e2
    ld sp, $5df4                                  ; $4606: $31 $f4 $5d
    sbc h                                         ; $4609: $9c
    sbc d                                         ; $460a: $9a
    jr z, jr_062_460f                             ; $460b: $28 $02

    pop bc                                        ; $460d: $c1
    sub b                                         ; $460e: $90

jr_062_460f:
    rst $30                                       ; $460f: $f7
    dec bc                                        ; $4610: $0b
    db $ed                                        ; $4611: $ed
    adc $07                                       ; $4612: $ce $07
    add d                                         ; $4614: $82
    ld a, b                                       ; $4615: $78
    rst $30                                       ; $4616: $f7
    ld a, l                                       ; $4617: $7d
    adc a                                         ; $4618: $8f
    xor $b2                                       ; $4619: $ee $b2
    jp nc, $b0fd                                  ; $461b: $d2 $fd $b0

    rst $30                                       ; $461e: $f7
    add b                                         ; $461f: $80
    ld c, h                                       ; $4620: $4c
    xor a                                         ; $4621: $af
    ld a, [de]                                    ; $4622: $1a
    jp hl                                         ; $4623: $e9


    ld d, b                                       ; $4624: $50
    ld c, b                                       ; $4625: $48
    ld h, e                                       ; $4626: $63
    ld d, l                                       ; $4627: $55
    cp a                                          ; $4628: $bf
    push de                                       ; $4629: $d5
    ld a, [c]                                     ; $462a: $f2
    ld b, d                                       ; $462b: $42
    xor e                                         ; $462c: $ab
    push hl                                       ; $462d: $e5
    pop bc                                        ; $462e: $c1
    cp b                                          ; $462f: $b8
    sbc c                                         ; $4630: $99
    ld h, d                                       ; $4631: $62
    sub $fe                                       ; $4632: $d6 $fe
    ld [bc], a                                    ; $4634: $02
    rla                                           ; $4635: $17
    ld a, l                                       ; $4636: $7d
    add hl, hl                                    ; $4637: $29
    ld h, [hl]                                    ; $4638: $66
    db $ed                                        ; $4639: $ed
    cpl                                           ; $463a: $2f
    rla                                           ; $463b: $17
    ld a, [bc]                                    ; $463c: $0a
    cp d                                          ; $463d: $ba
    ld b, e                                       ; $463e: $43
    sbc c                                         ; $463f: $99
    ld [hl], e                                    ; $4640: $73
    ld d, [hl]                                    ; $4641: $56
    push af                                       ; $4642: $f5
    ccf                                           ; $4643: $3f
    sub [hl]                                      ; $4644: $96
    add l                                         ; $4645: $85
    ret c                                         ; $4646: $d8

    ld e, c                                       ; $4647: $59
    cp c                                          ; $4648: $b9
    ld l, c                                       ; $4649: $69
    sub $be                                       ; $464a: $d6 $be
    set 6, l                                      ; $464c: $cb $f5
    ld d, l                                       ; $464e: $55
    push af                                       ; $464f: $f5
    ei                                            ; $4650: $fb
    ld h, d                                       ; $4651: $62
    ld e, b                                       ; $4652: $58

jr_062_4653:
    sub l                                         ; $4653: $95
    sbc a                                         ; $4654: $9f
    inc a                                         ; $4655: $3c
    ld a, [c]                                     ; $4656: $f2
    rst $00                                       ; $4657: $c7
    ld e, [hl]                                    ; $4658: $5e
    dec c                                         ; $4659: $0d
    rst $08                                       ; $465a: $cf
    db $e3                                        ; $465b: $e3
    adc h                                         ; $465c: $8c
    sbc h                                         ; $465d: $9c
    ld h, b                                       ; $465e: $60
    db $ed                                        ; $465f: $ed
    cpl                                           ; $4660: $2f
    rlca                                          ; $4661: $07
    ld a, $6d                                     ; $4662: $3e $6d
    add sp, $5c                                   ; $4664: $e8 $5c
    inc c                                         ; $4666: $0c
    ld a, l                                       ; $4667: $7d
    ld b, d                                       ; $4668: $42
    xor c                                         ; $4669: $a9
    ld l, h                                       ; $466a: $6c
    add hl, de                                    ; $466b: $19
    jr z, jr_062_4653                             ; $466c: $28 $e5

    push bc                                       ; $466e: $c5
    sub h                                         ; $466f: $94
    db $f4                                        ; $4670: $f4
    inc h                                         ; $4671: $24
    inc d                                         ; $4672: $14
    bit 1, b                                      ; $4673: $cb $48
    rst $20                                       ; $4675: $e7
    cp l                                          ; $4676: $bd
    ld [hl], $f3                                  ; $4677: $36 $f3
    sbc h                                         ; $4679: $9c
    db $eb                                        ; $467a: $eb
    ld d, b                                       ; $467b: $50
    inc a                                         ; $467c: $3c
    ld [hl-], a                                   ; $467d: $32
    cp $b8                                        ; $467e: $fe $b8
    ld b, e                                       ; $4680: $43
    ld a, [c]                                     ; $4681: $f2
    ld e, e                                       ; $4682: $5b
    ld e, [hl]                                    ; $4683: $5e
    ld l, h                                       ; $4684: $6c
    ld h, c                                       ; $4685: $61
    rst $20                                       ; $4686: $e7
    ld e, d                                       ; $4687: $5a

jr_062_4688:
    call Call_000_05fb                            ; $4688: $cd $fb $05
    db $ed                                        ; $468b: $ed
    ccf                                           ; $468c: $3f
    ld d, e                                       ; $468d: $53
    ld b, e                                       ; $468e: $43
    ld e, e                                       ; $468f: $5b
    inc c                                         ; $4690: $0c
    ld [hl], e                                    ; $4691: $73
    adc [hl]                                      ; $4692: $8e
    ld e, $56                                     ; $4693: $1e $56

jr_062_4695:
    cp e                                          ; $4695: $bb
    ld a, c                                       ; $4696: $79
    and b                                         ; $4697: $a0
    sub h                                         ; $4698: $94
    ld d, a                                       ; $4699: $57
    ld b, c                                       ; $469a: $41
    and l                                         ; $469b: $a5
    rst $10                                       ; $469c: $d7
    ld l, d                                       ; $469d: $6a
    xor $f3                                       ; $469e: $ee $f3
    ret z                                         ; $46a0: $c8

    cpl                                           ; $46a1: $2f
    inc hl                                        ; $46a2: $23
    ld a, a                                       ; $46a3: $7f
    ld l, $d2                                     ; $46a4: $2e $d2
    dec b                                         ; $46a6: $05
    call Call_062_71d3                            ; $46a7: $cd $d3 $71
    ccf                                           ; $46aa: $3f
    and d                                         ; $46ab: $a2
    adc l                                         ; $46ac: $8d
    adc h                                         ; $46ad: $8c
    ld b, e                                       ; $46ae: $43
    ld [c], a                                     ; $46af: $e2
    sub a                                         ; $46b0: $97
    dec a                                         ; $46b1: $3d
    ld e, a                                       ; $46b2: $5f
    and [hl]                                      ; $46b3: $a6
    jp nz, $38f3                                  ; $46b4: $c2 $f3 $38

    rla                                           ; $46b7: $17
    add l                                         ; $46b8: $85
    ld l, h                                       ; $46b9: $6c
    ret nz                                        ; $46ba: $c0

    ld l, $ea                                     ; $46bb: $2e $ea
    ld a, d                                       ; $46bd: $7a
    inc d                                         ; $46be: $14
    ld l, c                                       ; $46bf: $69
    xor $17                                       ; $46c0: $ee $17
    rlca                                          ; $46c2: $07
    dec l                                         ; $46c3: $2d
    ld b, e                                       ; $46c4: $43
    di                                            ; $46c5: $f3
    ld a, [bc]                                    ; $46c6: $0a
    dec [hl]                                      ; $46c7: $35
    rst $30                                       ; $46c8: $f7
    jr c, jr_062_4688                             ; $46c9: $38 $bd

    jr nz, jr_062_4695                            ; $46cb: $20 $c8

    add e                                         ; $46cd: $83
    dec a                                         ; $46ce: $3d
    ret nz                                        ; $46cf: $c0

    ei                                            ; $46d0: $fb
    add hl, sp                                    ; $46d1: $39
    dec bc                                        ; $46d2: $0b
    ld c, [hl]                                    ; $46d3: $4e
    ld b, d                                       ; $46d4: $42
    or c                                          ; $46d5: $b1
    ld d, h                                       ; $46d6: $54
    db $10                                        ; $46d7: $10
    db $f4                                        ; $46d8: $f4
    ld [hl+], a                                   ; $46d9: $22
    ld l, d                                       ; $46da: $6a
    sbc $3b                                       ; $46db: $de $3b
    ldh [$32], a                                  ; $46dd: $e0 $32
    adc $90                                       ; $46df: $ce $90
    ei                                            ; $46e1: $fb
    inc a                                         ; $46e2: $3c
    inc [hl]                                      ; $46e3: $34
    rst $08                                       ; $46e4: $cf
    add hl, sp                                    ; $46e5: $39
    di                                            ; $46e6: $f3
    ret c                                         ; $46e7: $d8

    ld b, l                                       ; $46e8: $45
    sub $6a                                       ; $46e9: $d6 $6a
    xor $f3                                       ; $46eb: $ee $f3
    inc l                                         ; $46ed: $2c
    adc e                                         ; $46ee: $8b
    ld a, [hl]                                    ; $46ef: $7e
    ld a, d                                       ; $46f0: $7a
    ld b, d                                       ; $46f1: $42
    ret                                           ; $46f2: $c9


    rst $00                                       ; $46f3: $c7
    cp c                                          ; $46f4: $b9
    ld a, [bc]                                    ; $46f5: $0a
    push hl                                       ; $46f6: $e5
    ld a, [hl]                                    ; $46f7: $7e
    ld bc, $a6ed                                  ; $46f8: $01 $ed $a6
    ld l, e                                       ; $46fb: $6b
    rst $18                                       ; $46fc: $df
    push hl                                       ; $46fd: $e5
    ld a, [de]                                    ; $46fe: $1a
    ld [hl], h                                    ; $46ff: $74
    xor $92                                       ; $4700: $ee $92
    push de                                       ; $4702: $d5
    ret nc                                        ; $4703: $d0

    dec l                                         ; $4704: $2d
    adc e                                         ; $4705: $8b
    xor b                                         ; $4706: $a8
    cp c                                          ; $4707: $b9
    ld c, e                                       ; $4708: $4b
    ld d, [hl]                                    ; $4709: $56
    push de                                       ; $470a: $d5
    ccf                                           ; $470b: $3f
    ld [hl], d                                    ; $470c: $72
    inc c                                         ; $470d: $0c
    ld a, l                                       ; $470e: $7d
    sbc a                                         ; $470f: $9f
    rla                                           ; $4710: $17
    ld e, e                                       ; $4711: $5b
    ret nc                                        ; $4712: $d0

    inc de                                        ; $4713: $13
    ld c, d                                       ; $4714: $4a
    or l                                          ; $4715: $b5
    adc h                                         ; $4716: $8c
    and h                                         ; $4717: $a4
    ei                                            ; $4718: $fb
    ld sp, hl                                     ; $4719: $f9
    ld a, b                                       ; $471a: $78
    adc $0b                                       ; $471b: $ce $0b
    db $ed                                        ; $471d: $ed
    cp a                                          ; $471e: $bf
    inc h                                         ; $471f: $24
    jr nz, jr_062_478f                            ; $4720: $20 $6d

    ld h, h                                       ; $4722: $64
    inc c                                         ; $4723: $0c
    ld [hl], l                                    ; $4724: $75

jr_062_4725:
    ld [de], a                                    ; $4725: $12
    adc d                                         ; $4726: $8a
    ld h, l                                       ; $4727: $65
    ld sp, $eef4                                  ; $4728: $31 $f4 $ee
    ld b, l                                       ; $472b: $45
    ld hl, $b01b                                  ; $472c: $21 $1b $b0
    adc e                                         ; $472f: $8b
    cp d                                          ; $4730: $ba
    ld e, $45                                     ; $4731: $1e $45
    ld a, [de]                                    ; $4733: $1a
    jp c, $f8c8                                   ; $4734: $da $c8 $f8

    db $e3                                        ; $4737: $e3
    xor d                                         ; $4738: $aa
    jp nc, $f77b                                  ; $4739: $d2 $7b $f7

    ret nc                                        ; $473c: $d0

    xor e                                         ; $473d: $ab
    call $6a15                                    ; $473e: $cd $15 $6a
    ld a, [$179c]                                 ; $4741: $fa $9c $17
    add a                                         ; $4744: $87
    jp nz, $ba33                                  ; $4745: $c2 $33 $ba

    set 5, d                                      ; $4748: $cb $ea
    ccf                                           ; $474a: $3f
    jp nc, $e863                                  ; $474b: $d2 $63 $e8

    inc hl                                        ; $474e: $23
    rst $38                                       ; $474f: $ff
    inc sp                                        ; $4750: $33
    or h                                          ; $4751: $b4
    inc l                                         ; $4752: $2c
    ld c, d                                       ; $4753: $4a
    ccf                                           ; $4754: $3f
    adc a                                         ; $4755: $8f
    pop de                                        ; $4756: $d1
    or h                                          ; $4757: $b4
    push de                                       ; $4758: $d5
    and $aa                                       ; $4759: $e6 $aa
    ld a, [$ee47]                                 ; $475b: $fa $47 $ee
    ld sp, hl                                     ; $475e: $f9
    or d                                          ; $475f: $b2
    add $4f                                       ; $4760: $c6 $4f
    xor a                                         ; $4762: $af
    or [hl]                                       ; $4763: $b6
    and b                                         ; $4764: $a0
    ld [hl], a                                    ; $4765: $77
    rrca                                          ; $4766: $0f
    dec l                                         ; $4767: $2d
    ld c, e                                       ; $4768: $4b
    jr z, jr_062_4777                             ; $4769: $28 $0c

    push bc                                       ; $476b: $c5
    ld a, e                                       ; $476c: $7b
    call c, $c203                                 ; $476d: $dc $03 $c2
    and d                                         ; $4770: $a2
    sub b                                         ; $4771: $90
    cp e                                          ; $4772: $bb
    xor b                                         ; $4773: $a8
    db $eb                                        ; $4774: $eb
    ld d, c                                       ; $4775: $51
    and h                                         ; $4776: $a4

jr_062_4777:
    ld e, c                                       ; $4777: $59
    jr z, jr_062_4725                             ; $4778: $28 $ab

    call $bf45                                    ; $477a: $cd $45 $bf
    and e                                         ; $477d: $a3
    ld [hl], e                                    ; $477e: $73
    db $e4                                        ; $477f: $e4
    sub a                                         ; $4780: $97
    pop bc                                        ; $4781: $c1
    ld a, [hl+]                                   ; $4782: $2a
    dec [hl]                                      ; $4783: $35
    sub [hl]                                      ; $4784: $96
    ld a, e                                       ; $4785: $7b
    ld d, a                                       ; $4786: $57
    ld [$a158], a                                 ; $4787: $ea $58 $a1
    ldh a, [$3e]                                  ; $478a: $f0 $3e
    adc a                                         ; $478c: $8f
    db $fc                                        ; $478d: $fc
    or d                                          ; $478e: $b2

jr_062_478f:
    ld c, $47                                     ; $478f: $0e $47
    ld a, d                                       ; $4791: $7a
    xor b                                         ; $4792: $a8
    dec hl                                        ; $4793: $2b
    ld h, l                                       ; $4794: $65
    db $f4                                        ; $4795: $f4
    ld b, d                                       ; $4796: $42
    adc e                                         ; $4797: $8b

jr_062_4798:
    ld [hl], $fc                                  ; $4798: $36 $fc
    and e                                         ; $479a: $a3
    cp e                                          ; $479b: $bb
    xor h                                         ; $479c: $ac
    ld [hl], $57                                  ; $479d: $36 $57
    sbc h                                         ; $479f: $9c
    ld [c], a                                     ; $47a0: $e2
    push bc                                       ; $47a1: $c5
    ret nc                                        ; $47a2: $d0

    cp e                                          ; $47a3: $bb
    ld b, a                                       ; $47a4: $47
    cp $23                                        ; $47a5: $fe $23
    rst $30                                       ; $47a7: $f7
    ld b, b                                       ; $47a8: $40
    sbc c                                         ; $47a9: $99
    ld a, c                                       ; $47aa: $79
    sub h                                         ; $47ab: $94
    ld [hl], d                                    ; $47ac: $72
    cp a                                          ; $47ad: $bf
    rst $10                                       ; $47ae: $d7
    pop bc                                        ; $47af: $c1
    ld a, [de]                                    ; $47b0: $1a
    dec e                                         ; $47b1: $1d
    ld h, d                                       ; $47b2: $62
    rst $20                                       ; $47b3: $e7
    add h                                         ; $47b4: $84
    adc d                                         ; $47b5: $8a
    inc a                                         ; $47b6: $3c
    add [hl]                                      ; $47b7: $86
    cp [hl]                                       ; $47b8: $be
    rst $08                                       ; $47b9: $cf
    adc e                                         ; $47ba: $8b
    ld b, d                                       ; $47bb: $42
    ld [hl-], a                                   ; $47bc: $32
    and l                                         ; $47bd: $a5
    ld [hl], a                                    ; $47be: $77
    xor a                                         ; $47bf: $af
    ld c, l                                       ; $47c0: $4d
    ld a, a                                       ; $47c1: $7f
    ld a, [de]                                    ; $47c2: $1a
    db $dd                                        ; $47c3: $dd
    jr jr_062_4798                                ; $47c4: $18 $d2

    dec bc                                        ; $47c6: $0b
    rst $08                                       ; $47c7: $cf
    ret nc                                        ; $47c8: $d0

    inc a                                         ; $47c9: $3c
    pop de                                        ; $47ca: $d1
    rst $28                                       ; $47cb: $ef
    or l                                          ; $47cc: $b5
    sbc c                                         ; $47cd: $99
    rla                                           ; $47ce: $17
    rst $38                                       ; $47cf: $ff
    call c, $f921                                 ; $47d0: $dc $21 $f9
    dec l                                         ; $47d3: $2d
    rrca                                          ; $47d4: $0f
    sbc l                                         ; $47d5: $9d
    xor e                                         ; $47d6: $ab
    and c                                         ; $47d7: $a1
    rla                                           ; $47d8: $17
    or $2e                                        ; $47d9: $f6 $2e

jr_062_47db:
    rrca                                          ; $47db: $0f
    reti                                          ; $47dc: $d9


    ld [hl], b                                    ; $47dd: $70
    ld a, [c]                                     ; $47de: $f2
    jr jr_062_47db                                ; $47df: $18 $fa

    jp c, $497f                                   ; $47e1: $da $7f $49

    ret nz                                        ; $47e4: $c0

    ei                                            ; $47e5: $fb
    dec b                                         ; $47e6: $05
    rlca                                          ; $47e7: $07
    dec l                                         ; $47e8: $2d
    adc e                                         ; $47e9: $8b
    ld h, c                                       ; $47ea: $61
    or c                                          ; $47eb: $b1
    ld [hl], c                                    ; $47ec: $71
    db $f4                                        ; $47ed: $f4
    jr nc, jr_062_4840                            ; $47ee: $30 $50

    jp z, $91b4                                   ; $47f0: $ca $b4 $91

    ld [hl], c                                    ; $47f3: $71
    ret z                                         ; $47f4: $c8

    or l                                          ; $47f5: $b5
    jp hl                                         ; $47f6: $e9


    ld c, a                                       ; $47f7: $4f
    and e                                         ; $47f8: $a3
    dec de                                        ; $47f9: $1b
    ld b, e                                       ; $47fa: $43
    cp d                                          ; $47fb: $ba
    ld c, [hl]                                    ; $47fc: $4e
    dec b                                         ; $47fd: $05
    pop hl                                        ; $47fe: $e1
    sub b                                         ; $47ff: $90
    db $eb                                        ; $4800: $eb
    ld d, b                                       ; $4801: $50
    adc d                                         ; $4802: $8a
    di                                            ; $4803: $f3
    ld a, [hl]                                    ; $4804: $7e
    ld bc, $9a87                                  ; $4805: $01 $87 $9a
    ld a, e                                       ; $4808: $7b
    sbc d                                         ; $4809: $9a
    adc e                                         ; $480a: $8b
    ld h, c                                       ; $480b: $61
    db $dd                                        ; $480c: $dd
    add sp, $39                                   ; $480d: $e8 $39
    ld h, d                                       ; $480f: $62
    rst $20                                       ; $4810: $e7
    ret nc                                        ; $4811: $d0

    ld a, h                                       ; $4812: $7c
    rst $28                                       ; $4813: $ef
    ld a, [hl-]                                   ; $4814: $3a
    jr @-$44                                      ; $4815: $18 $ba

    dec sp                                        ; $4817: $3b
    rla                                           ; $4818: $17
    ld [$d942], a                                 ; $4819: $ea $42 $d9
    ld b, e                                       ; $481c: $43
    ld b, l                                       ; $481d: $45
    rst $10                                       ; $481e: $d7
    add l                                         ; $481f: $85
    ld d, [hl]                                    ; $4820: $56
    res 0, e                                      ; $4821: $cb $83
    ld e, l                                       ; $4823: $5d
    sbc h                                         ; $4824: $9c
    sbc d                                         ; $4825: $9a
    jr z, jr_062_482a                             ; $4826: $28 $02

    pop bc                                        ; $4828: $c1
    sub b                                         ; $4829: $90

jr_062_482a:
    call c, Call_000_314c                         ; $482a: $dc $4c $31
    rst $18                                       ; $482d: $df
    cpl                                           ; $482e: $2f
    rst $10                                       ; $482f: $d7
    add hl, de                                    ; $4830: $19
    add a                                         ; $4831: $87
    ld a, [hl-]                                   ; $4832: $3a
    ld l, l                                       ; $4833: $6d
    ld h, h                                       ; $4834: $64
    inc e                                         ; $4835: $1c
    ld [hl], d                                    ; $4836: $72
    ld l, l                                       ; $4837: $6d
    ld a, [$e8d3]                                 ; $4838: $fa $d3 $e8
    add $90                                       ; $483b: $c6 $90
    sbc [hl]                                      ; $483d: $9e
    di                                            ; $483e: $f3
    sbc h                                         ; $483f: $9c

jr_062_4840:
    rla                                           ; $4840: $17
    sub a                                         ; $4841: $97
    sbc e                                         ; $4842: $9b
    ld c, [hl]                                    ; $4843: $4e
    dec de                                        ; $4844: $1b
    db $dd                                        ; $4845: $dd
    ld h, l                                       ; $4846: $65
    db $e4                                        ; $4847: $e4
    rst $08                                       ; $4848: $cf
    add c                                         ; $4849: $81
    ld d, d                                       ; $484a: $52
    ld e, [hl]                                    ; $484b: $5e
    dec [hl]                                      ; $484c: $35
    adc a                                         ; $484d: $8f
    db $fc                                        ; $484e: $fc
    rst $08                                       ; $484f: $cf
    ld c, b                                       ; $4850: $48
    ld [hl], a                                    ; $4851: $77
    rrca                                          ; $4852: $0f
    ld a, a                                       ; $4853: $7f
    or c                                          ; $4854: $b1
    call c, Call_000_072f                         ; $4855: $dc $2f $07
    ld e, h                                       ; $4858: $5c
    ld b, [hl]                                    ; $4859: $46
    ld d, d                                       ; $485a: $52
    sub e                                         ; $485b: $93
    dec a                                         ; $485c: $3d
    add hl, bc                                    ; $485d: $09
    push bc                                       ; $485e: $c5
    or d                                          ; $485f: $b2
    ld a, [bc]                                    ; $4860: $0a
    push bc                                       ; $4861: $c5
    ei                                            ; $4862: $fb
    inc a                                         ; $4863: $3c
    ld a, [c]                                     ; $4864: $f2
    res 3, h                                      ; $4865: $cb $9c
    ld d, e                                       ; $4867: $53
    cp a                                          ; $4868: $bf
    inc hl                                        ; $4869: $23
    xor a                                         ; $486a: $af
    ld de, $d792                                  ; $486b: $11 $92 $d7
    ld l, d                                       ; $486e: $6a
    adc $32                                       ; $486f: $ce $32
    ld a, [c]                                     ; $4871: $f2
    ld d, a                                       ; $4872: $57
    halt                                          ; $4873: $76
    db $fd                                        ; $4874: $fd
    push hl                                       ; $4875: $e5
    ld a, [hl]                                    ; $4876: $7e

Jump_062_4877:
    ld bc, $7e97                                  ; $4877: $01 $97 $7e
    add hl, de                                    ; $487a: $19
    ld [$428b], a                                 ; $487b: $ea $8b $42
    ld [hl-], a                                   ; $487e: $32
    and l                                         ; $487f: $a5
    ld [hl], a                                    ; $4880: $77
    cpl                                           ; $4881: $2f
    ld d, h                                       ; $4882: $54
    jp c, $38c8                                   ; $4883: $da $c8 $38

    db $e4                                        ; $4886: $e4
    ld h, d                                       ; $4887: $62
    ld e, b                                       ; $4888: $58
    inc b                                         ; $4889: $04
    add d                                         ; $488a: $82
    adc $b5                                       ; $488b: $ce $b5
    jp hl                                         ; $488d: $e9


    ld c, a                                       ; $488e: $4f
    and e                                         ; $488f: $a3
    dec de                                        ; $4890: $1b
    ld b, e                                       ; $4891: $43
    ld a, [$179c]                                 ; $4892: $fa $9c $17
    ld d, a                                       ; $4895: $57
    inc a                                         ; $4896: $3c
    and e                                         ; $4897: $a3
    cp e                                          ; $4898: $bb
    xor h                                         ; $4899: $ac
    ld [hl], $17                                  ; $489a: $36 $17
    inc bc                                        ; $489c: $03
    ld d, [hl]                                    ; $489d: $56
    or $d0                                        ; $489e: $f6 $d0
    cp h                                          ; $48a0: $bc
    jr jr_062_491d                                ; $48a1: $18 $7a

    rst $30                                       ; $48a3: $f7
    add sp, $2e                                   ; $48a4: $e8 $2e
    inc bc                                        ; $48a6: $03
    and l                                         ; $48a7: $a5
    cp h                                          ; $48a8: $bc
    jr z, jr_062_48cf                             ; $48a9: $28 $24

    ld d, e                                       ; $48ab: $53
    ld a, d                                       ; $48ac: $7a
    rst $30                                       ; $48ad: $f7
    ret nc                                        ; $48ae: $d0

    ld a, h                                       ; $48af: $7c
    xor a                                         ; $48b0: $af
    db $fd                                        ; $48b1: $fd
    res 3, h                                      ; $48b2: $cb $9c
    or e                                          ; $48b4: $b3
    adc h                                         ; $48b5: $8c
    di                                            ; $48b6: $f3
    rst $00                                       ; $48b7: $c7
    ld a, l                                       ; $48b8: $7d
    rst $08                                       ; $48b9: $cf
    rla                                           ; $48ba: $17
    cp h                                          ; $48bb: $bc
    ld e, a                                       ; $48bc: $5f
    rst $10                                       ; $48bd: $d7
    add hl, de                                    ; $48be: $19
    add a                                         ; $48bf: $87
    ld a, [$38c8]                                 ; $48c0: $fa $c8 $38
    db $e4                                        ; $48c3: $e4
    ld h, d                                       ; $48c4: $62
    sbc b                                         ; $48c5: $98
    ld a, [$08b2]                                 ; $48c6: $fa $b2 $08
    inc b                                         ; $48c9: $04
    cp l                                          ; $48ca: $bd
    ld [hl], $fd                                  ; $48cb: $36 $fd
    ld l, c                                       ; $48cd: $69
    ld [hl], h                                    ; $48ce: $74

jr_062_48cf:
    ld h, e                                       ; $48cf: $63
    ld c, b                                       ; $48d0: $48
    db $d3                                        ; $48d1: $d3
    sub $ca                                       ; $48d2: $d6 $ca
    db $10                                        ; $48d4: $10
    cp c                                          ; $48d5: $b9
    sub $90                                       ; $48d6: $d6 $90
    rst $30                                       ; $48d8: $f7
    dec bc                                        ; $48d9: $0b
    rlca                                          ; $48da: $07
    ld e, h                                       ; $48db: $5c
    ld b, [hl]                                    ; $48dc: $46

jr_062_48dd:
    cp $1c                                        ; $48dd: $fe $1c
    ld c, c                                       ; $48df: $49
    ld c, l                                       ; $48e0: $4d
    sbc $e7                                       ; $48e1: $de $e7
    sub c                                         ; $48e3: $91
    ld e, a                                       ; $48e4: $5f
    and $5c                                       ; $48e5: $e6 $5c
    and e                                         ; $48e7: $a3
    dec sp                                        ; $48e8: $3b

Call_062_48e9:
    ld [hl], $4f                                  ; $48e9: $36 $4f
    db $fd                                        ; $48eb: $fd
    adc [hl]                                      ; $48ec: $8e
    cp h                                          ; $48ed: $bc
    sbc b                                         ; $48ee: $98
    and d                                         ; $48ef: $a2
    xor $1d                                       ; $48f0: $ee $1d
    ld [hl], b                                    ; $48f2: $70
    ld e, c                                       ; $48f3: $59
    ld l, h                                       ; $48f4: $6c
    inc e                                         ; $48f5: $1c
    jr z, jr_062_48dd                             ; $48f6: $28 $e5

    add l                                         ; $48f8: $85
    ld h, a                                       ; $48f9: $67
    db $e4                                        ; $48fa: $e4
    sub a                                         ; $48fb: $97
    add hl, sp                                    ; $48fc: $39
    rst $00                                       ; $48fd: $c7
    cp a                                          ; $48fe: $bf
    sbc b                                         ; $48ff: $98
    rst $30                                       ; $4900: $f7
    and e                                         ; $4901: $a3
    ld d, l                                       ; $4902: $55
    ld [hl], $ce                                  ; $4903: $36 $ce
    add d                                         ; $4905: $82
    and d                                         ; $4906: $a2
    rst $18                                       ; $4907: $df
    cpl                                           ; $4908: $2f
    rlca                                          ; $4909: $07
    ld e, h                                       ; $490a: $5c
    or $34                                        ; $490b: $f6 $34
    rst $00                                       ; $490d: $c7
    cp a                                          ; $490e: $bf
    ld a, e                                       ; $490f: $7b
    adc a                                         ; $4910: $8f
    ld [hl], c                                    ; $4911: $71
    ld l, l                                       ; $4912: $6d
    ld a, [$e8d3]                                 ; $4913: $fa $d3 $e8
    add $90                                       ; $4916: $c6 $90
    cp [hl]                                       ; $4918: $be
    rst $10                                       ; $4919: $d7
    ld h, [hl]                                    ; $491a: $66
    sbc [hl]                                      ; $491b: $9e
    ld [hl], e                                    ; $491c: $73

jr_062_491d:
    sub [hl]                                      ; $491d: $96
    add hl, bc                                    ; $491e: $09
    dec d                                         ; $491f: $15
    dec hl                                        ; $4920: $2b
    or b                                          ; $4921: $b0
    cp $19                                        ; $4922: $fe $19
    add d                                         ; $4924: $82
    ld l, b                                       ; $4925: $68
    ld a, a                                       ; $4926: $7f
    ld bc, $6657                                  ; $4927: $01 $57 $66
    adc b                                         ; $492a: $88
    ld e, h                                       ; $492b: $5c
    ld l, e                                       ; $492c: $6b
    ret z                                         ; $492d: $c8

    or l                                          ; $492e: $b5
    jp hl                                         ; $492f: $e9


    ld c, a                                       ; $4930: $4f
    and e                                         ; $4931: $a3
    dec de                                        ; $4932: $1b
    ld b, e                                       ; $4933: $43
    ld a, d                                       ; $4934: $7a
    adc $c1                                       ; $4935: $ce $c1
    ld l, $0b                                     ; $4937: $2e $0b
    add d                                         ; $4939: $82
    ld b, c                                       ; $493a: $41
    xor $b5                                       ; $493b: $ee $b5
    ld a, a                                       ; $493d: $7f
    ld e, c                                       ; $493e: $59
    inc b                                         ; $493f: $04
    ld l, d                                       ; $4940: $6a
    sub [hl]                                      ; $4941: $96
    sub c                                         ; $4942: $91
    cp a                                          ; $4943: $bf
    or d                                          ; $4944: $b2
    ld b, c                                       ; $4945: $41
    ld d, b                                       ; $4946: $50
    db $fd                                        ; $4947: $fd
    adc [hl]                                      ; $4948: $8e
    xor $d5                                       ; $4949: $ee $d5
    adc e                                         ; $494b: $8b
    ld a, [c]                                     ; $494c: $f2
    rst $28                                       ; $494d: $ef
    jr nz, jr_062_4958                            ; $494e: $20 $08

    ld d, h                                       ; $4950: $54
    halt                                          ; $4951: $76
    add d                                         ; $4952: $82
    ld a, c                                       ; $4953: $79
    ld d, c                                       ; $4954: $51
    ret z                                         ; $4955: $c8

    dec e                                         ; $4956: $1d
    db $fc                                        ; $4957: $fc

jr_062_4958:
    dec b                                         ; $4958: $05
    xor $b5                                       ; $4959: $ee $b5
    rst $00                                       ; $495b: $c7
    ld hl, $90a3                                  ; $495c: $21 $a3 $90
    adc e                                         ; $495f: $8b
    and c                                         ; $4960: $a1
    rrca                                          ; $4961: $0f
    push af                                       ; $4962: $f5
    pop af                                        ; $4963: $f1
    rst $28                                       ; $4964: $ef
    sbc $63                                       ; $4965: $de $63
    inc e                                         ; $4967: $1c
    ld sp, hl                                     ; $4968: $f9
    sbc a                                         ; $4969: $9f
    ld [hl], e                                    ; $496a: $73
    ld e, [hl]                                    ; $496b: $5e
    ld l, l                                       ; $496c: $6d
    and $dd                                       ; $496d: $e6 $dd
    rst $30                                       ; $496f: $f7
    dec a                                         ; $4970: $3d
    ld c, h                                       ; $4971: $4c
    db $d3                                        ; $4972: $d3
    sbc l                                         ; $4973: $9d
    xor e                                         ; $4974: $ab
    ld d, b                                       ; $4975: $50
    ld d, $9e                                     ; $4976: $16 $9e
    or l                                          ; $4978: $b5
    ld a, c                                       ; $4979: $79
    rst $10                                       ; $497a: $d7
    ld b, c                                       ; $497b: $41
    ld [hl], l                                    ; $497c: $75
    db $dd                                        ; $497d: $dd
    ld hl, $dcb6                                  ; $497e: $21 $b6 $dc
    cpl                                           ; $4981: $2f
    db $ed                                        ; $4982: $ed
    ld [hl], c                                    ; $4983: $71
    ld c, b                                       ; $4984: $48
    db $fc                                        ; $4985: $fc
    ld [hl-], a                                   ; $4986: $32
    push af                                       ; $4987: $f5
    ld h, l                                       ; $4988: $65
    xor b                                         ; $4989: $a8
    cpl                                           ; $498a: $2f
    ld b, $f4                                     ; $498b: $06 $f4
    inc h                                         ; $498d: $24
    inc d                                         ; $498e: $14
    di                                            ; $498f: $f3
    jp nz, $b433                                  ; $4990: $c2 $33 $b4

    ld l, b                                       ; $4993: $68
    ld a, a                                       ; $4994: $7f
    ld bc, $e66d                                  ; $4995: $01 $6d $e6
    xor c                                         ; $4998: $a9
    cpl                                           ; $4999: $2f
    adc e                                         ; $499a: $8b
    add hl, hl                                    ; $499b: $29
    jp hl                                         ; $499c: $e9


    ld [hl], l                                    ; $499d: $75
    jr z, jr_062_49ce                             ; $499e: $28 $2e

    sbc d                                         ; $49a0: $9a
    adc [hl]                                      ; $49a1: $8e
    ld d, b                                       ; $49a2: $50
    ld hl, sp-$22                                 ; $49a3: $f8 $de
    ld hl, $bbf9                                  ; $49a5: $21 $f9 $bb
    rst $28                                       ; $49a8: $ef
    ld a, e                                       ; $49a9: $7b
    ld d, h                                       ; $49aa: $54
    ld a, [c]                                     ; $49ab: $f2
    and c                                         ; $49ac: $a1
    ld c, l                                       ; $49ad: $4d
    ld b, d                                       ; $49ae: $42
    or c                                          ; $49af: $b1
    inc l                                         ; $49b0: $2c
    add [hl]                                      ; $49b1: $86
    cp [hl]                                       ; $49b2: $be
    jr z, jr_062_4a19                             ; $49b3: $28 $64

    and l                                         ; $49b5: $a5
    ld d, $ef                                     ; $49b6: $16 $ef
    di                                            ; $49b8: $f3
    ld a, [hl+]                                   ; $49b9: $2a
    db $d3                                        ; $49ba: $d3
    add hl, hl                                    ; $49bb: $29
    db $dd                                        ; $49bc: $dd
    ld b, e                                       ; $49bd: $43
    set 7, l                                      ; $49be: $cb $fd
    ld [bc], a                                    ; $49c0: $02
    sub a                                         ; $49c1: $97
    ld c, b                                       ; $49c2: $48
    or c                                          ; $49c3: $b1
    ld c, h                                       ; $49c4: $4c
    ld a, l                                       ; $49c5: $7d
    ld e, c                                       ; $49c6: $59
    ld h, l                                       ; $49c7: $65
    ld a, [hl-]                                   ; $49c8: $3a
    and l                                         ; $49c9: $a5
    ld a, e                                       ; $49ca: $7b
    add a                                         ; $49cb: $87
    ret c                                         ; $49cc: $d8

jr_062_49cd:
    ld h, d                                       ; $49cd: $62

jr_062_49ce:
    cp c                                          ; $49ce: $b9
    rst $10                                       ; $49cf: $d7
    and [hl]                                      ; $49d0: $a6
    ccf                                           ; $49d1: $3f
    adc l                                         ; $49d2: $8d
    ld l, [hl]                                    ; $49d3: $6e
    inc c                                         ; $49d4: $0c
    jp hl                                         ; $49d5: $e9


    add hl, sp                                    ; $49d6: $39
    rst $00                                       ; $49d7: $c7
    ret nc                                        ; $49d8: $d0

    dec de                                        ; $49d9: $1b
    cp a                                          ; $49da: $bf
    ld a, b                                       ; $49db: $78
    or b                                          ; $49dc: $b0
    daa                                           ; $49dd: $27
    ld h, h                                       ; $49de: $64
    or c                                          ; $49df: $b1
    call c, $e03b                                 ; $49e0: $dc $3b $e0
    ld [hl-], a                                   ; $49e3: $32
    rst $20                                       ; $49e4: $e7
    ld a, [hl+]                                   ; $49e5: $2a
    jr z, jr_062_49cd                             ; $49e6: $28 $e5

    ld e, h                                       ; $49e8: $5c
    xor e                                         ; $49e9: $ab
    cp c                                          ; $49ea: $b9
    rst $08                                       ; $49eb: $cf
    inc hl                                        ; $49ec: $23
    cp a                                          ; $49ed: $bf
    inc l                                         ; $49ee: $2c
    add [hl]                                      ; $49ef: $86
    ld a, $f2                                     ; $49f0: $3e $f2
    rst $00                                       ; $49f2: $c7
    sbc [hl]                                      ; $49f3: $9e
    ld h, l                                       ; $49f4: $65
    db $fd                                        ; $49f5: $fd
    ld c, e                                       ; $49f6: $4b
    ld e, c                                       ; $49f7: $59
    sub l                                         ; $49f8: $95
    xor a                                         ; $49f9: $af
    or $18                                        ; $49fa: $f6 $18
    add a                                         ; $49fc: $87
    ld d, b                                       ; $49fd: $50
    ld d, $9e                                     ; $49fe: $16 $9e
    and c                                         ; $4a00: $a1
    sbc c                                         ; $4a01: $99
    ld a, l                                       ; $4a02: $7d
    cp a                                          ; $4a03: $bf
    db $ed                                        ; $4a04: $ed
    ld sp, $91d4                                  ; $4a05: $31 $d4 $91
    cp d                                          ; $4a08: $ba
    inc l                                         ; $4a09: $2c
    ld [hl], $ee                                  ; $4a0a: $36 $ee
    di                                            ; $4a0c: $f3
    jp c, $a7f4                                   ; $4a0d: $da $f4 $a7

    pop de                                        ; $4a10: $d1
    adc l                                         ; $4a11: $8d
    ld hl, $e73d                                  ; $4a12: $21 $3d $e7
    ld a, [de]                                    ; $4a15: $1a
    ld hl, $abd9                                  ; $4a16: $21 $d9 $ab

jr_062_4a19:
    call $c6c5                                    ; $4a19: $cd $c5 $c6
    dec e                                         ; $4a1c: $1d
    sub d                                         ; $4a1d: $92
    rst $18                                       ; $4a1e: $df
    ld a, [c]                                     ; $4a1f: $f2
    ret nc                                        ; $4a20: $d0

    cp h                                          ; $4a21: $bc
    ld d, b                                       ; $4a22: $50
    ld l, d                                       ; $4a23: $6a
    di                                            ; $4a24: $f3
    ld e, [hl]                                    ; $4a25: $5e
    ei                                            ; $4a26: $fb
    sub a                                         ; $4a27: $97
    push bc                                       ; $4a28: $c5
    ret nc                                        ; $4a29: $d0

    rla                                           ; $4a2a: $17
    add l                                         ; $4a2b: $85
    xor h                                         ; $4a2c: $ac
    call nc, Call_062_7de2                        ; $4a2d: $d4 $e2 $7d
    ld e, [hl]                                    ; $4a30: $5e
    call nc, $f45c                                ; $4a31: $d4 $5c $f4
    ld a, c                                       ; $4a34: $79
    or b                                          ; $4a35: $b0
    ld b, e                                       ; $4a36: $43
    ld l, h                                       ; $4a37: $6c
    or c                                          ; $4a38: $b1
    inc c                                         ; $4a39: $0c
    ld h, $9f                                     ; $4a3a: $26 $9f
    or l                                          ; $4a3c: $b5
    cp a                                          ; $4a3d: $bf

jr_062_4a3e:
    add a                                         ; $4a3e: $87
    sbc d                                         ; $4a3f: $9a
    ld a, e                                       ; $4a40: $7b
    sbc d                                         ; $4a41: $9a
    and e                                         ; $4a42: $a3
    cp e                                          ; $4a43: $bb
    xor h                                         ; $4a44: $ac
    sub l                                         ; $4a45: $95
    call nc, $fbd8                                ; $4a46: $d4 $d8 $fb
    cp h                                          ; $4a49: $bc
    xor b                                         ; $4a4a: $a8
    cp c                                          ; $4a4b: $b9
    add sp, -$0d                                  ; $4a4c: $e8 $f3
    ld h, b                                       ; $4a4e: $60
    ld l, b                                       ; $4a4f: $68
    ld e, c                                       ; $4a50: $59
    ld b, h                                       ; $4a51: $44
    call $f7ca                                    ; $4a52: $cd $ca $f7
    dec bc                                        ; $4a55: $0b
    sub a                                         ; $4a56: $97
    jr z, jr_062_4a3e                             ; $4a57: $28 $e5

    jp hl                                         ; $4a59: $e9


    ld l, b                                       ; $4a5a: $68
    reti                                          ; $4a5b: $d9


    inc bc                                        ; $4a5c: $03
    push hl                                       ; $4a5d: $e5
    ld a, [hl]                                    ; $4a5e: $7e
    ld bc, $eeed                                  ; $4a5f: $01 $ed $ee
    db $dd                                        ; $4a62: $dd
    add hl, sp                                    ; $4a63: $39
    ld d, b                                       ; $4a64: $50
    jp z, $d1d3                                   ; $4a65: $ca $d3 $d1

    or d                                          ; $4a68: $b2
    rlca                                          ; $4a69: $07
    adc d                                         ; $4a6a: $8a
    or $17                                        ; $4a6b: $f6 $17
    add a                                         ; $4a6d: $87
    sbc d                                         ; $4a6e: $9a
    ld [hl], e                                    ; $4a6f: $73
    adc [hl]                                      ; $4a70: $8e
    ld bc, $032d                                  ; $4a71: $01 $2d $03
    ld b, c                                       ; $4a74: $41
    rst $18                                       ; $4a75: $df
    cp e                                          ; $4a76: $bb
    ld c, $f6                                     ; $4a77: $0e $f6
    inc [hl]                                      ; $4a79: $34
    ld b, a                                       ; $4a7a: $47
    cp d                                          ; $4a7b: $ba
    ld [hl], a                                    ; $4a7c: $77
    and a                                         ; $4a7d: $a7
    rst $00                                       ; $4a7e: $c7
    cp a                                          ; $4a7f: $bf
    ld a, b                                       ; $4a80: $78
    ld [$5ab7], a                                 ; $4a81: $ea $b7 $5a
    sub [hl]                                      ; $4a84: $96
    or l                                          ; $4a85: $b5
    sbc d                                         ; $4a86: $9a
    dec bc                                        ; $4a87: $0b
    push hl                                       ; $4a88: $e5
    cp [hl]                                       ; $4a89: $be
    rst $28                                       ; $4a8a: $ef
    rla                                           ; $4a8b: $17

jr_062_4a8c:
    rst $10                                       ; $4a8c: $d7
    and h                                         ; $4a8d: $a4
    db $e3                                        ; $4a8e: $e3
    sub b                                         ; $4a8f: $90
    rst $20                                       ; $4a90: $e7
    db $ec                                        ; $4a91: $ec
    jp nz, $ea1c                                  ; $4a92: $c2 $1c $ea

    inc hl                                        ; $4a95: $23
    sbc l                                         ; $4a96: $9d
    ld h, d                                       ; $4a97: $62
    db $f4                                        ; $4a98: $f4
    add hl, sp                                    ; $4a99: $39
    cp e                                          ; $4a9a: $bb
    rst $28                                       ; $4a9b: $ef
    ld a, e                                       ; $4a9c: $7b
    db $ed                                        ; $4a9d: $ed
    ld hl, $8da6                                  ; $4a9e: $21 $a6 $8d
    adc h                                         ; $4aa1: $8c
    ccf                                           ; $4aa2: $3f
    adc [hl]                                      ; $4aa3: $8e
    db $fc                                        ; $4aa4: $fc
    cp c                                          ; $4aa5: $b9
    ld c, e                                       ; $4aa6: $4b
    ld d, $85                                     ; $4aa7: $16 $85
    inc a                                         ; $4aa9: $3c
    rst $20                                       ; $4aaa: $e7
    dec b                                         ; $4aab: $05
    sub a                                         ; $4aac: $97
    ld c, b                                       ; $4aad: $48
    or c                                          ; $4aae: $b1
    jr nc, jr_062_4af9                            ; $4aaf: $30 $48

    and c                                         ; $4ab1: $a1
    db $ed                                        ; $4ab2: $ed
    ld [hl], d                                    ; $4ab3: $72
    rst $00                                       ; $4ab4: $c7
    ret nc                                        ; $4ab5: $d0

    cp e                                          ; $4ab6: $bb
    rst $28                                       ; $4ab7: $ef
    rla                                           ; $4ab8: $17
    sub a                                         ; $4ab9: $97
    xor h                                         ; $4aba: $ac
    xor d                                         ; $4abb: $aa
    rst $18                                       ; $4abc: $df
    and a                                         ; $4abd: $a7
    db $e3                                        ; $4abe: $e3
    and b                                         ; $4abf: $a0
    ld e, b                                       ; $4ac0: $58
    ld l, b                                       ; $4ac1: $68
    inc bc                                        ; $4ac2: $03
    and l                                         ; $4ac3: $a5
    ld a, h                                       ; $4ac4: $7c
    adc $0b                                       ; $4ac5: $ce $0b
    sub a                                         ; $4ac7: $97
    sbc e                                         ; $4ac8: $9b
    ld c, [hl]                                    ; $4ac9: $4e
    ld e, e                                       ; $4aca: $5b
    inc c                                         ; $4acb: $0c
    xor e                                         ; $4acc: $ab
    ld [$99f7], a                                 ; $4acd: $ea $f7 $99
    ld a, [hl]                                    ; $4ad0: $7e
    rst $28                                       ; $4ad1: $ef
    ld [c], a                                     ; $4ad2: $e2
    and $60                                       ; $4ad3: $e6 $60
    push de                                       ; $4ad5: $d5
    ld d, d                                       ; $4ad6: $52
    ld l, b                                       ; $4ad7: $68
    cp e                                          ; $4ad8: $bb
    call c, $f431                                 ; $4ad9: $dc $31 $f4
    ld l, [hl]                                    ; $4adc: $6e
    db $ed                                        ; $4add: $ed
    cpl                                           ; $4ade: $2f
    sub a                                         ; $4adf: $97
    db $ec                                        ; $4ae0: $ec
    ld l, c                                       ; $4ae1: $69
    ld c, $94                                     ; $4ae2: $0e $94
    ld a, [c]                                     ; $4ae4: $f2
    ld c, d                                       ; $4ae5: $4a
    ld [hl], e                                    ; $4ae6: $73
    ld a, [hl-]                                   ; $4ae7: $3a
    sbc $bb                                       ; $4ae8: $de $bb
    ld h, h                                       ; $4aea: $64
    adc l                                         ; $4aeb: $8d
    ld c, $b1                                     ; $4aec: $0e $b1
    ld [hl], e                                    ; $4aee: $73
    ld d, l                                       ; $4aef: $55
    db $f4                                        ; $4af0: $f4
    ld d, [hl]                                    ; $4af1: $56
    srl h                                         ; $4af2: $cb $3c
    jr z, jr_062_4a8c                             ; $4af4: $28 $96

    add l                                         ; $4af6: $85
    or d                                          ; $4af7: $b2
    rlca                                          ; $4af8: $07

jr_062_4af9:
    ld a, [hl+]                                   ; $4af9: $2a
    dec sp                                        ; $4afa: $3b
    rla                                           ; $4afb: $17
    ld [hl], l                                    ; $4afc: $75
    and a                                         ; $4afd: $a7
    rst $10                                       ; $4afe: $d7
    ld a, [bc]                                    ; $4aff: $0a
    jr nz, jr_062_4b7e                            ; $4b00: $20 $7c

    cp a                                          ; $4b02: $bf
    ld l, l                                       ; $4b03: $6d
    ld a, [$cfa2]                                 ; $4b04: $fa $a2 $cf
    db $ec                                        ; $4b07: $ec
    inc e                                         ; $4b08: $1c
    ld [$ef9b], sp                                ; $4b09: $08 $9b $ef
    or l                                          ; $4b0c: $b5
    sbc c                                         ; $4b0d: $99
    rst $20                                       ; $4b0e: $e7
    ld e, h                                       ; $4b0f: $5c
    inc c                                         ; $4b10: $0c
    add l                                         ; $4b11: $85
    and c                                         ; $4b12: $a1
    ldh a, [$fd]                                  ; $4b13: $f0 $fd
    ld [bc], a                                    ; $4b15: $02
    rlca                                          ; $4b16: $07
    ld e, h                                       ; $4b17: $5c
    sub $3f                                       ; $4b18: $d6 $3f
    ld a, [hl-]                                   ; $4b1a: $3a
    ld b, a                                       ; $4b1b: $47
    ld [hl], a                                    ; $4b1c: $77
    ld c, $94                                     ; $4b1d: $0e $94
    ld a, [c]                                     ; $4b1f: $f2
    ld a, [bc]                                    ; $4b20: $0a
    dec [hl]                                      ; $4b21: $35
    dec a                                         ; $4b22: $3d
    inc [hl]                                      ; $4b23: $34
    rst $18                                       ; $4b24: $df
    ld l, e                                       ; $4b25: $6b
    db $d3                                        ; $4b26: $d3
    ld b, a                                       ; $4b27: $47
    cp $5c                                        ; $4b28: $fe $5c
    ld [hl], l                                    ; $4b2a: $75
    adc a                                         ; $4b2b: $8f
    rst $10                                       ; $4b2c: $d7
    add hl, hl                                    ; $4b2d: $29
    ret                                           ; $4b2e: $c9


    ld a, e                                       ; $4b2f: $7b
    and b                                         ; $4b30: $a0
    adc h                                         ; $4b31: $8c
    adc h                                         ; $4b32: $8c
    ld b, e                                       ; $4b33: $43
    ld [c], a                                     ; $4b34: $e2
    sub a                                         ; $4b35: $97
    dec a                                         ; $4b36: $3d
    ld e, a                                       ; $4b37: $5f
    ld d, [hl]                                    ; $4b38: $56
    cp c                                          ; $4b39: $b9
    sbc c                                         ; $4b3a: $99
    adc e                                         ; $4b3b: $8b
    ld a, [hl]                                    ; $4b3c: $7e
    push hl                                       ; $4b3d: $e5
    ld a, e                                       ; $4b3e: $7b
    rlca                                          ; $4b3f: $07
    ld e, h                                       ; $4b40: $5c
    halt                                          ; $4b41: $76
    rst $18                                       ; $4b42: $df
    rst $30                                       ; $4b43: $f7
    add sp, $2e                                   ; $4b44: $e8 $2e
    adc e                                         ; $4b46: $8b
    and c                                         ; $4b47: $a1
    xor a                                         ; $4b48: $af
    or $66                                        ; $4b49: $f6 $66
    db $dd                                        ; $4b4b: $dd
    ld h, e                                       ; $4b4c: $63
    inc e                                         ; $4b4d: $1c
    ld b, d                                       ; $4b4e: $42
    pop de                                        ; $4b4f: $d1
    cp $02                                        ; $4b50: $fe $02
    rlca                                          ; $4b52: $07
    ld e, h                                       ; $4b53: $5c
    and $9c                                       ; $4b54: $e6 $9c
    ld [hl-], a                                   ; $4b56: $32
    xor $47                                       ; $4b57: $ee $47
    ei                                            ; $4b59: $fb
    inc a                                         ; $4b5a: $3c
    cp d                                          ; $4b5b: $ba
    rr d                                          ; $4b5c: $cb $1a
    dec e                                         ; $4b5e: $1d
    ld h, d                                       ; $4b5f: $62
    rst $20                                       ; $4b60: $e7
    add h                                         ; $4b61: $84
    adc d                                         ; $4b62: $8a
    inc a                                         ; $4b63: $3c
    add [hl]                                      ; $4b64: $86
    cp [hl]                                       ; $4b65: $be
    rst $08                                       ; $4b66: $cf
    dec hl                                        ; $4b67: $2b
    call nc, $d0f4                                ; $4b68: $d4 $f4 $d0
    call z, $eda6                                 ; $4b6b: $cc $a6 $ed
    ld [hl], d                                    ; $4b6e: $72
    rst $00                                       ; $4b6f: $c7
    ret nc                                        ; $4b70: $d0

    cp e                                          ; $4b71: $bb
    rst $28                                       ; $4b72: $ef
    ld e, l                                       ; $4b73: $5d
    ld l, c                                       ; $4b74: $69
    ld c, [hl]                                    ; $4b75: $4e
    adc b                                         ; $4b76: $88
    add b                                         ; $4b77: $80
    xor b                                         ; $4b78: $a8
    ld e, [hl]                                    ; $4b79: $5e
    ld [hl], a                                    ; $4b7a: $77
    ld c, l                                       ; $4b7b: $4d
    ldh [$df], a                                  ; $4b7c: $e0 $df

jr_062_4b7e:
    push af                                       ; $4b7e: $f5
    xor d                                         ; $4b7f: $aa
    db $fd                                        ; $4b80: $fd
    dec b                                         ; $4b81: $05
    ld l, l                                       ; $4b82: $6d
    ld a, [$e862]                                 ; $4b83: $fa $62 $e8
    adc e                                         ; $4b86: $8b
    ld b, d                                       ; $4b87: $42
    ld d, [hl]                                    ; $4b88: $56
    ld l, [hl]                                    ; $4b89: $6e
    ld c, $cd                                     ; $4b8a: $0e $cd
    xor e                                         ; $4b8c: $ab
    ld d, $a7                                     ; $4b8d: $16 $a7
    ld l, c                                       ; $4b8f: $69
    cp e                                          ; $4b90: $bb
    call c, $f431                                 ; $4b91: $dc $31 $f4
    xor $fb                                       ; $4b94: $ee $fb
    dec b                                         ; $4b96: $05
    ld l, l                                       ; $4b97: $6d
    sub [hl]                                      ; $4b98: $96
    ld d, l                                       ; $4b99: $55
    ld l, [hl]                                    ; $4b9a: $6e
    and $5a                                       ; $4b9b: $e6 $5a
    call $eea9                                    ; $4b9d: $cd $a9 $ee
    ld b, a                                       ; $4ba0: $47

Call_062_4ba1:
    ei                                            ; $4ba1: $fb
    ld c, $c9                                     ; $4ba2: $0e $c9
    ld l, a                                       ; $4ba4: $6f
    ld a, c                                       ; $4ba5: $79
    ld c, a                                       ; $4ba6: $4f
    ld [hl], e                                    ; $4ba7: $73
    cp a                                          ; $4ba8: $bf
    ld [hl], a                                    ; $4ba9: $77
    and a                                         ; $4baa: $a7
    pop de                                        ; $4bab: $d1
    adc e                                         ; $4bac: $8b
    add hl, hl                                    ; $4bad: $29
    jp hl                                         ; $4bae: $e9


    sub l                                         ; $4baf: $95
    and [hl]                                      ; $4bb0: $a6
    ld a, c                                       ; $4bb1: $79
    jr nz, jr_062_4c2c                            ; $4bb2: $20 $78

    cp a                                          ; $4bb4: $bf
    rlca                                          ; $4bb5: $07
    ld e, h                                       ; $4bb6: $5c
    add $19                                       ; $4bb7: $c6 $19
    ld [hl], d                                    ; $4bb9: $72
    and b                                         ; $4bba: $a0
    sub h                                         ; $4bbb: $94
    rst $30                                       ; $4bbc: $f7
    ld a, c                                       ; $4bbd: $79
    ld l, b                                       ; $4bbe: $68
    sbc c                                         ; $4bbf: $99
    ld a, [$eab2]                                 ; $4bc0: $fa $b2 $ea
    add l                                         ; $4bc3: $85
    ld a, d                                       ; $4bc4: $7a
    cp a                                          ; $4bc5: $bf
    db $ed                                        ; $4bc6: $ed
    ld a, d                                       ; $4bc7: $7a
    ld [hl-], a                                   ; $4bc8: $32
    inc d                                         ; $4bc9: $14
    and [hl]                                      ; $4bca: $a6
    xor l                                         ; $4bcb: $ad
    db $fd                                        ; $4bcc: $fd
    ld h, a                                       ; $4bcd: $67
    ld l, d                                       ; $4bce: $6a
    ld l, b                                       ; $4bcf: $68
    ld l, e                                       ; $4bd0: $6b
    cp b                                          ; $4bd1: $b8
    ld l, b                                       ; $4bd2: $68
    inc b                                         ; $4bd3: $04
    rst $30                                       ; $4bd4: $f7
    ld a, c                                       ; $4bd5: $79
    or l                                          ; $4bd6: $b5
    dec b                                         ; $4bd7: $05
    cp l                                          ; $4bd8: $bd
    ld a, e                                       ; $4bd9: $7b
    xor l                                         ; $4bda: $ad
    and $a2                                       ; $4bdb: $e6 $a2
    ld c, [hl]                                    ; $4bdd: $4e
    and l                                         ; $4bde: $a5
    or e                                          ; $4bdf: $b3
    push hl                                       ; $4be0: $e5
    ld a, [hl]                                    ; $4be1: $7e
    ld bc, $5c07                                  ; $4be2: $01 $07 $5c
    ld d, $81                                     ; $4be5: $16 $81
    ld a, [de]                                    ; $4be7: $1a
    ld e, d                                       ; $4be8: $5a
    ld b, $4a                                     ; $4be9: $06 $4a
    ld a, c                                       ; $4beb: $79
    adc a                                         ; $4bec: $8f
    ld d, c                                       ; $4bed: $51
    ei                                            ; $4bee: $fb
    xor [hl]                                      ; $4bef: $ae
    add e                                         ; $4bf0: $83
    dec [hl]                                      ; $4bf1: $35
    ld a, [hl-]                                   ; $4bf2: $3a
    call nz, Call_000_09ce                        ; $4bf3: $c4 $ce $09
    dec d                                         ; $4bf6: $15
    ld a, c                                       ; $4bf7: $79
    inc c                                         ; $4bf8: $0c

jr_062_4bf9:
    ld a, l                                       ; $4bf9: $7d
    sbc a                                         ; $4bfa: $9f
    ld d, a                                       ; $4bfb: $57
    sbc d                                         ; $4bfc: $9a
    ld h, e                                       ; $4bfd: $63
    add sp, -$73                                  ; $4bfe: $e8 $8d
    ld e, a                                       ; $4c00: $5f
    xor h                                         ; $4c01: $ac
    db $fd                                        ; $4c02: $fd
    dec b                                         ; $4c03: $05
    db $ed                                        ; $4c04: $ed
    ld e, a                                       ; $4c05: $5f
    ld d, [hl]                                    ; $4c06: $56
    ld b, e                                       ; $4c07: $43
    db $ec                                        ; $4c08: $ec
    cp h                                          ; $4c09: $bc
    ld [hl], a                                    ; $4c0a: $77
    ld l, c                                       ; $4c0b: $69
    ld a, b                                       ; $4c0c: $78
    ld d, [hl]                                    ; $4c0d: $56
    sbc e                                         ; $4c0e: $9b
    jp c, Jump_062_575f                           ; $4c0f: $da $5f $57

    ld h, [hl]                                    ; $4c12: $66
    adc b                                         ; $4c13: $88
    ld e, h                                       ; $4c14: $5c
    ld l, e                                       ; $4c15: $6b
    ret z                                         ; $4c16: $c8

    dec e                                         ; $4c17: $1d
    inc h                                         ; $4c18: $24
    ld a, d                                       ; $4c19: $7a
    ld [hl], c                                    ; $4c1a: $71
    sub b                                         ; $4c1b: $90
    ld e, a                                       ; $4c1c: $5f
    ld a, [hl]                                    ; $4c1d: $7e
    rst $28                                       ; $4c1e: $ef
    xor e                                         ; $4c1f: $ab
    ld d, b                                       ; $4c20: $50
    sbc h                                         ; $4c21: $9c
    ei                                            ; $4c22: $fb
    cp h                                          ; $4c23: $bc
    ld [hl], $fd                                  ; $4c24: $36 $fd
    ld l, c                                       ; $4c26: $69
    ld [hl], h                                    ; $4c27: $74
    ld h, e                                       ; $4c28: $63
    ld c, b                                       ; $4c29: $48
    rst $08                                       ; $4c2a: $cf
    add hl, sp                                    ; $4c2b: $39

jr_062_4c2c:
    ret c                                         ; $4c2c: $d8

    ld h, l                                       ; $4c2d: $65
    ld b, c                                       ; $4c2e: $41
    jr nc, jr_062_4bf9                            ; $4c2f: $30 $c8

    db $fd                                        ; $4c31: $fd
    ld [bc], a                                    ; $4c32: $02
    rst $10                                       ; $4c33: $d7
    add hl, de                                    ; $4c34: $19

Call_062_4c35:
    add a                                         ; $4c35: $87
    ld a, [hl-]                                   ; $4c36: $3a
    ld l, l                                       ; $4c37: $6d
    ld h, h                                       ; $4c38: $64
    inc e                                         ; $4c39: $1c
    ld [hl], d                                    ; $4c3a: $72
    ld l, l                                       ; $4c3b: $6d
    ld a, [$e8d3]                                 ; $4c3c: $fa $d3 $e8
    add $90                                       ; $4c3f: $c6 $90
    sbc [hl]                                      ; $4c41: $9e
    di                                            ; $4c42: $f3
    sbc h                                         ; $4c43: $9c
    rla                                           ; $4c44: $17
    rlca                                          ; $4c45: $07
    ld e, h                                       ; $4c46: $5c
    ld b, [hl]                                    ; $4c47: $46
    ld d, d                                       ; $4c48: $52
    sub e                                         ; $4c49: $93
    cp l                                          ; $4c4a: $bd
    rst $08                                       ; $4c4b: $cf
    inc hl                                        ; $4c4c: $23
    cp a                                          ; $4c4d: $bf
    xor h                                         ; $4c4e: $ac
    ld a, [hl+]                                   ; $4c4f: $2a
    cp l                                          ; $4c50: $bd
    ld [hl], a                                    ; $4c51: $77
    ld c, a                                       ; $4c52: $4f
    rst $00                                       ; $4c53: $c7
    add l                                         ; $4c54: $85
    or d                                          ; $4c55: $b2
    inc [hl]                                      ; $4c56: $34
    cp l                                          ; $4c57: $bd
    ld a, [$017e]                                 ; $4c58: $fa $7e $01
    db $ed                                        ; $4c5b: $ed
    ld e, a                                       ; $4c5c: $5f
    and [hl]                                      ; $4c5d: $a6
    cp [hl]                                       ; $4c5e: $be
    inc l                                         ; $4c5f: $2c
    and [hl]                                      ; $4c60: $a6
    and h                                         ; $4c61: $a4
    daa                                           ; $4c62: $27
    sub h                                         ; $4c63: $94
    jp z, $9196                                   ; $4c64: $ca $96 $91

    ld [hl], c                                    ; $4c67: $71
    ret z                                         ; $4c68: $c8

    push de                                       ; $4c69: $d5
    ldh a, [$8c]                                  ; $4c6a: $f0 $8c
    ld [hl], h                                    ; $4c6c: $74
    xor a                                         ; $4c6d: $af
    ld a, h                                       ; $4c6e: $7c
    cp a                                          ; $4c6f: $bf
    sub a                                         ; $4c70: $97
    sbc e                                         ; $4c71: $9b
    ld c, [hl]                                    ; $4c72: $4e
    db $db                                        ; $4c73: $db
    ld h, e                                       ; $4c74: $63
    add hl, de                                    ; $4c75: $19

jr_062_4c76:
    db $dd                                        ; $4c76: $dd
    ld h, l                                       ; $4c77: $65
    rrca                                          ; $4c78: $0f
    dec d                                         ; $4c79: $15
    sbc l                                         ; $4c7a: $9d
    inc hl                                        ; $4c7b: $23
    rst $38                                       ; $4c7c: $ff
    or e                                          ; $4c7d: $b3
    db $10                                        ; $4c7e: $10
    or c                                          ; $4c7f: $b1
    rst $10                                       ; $4c80: $d7

jr_062_4c81:
    ld l, d                                       ; $4c81: $6a
    ld l, $f2                                     ; $4c82: $2e $f2
    jp $fd5e                                      ; $4c84: $c3 $5e $fd


    db $fd                                        ; $4c87: $fd
    ld a, [hl]                                    ; $4c88: $7e
    ld bc, $5c07                                  ; $4c89: $01 $07 $5c
    ld b, [hl]                                    ; $4c8c: $46
    cp $1c                                        ; $4c8d: $fe $1c
    jr z, jr_062_4c76                             ; $4c8f: $28 $e5

    ld d, l                                       ; $4c91: $55
    di                                            ; $4c92: $f3
    ret z                                         ; $4c93: $c8

    rst $38                                       ; $4c94: $ff
    adc h                                         ; $4c95: $8c
    ld [hl], h                                    ; $4c96: $74
    rst $30                                       ; $4c97: $f7
    ldh a, [rNR22]                                ; $4c98: $f0 $17
    set 7, l                                      ; $4c9a: $cb $fd
    ld [bc], a                                    ; $4c9c: $02
    rlca                                          ; $4c9d: $07
    ld e, h                                       ; $4c9e: $5c
    ld d, [hl]                                    ; $4c9f: $56
    sbc e                                         ; $4ca0: $9b
    sub e                                         ; $4ca1: $93
    ld d, b                                       ; $4ca2: $50
    inc l                                         ; $4ca3: $2c
    adc e                                         ; $4ca4: $8b
    cp d                                          ; $4ca5: $ba
    ld h, $f6                                     ; $4ca6: $26 $f6
    ld a, [de]                                    ; $4ca8: $1a
    ld hl, $def9                                  ; $4ca9: $21 $f9 $de
    pop bc                                        ; $4cac: $c1
    ld h, [hl]                                    ; $4cad: $66
    ld d, l                                       ; $4cae: $55
    ld e, [hl]                                    ; $4caf: $5e
    db $fc                                        ; $4cb0: $fc
    ld [hl], e                                    ; $4cb1: $73
    ld l, b                                       ; $4cb2: $68
    ld e, $f9                                     ; $4cb3: $1e $f9
    sbc a                                         ; $4cb5: $9f
    ei                                            ; $4cb6: $fb
    dec b                                         ; $4cb7: $05
    add a                                         ; $4cb8: $87
    ld e, d                                       ; $4cb9: $5a
    call nc, Call_000_3b2c                        ; $4cba: $d4 $2c $3b
    ld c, b                                       ; $4cbd: $48
    db $f4                                        ; $4cbe: $f4
    ld [c], a                                     ; $4cbf: $e2
    jr nz, jr_062_4c81                            ; $4cc0: $20 $bf

    db $fc                                        ; $4cc2: $fc
    sbc $ef                                       ; $4cc3: $de $ef
    dec e                                         ; $4cc5: $1d
    ld [hl], b                                    ; $4cc6: $70
    ld e, c                                       ; $4cc7: $59
    ld l, l                                       ; $4cc8: $6d
    ld c, $fd                                     ; $4cc9: $0e $fd

jr_062_4ccb:
    adc h                                         ; $4ccb: $8c
    ld a, a                                       ; $4ccc: $7f
    rst $30                                       ; $4ccd: $f7
    ld [$1e7f], a                                 ; $4cce: $ea $7f $1e
    set 7, l                                      ; $4cd1: $cb $fd
    ld [bc], a                                    ; $4cd3: $02
    ld l, l                                       ; $4cd4: $6d
    and $39                                       ; $4cd5: $e6 $39
    rlca                                          ; $4cd7: $07
    ld c, d                                       ; $4cd8: $4a
    ld a, c                                       ; $4cd9: $79
    rrca                                          ; $4cda: $0f
    ret z                                         ; $4cdb: $c8

    ld b, d                                       ; $4cdc: $42
    xor e                                         ; $4cdd: $ab
    db $fc                                        ; $4cde: $fc
    ret c                                         ; $4cdf: $d8

    ei                                            ; $4ce0: $fb
    cp h                                          ; $4ce1: $bc
    jr c, jr_062_4cf8                             ; $4ce2: $38 $14

    or $c8                                        ; $4ce4: $f6 $c8
    cpl                                           ; $4ce6: $2f
    ld [hl], l                                    ; $4ce7: $75
    ld d, l                                       ; $4ce8: $55
    dec h                                         ; $4ce9: $25
    jr nz, jr_062_4ccb                            ; $4cea: $20 $df

    cpl                                           ; $4cec: $2f
    rlca                                          ; $4ced: $07
    sbc e                                         ; $4cee: $9b
    ld d, l                                       ; $4cef: $55
    ld a, c                                       ; $4cf0: $79
    adc $91                                       ; $4cf1: $ce $91
    ld e, a                                       ; $4cf3: $5f
    and [hl]                                      ; $4cf4: $a6
    and e                                         ; $4cf5: $a3
    rla                                           ; $4cf6: $17
    add l                                         ; $4cf7: $85

jr_062_4cf8:
    call c, $f1e7                                 ; $4cf8: $dc $e7 $f1
    rst $28                                       ; $4cfb: $ef
    sbc $63                                       ; $4cfc: $de $63
    ld e, h                                       ; $4cfe: $5c
    ei                                            ; $4cff: $fb
    cpl                                           ; $4d00: $2f
    add hl, bc                                    ; $4d01: $09
    ld a, b                                       ; $4d02: $78
    xor a                                         ; $4d03: $af
    call $dfe3                                    ; $4d04: $cd $e3 $df
    sbc l                                         ; $4d07: $9d
    ld a, e                                       ; $4d08: $7b
    ld e, h                                       ; $4d09: $5c
    call z, $ffab                                 ; $4d0a: $cc $ab $ff
    ld a, c                                       ; $4d0d: $79
    inc l                                         ; $4d0e: $2c
    rst $30                                       ; $4d0f: $f7
    dec bc                                        ; $4d10: $0b
    rlca                                          ; $4d11: $07
    ld e, h                                       ; $4d12: $5c
    ld b, [hl]                                    ; $4d13: $46
    ld d, d                                       ; $4d14: $52
    sub e                                         ; $4d15: $93
    dec a                                         ; $4d16: $3d
    add hl, bc                                    ; $4d17: $09
    push bc                                       ; $4d18: $c5
    cp h                                          ; $4d19: $bc
    ldh a, [$ec]                                  ; $4d1a: $f0 $ec
    di                                            ; $4d1c: $f3
    ret z                                         ; $4d1d: $c8

    cpl                                           ; $4d1e: $2f
    ld [hl], e                                    ; $4d1f: $73
    xor [hl]                                      ; $4d20: $ae
    push de                                       ; $4d21: $d5
    sbc h                                         ; $4d22: $9c
    ld h, l                                       ; $4d23: $65
    ld a, [hl+]                                   ; $4d24: $2a
    inc h                                         ; $4d25: $24
    cpl                                           ; $4d26: $2f
    ld [hl], d                                    ; $4d27: $72
    add d                                         ; $4d28: $82
    rst $28                                       ; $4d29: $ef
    rla                                           ; $4d2a: $17
    rlca                                          ; $4d2b: $07
    ld e, h                                       ; $4d2c: $5c
    ld b, [hl]                                    ; $4d2d: $46
    ld d, d                                       ; $4d2e: $52
    sub e                                         ; $4d2f: $93
    dec a                                         ; $4d30: $3d
    ld a, [c]                                     ; $4d31: $f2

jr_062_4d32:
    ccf                                           ; $4d32: $3f
    ld a, e                                       ; $4d33: $7b
    db $f4                                        ; $4d34: $f4
    and a                                         ; $4d35: $a7
    ld a, e                                       ; $4d36: $7b
    ld [de], a                                    ; $4d37: $12
    adc d                                         ; $4d38: $8a
    ld a, c                                       ; $4d39: $79
    pop hl                                        ; $4d3a: $e1
    sbc c                                         ; $4d3b: $99
    ld a, c                                       ; $4d3c: $79
    ld sp, $8614                                  ; $4d3d: $31 $14 $86
    jp nz, $a87b                                  ; $4d40: $c2 $7b $a8

    add sp, -$05                                  ; $4d43: $e8 $fb
    dec b                                         ; $4d45: $05
    rlca                                          ; $4d46: $07
    ld e, h                                       ; $4d47: $5c
    ld b, [hl]                                    ; $4d48: $46
    cp $1c                                        ; $4d49: $fe $1c
    jr z, jr_062_4d32                             ; $4d4b: $28 $e5

    ld d, l                                       ; $4d4d: $55
    di                                            ; $4d4e: $f3
    ret z                                         ; $4d4f: $c8

    rst $38                                       ; $4d50: $ff
    xor h                                         ; $4d51: $ac
    ld [bc], a                                    ; $4d52: $02
    ld e, d                                       ; $4d53: $5a
    or $00                                        ; $4d54: $f6 $00
    ld [c], a                                     ; $4d56: $e2
    cpl                                           ; $4d57: $2f
    sub [hl]                                      ; $4d58: $96
    pop bc                                        ; $4d59: $c1
    ld c, d                                       ; $4d5a: $4a
    inc sp                                        ; $4d5b: $33
    rst $30                                       ; $4d5c: $f7
    inc hl                                        ; $4d5d: $23
    halt                                          ; $4d5e: $76
    cp l                                          ; $4d5f: $bd
    ld e, a                                       ; $4d60: $5f
    rlca                                          ; $4d61: $07
    ld e, h                                       ; $4d62: $5c
    ld d, $1b                                     ; $4d63: $16 $1b
    rlca                                          ; $4d65: $07
    ld c, d                                       ; $4d66: $4a
    ld a, c                                       ; $4d67: $79
    dec c                                         ; $4d68: $0d
    ld h, e                                       ; $4d69: $63
    ld a, d                                       ; $4d6a: $7a
    ld d, $dc                                     ; $4d6b: $16 $dc
    rst $20                                       ; $4d6d: $e7
    or l                                          ; $4d6e: $b5
    jp hl                                         ; $4d6f: $e9


    ld d, e                                       ; $4d70: $53
    cp d                                          ; $4d71: $ba
    adc b                                         ; $4d72: $88
    rla                                           ; $4d73: $17
    ld d, e                                       ; $4d74: $53
    jp nc, $d36b                                  ; $4d75: $d2 $6b $d3

    sbc a                                         ; $4d78: $9f
    ld b, [hl]                                    ; $4d79: $46
    scf                                           ; $4d7a: $37
    add [hl]                                      ; $4d7b: $86
    db $f4                                        ; $4d7c: $f4
    db $fd                                        ; $4d7d: $fd
    ld [bc], a                                    ; $4d7e: $02
    sub a                                         ; $4d7f: $97
    sbc e                                         ; $4d80: $9b
    ld a, [hl]                                    ; $4d81: $7e
    rst $28                                       ; $4d82: $ef
    add b                                         ; $4d83: $80
    srl b                                         ; $4d84: $cb $38
    ld b, e                                       ; $4d86: $43
    ld c, $94                                     ; $4d87: $0e $94
    ld a, [c]                                     ; $4d89: $f2
    ld a, $8f                                     ; $4d8a: $3e $8f
    xor $b2                                       ; $4d8c: $ee $b2
    jp c, $f91c                                   ; $4d8e: $da $1c $f9

    sbc a                                         ; $4d91: $9f
    push bc                                       ; $4d92: $c5
    add $3d                                       ; $4d93: $c6 $3d
    ld hl, $a58b                                  ; $4d95: $21 $8b $a5
    ld de, $cd12                                  ; $4d98: $11 $12 $cd
    rst $30                                       ; $4d9b: $f7
    dec bc                                        ; $4d9c: $0b
    rlca                                          ; $4d9d: $07
    ld e, h                                       ; $4d9e: $5c
    ld d, [hl]                                    ; $4d9f: $56
    sbc e                                         ; $4da0: $9b
    inc hl                                        ; $4da1: $23
    rst $38                                       ; $4da2: $ff
    or e                                          ; $4da3: $b3
    rst $00                                       ; $4da4: $c7
    cp b                                          ; $4da5: $b8
    ld a, [bc]                                    ; $4da6: $0a
    ld [hl-], a                                   ; $4da7: $32
    dec d                                         ; $4da8: $15
    ld a, [hl+]                                   ; $4da9: $2a
    rst $18                                       ; $4daa: $df
    dec sp                                        ; $4dab: $3b
    ret c                                         ; $4dac: $d8

    xor h                                         ; $4dad: $ac
    jp z, $8e73                                   ; $4dae: $ca $73 $8e

    db $fc                                        ; $4db1: $fc
    or d                                          ; $4db2: $b2
    ret c                                         ; $4db3: $d8

jr_062_4db4:
    cp b                                          ; $4db4: $b8
    rst $08                                       ; $4db5: $cf
    adc e                                         ; $4db6: $8b
    ld c, h                                       ; $4db7: $4c
    rst $30                                       ; $4db8: $f7
    db $fd                                        ; $4db9: $fd
    ld [bc], a                                    ; $4dba: $02
    rlca                                          ; $4dbb: $07
    ld e, h                                       ; $4dbc: $5c
    ld d, $1b                                     ; $4dbd: $16 $1b
    rlca                                          ; $4dbf: $07
    ld c, d                                       ; $4dc0: $4a
    ld a, c                                       ; $4dc1: $79
    sub [hl]                                      ; $4dc2: $96
    ld a, [c]                                     ; $4dc3: $f2
    and l                                         ; $4dc4: $a5
    ret nc                                        ; $4dc5: $d0

    ld b, [hl]                                    ; $4dc6: $46
    add $21                                       ; $4dc7: $c6 $21
    ld b, a                                       ; $4dc9: $47
    ld a, [hl]                                    ; $4dca: $7e
    xor c                                         ; $4dcb: $a9
    ld d, e                                       ; $4dcc: $53
    ld b, c                                       ; $4dcd: $41
    jr c, jr_062_4db4                             ; $4dce: $38 $e4

    ld a, [hl-]                                   ; $4dd0: $3a

jr_062_4dd1:
    sub h                                         ; $4dd1: $94
    ld [c], a                                     ; $4dd2: $e2
    cp h                                          ; $4dd3: $bc
    ld e, a                                       ; $4dd4: $5f
    sub a                                         ; $4dd5: $97
    sbc e                                         ; $4dd6: $9b
    ld a, [hl]                                    ; $4dd7: $7e
    rst $28                                       ; $4dd8: $ef
    and b                                         ; $4dd9: $a0
    ld h, l                                       ; $4dda: $65
    ld [hl], h                                    ; $4ddb: $74
    sub a                                         ; $4ddc: $97
    ld sp, $1735                                  ; $4ddd: $31 $35 $17
    ld d, e                                       ; $4de0: $53
    db $10                                        ; $4de1: $10
    cp l                                          ; $4de2: $bd
    ld d, [hl]                                    ; $4de3: $56
    ld [hl], e                                    ; $4de4: $73
    sbc a                                         ; $4de5: $9f
    ld h, a                                       ; $4de6: $67
    reti                                          ; $4de7: $d9


    adc a                                         ; $4de8: $8f
    sub $29                                       ; $4de9: $d6 $29
    jp hl                                         ; $4deb: $e9


    inc d                                         ; $4dec: $14
    cpl                                           ; $4ded: $2f
    ld [hl], $0e                                  ; $4dee: $36 $0e
    call Call_000_0bf7                            ; $4df0: $cd $f7 $0b
    rlca                                          ; $4df3: $07
    ld e, h                                       ; $4df4: $5c
    ld d, [hl]                                    ; $4df5: $56
    sbc e                                         ; $4df6: $9b
    inc hl                                        ; $4df7: $23
    rst $38                                       ; $4df8: $ff
    inc sp                                        ; $4df9: $33
    cp $dd                                        ; $4dfa: $fe $dd
    ei                                            ; $4dfc: $fb
    dec a                                         ; $4dfd: $3d
    ld c, $d9                                     ; $4dfe: $0e $d9
    and c                                         ; $4e00: $a1
    ldh a, [rNR34]                                ; $4e01: $f0 $1e
    db $e3                                        ; $4e03: $e3
    ld c, $12                                     ; $4e04: $0e $12
    cp l                                          ; $4e06: $bd
    jr c, jr_062_4dd1                             ; $4e07: $38 $c8

    cpl                                           ; $4e09: $2f
    cp a                                          ; $4e0a: $bf
    rst $30                                       ; $4e0b: $f7
    ld a, e                                       ; $4e0c: $7b
    rlca                                          ; $4e0d: $07
    sbc e                                         ; $4e0e: $9b
    ld d, l                                       ; $4e0f: $55
    ld a, c                                       ; $4e10: $79
    or c                                          ; $4e11: $b1
    ld [hl], c                                    ; $4e12: $71
    and h                                         ; $4e13: $a4
    ld l, $6b                                     ; $4e14: $2e $6b
    cp b                                          ; $4e16: $b8
    ld a, [hl+]                                   ; $4e17: $2a
    db $e3                                        ; $4e18: $e3
    db $fd                                        ; $4e19: $fd
    ld [bc], a                                    ; $4e1a: $02

jr_062_4e1b:
    ld l, l                                       ; $4e1b: $6d
    and $3d                                       ; $4e1c: $e6 $3d
    xor [hl]                                      ; $4e1e: $ae
    db $ec                                        ; $4e1f: $ec
    db $fd                                        ; $4e20: $fd
    ld l, b                                       ; $4e21: $68
    inc c                                         ; $4e22: $0c
    ld l, b                                       ; $4e23: $68
    ld e, c                                       ; $4e24: $59
    ld l, h                                       ; $4e25: $6c
    inc e                                         ; $4e26: $1c
    db $dd                                        ; $4e27: $dd
    ld h, l                                       ; $4e28: $65
    and b                                         ; $4e29: $a0
    sub h                                         ; $4e2a: $94
    ld h, a                                       ; $4e2b: $67
    add hl, hl                                    ; $4e2c: $29
    ld e, a                                       ; $4e2d: $5f
    ld a, [bc]                                    ; $4e2e: $0a
    ld l, l                                       ; $4e2f: $6d
    ld h, h                                       ; $4e30: $64
    inc e                                         ; $4e31: $1c
    ld [hl], d                                    ; $4e32: $72
    ld [hl], h                                    ; $4e33: $74
    sub a                                         ; $4e34: $97
    ld d, l                                       ; $4e35: $55
    rst $30                                       ; $4e36: $f7
    ld a, b                                       ; $4e37: $78
    adc $fb                                       ; $4e38: $ce $fb
    dec b                                         ; $4e3a: $05
    rlca                                          ; $4e3b: $07
    sbc e                                         ; $4e3c: $9b
    ld d, l                                       ; $4e3d: $55
    ld a, c                                       ; $4e3e: $79
    adc $91                                       ; $4e3f: $ce $91
    ld e, a                                       ; $4e41: $5f
    ld b, $82                                     ; $4e42: $06 $82
    ld e, $ec                                     ; $4e44: $1e $ec
    db $10                                        ; $4e46: $10
    add a                                         ; $4e47: $87
    xor h                                         ; $4e48: $ac
    cp a                                          ; $4e49: $bf
    ld e, e                                       ; $4e4a: $5b
    ld d, $85                                     ; $4e4b: $16 $85
    call c, Call_062_51e7                         ; $4e4d: $dc $e7 $51
    ld h, e                                       ; $4e50: $63
    xor a                                         ; $4e51: $af
    ld b, d                                       ; $4e52: $42
    ld e, c                                       ; $4e53: $59
    xor e                                         ; $4e54: $ab
    cp c                                          ; $4e55: $b9
    ld a, [bc]                                    ; $4e56: $0a
    or d                                          ; $4e57: $b2
    rra                                           ; $4e58: $1f
    push de                                       ; $4e59: $d5
    xor [hl]                                      ; $4e5a: $ae
    or e                                          ; $4e5b: $b3
    add b                                         ; $4e5c: $80
    sub h                                         ; $4e5d: $94
    jp z, $fbbf                                   ; $4e5e: $ca $bf $fb

    ld a, [hl]                                    ; $4e61: $7e
    ld bc, $71ed                                  ; $4e62: $01 $ed $71
    ret z                                         ; $4e65: $c8

    push de                                       ; $4e66: $d5
    ldh a, [$8c]                                  ; $4e67: $f0 $8c
    ld [hl], h                                    ; $4e69: $74
    xor a                                         ; $4e6a: $af
    inc a                                         ; $4e6b: $3c
    ld a, [c]                                     ; $4e6c: $f2
    set 1, b                                      ; $4e6d: $cb $c8
    sbc a                                         ; $4e6f: $9f
    db $eb                                        ; $4e70: $eb

jr_062_4e71:
    sbc d                                         ; $4e71: $9a
    jp z, $e863                                   ; $4e72: $ca $63 $e8

    ei                                            ; $4e75: $fb
    cp h                                          ; $4e76: $bc
    sbc b                                         ; $4e77: $98
    sub d                                         ; $4e78: $92
    and [hl]                                      ; $4e79: $a6
    xor l                                         ; $4e7a: $ad
    inc [hl]                                      ; $4e7b: $34
    ld [hl], e                                    ; $4e7c: $73
    ld [hl], h                                    ; $4e7d: $74
    sub a                                         ; $4e7e: $97
    jp hl                                         ; $4e7f: $e9


    cp b                                          ; $4e80: $b8
    jr z, @+$01                                   ; $4e81: $28 $ff

    db $fd                                        ; $4e83: $fd
    ld [bc], a                                    ; $4e84: $02
    rlca                                          ; $4e85: $07
    ld e, h                                       ; $4e86: $5c
    ld b, [hl]                                    ; $4e87: $46
    cp $1c                                        ; $4e88: $fe $1c
    jr z, jr_062_4e71                             ; $4e8a: $28 $e5

    ld d, l                                       ; $4e8c: $55
    di                                            ; $4e8d: $f3
    ret z                                         ; $4e8e: $c8

    rst $38                                       ; $4e8f: $ff
    inc c                                         ; $4e90: $0c
    add [hl]                                      ; $4e91: $86
    cp a                                          ; $4e92: $bf
    jr c, jr_062_4e1b                             ; $4e93: $38 $86

    ld a, d                                       ; $4e95: $7a
    cp a                                          ; $4e96: $bf
    add a                                         ; $4e97: $87
    ld e, d                                       ; $4e98: $5a
    call nc, $b32c                                ; $4e99: $d4 $2c $b3
    xor h                                         ; $4e9c: $ac
    ld d, e                                       ; $4e9d: $53
    jp nc, $af79                                  ; $4e9e: $d2 $79 $af

    call Call_062_4323                            ; $4ea1: $cd $23 $43
    ld b, a                                       ; $4ea4: $47
    rst $20                                       ; $4ea5: $e7
    ld a, [hl]                                    ; $4ea6: $7e
    ld h, a                                       ; $4ea7: $67
    ret nz                                        ; $4ea8: $c0

    ld d, l                                       ; $4ea9: $55
    sub $e4                                       ; $4eaa: $d6 $e4
    ld e, d                                       ; $4eac: $5a
    call $2091                                    ; $4ead: $cd $91 $20
    ld e, a                                       ; $4eb0: $5f
    ret nc                                        ; $4eb1: $d0

    ld [hl], d                                    ; $4eb2: $72
    cp a                                          ; $4eb3: $bf
    db $ed                                        ; $4eb4: $ed
    adc $85                                       ; $4eb5: $ce $85
    ld [hl-], a                                   ; $4eb7: $32
    ld [hl], h                                    ; $4eb8: $74
    jp nc, Jump_062_5a16                          ; $4eb9: $d2 $16 $5a

    dec l                                         ; $4ebc: $2d
    cpl                                           ; $4ebd: $2f
    sub h                                         ; $4ebe: $94
    adc c                                         ; $4ebf: $89
    pop de                                        ; $4ec0: $d1
    or h                                          ; $4ec1: $b4
    sub c                                         ; $4ec2: $91
    add b                                         ; $4ec3: $80
    dec bc                                        ; $4ec4: $0b
    ld h, l                                       ; $4ec5: $65
    ld [$ef78], sp                                ; $4ec6: $08 $78 $ef
    ld a, [hl-]                                   ; $4ec9: $3a
    ld c, d                                       ; $4eca: $4a
    cpl                                           ; $4ecb: $2f
    xor e                                         ; $4ecc: $ab
    xor $f1                                       ; $4ecd: $ee $f1
    db $fd                                        ; $4ecf: $fd
    ld [bc], a                                    ; $4ed0: $02
    rlca                                          ; $4ed1: $07
    ld e, h                                       ; $4ed2: $5c
    ld b, [hl]                                    ; $4ed3: $46
    ld d, d                                       ; $4ed4: $52
    sub e                                         ; $4ed5: $93
    cp l                                          ; $4ed6: $bd
    rst $08                                       ; $4ed7: $cf
    inc hl                                        ; $4ed8: $23
    cp a                                          ; $4ed9: $bf
    xor h                                         ; $4eda: $ac
    ld a, [hl+]                                   ; $4edb: $2a
    cp l                                          ; $4edc: $bd
    ld [hl], a                                    ; $4edd: $77
    cpl                                           ; $4ede: $2f
    and [hl]                                      ; $4edf: $a6
    and h                                         ; $4ee0: $a4
    rla                                           ; $4ee1: $17
    ld d, e                                       ; $4ee2: $53
    call nc, $e660                                ; $4ee3: $d4 $60 $e6
    ld d, l                                       ; $4ee6: $55
    sub $28                                       ; $4ee7: $d6 $28
    push hl                                       ; $4ee9: $e5
    ld sp, $fde0                                  ; $4eea: $31 $e0 $fd
    ld [bc], a                                    ; $4eed: $02
    db $ed                                        ; $4eee: $ed
    ld e, a                                       ; $4eef: $5f
    and [hl]                                      ; $4ef0: $a6
    cp [hl]                                       ; $4ef1: $be
    inc l                                         ; $4ef2: $2c
    and [hl]                                      ; $4ef3: $a6
    and h                                         ; $4ef4: $a4
    ld b, a                                       ; $4ef5: $47
    add $21                                       ; $4ef6: $c6 $21
    ld d, a                                       ; $4ef8: $57
    jp $d233                                      ; $4ef9: $c3 $33 $d2


    cp l                                          ; $4efc: $bd
    ld a, [c]                                     ; $4efd: $f2
    cp l                                          ; $4efe: $bd
    or $2f                                        ; $4eff: $f6 $2f
    ld d, e                                       ; $4f01: $53
    ld e, a                                       ; $4f02: $5f
    ld h, [hl]                                    ; $4f03: $66
    ld b, c                                       ; $4f04: $41
    db $fc                                        ; $4f05: $fc
    adc e                                         ; $4f06: $8b
    add hl, hl                                    ; $4f07: $29
    jp hl                                         ; $4f08: $e9


    db $fd                                        ; $4f09: $fd
    sbc $1d                                       ; $4f0a: $de $1d
    cp e                                          ; $4f0c: $bb
    adc b                                         ; $4f0d: $88
    ld l, c                                       ; $4f0e: $69
    inc hl                                        ; $4f0f: $23
    ld h, e                                       ; $4f10: $63
    xor b                                         ; $4f11: $a8
    inc hl                                        ; $4f12: $23
    cp a                                          ; $4f13: $bf
    adc h                                         ; $4f14: $8c
    db $fc                                        ; $4f15: $fc
    cp c                                          ; $4f16: $b9
    xor [hl]                                      ; $4f17: $ae
    xor c                                         ; $4f18: $a9
    ld a, h                                       ; $4f19: $7c
    cp a                                          ; $4f1a: $bf
    rlca                                          ; $4f1b: $07
    sbc e                                         ; $4f1c: $9b
    ld d, l                                       ; $4f1d: $55
    ld a, c                                       ; $4f1e: $79
    db $e4                                        ; $4f1f: $e4
    rst $08                                       ; $4f20: $cf
    ld e, l                                       ; $4f21: $5d
    xor $18                                       ; $4f22: $ee $18
    ld a, d                                       ; $4f24: $7a
    rst $30                                       ; $4f25: $f7
    ld l, $0b                                     ; $4f26: $2e $0b
    ld d, d                                       ; $4f28: $52
    ld a, [de]                                    ; $4f29: $1a
    add c                                         ; $4f2a: $81
    add hl, sp                                    ; $4f2b: $39
    inc a                                         ; $4f2c: $3c
    db $eb                                        ; $4f2d: $eb
    ld b, c                                       ; $4f2e: $41
    add hl, hl                                    ; $4f2f: $29
    di                                            ; $4f30: $f3
    ret z                                         ; $4f31: $c8

    rst $38                                       ; $4f32: $ff
    ld c, h                                       ; $4f33: $4c
    rst $00                                       ; $4f34: $c7
    ld b, l                                       ; $4f35: $45
    ld hl, $79f7                                  ; $4f36: $21 $f7 $79
    db $dd                                        ; $4f39: $dd
    add sp, $39                                   ; $4f3a: $e8 $39
    ld h, d                                       ; $4f3c: $62
    rst $20                                       ; $4f3d: $e7
    ld a, [hl+]                                   ; $4f3e: $2a
    ret z                                         ; $4f3f: $c8

    ld e, b                                       ; $4f40: $58
    rst $00                                       ; $4f41: $c7
    ld [$05fb], a                                 ; $4f42: $ea $fb $05
    rlca                                          ; $4f45: $07
    ld e, h                                       ; $4f46: $5c
    ld d, [hl]                                    ; $4f47: $56
    sbc e                                         ; $4f48: $9b
    inc hl                                        ; $4f49: $23
    rst $38                                       ; $4f4a: $ff
    inc sp                                        ; $4f4b: $33
    cp $dd                                        ; $4f4c: $fe $dd
    inc hl                                        ; $4f4e: $23
    ld h, e                                       ; $4f4f: $63
    xor b                                         ; $4f50: $a8
    jp z, $de82                                   ; $4f51: $ca $82 $de

    ld h, e                                       ; $4f54: $63
    call c, $a241                                 ; $4f55: $dc $41 $a2
    rla                                           ; $4f58: $17
    rlca                                          ; $4f59: $07
    ld sp, hl                                     ; $4f5a: $f9
    push hl                                       ; $4f5b: $e5
    rst $30                                       ; $4f5c: $f7
    ld a, [hl]                                    ; $4f5d: $7e
    rst $28                                       ; $4f5e: $ef
    ld d, b                                       ; $4f5f: $50
    adc e                                         ; $4f60: $8b
    sbc d                                         ; $4f61: $9a
    ld h, l                                       ; $4f62: $65
    and h                                         ; $4f63: $a4
    dec b                                         ; $4f64: $05
    ld a, l                                       ; $4f65: $7d
    cp a                                          ; $4f66: $bf
    rlca                                          ; $4f67: $07
    ld e, h                                       ; $4f68: $5c
    ld b, [hl]                                    ; $4f69: $46
    cp $1c                                        ; $4f6a: $fe $1c
    ld c, c                                       ; $4f6c: $49
    ld c, l                                       ; $4f6d: $4d
    sbc $e7                                       ; $4f6e: $de $e7
    sub c                                         ; $4f70: $91
    ld e, a                                       ; $4f71: $5f
    and [hl]                                      ; $4f72: $a6
    cp [hl]                                       ; $4f73: $be
    xor h                                         ; $4f74: $ac
    inc bc                                        ; $4f75: $03
    ld a, d                                       ; $4f76: $7a
    sbc a                                         ; $4f77: $9f
    ld d, a                                       ; $4f78: $57
    push af                                       ; $4f79: $f5
    adc h                                         ; $4f7a: $8c
    cp h                                          ; $4f7b: $bc
    ld d, [hl]                                    ; $4f7c: $56
    ld [hl], e                                    ; $4f7d: $73
    sub l                                         ; $4f7e: $95
    ld l, d                                       ; $4f7f: $6a
    cp c                                          ; $4f80: $b9
    ld [hl], a                                    ; $4f81: $77
    ld h, c                                       ; $4f82: $61
    rst $28                                       ; $4f83: $ef
    adc $c5                                       ; $4f84: $ce $c5
    ccf                                           ; $4f86: $3f
    add a                                         ; $4f87: $87
    and $5d                                       ; $4f88: $e6 $5d
    inc b                                         ; $4f8a: $04
    sbc l                                         ; $4f8b: $9d
    jr z, jr_062_5007                             ; $4f8c: $28 $79

    adc $0b                                       ; $4f8e: $ce $0b
    rst $10                                       ; $4f90: $d7
    ret nc                                        ; $4f91: $d0

    ccf                                           ; $4f92: $3f
    ld l, l                                       ; $4f93: $6d
    db $e4                                        ; $4f94: $e4
    sub a                                         ; $4f95: $97
    add hl, sp                                    ; $4f96: $39
    rlca                                          ; $4f97: $07
    inc hl                                        ; $4f98: $23
    ld h, e                                       ; $4f99: $63
    daa                                           ; $4f9a: $27
    cpl                                           ; $4f9b: $2f
    ld a, [$071d]                                 ; $4f9c: $fa $1d $07
    ld c, d                                       ; $4f9f: $4a
    ld a, c                                       ; $4fa0: $79
    and h                                         ; $4fa1: $a4
    inc sp                                        ; $4fa2: $33
    or h                                          ; $4fa3: $b4
    ld e, d                                       ; $4fa4: $5a
    cp [hl]                                       ; $4fa5: $be
    ld e, a                                       ; $4fa6: $5f
    rlca                                          ; $4fa7: $07
    adc c                                         ; $4fa8: $89
    ld e, [hl]                                    ; $4fa9: $5e
    inc e                                         ; $4faa: $1c
    db $e4                                        ; $4fab: $e4
    sub a                                         ; $4fac: $97
    rst $18                                       ; $4fad: $df
    ei                                            ; $4fae: $fb
    sbc h                                         ; $4faf: $9c
    adc e                                         ; $4fb0: $8b
    add c                                         ; $4fb1: $81

jr_062_4fb2:
    xor b                                         ; $4fb2: $a8
    ld b, c                                       ; $4fb3: $41
    ld l, d                                       ; $4fb4: $6a
    res 1, d                                      ; $4fb5: $cb $8a
    xor c                                         ; $4fb7: $a9
    ld a, c                                       ; $4fb8: $79
    xor a                                         ; $4fb9: $af
    ld e, l                                       ; $4fba: $5d
    sub a                                         ; $4fbb: $97
    dec a                                         ; $4fbc: $3d
    call $5fe1                                    ; $4fbd: $cd $e1 $5f
    inc c                                         ; $4fc0: $0c
    add sp, -$5f                                  ; $4fc1: $e8 $a1
    ld sp, hl                                     ; $4fc3: $f9
    ld a, [hl]                                    ; $4fc4: $7e
    ld bc, $5c07                                  ; $4fc5: $01 $07 $5c
    ld b, [hl]                                    ; $4fc8: $46
    cp $1c                                        ; $4fc9: $fe $1c
    jr z, jr_062_4fb2                             ; $4fcb: $28 $e5

    ld d, l                                       ; $4fcd: $55
    di                                            ; $4fce: $f3
    ret z                                         ; $4fcf: $c8

    rst $38                                       ; $4fd0: $ff
    inc c                                         ; $4fd1: $0c
    add [hl]                                      ; $4fd2: $86
    cp a                                          ; $4fd3: $bf
    call c, Call_000_072f                         ; $4fd4: $dc $2f $07
    ld e, h                                       ; $4fd7: $5c
    ld d, [hl]                                    ; $4fd8: $56
    sbc l                                         ; $4fd9: $9d
    inc hl                                        ; $4fda: $23
    rst $38                                       ; $4fdb: $ff
    or e                                          ; $4fdc: $b3
    add sp, $2b                                   ; $4fdd: $e8 $2b
    add [hl]                                      ; $4fdf: $86
    xor d                                         ; $4fe0: $aa
    ld b, $4a                                     ; $4fe1: $06 $4a
    ld a, c                                       ; $4fe3: $79
    or l                                          ; $4fe4: $b5
    cp c                                          ; $4fe5: $b9
    db $10                                        ; $4fe6: $10
    or c                                          ; $4fe7: $b1
    rst $28                                       ; $4fe8: $ef
    rla                                           ; $4fe9: $17
    rst $10                                       ; $4fea: $d7
    ld [$48ad], a                                 ; $4feb: $ea $ad $48
    ei                                            ; $4fee: $fb
    dec bc                                        ; $4fef: $0b
    sub a                                         ; $4ff0: $97
    ld [$579b], sp                                ; $4ff1: $08 $9b $57
    ld e, e                                       ; $4ff4: $5b
    ld hl, $a3f7                                  ; $4ff5: $21 $f7 $a3
    dec e                                         ; $4ff8: $1d
    sub d                                         ; $4ff9: $92
    rst $18                                       ; $4ffa: $df
    ld a, [c]                                     ; $4ffb: $f2
    db $fd                                        ; $4ffc: $fd
    ld [bc], a                                    ; $4ffd: $02
    rlca                                          ; $4ffe: $07
    ld e, h                                       ; $4fff: $5c
    and [hl]                                      ; $5000: $a6
    cp [hl]                                       ; $5001: $be
    inc c                                         ; $5002: $0c
    sub h                                         ; $5003: $94
    ld a, [c]                                     ; $5004: $f2
    ld a, [de]                                    ; $5005: $1a
    adc [hl]                                      ; $5006: $8e

jr_062_5007:
    add hl, hl                                    ; $5007: $29
    push bc                                       ; $5008: $c5
    ld a, e                                       ; $5009: $7b
    and b                                         ; $500a: $a0
    ld l, b                                       ; $500b: $68
    ld a, a                                       ; $500c: $7f
    ld bc, $e66d                                  ; $500d: $01 $6d $e6
    xor c                                         ; $5010: $a9
    cpl                                           ; $5011: $2f
    and e                                         ; $5012: $a3
    cp e                                          ; $5013: $bb
    adc h                                         ; $5014: $8c
    ld [hl], h                                    ; $5015: $74
    rst $28                                       ; $5016: $ef
    adc $81                                       ; $5017: $ce $81
    ld d, d                                       ; $5019: $52
    sub $be                                       ; $501a: $d6 $be
    ld [hl], $af                                  ; $501c: $36 $af
    push de                                       ; $501e: $d5
    cp a                                          ; $501f: $bf
    or b                                          ; $5020: $b0
    ld [hl], e                                    ; $5021: $73
    db $e4                                        ; $5022: $e4
    rst $08                                       ; $5023: $cf
    ld d, l                                       ; $5024: $55
    add hl, bc                                    ; $5025: $09
    and $55                                       ; $5026: $e6 $55
    jr z, jr_062_5035                             ; $5028: $28 $0b

    adc a                                         ; $502a: $8f
    ld c, d                                       ; $502b: $4a
    sub b                                         ; $502c: $90
    or d                                          ; $502d: $b2
    ld d, b                                       ; $502e: $50
    rst $28                                       ; $502f: $ef
    or l                                          ; $5030: $b5
    sbc c                                         ; $5031: $99
    rst $30                                       ; $5032: $f7
    inc [hl]                                      ; $5033: $34
    rla                                           ; $5034: $17

jr_062_5035:
    ld d, e                                       ; $5035: $53
    jp nc, $efbb                                  ; $5036: $d2 $bb $ef

    ld a, e                                       ; $5039: $7b
    ld l, l                                       ; $503a: $6d
    ld [hl], h                                    ; $503b: $74

Jump_062_503c:
    ld c, d                                       ; $503c: $4a

Call_062_503d:
    call c, $bb5d                                 ; $503d: $dc $5d $bb
    ld b, [hl]                                    ; $5040: $46
    adc d                                         ; $5041: $8a
    ld b, l                                       ; $5042: $45
    ei                                            ; $5043: $fb
    ld c, $b8                                     ; $5044: $0e $b8
    adc h                                         ; $5046: $8c
    db $fc                                        ; $5047: $fc
    cp c                                          ; $5048: $b9
    ld c, [hl]                                    ; $5049: $4e
    xor c                                         ; $504a: $a9
    cp h                                          ; $504b: $bc
    ldh a, [$0c]                                  ; $504c: $f0 $0c
    cp l                                          ; $504e: $bd
    ld d, [hl]                                    ; $504f: $56
    rst $38                                       ; $5050: $ff
    jp nz, $ed4e                                  ; $5051: $c2 $4e $ed

    dec sp                                        ; $5054: $3b
    ccf                                           ; $5055: $3f
    push af                                       ; $5056: $f5
    or d                                          ; $5057: $b2
    xor [hl]                                      ; $5058: $ae
    xor c                                         ; $5059: $a9
    ld [hl], e                                    ; $505a: $73
    rst $28                                       ; $505b: $ef
    adc $41                                       ; $505c: $ce $41
    ld b, a                                       ; $505e: $47
    jp c, Jump_062_7fda                           ; $505f: $da $da $7f

    and [hl]                                      ; $5062: $a6
    ld b, [hl]                                    ; $5063: $46
    ei                                            ; $5064: $fb
    dec bc                                        ; $5065: $0b
    rst $10                                       ; $5066: $d7
    ld a, h                                       ; $5067: $7c
    ld b, l                                       ; $5068: $45
    ld e, e                                       ; $5069: $5b
    ei                                            ; $506a: $fb
    rst $08                                       ; $506b: $cf
    call nc, $86d0                                ; $506c: $d4 $d0 $86
    sbc [hl]                                      ; $506f: $9e
    ld [$d87e], a                                 ; $5070: $ea $7e $d8
    ei                                            ; $5073: $fb
    ld a, l                                       ; $5074: $7d
    ld e, l                                       ; $5075: $5d
    adc a                                         ; $5076: $8f
    ret c                                         ; $5077: $d8

    ld [hl-], a                                   ; $5078: $32
    dec e                                         ; $5079: $1d
    rst $30                                       ; $507a: $f7
    and e                                         ; $507b: $a3
    dec a                                         ; $507c: $3d
    ld d, b                                       ; $507d: $50
    xor $17                                       ; $507e: $ee $17
    sub a                                         ; $5080: $97
    ld a, l                                       ; $5081: $7d
    ld e, h                                       ; $5082: $5c
    xor b                                         ; $5083: $a8
    adc e                                         ; $5084: $8b

jr_062_5085:
    ld b, d                                       ; $5085: $42
    ld [hl], d                                    ; $5086: $72
    and l                                         ; $5087: $a5
    jr nc, jr_062_5085                            ; $5088: $30 $fb

    sbc $21                                       ; $508a: $de $21
    ld sp, hl                                     ; $508c: $f9
    dec l                                         ; $508d: $2d
    adc a                                         ; $508e: $8f
    db $fc                                        ; $508f: $fc
    cp c                                          ; $5090: $b9
    rst $18                                       ; $5091: $df
    cp e                                          ; $5092: $bb

Jump_062_5093:
    db $d3                                        ; $5093: $d3
    add sp, -$67                                  ; $5094: $e8 $99
    rla                                           ; $5096: $17
    add l                                         ; $5097: $85
    xor h                                         ; $5098: $ac
    xor l                                         ; $5099: $ad
    inc b                                         ; $509a: $04
    add hl, hl                                    ; $509b: $29
    rst $30                                       ; $509c: $f7
    dec bc                                        ; $509d: $0b
    rst $10                                       ; $509e: $d7
    pop bc                                        ; $509f: $c1
    ld a, [hl+]                                   ; $50a0: $2a
    jr nz, jr_062_50dd                            ; $50a1: $20 $3a

    ld d, a                                       ; $50a3: $57
    ld sp, hl                                     ; $50a4: $f9
    inc hl                                        ; $50a5: $23
    sub h                                         ; $50a6: $94
    ld b, l                                       ; $50a7: $45
    cp a                                          ; $50a8: $bf
    ld [hl-], a                                   ; $50a9: $32
    ld l, l                                       ; $50aa: $6d
    db $ed                                        ; $50ab: $ed
    ccf                                           ; $50ac: $3f
    ld d, e                                       ; $50ad: $53
    and e                                         ; $50ae: $a3
    ld a, l                                       ; $50af: $7d
    ld d, a                                       ; $50b0: $57
    ld h, $35                                     ; $50b1: $26 $35
    ld e, $14                                     ; $50b3: $1e $14
    adc e                                         ; $50b5: $8b
    or $17                                        ; $50b6: $f6 $17
    rla                                           ; $50b8: $17
    jp hl                                         ; $50b9: $e9


    and l                                         ; $50ba: $a5
    ld e, e                                       ; $50bb: $5b
    ei                                            ; $50bc: $fb
    xor [hl]                                      ; $50bd: $ae
    pop de                                        ; $50be: $d1
    dec hl                                        ; $50bf: $2b

jr_062_50c0:
    ld [$50c6], sp                                ; $50c0: $08 $c6 $50
    rst $30                                       ; $50c3: $f7
    and e                                         ; $50c4: $a3
    and c                                         ; $50c5: $a1
    rra                                           ; $50c6: $1f
    db $ed                                        ; $50c7: $ed
    ld l, e                                       ; $50c8: $6b
    di                                            ; $50c9: $f3
    ld h, d                                       ; $50ca: $62
    add sp, -$55                                  ; $50cb: $e8 $ab
    and b                                         ; $50cd: $a0
    sub h                                         ; $50ce: $94
    sub e                                         ; $50cf: $93
    rst $30                                       ; $50d0: $f7
    and l                                         ; $50d1: $a5
    inc h                                         ; $50d2: $24
    inc [hl]                                      ; $50d3: $34
    cp h                                          ; $50d4: $bc
    ld d, b                                       ; $50d5: $50
    ld l, c                                       ; $50d6: $69
    inc hl                                        ; $50d7: $23
    ld h, e                                       ; $50d8: $63
    xor b                                         ; $50d9: $a8
    adc e                                         ; $50da: $8b
    ld h, c                                       ; $50db: $61
    ld a, [hl+]                                   ; $50dc: $2a

jr_062_50dd:
    dec [hl]                                      ; $50dd: $35
    ld e, b                                       ; $50de: $58
    sbc l                                         ; $50df: $9d
    ld c, e                                       ; $50e0: $4b
    db $fd                                        ; $50e1: $fd
    ld a, c                                       ; $50e2: $79
    call z, Call_000_0bf7                         ; $50e3: $cc $f7 $0b
    ld l, l                                       ; $50e6: $6d
    and $39                                       ; $50e7: $e6 $39
    rlca                                          ; $50e9: $07
    ld c, d                                       ; $50ea: $4a
    ld a, c                                       ; $50eb: $79
    sub c                                         ; $50ec: $91
    ld e, [hl]                                    ; $50ed: $5e
    cp d                                          ; $50ee: $ba
    ld [hl], a                                    ; $50ef: $77
    rst $18                                       ; $50f0: $df
    rst $30                                       ; $50f1: $f7
    ret nc                                        ; $50f2: $d0

    inc a                                         ; $50f3: $3c
    rst $20                                       ; $50f4: $e7
    ld a, [de]                                    ; $50f5: $1a
    adc [hl]                                      ; $50f6: $8e
    ld b, c                                       ; $50f7: $41
    adc d                                         ; $50f8: $8a
    pop de                                        ; $50f9: $d1
    inc de                                        ; $50fa: $13
    ld l, d                                       ; $50fb: $6a
    jp hl                                         ; $50fc: $e9


    ld c, [hl]                                    ; $50fd: $4e
    db $ed                                        ; $50fe: $ed
    cpl                                           ; $50ff: $2f
    sub a                                         ; $5100: $97
    dec [hl]                                      ; $5101: $35
    dec hl                                        ; $5102: $2b
    rst $18                                       ; $5103: $df
    cp e                                          ; $5104: $bb
    ld d, b                                       ; $5105: $50
    or $a3                                        ; $5106: $f6 $a3
    and c                                         ; $5108: $a1
    daa                                           ; $5109: $27
    call nc, $9dd2                                ; $510a: $d4 $d2 $9d
    ld d, e                                       ; $510d: $53
    ld e, a                                       ; $510e: $5f
    ld d, [hl]                                    ; $510f: $56
    ld b, c                                       ; $5110: $41
    add hl, hl                                    ; $5111: $29
    daa                                           ; $5112: $27
    xor a                                         ; $5113: $af
    reti                                          ; $5114: $d9


    db $10                                        ; $5115: $10
    rrca                                          ; $5116: $0f

jr_062_5117:
    dec l                                         ; $5117: $2d
    rst $30                                       ; $5118: $f7
    dec bc                                        ; $5119: $0b
    rlca                                          ; $511a: $07
    dec l                                         ; $511b: $2d
    inc hl                                        ; $511c: $23
    ld h, e                                       ; $511d: $63
    add sp, -$36                                  ; $511e: $e8 $ca
    ld [hl], d                                    ; $5120: $72
    adc $0b                                       ; $5121: $ce $0b
    ld l, l                                       ; $5123: $6d
    sub [hl]                                      ; $5124: $96
    add hl, bc                                    ; $5125: $09
    or l                                          ; $5126: $b5
    ld [hl], h                                    ; $5127: $74
    ld c, a                                       ; $5128: $4f
    jr z, jr_062_50c0                             ; $5129: $28 $95

    dec l                                         ; $512b: $2d
    inc hl                                        ; $512c: $23
    db $dd                                        ; $512d: $dd
    ld a, c                                       ; $512e: $79
    and c                                         ; $512f: $a1
    push de                                       ; $5130: $d5
    ld a, [c]                                     ; $5131: $f2
    sbc h                                         ; $5132: $9c
    adc e                                         ; $5133: $8b
    ld b, d                                       ; $5134: $42
    ld d, [hl]                                    ; $5135: $56
    push hl                                       ; $5136: $e5
    sbc $a1                                       ; $5137: $de $a1
    inc l                                         ; $5139: $2c
    jp z, $f43f                                   ; $513a: $ca $3f $f4

    cp [hl]                                       ; $513d: $be
    ld h, b                                       ; $513e: $60
    ld a, [$017e]                                 ; $513f: $fa $7e $01
    rlca                                          ; $5142: $07
    dec l                                         ; $5143: $2d
    adc $a1                                       ; $5144: $ce $a1

jr_062_5146:
    ld a, $b4                                     ; $5146: $3e $b4
    xor h                                         ; $5148: $ac
    ld l, b                                       ; $5149: $68
    ld a, [hl-]                                   ; $514a: $3a
    adc d                                         ; $514b: $8a
    rst $30                                       ; $514c: $f7
    jr jr_062_5146                                ; $514d: $18 $f7

    ld a, e                                       ; $514f: $7b
    rst $30                                       ; $5150: $f7
    ld a, [hl+]                                   ; $5151: $2a
    or l                                          ; $5152: $b5
    rst $00                                       ; $5153: $c7
    ld b, d                                       ; $5154: $42
    dec l                                         ; $5155: $2d
    db $dd                                        ; $5156: $dd
    add hl, hl                                    ; $5157: $29
    ld e, [hl]                                    ; $5158: $5e
    call nc, $b135                                ; $5159: $d4 $35 $b1
    dec b                                         ; $515c: $05
    cp l                                          ; $515d: $bd
    call nc, Call_062_7905                        ; $515e: $d4 $05 $79
    pop hl                                        ; $5161: $e1
    ld d, c                                       ; $5162: $51
    add hl, bc                                    ; $5163: $09
    ld d, d                                       ; $5164: $52
    ld d, [hl]                                    ; $5165: $56
    and c                                         ; $5166: $a1
    sbc h                                         ; $5167: $9c
    di                                            ; $5168: $f3
    ld [bc], a                                    ; $5169: $02
    sub a                                         ; $516a: $97
    sbc e                                         ; $516b: $9b
    ld b, e                                       ; $516c: $43
    db $eb                                        ; $516d: $eb
    sbc $c1                                       ; $516e: $de $c1
    ld h, [hl]                                    ; $5170: $66
    ld d, l                                       ; $5171: $55
    sbc [hl]                                      ; $5172: $9e
    ld a, [$b432]                                 ; $5173: $fa $32 $b4
    xor h                                         ; $5176: $ac
    scf                                           ; $5177: $37
    xor e                                         ; $5178: $ab
    add a                                         ; $5179: $87
    call nc, Call_000_2cb4                        ; $517a: $d4 $b4 $2c
    or h                                          ; $517d: $b4
    xor $17                                       ; $517e: $ee $17
    ld l, l                                       ; $5180: $6d
    ld a, [$e69e]                                 ; $5181: $fa $9e $e6
    and d                                         ; $5184: $a2
    xor [hl]                                      ; $5185: $ae
    adc c                                         ; $5186: $89
    cp l                                          ; $5187: $bd
    ret nc                                        ; $5188: $d0

    ld e, d                                       ; $5189: $5a
    jr z, jr_062_5117                             ; $518a: $28 $8b

    cp [hl]                                       ; $518c: $be
    inc d                                         ; $518d: $14
    rrca                                          ; $518e: $0f
    dec l                                         ; $518f: $2d

jr_062_5190:
    ld [hl], e                                    ; $5190: $73
    rst $28                                       ; $5191: $ef
    adc $3a                                       ; $5192: $ce $3a
    dec d                                         ; $5194: $15
    sbc [hl]                                      ; $5195: $9e
    rst $00                                       ; $5196: $c7
    cp c                                          ; $5197: $b9
    jr jr_062_5190                                ; $5198: $18 $f6

    dec sp                                        ; $519a: $3b
    ld h, $94                                     ; $519b: $26 $94
    dec d                                         ; $519d: $15
    adc e                                         ; $519e: $8b
    ld hl, sp+$19                                 ; $519f: $f8 $19
    ld e, d                                       ; $51a1: $5a
    add [hl]                                      ; $51a2: $86
    call nc, Call_062_5fbc                        ; $51a3: $d4 $bc $5f
    rlca                                          ; $51a6: $07
    dec l                                         ; $51a7: $2d
    and e                                         ; $51a8: $a3
    cp e                                          ; $51a9: $bb
    adc h                                         ; $51aa: $8c
    db $fc                                        ; $51ab: $fc
    add hl, sp                                    ; $51ac: $39
    ld d, b                                       ; $51ad: $50
    jp z, Jump_062_407b                           ; $51ae: $ca $7b $40

    and [hl]                                      ; $51b1: $a6
    ld b, d                                       ; $51b2: $42
    push hl                                       ; $51b3: $e5
    dec a                                         ; $51b4: $3d
    add $fb                                       ; $51b5: $c6 $fb
    dec b                                         ; $51b7: $05
    rst $10                                       ; $51b8: $d7
    db $fc                                        ; $51b9: $fc
    or d                                          ; $51ba: $b2
    rlca                                          ; $51bb: $07
    db $e4                                        ; $51bc: $e4
    ld e, [hl]                                    ; $51bd: $5e
    sbc e                                         ; $51be: $9b
    ld a, c                                       ; $51bf: $79
    adc $29                                       ; $51c0: $ce $29
    ld e, l                                       ; $51c2: $5d
    ld h, [hl]                                    ; $51c3: $66
    ld e, c                                       ; $51c4: $59
    jp Jump_000_2345                              ; $51c5: $c3 $45 $23


    add sp, $54                                   ; $51c8: $e8 $54

jr_062_51ca:
    and c                                         ; $51ca: $a1
    ld a, [c]                                     ; $51cb: $f2
    ld e, $cb                                     ; $51cc: $1e $cb
    ld h, d                                       ; $51ce: $62
    jr jr_062_51ca                                ; $51cf: $18 $f9

    ld [hl], e                                    ; $51d1: $73
    jr nz, jr_062_5240                            ; $51d2: $20 $6c

    ld e, [hl]                                    ; $51d4: $5e
    db $fc                                        ; $51d5: $fc
    ld a, e                                       ; $51d6: $7b
    cp c                                          ; $51d7: $b9
    ld e, a                                       ; $51d8: $5f
    rlca                                          ; $51d9: $07
    ld e, h                                       ; $51da: $5c
    ld b, [hl]                                    ; $51db: $46
    cp $9c                                        ; $51dc: $fe $9c
    ld d, b                                       ; $51de: $50
    ld c, e                                       ; $51df: $4b
    or a                                          ; $51e0: $b7
    call c, $ecbb                                 ; $51e1: $dc $bb $ec
    db $e3                                        ; $51e4: $e3
    ld b, d                                       ; $51e5: $42
    sbc l                                         ; $51e6: $9d

Call_062_51e7:
    ld a, [bc]                                    ; $51e7: $0a
    rst $08                                       ; $51e8: $cf
    db $e3                                        ; $51e9: $e3
    push bc                                       ; $51ea: $c5
    add b                                         ; $51eb: $80
    ld c, [hl]                                    ; $51ec: $4e
    rst $18                                       ; $51ed: $df
    cpl                                           ; $51ee: $2f
    ld d, a                                       ; $51ef: $57
    ld b, $a5                                     ; $51f0: $06 $a5
    sbc h                                         ; $51f2: $9c
    sub l                                         ; $51f3: $95
    ld [hl], $ba                                  ; $51f4: $36 $ba
    set 7, b                                      ; $51f6: $cb $f8
    scf                                           ; $51f8: $37
    ret c                                         ; $51f9: $d8

    inc de                                        ; $51fa: $13
    ld l, d                                       ; $51fb: $6a
    jp hl                                         ; $51fc: $e9


    ld d, $ed                                     ; $51fd: $16 $ed
    dec sp                                        ; $51ff: $3b
    ldh [$b2], a                                  ; $5200: $e0 $b2
    and a                                         ; $5202: $a7
    cp c                                          ; $5203: $b9
    ld d, [hl]                                    ; $5204: $56
    ld d, d                                       ; $5205: $52
    ld h, e                                       ; $5206: $63
    rrca                                          ; $5207: $0f
    adc d                                         ; $5208: $8a
    ld b, l                                       ; $5209: $45
    ei                                            ; $520a: $fb
    dec bc                                        ; $520b: $0b
    add a                                         ; $520c: $87
    call nc, $8d57                                ; $520d: $d4 $57 $8d
    inc b                                         ; $5210: $04
    and l                                         ; $5211: $a5
    sbc h                                         ; $5212: $9c
    jp c, $d077                                   ; $5213: $da $77 $d0

    or d                                          ; $5216: $b2
    ei                                            ; $5217: $fb
    cp [hl]                                       ; $5218: $be
    add a                                         ; $5219: $87
    sbc [hl]                                      ; $521a: $9e
    ld [hl], e                                    ; $521b: $73
    or l                                          ; $521c: $b5
    cp c                                          ; $521d: $b9
    jp z, $ad21                                   ; $521e: $ca $21 $ad

    db $fd                                        ; $5221: $fd
    dec b                                         ; $5222: $05
    ld l, l                                       ; $5223: $6d
    ld d, b                                       ; $5224: $50
    xor e                                         ; $5225: $ab
    rst $10                                       ; $5226: $d7
    ld c, b                                       ; $5227: $48
    ld d, b                                       ; $5228: $50
    jp z, $e739                                   ; $5229: $ca $39 $e7

    ld a, [hl+]                                   ; $522c: $2a
    add a                                         ; $522d: $87
    db $f4                                        ; $522e: $f4
    inc h                                         ; $522f: $24
    xor b                                         ; $5230: $a8
    ld sp, $7df4                                  ; $5231: $31 $f4 $7d
    ld e, [hl]                                    ; $5234: $5e
    ld d, l                                       ; $5235: $55
    rra                                           ; $5236: $1f
    dec a                                         ; $5237: $3d
    add h                                         ; $5238: $84
    ld [hl-], a                                   ; $5239: $32
    ld e, b                                       ; $523a: $58
    ld h, l                                       ; $523b: $65
    and e                                         ; $523c: $a3
    ld a, c                                       ; $523d: $79
    ld d, c                                       ; $523e: $51
    ret z                                         ; $523f: $c8

jr_062_5240:
    dec [hl]                                      ; $5240: $35
    ld a, [hl]                                    ; $5241: $7e
    ld a, d                                       ; $5242: $7a
    sbc a                                         ; $5243: $9f
    rla                                           ; $5244: $17
    add l                                         ; $5245: $85
    ld h, h                                       ; $5246: $64
    ld c, d                                       ; $5247: $4a
    rst $28                                       ; $5248: $ef
    ld e, $19                                     ; $5249: $1e $19
    ld b, e                                       ; $524b: $43
    ld d, a                                       ; $524c: $57
    and $71                                       ; $524d: $e6 $71
    ld d, d                                       ; $524f: $52
    call nc, Call_062_5f50                        ; $5250: $d4 $50 $5f
    ld d, l                                       ; $5253: $55
    cp a                                          ; $5254: $bf
    cpl                                           ; $5255: $2f
    ld a, [bc]                                    ; $5256: $0a
    ld l, c                                       ; $5257: $69
    cp $c5                                        ; $5258: $fe $c5
    rst $30                                       ; $525a: $f7
    dec bc                                        ; $525b: $0b
    ld d, a                                       ; $525c: $57
    sub h                                         ; $525d: $94
    and c                                         ; $525e: $a1
    rla                                           ; $525f: $17
    ld [hl], l                                    ; $5260: $75
    ld d, a                                       ; $5261: $57
    or $9c                                        ; $5262: $f6 $9c
    db $d3                                        ; $5264: $d3
    pop de                                        ; $5265: $d1
    ei                                            ; $5266: $fb
    pop de                                        ; $5267: $d1
    ld a, [de]                                    ; $5268: $1a
    ld c, c                                       ; $5269: $49
    ld b, c                                       ; $526a: $41
    ld [hl], $df                                  ; $526b: $36 $df
    ld l, e                                       ; $526d: $6b
    inc sp                                        ; $526e: $33
    xor a                                         ; $526f: $af
    ld b, e                                       ; $5270: $43
    ld de, $1ee7                                  ; $5271: $11 $e7 $1e
    and a                                         ; $5274: $a7
    ld h, a                                       ; $5275: $67
    ld e, c                                       ; $5276: $59
    ld b, h                                       ; $5277: $44
    jp hl                                         ; $5278: $e9


    add sp, $59                                   ; $5279: $e8 $59
    ld [hl], b                                    ; $527b: $70
    and $d5                                       ; $527c: $e6 $d5
    ld d, $f4                                     ; $527e: $16 $f4
    ei                                            ; $5280: $fb
    dec b                                         ; $5281: $05
    ld d, a                                       ; $5282: $57
    rlca                                          ; $5283: $07
    and c                                         ; $5284: $a1
    ld c, l                                       ; $5285: $4d
    ld c, h                                       ; $5286: $4c
    rst $10                                       ; $5287: $d7
    cp $02                                        ; $5288: $fe $02
    rst $10                                       ; $528a: $d7
    ld d, c                                       ; $528b: $51
    ld [hl], d                                    ; $528c: $72
    ld d, c                                       ; $528d: $51
    ret z                                         ; $528e: $c8

    ld a, [bc]                                    ; $528f: $0a
    add l                                         ; $5290: $85
    and c                                         ; $5291: $a1
    call c, $fdf7                                 ; $5292: $dc $f7 $fd
    ld [bc], a                                    ; $5295: $02
    ld d, a                                       ; $5296: $57
    sub h                                         ; $5297: $94
    sub c                                         ; $5298: $91
    and c                                         ; $5299: $a1
    db $e3                                        ; $529a: $e3
    xor b                                         ; $529b: $a8
    ld [hl], h                                    ; $529c: $74
    rst $28                                       ; $529d: $ef
    ld sp, $330e                                  ; $529e: $31 $0e $33
    adc b                                         ; $52a1: $88
    add b                                         ; $52a2: $80
    inc d                                         ; $52a3: $14
    dec bc                                        ; $52a4: $0b
    ld l, l                                       ; $52a5: $6d
    and h                                         ; $52a6: $a4
    ld l, $73                                     ; $52a7: $2e $73
    ld c, $2d                                     ; $52a9: $0e $2d
    xor e                                         ; $52ab: $ab
    ld c, h                                       ; $52ac: $4c
    ld c, c                                       ; $52ad: $49
    push hl                                       ; $52ae: $e5
    jp z, $235e                                   ; $52af: $ca $5e $23

    ld b, c                                       ; $52b2: $41
    db $dd                                        ; $52b3: $dd
    cpl                                           ; $52b4: $2f
    ld d, a                                       ; $52b5: $57
    cp $ba                                        ; $52b6: $fe $ba
    ld d, [hl]                                    ; $52b8: $56
    sub e                                         ; $52b9: $93
    or [hl]                                       ; $52ba: $b6
    or $9f                                        ; $52bb: $f6 $9f
    xor c                                         ; $52bd: $a9
    pop de                                        ; $52be: $d1
    cp $02                                        ; $52bf: $fe $02
    db $ed                                        ; $52c1: $ed
    ld [hl], c                                    ; $52c2: $71
    ld c, b                                       ; $52c3: $48
    db $fc                                        ; $52c4: $fc
    or d                                          ; $52c5: $b2
    jp nc, $a1cc                                  ; $52c6: $d2 $cc $a1

    ld a, c                                       ; $52c9: $79
    adc a                                         ; $52ca: $8f
    ld [hl], c                                    ; $52cb: $71
    ld d, a                                       ; $52cc: $57
    rlca                                          ; $52cd: $07
    add hl, sp                                    ; $52ce: $39
    rst $20                                       ; $52cf: $e7
    dec b                                         ; $52d0: $05
    rlca                                          ; $52d1: $07
    ld e, h                                       ; $52d2: $5c
    halt                                          ; $52d3: $76
    rst $18                                       ; $52d4: $df
    rst $30                                       ; $52d5: $f7
    add sp, $2e                                   ; $52d6: $e8 $2e
    db $e3                                        ; $52d8: $e3
    inc c                                         ; $52d9: $0c
    cp c                                          ; $52da: $b9
    rst $08                                       ; $52db: $cf

jr_062_52dc:
    inc hl                                        ; $52dc: $23
    cp a                                          ; $52dd: $bf
    ld c, h                                       ; $52de: $4c
    push af                                       ; $52df: $f5
    sbc a                                         ; $52e0: $9f
    adc $55                                       ; $52e1: $ce $55
    jr z, jr_062_52dc                             ; $52e3: $28 $f7

    ld c, $5a                                     ; $52e5: $0e $5a
    ld b, [hl]                                    ; $52e7: $46
    ld a, [hl]                                    ; $52e8: $7e
    sbc c                                         ; $52e9: $99
    ld [hl], e                                    ; $52ea: $73
    sub l                                         ; $52eb: $95
    ccf                                           ; $52ec: $3f
    ld b, d                                       ; $52ed: $42
    ld e, c                                       ; $52ee: $59
    db $ed                                        ; $52ef: $ed
    ld c, l                                       ; $52f0: $4d
    di                                            ; $52f1: $f3
    ld [hl], h                                    ; $52f2: $74
    cp h                                          ; $52f3: $bc
    ld e, a                                       ; $52f4: $5f
    rst $10                                       ; $52f5: $d7
    pop bc                                        ; $52f6: $c1
    call nc, $8197                                ; $52f7: $d4 $97 $81
    ld d, d                                       ; $52fa: $52
    ld e, [hl]                                    ; $52fb: $5e
    push hl                                       ; $52fc: $e5
    cpl                                           ; $52fd: $2f
    ld e, b                                       ; $52fe: $58
    dec a                                         ; $52ff: $3d
    pop de                                        ; $5300: $d1
    ld l, c                                       ; $5301: $69
    dec bc                                        ; $5302: $0b
    ld h, l                                       ; $5303: $65
    add sp, -$64                                  ; $5304: $e8 $9c
    ld [hl], e                                    ; $5306: $73
    and b                                         ; $5307: $a0
    sub h                                         ; $5308: $94
    rst $30                                       ; $5309: $f7
    jr c, jr_062_5349                             ; $530a: $38 $3d

    ld [hl], h                                    ; $530c: $74
    ld c, [hl]                                    ; $530d: $4e
    ld a, l                                       ; $530e: $7d
    ld e, c                                       ; $530f: $59
    ld d, l                                       ; $5310: $55
    rra                                           ; $5311: $1f
    dec a                                         ; $5312: $3d
    ld a, [c]                                     ; $5313: $f2
    ccf                                           ; $5314: $3f
    inc hl                                        ; $5315: $23
    sbc l                                         ; $5316: $9d
    rst $30                                       ; $5317: $f7
    ld l, $fb                                     ; $5318: $2e $fb
    cp b                                          ; $531a: $b8
    ld d, b                                       ; $531b: $50
    ld d, a                                       ; $531c: $57
    sbc d                                         ; $531d: $9a
    adc e                                         ; $531e: $8b
    ld bc, $1e9d                                  ; $531f: $01 $9d $1e
    ld b, e                                       ; $5322: $43
    sbc a                                         ; $5323: $9f
    ld d, b                                       ; $5324: $50
    ld a, [hl+]                                   ; $5325: $2a
    ld a, e                                       ; $5326: $7b
    xor c                                         ; $5327: $a9
    ccf                                           ; $5328: $3f
    rst $30                                       ; $5329: $f7
    dec bc                                        ; $532a: $0b
    rla                                           ; $532b: $17
    jp z, Jump_062_4338                           ; $532c: $ca $38 $43

Call_062_532f:
    ld b, a                                       ; $532f: $47
    db $ed                                        ; $5330: $ed
    cp e                                          ; $5331: $bb
    ld b, h                                       ; $5332: $44
    add hl, hl                                    ; $5333: $29
    ld c, a                                       ; $5334: $4f
    db $f4                                        ; $5335: $f4
    ld b, c                                       ; $5336: $41
    or c                                          ; $5337: $b1
    ld l, b                                       ; $5338: $68
    ld a, a                                       ; $5339: $7f
    ld bc, $51d7                                  ; $533a: $01 $d7 $51
    ld [hl], d                                    ; $533d: $72
    and b                                         ; $533e: $a0
    sub h                                         ; $533f: $94
    rst $10                                       ; $5340: $d7
    ld hl, sp+$52                                 ; $5341: $f8 $52
    cp h                                          ; $5343: $bc
    ei                                            ; $5344: $fb
    cp [hl]                                       ; $5345: $be
    ld b, a                                       ; $5346: $47
    ld [hl], a                                    ; $5347: $77
    add hl, de                                    ; $5348: $19

jr_062_5349:
    ld h, a                                       ; $5349: $67
    ret z                                         ; $534a: $c8

    ld a, l                                       ; $534b: $7d
    ld e, $5a                                     ; $534c: $1e $5a
    and $5c                                       ; $534e: $e6 $5c
    db $ed                                        ; $5350: $ed
    ld c, l                                       ; $5351: $4d
    di                                            ; $5352: $f3
    ld [hl], h                                    ; $5353: $74
    cp h                                          ; $5354: $bc
    rst $10                                       ; $5355: $d7
    ld h, [hl]                                    ; $5356: $66
    add hl, de                                    ; $5357: $19
    ld sp, hl                                     ; $5358: $f9
    ld [hl], e                                    ; $5359: $73
    sub [hl]                                      ; $535a: $96
    push bc                                       ; $535b: $c5
    sub h                                         ; $535c: $94
    rst $20                                       ; $535d: $e7
    ld [hl], c                                    ; $535e: $71
    add a                                         ; $535f: $87
    or d                                          ; $5360: $b2
    add [hl]                                      ; $5361: $86
    sbc $3d                                       ; $5362: $de $3d
    jr jr_062_537f                                ; $5364: $18 $19

    ld h, d                                       ; $5366: $62
    and e                                         ; $5367: $a3
    ld sp, hl                                     ; $5368: $f9
    ld a, [hl]                                    ; $5369: $7e
    ld bc, $966d                                  ; $536a: $01 $6d $96
    sub c                                         ; $536d: $91
    ccf                                           ; $536e: $3f
    ld h, a                                       ; $536f: $67
    reti                                          ; $5370: $d9


    di                                            ; $5371: $f3
    ld l, e                                       ; $5372: $6b
    push af                                       ; $5373: $f5
    ld h, d                                       ; $5374: $62
    jp z, $b8f3                                   ; $5375: $ca $f3 $b8

    ld b, e                                       ; $5378: $43
    pop af                                        ; $5379: $f1
    jr @-$5a                                      ; $537a: $18 $a4

    xor h                                         ; $537c: $ac
    push de                                       ; $537d: $d5
    ld e, h                                       ; $537e: $5c

jr_062_537f:
    dec b                                         ; $537f: $05
    ld e, $19                                     ; $5380: $1e $19
    ld h, d                                       ; $5382: $62
    db $e3                                        ; $5383: $e3
    db $fd                                        ; $5384: $fd
    ld [bc], a                                    ; $5385: $02
    rla                                           ; $5386: $17
    jp z, $87ae                                   ; $5387: $ca $ae $87

    ld d, d                                       ; $538a: $52
    inc l                                         ; $538b: $2c
    call nz, $f1dc                                ; $538c: $c4 $dc $f1
    jr c, jr_062_5408                             ; $538f: $38 $77

    ld d, b                                       ; $5391: $50
    dec d                                         ; $5392: $15
    ld d, d                                       ; $5393: $52
    ei                                            ; $5394: $fb
    ld c, $b8                                     ; $5395: $0e $b8
    call z, $d2b9                                 ; $5397: $cc $b9 $d2
    ccf                                           ; $539a: $3f
    ld l, $0a                                     ; $539b: $2e $0a
    cp c                                          ; $539d: $b9
    rst $08                                       ; $539e: $cf
    inc hl                                        ; $539f: $23
    cp a                                          ; $53a0: $bf
    inc c                                         ; $53a1: $0c
    sub h                                         ; $53a2: $94
    ld a, [c]                                     ; $53a3: $f2
    ld [hl+], a                                   ; $53a4: $22
    ld d, b                                       ; $53a5: $50
    db $eb                                        ; $53a6: $eb
    and [hl]                                      ; $53a7: $a6
    ld [hl], a                                    ; $53a8: $77
    jr z, @-$5a                                   ; $53a9: $28 $a4

    ld [hl], c                                    ; $53ab: $71
    inc c                                         ; $53ac: $0c
    ld a, l                                       ; $53ad: $7d
    sbc a                                         ; $53ae: $9f
    rst $10                                       ; $53af: $d7
    ld c, b                                       ; $53b0: $48
    cp l                                          ; $53b1: $bd
    ld a, b                                       ; $53b2: $78
    ld l, b                                       ; $53b3: $68
    pop de                                        ; $53b4: $d1
    cp $02                                        ; $53b5: $fe $02
    db $ed                                        ; $53b7: $ed
    pop af                                        ; $53b8: $f1
    rst $00                                       ; $53b9: $c7
    dec d                                         ; $53ba: $15
    ld l, d                                       ; $53bb: $6a
    ld l, $86                                     ; $53bc: $2e $86
    adc c                                         ; $53be: $89
    ld a, [hl]                                    ; $53bf: $7e
    adc $0b                                       ; $53c0: $ce $0b
    db $ed                                        ; $53c2: $ed
    cp a                                          ; $53c3: $bf
    inc h                                         ; $53c4: $24
    ldh [$a2], a                                  ; $53c5: $e0 $a2
    sub b                                         ; $53c7: $90
    db $fc                                        ; $53c8: $fc
    dec sp                                        ; $53c9: $3b
    ld a, e                                       ; $53ca: $7b
    sbc a                                         ; $53cb: $9f
    rst $30                                       ; $53cc: $f7
    or c                                          ; $53cd: $b1
    ld a, [hl+]                                   ; $53ce: $2a
    add sp, $1d                                   ; $53cf: $e8 $1d
    adc d                                         ; $53d1: $8a
    rst $10                                       ; $53d2: $d7
    add hl, hl                                    ; $53d3: $29
    jp hl                                         ; $53d4: $e9


    db $f4                                        ; $53d5: $f4
    ld [c], a                                     ; $53d6: $e2
    sbc a                                         ; $53d7: $9f
    ld a, e                                       ; $53d8: $7b
    adc h                                         ; $53d9: $8c
    ld h, e                                       ; $53da: $63
    add sp, -$05                                  ; $53db: $e8 $fb
    cp h                                          ; $53dd: $bc
    add [hl]                                      ; $53de: $86
    xor e                                         ; $53df: $ab
    jp nc, Jump_062_7b30                          ; $53e0: $d2 $30 $7b

    add a                                         ; $53e3: $87
    ret c                                         ; $53e4: $d8

    ld h, d                                       ; $53e5: $62
    cp c                                          ; $53e6: $b9
    ld [hl], a                                    ; $53e7: $77
    xor b                                         ; $53e8: $a8
    dec b                                         ; $53e9: $05
    jp hl                                         ; $53ea: $e9


    dec a                                         ; $53eb: $3d
    call $3f91                                    ; $53ec: $cd $91 $3f
    or $5a                                        ; $53ef: $f6 $5a
    db $fd                                        ; $53f1: $fd
    dec bc                                        ; $53f2: $0b
    sbc e                                         ; $53f3: $9b
    rst $10                                       ; $53f4: $d7
    ld b, [hl]                                    ; $53f5: $46
    and a                                         ; $53f6: $a7
    call nz, $b5dd                                ; $53f7: $c4 $dd $b5
    ld l, e                                       ; $53fa: $6b
    and h                                         ; $53fb: $a4
    ld e, b                                       ; $53fc: $58
    ld l, b                                       ; $53fd: $68
    cp e                                          ; $53fe: $bb
    xor b                                         ; $53ff: $a8
    inc bc                                        ; $5400: $03
    inc de                                        ; $5401: $13
    inc bc                                        ; $5402: $03
    and d                                         ; $5403: $a2
    ld l, d                                       ; $5404: $6a
    db $e4                                        ; $5405: $e4
    rst $08                                       ; $5406: $cf
    ld b, l                                       ; $5407: $45

jr_062_5408:
    ld hl, $3539                                  ; $5408: $21 $39 $35
    cp l                                          ; $540b: $bd
    sbc e                                         ; $540c: $9b
    daa                                           ; $540d: $27
    call nc, $9dd2                                ; $540e: $d4 $d2 $9d
    ld [c], a                                     ; $5411: $e2
    add l                                         ; $5412: $85
    or d                                          ; $5413: $b2
    add e                                         ; $5414: $83
    ld b, h                                       ; $5415: $44
    cpl                                           ; $5416: $2f
    ld c, $f2                                     ; $5417: $0e $f2
    set 5, a                                      ; $5419: $cb $ef
    ld a, l                                       ; $541b: $7d
    ld d, c                                       ; $541c: $51
    ret z                                         ; $541d: $c8

    ld hl, sp+$0b                                 ; $541e: $f8 $0b
    halt                                          ; $5420: $76
    and e                                         ; $5421: $a3
    ld d, a                                       ; $5422: $57
    push de                                       ; $5423: $d5
    ld d, a                                       ; $5424: $57
    adc l                                         ; $5425: $8d
    inc b                                         ; $5426: $04
    and l                                         ; $5427: $a5
    sbc h                                         ; $5428: $9c
    ld [c], a                                     ; $5429: $e2
    ld a, e                                       ; $542a: $7b
    ld l, l                                       ; $542b: $6d
    ld h, [hl]                                    ; $542c: $66
    or $9e                                        ; $542d: $f6 $9e
    and $62                                       ; $542f: $e6 $62
    ld c, d                                       ; $5431: $4a
    ld a, d                                       ; $5432: $7a
    add a                                         ; $5433: $87
    db $e4                                        ; $5434: $e4
    or a                                          ; $5435: $b7
    ld e, h                                       ; $5436: $5c
    rla                                           ; $5437: $17
    add l                                         ; $5438: $85
    inc h                                         ; $5439: $24
    ld b, c                                       ; $543a: $41
    jr nc, jr_062_547e                            ; $543b: $30 $41

    jp z, Jump_000_03bd                           ; $543d: $ca $bd $03

    ld l, $63                                     ; $5440: $2e $63
    ld l, d                                       ; $5442: $6a
    ld l, $a6                                     ; $5443: $2e $a6
    jr nz, jr_062_54c1                            ; $5445: $20 $7a

    xor l                                         ; $5447: $ad
    and $3e                                       ; $5448: $e6 $3e
    cpl                                           ; $544a: $2f
    add [hl]                                      ; $544b: $86
    ld d, l                                       ; $544c: $55
    push af                                       ; $544d: $f5
    ei                                            ; $544e: $fb
    ld a, [de]                                    ; $544f: $1a
    db $fd                                        ; $5450: $fd
    dec bc                                        ; $5451: $0b
    ld a, d                                       ; $5452: $7a
    sub [hl]                                      ; $5453: $96
    cp c                                          ; $5454: $b9
    add e                                         ; $5455: $83
    xor d                                         ; $5456: $aa
    sub b                                         ; $5457: $90
    rst $30                                       ; $5458: $f7
    ld a, l                                       ; $5459: $7d
    cp a                                          ; $545a: $bf
    db $ed                                        ; $545b: $ed
    pop af                                        ; $545c: $f1
    rst $00                                       ; $545d: $c7
    ld d, l                                       ; $545e: $55
    and l                                         ; $545f: $a5
    rst $30                                       ; $5460: $f7
    xor $a1                                       ; $5461: $ee $a1
    ld a, c                                       ; $5463: $79
    add l                                         ; $5464: $85
    sbc d                                         ; $5465: $9a
    ld e, [hl]                                    ; $5466: $5e
    add hl, bc                                    ; $5467: $09
    ret z                                         ; $5468: $c8

    adc e                                         ; $5469: $8b
    ld b, d                                       ; $546a: $42
    sbc [hl]                                      ; $546b: $9e
    di                                            ; $546c: $f3
    ld [bc], a                                    ; $546d: $02
    ld l, l                                       ; $546e: $6d
    and $c5                                       ; $546f: $e6 $c5
    add $d1                                       ; $5471: $c6 $d1
    ld e, l                                       ; $5473: $5d
    ld b, $4a                                     ; $5474: $06 $4a
    ld sp, hl                                     ; $5476: $f9
    sbc $c1                                       ; $5477: $de $c1
    ld h, [hl]                                    ; $5479: $66
    ld d, l                                       ; $547a: $55
    ld e, [hl]                                    ; $547b: $5e
    inc c                                         ; $547c: $0c
    ld a, l                                       ; $547d: $7d

jr_062_547e:
    xor $a0                                       ; $547e: $ee $a0
    ld a, [hl+]                                   ; $5480: $2a
    and h                                         ; $5481: $a4
    ld h, l                                       ; $5482: $65
    dec c                                         ; $5483: $0d
    ld d, a                                       ; $5484: $57
    and l                                         ; $5485: $a5
    ld h, c                                       ; $5486: $61
    or $9e                                        ; $5487: $f6 $9e
    add b                                         ; $5489: $80
    add e                                         ; $548a: $83
    adc [hl]                                      ; $548b: $8e
    rst $30                                       ; $548c: $f7
    ld l, $fb                                     ; $548d: $2e $fb
    cp b                                          ; $548f: $b8
    ld d, b                                       ; $5490: $50
    rla                                           ; $5491: $17
    add c                                         ; $5492: $81
    and b                                         ; $5493: $a0
    and a                                         ; $5494: $a7
    db $e3                                        ; $5495: $e3
    ld a, [hl]                                    ; $5496: $7e
    inc [hl]                                      ; $5497: $34
    inc [hl]                                      ; $5498: $34
    rst $18                                       ; $5499: $df
    cpl                                           ; $549a: $2f
    ld l, l                                       ; $549b: $6d
    adc $39                                       ; $549c: $ce $39
    and a                                         ; $549e: $a7
    ld [hl], h                                    ; $549f: $74
    sbc c                                         ; $54a0: $99
    dec sp                                        ; $54a1: $3b
    xor b                                         ; $54a2: $a8
    ld a, [bc]                                    ; $54a3: $0a
    add hl, sp                                    ; $54a4: $39
    add hl, bc                                    ; $54a5: $09
    ld l, d                                       ; $54a6: $6a
    inc c                                         ; $54a7: $0c
    ld a, l                                       ; $54a8: $7d
    ld [$dee5], sp                                ; $54a9: $08 $e5 $de
    ld b, l                                       ; $54ac: $45
    ld hl, $52b9                                  ; $54ad: $21 $b9 $52
    ld a, b                                       ; $54b0: $78
    ld d, c                                       ; $54b1: $51
    ld a, [$7b39]                                 ; $54b2: $fa $39 $7b
    ld [hl], h                                    ; $54b5: $74
    sub a                                         ; $54b6: $97
    sub l                                         ; $54b7: $95
    ld h, [hl]                                    ; $54b8: $66
    adc [hl]                                      ; $54b9: $8e
    and c                                         ; $54ba: $a1
    scf                                           ; $54bb: $37
    ld a, [hl]                                    ; $54bc: $7e
    pop af                                        ; $54bd: $f1
    ld b, d                                       ; $54be: $42
    add hl, de                                    ; $54bf: $19
    rst $38                                       ; $54c0: $ff

jr_062_54c1:
    ld [c], a                                     ; $54c1: $e2
    call c, Call_062_6503                         ; $54c2: $dc $03 $65
    ccf                                           ; $54c5: $3f
    jp c, Jump_062_41d5                           ; $54c6: $da $d5 $41

    xor $9d                                       ; $54c9: $ee $9d
    rst $38                                       ; $54cb: $ff
    adc e                                         ; $54cc: $8b
    inc hl                                        ; $54cd: $23
    halt                                          ; $54ce: $76
    adc [hl]                                      ; $54cf: $8e
    or h                                          ; $54d0: $b4
    or b                                          ; $54d1: $b0
    ld [hl], e                                    ; $54d2: $73
    ld [hl], h                                    ; $54d3: $74
    sub a                                         ; $54d4: $97
    sub c                                         ; $54d5: $91
    ld [hl], h                                    ; $54d6: $74
    ld c, d                                       ; $54d7: $4a
    ld l, a                                       ; $54d8: $6f
    db $dd                                        ; $54d9: $dd
    ld l, e                                       ; $54da: $6b
    ld [hl], a                                    ; $54db: $77
    rst $00                                       ; $54dc: $c7
    add l                                         ; $54dd: $85
    or d                                          ; $54de: $b2
    xor [hl]                                      ; $54df: $ae
    ld d, c                                       ; $54e0: $51
    jp z, $b5b4                                   ; $54e1: $ca $b4 $b5

    rst $38                                       ; $54e4: $ff
    ld c, h                                       ; $54e5: $4c
    call $fbee                                    ; $54e6: $cd $ee $fb
    ld e, $ea                                     ; $54e9: $1e $ea
    ld [hl], e                                    ; $54eb: $73
    adc $b2                                       ; $54ec: $ce $b2
    rst $00                                       ; $54ee: $c7
    push bc                                       ; $54ef: $c5
    cp h                                          ; $54f0: $bc
    jp z, $c721                                   ; $54f1: $ca $21 $c7

    add hl, de                                    ; $54f4: $19
    ld a, [hl-]                                   ; $54f5: $3a
    ld a, $5f                                     ; $54f6: $3e $5f
    ldh a, [$7e]                                  ; $54f8: $f0 $7e
    ld bc, $e66d                                  ; $54fa: $01 $6d $e6
    push bc                                       ; $54fd: $c5
    sub b                                         ; $54fe: $90
    jp z, $81e8                                   ; $54ff: $ca $e8 $81

    ld d, d                                       ; $5502: $52
    cp [hl]                                       ; $5503: $be
    ld [hl], a                                    ; $5504: $77
    jr c, jr_062_5550                             ; $5505: $38 $49

    sbc e                                         ; $5507: $9b
    sbc b                                         ; $5508: $98
    ld c, [hl]                                    ; $5509: $4e
    dec de                                        ; $550a: $1b
    db $dd                                        ; $550b: $dd
    ld h, l                                       ; $550c: $65
    adc l                                         ; $550d: $8d
    ld c, $b1                                     ; $550e: $0e $b1
    ld [hl], e                                    ; $5510: $73
    ld b, d                                       ; $5511: $42
    ld b, l                                       ; $5512: $45
    ld e, $43                                     ; $5513: $1e $43
    rst $18                                       ; $5515: $df
    rst $20                                       ; $5516: $e7
    dec [hl]                                      ; $5517: $35
    ld e, h                                       ; $5518: $5c
    inc [hl]                                      ; $5519: $34
    add d                                         ; $551a: $82
    ld e, [hl]                                    ; $551b: $5e
    inc d                                         ; $551c: $14
    ld [hl-], a                                   ; $551d: $32
    jp z, $fdaf                                   ; $551e: $ca $af $fd

    dec b                                         ; $5521: $05
    rlca                                          ; $5522: $07
    ld e, h                                       ; $5523: $5c
    ld b, [hl]                                    ; $5524: $46
    ld [hl], $1b                                  ; $5525: $36 $1b
    ld b, [hl]                                    ; $5527: $46
    xor a                                         ; $5528: $af
    push de                                       ; $5529: $d5
    call c, $a1e7                                 ; $552a: $dc $e7 $a1
    cp [hl]                                       ; $552d: $be
    jr jr_062_55aa                                ; $552e: $18 $7a

    rst $30                                       ; $5530: $f7
    ld [hl+], a                                   ; $5531: $22
    db $10                                        ; $5532: $10
    db $f4                                        ; $5533: $f4
    and d                                         ; $5534: $a2
    db $f4                                        ; $5535: $f4
    inc sp                                        ; $5536: $33
    jp nc, $d0c9                                  ; $5537: $d2 $c9 $d0

    ld l, c                                       ; $553a: $69
    cp e                                          ; $553b: $bb
    ld [hl-], a                                   ; $553c: $32
    jr nc, jr_062_557a                            ; $553d: $30 $3b

    rst $28                                       ; $553f: $ef
    rla                                           ; $5540: $17
    rlca                                          ; $5541: $07
    ld e, h                                       ; $5542: $5c
    add $19                                       ; $5543: $c6 $19
    adc h                                         ; $5545: $8c
    sbc $e7                                       ; $5546: $de $e7
    pop de                                        ; $5548: $d1
    ld e, l                                       ; $5549: $5d
    ld d, $43                                     ; $554a: $16 $43
    rst $28                                       ; $554c: $ef
    ld e, [hl]                                    ; $554d: $5e
    inc b                                         ; $554e: $04
    add d                                         ; $554f: $82

jr_062_5550:
    sbc $21                                       ; $5550: $de $21
    ld sp, hl                                     ; $5552: $f9
    dec l                                         ; $5553: $2d
    adc a                                         ; $5554: $8f
    ld [hl], h                                    ; $5555: $74
    sbc $6b                                       ; $5556: $de $6b
    rst $38                                       ; $5558: $ff
    ld [hl-], a                                   ; $5559: $32
    ld a, [c]                                     ; $555a: $f2
    rst $20                                       ; $555b: $e7
    ld a, [hl]                                    ; $555c: $7e
    ld h, a                                       ; $555d: $67
    ret nz                                        ; $555e: $c0

    add l                                         ; $555f: $85
    ld d, [hl]                                    ; $5560: $56
    ld b, h                                       ; $5561: $44
    ld c, l                                       ; $5562: $4d
    ld e, [hl]                                    ; $5563: $5e
    add l                                         ; $5564: $85
    or d                                          ; $5565: $b2
    ld a, [de]                                    ; $5566: $1a
    sbc [hl]                                      ; $5567: $9e
    add l                                         ; $5568: $85
    ld h, a                                       ; $5569: $67
    db $e4                                        ; $556a: $e4
    sub a                                         ; $556b: $97
    sub c                                         ; $556c: $91
    rra                                           ; $556d: $1f
    sbc l                                         ; $556e: $9d
    ld a, e                                       ; $556f: $7b
    and b                                         ; $5570: $a0
    call c, Call_062_6d2f                         ; $5571: $dc $2f $6d
    and $15                                       ; $5574: $e6 $15
    ld l, d                                       ; $5576: $6a
    adc [hl]                                      ; $5577: $8e
    db $fc                                        ; $5578: $fc
    or d                                          ; $5579: $b2

jr_062_557a:
    xor d                                         ; $557a: $aa
    cp $b3                                        ; $557b: $fe $b3
    ld d, b                                       ; $557d: $50
    ld l, d                                       ; $557e: $6a
    di                                            ; $557f: $f3
    ld e, [hl]                                    ; $5580: $5e
    ei                                            ; $5581: $fb
    sub a                                         ; $5582: $97
    sub c                                         ; $5583: $91
    rra                                           ; $5584: $1f
    adc l                                         ; $5585: $8d
    ld e, [hl]                                    ; $5586: $5e
    jr z, @-$49                                   ; $5587: $28 $b5

    add hl, sp                                    ; $5589: $39
    inc b                                         ; $558a: $04
    ld e, c                                       ; $558b: $59
    db $f4                                        ; $558c: $f4
    ld [hl], e                                    ; $558d: $73
    ld l, b                                       ; $558e: $68
    add hl, hl                                    ; $558f: $29
    ld e, a                                       ; $5590: $5f
    jp z, Jump_000_2bd0                           ; $5591: $ca $d0 $2b

    and b                                         ; $5594: $a0
    sub $6a                                       ; $5595: $d6 $6a
    xor [hl]                                      ; $5597: $ae
    dec a                                         ; $5598: $3d
    inc d                                         ; $5599: $14
    ld h, d                                       ; $559a: $62
    ccf                                           ; $559b: $3f
    cp c                                          ; $559c: $b9
    xor [hl]                                      ; $559d: $ae
    cp $e7                                        ; $559e: $fe $e7
    or c                                          ; $55a0: $b1
    call c, Call_000_072f                         ; $55a1: $dc $2f $07
    ld e, h                                       ; $55a4: $5c
    ld d, [hl]                                    ; $55a5: $56
    sbc e                                         ; $55a6: $9b
    ld b, e                                       ; $55a7: $43
    jr z, @+$0d                                   ; $55a8: $28 $0b

jr_062_55aa:
    ld h, l                                       ; $55aa: $65
    add a                                         ; $55ab: $87
    db $e4                                        ; $55ac: $e4
    or a                                          ; $55ad: $b7
    cp h                                          ; $55ae: $bc
    ld a, [$c79f]                                 ; $55af: $fa $9f $c7
    ld [hl], d                                    ; $55b2: $72
    rst $28                                       ; $55b3: $ef
    jp nz, $9d88                                  ; $55b4: $c2 $88 $9d

    dec [hl]                                      ; $55b7: $35
    inc a                                         ; $55b8: $3c
    ld b, e                                       ; $55b9: $43
    di                                            ; $55ba: $f3
    ld b, b                                       ; $55bb: $40
    add hl, hl                                    ; $55bc: $29
    cpl                                           ; $55bd: $2f
    cp $b9                                        ; $55be: $fe $b9
    rlca                                          ; $55c0: $07
    jp z, Jump_000_2fc8                           ; $55c1: $ca $c8 $2f

    adc e                                         ; $55c4: $8b
    ld a, a                                       ; $55c5: $7f
    ld c, [hl]                                    ; $55c6: $4e
    ld b, a                                       ; $55c7: $47
    rst $08                                       ; $55c8: $cf
    ld de, $773b                                  ; $55c9: $11 $3b $77
    rst $18                                       ; $55cc: $df
    rst $30                                       ; $55cd: $f7

Call_062_55ce:
    sbc [hl]                                      ; $55ce: $9e
    and $d0                                       ; $55cf: $e6 $d0
    inc a                                         ; $55d1: $3c
    ld a, [c]                                     ; $55d2: $f2
    rst $00                                       ; $55d3: $c7
    ld e, [hl]                                    ; $55d4: $5e
    ld c, h                                       ; $55d5: $4c
    ld c, c                                       ; $55d6: $49
    di                                            ; $55d7: $f3
    db $10                                        ; $55d8: $10
    jp z, Jump_000_2fc8                           ; $55d9: $ca $c8 $2f

    inc hl                                        ; $55dc: $23
    ld a, a                                       ; $55dd: $7f
    adc h                                         ; $55de: $8c
    sbc [hl]                                      ; $55df: $9e
    ld a, c                                       ; $55e0: $79
    dec h                                         ; $55e1: $25
    jr nz, @-$6f                                  ; $55e2: $20 $8f

    ld c, d                                       ; $55e4: $4a
    rst $30                                       ; $55e5: $f7
    jr @-$44                                      ; $55e6: $18 $ba

    or $17                                        ; $55e8: $f6 $17
    rlca                                          ; $55ea: $07
    ld a, $6d                                     ; $55eb: $3e $6d
    ld l, b                                       ; $55ed: $68
    ld e, $f9                                     ; $55ee: $1e $f9
    ld h, e                                       ; $55f0: $63
    db $f4                                        ; $55f1: $f4
    ret z                                         ; $55f2: $c8

    cpl                                           ; $55f3: $2f
    rst $30                                       ; $55f4: $f7
    xor [hl]                                      ; $55f5: $ae
    ld c, c                                       ; $55f6: $49
    xor b                                         ; $55f7: $a8
    cp h                                          ; $55f8: $bc
    rst $08                                       ; $55f9: $cf
    cp e                                          ; $55fa: $bb
    xor b                                         ; $55fb: $a8
    db $eb                                        ; $55fc: $eb
    ld d, c                                       ; $55fd: $51
    and h                                         ; $55fe: $a4
    add hl, de                                    ; $55ff: $19
    jr z, @-$19                                   ; $5600: $28 $e5

    dec [hl]                                      ; $5602: $35
    adc h                                         ; $5603: $8c
    inc hl                                        ; $5604: $23
    cp a                                          ; $5605: $bf
    call nc, Call_000_2c35                        ; $5606: $d4 $35 $2c
    ei                                            ; $5609: $fb
    pop de                                        ; $560a: $d1
    ret nc                                        ; $560b: $d0

    or d                                          ; $560c: $b2
    adc b                                         ; $560d: $88
    sbc d                                         ; $560e: $9a
    sub l                                         ; $560f: $95
    cp l                                          ; $5610: $bd
    ld a, [c]                                     ; $5611: $f2
    and l                                         ; $5612: $a5
    adc h                                         ; $5613: $8c
    db $fc                                        ; $5614: $fc
    or d                                          ; $5615: $b2
    jp z, $b05f                                   ; $5616: $ca $5f $b0

    ld a, [de]                                    ; $5619: $1a
    cp l                                          ; $561a: $bd
    rlca                                          ; $561b: $07
    jp z, Jump_000_02fd                           ; $561c: $ca $fd $02

    rlca                                          ; $561f: $07
    dec l                                         ; $5620: $2d
    inc hl                                        ; $5621: $23
    ld h, e                                       ; $5622: $63
    xor b                                         ; $5623: $a8
    inc bc                                        ; $5624: $03
    and l                                         ; $5625: $a5
    inc a                                         ; $5626: $3c
    inc [hl]                                      ; $5627: $34
    cpl                                           ; $5628: $2f
    cp $39                                        ; $5629: $fe $39
    ld a, [c]                                     ; $562b: $f2
    ccf                                           ; $562c: $3f
    ld b, e                                       ; $562d: $43
    rst $20                                       ; $562e: $e7
    jr c, jr_062_56a6                             ; $562f: $38 $75

    and e                                         ; $5631: $a3
    add a                                         ; $5632: $87
    ld d, b                                       ; $5633: $50
    ld l, b                                       ; $5634: $68
    inc hl                                        ; $5635: $23
    ld h, e                                       ; $5636: $63
    ccf                                           ; $5637: $3f
    dec hl                                        ; $5638: $2b
    db $f4                                        ; $5639: $f4
    sub b                                         ; $563a: $90
    add sp, -$2b                                  ; $563b: $e8 $d5
    and $39                                       ; $563d: $e6 $39
    cpl                                           ; $563f: $2f
    ld l, l                                       ; $5640: $6d
    and $15                                       ; $5641: $e6 $15
    ld a, d                                       ; $5643: $7a
    ld c, b                                       ; $5644: $48
    db $f4                                        ; $5645: $f4
    ld e, $90                                     ; $5646: $1e $90
    sub c                                         ; $5648: $91
    adc $f4                                       ; $5649: $ce $f4
    cp l                                          ; $564b: $bd
    or $2f                                        ; $564c: $f6 $2f
    ld l, e                                       ; $564e: $6b
    ld [hl], h                                    ; $564f: $74

Jump_062_5650:
    adc b                                         ; $5650: $88
    sbc l                                         ; $5651: $9d
    xor e                                         ; $5652: $ab
    pop hl                                        ; $5653: $e1
    ld a, c                                       ; $5654: $79
    inc a                                         ; $5655: $3c
    ld b, $74                                     ; $5656: $06 $74
    ld c, [hl]                                    ; $5658: $4e
    xor b                                         ; $5659: $a8
    ret z                                         ; $565a: $c8

    ld h, e                                       ; $565b: $63
    add sp, -$05                                  ; $565c: $e8 $fb
    inc a                                         ; $565e: $3c
    ld c, [hl]                                    ; $565f: $4e
    db $dd                                        ; $5660: $dd
    ld a, e                                       ; $5661: $7b
    and b                                         ; $5662: $a0
    call c, $ff6b                                 ; $5663: $dc $6b $ff
    ld [hl-], a                                   ; $5666: $32
    rst $20                                       ; $5667: $e7
    ld l, d                                       ; $5668: $6a
    ld [hl], e                                    ; $5669: $73
    sub l                                         ; $566a: $95
    add hl, hl                                    ; $566b: $29
    xor c                                         ; $566c: $a9
    ld d, $ca                                     ; $566d: $16 $ca
    add sp, $2e                                   ; $566f: $e8 $2e
    ld [hl], e                                    ; $5671: $73
    xor [hl]                                      ; $5672: $ae
    ld [hl], $57                                  ; $5673: $36 $57
    db $e3                                        ; $5675: $e3
    ld e, a                                       ; $5676: $5f
    xor $fb                                       ; $5677: $ee $fb
    ld a, [hl]                                    ; $5679: $7e
    ld bc, $fdd7                                  ; $567a: $01 $d7 $fd
    inc e                                         ; $567d: $1c
    ld sp, hl                                     ; $567e: $f9
    ld h, l                                       ; $567f: $65
    and h                                         ; $5680: $a4
    ld [hl], e                                    ; $5681: $73
    xor l                                         ; $5682: $ad
    and $da                                       ; $5683: $e6 $da
    ld b, e                                       ; $5685: $43
    ld hl, $93f6                                  ; $5686: $21 $f6 $93
    dec hl                                        ; $5689: $2b
    ld l, l                                       ; $568a: $6d
    push af                                       ; $568b: $f5
    ccf                                           ; $568c: $3f
    adc a                                         ; $568d: $8f
    ld h, l                                       ; $568e: $65

Call_062_568f:
    adc a                                         ; $568f: $8f
    ld [hl], c                                    ; $5690: $71
    ld [$1ce5], sp                                ; $5691: $08 $e5 $1c
    db $ed                                        ; $5694: $ed
    cpl                                           ; $5695: $2f
    db $ed                                        ; $5696: $ed
    ld e, a                                       ; $5697: $5f
    and $dc                                       ; $5698: $e6 $dc
    rst $28                                       ; $569a: $ef
    inc c                                         ; $569b: $0c
    jr c, @+$34                                   ; $569c: $38 $32

    call nc, Call_062_503d                        ; $569e: $d4 $3d $50
    xor $b5                                       ; $56a1: $ee $b5
    dec sp                                        ; $56a3: $3b

jr_062_56a4:
    ld l, c                                       ; $56a4: $69
    ld b, e                                       ; $56a5: $43

jr_062_56a6:
    di                                            ; $56a6: $f3
    sbc h                                         ; $56a7: $9c
    ld h, e                                       ; $56a8: $63
    add sp, $43                                   ; $56a9: $e8 $43
    jr z, jr_062_56a4                             ; $56ab: $28 $f7

    dec bc                                        ; $56ad: $0b
    ld l, l                                       ; $56ae: $6d
    ld a, [$fb9c]                                 ; $56af: $fa $9c $fb
    sbc l                                         ; $56b2: $9d
    rla                                           ; $56b3: $17
    add l                                         ; $56b4: $85
    sbc h                                         ; $56b5: $9c
    ld l, b                                       ; $56b6: $68
    ld l, d                                       ; $56b7: $6a
    ld [hl], c                                    ; $56b8: $71

Jump_062_56b9:
    ld h, $14                                     ; $56b9: $26 $14
    jp c, Jump_000_0cae                           ; $56bb: $da $ae $0c

    call z, Call_062_7bce                         ; $56be: $cc $ce $7b
    rlca                                          ; $56c1: $07
    ld e, h                                       ; $56c2: $5c
    ld d, [hl]                                    ; $56c3: $56
    push de                                       ; $56c4: $d5
    rst $28                                       ; $56c5: $ef
    sub e                                         ; $56c6: $93
    and b                                         ; $56c7: $a0
    ld d, $12                                     ; $56c8: $16 $12
    push bc                                       ; $56ca: $c5
    ld b, e                                       ; $56cb: $43
    jr z, jr_062_5741                             ; $56cc: $28 $73

    call nz, Call_062_7dce                        ; $56ce: $c4 $ce $7d
    ld e, $dd                                     ; $56d1: $1e $dd
    ld h, l                                       ; $56d3: $65
    db $e4                                        ; $56d4: $e4
    rst $08                                       ; $56d5: $cf
    jp hl                                         ; $56d6: $e9


    add d                                         ; $56d7: $82
    adc $4a                                       ; $56d8: $ce $4a
    dec l                                         ; $56da: $2d
    inc a                                         ; $56db: $3c
    inc [hl]                                      ; $56dc: $34
    or e                                          ; $56dd: $b3
    rlca                                          ; $56de: $07
    jp nz, $d74e                                  ; $56df: $c2 $4e $d7

    ld a, [$bd85]                                 ; $56e2: $fa $85 $bd
    jp c, $bd32                                   ; $56e5: $da $32 $bd

    rst $18                                       ; $56e8: $df
    dec sp                                        ; $56e9: $3b
    ldh [$32], a                                  ; $56ea: $e0 $32
    adc $90                                       ; $56ec: $ce $90
    ei                                            ; $56ee: $fb
    inc a                                         ; $56ef: $3c
    inc [hl]                                      ; $56f0: $34
    cpl                                           ; $56f1: $2f

jr_062_56f2:
    push af                                       ; $56f2: $f5
    rst $20                                       ; $56f3: $e7
    ld [hl], c                                    ; $56f4: $71
    adc $b2                                       ; $56f5: $ce $b2
    ld b, a                                       ; $56f7: $47
    rst $28                                       ; $56f8: $ef
    ld d, b                                       ; $56f9: $50
    ld c, b                                       ; $56fa: $48
    db $e3                                        ; $56fb: $e3
    and d                                         ; $56fc: $a2
    sub b                                         ; $56fd: $90
    ei                                            ; $56fe: $fb
    cp h                                          ; $56ff: $bc
    ld [$bd04], sp                                ; $5700: $08 $04 $bd
    ld b, e                                       ; $5703: $43
    ld l, h                                       ; $5704: $6c
    or c                                          ; $5705: $b1
    call c, Call_000_072f                         ; $5706: $dc $2f $07
    ld e, h                                       ; $5709: $5c
    and [hl]                                      ; $570a: $a6

Call_062_570b:
    cp [hl]                                       ; $570b: $be
    xor h                                         ; $570c: $ac
    ld a, d                                       ; $570d: $7a
    add a                                         ; $570e: $87
    ret c                                         ; $570f: $d8

    ld h, d                                       ; $5710: $62
    and c                                         ; $5711: $a1
    db $ed                                        ; $5712: $ed
    or c                                          ; $5713: $b1
    adc h                                         ; $5714: $8c
    xor $b2                                       ; $5715: $ee $b2
    jr z, @+$66                                   ; $5717: $28 $64

    push hl                                       ; $5719: $e5
    ld h, [hl]                                    ; $571a: $66
    ld c, $cd                                     ; $571b: $0e $cd
    inc bc                                        ; $571d: $03

Call_062_571e:
    and l                                         ; $571e: $a5
    ld a, h                                       ; $571f: $7c
    rst $28                                       ; $5720: $ef
    jp nz, Jump_062_5a1c                          ; $5721: $c2 $1c $5a

    ld b, $82                                     ; $5724: $06 $82
    ld e, $ec                                     ; $5726: $1e $ec
    ld d, b                                       ; $5728: $50
    set 6, h                                      ; $5729: $cb $f4
    ld l, [hl]                                    ; $572b: $6e
    ld a, $67                                     ; $572c: $3e $67
    db $ed                                        ; $572e: $ed
    ld [hl], c                                    ; $572f: $71
    ld c, b                                       ; $5730: $48
    db $fc                                        ; $5731: $fc
    or d                                          ; $5732: $b2
    ld c, b                                       ; $5733: $48
    sub a                                         ; $5734: $97
    ld [c], a                                     ; $5735: $e2
    ld [hl], h                                    ; $5736: $74
    ld c, $cd                                     ; $5737: $0e $cd

jr_062_5739:
    rst $20                                       ; $5739: $e7
    xor h                                         ; $573a: $ac
    sbc l                                         ; $573b: $9d
    ld c, [hl]                                    ; $573c: $4e
    jp hl                                         ; $573d: $e9


    xor l                                         ; $573e: $ad
    dec a                                         ; $573f: $3d
    ld d, b                                       ; $5740: $50

jr_062_5741:
    ld l, b                                       ; $5741: $68
    inc hl                                        ; $5742: $23
    sbc l                                         ; $5743: $9d
    ld l, c                                       ; $5744: $69
    db $ed                                        ; $5745: $ed
    cpl                                           ; $5746: $2f
    rst $20                                       ; $5747: $e7
    ld e, a                                       ; $5748: $5f
    ld a, l                                       ; $5749: $7d
    db $ed                                        ; $574a: $ed
    push bc                                       ; $574b: $c5
    ld l, e                                       ; $574c: $6b
    cp e                                          ; $574d: $bb
    ld a, [$cbc2]                                 ; $574e: $fa $c2 $cb
    cpl                                           ; $5751: $2f
    cp [hl]                                       ; $5752: $be
    ldh a, [$f2]                                  ; $5753: $f0 $f2
    ei                                            ; $5755: $fb
    dec b                                         ; $5756: $05
    rlca                                          ; $5757: $07
    cp $ee                                        ; $5758: $fe $ee
    ei                                            ; $575a: $fb
    sbc [hl]                                      ; $575b: $9e
    ld a, [bc]                                    ; $575c: $0a
    rst $08                                       ; $575d: $cf
    ld c, b                                       ; $575e: $48

Jump_062_575f:
    daa                                           ; $575f: $27
    ld l, l                                       ; $5760: $6d
    sbc b                                         ; $5761: $98
    sub [hl]                                      ; $5762: $96
    ld b, d                                       ; $5763: $42
    ld e, e                                       ; $5764: $5b
    jr z, jr_062_56f2                             ; $5765: $28 $8b

    ld b, d                                       ; $5767: $42
    ld [hl-], a                                   ; $5768: $32
    and l                                         ; $5769: $a5
    rst $28                                       ; $576a: $ef
    add c                                         ; $576b: $81
    ld [hl-], a                                   ; $576c: $32
    ld [hl-], a                                   ; $576d: $32
    cp $38                                        ; $576e: $fe $38
    call nc, $9d57                                ; $5770: $d4 $57 $9d
    rst $30                                       ; $5773: $f7
    dec bc                                        ; $5774: $0b
    ld l, l                                       ; $5775: $6d
    sub [hl]                                      ; $5776: $96
    add hl, sp                                    ; $5777: $39
    rla                                           ; $5778: $17
    ld b, e                                       ; $5779: $43
    ld a, [hl+]                                   ; $577a: $2a
    ld [hl], a                                    ; $577b: $77
    jr z, jr_062_5739                             ; $577c: $28 $bb

    rst $28                                       ; $577e: $ef
    ld a, e                                       ; $577f: $7b
    or b                                          ; $5780: $b0
    rlca                                          ; $5781: $07
    ld h, h                                       ; $5782: $64
    dec a                                         ; $5783: $3d
    inc a                                         ; $5784: $3c
    adc a                                         ; $5785: $8f
    ld [hl], a                                    ; $5786: $77
    rst $18                                       ; $5787: $df
    rst $30                                       ; $5788: $f7
    add sp, $2e                                   ; $5789: $e8 $2e
    inc hl                                        ; $578b: $23
    ld a, a                                       ; $578c: $7f
    ld c, $2d                                     ; $578d: $0e $2d
    rst $30                                       ; $578f: $f7
    ld a, l                                       ; $5790: $7d
    cp a                                          ; $5791: $bf
    db $ed                                        ; $5792: $ed
    pop af                                        ; $5793: $f1
    rst $00                                       ; $5794: $c7
    ld [hl], e                                    ; $5795: $73
    ld e, [hl]                                    ; $5796: $5e
    rlca                                          ; $5797: $07
    ld e, h                                       ; $5798: $5c
    and [hl]                                      ; $5799: $a6
    cp [hl]                                       ; $579a: $be
    xor h                                         ; $579b: $ac
    ld a, d                                       ; $579c: $7a
    rrca                                          ; $579d: $0f
    sub h                                         ; $579e: $94
    ld d, l                                       ; $579f: $55
    rst $30                                       ; $57a0: $f7
    ld a, b                                       ; $57a1: $78
    adc a                                         ; $57a2: $8f
    ld [hl], c                                    ; $57a3: $71
    ld d, a                                       ; $57a4: $57
    jp hl                                         ; $57a5: $e9


    add b                                         ; $57a6: $80
    ld [$944c], sp                                ; $57a7: $08 $4c $94
    ld l, h                                       ; $57aa: $6c

Call_062_57ab:
    dec b                                         ; $57ab: $05
    push af                                       ; $57ac: $f5
    cp e                                          ; $57ad: $bb
    push hl                                       ; $57ae: $e5
    ld a, [hl]                                    ; $57af: $7e
    ld bc, $e7ed                                  ; $57b0: $01 $ed $e7
    ld e, l                                       ; $57b3: $5d
    cp [hl]                                       ; $57b4: $be
    rrc b                                         ; $57b5: $cb $08
    ld e, [hl]                                    ; $57b7: $5e
    ld [hl], a                                    ; $57b8: $77
    pop hl                                        ; $57b9: $e1
    push de                                       ; $57ba: $d5
    rst $30                                       ; $57bb: $f7
    ld c, $5d                                     ; $57bc: $0e $5d
    ld [hl], e                                    ; $57be: $73
    pop hl                                        ; $57bf: $e1
    push hl                                       ; $57c0: $e5
    rla                                           ; $57c1: $17
    ld e, [hl]                                    ; $57c2: $5e
    cp [hl]                                       ; $57c3: $be
    dec bc                                        ; $57c4: $0b
    xor a                                         ; $57c5: $af
    sbc $25                                       ; $57c6: $de $25
    ld l, e                                       ; $57c8: $6b
    ccf                                           ; $57c9: $3f
    rst $28                                       ; $57ca: $ef
    ld a, [c]                                     ; $57cb: $f2
    ld b, e                                       ; $57cc: $43
    cp e                                          ; $57cd: $bb
    db $ec                                        ; $57ce: $ec
    adc d                                         ; $57cf: $8a
    add e                                         ; $57d0: $83
    rlca                                          ; $57d1: $07
    cpl                                           ; $57d2: $2f
    cp h                                          ; $57d3: $bc
    ld e, a                                       ; $57d4: $5f
    add a                                         ; $57d5: $87
    ld l, $5c                                     ; $57d6: $2e $5c
    ei                                            ; $57d8: $fb
    ld [hl], l                                    ; $57d9: $75
    rst $20                                       ; $57da: $e7
    or l                                          ; $57db: $b5
    db $ed                                        ; $57dc: $ed
    ret nz                                        ; $57dd: $c0

    add l                                         ; $57de: $85
    rla                                           ; $57df: $17
    rst $28                                       ; $57e0: $ef
    jp nz, Jump_062_77ab                          ; $57e1: $c2 $ab $77

    cp $65                                        ; $57e4: $fe $65
    rla                                           ; $57e6: $17
    ld e, [hl]                                    ; $57e7: $5e
    ld [hl], a                                    ; $57e8: $77
    pop hl                                        ; $57e9: $e1
    dec [hl]                                      ; $57ea: $35
    cp e                                          ; $57eb: $bb
    and $92                                       ; $57ec: $e6 $92
    set 1, [hl]                                   ; $57ee: $cb $ce
    reti                                          ; $57f0: $d9


    pop bc                                        ; $57f1: $c1
    dec bc                                        ; $57f2: $0b
    db $db                                        ; $57f3: $db
    ld c, $5e                                     ; $57f4: $0e $5e
    ld [hl], d                                    ; $57f6: $72
    ld a, c                                       ; $57f7: $79
    db $db                                        ; $57f8: $db
    push de                                       ; $57f9: $d5
    rla                                           ; $57fa: $17
    xor $f2                                       ; $57fb: $ee $f2
    dec hl                                        ; $57fd: $2b
    ld l, $be                                     ; $57fe: $2e $be
    ldh a, [$f2]                                  ; $5800: $f0 $f2
    ld e, l                                       ; $5802: $5d
    halt                                          ; $5803: $76
    ld e, [hl]                                    ; $5804: $5e
    db $db                                        ; $5805: $db
    add l                                         ; $5806: $85
    ld d, a                                       ; $5807: $57
    rst $28                                       ; $5808: $ef
    ldh [rNR51], a                                ; $5809: $e0 $25
    rla                                           ; $580b: $17
    xor a                                         ; $580c: $af
    db $ed                                        ; $580d: $ed
    jp nz, Jump_000_2ecb                          ; $580e: $c2 $cb $2e

    call c, Call_062_4ba1                         ; $5811: $dc $a1 $4b
    ld l, $df                                     ; $5814: $2e $df
    and l                                         ; $5816: $a5
    ld d, a                                       ; $5817: $57
    ld e, a                                       ; $5818: $5f
    ld [hl], c                                    ; $5819: $71
    dec h                                         ; $581a: $25
    ld l, l                                       ; $581b: $6d
    db $ed                                        ; $581c: $ed
    rst $20                                       ; $581d: $e7
    ld e, l                                       ; $581e: $5d
    cp l                                          ; $581f: $bd
    inc bc                                        ; $5820: $03
    rla                                           ; $5821: $17
    ld e, [hl]                                    ; $5822: $5e
    cp h                                          ; $5823: $bc
    ld c, e                                       ; $5824: $4b
    ld l, $bf                                     ; $5825: $2e $bf
    ld hl, sp-$3e                                 ; $5827: $f8 $c2
    bit 6, a                                      ; $5829: $cb $77
    reti                                          ; $582b: $d9


    add l                                         ; $582c: $85
    rla                                           ; $582d: $17
    ld e, a                                       ; $582e: $5f
    ld a, b                                       ; $582f: $78
    ldh a, [$b2]                                  ; $5830: $f0 $b2
    ld c, e                                       ; $5832: $4b
    ld l, $de                                     ; $5833: $2e $de
    and c                                         ; $5835: $a1
    ld l, e                                       ; $5836: $6b
    rst $08                                       ; $5837: $cf
    ccf                                           ; $5838: $3f
    ld [hl], h                                    ; $5839: $74
    call $9779                                    ; $583a: $cd $79 $97
    rra                                           ; $583d: $1f
    cp d                                          ; $583e: $ba
    ld [hl], a                                    ; $583f: $77
    ldh a, [$c2]                                  ; $5840: $f0 $c2
    bit 6, a                                      ; $5842: $cb $77
    ldh [$c2], a                                  ; $5844: $e0 $c2
    adc e                                         ; $5846: $8b
    ld [hl], a                                    ; $5847: $77
    cp $d5                                        ; $5848: $fe $d5
    inc b                                         ; $584a: $04
    cpl                                           ; $584b: $2f
    cp [hl]                                       ; $584c: $be
    ld hl, sp-$3e                                 ; $584d: $f8 $c2
    xor e                                         ; $584f: $ab
    ld [hl], a                                    ; $5850: $77
    reti                                          ; $5851: $d9


    dec h                                         ; $5852: $25
    rst $10                                       ; $5853: $d7
    ld e, l                                       ; $5854: $5d
    ld a, b                                       ; $5855: $78
    call Call_062_5da1                            ; $5856: $cd $a1 $5d
    ld a, b                                       ; $5859: $78
    reti                                          ; $585a: $d9


    dec h                                         ; $585b: $25
    sub a                                         ; $585c: $97
    ld e, $ba                                     ; $585d: $1e $ba
    db $e4                                        ; $585f: $e4
    ld l, d                                       ; $5860: $6a
    jp c, $b8ae                                   ; $5861: $da $ae $b8

    ld a, b                                       ; $5864: $78
    rlca                                          ; $5865: $07
    ld l, $bc                                     ; $5866: $2e $bc
    ld a, b                                       ; $5868: $78
    rst $10                                       ; $5869: $d7
    ld e, l                                       ; $586a: $5d
    ld [hl], d                                    ; $586b: $72
    reti                                          ; $586c: $d9


    ld c, $5d                                     ; $586d: $0e $5d
    ld a, d                                       ; $586f: $7a
    sbc $f9                                       ; $5870: $de $f9
    rla                                           ; $5872: $17
    xor $e0                                       ; $5873: $ee $e0
    dec h                                         ; $5875: $25
    rla                                           ; $5876: $17
    rst $28                                       ; $5877: $ef
    ldh [rNR51], a                                ; $5878: $e0 $25
    sub a                                         ; $587a: $97
    rst $28                                       ; $587b: $ef
    jp nz, Jump_000_2f8b                          ; $587c: $c2 $8b $2f

    cp h                                          ; $587f: $bc
    ld a, h                                       ; $5880: $7c
    sub a                                         ; $5881: $97
    ld e, [hl]                                    ; $5882: $5e
    ld a, l                                       ; $5883: $7d
    push bc                                       ; $5884: $c5
    sub l                                         ; $5885: $95
    rst $30                                       ; $5886: $f7
    ld c, $1d                                     ; $5887: $0e $1d
    cp [hl]                                       ; $5889: $be
    adc e                                         ; $588a: $8b
    cpl                                           ; $588b: $2f
    cp c                                          ; $588c: $b9
    ld l, [hl]                                    ; $588d: $6e
    rlca                                          ; $588e: $07
    cpl                                           ; $588f: $2f
    cp c                                          ; $5890: $b9
    ld a, b                                       ; $5891: $78
    add a                                         ; $5892: $87
    xor [hl]                                      ; $5893: $ae

jr_062_5894:
    cp c                                          ; $5894: $b9
    ldh a, [$f2]                                  ; $5895: $f0 $f2
    dec bc                                        ; $5897: $0b
    cpl                                           ; $5898: $2f
    rst $18                                       ; $5899: $df
    add l                                         ; $589a: $85
    sub a                                         ; $589b: $97
    ld e, l                                       ; $589c: $5d
    halt                                          ; $589d: $76
    pop hl                                        ; $589e: $e1
    push de                                       ; $589f: $d5
    ld l, e                                       ; $58a0: $6b
    inc hl                                        ; $58a1: $23
    cp h                                          ; $58a2: $bc
    ld b, e                                       ; $58a3: $43
    ld d, a                                       ; $58a4: $57
    inc e                                         ; $58a5: $1c
    ld e, h                                       ; $58a6: $5c
    db $db                                        ; $58a7: $db
    dec h                                         ; $58a8: $25
    sub a                                         ; $58a9: $97
    ld e, a                                       ; $58aa: $5f
    cp b                                          ; $58ab: $b8
    adc e                                         ; $58ac: $8b
    xor [hl]                                      ; $58ad: $ae
    cp b                                          ; $58ae: $b8
    ld a, [$cb98]                                 ; $58af: $fa $98 $cb
    jp c, $beae                                   ; $58b2: $da $ae $be

    ld [hl], b                                    ; $58b5: $70
    rla                                           ; $58b6: $17
    rra                                           ; $58b7: $1f
    cp b                                          ; $58b8: $b8

Call_062_58b9:
    ld [c], a                                     ; $58b9: $e2
    ld [$0bb6], a                                 ; $58ba: $ea $b6 $0b
    ld [hl], a                                    ; $58bd: $77
    rst $18                                       ; $58be: $df
    rst $30                                       ; $58bf: $f7
    xor [hl]                                      ; $58c0: $ae
    cp c                                          ; $58c1: $b9
    db $e4                                        ; $58c2: $e4
    ld [c], a                                     ; $58c3: $e2
    adc e                                         ; $58c4: $8b
    cpl                                           ; $58c5: $2f
    cp h                                          ; $58c6: $bc
    cp h                                          ; $58c7: $bc
    db $ed                                        ; $58c8: $ed
    jp nz, $745d                                  ; $58c9: $c2 $5d $74

    push bc                                       ; $58cc: $c5
    push de                                       ; $58cd: $d5
    ld l, e                                       ; $58ce: $6b
    cp e                                          ; $58cf: $bb
    ldh a, [$ea]                                  ; $58d0: $f0 $ea
    dec bc                                        ; $58d2: $0b
    rrca                                          ; $58d3: $0f
    db $ed                                        ; $58d4: $ed
    or d                                          ; $58d5: $b2
    ld c, e                                       ; $58d6: $4b
    xor [hl]                                      ; $58d7: $ae
    cp e                                          ; $58d8: $bb
    ld e, a                                       ; $58d9: $5f
    sub a                                         ; $58da: $97
    ld d, c                                       ; $58db: $51
    adc e                                         ; $58dc: $8b
    jr c, jr_062_5894                             ; $58dd: $38 $b5

    cp a                                          ; $58df: $bf
    rla                                           ; $58e0: $17
    rlca                                          ; $58e1: $07
    sbc h                                         ; $58e2: $9c
    inc hl                                        ; $58e3: $23
    halt                                          ; $58e4: $76
    ld a, $80                                     ; $58e5: $3e $80
    ld hl, sp+$0b                                 ; $58e7: $f8 $0b
    ld l, l                                       ; $58e9: $6d
    db $ed                                        ; $58ea: $ed
    ccf                                           ; $58eb: $3f
    ld d, e                                       ; $58ec: $53
    ld [hl], e                                    ; $58ed: $73
    cp a                                          ; $58ee: $bf
    add a                                         ; $58ef: $87
    ret c                                         ; $58f0: $d8

    ld h, d                                       ; $58f1: $62
    pop de                                        ; $58f2: $d1
    cp [hl]                                       ; $58f3: $be
    xor e                                         ; $58f4: $ab
    ld [hl], h                                    ; $58f5: $74

Jump_062_58f6:
    ret z                                         ; $58f6: $c8

    ld [hl], h                                    ; $58f7: $74
    rst $28                                       ; $58f8: $ef
    inc hl                                        ; $58f9: $23
    ld a, a                                       ; $58fa: $7f
    ld c, $2d                                     ; $58fb: $0e $2d
    jp c, $975f                                   ; $58fd: $da $5f $97

    sbc e                                         ; $5900: $9b
    ld c, [hl]                                    ; $5901: $4e
    dec de                                        ; $5902: $1b
    db $dd                                        ; $5903: $dd
    ld h, l                                       ; $5904: $65
    ld e, a                                       ; $5905: $5f
    ld d, h                                       ; $5906: $54
    ld a, b                                       ; $5907: $78
    ld b, $63                                     ; $5908: $06 $63
    ld b, b                                       ; $590a: $40
    adc a                                         ; $590b: $8f
    and c                                         ; $590c: $a1
    rst $28                                       ; $590d: $ef
    di                                            ; $590e: $f3
    and d                                         ; $590f: $a2
    sub b                                         ; $5910: $90
    inc h                                         ; $5911: $24
    ld [$87a6], sp                                ; $5912: $08 $a6 $87
    ld h, [hl]                                    ; $5915: $66
    jp c, Jump_062_7baa                           ; $5916: $da $aa $7b

    inc e                                         ; $5919: $1c
    sbc [hl]                                      ; $591a: $9e
    and c                                         ; $591b: $a1
    ld a, $d5                                     ; $591c: $3e $d5
    ld a, a                                       ; $591e: $7f
    ld a, [de]                                    ; $591f: $1a
    dec a                                         ; $5920: $3d
    add h                                         ; $5921: $84
    or d                                          ; $5922: $b2
    ld a, [c]                                     ; $5923: $f2
    and l                                         ; $5924: $a5
    ld a, [hl+]                                   ; $5925: $2a
    xor a                                         ; $5926: $af
    inc b                                         ; $5927: $04
    db $e4                                        ; $5928: $e4
    or l                                          ; $5929: $b5
    sbc d                                         ; $592a: $9a
    ld [hl], e                                    ; $592b: $73
    or c                                          ; $592c: $b1
    adc h                                         ; $592d: $8c
    ld l, h                                       ; $592e: $6c
    ld a, [bc]                                    ; $592f: $0a
    sbc $2f                                       ; $5930: $de $2f
    rlca                                          ; $5932: $07
    ld e, h                                       ; $5933: $5c
    ld b, [hl]                                    ; $5934: $46
    cp $9c                                        ; $5935: $fe $9c
    add h                                         ; $5937: $84
    jp nc, $dabd                                  ; $5938: $d2 $bd $da

    and d                                         ; $593b: $a2
    ld h, [hl]                                    ; $593c: $66
    xor c                                         ; $593d: $a9
    ld c, a                                       ; $593e: $4f
    or e                                          ; $593f: $b3
    rst $18                                       ; $5940: $df
    cp e                                          ; $5941: $bb
    jr nc, jr_062_59bb                            ; $5942: $30 $77

    ld e, l                                       ; $5944: $5d
    add sp, -$18                                  ; $5945: $e8 $e8
    daa                                           ; $5947: $27
    inc h                                         ; $5948: $24
    rrca                                          ; $5949: $0f
    xor c                                         ; $594a: $a9
    ld a, b                                       ; $594b: $78
    adc $0b                                       ; $594c: $ce $0b
    sub a                                         ; $594e: $97
    sbc e                                         ; $594f: $9b
    ld a, [hl]                                    ; $5950: $7e
    rst $28                                       ; $5951: $ef
    jp nz, $9d88                                  ; $5952: $c2 $88 $9d

    dec [hl]                                      ; $5955: $35
    inc a                                         ; $5956: $3c
    inc hl                                        ; $5957: $23
    cp a                                          ; $5958: $bf
    inc c                                         ; $5959: $0c
    sub h                                         ; $595a: $94
    ld a, [c]                                     ; $595b: $f2
    sbc h                                         ; $595c: $9c
    adc e                                         ; $595d: $8b
    ld hl, $3b95                                  ; $595e: $21 $95 $3b
    sub h                                         ; $5961: $94
    ld [hl], l                                    ; $5962: $75
    rst $00                                       ; $5963: $c7
    ld d, $f4                                     ; $5964: $16 $f4
    call nc, $9197                                ; $5966: $d4 $97 $91

jr_062_5969:
    ld e, a                                       ; $5969: $5f
    ld b, $4a                                     ; $596a: $06 $4a
    ld a, c                                       ; $596c: $79
    sbc b                                         ; $596d: $98
    sub h                                         ; $596e: $94
    add [hl]                                      ; $596f: $86
    db $eb                                        ; $5970: $eb
    cp l                                          ; $5971: $bd
    or $2f                                        ; $5972: $f6 $2f
    ld [hl], e                                    ; $5974: $73
    xor [hl]                                      ; $5975: $ae
    ld a, [c]                                     ; $5976: $f2
    ld b, a                                       ; $5977: $47
    jr z, jr_062_59bd                             ; $5978: $28 $43

    and a                                         ; $597a: $a7
    adc [hl]                                      ; $597b: $8e
    sbc [hl]                                      ; $597c: $9e
    ld a, c                                       ; $597d: $79
    sub l                                         ; $597e: $95
    adc l                                         ; $597f: $8d
    rst $30                                       ; $5980: $f7
    ld a, l                                       ; $5981: $7d
    cp a                                          ; $5982: $bf
    ld d, a                                       ; $5983: $57
    sub h                                         ; $5984: $94
    jp hl                                         ; $5985: $e9


    ld d, l                                       ; $5986: $55
    inc hl                                        ; $5987: $23
    dec e                                         ; $5988: $1d
    ld a, [bc]                                    ; $5989: $0a
    ld l, c                                       ; $598a: $69
    xor h                                         ; $598b: $ac
    ld [$5ab7], a                                 ; $598c: $ea $b7 $5a
    sub [hl]                                      ; $598f: $96
    dec e                                         ; $5990: $1d
    or a                                          ; $5991: $b7
    ret c                                         ; $5992: $d8

    jr c, jr_062_5969                             ; $5993: $38 $d4

    ld b, a                                       ; $5995: $47
    add $7e                                       ; $5996: $c6 $7e
    add [hl]                                      ; $5998: $86
    adc $55                                       ; $5999: $ce $55
    dec bc                                        ; $599b: $0b
    or d                                          ; $599c: $b2

jr_062_599d:
    rst $30                                       ; $599d: $f7
    ld b, b                                       ; $599e: $40
    add hl, de                                    ; $599f: $19
    ld e, d                                       ; $59a0: $5a
    adc $79                                       ; $59a1: $ce $79
    ld bc, $206d                                  ; $59a3: $01 $6d $20
    adc e                                         ; $59a6: $8b
    ld a, [hl]                                    ; $59a7: $7e
    ld l, $c4                                     ; $59a8: $2e $c4
    adc $1e                                       ; $59aa: $ce $1e
    ld [hl], b                                    ; $59ac: $70
    ld l, b                                       ; $59ad: $68
    add hl, de                                    ; $59ae: $19
    db $ec                                        ; $59af: $ec
    ld bc, $fc59                                  ; $59b0: $01 $59 $fc
    db $d3                                        ; $59b3: $d3
    ld c, h                                       ; $59b4: $4c
    add hl, hl                                    ; $59b5: $29
    ld a, h                                       ; $59b6: $7c
    rst $28                                       ; $59b7: $ef
    add b                                         ; $59b8: $80
    res 3, b                                      ; $59b9: $cb $98

jr_062_59bb:
    ld [hl+], a                                   ; $59bb: $22
    adc d                                         ; $59bc: $8a

jr_062_59bd:
    cp l                                          ; $59bd: $bd
    rst $08                                       ; $59be: $cf
    ld b, e                                       ; $59bf: $43
    ld a, l                                       ; $59c0: $7d
    ld sp, $eef4                                  ; $59c1: $31 $f4 $ee
    dec [hl]                                      ; $59c4: $35
    ld a, [hl-]                                   ; $59c5: $3a
    call nz, $e95e                                ; $59c6: $c4 $5e $e9
    rra                                           ; $59c9: $1f
    rla                                           ; $59ca: $17
    add l                                         ; $59cb: $85
    call c, Call_062_45e7                         ; $59cc: $dc $e7 $45
    call $e5a1                                    ; $59cf: $cd $a1 $e5
    ld a, [hl]                                    ; $59d2: $7e
    ld bc, $ce6d                                  ; $59d3: $01 $6d $ce
    add hl, sp                                    ; $59d6: $39
    rla                                           ; $59d7: $17
    ld c, d                                       ; $59d8: $4a
    ld l, l                                       ; $59d9: $6d
    ld c, [hl]                                    ; $59da: $4e
    ld b, d                                       ; $59db: $42
    ld sp, $0bef                                  ; $59dc: $31 $ef $0b
    sbc d                                         ; $59df: $9a
    rst $28                                       ; $59e0: $ef
    ei                                            ; $59e1: $fb
    ld a, [hl]                                    ; $59e2: $7e
    ld bc, $6917                                  ; $59e3: $01 $17 $69
    ld [hl], d                                    ; $59e6: $72
    sbc l                                         ; $59e7: $9d
    ld e, d                                       ; $59e8: $5a
    rst $28                                       ; $59e9: $ef
    rla                                           ; $59ea: $17
    db $ed                                        ; $59eb: $ed
    ld [hl], c                                    ; $59ec: $71
    ld c, b                                       ; $59ed: $48
    db $fc                                        ; $59ee: $fc
    ld [hl-], a                                   ; $59ef: $32
    push af                                       ; $59f0: $f5
    ld h, l                                       ; $59f1: $65
    ld l, b                                       ; $59f2: $68
    ld e, [hl]                                    ; $59f3: $5e
    ld c, h                                       ; $59f4: $4c
    ld c, c                                       ; $59f5: $49
    rst $28                                       ; $59f6: $ef
    di                                            ; $59f7: $f3
    ld e, d                                       ; $59f8: $5a
    add hl, de                                    ; $59f9: $19
    ld [hl+], a                                   ; $59fa: $22
    rst $10                                       ; $59fb: $d7
    ld a, [de]                                    ; $59fc: $1a
    ld [hl], d                                    ; $59fd: $72
    add a                                         ; $59fe: $87
    db $e4                                        ; $59ff: $e4
    or a                                          ; $5a00: $b7
    cp h                                          ; $5a01: $bc
    cp $d1                                        ; $5a02: $fe $d1
    add hl, sp                                    ; $5a04: $39
    add [hl]                                      ; $5a05: $86
    cp [hl]                                       ; $5a06: $be
    rst $08                                       ; $5a07: $cf
    inc hl                                        ; $5a08: $23
    ccf                                           ; $5a09: $3f
    ld a, d                                       ; $5a0a: $7a
    rrca                                          ; $5a0b: $0f
    sub h                                         ; $5a0c: $94
    ld [hl], e                                    ; $5a0d: $73
    ld e, [hl]                                    ; $5a0e: $5e
    ld l, l                                       ; $5a0f: $6d
    jr nz, jr_062_599d                            ; $5a10: $20 $8b

    ld a, [hl]                                    ; $5a12: $7e
    ld l, $4a                                     ; $5a13: $2e $4a
    rst $30                                       ; $5a15: $f7

Jump_062_5a16:
    jp z, $f91e                                   ; $5a16: $ca $1e $f9

    and l                                         ; $5a19: $a5
    xor [hl]                                      ; $5a1a: $ae
    ld b, e                                       ; $5a1b: $43

Jump_062_5a1c:
    cp h                                          ; $5a1c: $bc
    ld d, b                                       ; $5a1d: $50
    ld b, [hl]                                    ; $5a1e: $46
    ld a, [hl]                                    ; $5a1f: $7e
    sbc c                                         ; $5a20: $99
    ld a, [$5032]                                 ; $5a21: $fa $32 $50
    jp z, Jump_062_428b                           ; $5a24: $ca $8b $42

    ld h, d                                       ; $5a27: $62
    cp $e2                                        ; $5a28: $fe $e2
    ld a, l                                       ; $5a2a: $7d
    ld e, [hl]                                    ; $5a2b: $5e
    push hl                                       ; $5a2c: $e5
    and $60                                       ; $5a2d: $e6 $60
    db $fc                                        ; $5a2f: $fc
    sub l                                         ; $5a30: $95
    ld hl, sp+$79                                 ; $5a31: $f8 $79
    call c, $90a1                                 ; $5a33: $dc $a1 $90
    add $5a                                       ; $5a36: $c6 $5a
    jr z, jr_062_5a57                             ; $5a38: $28 $1d

    rst $00                                       ; $5a3a: $c7
    ret nc                                        ; $5a3b: $d0

    ld b, a                                       ; $5a3c: $47
    cp $e7                                        ; $5a3d: $fe $e7
    sbc $01                                       ; $5a3f: $de $01
    sub a                                         ; $5a41: $97
    ld [hl], c                                    ; $5a42: $71
    add [hl]                                      ; $5a43: $86
    call c, $a1e7                                 ; $5a44: $dc $e7 $a1
    ld a, c                                       ; $5a47: $79
    pop af                                        ; $5a48: $f1
    rst $08                                       ; $5a49: $cf
    and c                                         ; $5a4a: $a1
    inc sp                                        ; $5a4b: $33
    ld a, [bc]                                    ; $5a4c: $0a
    add hl, sp                                    ; $5a4d: $39
    ld a, [c]                                     ; $5a4e: $f2
    rr d                                          ; $5a4f: $cb $1a
    xor [hl]                                      ; $5a51: $ae
    ld c, d                                       ; $5a52: $4a
    jp $f46c                                      ; $5a53: $c3 $6c $f4


    db $10                                        ; $5a56: $10

jr_062_5a57:
    jp z, $7748                                   ; $5a57: $ca $48 $77

    xor a                                         ; $5a5a: $af
    sbc c                                         ; $5a5b: $99
    and $7b                                       ; $5a5c: $e6 $7b
    db $ed                                        ; $5a5e: $ed
    ld e, a                                       ; $5a5f: $5f
    or $58                                        ; $5a60: $f6 $58
    sbc h                                         ; $5a62: $9c
    ei                                            ; $5a63: $fb
    inc a                                         ; $5a64: $3c
    inc [hl]                                      ; $5a65: $34
    cpl                                           ; $5a66: $2f
    add [hl]                                      ; $5a67: $86
    cp [hl]                                       ; $5a68: $be
    ld b, d                                       ; $5a69: $42
    ld c, l                                       ; $5a6a: $4d
    cpl                                           ; $5a6b: $2f
    ld e, l                                       ; $5a6c: $5d
    and h                                         ; $5a6d: $a4
    xor d                                         ; $5a6e: $aa
    rst $18                                       ; $5a6f: $df
    jr nc, jr_062_5aa1                            ; $5a70: $30 $2f

    or h                                          ; $5a72: $b4
    xor $17                                       ; $5a73: $ee $17
    db $ed                                        ; $5a75: $ed
    ld [hl], c                                    ; $5a76: $71
    ld c, b                                       ; $5a77: $48
    db $fc                                        ; $5a78: $fc
    or d                                          ; $5a79: $b2
    ld [$e8d4], sp                                ; $5a7a: $08 $d4 $e8
    ld l, $3b                                     ; $5a7d: $2e $3b
    call nz, $cb16                                ; $5a7f: $c4 $16 $cb

jr_062_5a82:
    ld [hl], h                                    ; $5a82: $74
    call c, Call_062_568f                         ; $5a83: $dc $8f $56
    ld e, e                                       ; $5a86: $5b
    and [hl]                                      ; $5a87: $a6
    ld [hl], a                                    ; $5a88: $77
    di                                            ; $5a89: $f3

jr_062_5a8a:
    add hl, sp                                    ; $5a8a: $39
    cpl                                           ; $5a8b: $2f
    rlca                                          ; $5a8c: $07
    ld e, h                                       ; $5a8d: $5c
    ld d, $85                                     ; $5a8e: $16 $85
    db $e4                                        ; $5a90: $e4
    call nc, Call_062_6ef4                        ; $5a91: $d4 $f4 $6e
    db $f4                                        ; $5a94: $f4
    ld l, d                                       ; $5a95: $6a
    set 6, h                                      ; $5a96: $cb $f4
    ld l, [hl]                                    ; $5a98: $6e
    and [hl]                                      ; $5a99: $a6
    xor l                                         ; $5a9a: $ad
    ld [hl], $a7                                  ; $5a9b: $36 $a7
    ld [hl], h                                    ; $5a9d: $74
    add hl, de                                    ; $5a9e: $19
    ld e, d                                       ; $5a9f: $5a
    add [hl]                                      ; $5aa0: $86

jr_062_5aa1:
    adc $51                                       ; $5aa1: $ce $51
    and l                                         ; $5aa3: $a5
    ld a, [hl+]                                   ; $5aa4: $2a
    and e                                         ; $5aa5: $a3
    rst $30                                       ; $5aa6: $f7
    ld a, c                                       ; $5aa7: $79
    ld de, $7a08                                  ; $5aa8: $11 $08 $7a
    add a                                         ; $5aab: $87
    ret c                                         ; $5aac: $d8

    ld h, d                                       ; $5aad: $62
    sbc c                                         ; $5aae: $99
    adc [hl]                                      ; $5aaf: $8e
    sub [hl]                                      ; $5ab0: $96
    ld a, l                                       ; $5ab1: $7d
    ld e, [hl]                                    ; $5ab2: $5e
    inc hl                                        ; $5ab3: $23
    push af                                       ; $5ab4: $f5
    ld [c], a                                     ; $5ab5: $e2
    and c                                         ; $5ab6: $a1
    add l                                         ; $5ab7: $85
    ld [hl], $a5                                  ; $5ab8: $36 $a5
    adc e                                         ; $5aba: $8b
    ld a, b                                       ; $5abb: $78
    ld d, c                                       ; $5abc: $51
    ld [hl], e                                    ; $5abd: $73
    pop de                                        ; $5abe: $d1
    rst $20                                       ; $5abf: $e7
    pop bc                                        ; $5ac0: $c1
    ret nc                                        ; $5ac1: $d0

    ld [hl], d                                    ; $5ac2: $72
    rst $28                                       ; $5ac3: $ef
    sub b                                         ; $5ac4: $90
    daa                                           ; $5ac5: $27
    ld a, [$2f3e]                                 ; $5ac6: $fa $3e $2f
    ld l, d                                       ; $5ac9: $6a
    xor [hl]                                      ; $5aca: $ae
    inc bc                                        ; $5acb: $03
    ld a, [c]                                     ; $5acc: $f2
    ret z                                         ; $5acd: $c8

    jr jr_062_5a8a                                ; $5ace: $18 $ba

    ld l, c                                       ; $5ad0: $69
    ld l, e                                       ; $5ad1: $6b
    rst $38                                       ; $5ad2: $ff
    sbc c                                         ; $5ad3: $99
    sbc d                                         ; $5ad4: $9a
    ld a, e                                       ; $5ad5: $7b
    rst $20                                       ; $5ad6: $e7
    ld b, l                                       ; $5ad7: $45
    or l                                          ; $5ad8: $b5
    db $eb                                        ; $5ad9: $eb
    inc l                                         ; $5ada: $2c
    jr nz, jr_062_5a82                            ; $5adb: $20 $a5

    ld b, [hl]                                    ; $5add: $46
    xor [hl]                                      ; $5ade: $ae
    ld l, h                                       ; $5adf: $6c
    ld e, c                                       ; $5ae0: $59
    jp Jump_000_2345                              ; $5ae1: $c3 $45 $23


    add sp, $5c                                   ; $5ae4: $e8 $5c
    sub l                                         ; $5ae6: $95
    sbc a                                         ; $5ae7: $9f
    ld a, h                                       ; $5ae8: $7c
    cp a                                          ; $5ae9: $bf
    sub a                                         ; $5aea: $97
    ld [$165a], sp                                ; $5aeb: $08 $5a $16
    cp c                                          ; $5aee: $b9
    ld a, [c]                                     ; $5aef: $f2
    inc bc                                        ; $5af0: $03
    adc b                                         ; $5af1: $88
    cp a                                          ; $5af2: $bf
    ld e, b                                       ; $5af3: $58
    sub $70                                       ; $5af4: $d6 $70
    pop de                                        ; $5af6: $d1
    ld [$f73a], sp                                ; $5af7: $08 $3a $f7
    inc [hl]                                      ; $5afa: $34
    and a                                         ; $5afb: $a7
    ld b, d                                       ; $5afc: $42
    rst $28                                       ; $5afd: $ef
    ld l, $e0                                     ; $5afe: $2e $e0
    ld d, [hl]                                    ; $5b00: $56
    ld d, b                                       ; $5b01: $50
    cp a                                          ; $5b02: $bf
    ld e, e                                       ; $5b03: $5b
    and [hl]                                      ; $5b04: $a6
    inc hl                                        ; $5b05: $23
    cp d                                          ; $5b06: $ba
    cp e                                          ; $5b07: $bb
    sbc $3b                                       ; $5b08: $de $3b
    ld l, b                                       ; $5b0a: $68
    reti                                          ; $5b0b: $d9


    rst $28                                       ; $5b0c: $ef
    db $dd                                        ; $5b0d: $dd
    add hl, de                                    ; $5b0e: $19
    ld d, c                                       ; $5b0f: $51
    or e                                          ; $5b10: $b3
    ld a, [c]                                     ; $5b11: $f2
    sbc [hl]                                      ; $5b12: $9e
    and $d0                                       ; $5b13: $e6 $d0
    or d                                          ; $5b15: $b2
    ld l, d                                       ; $5b16: $6a
    ld [hl], c                                    ; $5b17: $71
    ld h, l                                       ; $5b18: $65
    adc a                                         ; $5b19: $8f
    ld bc, $48eb                                  ; $5b1a: $01 $eb $48
    adc d                                         ; $5b1d: $8a
    and b                                         ; $5b1e: $a0
    ld a, e                                       ; $5b1f: $7b
    ld [hl], l                                    ; $5b20: $75
    adc [hl]                                      ; $5b21: $8e
    ld a, a                                       ; $5b22: $7f
    ld [hl], c                                    ; $5b23: $71
    db $dd                                        ; $5b24: $dd
    ld h, e                                       ; $5b25: $63
    inc e                                         ; $5b26: $1c
    xor h                                         ; $5b27: $ac
    ld h, c                                       ; $5b28: $61
    adc $5f                                       ; $5b29: $ce $5f
    ld e, b                                       ; $5b2b: $58
    ld b, b                                       ; $5b2c: $40
    jp z, $1942                                   ; $5b2d: $ca $42 $19

    ld a, d                                       ; $5b30: $7a
    dec d                                         ; $5b31: $15
    or b                                          ; $5b32: $b0
    or d                                          ; $5b33: $b2
    and a                                         ; $5b34: $a7
    ld b, d                                       ; $5b35: $42
    rst $28                                       ; $5b36: $ef
    ld l, $e0                                     ; $5b37: $2e $e0
    ld d, [hl]                                    ; $5b39: $56
    nop                                           ; $5b3a: $00
    pop hl                                        ; $5b3b: $e1
    jp hl                                         ; $5b3c: $e9


    adc b                                         ; $5b3d: $88
    xor $ae                                       ; $5b3e: $ee $ae
    rst $30                                       ; $5b40: $f7
    dec bc                                        ; $5b41: $0b
    rla                                           ; $5b42: $17
    ld d, c                                       ; $5b43: $51
    ld [hl], e                                    ; $5b44: $73
    ld sp, $fd4c                                  ; $5b45: $31 $4c $fd
    jp z, $85ce                                   ; $5b48: $ca $ce $85

    cp d                                          ; $5b4b: $ba
    db $10                                        ; $5b4c: $10
    dec sp                                        ; $5b4d: $3b
    rla                                           ; $5b4e: $17
    cp c                                          ; $5b4f: $b9
    ld a, [c]                                     ; $5b50: $f2
    inc bc                                        ; $5b51: $03
    adc b                                         ; $5b52: $88
    cp a                                          ; $5b53: $bf
    ld e, b                                       ; $5b54: $58
    or $34                                        ; $5b55: $f6 $34
    and a                                         ; $5b57: $a7
    ld b, d                                       ; $5b58: $42
    rst $28                                       ; $5b59: $ef
    ld l, $e0                                     ; $5b5a: $2e $e0
    ld d, [hl]                                    ; $5b5c: $56
    ld d, b                                       ; $5b5d: $50
    cp a                                          ; $5b5e: $bf
    ld e, e                                       ; $5b5f: $5b
    and [hl]                                      ; $5b60: $a6
    inc hl                                        ; $5b61: $23
    cp d                                          ; $5b62: $ba
    cp e                                          ; $5b63: $bb
    sbc $3b                                       ; $5b64: $de $3b
    inc d                                         ; $5b66: $14
    sbc [hl]                                      ; $5b67: $9e
    and c                                         ; $5b68: $a1
    ld a, c                                       ; $5b69: $79
    push de                                       ; $5b6a: $d5
    add hl, sp                                    ; $5b6b: $39
    dec e                                         ; $5b6c: $1d
    daa                                           ; $5b6d: $27
    ld a, [$9fc8]                                 ; $5b6e: $fa $c8 $9f
    dec sp                                        ; $5b71: $3b
    call nc, Call_062_4c35                        ; $5b72: $d4 $35 $4c
    ld a, [hl-]                                   ; $5b75: $3a
    ld b, c                                       ; $5b76: $41
    ld d, $51                                     ; $5b77: $16 $51
    inc de                                        ; $5b79: $13
    and h                                         ; $5b7a: $a4
    ld e, b                                       ; $5b7b: $58
    xor $1d                                       ; $5b7c: $ee $1d
    or h                                          ; $5b7e: $b4
    inc c                                         ; $5b7f: $0c

jr_062_5b80:
    dec l                                         ; $5b80: $2d
    xor e                                         ; $5b81: $ab
    ld d, $57                                     ; $5b82: $16 $57
    or $18                                        ; $5b84: $f6 $18
    or b                                          ; $5b86: $b0
    xor [hl]                                      ; $5b87: $ae
    pop hl                                        ; $5b88: $e1
    ld [bc], a                                    ; $5b89: $02
    or c                                          ; $5b8a: $b1
    add l                                         ; $5b8b: $85
    inc [hl]                                      ; $5b8c: $34
    ld a, [hl-]                                   ; $5b8d: $3a
    rst $30                                       ; $5b8e: $f7
    inc [hl]                                      ; $5b8f: $34
    rst $00                                       ; $5b90: $c7
    cp a                                          ; $5b91: $bf
    cp b                                          ; $5b92: $b8
    xor $31                                       ; $5b93: $ee $31
    ld c, $d6                                     ; $5b95: $0e $d6
    jr nc, jr_062_5b80                            ; $5b97: $30 $e7

    cpl                                           ; $5b99: $2f
    inc l                                         ; $5b9a: $2c
    jr nz, jr_062_5c02                            ; $5b9b: $20 $65

    and c                                         ; $5b9d: $a1
    inc l                                         ; $5b9e: $2c
    ld [$af4e], a                                 ; $5b9f: $ea $4e $af
    dec d                                         ; $5ba2: $15
    ld b, b                                       ; $5ba3: $40
    ld a, b                                       ; $5ba4: $78
    ld c, a                                       ; $5ba5: $4f
    ld [hl], e                                    ; $5ba6: $73
    ld a, [hl-]                                   ; $5ba7: $3a
    and d                                         ; $5ba8: $a2
    cp e                                          ; $5ba9: $bb
    db $eb                                        ; $5baa: $eb
    db $fd                                        ; $5bab: $fd
    ld [bc], a                                    ; $5bac: $02
    rla                                           ; $5bad: $17
    ld d, c                                       ; $5bae: $51
    ld [hl], e                                    ; $5baf: $73
    ld sp, $040c                                  ; $5bb0: $31 $0c $04
    cp e                                          ; $5bb3: $bb
    pop de                                        ; $5bb4: $d1
    cp c                                          ; $5bb5: $b9
    ret z                                         ; $5bb6: $c8

    sub l                                         ; $5bb7: $95
    rra                                           ; $5bb8: $1f

jr_062_5bb9:
    ld b, b                                       ; $5bb9: $40
    db $fc                                        ; $5bba: $fc
    push bc                                       ; $5bbb: $c5
    or d                                          ; $5bbc: $b2
    jr jr_062_5bb9                                ; $5bbd: $18 $fa

    add sp, $2e                                   ; $5bbf: $e8 $2e
    db $d3                                        ; $5bc1: $d3
    ld de, $3ddd                                  ; $5bc2: $11 $dd $3d
    dec d                                         ; $5bc5: $15
    ld a, d                                       ; $5bc6: $7a
    ld [hl], a                                    ; $5bc7: $77
    ld bc, $82b7                                  ; $5bc8: $01 $b7 $82
    ld a, [$72dd]                                 ; $5bcb: $fa $dd $72
    rst $28                                       ; $5bce: $ef
    ld d, b                                       ; $5bcf: $50
    ld a, b                                       ; $5bd0: $78
    add [hl]                                      ; $5bd1: $86
    and $55                                       ; $5bd2: $e6 $55
    rst $20                                       ; $5bd4: $e7
    ld [hl], h                                    ; $5bd5: $74
    sbc h                                         ; $5bd6: $9c
    add sp, $23                                   ; $5bd7: $e8 $23
    ld a, a                                       ; $5bd9: $7f
    xor $ea                                       ; $5bda: $ee $ea
    rra                                           ; $5bdc: $1f
    ld e, e                                       ; $5bdd: $5b
    adc b                                         ; $5bde: $88
    or $4f                                        ; $5bdf: $f6 $4f
    ld l, h                                       ; $5be1: $6c
    ld de, $4135                                  ; $5be2: $11 $35 $41
    adc d                                         ; $5be5: $8a
    push hl                                       ; $5be6: $e5
    sbc $41                                       ; $5be7: $de $41
    set 2, b                                      ; $5be9: $cb $d0
    or d                                          ; $5beb: $b2
    ld l, d                                       ; $5bec: $6a
    ld [hl], c                                    ; $5bed: $71
    ld h, l                                       ; $5bee: $65
    adc a                                         ; $5bef: $8f
    ld bc, $1aeb                                  ; $5bf0: $01 $eb $1a
    ld l, $10                                     ; $5bf3: $2e $10
    ld e, e                                       ; $5bf5: $5b
    ld c, b                                       ; $5bf6: $48
    and e                                         ; $5bf7: $a3
    ld [hl], e                                    ; $5bf8: $73
    ld c, a                                       ; $5bf9: $4f
    ld [hl], e                                    ; $5bfa: $73
    db $fc                                        ; $5bfb: $fc
    adc e                                         ; $5bfc: $8b
    db $eb                                        ; $5bfd: $eb
    ld e, $e3                                     ; $5bfe: $1e $e3
    ld h, b                                       ; $5c00: $60
    dec c                                         ; $5c01: $0d

jr_062_5c02:
    ld [hl], e                                    ; $5c02: $73

jr_062_5c03:
    cp $c2                                        ; $5c03: $fe $c2

jr_062_5c05:
    ld [bc], a                                    ; $5c05: $02
    ld d, d                                       ; $5c06: $52
    xor $17                                       ; $5c07: $ee $17
    rla                                           ; $5c09: $17
    ld d, c                                       ; $5c0a: $51
    ld [hl], e                                    ; $5c0b: $73
    ld sp, $040c                                  ; $5c0c: $31 $0c $04
    cp e                                          ; $5c0f: $bb
    pop de                                        ; $5c10: $d1
    cp c                                          ; $5c11: $b9
    ret z                                         ; $5c12: $c8

    sub l                                         ; $5c13: $95
    rra                                           ; $5c14: $1f
    ld b, b                                       ; $5c15: $40
    db $fc                                        ; $5c16: $fc
    push bc                                       ; $5c17: $c5
    or d                                          ; $5c18: $b2
    and a                                         ; $5c19: $a7
    add hl, sp                                    ; $5c1a: $39
    dec d                                         ; $5c1b: $15
    ld a, d                                       ; $5c1c: $7a
    ld [hl], a                                    ; $5c1d: $77
    ld bc, $82b7                                  ; $5c1e: $01 $b7 $82
    ld a, [$32dd]                                 ; $5c21: $fa $dd $32
    dec e                                         ; $5c24: $1d
    pop de                                        ; $5c25: $d1
    db $dd                                        ; $5c26: $dd
    push af                                       ; $5c27: $f5
    sbc $a1                                       ; $5c28: $de $a1
    ldh a, [$0c]                                  ; $5c2a: $f0 $0c
    call $ceab                                    ; $5c2c: $cd $ab $ce
    jp hl                                         ; $5c2f: $e9


    jr c, jr_062_5c03                             ; $5c30: $38 $d1

    ld b, a                                       ; $5c32: $47
    cp $5c                                        ; $5c33: $fe $5c
    cp e                                          ; $5c35: $bb
    ld e, $45                                     ; $5c36: $1e $45
    ld l, [hl]                                    ; $5c38: $6e
    jp hl                                         ; $5c39: $e9


    ld d, c                                       ; $5c3a: $51
    or h                                          ; $5c3b: $b4
    adc b                                         ; $5c3c: $88
    sbc d                                         ; $5c3d: $9a
    jr nz, jr_062_5c05                            ; $5c3e: $20 $c5

    ld [hl], d                                    ; $5c40: $72
    rst $28                                       ; $5c41: $ef
    and b                                         ; $5c42: $a0
    ld h, l                                       ; $5c43: $65
    ld l, b                                       ; $5c44: $68
    ld e, c                                       ; $5c45: $59
    or l                                          ; $5c46: $b5
    cp b                                          ; $5c47: $b8
    or d                                          ; $5c48: $b2
    rst $00                                       ; $5c49: $c7
    add b                                         ; $5c4a: $80
    ld [hl], l                                    ; $5c4b: $75
    dec c                                         ; $5c4c: $0d
    rla                                           ; $5c4d: $17
    adc b                                         ; $5c4e: $88
    dec l                                         ; $5c4f: $2d
    and h                                         ; $5c50: $a4
    pop de                                        ; $5c51: $d1
    cp c                                          ; $5c52: $b9
    and a                                         ; $5c53: $a7
    add hl, sp                                    ; $5c54: $39
    cp $c5                                        ; $5c55: $fe $c5
    ld [hl], l                                    ; $5c57: $75
    adc a                                         ; $5c58: $8f
    ld [hl], c                                    ; $5c59: $71
    or b                                          ; $5c5a: $b0
    add [hl]                                      ; $5c5b: $86
    add hl, sp                                    ; $5c5c: $39
    ld a, a                                       ; $5c5d: $7f
    ld h, c                                       ; $5c5e: $61
    ld bc, $f729                                  ; $5c5f: $01 $29 $f7
    dec bc                                        ; $5c62: $0b
    rst $10                                       ; $5c63: $d7
    ld b, b                                       ; $5c64: $40
    rst $18                                       ; $5c65: $df
    push de                                       ; $5c66: $d5
    ld b, c                                       ; $5c67: $41
    halt                                          ; $5c68: $76
    cp l                                          ; $5c69: $bd
    ld a, a                                       ; $5c6a: $7f
    db $ed                                        ; $5c6b: $ed
    sub $d0                                       ; $5c6c: $d6 $d0
    ld d, $85                                     ; $5c6e: $16 $85
    ld e, h                                       ; $5c70: $5c
    sub h                                         ; $5c71: $94
    ld a, [hl]                                    ; $5c72: $7e
    ld a, [c]                                     ; $5c73: $f2
    rla                                           ; $5c74: $17
    dec bc                                        ; $5c75: $0b
    ld a, d                                       ; $5c76: $7a
    ld d, l                                       ; $5c77: $55
    ld a, l                                       ; $5c78: $7d

jr_062_5c79:
    ld d, l                                       ; $5c79: $55
    add hl, sp                                    ; $5c7a: $39
    ccf                                           ; $5c7b: $3f
    cp e                                          ; $5c7c: $bb
    nop                                           ; $5c7d: $00
    ld l, l                                       ; $5c7e: $6d
    dec b                                         ; $5c7f: $05
    ld h, d                                       ; $5c80: $62
    rst $20                                       ; $5c81: $e7
    add sp, $2e                                   ; $5c82: $e8 $2e
    cp e                                          ; $5c84: $bb
    jr c, jr_062_5cbc                             ; $5c85: $38 $35

    ld d, c                                       ; $5c87: $51
    inc b                                         ; $5c88: $04
    add d                                         ; $5c89: $82
    ld hl, $ea77                                  ; $5c8a: $21 $77 $ea
    add hl, bc                                    ; $5c8d: $09
    ld l, e                                       ; $5c8e: $6b
    dec b                                         ; $5c8f: $05
    db $10                                        ; $5c90: $10
    cp [hl]                                       ; $5c91: $be
    ld e, a                                       ; $5c92: $5f
    rst $10                                       ; $5c93: $d7
    ld b, b                                       ; $5c94: $40
    ld e, a                                       ; $5c95: $5f
    cp e                                          ; $5c96: $bb
    di                                            ; $5c97: $f3
    add c                                         ; $5c98: $81
    jr nz, jr_062_5c79                            ; $5c99: $20 $de

    push bc                                       ; $5c9b: $c5
    ld sp, hl                                     ; $5c9c: $f9
    and l                                         ; $5c9d: $a5
    jr c, @+$6b                                   ; $5c9e: $38 $69

    adc e                                         ; $5ca0: $8b
    ld b, d                                       ; $5ca1: $42
    xor $f3                                       ; $5ca2: $ee $f3
    ld a, [bc]                                    ; $5ca4: $0a
    dec [hl]                                      ; $5ca5: $35
    cp l                                          ; $5ca6: $bd
    ld b, [hl]                                    ; $5ca7: $46

jr_062_5ca8:
    ld [$3f65], a                                 ; $5ca8: $ea $65 $3f
    ld a, [de]                                    ; $5cab: $1a
    ld d, h                                       ; $5cac: $54
    dec d                                         ; $5cad: $15
    ld a, [hl-]                                   ; $5cae: $3a
    xor [hl]                                      ; $5caf: $ae
    add a                                         ; $5cb0: $87
    ld [bc], a                                    ; $5cb1: $02
    ld l, d                                       ; $5cb2: $6a
    jr nc, jr_062_5ca8                            ; $5cb3: $30 $f3

    ld a, [de]                                    ; $5cb5: $1a
    ld sp, hl                                     ; $5cb6: $f9
    dec b                                         ; $5cb7: $05
    db $e3                                        ; $5cb8: $e3
    sbc a                                         ; $5cb9: $9f
    rrca                                          ; $5cba: $0f
    rrca                                          ; $5cbb: $0f

jr_062_5cbc:
    inc h                                         ; $5cbc: $24
    ld [hl], d                                    ; $5cbd: $72
    ld c, d                                       ; $5cbe: $4a
    and b                                         ; $5cbf: $a0
    xor l                                         ; $5cc0: $ad
    ld b, b                                       ; $5cc1: $40
    db $ec                                        ; $5cc2: $ec
    inc e                                         ; $5cc3: $1c
    db $dd                                        ; $5cc4: $dd
    ld h, l                                       ; $5cc5: $65
    rla                                           ; $5cc6: $17
    and a                                         ; $5cc7: $a7
    ld h, $02                                     ; $5cc8: $26 $02
    pop bc                                        ; $5cca: $c1
    sub b                                         ; $5ccb: $90
    dec sp                                        ; $5ccc: $3b
    push af                                       ; $5ccd: $f5
    add h                                         ; $5cce: $84
    or l                                          ; $5ccf: $b5
    ld [bc], a                                    ; $5cd0: $02
    ld [$2fdf], sp                                ; $5cd1: $08 $df $2f
    rst $10                                       ; $5cd4: $d7
    ld b, b                                       ; $5cd5: $40
    ld e, a                                       ; $5cd6: $5f
    ei                                            ; $5cd7: $fb
    rst $08                                       ; $5cd8: $cf
    call nc, $caec                                ; $5cd9: $d4 $ec $ca
    ret nz                                        ; $5cdc: $c0

    db $ec                                        ; $5cdd: $ec
    and h                                         ; $5cde: $a4
    dec l                                         ; $5cdf: $2d
    ld a, [bc]                                    ; $5ce0: $0a
    add hl, sp                                    ; $5ce1: $39
    adc e                                         ; $5ce2: $8b
    dec hl                                        ; $5ce3: $2b
    scf                                           ; $5ce4: $37
    dec l                                         ; $5ce5: $2d
    add sp, -$0f                                  ; $5ce6: $e8 $f1
    ld l, a                                       ; $5ce8: $6f
    or l                                          ; $5ce9: $b5
    sbc h                                         ; $5cea: $9c
    and h                                         ; $5ceb: $a4
    sub c                                         ; $5cec: $91
    or [hl]                                       ; $5ced: $b6
    ld [bc], a                                    ; $5cee: $02

jr_062_5cef:
    or c                                          ; $5cef: $b1
    ld [hl], e                                    ; $5cf0: $73
    ld [hl], h                                    ; $5cf1: $74
    sub a                                         ; $5cf2: $97
    ld e, l                                       ; $5cf3: $5d
    sbc h                                         ; $5cf4: $9c
    sbc d                                         ; $5cf5: $9a
    jr z, jr_062_5cfa                             ; $5cf6: $28 $02

    pop bc                                        ; $5cf8: $c1
    sub b                                         ; $5cf9: $90

jr_062_5cfa:
    ld d, e                                       ; $5cfa: $53
    and c                                         ; $5cfb: $a1
    ld [hl], a                                    ; $5cfc: $77
    rla                                           ; $5cfd: $17
    jr nc, jr_062_5cef                            ; $5cfe: $30 $ef

    or h                                          ; $5d00: $b4
    inc de                                        ; $5d01: $13
    sub $0a                                       ; $5d02: $d6 $0a
    jr nz, jr_062_5d82                            ; $5d04: $20 $7c

    cp a                                          ; $5d06: $bf
    ld l, l                                       ; $5d07: $6d
    and $a9                                       ; $5d08: $e6 $a9
    and h                                         ; $5d0a: $a4
    call nz, Call_062_55ce                        ; $5d0b: $c4 $ce $55
    ld c, $c9                                     ; $5d0e: $0e $c9
    ld a, e                                       ; $5d10: $7b
    ld [bc], a                                    ; $5d11: $02
    xor $f3                                       ; $5d12: $ee $f3
    inc d                                         ; $5d14: $14
    push hl                                       ; $5d15: $e5
    ld l, c                                       ; $5d16: $69
    ld a, c                                       ; $5d17: $79
    ld c, a                                       ; $5d18: $4f
    ret nz                                        ; $5d19: $c0

    ld b, l                                       ; $5d1a: $45
    ld [hl], h                                    ; $5d1b: $74
    dec bc                                        ; $5d1c: $0b
    ld a, [hl-]                                   ; $5d1d: $3a
    rst $30                                       ; $5d1e: $f7
    ld e, b                                       ; $5d1f: $58
    sub $a1                                       ; $5d20: $d6 $a1
    ld a, b                                       ; $5d22: $78
    or l                                          ; $5d23: $b5
    cp c                                          ; $5d24: $b9
    jp z, Jump_062_7921                           ; $5d25: $ca $21 $79

    ld c, a                                       ; $5d28: $4f
    ret nz                                        ; $5d29: $c0

    ld a, l                                       ; $5d2a: $7d
    sbc [hl]                                      ; $5d2b: $9e
    and d                                         ; $5d2c: $a2
    inc a                                         ; $5d2d: $3c
    dec l                                         ; $5d2e: $2d
    cpl                                           ; $5d2f: $2f
    ld a, [bc]                                    ; $5d30: $0a
    cp c                                          ; $5d31: $b9
    ld a, [bc]                                    ; $5d32: $0a
    ld [c], a                                     ; $5d33: $e2
    push bc                                       ; $5d34: $c5
    ld d, $71                                     ; $5d35: $16 $71
    sub $55                                       ; $5d37: $d6 $55
    ld d, b                                       ; $5d39: $50
    jp z, $1a49                                   ; $5d3a: $ca $49 $1a

    rst $28                                       ; $5d3d: $ef
    or l                                          ; $5d3e: $b5
    add hl, sp                                    ; $5d3f: $39
    and e                                         ; $5d40: $a3
    sub b                                         ; $5d41: $90
    ld l, e                                       ; $5d42: $6b
    cp b                                          ; $5d43: $b8
    ld d, e                                       ; $5d44: $53
    ld b, l                                       ; $5d45: $45
    sbc h                                         ; $5d46: $9c
    and e                                         ; $5d47: $a3
    cp e                                          ; $5d48: $bb
    db $ec                                        ; $5d49: $ec
    ld [hl], d                                    ; $5d4a: $72

jr_062_5d4b:
    rst $00                                       ; $5d4b: $c7
    ret nc                                        ; $5d4c: $d0

    cp e                                          ; $5d4d: $bb
    ld [hl], a                                    ; $5d4e: $77
    ld e, c                                       ; $5d4f: $59
    sub b                                         ; $5d50: $90
    jp nc, $cc08                                  ; $5d51: $d2 $08 $cc

    pop hl                                        ; $5d54: $e1
    reti                                          ; $5d55: $d9


    ld h, e                                       ; $5d56: $63
    call c, Call_000_2789                         ; $5d57: $dc $89 $27
    xor h                                         ; $5d5a: $ac
    dec d                                         ; $5d5b: $15
    ld b, b                                       ; $5d5c: $40
    ld hl, sp+$7e                                 ; $5d5d: $f8 $7e
    ld bc, $a717                                  ; $5d5f: $01 $17 $a7
    ld h, $8a                                     ; $5d62: $26 $8a
    ld b, b                                       ; $5d64: $40
    jr nc, jr_062_5d4b                            ; $5d65: $30 $e4

    ld h, d                                       ; $5d67: $62
    db $10                                        ; $5d68: $10
    ld [hl], h                                    ; $5d69: $74
    ld l, d                                       ; $5d6a: $6a
    ld a, a                                       ; $5d6b: $7f
    ld bc, $f1ed                                  ; $5d6c: $01 $ed $f1
    rst $00                                       ; $5d6f: $c7
    ld [hl], e                                    ; $5d70: $73
    or h                                          ; $5d71: $b4
    cp a                                          ; $5d72: $bf
    rst $10                                       ; $5d73: $d7
    db $fc                                        ; $5d74: $fc
    ld [hl-], a                                   ; $5d75: $32
    or h                                          ; $5d76: $b4
    ret nc                                        ; $5d77: $d0

    halt                                          ; $5d78: $76
    ldh a, [$f7]                                  ; $5d79: $f0 $f7
    jr z, jr_062_5de5                             ; $5d7b: $28 $68

    or h                                          ; $5d7d: $b4
    cp a                                          ; $5d7e: $bf
    rst $20                                       ; $5d7f: $e7
    dec de                                        ; $5d80: $1b
    db $d3                                        ; $5d81: $d3

jr_062_5d82:
    inc hl                                        ; $5d82: $23
    db $dd                                        ; $5d83: $dd
    ld [hl], c                                    ; $5d84: $71
    ld h, h                                       ; $5d85: $64
    inc c                                         ; $5d86: $0c
    ld [hl], l                                    ; $5d87: $75
    xor b                                         ; $5d88: $a8
    ld c, a                                       ; $5d89: $4f
    ld b, d                                       ; $5d8a: $42
    or c                                          ; $5d8b: $b1
    ld d, h                                       ; $5d8c: $54
    db $10                                        ; $5d8d: $10
    db $f4                                        ; $5d8e: $f4
    ld a, [bc]                                    ; $5d8f: $0a
    dec [hl]                                      ; $5d90: $35
    add a                                         ; $5d91: $87
    ld d, b                                       ; $5d92: $50
    ld d, $85                                     ; $5d93: $16 $85
    ld h, h                                       ; $5d95: $64
    cp d                                          ; $5d96: $ba
    add l                                         ; $5d97: $85
    rst $00                                       ; $5d98: $c7
    ret nc                                        ; $5d99: $d0

    daa                                           ; $5d9a: $27
    and c                                         ; $5d9b: $a1
    sbc b                                         ; $5d9c: $98
    ld l, c                                       ; $5d9d: $69
    dec sp                                        ; $5d9e: $3b
    ld hl, sp+$7b                                 ; $5d9f: $f8 $7b

Call_062_5da1:
    inc d                                         ; $5da1: $14
    inc [hl]                                      ; $5da2: $34
    jp c, $d75f                                   ; $5da3: $da $5f $d7

    ld b, b                                       ; $5da6: $40
    rst $28                                       ; $5da7: $ef
    ld a, [de]                                    ; $5da8: $1a
    and l                                         ; $5da9: $a5
    ld c, h                                       ; $5daa: $4c
    db $db                                        ; $5dab: $db
    push bc                                       ; $5dac: $c5
    xor c                                         ; $5dad: $a9
    adc c                                         ; $5dae: $89
    ld [hl+], a                                   ; $5daf: $22
    db $10                                        ; $5db0: $10
    inc c                                         ; $5db1: $0c
    xor c                                         ; $5db2: $a9
    db $fd                                        ; $5db3: $fd
    dec b                                         ; $5db4: $05
    sub a                                         ; $5db5: $97
    inc c                                         ; $5db6: $0c
    call Call_062_407b                            ; $5db7: $cd $7b $40
    or b                                          ; $5dba: $b0
    or d                                          ; $5dbb: $b2
    rst $10                                       ; $5dbc: $d7
    add sp, -$72                                  ; $5dbd: $e8 $8e
    add a                                         ; $5dbf: $87
    and $81                                       ; $5dc0: $e6 $81
    ld d, d                                       ; $5dc2: $52
    sbc $a1                                       ; $5dc3: $de $a1
    xor [hl]                                      ; $5dc5: $ae
    ld h, c                                       ; $5dc6: $61
    jp nc, Jump_062_7209                          ; $5dc7: $d2 $09 $72

    cp a                                          ; $5dca: $bf
    db $ed                                        ; $5dcb: $ed
    ccf                                           ; $5dcc: $3f
    ld d, e                                       ; $5dcd: $53
    ld b, e                                       ; $5dce: $43
    dec de                                        ; $5dcf: $1b
    ld [$fd53], a                                 ; $5dd0: $ea $53 $fd
    and a                                         ; $5dd3: $a7
    pop de                                        ; $5dd4: $d1
    ld b, e                                       ; $5dd5: $43
    or e                                          ; $5dd6: $b3
    or $17                                        ; $5dd7: $f6 $17
    ld l, l                                       ; $5dd9: $6d
    and $91                                       ; $5dda: $e6 $91
    ccf                                           ; $5ddc: $3f
    ld b, [hl]                                    ; $5ddd: $46
    rrca                                          ; $5dde: $0f
    sub h                                         ; $5ddf: $94
    ld a, [c]                                     ; $5de0: $f2
    ld h, d                                       ; $5de1: $62
    ld c, d                                       ; $5de2: $4a
    sbc d                                         ; $5de3: $9a
    rst $30                                       ; $5de4: $f7

jr_062_5de5:
    add sp, $1d                                   ; $5de5: $e8 $1d
    ld a, [bc]                                    ; $5de7: $0a
    ld c, a                                       ; $5de8: $4f
    ld b, a                                       ; $5de9: $47
    rl b                                          ; $5dea: $cb $10
    ld a, [bc]                                    ; $5dec: $0a
    ld l, l                                       ; $5ded: $6d
    sub a                                         ; $5dee: $97
    dec sp                                        ; $5def: $3b
    add [hl]                                      ; $5df0: $86
    sbc $7d                                       ; $5df1: $de $7d
    cp a                                          ; $5df3: $bf
    sub a                                         ; $5df4: $97
    ld a, l                                       ; $5df5: $7d
    ld e, h                                       ; $5df6: $5c
    db $e4                                        ; $5df7: $e4
    jp z, Jump_000_200f                           ; $5df8: $ca $0f $20

    cp $62                                        ; $5dfb: $fe $62
    ld e, c                                       ; $5dfd: $59
    jp Jump_000_2345                              ; $5dfe: $c3 $45 $23


    ld l, b                                       ; $5e01: $68
    db $ed                                        ; $5e02: $ed
    cpl                                           ; $5e03: $2f
    rla                                           ; $5e04: $17
    add l                                         ; $5e05: $85
    xor h                                         ; $5e06: $ac
    xor h                                         ; $5e07: $ac
    ret                                           ; $5e08: $c9


    add c                                         ; $5e09: $81
    ld d, d                                       ; $5e0a: $52
    cp [hl]                                       ; $5e0b: $be
    ld [hl], a                                    ; $5e0c: $77
    ld l, c                                       ; $5e0d: $69
    ld l, d                                       ; $5e0e: $6a
    ld a, [hl+]                                   ; $5e0f: $2a
    rst $38                                       ; $5e10: $ff
    xor [hl]                                      ; $5e11: $ae
    db $f4                                        ; $5e12: $f4
    jp nc, $29dd                                  ; $5e13: $d2 $dd $29

    ld d, l                                       ; $5e16: $55
    ld b, b                                       ; $5e17: $40
    jp z, Jump_000_02fd                           ; $5e18: $ca $fd $02

    rlca                                          ; $5e1b: $07
    dec l                                         ; $5e1c: $2d
    ei                                            ; $5e1d: $fb
    sbc l                                         ; $5e1e: $9d
    add a                                         ; $5e1f: $87
    ld h, [hl]                                    ; $5e20: $66
    or $42                                        ; $5e21: $f6 $42
    db $ec                                        ; $5e23: $ec
    inc l                                         ; $5e24: $2c
    call $281c                                    ; $5e25: $cd $1c $28
    push hl                                       ; $5e28: $e5
    or l                                          ; $5e29: $b5
    db $eb                                        ; $5e2a: $eb
    ld d, c                                       ; $5e2b: $51
    call nc, $d2dd                                ; $5e2c: $d4 $dd $d2
    and e                                         ; $5e2f: $a3
    xor b                                         ; $5e30: $a8
    ld c, [hl]                                    ; $5e31: $4e
    push af                                       ; $5e32: $f5
    sbc a                                         ; $5e33: $9f
    ld e, [hl]                                    ; $5e34: $5e
    ld b, h                                       ; $5e35: $44
    ld c, l                                       ; $5e36: $4d
    sub b                                         ; $5e37: $90
    ld [hl-], a                                   ; $5e38: $32
    ld e, b                                       ; $5e39: $58
    dec hl                                        ; $5e3a: $2b
    add b                                         ; $5e3b: $80
    jr nc, @+$01                                  ; $5e3c: $30 $ff

    xor [hl]                                      ; $5e3e: $ae
    db $fd                                        ; $5e3f: $fd
    dec b                                         ; $5e40: $05
    db $ed                                        ; $5e41: $ed
    pop af                                        ; $5e42: $f1
    rst $00                                       ; $5e43: $c7
    ld [hl], e                                    ; $5e44: $73
    sub $1e                                       ; $5e45: $d6 $1e
    add a                                         ; $5e47: $87
    call nz, Call_062_532f                        ; $5e48: $c4 $2f $53
    cp d                                          ; $5e4b: $ba
    adc b                                         ; $5e4c: $88
    add a                                         ; $5e4d: $87
    and $55                                       ; $5e4e: $e6 $55
    ld h, l                                       ; $5e50: $65
    db $ed                                        ; $5e51: $ed
    cpl                                           ; $5e52: $2f
    rst $10                                       ; $5e53: $d7
    ret nc                                        ; $5e54: $d0

    ccf                                           ; $5e55: $3f
    ld l, l                                       ; $5e56: $6d
    ld l, b                                       ; $5e57: $68
    ld e, [hl]                                    ; $5e58: $5e
    and e                                         ; $5e59: $a3
    dec sp                                        ; $5e5a: $3b
    ld e, $67                                     ; $5e5b: $1e $67
    ret nz                                        ; $5e5d: $c0

    cp d                                          ; $5e5e: $ba
    rst $18                                       ; $5e5f: $df
    ld a, c                                       ; $5e60: $79
    and b                                         ; $5e61: $a0
    sub h                                         ; $5e62: $94
    ld [hl], a                                    ; $5e63: $77
    xor b                                         ; $5e64: $a8
    ld l, e                                       ; $5e65: $6b
    sbc b                                         ; $5e66: $98
    ld [hl], h                                    ; $5e67: $74
    add d                                         ; $5e68: $82
    call c, $d72f                                 ; $5e69: $dc $2f $d7
    ld b, b                                       ; $5e6c: $40
    rst $28                                       ; $5e6d: $ef
    ld a, [de]                                    ; $5e6e: $1a
    and l                                         ; $5e6f: $a5
    ld a, h                                       ; $5e70: $7c
    cp a                                          ; $5e71: $bf
    rst $10                                       ; $5e72: $d7
    ld a, h                                       ; $5e73: $7c
    ld b, l                                       ; $5e74: $45
    ld e, e                                       ; $5e75: $5b
    ei                                            ; $5e76: $fb
    rst $08                                       ; $5e77: $cf
    call nc, Call_000_3bdc                        ; $5e78: $d4 $dc $3b
    rst $18                                       ; $5e7b: $df
    sbc b                                         ; $5e7c: $98

Call_062_5e7d:
    ld e, $e9                                     ; $5e7d: $1e $e9
    adc [hl]                                      ; $5e7f: $8e
    inc de                                        ; $5e80: $13
    ld c, d                                       ; $5e81: $4a
    ld h, l                                       ; $5e82: $65
    xor a                                         ; $5e83: $af
    sbc c                                         ; $5e84: $99
    rst $30                                       ; $5e85: $f7
    dec bc                                        ; $5e86: $0b
    rlca                                          ; $5e87: $07
    dec l                                         ; $5e88: $2d
    ei                                            ; $5e89: $fb
    sbc l                                         ; $5e8a: $9d
    add a                                         ; $5e8b: $87
    ld h, [hl]                                    ; $5e8c: $66
    or $42                                        ; $5e8d: $f6 $42
    db $ec                                        ; $5e8f: $ec
    inc l                                         ; $5e90: $2c
    call $281c                                    ; $5e91: $cd $1c $28
    push hl                                       ; $5e94: $e5
    ld e, l                                       ; $5e95: $5d
    db $fd                                        ; $5e96: $fd
    ld h, e                                       ; $5e97: $63
    dec bc                                        ; $5e98: $0b
    pop de                                        ; $5e99: $d1
    cp $89                                        ; $5e9a: $fe $89
    push de                                       ; $5e9c: $d5
    xor c                                         ; $5e9d: $a9
    cp $d3                                        ; $5e9e: $fe $d3
    adc e                                         ; $5ea0: $8b
    xor b                                         ; $5ea1: $a8
    add hl, bc                                    ; $5ea2: $09
    ld d, d                                       ; $5ea3: $52
    ld b, $6b                                     ; $5ea4: $06 $6b
    dec b                                         ; $5ea6: $05
    db $10                                        ; $5ea7: $10
    and $df                                       ; $5ea8: $e6 $df
    or l                                          ; $5eaa: $b5
    cp a                                          ; $5eab: $bf
    ld d, a                                       ; $5eac: $57
    rst $38                                       ; $5ead: $ff
    ret c                                         ; $5eae: $d8

    ld b, d                                       ; $5eaf: $42
    or h                                          ; $5eb0: $b4
    ld a, a                                       ; $5eb1: $7f
    ld h, d                                       ; $5eb2: $62
    rst $20                                       ; $5eb3: $e7
    xor h                                         ; $5eb4: $ac
    call $e73c                                    ; $5eb5: $cd $3c $e7
    add sp, $61                                   ; $5eb8: $e8 $61
    ld sp, $d325                                  ; $5eba: $31 $25 $d3
    or e                                          ; $5ebd: $b3
    ldh [$2e], a                                  ; $5ebe: $e0 $2e
    ld c, [hl]                                    ; $5ec0: $4e
    ld c, l                                       ; $5ec1: $4d
    inc d                                         ; $5ec2: $14
    add c                                         ; $5ec3: $81
    ld h, b                                       ; $5ec4: $60
    ret z                                         ; $5ec5: $c8

    ei                                            ; $5ec6: $fb
    dec b                                         ; $5ec7: $05
    ld l, l                                       ; $5ec8: $6d
    and $91                                       ; $5ec9: $e6 $91
    xor $9e                                       ; $5ecb: $ee $9e
    ld [hl], e                                    ; $5ecd: $73
    rrca                                          ; $5ece: $0f
    ret z                                         ; $5ecf: $c8

    ld [hl+], a                                   ; $5ed0: $22
    db $d3                                        ; $5ed1: $d3
    ei                                            ; $5ed2: $fb
    cp l                                          ; $5ed3: $bd
    inc bc                                        ; $5ed4: $03
    ld l, $ab                                     ; $5ed5: $2e $ab
    ld c, d                                       ; $5ed7: $4a
    rst $28                                       ; $5ed8: $ef
    db $dd                                        ; $5ed9: $dd
    inc hl                                        ; $5eda: $23
    ld a, a                                       ; $5edb: $7f
    db $ec                                        ; $5edc: $ec
    dec d                                         ; $5edd: $15
    ld a, d                                       ; $5ede: $7a
    ld c, b                                       ; $5edf: $48
    sbc $03                                       ; $5ee0: $de $03
    ld h, l                                       ; $5ee2: $65
    adc a                                         ; $5ee3: $8f
    db $d3                                        ; $5ee4: $d3
    db $d3                                        ; $5ee5: $d3
    sbc a                                         ; $5ee6: $9f
    ld e, a                                       ; $5ee7: $5f
    cp h                                          ; $5ee8: $bc
    rst $00                                       ; $5ee9: $c7
    cp b                                          ; $5eea: $b8
    rst $08                                       ; $5eeb: $cf
    xor e                                         ; $5eec: $ab
    db $fc                                        ; $5eed: $fc
    dec b                                         ; $5eee: $05
    xor e                                         ; $5eef: $ab
    ld b, a                                       ; $5ef0: $47
    ld [hl], a                                    ; $5ef1: $77
    ld c, $2d                                     ; $5ef2: $0e $2d
    ei                                            ; $5ef4: $fb
    ld de, $ee5b                                  ; $5ef5: $11 $5b $ee
    rla                                           ; $5ef8: $17
    db $ed                                        ; $5ef9: $ed
    ld sp, $a1d4                                  ; $5efa: $31 $d4 $a1
    ld a, c                                       ; $5efd: $79
    pop af                                        ; $5efe: $f1
    rst $08                                       ; $5eff: $cf
    ld [hl], l                                    ; $5f00: $75
    adc l                                         ; $5f01: $8d
    ld d, d                                       ; $5f02: $52
    ld b, [hl]                                    ; $5f03: $46
    rst $10                                       ; $5f04: $d7
    ld b, l                                       ; $5f05: $45
    ld hl, $5087                                  ; $5f06: $21 $87 $50
    ld l, b                                       ; $5f09: $68
    inc hl                                        ; $5f0a: $23
    ld a, a                                       ; $5f0b: $7f
    adc h                                         ; $5f0c: $8c
    ld e, [hl]                                    ; $5f0d: $5e
    inc c                                         ; $5f0e: $0c
    db $e3                                        ; $5f0f: $e3
    rst $18                                       ; $5f10: $df
    ldh [$59], a                                  ; $5f11: $e0 $59
    ld d, b                                       ; $5f13: $50
    db $f4                                        ; $5f14: $f4
    push bc                                       ; $5f15: $c5
    sub h                                         ; $5f16: $94
    ld c, h                                       ; $5f17: $4c
    rst $18                                       ; $5f18: $df
    cpl                                           ; $5f19: $2f
    rlca                                          ; $5f1a: $07
    dec l                                         ; $5f1b: $2d
    ei                                            ; $5f1c: $fb
    sbc l                                         ; $5f1d: $9d
    add a                                         ; $5f1e: $87
    ld h, [hl]                                    ; $5f1f: $66
    or $42                                        ; $5f20: $f6 $42
    db $ec                                        ; $5f22: $ec
    inc l                                         ; $5f23: $2c
    call $281c                                    ; $5f24: $cd $1c $28
    push hl                                       ; $5f27: $e5
    dec e                                         ; $5f28: $1d
    ld [$261a], a                                 ; $5f29: $ea $1a $26
    sbc l                                         ; $5f2c: $9d
    jr nz, jr_062_5f59                            ; $5f2d: $20 $2a

    db $f4                                        ; $5f2f: $f4
    xor $02                                       ; $5f30: $ee $02
    and $ba                                       ; $5f32: $e6 $ba
    ld d, [hl]                                    ; $5f34: $56
    nop                                           ; $5f35: $00
    ld h, c                                       ; $5f36: $61
    cp $fd                                        ; $5f37: $fe $fd
    sbc $45                                       ; $5f39: $de $45
    ld hl, $3557                                  ; $5f3b: $21 $57 $35
    or c                                          ; $5f3e: $b1
    dec b                                         ; $5f3f: $05
    cp l                                          ; $5f40: $bd
    ld h, [hl]                                    ; $5f41: $66
    ld c, $c6                                     ; $5f42: $0e $c6
    ld c, c                                       ; $5f44: $49
    ld d, c                                       ; $5f45: $51
    adc e                                         ; $5f46: $8b
    ld b, c                                       ; $5f47: $41
    ret nc                                        ; $5f48: $d0

    cp c                                          ; $5f49: $b9
    ld b, e                                       ; $5f4a: $43
    ld e, l                                       ; $5f4b: $5d
    jp Jump_000_13a4                              ; $5f4c: $c3 $a4 $13


    ld h, h                                       ; $5f4f: $64

Call_062_5f50:
    ld a, [hl+]                                   ; $5f50: $2a
    db $f4                                        ; $5f51: $f4
    xor $02                                       ; $5f52: $ee $02
    ld l, [hl]                                    ; $5f54: $6e
    dec b                                         ; $5f55: $05
    push af                                       ; $5f56: $f5
    cp e                                          ; $5f57: $bb
    push hl                                       ; $5f58: $e5

jr_062_5f59:
    ld a, [hl]                                    ; $5f59: $7e
    ld bc, $c1d7                                  ; $5f5a: $01 $d7 $c1
    jp nc, $8c45                                  ; $5f5d: $d2 $45 $8c

    sbc $63                                       ; $5f60: $de $63
    inc e                                         ; $5f62: $1c
    ld b, d                                       ; $5f63: $42
    and c                                         ; $5f64: $a1
    xor l                                         ; $5f65: $ad
    db $fd                                        ; $5f66: $fd
    ld h, a                                       ; $5f67: $67
    ld l, d                                       ; $5f68: $6a
    ld l, b                                       ; $5f69: $68
    dec bc                                        ; $5f6a: $0b
    ld h, l                                       ; $5f6b: $65
    xor b                                         ; $5f6c: $a8
    xor a                                         ; $5f6d: $af
    add $50                                       ; $5f6e: $c6 $50
    ret c                                         ; $5f70: $d8

    add sp, -$7b                                  ; $5f71: $e8 $85
    xor d                                         ; $5f73: $aa
    db $fd                                        ; $5f74: $fd
    dec b                                         ; $5f75: $05
    rst $10                                       ; $5f76: $d7
    ld a, h                                       ; $5f77: $7c
    or l                                          ; $5f78: $b5
    xor d                                         ; $5f79: $aa
    ld a, [hl]                                    ; $5f7a: $7e
    rra                                           ; $5f7b: $1f
    ld [$7f23], a                                 ; $5f7c: $ea $23 $7f
    ld l, h                                       ; $5f7f: $6c
    jp c, Jump_062_7fda                           ; $5f80: $da $da $7f

    and [hl]                                      ; $5f83: $a6
    and $de                                       ; $5f84: $e6 $de
    push hl                                       ; $5f86: $e5
    ld a, [$1d1a]                                 ; $5f87: $fa $1a $1d
    ld h, d                                       ; $5f8a: $62
    rst $20                                       ; $5f8b: $e7
    ret nc                                        ; $5f8c: $d0

    or e                                          ; $5f8d: $b3
    and b                                         ; $5f8e: $a0
    add sp, -$15                                  ; $5f8f: $e8 $eb
    ld b, [hl]                                    ; $5f91: $46
    and a                                         ; $5f92: $a7
    daa                                           ; $5f93: $27
    sub h                                         ; $5f94: $94
    jp z, Jump_000_335e                           ; $5f95: $ca $5e $33

    rst $28                                       ; $5f98: $ef
    rla                                           ; $5f99: $17
    rla                                           ; $5f9a: $17
    rlca                                          ; $5f9b: $07
    db $e4                                        ; $5f9c: $e4
    ld b, l                                       ; $5f9d: $45
    ld hl, $b52b                                  ; $5f9e: $21 $2b $b5
    adc h                                         ; $5fa1: $8c
    ld [hl], h                                    ; $5fa2: $74
    adc [hl]                                      ; $5fa3: $8e
    and c                                         ; $5fa4: $a1
    xor a                                         ; $5fa5: $af
    ld [bc], a                                    ; $5fa6: $02
    ld d, [hl]                                    ; $5fa7: $56
    and [hl]                                      ; $5fa8: $a6
    db $ed                                        ; $5fa9: $ed
    jp z, $ecc0                                   ; $5faa: $ca $c0 $ec

    cp h                                          ; $5fad: $bc
    ld [hl], a                                    ; $5fae: $77
    ret nc                                        ; $5faf: $d0

    ld [hl-], a                                   ; $5fb0: $32
    ld [hl], h                                    ; $5fb1: $74
    ld l, $fe                                     ; $5fb2: $2e $fe
    add hl, sp                                    ; $5fb4: $39
    ld d, b                                       ; $5fb5: $50
    jp z, Jump_062_5093                           ; $5fb6: $ca $93 $50

    call z, $bcfb                                 ; $5fb9: $cc $fb $bc

Call_062_5fbc:
    jp z, $bbd0                                   ; $5fbc: $ca $d0 $bb

    rla                                           ; $5fbf: $17
    ld e, d                                       ; $5fc0: $5a
    ld a, e                                       ; $5fc1: $7b
    ld [bc], a                                    ; $5fc2: $02
    ld l, $d4                                     ; $5fc3: $2e $d4
    ei                                            ; $5fc5: $fb
    dec b                                         ; $5fc6: $05
    rst $20                                       ; $5fc7: $e7
    dec de                                        ; $5fc8: $1b
    db $d3                                        ; $5fc9: $d3
    inc hl                                        ; $5fca: $23
    db $dd                                        ; $5fcb: $dd
    ld [hl], c                                    ; $5fcc: $71
    ld b, d                                       ; $5fcd: $42
    xor c                                         ; $5fce: $a9
    db $ec                                        ; $5fcf: $ec
    dec [hl]                                      ; $5fd0: $35
    sub e                                         ; $5fd1: $93
    or [hl]                                       ; $5fd2: $b6
    or $9f                                        ; $5fd3: $f6 $9f
    xor c                                         ; $5fd5: $a9
    reti                                          ; $5fd6: $d9


    sub l                                         ; $5fd7: $95
    add c                                         ; $5fd8: $81
    reti                                          ; $5fd9: $d9


    ld a, c                                       ; $5fda: $79
    xor a                                         ; $5fdb: $af
    dec a                                         ; $5fdc: $3d
    add [hl]                                      ; $5fdd: $86
    ld a, [hl-]                                   ; $5fde: $3a
    call nc, $3bf7                                ; $5fdf: $d4 $f7 $3b
    rst $10                                       ; $5fe2: $d7
    and $62                                       ; $5fe3: $e6 $62
    dec bc                                        ; $5fe5: $0b
    ld a, [hl-]                                   ; $5fe6: $3a
    rst $00                                       ; $5fe7: $c7
    ret nc                                        ; $5fe8: $d0

    dec de                                        ; $5fe9: $1b
    cp a                                          ; $5fea: $bf
    sbc b                                         ; $5feb: $98

jr_062_5fec:
    or [hl]                                       ; $5fec: $b6
    rst $00                                       ; $5fed: $c7
    ld [c], a                                     ; $5fee: $e2
    inc e                                         ; $5fef: $1c
    db $dd                                        ; $5ff0: $dd
    push hl                                       ; $5ff1: $e5
    ld a, [hl]                                    ; $5ff2: $7e
    ld bc, $d0d7                                  ; $5ff3: $01 $d7 $d0
    rst $38                                       ; $5ff6: $ff
    xor $fb                                       ; $5ff7: $ee $fb
    ld e, $9a                                     ; $5ff9: $1e $9a
    rst $20                                       ; $5ffb: $e7
    inc e                                         ; $5ffc: $1c
    jr z, @-$19                                   ; $5ffd: $28 $e5

    ld b, l                                       ; $5fff: $45
    ld hl, $4611                                  ; $6000: $21 $11 $46
    ld [hl], a                                    ; $6003: $77
    add hl, de                                    ; $6004: $19
    jr z, jr_062_5fec                             ; $6005: $28 $e5

    or l                                          ; $6007: $b5
    sub d                                         ; $6008: $92
    ld a, [de]                                    ; $6009: $1a
    dec de                                        ; $600a: $1b
    ld a, l                                       ; $600b: $7d
    cp a                                          ; $600c: $bf
    db $ed                                        ; $600d: $ed
    and [hl]                                      ; $600e: $a6
    db $d3                                        ; $600f: $d3
    sub $fe                                       ; $6010: $d6 $fe
    inc sp                                        ; $6012: $33
    dec [hl]                                      ; $6013: $35
    rst $30                                       ; $6014: $f7
    dec bc                                        ; $6015: $0b
    rlca                                          ; $6016: $07
    ld e, h                                       ; $6017: $5c
    and [hl]                                      ; $6018: $a6
    cp [hl]                                       ; $6019: $be
    xor h                                         ; $601a: $ac
    ld a, d                                       ; $601b: $7a
    sbc a                                         ; $601c: $9f
    add a                                         ; $601d: $87
    ld a, [$539c]                                 ; $601e: $fa $9c $53
    pop hl                                        ; $6021: $e1
    ld a, c                                       ; $6022: $79
    call z, $e863                                 ; $6023: $cc $63 $e8
    xor e                                         ; $6026: $ab
    ld [$efa3], a                                 ; $6027: $ea $a3 $ef
    dec e                                         ; $602a: $1d
    ld d, d                                       ; $602b: $52
    cp a                                          ; $602c: $bf
    adc a                                         ; $602d: $8f
    xor $32                                       ; $602e: $ee $32
    jp nc, Jump_062_7bbf                          ; $6030: $d2 $bf $7b

    ld [$9ce5], sp                                ; $6033: $08 $e5 $9c
    rla                                           ; $6036: $17
    rlca                                          ; $6037: $07
    ld a, $6d                                     ; $6038: $3e $6d
    db $fc                                        ; $603a: $fc
    sub l                                         ; $603b: $95
    or $17                                        ; $603c: $f6 $17
    add a                                         ; $603e: $87
    sbc d                                         ; $603f: $9a
    ld hl, sp-$7b                                 ; $6040: $f8 $85
    or [hl]                                       ; $6042: $b6
    jp c, Jump_062_445c                           ; $6043: $da $5c $44

    db $ed                                        ; $6046: $ed
    xor [hl]                                      ; $6047: $ae
    ld b, e                                       ; $6048: $43
    di                                            ; $6049: $f3
    ld h, d                                       ; $604a: $62
    xor b                                         ; $604b: $a8
    cp h                                          ; $604c: $bc
    add [hl]                                      ; $604d: $86
    ld sp, $bf7d                                  ; $604e: $31 $7d $bf
    rst $10                                       ; $6051: $d7
    ld a, h                                       ; $6052: $7c
    ld b, l                                       ; $6053: $45
    db $db                                        ; $6054: $db
    di                                            ; $6055: $f3
    pop af                                        ; $6056: $f1
    ccf                                           ; $6057: $3f
    cp e                                          ; $6058: $bb
    ld [hl-], a                                   ; $6059: $32
    inc a                                         ; $605a: $3c
    ld d, c                                       ; $605b: $51
    ld e, d                                       ; $605c: $5a
    ld [hl], e                                    ; $605d: $73
    cp a                                          ; $605e: $bf
    sub a                                         ; $605f: $97
    add [hl]                                      ; $6060: $86
    ld h, a                                       ; $6061: $67
    ld d, $74                                     ; $6062: $16 $74
    add a                                         ; $6064: $87
    or d                                          ; $6065: $b2
    ld d, [hl]                                    ; $6066: $56
    ld [hl], e                                    ; $6067: $73
    dec c                                         ; $6068: $0d
    ld d, a                                       ; $6069: $57
    ld l, d                                       ; $606a: $6a
    sbc c                                         ; $606b: $99
    inc [hl]                                      ; $606c: $34
    ld [hl], e                                    ; $606d: $73
    dec [hl]                                      ; $606e: $35
    inc a                                         ; $606f: $3c
    inc hl                                        ; $6070: $23
    db $dd                                        ; $6071: $dd
    dec hl                                        ; $6072: $2b
    rst $18                                       ; $6073: $df
    cpl                                           ; $6074: $2f
    ld d, a                                       ; $6075: $57
    ld d, d                                       ; $6076: $52
    add h                                         ; $6077: $84
    rst $30                                       ; $6078: $f7
    and e                                         ; $6079: $a3
    ld hl, $7d94                                  ; $607a: $21 $94 $7d
    sbc [hl]                                      ; $607d: $9e
    add d                                         ; $607e: $82
    ld d, d                                       ; $607f: $52
    inc a                                         ; $6080: $3c
    db $10                                        ; $6081: $10
    cp h                                          ; $6082: $bc
    ld e, a                                       ; $6083: $5f
    ld l, l                                       ; $6084: $6d
    ld a, [$66a2]                                 ; $6085: $fa $a2 $66
    xor $dc                                       ; $6088: $ee $dc
    inc de                                        ; $608a: $13
    ld [hl], a                                    ; $608b: $77
    adc b                                         ; $608c: $88
    jp c, $eae3                                   ; $608d: $da $e3 $ea

    jp nc, $bfb5                                  ; $6090: $d2 $b5 $bf

    ld l, l                                       ; $6093: $6d
    ld a, [$809e]                                 ; $6094: $fa $9e $80
    db $fc                                        ; $6097: $fc
    adc e                                         ; $6098: $8b
    di                                            ; $6099: $f3
    xor h                                         ; $609a: $ac
    rla                                           ; $609b: $17
    ld l, l                                       ; $609c: $6d
    ld a, [$8b9c]                                 ; $609d: $fa $9c $8b
    db $f4                                        ; $60a0: $f4
    adc [hl]                                      ; $60a1: $8e
    ld a, [hl+]                                   ; $60a2: $2a
    inc a                                         ; $60a3: $3c
    adc a                                         ; $60a4: $8f
    ld h, l                                       ; $60a5: $65
    and h                                         ; $60a6: $a4
    ld a, e                                       ; $60a7: $7b
    inc hl                                        ; $60a8: $23
    adc l                                         ; $60a9: $8d
    xor h                                         ; $60aa: $ac
    db $fd                                        ; $60ab: $fd
    dec b                                         ; $60ac: $05
    add a                                         ; $60ad: $87
    ld hl, sp-$4d                                 ; $60ae: $f8 $b3
    ld e, [hl]                                    ; $60b0: $5e
    ld [hl], a                                    ; $60b1: $77
    db $fc                                        ; $60b2: $fc
    xor [hl]                                      ; $60b3: $ae
    push bc                                       ; $60b4: $c5
    jp z, Jump_062_7c9a                           ; $60b5: $ca $9a $7c

    ld bc, $3457                                  ; $60b8: $01 $57 $34
    add sp, $56                                   ; $60bb: $e8 $56
    db $fc                                        ; $60bd: $fc
    ld [bc], a                                    ; $60be: $02
    sub a                                         ; $60bf: $97
    ld c, b                                       ; $60c0: $48
    ld c, c                                       ; $60c1: $49
    inc hl                                        ; $60c2: $23
    ld e, b                                       ; $60c3: $58
    ld l, d                                       ; $60c4: $6a
    or a                                          ; $60c5: $b7
    xor d                                         ; $60c6: $aa
    and b                                         ; $60c7: $a0
    add d                                         ; $60c8: $82
    cp h                                          ; $60c9: $bc
    rla                                           ; $60ca: $17
    add l                                         ; $60cb: $85
    ld c, $61                                     ; $60cc: $0e $61
    rlca                                          ; $60ce: $07
    ld a, a                                       ; $60cf: $7f
    add c                                         ; $60d0: $81
    rla                                           ; $60d1: $17
    rla                                           ; $60d2: $17
    add l                                         ; $60d3: $85
    ld c, $61                                     ; $60d4: $0e $61
    rst $10                                       ; $60d6: $d7
    inc h                                         ; $60d7: $24
    or h                                          ; $60d8: $b4
    ld a, [hl-]                                   ; $60d9: $3a
    db $10                                        ; $60da: $10
    push de                                       ; $60db: $d5
    db $eb                                        ; $60dc: $eb
    dec bc                                        ; $60dd: $0b
    rla                                           ; $60de: $17
    ei                                            ; $60df: $fb
    ld e, c                                       ; $60e0: $59
    ld l, l                                       ; $60e1: $6d
    ld b, c                                       ; $60e2: $41
    ld a, a                                       ; $60e3: $7f
    ld bc, $4397                                  ; $60e4: $01 $97 $43
    db $ec                                        ; $60e7: $ec
    xor a                                         ; $60e8: $af
    cp a                                          ; $60e9: $bf
    rla                                           ; $60ea: $17
    ld h, [hl]                                    ; $60eb: $66
    db $f4                                        ; $60ec: $f4
    inc de                                        ; $60ed: $13
    and h                                         ; $60ee: $a4
    cp h                                          ; $60ef: $bc
    sub a                                         ; $60f0: $97
    ld d, e                                       ; $60f1: $53
    ld a, [hl+]                                   ; $60f2: $2a
    ld a, e                                       ; $60f3: $7b
    sub a                                         ; $60f4: $97
    ld b, e                                       ; $60f5: $43
    db $ec                                        ; $60f6: $ec
    xor a                                         ; $60f7: $af
    cp a                                          ; $60f8: $bf
    add a                                         ; $60f9: $87
    xor b                                         ; $60fa: $a8
    dec a                                         ; $60fb: $3d
    xor [hl]                                      ; $60fc: $ae
    ld l, $fd                                     ; $60fd: $2e $fd
    dec b                                         ; $60ff: $05
    rla                                           ; $6100: $17
    adc d                                         ; $6101: $8a
    or e                                          ; $6102: $b3
    ret nz                                        ; $6103: $c0

    dec bc                                        ; $6104: $0b
    rlca                                          ; $6105: $07
    ld a, a                                       ; $6106: $7f
    add c                                         ; $6107: $81
    rla                                           ; $6108: $17
    add a                                         ; $6109: $87
    ld e, b                                       ; $610a: $58
    sub e                                         ; $610b: $93
    jp z, $172f                                   ; $610c: $ca $2f $17

    add l                                         ; $610f: $85
    xor h                                         ; $6110: $ac
    pop af                                        ; $6111: $f1
    rst $08                                       ; $6112: $cf
    rla                                           ; $6113: $17
    db $ed                                        ; $6114: $ed
    ld a, d                                       ; $6115: $7a
    ld [hl-], a                                   ; $6116: $32
    inc d                                         ; $6117: $14
    jp nc, Jump_000_02f8                          ; $6118: $d2 $f8 $02

    rlca                                          ; $611b: $07
    ld a, a                                       ; $611c: $7f
    add c                                         ; $611d: $81
    xor d                                         ; $611e: $aa
    ld d, [hl]                                    ; $611f: $56
    ld e, c                                       ; $6120: $59
    sub e                                         ; $6121: $93
    jp z, Jump_000_072f                           ; $6122: $ca $2f $07

    ld a, a                                       ; $6125: $7f
    add c                                         ; $6126: $81
    xor d                                         ; $6127: $aa
    ld d, $85                                     ; $6128: $16 $85
    xor h                                         ; $612a: $ac
    pop af                                        ; $612b: $f1
    rst $08                                       ; $612c: $cf
    rla                                           ; $612d: $17
    rst $20                                       ; $612e: $e7
    sbc [hl]                                      ; $612f: $9e
    ld a, b                                       ; $6130: $78
    db $fc                                        ; $6131: $fc
    cp c                                          ; $6132: $b9
    daa                                           ; $6133: $27
    db $ed                                        ; $6134: $ed
    dec b                                         ; $6135: $05
    rla                                           ; $6136: $17
    pop de                                        ; $6137: $d1
    sbc l                                         ; $6138: $9d
    ld [hl-], a                                   ; $6139: $32
    inc b                                         ; $613a: $04
    pop af                                        ; $613b: $f1
    ret z                                         ; $613c: $c8

    cpl                                           ; $613d: $2f
    ld e, b                                       ; $613e: $58
    sub l                                         ; $613f: $95
    di                                            ; $6140: $f3
    dec b                                         ; $6141: $05
    ld l, l                                       ; $6142: $6d
    ld sp, hl                                     ; $6143: $f9
    adc e                                         ; $6144: $8b
    xor e                                         ; $6145: $ab
    ld [bc], a                                    ; $6146: $02
    pop bc                                        ; $6147: $c1
    ld c, d                                       ; $6148: $4a
    ld a, [hl]                                    ; $6149: $7e
    pop bc                                        ; $614a: $c1
    xor d                                         ; $614b: $aa
    sbc h                                         ; $614c: $9c
    cpl                                           ; $614d: $2f
    add a                                         ; $614e: $87
    db $f4                                        ; $614f: $f4
    sub [hl]                                      ; $6150: $96
    sub e                                         ; $6151: $93
    db $fc                                        ; $6152: $fc
    add d                                         ; $6153: $82
    ld d, l                                       ; $6154: $55
    add hl, sp                                    ; $6155: $39
    ld e, a                                       ; $6156: $5f
    ld l, l                                       ; $6157: $6d
    ld sp, hl                                     ; $6158: $f9
    adc e                                         ; $6159: $8b
    ld d, l                                       ; $615a: $55
    rrca                                          ; $615b: $0f
    db $e4                                        ; $615c: $e4
    rla                                           ; $615d: $17
    xor h                                         ; $615e: $ac
    jp z, $02f9                                   ; $615f: $ca $f9 $02

    rla                                           ; $6162: $17
    add c                                         ; $6163: $81
    inc d                                         ; $6164: $14
    and a                                         ; $6165: $a7
    ld hl, sp+$21                                 ; $6166: $f8 $21
    cp a                                          ; $6168: $bf
    ld h, b                                       ; $6169: $60
    ld d, l                                       ; $616a: $55
    adc $17                                       ; $616b: $ce $17
    rst $10                                       ; $616d: $d7
    ld h, h                                       ; $616e: $64
    add sp, -$78                                  ; $616f: $e8 $88
    pop hl                                        ; $6171: $e1
    xor c                                         ; $6172: $a9
    db $e4                                        ; $6173: $e4
    rla                                           ; $6174: $17
    xor h                                         ; $6175: $ac
    jp z, $02f9                                   ; $6176: $ca $f9 $02

    rst $10                                       ; $6179: $d7
    and h                                         ; $617a: $a4
    and [hl]                                      ; $617b: $a6
    ld [hl], a                                    ; $617c: $77
    ld d, a                                       ; $617d: $57
    cp $71                                        ; $617e: $fe $71
    xor l                                         ; $6180: $ad
    ld sp, $7148                                  ; $6181: $31 $48 $71
    sub d                                         ; $6184: $92
    ld e, a                                       ; $6185: $5f
    or b                                          ; $6186: $b0
    ld a, [hl+]                                   ; $6187: $2a
    rst $20                                       ; $6188: $e7
    dec bc                                        ; $6189: $0b
    rla                                           ; $618a: $17
    pop de                                        ; $618b: $d1
    sbc l                                         ; $618c: $9d
    ld [hl-], a                                   ; $618d: $32
    inc b                                         ; $618e: $04
    add hl, de                                    ; $618f: $19
    ld sp, hl                                     ; $6190: $f9
    ld sp, hl                                     ; $6191: $f9
    dec b                                         ; $6192: $05
    add a                                         ; $6193: $87
    ld e, d                                       ; $6194: $5a
    add b                                         ; $6195: $80
    ld [hl], l                                    ; $6196: $75
    db $e4                                        ; $6197: $e4
    rst $20                                       ; $6198: $e7
    rla                                           ; $6199: $17
    add a                                         ; $619a: $87
    db $f4                                        ; $619b: $f4
    sub [hl]                                      ; $619c: $96
    ld [hl], e                                    ; $619d: $73
    or l                                          ; $619e: $b5
    dec b                                         ; $619f: $05
    ld e, b                                       ; $61a0: $58
    ld b, a                                       ; $61a1: $47
    ld a, [hl]                                    ; $61a2: $7e
    ld a, [hl]                                    ; $61a3: $7e
    ld bc, $8517                                  ; $61a4: $01 $17 $85
    inc [hl]                                      ; $61a7: $34
    adc a                                         ; $61a8: $8f
    db $fc                                        ; $61a9: $fc
    db $fc                                        ; $61aa: $fc
    ld [bc], a                                    ; $61ab: $02
    ld d, a                                       ; $61ac: $57
    call nz, $aace                                ; $61ad: $c4 $ce $aa
    or a                                          ; $61b0: $b7
    sbc h                                         ; $61b1: $9c
    inc hl                                        ; $61b2: $23
    ccf                                           ; $61b3: $3f
    cp a                                          ; $61b4: $bf
    db $ed                                        ; $61b5: $ed
    ld d, h                                       ; $61b6: $54
    ld a, [$66c8]                                 ; $61b7: $fa $c8 $66
    ld [c], a                                     ; $61ba: $e2
    ret z                                         ; $61bb: $c8

    rst $08                                       ; $61bc: $cf
    cpl                                           ; $61bd: $2f
    ld d, a                                       ; $61be: $57
    or h                                          ; $61bf: $b4
    jr jr_062_61e0                                ; $61c0: $18 $1e

    ld e, l                                       ; $61c2: $5d
    ld b, [hl]                                    ; $61c3: $46
    ld a, [hl]                                    ; $61c4: $7e
    ld a, [hl]                                    ; $61c5: $7e
    ld bc, $fcd7                                  ; $61c6: $01 $d7 $fc
    ld [hl-], a                                   ; $61c9: $32
    inc b                                         ; $61ca: $04
    sbc c                                         ; $61cb: $99
    ld a, [$96ad]                                 ; $61cc: $fa $ad $96
    rst $30                                       ; $61cf: $f7
    and e                                         ; $61d0: $a3
    rla                                           ; $61d1: $17
    rst $20                                       ; $61d2: $e7
    push af                                       ; $61d3: $f5
    rlca                                          ; $61d4: $07
    inc b                                         ; $61d5: $04
    db $dd                                        ; $61d6: $dd
    and c                                         ; $61d7: $a1
    db $ec                                        ; $61d8: $ec
    ld h, a                                       ; $61d9: $67
    jp $ac74                                      ; $61da: $c3 $74 $ac


    ld [$5ab7], a                                 ; $61dd: $ea $b7 $5a

jr_062_61e0:
    ld a, [hl]                                    ; $61e0: $7e
    ld bc, $81d7                                  ; $61e1: $01 $d7 $81
    or b                                          ; $61e4: $b0
    ld d, e                                       ; $61e5: $53
    jp hl                                         ; $61e6: $e9


    call z, $017e                                 ; $61e7: $cc $7e $01
    add a                                         ; $61ea: $87
    db $f4                                        ; $61eb: $f4
    sub [hl]                                      ; $61ec: $96
    ld [hl], e                                    ; $61ed: $73
    ccf                                           ; $61ee: $3f
    dec de                                        ; $61ef: $1b
    and [hl]                                      ; $61f0: $a6
    ld h, e                                       ; $61f1: $63
    ld d, l                                       ; $61f2: $55
    cp a                                          ; $61f3: $bf
    push de                                       ; $61f4: $d5
    ld a, [c]                                     ; $61f5: $f2
    dec bc                                        ; $61f6: $0b
    add a                                         ; $61f7: $87
    db $f4                                        ; $61f8: $f4
    sub [hl]                                      ; $61f9: $96
    ld [hl], e                                    ; $61fa: $73
    ld sp, $3b08                                  ; $61fb: $31 $08 $3b
    push de                                       ; $61fe: $d5
    ld l, a                                       ; $61ff: $6f
    or l                                          ; $6200: $b5
    db $fc                                        ; $6201: $fc
    ld [bc], a                                    ; $6202: $02
    add a                                         ; $6203: $87
    jr @-$1c                                      ; $6204: $18 $e2

    ld c, [hl]                                    ; $6206: $4e
    ret                                           ; $6207: $c9


    inc [hl]                                      ; $6208: $34
    ld d, $c7                                     ; $6209: $16 $c7
    ld e, a                                       ; $620b: $5f
    sub b                                         ; $620c: $90
    sbc l                                         ; $620d: $9d
    cpl                                           ; $620e: $2f
    add a                                         ; $620f: $87
    call nz, Call_062_4395                        ; $6210: $c4 $95 $43
    ld a, $55                                     ; $6213: $3e $55
    db $fd                                        ; $6215: $fd
    ld d, [hl]                                    ; $6216: $56
    sra a                                         ; $6217: $cb $2f
    rla                                           ; $6219: $17
    pop de                                        ; $621a: $d1
    sbc l                                         ; $621b: $9d
    ld [hl-], a                                   ; $621c: $32
    inc b                                         ; $621d: $04
    ld e, [hl]                                    ; $621e: $5e
    add e                                         ; $621f: $83
    jp nc, Jump_000_2fd9                          ; $6220: $d2 $d9 $2f

    sub a                                         ; $6223: $97
    ld d, c                                       ; $6224: $51
    ret nc                                        ; $6225: $d0

    reti                                          ; $6226: $d9


    and b                                         ; $6227: $a0
    ld [hl], h                                    ; $6228: $74
    or $0b                                        ; $6229: $f6 $0b
    rla                                           ; $622b: $17
    add c                                         ; $622c: $81
    inc l                                         ; $622d: $2c
    ld a, [bc]                                    ; $622e: $0a
    ld sp, hl                                     ; $622f: $f9
    xor h                                         ; $6230: $ac
    ld b, c                                       ; $6231: $41
    jp hl                                         ; $6232: $e9


    db $ec                                        ; $6233: $ec
    rla                                           ; $6234: $17
    rst $10                                       ; $6235: $d7
    ld [hl+], a                                   ; $6236: $22
    add hl, de                                    ; $6237: $19
    ld a, [hl-]                                   ; $6238: $3a
    ld e, d                                       ; $6239: $5a
    ld c, b                                       ; $623a: $48
    ld h, e                                       ; $623b: $63
    ld l, l                                       ; $623c: $6d
    ld d, b                                       ; $623d: $50
    ld a, [hl-]                                   ; $623e: $3a
    ei                                            ; $623f: $fb
    dec b                                         ; $6240: $05
    rla                                           ; $6241: $17
    adc d                                         ; $6242: $8a
    or e                                          ; $6243: $b3
    ld b, b                                       ; $6244: $40
    add e                                         ; $6245: $83
    jp nc, Jump_000_2fd9                          ; $6246: $d2 $d9 $2f

    ld d, a                                       ; $6249: $57
    add a                                         ; $624a: $87
    add [hl]                                      ; $624b: $86
    ld e, [hl]                                    ; $624c: $5e
    cp c                                          ; $624d: $b9
    ld b, c                                       ; $624e: $41
    jp hl                                         ; $624f: $e9


    db $ec                                        ; $6250: $ec
    rla                                           ; $6251: $17
    rla                                           ; $6252: $17
    add l                                         ; $6253: $85
    xor h                                         ; $6254: $ac
    pop af                                        ; $6255: $f1
    rst $08                                       ; $6256: $cf
    jp c, Jump_062_74a0                           ; $6257: $da $a0 $74

    or $0b                                        ; $625a: $f6 $0b
    rla                                           ; $625c: $17
    pop de                                        ; $625d: $d1
    sbc l                                         ; $625e: $9d
    ld [hl-], a                                   ; $625f: $32
    inc b                                         ; $6260: $04
    pop af                                        ; $6261: $f1
    ld a, [hl+]                                   ; $6262: $2a
    ld d, e                                       ; $6263: $53
    db $e3                                        ; $6264: $e3
    xor $7c                                       ; $6265: $ee $7c
    ld bc, $f5e7                                  ; $6267: $01 $e7 $f5
    rlca                                          ; $626a: $07
    inc b                                         ; $626b: $04
    db $dd                                        ; $626c: $dd
    and c                                         ; $626d: $a1
    ld a, b                                       ; $626e: $78
    sub l                                         ; $626f: $95
    xor c                                         ; $6270: $a9
    ld [hl], c                                    ; $6271: $71
    ld [hl], a                                    ; $6272: $77
    cp [hl]                                       ; $6273: $be
    add a                                         ; $6274: $87
    db $f4                                        ; $6275: $f4
    sub [hl]                                      ; $6276: $96
    or e                                          ; $6277: $b3
    ld [hl-], a                                   ; $6278: $32
    dec [hl]                                      ; $6279: $35
    xor $ce                                       ; $627a: $ee $ce
    rla                                           ; $627c: $17
    db $ed                                        ; $627d: $ed
    sub h                                         ; $627e: $94
    ld b, h                                       ; $627f: $44
    and e                                         ; $6280: $a3
    ld d, a                                       ; $6281: $57
    sbc c                                         ; $6282: $99
    ld a, [de]                                    ; $6283: $1a
    ld [hl], a                                    ; $6284: $77
    rst $20                                       ; $6285: $e7
    dec bc                                        ; $6286: $0b
    ld d, a                                       ; $6287: $57
    call nz, $aace                                ; $6288: $c4 $ce $aa
    or a                                          ; $628b: $b7
    sbc h                                         ; $628c: $9c
    sub l                                         ; $628d: $95
    xor c                                         ; $628e: $a9
    ld [hl], c                                    ; $628f: $71
    ld [hl], a                                    ; $6290: $77
    cp [hl]                                       ; $6291: $be
    rst $20                                       ; $6292: $e7
    add a                                         ; $6293: $87
    ld e, $53                                     ; $6294: $1e $53
    ld d, d                                       ; $6296: $52
    push de                                       ; $6297: $d5
    jp z, $b8d4                                   ; $6298: $ca $d4 $b8

    dec sp                                        ; $629b: $3b
    ld e, a                                       ; $629c: $5f
    ld d, a                                       ; $629d: $57
    or h                                          ; $629e: $b4
    jr jr_062_62bf                                ; $629f: $18 $1e

    ld e, l                                       ; $62a1: $5d
    ld d, [hl]                                    ; $62a2: $56
    sbc c                                         ; $62a3: $99
    ld a, [de]                                    ; $62a4: $1a
    ld [hl], a                                    ; $62a5: $77
    rst $20                                       ; $62a6: $e7
    dec bc                                        ; $62a7: $0b
    add a                                         ; $62a8: $87
    ld d, h                                       ; $62a9: $54
    add sp, $66                                   ; $62aa: $e8 $66
    sub b                                         ; $62ac: $90
    ld d, d                                       ; $62ad: $52
    dec sp                                        ; $62ae: $3b
    ld d, h                                       ; $62af: $54
    or $0b                                        ; $62b0: $f6 $0b
    sub a                                         ; $62b2: $97
    or $5f                                        ; $62b3: $f6 $5f
    xor e                                         ; $62b5: $ab
    dec sp                                        ; $62b6: $3b
    ld d, h                                       ; $62b7: $54
    or $0b                                        ; $62b8: $f6 $0b
    sub a                                         ; $62ba: $97
    ld c, b                                       ; $62bb: $48
    ld c, c                                       ; $62bc: $49
    inc hl                                        ; $62bd: $23
    ld e, b                                       ; $62be: $58

jr_062_62bf:
    ld l, d                                       ; $62bf: $6a
    add a                                         ; $62c0: $87
    jp z, $017e                                   ; $62c1: $ca $7e $01

    sub a                                         ; $62c4: $97
    add [hl]                                      ; $62c5: $86
    jp z, $8d8e                                   ; $62c6: $ca $8e $8d

    dec e                                         ; $62c9: $1d
    adc d                                         ; $62ca: $8a
    ret                                           ; $62cb: $c9


    ret nc                                        ; $62cc: $d0

    pop de                                        ; $62cd: $d1
    cp l                                          ; $62ce: $bd
    cp d                                          ; $62cf: $ba
    ld d, [hl]                                    ; $62d0: $56
    ld a, [bc]                                    ; $62d1: $0a
    cp a                                          ; $62d2: $bf

jr_062_62d3:
    ld d, a                                       ; $62d3: $57
    ld a, [hl]                                    ; $62d4: $7e
    and l                                         ; $62d5: $a5
    cp h                                          ; $62d6: $bc
    rst $00                                       ; $62d7: $c7
    jr c, jr_062_62d3                             ; $62d8: $38 $f9

    or c                                          ; $62da: $b1
    ld hl, sp-$5f                                 ; $62db: $f8 $a1
    and h                                         ; $62dd: $a4
    ld [hl], d                                    ; $62de: $72
    cp [hl]                                       ; $62df: $be
    add a                                         ; $62e0: $87
    sbc b                                         ; $62e1: $98
    xor $14                                       ; $62e2: $ee $14
    xor e                                         ; $62e4: $ab
    sub b                                         ; $62e5: $90
    db $fc                                        ; $62e6: $fc
    ld [bc], a                                    ; $62e7: $02
    ld d, a                                       ; $62e8: $57
    ld a, [hl-]                                   ; $62e9: $3a
    bit 7, a                                      ; $62ea: $cb $7f
    inc l                                         ; $62ec: $2c
    db $fc                                        ; $62ed: $fc
    ld [bc], a                                    ; $62ee: $02
    rlca                                          ; $62ef: $07
    inc bc                                        ; $62f0: $03
    ld d, $88                                     ; $62f1: $16 $88
    ld hl, sp+$05                                 ; $62f3: $f8 $05
    rst $10                                       ; $62f5: $d7
    ld b, e                                       ; $62f6: $43
    add hl, hl                                    ; $62f7: $29
    ld d, $62                                     ; $62f8: $16 $62
    xor $38                                       ; $62fa: $ee $38
    ld [hl], a                                    ; $62fc: $77
    ld d, b                                       ; $62fd: $50
    dec d                                         ; $62fe: $15
    ld a, [c]                                     ; $62ff: $f2
    dec b                                         ; $6300: $05
    rst $10                                       ; $6301: $d7
    ld b, e                                       ; $6302: $43
    add hl, hl                                    ; $6303: $29
    ld d, $62                                     ; $6304: $16 $62
    xor $b8                                       ; $6306: $ee $b8
    xor d                                         ; $6308: $aa
    or a                                          ; $6309: $b7
    sbc h                                         ; $630a: $9c
    xor $a0                                       ; $630b: $ee $a0
    ld a, [hl+]                                   ; $630d: $2a
    db $e4                                        ; $630e: $e4
    dec bc                                        ; $630f: $0b
    ld d, a                                       ; $6310: $57
    or $2f                                        ; $6311: $f6 $2f
    ld l, h                                       ; $6313: $6c
    ld c, h                                       ; $6314: $4c
    ld c, d                                       ; $6315: $4a
    jp Jump_062_7739                              ; $6316: $c3 $39 $77


    ld d, b                                       ; $6319: $50
    dec d                                         ; $631a: $15
    ld a, [c]                                     ; $631b: $f2
    dec b                                         ; $631c: $05
    rst $10                                       ; $631d: $d7
    ld bc, $07ff                                  ; $631e: $01 $ff $07
    adc b                                         ; $6321: $88
    rst $08                                       ; $6322: $cf
    dec e                                         ; $6323: $1d
    ld d, h                                       ; $6324: $54
    add l                                         ; $6325: $85
    ld a, h                                       ; $6326: $7c
    ld bc, $c697                                  ; $6327: $01 $97 $c6
    and b                                         ; $632a: $a0
    ld b, d                                       ; $632b: $42
    xor e                                         ; $632c: $ab
    push hl                                       ; $632d: $e5
    sbc h                                         ; $632e: $9c
    dec sp                                        ; $632f: $3b
    xor b                                         ; $6330: $a8
    ld a, [bc]                                    ; $6331: $0a
    ld sp, hl                                     ; $6332: $f9
    ld [bc], a                                    ; $6333: $02
    add a                                         ; $6334: $87
    db $f4                                        ; $6335: $f4
    sub [hl]                                      ; $6336: $96
    ld [hl], e                                    ; $6337: $73
    sub a                                         ; $6338: $97
    add $a0                                       ; $6339: $c6 $a0
    ld b, d                                       ; $633b: $42
    xor e                                         ; $633c: $ab
    push hl                                       ; $633d: $e5
    sbc h                                         ; $633e: $9c
    dec sp                                        ; $633f: $3b
    xor b                                         ; $6340: $a8
    ld a, [bc]                                    ; $6341: $0a
    ld sp, hl                                     ; $6342: $f9
    ld [bc], a                                    ; $6343: $02
    rla                                           ; $6344: $17
    halt                                          ; $6345: $76
    ld d, b                                       ; $6346: $50
    dec d                                         ; $6347: $15
    or d                                          ; $6348: $b2
    ld d, d                                       ; $6349: $52
    ld a, b                                       ; $634a: $78
    db $fc                                        ; $634b: $fc
    xor e                                         ; $634c: $ab
    ld a, [c]                                     ; $634d: $f2
    dec bc                                        ; $634e: $0b
    add a                                         ; $634f: $87
    cp $f3                                        ; $6350: $fe $f3
    ld e, b                                       ; $6352: $58
    ld d, h                                       ; $6353: $54
    rst $38                                       ; $6354: $ff
    xor l                                         ; $6355: $ad
    sub [hl]                                      ; $6356: $96
    dec sp                                        ; $6357: $3b
    sub h                                         ; $6358: $94
    add hl, hl                                    ; $6359: $29
    and e                                         ; $635a: $a3
    ei                                            ; $635b: $fb
    dec bc                                        ; $635c: $0b
    sub a                                         ; $635d: $97
    add [hl]                                      ; $635e: $86
    ld b, [hl]                                    ; $635f: $46
    jp $8ca9                                      ; $6360: $c3 $a9 $8c


    xor $2f                                       ; $6363: $ee $2f
    rlca                                          ; $6365: $07
    ld e, l                                       ; $6366: $5d
    dec hl                                        ; $6367: $2b
    ld c, b                                       ; $6368: $48
    ld d, c                                       ; $6369: $51
    ld b, [hl]                                    ; $636a: $46
    rst $30                                       ; $636b: $f7
    rla                                           ; $636c: $17
    add a                                         ; $636d: $87
    xor b                                         ; $636e: $a8
    dec a                                         ; $636f: $3d
    ld d, [hl]                                    ; $6370: $56
    ld b, [hl]                                    ; $6371: $46
    rst $30                                       ; $6372: $f7
    rla                                           ; $6373: $17
    add a                                         ; $6374: $87
    call c, $a4e3                                 ; $6375: $dc $e3 $a4
    and [hl]                                      ; $6378: $a6
    dec b                                         ; $6379: $05
    dec a                                         ; $637a: $3d
    ld h, l                                       ; $637b: $65
    ld [hl], h                                    ; $637c: $74
    ld a, a                                       ; $637d: $7f
    ld bc, $a4d7                                  ; $637e: $01 $d7 $a4
    and [hl]                                      ; $6381: $a6
    ld [hl], a                                    ; $6382: $77
    scf                                           ; $6383: $37
    ld b, d                                       ; $6384: $42
    ld a, c                                       ; $6385: $79
    ld bc, $5487                                  ; $6386: $01 $87 $54
    add sp, $6e                                   ; $6389: $e8 $6e

jr_062_638b:
    ld d, b                                       ; $638b: $50
    adc e                                         ; $638c: $8b
    di                                            ; $638d: $f3
    dec b                                         ; $638e: $05
    rla                                           ; $638f: $17
    add l                                         ; $6390: $85
    ld c, $61                                     ; $6391: $0e $61
    rst $10                                       ; $6393: $d7
    inc h                                         ; $6394: $24
    or h                                          ; $6395: $b4
    ld a, [hl-]                                   ; $6396: $3a
    db $10                                        ; $6397: $10
    push de                                       ; $6398: $d5
    db $eb                                        ; $6399: $eb
    dec bc                                        ; $639a: $0b
    rla                                           ; $639b: $17
    add l                                         ; $639c: $85
    ld c, $61                                     ; $639d: $0e $61
    rlca                                          ; $639f: $07
    ld a, a                                       ; $63a0: $7f
    add c                                         ; $63a1: $81
    rla                                           ; $63a2: $17
    sub a                                         ; $63a3: $97
    rlca                                          ; $63a4: $07
    halt                                          ; $63a5: $76
    ld l, l                                       ; $63a6: $6d
    add h                                         ; $63a7: $84
    ld a, [c]                                     ; $63a8: $f2
    ld [bc], a                                    ; $63a9: $02
    rla                                           ; $63aa: $17
    add l                                         ; $63ab: $85
    ld l, h                                       ; $63ac: $6c
    ld a, h                                       ; $63ad: $7c
    ld b, c                                       ; $63ae: $41
    rst $30                                       ; $63af: $f7
    ld [$08da], a                                 ; $63b0: $ea $da $08
    push hl                                       ; $63b3: $e5
    dec b                                         ; $63b4: $05
    db $ed                                        ; $63b5: $ed
    ccf                                           ; $63b6: $3f
    ld d, e                                       ; $63b7: $53
    ld d, e                                       ; $63b8: $53
    rst $00                                       ; $63b9: $c7
    xor c                                         ; $63ba: $a9
    jp hl                                         ; $63bb: $e9


    db $dd                                        ; $63bc: $dd
    sub l                                         ; $63bd: $95
    ld a, a                                       ; $63be: $7f
    db $fc                                        ; $63bf: $fc
    ld [bc], a                                    ; $63c0: $02
    rst $20                                       ; $63c1: $e7
    push af                                       ; $63c2: $f5
    rlca                                          ; $63c3: $07
    inc b                                         ; $63c4: $04
    db $dd                                        ; $63c5: $dd
    and c                                         ; $63c6: $a1
    ld c, h                                       ; $63c7: $4c
    add l                                         ; $63c8: $85
    jp z, $972f                                   ; $63c9: $ca $2f $97

    add [hl]                                      ; $63cc: $86
    rst $00                                       ; $63cd: $c7
    cp h                                          ; $63ce: $bc
    sub e                                         ; $63cf: $93
    ld c, [hl]                                    ; $63d0: $4e
    dec sp                                        ; $63d1: $3b
    pop hl                                        ; $63d2: $e1
    dec b                                         ; $63d3: $05
    add a                                         ; $63d4: $87
    sbc b                                         ; $63d5: $98
    xor $14                                       ; $63d6: $ee $14
    ld d, a                                       ; $63d8: $57
    and l                                         ; $63d9: $a5
    db $e3                                        ; $63da: $e3
    dec bc                                        ; $63db: $0b
    sub a                                         ; $63dc: $97
    jp $d0d3                                      ; $63dd: $c3 $d3 $d0


    db $eb                                        ; $63e0: $eb
    ld c, [hl]                                    ; $63e1: $4e
    ld a, [hl-]                                   ; $63e2: $3a
    pop hl                                        ; $63e3: $e1
    add h                                         ; $63e4: $84
    inc de                                        ; $63e5: $13
    ld e, [hl]                                    ; $63e6: $5e
    rst $20                                       ; $63e7: $e7
    push de                                       ; $63e8: $d5
    jr z, jr_062_638b                             ; $63e9: $28 $a0

    ld a, e                                       ; $63eb: $7b
    ld b, $7c                                     ; $63ec: $06 $7c
    ld bc, $59d7                                  ; $63ee: $01 $d7 $59
    db $f4                                        ; $63f1: $f4
    ld a, [de]                                    ; $63f2: $1a
    add a                                         ; $63f3: $87
    ld [hl+], a                                   ; $63f4: $22
    cpl                                           ; $63f5: $2f
    rst $10                                       ; $63f6: $d7
    ld d, b                                       ; $63f7: $50
    inc sp                                        ; $63f8: $33
    adc l                                         ; $63f9: $8d
    sbc [hl]                                      ; $63fa: $9e
    ld d, b                                       ; $63fb: $50
    ld a, [hl-]                                   ; $63fc: $3a
    ld a, [hl-]                                   ; $63fd: $3a
    ld e, a                                       ; $63fe: $5f
    ld d, a                                       ; $63ff: $57
    and h                                         ; $6400: $a4
    res 2, a                                      ; $6401: $cb $97
    ldh a, [rSC]                                  ; $6403: $f0 $02
    rlca                                          ; $6405: $07
    ld a, a                                       ; $6406: $7f
    rst $10                                       ; $6407: $d7
    di                                            ; $6408: $f3
    dec b                                         ; $6409: $05
    rlca                                          ; $640a: $07
    cp a                                          ; $640b: $bf
    ld h, b                                       ; $640c: $60
    ld a, [hl]                                    ; $640d: $7e
    push hl                                       ; $640e: $e5
    call z, $2f80                                 ; $640f: $cc $80 $2f
    rst $20                                       ; $6412: $e7
    add a                                         ; $6413: $87
    ldh a, [$d4]                                  ; $6414: $f0 $d4
    cp $a5                                        ; $6416: $fe $a5
    ld d, h                                       ; $6418: $54
    dec b                                         ; $6419: $05
    add d                                         ; $641a: $82
    cpl                                           ; $641b: $2f
    db $ed                                        ; $641c: $ed
    ld a, d                                       ; $641d: $7a
    ld [hl], a                                    ; $641e: $77
    dec bc                                        ; $641f: $0b
    inc b                                         ; $6420: $04
    ld l, e                                       ; $6421: $6b
    inc c                                         ; $6422: $0c
    ld [c], a                                     ; $6423: $e2
    ld d, $94                                     ; $6424: $16 $94
    ld [c], a                                     ; $6426: $e2
    rla                                           ; $6427: $17
    rst $20                                       ; $6428: $e7
    ld [hl], a                                    ; $6429: $77
    adc d                                         ; $642a: $8a
    xor d                                         ; $642b: $aa
    xor l                                         ; $642c: $ad
    call nc, $dd99                                ; $642d: $d4 $99 $dd
    jp nc, $ec7b                                  ; $6430: $d2 $7b $ec

    ld a, h                                       ; $6433: $7c
    ld bc, $43e7                                  ; $6434: $01 $e7 $43
    rst $28                                       ; $6437: $ef
    and [hl]                                      ; $6438: $a6
    jp nc, Jump_000_2fc5                          ; $6439: $d2 $c5 $2f

    rst $10                                       ; $643c: $d7
    call nz, $e926                                ; $643d: $c4 $26 $e9
    call nc, $9014                                ; $6440: $d4 $14 $90
    ld h, d                                       ; $6443: $62
    ld [hl-], a                                   ; $6444: $32
    and h                                         ; $6445: $a4
    cp h                                          ; $6446: $bc
    add a                                         ; $6447: $87
    ld a, [$6297]                                 ; $6448: $fa $97 $62

jr_062_644b:
    and [hl]                                      ; $644b: $a6
    ld [$5f3a], sp                                ; $644c: $08 $3a $5f
    rst $20                                       ; $644f: $e7
    ld e, e                                       ; $6450: $5b
    ld c, e                                       ; $6451: $4b
    ld hl, sp+$59                                 ; $6452: $f8 $59
    reti                                          ; $6454: $d9


    ld a, [c]                                     ; $6455: $f2
    ld [bc], a                                    ; $6456: $02
    add a                                         ; $6457: $87
    xor b                                         ; $6458: $a8
    dec a                                         ; $6459: $3d
    or [hl]                                       ; $645a: $b6
    sub b                                         ; $645b: $90
    ld [hl], h                                    ; $645c: $74
    ld l, d                                       ; $645d: $6a
    ld a, [bc]                                    ; $645e: $0a
    ld c, b                                       ; $645f: $48
    ld sp, $5219                                  ; $6460: $31 $19 $52
    ld e, [hl]                                    ; $6463: $5e
    add a                                         ; $6464: $87
    jr c, jr_062_644b                             ; $6465: $38 $e4

    ld b, e                                       ; $6467: $43
    ld a, [hl]                                    ; $6468: $7e
    ld a, [hl]                                    ; $6469: $7e
    ld bc, $81d7                                  ; $646a: $01 $d7 $81
    or b                                          ; $646d: $b0
    db $d3                                        ; $646e: $d3
    ld sp, hl                                     ; $646f: $f9
    add l                                         ; $6470: $85
    and c                                         ; $6471: $a1
    cp [hl]                                       ; $6472: $be
    rlca                                          ; $6473: $07
    push af                                       ; $6474: $f5
    adc $50                                       ; $6475: $ce $50
    sbc a                                         ; $6477: $9f
    ld e, a                                       ; $6478: $5f
    ld l, d                                       ; $6479: $6a
    add e                                         ; $647a: $83
    ld a, [hl+]                                   ; $647b: $2a
    ld [c], a                                     ; $647c: $e2
    ld a, h                                       ; $647d: $7c
    ld bc, $f657                                  ; $647e: $01 $57 $f6
    ld e, a                                       ; $6481: $5f
    db $f4                                        ; $6482: $f4
    jp nc, Jump_000_2f9d                          ; $6483: $d2 $9d $2f

    ld l, l                                       ; $6486: $6d
    ld a, c                                       ; $6487: $79
    rst $28                                       ; $6488: $ef
    ret nc                                        ; $6489: $d0

    adc a                                         ; $648a: $8f
    cp e                                          ; $648b: $bb
    db $eb                                        ; $648c: $eb
    xor [hl]                                      ; $648d: $ae
    pop de                                        ; $648e: $d1
    sub h                                         ; $648f: $94
    ld [c], a                                     ; $6490: $e2
    and d                                         ; $6491: $a2
    ccf                                           ; $6492: $3f
    rrca                                          ; $6493: $0f
    cp h                                          ; $6494: $bc
    rla                                           ; $6495: $17
    daa                                           ; $6496: $27
    and l                                         ; $6497: $a5
    xor d                                         ; $6498: $aa
    sbc a                                         ; $6499: $9f
    ld c, h                                       ; $649a: $4c
    ld c, c                                       ; $649b: $49
    halt                                          ; $649c: $76
    cp [hl]                                       ; $649d: $be
    sub a                                         ; $649e: $97
    ld a, [de]                                    ; $649f: $1a
    db $dd                                        ; $64a0: $dd
    push de                                       ; $64a1: $d5
    cpl                                           ; $64a2: $2f
    adc $17                                       ; $64a3: $ce $17
    sub a                                         ; $64a5: $97
    ld a, l                                       ; $64a6: $7d
    sub l                                         ; $64a7: $95
    add b                                         ; $64a8: $80
    or l                                          ; $64a9: $b5
    ld a, [c]                                     ; $64aa: $f2
    adc a                                         ; $64ab: $8f
    db $fd                                        ; $64ac: $fd
    ld [bc], a                                    ; $64ad: $02
    rst $10                                       ; $64ae: $d7
    sub [hl]                                      ; $64af: $96
    ld l, [hl]                                    ; $64b0: $6e
    ld e, c                                       ; $64b1: $59
    cp e                                          ; $64b2: $bb
    ld sp, $f286                                  ; $64b3: $31 $86 $f2
    ld [bc], a                                    ; $64b6: $02
    ld l, l                                       ; $64b7: $6d
    ldh a, [rWX]                                  ; $64b8: $f0 $4b
    sub b                                         ; $64ba: $90
    rst $18                                       ; $64bb: $df
    dec hl                                        ; $64bc: $2b
    daa                                           ; $64bd: $27
    dec b                                         ; $64be: $05
    cp l                                          ; $64bf: $bd
    sub $af                                       ; $64c0: $d6 $af
    push de                                       ; $64c2: $d5
    ld e, c                                       ; $64c3: $59
    adc l                                         ; $64c4: $8d
    add sp, -$02                                  ; $64c5: $e8 $fe
    ld [bc], a                                    ; $64c7: $02
    rst $10                                       ; $64c8: $d7
    ld b, c                                       ; $64c9: $41
    add sp, -$1a                                  ; $64ca: $e8 $e6
    xor c                                         ; $64cc: $a9

Jump_062_64cd:
    cpl                                           ; $64cd: $2f
    jr nz, jr_062_64ff                            ; $64ce: $20 $2f

    rla                                           ; $64d0: $17
    sbc c                                         ; $64d1: $99
    xor $c6                                       ; $64d2: $ee $c6
    ld d, a                                       ; $64d4: $57
    jp z, $972f                                   ; $64d5: $ca $2f $97

    ld [$05fd], a                                 ; $64d8: $ea $fd $05
    rla                                           ; $64db: $17
    jp z, $aa48                                   ; $64dc: $ca $48 $aa

    ld hl, sp+$05                                 ; $64df: $f8 $05
    ld d, a                                       ; $64e1: $57
    ld [hl], $23                                  ; $64e2: $36 $23
    cp l                                          ; $64e4: $bd
    ld [hl], h                                    ; $64e5: $74
    ld b, a                                       ; $64e6: $47
    ld [hl], h                                    ; $64e7: $74
    rst $20                                       ; $64e8: $e7
    dec bc                                        ; $64e9: $0b
    rla                                           ; $64ea: $17
    add hl, sp                                    ; $64eb: $39
    pop bc                                        ; $64ec: $c1
    xor l                                         ; $64ed: $ad
    ret nc                                        ; $64ee: $d0

    ld l, d                                       ; $64ef: $6a
    add hl, sp                                    ; $64f0: $39
    ld e, a                                       ; $64f1: $5f
    ld d, a                                       ; $64f2: $57
    ld h, [hl]                                    ; $64f3: $66
    adc b                                         ; $64f4: $88
    call z, $680c                                 ; $64f5: $cc $0c $68
    ld b, c                                       ; $64f8: $41
    cp a                                          ; $64f9: $bf
    rla                                           ; $64fa: $17
    rst $38                                       ; $64fb: $ff
    rst $20                                       ; $64fc: $e7
    ld [hl], c                                    ; $64fd: $71
    rst $20                                       ; $64fe: $e7

jr_062_64ff:
    ld d, l                                       ; $64ff: $55
    dec d                                         ; $6500: $15
    cp d                                          ; $6501: $ba
    ld l, e                                       ; $6502: $6b

Call_062_6503:
    add a                                         ; $6503: $87
    ld d, [hl]                                    ; $6504: $56
    ld a, l                                       ; $6505: $7d
    ld bc, $5317                                  ; $6506: $01 $17 $53
    ld [hl], e                                    ; $6509: $73
    ld l, b                                       ; $650a: $68
    ld e, [hl]                                    ; $650b: $5e
    ld [hl], l                                    ; $650c: $75
    adc a                                         ; $650d: $8f
    rla                                           ; $650e: $17
    add a                                         ; $650f: $87
    ld h, h                                       ; $6510: $64
    ld d, a                                       ; $6511: $57
    ld a, [bc]                                    ; $6512: $0a
    cp a                                          ; $6513: $bf
    db $ed                                        ; $6514: $ed
    cp a                                          ; $6515: $bf
    rst $00                                       ; $6516: $c7
    sbc h                                         ; $6517: $9c
    add $4a                                       ; $6518: $c6 $4a
    ld c, l                                       ; $651a: $4d
    cp a                                          ; $651b: $bf
    add a                                         ; $651c: $87
    call c, $aee3                                 ; $651d: $dc $e3 $ae
    xor c                                         ; $6520: $a9
    ld d, $f4                                     ; $6521: $16 $f4

jr_062_6523:
    ld a, [de]                                    ; $6523: $1a
    cp a                                          ; $6524: $bf
    rst $30                                       ; $6525: $f7
    jr nz, @-$30                                  ; $6526: $20 $ce

    rla                                           ; $6528: $17
    rlca                                          ; $6529: $07
    db $f4                                        ; $652a: $f4
    xor $f2                                       ; $652b: $ee $f2
    ld h, e                                       ; $652d: $63
    cp a                                          ; $652e: $bf
    db $ed                                        ; $652f: $ed
    cp a                                          ; $6530: $bf
    inc h                                         ; $6531: $24
    ld h, b                                       ; $6532: $60
    ld e, l                                       ; $6533: $5d
    db $eb                                        ; $6534: $eb
    rst $20                                       ; $6535: $e7
    ld l, a                                       ; $6536: $6f
    ld [hl], l                                    ; $6537: $75
    call $6d0b                                    ; $6538: $cd $0b $6d
    sbc $75                                       ; $653b: $de $75
    ld d, b                                       ; $653d: $50
    ld e, l                                       ; $653e: $5d
    ld [hl], a                                    ; $653f: $77
    adc b                                         ; $6540: $88
    dec l                                         ; $6541: $2d
    cpl                                           ; $6542: $2f
    rla                                           ; $6543: $17
    ld h, $08                                     ; $6544: $26 $08
    ld h, $48                                     ; $6546: $26 $48
    xor c                                         ; $6548: $a9
    ld c, d                                       ; $6549: $4a
    cpl                                           ; $654a: $2f
    db $dd                                        ; $654b: $dd
    cpl                                           ; $654c: $2f
    sub a                                         ; $654d: $97
    ld c, b                                       ; $654e: $48
    ld c, c                                       ; $654f: $49
    inc hl                                        ; $6550: $23
    ld e, b                                       ; $6551: $58
    ld l, d                                       ; $6552: $6a
    or a                                          ; $6553: $b7
    xor d                                         ; $6554: $aa
    and b                                         ; $6555: $a0
    add d                                         ; $6556: $82
    cp h                                          ; $6557: $bc
    rla                                           ; $6558: $17
    ld [hl], l                                    ; $6559: $75
    ld a, [hl+]                                   ; $655a: $2a
    sbc l                                         ; $655b: $9d
    db $fd                                        ; $655c: $fd
    ld [bc], a                                    ; $655d: $02
    rla                                           ; $655e: $17
    ld [hl], l                                    ; $655f: $75
    ld c, l                                       ; $6560: $4d
    ld l, h                                       ; $6561: $6c
    ld b, c                                       ; $6562: $41
    ld c, a                                       ; $6563: $4f
    xor b                                         ; $6564: $a8
    and l                                         ; $6565: $a5
    dec sp                                        ; $6566: $3b
    ld e, a                                       ; $6567: $5f
    add a                                         ; $6568: $87
    xor b                                         ; $6569: $a8
    dec a                                         ; $656a: $3d
    xor [hl]                                      ; $656b: $ae
    ld l, $fd                                     ; $656c: $2e $fd
    dec b                                         ; $656e: $05
    db $ed                                        ; $656f: $ed
    cp $dd                                        ; $6570: $fe $dd
    add d                                         ; $6572: $82
    ld e, [hl]                                    ; $6573: $5e
    ld de, $eca8                                  ; $6574: $11 $a8 $ec
    ld a, h                                       ; $6577: $7c
    ld bc, $56d7                                  ; $6578: $01 $d7 $56
    adc l                                         ; $657b: $8d
    ld [hl], h                                    ; $657c: $74
    jr z, jr_062_6523                             ; $657d: $28 $a4

    or c                                          ; $657f: $b1
    xor d                                         ; $6580: $aa
    rst $18                                       ; $6581: $df
    ld l, d                                       ; $6582: $6a
    ld sp, hl                                     ; $6583: $f9
    dec b                                         ; $6584: $05
    sub a                                         ; $6585: $97
    add [hl]                                      ; $6586: $86
    db $e4                                        ; $6587: $e4
    xor c                                         ; $6588: $a9
    ldh a, [$34]                                  ; $6589: $f0 $34
    ld b, b                                       ; $658b: $40
    ld a, $43                                     ; $658c: $3e $43
    sub b                                         ; $658e: $90
    rla                                           ; $658f: $17
    ld l, l                                       ; $6590: $6d
    ld a, [$9fc8]                                 ; $6591: $fa $c8 $9f
    inc bc                                        ; $6594: $03
    add hl, hl                                    ; $6595: $29
    sub [hl]                                      ; $6596: $96
    add l                                         ; $6597: $85
    ld b, $dd                                     ; $6598: $06 $dd
    adc d                                         ; $659a: $8a
    sbc l                                         ; $659b: $9d
    jp c, $e75f                                   ; $659c: $da $5f $e7

    dec sp                                        ; $659f: $3b
    xor c                                         ; $65a0: $a9

Call_062_65a1:
    rrca                                          ; $65a1: $0f
    ld a, e                                       ; $65a2: $7b
    and h                                         ; $65a3: $a4
    ld d, l                                       ; $65a4: $55
    push af                                       ; $65a5: $f5
    ld b, d                                       ; $65a6: $42
    add hl, de                                    ; $65a7: $19
    ld h, a                                       ; $65a8: $67
    add sp, -$08                                  ; $65a9: $e8 $f8
    ld d, b                                       ; $65ab: $50
    inc b                                         ; $65ac: $04
    adc a                                         ; $65ad: $8f
    ld d, e                                       ; $65ae: $53
    ld hl, $2f79                                  ; $65af: $21 $79 $2f
    rst $20                                       ; $65b2: $e7
    and a                                         ; $65b3: $a7
    ld e, [hl]                                    ; $65b4: $5e
    add [hl]                                      ; $65b5: $86
    ld h, [hl]                                    ; $65b6: $66
    or $42                                        ; $65b7: $f6 $42
    add e                                         ; $65b9: $83
    ld l, [hl]                                    ; $65ba: $6e
    push bc                                       ; $65bb: $c5
    rst $20                                       ; $65bc: $e7
    cp h                                          ; $65bd: $bc
    call nz, Call_000_3dcf                        ; $65be: $c4 $cf $3d
    ld [hl], c                                    ; $65c1: $71
    cpl                                           ; $65c2: $2f
    ld l, l                                       ; $65c3: $6d
    adc $55                                       ; $65c4: $ce $55
    push hl                                       ; $65c6: $e5
    inc e                                         ; $65c7: $1c
    ld [$b59b], sp                                ; $65c8: $08 $9b $b5
    cp a                                          ; $65cb: $bf
    ld l, l                                       ; $65cc: $6d
    ld a, [$97d4]                                 ; $65cd: $fa $d4 $97
    add c                                         ; $65d0: $81
    ld d, d                                       ; $65d1: $52
    ld e, [hl]                                    ; $65d2: $5e
    inc hl                                        ; $65d3: $23
    push af                                       ; $65d4: $f5
    ld [c], a                                     ; $65d5: $e2
    and c                                         ; $65d6: $a1
    ld a, c                                       ; $65d7: $79
    and d                                         ; $65d8: $a2
    ld l, e                                       ; $65d9: $6b
    ld a, a                                       ; $65da: $7f
    ld bc, $a4d7                                  ; $65db: $01 $d7 $a4
    ld b, [hl]                                    ; $65de: $46
    xor l                                         ; $65df: $ad
    push de                                       ; $65e0: $d5
    sbc h                                         ; $65e1: $9c
    ld h, l                                       ; $65e2: $65
    db $fc                                        ; $65e3: $fc
    dec hl                                        ; $65e4: $2b
    cpl                                           ; $65e5: $2f
    ld a, [bc]                                    ; $65e6: $0a
    cp c                                          ; $65e7: $b9
    rst $08                                       ; $65e8: $cf
    adc e                                         ; $65e9: $8b

jr_062_65ea:
    ld b, d                                       ; $65ea: $42
    ld [hl], d                                    ; $65eb: $72
    and l                                         ; $65ec: $a5
    jr nc, jr_062_65ea                            ; $65ed: $30 $fb

    ld a, [hl]                                    ; $65ef: $7e
    ld bc, $3fed                                  ; $65f0: $01 $ed $3f
    ld d, e                                       ; $65f3: $53
    or e                                          ; $65f4: $b3
    xor b                                         ; $65f5: $a8
    sbc c                                         ; $65f6: $99
    dec sp                                        ; $65f7: $3b
    rst $30                                       ; $65f8: $f7
    call nz, Call_062_48e9                        ; $65f9: $c4 $e9 $48
    add [hl]                                      ; $65fc: $86
    adc [hl]                                      ; $65fd: $8e
    ld d, $d2                                     ; $65fe: $16 $d2
    ld e, b                                       ; $6600: $58
    ld e, e                                       ; $6601: $5b
    ld bc, $ef84                                  ; $6602: $01 $84 $ef
    rla                                           ; $6605: $17
    db $ed                                        ; $6606: $ed
    ccf                                           ; $6607: $3f
    ld d, e                                       ; $6608: $53
    or e                                          ; $6609: $b3
    xor b                                         ; $660a: $a8
    sbc c                                         ; $660b: $99
    dec sp                                        ; $660c: $3b
    rst $30                                       ; $660d: $f7
    call nz, $bf3d                                ; $660e: $c4 $3d $bf
    ld b, b                                       ; $6611: $40
    dec hl                                        ; $6612: $2b
    add b                                         ; $6613: $80
    ldh a, [$fd]                                  ; $6614: $f0 $fd
    ld [bc], a                                    ; $6616: $02
    ld l, l                                       ; $6617: $6d
    and $39                                       ; $6618: $e6 $39
    ld d, a                                       ; $661a: $57
    jp $f0b3                                      ; $661b: $c3 $b3 $f0


    inc c                                         ; $661e: $0c
    dec l                                         ; $661f: $2d
    ei                                            ; $6620: $fb
    dec e                                         ; $6621: $1d
    inc de                                        ; $6622: $13
    jp z, $a81e                                   ; $6623: $ca $1e $a8

    db $ec                                        ; $6626: $ec
    ld e, h                                       ; $6627: $5c
    dec b                                         ; $6628: $05
    ld e, c                                       ; $6629: $59
    ld a, l                                       ; $662a: $7d
    ld a, [hl]                                    ; $662b: $7e
    pop de                                        ; $662c: $d1
    cp [hl]                                       ; $662d: $be
    dec e                                         ; $662e: $1d
    ld [hl], l                                    ; $662f: $75
    db $ec                                        ; $6630: $ec
    cp c                                          ; $6631: $b9
    daa                                           ; $6632: $27
    xor $d0                                       ; $6633: $ee $d0
    sub l                                         ; $6635: $95
    ld b, a                                       ; $6636: $47
    cp a                                          ; $6637: $bf
    rst $20                                       ; $6638: $e7
    dec de                                        ; $6639: $1b
    db $d3                                        ; $663a: $d3
    or e                                          ; $663b: $b3
    ldh [$d0], a                                  ; $663c: $e0 $d0
    or d                                          ; $663e: $b2
    add [hl]                                      ; $663f: $86
    or c                                          ; $6640: $b1
    or d                                          ; $6641: $b2
    and a                                         ; $6642: $a7
    ld a, [hl]                                    ; $6643: $7e
    or c                                          ; $6644: $b1
    or $ed                                        ; $6645: $f6 $ed
    xor b                                         ; $6647: $a8
    ld h, e                                       ; $6648: $63
    rst $08                                       ; $6649: $cf
    dec a                                         ; $664a: $3d
    ld [hl], c                                    ; $664b: $71
    add a                                         ; $664c: $87
    xor [hl]                                      ; $664d: $ae
    inc a                                         ; $664e: $3c
    ld a, [$8705]                                 ; $664f: $fa $05 $87
    sbc d                                         ; $6652: $9a
    ld b, e                                       ; $6653: $43
    ld [hl], a                                    ; $6654: $77
    ld d, b                                       ; $6655: $50
    sbc a                                         ; $6656: $9f
    rst $30                                       ; $6657: $f7
    ld a, c                                       ; $6658: $79
    rst $08                                       ; $6659: $cf
    sub a                                         ; $665a: $97
    add c                                         ; $665b: $81
    ld d, d                                       ; $665c: $52
    ld e, [hl]                                    ; $665d: $5e
    ld [hl], a                                    ; $665e: $77
    inc l                                         ; $665f: $2c
    adc $59                                       ; $6660: $ce $59
    ld h, [hl]                                    ; $6662: $66
    ld [hl], c                                    ; $6663: $71
    ld h, l                                       ; $6664: $65
    ld c, a                                       ; $6665: $4f
    and l                                         ; $6666: $a5
    cp $3c                                        ; $6667: $fe $3c
    sub $be                                       ; $6669: $d6 $be
    dec e                                         ; $666b: $1d
    ld [hl], l                                    ; $666c: $75
    db $ec                                        ; $666d: $ec
    cp c                                          ; $666e: $b9
    daa                                           ; $666f: $27
    xor $d0                                       ; $6670: $ee $d0
    sub l                                         ; $6672: $95
    ld b, a                                       ; $6673: $47
    cp a                                          ; $6674: $bf
    add a                                         ; $6675: $87
    sbc [hl]                                      ; $6676: $9e
    ld e, a                                       ; $6677: $5f
    inc l                                         ; $6678: $2c
    ld [hl], e                                    ; $6679: $73
    ld l, $0a                                     ; $667a: $2e $0a
    ret                                           ; $667c: $c9


    xor c                                         ; $667d: $a9
    jp hl                                         ; $667e: $e9


    db $dd                                        ; $667f: $dd
    add d                                         ; $6680: $82
    sub $be                                       ; $6681: $d6 $be
    dec e                                         ; $6683: $1d
    ld [hl], l                                    ; $6684: $75
    db $ec                                        ; $6685: $ec
    cp c                                          ; $6686: $b9
    daa                                           ; $6687: $27
    xor $d0                                       ; $6688: $ee $d0
    sub l                                         ; $668a: $95
    ld b, a                                       ; $668b: $47
    cp a                                          ; $668c: $bf
    ld l, l                                       ; $668d: $6d
    and $35                                       ; $668e: $e6 $35
    adc h                                         ; $6690: $8c
    sub l                                         ; $6691: $95
    dec a                                         ; $6692: $3d
    cp d                                          ; $6693: $ba
    sla h                                         ; $6694: $cb $24
    inc d                                         ; $6696: $14
    ld c, e                                       ; $6697: $4b
    dec b                                         ; $6698: $05
    ld b, c                                       ; $6699: $41
    adc a                                         ; $669a: $8f
    db $fc                                        ; $669b: $fc
    cp c                                          ; $669c: $b9
    ld a, [$c2fc]                                 ; $669d: $fa $fc $c2
    jp c, $d477                                   ; $66a0: $da $77 $d4

    or c                                          ; $66a3: $b1
    rst $20                                       ; $66a4: $e7
    sbc [hl]                                      ; $66a5: $9e
    cp b                                          ; $66a6: $b8

jr_062_66a7:
    ld l, e                                       ; $66a7: $6b
    xor [hl]                                      ; $66a8: $ae
    inc a                                         ; $66a9: $3c
    ld a, [$6d05]                                 ; $66aa: $fa $05 $6d
    and $35                                       ; $66ad: $e6 $35
    adc h                                         ; $66af: $8c
    sub l                                         ; $66b0: $95
    dec a                                         ; $66b1: $3d
    cp d                                          ; $66b2: $ba
    sla h                                         ; $66b3: $cb $24
    inc d                                         ; $66b5: $14
    ld c, e                                       ; $66b6: $4b
    dec b                                         ; $66b7: $05
    ld b, c                                       ; $66b8: $41
    adc a                                         ; $66b9: $8f
    db $fc                                        ; $66ba: $fc
    cp c                                          ; $66bb: $b9
    ld a, [$c2fc]                                 ; $66bc: $fa $fc $c2
    jp c, $d477                                   ; $66bf: $da $77 $d4

    or c                                          ; $66c2: $b1
    rst $20                                       ; $66c3: $e7
    sbc [hl]                                      ; $66c4: $9e
    cp b                                          ; $66c5: $b8
    ld l, e                                       ; $66c6: $6b
    xor [hl]                                      ; $66c7: $ae
    inc a                                         ; $66c8: $3c
    ld a, [$0705]                                 ; $66c9: $fa $05 $07
    cp $0b                                        ; $66cc: $fe $0b
    sub a                                         ; $66ce: $97
    sbc e                                         ; $66cf: $9b
    cp $02                                        ; $66d0: $fe $02
    rst $20                                       ; $66d2: $e7
    sbc [hl]                                      ; $66d3: $9e
    cp b                                          ; $66d4: $b8
    ld b, e                                       ; $66d5: $43
    call nc, Call_062_571e                        ; $66d6: $d4 $1e $57
    sub a                                         ; $66d9: $97
    cp $02                                        ; $66da: $fe $02
    add a                                         ; $66dc: $87
    xor b                                         ; $66dd: $a8
    dec a                                         ; $66de: $3d
    xor [hl]                                      ; $66df: $ae
    ld l, $fd                                     ; $66e0: $2e $fd
    dec b                                         ; $66e2: $05
    sub a                                         ; $66e3: $97
    ld d, d                                       ; $66e4: $52
    dec de                                        ; $66e5: $1b
    cpl                                           ; $66e6: $2f
    add a                                         ; $66e7: $87
    jr z, jr_062_66a7                             ; $66e8: $28 $bd

    cp h                                          ; $66ea: $bc
    rst $20                                       ; $66eb: $e7
    ld b, l                                       ; $66ec: $45
    or l                                          ; $66ed: $b5
    db $eb                                        ; $66ee: $eb
    db $fc                                        ; $66ef: $fc
    ld [bc], a                                    ; $66f0: $02
    ld d, a                                       ; $66f1: $57
    ld b, $fe                                     ; $66f2: $06 $fe
    push bc                                       ; $66f4: $c5
    ld [hl], l                                    ; $66f5: $75
    jp z, $9dd8                                   ; $66f6: $ca $d8 $9d

    cpl                                           ; $66f9: $2f
    rst $10                                       ; $66fa: $d7
    cp c                                          ; $66fb: $b9
    xor e                                         ; $66fc: $ab
    ldh a, [$3c]                                  ; $66fd: $f0 $3c
    sub [hl]                                      ; $66ff: $96
    ld sp, $5df4                                  ; $6700: $31 $f4 $5d
    add hl, de                                    ; $6703: $19
    ld hl, sp+$17                                 ; $6704: $f8 $17
    rst $10                                       ; $6706: $d7
    add hl, hl                                    ; $6707: $29
    ld h, e                                       ; $6708: $63
    ld [hl], a                                    ; $6709: $77
    sbc $2f                                       ; $670a: $de $2f
    rst $10                                       ; $670c: $d7
    pop bc                                        ; $670d: $c1
    cp d                                          ; $670e: $ba
    pop de                                        ; $670f: $d1
    cp c                                          ; $6710: $b9
    rst $18                                       ; $6711: $df
    add hl, de                                    ; $6712: $19
    ld [hl], b                                    ; $6713: $70
    adc [hl]                                      ; $6714: $8e
    ret c                                         ; $6715: $d8

    cp c                                          ; $6716: $b9
    ld d, $45                                     ; $6717: $16 $45
    ld c, h                                       ; $6719: $4c
    ld e, e                                       ; $671a: $5b
    inc hl                                        ; $671b: $23
    push af                                       ; $671c: $f5
    jp nz, $fc5e                                  ; $671d: $c2 $5e $fc

    db $d3                                        ; $6720: $d3
    ld sp, hl                                     ; $6721: $f9
    ld [bc], a                                    ; $6722: $02
    db $ed                                        ; $6723: $ed
    pop af                                        ; $6724: $f1
    rst $00                                       ; $6725: $c7
    ld d, l                                       ; $6726: $55
    and l                                         ; $6727: $a5
    rst $30                                       ; $6728: $f7

Jump_062_6729:
    xor $a1                                       ; $6729: $ee $a1
    ld a, c                                       ; $672b: $79
    ld sp, $7d25                                  ; $672c: $31 $25 $7d
    adc $f6                                       ; $672f: $ce $f6
    ld [bc], a                                    ; $6731: $02
    rla                                           ; $6732: $17
    ld a, [c]                                     ; $6733: $f2
    sub d                                         ; $6734: $92
    sbc d                                         ; $6735: $9a
    ld d, $f4                                     ; $6736: $16 $f4
    ld [c], a                                     ; $6738: $e2
    rst $18                                       ; $6739: $df
    res 7, l                                      ; $673a: $cb $bd
    dec bc                                        ; $673c: $0b
    ld a, e                                       ; $673d: $7b
    ld [hl], a                                    ; $673e: $77
    sub $7d                                       ; $673f: $d6 $7d
    ld b, c                                       ; $6741: $41
    di                                            ; $6742: $f3
    add hl, sp                                    ; $6743: $39
    cpl                                           ; $6744: $2f
    rla                                           ; $6745: $17
    jp z, $faaa                                   ; $6746: $ca $aa $fa

    rst $08                                       ; $6749: $cf
    cp l                                          ; $674a: $bd
    dec bc                                        ; $674b: $0b
    ld a, e                                       ; $674c: $7b
    ld [hl], a                                    ; $674d: $77
    sub $7d                                       ; $674e: $d6 $7d
    ld b, c                                       ; $6750: $41
    di                                            ; $6751: $f3
    add hl, sp                                    ; $6752: $39
    cpl                                           ; $6753: $2f
    ld l, l                                       ; $6754: $6d
    sub [hl]                                      ; $6755: $96
    add hl, hl                                    ; $6756: $29
    and e                                         ; $6757: $a3
    ei                                            ; $6758: $fb
    ld a, [hl+]                                   ; $6759: $2a
    and l                                         ; $675a: $a5
    rla                                           ; $675b: $17
    rst $10                                       ; $675c: $d7
    ld b, l                                       ; $675d: $45
    ld hl, $ee77                                  ; $675e: $21 $77 $ee
    adc c                                         ; $6761: $89
    dec sp                                        ; $6762: $3b
    ld b, h                                       ; $6763: $44
    db $ed                                        ; $6764: $ed
    ld [hl], c                                    ; $6765: $71
    ld [hl], l                                    ; $6766: $75
    jp hl                                         ; $6767: $e9


    rst $30                                       ; $6768: $f7
    dec bc                                        ; $6769: $0b
    ld l, l                                       ; $676a: $6d
    ld a, a                                       ; $676b: $7f
    ld l, b                                       ; $676c: $68
    sbc c                                         ; $676d: $99
    ld [hl], e                                    ; $676e: $73
    adc l                                         ; $676f: $8d
    call nc, $2f0b                                ; $6770: $d4 $0b $2f
    add [hl]                                      ; $6773: $86
    ld a, $ba                                     ; $6774: $3e $ba
    rrc d                                         ; $6776: $cb $0a
    call nz, $b9de                                ; $6778: $c4 $de $b9
    daa                                           ; $677b: $27
    xor $10                                       ; $677c: $ee $10
    or l                                          ; $677e: $b5
    rst $00                                       ; $677f: $c7
    push de                                       ; $6780: $d5
    and l                                         ; $6781: $a5
    rst $18                                       ; $6782: $df
    cpl                                           ; $6783: $2f
    rla                                           ; $6784: $17
    and $d0                                       ; $6785: $e6 $d0
    inc a                                         ; $6787: $3c
    set 1, b                                      ; $6788: $cb $c8
    cpl                                           ; $678a: $2f
    add sp, $7e                                   ; $678b: $e8 $7e
    adc $0b                                       ; $678d: $ce $0b
    ld l, l                                       ; $678f: $6d
    ld a, [$9fc8]                                 ; $6790: $fa $c8 $9f
    inc bc                                        ; $6793: $03
    and l                                         ; $6794: $a5
    inc a                                         ; $6795: $3c
    dec d                                         ; $6796: $15
    add h                                         ; $6797: $84
    cp a                                          ; $6798: $bf
    or b                                          ; $6799: $b0
    ld [hl], e                                    ; $679a: $73
    ld [de], a                                    ; $679b: $12
    call nc, Call_000_02fd                        ; $679c: $d4 $fd $02
    rlca                                          ; $679f: $07
    push af                                       ; $67a0: $f5
    sbc $72                                       ; $67a1: $de $72
    xor e                                         ; $67a3: $ab
    push hl                                       ; $67a4: $e5
    xor h                                         ; $67a5: $ac
    dec sp                                        ; $67a6: $3b
    xor a                                         ; $67a7: $af
    dec d                                         ; $67a8: $15
    ret c                                         ; $67a9: $d8

    ld [$d705], a                                 ; $67aa: $ea $05 $d7
    add l                                         ; $67ad: $85
    ld [hl], h                                    ; $67ae: $74
    ld e, l                                       ; $67af: $5d
    rst $38                                       ; $67b0: $ff
    push bc                                       ; $67b1: $c5
    add hl, sp                                    ; $67b2: $39
    rst $20                                       ; $67b3: $e7
    inc l                                         ; $67b4: $2c
    xor e                                         ; $67b5: $ab
    adc a                                         ; $67b6: $8f
    sbc $bd                                       ; $67b7: $de $bd
    rst $20                                       ; $67b9: $e7
    ld c, e                                       ; $67ba: $4b
    ld [hl], c                                    ; $67bb: $71
    adc a                                         ; $67bc: $8f
    db $f4                                        ; $67bd: $f4
    adc [hl]                                      ; $67be: $8e
    add e                                         ; $67bf: $83
    pop hl                                        ; $67c0: $e1
    cpl                                           ; $67c1: $2f
    rst $30                                       ; $67c2: $f7
    ld a, l                                       ; $67c3: $7d
    cp a                                          ; $67c4: $bf
    db $ed                                        ; $67c5: $ed
    pop af                                        ; $67c6: $f1
    rst $00                                       ; $67c7: $c7
    sub c                                         ; $67c8: $91
    ccf                                           ; $67c9: $3f
    add a                                         ; $67ca: $87
    ld a, [$af3e]                                 ; $67cb: $fa $3e $af
    ld d, d                                       ; $67ce: $52
    ld a, d                                       ; $67cf: $7a
    pop af                                        ; $67d0: $f1
    add hl, sp                                    ; $67d1: $39
    cpl                                           ; $67d2: $2f
    rst $10                                       ; $67d3: $d7
    add l                                         ; $67d4: $85
    ld [hl], h                                    ; $67d5: $74
    ld e, l                                       ; $67d6: $5d
    rst $38                                       ; $67d7: $ff
    push bc                                       ; $67d8: $c5
    reti                                          ; $67d9: $d9


    jr nc, jr_062_67f5                            ; $67da: $30 $19

    ld a, [hl-]                                   ; $67dc: $3a
    ld a, [bc]                                    ; $67dd: $0a
    ld c, b                                       ; $67de: $48
    sbc c                                         ; $67df: $99
    ld [hl], e                                    ; $67e0: $73
    sub [hl]                                      ; $67e1: $96
    push de                                       ; $67e2: $d5
    ld b, a                                       ; $67e3: $47
    rst $28                                       ; $67e4: $ef
    sbc $f3                                       ; $67e5: $de $f3
    and l                                         ; $67e7: $a5
    cp b                                          ; $67e8: $b8
    ld b, a                                       ; $67e9: $47
    ld a, d                                       ; $67ea: $7a
    rst $00                                       ; $67eb: $c7
    pop bc                                        ; $67ec: $c1
    xor b                                         ; $67ed: $a8
    ld [hl], h                                    ; $67ee: $74
    scf                                           ; $67ef: $37
    ld a, [hl-]                                   ; $67f0: $3a
    jr z, jr_062_6858                             ; $67f1: $28 $65

    cp [hl]                                       ; $67f3: $be
    rst $28                                       ; $67f4: $ef

jr_062_67f5:
    ei                                            ; $67f5: $fb
    dec b                                         ; $67f6: $05
    ld l, l                                       ; $67f7: $6d
    and $95                                       ; $67f8: $e6 $95
    ld c, [hl]                                    ; $67fa: $4e
    ld b, c                                       ; $67fb: $41
    rst $20                                       ; $67fc: $e7
    ld e, $28                                     ; $67fd: $1e $28
    ei                                            ; $67ff: $fb
    inc a                                         ; $6800: $3c
    cp d                                          ; $6801: $ba
    set 1, b                                      ; $6802: $cb $c8
    rra                                           ; $6804: $1f
    and e                                         ; $6805: $a3
    daa                                           ; $6806: $27
    and c                                         ; $6807: $a1
    sbc b                                         ; $6808: $98
    add a                                         ; $6809: $87
    ld a, [$2e94]                                 ; $680a: $fa $94 $2e
    ld [c], a                                     ; $680d: $e2
    dec [hl]                                      ; $680e: $35
    ld d, d                                       ; $680f: $52
    cpl                                           ; $6810: $2f
    cp [hl]                                       ; $6811: $be
    ld e, a                                       ; $6812: $5f
    ld l, l                                       ; $6813: $6d
    and $c5                                       ; $6814: $e6 $c5
    ccf                                           ; $6816: $3f
    ld h, a                                       ; $6817: $67
    ld e, c                                       ; $6818: $59
    ld d, l                                       ; $6819: $55
    rst $38                                       ; $681a: $ff
    cp c                                          ; $681b: $b9
    ld [hl], a                                    ; $681c: $77
    ld h, c                                       ; $681d: $61
    ld c, $f5                                     ; $681e: $0e $f5
    ld d, l                                       ; $6820: $55
    ld d, b                                       ; $6821: $50
    jp z, Jump_062_56b9                           ; $6822: $ca $b9 $56

    ld [hl], e                                    ; $6825: $73
    sbc a                                         ; $6826: $9f
    add a                                         ; $6827: $87
    ld a, [$2940]                                 ; $6828: $fa $40 $29
    xor a                                         ; $682b: $af
    ld a, [hl+]                                   ; $682c: $2a
    adc b                                         ; $682d: $88
    ret c                                         ; $682e: $d8

    cp c                                          ; $682f: $b9
    rst $00                                       ; $6830: $c7
    ld [bc], a                                    ; $6831: $02
    ld d, d                                       ; $6832: $52
    adc $79                                       ; $6833: $ce $79
    ld bc, $f887                                  ; $6835: $01 $87 $f8
    dec bc                                        ; $6838: $0b
    cp $c4                                        ; $6839: $fe $c4
    ld d, [hl]                                    ; $683b: $56
    ld b, d                                       ; $683c: $42
    or l                                          ; $683d: $b5
    call z, Call_062_73b9                         ; $683e: $cc $b9 $73
    ld c, a                                       ; $6841: $4f
    call c, $6a21                                 ; $6842: $dc $21 $6a
    adc a                                         ; $6845: $8f
    xor e                                         ; $6846: $ab

jr_062_6847:
    ld c, e                                       ; $6847: $4b
    cp a                                          ; $6848: $bf
    ld e, a                                       ; $6849: $5f
    ld l, l                                       ; $684a: $6d
    sub [hl]                                      ; $684b: $96
    add hl, sp                                    ; $684c: $39
    rlca                                          ; $684d: $07
    ld c, d                                       ; $684e: $4a
    ld a, c                                       ; $684f: $79
    and d                                         ; $6850: $a2
    cp c                                          ; $6851: $b9
    rst $28                                       ; $6852: $ef
    ld a, e                                       ; $6853: $7b
    rlca                                          ; $6854: $07
    ld e, h                                       ; $6855: $5c
    ld d, $43                                     ; $6856: $16 $43

jr_062_6858:
    ld e, a                                       ; $6858: $5f
    add c                                         ; $6859: $81
    ret c                                         ; $685a: $d8

    ld b, e                                       ; $685b: $43

Jump_062_685c:
    jr z, jr_062_6899                             ; $685c: $28 $3b

    rst $30                                       ; $685e: $f7
    call nz, $a21d                                ; $685f: $c4 $1d $a2
    or $b8                                        ; $6862: $f6 $b8
    cp d                                          ; $6864: $ba
    db $f4                                        ; $6865: $f4
    ei                                            ; $6866: $fb
    dec b                                         ; $6867: $05
    rla                                           ; $6868: $17
    and $62                                       ; $6869: $e6 $62
    sbc b                                         ; $686b: $98
    dec b                                         ; $686c: $05
    adc d                                         ; $686d: $8a
    rst $08                                       ; $686e: $cf
    ld a, c                                       ; $686f: $79
    ld bc, $fa6d                                  ; $6870: $01 $6d $fa
    ret z                                         ; $6873: $c8

    sbc a                                         ; $6874: $9f
    inc bc                                        ; $6875: $03
    and l                                         ; $6876: $a5
    cp h                                          ; $6877: $bc
    jp c, $f3dc                                   ; $6878: $da $dc $f3

    and l                                         ; $687b: $a5
    ld a, b                                       ; $687c: $78
    add a                                         ; $687d: $87
    xor b                                         ; $687e: $a8
    dec a                                         ; $687f: $3d
    xor [hl]                                      ; $6880: $ae
    ld l, $fd                                     ; $6881: $2e $fd
    ld a, [hl]                                    ; $6883: $7e
    ld bc, $7487                                  ; $6884: $01 $87 $74
    and l                                         ; $6887: $a5
    sbc h                                         ; $6888: $9c
    dec h                                         ; $6889: $25
    jr nz, jr_062_6847                            ; $688a: $20 $bb

    xor [hl]                                      ; $688c: $ae
    halt                                          ; $688d: $76
    ld d, b                                       ; $688e: $50

Jump_062_688f:
    dec c                                         ; $688f: $0d
    sbc l                                         ; $6890: $9d
    ld b, c                                       ; $6891: $41
    cp l                                          ; $6892: $bd
    rst $10                                       ; $6893: $d7
    cp c                                          ; $6894: $b9
    xor e                                         ; $6895: $ab
    ldh a, [$3c]                                  ; $6896: $f0 $3c
    sub [hl]                                      ; $6898: $96

jr_062_6899:
    ld sp, $1df4                                  ; $6899: $31 $f4 $1d
    jp nc, $7295                                  ; $689c: $d2 $95 $72

    sub [hl]                                      ; $689f: $96
    add b                                         ; $68a0: $80
    db $ec                                        ; $68a1: $ec
    cp d                                          ; $68a2: $ba
    add e                                         ; $68a3: $83
    cp a                                          ; $68a4: $bf
    ld b, b                                       ; $68a5: $40
    ld d, l                                       ; $68a6: $55
    sbc $65                                       ; $68a7: $de $65
    inc d                                         ; $68a9: $14
    and l                                         ; $68aa: $a5
    sbc h                                         ; $68ab: $9c
    ldh [$dc], a                                  ; $68ac: $e0 $dc
    dec bc                                        ; $68ae: $0b
    rlca                                          ; $68af: $07
    ld e, h                                       ; $68b0: $5c
    sub $ea                                       ; $68b1: $d6 $ea
    and [hl]                                      ; $68b3: $a6
    dec sp                                        ; $68b4: $3b
    rlca                                          ; $68b5: $07
    ld c, d                                       ; $68b6: $4a
    ld a, c                                       ; $68b7: $79
    sbc a                                         ; $68b8: $9f
    rst $00                                       ; $68b9: $c7
    cp a                                          ; $68ba: $bf
    ld a, b                                       ; $68bb: $78
    or l                                          ; $68bc: $b5
    add e                                         ; $68bd: $83
    ld a, [de]                                    ; $68be: $1a
    ld b, e                                       ; $68bf: $43
    ld l, a                                       ; $68c0: $6f
    db $fc                                        ; $68c1: $fc
    ld [c], a                                     ; $68c2: $e2
    db $dd                                        ; $68c3: $dd
    rst $30                                       ; $68c4: $f7
    dec a                                         ; $68c5: $3d
    ld [hl-], a                                   ; $68c6: $32
    cp $38                                        ; $68c7: $fe $38
    ld a, [c]                                     ; $68c9: $f2
    rst $20                                       ; $68ca: $e7
    ld d, b                                       ; $68cb: $50
    ccf                                           ; $68cc: $3f
    rst $20                                       ; $68cd: $e7
    dec b                                         ; $68ce: $05
    db $ed                                        ; $68cf: $ed
    pop af                                        ; $68d0: $f1
    rst $00                                       ; $68d1: $c7
    xor c                                         ; $68d2: $a9
    cpl                                           ; $68d3: $2f
    and e                                         ; $68d4: $a3
    cp e                                          ; $68d5: $bb
    adc h                                         ; $68d6: $8c
    and h                                         ; $68d7: $a4
    ld d, e                                       ; $68d8: $53
    ld a, d                                       ; $68d9: $7a
    bit 0, e                                      ; $68da: $cb $43
    jr z, jr_062_6959                             ; $68dc: $28 $7b

    adc h                                         ; $68de: $8c
    rst $20                                       ; $68df: $e7
    ld l, h                                       ; $68e0: $6c
    cpl                                           ; $68e1: $2f
    rla                                           ; $68e2: $17
    jp z, $b47e                                   ; $68e3: $ca $7e $b4

    rlca                                          ; $68e6: $07
    call nz, $7e8b                                ; $68e7: $c4 $8b $7e
    inc e                                         ; $68ea: $1c
    ld [de], a                                    ; $68eb: $12
    sbc b                                         ; $68ec: $98
    sbc l                                         ; $68ed: $9d
    jp c, $6177                                   ; $68ee: $da $77 $61

    rst $28                                       ; $68f1: $ef
    adc $ba                                       ; $68f2: $ce $ba
    cpl                                           ; $68f4: $2f
    ld l, b                                       ; $68f5: $68
    ld a, $e7                                     ; $68f6: $3e $e7
    dec b                                         ; $68f8: $05
    sub a                                         ; $68f9: $97
    scf                                           ; $68fa: $37
    ld l, c                                       ; $68fb: $69
    ld b, e                                       ; $68fc: $43
    di                                            ; $68fd: $f3
    ld [c], a                                     ; $68fe: $e2
    sbc a                                         ; $68ff: $9f
    xor e                                         ; $6900: $ab
    ld a, d                                       ; $6901: $7a
    ld a, [c]                                     ; $6902: $f2
    cp l                                          ; $6903: $bd
    dec bc                                        ; $6904: $0b
    ld a, e                                       ; $6905: $7b
    ld [hl], a                                    ; $6906: $77
    sub $7d                                       ; $6907: $d6 $7d
    ld b, c                                       ; $6909: $41
    di                                            ; $690a: $f3
    add hl, sp                                    ; $690b: $39
    cpl                                           ; $690c: $2f
    sub a                                         ; $690d: $97
    ld [$73b2], a                                 ; $690e: $ea $b2 $73
    ld c, a                                       ; $6911: $4f
    call c, $6a21                                 ; $6912: $dc $21 $6a
    adc a                                         ; $6915: $8f
    xor e                                         ; $6916: $ab
    ld c, e                                       ; $6917: $4b
    cp a                                          ; $6918: $bf
    ld e, a                                       ; $6919: $5f
    rlca                                          ; $691a: $07
    ld e, h                                       ; $691b: $5c
    and [hl]                                      ; $691c: $a6
    cp [hl]                                       ; $691d: $be
    xor h                                         ; $691e: $ac
    ld b, b                                       ; $691f: $40
    db $ec                                        ; $6920: $ec
    ld hl, $9994                                  ; $6921: $21 $94 $99
    add a                                         ; $6924: $87
    xor $a0                                       ; $6925: $ee $a0
    ld a, $af                                     ; $6927: $3e $af
    pop hl                                        ; $6929: $e1
    ld c, [hl]                                    ; $692a: $4e
    ld l, l                                       ; $692b: $6d
    db $ec                                        ; $692c: $ec
    call c, Call_062_7713                         ; $692d: $dc $13 $77
    adc b                                         ; $6930: $88
    jp c, $eae3                                   ; $6931: $da $e3 $ea

    jp nc, Jump_000_17ef                          ; $6934: $d2 $ef $17

    sub a                                         ; $6937: $97
    ld l, c                                       ; $6938: $69
    ret nc                                        ; $6939: $d0

    add hl, sp                                    ; $693a: $39

jr_062_693b:
    inc [hl]                                      ; $693b: $34
    adc a                                         ; $693c: $8f
    and c                                         ; $693d: $a1
    ld b, a                                       ; $693e: $47
    ld l, c                                       ; $693f: $69
    xor h                                         ; $6940: $ac
    sub l                                         ; $6941: $95
    and c                                         ; $6942: $a1
    ld [hl], a                                    ; $6943: $77
    dec bc                                        ; $6944: $0b
    ld a, [$179c]                                 ; $6945: $fa $9c $17
    rlca                                          ; $6948: $07
    ld e, h                                       ; $6949: $5c
    add $19                                       ; $694a: $c6 $19
    ld [hl], d                                    ; $694c: $72
    sbc a                                         ; $694d: $9f
    add a                                         ; $694e: $87
    and $39                                       ; $694f: $e6 $39
    rla                                           ; $6951: $17
    add l                                         ; $6952: $85
    ld e, h                                       ; $6953: $5c
    ld h, h                                       ; $6954: $64
    db $e4                                        ; $6955: $e4
    ld sp, $7df4                                  ; $6956: $31 $f4 $7d

jr_062_6959:
    ld e, [hl]                                    ; $6959: $5e
    and e                                         ; $695a: $a3
    ld b, e                                       ; $695b: $43
    db $ec                                        ; $695c: $ec
    or l                                          ; $695d: $b5
    sbc d                                         ; $695e: $9a
    ld d, l                                       ; $695f: $55
    ld d, c                                       ; $6960: $51
    ld b, l                                       ; $6961: $45
    call z, $2ef7                                 ; $6962: $cc $f7 $2e
    db $ec                                        ; $6965: $ec
    db $dd                                        ; $6966: $dd
    ld e, c                                       ; $6967: $59
    rst $30                                       ; $6968: $f7
    dec b                                         ; $6969: $05
    call $bce7                                    ; $696a: $cd $e7 $bc
    rlca                                          ; $696d: $07
    ccf                                           ; $696e: $3f
    cp $67                                        ; $696f: $fe $67
    rlca                                          ; $6971: $07
    ld a, a                                       ; $6972: $7f
    ld d, a                                       ; $6973: $57
    jr nz, jr_062_69a5                            ; $6974: $20 $2f

    rst $10                                       ; $6976: $d7
    cp c                                          ; $6977: $b9
    xor e                                         ; $6978: $ab
    ldh a, [$3c]                                  ; $6979: $f0 $3c
    sub [hl]                                      ; $697b: $96
    ld sp, $1df4                                  ; $697c: $31 $f4 $1d
    db $fc                                        ; $697f: $fc
    ld hl, sp-$61                                 ; $6980: $f8 $9f
    dec e                                         ; $6982: $1d
    db $fc                                        ; $6983: $fc
    ld e, l                                       ; $6984: $5d
    add c                                         ; $6985: $81
    sbc h                                         ; $6986: $9c
    or l                                          ; $6987: $b5
    ld c, e                                       ; $6988: $4b
    ld a, a                                       ; $6989: $7f
    xor e                                         ; $698a: $ab

Jump_062_698b:
    push hl                                       ; $698b: $e5
    inc e                                         ; $698c: $1c
    ld b, e                                       ; $698d: $43
    sbc a                                         ; $698e: $9f
    add l                                         ; $698f: $85
    adc h                                         ; $6990: $8c
    sbc l                                         ; $6991: $9d
    db $eb                                        ; $6992: $eb
    and [hl]                                      ; $6993: $a6
    ld [hl], a                                    ; $6994: $77
    jr z, jr_062_693b                             ; $6995: $28 $a4

    pop af                                        ; $6997: $f1
    ld a, [hl]                                    ; $6998: $7e
    ld bc, $3fed                                  ; $6999: $01 $ed $3f
    add a                                         ; $699c: $87
    ld a, [$1424]                                 ; $699d: $fa $24 $14
    di                                            ; $69a0: $f3
    ld d, b                                       ; $69a1: $50
    ld e, a                                       ; $69a2: $5f
    inc c                                         ; $69a3: $0c
    ld a, l                                       ; $69a4: $7d

jr_062_69a5:
    sub l                                         ; $69a5: $95
    jp nc, Jump_062_698b                          ; $69a6: $d2 $8b $69

    ld a, e                                       ; $69a9: $7b
    ld b, b                                       ; $69aa: $40
    ld d, $5b                                     ; $69ab: $16 $5b
    adc $d9                                       ; $69ad: $ce $d9
    ld h, l                                       ; $69af: $65
    rra                                           ; $69b0: $1f
    rla                                           ; $69b1: $17
    ld [$d7aa], a                                 ; $69b2: $ea $aa $d7
    ld l, d                                       ; $69b5: $6a
    ld c, $cd                                     ; $69b6: $0e $cd
    rst $30                                       ; $69b8: $f7
    dec bc                                        ; $69b9: $0b
    db $ed                                        ; $69ba: $ed
    pop af                                        ; $69bb: $f1
    rst $00                                       ; $69bc: $c7
    ld d, l                                       ; $69bd: $55
    push af                                       ; $69be: $f5
    ei                                            ; $69bf: $fb
    ld d, b                                       ; $69c0: $50
    ld e, a                                       ; $69c1: $5f
    inc hl                                        ; $69c2: $23
    push af                                       ; $69c3: $f5
    ld [c], a                                     ; $69c4: $e2
    ld [hl], e                                    ; $69c5: $73
    halt                                          ; $69c6: $76
    ret nz                                        ; $69c7: $c0

    ld h, l                                       ; $69c8: $65
    adc $55                                       ; $69c9: $ce $55
    ld d, b                                       ; $69cb: $50
    jp z, Jump_062_56b9                           ; $69cc: $ca $b9 $56

    ld [hl], e                                    ; $69cf: $73
    sbc a                                         ; $69d0: $9f
    rla                                           ; $69d1: $17
    jp $9fc8                                      ; $69d2: $c3 $c8 $9f


    ld b, e                                       ; $69d5: $43
    sub b                                         ; $69d6: $90
    ld d, l                                       ; $69d7: $55
    and [hl]                                      ; $69d8: $a6
    ld h, [hl]                                    ; $69d9: $66
    cp d                                          ; $69da: $ba
    ld d, a                                       ; $69db: $57
    rst $18                                       ; $69dc: $df
    cpl                                           ; $69dd: $2f
    ld l, l                                       ; $69de: $6d
    and $c5                                       ; $69df: $e6 $c5
    ret nc                                        ; $69e1: $d0

    and a                                         ; $69e2: $a7
    ld a, [hl-]                                   ; $69e3: $3a
    dec b                                         ; $69e4: $05
    dec a                                         ; $69e5: $3d
    add h                                         ; $69e6: $84
    ld [hl], d                                    ; $69e7: $72
    rst $28                                       ; $69e8: $ef
    jp nz, $9dde                                  ; $69e9: $c2 $de $9d

    ld [hl], l                                    ; $69ec: $75
    ld e, a                                       ; $69ed: $5f
    ret nc                                        ; $69ee: $d0

    ld a, h                                       ; $69ef: $7c
    adc $0b                                       ; $69f0: $ce $0b
    ld l, l                                       ; $69f2: $6d
    and $c5                                       ; $69f3: $e6 $c5
    ccf                                           ; $69f5: $3f
    ld h, a                                       ; $69f6: $67
    ld e, c                                       ; $69f7: $59
    ld d, l                                       ; $69f8: $55
    rst $38                                       ; $69f9: $ff
    and c                                         ; $69fa: $a1
    db $ed                                        ; $69fb: $ed
    ld bc, $6c59                                  ; $69fc: $01 $59 $6c
    cp c                                          ; $69ff: $b9
    ld [hl], a                                    ; $6a00: $77
    ld h, c                                       ; $6a01: $61
    rst $28                                       ; $6a02: $ef
    adc $ba                                       ; $6a03: $ce $ba
    cpl                                           ; $6a05: $2f
    ld l, b                                       ; $6a06: $68
    ld a, $e7                                     ; $6a07: $3e $e7
    dec b                                         ; $6a09: $05
    ld l, l                                       ; $6a0a: $6d
    and $c5                                       ; $6a0b: $e6 $c5
    ret nc                                        ; $6a0d: $d0

    and a                                         ; $6a0e: $a7
    ld b, d                                       ; $6a0f: $42
    ld h, l                                       ; $6a10: $65
    rrca                                          ; $6a11: $0f
    and c                                         ; $6a12: $a1
    db $ec                                        ; $6a13: $ec
    call c, Call_062_7713                         ; $6a14: $dc $13 $77
    adc b                                         ; $6a17: $88
    jp c, $eae3                                   ; $6a18: $da $e3 $ea

    jp nc, Jump_000_17ef                          ; $6a1b: $d2 $ef $17

    rlca                                          ; $6a1e: $07
    ld e, h                                       ; $6a1f: $5c
    add $19                                       ; $6a20: $c6 $19
    ld [hl], d                                    ; $6a22: $72
    sbc a                                         ; $6a23: $9f
    ld b, a                                       ; $6a24: $47
    ld [hl], a                                    ; $6a25: $77
    sbc c                                         ; $6a26: $99
    ld a, [$02b2]                                 ; $6a27: $fa $b2 $02
    or c                                          ; $6a2a: $b1
    add a                                         ; $6a2b: $87
    ld d, b                                       ; $6a2c: $50
    halt                                          ; $6a2d: $76
    xor $89                                       ; $6a2e: $ee $89
    dec sp                                        ; $6a30: $3b
    ld b, h                                       ; $6a31: $44
    db $ed                                        ; $6a32: $ed
    ld [hl], c                                    ; $6a33: $71
    ld [hl], l                                    ; $6a34: $75
    jp hl                                         ; $6a35: $e9


    rst $30                                       ; $6a36: $f7
    dec bc                                        ; $6a37: $0b
    ld d, a                                       ; $6a38: $57
    cp $5a                                        ; $6a39: $fe $5a
    sbc l                                         ; $6a3b: $9d
    ld b, e                                       ; $6a3c: $43
    srl c                                         ; $6a3d: $cb $39
    cpl                                           ; $6a3f: $2f
    rlca                                          ; $6a40: $07
    ld e, h                                       ; $6a41: $5c
    add $19                                       ; $6a42: $c6 $19
    ld [hl], d                                    ; $6a44: $72
    sbc a                                         ; $6a45: $9f
    add a                                         ; $6a46: $87
    and $39                                       ; $6a47: $e6 $39
    rst $30                                       ; $6a49: $f7
    jr c, jr_062_6a89                             ; $6a4a: $38 $3d

    dec bc                                        ; $6a4c: $0b
    ld c, $f5                                     ; $6a4d: $0e $f5
    sub c                                         ; $6a4f: $91
    ccf                                           ; $6a50: $3f
    ld l, c                                       ; $6a51: $69
    inc bc                                        ; $6a52: $03
    and l                                         ; $6a53: $a5
    cp h                                          ; $6a54: $bc
    ld a, [$f905]                                 ; $6a55: $fa $05 $f9
    sbc h                                         ; $6a58: $9c
    ld e, l                                       ; $6a59: $5d
    ret c                                         ; $6a5a: $d8

    cp e                                          ; $6a5b: $bb
    or e                                          ; $6a5c: $b3
    xor $0b                                       ; $6a5d: $ee $0b
    sbc d                                         ; $6a5f: $9a
    rst $08                                       ; $6a60: $cf
    ld a, c                                       ; $6a61: $79
    ld bc, $3a87                                  ; $6a62: $01 $87 $3a
    xor b                                         ; $6a65: $a8
    jr c, jr_062_6a7c                             ; $6a66: $38 $14

    ld a, c                                       ; $6a68: $79
    ld bc, $d487                                  ; $6a69: $01 $87 $d4
    rst $28                                       ; $6a6c: $ef
    ld b, e                                       ; $6a6d: $43
    ld a, l                                       ; $6a6e: $7d
    or l                                          ; $6a6f: $b5
    add hl, sp                                    ; $6a70: $39
    ld a, [c]                                     ; $6a71: $f2
    rst $00                                       ; $6a72: $c7
    sbc [hl]                                      ; $6a73: $9e
    add h                                         ; $6a74: $84
    ld h, d                                       ; $6a75: $62
    ld e, [hl]                                    ; $6a76: $5e
    db $ed                                        ; $6a77: $ed
    and b                                         ; $6a78: $a0
    adc $59                                       ; $6a79: $ce $59
    sbc e                                         ; $6a7b: $9b

jr_062_6a7c:
    ld a, c                                       ; $6a7c: $79
    adc $fd                                       ; $6a7d: $ce $fd
    adc $ab                                       ; $6a7f: $ce $ab
    rst $38                                       ; $6a81: $ff
    ld a, c                                       ; $6a82: $79
    inc l                                         ; $6a83: $2c
    ld a, e                                       ; $6a84: $7b
    ld e, h                                       ; $6a85: $5c
    call z, Call_000_14eb                         ; $6a86: $cc $eb $14

jr_062_6a89:
    and l                                         ; $6a89: $a5
    sbc h                                         ; $6a8a: $9c
    ld a, h                                       ; $6a8b: $7c
    cp a                                          ; $6a8c: $bf
    sub a                                         ; $6a8d: $97
    ld a, l                                       ; $6a8e: $7d
    ld e, h                                       ; $6a8f: $5c
    xor b                                         ; $6a90: $a8
    xor e                                         ; $6a91: $ab
    ld e, $19                                     ; $6a92: $1e $19
    ld a, a                                       ; $6a94: $7f
    inc e                                         ; $6a95: $1c
    ld [$5f53], a                                 ; $6a96: $ea $53 $5f
    add $d0                                       ; $6a99: $c6 $d0
    dec de                                        ; $6a9b: $1b
    ld a, [de]                                    ; $6a9c: $1a
    db $f4                                        ; $6a9d: $f4
    db $fd                                        ; $6a9e: $fd
    ld [bc], a                                    ; $6a9f: $02
    db $ed                                        ; $6aa0: $ed
    pop af                                        ; $6aa1: $f1
    rst $00                                       ; $6aa2: $c7
    ld d, l                                       ; $6aa3: $55
    push af                                       ; $6aa4: $f5
    ei                                            ; $6aa5: $fb
    ld d, b                                       ; $6aa6: $50
    ld e, a                                       ; $6aa7: $5f
    ld l, l                                       ; $6aa8: $6d
    adc [hl]                                      ; $6aa9: $8e
    db $fc                                        ; $6aaa: $fc
    or c                                          ; $6aab: $b1
    ld l, c                                       ; $6aac: $69
    ld a, e                                       ; $6aad: $7b
    ld b, b                                       ; $6aae: $40
    ld d, $5b                                     ; $6aaf: $16 $5b
    adc $79                                       ; $6ab1: $ce $79
    ld bc, $e66d                                  ; $6ab3: $01 $6d $e6
    ld d, l                                       ; $6ab6: $55
    and l                                         ; $6ab7: $a5
    rst $30                                       ; $6ab8: $f7
    xor $49                                       ; $6ab9: $ee $49
    ld d, b                                       ; $6abb: $50
    adc e                                         ; $6abc: $8b
    inc [hl]                                      ; $6abd: $34
    dec e                                         ; $6abe: $1d
    dec a                                         ; $6abf: $3d
    inc b                                         ; $6ac0: $04
    ld e, c                                       ; $6ac1: $59
    and l                                         ; $6ac2: $a5
    and d                                         ; $6ac3: $a2
    rst $00                                       ; $6ac4: $c7
    ld e, a                                       ; $6ac5: $5f
    ldh a, [$de]                                  ; $6ac6: $f0 $de
    add l                                         ; $6ac8: $85
    cp l                                          ; $6ac9: $bd
    dec sp                                        ; $6aca: $3b
    db $eb                                        ; $6acb: $eb
    cp [hl]                                       ; $6acc: $be
    and b                                         ; $6acd: $a0
    ld sp, hl                                     ; $6ace: $f9
    sbc h                                         ; $6acf: $9c
    rla                                           ; $6ad0: $17
    sub a                                         ; $6ad1: $97
    scf                                           ; $6ad2: $37
    ld l, c                                       ; $6ad3: $69
    ld b, e                                       ; $6ad4: $43
    di                                            ; $6ad5: $f3
    ld [c], a                                     ; $6ad6: $e2
    sbc a                                         ; $6ad7: $9f
    or e                                          ; $6ad8: $b3
    xor h                                         ; $6ad9: $ac
    xor d                                         ; $6ada: $aa
    rst $38                                       ; $6adb: $ff
    call c, $b0bb                                 ; $6adc: $dc $bb $b0
    ld [hl], a                                    ; $6adf: $77
    ld h, a                                       ; $6ae0: $67
    db $dd                                        ; $6ae1: $dd
    rla                                           ; $6ae2: $17
    inc [hl]                                      ; $6ae3: $34
    sbc a                                         ; $6ae4: $9f
    di                                            ; $6ae5: $f3
    ld [bc], a                                    ; $6ae6: $02
    rlca                                          ; $6ae7: $07
    ld e, l                                       ; $6ae8: $5d
    call z, $dd8b                                 ; $6ae9: $cc $8b $dd
    db $eb                                        ; $6aec: $eb
    di                                            ; $6aed: $f3
    adc e                                         ; $6aee: $8b
    dec b                                         ; $6aef: $05
    cp l                                          ; $6af0: $bd
    ld d, b                                       ; $6af1: $50
    and [hl]                                      ; $6af2: $a6
    ld [hl], h                                    ; $6af3: $74
    reti                                          ; $6af4: $d9


    cp c                                          ; $6af5: $b9
    daa                                           ; $6af6: $27
    xor $10                                       ; $6af7: $ee $10
    or l                                          ; $6af9: $b5
    rst $00                                       ; $6afa: $c7
    push de                                       ; $6afb: $d5
    and l                                         ; $6afc: $a5
    rst $18                                       ; $6afd: $df
    cpl                                           ; $6afe: $2f
    rlca                                          ; $6aff: $07
    ld e, h                                       ; $6b00: $5c
    add $d0                                       ; $6b01: $c6 $d0
    dec de                                        ; $6b03: $1b
    ld a, [de]                                    ; $6b04: $1a
    ld [hl], h                                    ; $6b05: $74
    ld c, $a1                                     ; $6b06: $0e $a1
    db $ec                                        ; $6b08: $ec
    call c, Call_062_7713                         ; $6b09: $dc $13 $77
    adc b                                         ; $6b0c: $88
    jp c, $eae3                                   ; $6b0d: $da $e3 $ea

    jp nc, Jump_000_17ef                          ; $6b10: $d2 $ef $17

    db $ed                                        ; $6b13: $ed
    ccf                                           ; $6b14: $3f
    rla                                           ; $6b15: $17
    jp $ac38                                      ; $6b16: $c3 $38 $ac


    ld [hl], $67                                  ; $6b19: $36 $67
    add hl, de                                    ; $6b1b: $19
    ld sp, hl                                     ; $6b1c: $f9
    dec b                                         ; $6b1d: $05
    db $dd                                        ; $6b1e: $dd
    rst $08                                       ; $6b1f: $cf
    ld a, c                                       ; $6b20: $79
    ld bc, $9387                                  ; $6b21: $01 $87 $93
    or h                                          ; $6b24: $b4
    pop de                                        ; $6b25: $d1
    ld e, l                                       ; $6b26: $5d
    add $19                                       ; $6b27: $c6 $19
    ld [hl], d                                    ; $6b29: $72
    and b                                         ; $6b2a: $a0
    sub h                                         ; $6b2b: $94
    rst $30                                       ; $6b2c: $f7
    ld a, c                                       ; $6b2d: $79
    xor b                                         ; $6b2e: $a8
    adc a                                         ; $6b2f: $8f
    db $fc                                        ; $6b30: $fc
    cp c                                          ; $6b31: $b9
    sub [hl]                                      ; $6b32: $96
    and l                                         ; $6b33: $a5
    ld a, b                                       ; $6b34: $78
    ld [de], a                                    ; $6b35: $12
    call nc, Call_000_02fd                        ; $6b36: $d4 $fd $02
    rst $10                                       ; $6b39: $d7
    ei                                            ; $6b3a: $fb
    rst $10                                       ; $6b3b: $d7
    ld l, [hl]                                    ; $6b3c: $6e
    ld c, l                                       ; $6b3d: $4d
    db $dd                                        ; $6b3e: $dd
    ld [hl], l                                    ; $6b3f: $75
    ccf                                           ; $6b40: $3f
    ld c, l                                       ; $6b41: $4d
    ld [$05f5], a                                 ; $6b42: $ea $f5 $05
    rst $10                                       ; $6b45: $d7
    cp c                                          ; $6b46: $b9
    xor e                                         ; $6b47: $ab
    ldh a, [$3c]                                  ; $6b48: $f0 $3c
    sub [hl]                                      ; $6b4a: $96
    ld sp, $5df4                                  ; $6b4b: $31 $f4 $5d
    rst $28                                       ; $6b4e: $ef
    ld e, a                                       ; $6b4f: $5f
    cp e                                          ; $6b50: $bb
    dec [hl]                                      ; $6b51: $35
    ld [hl], l                                    ; $6b52: $75
    add a                                         ; $6b53: $87
    ld a, [hl-]                                   ; $6b54: $3a
    xor b                                         ; $6b55: $a8
    ld hl, sp-$59                                 ; $6b56: $f8 $a7
    ld c, c                                       ; $6b58: $49
    cp l                                          ; $6b59: $bd
    sbc $2f                                       ; $6b5a: $de $2f
    db $ed                                        ; $6b5c: $ed
    pop af                                        ; $6b5d: $f1
    rst $00                                       ; $6b5e: $c7
    sub c                                         ; $6b5f: $91
    ccf                                           ; $6b60: $3f
    add a                                         ; $6b61: $87
    ld a, [$2f39]                                 ; $6b62: $fa $39 $2f
    db $ed                                        ; $6b65: $ed
    pop af                                        ; $6b66: $f1
    rst $00                                       ; $6b67: $c7
    add hl, hl                                    ; $6b68: $29
    ld e, l                                       ; $6b69: $5d
    call nz, Call_062_7d43                        ; $6b6a: $c4 $43 $7d
    ld c, h                                       ; $6b6d: $4c
    ld de, $21e5                                  ; $6b6e: $11 $e5 $21
    sub h                                         ; $6b71: $94
    ld [hl], e                                    ; $6b72: $73
    ld e, [hl]                                    ; $6b73: $5e

jr_062_6b74:
    rst $20                                       ; $6b74: $e7
    ld [hl], l                                    ; $6b75: $75
    ld b, $9c                                     ; $6b76: $06 $9c
    ld h, l                                       ; $6b78: $65
    xor l                                         ; $6b79: $ad
    ret nc                                        ; $6b7a: $d0

    jp nc, Jump_000_253b                          ; $6b7b: $d2 $3b $25

    rla                                           ; $6b7e: $17
    rst $38                                       ; $6b7f: $ff
    db $f4                                        ; $6b80: $f4
    cp l                                          ; $6b81: $bd
    dec bc                                        ; $6b82: $0b
    ld a, e                                       ; $6b83: $7b
    ld [hl], a                                    ; $6b84: $77
    sub $7d                                       ; $6b85: $d6 $7d
    ld b, c                                       ; $6b87: $41
    di                                            ; $6b88: $f3
    add hl, sp                                    ; $6b89: $39
    cpl                                           ; $6b8a: $2f
    rlca                                          ; $6b8b: $07
    sbc e                                         ; $6b8c: $9b
    ld d, l                                       ; $6b8d: $55
    ld a, c                                       ; $6b8e: $79
    ld d, l                                       ; $6b8f: $55
    ld b, c                                       ; $6b90: $41
    call nz, $a1ce                                ; $6b91: $c4 $ce $a1
    cp [hl]                                       ; $6b94: $be
    rst $00                                       ; $6b95: $c7
    ld [bc], a                                    ; $6b96: $02
    ld d, d                                       ; $6b97: $52
    ld d, [hl]                                    ; $6b98: $56
    dec l                                         ; $6b99: $2d
    ld c, [hl]                                    ; $6b9a: $4e
    rst $18                                       ; $6b9b: $df
    cp e                                          ; $6b9c: $bb
    or b                                          ; $6b9d: $b0
    ld [hl], a                                    ; $6b9e: $77
    ld h, a                                       ; $6b9f: $67
    db $dd                                        ; $6ba0: $dd
    rla                                           ; $6ba1: $17
    inc [hl]                                      ; $6ba2: $34
    sbc a                                         ; $6ba3: $9f
    di                                            ; $6ba4: $f3
    ld [bc], a                                    ; $6ba5: $02
    ld l, l                                       ; $6ba6: $6d
    sub [hl]                                      ; $6ba7: $96
    push bc                                       ; $6ba8: $c5
    ccf                                           ; $6ba9: $3f
    dec a                                         ; $6baa: $3d
    dec d                                         ; $6bab: $15
    ld a, [hl+]                                   ; $6bac: $2a
    dec sp                                        ; $6bad: $3b
    ld [hl], a                                    ; $6bae: $77
    xor $89                                       ; $6baf: $ee $89
    dec sp                                        ; $6bb1: $3b
    ld b, h                                       ; $6bb2: $44
    db $ed                                        ; $6bb3: $ed
    ld [hl], c                                    ; $6bb4: $71
    ld [hl], l                                    ; $6bb5: $75
    jp hl                                         ; $6bb6: $e9


    rst $30                                       ; $6bb7: $f7
    dec bc                                        ; $6bb8: $0b
    rla                                           ; $6bb9: $17
    ld b, [hl]                                    ; $6bba: $46
    db $ec                                        ; $6bbb: $ec
    xor h                                         ; $6bbc: $ac
    pop hl                                        ; $6bbd: $e1
    add hl, de                                    ; $6bbe: $19
    ld e, d                                       ; $6bbf: $5a
    and $5c                                       ; $6bc0: $e6 $5c
    inc hl                                        ; $6bc2: $23
    push af                                       ; $6bc3: $f5
    jp nz, $a18b                                  ; $6bc4: $c2 $8b $a1

    adc a                                         ; $6bc7: $8f
    xor $b2                                       ; $6bc8: $ee $b2
    ld [bc], a                                    ; $6bca: $02
    or c                                          ; $6bcb: $b1
    ld [hl], a                                    ; $6bcc: $77
    xor $89                                       ; $6bcd: $ee $89
    dec sp                                        ; $6bcf: $3b
    ld b, h                                       ; $6bd0: $44
    db $ed                                        ; $6bd1: $ed
    ld [hl], c                                    ; $6bd2: $71
    ld [hl], l                                    ; $6bd3: $75
    jp hl                                         ; $6bd4: $e9


    rst $30                                       ; $6bd5: $f7
    dec bc                                        ; $6bd6: $0b
    rla                                           ; $6bd7: $17
    and $d0                                       ; $6bd8: $e6 $d0
    inc a                                         ; $6bda: $3c
    set 1, b                                      ; $6bdb: $cb $c8
    cpl                                           ; $6bdd: $2f
    add sp, $7e                                   ; $6bde: $e8 $7e
    adc $0b                                       ; $6be0: $ce $0b
    ld l, l                                       ; $6be2: $6d
    and $91                                       ; $6be3: $e6 $91
    ccf                                           ; $6be5: $3f
    add a                                         ; $6be6: $87
    ld a, [$2940]                                 ; $6be7: $fa $40 $29
    cpl                                           ; $6bea: $2f
    sbc e                                         ; $6beb: $9b
    jr c, jr_062_6b74                             ; $6bec: $38 $86

    ld c, [hl]                                    ; $6bee: $4e
    ld e, e                                       ; $6bef: $5b
    ei                                            ; $6bf0: $fb
    rst $08                                       ; $6bf1: $cf
    call nc, Call_000_2fdc                        ; $6bf2: $d4 $dc $2f
    rst $10                                       ; $6bf5: $d7
    ei                                            ; $6bf6: $fb
    rst $10                                       ; $6bf7: $d7
    ld l, [hl]                                    ; $6bf8: $6e
    dec c                                         ; $6bf9: $0d
    rst $00                                       ; $6bfa: $c7
    ret nc                                        ; $6bfb: $d0

    dec sp                                        ; $6bfc: $3b
    ld c, b                                       ; $6bfd: $48
    ld [hl], c                                    ; $6bfe: $71
    adc d                                         ; $6bff: $8a
    db $eb                                        ; $6c00: $eb
    xor [hl]                                      ; $6c01: $ae
    and [hl]                                      ; $6c02: $a6

Jump_062_6c03:
    add $4e                                       ; $6c03: $c6 $4e
    ld b, l                                       ; $6c05: $45
    ld l, l                                       ; $6c06: $6d
    cp h                                          ; $6c07: $bc
    rst $10                                       ; $6c08: $d7
    cp c                                          ; $6c09: $b9
    xor e                                         ; $6c0a: $ab
    ldh a, [$3c]                                  ; $6c0b: $f0 $3c
    sub [hl]                                      ; $6c0d: $96
    ld sp, $5df4                                  ; $6c0e: $31 $f4 $5d
    rst $28                                       ; $6c11: $ef
    ld e, a                                       ; $6c12: $5f
    cp e                                          ; $6c13: $bb
    dec [hl]                                      ; $6c14: $35
    ld [hl], l                                    ; $6c15: $75
    ld d, a                                       ; $6c16: $57
    ld d, e                                       ; $6c17: $53
    ld h, e                                       ; $6c18: $63
    and a                                         ; $6c19: $a7
    and d                                         ; $6c1a: $a2
    ld [hl], $6a                                  ; $6c1b: $36 $6a
    db $fc                                        ; $6c1d: $fc
    db $d3                                        ; $6c1e: $d3
    adc d                                         ; $6c1f: $8a
    jp nc, Jump_062_79d1                          ; $6c20: $d2 $d1 $79

    cp a                                          ; $6c23: $bf
    db $ed                                        ; $6c24: $ed
    pop af                                        ; $6c25: $f1
    rst $00                                       ; $6c26: $c7
    sub c                                         ; $6c27: $91
    ccf                                           ; $6c28: $3f
    ld [hl], a                                    ; $6c29: $77
    ret                                           ; $6c2a: $c9


    add hl, sp                                    ; $6c2b: $39
    cpl                                           ; $6c2c: $2f
    db $ed                                        ; $6c2d: $ed
    pop af                                        ; $6c2e: $f1
    rst $00                                       ; $6c2f: $c7
    add hl, hl                                    ; $6c30: $29
    ld e, l                                       ; $6c31: $5d
    call nz, Call_062_7d43                        ; $6c32: $c4 $43 $7d
    ld c, h                                       ; $6c35: $4c
    ld de, $21e5                                  ; $6c36: $11 $e5 $21
    sub h                                         ; $6c39: $94
    ld [hl], e                                    ; $6c3a: $73
    ld e, [hl]                                    ; $6c3b: $5e
    ld l, l                                       ; $6c3c: $6d
    sub [hl]                                      ; $6c3d: $96
    push bc                                       ; $6c3e: $c5
    ccf                                           ; $6c3f: $3f
    dec a                                         ; $6c40: $3d

jr_062_6c41:
    rst $20                                       ; $6c41: $e7
    ld a, [hl]                                    ; $6c42: $7e
    ld h, a                                       ; $6c43: $67
    ret nz                                        ; $6c44: $c0

    ld b, l                                       ; $6c45: $45
    ccf                                           ; $6c46: $3f
    ld c, $09                                     ; $6c47: $0e $09
    call z, Call_062_7b96                         ; $6c49: $cc $96 $7b
    rla                                           ; $6c4c: $17
    or $ee                                        ; $6c4d: $f6 $ee
    xor h                                         ; $6c4f: $ac
    ei                                            ; $6c50: $fb
    add d                                         ; $6c51: $82
    and $73                                       ; $6c52: $e6 $73
    ld e, [hl]                                    ; $6c54: $5e
    ld l, l                                       ; $6c55: $6d
    ld a, [$e362]                                 ; $6c56: $fa $62 $e3
    ld a, [hl+]                                   ; $6c59: $2a
    jr z, jr_062_6c41                             ; $6c5a: $28 $e5

    db $e4                                        ; $6c5c: $e4
    dec [hl]                                      ; $6c5d: $35
    adc h                                         ; $6c5e: $8c
    sub l                                         ; $6c5f: $95
    rst $28                                       ; $6c60: $ef
    ld e, l                                       ; $6c61: $5d
    ret c                                         ; $6c62: $d8

    cp e                                          ; $6c63: $bb
    or e                                          ; $6c64: $b3
    xor $0b                                       ; $6c65: $ee $0b
    sbc d                                         ; $6c67: $9a
    rst $08                                       ; $6c68: $cf
    ld a, c                                       ; $6c69: $79
    ld bc, $966d                                  ; $6c6a: $01 $6d $96
    push bc                                       ; $6c6d: $c5
    ccf                                           ; $6c6e: $3f
    dec a                                         ; $6c6f: $3d
    dec d                                         ; $6c70: $15
    ld a, [hl+]                                   ; $6c71: $2a
    dec sp                                        ; $6c72: $3b
    ld [hl], a                                    ; $6c73: $77
    xor $89                                       ; $6c74: $ee $89
    dec sp                                        ; $6c76: $3b
    ld b, h                                       ; $6c77: $44
    db $ed                                        ; $6c78: $ed
    ld [hl], c                                    ; $6c79: $71
    ld [hl], l                                    ; $6c7a: $75
    jp hl                                         ; $6c7b: $e9


    rst $30                                       ; $6c7c: $f7
    dec bc                                        ; $6c7d: $0b
    ld l, l                                       ; $6c7e: $6d
    ld a, a                                       ; $6c7f: $7f
    ld l, b                                       ; $6c80: $68
    sbc c                                         ; $6c81: $99
    ld [hl], e                                    ; $6c82: $73
    adc l                                         ; $6c83: $8d
    call nc, $2f0b                                ; $6c84: $d4 $0b $2f
    add [hl]                                      ; $6c87: $86
    ld a, $ba                                     ; $6c88: $3e $ba
    rrc d                                         ; $6c8a: $cb $0a
    call nz, $421e                                ; $6c8c: $c4 $1e $42
    reti                                          ; $6c8f: $d9


    cp c                                          ; $6c90: $b9
    daa                                           ; $6c91: $27
    xor $10                                       ; $6c92: $ee $10
    or l                                          ; $6c94: $b5
    rst $00                                       ; $6c95: $c7
    push de                                       ; $6c96: $d5
    and l                                         ; $6c97: $a5
    rst $18                                       ; $6c98: $df
    cpl                                           ; $6c99: $2f
    rla                                           ; $6c9a: $17
    and $d0                                       ; $6c9b: $e6 $d0
    inc a                                         ; $6c9d: $3c
    set 1, b                                      ; $6c9e: $cb $c8
    cpl                                           ; $6ca0: $2f
    add sp, $7e                                   ; $6ca1: $e8 $7e
    adc $0b                                       ; $6ca3: $ce $0b
    rst $10                                       ; $6ca5: $d7
    pop bc                                        ; $6ca6: $c1
    ld a, [bc]                                    ; $6ca7: $0a
    call nz, $81ce                                ; $6ca8: $c4 $ce $81
    ld d, d                                       ; $6cab: $52
    sbc [hl]                                      ; $6cac: $9e
    ld c, d                                       ; $6cad: $4a
    inc hl                                        ; $6cae: $23
    ldh a, [$ee]                                  ; $6caf: $f0 $ee
    ei                                            ; $6cb1: $fb
    ld e, [hl]                                    ; $6cb2: $5e
    ld [hl], l                                    ; $6cb3: $75
    adc a                                         ; $6cb4: $8f
    rlca                                          ; $6cb5: $07
    ld c, d                                       ; $6cb6: $4a
    ld a, c                                       ; $6cb7: $79
    inc c                                         ; $6cb8: $0c
    ld a, l                                       ; $6cb9: $7d
    sub [hl]                                      ; $6cba: $96
    ld b, l                                       ; $6cbb: $45
    ld sp, hl                                     ; $6cbc: $f9
    ld [hl], a                                    ; $6cbd: $77
    ld [hl], c                                    ; $6cbe: $71
    ld l, d                                       ; $6cbf: $6a
    and d                                         ; $6cc0: $a2
    ld [$4304], sp                                ; $6cc1: $08 $04 $43
    ld l, d                                       ; $6cc4: $6a
    ld a, a                                       ; $6cc5: $7f
    ld bc, $9457                                  ; $6cc6: $01 $57 $94
    jp c, $fa9c                                   ; $6cc9: $da $9c $fa

    dec e                                         ; $6ccc: $1d
    call Call_000_35fb                            ; $6ccd: $cd $fb $35
    ld a, [bc]                                    ; $6cd0: $0a
    add sp, -$62                                  ; $6cd1: $e8 $9e
    ld bc, $b5ef                                  ; $6cd3: $01 $ef $b5
    ld e, c                                       ; $6cd6: $59
    ld d, $07                                     ; $6cd7: $16 $07
    ld d, l                                       ; $6cd9: $55
    sbc l                                         ; $6cda: $9d
    dec bc                                        ; $6cdb: $0b
    or c                                          ; $6cdc: $b1
    ld [hl], e                                    ; $6cdd: $73
    and h                                         ; $6cde: $a4
    cp e                                          ; $6cdf: $bb
    rla                                           ; $6ce0: $17
    dec sp                                        ; $6ce1: $3b
    pop de                                        ; $6ce2: $d1

jr_062_6ce3:
    or d                                          ; $6ce3: $b2
    ld d, b                                       ; $6ce4: $50
    ld b, [hl]                                    ; $6ce5: $46
    cp $dc                                        ; $6ce6: $fe $dc
    di                                            ; $6ce8: $f3
    and l                                         ; $6ce9: $a5
    ld a, b                                       ; $6cea: $78
    rst $08                                       ; $6ceb: $cf
    cpl                                           ; $6cec: $2f
    ld d, b                                       ; $6ced: $50
    sub l                                         ; $6cee: $95
    daa                                           ; $6cef: $27
    ld a, [de]                                    ; $6cf0: $1a
    ld h, [hl]                                    ; $6cf1: $66
    rst $00                                       ; $6cf2: $c7
    sub b                                         ; $6cf3: $90
    ld c, d                                       ; $6cf4: $4a
    ld b, b                                       ; $6cf5: $40
    adc d                                         ; $6cf6: $8a
    di                                            ; $6cf7: $f3
    ld a, [hl]                                    ; $6cf8: $7e
    ld bc, $166d                                  ; $6cf9: $01 $6d $16
    pop af                                        ; $6cfc: $f1
    ld b, b                                       ; $6cfd: $40
    ld c, d                                       ; $6cfe: $4a
    ld a, [de]                                    ; $6cff: $1a

jr_062_6d00:
    pop bc                                        ; $6d00: $c1
    ld d, d                                       ; $6d01: $52
    rst $30                                       ; $6d02: $f7
    inc [hl]                                      ; $6d03: $34
    rst $10                                       ; $6d04: $d7
    jr nc, jr_062_6d00                            ; $6d05: $30 $f9

    dec b                                         ; $6d07: $05
    cp e                                          ; $6d08: $bb
    db $eb                                        ; $6d09: $eb
    ld e, $e3                                     ; $6d0a: $1e $e3
    jp nz, $ea43                                  ; $6d0c: $c2 $43 $ea

    dec bc                                        ; $6d0f: $0b
    ld h, l                                       ; $6d10: $65
    ld d, c                                       ; $6d11: $51
    ret z                                         ; $6d12: $c8

    sbc a                                         ; $6d13: $9f
    dec c                                         ; $6d14: $0d
    db $d3                                        ; $6d15: $d3
    pop de                                        ; $6d16: $d1
    ld [hl], l                                    ; $6d17: $75
    ld d, c                                       ; $6d18: $51
    ret z                                         ; $6d19: $c8

    ld a, [bc]                                    ; $6d1a: $0a
    add l                                         ; $6d1b: $85
    and c                                         ; $6d1c: $a1
    ldh a, [$f0]                                  ; $6d1d: $f0 $f0
    rrca                                          ; $6d1f: $0f
    dec l                                         ; $6d20: $2d
    ld d, e                                       ; $6d21: $53
    ld e, a                                       ; $6d22: $5f
    ld d, $53                                     ; $6d23: $16 $53
    jp nc, Jump_000_102b                          ; $6d25: $d2 $2b $10

    ld sp, $fb94                                  ; $6d28: $31 $94 $fb
    dec b                                         ; $6d2b: $05
    cpl                                           ; $6d2c: $2f
    ld d, a                                       ; $6d2d: $57
    sub h                                         ; $6d2e: $94

Call_062_6d2f:
    jp c, $b29c                                   ; $6d2f: $da $9c $b2

    jr nz, jr_062_6ce3                            ; $6d32: $20 $af

    add [hl]                                      ; $6d34: $86
    ld h, a                                       ; $6d35: $67
    adc l                                         ; $6d36: $8d
    and h                                         ; $6d37: $a4
    ld [$d05a], sp                                ; $6d38: $08 $5a $d0
    ld l, e                                       ; $6d3b: $6b
    add sp, $55                                   ; $6d3c: $e8 $55
    dec c                                         ; $6d3e: $0d
    rst $38                                       ; $6d3f: $ff
    ret nc                                        ; $6d40: $d0

    or d                                          ; $6d41: $b2
    ld a, [de]                                    ; $6d42: $1a
    sbc [hl]                                      ; $6d43: $9e
    rst $00                                       ; $6d44: $c7
    inc c                                         ; $6d45: $0c
    add sp, -$64                                  ; $6d46: $e8 $9c
    adc [hl]                                      ; $6d48: $8e
    sbc l                                         ; $6d49: $9d
    ld e, d                                       ; $6d4a: $5a
    sbc l                                         ; $6d4b: $9d
    db $eb                                        ; $6d4c: $eb
    and $2f                                       ; $6d4d: $e6 $2f
    ld c, h                                       ; $6d4f: $4c
    ld de, $8774                                  ; $6d50: $11 $74 $87
    ld [c], a                                     ; $6d53: $e2
    pop hl                                        ; $6d54: $e1
    ld a, a                                       ; $6d55: $7f
    ld e, d                                       ; $6d56: $5a
    cp [hl]                                       ; $6d57: $be
    rst $10                                       ; $6d58: $d7
    and $8c                                       ; $6d59: $e6 $8c
    ld b, d                                       ; $6d5b: $42
    xor [hl]                                      ; $6d5c: $ae
    ld b, c                                       ; $6d5d: $41
    call Call_062_65a1                            ; $6d5e: $cd $a1 $65
    ld h, h                                       ; $6d61: $64
    ld d, e                                       ; $6d62: $53
    sub b                                         ; $6d63: $90
    sbc l                                         ; $6d64: $9d
    xor [hl]                                      ; $6d65: $ae
    adc e                                         ; $6d66: $8b
    ld a, a                                       ; $6d67: $7f
    sub $f0                                       ; $6d68: $d6 $f0
    ldh a, [$fd]                                  ; $6d6a: $f0 $fd
    ld [bc], a                                    ; $6d6c: $02
    rla                                           ; $6d6d: $17
    jp z, Jump_000_171e                           ; $6d6e: $ca $1e $17

    di                                            ; $6d71: $f3
    ld a, [de]                                    ; $6d72: $1a
    ret nz                                        ; $6d73: $c0

    db $ec                                        ; $6d74: $ec
    inc e                                         ; $6d75: $1c
    ld c, b                                       ; $6d76: $48
    ld c, c                                       ; $6d77: $49
    inc hl                                        ; $6d78: $23
    ld e, b                                       ; $6d79: $58
    ld [$39d0], a                                 ; $6d7a: $ea $d0 $39
    rst $20                                       ; $6d7d: $e7
    ld a, [de]                                    ; $6d7e: $1a
    db $dd                                        ; $6d7f: $dd
    or c                                          ; $6d80: $b1
    ld a, c                                       ; $6d81: $79
    adc l                                         ; $6d82: $8d
    call nc, $af0b                                ; $6d83: $d4 $0b $af
    ld [bc], a                                    ; $6d86: $02
    ld e, d                                       ; $6d87: $5a
    ld d, $3a                                     ; $6d88: $16 $3a
    ld [hl-], a                                   ; $6d8a: $32
    and b                                         ; $6d8b: $a0
    push hl                                       ; $6d8c: $e5
    ld a, [hl]                                    ; $6d8d: $7e
    ld bc, $ca17                                  ; $6d8e: $01 $17 $ca
    inc e                                         ; $6d91: $1c
    ld b, l                                       ; $6d92: $45
    ld d, [hl]                                    ; $6d93: $56
    inc e                                         ; $6d94: $1c
    jp hl                                         ; $6d95: $e9


    dec e                                         ; $6d96: $1d
    rst $10                                       ; $6d97: $d7
    ld [$d85f], a                                 ; $6d98: $ea $5f $d8
    ld b, e                                       ; $6d9b: $43

jr_062_6d9c:
    rst $20                                       ; $6d9c: $e7
    sbc h                                         ; $6d9d: $9c
    dec hl                                        ; $6d9e: $2b
    sub [hl]                                      ; $6d9f: $96
    jp z, Jump_062_705f                           ; $6da0: $ca $5f $70

    ld d, c                                       ; $6da3: $51
    ret z                                         ; $6da4: $c8

    ld e, c                                       ; $6da5: $59
    ld b, [hl]                                    ; $6da6: $46
    cp d                                          ; $6da7: $ba
    rrca                                          ; $6da8: $0f
    db $dd                                        ; $6da9: $dd
    ld [hl], a                                    ; $6daa: $77
    ld d, b                                       ; $6dab: $50
    cpl                                           ; $6dac: $2f
    and l                                         ; $6dad: $a5
    dec sp                                        ; $6dae: $3b
    ld b, e                                       ; $6daf: $43
    db $ec                                        ; $6db0: $ec
    db $e4                                        ; $6db1: $e4
    inc c                                         ; $6db2: $0c
    rst $30                                       ; $6db3: $f7
    dec bc                                        ; $6db4: $0b
    rla                                           ; $6db5: $17
    jp z, Jump_000_211a                           ; $6db6: $ca $1a $21

    inc a                                         ; $6db9: $3c
    or l                                          ; $6dba: $b5
    ld a, a                                       ; $6dbb: $7f
    add hl, hl                                    ; $6dbc: $29
    ld [hl], e                                    ; $6dbd: $73

jr_062_6dbe:
    adc $b2                                       ; $6dbe: $ce $b2
    ld [bc], a                                    ; $6dc0: $02
    ld de, $a143                                  ; $6dc1: $11 $43 $a1
    db $ed                                        ; $6dc4: $ed
    ld b, a                                       ; $6dc5: $47
    add hl, bc                                    ; $6dc6: $09
    ld [$554b], a                                 ; $6dc7: $ea $4b $55
    db $e3                                        ; $6dca: $e3
    and h                                         ; $6dcb: $a4
    call nc, $a5fe                                ; $6dcc: $d4 $fe $a5
    ld hl, sp+$5e                                 ; $6dcf: $f8 $5e
    sbc e                                         ; $6dd1: $9b
    and l                                         ; $6dd2: $a5
    xor [hl]                                      ; $6dd3: $ae
    ld a, [hl+]                                   ; $6dd4: $2a
    db $10                                        ; $6dd5: $10
    call c, $1cd3                                 ; $6dd6: $dc $d3 $1c
    ld [$ffd6], sp                                ; $6dd9: $08 $d6 $ff
    ld [hl], h                                    ; $6ddc: $74
    rst $10                                       ; $6ddd: $d7
    jp hl                                         ; $6dde: $e9


    rrca                                          ; $6ddf: $0f
    jr nz, jr_062_6d9c                            ; $6de0: $20 $ba

    scf                                           ; $6de2: $37
    ld a, [hl]                                    ; $6de3: $7e
    ld a, [c]                                     ; $6de4: $f2
    inc e                                         ; $6de5: $1c
    or c                                          ; $6de6: $b1
    ld [hl], e                                    ; $6de7: $73
    sbc a                                         ; $6de8: $9f
    add a                                         ; $6de9: $87
    sub [hl]                                      ; $6dea: $96
    sub c                                         ; $6deb: $91

jr_062_6dec:
    ccf                                           ; $6dec: $3f
    ld d, a                                       ; $6ded: $57
    dec d                                         ; $6dee: $15
    ld b, h                                       ; $6def: $44
    ld l, h                                       ; $6df0: $6c
    ld e, $f9                                     ; $6df1: $1e $f9
    sbc a                                         ; $6df3: $9f
    ei                                            ; $6df4: $fb
    dec b                                         ; $6df5: $05
    db $ed                                        ; $6df6: $ed
    ld a, d                                       ; $6df7: $7a
    ld [hl], a                                    ; $6df8: $77
    dec bc                                        ; $6df9: $0b
    inc b                                         ; $6dfa: $04
    ld l, e                                       ; $6dfb: $6b
    inc c                                         ; $6dfc: $0c
    ld [c], a                                     ; $6dfd: $e2
    ld d, $94                                     ; $6dfe: $16 $94
    ld [c], a                                     ; $6e00: $e2
    ld b, l                                       ; $6e01: $45
    jr nz, jr_062_6dec                            ; $6e02: $20 $e8

    ld a, [hl-]                                   ; $6e04: $3a
    ret c                                         ; $6e05: $d8

    di                                            ; $6e06: $f3
    ld l, e                                       ; $6e07: $6b
    ld [hl], l                                    ; $6e08: $75
    inc c                                         ; $6e09: $0c
    ld [hl], l                                    ; $6e0a: $75
    adc [hl]                                      ; $6e0b: $8e
    ret c                                         ; $6e0c: $d8

    ld e, c                                       ; $6e0d: $59
    jp $d433                                      ; $6e0e: $c3 $33 $d4


    and h                                         ; $6e11: $a4
    ld a, c                                       ; $6e12: $79
    ld a, [hl+]                                   ; $6e13: $2a
    ld c, b                                       ; $6e14: $48
    push hl                                       ; $6e15: $e5
    cpl                                           ; $6e16: $2f
    cp h                                          ; $6e17: $bc
    jr z, jr_062_6dbe                             ; $6e18: $28 $a4

    ld l, b                                       ; $6e1a: $68
    sbc h                                         ; $6e1b: $9c
    ld b, e                                       ; $6e1c: $43
    ccf                                           ; $6e1d: $3f
    rst $30                                       ; $6e1e: $f7
    xor [hl]                                      ; $6e1f: $ae
    add h                                         ; $6e20: $84
    ld d, d                                       ; $6e21: $52
    inc a                                         ; $6e22: $3c
    ld [hl], h                                    ; $6e23: $74
    ld c, $94                                     ; $6e24: $0e $94
    ld a, [c]                                     ; $6e26: $f2
    ret z                                         ; $6e27: $c8

    sbc a                                         ; $6e28: $9f
    xor e                                         ; $6e29: $ab
    xor h                                         ; $6e2a: $ac
    dec hl                                        ; $6e2b: $2b
    ld h, l                                       ; $6e2c: $65
    sbc [hl]                                      ; $6e2d: $9e
    add h                                         ; $6e2e: $84
    ld h, d                                       ; $6e2f: $62
    reti                                          ; $6e30: $d9


    sub a                                         ; $6e31: $97
    ld [$28ba], a                                 ; $6e32: $ea $ba $28
    db $e4                                        ; $6e35: $e4
    ld a, $2f                                     ; $6e36: $3e $2f
    and [hl]                                      ; $6e38: $a6
    and h                                         ; $6e39: $a4
    add a                                         ; $6e3a: $87
    ld e, [hl]                                    ; $6e3b: $5e
    jp $d958                                      ; $6e3c: $c3 $58 $d9


    rst $30                                       ; $6e3f: $f7
    dec bc                                        ; $6e40: $0b
    sub a                                         ; $6e41: $97
    db $fd                                        ; $6e42: $fd
    ret c                                         ; $6e43: $d8

    cp h                                          ; $6e44: $bc
    rra                                           ; $6e45: $1f
    adc l                                         ; $6e46: $8d
    xor c                                         ; $6e47: $a9
    sbc c                                         ; $6e48: $99
    and $35                                       ; $6e49: $e6 $35
    ld a, [hl-]                                   ; $6e4b: $3a
    ld b, l                                       ; $6e4c: $45
    push de                                       ; $6e4d: $d5
    ld d, [hl]                                    ; $6e4e: $56
    ld [$56cc], a                                 ; $6e4f: $ea $cc $56
    ld d, h                                       ; $6e52: $54
    cp h                                          ; $6e53: $bc
    rst $10                                       ; $6e54: $d7
    ld h, [hl]                                    ; $6e55: $66
    ld e, $f9                                     ; $6e56: $1e $f9
    ld [hl], e                                    ; $6e58: $73
    sub [hl]                                      ; $6e59: $96
    ld h, c                                       ; $6e5a: $61
    ld d, b                                       ; $6e5b: $50
    ld a, [$6163]                                 ; $6e5c: $fa $63 $61
    and a                                         ; $6e5f: $a7
    ld a, c                                       ; $6e60: $79
    adc [hl]                                      ; $6e61: $8e
    ld [hl+], a                                   ; $6e62: $22
    dec hl                                        ; $6e63: $2b
    ld e, $3a                                     ; $6e64: $1e $3a
    rla                                           ; $6e66: $17
    add l                                         ; $6e67: $85
    xor h                                         ; $6e68: $ac
    ld c, h                                       ; $6e69: $4c
    ld c, c                                       ; $6e6a: $49
    push hl                                       ; $6e6b: $e5
    sbc h                                         ; $6e6c: $9c
    dec sp                                        ; $6e6d: $3b
    xor b                                         ; $6e6e: $a8
    ld a, [bc]                                    ; $6e6f: $0a
    jp hl                                         ; $6e70: $e9


    cp h                                          ; $6e71: $bc
    ld e, a                                       ; $6e72: $5f
    add a                                         ; $6e73: $87
    call nc, $dfcf                                ; $6e74: $d4 $cf $df
    and b                                         ; $6e77: $a0
    inc [hl]                                      ; $6e78: $34
    and b                                         ; $6e79: $a0
    ld [hl], a                                    ; $6e7a: $77
    rst $20                                       ; $6e7b: $e7
    ret z                                         ; $6e7c: $c8

    sbc a                                         ; $6e7d: $9f
    xor e                                         ; $6e7e: $ab
    sub h                                         ; $6e7f: $94
    db $ec                                        ; $6e80: $ec
    ld d, b                                       ; $6e81: $50
    ld a, b                                       ; $6e82: $78
    ld de, $4788                                  ; $6e83: $11 $88 $47
    and l                                         ; $6e86: $a5
    adc e                                         ; $6e87: $8b
    rst $00                                       ; $6e88: $c7
    ret nc                                        ; $6e89: $d0

    rst $20                                       ; $6e8a: $e7
    ld c, $aa                                     ; $6e8b: $0e $aa
    ld b, d                                       ; $6e8d: $42
    ld [hl], $52                                  ; $6e8e: $36 $52
    cpl                                           ; $6e90: $2f
    rst $30                                       ; $6e91: $f7
    dec bc                                        ; $6e92: $0b
    rst $10                                       ; $6e93: $d7
    call nz, $e926                                ; $6e94: $c4 $26 $e9
    call nc, $9014                                ; $6e97: $d4 $14 $90
    ld [c], a                                     ; $6e9a: $e2
    sbc h                                         ; $6e9b: $9c
    ld [hl], e                                    ; $6e9c: $73
    pop de                                        ; $6e9d: $d1
    rst $08                                       ; $6e9e: $cf
    ld c, $c5                                     ; $6e9f: $0e $c5
    or h                                          ; $6ea1: $b4
    xor c                                         ; $6ea2: $a9
    ret nc                                        ; $6ea3: $d0

jr_062_6ea4:
    and c                                         ; $6ea4: $a1
    adc b                                         ; $6ea5: $88
    dec b                                         ; $6ea6: $05
    cp l                                          ; $6ea7: $bd
    sbc b                                         ; $6ea8: $98
    ld d, d                                       ; $6ea9: $52
    push bc                                       ; $6eaa: $c5
    ld a, c                                       ; $6eab: $79
    xor a                                         ; $6eac: $af
    call $dfe3                                    ; $6ead: $cd $e3 $df
    ld [hl], b                                    ; $6eb0: $70

jr_062_6eb1:
    adc [hl]                                      ; $6eb1: $8e
    inc c                                         ; $6eb2: $0c
    add hl, hl                                    ; $6eb3: $29
    ld d, $cf                                     ; $6eb4: $16 $cf
    or d                                          ; $6eb6: $b2
    ld a, [c]                                     ; $6eb7: $f2
    and l                                         ; $6eb8: $a5
    inc l                                         ; $6eb9: $2c
    inc a                                         ; $6eba: $3c
    ld l, e                                       ; $6ebb: $6b
    and [hl]                                      ; $6ebc: $a6
    ld a, c                                       ; $6ebd: $79
    and c                                         ; $6ebe: $a1
    adc h                                         ; $6ebf: $8c
    inc c                                         ; $6ec0: $0c

jr_062_6ec1:
    add hl, hl                                    ; $6ec1: $29
    ld d, $4f                                     ; $6ec2: $16 $4f
    ld a, l                                       ; $6ec4: $7d
    add hl, de                                    ; $6ec5: $19
    ld a, [hl-]                                   ; $6ec6: $3a
    dec e                                         ; $6ec7: $1d
    or c                                          ; $6ec8: $b1
    ld [hl], e                                    ; $6ec9: $73
    jr nz, jr_062_6f24                            ; $6eca: $20 $58

    rst $38                                       ; $6ecc: $ff
    db $d3                                        ; $6ecd: $d3
    ld e, l                                       ; $6ece: $5d
    daa                                           ; $6ecf: $27
    call $c71c                                    ; $6ed0: $cd $1c $c7
    ld h, $e9                                     ; $6ed3: $26 $e9
    call nc, $9014                                ; $6ed5: $d4 $14 $90
    ld h, d                                       ; $6ed8: $62
    add hl, de                                    ; $6ed9: $19
    jr z, jr_062_6ec1                             ; $6eda: $28 $e5

    add hl, hl                                    ; $6edc: $29
    jr z, jr_062_6ea4                             ; $6edd: $28 $c5

    ld a, c                                       ; $6edf: $79
    cp a                                          ; $6ee0: $bf
    rla                                           ; $6ee1: $17
    jp z, $8a12                                   ; $6ee2: $ca $12 $8a

    dec sp                                        ; $6ee5: $3b
    sub h                                         ; $6ee6: $94
    add c                                         ; $6ee7: $81
    sub h                                         ; $6ee8: $94
    inc [hl]                                      ; $6ee9: $34
    add d                                         ; $6eea: $82
    and l                                         ; $6eeb: $a5
    xor $b1                                       ; $6eec: $ee $b1
    db $ec                                        ; $6eee: $ec
    ld l, c                                       ; $6eef: $69
    ld c, $94                                     ; $6ef0: $0e $94
    ld a, [c]                                     ; $6ef2: $f2
    ld d, h                                       ; $6ef3: $54

Call_062_6ef4:
    ld a, b                                       ; $6ef4: $78
    ld e, $2f                                     ; $6ef5: $1e $2f
    jp z, $02bf                                   ; $6ef7: $ca $bf $02

    ld de, $f143                                  ; $6efa: $11 $43 $f1
    ld l, d                                       ; $6efd: $6a
    rst $38                                       ; $6efe: $ff
    ld d, d                                       ; $6eff: $52
    sbc h                                         ; $6f00: $9c
    rst $30                                       ; $6f01: $f7
    dec bc                                        ; $6f02: $0b
    rst $20                                       ; $6f03: $e7
    ld e, e                                       ; $6f04: $5b
    ld c, e                                       ; $6f05: $4b
    ld hl, sp+$59                                 ; $6f06: $f8 $59
    reti                                          ; $6f08: $d9


    ld [hl-], a                                   ; $6f09: $32
    db $fc                                        ; $6f0a: $fc
    ld [hl+], a                                   ; $6f0b: $22
    xor [hl]                                      ; $6f0c: $ae
    add e                                         ; $6f0d: $83
    dec d                                         ; $6f0e: $15
    and e                                         ; $6f0f: $a3
    or e                                          ; $6f10: $b3
    ld l, $0a                                     ; $6f11: $2e $0a
    adc c                                         ; $6f13: $89
    ld d, h                                       ; $6f14: $54
    cp d                                          ; $6f15: $ba
    ld a, e                                       ; $6f16: $7b
    ld [hl], l                                    ; $6f17: $75
    xor l                                         ; $6f18: $ad
    sbc d                                         ; $6f19: $9a
    jp z, $ee7e                                   ; $6f1a: $ca $7e $ee

    dec e                                         ; $6f1d: $1d
    db $fc                                        ; $6f1e: $fc
    or d                                          ; $6f1f: $b2
    ld a, [bc]                                    ; $6f20: $0a
    push bc                                       ; $6f21: $c5
    cp c                                          ; $6f22: $b9
    rst $08                                       ; $6f23: $cf

jr_062_6f24:
    ld b, e                                       ; $6f24: $43
    ld c, a                                       ; $6f25: $4f
    ld a, l                                       ; $6f26: $7d
    reti                                          ; $6f27: $d9


    inc de                                        ; $6f28: $13
    jr nc, jr_062_6eb1                            ; $6f29: $30 $86

    ld d, h                                       ; $6f2b: $54
    ld e, [hl]                                    ; $6f2c: $5e
    add c                                         ; $6f2d: $81
    adc b                                         ; $6f2e: $88
    ld a, l                                       ; $6f2f: $7d
    cp a                                          ; $6f30: $bf
    rlca                                          ; $6f31: $07
    ld e, l                                       ; $6f32: $5d
    call z, $74ab                                 ; $6f33: $cc $ab $74
    ld c, d                                       ; $6f36: $4a
    ld b, a                                       ; $6f37: $47
    rr h                                          ; $6f38: $cb $1c
    or c                                          ; $6f3a: $b1
    or e                                          ; $6f3b: $b3
    add [hl]                                      ; $6f3c: $86
    ld h, a                                       ; $6f3d: $67
    add sp, $29                                   ; $6f3e: $e8 $29
    ld e, l                                       ; $6f40: $5d
    ld d, [hl]                                    ; $6f41: $56
    ld [hl-], a                                   ; $6f42: $32
    db $e4                                        ; $6f43: $e4
    ld [hl], h                                    ; $6f44: $74
    ld e, h                                       ; $6f45: $5c
    xor e                                         ; $6f46: $ab
    add hl, sp                                    ; $6f47: $39
    db $f4                                        ; $6f48: $f4
    jr z, jr_062_6f68                             ; $6f49: $28 $1d

    dec hl                                        ; $6f4b: $2b
    ld a, e                                       ; $6f4c: $7b
    ld d, $92                                     ; $6f4d: $16 $92
    ld c, [hl]                                    ; $6f4f: $4e
    ld c, l                                       ; $6f50: $4d
    ld bc, $ce29                                  ; $6f51: $01 $29 $ce
    push de                                       ; $6f54: $d5
    ldh a, [$4c]                                  ; $6f55: $f0 $4c
    jp hl                                         ; $6f57: $e9


    or d                                          ; $6f58: $b2
    ld c, d                                       ; $6f59: $4a
    and a                                         ; $6f5a: $a7
    ld [hl], h                                    ; $6f5b: $74
    or h                                          ; $6f5c: $b4
    ldh a, [$f8]                                  ; $6f5d: $f0 $f8
    scf                                           ; $6f5f: $37
    sbc h                                         ; $6f60: $9c
    ld b, e                                       ; $6f61: $43
    rst $18                                       ; $6f62: $df
    cpl                                           ; $6f63: $2f
    rla                                           ; $6f64: $17
    jp z, $9d2a                                   ; $6f65: $ca $2a $9d

jr_062_6f68:
    jp nc, Jump_000_32d1                          ; $6f68: $d2 $d1 $32

    sub b                                         ; $6f6b: $90
    sub d                                         ; $6f6c: $92
    ld b, [hl]                                    ; $6f6d: $46
    or b                                          ; $6f6e: $b0
    call nc, Call_062_73a1                        ; $6f6f: $d4 $a1 $73
    ld a, [hl-]                                   ; $6f72: $3a
    cp d                                          ; $6f73: $ba
    db $eb                                        ; $6f74: $eb
    ld c, d                                       ; $6f75: $4a
    ld e, c                                       ; $6f76: $59
    ret nc                                        ; $6f77: $d0

    dec hl                                        ; $6f78: $2b
    add hl, de                                    ; $6f79: $19
    ld [hl], d                                    ; $6f7a: $72
    or b                                          ; $6f7b: $b0
    jp z, $a316                                   ; $6f7c: $ca $16 $a3

    rla                                           ; $6f7f: $17
    sbc [hl]                                      ; $6f80: $9e
    ld l, h                                       ; $6f81: $6c
    and d                                         ; $6f82: $a2
    di                                            ; $6f83: $f3
    sbc $45                                       ; $6f84: $de $45
    ld hl, $809f                                  ; $6f86: $21 $9f $80
    ld [bc], a                                    ; $6f89: $02
    ld d, d                                       ; $6f8a: $52
    inc l                                         ; $6f8b: $2c
    dec bc                                        ; $6f8c: $0b
    rst $08                                       ; $6f8d: $cf
    ld a, $0f                                     ; $6f8e: $3e $0f
    dec l                                         ; $6f90: $2d
    jp $34a4                                      ; $6f91: $c3 $a4 $34


    sbc h                                         ; $6f94: $9c
    adc e                                         ; $6f95: $8b
    ld a, a                                       ; $6f96: $7f
    ld [$f63d], a                                 ; $6f97: $ea $3d $f6
    sbc h                                         ; $6f9a: $9c
    db $d3                                        ; $6f9b: $d3
    ld sp, $fd28                                  ; $6f9c: $31 $28 $fd
    or c                                          ; $6f9f: $b1
    or b                                          ; $6fa0: $b0
    db $d3                                        ; $6fa1: $d3
    ld a, h                                       ; $6fa2: $7c
    cp a                                          ; $6fa3: $bf
    rla                                           ; $6fa4: $17
    ld c, d                                       ; $6fa5: $4a
    ld sp, hl                                     ; $6fa6: $f9
    ld d, d                                       ; $6fa7: $52
    sub [hl]                                      ; $6fa8: $96
    ld d, b                                       ; $6fa9: $50
    ld a, b                                       ; $6faa: $78
    ld a, [hl-]                                   ; $6fab: $3a
    ld [hl], $d2                                  ; $6fac: $36 $d2
    ret z                                         ; $6fae: $c8

    ld a, e                                       ; $6faf: $7b
    inc l                                         ; $6fb0: $2c
    adc e                                         ; $6fb1: $8b
    ld b, b                                       ; $6fb2: $40
    ret nc                                        ; $6fb3: $d0

    ld [hl], l                                    ; $6fb4: $75
    and d                                         ; $6fb5: $a2
    ld c, a                                       ; $6fb6: $4f
    jp hl                                         ; $6fb7: $e9


    ld [hl-], a                                   ; $6fb8: $32
    ld e, b                                       ; $6fb9: $58
    inc c                                         ; $6fba: $0c
    dec e                                         ; $6fbb: $1d
    dec a                                         ; $6fbc: $3d
    ld sp, hl                                     ; $6fbd: $f9
    xor h                                         ; $6fbe: $ac
    ld h, a                                       ; $6fbf: $67
    ld a, b                                       ; $6fc0: $78
    or d                                          ; $6fc1: $b2
    adc c                                         ; $6fc2: $89
    adc $7b                                       ; $6fc3: $ce $7b
    ld l, l                                       ; $6fc5: $6d
    sub [hl]                                      ; $6fc6: $96
    cp d                                          ; $6fc7: $ba
    ld b, [hl]                                    ; $6fc8: $46
    rrca                                          ; $6fc9: $0f
    ld c, a                                       ; $6fca: $4f
    ld h, l                                       ; $6fcb: $65
    rst $20                                       ; $6fcc: $e7
    sbc h                                         ; $6fcd: $9c
    adc e                                         ; $6fce: $8b
    ld hl, $8095                                  ; $6fcf: $21 $95 $80
    sub h                                         ; $6fd2: $94
    ld a, [de]                                    ; $6fd3: $1a
    jp hl                                         ; $6fd4: $e9


    dec e                                         ; $6fd5: $1d
    dec a                                         ; $6fd6: $3d
    sbc b                                         ; $6fd7: $98
    dec sp                                        ; $6fd8: $3b
    xor b                                         ; $6fd9: $a8
    ld a, [bc]                                    ; $6fda: $0a
    jp hl                                         ; $6fdb: $e9


    call c, $1963                                 ; $6fdc: $dc $63 $19
    ld e, d                                       ; $6fdf: $5a
    ld [$fd1a], a                                 ; $6fe0: $ea $1a $fd
    and e                                         ; $6fe3: $a3
    rst $20                                       ; $6fe4: $e7
    call c, $62e3                                 ; $6fe5: $dc $e3 $62
    ld e, [hl]                                    ; $6fe8: $5e
    add c                                         ; $6fe9: $81
    adc b                                         ; $6fea: $88
    and c                                         ; $6feb: $a1
    ld hl, sp+$7e                                 ; $6fec: $f8 $7e
    ld bc, $aeed                                  ; $6fee: $01 $ed $ae
    dec l                                         ; $6ff1: $2d
    rst $20                                       ; $6ff2: $e7
    ld c, $f1                                     ; $6ff3: $0e $f1
    ld c, a                                       ; $6ff5: $4f
    ld h, l                                       ; $6ff6: $65
    call Call_062_570b                            ; $6ff7: $cd $0b $57
    cp $fc                                        ; $6ffa: $fe $fc
    ld b, h                                       ; $6ffc: $44
    db $dd                                        ; $6ffd: $dd
    xor e                                         ; $6ffe: $ab
    ld e, [hl]                                    ; $6fff: $5e
    ld e, a                                       ; $7000: $5f
    rst $20                                       ; $7001: $e7
    dec h                                         ; $7002: $25
    ld d, c                                       ; $7003: $51
    ld [de], a                                    ; $7004: $12
    ld a, [de]                                    ; $7005: $1a
    cp a                                          ; $7006: $bf
    db $e3                                        ; $7007: $e3
    adc $eb                                       ; $7008: $ce $eb
    add sp, -$1c                                  ; $700a: $e8 $e4
    jr nz, jr_062_703d                            ; $700c: $20 $2f

    rla                                           ; $700e: $17
    or $fe                                        ; $700f: $f6 $fe
    ld sp, $dfe4                                  ; $7011: $31 $e4 $df
    and l                                         ; $7014: $a5
    ld h, [hl]                                    ; $7015: $66
    halt                                          ; $7016: $76
    ld [bc], a                                    ; $7017: $02
    ld d, $bf                                     ; $7018: $16 $bf
    rla                                           ; $701a: $17
    rst $38                                       ; $701b: $ff
    jp c, $89fa                                   ; $701c: $da $fa $89

    dec sp                                        ; $701f: $3b
    ld b, h                                       ; $7020: $44
    add d                                         ; $7021: $82
    sub h                                         ; $7022: $94
    ld l, [hl]                                    ; $7023: $6e
    ld c, $f2                                     ; $7024: $0e $f2
    ld [bc], a                                    ; $7026: $02
    rla                                           ; $7027: $17
    rst $30                                       ; $7028: $f7
    db $10                                        ; $7029: $10
    dec sp                                        ; $702a: $3b
    rst $10                                       ; $702b: $d7
    ld c, $2d                                     ; $702c: $0e $2d
    ld h, d                                       ; $702e: $62
    ld hl, $7c99                                  ; $702f: $21 $99 $7c
    ld bc, $a717                                  ; $7032: $01 $17 $a7
    ld c, e                                       ; $7035: $4b
    ld c, b                                       ; $7036: $48
    ret nc                                        ; $7037: $d0

    db $eb                                        ; $7038: $eb
    ret nc                                        ; $7039: $d0

    or d                                          ; $703a: $b2
    ld b, e                                       ; $703b: $43
    db $dd                                        ; $703c: $dd

jr_062_703d:
    ld d, l                                       ; $703d: $55
    ld sp, hl                                     ; $703e: $f9
    dec b                                         ; $703f: $05
    sub a                                         ; $7040: $97
    db $fd                                        ; $7041: $fd
    ret c                                         ; $7042: $d8

    add hl, hl                                    ; $7043: $29
    ld e, [hl]                                    ; $7044: $5e
    sbc e                                         ; $7045: $9b
    rrca                                          ; $7046: $0f
    ld b, $e1                                     ; $7047: $06 $e1
    daa                                           ; $7049: $27
    and h                                         ; $704a: $a4
    add l                                         ; $704b: $85
    xor b                                         ; $704c: $a8
    and $05                                       ; $704d: $e6 $05
    sub a                                         ; $704f: $97
    inc d                                         ; $7050: $14
    ld sp, hl                                     ; $7051: $f9
    inc c                                         ; $7052: $0c
    ld a, a                                       ; $7053: $7f
    rst $10                                       ; $7054: $d7
    ld b, e                                       ; $7055: $43
    rst $00                                       ; $7056: $c7
    ld a, [$9300]                                 ; $7057: $fa $00 $93
    cpl                                           ; $705a: $2f
    add a                                         ; $705b: $87
    ld a, $51                                     ; $705c: $3e $51
    ld a, [c]                                     ; $705e: $f2

Jump_062_705f:
    daa                                           ; $705f: $27
    call nc, Call_062_77fa                        ; $7060: $d4 $fa $77
    adc l                                         ; $7063: $8d
    ld e, [hl]                                    ; $7064: $5e
    adc b                                         ; $7065: $88
    add l                                         ; $7066: $85
    add b                                         ; $7067: $80
    cpl                                           ; $7068: $2f
    rla                                           ; $7069: $17
    rst $30                                       ; $706a: $f7
    cpl                                           ; $706b: $2f
    ld c, a                                       ; $706c: $4f
    ld c, b                                       ; $706d: $48
    rst $28                                       ; $706e: $ef
    ld c, d                                       ; $706f: $4a
    ld a, a                                       ; $7070: $7f
    push hl                                       ; $7071: $e5
    ld a, [$e702]                                 ; $7072: $fa $02 $e7
    rst $38                                       ; $7075: $ff
    ld e, $05                                     ; $7076: $1e $05
    dec a                                         ; $7078: $3d
    ld [hl], a                                    ; $7079: $77
    ld a, [hl]                                    ; $707a: $7e
    rst $38                                       ; $707b: $ff
    ld [c], a                                     ; $707c: $e2
    rla                                           ; $707d: $17
    rla                                           ; $707e: $17
    cp c                                          ; $707f: $b9
    inc bc                                        ; $7080: $03
    pop af                                        ; $7081: $f1
    dec e                                         ; $7082: $1d
    jp nc, $c79f                                  ; $7083: $d2 $9f $c7

    reti                                          ; $7086: $d9


    or b                                          ; $7087: $b0
    ld e, a                                       ; $7088: $5f
    rla                                           ; $7089: $17
    and a                                         ; $708a: $a7
    ld sp, hl                                     ; $708b: $f9
    rst $28                                       ; $708c: $ef
    add d                                         ; $708d: $82
    rst $08                                       ; $708e: $cf
    ld b, h                                       ; $708f: $44
    ret                                           ; $7090: $c9


    ld e, $62                                     ; $7091: $1e $62
    cp a                                          ; $7093: $bf
    db $ed                                        ; $7094: $ed
    ld b, c                                       ; $7095: $41
    add d                                         ; $7096: $82
    sbc [hl]                                      ; $7097: $9e
    ldh a, [rPCM34]                               ; $7098: $f0 $77
    cp c                                          ; $709a: $b9
    adc $44                                       ; $709b: $ce $44
    jp $f0d3                                      ; $709d: $c3 $d3 $f0


    dec bc                                        ; $70a0: $0b
    rla                                           ; $70a1: $17
    ld b, e                                       ; $70a2: $43
    inc d                                         ; $70a3: $14
    add l                                         ; $70a4: $85
    call nz, $d15d                                ; $70a5: $c4 $5d $d1
    cp e                                          ; $70a8: $bb
    sub e                                         ; $70a9: $93
    add e                                         ; $70aa: $83
    cp h                                          ; $70ab: $bc
    rlca                                          ; $70ac: $07
    ld [bc], a                                    ; $70ad: $02
    ld d, c                                       ; $70ae: $51
    ld e, l                                       ; $70af: $5d
    ldh a, [$ef]                                  ; $70b0: $f0 $ef
    sub b                                         ; $70b2: $90
    ld b, [hl]                                    ; $70b3: $46
    cp c                                          ; $70b4: $b9
    cp [hl]                                       ; $70b5: $be
    ld d, a                                       ; $70b6: $57
    jp hl                                         ; $70b7: $e9


    ld b, c                                       ; $70b8: $41
    jp z, Jump_000_0cae                           ; $70b9: $ca $ae $0c

    cpl                                           ; $70bc: $2f
    ld l, l                                       ; $70bd: $6d
    ld hl, $fe89                                  ; $70be: $21 $89 $fe
    cp d                                          ; $70c1: $ba
    db $eb                                        ; $70c2: $eb
    db $dd                                        ; $70c3: $dd
    ld a, e                                       ; $70c4: $7b
    jp $c43d                                      ; $70c5: $c3 $3d $c4


    add $17                                       ; $70c8: $c6 $17
    rlca                                          ; $70ca: $07
    sbc l                                         ; $70cb: $9d
    call nz, $3234                                ; $70cc: $c4 $34 $32
    or h                                          ; $70cf: $b4
    db $ec                                        ; $70d0: $ec
    ld a, [bc]                                    ; $70d1: $0a
    pop bc                                        ; $70d2: $c1
    ld a, [bc]                                    ; $70d3: $0a

jr_062_70d4:
    add d                                         ; $70d4: $82
    ld b, [hl]                                    ; $70d5: $46
    cp a                                          ; $70d6: $bf
    rlca                                          ; $70d7: $07
    ld b, e                                       ; $70d8: $43
    sub [hl]                                      ; $70d9: $96
    cpl                                           ; $70da: $2f
    db $eb                                        ; $70db: $eb
    sbc $45                                       ; $70dc: $de $45
    ld e, a                                       ; $70de: $5f
    di                                            ; $70df: $f3
    ld [bc], a                                    ; $70e0: $02
    rla                                           ; $70e1: $17
    inc h                                         ; $70e2: $24
    call nc, $c816                                ; $70e3: $d4 $16 $c8
    ld l, $c8                                     ; $70e6: $2e $c8
    jr nz, jr_062_70d4                            ; $70e8: $20 $ea

    dec b                                         ; $70ea: $05
    rla                                           ; $70eb: $17
    ld [hl-], a                                   ; $70ec: $32
    jp hl                                         ; $70ed: $e9


    sbc [hl]                                      ; $70ee: $9e
    add $a1                                       ; $70ef: $c6 $a1
    ld h, l                                       ; $70f1: $65
    rst $20                                       ; $70f2: $e7
    dec sp                                        ; $70f3: $3b
    adc l                                         ; $70f4: $8d
    db $ec                                        ; $70f5: $ec
    rla                                           ; $70f6: $17
    rst $20                                       ; $70f7: $e7
    ei                                            ; $70f8: $fb
    ld [hl], e                                    ; $70f9: $73
    ld [bc], a                                    ; $70fa: $02
    pop af                                        ; $70fb: $f1
    sbc l                                         ; $70fc: $9d
    rst $18                                       ; $70fd: $df
    inc bc                                        ; $70fe: $03
    pop af                                        ; $70ff: $f1
    rst $38                                       ; $7100: $ff
    cp h                                          ; $7101: $bc
    rst $20                                       ; $7102: $e7
    push af                                       ; $7103: $f5
    add [hl]                                      ; $7104: $86
    sub e                                         ; $7105: $93
    rst $38                                       ; $7106: $ff
    xor [hl]                                      ; $7107: $ae
    add hl, bc                                    ; $7108: $09
    add c                                         ; $7109: $81
    ld c, c                                       ; $710a: $49
    add sp, -$03                                  ; $710b: $e8 $fd
    dec b                                         ; $710d: $05
    inc b                                         ; $710e: $04
    ld a, [hl]                                    ; $710f: $7e
    inc c                                         ; $7110: $0c
    adc $5d                                       ; $7111: $ce $5d
    db $fd                                        ; $7113: $fd
    dec hl                                        ; $7114: $2b
    daa                                           ; $7115: $27
    db $10                                        ; $7116: $10
    ld d, l                                       ; $7117: $55
    cpl                                           ; $7118: $2f
    inc b                                         ; $7119: $04
    ld a, a                                       ; $711a: $7f
    ld h, d                                       ; $711b: $62
    or a                                          ; $711c: $b7
    ld h, [hl]                                    ; $711d: $66
    ld d, a                                       ; $711e: $57
    or $cf                                        ; $711f: $f6 $cf
    db $fc                                        ; $7121: $fc
    ld [bc], a                                    ; $7122: $02
    ld l, l                                       ; $7123: $6d
    sbc d                                         ; $7124: $9a
    and a                                         ; $7125: $a7
    ld b, l                                       ; $7126: $45
    jp z, Jump_062_45df                           ; $7127: $ca $df $45

    ld a, d                                       ; $712a: $7a
    ld a, $bf                                     ; $712b: $3e $bf
    ld hl, sp+$05                                 ; $712d: $f8 $05
    rla                                           ; $712f: $17
    jp hl                                         ; $7130: $e9


    cp l                                          ; $7131: $bd
    pop hl                                        ; $7132: $e1
    db $e4                                        ; $7133: $e4
    and c                                         ; $7134: $a1
    ld h, l                                       ; $7135: $65
    rla                                           ; $7136: $17
    and l                                         ; $7137: $a5
    and [hl]                                      ; $7138: $a6
    ld [hl], b                                    ; $7139: $70
    dec c                                         ; $713a: $0d
    rst $08                                       ; $713b: $cf
    db $e3                                        ; $713c: $e3
    rla                                           ; $713d: $17
    rst $10                                       ; $713e: $d7
    ld e, e                                       ; $713f: $5b
    ret nc                                        ; $7140: $d0

    dec e                                         ; $7141: $1d
    ld h, h                                       ; $7142: $64
    rst $10                                       ; $7143: $d7
    ld b, e                                       ; $7144: $43
    ld b, a                                       ; $7145: $47
    ld c, e                                       ; $7146: $4b
    ld d, l                                       ; $7147: $55
    sbc d                                         ; $7148: $9a
    rla                                           ; $7149: $17
    rst $10                                       ; $714a: $d7
    ld b, b                                       ; $714b: $40
    rst $28                                       ; $714c: $ef
    sbc d                                         ; $714d: $9a
    ld e, l                                       ; $714e: $5d
    inc de                                        ; $714f: $13
    sub h                                         ; $7150: $94
    ld e, a                                       ; $7151: $5f
    rla                                           ; $7152: $17
    db $fc                                        ; $7153: $fc
    db $ec                                        ; $7154: $ec
    add c                                         ; $7155: $81
    ld sp, hl                                     ; $7156: $f9
    rst $28                                       ; $7157: $ef
    ld c, d                                       ; $7158: $4a
    db $10                                        ; $7159: $10
    ld d, l                                       ; $715a: $55
    add hl, sp                                    ; $715b: $39
    adc b                                         ; $715c: $88
    ld e, a                                       ; $715d: $5f
    rla                                           ; $715e: $17
    ld h, d                                       ; $715f: $62
    ld sp, hl                                     ; $7160: $f9
    cp c                                          ; $7161: $b9
    ld b, e                                       ; $7162: $43
    sbc h                                         ; $7163: $9c
    ld b, c                                       ; $7164: $41
    rst $28                                       ; $7165: $ef
    push bc                                       ; $7166: $c5
    ld sp, hl                                     ; $7167: $f9
    ld [bc], a                                    ; $7168: $02
    db $ed                                        ; $7169: $ed
    ccf                                           ; $716a: $3f
    halt                                          ; $716b: $76
    rrca                                          ; $716c: $0f
    ld b, h                                       ; $716d: $44
    push de                                       ; $716e: $d5
    ld c, $11                                     ; $716f: $0e $11
    or e                                          ; $7171: $b3
    add hl, de                                    ; $7172: $19
    and h                                         ; $7173: $a4
    cp h                                          ; $7174: $bc
    rla                                           ; $7175: $17
    push af                                       ; $7176: $f5
    rra                                           ; $7177: $1f
    add e                                         ; $7178: $83
    ld e, [hl]                                    ; $7179: $5e
    ld [hl], a                                    ; $717a: $77

jr_062_717b:
    cp [hl]                                       ; $717b: $be
    ld a, e                                       ; $717c: $7b
    ld b, e                                       ; $717d: $43
    di                                            ; $717e: $f3
    ld [bc], a                                    ; $717f: $02
    rlca                                          ; $7180: $07

jr_062_7181:
    db $f4                                        ; $7181: $f4
    jp z, $dd7a                                   ; $7182: $ca $7a $dd

    sub l                                         ; $7185: $95
    ret nc                                        ; $7186: $d0

    dec sp                                        ; $7187: $3b
    db $10                                        ; $7188: $10
    inc bc                                        ; $7189: $03
    and d                                         ; $718a: $a2
    xor d                                         ; $718b: $aa
    ei                                            ; $718c: $fb
    dec b                                         ; $718d: $05
    sub a                                         ; $718e: $97
    add a                                         ; $718f: $87
    adc h                                         ; $7190: $8c
    db $dd                                        ; $7191: $dd
    ld [hl], a                                    ; $7192: $77
    dec c                                         ; $7193: $0d
    or c                                          ; $7194: $b1
    jr nz, jr_062_7181                            ; $7195: $20 $ea

    dec b                                         ; $7197: $05
    ld d, a                                       ; $7198: $57
    ld d, h                                       ; $7199: $54
    ld h, d                                       ; $719a: $62
    cp a                                          ; $719b: $bf
    db $e3                                        ; $719c: $e3
    adc $f7                                       ; $719d: $ce $f7
    ld a, a                                       ; $719f: $7f
    and b                                         ; $71a0: $a0
    sub d                                         ; $71a1: $92
    cpl                                           ; $71a2: $2f
    rla                                           ; $71a3: $17
    add h                                         ; $71a4: $84
    inc d                                         ; $71a5: $14
    ld [hl], a                                    ; $71a6: $77
    ret nc                                        ; $71a7: $d0

    db $eb                                        ; $71a8: $eb
    adc $2b                                       ; $71a9: $ce $2b
    add hl, bc                                    ; $71ab: $09
    xor l                                         ; $71ac: $ad
    sub $7f                                       ; $71ad: $d6 $7f

jr_062_71af:
    ld bc, $eb17                                  ; $71af: $01 $17 $eb
    cp l                                          ; $71b2: $bd
    ld b, e                                       ; $71b3: $43
    db $ec                                        ; $71b4: $ec
    call c, Call_062_4195                         ; $71b5: $dc $95 $41
    cp c                                          ; $71b8: $b9
    and c                                         ; $71b9: $a1
    ld a, c                                       ; $71ba: $79
    ld bc, $9b97                                  ; $71bb: $01 $97 $9b
    jr jr_062_71af                                ; $71be: $18 $ef

    db $10                                        ; $71c0: $10
    pop de                                        ; $71c1: $d1
    rst $38                                       ; $71c2: $ff
    ld a, h                                       ; $71c3: $7c
    ld b, c                                       ; $71c4: $41
    rst $20                                       ; $71c5: $e7
    dec bc                                        ; $71c6: $0b
    rla                                           ; $71c7: $17
    ld [hl], a                                    ; $71c8: $77
    dec bc                                        ; $71c9: $0b
    cp $5d                                        ; $71ca: $fe $5d
    ld b, b                                       ; $71cc: $40
    ld [bc], a                                    ; $71cd: $02
    ld [hl], e                                    ; $71ce: $73
    jr nz, jr_062_717b                            ; $71cf: $20 $aa

    ld e, [hl]                                    ; $71d1: $5e
    rst $20                                       ; $71d2: $e7

Call_062_71d3:
    pop hl                                        ; $71d3: $e1
    rst $28                                       ; $71d4: $ef
    dec c                                         ; $71d5: $0d
    daa                                           ; $71d6: $27
    rst $28                                       ; $71d7: $ef
    ld a, [$451f]                                 ; $71d8: $fa $1f $45
    dec e                                         ; $71db: $1d
    and h                                         ; $71dc: $a4
    cp h                                          ; $71dd: $bc
    ld d, a                                       ; $71de: $57
    ld a, [hl-]                                   ; $71df: $3a
    ld e, e                                       ; $71e0: $5b
    ld h, [hl]                                    ; $71e1: $66
    db $fd                                        ; $71e2: $fd
    rst $28                                       ; $71e3: $ef
    and d                                         ; $71e4: $a2
    cpl                                           ; $71e5: $2f
    ld b, h                                       ; $71e6: $44
    add e                                         ; $71e7: $83
    sbc [hl]                                      ; $71e8: $9e
    db $fc                                        ; $71e9: $fc
    ld [bc], a                                    ; $71ea: $02
    rla                                           ; $71eb: $17
    db $fc                                        ; $71ec: $fc
    ld e, d                                       ; $71ed: $5a
    cp a                                          ; $71ee: $bf
    ld h, b                                       ; $71ef: $60
    cp $5d                                        ; $71f0: $fe $5d
    rst $30                                       ; $71f2: $f7
    dec de                                        ; $71f3: $1b
    db $fd                                        ; $71f4: $fd
    ld [hl], e                                    ; $71f5: $73
    ld d, l                                       ; $71f6: $55
    sbc d                                         ; $71f7: $9a
    rla                                           ; $71f8: $17
    rlca                                          ; $71f9: $07
    ld b, e                                       ; $71fa: $43
    xor e                                         ; $71fb: $ab
    ld [$05f5], a                                 ; $71fc: $ea $f5 $05
    rst $20                                       ; $71ff: $e7
    ld [hl], a                                    ; $7200: $77
    dec bc                                        ; $7201: $0b
    ld l, c                                       ; $7202: $69
    ld a, b                                       ; $7203: $78
    halt                                          ; $7204: $76
    adc b                                         ; $7205: $88
    ld a, a                                       ; $7206: $7f
    ld d, a                                       ; $7207: $57
    cpl                                           ; $7208: $2f

Jump_062_7209:
    rst $20                                       ; $7209: $e7
    push af                                       ; $720a: $f5
    add [hl]                                      ; $720b: $86
    inc de                                        ; $720c: $13
    adc b                                         ; $720d: $88
    xor $e2                                       ; $720e: $ee $e2
    call nc, $2045                                ; $7210: $d4 $45 $20
    ret z                                         ; $7213: $c8

    dec bc                                        ; $7214: $0b
    rlca                                          ; $7215: $07
    sbc l                                         ; $7216: $9d
    dec e                                         ; $7217: $1d
    db $e4                                        ; $7218: $e4
    dec b                                         ; $7219: $05
    rla                                           ; $721a: $17
    or $28                                        ; $721b: $f6 $28
    ld bc, $2eff                                  ; $721d: $01 $ff $2e
    add sp, -$41                                  ; $7220: $e8 $bf
    sub h                                         ; $7222: $94
    rla                                           ; $7223: $17
    rla                                           ; $7224: $17
    ld h, a                                       ; $7225: $67
    jr z, jr_062_7287                             ; $7226: $28 $5f

    halt                                          ; $7228: $76
    adc b                                         ; $7229: $88
    push af                                       ; $722a: $f5
    and a                                         ; $722b: $a7
    push af                                       ; $722c: $f5
    ld [bc], a                                    ; $722d: $02
    rst $20                                       ; $722e: $e7
    db $eb                                        ; $722f: $eb
    adc c                                         ; $7230: $89
    add c                                         ; $7231: $81
    xor b                                         ; $7232: $a8
    jp c, $bd41                                   ; $7233: $da $41 $bd

    ld h, e                                       ; $7236: $63
    ld [$02f2], sp                                ; $7237: $08 $f2 $02
    rst $20                                       ; $723a: $e7
    push af                                       ; $723b: $f5
    rst $00                                       ; $723c: $c7
    add hl, bc                                    ; $723d: $09
    ld b, h                                       ; $723e: $44
    push de                                       ; $723f: $d5
    ld c, $7d                                     ; $7240: $0e $7d
    ld h, d                                       ; $7242: $62
    adc l                                         ; $7243: $8d
    inc b                                         ; $7244: $04
    inc l                                         ; $7245: $2c
    ld a, [hl]                                    ; $7246: $7e
    ld bc, $25e7                                  ; $7247: $01 $e7 $25
    ei                                            ; $724a: $fb
    add c                                         ; $724b: $81
    ld a, [bc]                                    ; $724c: $0a
    ld a, a                                       ; $724d: $7f
    sub a                                         ; $724e: $97
    jp hl                                         ; $724f: $e9


    sub c                                         ; $7250: $91
    ld [bc], a                                    ; $7251: $02
    ld a, c                                       ; $7252: $79
    ld bc, $0717                                  ; $7253: $01 $17 $07
    pop bc                                        ; $7256: $c1
    ret nc                                        ; $7257: $d0

    ld b, c                                       ; $7258: $41
    cp h                                          ; $7259: $bc
    dec hl                                        ; $725a: $2b
    ld a, [hl-]                                   ; $725b: $3a
    or h                                          ; $725c: $b4
    ret z                                         ; $725d: $c8

    cpl                                           ; $725e: $2f
    db $fc                                        ; $725f: $fc
    ld [bc], a                                    ; $7260: $02
    rlca                                          ; $7261: $07
    add e                                         ; $7262: $83
    ldh a, [$2f]                                  ; $7263: $f0 $2f
    cp d                                          ; $7265: $ba
    ld [hl], a                                    ; $7266: $77
    xor c                                         ; $7267: $a9
    ld b, b                                       ; $7268: $40
    ld hl, $5bb9                                  ; $7269: $21 $b9 $5b
    di                                            ; $726c: $f3
    ld [bc], a                                    ; $726d: $02
    db $ed                                        ; $726e: $ed
    ccf                                           ; $726f: $3f
    ld d, e                                       ; $7270: $53
    or e                                          ; $7271: $b3
    dec hl                                        ; $7272: $2b
    inc bc                                        ; $7273: $03
    or e                                          ; $7274: $b3
    di                                            ; $7275: $f3
    dec b                                         ; $7276: $05
    ld l, l                                       ; $7277: $6d
    ld c, [hl]                                    ; $7278: $4e
    ld h, d                                       ; $7279: $62
    ld d, $de                                     ; $727a: $16 $de
    ld hl, $9e12                                  ; $727c: $21 $12 $9e
    ld d, [hl]                                    ; $727f: $56
    rlca                                          ; $7280: $07
    add hl, hl                                    ; $7281: $29
    cpl                                           ; $7282: $2f
    rla                                           ; $7283: $17
    db $eb                                        ; $7284: $eb
    ld b, d                                       ; $7285: $42
    ld b, d                                       ; $7286: $42

jr_062_7287:
    rst $00                                       ; $7287: $c7
    cp a                                          ; $7288: $bf
    db $10                                        ; $7289: $10
    db $ed                                        ; $728a: $ed
    ld [c], a                                     ; $728b: $e2
    sub b                                         ; $728c: $90
    push de                                       ; $728d: $d5
    ld c, a                                       ; $728e: $4f
    ld [$02f9], sp                                ; $728f: $08 $f9 $02
    rla                                           ; $7292: $17
    ld [hl], h                                    ; $7293: $74

jr_062_7294:
    ld [$7e28], sp                                ; $7294: $08 $28 $7e
    ld bc, $fbe7                                  ; $7297: $01 $e7 $fb
    db $eb                                        ; $729a: $eb
    ld c, a                                       ; $729b: $4f
    db $10                                        ; $729c: $10
    sbc $c1                                       ; $729d: $de $c1
    sbc a                                         ; $729f: $9f
    db $f4                                        ; $72a0: $f4
    sub b                                         ; $72a1: $90
    ret nc                                        ; $72a2: $d0

    ld hl, sp-$5e                                 ; $72a3: $f8 $a2
    ld [$170b], a                                 ; $72a5: $ea $0b $17
    sub b                                         ; $72a8: $90
    ld e, a                                       ; $72a9: $5f
    rla                                           ; $72aa: $17
    and d                                         ; $72ab: $a2
    sub $ec                                       ; $72ac: $d6 $ec
    adc d                                         ; $72ae: $8a
    adc [hl]                                      ; $72af: $8e
    add hl, bc                                    ; $72b0: $09
    ld e, b                                       ; $72b1: $58
    db $fc                                        ; $72b2: $fc
    ld [bc], a                                    ; $72b3: $02
    rlca                                          ; $72b4: $07
    ld [hl], l                                    ; $72b5: $75
    add hl, hl                                    ; $72b6: $29
    ld h, c                                       ; $72b7: $61
    rst $20                                       ; $72b8: $e7
    rlca                                          ; $72b9: $07
    ld hl, $f3ff                                  ; $72ba: $21 $ff $f3
    ld [bc], a                                    ; $72bd: $02
    rst $10                                       ; $72be: $d7
    ld b, e                                       ; $72bf: $43
    adc a                                         ; $72c0: $8f
    jp nc, $0bb8                                  ; $72c1: $d2 $b8 $0b

    ld a, e                                       ; $72c4: $7b
    adc e                                         ; $72c5: $8b
    inc b                                         ; $72c6: $04
    and d                                         ; $72c7: $a2
    ld [$e705], a                                 ; $72c8: $ea $05 $e7
    daa                                           ; $72cb: $27
    ld h, b                                       ; $72cc: $60
    ld sp, $7aef                                  ; $72cd: $31 $ef $7a
    ld c, e                                       ; $72d0: $4b
    rrca                                          ; $72d1: $0f
    ld b, h                                       ; $72d2: $44
    push de                                       ; $72d3: $d5
    dec bc                                        ; $72d4: $0b
    rla                                           ; $72d5: $17
    rlca                                          ; $72d6: $07
    ld c, h                                       ; $72d7: $4c
    jr nz, jr_062_7294                            ; $72d8: $20 $ba

    adc e                                         ; $72da: $8b
    ld d, e                                       ; $72db: $53
    inc de                                        ; $72dc: $13
    ld b, l                                       ; $72dd: $45
    jr nz, jr_062_72f8                            ; $72de: $20 $18

    ld a, [c]                                     ; $72e0: $f2

jr_062_72e1:
    dec b                                         ; $72e1: $05
    rlca                                          ; $72e2: $07
    ld hl, $e0bf                                  ; $72e3: $21 $bf $e0
    rst $18                                       ; $72e6: $df
    push bc                                       ; $72e7: $c5
    and c                                         ; $72e8: $a1
    sub d                                         ; $72e9: $92
    sbc a                                         ; $72ea: $9f
    sbc b                                         ; $72eb: $98
    ld a, d                                       ; $72ec: $7a
    ld bc, $7e87                                  ; $72ed: $01 $87 $7e
    rst $38                                       ; $72f0: $ff
    ld e, d                                       ; $72f1: $5a
    ld a, [hl]                                    ; $72f2: $7e
    xor $50                                       ; $72f3: $ee $50
    rst $10                                       ; $72f5: $d7
    jr nc, jr_062_72e1                            ; $72f6: $30 $e9

jr_062_72f8:
    inc b                                         ; $72f8: $04
    ld a, c                                       ; $72f9: $79
    ld bc, $196d                                  ; $72fa: $01 $6d $19
    ld b, h                                       ; $72fd: $44
    ld b, b                                       ; $72fe: $40
    jp z, $7e0e                                   ; $72ff: $ca $0e $7e

    rst $00                                       ; $7302: $c7
    ld a, [hl]                                    ; $7303: $7e
    ld bc, $eeed                                  ; $7304: $01 $ed $ee
    push hl                                       ; $7307: $e5
    xor a                                         ; $7308: $af
    ld e, l                                       ; $7309: $5d
    adc a                                         ; $730a: $8f
    and d                                         ; $730b: $a2
    xor $96                                       ; $730c: $ee $96
    ld e, $45                                     ; $730e: $1e $45
    cpl                                           ; $7310: $2f
    ld d, a                                       ; $7311: $57
    rlca                                          ; $7312: $07
    ld h, d                                       ; $7313: $62
    sub [hl]                                      ; $7314: $96
    cp a                                          ; $7315: $bf
    xor e                                         ; $7316: $ab
    ld a, a                                       ; $7317: $7f
    ld l, h                                       ; $7318: $6c
    ld hl, $3fda                                  ; $7319: $21 $da $3f
    or c                                          ; $731c: $b1
    rla                                           ; $731d: $17
    db $ed                                        ; $731e: $ed
    sub [hl]                                      ; $731f: $96
    ld [bc], a                                    ; $7320: $02
    sub l                                         ; $7321: $95
    ld [hl], a                                    ; $7322: $77
    ld a, l                                       ; $7323: $7d
    ld [$3448], sp                                ; $7324: $08 $48 $34
    ld b, e                                       ; $7327: $43
    call nz, Call_062_6d2f                        ; $7328: $c4 $2f $6d
    rra                                           ; $732b: $1f
    xor d                                         ; $732c: $aa
    ld h, [hl]                                    ; $732d: $66
    ld l, l                                       ; $732e: $6d
    ld bc, $09d1                                  ; $732f: $01 $d1 $09
    ld e, b                                       ; $7332: $58
    db $fc                                        ; $7333: $fc
    ld [bc], a                                    ; $7334: $02
    rst $20                                       ; $7335: $e7
    push af                                       ; $7336: $f5
    add [hl]                                      ; $7337: $86
    ld e, [hl]                                    ; $7338: $5e
    rst $10                                       ; $7339: $d7
    and [hl]                                      ; $733a: $a6
    ccf                                           ; $733b: $3f
    adc l                                         ; $733c: $8d
    ld l, [hl]                                    ; $733d: $6e
    inc c                                         ; $733e: $0c
    jp hl                                         ; $733f: $e9


    rla                                           ; $7340: $17
    ld l, l                                       ; $7341: $6d
    ld b, c                                       ; $7342: $41
    ld a, [hl]                                    ; $7343: $7e

jr_062_7344:
    ld hl, $ecbf                                  ; $7344: $21 $bf $ec
    sbc d                                         ; $7347: $9a
    db $f4                                        ; $7348: $f4
    db $d3                                        ; $7349: $d3
    call Call_000_02fc                            ; $734a: $cd $fc $02
    rlca                                          ; $734d: $07
    push af                                       ; $734e: $f5
    ld a, [bc]                                    ; $734f: $0a
    jr jr_062_7344                                ; $7350: $18 $f2

    rst $28                                       ; $7352: $ef
    db $fc                                        ; $7353: $fc
    sbc a                                         ; $7354: $9f
    adc d                                         ; $7355: $8a
    jr jr_062_7388                                ; $7356: $18 $30

    ld sp, hl                                     ; $7358: $f9
    ld [bc], a                                    ; $7359: $02
    rla                                           ; $735a: $17
    inc bc                                        ; $735b: $03
    ld a, [hl-]                                   ; $735c: $3a
    ret z                                         ; $735d: $c8

    ld l, $48                                     ; $735e: $2e $48
    db $fd                                        ; $7360: $fd
    ld l, c                                       ; $7361: $69
    cp h                                          ; $7362: $bc
    db $ed                                        ; $7363: $ed
    adc $e7                                       ; $7364: $ce $e7
    res 5, [hl]                                   ; $7366: $cb $ae
    rlca                                          ; $7368: $07
    pop hl                                        ; $7369: $e1
    inc b                                         ; $736a: $04
    add hl, hl                                    ; $736b: $29
    db $e4                                        ; $736c: $e4
    ld a, a                                       ; $736d: $7f
    ld e, [hl]                                    ; $736e: $5e
    sub a                                         ; $736f: $97
    ld b, d                                       ; $7370: $42
    halt                                          ; $7371: $76
    ld l, e                                       ; $7372: $6b
    sub $a6                                       ; $7373: $d6 $a6
    dec hl                                        ; $7375: $2b
    cp a                                          ; $7376: $bf
    rlca                                          ; $7377: $07
    dec [hl]                                      ; $7378: $35
    add hl, de                                    ; $7379: $19
    ld h, h                                       ; $737a: $64
    rst $10                                       ; $737b: $d7
    rst $38                                       ; $737c: $ff
    jp nz, $fa1f                                  ; $737d: $c2 $1f $fa

    dec bc                                        ; $7380: $0b
    ld d, a                                       ; $7381: $57
    ld h, h                                       ; $7382: $64
    dec b                                         ; $7383: $05
    add hl, bc                                    ; $7384: $09
    cp e                                          ; $7385: $bb
    add [hl]                                      ; $7386: $86
    ld c, h                                       ; $7387: $4c

jr_062_7388:
    cp l                                          ; $7388: $bd
    ld [hl], d                                    ; $7389: $72
    sub b                                         ; $738a: $90
    rla                                           ; $738b: $17
    rla                                           ; $738c: $17
    cp b                                          ; $738d: $b8
    cp e                                          ; $738e: $bb
    ld [hl-], a                                   ; $738f: $32
    ret z                                         ; $7390: $c8

    ld e, a                                       ; $7391: $5f
    dec sp                                        ; $7392: $3b
    inc a                                         ; $7393: $3c
    adc a                                         ; $7394: $8f
    ld a, e                                       ; $7395: $7b
    call nc, $c2f5                                ; $7396: $d4 $f5 $c2
    cpl                                           ; $7399: $2f
    db $ed                                        ; $739a: $ed
    cp $4c                                        ; $739b: $fe $4c
    ld [de], a                                    ; $739d: $12
    dec c                                         ; $739e: $0d
    db $ec                                        ; $739f: $ec
    sbc l                                         ; $73a0: $9d

Call_062_73a1:
    rst $38                                       ; $73a1: $ff
    or e                                          ; $73a2: $b3
    pop af                                        ; $73a3: $f1
    ld d, e                                       ; $73a4: $53
    di                                            ; $73a5: $f3
    ld [bc], a                                    ; $73a6: $02
    rlca                                          ; $73a7: $07
    sbc l                                         ; $73a8: $9d
    inc e                                         ; $73a9: $1c
    ld h, h                                       ; $73aa: $64
    rla                                           ; $73ab: $17
    rst $20                                       ; $73ac: $e7
    adc a                                         ; $73ad: $8f
    ld e, l                                       ; $73ae: $5d
    ld e, a                                       ; $73af: $5f
    rst $20                                       ; $73b0: $e7
    rlca                                          ; $73b1: $07
    ld h, d                                       ; $73b2: $62
    rst $08                                       ; $73b3: $cf
    sub a                                         ; $73b4: $97
    ld e, l                                       ; $73b5: $5d
    sbc a                                         ; $73b6: $9f
    ld d, b                                       ; $73b7: $50
    ld c, b                                       ; $73b8: $48

Call_062_73b9:
    ld a, [hl]                                    ; $73b9: $7e
    ld bc, $4207                                  ; $73ba: $01 $07 $42
    dec h                                         ; $73bd: $25
    ld [$820e], a                                 ; $73be: $ea $0e $82

jr_062_73c1:
    cp e                                          ; $73c1: $bb
    cp $23                                        ; $73c2: $fe $23
    pop de                                        ; $73c4: $d1
    ld b, b                                       ; $73c5: $40
    ld d, h                                       ; $73c6: $54
    cp l                                          ; $73c7: $bd
    rla                                           ; $73c8: $17
    inc de                                        ; $73c9: $13
    or e                                          ; $73ca: $b3
    add h                                         ; $73cb: $84
    or d                                          ; $73cc: $b2
    inc bc                                        ; $73cd: $03
    ld b, c                                       ; $73ce: $41
    ld e, h                                       ; $73cf: $5c
    ld e, a                                       ; $73d0: $5f
    rla                                           ; $73d1: $17
    ld l, b                                       ; $73d2: $68
    ld e, d                                       ; $73d3: $5a
    add hl, bc                                    ; $73d4: $09
    ld e, a                                       ; $73d5: $5f

jr_062_73d6:
    ld b, [hl]                                    ; $73d6: $46
    jr nc, jr_062_73c1                            ; $73d7: $30 $e8

    ret c                                         ; $73d9: $d8

    db $fd                                        ; $73da: $fd
    ld [bc], a                                    ; $73db: $02
    ld l, l                                       ; $73dc: $6d
    adc [hl]                                      ; $73dd: $8e
    dec sp                                        ; $73de: $3b
    ret z                                         ; $73df: $c8

    xor [hl]                                      ; $73e0: $ae
    daa                                           ; $73e1: $27
    add c                                         ; $73e2: $81
    ld c, l                                       ; $73e3: $4d
    add [hl]                                      ; $73e4: $86
    sub h                                         ; $73e5: $94
    rla                                           ; $73e6: $17
    ld l, l                                       ; $73e7: $6d
    cp d                                          ; $73e8: $ba
    inc [hl]                                      ; $73e9: $34
    ld a, [hl]                                    ; $73ea: $7e
    xor $8a                                       ; $73eb: $ee $8a
    jp nc, Jump_062_64cd                          ; $73ed: $d2 $cd $64

    ret z                                         ; $73f0: $c8

    sub [hl]                                      ; $73f1: $96
    ld e, a                                       ; $73f2: $5f
    sub a                                         ; $73f3: $97
    add hl, sp                                    ; $73f4: $39
    or h                                          ; $73f5: $b4
    ld b, d                                       ; $73f6: $42
    ld b, a                                       ; $73f7: $47
    sub b                                         ; $73f8: $90
    cp a                                          ; $73f9: $bf
    ld b, e                                       ; $73fa: $43
    adc a                                         ; $73fb: $8f
    sbc c                                         ; $73fc: $99
    inc h                                         ; $73fd: $24
    and [hl]                                      ; $73fe: $a6
    ld hl, $5eaa                                  ; $73ff: $21 $aa $5e
    ld d, a                                       ; $7402: $57
    rlca                                          ; $7403: $07
    ld [hl], h                                    ; $7404: $74
    ld [bc], a                                    ; $7405: $02
    ld d, c                                       ; $7406: $51
    or l                                          ; $7407: $b5
    dec hl                                        ; $7408: $2b
    cp e                                          ; $7409: $bb
    cp $b4                                        ; $740a: $fe $b4
    jr c, jr_062_73d6                             ; $740c: $38 $c8

    dec bc                                        ; $740e: $0b
    ld d, a                                       ; $740f: $57
    add a                                         ; $7410: $87
    cp $05                                        ; $7411: $fe $05
    ld [hl], a                                    ; $7413: $77
    xor c                                         ; $7414: $a9
    ld c, e                                       ; $7415: $4b
    ld a, c                                       ; $7416: $79
    ld bc, $ceed                                  ; $7417: $01 $ed $ce
    ld d, [hl]                                    ; $741a: $56
    jr jr_062_7477                                ; $741b: $18 $5a

    sub $4e                                       ; $741d: $d6 $4e
    xor c                                         ; $741f: $a9
    dec e                                         ; $7420: $1d
    adc d                                         ; $7421: $8a
    ld e, a                                       ; $7422: $5f
    rst $20                                       ; $7423: $e7
    add hl, bc                                    ; $7424: $09
    ld h, [hl]                                    ; $7425: $66
    xor b                                         ; $7426: $a8
    ld b, e                                       ; $7427: $43
    res 5, [hl]                                   ; $7428: $cb $ae
    xor l                                         ; $742a: $ad
    ld a, [de]                                    ; $742b: $1a
    jp hl                                         ; $742c: $e9


    ld d, b                                       ; $742d: $50
    db $fc                                        ; $742e: $fc
    ld [bc], a                                    ; $742f: $02
    rst $10                                       ; $7430: $d7
    ld h, $10                                     ; $7431: $26 $10

jr_062_7433:
    dec e                                         ; $7433: $1d
    ld e, d                                       ; $7434: $5a
    halt                                          ; $7435: $76
    cp [hl]                                       ; $7436: $be
    xor e                                         ; $7437: $ab
    ld b, [hl]                                    ; $7438: $46
    ret nc                                        ; $7439: $d0

    reti                                          ; $743a: $d9


    and c                                         ; $743b: $a1
    ld hl, sp+$05                                 ; $743c: $f8 $05
    sub a                                         ; $743e: $97
    add l                                         ; $743f: $85
    call nz, $e21d                                ; $7440: $c4 $1d $e2
    add b                                         ; $7443: $80
    ld hl, sp+$13                                 ; $7444: $f8 $13
    ld [hl], a                                    ; $7446: $77
    dec a                                         ; $7447: $3d
    jr nc, jr_062_7433                            ; $7448: $30 $e9

    xor h                                         ; $744a: $ac
    cpl                                           ; $744b: $2f
    sub a                                         ; $744c: $97
    ld b, d                                       ; $744d: $42
    ld a, [hl+]                                   ; $744e: $2a
    cp a                                          ; $744f: $bf
    rlca                                          ; $7450: $07
    ld hl, $c37f                                  ; $7451: $21 $7f $c3
    cp l                                          ; $7454: $bd
    rst $38                                       ; $7455: $ff
    ld e, l                                       ; $7456: $5d
    reti                                          ; $7457: $d9


    ld [hl], l                                    ; $7458: $75
    ld d, c                                       ; $7459: $51
    ld h, [hl]                                    ; $745a: $66
    ld a, [hl]                                    ; $745b: $7e
    ld bc, $3be7                                  ; $745c: $01 $e7 $3b
    add hl, de                                    ; $745f: $19
    cp h                                          ; $7460: $bc
    di                                            ; $7461: $f3
    inc bc                                        ; $7462: $03
    di                                            ; $7463: $f3
    dec bc                                        ; $7464: $0b
    rst $10                                       ; $7465: $d7
    sub b                                         ; $7466: $90
    rra                                           ; $7467: $1f
    pop de                                        ; $7468: $d1
    ld a, d                                       ; $7469: $7a
    db $dd                                        ; $746a: $dd
    dec [hl]                                      ; $746b: $35
    and h                                         ; $746c: $a4
    sbc [hl]                                      ; $746d: $9e
    jp z, $bfbd                                   ; $746e: $ca $bd $bf

    rst $10                                       ; $7471: $d7
    ld a, [hl+]                                   ; $7472: $2a
    dec bc                                        ; $7473: $0b
    ld a, [c]                                     ; $7474: $f2
    dec bc                                        ; $7475: $0b
    ld a, e                                       ; $7476: $7b

jr_062_7477:
    ld bc, $62d7                                  ; $7477: $01 $d7 $62
    ld b, h                                       ; $747a: $44
    call $297d                                    ; $747b: $cd $7d $29
    jp hl                                         ; $747e: $e9


    add $0b                                       ; $747f: $c6 $0b
    dec de                                        ; $7481: $1b
    sub c                                         ; $7482: $91
    or $9f                                        ; $7483: $f6 $9f
    xor e                                         ; $7485: $ab
    xor h                                         ; $7486: $ac
    and e                                         ; $7487: $a3
    db $d3                                        ; $7488: $d3
    ld c, h                                       ; $7489: $4c
    dec de                                        ; $748a: $1b
    add hl, de                                    ; $748b: $19
    add a                                         ; $748c: $87
    call nz, Call_062_7b2f                        ; $748d: $c4 $2f $7b
    sbc d                                         ; $7490: $9a
    ld [c], a                                     ; $7491: $e2
    add sp, $57                                   ; $7492: $e8 $57
    and a                                         ; $7494: $a7
    ld a, b                                       ; $7495: $78
    jr nz, jr_062_74e9                            ; $7496: $20 $51

    rst $10                                       ; $7498: $d7
    sbc l                                         ; $7499: $9d
    adc $b5                                       ; $749a: $ce $b5
    sbc d                                         ; $749c: $9a
    ld [hl], e                                    ; $749d: $73
    rlca                                          ; $749e: $07
    ld d, l                                       ; $749f: $55

Jump_062_74a0:
    ld hl, $a91b                                  ; $74a0: $21 $1b $a9
    add hl, hl                                    ; $74a3: $29
    ld [bc], a                                    ; $74a4: $02
    ld d, d                                       ; $74a5: $52
    xor $17                                       ; $74a6: $ee $17
    dec de                                        ; $74a8: $1b
    sub c                                         ; $74a9: $91
    ld [hl], $cb                                  ; $74aa: $36 $cb
    ld a, [hl+]                                   ; $74ac: $2a
    ld d, e                                       ; $74ad: $53
    or e                                          ; $74ae: $b3
    or d                                          ; $74af: $b2
    rst $30                                       ; $74b0: $f7
    and e                                         ; $74b1: $a3
    db $fd                                        ; $74b2: $fd
    sbc $3d                                       ; $74b3: $de $3d
    db $f4                                        ; $74b5: $f4
    ld e, $40                                     ; $74b6: $1e $40
    ld [hl], h                                    ; $74b8: $74
    rst $38                                       ; $74b9: $ff
    dec e                                         ; $74ba: $1d
    sbc l                                         ; $74bb: $9d
    dec e                                         ; $74bc: $1d
    adc d                                         ; $74bd: $8a
    rst $30                                       ; $74be: $f7
    cp e                                          ; $74bf: $bb
    jp nc, Jump_062_503c                          ; $74c0: $d2 $3c $50

    reti                                          ; $74c3: $d9


    ld a, c                                       ; $74c4: $79
    cp a                                          ; $74c5: $bf
    dec de                                        ; $74c6: $1b
    sub c                                         ; $74c7: $91
    ld b, e                                       ; $74c8: $43
    xor l                                         ; $74c9: $ad
    and h                                         ; $74ca: $a4
    ld c, b                                       ; $74cb: $48
    ld h, c                                       ; $74cc: $61
    rrca                                          ; $74cd: $0f
    dec l                                         ; $74ce: $2d
    db $eb                                        ; $74cf: $eb
    ret nc                                        ; $74d0: $d0

    cp e                                          ; $74d1: $bb
    rst $10                                       ; $74d2: $d7
    cp a                                          ; $74d3: $bf
    ld h, b                                       ; $74d4: $60
    ld l, l                                       ; $74d5: $6d
    ld l, b                                       ; $74d6: $68
    ld l, b                                       ; $74d7: $68
    cp e                                          ; $74d8: $bb
    inc c                                         ; $74d9: $0c
    sbc b                                         ; $74da: $98
    cp e                                          ; $74db: $bb
    rst $10                                       ; $74dc: $d7
    sub [hl]                                      ; $74dd: $96
    and c                                         ; $74de: $a1
    push de                                       ; $74df: $d5
    ld [bc], a                                    ; $74e0: $02
    add hl, hl                                    ; $74e1: $29
    or h                                          ; $74e2: $b4
    pop bc                                        ; $74e3: $c1
    cp d                                          ; $74e4: $ba
    ld e, $b1                                     ; $74e5: $1e $b1
    ld h, l                                       ; $74e7: $65
    or c                                          ; $74e8: $b1

jr_062_74e9:
    ld [hl], c                                    ; $74e9: $71
    adc l                                         ; $74ea: $8d
    ld e, a                                       ; $74eb: $5f
    inc b                                         ; $74ec: $04
    and h                                         ; $74ed: $a4
    db $ec                                        ; $74ee: $ec
    ld b, a                                       ; $74ef: $47
    adc e                                         ; $74f0: $8b
    xor b                                         ; $74f1: $a8
    ld e, b                                       ; $74f2: $58
    db $dd                                        ; $74f3: $dd
    dec hl                                        ; $74f4: $2b
    cp $52                                        ; $74f5: $fe $52
    push de                                       ; $74f7: $d5
    cpl                                           ; $74f8: $2f
    cp [hl]                                       ; $74f9: $be
    ld e, a                                       ; $74fa: $5f
    dec de                                        ; $74fb: $1b
    sub c                                         ; $74fc: $91
    dec hl                                        ; $74fd: $2b
    ld e, d                                       ; $74fe: $5a
    ld hl, sp-$75                                 ; $74ff: $f8 $8b
    pop de                                        ; $7501: $d1
    ld l, e                                       ; $7502: $6b
    and h                                         ; $7503: $a4
    ld e, [hl]                                    ; $7504: $5e
    inc l                                         ; $7505: $2c
    ei                                            ; $7506: $fb
    pop de                                        ; $7507: $d1
    ld a, [bc]                                    ; $7508: $0a
    and l                                         ; $7509: $a5
    ld [hl], a                                    ; $750a: $77
    di                                            ; $750b: $f3
    sub a                                         ; $750c: $97
    ld [hl-], a                                   ; $750d: $32
    db $fc                                        ; $750e: $fc
    inc hl                                        ; $750f: $23
    ld [hl], l                                    ; $7510: $75
    ld e, c                                       ; $7511: $59
    push hl                                       ; $7512: $e5
    xor a                                         ; $7513: $af
    ld b, [hl]                                    ; $7514: $46
    add [hl]                                      ; $7515: $86
    ret c                                         ; $7516: $d8

    ld l, b                                       ; $7517: $68
    sbc [hl]                                      ; $7518: $9e
    jr jr_062_7522                                ; $7519: $18 $07

    or e                                          ; $751b: $b3
    xor h                                         ; $751c: $ac
    or [hl]                                       ; $751d: $b6
    cp [hl]                                       ; $751e: $be
    ldh [$e2], a                                  ; $751f: $e0 $e2
    cpl                                           ; $7521: $2f

jr_062_7522:
    ld a, b                                       ; $7522: $78
    cp a                                          ; $7523: $bf
    dec de                                        ; $7524: $1b
    sub c                                         ; $7525: $91
    di                                            ; $7526: $f3
    sbc l                                         ; $7527: $9d
    call nc, $31e7                                ; $7528: $d4 $e7 $31
    cpl                                           ; $752b: $2f
    or h                                          ; $752c: $b4
    ld [hl+], a                                   ; $752d: $22
    db $10                                        ; $752e: $10
    ld [hl], h                                    ; $752f: $74
    xor $47                                       ; $7530: $ee $47
    ld b, e                                       ; $7532: $43
    res 5, d                                      ; $7533: $cb $aa
    ld a, e                                       ; $7535: $7b
    sbc h                                         ; $7536: $9c
    call nc, $a0b4                                ; $7537: $d4 $b4 $a0
    and a                                         ; $753a: $a7
    adc h                                         ; $753b: $8c
    xor $f7                                       ; $753c: $ee $f7
    dec bc                                        ; $753e: $0b
    dec de                                        ; $753f: $1b
    sub c                                         ; $7540: $91
    dec hl                                        ; $7541: $2b
    ld e, d                                       ; $7542: $5a
    ld de, $3a08                                  ; $7543: $11 $08 $3a
    rst $30                                       ; $7546: $f7
    and e                                         ; $7547: $a3
    ld e, l                                       ; $7548: $5d
    ld a, [de]                                    ; $7549: $1a
    add e                                         ; $754a: $83
    ld a, [bc]                                    ; $754b: $0a
    xor l                                         ; $754c: $ad
    sub [hl]                                      ; $754d: $96
    db $d3                                        ; $754e: $d3
    ld b, d                                       ; $754f: $42
    sbc e                                         ; $7550: $9b
    ld h, l                                       ; $7551: $65
    xor $a0                                       ; $7552: $ee $a0
    ld a, [hl+]                                   ; $7554: $2a
    db $e4                                        ; $7555: $e4
    ret nc                                        ; $7556: $d0

    add hl, sp                                    ; $7557: $39
    and l                                         ; $7558: $a5

Jump_062_7559:
    and a                                         ; $7559: $a7
    db $d3                                        ; $755a: $d3
    cp c                                          ; $755b: $b9
    rst $18                                       ; $755c: $df
    rra                                           ; $755d: $1f
    db $10                                        ; $755e: $10
    ld [hl], h                                    ; $755f: $74
    add a                                         ; $7560: $87
    ld [c], a                                     ; $7561: $e2
    ld b, l                                       ; $7562: $45
    ld hl, $b515                                  ; $7563: $21 $15 $b5
    cp e                                          ; $7566: $bb
    ld d, a                                       ; $7567: $57
    rst $20                                       ; $7568: $e7
    db $fd                                        ; $7569: $fd
    ld [bc], a                                    ; $756a: $02
    dec de                                        ; $756b: $1b
    sub c                                         ; $756c: $91
    di                                            ; $756d: $f3
    sbc l                                         ; $756e: $9d
    call nc, Call_000_1787                        ; $756f: $d4 $87 $17
    ld e, d                                       ; $7572: $5a
    db $e4                                        ; $7573: $e4
    adc a                                         ; $7574: $8f

jr_062_7575:
    db $eb                                        ; $7575: $eb
    di                                            ; $7576: $f3
    dec b                                         ; $7577: $05
    rst $00                                       ; $7578: $c7
    ret nc                                        ; $7579: $d0

    ld [hl], a                                    ; $757a: $77
    ld [hl], c                                    ; $757b: $71
    cp d                                          ; $757c: $ba
    add h                                         ; $757d: $84
    inc b                                         ; $757e: $04
    cp l                                          ; $757f: $bd
    ld e, $b9                                     ; $7580: $1e $b9
    ret z                                         ; $7582: $c8

    ret z                                         ; $7583: $c8

    ld b, [hl]                                    ; $7584: $46
    cpl                                           ; $7585: $2f
    ld [hl-], a                                   ; $7586: $32
    ld [hl], d                                    ; $7587: $72
    db $fd                                        ; $7588: $fd
    dec a                                         ; $7589: $3d
    or $fd                                        ; $758a: $f6 $fd
    ld [bc], a                                    ; $758c: $02
    dec de                                        ; $758d: $1b
    sub c                                         ; $758e: $91
    dec hl                                        ; $758f: $2b
    ld e, d                                       ; $7590: $5a
    ld de, $3a08                                  ; $7591: $11 $08 $3a
    rst $30                                       ; $7594: $f7
    and e                                         ; $7595: $a3
    dec a                                         ; $7596: $3d
    ld e, a                                       ; $7597: $5f
    adc d                                         ; $7598: $8a
    and a                                         ; $7599: $a7
    jr z, jr_062_7575                             ; $759a: $28 $d9

    and c                                         ; $759c: $a1
    sub b                                         ; $759d: $90
    add $ea                                       ; $759e: $c6 $ea
    ld c, $aa                                     ; $75a0: $0e $aa
    ld b, d                                       ; $75a2: $42
    ld a, [hl-]                                   ; $75a3: $3a
    rst $28                                       ; $75a4: $ef
    rla                                           ; $75a5: $17
    dec de                                        ; $75a6: $1b
    sub c                                         ; $75a7: $91
    halt                                          ; $75a8: $76
    xor e                                         ; $75a9: $ab
    ld l, d                                       ; $75aa: $6a
    add hl, de                                    ; $75ab: $19
    ld a, [hl-]                                   ; $75ac: $3a
    rla                                           ; $75ad: $17
    ld e, d                                       ; $75ae: $5a
    pop de                                        ; $75af: $d1
    rla                                           ; $75b0: $17
    db $e4                                        ; $75b1: $e4
    ld d, l                                       ; $75b2: $55
    cp l                                          ; $75b3: $bd
    cp d                                          ; $75b4: $ba
    and l                                         ; $75b5: $a5
    rst $30                                       ; $75b6: $f7
    ret c                                         ; $75b7: $d8

    ld a, c                                       ; $75b8: $79
    cp a                                          ; $75b9: $bf
    dec de                                        ; $75ba: $1b
    sub c                                         ; $75bb: $91
    dec hl                                        ; $75bc: $2b
    ld e, d                                       ; $75bd: $5a
    ld hl, sp-$75                                 ; $75be: $f8 $8b
    pop de                                        ; $75c0: $d1
    ld l, e                                       ; $75c1: $6b
    add sp, $4f                                   ; $75c2: $e8 $4f
    push af                                       ; $75c4: $f5
    inc bc                                        ; $75c5: $03
    adc b                                         ; $75c6: $88
    xor $d3                                       ; $75c7: $ee $d3
    ld sp, $05d6                                  ; $75c9: $31 $d6 $05
    call $d1fb                                    ; $75cc: $cd $fb $d1
    ld a, [de]                                    ; $75cf: $1a
    ld a, d                                       ; $75d0: $7a
    inc hl                                        ; $75d1: $23
    or b                                          ; $75d2: $b0
    sbc $70                                       ; $75d3: $de $70
    ld a, $9f                                     ; $75d5: $3e $9f
    sbc l                                         ; $75d7: $9d
    ldh [$fb], a                                  ; $75d8: $e0 $fb
    dec b                                         ; $75da: $05
    dec de                                        ; $75db: $1b
    sub c                                         ; $75dc: $91
    di                                            ; $75dd: $f3
    sbc l                                         ; $75de: $9d
    call nc, $d787                                ; $75df: $d4 $87 $d7
    ld hl, sp-$1e                                 ; $75e2: $f8 $e2
    rst $20                                       ; $75e4: $e7
    dec bc                                        ; $75e5: $0b
    adc [hl]                                      ; $75e6: $8e
    and c                                         ; $75e7: $a1
    adc a                                         ; $75e8: $8f
    db $fc                                        ; $75e9: $fc
    ld [hl], c                                    ; $75ea: $71
    db $ed                                        ; $75eb: $ed
    ld e, a                                       ; $75ec: $5f
    adc d                                         ; $75ed: $8a
    ld h, l                                       ; $75ee: $65
    ld d, c                                       ; $75ef: $51
    cp $5d                                        ; $75f0: $fe $5d
    sub b                                         ; $75f2: $90
    pop hl                                        ; $75f3: $e1
    ld [hl], c                                    ; $75f4: $71
    sbc $2f                                       ; $75f5: $de $2f
    dec de                                        ; $75f7: $1b
    sub c                                         ; $75f8: $91
    ld b, e                                       ; $75f9: $43
    inc c                                         ; $75fa: $0c
    ld de, $bd1b                                  ; $75fb: $11 $1b $bd
    ld c, e                                       ; $75fe: $4b
    jp Jump_062_6c03                              ; $75ff: $c3 $03 $6c


    res 4, d                                      ; $7602: $cb $a2
    sub b                                         ; $7604: $90
    or e                                          ; $7605: $b3
    xor d                                         ; $7606: $aa
    dec l                                         ; $7607: $2d
    daa                                           ; $7608: $27
    inc a                                         ; $7609: $3c
    ld d, $76                                     ; $760a: $16 $76
    ld e, d                                       ; $760c: $5a
    ret nc                                        ; $760d: $d0

    ld l, e                                       ; $760e: $6b
    cp b                                          ; $760f: $b8
    add $94                                       ; $7610: $c6 $94
    inc l                                         ; $7612: $2c
    xor $d5                                       ; $7613: $ee $d5
    ld a, c                                       ; $7615: $79
    cp a                                          ; $7616: $bf
    dec de                                        ; $7617: $1b
    sub c                                         ; $7618: $91
    dec hl                                        ; $7619: $2b
    ld e, d                                       ; $761a: $5a
    ld de, $3a08                                  ; $761b: $11 $08 $3a
    rst $30                                       ; $761e: $f7
    and e                                         ; $761f: $a3
    add l                                         ; $7620: $85
    sub $a3                                       ; $7621: $d6 $a3
    bit 6, c                                      ; $7623: $cb $71
    sbc h                                         ; $7625: $9c
    jr nz, @-$59                                  ; $7626: $20 $a5

    ld [hl], $5c                                  ; $7628: $36 $5c
    ld h, e                                       ; $762a: $63
    ld c, d                                       ; $762b: $4a
    ld d, $f7                                     ; $762c: $16 $f7
    ld [$5fbc], a                                 ; $762e: $ea $bc $5f
    dec de                                        ; $7631: $1b
    sub c                                         ; $7632: $91
    adc e                                         ; $7633: $8b
    ld b, d                                       ; $7634: $42
    ld b, [hl]                                    ; $7635: $46
    sbc a                                         ; $7636: $9f
    reti                                          ; $7637: $d9


    add hl, sp                                    ; $7638: $39
    add [hl]                                      ; $7639: $86
    cp [hl]                                       ; $763a: $be
    inc hl                                        ; $763b: $23
    cpl                                           ; $763c: $2f
    ld c, d                                       ; $763d: $4a
    ccf                                           ; $763e: $3f
    sbc h                                         ; $763f: $9c
    sbc d                                         ; $7640: $9a
    ld a, $04                                     ; $7641: $3e $04
    sbc c                                         ; $7643: $99
    adc e                                         ; $7644: $8b
    ld h, l                                       ; $7645: $65
    and c                                         ; $7646: $a1
    ld a, [c]                                     ; $7647: $f2
    sub c                                         ; $7648: $91
    rst $30                                       ; $7649: $f7
    dec bc                                        ; $764a: $0b
    dec de                                        ; $764b: $1b
    sub c                                         ; $764c: $91
    ld b, e                                       ; $764d: $43
    inc c                                         ; $764e: $0c
    ld de, $bd1b                                  ; $764f: $11 $1b $bd
    adc e                                         ; $7652: $8b
    ld b, d                                       ; $7653: $42
    ld [hl], $8c                                  ; $7654: $36 $8c
    add hl, bc                                    ; $7656: $09
    ld d, d                                       ; $7657: $52
    ld l, d                                       ; $7658: $6a
    ld [hl], l                                    ; $7659: $75
    xor a                                         ; $765a: $af
    ld [$cc37], a                                 ; $765b: $ea $37 $cc
    ld h, e                                       ; $765e: $63
    add sp, $0b                                   ; $765f: $e8 $0b
    ld c, a                                       ; $7661: $4f
    ld l, h                                       ; $7662: $6c
    ld b, c                                       ; $7663: $41
    rst $30                                       ; $7664: $f7
    ld [$68fd], a                                 ; $7665: $ea $fd $68
    sbc h                                         ; $7668: $9c
    and c                                         ; $7669: $a1
    and e                                         ; $766a: $a3
    and d                                         ; $766b: $a2
    db $f4                                        ; $766c: $f4
    ld c, $52                                     ; $766d: $0e $52
    sbc h                                         ; $766f: $9c
    rst $30                                       ; $7670: $f7
    dec bc                                        ; $7671: $0b
    dec de                                        ; $7672: $1b
    sub c                                         ; $7673: $91
    di                                            ; $7674: $f3
    sbc l                                         ; $7675: $9d
    call nc, $a787                                ; $7676: $d4 $87 $a7
    jr z, jr_062_76ca                             ; $7679: $28 $4f

    res 3, b                                      ; $767b: $cb $98
    sub h                                         ; $767d: $94
    add [hl]                                      ; $767e: $86
    di                                            ; $767f: $f3
    ld e, [hl]                                    ; $7680: $5e
    ld e, e                                       ; $7681: $5b
    ld d, d                                       ; $7682: $52
    ld a, [de]                                    ; $7683: $1a
    db $ec                                        ; $7684: $ec
    add hl, hl                                    ; $7685: $29
    jp z, $b2d3                                   ; $7686: $ca $d3 $b2

    xor h                                         ; $7689: $ac
    db $dd                                        ; $768a: $dd
    ld d, d                                       ; $768b: $52
    and b                                         ; $768c: $a0
    ld a, [c]                                     ; $768d: $f2
    and d                                         ; $768e: $a2
    db $fc                                        ; $768f: $fc
    cp e                                          ; $7690: $bb
    or [hl]                                       ; $7691: $b6
    push de                                       ; $7692: $d5
    ld [hl], d                                    ; $7693: $72
    xor $fc                                       ; $7694: $ee $fc
    sbc a                                         ; $7696: $9f
    jp nz, $ee41                                  ; $7697: $c2 $41 $ee

    rla                                           ; $769a: $17
    dec de                                        ; $769b: $1b
    sub c                                         ; $769c: $91
    ld [hl], $cb                                  ; $769d: $36 $cb
    ld [hl+], a                                   ; $769f: $22
    ld l, d                                       ; $76a0: $6a
    ld d, [hl]                                    ; $76a1: $56
    or $18                                        ; $76a2: $f6 $18
    ld a, [$2f3e]                                 ; $76a4: $fa $3e $2f
    ld [$d89a], a                                 ; $76a7: $ea $9a $d8
    dec bc                                        ; $76aa: $0b
    or c                                          ; $76ab: $b1
    ld [hl], e                                    ; $76ac: $73
    rst $20                                       ; $76ad: $e7
    ld [hl], c                                    ; $76ae: $71
    rst $38                                       ; $76af: $ff
    jp nz, $b596                                  ; $76b0: $c2 $96 $b5

    sbc d                                         ; $76b3: $9a
    inc sp                                        ; $76b4: $33
    ld c, a                                       ; $76b5: $4f
    add l                                         ; $76b6: $85
    jp z, $eaae                                   ; $76b7: $ca $ae $ea

    ld b, a                                       ; $76ba: $47
    ld a, h                                       ; $76bb: $7c
    cp a                                          ; $76bc: $bf
    dec de                                        ; $76bd: $1b
    sub c                                         ; $76be: $91
    ld c, e                                       ; $76bf: $4b
    ld b, c                                       ; $76c0: $41
    ld e, h                                       ; $76c1: $5c
    and c                                         ; $76c2: $a1
    xor d                                         ; $76c3: $aa
    ld [hl], c                                    ; $76c4: $71
    add [hl]                                      ; $76c5: $86
    adc [hl]                                      ; $76c6: $8e
    rst $08                                       ; $76c7: $cf
    rla                                           ; $76c8: $17
    inc e                                         ; $76c9: $1c

jr_062_76ca:
    ld a, [hl-]                                   ; $76ca: $3a
    rla                                           ; $76cb: $17
    ld e, d                                       ; $76cc: $5a
    ld hl, sp-$75                                 ; $76cd: $f8 $8b
    pop de                                        ; $76cf: $d1
    ld l, e                                       ; $76d0: $6b
    and h                                         ; $76d1: $a4
    ld e, [hl]                                    ; $76d2: $5e
    inc l                                         ; $76d3: $2c
    ld l, e                                       ; $76d4: $6b
    jp hl                                         ; $76d5: $e9


    dec a                                         ; $76d6: $3d
    halt                                          ; $76d7: $76
    ld b, d                                       ; $76d8: $42
    ld [hl], l                                    ; $76d9: $75
    ld a, [de]                                    ; $76da: $1a
    dec a                                         ; $76db: $3d
    add sp, -$78                                  ; $76dc: $e8 $88
    ld sp, hl                                     ; $76de: $f9
    adc e                                         ; $76df: $8b
    add hl, hl                                    ; $76e0: $29
    push hl                                       ; $76e1: $e5
    ld a, [hl]                                    ; $76e2: $7e
    ld bc, $911b                                  ; $76e3: $01 $1b $91
    ld b, e                                       ; $76e6: $43
    inc c                                         ; $76e7: $0c
    ld de, $f73b                                  ; $76e8: $11 $3b $f7
    and e                                         ; $76eb: $a3
    dec e                                         ; $76ec: $1d
    ld [hl], d                                    ; $76ed: $72
    xor a                                         ; $76ee: $af
    ld [$cc37], a                                 ; $76ef: $ea $37 $cc
    adc e                                         ; $76f2: $8b
    ld b, d                                       ; $76f3: $42
    ld l, $0a                                     ; $76f4: $2e $0a
    ret                                           ; $76f6: $c9


    ld sp, $ddc4                                  ; $76f7: $31 $c4 $dd
    add sp, -$6f                                  ; $76fa: $e8 $91
    ld d, [hl]                                    ; $76fc: $56
    push de                                       ; $76fd: $d5
    rst $30                                       ; $76fe: $f7
    dec bc                                        ; $76ff: $0b
    dec de                                        ; $7700: $1b
    sub c                                         ; $7701: $91
    dec bc                                        ; $7702: $0b
    ld [hl], e                                    ; $7703: $73
    dec c                                         ; $7704: $0d
    daa                                           ; $7705: $27
    push af                                       ; $7706: $f5
    ld a, c                                       ; $7707: $79
    call z, Call_062_428b                         ; $7708: $cc $8b $42
    ld l, $b4                                     ; $770b: $2e $b4
    ld [hl+], a                                   ; $770d: $22
    db $10                                        ; $770e: $10
    ld [hl], h                                    ; $770f: $74
    xor a                                         ; $7710: $af
    sub [hl]                                      ; $7711: $96
    db $fd                                        ; $7712: $fd

Call_062_7713:
    ld l, b                                       ; $7713: $68
    rst $08                                       ; $7714: $cf
    sub a                                         ; $7715: $97
    ld [c], a                                     ; $7716: $e2
    jp hl                                         ; $7717: $e9


    dec c                                         ; $7718: $0d
    sub e                                         ; $7719: $93

jr_062_771a:
    cp a                                          ; $771a: $bf
    cp b                                          ; $771b: $b8
    ld b, e                                       ; $771c: $43
    pop af                                        ; $771d: $f1
    jr c, jr_062_7755                             ; $771e: $38 $35

    cp l                                          ; $7720: $bd
    sbc e                                         ; $7721: $9b
    inc de                                        ; $7722: $13
    adc b                                         ; $7723: $88
    xor d                                         ; $7724: $aa
    ld a, d                                       ; $7725: $7a
    cp a                                          ; $7726: $bf
    dec de                                        ; $7727: $1b
    sub c                                         ; $7728: $91
    ld c, e                                       ; $7729: $4b
    add e                                         ; $772a: $83
    sub h                                         ; $772b: $94

jr_062_772c:
    sbc l                                         ; $772c: $9d
    sub a                                         ; $772d: $97
    ld c, h                                       ; $772e: $4c
    ld [$4759], a                                 ; $772f: $ea $59 $47
    cp $1e                                        ; $7732: $fe $1e
    ld d, a                                       ; $7734: $57
    ld l, d                                       ; $7735: $6a
    ld h, l                                       ; $7736: $65
    rst $20                                       ; $7737: $e7
    cp l                                          ; $7738: $bd

Jump_062_7739:
    add e                                         ; $7739: $83
    call nc, $e654                                ; $773a: $d4 $54 $e6
    ld a, [hl-]                                   ; $773d: $3a
    adc $d0                                       ; $773e: $ce $d0
    ld d, c                                       ; $7740: $51
    push bc                                       ; $7741: $c5
    jr nz, jr_062_772c                            ; $7742: $20 $e8

    add l                                         ; $7744: $85
    or d                                          ; $7745: $b2
    add e                                         ; $7746: $83
    adc $0e                                       ; $7747: $ce $0e
    ld d, d                                       ; $7749: $52
    rla                                           ; $774a: $17
    pop de                                        ; $774b: $d1
    dec l                                         ; $774c: $2d
    add sp, -$05                                  ; $774d: $e8 $fb
    dec b                                         ; $774f: $05
    dec de                                        ; $7750: $1b
    sub c                                         ; $7751: $91
    di                                            ; $7752: $f3
    cp e                                          ; $7753: $bb

jr_062_7754:
    db $e3                                        ; $7754: $e3

jr_062_7755:
    ld d, l                                       ; $7755: $55
    dec bc                                        ; $7756: $0b
    ld a, [c]                                     ; $7757: $f2
    jr jr_062_7754                                ; $7758: $18 $fa

    adc $d3                                       ; $775a: $ce $d3
    and d                                         ; $775c: $a2
    ld a, [hl]                                    ; $775d: $7e
    db $e3                                        ; $775e: $e3
    res 4, d                                      ; $775f: $cb $a2
    sub b                                         ; $7761: $90
    ei                                            ; $7762: $fb
    inc a                                         ; $7763: $3c
    ld [hl-], a                                   ; $7764: $32
    ld [hl], h                                    ; $7765: $74
    db $f4                                        ; $7766: $f4
    ld l, d                                       ; $7767: $6a
    inc b                                         ; $7768: $04
    and d                                         ; $7769: $a2
    xor d                                         ; $776a: $aa
    ld [hl], e                                    ; $776b: $73
    or b                                          ; $776c: $b0
    ld a, [bc]                                    ; $776d: $0a
    or d                                          ; $776e: $b2
    add $2f                                       ; $776f: $c6 $2f
    db $e4                                        ; $7771: $e4
    adc a                                         ; $7772: $8f
    ld a, l                                       ; $7773: $7d
    cp a                                          ; $7774: $bf
    dec de                                        ; $7775: $1b
    sub c                                         ; $7776: $91
    ld c, e                                       ; $7777: $4b
    dec l                                         ; $7778: $2d
    ret z                                         ; $7779: $c8

    adc e                                         ; $777a: $8b
    ld b, d                                       ; $777b: $42
    xor $f3                                       ; $777c: $ee $f3
    ld a, [de]                                    ; $777e: $1a

jr_062_777f:
    dec e                                         ; $777f: $1d
    ld h, d                                       ; $7780: $62
    cpl                                           ; $7781: $2f
    ld a, [bc]                                    ; $7782: $0a
    add hl, hl                                    ; $7783: $29
    sub h                                         ; $7784: $94
    ld a, h                                       ; $7785: $7c
    call z, $b10b                                 ; $7786: $cc $0b $b1
    ld [hl], e                                    ; $7789: $73
    jr nz, @+$6e                                  ; $778a: $20 $6c

    ld e, [hl]                                    ; $778c: $5e
    jr z, jr_062_771a                             ; $778d: $28 $8b

    ld b, d                                       ; $778f: $42
    ld [hl], $be                                  ; $7790: $36 $be
    and b                                         ; $7792: $a0
    ld h, a                                       ; $7793: $67
    ld hl, $e763                                  ; $7794: $21 $63 $e7
    db $f4                                        ; $7797: $f4
    xor d                                         ; $7798: $aa
    inc [hl]                                      ; $7799: $34
    dec e                                         ; $779a: $1d
    and c                                         ; $779b: $a1
    inc l                                         ; $779c: $2c
    ld a, [bc]                                    ; $779d: $0a
    reti                                          ; $779e: $d9


    add b                                         ; $779f: $80
    sub $af                                       ; $77a0: $d6 $af
    push de                                       ; $77a2: $d5
    ld l, c                                       ; $77a3: $69
    ld b, c                                       ; $77a4: $41
    rst $18                                       ; $77a5: $df
    cpl                                           ; $77a6: $2f
    dec de                                        ; $77a7: $1b
    sub c                                         ; $77a8: $91
    ld b, e                                       ; $77a9: $43
    ld a, [hl+]                                   ; $77aa: $2a

Jump_062_77ab:
    dec e                                         ; $77ab: $1d
    rst $28                                       ; $77ac: $ef
    jp z, Jump_062_688f                           ; $77ad: $ca $8f $68

    ld a, [c]                                     ; $77b0: $f2
    inc sp                                        ; $77b1: $33
    ld a, e                                       ; $77b2: $7b
    rla                                           ; $77b3: $17
    add l                                         ; $77b4: $85
    ld h, h                                       ; $77b5: $64
    ld c, d                                       ; $77b6: $4a
    rst $28                                       ; $77b7: $ef
    jr nz, jr_062_777f                            ; $77b8: $20 $c5

    add hl, hl                                    ; $77ba: $29
    and [hl]                                      ; $77bb: $a6
    xor l                                         ; $77bc: $ad
    ld b, c                                       ; $77bd: $41
    ld c, l                                       ; $77be: $4d
    ld [hl], c                                    ; $77bf: $71
    add e                                         ; $77c0: $83
    ld e, d                                       ; $77c1: $5a
    sbc h                                         ; $77c2: $9c
    xor e                                         ; $77c3: $ab
    pop hl                                        ; $77c4: $e1
    sbc c                                         ; $77c5: $99
    add sp, $73                                   ; $77c6: $e8 $73
    ld l, $0a                                     ; $77c8: $2e $0a
    reti                                          ; $77ca: $d9


    ret nc                                        ; $77cb: $d0

    sub c                                         ; $77cc: $91
    add a                                         ; $77cd: $87
    ld a, a                                       ; $77ce: $7f
    add sp, $45                                   ; $77cf: $e8 $45
    jp hl                                         ; $77d1: $e9


    ld b, a                                       ; $77d2: $47
    db $fd                                        ; $77d3: $fd
    adc [hl]                                      ; $77d4: $8e
    adc $35                                       ; $77d5: $ce $35
    sub d                                         ; $77d7: $92
    and d                                         ; $77d8: $a2
    cp [hl]                                       ; $77d9: $be

Jump_062_77da:
    ld b, h                                       ; $77da: $44
    cp a                                          ; $77db: $bf
    db $e3                                        ; $77dc: $e3
    db $fd                                        ; $77dd: $fd
    ld [bc], a                                    ; $77de: $02
    dec de                                        ; $77df: $1b
    sub c                                         ; $77e0: $91
    db $eb                                        ; $77e1: $eb
    ld b, b                                       ; $77e2: $40
    ret nc                                        ; $77e3: $d0

    cp c                                          ; $77e4: $b9
    rra                                           ; $77e5: $1f
    dec c                                         ; $77e6: $0d
    dec l                                         ; $77e7: $2d
    cp e                                          ; $77e8: $bb
    ld d, b                                       ; $77e9: $50
    adc d                                         ; $77ea: $8a
    ld a, e                                       ; $77eb: $7b
    ld d, l                                       ; $77ec: $55
    sbc $e5                                       ; $77ed: $de $e5
    sbc a                                         ; $77ef: $9f
    ld hl, $efc8                                  ; $77f0: $21 $c8 $ef
    sbc $35                                       ; $77f3: $de $35
    add hl, de                                    ; $77f5: $19
    ld a, [hl-]                                   ; $77f6: $3a
    ld a, $5f                                     ; $77f7: $3e $5f
    or b                                          ; $77f9: $b0

Call_062_77fa:
    ld e, $87                                     ; $77fa: $1e $87
    cp d                                          ; $77fc: $ba
    cp e                                          ; $77fd: $bb
    ld a, [bc]                                    ; $77fe: $0a
    and d                                         ; $77ff: $a2
    db $f4                                        ; $7800: $f4
    ld c, h                                       ; $7801: $4c
    dec bc                                        ; $7802: $0b
    ld d, c                                       ; $7803: $51
    rst $28                                       ; $7804: $ef
    ld b, a                                       ; $7805: $47
    dec sp                                        ; $7806: $3b
    pop af                                        ; $7807: $f1
    sub h                                         ; $7808: $94
    sub e                                         ; $7809: $93
    ld c, a                                       ; $780a: $4f
    cp b                                          ; $780b: $b8
    ld e, a                                       ; $780c: $5f
    dec de                                        ; $780d: $1b
    sub c                                         ; $780e: $91
    adc e                                         ; $780f: $8b
    ld a, [hl]                                    ; $7810: $7e
    add $4e                                       ; $7811: $c6 $4e
    jr z, @-$1b                                   ; $7813: $28 $e3

    inc c                                         ; $7815: $0c
    dec e                                         ; $7816: $1d
    sbc a                                         ; $7817: $9f
    cpl                                           ; $7818: $2f
    ld e, b                                       ; $7819: $58
    dec l                                         ; $781a: $2d
    db $ec                                        ; $781b: $ec
    db $e4                                        ; $781c: $e4
    rrca                                          ; $781d: $0f
    ld [c], a                                     ; $781e: $e2
    inc e                                         ; $781f: $1c
    ld a, [hl-]                                   ; $7820: $3a
    rla                                           ; $7821: $17
    add l                                         ; $7822: $85
    xor h                                         ; $7823: $ac
    pop af                                        ; $7824: $f1
    rla                                           ; $7825: $17
    db $e4                                        ; $7826: $e4
    push bc                                       ; $7827: $c5
    add $99                                       ; $7828: $c6 $99
    and a                                         ; $782a: $a7
    sub e                                         ; $782b: $93
    xor $38                                       ; $782c: $ee $38
    ld e, l                                       ; $782e: $5d
    ret nc                                        ; $782f: $d0

    add hl, sp                                    ; $7830: $39
    sra d                                         ; $7831: $cb $2a
    cp e                                          ; $7833: $bb
    add l                                         ; $7834: $85
    ld e, a                                       ; $7835: $5f
    ld [$02fd], a                                 ; $7836: $ea $fd $02
    dec de                                        ; $7839: $1b
    sub c                                         ; $783a: $91
    ld b, e                                       ; $783b: $43
    ld c, [hl]                                    ; $783c: $4e
    or b                                          ; $783d: $b0
    ld b, b                                       ; $783e: $40
    xor l                                         ; $783f: $ad
    ld a, [hl]                                    ; $7840: $7e
    ld b, d                                       ; $7841: $42
    and d                                         ; $7842: $a2
    di                                            ; $7843: $f3
    ld a, [hl]                                    ; $7844: $7e
    ld bc, $911b                                  ; $7845: $01 $1b $91
    add e                                         ; $7848: $83
    ld d, b                                       ; $7849: $50
    cp e                                          ; $784a: $bb
    ld b, [hl]                                    ; $784b: $46
    add hl, hl                                    ; $784c: $29
    and e                                         ; $784d: $a3
    db $eb                                        ; $784e: $eb
    ld h, b                                       ; $784f: $60
    ld d, c                                       ; $7850: $51
    ret z                                         ; $7851: $c8

    ld c, d                                       ; $7852: $4a
    dec l                                         ; $7853: $2d
    ld l, e                                       ; $7854: $6b
    dec [hl]                                      ; $7855: $35
    rst $30                                       ; $7856: $f7
    ld a, c                                       ; $7857: $79
    ld hl, $f276                                  ; $7858: $21 $76 $f2
    rst $28                                       ; $785b: $ef
    sbc $41                                       ; $785c: $de $41
    db $10                                        ; $785e: $10
    xor b                                         ; $785f: $a8
    db $ec                                        ; $7860: $ec
    inc b                                         ; $7861: $04
    di                                            ; $7862: $f3
    and d                                         ; $7863: $a2
    sub b                                         ; $7864: $90
    dec sp                                        ; $7865: $3b
    ld hl, sp+$0b                                 ; $7866: $f8 $0b
    adc h                                         ; $7868: $8c
    and c                                         ; $7869: $a1
    rst $28                                       ; $786a: $ef
    di                                            ; $786b: $f3
    ld a, [hl]                                    ; $786c: $7e
    call nc, $f621                                ; $786d: $d4 $21 $f6
    ld a, [hl]                                    ; $7870: $7e
    rst $28                                       ; $7871: $ef
    ld e, [hl]                                    ; $7872: $5e
    dec bc                                        ; $7873: $0b
    adc b                                         ; $7874: $88
    ld b, e                                       ; $7875: $43
    sub c                                         ; $7876: $91
    ldh a, [$38]                                  ; $7877: $f0 $38
    rst $28                                       ; $7879: $ef
    rla                                           ; $787a: $17
    dec de                                        ; $787b: $1b
    sub c                                         ; $787c: $91
    ld c, e                                       ; $787d: $4b
    dec l                                         ; $787e: $2d
    ret z                                         ; $787f: $c8

    adc e                                         ; $7880: $8b
    ld b, d                                       ; $7881: $42

jr_062_7882:
    xor $77                                       ; $7882: $ee $77
    ld c, h                                       ; $7884: $4c
    jr z, jr_062_7882                             ; $7885: $28 $fb

    cp h                                          ; $7887: $bc
    jr z, jr_062_78ee                             ; $7888: $28 $64

    rst $38                                       ; $788a: $ff
    add sp, $55                                   ; $788b: $e8 $55
    ldh [$91], a                                  ; $788d: $e0 $91
    ld a, d                                       ; $788f: $7a
    dec e                                         ; $7890: $1d
    ld [$f432], sp                                ; $7891: $08 $32 $f4
    ld e, c                                       ; $7894: $59
    sub $70                                       ; $7895: $d6 $70
    adc l                                         ; $7897: $8d
    add hl, hl                                    ; $7898: $29
    ld e, c                                       ; $7899: $59
    call c, Call_062_57ab                         ; $789a: $dc $ab $57
    ld a, [hl]                                    ; $789d: $7e
    cp h                                          ; $789e: $bc
    add $2f                                       ; $789f: $c6 $2f
    or l                                          ; $78a1: $b5
    rst $38                                       ; $78a2: $ff
    or d                                          ; $78a3: $b2
    ld d, b                                       ; $78a4: $50
    ld d, $81                                     ; $78a5: $16 $81
    ld a, [de]                                    ; $78a7: $1a

jr_062_78a8:
    rst $38                                       ; $78a8: $ff
    ld h, d                                       ; $78a9: $62
    ld e, $43                                     ; $78aa: $1e $43
    rst $18                                       ; $78ac: $df
    rst $20                                       ; $78ad: $e7
    ld b, l                                       ; $78ae: $45
    cp a                                          ; $78af: $bf
    and e                                         ; $78b0: $a3
    ld d, a                                       ; $78b1: $57
    rst $38                                       ; $78b2: $ff
    di                                            ; $78b3: $f3
    ld e, b                                       ; $78b4: $58
    xor $17                                       ; $78b5: $ee $17
    dec de                                        ; $78b7: $1b
    sub c                                         ; $78b8: $91
    or $d0                                        ; $78b9: $f6 $d0
    sub c                                         ; $78bb: $91
    ld d, a                                       ; $78bc: $57
    sbc e                                         ; $78bd: $9b
    ld a, e                                       ; $78be: $7b
    ld e, h                                       ; $78bf: $5c
    call z, $d1fb                                 ; $78c0: $cc $fb $d1
    ld a, $af                                     ; $78c3: $3e $af
    sub c                                         ; $78c5: $91
    inc d                                         ; $78c6: $14
    ld b, c                                       ; $78c7: $41
    xor a                                         ; $78c8: $af
    push de                                       ; $78c9: $d5
    ld e, h                                       ; $78ca: $5c
    and e                                         ; $78cb: $a3
    reti                                          ; $78cc: $d9


    call Call_000_3cfb                            ; $78cd: $cd $fb $3c
    ld d, d                                       ; $78d0: $52
    sub a                                         ; $78d1: $97
    ld d, l                                       ; $78d2: $55
    ld l, d                                       ; $78d3: $6a
    ld d, $a3                                     ; $78d4: $16 $a3
    rla                                           ; $78d6: $17
    add l                                         ; $78d7: $85
    call c, Call_000_35e7                         ; $78d8: $dc $e7 $35
    ld a, [hl-]                                   ; $78db: $3a
    call nz, $17de                                ; $78dc: $c4 $de $17
    and [hl]                                      ; $78df: $a6
    ld [$4ef2], sp                                ; $78e0: $08 $f2 $4e
    add hl, sp                                    ; $78e3: $39
    ld a, l                                       ; $78e4: $7d
    push hl                                       ; $78e5: $e5
    ld c, e                                       ; $78e6: $4b
    pop af                                        ; $78e7: $f1
    db $fd                                        ; $78e8: $fd
    ld [bc], a                                    ; $78e9: $02
    dec de                                        ; $78ea: $1b
    sub c                                         ; $78eb: $91
    xor e                                         ; $78ec: $ab
    adc l                                         ; $78ed: $8d

jr_062_78ee:
    ld l, b                                       ; $78ee: $68
    db $f4                                        ; $78ef: $f4
    sbc [hl]                                      ; $78f0: $9e
    cpl                                           ; $78f1: $2f
    push bc                                       ; $78f2: $c5
    dec sp                                        ; $78f3: $3b
    xor b                                         ; $78f4: $a8
    sub a                                         ; $78f5: $97
    jp nc, Jump_000_1e9d                          ; $78f6: $d2 $9d $1e

    cp $59                                        ; $78f9: $fe $59
    add [hl]                                      ; $78fb: $86
    ld sp, hl                                     ; $78fc: $f9
    adc e                                         ; $78fd: $8b
    rst $10                                       ; $78fe: $d7
    cp a                                          ; $78ff: $bf
    and b                                         ; $7900: $a0
    pop de                                        ; $7901: $d1
    ld l, e                                       ; $7902: $6b
    dec [hl]                                      ; $7903: $35
    ld h, a                                       ; $7904: $67

Call_062_7905:
    ld e, c                                       ; $7905: $59
    push hl                                       ; $7906: $e5
    db $fc                                        ; $7907: $fc
    add d                                         ; $7908: $82
    adc e                                         ; $7909: $8b
    db $f4                                        ; $790a: $f4
    adc [hl]                                      ; $790b: $8e
    ei                                            ; $790c: $fb
    pop de                                        ; $790d: $d1
    ld a, [de]                                    ; $790e: $1a
    rra                                           ; $790f: $1f
    ld e, l                                       ; $7910: $5d
    jr z, jr_062_78a8                             ; $7911: $28 $95

    sbc l                                         ; $7913: $9d
    rst $30                                       ; $7914: $f7
    dec bc                                        ; $7915: $0b
    dec de                                        ; $7916: $1b
    sub c                                         ; $7917: $91
    adc e                                         ; $7918: $8b
    ld b, d                                       ; $7919: $42
    ld a, [c]                                     ; $791a: $f2
    rst $28                                       ; $791b: $ef
    adc $45                                       ; $791c: $ce $45
    ld hl, $fcf7                                  ; $791e: $21 $f7 $fc

Jump_062_7921:
    ld [bc], a                                    ; $7921: $02
    jp z, $2ca9                                   ; $7922: $ca $a9 $2c

    rst $00                                       ; $7925: $c7
    ld h, c                                       ; $7926: $61
    ld d, l                                       ; $7927: $55
    cp a                                          ; $7928: $bf
    or c                                          ; $7929: $b1
    ld b, [hl]                                    ; $792a: $46
    rst $38                                       ; $792b: $ff
    add d                                         ; $792c: $82
    cp h                                          ; $792d: $bc
    add e                                         ; $792e: $83
    ld a, d                                       ; $792f: $7a
    add hl, hl                                    ; $7930: $29
    db $dd                                        ; $7931: $dd
    jp hl                                         ; $7932: $e9


    add l                                         ; $7933: $85
    or d                                          ; $7934: $b2
    daa                                           ; $7935: $27
    ld h, b                                       ; $7936: $60
    push hl                                       ; $7937: $e5
    cpl                                           ; $7938: $2f
    add sp, -$24                                  ; $7939: $e8 $dc
    adc a                                         ; $793b: $8f
    ld b, [hl]                                    ; $793c: $46
    ld a, [$dc79]                                 ; $793d: $fa $79 $dc
    and c                                         ; $7940: $a1
    sub b                                         ; $7941: $90
    and c                                         ; $7942: $a1
    and e                                         ; $7943: $a3
    ld a, e                                       ; $7944: $7b
    ld [hl], l                                    ; $7945: $75
    db $ed                                        ; $7946: $ed
    ld hl, $dcb6                                  ; $7947: $21 $b6 $dc
    cpl                                           ; $794a: $2f
    dec de                                        ; $794b: $1b
    sub c                                         ; $794c: $91
    dec hl                                        ; $794d: $2b
    ld e, d                                       ; $794e: $5a
    ld de, $3a08                                  ; $794f: $11 $08 $3a
    rst $30                                       ; $7952: $f7
    and e                                         ; $7953: $a3
    ld [hl], l                                    ; $7954: $75
    cp l                                          ; $7955: $bd
    xor d                                         ; $7956: $aa
    ldh a, [$98]                                  ; $7957: $f0 $98
    sbc l                                         ; $7959: $9d
    and $fb                                       ; $795a: $e6 $fb
    dec b                                         ; $795c: $05
    dec de                                        ; $795d: $1b
    sub c                                         ; $795e: $91
    dec bc                                        ; $795f: $0b
    ld d, l                                       ; $7960: $55
    ld l, l                                       ; $7961: $6d
    add hl, sp                                    ; $7962: $39
    ld a, c                                       ; $7963: $79
    jr nc, jr_062_7971                            ; $7964: $30 $0b

    ld c, c                                       ; $7966: $49
    and a                                         ; $7967: $a7
    and [hl]                                      ; $7968: $a6
    add b                                         ; $7969: $80
    inc d                                         ; $796a: $14
    rst $18                                       ; $796b: $df
    ld l, e                                       ; $796c: $6b
    and a                                         ; $796d: $a7
    rst $38                                       ; $796e: $ff
    sbc $da                                       ; $796f: $de $da

jr_062_7971:
    ld h, e                                       ; $7971: $63
    call c, $55e7                                 ; $7972: $dc $e7 $55
    add [hl]                                      ; $7975: $86
    adc b                                         ; $7976: $88
    dec a                                         ; $7977: $3d
    dec bc                                        ; $7978: $0b
    ld c, c                                       ; $7979: $49
    and a                                         ; $797a: $a7
    and [hl]                                      ; $797b: $a6
    add b                                         ; $797c: $80
    inc d                                         ; $797d: $14
    and a                                         ; $797e: $a7
    xor e                                         ; $797f: $ab
    inc sp                                        ; $7980: $33
    cp $ec                                        ; $7981: $fe $ec
    ld e, h                                       ; $7983: $5c
    adc b                                         ; $7984: $88
    sbc l                                         ; $7985: $9d
    inc hl                                        ; $7986: $23
    db $dd                                        ; $7987: $dd
    cp l                                          ; $7988: $bd
    ld b, e                                       ; $7989: $43
    inc e                                         ; $798a: $1c
    or d                                          ; $798b: $b2
    sub c                                         ; $798c: $91
    ret nz                                        ; $798d: $c0

    ld e, a                                       ; $798e: $5f
    ret nz                                        ; $798f: $c0

    ld [hl], d                                    ; $7990: $72
    cp a                                          ; $7991: $bf
    dec de                                        ; $7992: $1b
    sub c                                         ; $7993: $91
    dec bc                                        ; $7994: $0b
    push bc                                       ; $7995: $c5
    sub l                                         ; $7996: $95
    dec a                                         ; $7997: $3d
    adc $d0                                       ; $7998: $ce $d0
    pop af                                        ; $799a: $f1
    ld sp, hl                                     ; $799b: $f9
    add d                                         ; $799c: $82
    ld b, e                                       ; $799d: $43

jr_062_799e:
    rst $20                                       ; $799e: $e7
    inc h                                         ; $799f: $24
    inc d                                         ; $79a0: $14
    ld c, e                                       ; $79a1: $4b
    dec b                                         ; $79a2: $05
    ld b, c                                       ; $79a3: $41
    adc a                                         ; $79a4: $8f
    db $fc                                        ; $79a5: $fc
    cp c                                          ; $79a6: $b9
    db $10                                        ; $79a7: $10
    dec sp                                        ; $79a8: $3b
    cp e                                          ; $79a9: $bb
    ld h, e                                       ; $79aa: $63
    di                                            ; $79ab: $f3
    call z, $ccbb                                 ; $79ac: $cc $bb $cc
    ld c, h                                       ; $79af: $4c
    ld b, d                                       ; $79b0: $42
    inc d                                         ; $79b1: $14
    ld a, [hl-]                                   ; $79b2: $3a
    ld a, [hl]                                    ; $79b3: $7e
    add hl, hl                                    ; $79b4: $29
    jp hl                                         ; $79b5: $e9


    add $fd                                       ; $79b6: $c6 $fd
    ld [bc], a                                    ; $79b8: $02
    dec de                                        ; $79b9: $1b
    sub c                                         ; $79ba: $91
    dec bc                                        ; $79bb: $0b
    ld a, e                                       ; $79bc: $7b
    ld d, l                                       ; $79bd: $55
    and $85                                       ; $79be: $e6 $85
    ret c                                         ; $79c0: $d8

    ld c, c                                       ; $79c1: $49
    add [hl]                                      ; $79c2: $86
    ret c                                         ; $79c3: $d8

    jr c, jr_062_799e                             ; $79c4: $38 $d8

    pop bc                                        ; $79c6: $c1
    ld e, a                                       ; $79c7: $5f
    and b                                         ; $79c8: $a0
    xor d                                         ; $79c9: $aa
    ld e, l                                       ; $79ca: $5d
    ld d, $e2                                     ; $79cb: $16 $e2
    or l                                          ; $79cd: $b5
    cp c                                          ; $79ce: $b9
    push af                                       ; $79cf: $f5
    sub e                                         ; $79d0: $93

Jump_062_79d1:
    db $fd                                        ; $79d1: $fd
    ld e, b                                       ; $79d2: $58
    ret c                                         ; $79d3: $d8

    ld a, h                                       ; $79d4: $7c
    cp a                                          ; $79d5: $bf
    dec de                                        ; $79d6: $1b
    sub c                                         ; $79d7: $91
    ld [hl], $2a                                  ; $79d8: $36 $2a
    ld a, d                                       ; $79da: $7a
    adc [hl]                                      ; $79db: $8e
    ret c                                         ; $79dc: $d8

    cp c                                          ; $79dd: $b9
    rst $08                                       ; $79de: $cf
    inc hl                                        ; $79df: $23
    ld a, a                                       ; $79e0: $7f
    db $ec                                        ; $79e1: $ec
    ld b, l                                       ; $79e2: $45
    jp hl                                         ; $79e3: $e9


    ld e, [hl]                                    ; $79e4: $5e
    ld a, c                                       ; $79e5: $79
    and $1d                                       ; $79e6: $e6 $1d
    call nc, $e94b                                ; $79e8: $d4 $4b $e9
    adc $c6                                       ; $79eb: $ce $c6
    ld c, a                                       ; $79ed: $4f
    ld e, c                                       ; $79ee: $59
    sub h                                         ; $79ef: $94
    ld a, a                                       ; $79f0: $7f
    sub [hl]                                      ; $79f1: $96
    ld [hl], l                                    ; $79f2: $75
    ld l, d                                       ; $79f3: $6a
    and e                                         ; $79f4: $a3
    xor d                                         ; $79f5: $aa
    dec a                                         ; $79f6: $3d
    ld e, a                                       ; $79f7: $5f
    jr @-$76                                      ; $79f8: $18 $88

    add [hl]                                      ; $79fa: $86

jr_062_79fb:
    db $f4                                        ; $79fb: $f4
    db $fd                                        ; $79fc: $fd
    ld [bc], a                                    ; $79fd: $02
    dec de                                        ; $79fe: $1b
    sub c                                         ; $79ff: $91
    dec hl                                        ; $7a00: $2b
    ld hl, $7388                                  ; $7a01: $21 $88 $73
    jr nc, jr_062_79fb                            ; $7a04: $30 $f5

    sbc a                                         ; $7a06: $9f
    sub [hl]                                      ; $7a07: $96
    ld h, l                                       ; $7a08: $65
    ld d, c                                       ; $7a09: $51
    ret z                                         ; $7a0a: $c8

    add hl, bc                                    ; $7a0b: $09
    call nc, $acea                                ; $7a0c: $d4 $ea $ac
    ld c, e                                       ; $7a0f: $4b
    inc sp                                        ; $7a10: $33
    ld b, e                                       ; $7a11: $43
    ld hl, $ce8d                                  ; $7a12: $21 $8d $ce
    ei                                            ; $7a15: $fb
    dec b                                         ; $7a16: $05
    dec de                                        ; $7a17: $1b
    sub c                                         ; $7a18: $91
    di                                            ; $7a19: $f3
    sbc l                                         ; $7a1a: $9d
    call nc, $31e7                                ; $7a1b: $d4 $e7 $31
    adc a                                         ; $7a1e: $8f
    inc sp                                        ; $7a1f: $33
    ld [hl], h                                    ; $7a20: $74
    ld a, h                                       ; $7a21: $7c
    cp [hl]                                       ; $7a22: $be
    ldh [$d0], a                                  ; $7a23: $e0 $d0
    cp c                                          ; $7a25: $b9
    ld b, [hl]                                    ; $7a26: $46
    ld [hl], a                                    ; $7a27: $77
    cp h                                          ; $7a28: $bc
    adc b                                         ; $7a29: $88
    ld [hl+], a                                   ; $7a2a: $22
    and l                                         ; $7a2b: $a5
    halt                                          ; $7a2c: $76
    di                                            ; $7a2d: $f3
    ld a, [hl]                                    ; $7a2e: $7e
    or h                                          ; $7a2f: $b4
    add e                                         ; $7a30: $83
    ld a, d                                       ; $7a31: $7a
    add hl, hl                                    ; $7a32: $29
    db $dd                                        ; $7a33: $dd
    add hl, hl                                    ; $7a34: $29
    ld e, [hl]                                    ; $7a35: $5e
    xor e                                         ; $7a36: $ab
    cp c                                          ; $7a37: $b9
    sub d                                         ; $7a38: $92
    cp d                                          ; $7a39: $ba
    ldh [$7e], a                                  ; $7a3a: $e0 $7e
    or h                                          ; $7a3c: $b4
    ld a, [bc]                                    ; $7a3d: $0a
    ld [c], a                                     ; $7a3e: $e2
    ld d, l                                       ; $7a3f: $55
    sub l                                         ; $7a40: $95
    db $10                                        ; $7a41: $10
    or c                                          ; $7a42: $b1
    di                                            ; $7a43: $f3
    ld a, [hl]                                    ; $7a44: $7e
    ld bc, $911b                                  ; $7a45: $01 $1b $91
    dec bc                                        ; $7a48: $0b
    ld d, l                                       ; $7a49: $55
    ld l, l                                       ; $7a4a: $6d
    add hl, sp                                    ; $7a4b: $39
    ld a, c                                       ; $7a4c: $79
    or b                                          ; $7a4d: $b0
    rst $20                                       ; $7a4e: $e7
    rla                                           ; $7a4f: $17
    xor b                                         ; $7a50: $a8
    jp z, $f48b                                   ; $7a51: $ca $8b $f4

    jp nc, $af7d                                  ; $7a54: $d2 $7d $af

    call $88b2                                    ; $7a57: $cd $b2 $88
    sbc d                                         ; $7a5a: $9a
    sub l                                         ; $7a5b: $95
    dec a                                         ; $7a5c: $3d
    add [hl]                                      ; $7a5d: $86
    cp [hl]                                       ; $7a5e: $be
    rst $08                                       ; $7a5f: $cf
    db $e3                                        ; $7a60: $e3
    ret nc                                        ; $7a61: $d0

    sub l                                         ; $7a62: $95
    rst $30                                       ; $7a63: $f7
    ld e, b                                       ; $7a64: $58
    ld b, b                                       ; $7a65: $40
    adc d                                         ; $7a66: $8a
    ld h, l                                       ; $7a67: $65
    adc a                                         ; $7a68: $8f
    ld [hl], c                                    ; $7a69: $71
    rst $20                                       ; $7a6a: $e7
    jp hl                                         ; $7a6b: $e9


    ld b, l                                       ; $7a6c: $45
    ld c, a                                       ; $7a6d: $4f

jr_062_7a6e:
    ld c, l                                       ; $7a6e: $4d
    db $fd                                        ; $7a6f: $fd
    ld d, d                                       ; $7a70: $52
    ld a, h                                       ; $7a71: $7c
    cp a                                          ; $7a72: $bf
    dec de                                        ; $7a73: $1b
    sub c                                         ; $7a74: $91
    di                                            ; $7a75: $f3
    sbc l                                         ; $7a76: $9d
    call nc, $31e7                                ; $7a77: $d4 $e7 $31
    cpl                                           ; $7a7a: $2f
    ld a, [bc]                                    ; $7a7b: $0a

jr_062_7a7c:
    add hl, de                                    ; $7a7c: $19
    ld a, l                                       ; $7a7d: $7d
    ld h, [hl]                                    ; $7a7e: $66
    rst $20                                       ; $7a7f: $e7
    jr jr_062_7a7c                                ; $7a80: $18 $fa

    adc [hl]                                      ; $7a82: $8e
    cp h                                          ; $7a83: $bc
    add sp, $0b                                   ; $7a84: $e8 $0b
    rst $38                                       ; $7a86: $ff
    jp z, $9550                                   ; $7a87: $ca $50 $95

    ld d, a                                       ; $7a8a: $57
    push de                                       ; $7a8b: $d5
    ld l, a                                       ; $7a8c: $6f
    ld [$7148], sp                                ; $7a8d: $08 $48 $71
    ld l, $94                                     ; $7a90: $2e $94
    and c                                         ; $7a92: $a1
    db $d3                                        ; $7a93: $d3
    ld [hl], l                                    ; $7a94: $75
    inc c                                         ; $7a95: $0c
    sbc l                                         ; $7a96: $9d
    inc c                                         ; $7a97: $0c
    dec e                                         ; $7a98: $1d
    ld l, e                                       ; $7a99: $6b
    ld h, l                                       ; $7a9a: $65
    and e                                         ; $7a9b: $a3
    di                                            ; $7a9c: $f3

jr_062_7a9d:
    ret z                                         ; $7a9d: $c8

    ei                                            ; $7a9e: $fb
    dec b                                         ; $7a9f: $05
    dec de                                        ; $7aa0: $1b
    sub c                                         ; $7aa1: $91
    db $eb                                        ; $7aa2: $eb
    jr z, jr_062_7a6e                             ; $7aa3: $28 $c9

    adc e                                         ; $7aa5: $8b
    adc l                                         ; $7aa6: $8d
    db $db                                        ; $7aa7: $db
    pop bc                                        ; $7aa8: $c1
    ei                                            ; $7aa9: $fb
    ld [$751d], a                                 ; $7aaa: $ea $1d $75
    ldh a, [rNR22]                                ; $7aad: $f0 $17
    xor b                                         ; $7aaf: $a8
    ld l, d                                       ; $7ab0: $6a
    ld d, a                                       ; $7ab1: $57
    db $eb                                        ; $7ab2: $eb
    add d                                         ; $7ab3: $82
    push de                                       ; $7ab4: $d5
    add d                                         ; $7ab5: $82
    jr nz, jr_062_7a9d                            ; $7ab6: $20 $e5

    add sp, -$4b                                  ; $7ab8: $e8 $b5
    ld [hl-], a                                   ; $7aba: $32
    sub h                                         ; $7abb: $94
    db $fc                                        ; $7abc: $fc
    rst $08                                       ; $7abd: $cf
    ld h, e                                       ; $7abe: $63
    sbc $91                                       ; $7abf: $de $91
    db $ed                                        ; $7ac1: $ed
    ld d, [hl]                                    ; $7ac2: $56
    push de                                       ; $7ac3: $d5
    inc c                                         ; $7ac4: $0c
    adc a                                         ; $7ac5: $8f
    push hl                                       ; $7ac6: $e5
    ld a, [hl]                                    ; $7ac7: $7e
    ld bc, $911b                                  ; $7ac8: $01 $1b $91
    di                                            ; $7acb: $f3
    sbc l                                         ; $7acc: $9d
    call nc, $f787                                ; $7acd: $d4 $87 $f7
    db $fc                                        ; $7ad0: $fc
    ld [bc], a                                    ; $7ad1: $02
    ld d, l                                       ; $7ad2: $55
    adc l                                         ; $7ad3: $8d

jr_062_7ad4:
    dec e                                         ; $7ad4: $1d

jr_062_7ad5:
    jp nc, $ca0c                                  ; $7ad5: $d2 $0c $ca

    ld a, c                                       ; $7ad8: $79
    cp a                                          ; $7ad9: $bf
    dec de                                        ; $7ada: $1b
    sub c                                         ; $7adb: $91
    halt                                          ; $7adc: $76
    xor e                                         ; $7add: $ab
    ld a, [hl-]                                   ; $7ade: $3a
    ld [hl], h                                    ; $7adf: $74
    ld l, $b4                                     ; $7ae0: $2e $b4
    and d                                         ; $7ae2: $a2
    cpl                                           ; $7ae3: $2f
    ret z                                         ; $7ae4: $c8

    db $eb                                        ; $7ae5: $eb
    cp d                                          ; $7ae6: $ba
    db $fc                                        ; $7ae7: $fc
    xor d                                         ; $7ae8: $aa
    ld b, d                                       ; $7ae9: $42
    bit 7, h                                      ; $7aea: $cb $7c
    cp a                                          ; $7aec: $bf
    dec de                                        ; $7aed: $1b
    sub c                                         ; $7aee: $91
    ld c, e                                       ; $7aef: $4b
    dec l                                         ; $7af0: $2d
    ret z                                         ; $7af1: $c8

    xor e                                         ; $7af2: $ab
    ld e, a                                       ; $7af3: $5f
    or b                                          ; $7af4: $b0
    ld b, d                                       ; $7af5: $42
    ld [hl], c                                    ; $7af6: $71
    ld l, $94                                     ; $7af7: $2e $94
    ld b, l                                       ; $7af9: $45
    ld hl, $cfa3                                  ; $7afa: $21 $a3 $cf
    db $ec                                        ; $7afd: $ec
    inc e                                         ; $7afe: $1c
    ld b, e                                       ; $7aff: $43
    rst $18                                       ; $7b00: $df
    sub c                                         ; $7b01: $91
    rst $20                                       ; $7b02: $e7
    ld b, l                                       ; $7b03: $45
    or l                                          ; $7b04: $b5
    ld d, e                                       ; $7b05: $53
    ld [hl], e                                    ; $7b06: $73
    ld d, c                                       ; $7b07: $51
    ld a, [$4061]                                 ; $7b08: $fa $61 $40
    res 2, c                                      ; $7b0b: $cb $91
    rst $30                                       ; $7b0d: $f7
    dec bc                                        ; $7b0e: $0b
    dec de                                        ; $7b0f: $1b
    sub c                                         ; $7b10: $91
    ld b, e                                       ; $7b11: $43
    ld e, a                                       ; $7b12: $5f
    or b                                          ; $7b13: $b0
    ld b, d                                       ; $7b14: $42
    ld [hl], c                                    ; $7b15: $71
    ld l, $ca                                     ; $7b16: $2e $ca
    cp a                                          ; $7b18: $bf
    ret nc                                        ; $7b19: $d0

    sub c                                         ; $7b1a: $91
    ld bc, $432d                                  ; $7b1b: $01 $2d $43
    rst $20                                       ; $7b1e: $e7
    ld b, d                                       ; $7b1f: $42
    db $ec                                        ; $7b20: $ec
    adc h                                         ; $7b21: $8c
    cp a                                          ; $7b22: $bf
    jr nz, jr_062_7ad4                            ; $7b23: $20 $af

    or [hl]                                       ; $7b25: $b6
    sbc d                                         ; $7b26: $9a
    rst $08                                       ; $7b27: $cf
    cpl                                           ; $7b28: $2f
    and b                                         ; $7b29: $a0
    sbc h                                         ; $7b2a: $9c
    sub [hl]                                      ; $7b2b: $96
    ld e, l                                       ; $7b2c: $5d
    ldh a, [$3b]                                  ; $7b2d: $f0 $3b

Call_062_7b2f:
    ld d, c                                       ; $7b2f: $51

Jump_062_7b30:
    ld a, [c]                                     ; $7b30: $f2
    rst $10                                       ; $7b31: $d7
    pop bc                                        ; $7b32: $c1
    inc l                                         ; $7b33: $2c
    ld d, e                                       ; $7b34: $53
    ld b, c                                       ; $7b35: $41
    sub h                                         ; $7b36: $94
    sbc [hl]                                      ; $7b37: $9e
    ld l, c                                       ; $7b38: $69
    ld hl, $fbea                                  ; $7b39: $21 $ea $fb
    dec b                                         ; $7b3c: $05
    dec de                                        ; $7b3d: $1b
    sub c                                         ; $7b3e: $91
    add e                                         ; $7b3f: $83
    ld a, d                                       ; $7b40: $7a
    add hl, hl                                    ; $7b41: $29
    db $dd                                        ; $7b42: $dd
    ld l, c                                       ; $7b43: $69
    ld d, l                                       ; $7b44: $55
    ld e, e                                       ; $7b45: $5b
    ld c, [hl]                                    ; $7b46: $4e
    ld e, [hl]                                    ; $7b47: $5e
    jr z, jr_062_7ad5                             ; $7b48: $28 $8b

    ld b, d                                       ; $7b4a: $42
    ld b, [hl]                                    ; $7b4b: $46
    sbc a                                         ; $7b4c: $9f
    reti                                          ; $7b4d: $d9


    add hl, sp                                    ; $7b4e: $39
    add [hl]                                      ; $7b4f: $86
    cp [hl]                                       ; $7b50: $be
    rst $20                                       ; $7b51: $e7
    ld c, e                                       ; $7b52: $4b
    pop af                                        ; $7b53: $f1
    ld a, [de]                                    ; $7b54: $1a
    call nc, $a4e2                                ; $7b55: $d4 $e2 $a4
    dec c                                         ; $7b58: $0d
    ld b, h                                       ; $7b59: $44
    ld [hl], l                                    ; $7b5a: $75
    cp l                                          ; $7b5b: $bd
    ld b, d                                       ; $7b5c: $42
    db $ec                                        ; $7b5d: $ec
    or e                                          ; $7b5e: $b3
    halt                                          ; $7b5f: $76
    db $e4                                        ; $7b60: $e4
    ld hl, $b3f5                                  ; $7b61: $21 $f5 $b3
    ld d, l                                       ; $7b64: $55
    dec [hl]                                      ; $7b65: $35
    ld h, d                                       ; $7b66: $62
    db $f4                                        ; $7b67: $f4
    ld c, $ea                                     ; $7b68: $0e $ea
    and l                                         ; $7b6a: $a5
    ld [hl], h                                    ; $7b6b: $74
    and a                                         ; $7b6c: $a7
    adc a                                         ; $7b6d: $8f
    cp h                                          ; $7b6e: $bc
    ld e, a                                       ; $7b6f: $5f
    dec de                                        ; $7b70: $1b
    sub c                                         ; $7b71: $91
    dec hl                                        ; $7b72: $2b
    ld e, d                                       ; $7b73: $5a
    ld de, $3a08                                  ; $7b74: $11 $08 $3a
    rst $30                                       ; $7b77: $f7
    and e                                         ; $7b78: $a3
    ld d, l                                       ; $7b79: $55
    ld b, $51                                     ; $7b7a: $06 $51
    adc l                                         ; $7b7c: $8d
    ldh a, [$34]                                  ; $7b7d: $f0 $34
    inc l                                         ; $7b7f: $2c
    rst $30                                       ; $7b80: $f7
    dec bc                                        ; $7b81: $0b
    dec de                                        ; $7b82: $1b
    sub c                                         ; $7b83: $91
    ld [hl], $cb                                  ; $7b84: $36 $cb
    ld a, [hl]                                    ; $7b86: $7e
    rst $28                                       ; $7b87: $ef
    adc $c7                                       ; $7b88: $ce $c7
    sub l                                         ; $7b8a: $95
    rst $10                                       ; $7b8b: $d7
    ld [hl], b                                    ; $7b8c: $70
    ld d, d                                       ; $7b8d: $52
    rra                                           ; $7b8e: $1f
    or $38                                        ; $7b8f: $f6 $38
    ld b, e                                       ; $7b91: $43
    rst $00                                       ; $7b92: $c7
    rst $20                                       ; $7b93: $e7
    dec bc                                        ; $7b94: $0b
    xor [hl]                                      ; $7b95: $ae

Call_062_7b96:
    ld e, b                                       ; $7b96: $58
    call nz, $18cf                                ; $7b97: $c4 $cf $18
    ret nc                                        ; $7b9a: $d0

    add hl, hl                                    ; $7b9b: $29
    cp [hl]                                       ; $7b9c: $be
    ld [hl], a                                    ; $7b9d: $77
    ret nc                                        ; $7b9e: $d0

    ret c                                         ; $7b9f: $d8

    db $fd                                        ; $7ba0: $fd
    db $ec                                        ; $7ba1: $ec
    ld b, a                                       ; $7ba2: $47
    cp e                                          ; $7ba3: $bb
    inc [hl]                                      ; $7ba4: $34
    ld c, b                                       ; $7ba5: $48
    reti                                          ; $7ba6: $d9


    ld a, c                                       ; $7ba7: $79
    ret                                           ; $7ba8: $c9


    and h                                         ; $7ba9: $a4

Jump_062_7baa:
    sbc [hl]                                      ; $7baa: $9e
    ld [hl], l                                    ; $7bab: $75
    ld h, h                                       ; $7bac: $64
    adc b                                         ; $7bad: $88
    xor $17                                       ; $7bae: $ee $17
    dec de                                        ; $7bb0: $1b
    sub c                                         ; $7bb1: $91
    adc e                                         ; $7bb2: $8b
    ld b, d                                       ; $7bb3: $42
    ld a, $5f                                     ; $7bb4: $3e $5f
    ld [hl], b                                    ; $7bb6: $70
    ld d, c                                       ; $7bb7: $51
    ret z                                         ; $7bb8: $c8

    sub c                                         ; $7bb9: $91
    ld d, [hl]                                    ; $7bba: $56
    push de                                       ; $7bbb: $d5
    adc a                                         ; $7bbc: $8f
    dec hl                                        ; $7bbd: $2b
    dec sp                                        ; $7bbe: $3b

Jump_062_7bbf:
    or e                                          ; $7bbf: $b3
    adc c                                         ; $7bc0: $89
    ld h, [hl]                                    ; $7bc1: $66
    jp c, Jump_000_3c4e                           ; $7bc2: $da $4e $3c

    db $ed                                        ; $7bc5: $ed
    call nz, $8e93                                ; $7bc6: $c4 $93 $8e
    dec sp                                        ; $7bc9: $3b
    pop af                                        ; $7bca: $f1
    or h                                          ; $7bcb: $b4
    inc sp                                        ; $7bcc: $33
    ld c, [hl]                                    ; $7bcd: $4e

Call_062_7bce:
    cp a                                          ; $7bce: $bf
    ld e, a                                       ; $7bcf: $5f
    dec de                                        ; $7bd0: $1b
    sub c                                         ; $7bd1: $91
    dec hl                                        ; $7bd2: $2b
    ld b, e                                       ; $7bd3: $43
    ld c, e                                       ; $7bd4: $4b
    rst $28                                       ; $7bd5: $ef
    sub h                                         ; $7bd6: $94
    call c, $1041                                 ; $7bd7: $dc $41 $10
    xor b                                         ; $7bda: $a8
    db $ec                                        ; $7bdb: $ec
    ld e, h                                       ; $7bdc: $5c
    inc d                                         ; $7bdd: $14
    ld [hl], d                                    ; $7bde: $72
    rlca                                          ; $7bdf: $07
    ld a, a                                       ; $7be0: $7f
    add c                                         ; $7be1: $81
    ld a, e                                       ; $7be2: $7b
    rst $10                                       ; $7be3: $d7
    and d                                         ; $7be4: $a2
    ld d, b                                       ; $7be5: $50
    ld h, d                                       ; $7be6: $62
    pop hl                                        ; $7be7: $e1
    pop bc                                        ; $7be8: $c1
    ld c, [hl]                                    ; $7be9: $4e
    inc a                                         ; $7bea: $3c
    db $e3                                        ; $7beb: $e3
    call nz, $ef13                                ; $7bec: $c4 $13 $ef
    rla                                           ; $7bef: $17
    dec de                                        ; $7bf0: $1b
    sub c                                         ; $7bf1: $91
    dec bc                                        ; $7bf2: $0b
    ld c, b                                       ; $7bf3: $48
    ld b, a                                       ; $7bf4: $47
    adc e                                         ; $7bf5: $8b
    ld b, d                                       ; $7bf6: $42
    xor $9a                                       ; $7bf7: $ee $9a
    inc c                                         ; $7bf9: $0c
    dec e                                         ; $7bfa: $1d
    sbc a                                         ; $7bfb: $9f
    cpl                                           ; $7bfc: $2f
    ld e, b                                       ; $7bfd: $58
    or e                                          ; $7bfe: $b3
    adc c                                         ; $7bff: $89
    and $9d                                       ; $7c00: $e6 $9d
    ld a, b                                       ; $7c02: $78
    jp z, Jump_062_6729                           ; $7c03: $ca $29 $67

    inc e                                         ; $7c06: $1c
    ld [hl], a                                    ; $7c07: $77
    ld [$f709], a                                 ; $7c08: $ea $09 $f7
    dec bc                                        ; $7c0b: $0b
    dec de                                        ; $7c0c: $1b
    sub c                                         ; $7c0d: $91
    di                                            ; $7c0e: $f3
    sbc l                                         ; $7c0f: $9d
    call nc, Call_000_1787                        ; $7c10: $d4 $87 $17
    add l                                         ; $7c13: $85
    call c, $91e7                                 ; $7c14: $dc $e7 $91
    ccf                                           ; $7c17: $3f
    or $42                                        ; $7c18: $f6 $42
    db $ec                                        ; $7c1a: $ec
    adc h                                         ; $7c1b: $8c
    ld [hl], l                                    ; $7c1c: $75
    ld b, c                                       ; $7c1d: $41
    di                                            ; $7c1e: $f3
    inc l                                         ; $7c1f: $2c
    db $e3                                        ; $7c20: $e3
    inc c                                         ; $7c21: $0c
    dec e                                         ; $7c22: $1d
    add a                                         ; $7c23: $87
    adc $7d                                       ; $7c24: $ce $7d
    add hl, hl                                    ; $7c26: $29
    jp hl                                         ; $7c27: $e9


    add $7e                                       ; $7c28: $c6 $7e
    rst $28                                       ; $7c2a: $ef
    ld e, [hl]                                    ; $7c2b: $5e
    dec c                                         ; $7c2c: $0d
    rst $08                                       ; $7c2d: $cf
    ld d, h                                       ; $7c2e: $54
    ld l, d                                       ; $7c2f: $6a
    or b                                          ; $7c30: $b0
    ld a, [de]                                    ; $7c31: $1a
    cp l                                          ; $7c32: $bd
    db $eb                                        ; $7c33: $eb
    dec [hl]                                      ; $7c34: $35
    adc [hl]                                      ; $7c35: $8e
    ld a, d                                       ; $7c36: $7a
    ld b, b                                       ; $7c37: $40
    set 7, l                                      ; $7c38: $cb $fd
    ld [bc], a                                    ; $7c3a: $02
    dec de                                        ; $7c3b: $1b
    sub c                                         ; $7c3c: $91
    ld [hl], $cb                                  ; $7c3d: $36 $cb
    ld [hl+], a                                   ; $7c3f: $22
    ld l, d                                       ; $7c40: $6a
    ld d, [hl]                                    ; $7c41: $56
    or $48                                        ; $7c42: $f6 $48
    xor e                                         ; $7c44: $ab
    ld a, [hl-]                                   ; $7c45: $3a
    ld [hl], h                                    ; $7c46: $74
    xor [hl]                                      ; $7c47: $ae
    pop de                                        ; $7c48: $d1
    dec e                                         ; $7c49: $1d
    rst $28                                       ; $7c4a: $ef
    jr nz, jr_062_7c55                            ; $7c4b: $20 $08

    ld d, h                                       ; $7c4d: $54
    halt                                          ; $7c4e: $76
    ld l, $0a                                     ; $7c4f: $2e $0a
    cp c                                          ; $7c51: $b9
    add e                                         ; $7c52: $83
    cp a                                          ; $7c53: $bf
    ret nz                                        ; $7c54: $c0

jr_062_7c55:
    db $fd                                        ; $7c55: $fd
    ld [bc], a                                    ; $7c56: $02

jr_062_7c57:
    rst $20                                       ; $7c57: $e7
    dec sp                                        ; $7c58: $3b
    xor c                                         ; $7c59: $a9
    rrca                                          ; $7c5a: $0f
    cpl                                           ; $7c5b: $2f
    ld a, [bc]                                    ; $7c5c: $0a
    cp c                                          ; $7c5d: $b9
    ld a, [bc]                                    ; $7c5e: $0a
    ld [c], a                                     ; $7c5f: $e2
    ld [hl], c                                    ; $7c60: $71
    add [hl]                                      ; $7c61: $86
    adc [hl]                                      ; $7c62: $8e
    xor [hl]                                      ; $7c63: $ae
    xor h                                         ; $7c64: $ac
    inc hl                                        ; $7c65: $23
    jr c, jr_062_7c57                             ; $7c66: $38 $ef

    sbc l                                         ; $7c68: $9d
    rst $18                                       ; $7c69: $df
    dec e                                         ; $7c6a: $1d
    xor a                                         ; $7c6b: $af
    pop af                                        ; $7c6c: $f1
    ld b, l                                       ; $7c6d: $45
    sbc c                                         ; $7c6e: $99
    rlca                                          ; $7c6f: $07
    inc h                                         ; $7c70: $24
    db $dd                                        ; $7c71: $dd
    ld a, l                                       ; $7c72: $7d
    adc a                                         ; $7c73: $8f
    ld [hl], c                                    ; $7c74: $71
    sub [hl]                                      ; $7c75: $96
    add hl, hl                                    ; $7c76: $29
    ld l, d                                       ; $7c77: $6a
    rst $28                                       ; $7c78: $ef
    sbc $63                                       ; $7c79: $de $63
    xor c                                         ; $7c7b: $a9
    inc hl                                        ; $7c7c: $23
    cp a                                          ; $7c7d: $bf
    inc l                                         ; $7c7e: $2c
    cp $39                                        ; $7c7f: $fe $39
    ld e, b                                       ; $7c81: $58
    ld b, h                                       ; $7c82: $44
    ld c, c                                       ; $7c83: $49
    call c, $dc63                                 ; $7c84: $dc $63 $dc
    rst $20                                       ; $7c87: $e7
    or c                                          ; $7c88: $b1
    adc e                                         ; $7c89: $8b
    ld a, b                                       ; $7c8a: $78
    sub [hl]                                      ; $7c8b: $96
    ld [hl], c                                    ; $7c8c: $71
    add [hl]                                      ; $7c8d: $86
    adc [hl]                                      ; $7c8e: $8e
    rst $30                                       ; $7c8f: $f7
    dec bc                                        ; $7c90: $0b
    dec de                                        ; $7c91: $1b
    sub c                                         ; $7c92: $91
    add e                                         ; $7c93: $83
    cp a                                          ; $7c94: $bf
    add b                                         ; $7c95: $80
    ld [hl], d                                    ; $7c96: $72
    ld d, [hl]                                    ; $7c97: $56
    push af                                       ; $7c98: $f5
    push de                                       ; $7c99: $d5

Jump_062_7c9a:
jr_062_7c9a:
    db $e3                                        ; $7c9a: $e3
    jp z, $9dce                                   ; $7c9b: $ca $ce $9d

    ld a, b                                       ; $7c9e: $78
    ld [$a709], a                                 ; $7c9f: $ea $09 $a7
    dec e                                         ; $7ca2: $1d
    ld [hl], a                                    ; $7ca3: $77
    ld [c], a                                     ; $7ca4: $e2
    xor c                                         ; $7ca5: $a9
    ld h, a                                       ; $7ca6: $67
    sbc h                                         ; $7ca7: $9c
    ld [hl], c                                    ; $7ca8: $71
    cp a                                          ; $7ca9: $bf
    dec de                                        ; $7caa: $1b
    sub c                                         ; $7cab: $91
    or [hl]                                       ; $7cac: $b6
    or h                                          ; $7cad: $b4
    inc d                                         ; $7cae: $14
    dec bc                                        ; $7caf: $0b
    ld l, l                                       ; $7cb0: $6d
    add sp, $1c                                   ; $7cb1: $e8 $1c
    jr z, jr_062_7c9a                             ; $7cb3: $28 $e5

    add hl, hl                                    ; $7cb5: $29
    ld e, l                                       ; $7cb6: $5d
    call nz, $bdab                                ; $7cb7: $c4 $ab $bd
    ld e, c                                       ; $7cba: $59
    rlca                                          ; $7cbb: $07
    inc h                                         ; $7cbc: $24
    db $dd                                        ; $7cbd: $dd
    db $fd                                        ; $7cbe: $fd
    ld a, [hl]                                    ; $7cbf: $7e
    ld bc, $911b                                  ; $7cc0: $01 $1b $91
    ld b, e                                       ; $7cc3: $43
    dec l                                         ; $7cc4: $2d
    xor b                                         ; $7cc5: $a8
    db $ec                                        ; $7cc6: $ec
    ld e, c                                       ; $7cc7: $59
    ld b, [hl]                                    ; $7cc8: $46
    cp d                                          ; $7cc9: $ba
    db $d3                                        ; $7cca: $d3
    ld d, [hl]                                    ; $7ccb: $56
    jr nz, @+$64                                  ; $7ccc: $20 $62

    jr z, jr_062_7d3b                             ; $7cce: $28 $6b

    ld [hl], h                                    ; $7cd0: $74
    adc d                                         ; $7cd1: $8a
    xor d                                         ; $7cd2: $aa
    xor l                                         ; $7cd3: $ad
    call nc, $bd99                                ; $7cd4: $d4 $99 $bd
    ld d, b                                       ; $7cd7: $50
    ld d, $62                                     ; $7cd8: $16 $62
    ld h, a                                       ; $7cda: $67
    ld [hl], a                                    ; $7cdb: $77
    ld l, h                                       ; $7cdc: $6c
    db $f4                                        ; $7cdd: $f4
    ld e, $cb                                     ; $7cde: $1e $cb
    sbc h                                         ; $7ce0: $9c
    jp Jump_062_5650                              ; $7ce1: $c3 $50 $56


    ld sp, hl                                     ; $7ce4: $f9
    inc hl                                        ; $7ce5: $23
    sub h                                         ; $7ce6: $94
    ld [hl], l                                    ; $7ce7: $75
    add sp, -$03                                  ; $7ce8: $e8 $fd
    rst $18                                       ; $7cea: $df
    cpl                                           ; $7ceb: $2f
    dec de                                        ; $7cec: $1b
    sub c                                         ; $7ced: $91
    dec bc                                        ; $7cee: $0b
    add l                                         ; $7cef: $85
    ld c, d                                       ; $7cf0: $4a
    scf                                           ; $7cf1: $37
    db $d3                                        ; $7cf2: $d3
    sub $d2                                       ; $7cf3: $d6 $d2
    sub l                                         ; $7cf5: $95
    ld [hl], d                                    ; $7cf6: $72
    ld c, a                                       ; $7cf7: $4f
    ld c, l                                       ; $7cf8: $4d
    add hl, hl                                    ; $7cf9: $29
    and $91                                       ; $7cfa: $e6 $91
    ld d, [hl]                                    ; $7cfc: $56
    ld [hl], l                                    ; $7cfd: $75
    add sp, $5c                                   ; $7cfe: $e8 $5c
    db $f4                                        ; $7d00: $f4
    dec b                                         ; $7d01: $05
    ld a, c                                       ; $7d02: $79
    sub [hl]                                      ; $7d03: $96
    add hl, hl                                    ; $7d04: $29
    dec a                                         ; $7d05: $3d
    rst $30                                       ; $7d06: $f7
    inc b                                         ; $7d07: $04
    inc e                                         ; $7d08: $1c
    and $2f                                       ; $7d09: $e6 $2f
    ld d, [hl]                                    ; $7d0b: $56
    and c                                         ; $7d0c: $a1
    push de                                       ; $7d0d: $d5
    ld [hl], d                                    ; $7d0e: $72
    sbc $2f                                       ; $7d0f: $de $2f
    dec de                                        ; $7d11: $1b
    sub c                                         ; $7d12: $91
    ld c, e                                       ; $7d13: $4b
    or d                                          ; $7d14: $b2
    ld a, [hl+]                                   ; $7d15: $2a
    jp c, $0c54                                   ; $7d16: $da $54 $0c

    add d                                         ; $7d19: $82
    xor $50                                       ; $7d1a: $ee $50
    ld l, b                                       ; $7d1c: $68
    jp $01d4                                      ; $7d1d: $c3 $d4 $01


    dec a                                         ; $7d20: $3d
    ld [hl], h                                    ; $7d21: $74
    ld l, $b4                                     ; $7d22: $2e $b4
    ldh a, [rNR22]                                ; $7d24: $f0 $17
    and e                                         ; $7d26: $a3
    rst $10                                       ; $7d27: $d7
    ld c, b                                       ; $7d28: $48
    cp l                                          ; $7d29: $bd
    ld e, b                                       ; $7d2a: $58
    or $a3                                        ; $7d2b: $f6 $a3
    dec a                                         ; $7d2d: $3d
    ld c, l                                       ; $7d2e: $4d
    ld sp, $05ea                                  ; $7d2f: $31 $ea $05
    or e                                          ; $7d32: $b3
    reti                                          ; $7d33: $d9


    ld [hl], b                                    ; $7d34: $70
    sbc $2f                                       ; $7d35: $de $2f
    dec de                                        ; $7d37: $1b
    sub c                                         ; $7d38: $91
    di                                            ; $7d39: $f3
    inc bc                                        ; $7d3a: $03

jr_062_7d3b:
    ld a, a                                       ; $7d3b: $7f
    add c                                         ; $7d3c: $81
    xor d                                         ; $7d3d: $aa
    sub $82                                       ; $7d3e: $d6 $82
    jr nz, @-$30                                  ; $7d40: $20 $ce

    add l                                         ; $7d42: $85

Call_062_7d43:
    or d                                          ; $7d43: $b2
    ld a, [$ee9f]                                 ; $7d44: $fa $9f $ee
    call c, $f68f                                 ; $7d47: $dc $8f $f6
    ld a, h                                       ; $7d4a: $7c
    add hl, hl                                    ; $7d4b: $29
    sbc $f3                                       ; $7d4c: $de $f3
    dec bc                                        ; $7d4e: $0b
    ld d, h                                       ; $7d4f: $54
    push hl                                       ; $7d50: $e5
    dec [hl]                                      ; $7d51: $35
    ld a, d                                       ; $7d52: $7a
    ld a, b                                       ; $7d53: $78
    ld a, [hl+]                                   ; $7d54: $2a
    dec sp                                        ; $7d55: $3b
    rst $28                                       ; $7d56: $ef
    rla                                           ; $7d57: $17
    dec de                                        ; $7d58: $1b
    sub c                                         ; $7d59: $91
    ld [hl], $f3                                  ; $7d5a: $36 $f3
    ld [hl+], a                                   ; $7d5c: $22
    ld l, d                                       ; $7d5d: $6a
    ld d, [hl]                                    ; $7d5e: $56
    ld [hl], $6d                                  ; $7d5f: $36 $6d
    jp z, $ec82                                   ; $7d61: $ca $82 $ec

    add l                                         ; $7d64: $85
    jr z, jr_062_7dd9                             ; $7d65: $28 $72

    ld l, $0a                                     ; $7d67: $2e $0a
    add hl, sp                                    ; $7d69: $39
    call z, $ac5f                                 ; $7d6a: $cc $5f $ac
    ld b, d                                       ; $7d6d: $42
    xor e                                         ; $7d6e: $ab
    push hl                                       ; $7d6f: $e5
    cp h                                          ; $7d70: $bc
    ld e, a                                       ; $7d71: $5f
    dec de                                        ; $7d72: $1b
    sub c                                         ; $7d73: $91
    adc e                                         ; $7d74: $8b
    ld d, e                                       ; $7d75: $53
    rla                                           ; $7d76: $17
    db $ec                                        ; $7d77: $ec
    cp a                                          ; $7d78: $bf
    and b                                         ; $7d79: $a0
    ld [hl], a                                    ; $7d7a: $77
    add sp, -$75                                  ; $7d7b: $e8 $8b
    ld [c], a                                     ; $7d7d: $e2
    dec e                                         ; $7d7e: $1d
    call nc, $84a5                                ; $7d7f: $d4 $a5 $84
    cp d                                          ; $7d82: $ba
    or $50                                        ; $7d83: $f6 $50
    ld e, e                                       ; $7d85: $5b
    ret nz                                        ; $7d86: $c0

    cp a                                          ; $7d87: $bf
    cpl                                           ; $7d88: $2f
    ld a, [bc]                                    ; $7d89: $0a
    cp c                                          ; $7d8a: $b9
    add e                                         ; $7d8b: $83
    cp a                                          ; $7d8c: $bf
    ld b, b                                       ; $7d8d: $40
    ld d, l                                       ; $7d8e: $55
    sbc $65                                       ; $7d8f: $de $65
    add b                                         ; $7d91: $80
    xor $d5                                       ; $7d92: $ee $d5
    ld a, c                                       ; $7d94: $79
    cp a                                          ; $7d95: $bf
    dec de                                        ; $7d96: $1b
    sub c                                         ; $7d97: $91
    ld [hl], $cb                                  ; $7d98: $36 $cb
    ld [hl+], a                                   ; $7d9a: $22
    ld l, d                                       ; $7d9b: $6a
    ld d, [hl]                                    ; $7d9c: $56
    or $38                                        ; $7d9d: $f6 $38
    ld b, e                                       ; $7d9f: $43
    rst $00                                       ; $7da0: $c7
    rst $20                                       ; $7da1: $e7
    dec bc                                        ; $7da2: $0b
    ld c, $9d                                     ; $7da3: $0e $9d
    ld l, e                                       ; $7da5: $6b
    ld [hl], h                                    ; $7da6: $74
    rst $00                                       ; $7da7: $c7
    xor e                                         ; $7da8: $ab
    xor l                                         ; $7da9: $ad
    cp $99                                        ; $7daa: $fe $99
    call $d1fb                                    ; $7dac: $cd $fb $d1
    inc l                                         ; $7daf: $2c
    ei                                            ; $7db0: $fb
    ld d, c                                       ; $7db1: $51
    add d                                         ; $7db2: $82
    ld a, [$d552]                                 ; $7db3: $fa $52 $d5
    sbc h                                         ; $7db6: $9c

jr_062_7db7:
    ld a, [$b2d3]                                 ; $7db7: $fa $d3 $b2
    ldh a, [$fd]                                  ; $7dba: $f0 $fd
    ld [bc], a                                    ; $7dbc: $02
    dec de                                        ; $7dbd: $1b
    sub c                                         ; $7dbe: $91
    adc e                                         ; $7dbf: $8b
    xor b                                         ; $7dc0: $a8
    ld e, c                                       ; $7dc1: $59
    reti                                          ; $7dc2: $d9


    db $e3                                        ; $7dc3: $e3
    rst $18                                       ; $7dc4: $df
    sbc a                                         ; $7dc5: $9f
    ld e, a                                       ; $7dc6: $5f
    ld b, b                                       ; $7dc7: $40
    add hl, sp                                    ; $7dc8: $39
    add a                                         ; $7dc9: $87
    adc $45                                       ; $7dca: $ce $45
    cp a                                          ; $7dcc: $bf
    ld [hl], d                                    ; $7dcd: $72

Call_062_7dce:
    db $ed                                        ; $7dce: $ed
    and c                                         ; $7dcf: $a1
    inc c                                         ; $7dd0: $0c
    cp l                                          ; $7dd1: $bd
    rst $20                                       ; $7dd2: $e7
    rla                                           ; $7dd3: $17
    xor b                                         ; $7dd4: $a8
    jp z, $b173                                   ; $7dd5: $ca $73 $b1

    ld d, h                                       ; $7dd8: $54

jr_062_7dd9:
    push af                                       ; $7dd9: $f5
    dec de                                        ; $7dda: $1b
    adc $c5                                       ; $7ddb: $ce $c5
    add $f1                                       ; $7ddd: $c6 $f1
    rst $28                                       ; $7ddf: $ef
    db $dd                                        ; $7de0: $dd
    cp h                                          ; $7de1: $bc

Call_062_7de2:
    xor d                                         ; $7de2: $aa
    adc c                                         ; $7de3: $89
    rst $28                                       ; $7de4: $ef
    rla                                           ; $7de5: $17
    dec de                                        ; $7de6: $1b
    sub c                                         ; $7de7: $91
    add e                                         ; $7de8: $83
    add $ca                                       ; $7de9: $c6 $ca
    db $10                                        ; $7deb: $10

jr_062_7dec:
    or c                                          ; $7dec: $b1
    ld [hl], e                                    ; $7ded: $73
    ccf                                           ; $7dee: $3f
    ld e, d                                       ; $7def: $5a
    ld a, e                                       ; $7df0: $7b
    jr z, jr_062_7db7                             ; $7df1: $28 $c4

    ld a, [hl]                                    ; $7df3: $7e
    ld [hl], d                                    ; $7df4: $72
    cp l                                          ; $7df5: $bd

jr_062_7df6:
    ld [hl], a                                    ; $7df6: $77
    pop af                                        ; $7df7: $f1
    adc a                                         ; $7df8: $8f
    ld d, a                                       ; $7df9: $57
    add c                                         ; $7dfa: $81
    daa                                           ; $7dfb: $27
    ccf                                           ; $7dfc: $3f
    sub [hl]                                      ; $7dfd: $96
    ld sp, $99f4                                  ; $7dfe: $31 $f4 $99
    rst $30                                       ; $7e01: $f7
    and e                                         ; $7e02: $a3
    and c                                         ; $7e03: $a1
    rla                                           ; $7e04: $17
    ld b, c                                       ; $7e05: $41
    ld a, d                                       ; $7e06: $7a
    ld d, l                                       ; $7e07: $55
    add l                                         ; $7e08: $85
    ld l, [hl]                                    ; $7e09: $6e
    dec d                                         ; $7e0a: $15
    ld a, d                                       ; $7e0b: $7a
    ld [hl], a                                    ; $7e0c: $77
    ld bc, $fde7                                  ; $7e0d: $01 $e7 $fd
    ld [bc], a                                    ; $7e10: $02
    dec de                                        ; $7e11: $1b
    sub c                                         ; $7e12: $91
    di                                            ; $7e13: $f3
    sbc l                                         ; $7e14: $9d
    call nc, $c787                                ; $7e15: $d4 $87 $c7
    xor c                                         ; $7e18: $a9
    jp hl                                         ; $7e19: $e9


    db $dd                                        ; $7e1a: $dd
    adc l                                         ; $7e1b: $8d
    ld d, b                                       ; $7e1c: $50
    ld l, d                                       ; $7e1d: $6a
    inc d                                         ; $7e1e: $14
    ld [hl-], a                                   ; $7e1f: $32
    ld a, [$cecc]                                 ; $7e20: $fa $cc $ce
    ei                                            ; $7e23: $fb
    dec b                                         ; $7e24: $05
    dec de                                        ; $7e25: $1b
    sub c                                         ; $7e26: $91
    add e                                         ; $7e27: $83
    add $ca                                       ; $7e28: $c6 $ca
    db $10                                        ; $7e2a: $10
    or c                                          ; $7e2b: $b1
    ld [hl], e                                    ; $7e2c: $73
    ccf                                           ; $7e2d: $3f
    ld e, d                                       ; $7e2e: $5a
    ld a, e                                       ; $7e2f: $7b
    jr z, jr_062_7df6                             ; $7e30: $28 $c4

    ld a, [hl]                                    ; $7e32: $7e
    ld [hl], d                                    ; $7e33: $72
    cp l                                          ; $7e34: $bd
    ld [hl], a                                    ; $7e35: $77
    pop af                                        ; $7e36: $f1
    adc a                                         ; $7e37: $8f
    ld d, a                                       ; $7e38: $57
    add c                                         ; $7e39: $81
    daa                                           ; $7e3a: $27
    ccf                                           ; $7e3b: $3f
    sub [hl]                                      ; $7e3c: $96
    ld sp, $99f4                                  ; $7e3d: $31 $f4 $99
    rst $30                                       ; $7e40: $f7
    and e                                         ; $7e41: $a3

jr_062_7e42:
    and c                                         ; $7e42: $a1
    rla                                           ; $7e43: $17
    ld b, c                                       ; $7e44: $41
    ld a, d                                       ; $7e45: $7a
    ld d, l                                       ; $7e46: $55
    add l                                         ; $7e47: $85
    ld l, [hl]                                    ; $7e48: $6e
    dec d                                         ; $7e49: $15
    ld a, d                                       ; $7e4a: $7a
    ld [hl], a                                    ; $7e4b: $77
    ld bc, $fde7                                  ; $7e4c: $01 $e7 $fd
    ld [bc], a                                    ; $7e4f: $02
    dec de                                        ; $7e50: $1b
    sub c                                         ; $7e51: $91
    bit 3, h                                      ; $7e52: $cb $5c
    inc l                                         ; $7e54: $2c
    ld hl, sp+$13                                 ; $7e55: $f8 $13
    xor d                                         ; $7e57: $aa
    ld a, [de]                                    ; $7e58: $1a
    ld l, c                                       ; $7e59: $69
    ld d, l                                       ; $7e5a: $55
    add a                                         ; $7e5b: $87
    adc $85                                       ; $7e5c: $ce $85
    ld d, [hl]                                    ; $7e5e: $56
    and a                                         ; $7e5f: $a7
    inc h                                         ; $7e60: $24
    ld a, e                                       ; $7e61: $7b
    cp d                                          ; $7e62: $ba
    inc d                                         ; $7e63: $14
    adc a                                         ; $7e64: $8f
    inc sp                                        ; $7e65: $33
    ld [hl], h                                    ; $7e66: $74
    ld a, h                                       ; $7e67: $7c
    jr z, jr_062_7dec                             ; $7e68: $28 $82

    add e                                         ; $7e6a: $83
    ld e, l                                       ; $7e6b: $5d
    sub d                                         ; $7e6c: $92

jr_062_7e6d:
    db $fd                                        ; $7e6d: $fd
    dec bc                                        ; $7e6e: $0b
    sbc $2f                                       ; $7e6f: $de $2f
    dec de                                        ; $7e71: $1b
    sub c                                         ; $7e72: $91
    add e                                         ; $7e73: $83
    add $ca                                       ; $7e74: $c6 $ca
    db $10                                        ; $7e76: $10
    or c                                          ; $7e77: $b1
    ld [hl], e                                    ; $7e78: $73
    ccf                                           ; $7e79: $3f
    ld e, d                                       ; $7e7a: $5a

Jump_062_7e7b:
    ld a, e                                       ; $7e7b: $7b
    jr z, jr_062_7e42                             ; $7e7c: $28 $c4

    ld a, [hl]                                    ; $7e7e: $7e
    ld [hl], d                                    ; $7e7f: $72
    cp l                                          ; $7e80: $bd
    ld [hl], a                                    ; $7e81: $77
    pop af                                        ; $7e82: $f1
    adc a                                         ; $7e83: $8f
    ld d, a                                       ; $7e84: $57
    add c                                         ; $7e85: $81
    daa                                           ; $7e86: $27
    ccf                                           ; $7e87: $3f
    sub [hl]                                      ; $7e88: $96
    ld sp, $99f4                                  ; $7e89: $31 $f4 $99
    rst $30                                       ; $7e8c: $f7
    and e                                         ; $7e8d: $a3
    and c                                         ; $7e8e: $a1
    rla                                           ; $7e8f: $17
    ld b, c                                       ; $7e90: $41
    ld a, d                                       ; $7e91: $7a
    ld d, l                                       ; $7e92: $55
    add l                                         ; $7e93: $85
    ld l, [hl]                                    ; $7e94: $6e
    dec d                                         ; $7e95: $15
    ld a, d                                       ; $7e96: $7a
    ld [hl], a                                    ; $7e97: $77
    ld bc, $fde7                                  ; $7e98: $01 $e7 $fd
    ld [bc], a                                    ; $7e9b: $02
    dec de                                        ; $7e9c: $1b
    sub c                                         ; $7e9d: $91
    add e                                         ; $7e9e: $83
    add $ca                                       ; $7e9f: $c6 $ca
    db $10                                        ; $7ea1: $10
    or c                                          ; $7ea2: $b1
    ld [hl], e                                    ; $7ea3: $73
    ccf                                           ; $7ea4: $3f
    ld e, d                                       ; $7ea5: $5a
    ld a, e                                       ; $7ea6: $7b
    jr z, jr_062_7e6d                             ; $7ea7: $28 $c4

    ld a, [hl]                                    ; $7ea9: $7e
    ld [hl], d                                    ; $7eaa: $72
    cp l                                          ; $7eab: $bd
    ld [hl], a                                    ; $7eac: $77
    ld hl, $47ef                                  ; $7ead: $21 $ef $47
    ld b, e                                       ; $7eb0: $43
    cpl                                           ; $7eb1: $2f
    add d                                         ; $7eb2: $82
    db $f4                                        ; $7eb3: $f4
    ld d, h                                       ; $7eb4: $54
    add sp, -$23                                  ; $7eb5: $e8 $dd
    dec b                                         ; $7eb7: $05
    sbc h                                         ; $7eb8: $9c
    ld [hl], e                                    ; $7eb9: $73
    ld l, $b4                                     ; $7eba: $2e $b4
    call nc, $c8ef                                ; $7ebc: $d4 $ef $c8
    ld [hl], e                                    ; $7ebf: $73
    call nz, $91ce                                ; $7ec0: $c4 $ce $91
    ld d, $f4                                     ; $7ec3: $16 $f4
    db $fd                                        ; $7ec5: $fd
    ld [bc], a                                    ; $7ec6: $02
    dec de                                        ; $7ec7: $1b
    sub c                                         ; $7ec8: $91
    adc e                                         ; $7ec9: $8b
    ld d, e                                       ; $7eca: $53
    rla                                           ; $7ecb: $17
    db $ec                                        ; $7ecc: $ec
    cp a                                          ; $7ecd: $bf
    and b                                         ; $7ece: $a0
    rst $10                                       ; $7ecf: $d7
    cp a                                          ; $7ed0: $bf
    ld h, b                                       ; $7ed1: $60
    ld l, l                                       ; $7ed2: $6d
    ld l, b                                       ; $7ed3: $68
    inc l                                         ; $7ed4: $2c
    ld l, e                                       ; $7ed5: $6b
    rrca                                          ; $7ed6: $0f
    and l                                         ; $7ed7: $a5
    ld a, $fe                                     ; $7ed8: $3e $fe
    add sp, -$05                                  ; $7eda: $e8 $fb
    dec b                                         ; $7edc: $05
    dec de                                        ; $7edd: $1b
    sub c                                         ; $7ede: $91
    ld [hl], $cb                                  ; $7edf: $36 $cb
    ld [hl+], a                                   ; $7ee1: $22

jr_062_7ee2:
    ld l, d                                       ; $7ee2: $6a
    ld d, [hl]                                    ; $7ee3: $56
    or $62                                        ; $7ee4: $f6 $62
    ld c, d                                       ; $7ee6: $4a
    ld [hl-], a                                   ; $7ee7: $32
    ld [$ad7a], sp                                ; $7ee8: $08 $7a $ad
    and $da                                       ; $7eeb: $e6 $da
    inc l                                         ; $7eed: $2c
    cp e                                          ; $7eee: $bb
    sub [hl]                                      ; $7eef: $96
    add hl, hl                                    ; $7ef0: $29
    call z, $a5de                                 ; $7ef1: $cc $de $a5
    ld b, [hl]                                    ; $7ef4: $46
    rst $30                                       ; $7ef5: $f7
    ei                                            ; $7ef6: $fb
    dec b                                         ; $7ef7: $05
    dec de                                        ; $7ef8: $1b
    sub c                                         ; $7ef9: $91
    xor e                                         ; $7efa: $ab
    xor l                                         ; $7efb: $ad
    jr c, jr_062_7ee2                             ; $7efc: $38 $e4

    ld e, d                                       ; $7efe: $5a
    call $87b5                                    ; $7eff: $cd $b5 $87
    ld b, d                                       ; $7f02: $42
    db $ec                                        ; $7f03: $ec
    daa                                           ; $7f04: $27
    rst $10                                       ; $7f05: $d7
    ld a, e                                       ; $7f06: $7b
    rst $10                                       ; $7f07: $d7
    ld e, c                                       ; $7f08: $59
    or $a3                                        ; $7f09: $f6 $a3
    ld e, l                                       ; $7f0b: $5d
    ld c, $44                                     ; $7f0c: $0e $44
    ret                                           ; $7f0e: $c9


    ret nc                                        ; $7f0f: $d0

    ld a, a                                       ; $7f10: $7f
    db $dd                                        ; $7f11: $dd
    ld b, l                                       ; $7f12: $45
    db $fd                                        ; $7f13: $fd
    ccf                                           ; $7f14: $3f
    xor $3b                                       ; $7f15: $ee $3b
    ld l, [hl]                                    ; $7f17: $6e
    ld d, l                                       ; $7f18: $55
    db $fd                                        ; $7f19: $fd
    add [hl]                                      ; $7f1a: $86
    db $d3                                        ; $7f1b: $d3
    or d                                          ; $7f1c: $b2
    rra                                           ; $7f1d: $1f
    xor l                                         ; $7f1e: $ad
    call Call_000_0ebb                            ; $7f1f: $cd $bb $0e
    xor d                                         ; $7f22: $aa
    db $eb                                        ; $7f23: $eb
    ld c, $b1                                     ; $7f24: $0e $b1
    push hl                                       ; $7f26: $e5
    ld a, [hl]                                    ; $7f27: $7e
    ld bc, $911b                                  ; $7f28: $01 $1b $91
    di                                            ; $7f2b: $f3
    ld a, a                                       ; $7f2c: $7f
    xor l                                         ; $7f2d: $ad

jr_062_7f2e:
    ld d, b                                       ; $7f2e: $50
    ld a, c                                       ; $7f2f: $79
    jr nc, jr_062_7f66                            ; $7f30: $30 $34

    xor a                                         ; $7f32: $af
    dec d                                         ; $7f33: $15
    ld e, d                                       ; $7f34: $5a
    ld a, d                                       ; $7f35: $7a
    and a                                         ; $7f36: $a7
    and h                                         ; $7f37: $a4
    rst $30                                       ; $7f38: $f7
    db $fc                                        ; $7f39: $fc
    ld [bc], a                                    ; $7f3a: $02
    jp z, $f8d9                                   ; $7f3b: $ca $d9 $f8

    add d                                         ; $7f3e: $82
    or h                                          ; $7f3f: $b4
    or l                                          ; $7f40: $b5
    ld a, c                                       ; $7f41: $79
    add a                                         ; $7f42: $87
    jr z, jr_062_7f2e                             ; $7f43: $28 $e9

jr_062_7f45:
    dec e                                         ; $7f45: $1d
    and d                                         ; $7f46: $a2
    ld d, [hl]                                    ; $7f47: $56
    ld c, [hl]                                    ; $7f48: $4e
    rst $18                                       ; $7f49: $df
    cpl                                           ; $7f4a: $2f
    dec de                                        ; $7f4b: $1b
    sub c                                         ; $7f4c: $91
    ld c, e                                       ; $7f4d: $4b
    jp $0ad3                                      ; $7f4e: $c3 $d3 $0a


    ld [bc], a                                    ; $7f51: $02
    sub l                                         ; $7f52: $95
    rst $00                                       ; $7f53: $c7
    ret nc                                        ; $7f54: $d0

    add a                                         ; $7f55: $87
    sub [hl]                                      ; $7f56: $96
    jp hl                                         ; $7f57: $e9


    ld de, $1125                                  ; $7f58: $11 $25 $11
    adc d                                         ; $7f5b: $8a
    rst $30                                       ; $7f5c: $f7
    db $fc                                        ; $7f5d: $fc
    ld [bc], a                                    ; $7f5e: $02
    jp z, Jump_062_7559                           ; $7f5f: $ca $59 $75

    ld h, b                                       ; $7f62: $60
    rrca                                          ; $7f63: $0f
    sbc l                                         ; $7f64: $9d
    inc bc                                        ; $7f65: $03

jr_062_7f66:
    ld d, c                                       ; $7f66: $51
    ld e, l                                       ; $7f67: $5d
    ld b, a                                       ; $7f68: $47
    and a                                         ; $7f69: $a7
    ld [hl], e                                    ; $7f6a: $73
    sub [hl]                                      ; $7f6b: $96
    ld e, c                                       ; $7f6c: $59
    push de                                       ; $7f6d: $d5
    ld d, [hl]                                    ; $7f6e: $56
    rrca                                          ; $7f6f: $0f
    add sp, -$4c                                  ; $7f70: $e8 $b4
    and b                                         ; $7f72: $a0
    rst $00                                       ; $7f73: $c7
    ld a, d                                       ; $7f74: $7a
    db $e3                                        ; $7f75: $e3
    rst $18                                       ; $7f76: $df
    cpl                                           ; $7f77: $2f
    dec de                                        ; $7f78: $1b
    sub c                                         ; $7f79: $91
    ld b, e                                       ; $7f7a: $43
    inc d                                         ; $7f7b: $14
    and l                                         ; $7f7c: $a5
    call c, $8682                                 ; $7f7d: $dc $82 $86
    ld l, e                                       ; $7f80: $6b
    dec bc                                        ; $7f81: $0b
    ld a, d                                       ; $7f82: $7a
    ld [hl], a                                    ; $7f83: $77
    ld c, $86                                     ; $7f84: $0e $86
    and $b5                                       ; $7f86: $e6 $b5
    ld b, d                                       ; $7f88: $42
    ld c, e                                       ; $7f89: $4b
    rst $28                                       ; $7f8a: $ef
    sub h                                         ; $7f8b: $94
    db $f4                                        ; $7f8c: $f4
    sbc [hl]                                      ; $7f8d: $9e
    ld e, a                                       ; $7f8e: $5f
    ld b, b                                       ; $7f8f: $40
    add hl, sp                                    ; $7f90: $39
    dec de                                        ; $7f91: $1b
    ld e, a                                       ; $7f92: $5f
    sub b                                         ; $7f93: $90
    or [hl]                                       ; $7f94: $b6
    ld [hl], $ef                                  ; $7f95: $36 $ef
    db $10                                        ; $7f97: $10
    dec h                                         ; $7f98: $25
    cp l                                          ; $7f99: $bd
    ld b, e                                       ; $7f9a: $43
    call nc, $e9ca                                ; $7f9b: $d4 $ca $e9
    ei                                            ; $7f9e: $fb
    dec b                                         ; $7f9f: $05
    dec de                                        ; $7fa0: $1b
    sub c                                         ; $7fa1: $91
    bit 6, h                                      ; $7fa2: $cb $74
    xor [hl]                                      ; $7fa4: $ae
    dec l                                         ; $7fa5: $2d
    add sp, -$23                                  ; $7fa6: $e8 $dd
    add hl, sp                                    ; $7fa8: $39
    jr jr_062_7f45                                ; $7fa9: $18 $9a

    rst $10                                       ; $7fab: $d7
    ld a, [bc]                                    ; $7fac: $0a
    dec l                                         ; $7fad: $2d
    cp l                                          ; $7fae: $bd
    ld d, e                                       ; $7faf: $53
    jp nc, Jump_062_7e7b                          ; $7fb0: $d2 $7b $7e

    ld bc, $6ce5                                  ; $7fb3: $01 $e5 $6c
    ld a, h                                       ; $7fb6: $7c
    ld b, c                                       ; $7fb7: $41
    jp c, $bcda                                   ; $7fb8: $da $da $bc

    ld b, e                                       ; $7fbb: $43
    sub h                                         ; $7fbc: $94
    db $f4                                        ; $7fbd: $f4
    ld c, $51                                     ; $7fbe: $0e $51
    dec hl                                        ; $7fc0: $2b
    and a                                         ; $7fc1: $a7
    rst $28                                       ; $7fc2: $ef
    rla                                           ; $7fc3: $17
    dec de                                        ; $7fc4: $1b
    sub c                                         ; $7fc5: $91
    ld b, e                                       ; $7fc6: $43
    and c                                         ; $7fc7: $a1
    add a                                         ; $7fc8: $87
    and d                                         ; $7fc9: $a2
    inc bc                                        ; $7fca: $03
    rst $38                                       ; $7fcb: $ff
    add h                                         ; $7fcc: $84
    jp z, $a183                                   ; $7fcd: $ca $83 $a1

    ld a, c                                       ; $7fd0: $79
    xor l                                         ; $7fd1: $ad
    ret nc                                        ; $7fd2: $d0

    jp nc, Jump_000_253b                          ; $7fd3: $d2 $3b $25

    cp l                                          ; $7fd6: $bd
    rst $20                                       ; $7fd7: $e7
    rla                                           ; $7fd8: $17
    ld d, b                                       ; $7fd9: $50

Jump_062_7fda:
    adc $c6                                       ; $7fda: $ce $c6
    rla                                           ; $7fdc: $17
    and h                                         ; $7fdd: $a4
    xor l                                         ; $7fde: $ad
    call Call_062_443b                            ; $7fdf: $cd $3b $44
    ld c, c                                       ; $7fe2: $49
    rst $28                                       ; $7fe3: $ef
    db $10                                        ; $7fe4: $10
    or l                                          ; $7fe5: $b5
    ld [hl], d                                    ; $7fe6: $72
    ld a, [$017e]                                 ; $7fe7: $fa $7e $01
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
