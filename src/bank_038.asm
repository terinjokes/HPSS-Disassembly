; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    db $38, $c3                                   ; $4000: $38 $c3
    and l                                         ; $4002: $a5
    add c                                         ; $4003: $81
    ret nc                                        ; $4004: $d0

    ld d, e                                       ; $4005: $53
    dec c                                         ; $4006: $0d
    ld h, h                                       ; $4007: $64
    add sp, -$23                                  ; $4008: $e8 $dd
    ld e, c                                       ; $400a: $59
    jp c, $8e91                                   ; $400b: $da $91 $8e

    db $ed                                        ; $400e: $ed
    db $ec                                        ; $400f: $ec
    rst $38                                       ; $4010: $ff
    ld [hl], b                                    ; $4011: $70
    inc bc                                        ; $4012: $03
    and c                                         ; $4013: $a1
    or e                                          ; $4014: $b3
    add h                                         ; $4015: $84
    ld a, b                                       ; $4016: $78
    ret                                           ; $4017: $c9


    ld c, [hl]                                    ; $4018: $4e
    dec sp                                        ; $4019: $3b
    ld a, [hl-]                                   ; $401a: $3a
    and h                                         ; $401b: $a4
    sbc c                                         ; $401c: $99
    sbc a                                         ; $401d: $9f
    or a                                          ; $401e: $b7
    and a                                         ; $401f: $a7
    ld a, [de]                                    ; $4020: $1a
    ret z                                         ; $4021: $c8

    ld d, b                                       ; $4022: $50
    sub $88                                       ; $4023: $d6 $88
    sub [hl]                                      ; $4025: $96
    sub d                                         ; $4026: $92
    ld d, l                                       ; $4027: $55
    sub e                                         ; $4028: $93
    ld a, a                                       ; $4029: $7f
    ld h, $a1                                     ; $402a: $26 $a1
    ld c, e                                       ; $402c: $4b
    ld d, [hl]                                    ; $402d: $56
    ld b, d                                       ; $402e: $42
    ld [c], a                                     ; $402f: $e2
    or a                                          ; $4030: $b7
    inc [hl]                                      ; $4031: $34
    rlca                                          ; $4032: $07
    and e                                         ; $4033: $a3
    cp a                                          ; $4034: $bf
    add b                                         ; $4035: $80
    rst $08                                       ; $4036: $cf
    cp l                                          ; $4037: $bd
    dec sp                                        ; $4038: $3b
    add $81                                       ; $4039: $c6 $81
    ld l, d                                       ; $403b: $6a
    ld [hl], l                                    ; $403c: $75
    xor $dd                                       ; $403d: $ee $dd
    ld d, d                                       ; $403f: $52
    dec e                                         ; $4040: $1d

jr_038_4041:
    xor $f0                                       ; $4041: $ee $f0
    ret c                                         ; $4043: $d8

    scf                                           ; $4044: $37
    or [hl]                                       ; $4045: $b6
    xor h                                         ; $4046: $ac
    and l                                         ; $4047: $a5
    sbc c                                         ; $4048: $99
    ld h, c                                       ; $4049: $61
    ld l, h                                       ; $404a: $6c
    jr nc, jr_038_4041                            ; $404b: $30 $f4

    ld a, l                                       ; $404d: $7d
    sbc b                                         ; $404e: $98
    ld sp, $b307                                  ; $404f: $31 $07 $b3
    ld a, [$abf8]                                 ; $4052: $fa $f8 $ab
    rst $08                                       ; $4055: $cf
    push de                                       ; $4056: $d5
    sub [hl]                                      ; $4057: $96
    ld [hl+], a                                   ; $4058: $22
    ld a, a                                       ; $4059: $7f
    ld e, a                                       ; $405a: $5f
    adc b                                         ; $405b: $88
    ld a, [hl]                                    ; $405c: $7e
    ld b, l                                       ; $405d: $45
    inc [hl]                                      ; $405e: $34
    sbc [hl]                                      ; $405f: $9e
    ld [hl], h                                    ; $4060: $74
    jr jr_038_40b8                                ; $4061: $18 $55

    ret nc                                        ; $4063: $d0

    ei                                            ; $4064: $fb
    sub a                                         ; $4065: $97
    or h                                          ; $4066: $b4
    jp $2fb1                                      ; $4067: $c3 $b1 $2f


    sub c                                         ; $406a: $91
    ld b, d                                       ; $406b: $42
    db $e3                                        ; $406c: $e3
    ld l, l                                       ; $406d: $6d
    rst $38                                       ; $406e: $ff
    pop de                                        ; $406f: $d1
    reti                                          ; $4070: $d9


    call z, $cf7a                                 ; $4071: $cc $7a $cf
    db $fd                                        ; $4074: $fd
    adc d                                         ; $4075: $8a
    cp a                                          ; $4076: $bf
    sbc $bd                                       ; $4077: $de $bd
    ld e, e                                       ; $4079: $5b
    ld c, e                                       ; $407a: $4b
    add hl, bc                                    ; $407b: $09
    sub d                                         ; $407c: $92
    db $f4                                        ; $407d: $f4
    ld d, e                                       ; $407e: $53
    ld [$e09e], a                                 ; $407f: $ea $9e $e0
    add b                                         ; $4082: $80
    ld c, $5a                                     ; $4083: $0e $5a
    ld [$f8aa], sp                                ; $4085: $08 $aa $f8
    add e                                         ; $4088: $83
    ld b, $42                                     ; $4089: $06 $42
    jp c, $8ba4                                   ; $408b: $da $a4 $8b

    cp a                                          ; $408e: $bf
    or d                                          ; $408f: $b2
    sbc a                                         ; $4090: $9f
    ld [$43de], a                                 ; $4091: $ea $de $43
    ld [hl], h                                    ; $4094: $74
    dec l                                         ; $4095: $2d
    dec [hl]                                      ; $4096: $35
    call c, $163f                                 ; $4097: $dc $3f $16
    inc h                                         ; $409a: $24
    or $e6                                        ; $409b: $f6 $e6
    dec a                                         ; $409d: $3d
    ld d, a                                       ; $409e: $57
    ld a, a                                       ; $409f: $7f
    ld l, h                                       ; $40a0: $6c
    cp h                                          ; $40a1: $bc
    and e                                         ; $40a2: $a3
    ld h, h                                       ; $40a3: $64
    ld d, l                                       ; $40a4: $55
    rst $18                                       ; $40a5: $df
    inc hl                                        ; $40a6: $23
    di                                            ; $40a7: $f3
    pop de                                        ; $40a8: $d1
    reti                                          ; $40a9: $d9


    call z, $3b7a                                 ; $40aa: $cc $7a $3b
    ld l, b                                       ; $40ad: $68
    ld a, c                                       ; $40ae: $79
    ld b, c                                       ; $40af: $41
    add hl, bc                                    ; $40b0: $09
    ld c, b                                       ; $40b1: $48
    ld [hl], e                                    ; $40b2: $73
    or e                                          ; $40b3: $b3
    ld a, a                                       ; $40b4: $7f
    jr nz, jr_038_40c0                            ; $40b5: $20 $09

    dec c                                         ; $40b7: $0d

jr_038_40b8:
    cp $ce                                        ; $40b8: $fe $ce
    push de                                       ; $40ba: $d5
    rra                                           ; $40bb: $1f
    dec sp                                        ; $40bc: $3b
    sbc e                                         ; $40bd: $9b
    ld e, c                                       ; $40be: $59
    cpl                                           ; $40bf: $2f

jr_038_40c0:
    sbc d                                         ; $40c0: $9a
    add $e9                                       ; $40c1: $c6 $e9
    ld h, c                                       ; $40c3: $61
    add hl, sp                                    ; $40c4: $39
    scf                                           ; $40c5: $37
    di                                            ; $40c6: $f3
    db $fd                                        ; $40c7: $fd
    jp c, $f6f5                                   ; $40c8: $da $f5 $f6

    dec hl                                        ; $40cb: $2b
    xor h                                         ; $40cc: $ac
    or $51                                        ; $40cd: $f6 $51
    ld h, $38                                     ; $40cf: $26 $38
    or [hl]                                       ; $40d1: $b6

Jump_038_40d2:
    jp c, $d1d2                                   ; $40d2: $da $d2 $d1

    ld c, $f4                                     ; $40d5: $0e $f4
    and [hl]                                      ; $40d7: $a6
    dec e                                         ; $40d8: $1d
    jp z, $7a5a                                   ; $40d9: $ca $5a $7a

    or a                                          ; $40dc: $b7
    inc [hl]                                      ; $40dd: $34
    db $10                                        ; $40de: $10
    ld l, d                                       ; $40df: $6a
    sbc c                                         ; $40e0: $99
    ld sp, $4907                                  ; $40e1: $31 $07 $49
    sub [hl]                                      ; $40e4: $96
    ld h, [hl]                                    ; $40e5: $66
    call nc, $9fc1                                ; $40e6: $d4 $c1 $9f
    rst $08                                       ; $40e9: $cf
    dec e                                         ; $40ea: $1d
    cp h                                          ; $40eb: $bc
    or [hl]                                       ; $40ec: $b6
    jp c, Jump_038_7547                           ; $40ed: $da $47 $75

    cp b                                          ; $40f0: $b8
    daa                                           ; $40f1: $27
    ld a, b                                       ; $40f2: $78
    pop hl                                        ; $40f3: $e1
    dec hl                                        ; $40f4: $2b
    pop af                                        ; $40f5: $f1
    ld [hl], $a3                                  ; $40f6: $36 $a3
    ld e, a                                       ; $40f8: $5f
    or c                                          ; $40f9: $b1
    sbc $73                                       ; $40fa: $de $73
    push af                                       ; $40fc: $f5
    ld b, a                                       ; $40fd: $47
    xor h                                         ; $40fe: $ac
    and l                                         ; $40ff: $a5
    ld a, [hl-]                                   ; $4100: $3a
    ld hl, sp+$2b                                 ; $4101: $f8 $2b
    adc h                                         ; $4103: $8c
    dec c                                         ; $4104: $0d
    sbc $de                                       ; $4105: $de $de
    ld b, e                                       ; $4107: $43
    ld [hl], h                                    ; $4108: $74
    jp c, Jump_038_4b24                           ; $4109: $da $24 $4b

    inc sp                                        ; $410c: $33
    ld [$cfe0], a                                 ; $410d: $ea $e0 $cf
    rst $20                                       ; $4110: $e7
    ld l, d                                       ; $4111: $6a
    ld c, e                                       ; $4112: $4b
    ld sp, $2bf8                                  ; $4113: $31 $f8 $2b
    ld a, [hl-]                                   ; $4116: $3a
    and b                                         ; $4117: $a0
    adc [hl]                                      ; $4118: $8e
    or l                                          ; $4119: $b5
    ld [hl], h                                    ; $411a: $74
    ld hl, sp+$3d                                 ; $411b: $f8 $3d
    or d                                          ; $411d: $b2
    sbc e                                         ; $411e: $9b
    inc bc                                        ; $411f: $03
    ld a, [$fab7]                                 ; $4120: $fa $b7 $fa
    ld h, e                                       ; $4123: $63
    ld h, a                                       ; $4124: $67
    inc sp                                        ; $4125: $33
    db $eb                                        ; $4126: $eb
    db $ed                                        ; $4127: $ed
    adc l                                         ; $4128: $8d
    cp $e3                                        ; $4129: $fe $e3
    or b                                          ; $412b: $b0
    ld b, b                                       ; $412c: $40
    push de                                       ; $412d: $d5
    ld [$2fea], a                                 ; $412e: $ea $ea $2f
    ld e, a                                       ; $4131: $5f
    ld de, $7fbd                                  ; $4132: $11 $bd $7f
    ld bc, $b9c3                                  ; $4135: $01 $c3 $b9
    sub [hl]                                      ; $4138: $96
    or l                                          ; $4139: $b5
    add d                                         ; $413a: $82
    adc [hl]                                      ; $413b: $8e
    db $fc                                        ; $413c: $fc
    db $fc                                        ; $413d: $fc
    ld b, c                                       ; $413e: $41
    ret                                           ; $413f: $c9


    xor d                                         ; $4140: $aa
    ld d, $fa                                     ; $4141: $16 $fa
    scf                                           ; $4143: $37
    di                                            ; $4144: $f3
    and [hl]                                      ; $4145: $a6
    add hl, sp                                    ; $4146: $39
    di                                            ; $4147: $f3
    ld e, [hl]                                    ; $4148: $5e
    ld d, h                                       ; $4149: $54
    ei                                            ; $414a: $fb
    cp b                                          ; $414b: $b8
    inc b                                         ; $414c: $04
    add [hl]                                      ; $414d: $86
    db $e4                                        ; $414e: $e4
    ret                                           ; $414f: $c9


    ld e, a                                       ; $4150: $5f
    ld h, h                                       ; $4151: $64
    call z, $0e90                                 ; $4152: $cc $90 $0e
    and l                                         ; $4155: $a5
    call nc, $d8d8                                ; $4156: $d4 $d8 $d8
    adc $21                                       ; $4159: $ce $21
    ld a, d                                       ; $415b: $7a
    push de                                       ; $415c: $d5
    ld h, [hl]                                    ; $415d: $66
    dec a                                         ; $415e: $3d
    ld [bc], a                                    ; $415f: $02
    xor d                                         ; $4160: $aa
    ld b, e                                       ; $4161: $43
    ld h, [hl]                                    ; $4162: $66
    call z, $b301                                 ; $4163: $cc $01 $b3
    cp $73                                        ; $4166: $fe $73
    ccf                                           ; $4168: $3f
    ld l, e                                       ; $4169: $6b
    xor c                                         ; $416a: $a9
    cp $d8                                        ; $416b: $fe $d8
    pop hl                                        ; $416d: $e1
    or c                                          ; $416e: $b1
    rst $28                                       ; $416f: $ef
    sub d                                         ; $4170: $92
    ld l, l                                       ; $4171: $6d
    jr nz, jr_038_41c8                            ; $4172: $20 $54

    ld e, a                                       ; $4174: $5f
    ld [bc], a                                    ; $4175: $02
    ld a, l                                       ; $4176: $7d
    or c                                          ; $4177: $b1
    ldh [$ed], a                                  ; $4178: $e0 $ed
    call nz, Call_000_3635                        ; $417a: $c4 $35 $36
    db $10                                        ; $417d: $10
    ld a, [bc]                                    ; $417e: $0a
    rla                                           ; $417f: $17
    and h                                         ; $4180: $a4
    add hl, sp                                    ; $4181: $39
    jp $81b1                                      ; $4182: $c3 $b1 $81


    ret nc                                        ; $4185: $d0

    inc de                                        ; $4186: $13
    inc e                                         ; $4187: $1c
    ld d, b                                       ; $4188: $50
    add d                                         ; $4189: $82
    inc h                                         ; $418a: $24
    dec a                                         ; $418b: $3d
    add d                                         ; $418c: $82
    cp a                                          ; $418d: $bf
    sub d                                         ; $418e: $92
    ld d, l                                       ; $418f: $55
    inc sp                                        ; $4190: $33
    ccf                                           ; $4191: $3f

jr_038_4192:
    rst $28                                       ; $4192: $ef
    cp c                                          ; $4193: $b9
    ret                                           ; $4194: $c9


    ld e, a                                       ; $4195: $5f
    ld h, h                                       ; $4196: $64
    ld c, h                                       ; $4197: $4c
    jp c, Jump_038_5524                           ; $4198: $da $24 $55

    ld [hl], $10                                  ; $419b: $36 $10
    cp d                                          ; $419d: $ba
    ld l, d                                       ; $419e: $6a
    dec de                                        ; $419f: $1b
    ld e, e                                       ; $41a0: $5b
    ld h, [hl]                                    ; $41a1: $66
    ldh a, [$67]                                  ; $41a2: $f0 $67
    ld a, c                                       ; $41a4: $79
    ld c, $48                                     ; $41a5: $0e $48
    dec sp                                        ; $41a7: $3b
    rst $08                                       ; $41a8: $cf
    ld [$5a0e], a                                 ; $41a9: $ea $0e $5a
    or d                                          ; $41ac: $b2
    ld b, b                                       ; $41ad: $40
    db $ec                                        ; $41ae: $ec
    ld b, $7f                                     ; $41af: $06 $7f
    ld [hl], b                                    ; $41b1: $70
    xor $f1                                       ; $41b2: $ee $f1
    sub a                                         ; $41b4: $97
    cp a                                          ; $41b5: $bf
    db $e3                                        ; $41b6: $e3
    db $d3                                        ; $41b7: $d3
    add [hl]                                      ; $41b8: $86

jr_038_41b9:
    adc b                                         ; $41b9: $88
    or a                                          ; $41ba: $b7
    jr jr_038_41b9                                ; $41bb: $18 $fc

    push af                                       ; $41bd: $f5
    dec hl                                        ; $41be: $2b
    cp $aa                                        ; $41bf: $fe $aa
    jp $8265                                      ; $41c1: $c3 $65 $82


    ld h, l                                       ; $41c4: $65
    sbc l                                         ; $41c5: $9d
    and $b3                                       ; $41c6: $e6 $b3

jr_038_41c8:
    ld a, l                                       ; $41c8: $7d
    ld b, h                                       ; $41c9: $44
    xor b                                         ; $41ca: $a8
    ld e, d                                       ; $41cb: $5a
    inc l                                         ; $41cc: $2c
    ld e, c                                       ; $41cd: $59
    add hl, bc                                    ; $41ce: $09
    adc c                                         ; $41cf: $89
    rst $18                                       ; $41d0: $df
    cp d                                          ; $41d1: $ba
    sbc a                                         ; $41d2: $9f
    cp a                                          ; $41d3: $bf
    ld h, $7f                                     ; $41d4: $26 $7f
    add l                                         ; $41d6: $85
    call $bcfc                                    ; $41d7: $cd $fc $bc
    ld l, c                                       ; $41da: $69
    ld b, a                                       ; $41db: $47
    dec de                                        ; $41dc: $1b
    ret nz                                        ; $41dd: $c0

    rst $20                                       ; $41de: $e7
    ld [$ff70], a                                 ; $41df: $ea $70 $ff
    ld l, d                                       ; $41e2: $6a
    adc e                                         ; $41e3: $8b
    or a                                          ; $41e4: $b7
    jr jr_038_4192                                ; $41e5: $18 $ab

    adc e                                         ; $41e7: $8b
    db $fc                                        ; $41e8: $fc
    ld e, l                                       ; $41e9: $5d
    ld e, e                                       ; $41ea: $5b
    sbc d                                         ; $41eb: $9a
    cp b                                          ; $41ec: $b8
    add hl, de                                    ; $41ed: $19
    ld b, d                                       ; $41ee: $42
    push af                                       ; $41ef: $f5
    ld c, a                                       ; $41f0: $4f
    ld [hl], e                                    ; $41f1: $73
    daa                                           ; $41f2: $27
    xor b                                         ; $41f3: $a8
    and e                                         ; $41f4: $a3
    adc h                                         ; $41f5: $8c
    sub h                                         ; $41f6: $94
    call nz, Call_038_7d6f                        ; $41f7: $c4 $6f $7d
    rra                                           ; $41fa: $1f
    sbc d                                         ; $41fb: $9a
    db $fc                                        ; $41fc: $fc
    inc sp                                        ; $41fd: $33
    add hl, bc                                    ; $41fe: $09
    ld e, l                                       ; $41ff: $5d
    dec e                                         ; $4200: $1d
    db $fc                                        ; $4201: $fc
    dec [hl]                                      ; $4202: $35
    adc [hl]                                      ; $4203: $8e
    adc [hl]                                      ; $4204: $8e
    cp $54                                        ; $4205: $fe $54
    scf                                           ; $4207: $37
    inc sp                                        ; $4208: $33
    and c                                         ; $4209: $a1
    ld d, [hl]                                    ; $420a: $56
    ld a, e                                       ; $420b: $7b
    db $d3                                        ; $420c: $d3
    adc $6a                                       ; $420d: $ce $6a
    jr nz, jr_038_4254                            ; $420f: $20 $43

    pop af                                        ; $4211: $f1
    and d                                         ; $4212: $a2
    inc d                                         ; $4213: $14
    adc h                                         ; $4214: $8c
    ld d, b                                       ; $4215: $50
    xor l                                         ; $4216: $ad
    jp z, $d11a                                   ; $4217: $ca $1a $d1

    ld d, d                                       ; $421a: $52
    dec e                                         ; $421b: $1d
    ld [c], a                                     ; $421c: $e2
    dec de                                        ; $421d: $1b
    ld [hl], h                                    ; $421e: $74
    ccf                                           ; $421f: $3f
    ld a, a                                       ; $4220: $7f
    ld h, l                                       ; $4221: $65
    sub h                                         ; $4222: $94
    ld sp, $1104                                  ; $4223: $31 $04 $11
    xor e                                         ; $4226: $ab
    cpl                                           ; $4227: $2f
    ld l, c                                       ; $4228: $69
    and $e7                                       ; $4229: $e6 $e7
    ld c, l                                       ; $422b: $4d
    ld [hl], e                                    ; $422c: $73
    ld b, e                                       ; $422d: $43
    reti                                          ; $422e: $d9


    db $e3                                        ; $422f: $e3
    dec bc                                        ; $4230: $0b
    ld a, [c]                                     ; $4231: $f2
    rst $10                                       ; $4232: $d7
    ld e, b                                       ; $4233: $58
    db $ec                                        ; $4234: $ec
    jr nc, @+$05                                  ; $4235: $30 $03

    sbc h                                         ; $4237: $9c
    dec sp                                        ; $4238: $3b
    ld [$b002], a                                 ; $4239: $ea $02 $b0
    and h                                         ; $423c: $a4
    add hl, sp                                    ; $423d: $39
    ld c, c                                       ; $423e: $49
    xor d                                         ; $423f: $aa
    rst $28                                       ; $4240: $ef
    inc hl                                        ; $4241: $23
    ld d, h                                       ; $4242: $54
    dec sp                                        ; $4243: $3b
    sub $65                                       ; $4244: $d6 $65
    add d                                         ; $4246: $82
    ld a, h                                       ; $4247: $7c
    jp nz, $7d65                                  ; $4248: $c2 $65 $7d

    cp e                                          ; $424b: $bb
    adc [hl]                                      ; $424c: $8e
    jp Jump_038_6e7b                              ; $424d: $c3 $7b $6e


    ld a, [c]                                     ; $4250: $f2
    rla                                           ; $4251: $17
    add hl, de                                    ; $4252: $19
    sub e                                         ; $4253: $93

jr_038_4254:
    sub [hl]                                      ; $4254: $96
    pop de                                        ; $4255: $d1
    xor a                                         ; $4256: $af
    and a                                         ; $4257: $a7
    ld a, [de]                                    ; $4258: $1a
    ret z                                         ; $4259: $c8

    ld d, b                                       ; $425a: $50
    dec e                                         ; $425b: $1d
    ld [c], a                                     ; $425c: $e2
    dec de                                        ; $425d: $1b
    ld [hl], h                                    ; $425e: $74
    ccf                                           ; $425f: $3f
    ld a, a                                       ; $4260: $7f
    ld h, l                                       ; $4261: $65
    sub h                                         ; $4262: $94
    ld sp, $1104                                  ; $4263: $31 $04 $11
    xor e                                         ; $4266: $ab
    cpl                                           ; $4267: $2f
    ld c, c                                       ; $4268: $49
    ld [hl], e                                    ; $4269: $73
    ld c, h                                       ; $426a: $4c
    cp $ee                                        ; $426b: $fe $ee
    adc [hl]                                      ; $426d: $8e
    dec [hl]                                      ; $426e: $35
    ld a, [c]                                     ; $426f: $f2
    or a                                          ; $4270: $b7
    ld e, a                                       ; $4271: $5f
    sub c                                         ; $4272: $91
    sbc l                                         ; $4273: $9d
    and $c9                                       ; $4274: $e6 $c9
    ld e, a                                       ; $4276: $5f
    ld h, h                                       ; $4277: $64
    call z, $8e90                                 ; $4278: $cc $90 $8e
    cp $d8                                        ; $427b: $fe $d8
    ld b, b                                       ; $427d: $40
    add sp, -$40                                  ; $427e: $e8 $c0
    ld b, a                                       ; $4280: $47
    inc c                                         ; $4281: $0c
    dec bc                                        ; $4282: $0b
    call z, $0398                                 ; $4283: $cc $98 $03
    di                                            ; $4286: $f3
    ld e, [hl]                                    ; $4287: $5e
    ld d, h                                       ; $4288: $54
    ei                                            ; $4289: $fb
    cp b                                          ; $428a: $b8
    inc b                                         ; $428b: $04
    ld a, [de]                                    ; $428c: $1a
    ld [$a38d], sp                                ; $428d: $08 $8d $a3
    and e                                         ; $4290: $a3
    ccf                                           ; $4291: $3f
    push de                                       ; $4292: $d5
    ld l, c                                       ; $4293: $69
    add a                                         ; $4294: $87
    ld c, e                                       ; $4295: $4b
    rst $28                                       ; $4296: $ef
    ld b, c                                       ; $4297: $41
    ld l, c                                       ; $4298: $69
    or l                                          ; $4299: $b5
    or a                                          ; $429a: $b7
    ld c, h                                       ; $429b: $4c
    ld [hl], b                                    ; $429c: $70
    ld l, h                                       ; $429d: $6c
    or l                                          ; $429e: $b5
    and l                                         ; $429f: $a5
    and e                                         ; $42a0: $a3
    dec e                                         ; $42a1: $1d
    add sp, -$13                                  ; $42a2: $e8 $ed
    ei                                            ; $42a4: $fb
    xor h                                         ; $42a5: $ac
    scf                                           ; $42a6: $37
    ld l, l                                       ; $42a7: $6d
    ld [bc], a                                    ; $42a8: $02
    ld a, a                                       ; $42a9: $7f
    call Call_038_57e8                            ; $42aa: $cd $e8 $57
    xor h                                         ; $42ad: $ac
    rst $08                                       ; $42ae: $cf
    ld h, l                                       ; $42af: $65
    xor $1f                                       ; $42b0: $ee $1f
    ld [hl], b                                    ; $42b2: $70
    rst $18                                       ; $42b3: $df
    add a                                         ; $42b4: $87
    adc $a9                                       ; $42b5: $ce $a9
    ld b, d                                       ; $42b7: $42
    call nz, $7694                                ; $42b8: $c4 $94 $76
    add sp, $66                                   ; $42bb: $e8 $66
    ld [$6c75], sp                                ; $42bd: $08 $75 $6c
    and $53                                       ; $42c0: $e6 $53
    ld a, a                                       ; $42c2: $7f
    ld b, $e7                                     ; $42c3: $06 $e7
    ld [$047f], a                                 ; $42c5: $ea $7f $04
    call nc, Call_038_78d2                        ; $42c8: $d4 $d2 $78
    ld b, a                                       ; $42cb: $47
    ld e, a                                       ; $42cc: $5f
    ld d, b                                       ; $42cd: $50
    ld [bc], a                                    ; $42ce: $02
    jp nc, $cc1c                                  ; $42cf: $d2 $1c $cc

    ld bc, $fe09                                  ; $42d2: $01 $09 $fe
    adc d                                         ; $42d5: $8a
    adc [hl]                                      ; $42d6: $8e
    push af                                       ; $42d7: $f5
    halt                                          ; $42d8: $76
    or $7f                                        ; $42d9: $f6 $7f
    ld a, b                                       ; $42db: $78
    cp e                                          ; $42dc: $bb
    pop bc                                        ; $42dd: $c1
    rra                                           ; $42de: $1f
    db $f4                                        ; $42df: $f4
    dec hl                                        ; $42e0: $2b
    inc e                                         ; $42e1: $1c
    sub d                                         ; $42e2: $92
    inc bc                                        ; $42e3: $03
    or e                                          ; $42e4: $b3
    add h                                         ; $42e5: $84
    ld a, b                                       ; $42e6: $78
    ret                                           ; $42e7: $c9


    ld a, $57                                     ; $42e8: $3e $57
    ld e, e                                       ; $42ea: $5b
    ld a, d                                       ; $42eb: $7a
    add d                                         ; $42ec: $82
    rla                                           ; $42ed: $17
    cp [hl]                                       ; $42ee: $be
    sub d                                         ; $42ef: $92
    ld [hl], e                                    ; $42f0: $73
    rst $18                                       ; $42f1: $df
    add a                                         ; $42f2: $87
    ld e, $c1                                     ; $42f3: $1e $c1
    ld e, a                                       ; $42f5: $5f
    inc sp                                        ; $42f6: $33
    adc e                                         ; $42f7: $8b
    ld bc, $690c                                  ; $42f8: $01 $0c $69
    add a                                         ; $42fb: $87
    xor [hl]                                      ; $42fc: $ae
    or [hl]                                       ; $42fd: $b6
    cp b                                          ; $42fe: $b8
    daa                                           ; $42ff: $27
    ld a, b                                       ; $4300: $78

Call_038_4301:
    pop hl                                        ; $4301: $e1
    dec hl                                        ; $4302: $2b
    pop af                                        ; $4303: $f1
    ld [hl], $a3                                  ; $4304: $36 $a3
    ld e, a                                       ; $4306: $5f
    or c                                          ; $4307: $b1
    sbc $9e                                       ; $4308: $de $9e
    ld l, d                                       ; $430a: $6a
    ld a, l                                       ; $430b: $7d
    pop af                                        ; $430c: $f1
    ld [hl], a                                    ; $430d: $77
    xor [hl]                                      ; $430e: $ae
    cp $88                                        ; $430f: $fe $88
    sbc l                                         ; $4311: $9d
    rst $30                                       ; $4312: $f7
    and d                                         ; $4313: $a2
    jp c, $25c7                                   ; $4314: $da $c7 $25

    ret nc                                        ; $4317: $d0

    inc hl                                        ; $4318: $23
    ld hl, sp+$2b                                 ; $4319: $f8 $2b
    adc h                                         ; $431b: $8c
    dec c                                         ; $431c: $0d
    sbc $de                                       ; $431d: $de $de
    ld b, e                                       ; $431f: $43
    ld [hl], h                                    ; $4320: $74
    jp c, Jump_038_70a4                           ; $4321: $da $a4 $70

    sbc c                                         ; $4324: $99
    ld h, b                                       ; $4325: $60
    ld e, c                                       ; $4326: $59
    rla                                           ; $4327: $17
    ld a, a                                       ; $4328: $7f
    and $ad                                       ; $4329: $e6 $ad
    cp $98                                        ; $432b: $fe $98
    and $c3                                       ; $432d: $e6 $c3
    and l                                         ; $432f: $a5
    rst $30                                       ; $4330: $f7
    db $10                                        ; $4331: $10
    ld e, l                                       ; $4332: $5d
    or l                                          ; $4333: $b5
    ret c                                         ; $4334: $d8

    ld c, a                                       ; $4335: $4f
    xor c                                         ; $4336: $a9
    ld l, e                                       ; $4337: $6b
    cp c                                          ; $4338: $b9
    rlca                                          ; $4339: $07
    ld a, [c]                                     ; $433a: $f2
    rst $20                                       ; $433b: $e7
    dec a                                         ; $433c: $3d
    rst $30                                       ; $433d: $f7
    xor $dd                                       ; $433e: $ee $dd
    ld l, d                                       ; $4340: $6a
    push de                                       ; $4341: $d5
    dec c                                         ; $4342: $0d
    cp $a0                                        ; $4343: $fe $a0
    ld a, [$011f]                                 ; $4345: $fa $1f $01
    db $fd                                        ; $4348: $fd
    adc d                                         ; $4349: $8a
    ld a, b                                       ; $434a: $78
    ld h, e                                       ; $434b: $63
    dec bc                                        ; $434c: $0b
    jp nz, Jump_038_7fb9                          ; $434d: $c2 $b9 $7f

    push af                                       ; $4350: $f5
    ld d, a                                       ; $4351: $57
    sub [hl]                                      ; $4352: $96
    push de                                       ; $4353: $d5
    ld b, l                                       ; $4354: $45
    rst $00                                       ; $4355: $c7
    ld a, d                                       ; $4356: $7a
    dec sp                                        ; $4357: $3b
    ei                                            ; $4358: $fb
    ccf                                           ; $4359: $3f
    cp h                                          ; $435a: $bc
    dec h                                         ; $435b: $25
    xor e                                         ; $435c: $ab
    ld [c], a                                     ; $435d: $e2
    rst $08                                       ; $435e: $cf
    cp h                                          ; $435f: $bc
    ld b, e                                       ; $4360: $43
    ld [hl], d                                    ; $4361: $72
    ret                                           ; $4362: $c9


    ld e, a                                       ; $4363: $5f
    ld h, h                                       ; $4364: $64
    call z, $c1b9                                 ; $4365: $cc $b9 $c1
    ld e, a                                       ; $4368: $5f
    rst $18                                       ; $4369: $df
    ld h, a                                       ; $436a: $67
    db $dd                                        ; $436b: $dd
    call z, $6c6f                                 ; $436c: $cc $6f $6c
    add c                                         ; $436f: $81
    ld [hl], e                                    ; $4370: $73
    push af                                       ; $4371: $f5

Call_038_4372:
    ld b, a                                       ; $4372: $47
    db $ec                                        ; $4373: $ec
    cp h                                          ; $4374: $bc
    rla                                           ; $4375: $17
    push de                                       ; $4376: $d5
    ld a, $2e                                     ; $4377: $3e $2e
    add c                                         ; $4379: $81
    ld c, $dd                                     ; $437a: $0e $dd
    inc c                                         ; $437c: $0c
    and c                                         ; $437d: $a1
    add e                                         ; $437e: $83
    sub a                                         ; $437f: $97
    inc [hl]                                      ; $4380: $34
    ld c, c                                       ; $4381: $49
    dec e                                         ; $4382: $1d
    inc l                                         ; $4383: $2c
    or l                                          ; $4384: $b5
    cp [hl]                                       ; $4385: $be
    call nz, Call_000_1f7d                        ; $4386: $c4 $7d $1f
    jp nc, $af32                                  ; $4389: $d2 $32 $af

    jp nc, $99bf                                  ; $438c: $d2 $bf $99

    ld l, e                                       ; $438f: $6b
    jp hl                                         ; $4390: $e9


    and a                                         ; $4391: $a7
    ld a, b                                       ; $4392: $78
    dec [hl]                                      ; $4393: $35
    or [hl]                                       ; $4394: $b6
    jp c, $d9d2                                   ; $4395: $da $d2 $d9

    inc de                                        ; $4398: $13
    sbc a                                         ; $4399: $9f
    dec de                                        ; $439a: $1b
    ld [$b2e7], sp                                ; $439b: $08 $e7 $b2
    add c                                         ; $439e: $81
    ld d, b                                       ; $439f: $50
    xor l                                         ; $43a0: $ad
    ld a, [de]                                    ; $43a1: $1a
    ld e, e                                       ; $43a2: $5b
    ld h, [hl]                                    ; $43a3: $66
    ldh a, [$67]                                  ; $43a4: $f0 $67
    ld a, c                                       ; $43a6: $79
    ld c, $48                                     ; $43a7: $0e $48
    dec sp                                        ; $43a9: $3b
    xor e                                         ; $43aa: $ab
    add c                                         ; $43ab: $81
    inc c                                         ; $43ac: $0c
    push bc                                       ; $43ad: $c5
    adc e                                         ; $43ae: $8b
    ld d, d                                       ; $43af: $52
    ldh a, [$f6]                                  ; $43b0: $f0 $f6
    ld e, $d2                                     ; $43b2: $1e $d2
    rst $08                                       ; $43b4: $cf
    ld e, d                                       ; $43b5: $5a
    adc d                                         ; $43b6: $8a
    db $fc                                        ; $43b7: $fc
    pop de                                        ; $43b8: $d1
    ld c, a                                       ; $43b9: $4f
    ld a, b                                       ; $43ba: $78
    sbc e                                         ; $43bb: $9b
    ld sp, hl                                     ; $43bc: $f9
    ld a, c                                       ; $43bd: $79
    db $d3                                        ; $43be: $d3
    inc e                                         ; $43bf: $1c
    inc hl                                        ; $43c0: $23
    dec e                                         ; $43c1: $1d
    db $db                                        ; $43c2: $db
    cp c                                          ; $43c3: $b9
    cp a                                          ; $43c4: $bf
    xor h                                         ; $43c5: $ac
    ld a, [hl-]                                   ; $43c6: $3a
    sbc $df                                       ; $43c7: $de $df
    xor h                                         ; $43c9: $ac
    ld l, c                                       ; $43ca: $69
    sbc d                                         ; $43cb: $9a
    sub $d2                                       ; $43cc: $d6 $d2
    ld b, b                                       ; $43ce: $40
    add sp, $3d                                   ; $43cf: $e8 $3d
    xor h                                         ; $43d1: $ac
    dec l                                         ; $43d2: $2d
    push de                                       ; $43d3: $d5
    ld a, a                                       ; $43d4: $7f
    ld c, b                                       ; $43d5: $48
    sub e                                         ; $43d6: $93
    jp Jump_038_40d2                              ; $43d7: $c3 $d2 $40


    xor b                                         ; $43da: $a8
    ld h, e                                       ; $43db: $63
    ld a, e                                       ; $43dc: $7b
    add d                                         ; $43dd: $82
    ld bc, $d34c                                  ; $43de: $01 $4c $d3
    inc e                                         ; $43e1: $1c
    or e                                          ; $43e2: $b3
    dec hl                                        ; $43e3: $2b
    add hl, hl                                    ; $43e4: $29
    ld b, c                                       ; $43e5: $41
    sub d                                         ; $43e6: $92
    ld l, d                                       ; $43e7: $6a
    ld l, a                                       ; $43e8: $6f
    ld h, a                                       ; $43e9: $67
    ld sp, hl                                     ; $43ea: $f9
    sub h                                         ; $43eb: $94
    ld [hl], $4d                                  ; $43ec: $36 $4d
    db $d3                                        ; $43ee: $d3
    inc e                                         ; $43ef: $1c
    ld c, h                                       ; $43f0: $4c
    push bc                                       ; $43f1: $c5
    sbc a                                         ; $43f2: $9f
    sbc e                                         ; $43f3: $9b
    db $fc                                        ; $43f4: $fc
    inc sp                                        ; $43f5: $33
    add hl, bc                                    ; $43f6: $09
    db $dd                                        ; $43f7: $dd
    ret c                                         ; $43f8: $d8

    ld l, d                                       ; $43f9: $6a
    ld c, e                                       ; $43fa: $4b
    add a                                         ; $43fb: $87
    rst $00                                       ; $43fc: $c7
    ld h, [hl]                                    ; $43fd: $66
    ld a, a                                       ; $43fe: $7f
    inc sp                                        ; $43ff: $33
    ld a, h                                       ; $4400: $7c
    sbc a                                         ; $4401: $9f
    ld d, d                                       ; $4402: $52
    ld [hl], a                                    ; $4403: $77
    ldh a, [$da]                                  ; $4404: $f0 $da
    ld [hl-], a                                   ; $4406: $32
    ld c, d                                       ; $4407: $4a
    ld l, h                                       ; $4408: $6c
    halt                                          ; $4409: $76
    ld bc, $9a60                                  ; $440a: $01 $60 $9a
    inc bc                                        ; $440d: $03
    inc hl                                        ; $440e: $23
    cp [hl]                                       ; $440f: $be
    ld [hl+], a                                   ; $4410: $22
    ld e, h                                       ; $4411: $5c
    ld h, $7f                                     ; $4412: $26 $7f
    adc d                                         ; $4414: $8a
    ld [c], a                                     ; $4415: $e2
    rst $20                                       ; $4416: $e7
    rst $08                                       ; $4417: $cf
    db $db                                        ; $4418: $db
    ret c                                         ; $4419: $d8

    ld l, d                                       ; $441a: $6a
    ld c, e                                       ; $441b: $4b
    ld b, a                                       ; $441c: $47
    rst $00                                       ; $441d: $c7
    sbc $4c                                       ; $441e: $de $4c
    or e                                          ; $4420: $b3
    adc a                                         ; $4421: $8f
    add sp, $34                                   ; $4422: $e8 $34
    rlca                                          ; $4424: $07
    ld c, h                                       ; $4425: $4c
    push bc                                       ; $4426: $c5
    ld e, a                                       ; $4427: $5f
    ld [hl], l                                    ; $4428: $75
    ld c, b                                       ; $4429: $48
    dec e                                         ; $442a: $1d
    db $eb                                        ; $442b: $eb
    dec l                                         ; $442c: $2d
    inc sp                                        ; $442d: $33
    add b                                         ; $442e: $80
    inc a                                         ; $442f: $3c
    ld b, b                                       ; $4430: $40
    ccf                                           ; $4431: $3f
    sub b                                         ; $4432: $90
    dec de                                        ; $4433: $1b
    ld b, a                                       ; $4434: $47
    sub e                                         ; $4435: $93
    xor a                                         ; $4436: $af
    db $ec                                        ; $4437: $ec
    cp $05                                        ; $4438: $fe $05
    ld [hl], b                                    ; $443a: $70
    ld [c], a                                     ; $443b: $e2
    pop hl                                        ; $443c: $e1
    and a                                         ; $443d: $a7
    rrca                                          ; $443e: $0f
    adc b                                         ; $443f: $88
    ld de, $1cd3                                  ; $4440: $11 $d3 $1c
    daa                                           ; $4443: $27
    or c                                          ; $4444: $b1
    sub [hl]                                      ; $4445: $96
    db $d3                                        ; $4446: $d3
    sub h                                         ; $4447: $94
    push bc                                       ; $4448: $c5
    push de                                       ; $4449: $d5
    sbc $32                                       ; $444a: $de $32
    db $ed                                        ; $444c: $ed
    or d                                          ; $444d: $b2
    adc [hl]                                      ; $444e: $8e

jr_038_444f:
    ld l, d                                       ; $444f: $6a
    ld c, e                                       ; $4450: $4b
    add a                                         ; $4451: $87
    xor $4d                                       ; $4452: $ee $4d
    dec l                                         ; $4454: $2d
    ld bc, $6d8d                                  ; $4455: $01 $8d $6d
    ld a, [c]                                     ; $4458: $f2
    sub l                                         ; $4459: $95
    db $dd                                        ; $445a: $dd
    cp a                                          ; $445b: $bf
    nop                                           ; $445c: $00
    and [hl]                                      ; $445d: $a6
    add hl, sp                                    ; $445e: $39
    daa                                           ; $445f: $27
    or c                                          ; $4460: $b1
    sub [hl]                                      ; $4461: $96
    db $d3                                        ; $4462: $d3
    sub h                                         ; $4463: $94
    push bc                                       ; $4464: $c5
    push de                                       ; $4465: $d5
    sbc $32                                       ; $4466: $de $32
    db $ed                                        ; $4468: $ed
    or d                                          ; $4469: $b2
    adc [hl]                                      ; $446a: $8e
    ld l, d                                       ; $446b: $6a
    ld c, e                                       ; $446c: $4b
    add a                                         ; $446d: $87
    xor $4d                                       ; $446e: $ee $4d
    dec l                                         ; $4470: $2d
    ld bc, $6d8d                                  ; $4471: $01 $8d $6d
    ld a, [c]                                     ; $4474: $f2
    sub l                                         ; $4475: $95
    db $dd                                        ; $4476: $dd
    cp a                                          ; $4477: $bf
    nop                                           ; $4478: $00
    and [hl]                                      ; $4479: $a6
    add hl, sp                                    ; $447a: $39
    ld c, h                                       ; $447b: $4c
    push bc                                       ; $447c: $c5
    sbc a                                         ; $447d: $9f
    xor e                                         ; $447e: $ab
    cp l                                          ; $447f: $bd
    dec e                                         ; $4480: $1d
    db $ed                                        ; $4481: $ed
    xor h                                         ; $4482: $ac
    ld e, d                                       ; $4483: $5a
    add hl, bc                                    ; $4484: $09
    ld a, a                                       ; $4485: $7f
    push de                                       ; $4486: $d5
    pop hl                                        ; $4487: $e1
    adc [hl]                                      ; $4488: $8e
    or b                                          ; $4489: $b0
    call c, Call_000_1d2c                         ; $448a: $dc $2c $1d
    cp h                                          ; $448d: $bc
    or [hl]                                       ; $448e: $b6
    ret                                           ; $448f: $c9


    ld d, a                                       ; $4490: $57
    halt                                          ; $4491: $76
    rst $38                                       ; $4492: $ff
    ld [bc], a                                    ; $4493: $02
    sbc b                                         ; $4494: $98
    and $b3                                       ; $4495: $e6 $b3
    ld a, l                                       ; $4497: $7d
    call nz, $e0ea                                ; $4498: $c4 $ea $e0
    xor a                                         ; $449b: $af
    inc b                                         ; $449c: $04
    ld c, c                                       ; $449d: $49
    ld [$26d8], a                                 ; $449e: $ea $d8 $26
    ld a, a                                       ; $44a1: $7f
    add l                                         ; $44a2: $85
    ld [hl], l                                    ; $44a3: $75
    inc l                                         ; $44a4: $2c
    jr c, jr_038_444f                             ; $44a5: $38 $a8

    scf                                           ; $44a7: $37
    call Call_038_4c01                            ; $44a8: $cd $01 $4c
    push bc                                       ; $44ab: $c5
    sbc a                                         ; $44ac: $9f
    sra b                                         ; $44ad: $cb $28
    ld h, e                                       ; $44af: $63
    ld [$5622], sp                                ; $44b0: $08 $22 $56
    ld e, a                                       ; $44b3: $5f
    sub d                                         ; $44b4: $92
    and $8c                                       ; $44b5: $e6 $8c
    ld a, [hl]                                    ; $44b7: $7e
    ld l, $59                                     ; $44b8: $2e $59
    dec e                                         ; $44ba: $1d
    dec a                                         ; $44bb: $3d
    pop hl                                        ; $44bc: $e1
    dec hl                                        ; $44bd: $2b
    sub $02                                       ; $44be: $d6 $02
    ld a, [c]                                     ; $44c0: $f2
    rst $30                                       ; $44c1: $f7
    and [hl]                                      ; $44c2: $a6
    ld d, $2c                                     ; $44c3: $16 $2c
    ld [de], a                                    ; $44c5: $12
    db $fc                                        ; $44c6: $fc
    ld b, c                                       ; $44c7: $41
    sbc d                                         ; $44c8: $9a
    inc bc                                        ; $44c9: $03
    or e                                          ; $44ca: $b3
    call nz, $576a                                ; $44cb: $c4 $6a $57
    add a                                         ; $44ce: $87
    ld a, e                                       ; $44cf: $7b
    add d                                         ; $44d0: $82
    add d                                         ; $44d1: $82
    rrca                                          ; $44d2: $0f
    sbc $12                                       ; $44d3: $de $12
    inc h                                         ; $44d5: $24
    add hl, hl                                    ; $44d6: $29
    ld [hl], e                                    ; $44d7: $73
    rst $38                                       ; $44d8: $ff
    add b                                         ; $44d9: $80
    db $d3                                        ; $44da: $d3
    inc e                                         ; $44db: $1c
    call $b301                                    ; $44dc: $cd $01 $b3
    db $fc                                        ; $44df: $fc
    call $bdaa                                    ; $44e0: $cd $aa $bd
    dec e                                         ; $44e3: $1d
    adc h                                         ; $44e4: $8c
    adc e                                         ; $44e5: $8b
    ld a, [de]                                    ; $44e6: $1a
    ret nz                                        ; $44e7: $c0

    db $db                                        ; $44e8: $db
    db $e4                                        ; $44e9: $e4
    adc a                                         ; $44ea: $8f
    sbc $34                                       ; $44eb: $de $34
    rlca                                          ; $44ed: $07
    call z, Call_000_1c7f                         ; $44ee: $cc $7f $1c
    call nc, $ba9d                                ; $44f1: $d4 $9d $ba
    inc hl                                        ; $44f4: $23
    inc h                                         ; $44f5: $24
    ld d, c                                       ; $44f6: $51
    add c                                         ; $44f7: $81
    and l                                         ; $44f8: $a5
    inc b                                         ; $44f9: $04
    ld c, c                                       ; $44fa: $49
    xor d                                         ; $44fb: $aa
    cp l                                          ; $44fc: $bd
    dec e                                         ; $44fd: $1d
    ld hl, $0a89                                  ; $44fe: $21 $89 $0a
    inc l                                         ; $4501: $2c
    scf                                           ; $4502: $37
    or l                                          ; $4503: $b5
    jp c, $cf13                                   ; $4504: $da $13 $cf

    or e                                          ; $4507: $b3
    ld h, b                                       ; $4508: $60
    sub c                                         ; $4509: $91
    ldh [rIF], a                                  ; $450a: $e0 $0f
    jp nc, $cc1c                                  ; $450c: $d2 $1c $cc

    ld a, a                                       ; $450f: $7f
    inc e                                         ; $4510: $1c
    call nc, $ba9d                                ; $4511: $d4 $9d $ba
    inc hl                                        ; $4514: $23
    inc h                                         ; $4515: $24
    ld d, c                                       ; $4516: $51
    add c                                         ; $4517: $81
    and l                                         ; $4518: $a5
    inc b                                         ; $4519: $04
    ld c, c                                       ; $451a: $49
    xor d                                         ; $451b: $aa
    cp l                                          ; $451c: $bd
    dec e                                         ; $451d: $1d
    ld hl, $0a89                                  ; $451e: $21 $89 $0a
    inc l                                         ; $4521: $2c
    scf                                           ; $4522: $37
    or l                                          ; $4523: $b5
    jp c, $cf13                                   ; $4524: $da $13 $cf

    or e                                          ; $4527: $b3
    ld h, b                                       ; $4528: $60
    sub c                                         ; $4529: $91
    ldh [rIF], a                                  ; $452a: $e0 $0f
    jp nc, $cd1c                                  ; $452c: $d2 $1c $cd

    ld bc, $01cd                                  ; $452f: $01 $cd $01
    or e                                          ; $4532: $b3
    call nz, Call_038_776a                        ; $4533: $c4 $6a $77
    inc b                                         ; $4536: $04
    db $fd                                        ; $4537: $fd
    adc b                                         ; $4538: $88
    ld e, [hl]                                    ; $4539: $5e
    ld sp, hl                                     ; $453a: $f9
    ld [$be98], a                                 ; $453b: $ea $98 $be
    di                                            ; $453e: $f3
    ld e, d                                       ; $453f: $5a
    ret nz                                        ; $4540: $c0

    and c                                         ; $4541: $a1
    inc hl                                        ; $4542: $23
    ld d, e                                       ; $4543: $53

Jump_038_4544:
    sbc e                                         ; $4544: $9b
    dec [hl]                                      ; $4545: $35
    ld [hl], e                                    ; $4546: $73
    and $ad                                       ; $4547: $e6 $ad
    ld c, $57                                     ; $4549: $0e $57
    xor e                                         ; $454b: $ab
    cp l                                          ; $454c: $bd
    ld d, c                                       ; $454d: $51
    ld l, a                                       ; $454e: $6f
    ld b, a                                       ; $454f: $47
    sub b                                         ; $4550: $90
    ld d, $c1                                     ; $4551: $16 $c1
    ld l, c                                       ; $4553: $69
    ld c, $b3                                     ; $4554: $0e $b3
    call nz, $d76a                                ; $4556: $c4 $6a $d7
    or c                                          ; $4559: $b1
    sbc $8e                                       ; $455a: $de $8e
    halt                                          ; $455c: $76
    halt                                          ; $455d: $76
    xor [hl]                                      ; $455e: $ae
    or $76                                        ; $455f: $f6 $76
    ld d, $aa                                     ; $4561: $16 $aa
    ld hl, sp+$2b                                 ; $4563: $f8 $2b
    ld e, c                                       ; $4565: $59
    ld [hl], l                                    ; $4566: $75
    ret nc                                        ; $4567: $d0

    ld [bc], a                                    ; $4568: $02
    ld [c], a                                     ; $4569: $e2
    ld h, b                                       ; $456a: $60
    cp l                                          ; $456b: $bd
    ld l, c                                       ; $456c: $69
    ld c, $cd                                     ; $456d: $0e $cd
    ld bc, $c7b3                                  ; $456f: $01 $b3 $c7
    ld [hl], c                                    ; $4572: $71
    inc [hl]                                      ; $4573: $34
    ld c, c                                       ; $4574: $49
    ld a, $bf                                     ; $4575: $3e $bf
    ld a, [hl-]                                   ; $4577: $3a
    cp e                                          ; $4578: $bb
    rlca                                          ; $4579: $07
    add e                                         ; $457a: $83
    ld d, d                                       ; $457b: $52
    ld h, e                                       ; $457c: $63
    add a                                         ; $457d: $87
    ld c, e                                       ; $457e: $4b
    db $ec                                        ; $457f: $ec
    ld e, d                                       ; $4580: $5a
    adc [hl]                                      ; $4581: $8e
    ldh [$af], a                                  ; $4582: $e0 $af
    ld [hl], a                                    ; $4584: $77
    ld h, a                                       ; $4585: $67
    ld l, c                                       ; $4586: $69
    ld c, $cd                                     ; $4587: $0e $cd
    ld bc, $01cd                                  ; $4589: $01 $cd $01
    adc h                                         ; $458c: $8c
    ld a, [hl]                                    ; $458d: $7e
    ld l, $59                                     ; $458e: $2e $59
    add hl, bc                                    ; $4590: $09
    adc c                                         ; $4591: $89
    rst $18                                       ; $4592: $df
    ld c, d                                       ; $4593: $4a
    ld d, [hl]                                    ; $4594: $56
    ld b, a                                       ; $4595: $47
    add hl, de                                    ; $4596: $19
    adc l                                         ; $4597: $8d
    db $fc                                        ; $4598: $fc
    dec b                                         ; $4599: $05
    ld a, a                                       ; $459a: $7f
    add b                                         ; $459b: $80
    ld l, d                                       ; $459c: $6a
    pop bc                                        ; $459d: $c1
    ld [hl+], a                                   ; $459e: $22
    pop bc                                        ; $459f: $c1
    rra                                           ; $45a0: $1f
    and h                                         ; $45a1: $a4
    add hl, sp                                    ; $45a2: $39
    ld c, h                                       ; $45a3: $4c
    push bc                                       ; $45a4: $c5
    sbc a                                         ; $45a5: $9f
    xor e                                         ; $45a6: $ab
    jp Jump_000_399d                              ; $45a7: $c3 $9d $39


    add h                                         ; $45aa: $84
    ld a, e                                       ; $45ab: $7b
    ld [c], a                                     ; $45ac: $e2
    ld de, $c05f                                  ; $45ad: $11 $5f $c0
    ld l, c                                       ; $45b0: $69
    ld c, $4c                                     ; $45b1: $0e $4c
    push bc                                       ; $45b3: $c5
    sbc a                                         ; $45b4: $9f
    xor e                                         ; $45b5: $ab
    jp Jump_000_399d                              ; $45b6: $c3 $9d $39


    add h                                         ; $45b9: $84
    ld a, e                                       ; $45ba: $7b

Call_038_45bb:
    ld [c], a                                     ; $45bb: $e2
    ld de, $c05f                                  ; $45bc: $11 $5f $c0
    ld l, c                                       ; $45bf: $69
    ld c, $cd                                     ; $45c0: $0e $cd
    ld bc, $01cd                                  ; $45c2: $01 $cd $01
    call $8c01                                    ; $45c5: $cd $01 $8c
    ld a, [hl]                                    ; $45c8: $7e
    ld l, $59                                     ; $45c9: $2e $59
    add hl, bc                                    ; $45cb: $09
    adc c                                         ; $45cc: $89
    rst $18                                       ; $45cd: $df
    ld c, d                                       ; $45ce: $4a
    ld d, [hl]                                    ; $45cf: $56
    ld b, a                                       ; $45d0: $47
    add hl, de                                    ; $45d1: $19
    adc l                                         ; $45d2: $8d
    db $fc                                        ; $45d3: $fc
    dec b                                         ; $45d4: $05
    ld a, a                                       ; $45d5: $7f
    add b                                         ; $45d6: $80
    ld l, d                                       ; $45d7: $6a
    pop bc                                        ; $45d8: $c1
    ld [hl+], a                                   ; $45d9: $22
    pop bc                                        ; $45da: $c1
    rra                                           ; $45db: $1f
    and h                                         ; $45dc: $a4
    add hl, sp                                    ; $45dd: $39
    call $cd01                                    ; $45de: $cd $01 $cd
    ld bc, $01cd                                  ; $45e1: $01 $cd $01
    call $cd01                                    ; $45e4: $cd $01 $cd
    ld bc, $01cd                                  ; $45e7: $01 $cd $01
    call $cd01                                    ; $45ea: $cd $01 $cd
    ld bc, $4b73                                  ; $45ed: $01 $73 $4b
    db $10                                        ; $45f0: $10
    ld b, h                                       ; $45f1: $44
    sub e                                         ; $45f2: $93
    db $e4                                        ; $45f3: $e4
    di                                            ; $45f4: $f3
    dec hl                                        ; $45f5: $2b
    call $8c01                                    ; $45f6: $cd $01 $8c
    ld a, [hl]                                    ; $45f9: $7e
    ld l, [hl]                                    ; $45fa: $6e
    inc l                                         ; $45fb: $2c
    halt                                          ; $45fc: $76
    call nc, $fb75                                ; $45fd: $d4 $75 $fb
    sub h                                         ; $4600: $94
    inc e                                         ; $4601: $1c
    rst $00                                       ; $4602: $c7
    ld h, c                                       ; $4603: $61
    add hl, hl                                    ; $4604: $29
    ld e, c                                       ; $4605: $59
    dec e                                         ; $4606: $1d
    dec e                                         ; $4607: $1d
    add hl, de                                    ; $4608: $19
    nop                                           ; $4609: $00
    sub [hl]                                      ; $460a: $96
    db $fd                                        ; $460b: $fd
    db $fc                                        ; $460c: $fc
    ld bc, $656a                                  ; $460d: $01 $6a $65
    ld c, d                                       ; $4610: $4a
    db $d3                                        ; $4611: $d3
    inc e                                         ; $4612: $1c
    adc h                                         ; $4613: $8c
    ld a, [hl]                                    ; $4614: $7e
    xor $7e                                       ; $4615: $ee $7e
    cp $ca                                        ; $4617: $fe $ca
    jr z, jr_038_467e                             ; $4619: $28 $63

    ld [$5622], sp                                ; $461b: $08 $22 $56
    ld e, a                                       ; $461e: $5f
    ld d, d                                       ; $461f: $52
    or d                                          ; $4620: $b2
    ld [de], a                                    ; $4621: $12
    ld [de], a                                    ; $4622: $12
    cp a                                          ; $4623: $bf
    and l                                         ; $4624: $a5
    add hl, sp                                    ; $4625: $39
    call $cd01                                    ; $4626: $cd $01 $cd
    ld bc, $01cd                                  ; $4629: $01 $cd $01
    call $cd01                                    ; $462c: $cd $01 $cd
    ld bc, $01cd                                  ; $462f: $01 $cd $01
    call $cd01                                    ; $4632: $cd $01 $cd
    ld bc, $01cd                                  ; $4635: $01 $cd $01
    call $8c01                                    ; $4638: $cd $01 $8c
    ld a, [hl]                                    ; $463b: $7e
    ld l, $59                                     ; $463c: $2e $59
    dec e                                         ; $463e: $1d
    ld c, l                                       ; $463f: $4d
    cp $94                                        ; $4640: $fe $94
    ld e, [hl]                                    ; $4642: $5e
    ld [hl], a                                    ; $4643: $77
    ld a, e                                       ; $4644: $7b
    daa                                           ; $4645: $27
    sbc [hl]                                      ; $4646: $9e
    push bc                                       ; $4647: $c5
    ld [$0e69], sp                                ; $4648: $08 $69 $0e
    ld [hl], e                                    ; $464b: $73
    add hl, de                                    ; $464c: $19
    ret nz                                        ; $464d: $c0

    ld c, l                                       ; $464e: $4d
    or [hl]                                       ; $464f: $b6
    inc e                                         ; $4650: $1c

Call_038_4651:
    or c                                          ; $4651: $b1

Jump_038_4652:
    xor $e0                                       ; $4652: $ee $e0
    dec h                                         ; $4654: $25
    push de                                       ; $4655: $d5
    ld a, $3a                                     ; $4656: $3e $3a

Jump_038_4658:
    or a                                          ; $4658: $b7
    ld e, h                                       ; $4659: $5c
    sub h                                         ; $465a: $94

Jump_038_465b:
    and [hl]                                      ; $465b: $a6
    add hl, sp                                    ; $465c: $39
    adc h                                         ; $465d: $8c
    ld a, [hl]                                    ; $465e: $7e
    ld l, $59                                     ; $465f: $2e $59
    dec [hl]                                      ; $4661: $35
    ld sp, hl                                     ; $4662: $f9
    ld h, a                                       ; $4663: $67
    ld [de], a                                    ; $4664: $12
    ld a, [de]                                    ; $4665: $1a
    sbc e                                         ; $4666: $9b
    ld c, h                                       ; $4667: $4c
    ld [bc], a                                    ; $4668: $02
    ld [hl], b                                    ; $4669: $70
    sbc d                                         ; $466a: $9a
    inc bc                                        ; $466b: $03
    adc h                                         ; $466c: $8c
    ld a, [hl]                                    ; $466d: $7e
    xor $7e                                       ; $466e: $ee $7e
    cp $ca                                        ; $4670: $fe $ca
    jr z, jr_038_46d7                             ; $4672: $28 $63

    ld [$5622], sp                                ; $4674: $08 $22 $56
    ld e, a                                       ; $4677: $5f
    sub d                                         ; $4678: $92
    and $c3                                       ; $4679: $e6 $c3
    push hl                                       ; $467b: $e5
    ld a, l                                       ; $467c: $7d
    ld a, [bc]                                    ; $467d: $0a

jr_038_467e:
    xor [hl]                                      ; $467e: $ae
    halt                                          ; $467f: $76
    ld l, h                                       ; $4680: $6c
    ld b, a                                       ; $4681: $47
    dec sp                                        ; $4682: $3b
    sbc $7e                                       ; $4683: $de $7e
    cp $00                                        ; $4685: $fe $00
    inc sp                                        ; $4687: $33
    inc hl                                        ; $4688: $23
    ld a, a                                       ; $4689: $7f
    sbc $5b                                       ; $468a: $de $5b
    sbc d                                         ; $468c: $9a
    inc bc                                        ; $468d: $03
    jp $a6e5                                      ; $468e: $c3 $e5 $a6


    ld d, [hl]                                    ; $4691: $56
    cp e                                          ; $4692: $bb
    ret                                           ; $4693: $c9


    ld d, a                                       ; $4694: $57
    halt                                          ; $4695: $76
    rst $38                                       ; $4696: $ff
    ld [bc], a                                    ; $4697: $02
    ret c                                         ; $4698: $d8

    inc hl                                        ; $4699: $23
    and b                                         ; $469a: $a0
    jp c, $e747                                   ; $469b: $da $47 $e7

    cp $b2                                        ; $469e: $fe $b2
    ld [$7f78], a                                 ; $46a0: $ea $78 $7f
    or e                                          ; $46a3: $b3
    inc [hl]                                      ; $46a4: $34
    rlca                                          ; $46a5: $07
    call $b301                                    ; $46a6: $cd $01 $b3
    ld d, b                                       ; $46a9: $50
    ld [de], a                                    ; $46aa: $12
    ld a, a                                       ; $46ab: $7f
    ldh [$7e], a                                  ; $46ac: $e0 $7e
    add l                                         ; $46ae: $85
    push de                                       ; $46af: $d5
    sub [hl]                                      ; $46b0: $96
    ld c, $0b                                     ; $46b1: $0e $0b
    sub [hl]                                      ; $46b3: $96
    add $05                                       ; $46b4: $c6 $05
    rst $08                                       ; $46b6: $cf
    or a                                          ; $46b7: $b7
    inc [hl]                                      ; $46b8: $34
    rlca                                          ; $46b9: $07
    call $b301                                    ; $46ba: $cd $01 $b3
    call nz, $576a                                ; $46bd: $c4 $6a $57
    ld a, e                                       ; $46c0: $7b
    rr h                                          ; $46c1: $cb $1c
    ld [$a667], sp                                ; $46c3: $08 $67 $a6
    sbc l                                         ; $46c6: $9d
    db $dd                                        ; $46c7: $dd
    ld a, [c]                                     ; $46c8: $f2
    sbc h                                         ; $46c9: $9c
    sbc c                                         ; $46ca: $99
    ld c, l                                       ; $46cb: $4d
    ld [hl], e                                    ; $46cc: $73
    call $8c01                                    ; $46cd: $cd $01 $8c
    ld a, [hl]                                    ; $46d0: $7e
    ld l, $59                                     ; $46d1: $2e $59
    dec [hl]                                      ; $46d3: $35
    ld sp, hl                                     ; $46d4: $f9
    ld h, a                                       ; $46d5: $67
    ld [de], a                                    ; $46d6: $12

jr_038_46d7:
    ld a, [de]                                    ; $46d7: $1a
    sbc e                                         ; $46d8: $9b
    ld c, h                                       ; $46d9: $4c
    ld [bc], a                                    ; $46da: $02
    ld [hl], b                                    ; $46db: $70
    sbc d                                         ; $46dc: $9a
    inc bc                                        ; $46dd: $03
    call Call_038_4c01                            ; $46de: $cd $01 $4c
    push bc                                       ; $46e1: $c5
    sbc a                                         ; $46e2: $9f
    dec sp                                        ; $46e3: $3b
    ld d, l                                       ; $46e4: $55
    sub e                                         ; $46e5: $93
    ld c, c                                       ; $46e6: $49
    ld l, a                                       ; $46e7: $6f
    dec l                                         ; $46e8: $2d
    dec h                                         ; $46e9: $25

jr_038_46ea:
    ld c, b                                       ; $46ea: $48
    jp nc, Jump_000_2fd9                          ; $46eb: $d2 $d9 $2f

    ld h, c                                       ; $46ee: $61
    dec l                                         ; $46ef: $2d
    sub b                                         ; $46f0: $90
    and $b3                                       ; $46f1: $e6 $b3
    cp $cc                                        ; $46f3: $fe $cc
    push de                                       ; $46f5: $d5
    sbc $7a                                       ; $46f6: $de $7a
    add c                                         ; $46f8: $81
    ld a, [hl]                                    ; $46f9: $7e
    ld b, l                                       ; $46fa: $45
    ld a, b                                       ; $46fb: $78
    cp l                                          ; $46fc: $bd
    sbc l                                         ; $46fd: $9d
    db $fd                                        ; $46fe: $fd
    ld [de], a                                    ; $46ff: $12
    sub $02                                       ; $4700: $d6 $02
    ld l, c                                       ; $4702: $69
    ld c, $c3                                     ; $4703: $0e $c3
    inc h                                         ; $4705: $24
    ld [hl], $eb                                  ; $4706: $36 $eb
    db $ec                                        ; $4708: $ec
    sub a                                         ; $4709: $97
    or b                                          ; $470a: $b0
    ld d, $28                                     ; $470b: $16 $28
    ld e, c                                       ; $470d: $59
    dec e                                         ; $470e: $1d
    dec e                                         ; $470f: $1d
    adc d                                         ; $4710: $8a
    jr nz, jr_038_46ea                            ; $4711: $20 $d7

    ld e, [hl]                                    ; $4713: $5e
    ld b, a                                       ; $4714: $47
    ld a, b                                       ; $4715: $78
    ld [c], a                                     ; $4716: $e2
    cp c                                          ; $4717: $b9
    sub l                                         ; $4718: $95
    inc e                                         ; $4719: $1c
    ld l, c                                       ; $471a: $69
    ld c, $8c                                     ; $471b: $0e $8c
    ld a, [hl]                                    ; $471d: $7e
    ld l, $59                                     ; $471e: $2e $59
    add hl, bc                                    ; $4720: $09
    adc c                                         ; $4721: $89
    rst $18                                       ; $4722: $df
    cp d                                          ; $4723: $ba
    sbc a                                         ; $4724: $9f
    cp a                                          ; $4725: $bf
    ld [hl-], a                                   ; $4726: $32
    jp z, $8218                                   ; $4727: $ca $18 $82

    adc b                                         ; $472a: $88
    push de                                       ; $472b: $d5
    sub a                                         ; $472c: $97
    and h                                         ; $472d: $a4
    add hl, sp                                    ; $472e: $39
    or e                                          ; $472f: $b3
    call nz, $576a                                ; $4730: $c4 $6a $57
    ld a, a                                       ; $4733: $7f
    db $ec                                        ; $4734: $ec
    and b                                         ; $4735: $a0
    add l                                         ; $4736: $85
    ld a, [de]                                    ; $4737: $1a
    ret z                                         ; $4738: $c8

    ldh [$0e], a                                  ; $4739: $e0 $0e
    adc a                                         ; $473b: $8f
    ld a, l                                       ; $473c: $7d
    sub a                                         ; $473d: $97
    ld l, h                                       ; $473e: $6c
    sbc d                                         ; $473f: $9a
    inc bc                                        ; $4740: $03
    call $cd01                                    ; $4741: $cd $01 $cd
    ld bc, $01cd                                  ; $4744: $01 $cd $01
    call $8c01                                    ; $4747: $cd $01 $8c
    ld a, [hl]                                    ; $474a: $7e
    ld l, $59                                     ; $474b: $2e $59
    dec e                                         ; $474d: $1d
    sbc l                                         ; $474e: $9d
    rst $10                                       ; $474f: $d7
    jp nz, $e05e                                  ; $4750: $c2 $5e $e0

    push af                                       ; $4753: $f5
    halt                                          ; $4754: $76
    call nz, Call_000_1225                        ; $4755: $c4 $25 $12
    ld a, [$3492]                                 ; $4758: $fa $92 $34
    rlca                                          ; $475b: $07
    jp Jump_038_4b7c                              ; $475c: $c3 $7c $4b


    inc a                                         ; $475f: $3c
    ld b, $08                                     ; $4760: $06 $08
    ld d, a                                       ; $4762: $57
    ld a, a                                       ; $4763: $7f
    db $ec                                        ; $4764: $ec
    call c, $8456                                 ; $4765: $dc $56 $84
    add hl, hl                                    ; $4768: $29
    sbc $e4                                       ; $4769: $de $e4
    dec hl                                        ; $476b: $2b
    ld c, b                                       ; $476c: $48
    ld [hl], e                                    ; $476d: $73
    or e                                          ; $476e: $b3
    call nz, $576a                                ; $476f: $c4 $6a $57
    ld a, e                                       ; $4772: $7b
    dec hl                                        ; $4773: $2b
    pop bc                                        ; $4774: $c1
    rra                                           ; $4775: $1f
    ld b, h                                       ; $4776: $44
    and $2d                                       ; $4777: $e6 $2d
    ld b, c                                       ; $4779: $41
    jp $5799                                      ; $477a: $c3 $99 $57


    ld a, e                                       ; $477d: $7b
    set 4, h                                      ; $477e: $cb $e4
    adc a                                         ; $4780: $8f
    sub d                                         ; $4781: $92
    db $10                                        ; $4782: $10
    ld c, l                                       ; $4783: $4d
    db $d3                                        ; $4784: $d3
    inc e                                         ; $4785: $1c
    jp Jump_038_4b7c                              ; $4786: $c3 $7c $4b


    inc a                                         ; $4789: $3c
    ld b, $08                                     ; $478a: $06 $08
    ld d, a                                       ; $478c: $57
    add a                                         ; $478d: $87
    ld c, e                                       ; $478e: $4b
    call $b57a                                    ; $478f: $cd $7a $b5
    or a                                          ; $4792: $b7
    ld c, h                                       ; $4793: $4c
    cp $3e                                        ; $4794: $fe $3e
    ld a, a                                       ; $4796: $7f
    ld b, h                                       ; $4797: $44
    ld h, h                                       ; $4798: $64
    ld c, d                                       ; $4799: $4a
    cp h                                          ; $479a: $bc
    ld l, c                                       ; $479b: $69
    ld c, $b3                                     ; $479c: $0e $b3
    adc l                                         ; $479e: $8d
    adc l                                         ; $479f: $8d
    xor [hl]                                      ; $47a0: $ae
    cp $d8                                        ; $47a1: $fe $d8
    inc de                                        ; $47a3: $13
    cp [hl]                                       ; $47a4: $be
    ld h, d                                       ; $47a5: $62
    dec l                                         ; $47a6: $2d
    jr nz, jr_038_4828                            ; $47a7: $20 $7f

    ld l, a                                       ; $47a9: $6f
    inc de                                        ; $47aa: $13
    rst $08                                       ; $47ab: $cf
    sub l                                         ; $47ac: $95
    ld [$9a68], sp                                ; $47ad: $08 $68 $9a
    and $b3                                       ; $47b0: $e6 $b3
    adc l                                         ; $47b2: $8d
    adc l                                         ; $47b3: $8d
    xor [hl]                                      ; $47b4: $ae
    cp $d8                                        ; $47b5: $fe $d8
    inc de                                        ; $47b7: $13
    cp [hl]                                       ; $47b8: $be
    ld h, d                                       ; $47b9: $62
    dec l                                         ; $47ba: $2d
    jr nz, jr_038_483c                            ; $47bb: $20 $7f

    ld l, a                                       ; $47bd: $6f
    inc de                                        ; $47be: $13
    rst $08                                       ; $47bf: $cf

jr_038_47c0:
    sub l                                         ; $47c0: $95
    ld [$9a68], sp                                ; $47c1: $08 $68 $9a
    and $4c                                       ; $47c4: $e6 $4c
    push bc                                       ; $47c6: $c5
    sbc a                                         ; $47c7: $9f
    xor e                                         ; $47c8: $ab
    cp l                                          ; $47c9: $bd
    ld h, l                                       ; $47ca: $65
    add d                                         ; $47cb: $82
    ld h, e                                       ; $47cc: $63
    xor e                                         ; $47cd: $ab
    dec l                                         ; $47ce: $2d
    dec e                                         ; $47cf: $1d
    db $ed                                        ; $47d0: $ed
    ld b, b                                       ; $47d1: $40
    ld l, a                                       ; $47d2: $6f
    sbc d                                         ; $47d3: $9a
    inc bc                                        ; $47d4: $03
    adc h                                         ; $47d5: $8c
    ld a, [hl]                                    ; $47d6: $7e
    ld l, $59                                     ; $47d7: $2e $59
    ld c, c                                       ; $47d9: $49
    add hl, de                                    ; $47da: $19
    push hl                                       ; $47db: $e5
    ld a, [de]                                    ; $47dc: $1a
    rst $00                                       ; $47dd: $c7
    db $db                                        ; $47de: $db
    db $e4                                        ; $47df: $e4
    ld c, a                                       ; $47e0: $4f
    xor c                                         ; $47e1: $a9
    db $d3                                        ; $47e2: $d3
    inc e                                         ; $47e3: $1c
    or e                                          ; $47e4: $b3
    call nz, $576a                                ; $47e5: $c4 $6a $57
    add a                                         ; $47e8: $87
    sbc e                                         ; $47e9: $9b
    db $fc                                        ; $47ea: $fc
    ld b, l                                       ; $47eb: $45
    add $4c                                       ; $47ec: $c6 $4c
    inc a                                         ; $47ee: $3c
    ld [c], a                                     ; $47ef: $e2
    dec bc                                        ; $47f0: $0b
    jr c, jr_038_47c0                             ; $47f1: $38 $cd

    ld bc, $c54c                                  ; $47f3: $01 $4c $c5
    sbc a                                         ; $47f6: $9f
    sbc e                                         ; $47f7: $9b
    db $fc                                        ; $47f8: $fc
    inc sp                                        ; $47f9: $33
    add hl, bc                                    ; $47fa: $09
    db $dd                                        ; $47fb: $dd
    jr c, jr_038_4838                             ; $47fc: $38 $3a

    xor a                                         ; $47fe: $af
    add l                                         ; $47ff: $85
    add [hl]                                      ; $4800: $86
    ld sp, $01cd                                  ; $4801: $31 $cd $01
    ld c, h                                       ; $4804: $4c
    push bc                                       ; $4805: $c5
    sbc a                                         ; $4806: $9f
    cp e                                          ; $4807: $bb
    sbc a                                         ; $4808: $9f
    cp a                                          ; $4809: $bf
    ld l, d                                       ; $480a: $6a
    rra                                           ; $480b: $1f
    ld h, l                                       ; $480c: $65
    sub h                                         ; $480d: $94
    ld sp, $1104                                  ; $480e: $31 $04 $11
    xor e                                         ; $4811: $ab
    cpl                                           ; $4812: $2f
    sbc c                                         ; $4813: $99
    ld a, b                                       ; $4814: $78
    call nc, $bc47                                ; $4815: $d4 $47 $bc
    ld e, a                                       ; $4818: $5f
    ld [bc], a                                    ; $4819: $02
    ld l, c                                       ; $481a: $69
    ld c, $b3                                     ; $481b: $0e $b3
    call nz, $976a                                ; $481d: $c4 $6a $97
    xor h                                         ; $4820: $ac
    xor d                                         ; $4821: $aa
    dec e                                         ; $4822: $1d
    db $eb                                        ; $4823: $eb
    and e                                         ; $4824: $a3
    sbc e                                         ; $4825: $9b
    ret z                                         ; $4826: $c8

    rra                                           ; $4827: $1f

jr_038_4828:
    add d                                         ; $4828: $82
    or a                                          ; $4829: $b7
    di                                            ; $482a: $f3
    inc l                                         ; $482b: $2c
    ld e, b                                       ; $482c: $58
    inc h                                         ; $482d: $24
    ld hl, sp-$7d                                 ; $482e: $f8 $83
    inc [hl]                                      ; $4830: $34
    rlca                                          ; $4831: $07
    jp Jump_000_3624                              ; $4832: $c3 $24 $36


    xor e                                         ; $4835: $ab
    cp $d8                                        ; $4836: $fe $d8

jr_038_4838:
    call z, $d708                                 ; $4838: $cc $08 $d7
    and e                                         ; $483b: $a3

jr_038_483c:
    ld e, [hl]                                    ; $483c: $5e
    ld [hl], a                                    ; $483d: $77
    ld d, $aa                                     ; $483e: $16 $aa
    ld hl, sp+$7b                                 ; $4840: $f8 $7b
    ld a, a                                       ; $4842: $7f
    dec [hl]                                      ; $4843: $35
    xor e                                         ; $4844: $ab
    ld hl, sp+$2b                                 ; $4845: $f8 $2b
    ld e, c                                       ; $4847: $59
    add hl, bc                                    ; $4848: $09
    adc c                                         ; $4849: $89
    rst $18                                       ; $484a: $df
    ld c, d                                       ; $484b: $4a
    ld d, [hl]                                    ; $484c: $56
    jp nc, $c161                                  ; $484d: $d2 $61 $c1

    jp nc, $e0b8                                  ; $4850: $d2 $b8 $e0

    ld sp, hl                                     ; $4853: $f9
    sub [hl]                                      ; $4854: $96
    and $cd                                       ; $4855: $e6 $cd
    ld bc, $17c9                                  ; $4857: $01 $c9 $17
    xor l                                         ; $485a: $ad
    ld c, $f7                                     ; $485b: $0e $f7
    add h                                         ; $485d: $84
    xor a                                         ; $485e: $af
    ld e, b                                       ; $485f: $58
    dec bc                                        ; $4860: $0b
    ret z                                         ; $4861: $c8

    rst $18                                       ; $4862: $df
    dec de                                        ; $4863: $1b
    ld [hl], c                                    ; $4864: $71
    ret                                           ; $4865: $c9


    ld h, c                                       ; $4866: $61
    jp c, Jump_038_6bc1                           ; $4867: $da $c1 $6b

    set 3, h                                      ; $486a: $cb $dc
    ccf                                           ; $486c: $3f
    ldh [$34], a                                  ; $486d: $e0 $34
    rlca                                          ; $486f: $07
    or e                                          ; $4870: $b3
    ret nc                                        ; $4871: $d0

    ldh a, [$73]                                  ; $4872: $f0 $73
    cp a                                          ; $4874: $bf
    jp nz, Jump_000_1f6a                          ; $4875: $c2 $6a $1f

    dec e                                         ; $4878: $1d
    ld [hl], l                                    ; $4879: $75
    db $dd                                        ; $487a: $dd
    ld a, $25                                     ; $487b: $3e $25
    rst $00                                       ; $487d: $c7
    ld [hl], c                                    ; $487e: $71
    ld e, b                                       ; $487f: $58
    jp nc, $b31c                                  ; $4880: $d2 $1c $b3

    call nz, $576a                                ; $4883: $c4 $6a $57
    ld a, a                                       ; $4886: $7f
    db $ec                                        ; $4887: $ec
    and b                                         ; $4888: $a0
    dec b                                         ; $4889: $05
    pop bc                                        ; $488a: $c1
    db $fc                                        ; $488b: $fc
    ld b, $ee                                     ; $488c: $06 $ee
    xor b                                         ; $488e: $a8
    ld a, a                                       ; $488f: $7f
    inc sp                                        ; $4890: $33
    and h                                         ; $4891: $a4
    add hl, sp                                    ; $4892: $39
    inc hl                                        ; $4893: $23
    cp [hl]                                       ; $4894: $be
    ld [hl+], a                                   ; $4895: $22
    ld e, h                                       ; $4896: $5c
    rst $00                                       ; $4897: $c7
    ld a, d                                       ; $4898: $7a
    ld a, e                                       ; $4899: $7b
    jp nz, $ac57                                  ; $489a: $c2 $57 $ac

    dec b                                         ; $489d: $05
    pop hl                                        ; $489e: $e1
    or e                                          ; $489f: $b3
    ld h, l                                       ; $48a0: $65
    dec e                                         ; $48a1: $1d
    sbc l                                         ; $48a2: $9d
    add e                                         ; $48a3: $83
    jp nc, $fc18                                  ; $48a4: $d2 $18 $fc

    xor e                                         ; $48a7: $ab
    dec l                                         ; $48a8: $2d
    ld l, c                                       ; $48a9: $69
    ld c, $8c                                     ; $48aa: $0e $8c

jr_038_48ac:
    ld a, [hl]                                    ; $48ac: $7e
    xor $7e                                       ; $48ad: $ee $7e
    cp $ca                                        ; $48af: $fe $ca
    jr z, jr_038_4916                             ; $48b1: $28 $63

    ld [$5622], sp                                ; $48b3: $08 $22 $56
    ld e, a                                       ; $48b6: $5f
    ld d, d                                       ; $48b7: $52
    or d                                          ; $48b8: $b2
    ld [de], a                                    ; $48b9: $12
    ld [de], a                                    ; $48ba: $12
    cp a                                          ; $48bb: $bf
    and l                                         ; $48bc: $a5
    add hl, sp                                    ; $48bd: $39
    adc h                                         ; $48be: $8c
    ld a, [hl]                                    ; $48bf: $7e
    ld l, $59                                     ; $48c0: $2e $59
    add hl, bc                                    ; $48c2: $09
    adc c                                         ; $48c3: $89
    rst $18                                       ; $48c4: $df
    cp d                                          ; $48c5: $ba
    sbc a                                         ; $48c6: $9f
    cp a                                          ; $48c7: $bf
    ld [hl-], a                                   ; $48c8: $32
    jp z, $8218                                   ; $48c9: $ca $18 $82

    adc b                                         ; $48cc: $88
    push de                                       ; $48cd: $d5
    sub a                                         ; $48ce: $97
    and h                                         ; $48cf: $a4
    add hl, sp                                    ; $48d0: $39
    ld c, h                                       ; $48d1: $4c
    push bc                                       ; $48d2: $c5
    sbc a                                         ; $48d3: $9f
    cp e                                          ; $48d4: $bb
    sbc a                                         ; $48d5: $9f
    cp a                                          ; $48d6: $bf
    ld h, $a9                                     ; $48d7: $26 $a9
    add e                                         ; $48d9: $83
    and l                                         ; $48da: $a5
    sub $97                                       ; $48db: $d6 $97
    jr c, jr_038_48ac                             ; $48dd: $38 $cd

    ld bc, $7e8c                                  ; $48df: $01 $8c $7e
    ld l, $59                                     ; $48e2: $2e $59
    add hl, bc                                    ; $48e4: $09
    adc c                                         ; $48e5: $89
    rst $18                                       ; $48e6: $df
    ld c, d                                       ; $48e7: $4a
    ld d, [hl]                                    ; $48e8: $56
    ld b, a                                       ; $48e9: $47
    ld b, a                                       ; $48ea: $47
    ld e, l                                       ; $48eb: $5d
    or a                                          ; $48ec: $b7
    ld c, a                                       ; $48ed: $4f
    ret                                           ; $48ee: $c9


    ld [hl], c                                    ; $48ef: $71
    inc e                                         ; $48f0: $1c
    sub [hl]                                      ; $48f1: $96
    inc [hl]                                      ; $48f2: $34
    rlca                                          ; $48f3: $07
    ld c, h                                       ; $48f4: $4c
    push bc                                       ; $48f5: $c5
    sbc a                                         ; $48f6: $9f
    xor e                                         ; $48f7: $ab
    jp Jump_000_399d                              ; $48f8: $c3 $9d $39


    add h                                         ; $48fb: $84
    ld a, e                                       ; $48fc: $7b
    ld [c], a                                     ; $48fd: $e2
    ld de, $c05f                                  ; $48fe: $11 $5f $c0

Call_038_4901:
    ld l, c                                       ; $4901: $69
    ld c, $a3                                     ; $4902: $0e $a3
    ld h, e                                       ; $4904: $63
    ld l, a                                       ; $4905: $6f
    and [hl]                                      ; $4906: $a6
    reti                                          ; $4907: $d9


    ld b, a                                       ; $4908: $47
    ld [hl], h                                    ; $4909: $74
    ld c, $23                                     ; $490a: $0e $23
    adc h                                         ; $490c: $8c
    ld l, b                                       ; $490d: $68
    sbc d                                         ; $490e: $9a
    add hl, de                                    ; $490f: $19
    ld sp, hl                                     ; $4910: $f9
    ld c, e                                       ; $4911: $4b
    inc h                                         ; $4912: $24
    jr nz, jr_038_491c                            ; $4913: $20 $07

    ld b, e                                       ; $4915: $43

jr_038_4916:
    rlca                                          ; $4916: $07
    ld l, $78                                     ; $4917: $2e $78
    cp [hl]                                       ; $4919: $be
    add hl, sp                                    ; $491a: $39
    rlca                                          ; $491b: $07

Jump_038_491c:
jr_038_491c:
    jp $f515                                      ; $491c: $c3 $15 $f5


    sbc $be                                       ; $491f: $de $be
    ld [hl+], a                                   ; $4921: $22
    sbc $57                                       ; $4922: $de $57
    sbc b                                         ; $4924: $98
    inc bc                                        ; $4925: $03
    daa                                           ; $4926: $27
    ld a, h                                       ; $4927: $7c
    push bc                                       ; $4928: $c5
    ld e, d                                       ; $4929: $5a
    db $10                                        ; $492a: $10
    ld a, $9b                                     ; $492b: $3e $9b
    add hl, de                                    ; $492d: $19
    ld sp, hl                                     ; $492e: $f9
    ld c, e                                       ; $492f: $4b
    inc h                                         ; $4930: $24
    jr nz, jr_038_493a                            ; $4931: $20 $07

    jp Jump_038_7f14                              ; $4933: $c3 $14 $7f


    rst $28                                       ; $4936: $ef
    xor a                                         ; $4937: $af
    and [hl]                                      ; $4938: $a6
    ld l, d                                       ; $4939: $6a

jr_038_493a:
    or e                                          ; $493a: $b3
    inc e                                         ; $493b: $1c
    inc hl                                        ; $493c: $23
    xor b                                         ; $493d: $a8
    ld b, e                                       ; $493e: $43
    ld e, e                                       ; $493f: $5b
    ld [hl-], a                                   ; $4940: $32
    inc hl                                        ; $4941: $23
    ld a, a                                       ; $4942: $7f
    adc c                                         ; $4943: $89
    inc b                                         ; $4944: $04
    db $e4                                        ; $4945: $e4
    ld c, h                                       ; $4946: $4c
    jp nc, $f738                                  ; $4947: $d2 $38 $f7

    cpl                                           ; $494a: $2f
    ld e, [hl]                                    ; $494b: $5e
    ld a, [$37b5]                                 ; $494c: $fa $b5 $37
    rlca                                          ; $494f: $07
    adc h                                         ; $4950: $8c
    ld [de], a                                    ; $4951: $12
    sbc e                                         ; $4952: $9b
    ld e, l                                       ; $4953: $5d
    nop                                           ; $4954: $00
    ld a, b                                       ; $4955: $78
    xor $f0                                       ; $4956: $ee $f0
    ret c                                         ; $4958: $d8

    db $ec                                        ; $4959: $ec
    ld l, a                                       ; $495a: $6f
    sub [hl]                                      ; $495b: $96
    inc bc                                        ; $495c: $03
    adc h                                         ; $495d: $8c
    ld [de], a                                    ; $495e: $12
    sbc e                                         ; $495f: $9b
    ld e, l                                       ; $4960: $5d
    nop                                           ; $4961: $00
    ld a, b                                       ; $4962: $78
    xor $bc                                       ; $4963: $ee $bc
    ld d, $1a                                     ; $4965: $16 $1a

jr_038_4967:
    add $4e                                       ; $4967: $c6 $4e
    sub [hl]                                      ; $4969: $96
    inc bc                                        ; $496a: $03
    daa                                           ; $496b: $27
    or c                                          ; $496c: $b1
    sub [hl]                                      ; $496d: $96
    db $d3                                        ; $496e: $d3
    sub h                                         ; $496f: $94
    ld b, l                                       ; $4970: $45
    ld l, l                                       ; $4971: $6d
    ld d, [hl]                                    ; $4972: $56
    ld l, l                                       ; $4973: $6d
    inc l                                         ; $4974: $2c
    db $d3                                        ; $4975: $d3
    add $1c                                       ; $4976: $c6 $1c
    ret                                           ; $4978: $c9


    ld d, a                                       ; $4979: $57
    halt                                          ; $497a: $76
    rst $38                                       ; $497b: $ff
    ld [bc], a                                    ; $497c: $02
    ld a, b                                       ; $497d: $78
    xor $08                                       ; $497e: $ee $08
    set 1, l                                      ; $4980: $cb $cd
    jp nc, Jump_038_72c9                          ; $4982: $d2 $c9 $72

    ret                                           ; $4985: $c9


    ld d, a                                       ; $4986: $57
    halt                                          ; $4987: $76
    rst $38                                       ; $4988: $ff
    ld [bc], a                                    ; $4989: $02
    ld a, b                                       ; $498a: $78
    xor $08                                       ; $498b: $ee $08
    set 1, l                                      ; $498d: $cb $cd
    jp nc, Jump_038_73c9                          ; $498f: $d2 $c9 $73

    ret                                           ; $4992: $c9


    ld d, a                                       ; $4993: $57
    halt                                          ; $4994: $76
    rst $38                                       ; $4995: $ff
    ld [bc], a                                    ; $4996: $02

jr_038_4997:
    ld a, b                                       ; $4997: $78
    xor $08                                       ; $4998: $ee $08
    set 1, l                                      ; $499a: $cb $cd
    jp nc, Jump_038_7229                          ; $499c: $d2 $29 $72

    ret                                           ; $499f: $c9


    ld d, a                                       ; $49a0: $57
    halt                                          ; $49a1: $76
    rst $38                                       ; $49a2: $ff
    ld [bc], a                                    ; $49a3: $02
    jr c, jr_038_4997                             ; $49a4: $38 $f1

    ldh a, [$d3]                                  ; $49a6: $f0 $d3
    rlca                                          ; $49a8: $07
    call nz, Call_000_3988                        ; $49a9: $c4 $88 $39
    inc hl                                        ; $49ac: $23
    add sp, $47                                   ; $49ad: $e8 $47
    db $f4                                        ; $49af: $f4
    jp z, $4757                                   ; $49b0: $ca $57 $47

    add hl, bc                                    ; $49b3: $09
    sub d                                         ; $49b4: $92
    ld [hl], h                                    ; $49b5: $74
    jr z, jr_038_49bd                             ; $49b6: $28 $05

    ld [hl], a                                    ; $49b8: $77
    ld l, $b5                                     ; $49b9: $2e $b5
    sbc $1c                                       ; $49bb: $de $1c

jr_038_49bd:
    inc hl                                        ; $49bd: $23
    add sp, $47                                   ; $49be: $e8 $47
    db $f4                                        ; $49c0: $f4
    jp z, $4757                                   ; $49c1: $ca $57 $47

    add hl, bc                                    ; $49c4: $09
    sub d                                         ; $49c5: $92
    ld [hl], h                                    ; $49c6: $74
    xor b                                         ; $49c7: $a8
    inc b                                         ; $49c8: $04
    cp h                                          ; $49c9: $bc
    db $e3                                        ; $49ca: $e3
    cpl                                           ; $49cb: $2f
    call nz, $072d                                ; $49cc: $c4 $2d $07
    ld [hl], e                                    ; $49cf: $73
    sub c                                         ; $49d0: $91
    db $10                                        ; $49d1: $10
    call nc, $9866                                ; $49d2: $d4 $66 $98
    ld a, l                                       ; $49d5: $7d
    ld l, d                                       ; $49d6: $6a
    add hl, bc                                    ; $49d7: $09
    rst $20                                       ; $49d8: $e7
    inc hl                                        ; $49d9: $23
    add sp, $47                                   ; $49da: $e8 $47
    db $f4                                        ; $49dc: $f4
    jp z, $4757                                   ; $49dd: $ca $57 $47

    add hl, bc                                    ; $49e0: $09
    sub d                                         ; $49e1: $92
    ld [hl], h                                    ; $49e2: $74
    jr z, jr_038_4967                             ; $49e3: $28 $82

    ld e, h                                       ; $49e5: $5c
    ld a, e                                       ; $49e6: $7b
    dec e                                         ; $49e7: $1d
    pop hl                                        ; $49e8: $e1
    inc e                                         ; $49e9: $1c
    jp $300c                                      ; $49ea: $c3 $0c $30


    ld b, b                                       ; $49ed: $40
    db $fc                                        ; $49ee: $fc
    ld e, l                                       ; $49ef: $5d
    rst $28                                       ; $49f0: $ef
    call nz, Call_038_7d73                        ; $49f1: $c4 $73 $7d
    ld [hl], l                                    ; $49f4: $75
    db $e4                                        ; $49f5: $e4
    jp $de8c                                      ; $49f6: $c3 $8c $de


    call z, $5fc8                                 ; $49f9: $cc $c8 $5f
    ld [hl+], a                                   ; $49fc: $22
    ld bc, $2339                                  ; $49fd: $01 $39 $23
    add sp, $47                                   ; $4a00: $e8 $47
    db $f4                                        ; $4a02: $f4
    jp z, $4757                                   ; $4a03: $ca $57 $47

    add hl, bc                                    ; $4a06: $09
    sub d                                         ; $4a07: $92
    db $f4                                        ; $4a08: $f4
    add h                                         ; $4a09: $84
    xor a                                         ; $4a0a: $af
    ld e, b                                       ; $4a0b: $58
    bit 1, l                                      ; $4a0c: $cb $4d
    dec l                                         ; $4a0e: $2d
    ld b, d                                       ; $4a0f: $42
    ld c, $23                                     ; $4a10: $0e $23
    add sp, $47                                   ; $4a12: $e8 $47
    db $f4                                        ; $4a14: $f4
    jp z, $4757                                   ; $4a15: $ca $57 $47

    add hl, bc                                    ; $4a18: $09
    sub d                                         ; $4a19: $92
    ld [hl], h                                    ; $4a1a: $74
    ld e, [hl]                                    ; $4a1b: $5e
    dec bc                                        ; $4a1c: $0b
    jr c, @+$76                                   ; $4a1d: $38 $74

    ld h, h                                       ; $4a1f: $64
    ld l, d                                       ; $4a20: $6a
    or e                                          ; $4a21: $b3
    ld h, [hl]                                    ; $4a22: $66
    adc $bc                                       ; $4a23: $ce $bc
    push de                                       ; $4a25: $d5
    pop hl                                        ; $4a26: $e1
    ld l, d                                       ; $4a27: $6a
    or l                                          ; $4a28: $b5
    scf                                           ; $4a29: $37
    ld [$08ed], a                                 ; $4a2a: $ea $ed $08
    jp nc, $3822                                  ; $4a2d: $d2 $22 $38

    rlca                                          ; $4a30: $07
    call z, Call_038_7081                         ; $4a31: $cc $81 $70
    ld h, [hl]                                    ; $4a34: $66
    jp c, $2dd9                                   ; $4a35: $da $d9 $2d

    rst $08                                       ; $4a38: $cf
    sbc c                                         ; $4a39: $99
    reti                                          ; $4a3a: $d9


    inc e                                         ; $4a3b: $1c
    di                                            ; $4a3c: $f3
    ld e, d                                       ; $4a3d: $5a
    ret c                                         ; $4a3e: $d8

    dec bc                                        ; $4a3f: $0b
    cp h                                          ; $4a40: $bc
    sub [hl]                                      ; $4a41: $96
    adc [hl]                                      ; $4a42: $8e
    cp $54                                        ; $4a43: $fe $54
    ld [hl], a                                    ; $4a45: $77
    or d                                          ; $4a46: $b2
    inc e                                         ; $4a47: $1c
    di                                            ; $4a48: $f3
    ld e, d                                       ; $4a49: $5a
    ret c                                         ; $4a4a: $d8

    dec bc                                        ; $4a4b: $0b
    cp h                                          ; $4a4c: $bc
    sub [hl]                                      ; $4a4d: $96
    adc [hl]                                      ; $4a4e: $8e
    cp $54                                        ; $4a4f: $fe $54
    ld [hl], a                                    ; $4a51: $77
    ld a, [c]                                     ; $4a52: $f2
    inc e                                         ; $4a53: $1c
    di                                            ; $4a54: $f3
    ld e, d                                       ; $4a55: $5a
    ret c                                         ; $4a56: $d8

    dec bc                                        ; $4a57: $0b
    cp h                                          ; $4a58: $bc
    sub [hl]                                      ; $4a59: $96
    adc [hl]                                      ; $4a5a: $8e
    cp $54                                        ; $4a5b: $fe $54
    ld [hl], a                                    ; $4a5d: $77
    adc d                                         ; $4a5e: $8a
    inc e                                         ; $4a5f: $1c
    di                                            ; $4a60: $f3
    ld e, d                                       ; $4a61: $5a
    ret c                                         ; $4a62: $d8

    dec bc                                        ; $4a63: $0b
    cp h                                          ; $4a64: $bc
    sub [hl]                                      ; $4a65: $96
    adc [hl]                                      ; $4a66: $8e
    cp $54                                        ; $4a67: $fe $54
    ld [hl], a                                    ; $4a69: $77
    jp z, $f31c                                   ; $4a6a: $ca $1c $f3

    ld e, d                                       ; $4a6d: $5a
    ret c                                         ; $4a6e: $d8

    dec bc                                        ; $4a6f: $0b
    cp h                                          ; $4a70: $bc
    sub [hl]                                      ; $4a71: $96
    adc [hl]                                      ; $4a72: $8e
    cp $54                                        ; $4a73: $fe $54
    ld [hl], a                                    ; $4a75: $77
    xor d                                         ; $4a76: $aa
    inc e                                         ; $4a77: $1c
    di                                            ; $4a78: $f3
    ld e, d                                       ; $4a79: $5a
    ret c                                         ; $4a7a: $d8

    dec bc                                        ; $4a7b: $0b
    cp h                                          ; $4a7c: $bc
    sub [hl]                                      ; $4a7d: $96
    adc [hl]                                      ; $4a7e: $8e
    cp $54                                        ; $4a7f: $fe $54
    ld [hl], a                                    ; $4a81: $77
    ld [$231c], a                                 ; $4a82: $ea $1c $23
    inc l                                         ; $4a85: $2c
    scf                                           ; $4a86: $37
    ld c, e                                       ; $4a87: $4b
    daa                                           ; $4a88: $27
    rlc c                                         ; $4a89: $cb $01
    inc hl                                        ; $4a8b: $23
    inc l                                         ; $4a8c: $2c
    scf                                           ; $4a8d: $37
    ld c, e                                       ; $4a8e: $4b
    daa                                           ; $4a8f: $27
    rst $08                                       ; $4a90: $cf
    ld bc, $2c23                                  ; $4a91: $01 $23 $2c
    scf                                           ; $4a94: $37
    ld c, e                                       ; $4a95: $4b
    and a                                         ; $4a96: $a7
    ret z                                         ; $4a97: $c8

    ld bc, $2c23                                  ; $4a98: $01 $23 $2c
    scf                                           ; $4a9b: $37
    ld c, e                                       ; $4a9c: $4b
    and a                                         ; $4a9d: $a7
    call z, $2301                                 ; $4a9e: $cc $01 $23
    inc l                                         ; $4aa1: $2c
    scf                                           ; $4aa2: $37
    ld c, e                                       ; $4aa3: $4b
    and a                                         ; $4aa4: $a7
    jp z, $2301                                   ; $4aa5: $ca $01 $23

    inc l                                         ; $4aa8: $2c
    scf                                           ; $4aa9: $37
    ld c, e                                       ; $4aaa: $4b
    and a                                         ; $4aab: $a7
    adc $01                                       ; $4aac: $ce $01
    or e                                          ; $4aae: $b3
    ret nc                                        ; $4aaf: $d0

    add b                                         ; $4ab0: $80
    ld a, e                                       ; $4ab1: $7b
    ldh a, [rNR31]                                ; $4ab2: $f0 $1b
    halt                                          ; $4ab4: $76
    jr jr_038_4b00                                ; $4ab5: $18 $49

    xor [hl]                                      ; $4ab7: $ae
    inc e                                         ; $4ab8: $1c
    or e                                          ; $4ab9: $b3
    reti                                          ; $4aba: $d9


    ld h, d                                       ; $4abb: $62
    jp hl                                         ; $4abc: $e9


    ld [$11fa], sp                                ; $4abd: $08 $fa $11
    cp l                                          ; $4ac0: $bd
    ld a, [c]                                     ; $4ac1: $f2
    push de                                       ; $4ac2: $d5
    sub c                                         ; $4ac3: $91
    inc bc                                        ; $4ac4: $03
    or e                                          ; $4ac5: $b3
    reti                                          ; $4ac6: $d9


    ld h, d                                       ; $4ac7: $62
    jp hl                                         ; $4ac8: $e9


    ld [$11fa], sp                                ; $4ac9: $08 $fa $11
    cp l                                          ; $4acc: $bd
    ld a, [c]                                     ; $4acd: $f2
    push de                                       ; $4ace: $d5
    sub c                                         ; $4acf: $91
    inc bc                                        ; $4ad0: $03
    di                                            ; $4ad1: $f3
    ld e, d                                       ; $4ad2: $5a
    ret c                                         ; $4ad3: $d8

    dec bc                                        ; $4ad4: $0b
    cp h                                          ; $4ad5: $bc
    sub [hl]                                      ; $4ad6: $96
    adc [hl]                                      ; $4ad7: $8e
    cp b                                          ; $4ad8: $b8
    ld b, h                                       ; $4ad9: $44
    ld b, d                                       ; $4ada: $42
    ld e, a                                       ; $4adb: $5f
    sub d                                         ; $4adc: $92
    inc bc                                        ; $4add: $03
    adc h                                         ; $4ade: $8c
    cp [hl]                                       ; $4adf: $be
    daa                                           ; $4ae0: $27
    ld a, [c]                                     ; $4ae1: $f2
    add a                                         ; $4ae2: $87
    rst $28                                       ; $4ae3: $ef
    dec hl                                        ; $4ae4: $2b
    call z, $2301                                 ; $4ae5: $cc $01 $23
    inc de                                        ; $4ae8: $13
    dec [hl]                                      ; $4ae9: $35
    ld a, a                                       ; $4aea: $7f
    ld e, [hl]                                    ; $4aeb: $5e
    cp b                                          ; $4aec: $b8
    add d                                         ; $4aed: $82
    ld a, [de]                                    ; $4aee: $1a
    ret nz                                        ; $4aef: $c0

    add hl, sp                                    ; $4af0: $39
    ret                                           ; $4af1: $c9


    ld d, a                                       ; $4af2: $57
    halt                                          ; $4af3: $76
    rst $38                                       ; $4af4: $ff
    ld [bc], a                                    ; $4af5: $02
    ret c                                         ; $4af6: $d8

    reti                                          ; $4af7: $d9


    ld [de], a                                    ; $4af8: $12
    ld d, a                                       ; $4af9: $57
    ld e, e                                       ; $4afa: $5b
    inc e                                         ; $4afb: $1c
    sbc $4e                                       ; $4afc: $de $4e
    sub [hl]                                      ; $4afe: $96
    inc bc                                        ; $4aff: $03

jr_038_4b00:
    add hl, bc                                    ; $4b00: $09
    db $db                                        ; $4b01: $db
    db $e4                                        ; $4b02: $e4
    sbc a                                         ; $4b03: $9f
    ld c, c                                       ; $4b04: $49
    ld l, b                                       ; $4b05: $68
    ld l, h                                       ; $4b06: $6c
    ld [hl-], a                                   ; $4b07: $32
    add hl, bc                                    ; $4b08: $09
    ret nz                                        ; $4b09: $c0

    add hl, sp                                    ; $4b0a: $39
    sub e                                         ; $4b0b: $93
    and l                                         ; $4b0c: $a5
    ld h, l                                       ; $4b0d: $65
    jp nz, Jump_038_6fc5                          ; $4b0e: $c2 $c5 $6f

    rst $20                                       ; $4b11: $e7
    adc [hl]                                      ; $4b12: $8e
    cp b                                          ; $4b13: $b8
    ld b, h                                       ; $4b14: $44
    ld b, d                                       ; $4b15: $42
    ld e, a                                       ; $4b16: $5f
    sub d                                         ; $4b17: $92
    inc bc                                        ; $4b18: $03
    sub e                                         ; $4b19: $93
    and a                                         ; $4b1a: $a7
    ld h, l                                       ; $4b1b: $65
    jp nz, Jump_038_6fc5                          ; $4b1c: $c2 $c5 $6f

    rst $20                                       ; $4b1f: $e7
    adc [hl]                                      ; $4b20: $8e
    cp b                                          ; $4b21: $b8
    ld b, h                                       ; $4b22: $44
    ld b, d                                       ; $4b23: $42

Jump_038_4b24:
    ld e, a                                       ; $4b24: $5f
    sub d                                         ; $4b25: $92
    inc bc                                        ; $4b26: $03
    ld d, e                                       ; $4b27: $53
    and h                                         ; $4b28: $a4
    ld h, l                                       ; $4b29: $65
    jp nz, Jump_038_6fc5                          ; $4b2a: $c2 $c5 $6f

    rst $20                                       ; $4b2d: $e7
    adc [hl]                                      ; $4b2e: $8e
    cp b                                          ; $4b2f: $b8
    ld b, h                                       ; $4b30: $44
    ld b, d                                       ; $4b31: $42
    ld e, a                                       ; $4b32: $5f
    sub d                                         ; $4b33: $92
    inc bc                                        ; $4b34: $03
    ld d, e                                       ; $4b35: $53
    and [hl]                                      ; $4b36: $a6
    ld h, l                                       ; $4b37: $65
    jp nz, Jump_038_6fc5                          ; $4b38: $c2 $c5 $6f

    rst $20                                       ; $4b3b: $e7
    adc [hl]                                      ; $4b3c: $8e
    cp b                                          ; $4b3d: $b8
    ld b, h                                       ; $4b3e: $44
    ld b, d                                       ; $4b3f: $42
    ld e, a                                       ; $4b40: $5f
    sub d                                         ; $4b41: $92
    inc bc                                        ; $4b42: $03
    ld d, e                                       ; $4b43: $53
    and l                                         ; $4b44: $a5
    ld h, l                                       ; $4b45: $65
    jp nz, Jump_038_6fc5                          ; $4b46: $c2 $c5 $6f

    rst $20                                       ; $4b49: $e7
    adc [hl]                                      ; $4b4a: $8e
    cp b                                          ; $4b4b: $b8
    ld b, h                                       ; $4b4c: $44
    ld b, d                                       ; $4b4d: $42
    ld e, a                                       ; $4b4e: $5f
    sub d                                         ; $4b4f: $92
    inc bc                                        ; $4b50: $03
    ld d, e                                       ; $4b51: $53
    and a                                         ; $4b52: $a7
    ld h, l                                       ; $4b53: $65
    jp nz, Jump_038_6fc5                          ; $4b54: $c2 $c5 $6f

    rst $20                                       ; $4b57: $e7
    adc [hl]                                      ; $4b58: $8e
    cp b                                          ; $4b59: $b8
    ld b, h                                       ; $4b5a: $44
    ld b, d                                       ; $4b5b: $42
    ld e, a                                       ; $4b5c: $5f
    sub d                                         ; $4b5d: $92
    inc bc                                        ; $4b5e: $03
    db $d3                                        ; $4b5f: $d3
    and h                                         ; $4b60: $a4
    ld h, l                                       ; $4b61: $65
    jp nz, Jump_038_6fc5                          ; $4b62: $c2 $c5 $6f

    rst $20                                       ; $4b65: $e7
    adc [hl]                                      ; $4b66: $8e
    cp b                                          ; $4b67: $b8
    ld b, h                                       ; $4b68: $44
    ld b, d                                       ; $4b69: $42
    ld e, a                                       ; $4b6a: $5f
    sub d                                         ; $4b6b: $92
    inc bc                                        ; $4b6c: $03
    ret                                           ; $4b6d: $c9


    ld c, $6a                                     ; $4b6e: $0e $6a
    ret                                           ; $4b70: $c9


    ld bc, $e823                                  ; $4b71: $01 $23 $e8
    ld b, a                                       ; $4b74: $47
    db $f4                                        ; $4b75: $f4
    jp z, $4757                                   ; $4b76: $ca $57 $47

    add hl, bc                                    ; $4b79: $09
    sub d                                         ; $4b7a: $92
    sub h                                         ; $4b7b: $94

Jump_038_4b7c:
    pop de                                        ; $4b7c: $d1
    ret z                                         ; $4b7d: $c8

    ld e, a                                       ; $4b7e: $5f
    ldh a, [rTAC]                                 ; $4b7f: $f0 $07
    xor [hl]                                      ; $4b81: $ae
    or [hl]                                       ; $4b82: $b6
    ld [hl], h                                    ; $4b83: $74
    db $e4                                        ; $4b84: $e4
    rst $08                                       ; $4b85: $cf
    jp nz, $c939                                  ; $4b86: $c2 $39 $c9

    rla                                           ; $4b89: $17
    ld c, $04                                     ; $4b8a: $0e $04
    ld a, h                                       ; $4b8c: $7c
    ld c, d                                       ; $4b8d: $4a
    ld d, b                                       ; $4b8e: $50
    ld d, d                                       ; $4b8f: $52
    ld h, [hl]                                    ; $4b90: $66
    sbc d                                         ; $4b91: $9a
    inc bc                                        ; $4b92: $03
    jp $a582                                      ; $4b93: $c3 $82 $a5


    ld [hl], c                                    ; $4b96: $71
    pop bc                                        ; $4b97: $c1
    di                                            ; $4b98: $f3
    xor l                                         ; $4b99: $ad
    sub e                                         ; $4b9a: $93
    push hl                                       ; $4b9b: $e5
    jp $a582                                      ; $4b9c: $c3 $82 $a5


    ld [hl], c                                    ; $4b9f: $71
    pop bc                                        ; $4ba0: $c1
    di                                            ; $4ba1: $f3
    xor l                                         ; $4ba2: $ad
    sub e                                         ; $4ba3: $93
    rst $20                                       ; $4ba4: $e7
    inc hl                                        ; $4ba5: $23
    add hl, sp                                    ; $4ba6: $39
    db $e3                                        ; $4ba7: $e3
    or l                                          ; $4ba8: $b5
    ccf                                           ; $4ba9: $3f
    ei                                            ; $4baa: $fb
    sub h                                         ; $4bab: $94
    ld h, d                                       ; $4bac: $62
    add a                                         ; $4bad: $87
    sub c                                         ; $4bae: $91
    db $e4                                        ; $4baf: $e4
    jp z, Jump_038_4c01                           ; $4bb0: $ca $01 $4c

    ld d, b                                       ; $4bb3: $50
    ld a, [hl-]                                   ; $4bb4: $3a
    inc l                                         ; $4bb5: $2c
    db $e4                                        ; $4bb6: $e4
    jr c, jr_038_4bc7                             ; $4bb7: $38 $0e

    ld c, e                                       ; $4bb9: $4b
    or l                                          ; $4bba: $b5
    and l                                         ; $4bbb: $a5
    inc hl                                        ; $4bbc: $23
    ld d, l                                       ; $4bbd: $55
    sub [hl]                                      ; $4bbe: $96
    sbc c                                         ; $4bbf: $99
    and $a3                                       ; $4bc0: $e6 $a3
    xor [hl]                                      ; $4bc2: $ae
    add e                                         ; $4bc3: $83
    db $10                                        ; $4bc4: $10
    adc a                                         ; $4bc5: $8f
    pop bc                                        ; $4bc6: $c1

jr_038_4bc7:
    ld c, $23                                     ; $4bc7: $0e $23
    ret                                           ; $4bc9: $c9


    sub l                                         ; $4bca: $95
    inc bc                                        ; $4bcb: $03
    inc hl                                        ; $4bcc: $23
    add sp, $47                                   ; $4bcd: $e8 $47
    db $f4                                        ; $4bcf: $f4
    jp z, $4757                                   ; $4bd0: $ca $57 $47

    add hl, bc                                    ; $4bd3: $09
    sub d                                         ; $4bd4: $92
    db $f4                                        ; $4bd5: $f4
    add h                                         ; $4bd6: $84
    xor a                                         ; $4bd7: $af
    ld e, b                                       ; $4bd8: $58
    dec bc                                        ; $4bd9: $0b
    ld c, b                                       ; $4bda: $48
    ld [c], a                                     ; $4bdb: $e2
    sbc $9c                                       ; $4bdc: $de $9c
    inc bc                                        ; $4bde: $03
    ld [hl], e                                    ; $4bdf: $73
    xor d                                         ; $4be0: $aa
    db $10                                        ; $4be1: $10
    ld sp, $d8a5                                  ; $4be2: $31 $a5 $d8
    ld h, c                                       ; $4be5: $61
    inc h                                         ; $4be6: $24
    cp c                                          ; $4be7: $b9
    ld [hl], d                                    ; $4be8: $72
    call z, Call_000_03fd                         ; $4be9: $cc $fd $03
    add $0e                                       ; $4bec: $c6 $0e
    inc hl                                        ; $4bee: $23
    ret                                           ; $4bef: $c9


    sub l                                         ; $4bf0: $95
    inc bc                                        ; $4bf1: $03
    call z, $b901                                 ; $4bf2: $cc $01 $b9
    inc d                                         ; $4bf5: $14
    ld h, b                                       ; $4bf6: $60
    add a                                         ; $4bf7: $87
    sub c                                         ; $4bf8: $91
    db $e4                                        ; $4bf9: $e4
    jp z, $b301                                   ; $4bfa: $ca $01 $b3

    db $fd                                        ; $4bfd: $fd
    call z, Call_038_5f22                         ; $4bfe: $cc $22 $5f

Call_038_4c01:
Jump_038_4c01:
    dec e                                         ; $4c01: $1d
    add hl, sp                                    ; $4c02: $39
    inc hl                                        ; $4c03: $23
    add sp, $47                                   ; $4c04: $e8 $47
    db $f4                                        ; $4c06: $f4
    jp z, $4757                                   ; $4c07: $ca $57 $47

    add hl, bc                                    ; $4c0a: $09
    sub d                                         ; $4c0b: $92
    ld [hl], h                                    ; $4c0c: $74
    ld e, [hl]                                    ; $4c0d: $5e
    set 7, l                                      ; $4c0e: $cb $fd
    xor a                                         ; $4c10: $af
    and [hl]                                      ; $4c11: $a6
    ld l, d                                       ; $4c12: $6a
    inc sp                                        ; $4c13: $33
    ld l, a                                       ; $4c14: $6f
    ld c, $a3                                     ; $4c15: $0e $a3
    xor [hl]                                      ; $4c17: $ae
    db $db                                        ; $4c18: $db
    and a                                         ; $4c19: $a7
    db $e4                                        ; $4c1a: $e4
    jr c, jr_038_4c2b                             ; $4c1b: $38 $0e

    ld c, e                                       ; $4c1d: $4b
    ld c, $f3                                     ; $4c1e: $0e $f3
    ld e, d                                       ; $4c20: $5a
    ld l, b                                       ; $4c21: $68
    jr @+$3d                                      ; $4c22: $18 $3b

    ld sp, hl                                     ; $4c24: $f9
    cp c                                          ; $4c25: $b9
    adc h                                         ; $4c26: $8c
    ld [de], a                                    ; $4c27: $12
    sbc e                                         ; $4c28: $9b
    ld e, l                                       ; $4c29: $5d
    nop                                           ; $4c2a: $00

jr_038_4c2b:
    sbc b                                         ; $4c2b: $98
    inc bc                                        ; $4c2c: $03
    adc h                                         ; $4c2d: $8c
    call nc, $9d81                                ; $4c2e: $d4 $81 $9d
    xor [hl]                                      ; $4c31: $ae
    ld d, e                                       ; $4c32: $53
    ld c, h                                       ; $4c33: $4c
    ld [hl-], a                                   ; $4c34: $32
    ld h, l                                       ; $4c35: $65
    ld c, $4c                                     ; $4c36: $0e $4c
    ld e, e                                       ; $4c38: $5b
    ld de, $1c96                                  ; $4c39: $11 $96 $1c
    jp $b363                                      ; $4c3c: $c3 $63 $b3


    cp a                                          ; $4c3f: $bf
    reti                                          ; $4c40: $d9


    ei                                            ; $4c41: $fb
    sub h                                         ; $4c42: $94
    cp d                                          ; $4c43: $ba
    add e                                         ; $4c44: $83
    rst $10                                       ; $4c45: $d7
    ld [hl], $f9                                  ; $4c46: $36 $f9
    jp z, $5fee                                   ; $4c48: $ca $ee $5f

    nop                                           ; $4c4b: $00
    ld [hl], e                                    ; $4c4c: $73
    or e                                          ; $4c4d: $b3
    xor d                                         ; $4c4e: $aa
    call $c8bc                                    ; $4c4f: $cd $bc $c8
    rra                                           ; $4c52: $1f
    db $fd                                        ; $4c53: $fd
    inc b                                         ; $4c54: $04
    cp $4f                                        ; $4c55: $fe $4f
    dec sp                                        ; $4c57: $3b
    ld a, b                                       ; $4c58: $78
    ld l, l                                       ; $4c59: $6d
    add hl, de                                    ; $4c5a: $19
    ld h, l                                       ; $4c5b: $65
    inc c                                         ; $4c5c: $0c
    ld b, c                                       ; $4c5d: $41
    call nz, $4bea                                ; $4c5e: $c4 $ea $4b
    ld [hl], d                                    ; $4c61: $72
    adc h                                         ; $4c62: $8c
    ld a, $1c                                     ; $4c63: $3e $1c
    adc e                                         ; $4c65: $8b
    db $fc                                        ; $4c66: $fc
    ld a, l                                       ; $4c67: $7d
    ld [bc], a                                    ; $4c68: $02
    ld d, b                                       ; $4c69: $50
    cp [hl]                                       ; $4c6a: $be
    ld a, [hl-]                                   ; $4c6b: $3a
    ld a, [hl-]                                   ; $4c6c: $3a
    ld a, b                                       ; $4c6d: $78
    ld l, l                                       ; $4c6e: $6d
    add hl, de                                    ; $4c6f: $19
    ld h, l                                       ; $4c70: $65
    inc c                                         ; $4c71: $0c

Call_038_4c72:
    ld b, c                                       ; $4c72: $41
    call nz, $4bea                                ; $4c73: $c4 $ea $4b
    ld [hl], d                                    ; $4c76: $72
    jp Jump_038_5e8c                              ; $4c77: $c3 $8c $5e


    db $e4                                        ; $4c7a: $e4
    ld c, a                                       ; $4c7b: $4f
    cp $de                                        ; $4c7c: $fe $de
    ld [hl], d                                    ; $4c7e: $72
    or e                                          ; $4c7f: $b3
    inc b                                         ; $4c80: $04
    push hl                                       ; $4c81: $e5
    rrca                                          ; $4c82: $0f
    dec sp                                        ; $4c83: $3b
    adc h                                         ; $4c84: $8c
    inc h                                         ; $4c85: $24
    ld d, a                                       ; $4c86: $57
    ld c, $8c                                     ; $4c87: $0e $8c
    ld [hl], d                                    ; $4c89: $72
    adc l                                         ; $4c8a: $8d
    db $e3                                        ; $4c8b: $e3
    ld h, $7f                                     ; $4c8c: $26 $7f
    ld c, d                                       ; $4c8e: $4a
    db $dd                                        ; $4c8f: $dd
    pop bc                                        ; $4c90: $c1
    ld l, e                                       ; $4c91: $6b
    sbc e                                         ; $4c92: $9b
    ld a, h                                       ; $4c93: $7c
    ld h, l                                       ; $4c94: $65
    rst $30                                       ; $4c95: $f7
    cpl                                           ; $4c96: $2f
    add b                                         ; $4c97: $80
    add hl, sp                                    ; $4c98: $39
    or e                                          ; $4c99: $b3
    ld sp, hl                                     ; $4c9a: $f9
    adc c                                         ; $4c9b: $89
    add l                                         ; $4c9c: $85
    inc e                                         ; $4c9d: $1c
    rst $00                                       ; $4c9e: $c7
    ld h, c                                       ; $4c9f: $61

jr_038_4ca0:
    jp hl                                         ; $4ca0: $e9


    ldh [$b5], a                                  ; $4ca1: $e0 $b5
    ld c, l                                       ; $4ca3: $4d
    cp [hl]                                       ; $4ca4: $be
    or d                                          ; $4ca5: $b2
    ei                                            ; $4ca6: $fb
    rla                                           ; $4ca7: $17
    ret nz                                        ; $4ca8: $c0

    inc e                                         ; $4ca9: $1c
    and e                                         ; $4caa: $a3
    ld l, $01                                     ; $4cab: $2e $01
    ld c, c                                       ; $4cad: $49
    inc b                                         ; $4cae: $04
    ld [hl], d                                    ; $4caf: $72

jr_038_4cb0:
    inc e                                         ; $4cb0: $1c
    add a                                         ; $4cb1: $87
    dec h                                         ; $4cb2: $25
    rlca                                          ; $4cb3: $07
    di                                            ; $4cb4: $f3
    inc l                                         ; $4cb5: $2c
    ld e, b                                       ; $4cb6: $58
    ld [hl-], a                                   ; $4cb7: $32
    inc hl                                        ; $4cb8: $23
    ld a, a                                       ; $4cb9: $7f
    rla                                           ; $4cba: $17
    ld [c], a                                     ; $4cbb: $e2
    cp c                                          ; $4cbc: $b9
    inc hl                                        ; $4cbd: $23
    inc l                                         ; $4cbe: $2c
    scf                                           ; $4cbf: $37
    ld c, e                                       ; $4cc0: $4b
    ld c, $27                                     ; $4cc1: $0e $27
    ld a, h                                       ; $4cc3: $7c
    push bc                                       ; $4cc4: $c5
    ld e, d                                       ; $4cc5: $5a
    ld b, b                                       ; $4cc6: $40
    cp $de                                        ; $4cc7: $fe $de
    ld a, [hl-]                                   ; $4cc9: $3a
    ld a, c                                       ; $4cca: $79
    ld c, $f3                                     ; $4ccb: $0e $f3
    ld e, d                                       ; $4ccd: $5a
    ld l, b                                       ; $4cce: $68
    jr jr_038_4ca0                                ; $4ccf: $18 $cf

    ld h, l                                       ; $4cd1: $65
    sub h                                         ; $4cd2: $94
    ret c                                         ; $4cd3: $d8

    db $ec                                        ; $4cd4: $ec
    ld [bc], a                                    ; $4cd5: $02
    ret nz                                        ; $4cd6: $c0

    and $43                                       ; $4cd7: $e6 $43
    ld de, $dae4                                  ; $4cd9: $11 $e4 $da
    db $eb                                        ; $4cdc: $eb
    ld [$3c4f], sp                                ; $4cdd: $08 $4f $3c
    ld [c], a                                     ; $4ce0: $e2
    ld [de], a                                    ; $4ce1: $12
    add hl, bc                                    ; $4ce2: $09
    ld a, l                                       ; $4ce3: $7d
    ld c, c                                       ; $4ce4: $49
    ld c, $c9                                     ; $4ce5: $0e $c9
    ld d, a                                       ; $4ce7: $57
    halt                                          ; $4ce8: $76
    rst $38                                       ; $4ce9: $ff
    ld [bc], a                                    ; $4cea: $02
    ld a, b                                       ; $4ceb: $78
    xor $6c                                       ; $4cec: $ee $6c
    adc c                                         ; $4cee: $89
    xor e                                         ; $4cef: $ab
    dec l                                         ; $4cf0: $2d
    ld c, $6f                                     ; $4cf1: $0e $6f
    daa                                           ; $4cf3: $27
    rst $08                                       ; $4cf4: $cf
    ld bc, $57c9                                  ; $4cf5: $01 $c9 $57
    halt                                          ; $4cf8: $76
    rst $38                                       ; $4cf9: $ff
    ld [bc], a                                    ; $4cfa: $02
    ld a, b                                       ; $4cfb: $78
    xor $6c                                       ; $4cfc: $ee $6c
    adc c                                         ; $4cfe: $89
    xor e                                         ; $4cff: $ab
    dec l                                         ; $4d00: $2d
    ld c, $6f                                     ; $4d01: $0e $6f
    and a                                         ; $4d03: $a7
    ret z                                         ; $4d04: $c8

    ld bc, $57c9                                  ; $4d05: $01 $c9 $57
    halt                                          ; $4d08: $76
    rst $38                                       ; $4d09: $ff
    ld [bc], a                                    ; $4d0a: $02
    ld a, b                                       ; $4d0b: $78
    xor $6c                                       ; $4d0c: $ee $6c
    adc c                                         ; $4d0e: $89
    xor e                                         ; $4d0f: $ab
    dec l                                         ; $4d10: $2d
    ld c, $6f                                     ; $4d11: $0e $6f
    and a                                         ; $4d13: $a7
    call z, Call_038_4301                         ; $4d14: $cc $01 $43
    push de                                       ; $4d17: $d5
    jr c, jr_038_4cb0                             ; $4d18: $38 $96

    rst $30                                       ; $4d1a: $f7
    add hl, hl                                    ; $4d1b: $29
    db $db                                        ; $4d1c: $db
    pop bc                                        ; $4d1d: $c1
    ld l, e                                       ; $4d1e: $6b
    sbc e                                         ; $4d1f: $9b
    db $fc                                        ; $4d20: $fc
    inc sp                                        ; $4d21: $33
    add hl, bc                                    ; $4d22: $09
    adc l                                         ; $4d23: $8d
    ld c, l                                       ; $4d24: $4d
    ld h, $01                                     ; $4d25: $26 $01
    jr c, jr_038_4d30                             ; $4d27: $38 $07

    call z, Call_000_1c7f                         ; $4d29: $cc $7f $1c
    call nc, Call_038_6832                        ; $4d2c: $d4 $32 $68
    ld [hl], c                                    ; $4d2f: $71

jr_038_4d30:
    ld l, h                                       ; $4d30: $6c
    add hl, bc                                    ; $4d31: $09
    sub d                                         ; $4d32: $92
    ld [hl], h                                    ; $4d33: $74

Jump_038_4d34:
    ld e, b                                       ; $4d34: $58
    ld d, b                                       ; $4d35: $50
    ld a, l                                       ; $4d36: $7d
    ei                                            ; $4d37: $fb
    ld [bc], a                                    ; $4d38: $02
    sbc $1c                                       ; $4d39: $de $1c
    adc h                                         ; $4d3b: $8c
    ld [hl], d                                    ; $4d3c: $72
    adc l                                         ; $4d3d: $8d
    db $e3                                        ; $4d3e: $e3
    ld h, $7f                                     ; $4d3f: $26 $7f
    ld c, d                                       ; $4d41: $4a
    ld a, l                                       ; $4d42: $7d
    ld l, $b5                                     ; $4d43: $2e $b5
    dec h                                         ; $4d45: $25
    rlca                                          ; $4d46: $07
    adc h                                         ; $4d47: $8c
    ld a, [hl]                                    ; $4d48: $7e
    adc [hl]                                      ; $4d49: $8e
    jp $b9d2                                      ; $4d4a: $c3 $d2 $b9


    cp [hl]                                       ; $4d4d: $be
    ld a, [hl-]                                   ; $4d4e: $3a
    xor d                                         ; $4d4f: $aa
    dec l                                         ; $4d50: $2d
    dec e                                         ; $4d51: $1d
    xor c                                         ; $4d52: $a9
    or d                                          ; $4d53: $b2
    call z, Call_000_0734                         ; $4d54: $cc $34 $07
    di                                            ; $4d57: $f3
    ld e, [hl]                                    ; $4d58: $5e
    ld [hl+], a                                   ; $4d59: $22
    rra                                           ; $4d5a: $1f
    ld d, b                                       ; $4d5b: $50
    cp [hl]                                       ; $4d5c: $be
    ld a, [hl-]                                   ; $4d5d: $3a
    jp z, Jump_038_4fe4                           ; $4d5e: $ca $e4 $4f

    inc e                                         ; $4d61: $1c
    xor h                                         ; $4d62: $ac
    ld [bc], a                                    ; $4d63: $02
    cpl                                           ; $4d64: $2f
    ld b, $0d                                     ; $4d65: $06 $0d
    ld l, a                                       ; $4d67: $6f
    ld c, $b3                                     ; $4d68: $0e $b3
    xor d                                         ; $4d6a: $aa
    call Call_038_70bc                            ; $4d6b: $cd $bc $70
    dec b                                         ; $4d6e: $05
    dec [hl]                                      ; $4d6f: $35
    add b                                         ; $4d70: $80
    ld [hl], e                                    ; $4d71: $73
    inc hl                                        ; $4d72: $23
    ld d, l                                       ; $4d73: $55
    sub [hl]                                      ; $4d74: $96
    sbc c                                         ; $4d75: $99
    sbc $e8                                       ; $4d76: $de $e8
    ld b, a                                       ; $4d78: $47
    db $f4                                        ; $4d79: $f4
    jp z, $4757                                   ; $4d7a: $ca $57 $47

    add hl, bc                                    ; $4d7d: $09
    sub d                                         ; $4d7e: $92
    ld [hl], h                                    ; $4d7f: $74
    and h                                         ; $4d80: $a4
    jp nz, $e5b8                                  ; $4d81: $c2 $b8 $e5

    inc hl                                        ; $4d84: $23
    ld d, l                                       ; $4d85: $55
    sub [hl]                                      ; $4d86: $96
    sbc c                                         ; $4d87: $99
    sbc $e8                                       ; $4d88: $de $e8
    ld b, a                                       ; $4d8a: $47
    db $f4                                        ; $4d8b: $f4
    jp z, $4757                                   ; $4d8c: $ca $57 $47

    add hl, bc                                    ; $4d8f: $09
    sub d                                         ; $4d90: $92
    ld [hl], h                                    ; $4d91: $74
    add h                                         ; $4d92: $84
    ld e, d                                       ; $4d93: $5a
    add h                                         ; $4d94: $84
    inc e                                         ; $4d95: $1c
    inc hl                                        ; $4d96: $23
    cp [hl]                                       ; $4d97: $be
    add b                                         ; $4d98: $80
    ld [hl], a                                    ; $4d99: $77
    ld [c], a                                     ; $4d9a: $e2
    ld a, c                                       ; $4d9b: $79
    dec l                                         ; $4d9c: $2d
    inc [hl]                                      ; $4d9d: $34
    adc h                                         ; $4d9e: $8c
    add hl, sp                                    ; $4d9f: $39
    ld d, e                                       ; $4da0: $53
    and a                                         ; $4da1: $a7
    ld h, l                                       ; $4da2: $65
    jp nz, Jump_038_6fc5                          ; $4da3: $c2 $c5 $6f

    rst $20                                       ; $4da6: $e7
    ld c, $5a                                     ; $4da7: $0e $5a
    ret c                                         ; $4da9: $d8

    dec bc                                        ; $4daa: $0b
    cp h                                          ; $4dab: $bc
    sub [hl]                                      ; $4dac: $96
    adc [hl]                                      ; $4dad: $8e
    cp b                                          ; $4dae: $b8
    ld b, h                                       ; $4daf: $44
    ld b, d                                       ; $4db0: $42
    ld e, a                                       ; $4db1: $5f

jr_038_4db2:
    sub d                                         ; $4db2: $92
    inc bc                                        ; $4db3: $03
    jp Jump_000_1762                              ; $4db4: $c3 $62 $17


    dec sp                                        ; $4db7: $3b
    adc h                                         ; $4db8: $8c
    inc h                                         ; $4db9: $24
    ld d, a                                       ; $4dba: $57
    ld c, $b3                                     ; $4dbb: $0e $b3
    reti                                          ; $4dbd: $d9


    ld h, d                                       ; $4dbe: $62
    jp hl                                         ; $4dbf: $e9


    ld [$11fa], sp                                ; $4dc0: $08 $fa $11
    cp l                                          ; $4dc3: $bd
    ld a, [c]                                     ; $4dc4: $f2
    push de                                       ; $4dc5: $d5
    sub c                                         ; $4dc6: $91
    inc bc                                        ; $4dc7: $03
    inc hl                                        ; $4dc8: $23
    cp [hl]                                       ; $4dc9: $be
    add b                                         ; $4dca: $80
    dec sp                                        ; $4dcb: $3b
    dec bc                                        ; $4dcc: $0b
    dec c                                         ; $4dcd: $0d
    ld h, a                                       ; $4dce: $67
    ld e, [hl]                                    ; $4dcf: $5e
    ld l, l                                       ; $4dd0: $6d
    add hl, hl                                    ; $4dd1: $29
    sub e                                         ; $4dd2: $93
    ccf                                           ; $4dd3: $3f
    ld c, d                                       ; $4dd4: $4a
    ld b, d                                       ; $4dd5: $42
    inc [hl]                                      ; $4dd6: $34
    call $8c01                                    ; $4dd7: $cd $01 $8c
    ld [hl], d                                    ; $4dda: $72
    adc l                                         ; $4ddb: $8d
    db $e3                                        ; $4ddc: $e3
    ld h, $7f                                     ; $4ddd: $26 $7f
    ld c, d                                       ; $4ddf: $4a
    db $dd                                        ; $4de0: $dd
    adc c                                         ; $4de1: $89
    dec sp                                        ; $4de2: $3b
    ld c, e                                       ; $4de3: $4b
    db $ec                                        ; $4de4: $ec
    and a                                         ; $4de5: $a7
    adc $01                                       ; $4de6: $ce $01
    call z, $ad4b                                 ; $4de8: $cc $4b $ad
    sbc [hl]                                      ; $4deb: $9e
    ld h, h                                       ; $4dec: $64
    and h                                         ; $4ded: $a4
    jp nz, $d3e0                                  ; $4dee: $c2 $e0 $d3

    ld [hl], a                                    ; $4df1: $77
    and [hl]                                      ; $4df2: $a6
    ret                                           ; $4df3: $c9


    sbc d                                         ; $4df4: $9a
    inc bc                                        ; $4df5: $03
    ld c, c                                       ; $4df6: $49
    xor d                                         ; $4df7: $aa
    ld l, h                                       ; $4df8: $6c
    jr nz, jr_038_4e2f                            ; $4df9: $20 $34

    or [hl]                                       ; $4dfb: $b6
    jp c, $d1d2                                   ; $4dfc: $da $d2 $d1

    or c                                          ; $4dff: $b1
    scf                                           ; $4e00: $37
    db $d3                                        ; $4e01: $d3
    db $ec                                        ; $4e02: $ec
    inc hl                                        ; $4e03: $23
    ld a, [hl-]                                   ; $4e04: $3a
    call Call_038_4901                            ; $4e05: $cd $01 $49
    xor d                                         ; $4e08: $aa
    ld l, h                                       ; $4e09: $6c
    jr nz, jr_038_4e40                            ; $4e0a: $20 $34

    adc [hl]                                      ; $4e0c: $8e
    adc [hl]                                      ; $4e0d: $8e
    jr nc, jr_038_4db2                            ; $4e0e: $30 $a2

    ld l, c                                       ; $4e10: $69
    ld h, [hl]                                    ; $4e11: $66
    db $e4                                        ; $4e12: $e4
    cpl                                           ; $4e13: $2f
    sub c                                         ; $4e14: $91
    add b                                         ; $4e15: $80
    adc [hl]                                      ; $4e16: $8e
    cp d                                          ; $4e17: $ba

jr_038_4e18:
    ldh [$67], a                                  ; $4e18: $e0 $67
    add $34                                       ; $4e1a: $c6 $34
    rlca                                          ; $4e1c: $07
    ld c, c                                       ; $4e1d: $49
    xor d                                         ; $4e1e: $aa
    ld l, h                                       ; $4e1f: $6c
    jr nz, jr_038_4e56                            ; $4e20: $20 $34

    or [hl]                                       ; $4e22: $b6
    jp c, $a1d2                                   ; $4e23: $da $d2 $a1

    inc bc                                        ; $4e26: $03
    rla                                           ; $4e27: $17
    inc a                                         ; $4e28: $3c
    rst $18                                       ; $4e29: $df
    sbc h                                         ; $4e2a: $9c
    and $49                                       ; $4e2b: $e6 $49
    xor d                                         ; $4e2d: $aa
    ld l, h                                       ; $4e2e: $6c

jr_038_4e2f:
    jr nz, @+$36                                  ; $4e2f: $20 $34

    adc [hl]                                      ; $4e31: $8e
    ld c, $f7                                     ; $4e32: $0e $f7
    jr jr_038_4eb0                                ; $4e34: $18 $7a

    dec c                                         ; $4e36: $0d
    ld h, b                                       ; $4e37: $60
    add a                                         ; $4e38: $87
    dec hl                                        ; $4e39: $2b
    ld [$7dbd], a                                 ; $4e3a: $ea $bd $7d
    ld b, l                                       ; $4e3d: $45
    cp h                                          ; $4e3e: $bc
    xor a                                         ; $4e3f: $af

jr_038_4e40:
    jr nc, @-$31                                  ; $4e40: $30 $cd

    ld bc, $aa49                                  ; $4e42: $01 $49 $aa
    ld l, h                                       ; $4e45: $6c
    jr nz, jr_038_4e7c                            ; $4e46: $20 $34

    or [hl]                                       ; $4e48: $b6
    inc hl                                        ; $4e49: $23
    dec h                                         ; $4e4a: $25
    db $ed                                        ; $4e4b: $ed
    inc e                                         ; $4e4c: $1c
    sub h                                         ; $4e4d: $94
    add $e0                                       ; $4e4e: $c6 $e0
    ld e, a                                       ; $4e50: $5f
    ld l, l                                       ; $4e51: $6d
    pop bc                                        ; $4e52: $c1
    sbc [hl]                                      ; $4e53: $9e
    ldh a, [$15]                                  ; $4e54: $f0 $15

jr_038_4e56:
    ld l, e                                       ; $4e56: $6b
    ld b, c                                       ; $4e57: $41
    ld hl, sp+$6c                                 ; $4e58: $f8 $6c
    ld h, [hl]                                    ; $4e5a: $66
    db $e4                                        ; $4e5b: $e4
    cpl                                           ; $4e5c: $2f
    sub c                                         ; $4e5d: $91
    add b                                         ; $4e5e: $80
    inc [hl]                                      ; $4e5f: $34

jr_038_4e60:
    rlca                                          ; $4e60: $07
    ld c, c                                       ; $4e61: $49
    xor d                                         ; $4e62: $aa
    ld l, h                                       ; $4e63: $6c
    jr nz, jr_038_4e9a                            ; $4e64: $20 $34

    or [hl]                                       ; $4e66: $b6
    jp c, Jump_038_61d2                           ; $4e67: $da $d2 $61

    adc d                                         ; $4e6a: $8a
    cp a                                          ; $4e6b: $bf
    rst $30                                       ; $4e6c: $f7
    ld d, a                                       ; $4e6d: $57
    ld d, e                                       ; $4e6e: $53
    or l                                          ; $4e6f: $b5
    ld e, c                                       ; $4e70: $59
    ld h, a                                       ; $4e71: $67
    and c                                         ; $4e72: $a1
    sub a                                         ; $4e73: $97
    sub d                                         ; $4e74: $92
    ret nz                                        ; $4e75: $c0

    rst $10                                       ; $4e76: $d7
    cp a                                          ; $4e77: $bf
    cp d                                          ; $4e78: $ba
    jp Jump_000_05e8                              ; $4e79: $c3 $e8 $05


jr_038_4e7c:
    add b                                         ; $4e7c: $80
    ld l, c                                       ; $4e7d: $69
    ld c, $49                                     ; $4e7e: $0e $49
    xor d                                         ; $4e80: $aa
    ld l, h                                       ; $4e81: $6c
    jr nz, jr_038_4e18                            ; $4e82: $20 $94

    ld [hl], l                                    ; $4e84: $75
    ld [hl], h                                    ; $4e85: $74
    db $e4                                        ; $4e86: $e4
    rst $10                                       ; $4e87: $d7
    rst $38                                       ; $4e88: $ff
    add sp, -$38                                  ; $4e89: $e8 $c8
    ld c, a                                       ; $4e8b: $4f
    ld l, a                                       ; $4e8c: $6f
    or c                                          ; $4e8d: $b1
    ret c                                         ; $4e8e: $d8

    and c                                         ; $4e8f: $a1
    ld c, e                                       ; $4e90: $4b
    ld h, $65                                     ; $4e91: $26 $65
    ld l, $41                                     ; $4e93: $2e $41
    sub d                                         ; $4e95: $92
    ld a, [hl]                                    ; $4e96: $7e
    ld c, d                                       ; $4e97: $4a
    ld e, l                                       ; $4e98: $5d
    ld b, [hl]                                    ; $4e99: $46

jr_038_4e9a:
    ld d, e                                       ; $4e9a: $53
    ld h, a                                       ; $4e9b: $67
    sbc $e7                                       ; $4e9c: $de $e7
    nop                                           ; $4e9e: $00
    ld l, a                                       ; $4e9f: $6f
    sbc d                                         ; $4ea0: $9a
    inc bc                                        ; $4ea1: $03
    ld c, c                                       ; $4ea2: $49
    xor d                                         ; $4ea3: $aa
    ld l, h                                       ; $4ea4: $6c
    jr nz, jr_038_4edb                            ; $4ea5: $20 $34

    adc [hl]                                      ; $4ea7: $8e
    ld [hl-], a                                   ; $4ea8: $32
    ld c, c                                       ; $4ea9: $49
    db $e3                                        ; $4eaa: $e3
    call c, $78bf                                 ; $4eab: $dc $bf $78
    jp hl                                         ; $4eae: $e9


    rst $10                                       ; $4eaf: $d7

jr_038_4eb0:
    sbc $32                                       ; $4eb0: $de $32
    ld d, l                                       ; $4eb2: $55
    or $65                                        ; $4eb3: $f6 $65
    add b                                         ; $4eb5: $80
    xor d                                         ; $4eb6: $aa
    inc bc                                        ; $4eb7: $03
    dec sp                                        ; $4eb8: $3b
    ld a, [c]                                     ; $4eb9: $f2
    ld h, a                                       ; $4eba: $67
    add c                                         ; $4ebb: $81
    db $fc                                        ; $4ebc: $fc
    cp c                                          ; $4ebd: $b9
    ld c, h                                       ; $4ebe: $4c
    jp nc, $9138                                  ; $4ebf: $d2 $38 $91

    db $dd                                        ; $4ec2: $dd
    inc e                                         ; $4ec3: $1c
    ldh [rKEY1], a                                ; $4ec4: $e0 $4d
    ld [hl], e                                    ; $4ec6: $73
    ld c, c                                       ; $4ec7: $49
    xor d                                         ; $4ec8: $aa
    ld l, h                                       ; $4ec9: $6c
    jr nz, jr_038_4e60                            ; $4eca: $20 $94

    ld [hl], l                                    ; $4ecc: $75
    sub h                                         ; $4ecd: $94
    ld d, c                                       ; $4ece: $51
    ld h, d                                       ; $4ecf: $62
    or e                                          ; $4ed0: $b3
    dec bc                                        ; $4ed1: $0b
    nop                                           ; $4ed2: $00
    rst $08                                       ; $4ed3: $cf
    push de                                       ; $4ed4: $d5
    sub [hl]                                      ; $4ed5: $96
    sbc [hl]                                      ; $4ed6: $9e
    ldh a, [$15]                                  ; $4ed7: $f0 $15
    ld l, e                                       ; $4ed9: $6b
    or c                                          ; $4eda: $b1

jr_038_4edb:
    or b                                          ; $4edb: $b0
    ld a, a                                       ; $4edc: $7f
    ld l, a                                       ; $4edd: $6f
    ld l, c                                       ; $4ede: $69
    ld c, $49                                     ; $4edf: $0e $49
    xor d                                         ; $4ee1: $aa
    ld l, h                                       ; $4ee2: $6c
    jr nz, @+$36                                  ; $4ee3: $20 $34

    or [hl]                                       ; $4ee5: $b6
    adc [hl]                                      ; $4ee6: $8e
    push af                                       ; $4ee7: $f5
    pop de                                        ; $4ee8: $d1
    ld a, c                                       ; $4ee9: $79
    dec l                                         ; $4eea: $2d
    inc [hl]                                      ; $4eeb: $34
    adc h                                         ; $4eec: $8c
    ld d, l                                       ; $4eed: $55
    dec bc                                        ; $4eee: $0b
    sub [hl]                                      ; $4eef: $96
    ld [hl-], a                                   ; $4ef0: $32
    ld c, d                                       ; $4ef1: $4a
    ld l, h                                       ; $4ef2: $6c
    halt                                          ; $4ef3: $76
    ld bc, $9a60                                  ; $4ef4: $01 $60 $9a
    inc bc                                        ; $4ef7: $03
    ld c, c                                       ; $4ef8: $49
    xor d                                         ; $4ef9: $aa
    inc h                                         ; $4efa: $24
    sub $72                                       ; $4efb: $d6 $72
    sbc d                                         ; $4efd: $9a
    or d                                          ; $4efe: $b2
    jr nz, jr_038_4f55                            ; $4eff: $20 $54

    ld a, e                                       ; $4f01: $7b
    res 6, h                                      ; $4f02: $cb $b4
    db $d3                                        ; $4f04: $d3
    inc e                                         ; $4f05: $1c
    ld c, c                                       ; $4f06: $49
    xor d                                         ; $4f07: $aa
    ld l, h                                       ; $4f08: $6c
    jr nz, @+$36                                  ; $4f09: $20 $34

    or [hl]                                       ; $4f0b: $b6
    adc [hl]                                      ; $4f0c: $8e
    push af                                       ; $4f0d: $f5
    pop de                                        ; $4f0e: $d1
    ld de, $9b96                                  ; $4f0f: $11 $96 $9b
    dec h                                         ; $4f12: $25
    call Call_038_4901                            ; $4f13: $cd $01 $49
    xor d                                         ; $4f16: $aa
    ld l, h                                       ; $4f17: $6c
    jr nz, jr_038_4f4e                            ; $4f18: $20 $34

    or [hl]                                       ; $4f1a: $b6
    adc [hl]                                      ; $4f1b: $8e
    push af                                       ; $4f1c: $f5
    pop de                                        ; $4f1d: $d1
    ld de, $9b96                                  ; $4f1e: $11 $96 $9b
    dec h                                         ; $4f21: $25
    call Call_038_4901                            ; $4f22: $cd $01 $49
    xor d                                         ; $4f25: $aa
    ld l, h                                       ; $4f26: $6c
    jr nz, jr_038_4f5d                            ; $4f27: $20 $34

    or [hl]                                       ; $4f29: $b6
    adc [hl]                                      ; $4f2a: $8e
    push af                                       ; $4f2b: $f5
    pop de                                        ; $4f2c: $d1
    ld de, $9b96                                  ; $4f2d: $11 $96 $9b
    dec h                                         ; $4f30: $25
    call Call_038_4901                            ; $4f31: $cd $01 $49
    xor d                                         ; $4f34: $aa
    ld l, h                                       ; $4f35: $6c
    jr nz, jr_038_4f6c                            ; $4f36: $20 $34

    adc [hl]                                      ; $4f38: $8e
    ld h, $5f                                     ; $4f39: $26 $5f
    reti                                          ; $4f3b: $d9


    db $fd                                        ; $4f3c: $fd
    dec bc                                        ; $4f3d: $0b
    ldh [$c4], a                                  ; $4f3e: $e0 $c4
    jp $1f4f                                      ; $4f40: $c3 $4f $1f


    db $10                                        ; $4f43: $10
    inc hl                                        ; $4f44: $23
    and [hl]                                      ; $4f45: $a6
    add hl, sp                                    ; $4f46: $39

Jump_038_4f47:
    ld c, c                                       ; $4f47: $49
    xor d                                         ; $4f48: $aa
    ld l, h                                       ; $4f49: $6c
    jr nz, @+$36                                  ; $4f4a: $20 $34

    adc [hl]                                      ; $4f4c: $8e
    adc [hl]                                      ; $4f4d: $8e

jr_038_4f4e:
    and b                                         ; $4f4e: $a0
    rra                                           ; $4f4f: $1f
    pop de                                        ; $4f50: $d1
    dec hl                                        ; $4f51: $2b
    ld e, a                                       ; $4f52: $5f
    dec e                                         ; $4f53: $1d
    dec h                                         ; $4f54: $25

jr_038_4f55:
    ld c, b                                       ; $4f55: $48
    jp nc, Jump_000_14a1                          ; $4f56: $d2 $a1 $14

    call c, $d4b9                                 ; $4f59: $dc $b9 $d4
    ld a, d                                       ; $4f5c: $7a

jr_038_4f5d:
    db $d3                                        ; $4f5d: $d3
    inc e                                         ; $4f5e: $1c
    ld c, c                                       ; $4f5f: $49
    xor d                                         ; $4f60: $aa
    ld l, h                                       ; $4f61: $6c
    jr nz, jr_038_4f98                            ; $4f62: $20 $34

    adc [hl]                                      ; $4f64: $8e
    adc [hl]                                      ; $4f65: $8e
    and b                                         ; $4f66: $a0
    rra                                           ; $4f67: $1f
    pop de                                        ; $4f68: $d1
    dec hl                                        ; $4f69: $2b
    ld e, a                                       ; $4f6a: $5f
    dec e                                         ; $4f6b: $1d

jr_038_4f6c:
    dec h                                         ; $4f6c: $25
    ld c, b                                       ; $4f6d: $48
    jp nc, $12a1                                  ; $4f6e: $d2 $a1 $12

    ldh a, [$8e]                                  ; $4f71: $f0 $8e
    rrca                                          ; $4f73: $0f
    ld [hl], c                                    ; $4f74: $71
    ld c, e                                       ; $4f75: $4b
    ld [hl], e                                    ; $4f76: $73
    ld c, c                                       ; $4f77: $49
    xor d                                         ; $4f78: $aa
    ld l, h                                       ; $4f79: $6c
    jr nz, @-$0a                                  ; $4f7a: $20 $f4

    dec hl                                        ; $4f7c: $2b
    and d                                         ; $4f7d: $a2
    jp c, $b9d2                                   ; $4f7e: $da $d2 $b9

    ld c, b                                       ; $4f81: $48
    ld [$336a], sp                                ; $4f82: $08 $6a $33
    call z, $b53e                                 ; $4f85: $cc $3e $b5
    add h                                         ; $4f88: $84
    db $d3                                        ; $4f89: $d3
    inc e                                         ; $4f8a: $1c
    ld c, c                                       ; $4f8b: $49
    xor d                                         ; $4f8c: $aa
    ld l, h                                       ; $4f8d: $6c
    jr nz, jr_038_4fc4                            ; $4f8e: $20 $34

    adc [hl]                                      ; $4f90: $8e
    adc [hl]                                      ; $4f91: $8e
    and b                                         ; $4f92: $a0
    rra                                           ; $4f93: $1f
    pop de                                        ; $4f94: $d1
    dec hl                                        ; $4f95: $2b
    ld e, a                                       ; $4f96: $5f
    dec e                                         ; $4f97: $1d

jr_038_4f98:
    dec h                                         ; $4f98: $25
    ld c, b                                       ; $4f99: $48
    jp nc, $08a1                                  ; $4f9a: $d2 $a1 $08

    ld [hl], d                                    ; $4f9d: $72
    db $ed                                        ; $4f9e: $ed
    ld [hl], l                                    ; $4f9f: $75
    add h                                         ; $4fa0: $84
    db $d3                                        ; $4fa1: $d3
    inc e                                         ; $4fa2: $1c
    ld c, c                                       ; $4fa3: $49
    xor d                                         ; $4fa4: $aa
    ld l, h                                       ; $4fa5: $6c
    jr nz, jr_038_4fdc                            ; $4fa6: $20 $34

    adc [hl]                                      ; $4fa8: $8e
    ld c, $33                                     ; $4fa9: $0e $33
    ret nz                                        ; $4fab: $c0

    nop                                           ; $4fac: $00
    pop af                                        ; $4fad: $f1
    ld [hl], a                                    ; $4fae: $77
    cp l                                          ; $4faf: $bd
    inc de                                        ; $4fb0: $13
    rst $08                                       ; $4fb1: $cf
    push af                                       ; $4fb2: $f5
    push de                                       ; $4fb3: $d5
    sub c                                         ; $4fb4: $91
    and $49                                       ; $4fb5: $e6 $49
    xor d                                         ; $4fb7: $aa
    ld l, h                                       ; $4fb8: $6c
    jr nz, @+$36                                  ; $4fb9: $20 $34

    adc [hl]                                      ; $4fbb: $8e
    ld c, $33                                     ; $4fbc: $0e $33
    ld a, d                                       ; $4fbe: $7a
    inc sp                                        ; $4fbf: $33
    inc hl                                        ; $4fc0: $23
    ld a, a                                       ; $4fc1: $7f
    adc c                                         ; $4fc2: $89
    inc b                                         ; $4fc3: $04

jr_038_4fc4:
    and h                                         ; $4fc4: $a4
    add hl, sp                                    ; $4fc5: $39
    ld c, c                                       ; $4fc6: $49
    xor d                                         ; $4fc7: $aa
    ld l, h                                       ; $4fc8: $6c
    jr nz, jr_038_4fff                            ; $4fc9: $20 $34

    adc [hl]                                      ; $4fcb: $8e
    adc [hl]                                      ; $4fcc: $8e
    and b                                         ; $4fcd: $a0
    rra                                           ; $4fce: $1f
    pop de                                        ; $4fcf: $d1
    dec hl                                        ; $4fd0: $2b
    ld e, a                                       ; $4fd1: $5f

jr_038_4fd2:
    dec e                                         ; $4fd2: $1d
    dec h                                         ; $4fd3: $25
    ld c, b                                       ; $4fd4: $48
    jp nc, $be13                                  ; $4fd5: $d2 $13 $be

    ld h, d                                       ; $4fd8: $62
    dec l                                         ; $4fd9: $2d
    scf                                           ; $4fda: $37
    or l                                          ; $4fdb: $b5

jr_038_4fdc:
    ld [$0e69], sp                                ; $4fdc: $08 $69 $0e
    ld c, c                                       ; $4fdf: $49
    xor d                                         ; $4fe0: $aa
    ld l, h                                       ; $4fe1: $6c
    jr nz, jr_038_5018                            ; $4fe2: $20 $34

Jump_038_4fe4:
    adc [hl]                                      ; $4fe4: $8e
    adc [hl]                                      ; $4fe5: $8e
    and b                                         ; $4fe6: $a0
    rra                                           ; $4fe7: $1f
    pop de                                        ; $4fe8: $d1
    dec hl                                        ; $4fe9: $2b
    ld e, a                                       ; $4fea: $5f
    dec e                                         ; $4feb: $1d
    dec h                                         ; $4fec: $25
    ld c, b                                       ; $4fed: $48
    jp nc, Jump_000_2d79                          ; $4fee: $d2 $79 $2d

    ldh [$d0], a                                  ; $4ff1: $e0 $d0
    sub c                                         ; $4ff3: $91
    xor c                                         ; $4ff4: $a9
    call Call_000_399a                            ; $4ff5: $cd $9a $39
    di                                            ; $4ff8: $f3
    ld d, [hl]                                    ; $4ff9: $56
    add a                                         ; $4ffa: $87
    xor e                                         ; $4ffb: $ab
    push de                                       ; $4ffc: $d5
    sbc $a8                                       ; $4ffd: $de $a8

jr_038_4fff:
    or a                                          ; $4fff: $b7
    inc hl                                        ; $5000: $23
    ld c, b                                       ; $5001: $48
    adc e                                         ; $5002: $8b
    ldh [$34], a                                  ; $5003: $e0 $34
    rlca                                          ; $5005: $07
    ld c, c                                       ; $5006: $49
    xor d                                         ; $5007: $aa
    rst $28                                       ; $5008: $ef
    inc hl                                        ; $5009: $23
    ld d, h                                       ; $500a: $54
    ld a, e                                       ; $500b: $7b
    rr h                                          ; $500c: $cb $1c
    ld [$a667], sp                                ; $500e: $08 $67 $a6
    sbc l                                         ; $5011: $9d
    db $dd                                        ; $5012: $dd
    ld a, [c]                                     ; $5013: $f2
    sbc h                                         ; $5014: $9c
    sbc c                                         ; $5015: $99
    xor l                                         ; $5016: $ad
    rla                                           ; $5017: $17

jr_038_5018:
    or h                                          ; $5018: $b4
    ld sp, hl                                     ; $5019: $f9
    dec c                                         ; $501a: $0d
    jp nc, Jump_038_491c                          ; $501b: $d2 $1c $49

    xor d                                         ; $501e: $aa
    ld l, h                                       ; $501f: $6c
    jr nz, jr_038_5056                            ; $5020: $20 $34

    adc [hl]                                      ; $5022: $8e
    ld e, d                                       ; $5023: $5a
    db $10                                        ; $5024: $10
    cp h                                          ; $5025: $bc
    dec e                                         ; $5026: $1d
    jp z, Jump_038_7f22                           ; $5027: $ca $22 $7f

    dec de                                        ; $502a: $1b
    nop                                           ; $502b: $00
    push de                                       ; $502c: $d5
    add $0e                                       ; $502d: $c6 $0e
    ld e, d                                       ; $502f: $5a
    ret c                                         ; $5030: $d8

    dec bc                                        ; $5031: $0b
    cp h                                          ; $5032: $bc
    sbc $8e                                       ; $5033: $de $8e
    cp $54                                        ; $5035: $fe $54
    ld h, e                                       ; $5037: $63
    sbc d                                         ; $5038: $9a
    inc bc                                        ; $5039: $03
    ld c, c                                       ; $503a: $49
    xor d                                         ; $503b: $aa
    ld l, h                                       ; $503c: $6c
    jr nz, jr_038_5073                            ; $503d: $20 $34

    adc [hl]                                      ; $503f: $8e
    sub d                                         ; $5040: $92
    rst $28                                       ; $5041: $ef
    ld c, $f0                                     ; $5042: $0e $f0
    halt                                          ; $5044: $76
    jr z, jr_038_4fd2                             ; $5045: $28 $8b

    db $fc                                        ; $5047: $fc
    ld l, l                                       ; $5048: $6d

jr_038_5049:
    nop                                           ; $5049: $00
    ld d, h                                       ; $504a: $54
    dec de                                        ; $504b: $1b
    dec sp                                        ; $504c: $3b
    ld l, b                                       ; $504d: $68
    ld h, c                                       ; $504e: $61
    cpl                                           ; $504f: $2f
    ldh a, [$7a]                                  ; $5050: $f0 $7a
    dec sp                                        ; $5052: $3b
    ld a, [$8d53]                                 ; $5053: $fa $53 $8d

jr_038_5056:
    ld l, c                                       ; $5056: $69
    ld c, $49                                     ; $5057: $0e $49
    xor d                                         ; $5059: $aa
    ld l, h                                       ; $505a: $6c
    jr nz, jr_038_5091                            ; $505b: $20 $34

    adc [hl]                                      ; $505d: $8e
    ld l, d                                       ; $505e: $6a
    add hl, bc                                    ; $505f: $09
    nop                                           ; $5060: $00
    ld l, a                                       ; $5061: $6f
    add a                                         ; $5062: $87
    or d                                          ; $5063: $b2
    ret z                                         ; $5064: $c8

    rst $18                                       ; $5065: $df
    ld b, $40                                     ; $5066: $06 $40
    or l                                          ; $5068: $b5
    or c                                          ; $5069: $b1
    add e                                         ; $506a: $83
    ld d, $f6                                     ; $506b: $16 $f6
    ld [bc], a                                    ; $506d: $02
    xor a                                         ; $506e: $af
    or a                                          ; $506f: $b7
    and e                                         ; $5070: $a3
    ccf                                           ; $5071: $3f
    push de                                       ; $5072: $d5

jr_038_5073:
    sbc b                                         ; $5073: $98
    and $49                                       ; $5074: $e6 $49
    xor d                                         ; $5076: $aa
    ld l, h                                       ; $5077: $6c
    jr nz, jr_038_50ae                            ; $5078: $20 $34

    adc [hl]                                      ; $507a: $8e
    ld c, $86                                     ; $507b: $0e $86
    dec b                                         ; $507d: $05
    cp h                                          ; $507e: $bc
    dec e                                         ; $507f: $1d
    jp z, Jump_038_7f22                           ; $5080: $ca $22 $7f

    dec de                                        ; $5083: $1b
    nop                                           ; $5084: $00
    push de                                       ; $5085: $d5
    add $0e                                       ; $5086: $c6 $0e
    ld e, d                                       ; $5088: $5a
    ret c                                         ; $5089: $d8

    dec bc                                        ; $508a: $0b
    cp h                                          ; $508b: $bc
    sbc $8e                                       ; $508c: $de $8e
    cp $54                                        ; $508e: $fe $54
    ld h, e                                       ; $5090: $63

jr_038_5091:
    sbc d                                         ; $5091: $9a
    inc bc                                        ; $5092: $03
    ld c, c                                       ; $5093: $49
    xor d                                         ; $5094: $aa
    ld l, h                                       ; $5095: $6c
    jr nz, @+$36                                  ; $5096: $20 $34

    adc [hl]                                      ; $5098: $8e
    ld [de], a                                    ; $5099: $12
    and h                                         ; $509a: $a4
    dec h                                         ; $509b: $25
    ret nz                                        ; $509c: $c0

    db $db                                        ; $509d: $db
    and c                                         ; $509e: $a1
    inc l                                         ; $509f: $2c
    ld a, [c]                                     ; $50a0: $f2
    or a                                          ; $50a1: $b7
    ld bc, $6d50                                  ; $50a2: $01 $50 $6d
    db $ec                                        ; $50a5: $ec
    and b                                         ; $50a6: $a0
    add l                                         ; $50a7: $85
    cp l                                          ; $50a8: $bd
    ret nz                                        ; $50a9: $c0

    db $eb                                        ; $50aa: $eb
    db $ed                                        ; $50ab: $ed
    add sp, $4f                                   ; $50ac: $e8 $4f

jr_038_50ae:
    dec [hl]                                      ; $50ae: $35
    and [hl]                                      ; $50af: $a6
    add hl, sp                                    ; $50b0: $39
    ld c, c                                       ; $50b1: $49
    xor d                                         ; $50b2: $aa
    ld l, h                                       ; $50b3: $6c
    jr nz, jr_038_50ea                            ; $50b4: $20 $34

    adc [hl]                                      ; $50b6: $8e
    and d                                         ; $50b7: $a2
    ld sp, hl                                     ; $50b8: $f9
    ld b, e                                       ; $50b9: $43
    ldh a, [rPCM12]                               ; $50ba: $f0 $76
    jr z, jr_038_5049                             ; $50bc: $28 $8b

    db $fc                                        ; $50be: $fc
    ld l, l                                       ; $50bf: $6d
    nop                                           ; $50c0: $00
    ld d, h                                       ; $50c1: $54
    dec de                                        ; $50c2: $1b
    dec sp                                        ; $50c3: $3b
    ld l, b                                       ; $50c4: $68
    ld h, c                                       ; $50c5: $61
    cpl                                           ; $50c6: $2f
    ldh a, [$7a]                                  ; $50c7: $f0 $7a
    dec sp                                        ; $50c9: $3b
    ld a, [$8d53]                                 ; $50ca: $fa $53 $8d
    ld l, c                                       ; $50cd: $69
    ld c, $49                                     ; $50ce: $0e $49

jr_038_50d0:
    xor d                                         ; $50d0: $aa
    ld l, h                                       ; $50d1: $6c
    jr nz, jr_038_5108                            ; $50d2: $20 $34

    or [hl]                                       ; $50d4: $b6
    adc [hl]                                      ; $50d5: $8e
    push af                                       ; $50d6: $f5
    pop de                                        ; $50d7: $d1
    ld de, $9b96                                  ; $50d8: $11 $96 $9b
    dec h                                         ; $50db: $25
    call Call_038_4901                            ; $50dc: $cd $01 $49
    xor d                                         ; $50df: $aa
    ld l, h                                       ; $50e0: $6c
    jr nz, jr_038_5117                            ; $50e1: $20 $34

    or [hl]                                       ; $50e3: $b6
    adc [hl]                                      ; $50e4: $8e
    push af                                       ; $50e5: $f5
    pop de                                        ; $50e6: $d1
    ld de, $9b96                                  ; $50e7: $11 $96 $9b

jr_038_50ea:
    dec h                                         ; $50ea: $25
    call Call_038_4901                            ; $50eb: $cd $01 $49
    xor d                                         ; $50ee: $aa
    ld l, h                                       ; $50ef: $6c
    jr nz, jr_038_5126                            ; $50f0: $20 $34

    or [hl]                                       ; $50f2: $b6
    adc [hl]                                      ; $50f3: $8e
    push af                                       ; $50f4: $f5
    pop de                                        ; $50f5: $d1
    ld de, $9b96                                  ; $50f6: $11 $96 $9b
    dec h                                         ; $50f9: $25
    call Call_038_4901                            ; $50fa: $cd $01 $49
    xor d                                         ; $50fd: $aa
    ld l, h                                       ; $50fe: $6c
    jr nz, jr_038_5135                            ; $50ff: $20 $34

    or [hl]                                       ; $5101: $b6
    adc [hl]                                      ; $5102: $8e
    push af                                       ; $5103: $f5
    pop de                                        ; $5104: $d1
    ld de, $9b96                                  ; $5105: $11 $96 $9b

jr_038_5108:
    dec h                                         ; $5108: $25
    call Call_038_4901                            ; $5109: $cd $01 $49
    xor d                                         ; $510c: $aa
    ld l, h                                       ; $510d: $6c
    jr nz, jr_038_5144                            ; $510e: $20 $34

    or [hl]                                       ; $5110: $b6
    adc [hl]                                      ; $5111: $8e
    push af                                       ; $5112: $f5
    pop de                                        ; $5113: $d1
    ld de, $9b96                                  ; $5114: $11 $96 $9b

jr_038_5117:
    dec h                                         ; $5117: $25
    call Call_038_4901                            ; $5118: $cd $01 $49
    xor d                                         ; $511b: $aa
    ld l, h                                       ; $511c: $6c
    jr nz, @+$36                                  ; $511d: $20 $34

    or [hl]                                       ; $511f: $b6
    adc [hl]                                      ; $5120: $8e
    push af                                       ; $5121: $f5
    pop de                                        ; $5122: $d1
    ld de, $9b96                                  ; $5123: $11 $96 $9b

jr_038_5126:
    dec h                                         ; $5126: $25
    call Call_038_4901                            ; $5127: $cd $01 $49
    xor d                                         ; $512a: $aa
    ld l, h                                       ; $512b: $6c
    jr nz, jr_038_5162                            ; $512c: $20 $34

    or [hl]                                       ; $512e: $b6
    and e                                         ; $512f: $a3
    db $e4                                        ; $5130: $e4
    ld [hl+], a                                   ; $5131: $22
    adc h                                         ; $5132: $8c
    ld a, b                                       ; $5133: $78
    ld c, c                                       ; $5134: $49

jr_038_5135:
    ld h, a                                       ; $5135: $67
    and c                                         ; $5136: $a1
    ld bc, $e0f7                                  ; $5137: $01 $f7 $e0
    scf                                           ; $513a: $37
    db $ec                                        ; $513b: $ec
    jr nc, jr_038_50d0                            ; $513c: $30 $92

    ld e, h                                       ; $513e: $5c
    ld l, c                                       ; $513f: $69
    ld c, $49                                     ; $5140: $0e $49
    xor d                                         ; $5142: $aa
    ld l, h                                       ; $5143: $6c

jr_038_5144:
    jr nz, jr_038_517a                            ; $5144: $20 $34

    or [hl]                                       ; $5146: $b6
    adc [hl]                                      ; $5147: $8e
    push af                                       ; $5148: $f5
    ld d, c                                       ; $5149: $51
    ld l, d                                       ; $514a: $6a
    adc e                                         ; $514b: $8b
    or a                                          ; $514c: $b7
    inc hl                                        ; $514d: $23
    add sp, $47                                   ; $514e: $e8 $47
    db $f4                                        ; $5150: $f4
    jp z, $4757                                   ; $5151: $ca $57 $47

    sbc d                                         ; $5154: $9a
    inc bc                                        ; $5155: $03
    ld c, c                                       ; $5156: $49
    xor d                                         ; $5157: $aa
    ld l, h                                       ; $5158: $6c
    jr nz, @+$36                                  ; $5159: $20 $34

    or [hl]                                       ; $515b: $b6
    adc [hl]                                      ; $515c: $8e
    push af                                       ; $515d: $f5
    ld d, c                                       ; $515e: $51
    ld l, d                                       ; $515f: $6a
    adc e                                         ; $5160: $8b
    or a                                          ; $5161: $b7

jr_038_5162:
    inc hl                                        ; $5162: $23
    add sp, $47                                   ; $5163: $e8 $47
    db $f4                                        ; $5165: $f4
    jp z, $4757                                   ; $5166: $ca $57 $47

    sbc d                                         ; $5169: $9a
    inc bc                                        ; $516a: $03
    ld c, c                                       ; $516b: $49
    xor d                                         ; $516c: $aa
    ld l, h                                       ; $516d: $6c
    jr nz, jr_038_51a4                            ; $516e: $20 $34

    adc [hl]                                      ; $5170: $8e
    ld c, $5a                                     ; $5171: $0e $5a
    ret c                                         ; $5173: $d8

    dec bc                                        ; $5174: $0b
    cp h                                          ; $5175: $bc
    sbc $8e                                       ; $5176: $de $8e
    cp b                                          ; $5178: $b8
    ld b, h                                       ; $5179: $44

jr_038_517a:
    ld b, d                                       ; $517a: $42
    ld e, a                                       ; $517b: $5f
    sub d                                         ; $517c: $92
    and $49                                       ; $517d: $e6 $49
    xor d                                         ; $517f: $aa
    ld l, h                                       ; $5180: $6c
    jr nz, jr_038_51b7                            ; $5181: $20 $34

    adc [hl]                                      ; $5183: $8e
    ld [hl-], a                                   ; $5184: $32
    ld a, [$c89e]                                 ; $5185: $fa $9e $c8
    rra                                           ; $5188: $1f
    cp [hl]                                       ; $5189: $be
    xor a                                         ; $518a: $af
    jr nc, @-$31                                  ; $518b: $30 $cd

    ld bc, $aa49                                  ; $518d: $01 $49 $aa
    ld l, h                                       ; $5190: $6c
    jr nz, jr_038_51c7                            ; $5191: $20 $34

    or [hl]                                       ; $5193: $b6
    jp c, $91d2                                   ; $5194: $da $d2 $91

    adc c                                         ; $5197: $89
    sbc d                                         ; $5198: $9a
    ccf                                           ; $5199: $3f
    cpl                                           ; $519a: $2f
    ld e, h                                       ; $519b: $5c
    ld b, c                                       ; $519c: $41
    dec c                                         ; $519d: $0d
    ldh [$34], a                                  ; $519e: $e0 $34
    rlca                                          ; $51a0: $07
    ld c, c                                       ; $51a1: $49
    xor d                                         ; $51a2: $aa
    xor h                                         ; $51a3: $ac

jr_038_51a4:
    adc c                                         ; $51a4: $89
    ld e, b                                       ; $51a5: $58
    ld l, l                                       ; $51a6: $6d
    add h                                         ; $51a7: $84
    ld [$afe0], a                                 ; $51a8: $ea $e0 $af
    ld e, a                                       ; $51ab: $5f
    adc l                                         ; $51ac: $8d
    ld h, e                                       ; $51ad: $63
    ld a, c                                       ; $51ae: $79
    sbc a                                         ; $51af: $9f
    or d                                          ; $51b0: $b2
    dec e                                         ; $51b1: $1d
    cp h                                          ; $51b2: $bc
    or [hl]                                       ; $51b3: $b6
    ret                                           ; $51b4: $c9


    ld d, a                                       ; $51b5: $57
    halt                                          ; $51b6: $76

jr_038_51b7:
    rst $38                                       ; $51b7: $ff
    ld [bc], a                                    ; $51b8: $02
    sbc b                                         ; $51b9: $98
    and $49                                       ; $51ba: $e6 $49
    xor d                                         ; $51bc: $aa
    ld l, h                                       ; $51bd: $6c
    jr nz, jr_038_51f4                            ; $51be: $20 $34

    or [hl]                                       ; $51c0: $b6
    ret                                           ; $51c1: $c9


    ccf                                           ; $51c2: $3f
    sub e                                         ; $51c3: $93
    ret nc                                        ; $51c4: $d0

    ret c                                         ; $51c5: $d8

    ld h, h                                       ; $51c6: $64

jr_038_51c7:
    ld [de], a                                    ; $51c7: $12
    add b                                         ; $51c8: $80
    db $d3                                        ; $51c9: $d3
    inc e                                         ; $51ca: $1c
    ld c, c                                       ; $51cb: $49
    xor d                                         ; $51cc: $aa
    ld l, h                                       ; $51cd: $6c
    jr nz, jr_038_5204                            ; $51ce: $20 $34

    adc [hl]                                      ; $51d0: $8e
    adc [hl]                                      ; $51d1: $8e
    cp b                                          ; $51d2: $b8
    ld b, h                                       ; $51d3: $44
    ld b, d                                       ; $51d4: $42
    ld e, a                                       ; $51d5: $5f
    ld d, d                                       ; $51d6: $52
    ld l, l                                       ; $51d7: $6d
    xor h                                         ; $51d8: $ac
    dec b                                         ; $51d9: $05
    pop bc                                        ; $51da: $c1
    ld e, e                                       ; $51db: $5b
    ld h, $5c                                     ; $51dc: $26 $5c
    db $fc                                        ; $51de: $fc
    add [hl]                                      ; $51df: $86
    ld l, c                                       ; $51e0: $69
    ld c, $49                                     ; $51e1: $0e $49
    xor d                                         ; $51e3: $aa
    ld l, h                                       ; $51e4: $6c
    jr nz, jr_038_521b                            ; $51e5: $20 $34

    adc [hl]                                      ; $51e7: $8e
    adc [hl]                                      ; $51e8: $8e
    cp b                                          ; $51e9: $b8
    ld b, h                                       ; $51ea: $44
    ld b, d                                       ; $51eb: $42
    ld e, a                                       ; $51ec: $5f
    ld d, d                                       ; $51ed: $52
    ld l, l                                       ; $51ee: $6d
    inc l                                         ; $51ef: $2c
    ld sp, hl                                     ; $51f0: $f9
    xor $00                                       ; $51f1: $ee $00
    ld l, a                                       ; $51f3: $6f

jr_038_51f4:
    sbc c                                         ; $51f4: $99
    ld [hl], b                                    ; $51f5: $70
    pop af                                        ; $51f6: $f1
    dec de                                        ; $51f7: $1b
    and [hl]                                      ; $51f8: $a6
    add hl, sp                                    ; $51f9: $39
    ld c, c                                       ; $51fa: $49
    xor d                                         ; $51fb: $aa
    ld l, h                                       ; $51fc: $6c
    jr nz, jr_038_5233                            ; $51fd: $20 $34

    adc [hl]                                      ; $51ff: $8e
    adc [hl]                                      ; $5200: $8e
    cp b                                          ; $5201: $b8
    ld b, h                                       ; $5202: $44
    ld b, d                                       ; $5203: $42

jr_038_5204:
    ld e, a                                       ; $5204: $5f
    ld d, d                                       ; $5205: $52
    ld l, l                                       ; $5206: $6d
    xor h                                         ; $5207: $ac
    sub [hl]                                      ; $5208: $96
    nop                                           ; $5209: $00
    ldh a, [$96]                                  ; $520a: $f0 $96
    add hl, bc                                    ; $520c: $09
    rla                                           ; $520d: $17
    cp a                                          ; $520e: $bf
    ld h, c                                       ; $520f: $61
    sbc d                                         ; $5210: $9a
    inc bc                                        ; $5211: $03
    ld c, c                                       ; $5212: $49
    xor d                                         ; $5213: $aa
    ld l, h                                       ; $5214: $6c
    jr nz, jr_038_524b                            ; $5215: $20 $34

    adc [hl]                                      ; $5217: $8e
    adc [hl]                                      ; $5218: $8e
    cp b                                          ; $5219: $b8
    ld b, h                                       ; $521a: $44

jr_038_521b:
    ld b, d                                       ; $521b: $42
    ld e, a                                       ; $521c: $5f
    ld d, d                                       ; $521d: $52
    ld l, l                                       ; $521e: $6d
    db $ec                                        ; $521f: $ec
    ld h, b                                       ; $5220: $60
    ld e, b                                       ; $5221: $58
    ret nz                                        ; $5222: $c0

    ld e, e                                       ; $5223: $5b
    ld h, $5c                                     ; $5224: $26 $5c
    db $fc                                        ; $5226: $fc
    add [hl]                                      ; $5227: $86
    ld l, c                                       ; $5228: $69
    ld c, $49                                     ; $5229: $0e $49
    xor d                                         ; $522b: $aa
    ld l, h                                       ; $522c: $6c
    jr nz, jr_038_5263                            ; $522d: $20 $34

    adc [hl]                                      ; $522f: $8e
    adc [hl]                                      ; $5230: $8e
    cp b                                          ; $5231: $b8
    ld b, h                                       ; $5232: $44

jr_038_5233:
    ld b, d                                       ; $5233: $42
    ld e, a                                       ; $5234: $5f
    ld d, d                                       ; $5235: $52
    ld l, l                                       ; $5236: $6d
    inc l                                         ; $5237: $2c
    ld b, c                                       ; $5238: $41
    ld e, d                                       ; $5239: $5a
    ld [bc], a                                    ; $523a: $02
    cp h                                          ; $523b: $bc
    ld h, l                                       ; $523c: $65
    jp nz, Jump_038_6fc5                          ; $523d: $c2 $c5 $6f

    sbc b                                         ; $5240: $98
    and $49                                       ; $5241: $e6 $49
    xor d                                         ; $5243: $aa
    ld l, h                                       ; $5244: $6c
    jr nz, jr_038_527b                            ; $5245: $20 $34

    adc [hl]                                      ; $5247: $8e
    adc [hl]                                      ; $5248: $8e
    cp b                                          ; $5249: $b8
    ld b, h                                       ; $524a: $44

jr_038_524b:
    ld b, d                                       ; $524b: $42
    ld e, a                                       ; $524c: $5f
    ld d, d                                       ; $524d: $52
    ld l, l                                       ; $524e: $6d
    inc l                                         ; $524f: $2c
    sbc d                                         ; $5250: $9a
    ccf                                           ; $5251: $3f
    inc b                                         ; $5252: $04
    ld l, a                                       ; $5253: $6f
    sbc c                                         ; $5254: $99
    ld [hl], b                                    ; $5255: $70
    pop af                                        ; $5256: $f1
    dec de                                        ; $5257: $1b
    and [hl]                                      ; $5258: $a6
    add hl, sp                                    ; $5259: $39
    ld c, c                                       ; $525a: $49
    xor d                                         ; $525b: $aa
    ld l, h                                       ; $525c: $6c
    jr nz, jr_038_5293                            ; $525d: $20 $34

    adc [hl]                                      ; $525f: $8e
    adc [hl]                                      ; $5260: $8e
    cp b                                          ; $5261: $b8
    ld b, h                                       ; $5262: $44

jr_038_5263:
    ld b, d                                       ; $5263: $42
    ld e, a                                       ; $5264: $5f
    ld d, d                                       ; $5265: $52
    ld l, l                                       ; $5266: $6d
    inc l                                         ; $5267: $2c
    add [hl]                                      ; $5268: $86
    ld e, c                                       ; $5269: $59
    ld l, a                                       ; $526a: $6f
    sbc c                                         ; $526b: $99
    ld [hl], b                                    ; $526c: $70
    pop af                                        ; $526d: $f1
    dec de                                        ; $526e: $1b
    and [hl]                                      ; $526f: $a6
    add hl, sp                                    ; $5270: $39
    ld c, c                                       ; $5271: $49
    xor d                                         ; $5272: $aa
    ld l, h                                       ; $5273: $6c
    jr nz, jr_038_52aa                            ; $5274: $20 $34

    adc [hl]                                      ; $5276: $8e
    ld [hl-], a                                   ; $5277: $32
    ld a, [de]                                    ; $5278: $1a
    ld sp, hl                                     ; $5279: $f9
    ld c, e                                       ; $527a: $4b

jr_038_527b:
    inc h                                         ; $527b: $24
    and b                                         ; $527c: $a0
    jp c, Jump_038_64d8                           ; $527d: $da $d8 $64

    rlca                                          ; $5280: $07
    or l                                          ; $5281: $b5
    ld h, b                                       ; $5282: $60
    sbc d                                         ; $5283: $9a
    inc bc                                        ; $5284: $03
    ld c, c                                       ; $5285: $49
    xor d                                         ; $5286: $aa
    ld l, h                                       ; $5287: $6c
    jr nz, jr_038_52be                            ; $5288: $20 $34

    adc [hl]                                      ; $528a: $8e
    adc [hl]                                      ; $528b: $8e
    and b                                         ; $528c: $a0
    rra                                           ; $528d: $1f
    pop de                                        ; $528e: $d1
    dec hl                                        ; $528f: $2b
    ld e, a                                       ; $5290: $5f
    dec e                                         ; $5291: $1d
    dec h                                         ; $5292: $25

jr_038_5293:
    ld c, b                                       ; $5293: $48
    ld d, d                                       ; $5294: $52
    ld b, [hl]                                    ; $5295: $46
    inc hl                                        ; $5296: $23
    ld a, a                                       ; $5297: $7f
    pop bc                                        ; $5298: $c1
    rra                                           ; $5299: $1f
    cp b                                          ; $529a: $b8
    jp c, $91d2                                   ; $529b: $da $d2 $91

    ccf                                           ; $529e: $3f
    dec bc                                        ; $529f: $0b
    and a                                         ; $52a0: $a7
    add hl, sp                                    ; $52a1: $39
    ld c, c                                       ; $52a2: $49
    xor d                                         ; $52a3: $aa
    ld l, h                                       ; $52a4: $6c
    jr nz, jr_038_52db                            ; $52a5: $20 $34

    adc [hl]                                      ; $52a7: $8e
    ld h, $5f                                     ; $52a8: $26 $5f

jr_038_52aa:
    jr c, @+$12                                   ; $52aa: $38 $10

    ldh a, [$29]                                  ; $52ac: $f0 $29
    ld b, c                                       ; $52ae: $41
    ld c, c                                       ; $52af: $49
    sbc c                                         ; $52b0: $99
    ld l, c                                       ; $52b1: $69
    sbc d                                         ; $52b2: $9a
    inc bc                                        ; $52b3: $03
    ld c, c                                       ; $52b4: $49
    xor d                                         ; $52b5: $aa
    ld l, h                                       ; $52b6: $6c
    jr nz, @+$36                                  ; $52b7: $20 $34

    or [hl]                                       ; $52b9: $b6
    jp c, Jump_038_61d2                           ; $52ba: $da $d2 $61

    pop bc                                        ; $52bd: $c1

jr_038_52be:
    jp nc, $e0b8                                  ; $52be: $d2 $b8 $e0

    ld sp, hl                                     ; $52c1: $f9
    sub [hl]                                      ; $52c2: $96
    and $49                                       ; $52c3: $e6 $49
    xor d                                         ; $52c5: $aa
    ld l, h                                       ; $52c6: $6c
    jr nz, jr_038_52fd                            ; $52c7: $20 $34

    or [hl]                                       ; $52c9: $b6
    jp c, Jump_038_61d2                           ; $52ca: $da $d2 $61

    pop bc                                        ; $52cd: $c1
    jp nc, $e0b8                                  ; $52ce: $d2 $b8 $e0

    ld sp, hl                                     ; $52d1: $f9
    sub [hl]                                      ; $52d2: $96
    and $49                                       ; $52d3: $e6 $49
    xor d                                         ; $52d5: $aa
    ld l, h                                       ; $52d6: $6c
    jr nz, jr_038_530d                            ; $52d7: $20 $34

    or [hl]                                       ; $52d9: $b6
    and e                                         ; $52da: $a3

jr_038_52db:
    db $e4                                        ; $52db: $e4
    ld [hl+], a                                   ; $52dc: $22
    adc h                                         ; $52dd: $8c
    ld a, b                                       ; $52de: $78
    ld c, c                                       ; $52df: $49
    ld b, a                                       ; $52e0: $47
    ld [hl], d                                    ; $52e1: $72
    add $6b                                       ; $52e2: $c6 $6b
    ld a, a                                       ; $52e4: $7f
    or $29                                        ; $52e5: $f6 $29
    push bc                                       ; $52e7: $c5
    ld c, $23                                     ; $52e8: $0e $23
    ret                                           ; $52ea: $c9


    sub l                                         ; $52eb: $95
    and $49                                       ; $52ec: $e6 $49
    xor d                                         ; $52ee: $aa
    ld l, h                                       ; $52ef: $6c
    jr nz, jr_038_5326                            ; $52f0: $20 $34

    adc [hl]                                      ; $52f2: $8e
    ld [hl-], a                                   ; $52f3: $32
    ld b, c                                       ; $52f4: $41
    jp hl                                         ; $52f5: $e9


    or b                                          ; $52f6: $b0
    sub b                                         ; $52f7: $90
    db $e3                                        ; $52f8: $e3
    jr c, jr_038_5327                             ; $52f9: $38 $2c

    push de                                       ; $52fb: $d5
    sub [hl]                                      ; $52fc: $96

jr_038_52fd:
    adc [hl]                                      ; $52fd: $8e
    ld d, h                                       ; $52fe: $54
    ld e, c                                       ; $52ff: $59
    ld h, [hl]                                    ; $5300: $66
    sbc d                                         ; $5301: $9a
    and $49                                       ; $5302: $e6 $49
    xor d                                         ; $5304: $aa
    ld l, h                                       ; $5305: $6c
    jr nz, jr_038_533c                            ; $5306: $20 $34

    or [hl]                                       ; $5308: $b6
    inc hl                                        ; $5309: $23
    cp a                                          ; $530a: $bf
    cp $47                                        ; $530b: $fe $47

jr_038_530d:
    ld b, a                                       ; $530d: $47
    ld e, l                                       ; $530e: $5d
    rlca                                          ; $530f: $07
    ld hl, $831e                                  ; $5310: $21 $1e $83
    dec e                                         ; $5313: $1d
    ld b, [hl]                                    ; $5314: $46
    sub d                                         ; $5315: $92
    dec hl                                        ; $5316: $2b
    call Call_038_4901                            ; $5317: $cd $01 $49
    xor d                                         ; $531a: $aa
    ld l, h                                       ; $531b: $6c
    jr nz, jr_038_5352                            ; $531c: $20 $34

    adc [hl]                                      ; $531e: $8e
    adc [hl]                                      ; $531f: $8e
    and b                                         ; $5320: $a0
    rra                                           ; $5321: $1f
    pop de                                        ; $5322: $d1
    dec hl                                        ; $5323: $2b
    ld e, a                                       ; $5324: $5f
    dec e                                         ; $5325: $1d

jr_038_5326:
    dec h                                         ; $5326: $25

jr_038_5327:
    ld c, b                                       ; $5327: $48
    jp nc, $be13                                  ; $5328: $d2 $13 $be

    ld h, d                                       ; $532b: $62
    dec l                                         ; $532c: $2d
    jr nz, @-$75                                  ; $532d: $20 $89

    ld a, e                                       ; $532f: $7b
    ld [hl], e                                    ; $5330: $73
    sbc d                                         ; $5331: $9a
    inc bc                                        ; $5332: $03
    ld c, c                                       ; $5333: $49
    xor d                                         ; $5334: $aa
    ld l, h                                       ; $5335: $6c
    jr nz, jr_038_536c                            ; $5336: $20 $34

    or [hl]                                       ; $5338: $b6
    and e                                         ; $5339: $a3
    db $e4                                        ; $533a: $e4
    ld [hl+], a                                   ; $533b: $22

jr_038_533c:
    adc h                                         ; $533c: $8c
    ld a, b                                       ; $533d: $78
    ld c, c                                       ; $533e: $49
    rst $20                                       ; $533f: $e7
    ld d, h                                       ; $5340: $54
    ld hl, $4a62                                  ; $5341: $21 $62 $4a
    or c                                          ; $5344: $b1
    jp Jump_038_7248                              ; $5345: $c3 $48 $72


    and l                                         ; $5348: $a5
    add hl, sp                                    ; $5349: $39
    ld c, c                                       ; $534a: $49
    xor d                                         ; $534b: $aa
    ld l, h                                       ; $534c: $6c
    jr nz, jr_038_5383                            ; $534d: $20 $34

    or [hl]                                       ; $534f: $b6
    and e                                         ; $5350: $a3
    db $e4                                        ; $5351: $e4

jr_038_5352:
    ld [hl+], a                                   ; $5352: $22
    adc h                                         ; $5353: $8c
    ld a, b                                       ; $5354: $78
    ld c, c                                       ; $5355: $49
    sbc c                                         ; $5356: $99
    ei                                            ; $5357: $fb
    rlca                                          ; $5358: $07
    adc h                                         ; $5359: $8c
    dec e                                         ; $535a: $1d
    ld b, [hl]                                    ; $535b: $46
    sub d                                         ; $535c: $92
    dec hl                                        ; $535d: $2b
    call Call_038_4901                            ; $535e: $cd $01 $49
    xor d                                         ; $5361: $aa
    ld l, h                                       ; $5362: $6c
    jr nz, jr_038_5399                            ; $5363: $20 $34

    or [hl]                                       ; $5365: $b6
    and e                                         ; $5366: $a3
    db $e4                                        ; $5367: $e4
    ld [hl+], a                                   ; $5368: $22
    adc h                                         ; $5369: $8c
    ld a, b                                       ; $536a: $78
    ld c, c                                       ; $536b: $49

jr_038_536c:
    sbc c                                         ; $536c: $99
    inc bc                                        ; $536d: $03
    ld [hl], d                                    ; $536e: $72
    add hl, hl                                    ; $536f: $29
    ret nz                                        ; $5370: $c0

    ld c, $23                                     ; $5371: $0e $23
    ret                                           ; $5373: $c9


    sub l                                         ; $5374: $95
    and $49                                       ; $5375: $e6 $49
    xor d                                         ; $5377: $aa
    ld l, h                                       ; $5378: $6c
    jr nz, jr_038_53af                            ; $5379: $20 $34

    or [hl]                                       ; $537b: $b6
    adc [hl]                                      ; $537c: $8e
    push af                                       ; $537d: $f5
    pop de                                        ; $537e: $d1
    reti                                          ; $537f: $d9


    ld a, [hl]                                    ; $5380: $7e
    ld h, [hl]                                    ; $5381: $66
    sub c                                         ; $5382: $91

jr_038_5383:
    xor a                                         ; $5383: $af
    adc [hl]                                      ; $5384: $8e
    inc [hl]                                      ; $5385: $34
    rlca                                          ; $5386: $07
    ld c, c                                       ; $5387: $49
    xor d                                         ; $5388: $aa
    ld l, h                                       ; $5389: $6c
    jr nz, jr_038_53c0                            ; $538a: $20 $34

    adc [hl]                                      ; $538c: $8e
    adc [hl]                                      ; $538d: $8e
    and b                                         ; $538e: $a0
    rra                                           ; $538f: $1f
    pop de                                        ; $5390: $d1
    dec hl                                        ; $5391: $2b
    ld e, a                                       ; $5392: $5f
    dec e                                         ; $5393: $1d
    dec h                                         ; $5394: $25
    ld c, b                                       ; $5395: $48
    jp nc, Jump_000_2d79                          ; $5396: $d2 $79 $2d

jr_038_5399:
    rst $30                                       ; $5399: $f7
    cp a                                          ; $539a: $bf
    sbc d                                         ; $539b: $9a
    xor d                                         ; $539c: $aa
    call Call_038_69bc                            ; $539d: $cd $bc $69
    ld c, $49                                     ; $53a0: $0e $49
    xor d                                         ; $53a2: $aa
    ld l, h                                       ; $53a3: $6c
    jr nz, jr_038_53da                            ; $53a4: $20 $34

    adc [hl]                                      ; $53a6: $8e
    adc [hl]                                      ; $53a7: $8e
    cp d                                          ; $53a8: $ba
    ld l, [hl]                                    ; $53a9: $6e
    sbc a                                         ; $53aa: $9f
    sub d                                         ; $53ab: $92
    db $e3                                        ; $53ac: $e3
    jr c, @+$2e                                   ; $53ad: $38 $2c

jr_038_53af:
    ld l, c                                       ; $53af: $69
    ld c, $49                                     ; $53b0: $0e $49
    xor d                                         ; $53b2: $aa
    ld l, h                                       ; $53b3: $6c
    jr nz, jr_038_53ea                            ; $53b4: $20 $34

    or [hl]                                       ; $53b6: $b6
    adc [hl]                                      ; $53b7: $8e
    push af                                       ; $53b8: $f5
    pop de                                        ; $53b9: $d1
    ld a, c                                       ; $53ba: $79
    dec l                                         ; $53bb: $2d
    inc [hl]                                      ; $53bc: $34
    adc h                                         ; $53bd: $8c
    ld d, l                                       ; $53be: $55
    dec bc                                        ; $53bf: $0b

jr_038_53c0:
    sub [hl]                                      ; $53c0: $96
    ld [hl-], a                                   ; $53c1: $32

jr_038_53c2:
    ld c, d                                       ; $53c2: $4a
    ld l, h                                       ; $53c3: $6c
    halt                                          ; $53c4: $76
    ld bc, $9a60                                  ; $53c5: $01 $60 $9a
    inc bc                                        ; $53c8: $03
    ld c, c                                       ; $53c9: $49
    xor d                                         ; $53ca: $aa
    ld l, h                                       ; $53cb: $6c
    jr nz, jr_038_53c2                            ; $53cc: $20 $f4

    dec hl                                        ; $53ce: $2b
    and d                                         ; $53cf: $a2
    jp c, Jump_000_1947                           ; $53d0: $da $47 $19

    xor c                                         ; $53d3: $a9
    inc bc                                        ; $53d4: $03
    dec sp                                        ; $53d5: $3b

jr_038_53d6:
    ld e, l                                       ; $53d6: $5d
    and a                                         ; $53d7: $a7
    sbc b                                         ; $53d8: $98
    ld h, h                                       ; $53d9: $64

jr_038_53da:
    jp z, Jump_000_0734                           ; $53da: $ca $34 $07

    ld c, c                                       ; $53dd: $49
    xor d                                         ; $53de: $aa
    ld l, h                                       ; $53df: $6c
    jr nz, jr_038_53d6                            ; $53e0: $20 $f4

    rra                                           ; $53e2: $1f
    sbc l                                         ; $53e3: $9d
    add a                                         ; $53e4: $87
    or b                                          ; $53e5: $b0
    ld d, h                                       ; $53e6: $54
    dec de                                        ; $53e7: $1b
    res 6, h                                      ; $53e8: $cb $b4

jr_038_53ea:
    ld sp, $01cd                                  ; $53ea: $31 $cd $01
    ld c, c                                       ; $53ed: $49
    xor d                                         ; $53ee: $aa
    ld l, h                                       ; $53ef: $6c
    jr nz, jr_038_5426                            ; $53f0: $20 $34

    or [hl]                                       ; $53f2: $b6
    jp c, $e1d2                                   ; $53f3: $da $d2 $e1

    or c                                          ; $53f6: $b1
    reti                                          ; $53f7: $d9


    rst $18                                       ; $53f8: $df
    inc c                                         ; $53f9: $0c
    rst $18                                       ; $53fa: $df
    and a                                         ; $53fb: $a7
    call nc, $bc1d                                ; $53fc: $d4 $1d $bc
    or [hl]                                       ; $53ff: $b6
    ret                                           ; $5400: $c9


    ld d, a                                       ; $5401: $57
    halt                                          ; $5402: $76
    rst $38                                       ; $5403: $ff
    ld [bc], a                                    ; $5404: $02
    sbc b                                         ; $5405: $98
    and $49                                       ; $5406: $e6 $49
    xor d                                         ; $5408: $aa
    ld l, h                                       ; $5409: $6c
    jr nz, jr_038_5440                            ; $540a: $20 $34

    adc [hl]                                      ; $540c: $8e
    adc $aa                                       ; $540d: $ce $aa
    ld [hl], $f3                                  ; $540f: $36 $f3
    ld [hl+], a                                   ; $5411: $22
    ld a, a                                       ; $5412: $7f
    db $f4                                        ; $5413: $f4
    inc de                                        ; $5414: $13
    ld hl, sp+$3f                                 ; $5415: $f8 $3f
    db $ed                                        ; $5417: $ed
    ldh [$b5], a                                  ; $5418: $e0 $b5
    ld h, l                                       ; $541a: $65

Jump_038_541b:
    sub h                                         ; $541b: $94
    ld sp, $1104                                  ; $541c: $31 $04 $11
    xor e                                         ; $541f: $ab
    cpl                                           ; $5420: $2f
    ld c, c                                       ; $5421: $49

Call_038_5422:
    ld [hl], e                                    ; $5422: $73
    ld c, c                                       ; $5423: $49
    xor d                                         ; $5424: $aa
    ld l, h                                       ; $5425: $6c

jr_038_5426:
    jr nz, jr_038_545c                            ; $5426: $20 $34

    adc [hl]                                      ; $5428: $8e
    ld [hl-], a                                   ; $5429: $32
    ld a, [$2c70]                                 ; $542a: $fa $70 $2c
    ld a, [c]                                     ; $542d: $f2
    rst $30                                       ; $542e: $f7
    add hl, bc                                    ; $542f: $09
    ld b, b                                       ; $5430: $40
    ld sp, hl                                     ; $5431: $f9
    ld [$e0e8], a                                 ; $5432: $ea $e8 $e0
    or l                                          ; $5435: $b5
    ld h, l                                       ; $5436: $65
    sub h                                         ; $5437: $94
    ld sp, $1104                                  ; $5438: $31 $04 $11
    xor e                                         ; $543b: $ab
    cpl                                           ; $543c: $2f
    ld c, c                                       ; $543d: $49
    ld [hl], e                                    ; $543e: $73
    ld c, c                                       ; $543f: $49

jr_038_5440:
    xor d                                         ; $5440: $aa
    ld l, h                                       ; $5441: $6c
    jr nz, jr_038_5478                            ; $5442: $20 $34

    or [hl]                                       ; $5444: $b6
    adc [hl]                                      ; $5445: $8e
    push af                                       ; $5446: $f5
    pop de                                        ; $5447: $d1
    ld h, c                                       ; $5448: $61
    ld b, [hl]                                    ; $5449: $46
    cpl                                           ; $544a: $2f
    ld a, [c]                                     ; $544b: $f2
    daa                                           ; $544c: $27
    ld a, a                                       ; $544d: $7f
    ld l, a                                       ; $544e: $6f
    ld l, c                                       ; $544f: $69
    ld c, $49                                     ; $5450: $0e $49
    xor d                                         ; $5452: $aa
    ld l, h                                       ; $5453: $6c
    jr nz, jr_038_548a                            ; $5454: $20 $34

    or [hl]                                       ; $5456: $b6
    or e                                          ; $5457: $b3
    inc b                                         ; $5458: $04
    push hl                                       ; $5459: $e5
    rrca                                          ; $545a: $0f
    dec sp                                        ; $545b: $3b

jr_038_545c:
    adc h                                         ; $545c: $8c
    inc h                                         ; $545d: $24
    ld d, a                                       ; $545e: $57
    sbc d                                         ; $545f: $9a
    inc bc                                        ; $5460: $03
    ld c, c                                       ; $5461: $49
    xor d                                         ; $5462: $aa
    ld l, h                                       ; $5463: $6c
    jr nz, jr_038_549a                            ; $5464: $20 $34

    or [hl]                                       ; $5466: $b6
    jp c, Jump_038_4652                           ; $5467: $da $52 $46

    cp c                                          ; $546a: $b9
    add $f1                                       ; $546b: $c6 $f1
    ld [hl], $f9                                  ; $546d: $36 $f9
    ld d, e                                       ; $546f: $53
    ld [$0734], a                                 ; $5470: $ea $34 $07
    ld c, c                                       ; $5473: $49
    xor d                                         ; $5474: $aa
    ld l, h                                       ; $5475: $6c
    jr nz, @+$36                                  ; $5476: $20 $34

jr_038_5478:
    adc [hl]                                      ; $5478: $8e
    adc $e6                                       ; $5479: $ce $e6
    daa                                           ; $547b: $27
    ld d, $72                                     ; $547c: $16 $72
    inc e                                         ; $547e: $1c
    add a                                         ; $547f: $87
    dec h                                         ; $5480: $25
    call Call_038_4901                            ; $5481: $cd $01 $49
    xor d                                         ; $5484: $aa
    ld l, h                                       ; $5485: $6c
    jr nz, @+$36                                  ; $5486: $20 $34

    adc [hl]                                      ; $5488: $8e
    adc [hl]                                      ; $5489: $8e

jr_038_548a:
    cp d                                          ; $548a: $ba
    inc b                                         ; $548b: $04
    db $e4                                        ; $548c: $e4
    rlca                                          ; $548d: $07
    sub b                                         ; $548e: $90
    db $e3                                        ; $548f: $e3
    jr c, jr_038_54be                             ; $5490: $38 $2c

    ld l, c                                       ; $5492: $69
    ld c, $49                                     ; $5493: $0e $49
    xor d                                         ; $5495: $aa
    ld l, h                                       ; $5496: $6c
    jr nz, jr_038_54cd                            ; $5497: $20 $34

    or [hl]                                       ; $5499: $b6

jr_038_549a:
    jp c, Jump_000_11db                           ; $549a: $da $db $11

    sub [hl]                                      ; $549d: $96
    sbc e                                         ; $549e: $9b
    ld h, l                                       ; $549f: $65
    db $d3                                        ; $54a0: $d3
    inc e                                         ; $54a1: $1c
    ld c, c                                       ; $54a2: $49
    xor d                                         ; $54a3: $aa
    ld l, h                                       ; $54a4: $6c
    jr nz, jr_038_54db                            ; $54a5: $20 $34

    or [hl]                                       ; $54a7: $b6
    jp c, $e747                                   ; $54a8: $da $47 $e7

    ld a, [$38ea]                                 ; $54ab: $fa $ea $38
    scf                                           ; $54ae: $37
    or [hl]                                       ; $54af: $b6
    jp c, Jump_038_4f47                           ; $54b0: $da $47 $4f

    ld hl, sp-$76                                 ; $54b3: $f8 $8a
    or l                                          ; $54b5: $b5
    add b                                         ; $54b6: $80
    inc h                                         ; $54b7: $24
    xor $cd                                       ; $54b8: $ee $cd
    call Call_000_047c                            ; $54ba: $cd $7c $04
    ld a, [c]                                     ; $54bd: $f2

jr_038_54be:
    rlca                                          ; $54be: $07
    cp l                                          ; $54bf: $bd
    ld e, e                                       ; $54c0: $5b
    or h                                          ; $54c1: $b4
    scf                                           ; $54c2: $37
    call Call_038_4901                            ; $54c3: $cd $01 $49
    xor d                                         ; $54c6: $aa
    ld l, h                                       ; $54c7: $6c
    jr nz, jr_038_54fe                            ; $54c8: $20 $34

    or [hl]                                       ; $54ca: $b6
    ret                                           ; $54cb: $c9


    ld e, a                                       ; $54cc: $5f

jr_038_54cd:
    ld h, h                                       ; $54cd: $64
    inc c                                         ; $54ce: $0c
    halt                                          ; $54cf: $76
    ld e, [hl]                                    ; $54d0: $5e
    dec bc                                        ; $54d1: $0b
    dec c                                         ; $54d2: $0d
    ld h, e                                       ; $54d3: $63
    sbc d                                         ; $54d4: $9a
    inc bc                                        ; $54d5: $03
    ld c, c                                       ; $54d6: $49
    xor d                                         ; $54d7: $aa
    ld l, h                                       ; $54d8: $6c
    jr nz, @+$36                                  ; $54d9: $20 $34

jr_038_54db:
    adc [hl]                                      ; $54db: $8e
    ld c, $45                                     ; $54dc: $0e $45
    sub b                                         ; $54de: $90
    ld l, e                                       ; $54df: $6b
    xor a                                         ; $54e0: $af
    inc hl                                        ; $54e1: $23
    inc a                                         ; $54e2: $3c
    pop af                                        ; $54e3: $f1

jr_038_54e4:
    adc b                                         ; $54e4: $88
    ld c, e                                       ; $54e5: $4b
    inc h                                         ; $54e6: $24
    db $f4                                        ; $54e7: $f4
    dec h                                         ; $54e8: $25
    ld l, c                                       ; $54e9: $69
    ld c, $49                                     ; $54ea: $0e $49
    xor d                                         ; $54ec: $aa
    ld l, h                                       ; $54ed: $6c
    jr nz, jr_038_54e4                            ; $54ee: $20 $f4

    xor e                                         ; $54f0: $ab
    ld [hl], c                                    ; $54f1: $71
    inc l                                         ; $54f2: $2c
    rst $28                                       ; $54f3: $ef
    ld d, e                                       ; $54f4: $53
    or [hl]                                       ; $54f5: $b6
    jp c, $2658                                   ; $54f6: $da $58 $26

    ld a, a                                       ; $54f9: $7f
    adc d                                         ; $54fa: $8a

jr_038_54fb:
    ld h, [hl]                                    ; $54fb: $66
    ld h, [hl]                                    ; $54fc: $66
    inc de                                        ; $54fd: $13

jr_038_54fe:
    sub l                                         ; $54fe: $95
    ld [hl], $a6                                  ; $54ff: $36 $a6
    add hl, sp                                    ; $5501: $39

jr_038_5502:
    ld c, c                                       ; $5502: $49
    xor d                                         ; $5503: $aa
    ld l, h                                       ; $5504: $6c
    jr nz, jr_038_54fb                            ; $5505: $20 $f4

    xor e                                         ; $5507: $ab
    ld [hl], c                                    ; $5508: $71
    inc l                                         ; $5509: $2c
    rst $28                                       ; $550a: $ef
    ld d, e                                       ; $550b: $53
    or [hl]                                       ; $550c: $b6
    jp c, $2658                                   ; $550d: $da $58 $26

    ld a, a                                       ; $5510: $7f
    adc d                                         ; $5511: $8a

jr_038_5512:
    ld h, [hl]                                    ; $5512: $66
    ld h, [hl]                                    ; $5513: $66
    inc de                                        ; $5514: $13
    sub l                                         ; $5515: $95
    ld [hl], $a6                                  ; $5516: $36 $a6
    add hl, sp                                    ; $5518: $39
    ld c, c                                       ; $5519: $49
    xor d                                         ; $551a: $aa
    ld l, h                                       ; $551b: $6c
    jr nz, jr_038_5512                            ; $551c: $20 $f4

    xor e                                         ; $551e: $ab
    ld [hl], c                                    ; $551f: $71
    inc l                                         ; $5520: $2c
    rst $28                                       ; $5521: $ef
    ld d, e                                       ; $5522: $53
    or [hl]                                       ; $5523: $b6

Jump_038_5524:
    jp c, $2658                                   ; $5524: $da $58 $26

    ld a, a                                       ; $5527: $7f
    adc d                                         ; $5528: $8a

jr_038_5529:
    ld h, [hl]                                    ; $5529: $66
    ld h, [hl]                                    ; $552a: $66
    inc de                                        ; $552b: $13
    sub l                                         ; $552c: $95
    ld [hl], $a6                                  ; $552d: $36 $a6
    add hl, sp                                    ; $552f: $39
    ld c, c                                       ; $5530: $49
    xor d                                         ; $5531: $aa
    ld l, h                                       ; $5532: $6c
    jr nz, jr_038_5529                            ; $5533: $20 $f4

    xor e                                         ; $5535: $ab
    ld [hl], c                                    ; $5536: $71
    inc l                                         ; $5537: $2c
    rst $28                                       ; $5538: $ef
    ld d, e                                       ; $5539: $53
    or [hl]                                       ; $553a: $b6
    add e                                         ; $553b: $83
    rst $10                                       ; $553c: $d7
    ld [hl], $f9                                  ; $553d: $36 $f9
    ld h, a                                       ; $553f: $67
    ld [de], a                                    ; $5540: $12
    ld a, [de]                                    ; $5541: $1a
    sbc e                                         ; $5542: $9b
    ld c, h                                       ; $5543: $4c
    ld [bc], a                                    ; $5544: $02
    ld [hl], b                                    ; $5545: $70
    sbc d                                         ; $5546: $9a
    inc bc                                        ; $5547: $03
    ld c, c                                       ; $5548: $49
    xor d                                         ; $5549: $aa
    ld l, h                                       ; $554a: $6c
    jr nz, jr_038_5581                            ; $554b: $20 $34

    adc [hl]                                      ; $554d: $8e
    adc [hl]                                      ; $554e: $8e
    and b                                         ; $554f: $a0
    adc d                                         ; $5550: $8a
    sub l                                         ; $5551: $95
    xor a                                         ; $5552: $af
    adc [hl]                                      ; $5553: $8e
    ld l, d                                       ; $5554: $6a
    ld h, e                                       ; $5555: $63
    sbc c                                         ; $5556: $99
    rst $38                                       ; $5557: $ff
    jr c, jr_038_5502                             ; $5558: $38 $a8

    ld h, l                                       ; $555a: $65
    ret nc                                        ; $555b: $d0

    ld [c], a                                     ; $555c: $e2
    ld e, b                                       ; $555d: $58
    inc l                                         ; $555e: $2c
    ld b, c                                       ; $555f: $41
    sub d                                         ; $5560: $92
    ld c, $0b                                     ; $5561: $0e $0b
    xor d                                         ; $5563: $aa
    ld l, a                                       ; $5564: $6f
    ld e, a                                       ; $5565: $5f
    ret nz                                        ; $5566: $c0

    sbc e                                         ; $5567: $9b
    and $49                                       ; $5568: $e6 $49
    xor d                                         ; $556a: $aa
    ld l, h                                       ; $556b: $6c
    jr nz, jr_038_55a2                            ; $556c: $20 $34

    or [hl]                                       ; $556e: $b6
    jp c, Jump_038_4652                           ; $556f: $da $52 $46

    cp c                                          ; $5572: $b9
    add $f1                                       ; $5573: $c6 $f1
    ld [hl], $f9                                  ; $5575: $36 $f9
    ld d, e                                       ; $5577: $53
    ld [$0734], a                                 ; $5578: $ea $34 $07
    ld c, c                                       ; $557b: $49
    xor d                                         ; $557c: $aa
    ld l, h                                       ; $557d: $6c
    jr nz, jr_038_55b4                            ; $557e: $20 $34

    adc [hl]                                      ; $5580: $8e

jr_038_5581:
    ld h, [hl]                                    ; $5581: $66
    ld a, [hl]                                    ; $5582: $7e
    adc [hl]                                      ; $5583: $8e
    jp $91db                                      ; $5584: $c3 $db $91


    ld a, [hl+]                                   ; $5587: $2a
    bit 1, h                                      ; $5588: $cb $4c
    ret                                           ; $558a: $c9


    ld [hl], c                                    ; $558b: $71
    inc e                                         ; $558c: $1c
    sub [hl]                                      ; $558d: $96
    inc [hl]                                      ; $558e: $34
    rlca                                          ; $558f: $07
    ld c, c                                       ; $5590: $49
    xor d                                         ; $5591: $aa
    ld l, h                                       ; $5592: $6c
    jr nz, jr_038_55c9                            ; $5593: $20 $34

    adc [hl]                                      ; $5595: $8e
    adc $7b                                       ; $5596: $ce $7b
    adc c                                         ; $5598: $89
    ld a, h                                       ; $5599: $7c
    ld b, b                                       ; $559a: $40
    ld sp, hl                                     ; $559b: $f9
    ld [$4128], a                                 ; $559c: $ea $28 $41
    sub d                                         ; $559f: $92
    ld [hl-], a                                   ; $55a0: $32
    ld sp, hl                                     ; $55a1: $f9

jr_038_55a2:
    inc de                                        ; $55a2: $13
    rlca                                          ; $55a3: $07
    xor e                                         ; $55a4: $ab
    ret nz                                        ; $55a5: $c0

    adc e                                         ; $55a6: $8b
    ld b, c                                       ; $55a7: $41
    jp $e69b                                      ; $55a8: $c3 $9b $e6


    ld c, c                                       ; $55ab: $49
    xor d                                         ; $55ac: $aa
    ld l, h                                       ; $55ad: $6c
    jr nz, jr_038_55e4                            ; $55ae: $20 $34

    or [hl]                                       ; $55b0: $b6
    jp c, Jump_038_59d2                           ; $55b1: $da $d2 $59

jr_038_55b4:
    push de                                       ; $55b4: $d5
    ld h, [hl]                                    ; $55b5: $66
    ld e, [hl]                                    ; $55b6: $5e
    cp b                                          ; $55b7: $b8
    add d                                         ; $55b8: $82
    ld a, [de]                                    ; $55b9: $1a
    ret nz                                        ; $55ba: $c0

    ld l, c                                       ; $55bb: $69
    ld c, $49                                     ; $55bc: $0e $49
    xor d                                         ; $55be: $aa
    ld l, h                                       ; $55bf: $6c
    jr nz, jr_038_55f6                            ; $55c0: $20 $34

    adc [hl]                                      ; $55c2: $8e
    adc $b3                                       ; $55c3: $ce $b3
    ld h, b                                       ; $55c5: $60
    sub c                                         ; $55c6: $91
    ldh [rIF], a                                  ; $55c7: $e0 $0f

jr_038_55c9:
    ld d, b                                       ; $55c9: $50
    cp [hl]                                       ; $55ca: $be
    ld a, [hl-]                                   ; $55cb: $3a
    ld c, d                                       ; $55cc: $4a
    sub b                                         ; $55cd: $90
    and h                                         ; $55ce: $a4
    inc hl                                        ; $55cf: $23
    dec d                                         ; $55d0: $15
    add $ad                                       ; $55d1: $c6 $ad
    jp c, $91d2                                   ; $55d3: $da $d2 $91

    ld a, [hl+]                                   ; $55d6: $2a
    bit 1, h                                      ; $55d7: $cb $4c
    db $d3                                        ; $55d9: $d3
    inc e                                         ; $55da: $1c
    ld c, c                                       ; $55db: $49
    xor d                                         ; $55dc: $aa
    ld l, h                                       ; $55dd: $6c
    jr nz, jr_038_5614                            ; $55de: $20 $34

    adc [hl]                                      ; $55e0: $8e
    adc $b3                                       ; $55e1: $ce $b3
    ld h, b                                       ; $55e3: $60

jr_038_55e4:
    sub c                                         ; $55e4: $91
    ldh [rIF], a                                  ; $55e5: $e0 $0f
    ld d, b                                       ; $55e7: $50
    cp [hl]                                       ; $55e8: $be
    ld a, [hl-]                                   ; $55e9: $3a
    ld c, d                                       ; $55ea: $4a
    sub b                                         ; $55eb: $90
    and h                                         ; $55ec: $a4
    inc hl                                        ; $55ed: $23
    call nc, Call_038_5422                        ; $55ee: $d4 $22 $54
    ld e, e                                       ; $55f1: $5b
    ld a, [hl-]                                   ; $55f2: $3a
    ld d, d                                       ; $55f3: $52
    ld h, l                                       ; $55f4: $65
    sbc c                                         ; $55f5: $99

jr_038_55f6:
    ld l, c                                       ; $55f6: $69
    sbc d                                         ; $55f7: $9a
    inc bc                                        ; $55f8: $03
    ld c, c                                       ; $55f9: $49
    xor d                                         ; $55fa: $aa
    ld l, h                                       ; $55fb: $6c
    jr nz, jr_038_5632                            ; $55fc: $20 $34

    adc [hl]                                      ; $55fe: $8e
    adc [hl]                                      ; $55ff: $8e
    ld hl, sp+$02                                 ; $5600: $f8 $02
    sbc $89                                       ; $5602: $de $89
    rst $20                                       ; $5604: $e7
    or l                                          ; $5605: $b5
    ret nc                                        ; $5606: $d0

    jr nc, @-$58                                  ; $5607: $30 $a6

    add hl, sp                                    ; $5609: $39
    ld c, c                                       ; $560a: $49
    xor d                                         ; $560b: $aa
    ld l, h                                       ; $560c: $6c
    jr nz, @+$36                                  ; $560d: $20 $34

    adc [hl]                                      ; $560f: $8e
    ld c, $5a                                     ; $5610: $0e $5a
    ret c                                         ; $5612: $d8

    dec bc                                        ; $5613: $0b

jr_038_5614:
    cp h                                          ; $5614: $bc
    sbc $8e                                       ; $5615: $de $8e
    cp b                                          ; $5617: $b8
    ld b, h                                       ; $5618: $44
    ld b, d                                       ; $5619: $42
    ld e, a                                       ; $561a: $5f
    sub d                                         ; $561b: $92
    and $49                                       ; $561c: $e6 $49
    xor d                                         ; $561e: $aa
    ld l, h                                       ; $561f: $6c
    jr nz, jr_038_5656                            ; $5620: $20 $34

    or [hl]                                       ; $5622: $b6
    and e                                         ; $5623: $a3
    db $e4                                        ; $5624: $e4
    ld [hl+], a                                   ; $5625: $22
    adc h                                         ; $5626: $8c
    ld a, b                                       ; $5627: $78
    ld c, c                                       ; $5628: $49
    add a                                         ; $5629: $87
    push bc                                       ; $562a: $c5
    ld l, $76                                     ; $562b: $2e $76
    jr jr_038_5678                                ; $562d: $18 $49

    xor [hl]                                      ; $562f: $ae
    inc [hl]                                      ; $5630: $34
    rlca                                          ; $5631: $07

jr_038_5632:
    ld c, c                                       ; $5632: $49
    xor d                                         ; $5633: $aa
    ld l, h                                       ; $5634: $6c
    jr nz, @+$36                                  ; $5635: $20 $34

    or [hl]                                       ; $5637: $b6
    adc [hl]                                      ; $5638: $8e
    push af                                       ; $5639: $f5
    ld d, c                                       ; $563a: $51
    ld l, d                                       ; $563b: $6a
    adc e                                         ; $563c: $8b
    or a                                          ; $563d: $b7
    inc hl                                        ; $563e: $23
    add sp, $47                                   ; $563f: $e8 $47
    db $f4                                        ; $5641: $f4
    jp z, $4757                                   ; $5642: $ca $57 $47

    sbc d                                         ; $5645: $9a
    inc bc                                        ; $5646: $03
    ld c, c                                       ; $5647: $49
    xor d                                         ; $5648: $aa
    ld l, h                                       ; $5649: $6c
    jr nz, jr_038_5680                            ; $564a: $20 $34

    adc [hl]                                      ; $564c: $8e
    adc $f5                                       ; $564d: $ce $f5
    push de                                       ; $564f: $d5
    pop de                                        ; $5650: $d1
    inc hl                                        ; $5651: $23
    and b                                         ; $5652: $a0
    jp c, $825b                                   ; $5653: $da $5b $82

jr_038_5656:
    add [hl]                                      ; $5656: $86
    inc sp                                        ; $5657: $33
    xor a                                         ; $5658: $af
    or $96                                        ; $5659: $f6 $96
    ret                                           ; $565b: $c9


    rra                                           ; $565c: $1f
    dec h                                         ; $565d: $25
    ld hl, $6e9a                                  ; $565e: $21 $9a $6e
    sbc d                                         ; $5661: $9a
    inc bc                                        ; $5662: $03
    ld c, c                                       ; $5663: $49
    xor d                                         ; $5664: $aa
    ld l, h                                       ; $5665: $6c
    jr nz, jr_038_569c                            ; $5666: $20 $34

    or [hl]                                       ; $5668: $b6
    jp c, Jump_038_4652                           ; $5669: $da $52 $46

    cp c                                          ; $566c: $b9
    add $f1                                       ; $566d: $c6 $f1
    ld [hl], $f9                                  ; $566f: $36 $f9
    ld d, e                                       ; $5671: $53
    ld [$0734], a                                 ; $5672: $ea $34 $07
    jp Jump_000_108c                              ; $5675: $c3 $8c $10


jr_038_5678:
    rst $00                                       ; $5678: $c7
    ld bc, $dcee                                  ; $5679: $01 $ee $dc
    and $6f                                       ; $567c: $e6 $6f
    cpl                                           ; $567e: $2f
    ld a, d                                       ; $567f: $7a

jr_038_5680:
    ld h, l                                       ; $5680: $65
    pop hl                                        ; $5681: $e1
    dec l                                         ; $5682: $2d
    add e                                         ; $5683: $83
    ld c, [hl]                                    ; $5684: $4e
    ld a, $e9                                     ; $5685: $3e $e9
    and h                                         ; $5687: $a4
    sub e                                         ; $5688: $93
    ld [hl], l                                    ; $5689: $75
    add sp, -$0f                                  ; $568a: $e8 $f1
    ret                                           ; $568c: $c9


    xor $f0                                       ; $568d: $ee $f0
    dec b                                         ; $568f: $05
    dec bc                                        ; $5690: $0b
    db $fc                                        ; $5691: $fc
    ret c                                         ; $5692: $d8

    jp $e70b                                      ; $5693: $c3 $0b $e7


    ld h, $2c                                     ; $5696: $26 $2c
    ld c, a                                       ; $5698: $4f
    ld a, e                                       ; $5699: $7b
    ld [hl], d                                    ; $569a: $72
    ld a, e                                       ; $569b: $7b

jr_038_569c:
    ld a, [c]                                     ; $569c: $f2
    ret nc                                        ; $569d: $d0

    db $e3                                        ; $569e: $e3
    sub e                                         ; $569f: $93
    db $dd                                        ; $56a0: $dd
    pop hl                                        ; $56a1: $e1
    dec bc                                        ; $56a2: $0b
    ld d, $f8                                     ; $56a3: $16 $f8
    or c                                          ; $56a5: $b1
    add a                                         ; $56a6: $87
    rla                                           ; $56a7: $17
    xor d                                         ; $56a8: $aa
    ld d, [hl]                                    ; $56a9: $56
    ld d, a                                       ; $56aa: $57

jr_038_56ab:
    ld a, a                                       ; $56ab: $7f
    db $ec                                        ; $56ac: $ec
    ret nc                                        ; $56ad: $d0

    db $e3                                        ; $56ae: $e3
    sub e                                         ; $56af: $93
    db $dd                                        ; $56b0: $dd
    pop hl                                        ; $56b1: $e1
    dec bc                                        ; $56b2: $0b
    ld d, $f8                                     ; $56b3: $16 $f8
    or c                                          ; $56b5: $b1
    add a                                         ; $56b6: $87
    rla                                           ; $56b7: $17
    ld h, $9e                                     ; $56b8: $26 $9e
    add h                                         ; $56ba: $84
    ld d, c                                       ; $56bb: $51
    ld h, d                                       ; $56bc: $62
    nop                                           ; $56bd: $00
    xor [hl]                                      ; $56be: $ae
    dec c                                         ; $56bf: $0d
    ldh a, [$c4]                                  ; $56c0: $f0 $c4
    or e                                          ; $56c2: $b3
    ld e, l                                       ; $56c3: $5d
    reti                                          ; $56c4: $d9


    ld d, l                                       ; $56c5: $55

Jump_038_56c6:
    adc h                                         ; $56c6: $8c
    push de                                       ; $56c7: $d5
    ld [hl], l                                    ; $56c8: $75
    ld l, h                                       ; $56c9: $6c
    ld h, [hl]                                    ; $56ca: $66
    sub b                                         ; $56cb: $90
    sbc a                                         ; $56cc: $9f
    ld a, c                                       ; $56cd: $79
    db $dd                                        ; $56ce: $dd
    sub c                                         ; $56cf: $91
    ld e, a                                       ; $56d0: $5f
    ld l, [hl]                                    ; $56d1: $6e
    sbc $0e                                       ; $56d2: $de $0e
    ld e, [hl]                                    ; $56d4: $5e
    db $db                                        ; $56d5: $db
    and c                                         ; $56d6: $a1
    rst $00                                       ; $56d7: $c7
    daa                                           ; $56d8: $27
    cp e                                          ; $56d9: $bb
    jp $2c17                                      ; $56da: $c3 $17 $2c


    ldh a, [$63]                                  ; $56dd: $f0 $63
    rrca                                          ; $56df: $0f
    cpl                                           ; $56e0: $2f
    sbc h                                         ; $56e1: $9c
    sbc e                                         ; $56e2: $9b
    or b                                          ; $56e3: $b0
    inc a                                         ; $56e4: $3c
    ld l, l                                       ; $56e5: $6d
    ld l, h                                       ; $56e6: $6c
    or l                                          ; $56e7: $b5
    or a                                          ; $56e8: $b7
    di                                            ; $56e9: $f3
    ld e, d                                       ; $56ea: $5a
    inc e                                         ; $56eb: $1c
    dec de                                        ; $56ec: $1b
    add hl, de                                    ; $56ed: $19
    ld a, b                                       ; $56ee: $78
    res 0, h                                      ; $56ef: $cb $84
    rst $38                                       ; $56f1: $ff
    pop bc                                        ; $56f2: $c1
    ld e, e                                       ; $56f3: $5b
    or l                                          ; $56f4: $b5
    ld a, d                                       ; $56f5: $7a
    sub d                                         ; $56f6: $92
    ld c, e                                       ; $56f7: $4b
    ld e, e                                       ; $56f8: $5b
    ld a, [$5b57]                                 ; $56f9: $fa $57 $5b
    cp h                                          ; $56fc: $bc
    sbc l                                         ; $56fd: $9d
    dec l                                         ; $56fe: $2d
    ld [hl], c                                    ; $56ff: $71
    or l                                          ; $5700: $b5
    ld h, l                                       ; $5701: $65
    db $d3                                        ; $5702: $d3
    sbc [hl]                                      ; $5703: $9e
    call c, Call_000_3c9e                         ; $5704: $dc $9e $3c
    ld d, d                                       ; $5707: $52
    pop hl                                        ; $5708: $e1
    sbc b                                         ; $5709: $98
    ld sp, hl                                     ; $570a: $f9
    ld a, [hl-]                                   ; $570b: $3a
    ld d, h                                       ; $570c: $54
    jp hl                                         ; $570d: $e9


    cp b                                          ; $570e: $b8
    ld h, $9e                                     ; $570f: $26 $9e
    ei                                            ; $5711: $fb
    cp d                                          ; $5712: $ba
    jr z, jr_038_56ab                             ; $5713: $28 $96

    ld b, $d9                                     ; $5715: $06 $d9
    ld c, e                                       ; $5717: $4b
    ld c, $0b                                     ; $5718: $0e $0b
    ld d, h                                       ; $571a: $54
    dec hl                                        ; $571b: $2b
    pop hl                                        ; $571c: $e1
    xor a                                         ; $571d: $af
    or e                                          ; $571e: $b3
    ld a, h                                       ; $571f: $7c
    ld c, $97                                     ; $5720: $0e $97
    ld [hl], h                                    ; $5722: $74
    xor d                                         ; $5723: $aa
    sbc [hl]                                      ; $5724: $9e
    call c, Call_000_3c9e                         ; $5725: $dc $9e $3c
    ld e, e                                       ; $5728: $5b
    jp nz, $c3cc                                  ; $5729: $c2 $cc $c3

    ld h, a                                       ; $572c: $67
    ld h, a                                       ; $572d: $67
    ld c, $4f                                     ; $572e: $0e $4f
    ld [$f9b0], a                                 ; $5730: $ea $b0 $f9
    dec sp                                        ; $5733: $3b
    ld a, e                                       ; $5734: $7b
    jp nz, Jump_038_73ec                          ; $5735: $c2 $ec $73

    rrca                                          ; $5738: $0f
    sbc a                                         ; $5739: $9f
    dec a                                         ; $573a: $3d
    ld l, c                                       ; $573b: $69
    adc [hl]                                      ; $573c: $8e
    inc e                                         ; $573d: $1c
    inc c                                         ; $573e: $0c
    ld a, [hl-]                                   ; $573f: $3a
    ld sp, hl                                     ; $5740: $f9
    and h                                         ; $5741: $a4
    sub e                                         ; $5742: $93
    ld c, [hl]                                    ; $5743: $4e
    sub $e1                                       ; $5744: $d6 $e1
    call nc, $e41c                                ; $5746: $d4 $1c $e4
    jp c, $1de0                                   ; $5749: $da $e0 $1d

    ld a, [hl+]                                   ; $574c: $2a
    add b                                         ; $574d: $80
    ld c, l                                       ; $574e: $4d
    ld e, b                                       ; $574f: $58
    sbc [hl]                                      ; $5750: $9e
    or $e4                                        ; $5751: $f6 $e4
    and c                                         ; $5753: $a1
    sub h                                         ; $5754: $94
    cp d                                          ; $5755: $ba
    ld [hl], e                                    ; $5756: $73
    sbc c                                         ; $5757: $99
    ccf                                           ; $5758: $3f
    ld [hl], b                                    ; $5759: $70
    rlca                                          ; $575a: $07
    cpl                                           ; $575b: $2f
    ld h, c                                       ; $575c: $61
    db $fd                                        ; $575d: $fd
    ld a, $05                                     ; $575e: $3e $05
    ld l, a                                       ; $5760: $6f
    ld c, $49                                     ; $5761: $0e $49
    ld b, d                                       ; $5763: $42
    ld [c], a                                     ; $5764: $e2
    scf                                           ; $5765: $37
    rst $30                                       ; $5766: $f7
    dec hl                                        ; $5767: $2b
    and d                                         ; $5768: $a2
    call z, $87b9                                 ; $5769: $cc $b9 $87
    adc $35                                       ; $576c: $ce $35
    ld [hl], a                                    ; $576e: $77
    ld c, $b3                                     ; $576f: $0e $b3
    ld a, c                                       ; $5771: $79
    ret nc                                        ; $5772: $d0

    ld [hl], h                                    ; $5773: $74
    ld a, [$2699]                                 ; $5774: $fa $99 $26
    ld l, e                                       ; $5777: $6b
    ld c, $27                                     ; $5778: $0e $27
    jr c, jr_038_57dc                             ; $577a: $38 $60

    ld a, [$34ce]                                 ; $577c: $fa $ce $34
    reti                                          ; $577f: $d9


    db $f4                                        ; $5780: $f4
    inc sp                                        ; $5781: $33
    ld c, l                                       ; $5782: $4d
    ld a, $fd                                     ; $5783: $3e $fd
    ld c, h                                       ; $5785: $4c
    ld d, e                                       ; $5786: $53
    inc [hl]                                      ; $5787: $34
    rlca                                          ; $5788: $07
    or e                                          ; $5789: $b3
    rlca                                          ; $578a: $07
    ld a, a                                       ; $578b: $7f
    ret nc                                        ; $578c: $d0

    ld b, c                                       ; $578d: $41
    set 3, l                                      ; $578e: $cb $dd
    xor e                                         ; $5790: $ab
    dec c                                         ; $5791: $0d
    dec a                                         ; $5792: $3d
    cp c                                          ; $5793: $b9
    dec a                                         ; $5794: $3d
    cp c                                          ; $5795: $b9
    dec a                                         ; $5796: $3d
    cp c                                          ; $5797: $b9
    call Call_038_4c01                            ; $5798: $cd $01 $4c
    ld a, d                                       ; $579b: $7a
    ld b, c                                       ; $579c: $41
    ld e, c                                       ; $579d: $59
    adc e                                         ; $579e: $8b
    inc bc                                        ; $579f: $03
    or b                                          ; $57a0: $b0
    add e                                         ; $57a1: $83
    sub [hl]                                      ; $57a2: $96
    cp e                                          ; $57a3: $bb
    ld d, a                                       ; $57a4: $57
    dec de                                        ; $57a5: $1b
    jp nc, $7c9e                                  ; $57a6: $d2 $9e $7c

    ld [de], a                                    ; $57a9: $12
    ld l, e                                       ; $57aa: $6b
    ld b, c                                       ; $57ab: $41
    cp $c4                                        ; $57ac: $fe $c4
    pop bc                                        ; $57ae: $c1
    ld a, d                                       ; $57af: $7a
    ld h, a                                       ; $57b0: $67
    call z, $f301                                 ; $57b1: $cc $01 $f3
    ld c, l                                       ; $57b4: $4d
    ccf                                           ; $57b5: $3f
    db $d3                                        ; $57b6: $d3
    ld h, h                                       ; $57b7: $64
    sbc l                                         ; $57b8: $9d
    ld a, a                                       ; $57b9: $7f
    ld a, [$2699]                                 ; $57ba: $fa $99 $26
    ld l, a                                       ; $57bd: $6f
    ld c, $49                                     ; $57be: $0e $49
    ld h, c                                       ; $57c0: $61
    ld [hl], h                                    ; $57c1: $74
    rst $20                                       ; $57c2: $e7
    ld d, $f5                                     ; $57c3: $16 $f5
    call c, $e840                                 ; $57c5: $dc $40 $e8
    and b                                         ; $57c8: $a0
    dec b                                         ; $57c9: $05
    ld sp, hl                                     ; $57ca: $f9
    and e                                         ; $57cb: $a3
    rla                                           ; $57cc: $17
    and d                                         ; $57cd: $a2
    ld [hl], a                                    ; $57ce: $77
    ld c, b                                       ; $57cf: $48
    ld c, $f3                                     ; $57d0: $0e $f3
    ld e, d                                       ; $57d2: $5a
    xor $5e                                       ; $57d3: $ee $5e
    db $ed                                        ; $57d5: $ed
    jp hl                                         ; $57d6: $e9


    ld [hl], e                                    ; $57d7: $73
    sub e                                         ; $57d8: $93
    ld c, l                                       ; $57d9: $4d
    ret c                                         ; $57da: $d8

    sbc c                                         ; $57db: $99

jr_038_57dc:
    ld h, $6b                                     ; $57dc: $26 $6b
    ld c, $93                                     ; $57de: $0e $93
    ld c, a                                       ; $57e0: $4f
    ret c                                         ; $57e1: $d8

    sbc c                                         ; $57e2: $99
    ld h, $6b                                     ; $57e3: $26 $6b
    ld c, $53                                     ; $57e5: $0e $53
    ld c, h                                       ; $57e7: $4c

Call_038_57e8:
    ret c                                         ; $57e8: $d8

    sbc c                                         ; $57e9: $99
    ld h, $6b                                     ; $57ea: $26 $6b
    ld c, $53                                     ; $57ec: $0e $53
    ld c, [hl]                                    ; $57ee: $4e
    ret c                                         ; $57ef: $d8

    sbc c                                         ; $57f0: $99
    ld h, $6b                                     ; $57f1: $26 $6b

jr_038_57f3:
    ld c, $27                                     ; $57f3: $0e $27
    jr z, jr_038_5860                             ; $57f5: $28 $69

    or d                                          ; $57f7: $b2
    dec b                                         ; $57f8: $05
    pop bc                                        ; $57f9: $c1
    sub h                                         ; $57fa: $94
    xor d                                         ; $57fb: $aa
    call Call_038_783a                            ; $57fc: $cd $3a $78
    db $ed                                        ; $57ff: $ed
    db $f4                                        ; $5800: $f4
    add hl, sp                                    ; $5801: $39
    ld c, c                                       ; $5802: $49
    xor d                                         ; $5803: $aa
    rst $28                                       ; $5804: $ef
    inc hl                                        ; $5805: $23
    ld d, h                                       ; $5806: $54
    add a                                         ; $5807: $87
    pop de                                        ; $5808: $d1
    ret c                                         ; $5809: $d8

    cp c                                          ; $580a: $b9
    ld c, h                                       ; $580b: $4c
    or $00                                        ; $580c: $f6 $00
    ld [hl], h                                    ; $580e: $74
    cpl                                           ; $580f: $2f
    cp $ba                                        ; $5810: $fe $ba
    pop bc                                        ; $5812: $c1
    rra                                           ; $5813: $1f
    inc [hl]                                      ; $5814: $34
    inc sp                                        ; $5815: $33
    or l                                          ; $5816: $b5
    inc l                                         ; $5817: $2c
    inc c                                         ; $5818: $0c
    ret                                           ; $5819: $c9


    ld bc, $2827                                  ; $581a: $01 $27 $28
    db $fc                                        ; $581d: $fc
    rst $00                                       ; $581e: $c7
    pop hl                                        ; $581f: $e1
    dec h                                         ; $5820: $25
    ld a, $05                                     ; $5821: $3e $05
    or $8b                                        ; $5823: $f6 $8b
    and l                                         ; $5825: $a5
    inc hl                                        ; $5826: $23
    adc h                                         ; $5827: $8c
    ld l, b                                       ; $5828: $68
    sbc d                                         ; $5829: $9a
    inc bc                                        ; $582a: $03
    inc hl                                        ; $582b: $23
    call nc, $6100                                ; $582c: $d4 $00 $61
    cp c                                          ; $582f: $b9
    add hl, de                                    ; $5830: $19
    pop de                                        ; $5831: $d1
    inc [hl]                                      ; $5832: $34
    rlca                                          ; $5833: $07
    jp Jump_038_5ae4                              ; $5834: $c3 $e4 $5a


    or d                                          ; $5837: $b2
    ld l, a                                       ; $5838: $6f
    ld b, [hl]                                    ; $5839: $46
    inc [hl]                                      ; $583a: $34
    call $cc01                                    ; $583b: $cd $01 $cc
    and b                                         ; $583e: $a0
    xor h                                         ; $583f: $ac
    push hl                                       ; $5840: $e5
    ld h, [hl]                                    ; $5841: $66
    ld b, h                                       ; $5842: $44
    db $d3                                        ; $5843: $d3
    inc e                                         ; $5844: $1c
    ld c, h                                       ; $5845: $4c
    ld d, e                                       ; $5846: $53
    ld d, $a1                                     ; $5847: $16 $a1
    ld b, d                                       ; $5849: $42
    ld a, d                                       ; $584a: $7a
    ld [c], a                                     ; $584b: $e2

Call_038_584c:
    push de                                       ; $584c: $d5
    sub [hl]                                      ; $584d: $96
    adc [hl]                                      ; $584e: $8e
    jr nc, jr_038_57f3                            ; $584f: $30 $a2

    ld l, c                                       ; $5851: $69
    ld c, $43                                     ; $5852: $0e $43
    add hl, bc                                    ; $5854: $09
    ld [c], a                                     ; $5855: $e2
    jp nc, $ef41                                  ; $5856: $d2 $41 $ef

    ld c, d                                       ; $5859: $4a
    ret z                                         ; $585a: $c8

    and [hl]                                      ; $585b: $a6
    add hl, sp                                    ; $585c: $39
    jp $bd03                                      ; $585d: $c3 $03 $bd


jr_038_5860:
    ld c, a                                       ; $5860: $4f
    ld b, c                                       ; $5861: $41
    ld c, $8c                                     ; $5862: $0e $8c
    ld b, $b9                                     ; $5864: $06 $b9
    ld hl, sp+$6d                                 ; $5866: $f8 $6d
    dec c                                         ; $5868: $0d
    xor $30                                       ; $5869: $ee $30
    pop af                                        ; $586b: $f1
    xor $1a                                       ; $586c: $ee $1a
    pop de                                        ; $586e: $d1
    ld [hl], h                                    ; $586f: $74
    ld [hl], e                                    ; $5870: $73
    ld c, c                                       ; $5871: $49
    ld sp, $ff00                                  ; $5872: $31 $00 $ff
    ret z                                         ; $5875: $c8

    ld bc, $2da3                                  ; $5876: $01 $a3 $2d
    add a                                         ; $5879: $87
    add d                                         ; $587a: $82
    inc e                                         ; $587b: $1c
    ld b, e                                       ; $587c: $43
    xor c                                         ; $587d: $a9
    ld a, h                                       ; $587e: $7c
    or l                                          ; $587f: $b5
    adc $01                                       ; $5880: $ce $01
    ret                                           ; $5882: $c9


    ld e, a                                       ; $5883: $5f
    ld b, c                                       ; $5884: $41
    dec e                                         ; $5885: $1d
    ld l, e                                       ; $5886: $6b
    jp hl                                         ; $5887: $e9


    or b                                          ; $5888: $b0
    xor a                                         ; $5889: $af
    ld c, $e4                                     ; $588a: $0e $e4
    adc a                                         ; $588c: $8f
    cp $cd                                        ; $588d: $fe $cd
    sbc h                                         ; $588f: $9c
    inc bc                                        ; $5890: $03
    ld c, h                                       ; $5891: $4c
    ld hl, sp-$04                                 ; $5892: $f8 $fc
    sbc c                                         ; $5894: $99
    ld l, [hl]                                    ; $5895: $6e
    rlca                                          ; $5896: $07
    xor a                                         ; $5897: $af
    and e                                         ; $5898: $a3
    ld c, h                                       ; $5899: $4c
    ld hl, sp-$04                                 ; $589a: $f8 $fc
    sbc c                                         ; $589c: $99
    ld [hl+], a                                   ; $589d: $22
    ld a, a                                       ; $589e: $7f
    ld [hl], a                                    ; $589f: $77
    rst $00                                       ; $58a0: $c7
    and $73                                       ; $58a1: $e6 $73
    rst $00                                       ; $58a3: $c7
    add d                                         ; $58a4: $82
    sub a                                         ; $58a5: $97
    ld [$6fe4], sp                                ; $58a6: $08 $e4 $6f
    ld [c], a                                     ; $58a9: $e2
    ld d, c                                       ; $58aa: $51
    adc d                                         ; $58ab: $8a
    ld c, $5a                                     ; $58ac: $0e $5a
    ld [hl], d                                    ; $58ae: $72
    inc hl                                        ; $58af: $23
    ld [de], a                                    ; $58b0: $12
    add hl, bc                                    ; $58b1: $09
    bit 2, a                                      ; $58b2: $cb $57
    sbc c                                         ; $58b4: $99
    ld [hl], e                                    ; $58b5: $73
    ret                                           ; $58b6: $c9


    sub a                                         ; $58b7: $97
    ld l, h                                       ; $58b8: $6c
    dec e                                         ; $58b9: $1d
    ld l, e                                       ; $58ba: $6b
    db $ec                                        ; $58bb: $ec
    add hl, bc                                    ; $58bc: $09
    ld [hl], a                                    ; $58bd: $77
    rst $00                                       ; $58be: $c7
    cp e                                          ; $58bf: $bb
    ld h, h                                       ; $58c0: $64
    ld sp, $4c07                                  ; $58c1: $31 $07 $4c
    cp $e8                                        ; $58c4: $fe $e8
    rst $18                                       ; $58c6: $df
    call z, $fe4b                                 ; $58c7: $cc $4b $fe
    ld l, a                                       ; $58ca: $6f
    ld [hl], e                                    ; $58cb: $73
    jp $be4c                                      ; $58cc: $c3 $4c $be


    cp [hl]                                       ; $58cf: $be
    ld c, h                                       ; $58d0: $4c
    call z, $c704                                 ; $58d1: $cc $04 $c7
    and $cc                                       ; $58d4: $e6 $cc
    and b                                         ; $58d6: $a0
    xor h                                         ; $58d7: $ac
    ld h, l                                       ; $58d8: $65
    adc l                                         ; $58d9: $8d
    ld c, l                                       ; $58da: $4d
    cp [hl]                                       ; $58db: $be
    ld h, h                                       ; $58dc: $64
    db $eb                                        ; $58dd: $eb
    ld e, b                                       ; $58de: $58
    ld h, e                                       ; $58df: $63
    add a                                         ; $58e0: $87
    rst $00                                       ; $58e1: $c7
    cp [hl]                                       ; $58e2: $be
    ld c, e                                       ; $58e3: $4b
    ld d, $73                                     ; $58e4: $16 $73
    and e                                         ; $58e6: $a3
    cpl                                           ; $58e7: $2f
    ld c, d                                       ; $58e8: $4a
    ldh [$5d], a                                  ; $58e9: $e0 $5d
    add hl, bc                                    ; $58eb: $09
    add hl, sp                                    ; $58ec: $39
    rlca                                          ; $58ed: $07
    ld b, e                                       ; $58ee: $43
    ld sp, hl                                     ; $58ef: $f9
    or l                                          ; $58f0: $b5
    ld bc, $c8ea                                  ; $58f1: $01 $ea $c8
    ld bc, $ce8c                                  ; $58f4: $01 $8c $ce
    cp h                                          ; $58f7: $bc
    ld b, a                                       ; $58f8: $47
    nop                                           ; $58f9: $00
    sbc b                                         ; $58fa: $98
    and $23                                       ; $58fb: $e6 $23
    sbc l                                         ; $58fd: $9d
    db $fd                                        ; $58fe: $fd
    adc c                                         ; $58ff: $89
    ld b, a                                       ; $5900: $47
    ld e, l                                       ; $5901: $5d
    ld [hl], a                                    ; $5902: $77
    set 0, h                                      ; $5903: $cb $c4
    ld [hl], e                                    ; $5905: $73
    set 3, a                                      ; $5906: $cb $df
    ld e, e                                       ; $5908: $5b
    ld c, $4c                                     ; $5909: $0e $4c
    dec [hl]                                      ; $590b: $35
    ld h, b                                       ; $590c: $60
    sbc c                                         ; $590d: $99
    ld a, b                                       ; $590e: $78
    and h                                         ; $590f: $a4
    or e                                          ; $5910: $b3
    ccf                                           ; $5911: $3f
    ld [hl], b                                    ; $5912: $70
    db $dd                                        ; $5913: $dd
    dec l                                         ; $5914: $2d
    inc de                                        ; $5915: $13
    rst $08                                       ; $5916: $cf
    dec l                                         ; $5917: $2d
    ld a, a                                       ; $5918: $7f
    ld l, a                                       ; $5919: $6f
    add hl, sp                                    ; $591a: $39
    di                                            ; $591b: $f3
    ld b, $fc                                     ; $591c: $06 $fc
    inc hl                                        ; $591e: $23
    ld c, [hl]                                    ; $591f: $4e
    sbc a                                         ; $5920: $9f
    ld hl, sp-$7c                                 ; $5921: $f8 $84
    xor a                                         ; $5923: $af
    ld e, b                                       ; $5924: $58
    dec bc                                        ; $5925: $0b
    ret z                                         ; $5926: $c8

    rst $18                                       ; $5927: $df
    ld e, e                                       ; $5928: $5b
    ld c, $c9                                     ; $5929: $0e $c9
    ld d, $36                                     ; $592b: $16 $36
    ret z                                         ; $592d: $c8

    and c                                         ; $592e: $a1
    daa                                           ; $592f: $27
    ld a, $e1                                     ; $5930: $3e $e1
    dec hl                                        ; $5932: $2b
    sub $02                                       ; $5933: $d6 $02
    ld a, [c]                                     ; $5935: $f2
    rst $30                                       ; $5936: $f7
    sub [hl]                                      ; $5937: $96
    inc bc                                        ; $5938: $03
    ld b, e                                       ; $5939: $43
    dec d                                         ; $593a: $15
    ld sp, $3890                                  ; $593b: $31 $90 $38
    jr nc, jr_038_59a0                            ; $593e: $30 $60

    ld a, [hl-]                                   ; $5940: $3a
    pop af                                        ; $5941: $f1
    add hl, bc                                    ; $5942: $09
    ld e, a                                       ; $5943: $5f
    or c                                          ; $5944: $b1
    ld d, $90                                     ; $5945: $16 $90
    cp a                                          ; $5947: $bf
    or a                                          ; $5948: $b7
    inc e                                         ; $5949: $1c
    ld b, e                                       ; $594a: $43
    dec d                                         ; $594b: $15
    ld sp, $3890                                  ; $594c: $31 $90 $38
    jr nc, jr_038_59b1                            ; $594f: $30 $60

    ld a, [hl-]                                   ; $5951: $3a
    pop af                                        ; $5952: $f1
    add hl, bc                                    ; $5953: $09
    ld e, a                                       ; $5954: $5f
    or c                                          ; $5955: $b1
    ld d, $90                                     ; $5956: $16 $90
    cp a                                          ; $5958: $bf
    or a                                          ; $5959: $b7
    ld c, $5e                                     ; $595a: $0e $5e
    db $db                                        ; $595c: $db
    ld [hl], a                                    ; $595d: $77
    dec a                                         ; $595e: $3d
    ld c, e                                       ; $595f: $4b
    rst $20                                       ; $5960: $e7
    ld d, h                                       ; $5961: $54
    sbc a                                         ; $5962: $9f
    ld b, $24                                     ; $5963: $06 $24
    ld b, d                                       ; $5965: $42
    ld c, $43                                     ; $5966: $0e $43
    dec d                                         ; $5968: $15
    ld [de], a                                    ; $5969: $12
    and h                                         ; $596a: $a4
    daa                                           ; $596b: $27
    sbc $1c                                       ; $596c: $de $1c
    inc hl                                        ; $596e: $23
    cp [hl]                                       ; $596f: $be
    add b                                         ; $5970: $80
    dec sp                                        ; $5971: $3b
    cp e                                          ; $5972: $bb
    ld a, [hl-]                                   ; $5973: $3a
    ld c, $cb                                     ; $5974: $0e $cb
    db $f4                                        ; $5976: $f4
    sbc l                                         ; $5977: $9d
    ld l, c                                       ; $5978: $69
    or d                                          ; $5979: $b2
    and $23                                       ; $597a: $e6 $23
    cp [hl]                                       ; $597c: $be
    add b                                         ; $597d: $80
    ei                                            ; $597e: $fb
    dec d                                         ; $597f: $15
    sbc $13                                       ; $5980: $de $13
    rra                                           ; $5982: $1f
    push af                                       ; $5983: $f5
    and $73                                       ; $5984: $e6 $73
    ld a, a                                       ; $5986: $7f
    add l                                         ; $5987: $85
    db $fc                                        ; $5988: $fc
    ld a, c                                       ; $5989: $79
    ld [hl], e                                    ; $598a: $73
    di                                            ; $598b: $f3
    ld e, d                                       ; $598c: $5a
    add sp, $47                                   ; $598d: $e8 $47
    db $f4                                        ; $598f: $f4
    and $c3                                       ; $5990: $e6 $c3
    inc l                                         ; $5992: $2c
    ld c, $28                                     ; $5993: $0e $28
    ld e, c                                       ; $5995: $59
    dec e                                         ; $5996: $1d
    sbc l                                         ; $5997: $9d
    ei                                            ; $5998: $fb
    dec hl                                        ; $5999: $2b
    db $e4                                        ; $599a: $e4
    rst $08                                       ; $599b: $cf
    dec sp                                        ; $599c: $3b
    inc h                                         ; $599d: $24
    rlca                                          ; $599e: $07
    ld b, e                                       ; $599f: $43

jr_038_59a0:
    dec d                                         ; $59a0: $15
    pop de                                        ; $59a1: $d1
    cp a                                          ; $59a2: $bf
    jp c, $32e2                                   ; $59a3: $da $e2 $32

    rlca                                          ; $59a6: $07
    jp nz, $d2d4                                  ; $59a7: $c2 $d4 $d2

    ei                                            ; $59aa: $fb
    rla                                           ; $59ab: $17
    ldh a, [$a6]                                  ; $59ac: $f0 $a6
    ld c, l                                       ; $59ae: $4d
    ld [de], a                                    ; $59af: $12
    ld [de], a                                    ; $59b0: $12

jr_038_59b1:
    cp a                                          ; $59b1: $bf
    cp c                                          ; $59b2: $b9
    jp c, Jump_038_61db                           ; $59b3: $da $db $61

    inc de                                        ; $59b6: $13
    adc a                                         ; $59b7: $8f
    ret c                                         ; $59b8: $d8

    ld l, e                                       ; $59b9: $6b
    add b                                         ; $59ba: $80
    jr c, jr_038_5a14                             ; $59bb: $38 $57

    dec e                                         ; $59bd: $1d
    ld c, l                                       ; $59be: $4d
    cp $ab                                        ; $59bf: $fe $ab
    ld c, l                                       ; $59c1: $4d
    ei                                            ; $59c2: $fb
    ld e, c                                       ; $59c3: $59
    or d                                          ; $59c4: $b2
    ld h, d                                       ; $59c5: $62
    push bc                                       ; $59c6: $c5
    db $fc                                        ; $59c7: $fc
    ld a, c                                       ; $59c8: $79
    db $d3                                        ; $59c9: $d3
    inc e                                         ; $59ca: $1c
    ret                                           ; $59cb: $c9


    ld a, a                                       ; $59cc: $7f
    or l                                          ; $59cd: $b5
    ld l, c                                       ; $59ce: $69
    ccf                                           ; $59cf: $3f
    sbc e                                         ; $59d0: $9b
    sbc c                                         ; $59d1: $99

Jump_038_59d2:
    sub l                                         ; $59d2: $95
    adc e                                         ; $59d3: $8b
    ccf                                           ; $59d4: $3f
    rst $28                                       ; $59d5: $ef
    sub b                                         ; $59d6: $90
    inc e                                         ; $59d7: $1c
    ret                                           ; $59d8: $c9


    ld a, a                                       ; $59d9: $7f
    or l                                          ; $59da: $b5

Jump_038_59db:
    ld l, c                                       ; $59db: $69
    dec l                                         ; $59dc: $2d
    call nz, $3345                                ; $59dd: $c4 $45 $33
    ld [hl], c                                    ; $59e0: $71
    ldh a, [$37]                                  ; $59e1: $f0 $37
    inc h                                         ; $59e3: $24
    rlca                                          ; $59e4: $07
    ld c, c                                       ; $59e5: $49
    xor d                                         ; $59e6: $aa
    or a                                          ; $59e7: $b7
    cp a                                          ; $59e8: $bf
    adc e                                         ; $59e9: $8b
    ret nc                                        ; $59ea: $d0

    sbc e                                         ; $59eb: $9b
    ld h, e                                       ; $59ec: $63
    db $dd                                        ; $59ed: $dd
    ld de, $c05f                                  ; $59ee: $11 $5f $c0
    db $db                                        ; $59f1: $db
    jp $fa4f                                      ; $59f2: $c3 $4f $fa


    dec d                                         ; $59f5: $15
    or c                                          ; $59f6: $b1
    ld a, [hl]                                    ; $59f7: $7e
    add a                                         ; $59f8: $87
    rst $30                                       ; $59f9: $f7
    call c, $77bb                                 ; $59fa: $dc $bb $77
    xor e                                         ; $59fd: $ab
    dec e                                         ; $59fe: $1d
    db $db                                        ; $59ff: $db
    ld e, c                                       ; $5a00: $59
    ld l, $1a                                     ; $5a01: $2e $1a
    ld d, a                                       ; $5a03: $57
    add a                                         ; $5a04: $87
    adc c                                         ; $5a05: $89
    rlca                                          ; $5a06: $07
    inc bc                                        ; $5a07: $03
    dec sp                                        ; $5a08: $3b
    ld a, b                                       ; $5a09: $78
    ld d, c                                       ; $5a0a: $51
    jp c, $1840                                   ; $5a0b: $da $40 $18

    sub d                                         ; $5a0e: $92
    inc bc                                        ; $5a0f: $03
    jp $ea82                                      ; $5a10: $c3 $82 $ea


    db $db                                        ; $5a13: $db

jr_038_5a14:
    rla                                           ; $5a14: $17
    ld [hl], b                                    ; $5a15: $70
    ld e, c                                       ; $5a16: $59
    dec bc                                        ; $5a17: $0b
    jp hl                                         ; $5a18: $e9


    dec e                                         ; $5a19: $1d
    ld h, b                                       ; $5a1a: $60
    ld l, c                                       ; $5a1b: $69
    or d                                          ; $5a1c: $b2
    ld c, a                                       ; $5a1d: $4f
    rst $30                                       ; $5a1e: $f7
    ld d, [hl]                                    ; $5a1f: $56
    xor l                                         ; $5a20: $ad
    xor $09                                       ; $5a21: $ee $09
    ld e, a                                       ; $5a23: $5f

jr_038_5a24:
    or c                                          ; $5a24: $b1
    ld d, $4b                                     ; $5a25: $16 $4b
    inc sp                                        ; $5a27: $33
    inc de                                        ; $5a28: $13
    ld l, d                                       ; $5a29: $6a
    or l                                          ; $5a2a: $b5
    ld [hl], a                                    ; $5a2b: $77
    ld c, b                                       ; $5a2c: $48
    ld c, $49                                     ; $5a2d: $0e $49
    xor d                                         ; $5a2f: $aa
    rst $30                                       ; $5a30: $f7
    db $10                                        ; $5a31: $10
    add h                                         ; $5a32: $84
    ld [$658f], a                                 ; $5a33: $ea $8f $65
    sub h                                         ; $5a36: $94
    ld sp, $1104                                  ; $5a37: $31 $04 $11
    xor e                                         ; $5a3a: $ab
    cpl                                           ; $5a3b: $2f
    sbc c                                         ; $5a3c: $99
    sbc b                                         ; $5a3d: $98
    add hl, sp                                    ; $5a3e: $39
    db $10                                        ; $5a3f: $10
    and [hl]                                      ; $5a40: $a6
    ld [hl], l                                    ; $5a41: $75
    inc l                                         ; $5a42: $2c
    cp $e3                                        ; $5a43: $fe $e3
    jr nc, jr_038_5a24                            ; $5a45: $30 $dd

    ld hl, $4939                                  ; $5a47: $21 $39 $49
    xor d                                         ; $5a4a: $aa
    rst $30                                       ; $5a4b: $f7
    db $10                                        ; $5a4c: $10
    add h                                         ; $5a4d: $84
    ld [$4d8f], a                                 ; $5a4e: $ea $8f $4d
    ld d, [hl]                                    ; $5a51: $56
    inc b                                         ; $5a52: $04
    ld b, c                                       ; $5a53: $41
    dec a                                         ; $5a54: $3d
    and b                                         ; $5a55: $a0
    ld [$6262], sp                                ; $5a56: $08 $62 $62
    and $40                                       ; $5a59: $e6 $40
    sbc b                                         ; $5a5b: $98
    sub $b1                                       ; $5a5c: $d6 $b1
    ld hl, sp-$71                                 ; $5a5e: $f8 $8f
    jp $8774                                      ; $5a60: $c3 $74 $87


    db $e4                                        ; $5a63: $e4
    ld c, c                                       ; $5a64: $49
    xor d                                         ; $5a65: $aa
    rst $30                                       ; $5a66: $f7
    db $10                                        ; $5a67: $10
    add h                                         ; $5a68: $84
    ld [$9d8f], a                                 ; $5a69: $ea $8f $9d
    db $eb                                        ; $5a6c: $eb
    rrca                                          ; $5a6d: $0f
    ld a, d                                       ; $5a6e: $7a
    add hl, sp                                    ; $5a6f: $39
    db $fd                                        ; $5a70: $fd
    rst $30                                       ; $5a71: $f7
    adc c                                         ; $5a72: $89
    sbc c                                         ; $5a73: $99
    inc bc                                        ; $5a74: $03
    ld h, c                                       ; $5a75: $61
    ld e, d                                       ; $5a76: $5a
    rst $00                                       ; $5a77: $c7
    ld [c], a                                     ; $5a78: $e2
    ccf                                           ; $5a79: $3f
    ld c, $d3                                     ; $5a7a: $0e $d3
    dec e                                         ; $5a7c: $1d
    sub d                                         ; $5a7d: $92
    inc bc                                        ; $5a7e: $03
    ld c, c                                       ; $5a7f: $49
    xor d                                         ; $5a80: $aa
    rst $30                                       ; $5a81: $f7
    db $10                                        ; $5a82: $10
    add h                                         ; $5a83: $84
    ld [$658f], a                                 ; $5a84: $ea $8f $65
    jp nc, $f031                                  ; $5a87: $d2 $31 $f0

    inc l                                         ; $5a8a: $2c
    or c                                          ; $5a8b: $b1
    inc de                                        ; $5a8c: $13
    inc sp                                        ; $5a8d: $33
    rlca                                          ; $5a8e: $07
    jp nz, $8eb4                                  ; $5a8f: $c2 $b4 $8e

    push bc                                       ; $5a92: $c5
    ld a, a                                       ; $5a93: $7f
    inc e                                         ; $5a94: $1c
    and [hl]                                      ; $5a95: $a6
    dec sp                                        ; $5a96: $3b
    inc h                                         ; $5a97: $24
    rlca                                          ; $5a98: $07
    ld c, c                                       ; $5a99: $49
    xor d                                         ; $5a9a: $aa
    rst $28                                       ; $5a9b: $ef
    inc hl                                        ; $5a9c: $23
    ld d, h                                       ; $5a9d: $54
    add a                                         ; $5a9e: $87
    pop de                                        ; $5a9f: $d1
    ld e, b                                       ; $5aa0: $58
    and $40                                       ; $5aa1: $e6 $40
    sbc b                                         ; $5aa3: $98
    halt                                          ; $5aa4: $76
    cpl                                           ; $5aa5: $2f
    cp $ba                                        ; $5aa6: $fe $ba
    pop bc                                        ; $5aa8: $c1
    rra                                           ; $5aa9: $1f
    sub h                                         ; $5aaa: $94
    db $10                                        ; $5aab: $10
    ld b, a                                       ; $5aac: $47
    ld h, [hl]                                    ; $5aad: $66
    db $e4                                        ; $5aae: $e4
    rst $28                                       ; $5aaf: $ef
    ld d, e                                       ; $5ab0: $53
    jr nc, jr_038_5abf                            ; $5ab1: $30 $0c

    ret                                           ; $5ab3: $c9


    ld bc, $5af3                                  ; $5ab4: $01 $f3 $5a
    adc b                                         ; $5ab7: $88
    adc e                                         ; $5ab8: $8b
    ld h, [hl]                                    ; $5ab9: $66
    ld l, [hl]                                    ; $5aba: $6e
    sub d                                         ; $5abb: $92
    ld a, h                                       ; $5abc: $7c
    ld a, [hl]                                    ; $5abd: $7e
    sbc l                                         ; $5abe: $9d

jr_038_5abf:
    xor e                                         ; $5abf: $ab
    adc [hl]                                      ; $5ac0: $8e
    adc $ee                                       ; $5ac1: $ce $ee
    pop bc                                        ; $5ac3: $c1
    and b                                         ; $5ac4: $a0
    call nc, $e1d8                                ; $5ac5: $d4 $d8 $e1
    ld [de], a                                    ; $5ac8: $12
    cp e                                          ; $5ac9: $bb
    sub [hl]                                      ; $5aca: $96
    inc hl                                        ; $5acb: $23
    ld hl, sp+$2b                                 ; $5acc: $f8 $2b
    ld e, c                                       ; $5ace: $59

Jump_038_5acf:
    add hl, bc                                    ; $5acf: $09
    adc c                                         ; $5ad0: $89
    rst $18                                       ; $5ad1: $df
    ret z                                         ; $5ad2: $c8

    ld [$d45d], a                                 ; $5ad3: $ea $5d $d4
    dec sp                                        ; $5ad6: $3b
    inc h                                         ; $5ad7: $24
    rlca                                          ; $5ad8: $07
    or e                                          ; $5ad9: $b3
    ld e, a                                       ; $5ada: $5f
    jp nz, $a05a                                  ; $5adb: $c2 $5a $a0

    add c                                         ; $5ade: $81
    ld d, b                                       ; $5adf: $50
    cpl                                           ; $5ae0: $2f
    call c, $e3ae                                 ; $5ae1: $dc $ae $e3

Jump_038_5ae4:
    ldh a, [$0e]                                  ; $5ae4: $f0 $0e
    ld l, c                                       ; $5ae6: $69
    add a                                         ; $5ae7: $87
    reti                                          ; $5ae8: $d9


    ld b, c                                       ; $5ae9: $41
    xor e                                         ; $5aea: $ab
    add e                                         ; $5aeb: $83
    cp a                                          ; $5aec: $bf
    ld [hl], e                                    ; $5aed: $73
    db $e3                                        ; $5aee: $e3
    ld l, l                                       ; $5aef: $6d
    dec e                                         ; $5af0: $1d
    ld c, e                                       ; $5af1: $4b
    ld d, [hl]                                    ; $5af2: $56
    call nz, $ccdf                                ; $5af3: $c4 $df $cc
    sbc e                                         ; $5af6: $9b
    and $b3                                       ; $5af7: $e6 $b3
    call nz, $576a                                ; $5af9: $c4 $6a $57
    ld a, e                                       ; $5afc: $7b
    dec sp                                        ; $5afd: $3b
    ldh a, [rNR11]                                ; $5afe: $f0 $11
    cp l                                          ; $5b00: $bd
    jp c, $265b                                   ; $5b01: $da $5b $26

    ld a, a                                       ; $5b04: $7f
    sub h                                         ; $5b05: $94
    add h                                         ; $5b06: $84
    ld l, b                                       ; $5b07: $68
    ld a, d                                       ; $5b08: $7a
    xor [hl]                                      ; $5b09: $ae
    ld a, [hl-]                                   ; $5b0a: $3a
    xor d                                         ; $5b0b: $aa
    jp $9b9d                                      ; $5b0c: $c3 $9d $9b


    inc h                                         ; $5b0f: $24
    db $fd                                        ; $5b10: $fd
    adc d                                         ; $5b11: $8a
    jr nz, jr_038_5b3f                            ; $5b12: $20 $2b

    db $e4                                        ; $5b14: $e4
    adc a                                         ; $5b15: $8f
    add [hl]                                      ; $5b16: $86
    rst $00                                       ; $5b17: $c7
    pop af                                        ; $5b18: $f1
    ld c, $c9                                     ; $5b19: $0e $c9
    ld bc, $5af3                                  ; $5b1b: $01 $f3 $5a
    ld d, b                                       ; $5b1e: $50
    pop af                                        ; $5b1f: $f1
    rst $20                                       ; $5b20: $e7
    ld [$8770], a                                 ; $5b21: $ea $70 $87
    dec hl                                        ; $5b24: $2b
    ld [$5592], a                                 ; $5b25: $ea $92 $55
    adc c                                         ; $5b28: $89
    cp a                                          ; $5b29: $bf
    sbc c                                         ; $5b2a: $99
    ld [hl], a                                    ; $5b2b: $77
    ld c, b                                       ; $5b2c: $48
    ld c, $b3                                     ; $5b2d: $0e $b3
    ld e, h                                       ; $5b2f: $5c
    inc [hl]                                      ; $5b30: $34
    ld [hl], e                                    ; $5b31: $73
    ld h, a                                       ; $5b32: $67
    and c                                         ; $5b33: $a1
    ld bc, $e0f7                                  ; $5b34: $01 $f7 $e0
    or a                                          ; $5b37: $b7
    ld hl, $2339                                  ; $5b38: $21 $39 $23
    inc bc                                        ; $5b3b: $03
    ld sp, hl                                     ; $5b3c: $f9
    ld [hl], e                                    ; $5b3d: $73
    or l                                          ; $5b3e: $b5

jr_038_5b3f:
    or a                                          ; $5b3f: $b7
    ld [de], a                                    ; $5b40: $12
    db $fc                                        ; $5b41: $fc
    ld b, c                                       ; $5b42: $41
    ld h, h                                       ; $5b43: $64
    sbc $9e                                       ; $5b44: $de $9e
    ldh a, [$15]                                  ; $5b46: $f0 $15
    ld l, e                                       ; $5b48: $6b
    ld bc, $7bf9                                  ; $5b49: $01 $f9 $7b
    dec de                                        ; $5b4c: $1b
    sub d                                         ; $5b4d: $92
    inc bc                                        ; $5b4e: $03
    inc hl                                        ; $5b4f: $23
    ld a, l                                       ; $5b50: $7d
    ld e, h                                       ; $5b51: $5c
    ld [hl-], a                                   ; $5b52: $32
    and [hl]                                      ; $5b53: $a6
    ld b, a                                       ; $5b54: $47
    ld b, b                                       ; $5b55: $40
    or l                                          ; $5b56: $b5
    or a                                          ; $5b57: $b7
    jp $ea82                                      ; $5b58: $c3 $82 $ea


    db $db                                        ; $5b5b: $db
    rla                                           ; $5b5c: $17
    ldh a, [rPCM12]                               ; $5b5d: $f0 $76
    ldh a, [$da]                                  ; $5b5f: $f0 $da
    or d                                          ; $5b61: $b2
    ld d, $d2                                     ; $5b62: $16 $d2
    dec sp                                        ; $5b64: $3b
    ret nz                                        ; $5b65: $c0

    db $db                                        ; $5b66: $db
    ld h, h                                       ; $5b67: $64
    sbc a                                         ; $5b68: $9f
    xor $ad                                       ; $5b69: $ee $ad
    ld e, d                                       ; $5b6b: $5a
    db $dd                                        ; $5b6c: $dd
    inc de                                        ; $5b6d: $13
    cp [hl]                                       ; $5b6e: $be
    ld h, d                                       ; $5b6f: $62
    dec l                                         ; $5b70: $2d
    sub [hl]                                      ; $5b71: $96
    dec e                                         ; $5b72: $1d
    sub d                                         ; $5b73: $92
    inc bc                                        ; $5b74: $03
    ld c, c                                       ; $5b75: $49
    xor d                                         ; $5b76: $aa
    rst $28                                       ; $5b77: $ef
    inc hl                                        ; $5b78: $23
    call nc, $deb1                                ; $5b79: $d4 $b1 $de
    xor [hl]                                      ; $5b7c: $ae
    sub l                                         ; $5b7d: $95
    or a                                          ; $5b7e: $b7
    or e                                          ; $5b7f: $b3
    ld a, c                                       ; $5b80: $79
    ret nc                                        ; $5b81: $d0

    or h                                          ; $5b82: $b4
    add h                                         ; $5b83: $84
    jr c, jr_038_5bb8                             ; $5b84: $38 $32

    inc hl                                        ; $5b86: $23
    ld a, a                                       ; $5b87: $7f
    sbc a                                         ; $5b88: $9f
    add d                                         ; $5b89: $82
    ld h, c                                       ; $5b8a: $61
    ld c, b                                       ; $5b8b: $48
    ld c, $49                                     ; $5b8c: $0e $49
    xor d                                         ; $5b8e: $aa
    rst $28                                       ; $5b8f: $ef
    inc hl                                        ; $5b90: $23
    call nc, $deb1                                ; $5b91: $d4 $b1 $de
    xor [hl]                                      ; $5b94: $ae
    sub l                                         ; $5b95: $95
    or a                                          ; $5b96: $b7
    daa                                           ; $5b97: $27
    ld a, h                                       ; $5b98: $7c
    push bc                                       ; $5b99: $c5
    ld e, d                                       ; $5b9a: $5a
    ld [hl], b                                    ; $5b9b: $70
    ld b, b                                       ; $5b9c: $40
    inc d                                         ; $5b9d: $14
    ld a, a                                       ; $5b9e: $7f
    inc de                                        ; $5b9f: $13
    rst $08                                       ; $5ba0: $cf
    and $41                                       ; $5ba1: $e6 $41
    db $d3                                        ; $5ba3: $d3
    ld [de], a                                    ; $5ba4: $12
    ld [c], a                                     ; $5ba5: $e2
    ret z                                         ; $5ba6: $c8

    adc h                                         ; $5ba7: $8c
    db $fc                                        ; $5ba8: $fc
    ld a, l                                       ; $5ba9: $7d
    ld a, [bc]                                    ; $5baa: $0a
    add [hl]                                      ; $5bab: $86
    ld hl, $4c39                                  ; $5bac: $21 $39 $4c
    ld c, b                                       ; $5baf: $48
    sub h                                         ; $5bb0: $94
    sbc e                                         ; $5bb1: $9b
    dec sp                                        ; $5bb2: $3b
    pop de                                        ; $5bb3: $d1
    ld c, h                                       ; $5bb4: $4c
    sub e                                         ; $5bb5: $93
    dec [hl]                                      ; $5bb6: $35
    rlca                                          ; $5bb7: $07

jr_038_5bb8:
    di                                            ; $5bb8: $f3
    ld e, d                                       ; $5bb9: $5a
    ret nz                                        ; $5bba: $c0

    and c                                         ; $5bbb: $a1
    inc hl                                        ; $5bbc: $23
    ld d, e                                       ; $5bbd: $53
    sbc e                                         ; $5bbe: $9b
    ld [hl], l                                    ; $5bbf: $75
    and d                                         ; $5bc0: $a2
    sbc c                                         ; $5bc1: $99
    ld h, $6b                                     ; $5bc2: $26 $6b
    ld c, $23                                     ; $5bc4: $0e $23
    ld a, a                                       ; $5bc6: $7f
    sub [hl]                                      ; $5bc7: $96
    sub [hl]                                      ; $5bc8: $96
    add hl, bc                                    ; $5bc9: $09
    adc c                                         ; $5bca: $89

jr_038_5bcb:
    ld [hl], d                                    ; $5bcb: $72

Jump_038_5bcc:
    ld [hl], e                                    ; $5bcc: $73
    daa                                           ; $5bcd: $27
    sbc d                                         ; $5bce: $9a
    ld l, c                                       ; $5bcf: $69
    or d                                          ; $5bd0: $b2
    and $23                                       ; $5bd1: $e6 $23
    ld a, a                                       ; $5bd3: $7f
    sub [hl]                                      ; $5bd4: $96
    halt                                          ; $5bd5: $76
    ld e, [hl]                                    ; $5bd6: $5e
    dec bc                                        ; $5bd7: $0b
    jr c, jr_038_5c4e                             ; $5bd8: $38 $74

    ld h, h                                       ; $5bda: $64
    ld l, c                                       ; $5bdb: $69
    daa                                           ; $5bdc: $27
    sbc d                                         ; $5bdd: $9a
    ld l, c                                       ; $5bde: $69
    or d                                          ; $5bdf: $b2
    and $c3                                       ; $5be0: $e6 $c3
    ld a, h                                       ; $5be2: $7c
    ld [hl], a                                    ; $5be3: $77
    ld b, [hl]                                    ; $5be4: $46
    add e                                         ; $5be5: $83
    cp a                                          ; $5be6: $bf
    sbc e                                         ; $5be7: $9b
    inc bc                                        ; $5be8: $03
    ld a, [hl-]                                   ; $5be9: $3a
    pop de                                        ; $5bea: $d1
    ld c, h                                       ; $5beb: $4c
    sub e                                         ; $5bec: $93
    dec [hl]                                      ; $5bed: $35
    rlca                                          ; $5bee: $07
    inc hl                                        ; $5bef: $23
    db $e4                                        ; $5bf0: $e4
    inc de                                        ; $5bf1: $13
    ret nc                                        ; $5bf2: $d0

    adc c                                         ; $5bf3: $89
    ld h, [hl]                                    ; $5bf4: $66
    sbc d                                         ; $5bf5: $9a
    xor h                                         ; $5bf6: $ac
    add hl, sp                                    ; $5bf7: $39
    ld c, c                                       ; $5bf8: $49
    rra                                           ; $5bf9: $1f
    adc e                                         ; $5bfa: $8b
    db $fc                                        ; $5bfb: $fc
    dec e                                         ; $5bfc: $1d
    and $37                                       ; $5bfd: $e6 $37
    jr z, @+$37                                   ; $5bff: $28 $35

    cp a                                          ; $5c01: $bf
    ld e, c                                       ; $5c02: $59
    xor d                                         ; $5c03: $aa
    ld d, [hl]                                    ; $5c04: $56
    rst $30                                       ; $5c05: $f7
    xor e                                         ; $5c06: $ab
    ld [hl], c                                    ; $5c07: $71
    inc l                                         ; $5c08: $2c
    jp c, $0347                                   ; $5c09: $da $47 $03

    and c                                         ; $5c0c: $a1
    adc [hl]                                      ; $5c0d: $8e
    ld [hl], l                                    ; $5c0e: $75
    ld b, a                                       ; $5c0f: $47
    ld a, h                                       ; $5c10: $7c
    ld bc, $7f57                                  ; $5c11: $01 $57 $7f
    adc c                                         ; $5c14: $89
    db $ed                                        ; $5c15: $ed
    and b                                         ; $5c16: $a0
    dec b                                         ; $5c17: $05
    pop bc                                        ; $5c18: $c1
    db $fc                                        ; $5c19: $fc
    ld b, $43                                     ; $5c1a: $06 $43
    ld [hl], d                                    ; $5c1c: $72
    ret                                           ; $5c1d: $c9


    ld h, c                                       ; $5c1e: $61
    jp hl                                         ; $5c1f: $e9


    ei                                            ; $5c20: $fb
    ld [$aad5], sp                                ; $5c21: $08 $d5 $aa
    jp c, $1db1                                   ; $5c24: $da $b1 $1d

    ld l, $b1                                     ; $5c27: $2e $b1
    ld l, e                                       ; $5c29: $6b
    add hl, sp                                    ; $5c2a: $39
    add d                                         ; $5c2b: $82
    cp a                                          ; $5c2c: $bf
    sub d                                         ; $5c2d: $92
    sub l                                         ; $5c2e: $95
    sub b                                         ; $5c2f: $90
    ld hl, sp-$13                                 ; $5c30: $f8 $ed
    call c, Call_000_3dd9                         ; $5c32: $dc $d9 $3d
    jr jr_038_5bcb                                ; $5c35: $18 $94

    ld a, [hl-]                                   ; $5c37: $3a
    call Call_038_4901                            ; $5c38: $cd $01 $49
    xor d                                         ; $5c3b: $aa
    rst $28                                       ; $5c3c: $ef
    inc hl                                        ; $5c3d: $23
    call nc, Call_038_7bd8                        ; $5c3e: $d4 $d8 $7b
    ld e, b                                       ; $5c41: $58
    ld e, e                                       ; $5c42: $5b
    adc $4d                                       ; $5c43: $ce $4d
    cp $22                                        ; $5c45: $fe $22
    ld h, e                                       ; $5c47: $63
    jp nc, $a926                                  ; $5c48: $d2 $26 $a9

    cp [hl]                                       ; $5c4b: $be
    adc a                                         ; $5c4c: $8f
    ret nc                                        ; $5c4d: $d0

jr_038_5c4e:
    ld a, e                                       ; $5c4e: $7b
    ret z                                         ; $5c4f: $c8

    adc l                                         ; $5c50: $8d
    ld b, $7f                                     ; $5c51: $06 $7f
    db $fd                                        ; $5c53: $fd
    sub h                                         ; $5c54: $94
    ld a, [de]                                    ; $5c55: $1a
    xor e                                         ; $5c56: $ab
    ccf                                           ; $5c57: $3f
    ld b, c                                       ; $5c58: $41
    sub d                                         ; $5c59: $92
    ld h, [hl]                                    ; $5c5a: $66
    add [hl]                                      ; $5c5b: $86
    cp a                                          ; $5c5c: $bf
    rst $20                                       ; $5c5d: $e7
    ld a, [de]                                    ; $5c5e: $1a
    ld a, e                                       ; $5c5f: $7b
    rrca                                          ; $5c60: $0f
    ld l, e                                       ; $5c61: $6b
    ld c, e                                       ; $5c62: $4b
    ret                                           ; $5c63: $c9


    ld c, d                                       ; $5c64: $4a
    ld c, b                                       ; $5c65: $48
    db $fc                                        ; $5c66: $fc
    ld d, [hl]                                    ; $5c67: $56
    or d                                          ; $5c68: $b2
    ld a, [hl+]                                   ; $5c69: $2a
    db $eb                                        ; $5c6a: $eb
    db $db                                        ; $5c6b: $db
    ld [hl], l                                    ; $5c6c: $75
    inc e                                         ; $5c6d: $1c
    sbc $34                                       ; $5c6e: $de $34
    rlca                                          ; $5c70: $07
    and e                                         ; $5c71: $a3
    cp l                                          ; $5c72: $bd
    ld e, e                                       ; $5c73: $5b
    xor l                                         ; $5c74: $ad
    ld a, d                                       ; $5c75: $7a
    ld [hl], e                                    ; $5c76: $73
    xor h                                         ; $5c77: $ac
    dec sp                                        ; $5c78: $3b
    inc l                                         ; $5c79: $2c
    xor b                                         ; $5c7a: $a8
    cp [hl]                                       ; $5c7b: $be
    ld a, l                                       ; $5c7c: $7d
    ld bc, $076f                                  ; $5c7d: $01 $6f $07
    xor a                                         ; $5c80: $af
    dec l                                         ; $5c81: $2d
    ld l, e                                       ; $5c82: $6b
    ld hl, $03bd                                  ; $5c83: $21 $bd $03
    cp h                                          ; $5c86: $bc
    ld c, l                                       ; $5c87: $4d
    or $e9                                        ; $5c88: $f6 $e9
    sbc $aa                                       ; $5c8a: $de $aa
    push de                                       ; $5c8c: $d5
    dec a                                         ; $5c8d: $3d
    pop hl                                        ; $5c8e: $e1
    dec hl                                        ; $5c8f: $2b
    sub $62                                       ; $5c90: $d6 $62
    reti                                          ; $5c92: $d9


    sbc $be                                       ; $5c93: $de $be
    ld [hl+], a                                   ; $5c95: $22
    db $10                                        ; $5c96: $10
    adc $7d                                       ; $5c97: $ce $7d
    sbc a                                         ; $5c99: $9f
    push af                                       ; $5c9a: $f5
    or $1e                                        ; $5c9b: $f6 $1e
    jp nc, Jump_038_639b                          ; $5c9d: $d2 $9b $63

    dec l                                         ; $5ca0: $2d
    call nc, Call_038_4651                        ; $5ca1: $d4 $51 $46
    db $e3                                        ; $5ca4: $e3
    add b                                         ; $5ca5: $80
    inc h                                         ; $5ca6: $24
    ld a, [c]                                     ; $5ca7: $f2
    add a                                         ; $5ca8: $87
    ld [$4117], sp                                ; $5ca9: $08 $17 $41
    and h                                         ; $5cac: $a4
    add hl, sp                                    ; $5cad: $39
    call z, $83f0                                 ; $5cae: $cc $f0 $83
    ld h, [hl]                                    ; $5cb1: $66
    ld a, a                                       ; $5cb2: $7f
    ret                                           ; $5cb3: $c9


    push bc                                       ; $5cb4: $c5
    xor e                                         ; $5cb5: $ab
    ld e, a                                       ; $5cb6: $5f
    pop hl                                        ; $5cb7: $e1
    cp c                                          ; $5cb8: $b9
    sbc a                                         ; $5cb9: $9f
    ld h, d                                       ; $5cba: $62
    ld e, a                                       ; $5cbb: $5f
    ld [hl+], a                                   ; $5cbc: $22
    add b                                         ; $5cbd: $80
    ld de, $55aa                                  ; $5cbe: $11 $aa $55
    adc l                                         ; $5cc1: $8d
    db $dd                                        ; $5cc2: $dd
    ldh [rIF], a                                  ; $5cc3: $e0 $0f
    sbc d                                         ; $5cc5: $9a
    ld e, c                                       ; $5cc6: $59
    cp [hl]                                       ; $5cc7: $be
    halt                                          ; $5cc8: $76
    xor c                                         ; $5cc9: $a9
    add e                                         ; $5cca: $83
    ccf                                           ; $5ccb: $3f
    ld l, b                                       ; $5ccc: $68
    and $f7                                       ; $5ccd: $e6 $f7
    ld e, c                                       ; $5ccf: $59
    jr c, jr_038_5d09                             ; $5cd0: $38 $37

    ld sp, hl                                     ; $5cd2: $f9
    adc e                                         ; $5cd3: $8b
    adc h                                         ; $5cd4: $8c
    ld c, c                                       ; $5cd5: $49
    ld e, e                                       ; $5cd6: $5b
    and $45                                       ; $5cd7: $e6 $45
    ld l, c                                       ; $5cd9: $69
    add e                                         ; $5cda: $83
    cp a                                          ; $5cdb: $bf
    ld [$afe0], a                                 ; $5cdc: $ea $e0 $af
    rst $30                                       ; $5cdf: $f7
    or b                                          ; $5ce0: $b0
    or [hl]                                       ; $5ce1: $b6
    sub h                                         ; $5ce2: $94
    xor h                                         ; $5ce3: $ac
    ldh a, [$1f]                                  ; $5ce4: $f0 $1f
    add a                                         ; $5ce6: $87
    sub a                                         ; $5ce7: $97
    and b                                         ; $5ce8: $a0
    pop bc                                        ; $5ce9: $c1
    ld l, a                                       ; $5cea: $6f
    sbc $19                                       ; $5ceb: $de $19
    ld [hl], e                                    ; $5ced: $73
    ld c, h                                       ; $5cee: $4c
    ld [hl], b                                    ; $5cef: $70
    ld h, h                                       ; $5cf0: $64
    dec a                                         ; $5cf1: $3d
    push de                                       ; $5cf2: $d5
    ld b, b                                       ; $5cf3: $40
    add [hl]                                      ; $5cf4: $86
    add $56                                       ; $5cf5: $c6 $56
    dec sp                                        ; $5cf7: $3b
    or [hl]                                       ; $5cf8: $b6
    jp Jump_000_0bae                              ; $5cf9: $c3 $ae $0b


    adc $4d                                       ; $5cfc: $ce $4d
    cp $22                                        ; $5cfe: $fe $22
    ld h, e                                       ; $5d00: $63
    jp nc, $a71c                                  ; $5d01: $d2 $1c $a7

    rst $08                                       ; $5d04: $cf
    inc [hl]                                      ; $5d05: $34
    ld e, c                                       ; $5d06: $59
    daa                                           ; $5d07: $27
    sbc b                                         ; $5d08: $98

jr_038_5d09:
    ld l, c                                       ; $5d09: $69
    ld a, [c]                                     ; $5d0a: $f2
    ld [hl-], a                                   ; $5d0b: $32
    ld a, c                                       ; $5d0c: $79
    ld h, e                                       ; $5d0d: $63
    ld sp, $fe33                                  ; $5d0e: $31 $33 $fe
    inc bc                                        ; $5d11: $03
    ld h, $cc                                     ; $5d12: $26 $cc
    ld bc, $5af3                                  ; $5d14: $01 $f3 $5a
    xor $7f                                       ; $5d17: $ee $7f
    dec [hl]                                      ; $5d19: $35
    ld d, l                                       ; $5d1a: $55
    sbc e                                         ; $5d1b: $9b
    and c                                         ; $5d1c: $a1
    ld e, d                                       ; $5d1d: $5a
    or b                                          ; $5d1e: $b0
    ld c, b                                       ; $5d1f: $48
    ldh a, [rTAC]                                 ; $5d20: $f0 $07
    add hl, sp                                    ; $5d22: $39
    inc hl                                        ; $5d23: $23
    inc h                                         ; $5d24: $24
    ld d, c                                       ; $5d25: $51
    add c                                         ; $5d26: $81
    push hl                                       ; $5d27: $e5
    and [hl]                                      ; $5d28: $a6
    ld d, [hl]                                    ; $5d29: $56
    ld e, e                                       ; $5d2a: $5b
    dec l                                         ; $5d2b: $2d
    ld e, b                                       ; $5d2c: $58
    inc h                                         ; $5d2d: $24
    ld hl, sp-$7d                                 ; $5d2e: $f8 $83
    inc e                                         ; $5d30: $1c
    di                                            ; $5d31: $f3
    inc l                                         ; $5d32: $2c
    ld e, b                                       ; $5d33: $58
    inc h                                         ; $5d34: $24
    ld hl, sp-$7d                                 ; $5d35: $f8 $83
    add $76                                       ; $5d37: $c6 $76
    ld e, [hl]                                    ; $5d39: $5e
    dec bc                                        ; $5d3a: $0b
    jr c, jr_038_5db1                             ; $5d3b: $38 $74

    ld h, h                                       ; $5d3d: $64
    ld l, d                                       ; $5d3e: $6a
    or e                                          ; $5d3f: $b3
    ld h, [hl]                                    ; $5d40: $66
    adc $bc                                       ; $5d41: $ce $bc
    push de                                       ; $5d43: $d5
    pop hl                                        ; $5d44: $e1
    ld l, d                                       ; $5d45: $6a
    or l                                          ; $5d46: $b5
    scf                                           ; $5d47: $37
    ld [$08ed], a                                 ; $5d48: $ea $ed $08
    jp nc, $3822                                  ; $5d4b: $d2 $22 $38

    rlca                                          ; $5d4e: $07
    or e                                          ; $5d4f: $b3
    ld d, b                                       ; $5d50: $50
    sub l                                         ; $5d51: $95
    ld hl, $d5a8                                  ; $5d52: $21 $a8 $d5
    adc $01                                       ; $5d55: $ce $01
    daa                                           ; $5d57: $27
    ld a, h                                       ; $5d58: $7c
    push bc                                       ; $5d59: $c5
    ld e, d                                       ; $5d5a: $5a
    ld l, [hl]                                    ; $5d5b: $6e
    ld l, d                                       ; $5d5c: $6a
    ld de, $82d4                                  ; $5d5d: $11 $d4 $82
    ld b, l                                       ; $5d60: $45
    add d                                         ; $5d61: $82
    ccf                                           ; $5d62: $3f
    ret z                                         ; $5d63: $c8

    ld bc, $7f23                                  ; $5d64: $01 $23 $7f
    sub [hl]                                      ; $5d67: $96
    ld [hl-], a                                   ; $5d68: $32
    ld a, [de]                                    ; $5d69: $1a
    ld sp, hl                                     ; $5d6a: $f9

jr_038_5d6b:
    dec bc                                        ; $5d6b: $0b
    cp $00                                        ; $5d6c: $fe $00
    push de                                       ; $5d6e: $d5
    add d                                         ; $5d6f: $82
    ld b, l                                       ; $5d70: $45
    add d                                         ; $5d71: $82
    ccf                                           ; $5d72: $3f
    ret z                                         ; $5d73: $c8

    ld bc, $fc09                                  ; $5d74: $01 $09 $fc
    dec d                                         ; $5d77: $15
    cpl                                           ; $5d78: $2f
    ld c, d                                       ; $5d79: $4a
    pop bc                                        ; $5d7a: $c1
    ld h, l                                       ; $5d7b: $65
    adc l                                         ; $5d7c: $8d
    ld l, b                                       ; $5d7d: $68
    jp hl                                         ; $5d7e: $e9


    ld b, $7f                                     ; $5d7f: $06 $7f
    ld d, b                                       ; $5d81: $50
    ld a, l                                       ; $5d82: $7d
    add hl, bc                                    ; $5d83: $09
    call nc, $f40b                                ; $5d84: $d4 $0b $f4
    ld l, a                                       ; $5d87: $6f
    sub $cc                                       ; $5d88: $d6 $cc
    rst $08                                       ; $5d8a: $cf
    sbc e                                         ; $5d8b: $9b
    or [hl]                                       ; $5d8c: $b6
    jp $b7b1                                      ; $5d8d: $c3 $b1 $b7


    or c                                          ; $5d90: $b1
    ld [hl], a                                    ; $5d91: $77
    pop bc                                        ; $5d92: $c1
    ld b, l                                       ; $5d93: $45
    rst $00                                       ; $5d94: $c7
    sbc [hl]                                      ; $5d95: $9e
    xor e                                         ; $5d96: $ab
    ccf                                           ; $5d97: $3f
    ld h, d                                       ; $5d98: $62
    sbc c                                         ; $5d99: $99
    ei                                            ; $5d9a: $fb
    rlca                                          ; $5d9b: $07
    ld e, h                                       ; $5d9c: $5c
    inc c                                         ; $5d9d: $0c
    cp $aa                                        ; $5d9e: $fe $aa
    cpl                                           ; $5da0: $2f
    add c                                         ; $5da1: $81
    add [hl]                                      ; $5da2: $86
    ld h, h                                       ; $5da3: $64
    ld e, [hl]                                    ; $5da4: $5e
    ld a, l                                       ; $5da5: $7d
    cp a                                          ; $5da6: $bf
    ld a, [hl-]                                   ; $5da7: $3a
    ld l, b                                       ; $5da8: $68
    ld b, c                                       ; $5da9: $41
    jr nc, jr_038_5d6b                            ; $5daa: $30 $bf

    ld b, c                                       ; $5dac: $41
    ld e, a                                       ; $5dad: $5f
    ld [hl+], a                                   ; $5dae: $22
    add l                                         ; $5daf: $85
    inc [hl]                                      ; $5db0: $34

jr_038_5db1:
    rlca                                          ; $5db1: $07
    jp $83a8                                      ; $5db2: $c3 $a8 $83


    db $ed                                        ; $5db5: $ed
    dec bc                                        ; $5db6: $0b
    ld c, e                                       ; $5db7: $4b
    push de                                       ; $5db8: $d5
    add d                                         ; $5db9: $82
    rst $30                                       ; $5dba: $f7
    call c, Call_000_2fe4                         ; $5dbb: $dc $e4 $2f
    ld [hl-], a                                   ; $5dbe: $32
    ld h, $6d                                     ; $5dbf: $26 $6d
    sub e                                         ; $5dc1: $93
    jp nz, $1e1d                                  ; $5dc2: $c2 $1d $1e

    ld c, e                                       ; $5dc5: $4b
    sub b                                         ; $5dc6: $90
    sbc [hl]                                      ; $5dc7: $9e
    xor b                                         ; $5dc8: $a8
    call $7090                                    ; $5dc9: $cd $90 $70
    ld e, b                                       ; $5dcc: $58
    ld c, d                                       ; $5dcd: $4a
    inc h                                         ; $5dce: $24
    ld l, [hl]                                    ; $5dcf: $6e
    ld b, $3d                                     ; $5dd0: $06 $3d
    push de                                       ; $5dd2: $d5
    ld b, b                                       ; $5dd3: $40
    add [hl]                                      ; $5dd4: $86
    ld h, [hl]                                    ; $5dd5: $66
    call nc, Call_038_5fc1                        ; $5dd6: $d4 $c1 $5f
    rst $38                                       ; $5dd9: $ff
    and [hl]                                      ; $5dda: $a6
    add hl, sp                                    ; $5ddb: $39
    and e                                         ; $5ddc: $a3
    ld b, e                                       ; $5ddd: $43
    adc d                                         ; $5dde: $8a
    rla                                           ; $5ddf: $17
    and l                                         ; $5de0: $a5
    ldh [$ed], a                                  ; $5de1: $e0 $ed
    ld b, $7f                                     ; $5de3: $06 $7f
    ld d, b                                       ; $5de5: $50
    ld a, l                                       ; $5de6: $7d
    add hl, bc                                    ; $5de7: $09
    db $f4                                        ; $5de8: $f4
    push bc                                       ; $5de9: $c5
    xor d                                         ; $5dea: $aa
    dec b                                         ; $5deb: $05
    ld c, e                                       ; $5dec: $4b
    inc sp                                        ; $5ded: $33
    ccf                                           ; $5dee: $3f
    rst $28                                       ; $5def: $ef
    cp c                                          ; $5df0: $b9
    ret                                           ; $5df1: $c9


    ld e, a                                       ; $5df2: $5f
    ld h, h                                       ; $5df3: $64
    ld c, h                                       ; $5df4: $4c
    jp c, $0e8e                                   ; $5df5: $da $8e $0e

    jp hl                                         ; $5df8: $e9


    ld b, c                                       ; $5df9: $41
    ld b, d                                       ; $5dfa: $42
    db $f4                                        ; $5dfb: $f4
    sub [hl]                                      ; $5dfc: $96
    xor h                                         ; $5dfd: $ac
    adc [hl]                                      ; $5dfe: $8e
    ld [hl-], a                                   ; $5dff: $32
    ld sp, hl                                     ; $5e00: $f9
    and e                                         ; $5e01: $a3
    sbc a                                         ; $5e02: $9f
    ret nz                                        ; $5e03: $c0

    rst $38                                       ; $5e04: $ff
    ld l, c                                       ; $5e05: $69
    ret                                           ; $5e06: $c9


    ld c, d                                       ; $5e07: $4a
    ld c, b                                       ; $5e08: $48
    db $fc                                        ; $5e09: $fc
    sub [hl]                                      ; $5e0a: $96
    and $09                                       ; $5e0b: $e6 $09
    db $fc                                        ; $5e0d: $fc
    dec [hl]                                      ; $5e0e: $35
    and e                                         ; $5e0f: $a3
    ld e, a                                       ; $5e10: $5f
    or c                                          ; $5e11: $b1
    ld a, $57                                     ; $5e12: $3e $57
    rst $38                                       ; $5e14: $ff
    xor d                                         ; $5e15: $aa
    dec b                                         ; $5e16: $05
    ld l, a                                       ; $5e17: $6f
    inc bc                                        ; $5e18: $03
    and c                                         ; $5e19: $a1
    and a                                         ; $5e1a: $a7
    ld a, [$abf8]                                 ; $5e1b: $fa $f8 $ab
    db $d3                                        ; $5e1e: $d3
    ld [hl], $81                                  ; $5e1f: $36 $81
    cp a                                          ; $5e21: $bf
    ld [c], a                                     ; $5e22: $e2
    ld b, l                                       ; $5e23: $45
    add hl, hl                                    ; $5e24: $29
    cp b                                          ; $5e25: $b8
    dec de                                        ; $5e26: $1b
    db $fc                                        ; $5e27: $fc
    ld b, c                                       ; $5e28: $41
    rst $28                                       ; $5e29: $ef
    ld h, c                                       ; $5e2a: $61
    ld l, l                                       ; $5e2b: $6d
    jp hl                                         ; $5e2c: $e9


    adc e                                         ; $5e2d: $8b
    ld d, l                                       ; $5e2e: $55
    dec bc                                        ; $5e2f: $0b
    sub [hl]                                      ; $5e30: $96
    ld h, [hl]                                    ; $5e31: $66
    ld a, [hl]                                    ; $5e32: $7e
    sbc $34                                       ; $5e33: $de $34
    rlca                                          ; $5e35: $07
    or e                                          ; $5e36: $b3
    ld d, b                                       ; $5e37: $50
    ld b, l                                       ; $5e38: $45
    db $10                                        ; $5e39: $10
    ld h, e                                       ; $5e3a: $63
    ld a, [de]                                    ; $5e3b: $1a
    ld [$8afd], sp                                ; $5e3c: $08 $fd $8a
    xor b                                         ; $5e3f: $a8
    ld c, $a3                                     ; $5e40: $0e $a3
    adc a                                         ; $5e42: $8f
    ld [hl-], a                                   ; $5e43: $32
    pop hl                                        ; $5e44: $e1
    ld [c], a                                     ; $5e45: $e2
    or a                                          ; $5e46: $b7
    cp e                                          ; $5e47: $bb
    push hl                                       ; $5e48: $e5

jr_038_5e49:
    sub [hl]                                      ; $5e49: $96
    or [hl]                                       ; $5e4a: $b6

jr_038_5e4b:
    and e                                         ; $5e4b: $a3
    ld b, e                                       ; $5e4c: $43
    adc d                                         ; $5e4d: $8a
    rla                                           ; $5e4e: $17
    and l                                         ; $5e4f: $a5
    ldh [$2d], a                                  ; $5e50: $e0 $2d
    ld e, [hl]                                    ; $5e52: $5e
    ld b, l                                       ; $5e53: $45
    cp $d6                                        ; $5e54: $fe $d6
    sub h                                         ; $5e56: $94
    or $1e                                        ; $5e57: $f6 $1e
    xor $31                                       ; $5e59: $ee $31
    halt                                          ; $5e5b: $76
    ld b, [hl]                                    ; $5e5c: $46
    add e                                         ; $5e5d: $83
    cp a                                          ; $5e5e: $bf
    sub d                                         ; $5e5f: $92
    ld d, l                                       ; $5e60: $55
    db $e3                                        ; $5e61: $e3

jr_038_5e62:
    dec e                                         ; $5e62: $1d
    call $bcfc                                    ; $5e63: $cd $fc $bc
    ld l, c                                       ; $5e66: $69
    ld c, $43                                     ; $5e67: $0e $43
    ld e, c                                       ; $5e69: $59
    res 7, c                                      ; $5e6a: $cb $b9
    sbc a                                         ; $5e6c: $9f
    or l                                          ; $5e6d: $b5
    sbc h                                         ; $5e6e: $9c
    sbc e                                         ; $5e6f: $9b
    db $fc                                        ; $5e70: $fc
    ld b, l                                       ; $5e71: $45
    add $9c                                       ; $5e72: $c6 $9c
    ld a, e                                       ; $5e74: $7b
    rst $38                                       ; $5e75: $ff
    ret c                                         ; $5e76: $d8

    rst $30                                       ; $5e77: $f7
    ld de, $55aa                                  ; $5e78: $11 $aa $55
    or l                                          ; $5e7b: $b5
    ld [hl], a                                    ; $5e7c: $77
    cp e                                          ; $5e7d: $bb
    rla                                           ; $5e7e: $17
    ld a, a                                       ; $5e7f: $7f
    ld d, l                                       ; $5e80: $55
    ld b, a                                       ; $5e81: $47
    ld [hl], l                                    ; $5e82: $75
    jr jr_038_5e62                                ; $5e83: $18 $dd

    ld a, c                                       ; $5e85: $79
    sbc [hl]                                      ; $5e86: $9e
    sub b                                         ; $5e87: $90
    dec e                                         ; $5e88: $1d
    ret nc                                        ; $5e89: $d0

    rla                                           ; $5e8a: $17
    sub [hl]                                      ; $5e8b: $96

Jump_038_5e8c:
    sub d                                         ; $5e8c: $92
    ld d, l                                       ; $5e8d: $55
    ld d, c                                       ; $5e8e: $51
    pop af                                        ; $5e8f: $f1
    rst $20                                       ; $5e90: $e7
    sbc l                                         ; $5e91: $9d
    or c                                          ; $5e92: $b1
    inc hl                                        ; $5e93: $23
    ccf                                           ; $5e94: $3f
    ld a, a                                       ; $5e95: $7f
    rst $20                                       ; $5e96: $e7
    ld [$588f], a                                 ; $5e97: $ea $8f $58
    xor l                                         ; $5e9a: $ad
    ld a, [de]                                    ; $5e9b: $1a
    ld e, e                                       ; $5e9c: $5b
    db $ed                                        ; $5e9d: $ed
    ret c                                         ; $5e9e: $d8

    ld c, $33                                     ; $5e9f: $0e $33
    ld b, b                                       ; $5ea1: $40
    ld l, a                                       ; $5ea2: $6f
    rst $10                                       ; $5ea3: $d7
    ld [hl], c                                    ; $5ea4: $71
    jr nz, jr_038_5e4b                            ; $5ea5: $20 $a4

    dec e                                         ; $5ea7: $1d
    and $38                                       ; $5ea8: $e6 $38
    cp d                                          ; $5eaa: $ba
    adc c                                         ; $5eab: $89
    db $fc                                        ; $5eac: $fc
    ld hl, $3b78                                  ; $5ead: $21 $78 $3b
    ld a, [c]                                     ; $5eb0: $f2
    db $d3                                        ; $5eb1: $d3
    sbc $2d                                       ; $5eb2: $de $2d
    jp c, $fe0d                                   ; $5eb4: $da $0d $fe

    ld a, [$5b57]                                 ; $5eb7: $fa $57 $5b
    ld e, h                                       ; $5eba: $5c
    and [hl]                                      ; $5ebb: $a6
    inc bc                                        ; $5ebc: $03
    cp h                                          ; $5ebd: $bc
    db $fd                                        ; $5ebe: $fd
    adc d                                         ; $5ebf: $8a

jr_038_5ec0:
    jr nz, jr_038_5e49                            ; $5ec0: $20 $87

    sbc a                                         ; $5ec2: $9f
    scf                                           ; $5ec3: $37
    call Call_000_0901                            ; $5ec4: $cd $01 $09
    db $fc                                        ; $5ec7: $fc
    push af                                       ; $5ec8: $f5
    ld a, l                                       ; $5ec9: $7d
    sub $d5                                       ; $5eca: $d6 $d5
    pop bc                                        ; $5ecc: $c1
    ld e, a                                       ; $5ecd: $5f
    inc sp                                        ; $5ece: $33
    rst $18                                       ; $5ecf: $df
    cp a                                          ; $5ed0: $bf
    inc l                                         ; $5ed1: $2c
    and h                                         ; $5ed2: $a4
    dec e                                         ; $5ed3: $1d
    ld e, $5b                                     ; $5ed4: $1e $5b
    ld h, $c8                                     ; $5ed6: $26 $c8
    daa                                           ; $5ed8: $27
    ld b, $d4                                     ; $5ed9: $06 $d4
    sbc $a0                                       ; $5edb: $de $a0
    inc b                                         ; $5edd: $04
    ld c, c                                       ; $5ede: $49
    jp z, Jump_038_6328                           ; $5edf: $ca $28 $63

    ld [$5622], sp                                ; $5ee2: $08 $22 $56
    ld e, a                                       ; $5ee5: $5f
    sub d                                         ; $5ee6: $92
    halt                                          ; $5ee7: $76
    ld d, [hl]                                    ; $5ee8: $56
    inc bc                                        ; $5ee9: $03
    add hl, de                                    ; $5eea: $19
    ld a, [$c6d9]                                 ; $5eeb: $fa $d9 $c6
    ld h, d                                       ; $5eee: $62
    add a                                         ; $5eef: $87
    add hl, de                                    ; $5ef0: $19
    jr nz, jr_038_5ec0                            ; $5ef1: $20 $cd

    ld bc, $5fc9                                  ; $5ef3: $01 $c9 $5f
    ld h, h                                       ; $5ef6: $64
    call z, $99b9                                 ; $5ef7: $cc $b9 $99
    ld e, a                                       ; $5efa: $5f
    rst $28                                       ; $5efb: $ef
    ld h, c                                       ; $5efc: $61
    ld l, l                                       ; $5efd: $6d
    ld l, c                                       ; $5efe: $69
    inc l                                         ; $5eff: $2c
    halt                                          ; $5f00: $76
    sbc b                                         ; $5f01: $98
    ld bc, $3486                                  ; $5f02: $01 $86 $34
    ld bc, $99a1                                  ; $5f05: $01 $a1 $99
    adc c                                         ; $5f08: $89
    call nz, Call_000_3427                        ; $5f09: $c4 $27 $34
    ld hl, sp-$15                                 ; $5f0c: $f8 $eb
    dec bc                                        ; $5f0e: $0b
    ld c, e                                       ; $5f0f: $4b
    db $d3                                        ; $5f10: $d3

Call_038_5f11:
    inc [hl]                                      ; $5f11: $34
    xor l                                         ; $5f12: $ad
    or c                                          ; $5f13: $b1
    jr @-$53                                      ; $5f14: $18 $ab

    dec sp                                        ; $5f16: $3b
    sbc e                                         ; $5f17: $9b
    sbc a                                         ; $5f18: $9f
    ld e, b                                       ; $5f19: $58
    ld a, [de]                                    ; $5f1a: $1a
    ld e, e                                       ; $5f1b: $5b
    ld l, l                                       ; $5f1c: $6d
    jp hl                                         ; $5f1d: $e9


    db $ec                                        ; $5f1e: $ec
    adc c                                         ; $5f1f: $89
    rst $08                                       ; $5f20: $cf

jr_038_5f21:
    ld b, e                                       ; $5f21: $43

Call_038_5f22:
    ld [hl], d                                    ; $5f22: $72
    ret                                           ; $5f23: $c9


    sbc a                                         ; $5f24: $9f
    xor l                                         ; $5f25: $ad
    ld c, $fe                                     ; $5f26: $0e $fe
    sbc d                                         ; $5f28: $9a
    ld sp, hl                                     ; $5f29: $f9
    cp $65                                        ; $5f2a: $fe $65
    ld h, c                                       ; $5f2c: $61
    ld c, b                                       ; $5f2d: $48
    add hl, de                                    ; $5f2e: $19
    db $fd                                        ; $5f2f: $fd
    ld c, d                                       ; $5f30: $4a
    ld d, [hl]                                    ; $5f31: $56
    ld b, d                                       ; $5f32: $42
    ld [c], a                                     ; $5f33: $e2
    or a                                          ; $5f34: $b7
    xor $e7                                       ; $5f35: $ee $e7
    xor a                                         ; $5f37: $af
    adc h                                         ; $5f38: $8c
    ld [hl-], a                                   ; $5f39: $32
    add [hl]                                      ; $5f3a: $86
    jr nz, jr_038_5f9f                            ; $5f3b: $20 $62

    push af                                       ; $5f3d: $f5
    dec h                                         ; $5f3e: $25
    rst $20                                       ; $5f3f: $e7
    sbc $43                                       ; $5f40: $de $43
    db $10                                        ; $5f42: $10
    adc d                                         ; $5f43: $8a
    rst $10                                       ; $5f44: $d7
    ld [hl+], a                                   ; $5f45: $22
    ld [hl], h                                    ; $5f46: $74
    sub h                                         ; $5f47: $94
    jp c, $b81b                                   ; $5f48: $da $1b $b8

    add e                                         ; $5f4b: $83
    ld d, $1a                                     ; $5f4c: $16 $1a
    ld d, $ef                                     ; $5f4e: $16 $ef
    sub b                                         ; $5f50: $90
    inc e                                         ; $5f51: $1c
    add hl, bc                                    ; $5f52: $09
    db $fc                                        ; $5f53: $fc
    push af                                       ; $5f54: $f5
    xor [hl]                                      ; $5f55: $ae
    db $10                                        ; $5f56: $10
    pop bc                                        ; $5f57: $c1
    db $dd                                        ; $5f58: $dd
    ldh [rIF], a                                  ; $5f59: $e0 $0f
    adc $d5                                       ; $5f5b: $ce $d5
    rra                                           ; $5f5d: $1f
    or c                                          ; $5f5e: $b1
    ld e, d                                       ; $5f5f: $5a
    dec d                                         ; $5f60: $15
    xor a                                         ; $5f61: $af
    ld a, [hl-]                                   ; $5f62: $3a
    sub $9d                                       ; $5f63: $d6 $9d
    db $fd                                        ; $5f65: $fd
    di                                            ; $5f66: $f3
    rlca                                          ; $5f67: $07
    ld d, [hl]                                    ; $5f68: $56
    call nc, Call_000_0365                        ; $5f69: $d4 $65 $03
    pop hl                                        ; $5f6c: $e1
    call c, Call_000_2fe4                         ; $5f6d: $dc $e4 $2f
    ld [hl-], a                                   ; $5f70: $32
    ld h, $6d                                     ; $5f71: $26 $6d
    ld [bc], a                                    ; $5f73: $02
    ld a, a                                       ; $5f74: $7f
    cp l                                          ; $5f75: $bd
    ld e, e                                       ; $5f76: $5b
    or h                                          ; $5f77: $b4
    xor e                                         ; $5f78: $ab
    add e                                         ; $5f79: $83
    cp a                                          ; $5f7a: $bf
    ld l, [hl]                                    ; $5f7b: $6e
    ldh a, [rTAC]                                 ; $5f7c: $f0 $07
    ld h, l                                       ; $5f7e: $65
    adc l                                         ; $5f7f: $8d
    jr nz, jr_038_5f21                            ; $5f80: $20 $9f

    ldh a, [$9e]                                  ; $5f82: $f0 $9e
    ei                                            ; $5f84: $fb
    ld e, c                                       ; $5f85: $59
    ld c, e                                       ; $5f86: $4b
    adc a                                         ; $5f87: $8f
    rst $08                                       ; $5f88: $cf
    ld e, a                                       ; $5f89: $5f
    ld c, a                                       ; $5f8a: $4f
    dec [hl]                                      ; $5f8b: $35
    sub b                                         ; $5f8c: $90
    pop hl                                        ; $5f8d: $e1
    ld e, h                                       ; $5f8e: $5c
    db $fd                                        ; $5f8f: $fd
    ld de, $55ab                                  ; $5f90: $11 $ab $55
    ld h, e                                       ; $5f93: $63
    xor e                                         ; $5f94: $ab
    dec e                                         ; $5f95: $1d
    db $db                                        ; $5f96: $db
    ld h, c                                       ; $5f97: $61
    ld b, $e8                                     ; $5f98: $06 $e8
    db $ed                                        ; $5f9a: $ed
    ld a, [hl-]                                   ; $5f9b: $3a
    ld c, $84                                     ; $5f9c: $0e $84
    inc [hl]                                      ; $5f9e: $34

jr_038_5f9f:
    rlca                                          ; $5f9f: $07
    ld c, c                                       ; $5fa0: $49
    xor d                                         ; $5fa1: $aa
    jr nz, jr_038_5fb2                            ; $5fa2: $20 $0e

    ld d, $a1                                     ; $5fa4: $16 $a1
    ld a, [hl-]                                   ; $5fa6: $3a
    ld hl, sp-$15                                 ; $5fa7: $f8 $eb
    and a                                         ; $5fa9: $a7
    ld a, b                                       ; $5faa: $78
    dec [hl]                                      ; $5fab: $35
    adc [hl]                                      ; $5fac: $8e
    jp $bdd2                                      ; $5fad: $c3 $d2 $bd


    ld hl, sp-$15                                 ; $5fb0: $f8 $eb

jr_038_5fb2:
    dec bc                                        ; $5fb2: $0b
    ld c, e                                       ; $5fb3: $4b
    sbc a                                         ; $5fb4: $9f
    ld b, l                                       ; $5fb5: $45
    dec e                                         ; $5fb6: $1d
    ld l, c                                       ; $5fb7: $69
    ld h, a                                       ; $5fb8: $67
    dec [hl]                                      ; $5fb9: $35
    sub b                                         ; $5fba: $90
    and c                                         ; $5fbb: $a1

Call_038_5fbc:
    add a                                         ; $5fbc: $87
    ld b, d                                       ; $5fbd: $42
    ld l, h                                       ; $5fbe: $6c
    ldh a, [$57]                                  ; $5fbf: $f0 $57

Call_038_5fc1:
    dec e                                         ; $5fc1: $1d
    ld d, d                                       ; $5fc2: $52
    ld [$96d0], a                                 ; $5fc3: $ea $d0 $96
    ld a, [hl-]                                   ; $5fc6: $3a
    sub $5b                                       ; $5fc7: $d6 $5b
    ld h, $c8                                     ; $5fc9: $26 $c8
    daa                                           ; $5fcb: $27
    ld b, $d4                                     ; $5fcc: $06 $d4
    sbc $a0                                       ; $5fce: $de $a0
    inc b                                         ; $5fd0: $04
    ld c, c                                       ; $5fd1: $49
    jp z, Jump_038_6328                           ; $5fd2: $ca $28 $63

    ld [$5622], sp                                ; $5fd5: $08 $22 $56
    ld e, a                                       ; $5fd8: $5f
    jp nc, $accc                                  ; $5fd9: $d2 $cc $ac

    scf                                           ; $5fdc: $37
    db $ed                                        ; $5fdd: $ed
    ret z                                         ; $5fde: $c8

    rst $08                                       ; $5fdf: $cf
    ld e, a                                       ; $5fe0: $5f
    ld c, a                                       ; $5fe1: $4f
    dec [hl]                                      ; $5fe2: $35
    sub b                                         ; $5fe3: $90
    pop hl                                        ; $5fe4: $e1
    ld e, h                                       ; $5fe5: $5c
    db $fd                                        ; $5fe6: $fd
    ld de, $55ab                                  ; $5fe7: $11 $ab $55
    ld h, e                                       ; $5fea: $63
    or c                                          ; $5feb: $b1
    jp $d00c                                      ; $5fec: $c3 $0c $d0


    db $db                                        ; $5fef: $db
    ld [hl], l                                    ; $5ff0: $75
    inc e                                         ; $5ff1: $1c
    ld [$0e69], sp                                ; $5ff2: $08 $69 $0e
    ld c, c                                       ; $5ff5: $49
    xor d                                         ; $5ff6: $aa
    ld l, h                                       ; $5ff7: $6c
    jr nz, jr_038_600e                            ; $5ff8: $20 $14

    db $fd                                        ; $5ffa: $fd
    and h                                         ; $5ffb: $a4
    call nc, $1fc1                                ; $5ffc: $d4 $c1 $1f
    sub h                                         ; $5fff: $94
    xor h                                         ; $6000: $ac
    xor d                                         ; $6001: $aa
    sub l                                         ; $6002: $95
    ldh a, [$87]                                  ; $6003: $f0 $87
    db $fc                                        ; $6005: $fc
    ld a, l                                       ; $6006: $7d
    push hl                                       ; $6007: $e5
    dec a                                         ; $6008: $3d
    scf                                           ; $6009: $37
    ld sp, hl                                     ; $600a: $f9
    adc e                                         ; $600b: $8b
    adc h                                         ; $600c: $8c
    jp hl                                         ; $600d: $e9


jr_038_600e:
    xor b                                         ; $600e: $a8
    dec bc                                        ; $600f: $0b
    ret nz                                        ; $6010: $c0

    ld [hl-], a                                   ; $6011: $32
    and h                                         ; $6012: $a4
    adc h                                         ; $6013: $8c
    ld a, [hl]                                    ; $6014: $7e
    dec a                                         ; $6015: $3d
    push de                                       ; $6016: $d5
    ld b, b                                       ; $6017: $40
    add [hl]                                      ; $6018: $86
    ld [c], a                                     ; $6019: $e2
    ld b, l                                       ; $601a: $45
    ld e, h                                       ; $601b: $5c
    ld [bc], a                                    ; $601c: $02
    adc l                                         ; $601d: $8d
    xor l                                         ; $601e: $ad
    halt                                          ; $601f: $76
    ld l, h                                       ; $6020: $6c
    add a                                         ; $6021: $87
    add hl, de                                    ; $6022: $19
    and b                                         ; $6023: $a0
    ld h, h                                       ; $6024: $64
    dec h                                         ; $6025: $25
    inc h                                         ; $6026: $24
    ld a, [hl]                                    ; $6027: $7e
    dec de                                        ; $6028: $1b
    sub d                                         ; $6029: $92
    inc bc                                        ; $602a: $03
    or e                                          ; $602b: $b3
    ld a, [de]                                    ; $602c: $1a
    ret z                                         ; $602d: $c8

    ret nc                                        ; $602e: $d0

    inc l                                         ; $602f: $2c
    ld e, b                                       ; $6030: $58
    xor b                                         ; $6031: $a8
    or c                                          ; $6032: $b1
    db $e3                                        ; $6033: $e3
    ld c, d                                       ; $6034: $4a
    ld h, [hl]                                    ; $6035: $66
    add hl, de                                    ; $6036: $19
    jp nc, $b1e1                                  ; $6037: $d2 $e1 $b1

    sbc $32                                       ; $603a: $de $32
    ld b, c                                       ; $603c: $41
    ld a, $31                                     ; $603d: $3e $31
    and b                                         ; $603f: $a0
    or $06                                        ; $6040: $f6 $06
    dec h                                         ; $6042: $25
    ld c, b                                       ; $6043: $48
    ld d, d                                       ; $6044: $52
    ld b, [hl]                                    ; $6045: $46
    add hl, de                                    ; $6046: $19
    ld b, e                                       ; $6047: $43
    db $10                                        ; $6048: $10
    or c                                          ; $6049: $b1
    ld a, [$b492]                                 ; $604a: $fa $92 $b4
    or e                                          ; $604d: $b3
    xor e                                         ; $604e: $ab
    db $ed                                        ; $604f: $ed
    ld h, a                                       ; $6050: $67
    dec l                                         ; $6051: $2d
    db $fd                                        ; $6052: $fd
    ld l, h                                       ; $6053: $6c
    ld h, e                                       ; $6054: $63
    xor e                                         ; $6055: $ab
    dec e                                         ; $6056: $1d
    db $db                                        ; $6057: $db
    ld h, c                                       ; $6058: $61
    ld b, $18                                     ; $6059: $06 $18
    sub d                                         ; $605b: $92
    inc bc                                        ; $605c: $03
    and e                                         ; $605d: $a3
    add e                                         ; $605e: $83
    jp nc, $90ea                                  ; $605f: $d2 $ea $90

    xor $c5                                       ; $6062: $ee $c5
    ld e, a                                       ; $6064: $5f
    rst $28                                       ; $6065: $ef

jr_038_6066:
    rra                                           ; $6066: $1f
    sbc e                                         ; $6067: $9b
    sbc c                                         ; $6068: $99
    push af                                       ; $6069: $f5
    sbc [hl]                                      ; $606a: $9e
    bit 7, d                                      ; $606b: $cb $7a
    ldh a, [$92]                                  ; $606d: $f0 $92
    ld b, $7f                                     ; $606f: $06 $7f
    call $d2fc                                    ; $6071: $cd $fc $d2
    ld c, $a5                                     ; $6074: $0e $a5
    call nc, $f265                                ; $6076: $d4 $65 $f2
    ld b, a                                       ; $6079: $47
    and d                                         ; $607a: $a2
    sub [hl]                                      ; $607b: $96
    ld c, $5e                                     ; $607c: $0e $5e
    db $db                                        ; $607e: $db
    db $e4                                        ; $607f: $e4
    dec hl                                        ; $6080: $2b
    cp e                                          ; $6081: $bb
    ld a, a                                       ; $6082: $7f
    ld bc, $fe2c                                  ; $6083: $01 $2c $fe
    db $e3                                        ; $6086: $e3
    jr nc, jr_038_6066                            ; $6087: $30 $dd

    ld c, $0b                                     ; $6089: $0e $0b
    xor d                                         ; $608b: $aa
    ld l, a                                       ; $608c: $6f
    ld e, a                                       ; $608d: $5f
    ret nz                                        ; $608e: $c0

    db $db                                        ; $608f: $db
    pop bc                                        ; $6090: $c1
    ld l, e                                       ; $6091: $6b
    bit 3, d                                      ; $6092: $cb $5a
    ld c, b                                       ; $6094: $48
    rst $28                                       ; $6095: $ef
    nop                                           ; $6096: $00
    ld l, a                                       ; $6097: $6f
    sub e                                         ; $6098: $93
    ld a, l                                       ; $6099: $7d
    cp d                                          ; $609a: $ba
    or a                                          ; $609b: $b7
    ld l, d                                       ; $609c: $6a
    ld [hl], l                                    ; $609d: $75
    ld c, a                                       ; $609e: $4f
    ld hl, sp-$76                                 ; $609f: $f8 $8a
    or l                                          ; $60a1: $b5
    ld e, b                                       ; $60a2: $58
    ld [hl], $ed                                  ; $60a3: $36 $ed
    adc b                                         ; $60a5: $88
    cp a                                          ; $60a6: $bf
    adc e                                         ; $60a7: $8b
    ld d, b                                       ; $60a8: $50
    db $ed                                        ; $60a9: $ed
    ld e, b                                       ; $60aa: $58
    ld [hl], a                                    ; $60ab: $77
    call nz, $f017                                ; $60ac: $c4 $17 $f0
    ld [hl], $b6                                  ; $60af: $36 $b6
    ld a, [hl-]                                   ; $60b1: $3a
    adc h                                         ; $60b2: $8c
    sbc $0e                                       ; $60b3: $de $0e
    and l                                         ; $60b5: $a5
    xor h                                         ; $60b6: $ac
    or a                                          ; $60b7: $b7
    ld e, a                                       ; $60b8: $5f
    ld de, $efac                                  ; $60b9: $11 $ac $ef
    rst $38                                       ; $60bc: $ff
    adc c                                         ; $60bd: $89
    scf                                           ; $60be: $37
    ld l, l                                       ; $60bf: $6d
    sub e                                         ; $60c0: $93
    ld a, $76                                     ; $60c1: $3e $76
    sub [hl]                                      ; $60c3: $96
    adc e                                         ; $60c4: $8b
    add $d5                                       ; $60c5: $c6 $d5
    ld h, c                                       ; $60c7: $61
    ld [c], a                                     ; $60c8: $e2
    pop bc                                        ; $60c9: $c1
    ret nz                                        ; $60ca: $c0

    add d                                         ; $60cb: $82
    inc h                                         ; $60cc: $24
    ld h, [hl]                                    ; $60cd: $66
    ld [$aad5], sp                                ; $60ce: $08 $d5 $aa
    ld b, a                                       ; $60d1: $47
    ld b, b                                       ; $60d2: $40
    ld [hl], l                                    ; $60d3: $75
    ld c, b                                       ; $60d4: $48
    ld b, l                                       ; $60d5: $45
    dec e                                         ; $60d6: $1d
    rst $20                                       ; $60d7: $e7
    ld a, [hl]                                    ; $60d8: $7e
    sub $52                                       ; $60d9: $d6 $52
    db $fd                                        ; $60db: $fd
    or c                                          ; $60dc: $b1
    or e                                          ; $60dd: $b3
    ld e, h                                       ; $60de: $5c
    inc [hl]                                      ; $60df: $34
    xor [hl]                                      ; $60e0: $ae
    adc [hl]                                      ; $60e1: $8e
    db $fc                                        ; $60e2: $fc
    ld e, c                                       ; $60e3: $59
    sbc h                                         ; $60e4: $9c
    xor e                                         ; $60e5: $ab
    dec e                                         ; $60e6: $1d
    db $db                                        ; $60e7: $db
    db $e4                                        ; $60e8: $e4
    xor a                                         ; $60e9: $af
    ld b, $e0                                     ; $60ea: $06 $e0
    ld d, e                                       ; $60ec: $53
    ld d, [hl]                                    ; $60ed: $56
    dec e                                         ; $60ee: $1d
    rst $20                                       ; $60ef: $e7
    sbc $fe                                       ; $60f0: $de $fe
    ld l, $42                                     ; $60f2: $2e $42
    or l                                          ; $60f4: $b5
    ld [$7f06], a                                 ; $60f5: $ea $06 $7f
    ret nc                                        ; $60f8: $d0

    inc hl                                        ; $60f9: $23
    ld h, b                                       ; $60fa: $60
    db $fd                                        ; $60fb: $fd
    ld c, $ef                                     ; $60fc: $0e $ef

jr_038_60fe:
    cp c                                          ; $60fe: $b9
    add $06                                       ; $60ff: $c6 $06
    ld b, d                                       ; $6101: $42
    ret                                           ; $6102: $c9


    xor d                                         ; $6103: $aa
    sbc c                                         ; $6104: $99
    ld e, h                                       ; $6105: $5c
    db $e3                                        ; $6106: $e3
    and h                                         ; $6107: $a4
    ld c, l                                       ; $6108: $4d
    ld [hl-], a                                   ; $6109: $32
    cp [hl]                                       ; $610a: $be
    ld c, a                                       ; $610b: $4f
    reti                                          ; $610c: $d9


    jp nc, $0670                                  ; $610d: $d2 $70 $06

    dec [hl]                                      ; $6110: $35
    ld [hl], $b6                                  ; $6111: $36 $b6
    ret                                           ; $6113: $c9


    ld d, a                                       ; $6114: $57
    halt                                          ; $6115: $76
    rst $38                                       ; $6116: $ff
    ld [bc], a                                    ; $6117: $02
    ld a, b                                       ; $6118: $78
    xor $ed                                       ; $6119: $ee $ed
    rst $28                                       ; $611b: $ef

jr_038_611c:
    ld [hl+], a                                   ; $611c: $22
    call nc, Call_000_1d58                        ; $611d: $d4 $58 $1d
    jp nc, Jump_038_5acf                          ; $6120: $d2 $cf $5a

    ld a, [bc]                                    ; $6123: $0a
    ld [hl], d                                    ; $6124: $72
    ld bc, $fb59                                  ; $6125: $01 $59 $fb
    jr z, jr_038_611c                             ; $6128: $28 $f2

    ld [hl], a                                    ; $612a: $77
    ld l, l                                       ; $612b: $6d
    rst $38                                       ; $612c: $ff
    ld h, [hl]                                    ; $612d: $66
    adc d                                         ; $612e: $8a
    rst $18                                       ; $612f: $df
    cp h                                          ; $6130: $bc
    ld l, c                                       ; $6131: $69
    ld b, a                                       ; $6132: $47
    db $fc                                        ; $6133: $fc
    ld e, l                                       ; $6134: $5d
    add h                                         ; $6135: $84
    ld l, d                                       ; $6136: $6a
    rst $00                                       ; $6137: $c7
    cp d                                          ; $6138: $ba
    inc hl                                        ; $6139: $23
    cp [hl]                                       ; $613a: $be
    add b                                         ; $613b: $80
    or a                                          ; $613c: $b7
    sbc a                                         ; $613d: $9f
    ld d, d                                       ; $613e: $52
    adc e                                         ; $613f: $8b
    adc [hl]                                      ; $6140: $8e
    call Call_038_7bb0                            ; $6141: $cd $b0 $7b
    pop af                                        ; $6144: $f1
    rst $10                                       ; $6145: $d7
    dec c                                         ; $6146: $0d
    cp $a0                                        ; $6147: $fe $a0
    ld [c], a                                     ; $6149: $e2
    ld e, b                                       ; $614a: $58
    ld d, b                                       ; $614b: $50
    sbc e                                         ; $614c: $9b
    and $27                                       ; $614d: $e6 $27
    ld a, h                                       ; $614f: $7c
    push bc                                       ; $6150: $c5
    ld e, d                                       ; $6151: $5a
    ld b, b                                       ; $6152: $40
    cp $de                                        ; $6153: $fe $de
    ld l, d                                       ; $6155: $6a
    ld b, c                                       ; $6156: $41
    jr nc, jr_038_60fe                            ; $6157: $30 $a5

    sbc $1c                                       ; $6159: $de $1c
    adc h                                         ; $615b: $8c
    ld e, [hl]                                    ; $615c: $5e
    and e                                         ; $615d: $a3
    jp c, $072c                                   ; $615e: $da $2c $07

    daa                                           ; $6161: $27
    or c                                          ; $6162: $b1
    and [hl]                                      ; $6163: $a6
    scf                                           ; $6164: $37
    rlca                                          ; $6165: $07
    db $e4                                        ; $6166: $e4
    ld [hl], e                                    ; $6167: $73
    add hl, sp                                    ; $6168: $39
    di                                            ; $6169: $f3
    ld e, d                                       ; $616a: $5a
    ld a, $c4                                     ; $616b: $3e $c4
    or l                                          ; $616d: $b5
    add hl, sp                                    ; $616e: $39
    inc hl                                        ; $616f: $23
    add sp, $07                                   ; $6170: $e8 $07
    db $e4                                        ; $6172: $e4
    rst $08                                       ; $6173: $cf
    ld [hl-], a                                   ; $6174: $32
    pop af                                        ; $6175: $f1
    ld e, h                                       ; $6176: $5c
    adc $bc                                       ; $6177: $ce $bc
    add hl, sp                                    ; $6179: $39
    ld c, h                                       ; $617a: $4c
    cp $f6                                        ; $617b: $fe $f6
    inc bc                                        ; $617d: $03
    ld a, c                                       ; $617e: $79
    ld [c], a                                     ; $617f: $e2
    and c                                         ; $6180: $a1
    sbc e                                         ; $6181: $9b
    ld c, c                                       ; $6182: $49
    db $10                                        ; $6183: $10
    ld b, h                                       ; $6184: $44
    ld c, $4c                                     ; $6185: $0e $4c
    cp $f6                                        ; $6187: $fe $f6
    inc bc                                        ; $6189: $03
    ld a, c                                       ; $618a: $79
    ld [c], a                                     ; $618b: $e2
    ld e, c                                       ; $618c: $59
    xor b                                         ; $618d: $a8
    jp z, $f372                                   ; $618e: $ca $72 $f3

    ld e, d                                       ; $6191: $5a
    ret z                                         ; $6192: $c8

    ld e, a                                       ; $6193: $5f
    or c                                          ; $6194: $b1
    ld d, $b0                                     ; $6195: $16 $b0
    ld [hl], h                                    ; $6197: $74
    ld [hl], $f3                                  ; $6198: $36 $f3
    sbc e                                         ; $619a: $9b
    add l                                         ; $619b: $85
    dec c                                         ; $619c: $0d
    ld b, h                                       ; $619d: $44
    ld l, a                                       ; $619e: $6f
    ld c, $c3                                     ; $619f: $0e $c3
    add l                                         ; $61a1: $85
    ld hl, sp+$4f                                 ; $61a2: $f8 $4f
    call nc, $c866                                ; $61a4: $d4 $66 $c8
    ld e, [hl]                                    ; $61a7: $5e
    xor e                                         ; $61a8: $ab
    jr nc, jr_038_61b2                            ; $61a9: $30 $07

    adc h                                         ; $61ab: $8c
    ld b, c                                       ; $61ac: $41
    ret nz                                        ; $61ad: $c0

    call nz, $d943                                ; $61ae: $c4 $43 $d9
    cp e                                          ; $61b1: $bb

jr_038_61b2:
    inc bc                                        ; $61b2: $03
    dec l                                         ; $61b3: $2d
    add hl, sp                                    ; $61b4: $39
    or e                                          ; $61b5: $b3
    ld d, b                                       ; $61b6: $50
    push bc                                       ; $61b7: $c5
    ld e, a                                       ; $61b8: $5f
    rlca                                          ; $61b9: $07
    dec l                                         ; $61ba: $2d
    jr nz, jr_038_61cb                            ; $61bb: $20 $0e

    sub $9b                                       ; $61bd: $d6 $9b
    inc bc                                        ; $61bf: $03
    ld c, h                                       ; $61c0: $4c
    cp $14                                        ; $61c1: $fe $14
    sub b                                         ; $61c3: $90

jr_038_61c4:
    ld [hl], e                                    ; $61c4: $73
    ld c, h                                       ; $61c5: $4c
    cp $be                                        ; $61c6: $fe $be
    or $22                                        ; $61c8: $f6 $22
    db $eb                                        ; $61ca: $eb

jr_038_61cb:
    ld c, h                                       ; $61cb: $4c
    cp h                                          ; $61cc: $bc
    ld h, h                                       ; $61cd: $64
    or l                                          ; $61ce: $b5
    ld e, c                                       ; $61cf: $59
    ld c, $4c                                     ; $61d0: $0e $4c

Jump_038_61d2:
    ld c, b                                       ; $61d2: $48
    sub h                                         ; $61d3: $94
    sbc e                                         ; $61d4: $9b
    ld [hl], e                                    ; $61d5: $73
    ld c, c                                       ; $61d6: $49
    rst $10                                       ; $61d7: $d7
    ret nz                                        ; $61d8: $c0

    add b                                         ; $61d9: $80
    ld l, c                                       ; $61da: $69

Jump_038_61db:
    sub [hl]                                      ; $61db: $96
    cp b                                          ; $61dc: $b8
    sbc c                                         ; $61dd: $99
    dec h                                         ; $61de: $25
    rlca                                          ; $61df: $07
    or e                                          ; $61e0: $b3
    jr z, jr_038_61c4                             ; $61e1: $28 $e1

    rrca                                          ; $61e3: $0f
    inc l                                         ; $61e4: $2c
    inc de                                        ; $61e5: $13
    adc e                                         ; $61e6: $8b
    inc sp                                        ; $61e7: $33
    xor a                                         ; $61e8: $af
    halt                                          ; $61e9: $76
    sbc c                                         ; $61ea: $99
    sub b                                         ; $61eb: $90
    jr z, @+$39                                   ; $61ec: $28 $37

    rst $20                                       ; $61ee: $e7
    ld c, h                                       ; $61ef: $4c
    cp $e8                                        ; $61f0: $fe $e8
    daa                                           ; $61f2: $27
    ld [hl], d                                    ; $61f3: $72
    adc h                                         ; $61f4: $8c
    adc $bc                                       ; $61f5: $ce $bc
    ld [$757f], sp                                ; $61f7: $08 $7f $75
    rst $28                                       ; $61fa: $ef
    ld hl, $64ba                                  ; $61fb: $21 $ba $64
    dec h                                         ; $61fe: $25
    sbc l                                         ; $61ff: $9d
    push bc                                       ; $6200: $c5
    jp c, Jump_000_0392                           ; $6201: $da $92 $03

    jp $8de5                                      ; $6204: $c3 $e5 $8d


    db $fd                                        ; $6207: $fd
    ret nz                                        ; $6208: $c0

    dec e                                         ; $6209: $1d
    ld sp, hl                                     ; $620a: $f9
    or e                                          ; $620b: $b3
    ld [hl], b                                    ; $620c: $70
    ld c, $8c                                     ; $620d: $0e $8c
    ld b, c                                       ; $620f: $41
    ret nz                                        ; $6210: $c0

    call nz, $c709                                ; $6211: $c4 $09 $c7
    and c                                         ; $6214: $a1
    ld [hl], $20                                  ; $6215: $36 $20
    ld de, $4972                                  ; $6217: $11 $72 $49
    ld [hl], d                                    ; $621a: $72
    cp l                                          ; $621b: $bd
    ld [hl], l                                    ; $621c: $75
    ld c, $43                                     ; $621d: $0e $43
    ld e, c                                       ; $621f: $59
    ld [$a9bd], a                                 ; $6220: $ea $bd $a9
    call Call_038_4c72                            ; $6223: $cd $72 $4c
    cp $e8                                        ; $6226: $fe $e8
    daa                                           ; $6228: $27
    ld l, b                                       ; $6229: $68
    ld e, b                                       ; $622a: $58
    rst $20                                       ; $622b: $e7
    ld c, h                                       ; $622c: $4c
    adc b                                         ; $622d: $88
    cp l                                          ; $622e: $bd
    db $dd                                        ; $622f: $dd
    db $e4                                        ; $6230: $e4
    dec hl                                        ; $6231: $2b
    ret z                                         ; $6232: $c8

    ld bc, $5af3                                  ; $6233: $01 $f3 $5a
    add sp, -$21                                  ; $6236: $e8 $df
    inc c                                         ; $6238: $0c
    rst $38                                       ; $6239: $ff
    and c                                         ; $623a: $a1
    ld [hl], $cb                                  ; $623b: $36 $cb
    ld bc, $4b73                                  ; $623d: $01 $73 $4b
    ld h, d                                       ; $6240: $62
    or $1c                                        ; $6241: $f6 $1c
    sub b                                         ; $6243: $90
    inc bc                                        ; $6244: $03
    ld c, h                                       ; $6245: $4c
    ld d, b                                       ; $6246: $50
    ld [hl], d                                    ; $6247: $72
    db $e4                                        ; $6248: $e4
    di                                            ; $6249: $f3
    ld e, d                                       ; $624a: $5a
    xor $7f                                       ; $624b: $ee $7f
    or l                                          ; $624d: $b5
    add hl, hl                                    ; $624e: $29
    ld e, b                                       ; $624f: $58
    jp z, Jump_038_6ce8                           ; $6250: $ca $e8 $6c

    dec l                                         ; $6253: $2d
    add hl, sp                                    ; $6254: $39
    di                                            ; $6255: $f3
    ld e, d                                       ; $6256: $5a
    db $f4                                        ; $6257: $f4
    dec [hl]                                      ; $6258: $35
    jr nc, jr_038_629b                            ; $6259: $30 $40

    push de                                       ; $625b: $d5
    ld h, [hl]                                    ; $625c: $66
    ld c, l                                       ; $625d: $4d
    ld a, [de]                                    ; $625e: $1a
    sub l                                         ; $625f: $95
    inc bc                                        ; $6260: $03
    or e                                          ; $6261: $b3
    ld e, e                                       ; $6262: $5b
    add c                                         ; $6263: $81
    ld a, h                                       ; $6264: $7c
    ld a, [de]                                    ; $6265: $1a
    jr jr_038_627e                                ; $6266: $18 $16

    or l                                          ; $6268: $b5
    ld e, c                                       ; $6269: $59
    ld c, $cc                                     ; $626a: $0e $cc
    ldh [$37], a                                  ; $626c: $e0 $37
    db $d3                                        ; $626e: $d3
    adc c                                         ; $626f: $89
    sbc c                                         ; $6270: $99
    adc d                                         ; $6271: $8a
    ccf                                           ; $6272: $3f
    rst $20                                       ; $6273: $e7
    ld c, c                                       ; $6274: $49
    jp z, $ba94                                   ; $6275: $ca $94 $ba

    ld e, a                                       ; $6278: $5f
    ld hl, $cfc8                                  ; $6279: $21 $c8 $cf
    cp h                                          ; $627c: $bc
    add hl, sp                                    ; $627d: $39

jr_038_627e:
    di                                            ; $627e: $f3
    ld e, d                                       ; $627f: $5a
    db $e4                                        ; $6280: $e4
    ld b, e                                       ; $6281: $43
    rlca                                          ; $6282: $07
    inc l                                         ; $6283: $2c
    sbc l                                         ; $6284: $9d
    db $db                                        ; $6285: $db
    call nc, $fc99                                ; $6286: $d4 $99 $fc
    db $e3                                        ; $6289: $e3
    ret z                                         ; $628a: $c8

    ld bc, $fe4c                                  ; $628b: $01 $4c $fe
    xor $9f                                       ; $628e: $ee $9f
    cp a                                          ; $6290: $bf
    ld bc, $37b5                                  ; $6291: $01 $b5 $37

Jump_038_6294:
    ret z                                         ; $6294: $c8

    ld bc, $7f23                                  ; $6295: $01 $23 $7f
    ld d, $ee                                     ; $6298: $16 $ee
    ld d, a                                       ; $629a: $57

jr_038_629b:
    inc b                                         ; $629b: $04
    db $fd                                        ; $629c: $fd
    jp c, Jump_000_039b                           ; $629d: $da $9b $03

    inc hl                                        ; $62a0: $23
    ld a, a                                       ; $62a1: $7f
    ld d, $9e                                     ; $62a2: $16 $9e
    ld a, b                                       ; $62a4: $78
    jr z, jr_038_6322                             ; $62a5: $28 $7b

    ld [hl], a                                    ; $62a7: $77
    and b                                         ; $62a8: $a0
    dec h                                         ; $62a9: $25
    rlca                                          ; $62aa: $07
    inc hl                                        ; $62ab: $23
    db $e4                                        ; $62ac: $e4
    inc de                                        ; $62ad: $13
    ret nc                                        ; $62ae: $d0

    xor a                                         ; $62af: $af
    ld [$b5fa], sp                                ; $62b0: $08 $fa $b5
    scf                                           ; $62b3: $37
    rlca                                          ; $62b4: $07
    ld c, h                                       ; $62b5: $4c
    cp $42                                        ; $62b6: $fe $42
    adc [hl]                                      ; $62b8: $8e
    inc e                                         ; $62b9: $1c
    adc h                                         ; $62ba: $8c
    and [hl]                                      ; $62bb: $a6
    ld a, [hl]                                    ; $62bc: $7e
    ld [bc], a                                    ; $62bd: $02
    rst $08                                       ; $62be: $cf
    ld bc, $c939                                  ; $62bf: $01 $39 $c9
    ld c, $ea                                     ; $62c2: $0e $ea
    push de                                       ; $62c4: $d5
    sub [hl]                                      ; $62c5: $96
    ld c, $dd                                     ; $62c6: $0e $dd
    ld c, h                                       ; $62c8: $4c
    add d                                         ; $62c9: $82
    jr nz, jr_038_633e                            ; $62ca: $20 $72

    or e                                          ; $62cc: $b3
    ld a, c                                       ; $62cd: $79
    ret nc                                        ; $62ce: $d0

    ld [hl], h                                    ; $62cf: $74
    ld h, d                                       ; $62d0: $62
    and $80                                       ; $62d1: $e6 $80
    xor b                                         ; $62d3: $a8
    call Call_038_4372                            ; $62d4: $cd $72 $43
    rla                                           ; $62d7: $17
    ld hl, $359c                                  ; $62d8: $21 $9c $35
    ld l, c                                       ; $62db: $69
    ld d, h                                       ; $62dc: $54
    ld c, $43                                     ; $62dd: $0e $43
    rla                                           ; $62df: $17
    ld hl, $759c                                  ; $62e0: $21 $9c $75
    db $e4                                        ; $62e3: $e4
    xor b                                         ; $62e4: $a8
    inc e                                         ; $62e5: $1c
    di                                            ; $62e6: $f3
    ld e, d                                       ; $62e7: $5a
    xor b                                         ; $62e8: $a8
    ld b, d                                       ; $62e9: $42
    add sp, -$38                                  ; $62ea: $e8 $c8
    ld d, c                                       ; $62ec: $51
    add hl, sp                                    ; $62ed: $39
    inc hl                                        ; $62ee: $23
    rst $38                                       ; $62ef: $ff
    jp hl                                         ; $62f0: $e9


    ld [hl], c                                    ; $62f1: $71
    ld a, h                                       ; $62f2: $7c
    ld l, d                                       ; $62f3: $6a
    jp hl                                         ; $62f4: $e9


    ret nc                                        ; $62f5: $d0

    ld b, l                                       ; $62f6: $45
    ld [$3967], sp                                ; $62f7: $08 $67 $39
    inc hl                                        ; $62fa: $23
    ld a, a                                       ; $62fb: $7f
    ld d, $9e                                     ; $62fc: $16 $9e
    jr c, @-$1d                                   ; $62fe: $38 $e1

    jr c, @-$2a                                   ; $6300: $38 $d4

    ld b, $24                                     ; $6302: $06 $24
    ld b, d                                       ; $6304: $42
    ld c, $09                                     ; $6305: $0e $09
    rst $00                                       ; $6307: $c7
    and c                                         ; $6308: $a1
    ld [hl], $20                                  ; $6309: $36 $20
    ld de, $c372                                  ; $630b: $11 $72 $c3
    dec b                                         ; $630e: $05
    ld sp, hl                                     ; $630f: $f9
    dec de                                        ; $6310: $1b
    ld a, e                                       ; $6311: $7b
    add b                                         ; $6312: $80
    ld d, b                                       ; $6313: $50
    sbc e                                         ; $6314: $9b
    push hl                                       ; $6315: $e5
    inc hl                                        ; $6316: $23
    sbc l                                         ; $6317: $9d
    db $fd                                        ; $6318: $fd
    adc c                                         ; $6319: $89
    ld c, a                                       ; $631a: $4f
    ld hl, sp-$76                                 ; $631b: $f8 $8a
    or l                                          ; $631d: $b5
    call c, Call_000_13e4                         ; $631e: $dc $e4 $13
    sub b                                         ; $6321: $90

jr_038_6322:
    inc bc                                        ; $6322: $03
    ret                                           ; $6323: $c9


    sub [hl]                                      ; $6324: $96
    dec hl                                        ; $6325: $2b
    sub b                                         ; $6326: $90
    ccf                                           ; $6327: $3f

Jump_038_6328:
    sub a                                         ; $6328: $97
    add hl, bc                                    ; $6329: $09
    adc c                                         ; $632a: $89
    ld [hl], d                                    ; $632b: $72
    ld [hl], e                                    ; $632c: $73
    ld c, $23                                     ; $632d: $0e $23
    xor [hl]                                      ; $632f: $ae
    ld h, e                                       ; $6330: $63
    add b                                         ; $6331: $80
    ld a, [de]                                    ; $6332: $1a
    ret nz                                        ; $6333: $c0

    dec e                                         ; $6334: $1d
    ld sp, hl                                     ; $6335: $f9
    or e                                          ; $6336: $b3
    ld [hl], b                                    ; $6337: $70
    ld c, $23                                     ; $6338: $0e $23
    inc bc                                        ; $633a: $03
    xor d                                         ; $633b: $aa
    cp l                                          ; $633c: $bd
    dec e                                         ; $633d: $1d

jr_038_633e:
    pop af                                        ; $633e: $f1
    dec b                                         ; $633f: $05
    cp h                                          ; $6340: $bc
    cp l                                          ; $6341: $bd
    dec hl                                        ; $6342: $2b
    pop de                                        ; $6343: $d1
    xor [hl]                                      ; $6344: $ae
    ld h, e                                       ; $6345: $63
    res 3, d                                      ; $6346: $cb $9a
    add [hl]                                      ; $6348: $86
    reti                                          ; $6349: $d9


    ret z                                         ; $634a: $c8

    inc l                                         ; $634b: $2c
    dec a                                         ; $634c: $3d
    pop hl                                        ; $634d: $e1
    dec hl                                        ; $634e: $2b
    sub $02                                       ; $634f: $d6 $02
    ld a, [c]                                     ; $6351: $f2
    rst $30                                       ; $6352: $f7
    ld d, [hl]                                    ; $6353: $56
    dec bc                                        ; $6354: $0b
    add d                                         ; $6355: $82
    add hl, hl                                    ; $6356: $29
    add l                                         ; $6357: $85
    ld hl, $4939                                  ; $6358: $21 $39 $49
    pop hl                                        ; $635b: $e1
    adc [hl]                                      ; $635c: $8e
    ld hl, sp+$02                                 ; $635d: $f8 $02
    sbc $be                                       ; $635f: $de $be
    rst $08                                       ; $6361: $cf
    ld a, d                                       ; $6362: $7a
    set 7, d                                      ; $6363: $cb $fa
    ld e, $72                                     ; $6365: $1e $72
    add e                                         ; $6367: $83
    ld [hl], e                                    ; $6368: $73
    push af                                       ; $6369: $f5
    ld b, a                                       ; $636a: $47
    xor h                                         ; $636b: $ac
    halt                                          ; $636c: $76
    xor h                                         ; $636d: $ac
    sbc e                                         ; $636e: $9b
    inc [hl]                                      ; $636f: $34
    xor d                                         ; $6370: $aa
    adc [hl]                                      ; $6371: $8e
    db $ed                                        ; $6372: $ed
    db $dd                                        ; $6373: $dd
    dec de                                        ; $6374: $1b
    ld e, c                                       ; $6375: $59
    cp a                                          ; $6376: $bf
    ld [hl+], a                                   ; $6377: $22
    ld [hl-], a                                   ; $6378: $32
    db $d3                                        ; $6379: $d3
    xor a                                         ; $637a: $af
    cp l                                          ; $637b: $bd
    cp l                                          ; $637c: $bd
    dec hl                                        ; $637d: $2b
    pop de                                        ; $637e: $d1
    sbc $34                                       ; $637f: $de $34
    rlca                                          ; $6381: $07
    ld c, c                                       ; $6382: $49
    pop hl                                        ; $6383: $e1
    adc [hl]                                      ; $6384: $8e
    ld hl, sp+$02                                 ; $6385: $f8 $02
    sbc $de                                       ; $6387: $de $de
    cp a                                          ; $6389: $bf
    ld a, b                                       ; $638a: $78
    xor e                                         ; $638b: $ab
    jp $ec68                                      ; $638c: $c3 $68 $ec


    ret z                                         ; $638f: $c8

    ld c, a                                       ; $6390: $4f
    cp e                                          ; $6391: $bb
    pop bc                                        ; $6392: $c1
    rra                                           ; $6393: $1f
    sub h                                         ; $6394: $94
    dec [hl]                                      ; $6395: $35
    ld e, [hl]                                    ; $6396: $5e
    xor e                                         ; $6397: $ab
    dec l                                         ; $6398: $2d
    ret c                                         ; $6399: $d8

    rla                                           ; $639a: $17

Jump_038_639b:
    sub h                                         ; $639b: $94
    db $10                                        ; $639c: $10
    rlca                                          ; $639d: $07
    ld a, a                                       ; $639e: $7f
    ld l, c                                       ; $639f: $69
    inc de                                        ; $63a0: $13
    or [hl]                                       ; $63a1: $b6
    jp c, $3eb1                                   ; $63a2: $da $b1 $3e

    ld a, [hl-]                                   ; $63a5: $3a
    db $ec                                        ; $63a6: $ec
    dec hl                                        ; $63a7: $2b
    cp $2a                                        ; $63a8: $fe $2a
    ld [$04b8], a                                 ; $63aa: $ea $b8 $04
    ld l, d                                       ; $63ad: $6a
    inc a                                         ; $63ae: $3c
    ld d, a                                       ; $63af: $57
    add a                                         ; $63b0: $87
    inc [hl]                                      ; $63b1: $34
    db $10                                        ; $63b2: $10
    adc d                                         ; $63b3: $8a
    db $fc                                        ; $63b4: $fc
    db $dd                                        ; $63b5: $dd
    ld h, e                                       ; $63b6: $63
    or l                                          ; $63b7: $b5
    ld l, c                                       ; $63b8: $69
    ld h, h                                       ; $63b9: $64
    ld d, l                                       ; $63ba: $55
    xor e                                         ; $63bb: $ab
    xor e                                         ; $63bc: $ab
    ld d, l                                       ; $63bd: $55
    add hl, bc                                    ; $63be: $09
    jp nc, Jump_000_08a3                          ; $63bf: $d2 $a3 $08

    push de                                       ; $63c2: $d5
    pop bc                                        ; $63c3: $c1
    ld e, a                                       ; $63c4: $5f
    sub c                                         ; $63c5: $91
    cp a                                          ; $63c6: $bf
    ei                                            ; $63c7: $fb
    rst $20                                       ; $63c8: $e7

jr_038_63c9:
    cpl                                           ; $63c9: $2f
    db $ed                                        ; $63ca: $ed
    ld [hl], b                                    ; $63cb: $70
    inc l                                         ; $63cc: $2c
    ld a, [c]                                     ; $63cd: $f2
    rst $20                                       ; $63ce: $e7
    ld e, b                                       ; $63cf: $58
    jr c, jr_038_63c9                             ; $63d0: $38 $f7

    ld d, e                                       ; $63d2: $53
    db $ec                                        ; $63d3: $ec
    ld c, e                                       ; $63d4: $4b
    inc b                                         ; $63d5: $04
    jr nc, jr_038_641a                            ; $63d6: $30 $42

    or l                                          ; $63d8: $b5
    xor d                                         ; $63d9: $aa
    ld h, e                                       ; $63da: $63
    dec sp                                        ; $63db: $3b
    ldh a, [$bf]                                  ; $63dc: $f0 $bf
    inc [hl]                                      ; $63de: $34
    ld l, c                                       ; $63df: $69
    ld d, h                                       ; $63e0: $54
    rlca                                          ; $63e1: $07
    dec l                                         ; $63e2: $2d
    db $f4                                        ; $63e3: $f4
    ld [de], a                                    ; $63e4: $12
    ld l, a                                       ; $63e5: $6f
    sbc d                                         ; $63e6: $9a
    inc bc                                        ; $63e7: $03
    ld c, c                                       ; $63e8: $49
    pop hl                                        ; $63e9: $e1
    adc [hl]                                      ; $63ea: $8e
    ld hl, sp+$02                                 ; $63eb: $f8 $02
    sbc $be                                       ; $63ed: $de $be
    rst $08                                       ; $63ef: $cf
    ld a, d                                       ; $63f0: $7a
    set 7, d                                      ; $63f1: $cb $fa
    ld e, $72                                     ; $63f3: $1e $72
    add e                                         ; $63f5: $83
    ld [hl], e                                    ; $63f6: $73
    push af                                       ; $63f7: $f5
    ld b, a                                       ; $63f8: $47
    xor h                                         ; $63f9: $ac
    halt                                          ; $63fa: $76
    xor h                                         ; $63fb: $ac
    sbc e                                         ; $63fc: $9b
    inc [hl]                                      ; $63fd: $34
    xor d                                         ; $63fe: $aa
    ld a, a                                       ; $63ff: $7f
    inc sp                                        ; $6400: $33
    inc hl                                        ; $6401: $23
    add h                                         ; $6402: $84
    inc sp                                        ; $6403: $33
    ld l, a                                       ; $6404: $6f
    ld sp, $a756                                  ; $6405: $31 $56 $a7
    ld c, l                                       ; $6408: $4d
    ld d, d                                       ; $6409: $52
    cp l                                          ; $640a: $bd
    db $fd                                        ; $640b: $fd
    ld e, l                                       ; $640c: $5d
    add h                                         ; $640d: $84
    or d                                          ; $640e: $b2
    adc [hl]                                      ; $640f: $8e
    db $fd                                        ; $6410: $fd
    rst $08                                       ; $6411: $cf
    push bc                                       ; $6412: $c5
    ld bc, $7892                                  ; $6413: $01 $92 $78
    rst $08                                       ; $6416: $cf
    cp l                                          ; $6417: $bd
    add a                                         ; $6418: $87
    xor e                                         ; $6419: $ab

jr_038_641a:
    dec e                                         ; $641a: $1d
    db $eb                                        ; $641b: $eb
    ld h, $8d                                     ; $641c: $26 $8d
    ld [$fe7e], a                                 ; $641e: $ea $7e $fe
    xor d                                         ; $6421: $aa
    ld d, [hl]                                    ; $6422: $56
    ld [hl], a                                    ; $6423: $77
    ccf                                           ; $6424: $3f
    ld a, a                                       ; $6425: $7f
    db $fd                                        ; $6426: $fd
    adc e                                         ; $6427: $8b
    ldh [$c8], a                                  ; $6428: $e0 $c8
    cp h                                          ; $642a: $bc
    ld b, e                                       ; $642b: $43
    ld [hl], d                                    ; $642c: $72
    ld c, c                                       ; $642d: $49
    pop hl                                        ; $642e: $e1
    adc [hl]                                      ; $642f: $8e
    ld hl, sp+$02                                 ; $6430: $f8 $02
    sbc $b2                                       ; $6432: $de $b2
    cp [hl]                                       ; $6434: $be
    add a                                         ; $6435: $87
    call c, $e7bc                                 ; $6436: $dc $bc $e7
    ld [$d88f], a                                 ; $6439: $ea $8f $d8
    ld de, $03f4                                  ; $643c: $11 $f4 $03
    ld a, [c]                                     ; $643f: $f2
    ld h, a                                       ; $6440: $67
    jp hl                                         ; $6441: $e9


    ldh [$75], a                                  ; $6442: $e0 $75
    inc [hl]                                      ; $6444: $34
    add hl, sp                                    ; $6445: $39
    adc [hl]                                      ; $6446: $8e
    jp $c4b4                                      ; $6447: $c3 $b4 $c4


    and a                                         ; $644a: $a7
    call nc, $b55b                                ; $644b: $d4 $5b $b5
    cp d                                          ; $644e: $ba
    ld e, a                                       ; $644f: $5f
    ld de, $8ed5                                  ; $6450: $11 $d5 $8e
    push af                                       ; $6453: $f5
    sub [hl]                                      ; $6454: $96
    pop de                                        ; $6455: $d1
    reti                                          ; $6456: $d9


    ld e, d                                       ; $6457: $5a
    ld a, [$9f2c]                                 ; $6458: $fa $2c $9f
    dec d                                         ; $645b: $15

jr_038_645c:
    ld h, a                                       ; $645c: $67
    db $eb                                        ; $645d: $eb
    ld c, l                                       ; $645e: $4d
    ld [hl], e                                    ; $645f: $73
    ld c, c                                       ; $6460: $49
    pop hl                                        ; $6461: $e1
    adc [hl]                                      ; $6462: $8e
    ld hl, sp+$02                                 ; $6463: $f8 $02
    sbc $5a                                       ; $6465: $de $5a
    db $10                                        ; $6467: $10
    ld c, h                                       ; $6468: $4c
    xor c                                         ; $6469: $a9
    or a                                          ; $646a: $b7
    adc [hl]                                      ; $646b: $8e
    push af                                       ; $646c: $f5
    sub [hl]                                      ; $646d: $96
    pop af                                        ; $646e: $f1
    and d                                         ; $646f: $a2
    jp c, Jump_000_2deb                           ; $6470: $da $eb $2d

    sub e                                         ; $6473: $93
    cp a                                          ; $6474: $bf
    db $fd                                        ; $6475: $fd
    ld b, b                                       ; $6476: $40
    ld a, $57                                     ; $6477: $3e $57
    ld e, e                                       ; $6479: $5b
    xor d                                         ; $647a: $aa
    dec e                                         ; $647b: $1d
    db $eb                                        ; $647c: $eb
    ld [hl-], a                                   ; $647d: $32
    ld a, [hl-]                                   ; $647e: $3a
    ld e, e                                       ; $647f: $5b
    ld c, e                                       ; $6480: $4b
    rlca                                          ; $6481: $07
    dec l                                         ; $6482: $2d
    and a                                         ; $6483: $a7
    cp $0c                                        ; $6484: $fe $0c
    jp nc, $231c                                  ; $6486: $d2 $1c $23

    inc bc                                        ; $6489: $03
    sbc d                                         ; $648a: $9a
    inc e                                         ; $648b: $1c
    sub h                                         ; $648c: $94
    ld [hl], b                                    ; $648d: $70
    or l                                          ; $648e: $b5
    and l                                         ; $648f: $a5
    inc hl                                        ; $6490: $23
    cp [hl]                                       ; $6491: $be
    add b                                         ; $6492: $80
    or a                                          ; $6493: $b7
    rst $30                                       ; $6494: $f7
    db $10                                        ; $6495: $10
    ld e, l                                       ; $6496: $5d
    rst $00                                       ; $6497: $c7
    sub [hl]                                      ; $6498: $96
    pop af                                        ; $6499: $f1
    and d                                         ; $649a: $a2
    jp c, Jump_000_296b                           ; $649b: $da $6b $29

    sub e                                         ; $649e: $93
    cp a                                          ; $649f: $bf
    db $fd                                        ; $64a0: $fd
    ld b, b                                       ; $64a1: $40
    xor [hl]                                      ; $64a2: $ae
    dec b                                         ; $64a3: $05
    pop bc                                        ; $64a4: $c1
    sub h                                         ; $64a5: $94
    jp nz, $dab9                                  ; $64a6: $c2 $b9 $da

    ld d, d                                       ; $64a9: $52
    ld [hl], l                                    ; $64aa: $75
    ld d, h                                       ; $64ab: $54
    ld a, e                                       ; $64ac: $7b
    dec sp                                        ; $64ad: $3b
    ld [c], a                                     ; $64ae: $e2
    ld a, [de]                                    ; $64af: $1a
    jr nz, jr_038_645c                            ; $64b0: $20 $aa

    dec e                                         ; $64b2: $1d
    ld l, e                                       ; $64b3: $6b
    inc l                                         ; $64b4: $2c
    and e                                         ; $64b5: $a3
    or e                                          ; $64b6: $b3
    or l                                          ; $64b7: $b5
    ld h, b                                       ; $64b8: $60
    add hl, bc                                    ; $64b9: $09
    ld a, [de]                                    ; $64ba: $1a
    adc $a0                                       ; $64bb: $ce $a0
    ld l, d                                       ; $64bd: $6a
    ld [hl], l                                    ; $64be: $75
    db $e3                                        ; $64bf: $e3
    ld l, l                                       ; $64c0: $6d
    rlca                                          ; $64c1: $07
    dec l                                         ; $64c2: $2d
    rst $30                                       ; $64c3: $f7
    db $10                                        ; $64c4: $10
    add c                                         ; $64c5: $81
    inc [hl]                                      ; $64c6: $34
    rlca                                          ; $64c7: $07
    ld c, c                                       ; $64c8: $49
    pop hl                                        ; $64c9: $e1
    adc [hl]                                      ; $64ca: $8e
    ld hl, sp+$02                                 ; $64cb: $f8 $02
    sbc $b2                                       ; $64cd: $de $b2
    cp [hl]                                       ; $64cf: $be
    add a                                         ; $64d0: $87
    call c, $e7bc                                 ; $64d1: $dc $bc $e7
    ld [$588f], a                                 ; $64d4: $ea $8f $58
    xor l                                         ; $64d7: $ad

Jump_038_64d8:
    ld l, d                                       ; $64d8: $6a
    cp b                                          ; $64d9: $b8
    ld a, a                                       ; $64da: $7f
    inc l                                         ; $64db: $2c
    sub e                                         ; $64dc: $93
    inc [hl]                                      ; $64dd: $34
    adc [hl]                                      ; $64de: $8e
    or c                                          ; $64df: $b1
    xor h                                         ; $64e0: $ac
    ld l, a                                       ; $64e1: $6f
    rst $10                                       ; $64e2: $d7
    ld [hl], c                                    ; $64e3: $71
    jr nz, jr_038_64f2                            ; $64e4: $20 $0c

    ret                                           ; $64e6: $c9


    ld bc, $0323                                  ; $64e7: $01 $23 $03
    sbc d                                         ; $64ea: $9a
    inc e                                         ; $64eb: $1c
    sub h                                         ; $64ec: $94
    ld [hl], b                                    ; $64ed: $70
    or l                                          ; $64ee: $b5
    and l                                         ; $64ef: $a5
    inc hl                                        ; $64f0: $23
    cp [hl]                                       ; $64f1: $be

jr_038_64f2:
    add b                                         ; $64f2: $80
    or a                                          ; $64f3: $b7
    ld [hl], a                                    ; $64f4: $77
    dec h                                         ; $64f5: $25
    jp c, Jump_000_1d5b                           ; $64f6: $da $5b $1d

    xor $70                                       ; $64f9: $ee $70
    ld hl, $13fe                                  ; $64fb: $21 $fe $13
    or l                                          ; $64fe: $b5
    add hl, de                                    ; $64ff: $19
    ld c, $a8                                     ; $6500: $0e $a8
    cp l                                          ; $6502: $bd
    add c                                         ; $6503: $81
    ld l, e                                       ; $6504: $6b
    ld a, c                                       ; $6505: $79
    ld h, e                                       ; $6506: $63
    ccf                                           ; $6507: $3f
    jr c, jr_038_6561                             ; $6508: $38 $57

    add a                                         ; $650a: $87
    xor e                                         ; $650b: $ab
    ld d, l                                       ; $650c: $55
    dec l                                         ; $650d: $2d
    cpl                                           ; $650e: $2f
    sub c                                         ; $650f: $91
    ld [bc], a                                    ; $6510: $02
    jp nz, Jump_038_77b9                          ; $6511: $c2 $b9 $77

jr_038_6514:
    rst $28                                       ; $6514: $ef
    ld d, [hl]                                    ; $6515: $56
    xor e                                         ; $6516: $ab
    ld [$1a30], a                                 ; $6517: $ea $30 $1a
    sbc e                                         ; $651a: $9b
    and h                                         ; $651b: $a4
    ld c, h                                       ; $651c: $4c
    ld l, c                                       ; $651d: $69
    inc sp                                        ; $651e: $33
    rst $18                                       ; $651f: $df
    ld h, e                                       ; $6520: $63
    rla                                           ; $6521: $17
    ld h, c                                       ; $6522: $61
    ld c, b                                       ; $6523: $48

Jump_038_6524:
    ld c, $49                                     ; $6524: $0e $49
    pop hl                                        ; $6526: $e1
    adc [hl]                                      ; $6527: $8e
    ld hl, sp+$02                                 ; $6528: $f8 $02
    sbc $b2                                       ; $652a: $de $b2
    cp [hl]                                       ; $652c: $be
    add a                                         ; $652d: $87
    call c, $e7bc                                 ; $652e: $dc $bc $e7
    ld [$588f], a                                 ; $6531: $ea $8f $58
    dec e                                         ; $6534: $1d
    ld d, d                                       ; $6535: $52
    add $20                                       ; $6536: $c6 $20
    ret nz                                        ; $6538: $c0

    dec a                                         ; $6539: $3d
    push de                                       ; $653a: $d5
    add hl, de                                    ; $653b: $19
    dec c                                         ; $653c: $0d
    cp $2c                                        ; $653d: $fe $2c
    dec e                                         ; $653f: $1d
    ld a, [hl+]                                   ; $6540: $2a
    ret nc                                        ; $6541: $d0

    ld a, e                                       ; $6542: $7b
    ld [c], a                                     ; $6543: $e2
    inc de                                        ; $6544: $13
    xor a                                         ; $6545: $af
    xor [hl]                                      ; $6546: $ae
    ld [hl], $76                                  ; $6547: $36 $76
    call nz, Call_000_063f                        ; $6549: $c4 $3f $06
    ld [$3763], sp                                ; $654c: $08 $63 $37
    ld hl, sp+$03                                 ; $654f: $f8 $03
    db $ec                                        ; $6551: $ec
    pop hl                                        ; $6552: $e1
    daa                                           ; $6553: $27
    db $fd                                        ; $6554: $fd
    ei                                            ; $6555: $fb
    ld a, $eb                                     ; $6556: $3e $eb
    db $ed                                        ; $6558: $ed
    ld l, l                                       ; $6559: $6d
    db $ec                                        ; $655a: $ec
    ld e, l                                       ; $655b: $5d
    rst $28                                       ; $655c: $ef
    sub b                                         ; $655d: $90
    inc e                                         ; $655e: $1c
    ld c, c                                       ; $655f: $49
    pop hl                                        ; $6560: $e1

jr_038_6561:
    adc [hl]                                      ; $6561: $8e
    ld hl, sp+$02                                 ; $6562: $f8 $02
    sbc $0e                                       ; $6564: $de $0e
    ld e, d                                       ; $6566: $5a
    ld b, b                                       ; $6567: $40
    inc e                                         ; $6568: $1c
    xor h                                         ; $6569: $ac
    or a                                          ; $656a: $b7
    and a                                         ; $656b: $a7
    ld e, d                                       ; $656c: $5a
    ld a, e                                       ; $656d: $7b
    dec sp                                        ; $656e: $3b
    dec bc                                        ; $656f: $0b
    ld d, l                                       ; $6570: $55
    db $fc                                        ; $6571: $fc
    sbc l                                         ; $6572: $9d
    dec sp                                        ; $6573: $3b
    ld a, b                                       ; $6574: $78
    ld l, l                                       ; $6575: $6d
    or l                                          ; $6576: $b5
    adc a                                         ; $6577: $8f
    ld l, d                                       ; $6578: $6a
    ld d, l                                       ; $6579: $55
    sub $68                                       ; $657a: $d6 $68
    ld b, h                                       ; $657c: $44
    ld l, a                                       ; $657d: $6f
    reti                                          ; $657e: $d9


    ld b, b                                       ; $657f: $40
    jr jr_038_6514                                ; $6580: $18 $92

    inc bc                                        ; $6582: $03
    ld c, c                                       ; $6583: $49
    pop hl                                        ; $6584: $e1
    adc [hl]                                      ; $6585: $8e
    ld hl, sp+$02                                 ; $6586: $f8 $02
    sbc $be                                       ; $6588: $de $be
    rst $08                                       ; $658a: $cf
    ld a, d                                       ; $658b: $7a
    set 7, d                                      ; $658c: $cb $fa
    ld e, $72                                     ; $658e: $1e $72
    add e                                         ; $6590: $83
    ld [hl], e                                    ; $6591: $73
    push af                                       ; $6592: $f5
    ld b, a                                       ; $6593: $47
    xor h                                         ; $6594: $ac
    ld d, [hl]                                    ; $6595: $56
    ld e, l                                       ; $6596: $5d
    or l                                          ; $6597: $b5
    dec e                                         ; $6598: $1d
    inc c                                         ; $6599: $0c
    db $d3                                        ; $659a: $d3
    ld [hl+], a                                   ; $659b: $22
    ld a, a                                       ; $659c: $7f
    ld [hl], a                                    ; $659d: $77
    adc e                                         ; $659e: $8b
    and l                                         ; $659f: $a5
    ld a, a                                       ; $65a0: $7f
    ret                                           ; $65a1: $c9


    ld a, [hl+]                                   ; $65a2: $2a
    inc de                                        ; $65a3: $13
    rlca                                          ; $65a4: $07
    pop hl                                        ; $65a5: $e1
    dec l                                         ; $65a6: $2d
    dec de                                        ; $65a7: $1b
    ld [$7243], sp                                ; $65a8: $08 $43 $72
    ld c, c                                       ; $65ab: $49
    pop hl                                        ; $65ac: $e1
    adc [hl]                                      ; $65ad: $8e
    ld hl, sp+$02                                 ; $65ae: $f8 $02
    sbc $b2                                       ; $65b0: $de $b2
    cp [hl]                                       ; $65b2: $be
    add a                                         ; $65b3: $87
    call c, $e7bc                                 ; $65b4: $dc $bc $e7
    ld [$d88f], a                                 ; $65b7: $ea $8f $d8
    add c                                         ; $65ba: $81
    scf                                           ; $65bb: $37
    ld b, $03                                     ; $65bc: $06 $03
    ld sp, hl                                     ; $65be: $f9
    ld [hl], e                                    ; $65bf: $73
    push de                                       ; $65c0: $d5
    ld [$3f1e], a                                 ; $65c1: $ea $1e $3f
    dec bc                                        ; $65c4: $0b
    db $e4                                        ; $65c5: $e4
    rst $08                                       ; $65c6: $cf
    dec e                                         ; $65c7: $1d
    cp d                                          ; $65c8: $ba
    sbc c                                         ; $65c9: $99
    inc b                                         ; $65ca: $04
    ld b, c                                       ; $65cb: $41
    cp b                                          ; $65cc: $b8
    ld a, [hl-]                                   ; $65cd: $3a
    and h                                         ; $65ce: $a4
    dec de                                        ; $65cf: $1b
    db $fc                                        ; $65d0: $fc
    ld b, c                                       ; $65d1: $41
    rrca                                          ; $65d2: $0f
    ccf                                           ; $65d3: $3f

Jump_038_65d4:
    add hl, hl                                    ; $65d4: $29
    ld e, [hl]                                    ; $65d5: $5e
    dec e                                         ; $65d6: $1d
    inc c                                         ; $65d7: $0c
    db $d3                                        ; $65d8: $d3
    cp $7d                                        ; $65d9: $fe $7d
    sbc a                                         ; $65db: $9f
    push af                                       ; $65dc: $f5
    or $36                                        ; $65dd: $f6 $36
    or $ae                                        ; $65df: $f6 $ae
    ld [hl], a                                    ; $65e1: $77
    ld c, b                                       ; $65e2: $48
    ld c, $49                                     ; $65e3: $0e $49
    xor d                                         ; $65e5: $aa
    inc b                                         ; $65e6: $04
    jp hl                                         ; $65e7: $e9


    ld d, c                                       ; $65e8: $51
    add h                                         ; $65e9: $84
    ld [$afe0], a                                 ; $65ea: $ea $e0 $af
    sbc c                                         ; $65ed: $99
    ld de, $e512                                  ; $65ee: $11 $12 $e5
    ld b, $69                                     ; $65f1: $06 $69
    sub e                                         ; $65f3: $93
    inc e                                         ; $65f4: $1c
    db $db                                        ; $65f5: $db
    ld e, c                                       ; $65f6: $59
    ld l, b                                       ; $65f7: $68
    inc c                                         ; $65f8: $0c
    ld a, b                                       ; $65f9: $78
    push af                                       ; $65fa: $f5
    dec [hl]                                      ; $65fb: $35
    pop af                                        ; $65fc: $f1
    add hl, bc                                    ; $65fd: $09
    ld e, a                                       ; $65fe: $5f
    or c                                          ; $65ff: $b1
    sub [hl]                                      ; $6600: $96
    ld [hl+], a                                   ; $6601: $22
    ld a, a                                       ; $6602: $7f
    adc [hl]                                      ; $6603: $8e
    add l                                         ; $6604: $85
    sbc [hl]                                      ; $6605: $9e
    ld l, d                                       ; $6606: $6a
    jr nz, @+$45                                  ; $6607: $20 $43

    rst $28                                       ; $6609: $ef
    ld hl, $b537                                  ; $660a: $21 $37 $b5
    add hl, de                                    ; $660d: $19
    ld c, $5e                                     ; $660e: $0e $5e
    sub h                                         ; $6610: $94

jr_038_6611:
    ld e, d                                       ; $6611: $5a
    ld c, d                                       ; $6612: $4a
    ld d, [hl]                                    ; $6613: $56
    ld b, l                                       ; $6614: $45
    rst $00                                       ; $6615: $c7
    and [hl]                                      ; $6616: $a6
    add hl, sp                                    ; $6617: $39
    inc hl                                        ; $6618: $23
    inc bc                                        ; $6619: $03
    xor d                                         ; $661a: $aa
    cp l                                          ; $661b: $bd
    dec e                                         ; $661c: $1d
    pop af                                        ; $661d: $f1
    dec b                                         ; $661e: $05
    cp h                                          ; $661f: $bc
    cp l                                          ; $6620: $bd
    dec hl                                        ; $6621: $2b
    pop de                                        ; $6622: $d1
    sbc $92                                       ; $6623: $de $92
    rst $28                                       ; $6625: $ef
    adc [hl]                                      ; $6626: $8e
    ld h, [hl]                                    ; $6627: $66
    ld c, $04                                     ; $6628: $0e $04
    set 7, e                                      ; $662a: $cb $fb
    inc b                                         ; $662c: $04
    cp b                                          ; $662d: $b8
    inc hl                                        ; $662e: $23
    xor [hl]                                      ; $662f: $ae
    add c                                         ; $6630: $81
    ldh a, [rPCM12]                               ; $6631: $f0 $76
    ldh a, [$da]                                  ; $6633: $f0 $da
    ld [$fe90], a                                 ; $6635: $ea $90 $fe
    call Call_038_584c                            ; $6638: $cd $4c $58
    jr nz, jr_038_666f                            ; $663b: $20 $32

    jr jr_038_6611                                ; $663d: $18 $d2

    ld h, $39                                     ; $663f: $26 $39
    or [hl]                                       ; $6641: $b6
    adc h                                         ; $6642: $8c
    adc $d6                                       ; $6643: $ce $d6
    ld d, d                                       ; $6645: $52
    db $e4                                        ; $6646: $e4
    rst $08                                       ; $6647: $cf
    or c                                          ; $6648: $b1
    ret nc                                        ; $6649: $d0

    ld b, c                                       ; $664a: $41
    srl l                                         ; $664b: $cb $3d
    ld b, h                                       ; $664d: $44
    and b                                         ; $664e: $a0
    ld h, h                                       ; $664f: $64
    ld d, l                                       ; $6650: $55
    ld [hl], h                                    ; $6651: $74
    ld l, h                                       ; $6652: $6c
    sbc d                                         ; $6653: $9a
    inc bc                                        ; $6654: $03
    ld c, c                                       ; $6655: $49
    pop hl                                        ; $6656: $e1
    adc [hl]                                      ; $6657: $8e
    ld hl, sp+$02                                 ; $6658: $f8 $02
    sbc $be                                       ; $665a: $de $be
    rst $08                                       ; $665c: $cf
    ld a, d                                       ; $665d: $7a
    srl d                                         ; $665e: $cb $3a
    xor d                                         ; $6660: $aa
    ld b, e                                       ; $6661: $43
    cp d                                          ; $6662: $ba
    pop bc                                        ; $6663: $c1
    rra                                           ; $6664: $1f
    ld h, b                                       ; $6665: $60
    ld e, c                                       ; $6666: $59
    rst $18                                       ; $6667: $df
    ld b, e                                       ; $6668: $43
    ld l, [hl]                                    ; $6669: $6e
    sub b                                         ; $666a: $90
    ld [hl], $c9                                  ; $666b: $36 $c9
    or c                                          ; $666d: $b1
    ld h, l                                       ; $666e: $65

jr_038_666f:
    ld [hl], h                                    ; $666f: $74
    or [hl]                                       ; $6670: $b6
    sub [hl]                                      ; $6671: $96

jr_038_6672:
    ld h, d                                       ; $6672: $62
    ld hl, sp+$41                                 ; $6673: $f8 $41
    ld c, a                                       ; $6675: $4f
    or l                                          ; $6676: $b5
    cp [hl]                                       ; $6677: $be
    ld hl, sp-$55                                 ; $6678: $f8 $ab
    ld h, e                                       ; $667a: $63
    ld a, e                                       ; $667b: $7b
    rst $30                                       ; $667c: $f7
    ld b, [hl]                                    ; $667d: $46
    ld d, [hl]                                    ; $667e: $56
    add h                                         ; $667f: $84
    ld b, h                                       ; $6680: $44
    cp c                                          ; $6681: $b9
    ld e, c                                       ; $6682: $59
    ld a, [$a615]                                 ; $6683: $fa $15 $a6
    add hl, sp                                    ; $6686: $39
    ld c, c                                       ; $6687: $49
    pop hl                                        ; $6688: $e1
    adc [hl]                                      ; $6689: $8e
    ld hl, sp+$02                                 ; $668a: $f8 $02
    sbc $be                                       ; $668c: $de $be
    rst $08                                       ; $668e: $cf
    ld a, d                                       ; $668f: $7a
    set 7, d                                      ; $6690: $cb $fa
    ld e, $72                                     ; $6692: $1e $72
    add e                                         ; $6694: $83
    ld [hl], e                                    ; $6695: $73
    push af                                       ; $6696: $f5
    ld b, a                                       ; $6697: $47
    xor h                                         ; $6698: $ac
    halt                                          ; $6699: $76

jr_038_669a:
    xor h                                         ; $669a: $ac
    set 5, b                                      ; $669b: $cb $e8
    ld l, h                                       ; $669d: $6c
    dec l                                         ; $669e: $2d
    ld [hl], l                                    ; $669f: $75
    ld l, h                                       ; $66a0: $6c
    ld h, [hl]                                    ; $66a1: $66
    db $e4                                        ; $66a2: $e4
    adc a                                         ; $66a3: $8f
    ld a, [hl]                                    ; $66a4: $7e
    jp nz, $8c5b                                  ; $66a5: $c2 $5b $8c

    push de                                       ; $66a8: $d5
    ld b, e                                       ; $66a9: $43
    jp z, $f70c                                   ; $66aa: $ca $0c $f7

    ld [hl], $f6                                  ; $66ad: $36 $f6
    xor [hl]                                      ; $66af: $ae
    or a                                          ; $66b0: $b7
    ld a, [hl-]                                   ; $66b1: $3a
    ld hl, sp-$15                                 ; $66b2: $f8 $eb
    ld a, [hl]                                    ; $66b4: $7e
    jr nz, @+$0b                                  ; $66b5: $20 $09

    dec c                                         ; $66b7: $0d
    cp $ba                                        ; $66b8: $fe $ba
    pop bc                                        ; $66ba: $c1
    rra                                           ; $66bb: $1f
    db $f4                                        ; $66bc: $f4
    ldh a, [$93]                                  ; $66bd: $f0 $93
    cp $cd                                        ; $66bf: $fe $cd
    call nz, Call_038_7841                        ; $66c1: $c4 $41 $78
    rst $08                                       ; $66c4: $cf
    cp l                                          ; $66c5: $bd
    dec sp                                        ; $66c6: $3b
    ld l, b                                       ; $66c7: $68
    ld sp, $085c                                  ; $66c8: $31 $5c $08
    inc de                                        ; $66cb: $13
    ld d, l                                       ; $66cc: $55
    xor e                                         ; $66cd: $ab
    ld c, e                                       ; $66ce: $4b
    jr jr_038_6672                                ; $66cf: $18 $a1

    ret z                                         ; $66d1: $c8

    rra                                           ; $66d2: $1f
    db $fd                                        ; $66d3: $fd
    add h                                         ; $66d4: $84
    scf                                           ; $66d5: $37
    call $2301                                    ; $66d6: $cd $01 $23
    inc bc                                        ; $66d9: $03
    xor d                                         ; $66da: $aa
    cp l                                          ; $66db: $bd
    dec e                                         ; $66dc: $1d
    pop af                                        ; $66dd: $f1
    dec b                                         ; $66de: $05
    cp h                                          ; $66df: $bc
    cp l                                          ; $66e0: $bd
    dec hl                                        ; $66e1: $2b
    pop de                                        ; $66e2: $d1
    xor [hl]                                      ; $66e3: $ae
    pop hl                                        ; $66e4: $e1
    cp $b1                                        ; $66e5: $fe $b1
    ld e, a                                       ; $66e7: $5f
    ld h, c                                       ; $66e8: $61
    or l                                          ; $66e9: $b5
    ld h, e                                       ; $66ea: $63
    ld a, l                                       ; $66eb: $7d
    inc [hl]                                      ; $66ec: $34
    ld h, c                                       ; $66ed: $61
    rlca                                          ; $66ee: $07
    cp l                                          ; $66ef: $bd
    ldh a, [$a5]                                  ; $66f0: $f0 $a5
    or c                                          ; $66f2: $b1
    ld c, l                                       ; $66f3: $4d
    db $d3                                        ; $66f4: $d3
    or h                                          ; $66f5: $b4
    adc [hl]                                      ; $66f6: $8e
    ld [hl], l                                    ; $66f7: $75
    sbc c                                         ; $66f8: $99
    jr nz, jr_038_675a                            ; $66f9: $20 $5f

    adc l                                         ; $66fb: $8d
    db $e3                                        ; $66fc: $e3
    dec h                                         ; $66fd: $25
    xor h                                         ; $66fe: $ac
    dec l                                         ; $66ff: $2d
    dec e                                         ; $6700: $1d
    or h                                          ; $6701: $b4
    call c, Call_038_6aff                         ; $6702: $dc $ff $6a
    ld d, e                                       ; $6705: $53
    jr jr_038_669a                                ; $6706: $18 $92

    inc bc                                        ; $6708: $03
    ld c, c                                       ; $6709: $49
    ld c, d                                       ; $670a: $4a
    ld hl, sp-$55                                 ; $670b: $f8 $ab
    ld c, $77                                     ; $670d: $0e $77
    call nz, $f017                                ; $670f: $c4 $17 $f0
    or $ae                                        ; $6712: $f6 $ae
    ld b, h                                       ; $6714: $44
    cp e                                          ; $6715: $bb
    jp c, Jump_000_2652                           ; $6716: $da $52 $26

    ld a, a                                       ; $6719: $7f
    ld e, a                                       ; $671a: $5f
    ld a, e                                       ; $671b: $7b
    ld l, e                                       ; $671c: $6b
    ld a, c                                       ; $671d: $79
    ld h, e                                       ; $671e: $63
    ccf                                           ; $671f: $3f
    jr c, jr_038_6779                             ; $6720: $38 $57

    ld a, e                                       ; $6722: $7b
    xor e                                         ; $6723: $ab
    dec e                                         ; $6724: $1d
    db $eb                                        ; $6725: $eb
    sbc [hl]                                      ; $6726: $9e
    ldh a, [$15]                                  ; $6727: $f0 $15
    ld l, e                                       ; $6729: $6b
    pop bc                                        ; $672a: $c1
    ld bc, $f121                                  ; $672b: $01 $21 $f1
    rst $20                                       ; $672e: $e7
    add $56                                       ; $672f: $c6 $56
    add a                                         ; $6731: $87
    pop de                                        ; $6732: $d1
    ld b, a                                       ; $6733: $47
    sub e                                         ; $6734: $93
    sub h                                         ; $6735: $94
    add hl, hl                                    ; $6736: $29
    db $ed                                        ; $6737: $ed
    ld e, a                                       ; $6738: $5f
    add hl, bc                                    ; $6739: $09
    cp $c0                                        ; $673a: $fe $c0
    dec sp                                        ; $673c: $3b
    inc h                                         ; $673d: $24
    rlca                                          ; $673e: $07
    ld c, c                                       ; $673f: $49
    pop hl                                        ; $6740: $e1
    adc [hl]                                      ; $6741: $8e
    ld hl, sp+$02                                 ; $6742: $f8 $02
    sbc $be                                       ; $6744: $de $be
    rst $08                                       ; $6746: $cf
    ld a, d                                       ; $6747: $7a
    set 7, d                                      ; $6748: $cb $fa
    ld e, $72                                     ; $674a: $1e $72
    add e                                         ; $674c: $83
    ld [hl], e                                    ; $674d: $73
    push af                                       ; $674e: $f5
    ld b, a                                       ; $674f: $47
    xor h                                         ; $6750: $ac
    ld d, [hl]                                    ; $6751: $56
    dec h                                         ; $6752: $25
    ld c, b                                       ; $6753: $48
    ld d, d                                       ; $6754: $52
    dec e                                         ; $6755: $1d
    ld l, [hl]                                    ; $6756: $6e
    jp nc, $9657                                  ; $6757: $d2 $57 $96

jr_038_675a:
    ld [$1a30], a                                 ; $675a: $ea $30 $1a
    sbc e                                         ; $675d: $9b
    and h                                         ; $675e: $a4
    ld c, h                                       ; $675f: $4c
    add hl, hl                                    ; $6760: $29
    ld [hl], $8e                                  ; $6761: $36 $8e
    ld b, e                                       ; $6763: $43
    ld l, l                                       ; $6764: $6d
    inc sp                                        ; $6765: $33
    ld h, a                                       ; $6766: $67
    sbc $32                                       ; $6767: $de $32
    ld b, $01                                     ; $6769: $06 $01
    ld h, l                                       ; $676b: $65
    inc bc                                        ; $676c: $03
    ld hl, $01cd                                  ; $676d: $21 $cd $01
    inc hl                                        ; $6770: $23
    inc bc                                        ; $6771: $03
    sbc d                                         ; $6772: $9a
    inc e                                         ; $6773: $1c
    sub h                                         ; $6774: $94
    ld [hl], b                                    ; $6775: $70
    or l                                          ; $6776: $b5

Call_038_6777:
    and l                                         ; $6777: $a5
    inc hl                                        ; $6778: $23

jr_038_6779:
    cp [hl]                                       ; $6779: $be
    add b                                         ; $677a: $80
    or a                                          ; $677b: $b7
    ld [hl], a                                    ; $677c: $77
    dec h                                         ; $677d: $25
    jp c, Jump_038_6c75                           ; $677e: $da $75 $6c

    xor a                                         ; $6781: $af
    daa                                           ; $6782: $27
    ld e, [hl]                                    ; $6783: $5e
    sub $90                                       ; $6784: $d6 $90
    xor b                                         ; $6786: $a8
    ld e, b                                       ; $6787: $58
    xor a                                         ; $6788: $af
    or [hl]                                       ; $6789: $b6
    ld [hl], h                                    ; $678a: $74
    or [hl]                                       ; $678b: $b6
    ld b, h                                       ; $678c: $44
    add hl, sp                                    ; $678d: $39
    ld l, d                                       ; $678e: $6a
    ld hl, $655b                                  ; $678f: $21 $5b $65
    ld [hl], b                                    ; $6792: $70
    xor [hl]                                      ; $6793: $ae
    or [hl]                                       ; $6794: $b6
    ld d, h                                       ; $6795: $54
    dec sp                                        ; $6796: $3b
    sub $5b                                       ; $6797: $d6 $5b
    ld b, [hl]                                    ; $6799: $46
    ld h, a                                       ; $679a: $67
    ld l, e                                       ; $679b: $6b
    ld l, c                                       ; $679c: $69
    ld l, h                                       ; $679d: $6c
    ld [hl], l                                    ; $679e: $75
    cp b                                          ; $679f: $b8
    or e                                          ; $67a0: $b3
    ld d, b                                       ; $67a1: $50
    push bc                                       ; $67a2: $c5
    rra                                           ; $67a3: $1f
    inc d                                         ; $67a4: $14
    ld sp, hl                                     ; $67a5: $f9
    and e                                         ; $67a6: $a3
    adc c                                         ; $67a7: $89
    add hl, de                                    ; $67a8: $19
    and h                                         ; $67a9: $a4
    add hl, sp                                    ; $67aa: $39
    inc hl                                        ; $67ab: $23
    inc bc                                        ; $67ac: $03
    sbc d                                         ; $67ad: $9a
    inc e                                         ; $67ae: $1c
    sub h                                         ; $67af: $94
    ld [hl], b                                    ; $67b0: $70
    or l                                          ; $67b1: $b5
    and l                                         ; $67b2: $a5
    inc hl                                        ; $67b3: $23
    cp [hl]                                       ; $67b4: $be
    add b                                         ; $67b5: $80
    or a                                          ; $67b6: $b7
    ld [hl], a                                    ; $67b7: $77
    dec h                                         ; $67b8: $25
    jp c, $ac75                                   ; $67b9: $da $75 $ac

    dec sp                                        ; $67bc: $3b
    ld d, d                                       ; $67bd: $52
    ld h, c                                       ; $67be: $61
    call c, Call_000_216a                         ; $67bf: $dc $6a $21
    ld e, e                                       ; $67c2: $5b
    ld h, l                                       ; $67c3: $65
    ld [hl], b                                    ; $67c4: $70
    xor [hl]                                      ; $67c5: $ae
    ld c, $57                                     ; $67c6: $0e $57
    dec sp                                        ; $67c8: $3b
    sub $65                                       ; $67c9: $d6 $65
    ld [hl], h                                    ; $67cb: $74
    or [hl]                                       ; $67cc: $b6
    sub [hl]                                      ; $67cd: $96
    ld c, $8e                                     ; $67ce: $0e $8e
    ld c, l                                       ; $67d0: $4d
    ld l, c                                       ; $67d1: $69
    ld h, h                                       ; $67d2: $64
    dec e                                         ; $67d3: $1d
    or h                                          ; $67d4: $b4
    call c, $0443                                 ; $67d5: $dc $43 $04
    jp nc, $231c                                  ; $67d8: $d2 $1c $23

    inc bc                                        ; $67db: $03
    sbc d                                         ; $67dc: $9a
    inc e                                         ; $67dd: $1c
    sub h                                         ; $67de: $94
    ld [hl], b                                    ; $67df: $70
    or l                                          ; $67e0: $b5
    and l                                         ; $67e1: $a5
    inc hl                                        ; $67e2: $23
    cp [hl]                                       ; $67e3: $be
    add b                                         ; $67e4: $80
    or a                                          ; $67e5: $b7
    ld [hl], a                                    ; $67e6: $77
    dec h                                         ; $67e7: $25
    jp c, $ac75                                   ; $67e8: $da $75 $ac

    bit 3, d                                      ; $67eb: $cb $5a

jr_038_67ed:
    call nc, $cc8b                                ; $67ed: $d4 $8b $cc
    xor e                                         ; $67f0: $ab
    db $dd                                        ; $67f1: $dd
    sub c                                         ; $67f2: $91
    ld a, [bc]                                    ; $67f3: $0a
    db $e3                                        ; $67f4: $e3
    ld d, [hl]                                    ; $67f5: $56
    dec bc                                        ; $67f6: $0b
    reti                                          ; $67f7: $d9


    ld a, [hl+]                                   ; $67f8: $2a
    add e                                         ; $67f9: $83
    ld [hl], e                                    ; $67fa: $73
    ld [hl], l                                    ; $67fb: $75
    cp b                                          ; $67fc: $b8
    adc [hl]                                      ; $67fd: $8e
    push af                                       ; $67fe: $f5
    ld d, [hl]                                    ; $67ff: $56
    dec sp                                        ; $6800: $3b
    sub $5b                                       ; $6801: $d6 $5b
    ld b, [hl]                                    ; $6803: $46
    ld h, a                                       ; $6804: $67
    ld l, e                                       ; $6805: $6b
    xor c                                         ; $6806: $a9
    ld h, e                                       ; $6807: $63
    sub c                                         ; $6808: $91
    ccf                                           ; $6809: $3f
    ld a, [$6f09]                                 ; $680a: $fa $09 $6f
    ld l, c                                       ; $680d: $69
    ld [hl+], a                                   ; $680e: $22
    ld [hl+], a                                   ; $680f: $22
    and h                                         ; $6810: $a4
    add hl, sp                                    ; $6811: $39
    inc hl                                        ; $6812: $23
    inc bc                                        ; $6813: $03
    sbc d                                         ; $6814: $9a
    inc e                                         ; $6815: $1c
    sub h                                         ; $6816: $94
    ld [hl], b                                    ; $6817: $70
    or l                                          ; $6818: $b5
    and l                                         ; $6819: $a5
    inc hl                                        ; $681a: $23
    cp [hl]                                       ; $681b: $be
    add b                                         ; $681c: $80
    or a                                          ; $681d: $b7
    ld [hl], a                                    ; $681e: $77
    dec h                                         ; $681f: $25
    jp c, $e3db                                   ; $6820: $da $db $e3

    ld h, a                                       ; $6823: $67
    add c                                         ; $6824: $81
    db $fc                                        ; $6825: $fc
    cp c                                          ; $6826: $b9
    jp Jump_000_3aa8                              ; $6827: $c3 $a8 $3a


    cp h                                          ; $682a: $bc
    or l                                          ; $682b: $b5
    jr nz, jr_038_68ad                            ; $682c: $20 $7f

    sbc a                                         ; $682e: $9f
    jr nz, jr_038_67ed                            ; $682f: $20 $bc

    ld c, l                                       ; $6831: $4d

Call_038_6832:
    db $d3                                        ; $6832: $d3
    or h                                          ; $6833: $b4
    ld l, d                                       ; $6834: $6a
    ld [hl], l                                    ; $6835: $75
    ld [hl], l                                    ; $6836: $75
    cp b                                          ; $6837: $b8
    ld [$37b1], sp                                ; $6838: $08 $b1 $37
    rst $28                                       ; $683b: $ef
    sub b                                         ; $683c: $90
    ld h, $a9                                     ; $683d: $26 $a9
    ld [de], a                                    ; $683f: $12
    and h                                         ; $6840: $a4
    ld b, a                                       ; $6841: $47
    ld de, $83aa                                  ; $6842: $11 $aa $83
    cp a                                          ; $6845: $bf
    ld h, [hl]                                    ; $6846: $66
    ld a, [bc]                                    ; $6847: $0a
    adc $fd                                       ; $6848: $ce $fd
    xor h                                         ; $684a: $ac
    and l                                         ; $684b: $a5
    jp c, $deb1                                   ; $684c: $da $b1 $de

    ld [hl-], a                                   ; $684f: $32
    ld a, [hl-]                                   ; $6850: $3a
    ld e, e                                       ; $6851: $5b
    rl [hl]                                       ; $6852: $cb $16
    ld sp, hl                                     ; $6854: $f9
    ld [hl], e                                    ; $6855: $73
    inc l                                         ; $6856: $2c
    call nc, $7258                                ; $6857: $d4 $58 $72
    ld hl, sp-$60                                 ; $685a: $f8 $a0
    pop bc                                        ; $685c: $c1
    ld e, a                                       ; $685d: $5f
    sub c                                         ; $685e: $91
    ccf                                           ; $685f: $3f
    ld l, d                                       ; $6860: $6a
    cp $a0                                        ; $6861: $fe $a0
    ld h, h                                       ; $6863: $64
    push de                                       ; $6864: $d5
    call z, $9bcf                                 ; $6865: $cc $cf $9b
    and $49                                       ; $6868: $e6 $49
    pop hl                                        ; $686a: $e1
    adc [hl]                                      ; $686b: $8e
    ld hl, sp+$02                                 ; $686c: $f8 $02
    sbc $be                                       ; $686e: $de $be
    rst $08                                       ; $6870: $cf
    ld a, d                                       ; $6871: $7a
    set 7, d                                      ; $6872: $cb $fa
    ld e, $72                                     ; $6874: $1e $72
    add e                                         ; $6876: $83
    ld [hl], e                                    ; $6877: $73
    push af                                       ; $6878: $f5
    ld b, a                                       ; $6879: $47
    xor h                                         ; $687a: $ac
    halt                                          ; $687b: $76
    xor h                                         ; $687c: $ac
    set 5, b                                      ; $687d: $cb $e8
    ld l, h                                       ; $687f: $6c
    dec l                                         ; $6880: $2d
    and l                                         ; $6881: $a5
    ld a, a                                       ; $6882: $7f
    inc sp                                        ; $6883: $33
    db $fc                                        ; $6884: $fc
    add a                                         ; $6885: $87
    and l                                         ; $6886: $a5
    sbc c                                         ; $6887: $99
    rst $28                                       ; $6888: $ef
    sub a                                         ; $6889: $97
    ld l, b                                       ; $688a: $68
    ld l, a                                       ; $688b: $6f
    ld sp, $0f56                                  ; $688c: $31 $56 $0f
    ret                                           ; $688f: $c9


    ld bc, $aa49                                  ; $6890: $01 $49 $aa
    xor h                                         ; $6893: $ac
    rst $28                                       ; $6894: $ef
    adc $10                                       ; $6895: $ce $10
    xor d                                         ; $6897: $aa
    add e                                         ; $6898: $83
    cp a                                          ; $6899: $bf
    and d                                         ; $689a: $a2
    sbc a                                         ; $689b: $9f
    sub h                                         ; $689c: $94
    cp $cd                                        ; $689d: $fe $cd
    ldh a, [$1f]                                  ; $689f: $f0 $1f
    ld l, c                                       ; $68a1: $69
    sub e                                         ; $68a2: $93
    jp nz, $f11d                                  ; $68a3: $c2 $1d $f1

    dec b                                         ; $68a6: $05
    cp h                                          ; $68a7: $bc
    dec a                                         ; $68a8: $3d
    ld c, b                                       ; $68a9: $48
    adc b                                         ; $68aa: $88
    sbc $ea                                       ; $68ab: $de $ea

jr_038_68ad:
    adc a                                         ; $68ad: $8f
    dec e                                         ; $68ae: $1d
    or h                                          ; $68af: $b4
    jr z, @-$3d                                   ; $68b0: $28 $c1

    rst $08                                       ; $68b2: $cf
    rra                                           ; $68b3: $1f
    db $f4                                        ; $68b4: $f4
    ld a, l                                       ; $68b5: $7d
    sub $3b                                       ; $68b6: $d6 $3b
    inc h                                         ; $68b8: $24
    rlca                                          ; $68b9: $07
    ld c, c                                       ; $68ba: $49
    ld c, d                                       ; $68bb: $4a
    ld hl, sp-$55                                 ; $68bc: $f8 $ab
    ld c, $77                                     ; $68be: $0e $77
    call nz, $f017                                ; $68c0: $c4 $17 $f0
    or $ae                                        ; $68c3: $f6 $ae
    ld b, h                                       ; $68c5: $44
    cp e                                          ; $68c6: $bb
    adc [hl]                                      ; $68c7: $8e
    db $ed                                        ; $68c8: $ed
    add sp, $58                                   ; $68c9: $e8 $58
    adc l                                         ; $68cb: $8d
    ld [hl], b                                    ; $68cc: $70
    adc l                                         ; $68cd: $8d
    db $d3                                        ; $68ce: $d3
    ld bc, $b4b9                                  ; $68cf: $01 $b9 $b4
    ld [hl+], a                                   ; $68d2: $22
    add a                                         ; $68d3: $87
    dec b                                         ; $68d4: $05
    ld a, [hl-]                                   ; $68d5: $3a
    ld [hl], c                                    ; $68d6: $71
    ccf                                           ; $68d7: $3f
    and l                                         ; $68d8: $a5
    xor [hl]                                      ; $68d9: $ae
    halt                                          ; $68da: $76
    xor h                                         ; $68db: $ac
    set 5, b                                      ; $68dc: $cb $e8
    ld l, h                                       ; $68de: $6c
    dec l                                         ; $68df: $2d
    cp l                                          ; $68e0: $bd
    ld e, e                                       ; $68e1: $5b
    or h                                          ; $68e2: $b4
    or a                                          ; $68e3: $b7
    call nz, $9025                                ; $68e4: $c4 $25 $90
    ld sp, hl                                     ; $68e7: $f9
    xor $07                                       ; $68e8: $ee $07
    ld b, e                                       ; $68ea: $43
    ld [hl], d                                    ; $68eb: $72
    ld c, c                                       ; $68ec: $49
    ld c, d                                       ; $68ed: $4a
    ld hl, sp-$55                                 ; $68ee: $f8 $ab
    ld c, $77                                     ; $68f0: $0e $77
    call nz, $f017                                ; $68f2: $c4 $17 $f0
    or $ae                                        ; $68f5: $f6 $ae
    ld b, h                                       ; $68f7: $44
    cp e                                          ; $68f8: $bb
    jp c, $65b1                                   ; $68f9: $da $b1 $65

    ld [hl], h                                    ; $68fc: $74
    or [hl]                                       ; $68fd: $b6
    sub [hl]                                      ; $68fe: $96
    add $36                                       ; $68ff: $c6 $36
    ld c, l                                       ; $6901: $4d
    db $d3                                        ; $6902: $d3
    add [hl]                                      ; $6903: $86
    ld h, h                                       ; $6904: $64
    ld e, [hl]                                    ; $6905: $5e
    ld l, l                                       ; $6906: $6d
    cp b                                          ; $6907: $b8

Jump_038_6908:
    ld a, a                                       ; $6908: $7f
    db $ec                                        ; $6909: $ec
    and b                                         ; $690a: $a0
    push hl                                       ; $690b: $e5
    cp $57                                        ; $690c: $fe $57
    sbc e                                         ; $690e: $9b
    ld b, d                                       ; $690f: $42
    sbc d                                         ; $6910: $9a
    inc bc                                        ; $6911: $03
    inc hl                                        ; $6912: $23
    inc bc                                        ; $6913: $03
    xor d                                         ; $6914: $aa
    cp l                                          ; $6915: $bd
    dec e                                         ; $6916: $1d
    pop af                                        ; $6917: $f1
    dec b                                         ; $6918: $05
    cp h                                          ; $6919: $bc
    cp l                                          ; $691a: $bd
    ld e, e                                       ; $691b: $5b
    or h                                          ; $691c: $b4
    or a                                          ; $691d: $b7
    jp c, Jump_038_6eb1                           ; $691e: $da $b1 $6e

    jp nc, Jump_000_12a8                          ; $6921: $d2 $a8 $12

    inc h                                         ; $6924: $24
    xor c                                         ; $6925: $a9
    ld c, $37                                     ; $6926: $0e $37
    jp hl                                         ; $6928: $e9


    dec hl                                        ; $6929: $2b
    ld c, e                                       ; $692a: $4b
    or l                                          ; $692b: $b5
    or c                                          ; $692c: $b1
    ld c, c                                       ; $692d: $49
    jp z, Jump_038_6294                           ; $692e: $ca $94 $62

    rlca                                          ; $6931: $07
    dec l                                         ; $6932: $2d
    ld a, [$181a]                                 ; $6933: $fa $1a $18
    jr nc, @-$79                                  ; $6936: $30 $85

    ld hl, $4939                                  ; $6938: $21 $39 $49
    pop hl                                        ; $693b: $e1
    adc [hl]                                      ; $693c: $8e
    ld hl, sp+$02                                 ; $693d: $f8 $02
    sbc $ae                                       ; $693f: $de $ae
    dec d                                         ; $6941: $15
    ret z                                         ; $6942: $c8

    and a                                         ; $6943: $a7
    add c                                         ; $6944: $81
    ld h, c                                       ; $6945: $61
    pop af                                        ; $6946: $f1
    sub [hl]                                      ; $6947: $96
    ld sp, $7008                                  ; $6948: $31 $08 $70
    push de                                       ; $694b: $d5
    ld [$7f22], a                                 ; $694c: $ea $22 $7f
    adc c                                         ; $694f: $89
    sbc d                                         ; $6950: $9a
    ld b, $7f                                     ; $6951: $06 $7f
    xor $c8                                       ; $6953: $ee $c8
    sbc a                                         ; $6955: $9f
    add l                                         ; $6956: $85
    rst $08                                       ; $6957: $cf
    push bc                                       ; $6958: $c5
    xor e                                         ; $6959: $ab
    ld a, [$5623]                                 ; $695a: $fa $23 $56
    add a                                         ; $695d: $87
    pop de                                        ; $695e: $d1
    cp l                                          ; $695f: $bd
    add hl, sp                                    ; $6960: $39
    sub $1d                                       ; $6961: $d6 $1d
    xor d                                         ; $6963: $aa
    ldh a, [rNR34]                                ; $6964: $f0 $1e
    ld [hl], d                                    ; $6966: $72
    ld d, e                                       ; $6967: $53
    sbc e                                         ; $6968: $9b
    push af                                       ; $6969: $f5
    ldh a, [$93]                                  ; $696a: $f0 $93
    cp [hl]                                       ; $696c: $be
    rst $08                                       ; $696d: $cf
    ld a, d                                       ; $696e: $7a
    add a                                         ; $696f: $87
    db $e4                                        ; $6970: $e4
    ld c, c                                       ; $6971: $49
    pop hl                                        ; $6972: $e1
    adc [hl]                                      ; $6973: $8e
    ld hl, sp+$02                                 ; $6974: $f8 $02
    sbc $0e                                       ; $6976: $de $0e
    ld e, d                                       ; $6978: $5a
    xor b                                         ; $6979: $a8
    db $e3                                        ; $697a: $e3
    ld a, c                                       ; $697b: $79
    xor e                                         ; $697c: $ab
    ld b, e                                       ; $697d: $43
    ld [$9758], a                                 ; $697e: $ea $58 $97
    dec [hl]                                      ; $6981: $35
    and d                                         ; $6982: $a2
    push bc                                       ; $6983: $c5
    sbc l                                         ; $6984: $9d
    db $fd                                        ; $6985: $fd
    and e                                         ; $6986: $a3
    xor e                                         ; $6987: $ab
    ccf                                           ; $6988: $3f
    ld b, c                                       ; $6989: $41
    sub d                                         ; $698a: $92
    ld [hl], e                                    ; $698b: $73
    rst $28                                       ; $698c: $ef
    ld d, a                                       ; $698d: $57
    or l                                          ; $698e: $b5
    ld [$fe7e], a                                 ; $698f: $ea $7e $fe
    jp z, $ca0c                                   ; $6992: $ca $0c $ca

    ld e, d                                       ; $6995: $5a
    jr nc, @-$06                                  ; $6996: $30 $f8

    call $8b74                                    ; $6998: $cd $74 $8b
    adc d                                         ; $699b: $8a
    ccf                                           ; $699c: $3f
    ld l, a                                       ; $699d: $6f
    rrca                                          ; $699e: $0f
    add l                                         ; $699f: $85
    ld [$7243], sp                                ; $69a0: $08 $43 $72
    ld c, c                                       ; $69a3: $49
    pop hl                                        ; $69a4: $e1
    adc [hl]                                      ; $69a5: $8e
    ld hl, sp+$02                                 ; $69a6: $f8 $02
    sbc $b2                                       ; $69a8: $de $b2
    ld [de], a                                    ; $69aa: $12
    sbc e                                         ; $69ab: $9b
    ld a, c                                       ; $69ac: $79
    db $eb                                        ; $69ad: $eb
    ld e, b                                       ; $69ae: $58
    ld l, a                                       ; $69af: $6f
    ld b, a                                       ; $69b0: $47
    ld e, [hl]                                    ; $69b1: $5e
    adc e                                         ; $69b2: $8b
    ld h, b                                       ; $69b3: $60
    sbc c                                         ; $69b4: $99
    ld a, b                                       ; $69b5: $78
    call nz, $dad8                                ; $69b6: $c4 $d8 $da
    jp nc, Jump_000_1967                          ; $69b9: $d2 $67 $19

Call_038_69bc:
    cp h                                          ; $69bc: $bc
    inc h                                         ; $69bd: $24
    db $ed                                        ; $69be: $ed
    inc l                                         ; $69bf: $2c
    inc h                                         ; $69c0: $24
    jp hl                                         ; $69c1: $e9


    ld c, l                                       ; $69c2: $4d
    add hl, bc                                    ; $69c3: $09
    reti                                          ; $69c4: $d9


    dec a                                         ; $69c5: $3d
    pop bc                                        ; $69c6: $c1
    ld bc, $143d                                  ; $69c7: $01 $3d $14
    ld [hl+], a                                   ; $69ca: $22
    ld d, h                                       ; $69cb: $54
    xor e                                         ; $69cc: $ab
    ld e, $7e                                     ; $69cd: $1e $7e
    jp nc, Jump_038_6524                          ; $69cf: $d2 $24 $65

    ld c, d                                       ; $69d2: $4a
    db $dd                                        ; $69d3: $dd
    xor a                                         ; $69d4: $af
    sub b                                         ; $69d5: $90
    jr nc, jr_038_6a57                            ; $69d6: $30 $7f

    ldh [$ed], a                                  ; $69d8: $e0 $ed
    and a                                         ; $69da: $a7
    ld e, b                                       ; $69db: $58
    cp h                                          ; $69dc: $bc
    ld d, $21                                     ; $69dd: $16 $21
    call Call_038_4901                            ; $69df: $cd $01 $49
    ld h, c                                       ; $69e2: $61
    ld [hl], h                                    ; $69e3: $74
    rst $28                                       ; $69e4: $ef
    sbc $c8                                       ; $69e5: $de $c8
    ld a, [$1282]                                 ; $69e7: $fa $82 $12
    ld [c], a                                     ; $69ea: $e2
    ldh [$cf], a                                  ; $69eb: $e0 $cf
    db $db                                        ; $69ed: $db
    ld de, $c05f                                  ; $69ee: $11 $5f $c0
    ld e, e                                       ; $69f1: $5b
    sub $f7                                       ; $69f2: $d6 $f7
    sub b                                         ; $69f4: $90
    sbc e                                         ; $69f5: $9b
    rst $30                                       ; $69f6: $f7
    ld e, h                                       ; $69f7: $5c
    db $fd                                        ; $69f8: $fd
    ld de, $1dab                                  ; $69f9: $11 $ab $1d
    ld e, e                                       ; $69fc: $5b
    ld b, [hl]                                    ; $69fd: $46
    ld h, a                                       ; $69fe: $67
    ld l, e                                       ; $69ff: $6b
    xor c                                         ; $6a00: $a9
    ld h, e                                       ; $6a01: $63
    db $dd                                        ; $6a02: $dd

Jump_038_6a03:
    add h                                         ; $6a03: $84
    dec h                                         ; $6a04: $25
    ld l, $39                                     ; $6a05: $2e $39
    ld a, $c4                                     ; $6a07: $3e $c4
    or l                                          ; $6a09: $b5
    dec h                                         ; $6a0a: $25
    or c                                          ; $6a0b: $b1
    sub [hl]                                      ; $6a0c: $96
    ld l, d                                       ; $6a0d: $6a
    rst $00                                       ; $6a0e: $c7
    cp d                                          ; $6a0f: $ba
    and e                                         ; $6a10: $a3
    ld l, b                                       ; $6a11: $68

Jump_038_6a12:
    ld [c], a                                     ; $6a12: $e2
    cp d                                          ; $6a13: $ba
    sub [hl]                                      ; $6a14: $96
    sub a                                         ; $6a15: $97
    ld c, b                                       ; $6a16: $48
    pop hl                                        ; $6a17: $e1
    ld e, h                                       ; $6a18: $5c
    cp h                                          ; $6a19: $bc
    xor d                                         ; $6a1a: $aa
    ccf                                           ; $6a1b: $3f
    ld h, d                                       ; $6a1c: $62
    dec l                                         ; $6a1d: $2d
    push bc                                       ; $6a1e: $c5
    ldh [$af], a                                  ; $6a1f: $e0 $af
    ld e, a                                       ; $6a21: $5f
    ld de, $8ed5                                  ; $6a22: $11 $d5 $8e
    push af                                       ; $6a25: $f5
    halt                                          ; $6a26: $76
    add sp, $66                                   ; $6a27: $e8 $66
    ld [de], a                                    ; $6a29: $12
    inc b                                         ; $6a2a: $04
    ld d, c                                       ; $6a2b: $51
    sub $08                                       ; $6a2c: $d6 $08
    ld e, [hl]                                    ; $6a2e: $5e
    db $ec                                        ; $6a2f: $ec
    ldh [rNR51], a                                ; $6a30: $e0 $25
    xor h                                         ; $6a32: $ac
    push bc                                       ; $6a33: $c5
    ld bc, $dede                                  ; $6a34: $01 $de $de
    cp $6e                                        ; $6a37: $fe $6e
    sbc d                                         ; $6a39: $9a
    inc bc                                        ; $6a3a: $03
    ld c, c                                       ; $6a3b: $49
    pop hl                                        ; $6a3c: $e1
    adc [hl]                                      ; $6a3d: $8e
    ld hl, sp+$02                                 ; $6a3e: $f8 $02
    sbc $3e                                       ; $6a40: $de $3e
    ld d, e                                       ; $6a42: $53
    jp nz, Jump_000_1d5b                          ; $6a43: $c2 $5b $1d

    ld d, d                                       ; $6a46: $52
    db $fd                                        ; $6a47: $fd
    ld e, c                                       ; $6a48: $59
    rst $00                                       ; $6a49: $c7
    cp c                                          ; $6a4a: $b9
    jp c, $265b                                   ; $6a4b: $da $5b $26

    ld a, a                                       ; $6a4e: $7f
    rst $30                                       ; $6a4f: $f7
    rst $08                                       ; $6a50: $cf
    rst $18                                       ; $6a51: $df
    add b                                         ; $6a52: $80
    jp c, Jump_038_541b                           ; $6a53: $da $1b $54

    dec sp                                        ; $6a56: $3b

jr_038_6a57:
    sub $58                                       ; $6a57: $d6 $58
    ld b, [hl]                                    ; $6a59: $46
    ld h, a                                       ; $6a5a: $67
    ld l, e                                       ; $6a5b: $6b
    pop bc                                        ; $6a5c: $c1
    ld a, $cb                                     ; $6a5d: $3e $cb
    ld d, a                                       ; $6a5f: $57
    ld c, b                                       ; $6a60: $48
    ld d, [hl]                                    ; $6a61: $56
    ld b, h                                       ; $6a62: $44
    xor h                                         ; $6a63: $ac
    or $9e                                        ; $6a64: $f6 $9e
    adc e                                         ; $6a66: $8b
    ld d, a                                       ; $6a67: $57
    push af                                       ; $6a68: $f5
    ld b, a                                       ; $6a69: $47
    xor h                                         ; $6a6a: $ac
    ld d, [hl]                                    ; $6a6b: $56
    call Call_038_5fbc                            ; $6a6c: $cd $bc $5f
    push af                                       ; $6a6f: $f5
    xor $18                                       ; $6a70: $ee $18
    rlca                                          ; $6a72: $07
    adc $3d                                       ; $6a73: $ce $3d
    ld [bc], a                                    ; $6a75: $02
    ld a, d                                       ; $6a76: $7a
    scf                                           ; $6a77: $37
    push hl                                       ; $6a78: $e5
    rst $08                                       ; $6a79: $cf
    ld b, a                                       ; $6a7a: $47
    ld c, a                                       ; $6a7b: $4f
    ld hl, sp-$76                                 ; $6a7c: $f8 $8a
    or l                                          ; $6a7e: $b5
    ldh [$80], a                                  ; $6a7f: $e0 $80

jr_038_6a81:
    jr z, jr_038_6a81                             ; $6a81: $28 $fe

    xor d                                         ; $6a83: $aa
    ld d, l                                       ; $6a84: $55
    db $e3                                        ; $6a85: $e3
    ld l, l                                       ; $6a86: $6d
    rst $38                                       ; $6a87: $ff
    ld d, c                                       ; $6a88: $51
    ld [$0fe0], a                                 ; $6a89: $ea $e0 $0f
    adc h                                         ; $6a8c: $8c
    ldh [$ed], a                                  ; $6a8d: $e0 $ed
    and b                                         ; $6a8f: $a0
    ld h, l                                       ; $6a90: $65
    add e                                         ; $6a91: $83
    ccf                                           ; $6a92: $3f
    ldh a, [$f6]                                  ; $6a93: $f0 $f6
    or $77                                        ; $6a95: $f6 $77
    ld de, $1cd2                                  ; $6a97: $11 $d2 $1c
    ld c, c                                       ; $6a9a: $49
    pop hl                                        ; $6a9b: $e1
    adc [hl]                                      ; $6a9c: $8e
    ld hl, sp+$02                                 ; $6a9d: $f8 $02
    sbc $b2                                       ; $6a9f: $de $b2
    cp [hl]                                       ; $6aa1: $be
    add a                                         ; $6aa2: $87
    call c, $e7bc                                 ; $6aa3: $dc $bc $e7
    ld [$588f], a                                 ; $6aa6: $ea $8f $58
    db $ed                                        ; $6aa9: $ed
    ld e, b                                       ; $6aaa: $58
    ld [hl], a                                    ; $6aab: $77
    db $e4                                        ; $6aac: $e4
    xor b                                         ; $6aad: $a8
    ld c, $5e                                     ; $6aae: $0e $5e
    sub h                                         ; $6ab0: $94
    ld [hl+], a                                   ; $6ab1: $22
    inc h                                         ; $6ab2: $24
    xor [hl]                                      ; $6ab3: $ae
    adc [hl]                                      ; $6ab4: $8e
    xor h                                         ; $6ab5: $ac
    ld e, a                                       ; $6ab6: $5f
    ld de, $e999                                  ; $6ab7: $11 $99 $e9
    rst $10                                       ; $6aba: $d7
    sbc $de                                       ; $6abb: $de $de
    dec l                                         ; $6abd: $2d
    jp c, $243b                                   ; $6abe: $da $3b $24

    rlca                                          ; $6ac1: $07
    ld c, c                                       ; $6ac2: $49
    ld c, d                                       ; $6ac3: $4a
    ld hl, sp-$55                                 ; $6ac4: $f8 $ab
    ld c, $77                                     ; $6ac6: $0e $77
    call nz, $f017                                ; $6ac8: $c4 $17 $f0
    or $1e                                        ; $6acb: $f6 $1e
    and d                                         ; $6acd: $a2
    ld a, e                                       ; $6ace: $7b
    xor d                                         ; $6acf: $aa
    inc sp                                        ; $6ad0: $33
    ld a, [de]                                    ; $6ad1: $1a
    db $fc                                        ; $6ad2: $fc
    cp c                                          ; $6ad3: $b9
    inc hl                                        ; $6ad4: $23
    ld a, a                                       ; $6ad5: $7f
    ld d, $3e                                     ; $6ad6: $16 $3e
    ld d, a                                       ; $6ad8: $57
    add a                                         ; $6ad9: $87
    ei                                            ; $6ada: $fb
    dec d                                         ; $6adb: $15
    ld d, c                                       ; $6adc: $51
    dec e                                         ; $6add: $1d
    db $fc                                        ; $6ade: $fc
    push af                                       ; $6adf: $f5
    ld l, a                                       ; $6ae0: $6f
    and $fb                                       ; $6ae1: $e6 $fb
    ld e, a                                       ; $6ae3: $5f
    dec c                                         ; $6ae4: $0d
    cp l                                          ; $6ae5: $bd
    add a                                         ; $6ae6: $87
    add sp, $73                                   ; $6ae7: $e8 $73
    cp a                                          ; $6ae9: $bf
    ld a, [de]                                    ; $6aea: $1a
    rst $00                                       ; $6aeb: $c7
    jp nc, $f211                                  ; $6aec: $d2 $11 $f2

    add hl, bc                                    ; $6aef: $09
    ld l, b                                       ; $6af0: $68
    ld h, [hl]                                    ; $6af1: $66
    inc [hl]                                      ; $6af2: $34
    sub b                                         ; $6af3: $90
    ld hl, $d26d                                  ; $6af4: $21 $6d $d2
    ld h, a                                       ; $6af7: $67
    dec e                                         ; $6af8: $1d
    push bc                                       ; $6af9: $c5
    add c                                         ; $6afa: $81
    jr nc, @-$79                                  ; $6afb: $30 $85

    ld a, [de]                                    ; $6afd: $1a
    ld a, e                                       ; $6afe: $7b

Call_038_6aff:
    ld [hl], e                                    ; $6aff: $73
    xor h                                         ; $6b00: $ac
    dec sp                                        ; $6b01: $3b
    rst $10                                       ; $6b02: $d7
    ld b, l                                       ; $6b03: $45
    xor c                                         ; $6b04: $a9
    rst $08                                       ; $6b05: $cf
    cp l                                          ; $6b06: $bd
    ret c                                         ; $6b07: $d8

    ld [$0770], a                                 ; $6b08: $ea $70 $07
    dec l                                         ; $6b0b: $2d
    rst $30                                       ; $6b0c: $f7
    cp a                                          ; $6b0d: $bf
    ld a, [de]                                    ; $6b0e: $1a
    call c, $3f91                                 ; $6b0f: $dc $91 $3f
    dec bc                                        ; $6b12: $0b
    ld [hl], a                                    ; $6b13: $77
    ldh [$c2], a                                  ; $6b14: $e0 $c2
    add b                                         ; $6b16: $80
    jr jr_038_6b8d                                ; $6b17: $18 $74

    cpl                                           ; $6b19: $2f
    ld l, l                                       ; $6b1a: $6d
    jp hl                                         ; $6b1b: $e9


    ld a, [hl-]                                   ; $6b1c: $3a
    ei                                            ; $6b1d: $fb
    db $10                                        ; $6b1e: $10
    add e                                         ; $6b1f: $83
    xor $50                                       ; $6b20: $ee $50
    add l                                         ; $6b22: $85
    rst $30                                       ; $6b23: $f7
    sub b                                         ; $6b24: $90
    sbc e                                         ; $6b25: $9b
    jp c, Jump_038_5bcc                           ; $6b26: $da $cc $5b

    add d                                         ; $6b29: $82
    inc h                                         ; $6b2a: $24
    push de                                       ; $6b2b: $d5
    pop bc                                        ; $6b2c: $c1
    ld e, a                                       ; $6b2d: $5f
    ld e, a                                       ; $6b2e: $5f
    ld [hl+], a                                   ; $6b2f: $22
    add b                                         ; $6b30: $80
    db $d3                                        ; $6b31: $d3
    inc e                                         ; $6b32: $1c
    inc hl                                        ; $6b33: $23
    inc bc                                        ; $6b34: $03
    sbc d                                         ; $6b35: $9a
    inc e                                         ; $6b36: $1c
    sub h                                         ; $6b37: $94
    ld [hl], b                                    ; $6b38: $70
    or l                                          ; $6b39: $b5
    and l                                         ; $6b3a: $a5
    inc hl                                        ; $6b3b: $23
    cp [hl]                                       ; $6b3c: $be
    add b                                         ; $6b3d: $80
    or a                                          ; $6b3e: $b7
    ld [hl], a                                    ; $6b3f: $77
    adc e                                         ; $6b40: $8b
    or $f6                                        ; $6b41: $f6 $f6
    ld d, e                                       ; $6b43: $53
    ld e, d                                       ; $6b44: $5a
    db $ed                                        ; $6b45: $ed
    ld e, b                                       ; $6b46: $58
    ld [hl], a                                    ; $6b47: $77
    or h                                          ; $6b48: $b4
    ld e, d                                       ; $6b49: $5a
    db $ed                                        ; $6b4a: $ed
    ld l, l                                       ; $6b4b: $6d
    and $e7                                       ; $6b4c: $e6 $e7
    and b                                         ; $6b4e: $a0
    ld d, b                                       ; $6b4f: $50
    or l                                          ; $6b50: $b5
    cp d                                          ; $6b51: $ba
    jp c, Jump_038_6eb1                           ; $6b52: $da $b1 $6e

    jp nc, $0ea8                                  ; $6b55: $d2 $a8 $0e

    ld e, [hl]                                    ; $6b58: $5e
    sub h                                         ; $6b59: $94
    ld [hl+], a                                   ; $6b5a: $22
    inc h                                         ; $6b5b: $24
    xor [hl]                                      ; $6b5c: $ae
    adc [hl]                                      ; $6b5d: $8e
    xor h                                         ; $6b5e: $ac
    ld e, a                                       ; $6b5f: $5f
    ld de, $e999                                  ; $6b60: $11 $99 $e9
    rst $10                                       ; $6b63: $d7
    sbc $21                                       ; $6b64: $de $21
    add hl, sp                                    ; $6b66: $39
    ld c, c                                       ; $6b67: $49
    ld c, d                                       ; $6b68: $4a
    ld hl, sp-$55                                 ; $6b69: $f8 $ab
    ld c, $77                                     ; $6b6b: $0e $77
    call nz, $f017                                ; $6b6d: $c4 $17 $f0
    or $7d                                        ; $6b70: $f6 $7d
    add h                                         ; $6b72: $84
    ld l, d                                       ; $6b73: $6a
    ld d, l                                       ; $6b74: $55
    rst $00                                       ; $6b75: $c7
    ld a, d                                       ; $6b76: $7a
    sbc e                                         ; $6b77: $9b
    and [hl]                                      ; $6b78: $a6
    ld l, c                                       ; $6b79: $69
    sbc c                                         ; $6b7a: $99
    db $fc                                        ; $6b7b: $fc
    add l                                         ; $6b7c: $85
    inc e                                         ; $6b7d: $1c
    ld h, l                                       ; $6b7e: $65
    ld a, l                                       ; $6b7f: $7d
    cp e                                          ; $6b80: $bb
    adc [hl]                                      ; $6b81: $8e
    jp $243b                                      ; $6b82: $c3 $3b $24


    rlca                                          ; $6b85: $07
    ld c, c                                       ; $6b86: $49
    pop hl                                        ; $6b87: $e1
    adc [hl]                                      ; $6b88: $8e
    ld hl, sp+$02                                 ; $6b89: $f8 $02
    sbc $be                                       ; $6b8b: $de $be

jr_038_6b8d:
    rst $08                                       ; $6b8d: $cf
    ld a, d                                       ; $6b8e: $7a
    set 7, d                                      ; $6b8f: $cb $fa
    ld e, $72                                     ; $6b91: $1e $72
    add e                                         ; $6b93: $83
    ld [hl], e                                    ; $6b94: $73
    push af                                       ; $6b95: $f5
    ld b, a                                       ; $6b96: $47
    xor h                                         ; $6b97: $ac
    ld d, [hl]                                    ; $6b98: $56
    ld b, l                                       ; $6b99: $45
    cp $e8                                        ; $6b9a: $fe $e8
    ld d, a                                       ; $6b9c: $57
    sub [hl]                                      ; $6b9d: $96
    ld h, [hl]                                    ; $6b9e: $66
    cp [hl]                                       ; $6b9f: $be
    ld e, a                                       ; $6ba0: $5f
    and d                                         ; $6ba1: $a2
    cp l                                          ; $6ba2: $bd
    ld h, l                                       ; $6ba3: $65
    inc bc                                        ; $6ba4: $03
    ld h, c                                       ; $6ba5: $61
    ld c, b                                       ; $6ba6: $48
    sub e                                         ; $6ba7: $93
    jp nz, $ba1d                                  ; $6ba8: $c2 $1d $ba

    db $e4                                        ; $6bab: $e4
    rst $38                                       ; $6bac: $ff
    ld l, b                                       ; $6bad: $68
    or l                                          ; $6bae: $b5
    and l                                         ; $6baf: $a5
    inc hl                                        ; $6bb0: $23
    ld b, a                                       ; $6bb1: $47
    sbc l                                         ; $6bb2: $9d
    xor e                                         ; $6bb3: $ab
    jp $aad5                                      ; $6bb4: $c3 $d5 $aa


    xor h                                         ; $6bb7: $ac
    ld a, h                                       ; $6bb8: $7c
    push bc                                       ; $6bb9: $c5
    rra                                           ; $6bba: $1f
    jp nz, $eab9                                  ; $6bbb: $c2 $b9 $ea

    xor b                                         ; $6bbe: $a8
    ld h, e                                       ; $6bbf: $63
    cp l                                          ; $6bc0: $bd

Jump_038_6bc1:
    dec a                                         ; $6bc1: $3d
    pop hl                                        ; $6bc2: $e1
    dec hl                                        ; $6bc3: $2b
    sub $52                                       ; $6bc4: $d6 $52
    or d                                          ; $6bc6: $b2
    ld a, [hl+]                                   ; $6bc7: $2a
    db $eb                                        ; $6bc8: $eb
    ld a, e                                       ; $6bc9: $7b
    ret z                                         ; $6bca: $c8

    call $ee7b                                    ; $6bcb: $cd $7b $ee
    ld e, l                                       ; $6bce: $5d
    adc c                                         ; $6bcf: $89
    halt                                          ; $6bd0: $76
    rst $18                                       ; $6bd1: $df
    and a                                         ; $6bd2: $a7
    ld l, h                                       ; $6bd3: $6c
    ld e, b                                       ; $6bd4: $58
    ld h, b                                       ; $6bd5: $60
    ld c, b                                       ; $6bd6: $48
    ld c, $49                                     ; $6bd7: $0e $49
    pop hl                                        ; $6bd9: $e1
    adc [hl]                                      ; $6bda: $8e
    ld hl, sp+$02                                 ; $6bdb: $f8 $02
    sbc $0e                                       ; $6bdd: $de $0e
    ld e, d                                       ; $6bdf: $5a
    ret z                                         ; $6be0: $c8

    ld e, a                                       ; $6be1: $5f
    or c                                          ; $6be2: $b1
    sub [hl]                                      ; $6be3: $96
    xor l                                         ; $6be4: $ad
    halt                                          ; $6be5: $76
    xor h                                         ; $6be6: $ac
    or a                                          ; $6be7: $b7
    adc h                                         ; $6be8: $8c
    adc $d6                                       ; $6be9: $ce $d6
    ld [hl], d                                    ; $6beb: $72
    ld l, $5e                                     ; $6bec: $2e $5e
    push de                                       ; $6bee: $d5
    rra                                           ; $6bef: $1f
    or c                                          ; $6bf0: $b1
    and a                                         ; $6bf1: $a7
    ld e, d                                       ; $6bf2: $5a
    ld e, e                                       ; $6bf3: $5b
    adc d                                         ; $6bf4: $8a
    adc [hl]                                      ; $6bf5: $8e
    or l                                          ; $6bf6: $b5
    ld [hl], h                                    ; $6bf7: $74
    ldh [$8d], a                                  ; $6bf8: $e0 $8d
    pop bc                                        ; $6bfa: $c1
    ld b, b                                       ; $6bfb: $40
    cp $bc                                        ; $6bfc: $fe $bc
    dec e                                         ; $6bfe: $1d
    cp d                                          ; $6bff: $ba
    sbc c                                         ; $6c00: $99
    inc b                                         ; $6c01: $04
    ld b, c                                       ; $6c02: $41
    cp b                                          ; $6c03: $b8
    ld h, h                                       ; $6c04: $64
    ld d, l                                       ; $6c05: $55
    db $ed                                        ; $6c06: $ed
    ld e, b                                       ; $6c07: $58
    ld c, e                                       ; $6c08: $4b
    sub e                                         ; $6c09: $93
    dec e                                         ; $6c0a: $1d
    ld d, h                                       ; $6c0b: $54
    ld l, l                                       ; $6c0c: $6d
    ld d, [hl]                                    ; $6c0d: $56
    sub $01                                       ; $6c0e: $d6 $01
    sub d                                         ; $6c10: $92
    sbc b                                         ; $6c11: $98
    pop bc                                        ; $6c12: $c1
    sub b                                         ; $6c13: $90
    inc e                                         ; $6c14: $1c
    ld c, c                                       ; $6c15: $49
    pop hl                                        ; $6c16: $e1
    adc [hl]                                      ; $6c17: $8e
    ld hl, sp+$02                                 ; $6c18: $f8 $02
    sbc $be                                       ; $6c1a: $de $be

jr_038_6c1c:
    rst $08                                       ; $6c1c: $cf
    ld a, d                                       ; $6c1d: $7a
    set 7, d                                      ; $6c1e: $cb $fa
    ld e, $72                                     ; $6c20: $1e $72
    add e                                         ; $6c22: $83
    ld [hl], e                                    ; $6c23: $73
    push af                                       ; $6c24: $f5
    ld b, a                                       ; $6c25: $47
    xor h                                         ; $6c26: $ac
    ld d, [hl]                                    ; $6c27: $56
    ld [hl], l                                    ; $6c28: $75
    xor h                                         ; $6c29: $ac
    or a                                          ; $6c2a: $b7
    or e                                          ; $6c2b: $b3
    ld a, c                                       ; $6c2c: $79
    ret nc                                        ; $6c2d: $d0

    or h                                          ; $6c2e: $b4
    ld [hl], a                                    ; $6c2f: $77
    rlca                                          ; $6c30: $07
    ld e, b                                       ; $6c31: $58
    sbc d                                         ; $6c32: $9a
    ld sp, hl                                     ; $6c33: $f9
    halt                                          ; $6c34: $76
    dec e                                         ; $6c35: $1d
    add a                                         ; $6c36: $87
    or a                                          ; $6c37: $b7
    ld l, h                                       ; $6c38: $6c
    jr nz, jr_038_6c47                            ; $6c39: $20 $0c

    ld l, c                                       ; $6c3b: $69
    ld d, d                                       ; $6c3c: $52
    jr jr_038_6c1c                                ; $6c3d: $18 $dd

    ld de, $c1d7                                  ; $6c3f: $11 $d7 $c1
    add $7e                                       ; $6c42: $c6 $7e
    adc b                                         ; $6c44: $88
    ld l, e                                       ; $6c45: $6b
    ld c, e                                       ; $6c46: $4b

jr_038_6c47:
    xor b                                         ; $6c47: $a8
    cp l                                          ; $6c48: $bd
    ld b, c                                       ; $6c49: $41
    ld e, h                                       ; $6c4a: $5c
    dec de                                        ; $6c4b: $1b
    ld d, $e8                                     ; $6c4c: $16 $e8
    ld a, [hl+]                                   ; $6c4e: $2a
    xor c                                         ; $6c4f: $a9
    ld h, e                                       ; $6c50: $63
    dec sp                                        ; $6c51: $3b
    ld a, [c]                                     ; $6c52: $f2
    db $d3                                        ; $6c53: $d3
    inc [hl]                                      ; $6c54: $34
    rlca                                          ; $6c55: $07
    ld c, c                                       ; $6c56: $49
    ld h, c                                       ; $6c57: $61
    ld [hl], h                                    ; $6c58: $74
    ld b, a                                       ; $6c59: $47
    ld a, h                                       ; $6c5a: $7c
    ld bc, $df6f                                  ; $6c5b: $01 $6f $df
    ld h, a                                       ; $6c5e: $67
    cp l                                          ; $6c5f: $bd
    ld [hl], l                                    ; $6c60: $75
    xor h                                         ; $6c61: $ac
    or a                                          ; $6c62: $b7
    inc bc                                        ; $6c63: $03
    sub [hl]                                      ; $6c64: $96
    db $e3                                        ; $6c65: $e3
    xor a                                         ; $6c66: $af
    rla                                           ; $6c67: $17
    cp h                                          ; $6c68: $bc
    dec e                                         ; $6c69: $1d
    cp d                                          ; $6c6a: $ba
    ld [$ace1], sp                                ; $6c6b: $08 $e1 $ac
    jp c, $96b1                                   ; $6c6e: $da $b1 $96

    ld h, $8d                                     ; $6c71: $26 $8d
    ld a, [hl+]                                   ; $6c73: $2a
    ld e, c                                       ; $6c74: $59

Jump_038_6c75:
    ld c, c                                       ; $6c75: $49
    ld h, a                                       ; $6c76: $67
    cp c                                          ; $6c77: $b9
    ld l, b                                       ; $6c78: $68
    and $21                                       ; $6c79: $e6 $21
    ld c, l                                       ; $6c7b: $4d
    ld a, [bc]                                    ; $6c7c: $0a
    and e                                         ; $6c7d: $a3
    dec sp                                        ; $6c7e: $3b
    ld [c], a                                     ; $6c7f: $e2
    ld a, [hl-]                                   ; $6c80: $3a
    ret c                                         ; $6c81: $d8

    ret c                                         ; $6c82: $d8

    rrca                                          ; $6c83: $0f
    ld [hl], c                                    ; $6c84: $71
    ld l, l                                       ; $6c85: $6d
    add hl, bc                                    ; $6c86: $09
    or l                                          ; $6c87: $b5
    scf                                           ; $6c88: $37
    adc b                                         ; $6c89: $88
    ld l, e                                       ; $6c8a: $6b
    jp $5d02                                      ; $6c8b: $c3 $02 $5d


    dec h                                         ; $6c8e: $25
    ld [hl], l                                    ; $6c8f: $75
    ld l, h                                       ; $6c90: $6c
    ld b, a                                       ; $6c91: $47
    ld a, [hl]                                    ; $6c92: $7e
    sbc d                                         ; $6c93: $9a
    and $49                                       ; $6c94: $e6 $49
    ld h, c                                       ; $6c96: $61
    ld [hl], h                                    ; $6c97: $74
    ld b, a                                       ; $6c98: $47
    ld a, h                                       ; $6c99: $7c
    ld bc, $df6f                                  ; $6c9a: $01 $6f $df
    ld h, a                                       ; $6c9d: $67
    cp l                                          ; $6c9e: $bd
    ld [hl], l                                    ; $6c9f: $75
    xor h                                         ; $6ca0: $ac
    or a                                          ; $6ca1: $b7
    inc bc                                        ; $6ca2: $03
    sub [hl]                                      ; $6ca3: $96
    db $e3                                        ; $6ca4: $e3
    xor a                                         ; $6ca5: $af
    rla                                           ; $6ca6: $17
    cp h                                          ; $6ca7: $bc
    dec e                                         ; $6ca8: $1d
    cp d                                          ; $6ca9: $ba
    ld [$ace1], sp                                ; $6caa: $08 $e1 $ac
    jp c, $96b1                                   ; $6cad: $da $b1 $96

    adc [hl]                                      ; $6cb0: $8e
    inc e                                         ; $6cb1: $1c
    ld d, l                                       ; $6cb2: $55
    or d                                          ; $6cb3: $b2
    sub d                                         ; $6cb4: $92
    adc $72                                       ; $6cb5: $ce $72
    pop de                                        ; $6cb7: $d1
    call z, $9a43                                 ; $6cb8: $cc $43 $9a
    inc d                                         ; $6cbb: $14
    ld b, [hl]                                    ; $6cbc: $46
    ld [hl], a                                    ; $6cbd: $77
    call nz, $b075                                ; $6cbe: $c4 $75 $b0
    or c                                          ; $6cc1: $b1
    rra                                           ; $6cc2: $1f
    ld [c], a                                     ; $6cc3: $e2
    jp c, Jump_038_6a12                           ; $6cc4: $da $12 $6a

    ld l, a                                       ; $6cc7: $6f
    db $10                                        ; $6cc8: $10
    rst $10                                       ; $6cc9: $d7
    add [hl]                                      ; $6cca: $86
    dec b                                         ; $6ccb: $05
    cp d                                          ; $6ccc: $ba
    ld c, d                                       ; $6ccd: $4a
    ld [$8ed8], a                                 ; $6cce: $ea $d8 $8e
    db $fc                                        ; $6cd1: $fc
    inc [hl]                                      ; $6cd2: $34
    call Call_038_4301                            ; $6cd3: $cd $01 $43
    add hl, hl                                    ; $6cd6: $29
    xor l                                         ; $6cd7: $ad
    halt                                          ; $6cd8: $76
    xor h                                         ; $6cd9: $ac
    dec sp                                        ; $6cda: $3b
    ld [hl], d                                    ; $6cdb: $72
    ld d, h                                       ; $6cdc: $54
    ld sp, $7756                                  ; $6cdd: $31 $56 $77

jr_038_6ce0:
    ret nc                                        ; $6ce0: $d0

    add d                                         ; $6ce1: $82
    db $fc                                        ; $6ce2: $fc
    db $dd                                        ; $6ce3: $dd
    push de                                       ; $6ce4: $d5
    ld l, d                                       ; $6ce5: $6a
    rst $28                                       ; $6ce6: $ef
    sub b                                         ; $6ce7: $90

Jump_038_6ce8:
    ld h, $59                                     ; $6ce8: $26 $59
    jp z, $bfd2                                   ; $6cea: $ca $d2 $bf

    scf                                           ; $6ced: $37
    scf                                           ; $6cee: $37
    ld sp, hl                                     ; $6cef: $f9
    ld [de], a                                    ; $6cf0: $12
    cp c                                          ; $6cf1: $b9
    ld h, h                                       ; $6cf2: $64
    ld c, b                                       ; $6cf3: $48
    ld c, $4c                                     ; $6cf4: $0e $4c
    cp $e8                                        ; $6cf6: $fe $e8
    rst $08                                       ; $6cf8: $cf
    cp [hl]                                       ; $6cf9: $be
    ld b, b                                       ; $6cfa: $40
    ld h, h                                       ; $6cfb: $64
    dec a                                         ; $6cfc: $3d
    inc l                                         ; $6cfd: $2c
    scf                                           ; $6cfe: $37
    add h                                         ; $6cff: $84
    ld l, d                                       ; $6d00: $6a
    ld [hl], l                                    ; $6d01: $75
    xor [hl]                                      ; $6d02: $ae
    cp $88                                        ; $6d03: $fe $88
    db $fd                                        ; $6d05: $fd
    sub h                                         ; $6d06: $94
    ld d, [hl]                                    ; $6d07: $56
    dec sp                                        ; $6d08: $3b
    sub $4d                                       ; $6d09: $d6 $4d
    ld a, [de]                                    ; $6d0b: $1a
    ld d, l                                       ; $6d0c: $55
    or l                                          ; $6d0d: $b5
    cp d                                          ; $6d0e: $ba
    inc hl                                        ; $6d0f: $23
    ld b, a                                       ; $6d10: $47
    push af                                       ; $6d11: $f5
    dec hl                                        ; $6d12: $2b
    and d                                         ; $6d13: $a2
    adc [hl]                                      ; $6d14: $8e
    db $ed                                        ; $6d15: $ed
    ret z                                         ; $6d16: $c8

    ld a, a                                       ; $6d17: $7f
    ld a, d                                       ; $6d18: $7a
    inc e                                         ; $6d19: $1c
    ld [$dfe8], a                                 ; $6d1a: $ea $e8 $df
    call z, $e108                                 ; $6d1d: $cc $08 $e1
    call z, $8c5b                                 ; $6d20: $cc $5b $8c
    push de                                       ; $6d23: $d5
    ld b, e                                       ; $6d24: $43
    ld [hl], d                                    ; $6d25: $72
    ld c, c                                       ; $6d26: $49
    xor d                                         ; $6d27: $aa
    xor h                                         ; $6d28: $ac
    rrca                                          ; $6d29: $0f
    rrc l                                         ; $6d2a: $cb $0d
    pop hl                                        ; $6d2c: $e1
    ld e, h                                       ; $6d2d: $5c
    db $fd                                        ; $6d2e: $fd
    ld de, $55ab                                  ; $6d2f: $11 $ab $55
    adc a                                         ; $6d32: $8f
    db $eb                                        ; $6d33: $eb
    ldh a, [$c2]                                  ; $6d34: $f0 $c2
    rst $18                                       ; $6d36: $df
    ld h, [hl]                                    ; $6d37: $66
    adc $bc                                       ; $6d38: $ce $bc
    dec e                                         ; $6d3a: $1d
    ld sp, hl                                     ; $6d3b: $f9
    or e                                          ; $6d3c: $b3
    ld [hl], b                                    ; $6d3d: $70
    ld c, a                                       ; $6d3e: $4f
    ld [hl], l                                    ; $6d3f: $75
    ld b, [hl]                                    ; $6d40: $46
    add e                                         ; $6d41: $83
    ccf                                           ; $6d42: $3f
    ld c, e                                       ; $6d43: $4b
    add a                                         ; $6d44: $87
    ld a, [bc]                                    ; $6d45: $0a
    inc [hl]                                      ; $6d46: $34
    adc [hl]                                      ; $6d47: $8e
    ld b, e                                       ; $6d48: $43
    ld l, l                                       ; $6d49: $6d
    reti                                          ; $6d4a: $d9


    ld b, b                                       ; $6d4b: $40
    jr jr_038_6ce0                                ; $6d4c: $18 $92

    inc bc                                        ; $6d4e: $03
    ld c, c                                       ; $6d4f: $49
    ld h, c                                       ; $6d50: $61
    ld [hl], h                                    ; $6d51: $74
    ld b, a                                       ; $6d52: $47
    ld a, h                                       ; $6d53: $7c
    ld bc, $edef                                  ; $6d54: $01 $ef $ed
    ld a, [hl-]                                   ; $6d57: $3a
    ret c                                         ; $6d58: $d8

    ret c                                         ; $6d59: $d8

    rrca                                          ; $6d5a: $0f
    ld [hl], c                                    ; $6d5b: $71
    ld l, l                                       ; $6d5c: $6d
    ld e, c                                       ; $6d5d: $59
    rst $18                                       ; $6d5e: $df
    ld b, e                                       ; $6d5f: $43
    ld l, [hl]                                    ; $6d60: $6e
    ld [hl], b                                    ; $6d61: $70
    xor [hl]                                      ; $6d62: $ae
    cp $88                                        ; $6d63: $fe $88
    push de                                       ; $6d65: $d5
    xor d                                         ; $6d66: $aa
    sbc c                                         ; $6d67: $99
    inc sp                                        ; $6d68: $33
    ld l, a                                       ; $6d69: $6f
    ccf                                           ; $6d6a: $3f
    and l                                         ; $6d6b: $a5
    xor $06                                       ; $6d6c: $ee $06
    ld a, a                                       ; $6d6e: $7f
    ret nc                                        ; $6d6f: $d0

    db $e3                                        ; $6d70: $e3
    ld h, a                                       ; $6d71: $67
    add c                                         ; $6d72: $81
    db $fc                                        ; $6d73: $fc
    ld a, c                                       ; $6d74: $79
    dec sp                                        ; $6d75: $3b
    ld [hl], h                                    ; $6d76: $74
    inc sp                                        ; $6d77: $33
    add hl, bc                                    ; $6d78: $09
    add d                                         ; $6d79: $82
    ld [hl], b                                    ; $6d7a: $70
    rst $28                                       ; $6d7b: $ef
    adc c                                         ; $6d7c: $89
    ld c, a                                       ; $6d7d: $4f
    cp h                                          ; $6d7e: $bc
    cp d                                          ; $6d7f: $ba
    adc [hl]                                      ; $6d80: $8e
    dec [hl]                                      ; $6d81: $35
    ld [hl], $49                                  ; $6d82: $36 $49
    sbc c                                         ; $6d84: $99
    ld d, d                                       ; $6d85: $52
    ld l, h                                       ; $6d86: $6c
    inc e                                         ; $6d87: $1c
    add a                                         ; $6d88: $87
    jp c, $81b2                                   ; $6d89: $da $b2 $81

    sub b                                         ; $6d8c: $90
    and $a3                                       ; $6d8d: $e6 $a3
    cp l                                          ; $6d8f: $bd
    ld e, e                                       ; $6d90: $5b
    xor l                                         ; $6d91: $ad
    xor d                                         ; $6d92: $aa
    jp $8ee8                                      ; $6d93: $c3 $e8 $8e


    ld hl, sp+$02                                 ; $6d96: $f8 $02
    sbc $de                                       ; $6d98: $de $de
    xor [hl]                                      ; $6d9a: $ae
    add e                                         ; $6d9b: $83
    adc l                                         ; $6d9c: $8d
    dec c                                         ; $6d9d: $0d
    dec bc                                        ; $6d9e: $0b
    jp nz, $f7b9                                  ; $6d9f: $c2 $b9 $f7

    db $10                                        ; $6da2: $10
    add h                                         ; $6da3: $84
    ld l, d                                       ; $6da4: $6a
    ld d, l                                       ; $6da5: $55
    jp nz, Jump_000_0808                          ; $6da6: $c2 $08 $08

    and [hl]                                      ; $6da9: $a6
    call nc, $ae7b                                ; $6daa: $d4 $7b $ae
    cp $88                                        ; $6dad: $fe $88
    push de                                       ; $6daf: $d5
    adc [hl]                                      ; $6db0: $8e
    ld [hl], l                                    ; $6db1: $75
    add hl, de                                    ; $6db2: $19
    sbc l                                         ; $6db3: $9d
    xor l                                         ; $6db4: $ad
    and l                                         ; $6db5: $a5
    add sp, $27                                   ; $6db6: $e8 $27
    rst $20                                       ; $6db8: $e7
    and d                                         ; $6db9: $a2
    sbc a                                         ; $6dba: $9f
    inc d                                         ; $6dbb: $14
    ld sp, hl                                     ; $6dbc: $f9
    cp e                                          ; $6dbd: $bb
    ld a, a                                       ; $6dbe: $7f
    cp $7a                                        ; $6dbf: $fe $7a
    or a                                          ; $6dc1: $b7
    ld l, b                                       ; $6dc2: $68
    ld l, a                                       ; $6dc3: $6f
    sbc d                                         ; $6dc4: $9a
    inc bc                                        ; $6dc5: $03
    and e                                         ; $6dc6: $a3
    cp l                                          ; $6dc7: $bd
    ld e, e                                       ; $6dc8: $5b
    xor l                                         ; $6dc9: $ad
    xor d                                         ; $6dca: $aa
    jp $8ee8                                      ; $6dcb: $c3 $e8 $8e


    ld hl, sp+$02                                 ; $6dce: $f8 $02
    sbc $de                                       ; $6dd0: $de $de
    xor [hl]                                      ; $6dd2: $ae
    add e                                         ; $6dd3: $83
    adc l                                         ; $6dd4: $8d
    dec c                                         ; $6dd5: $0d
    dec bc                                        ; $6dd6: $0b
    jp nz, $f7b9                                  ; $6dd7: $c2 $b9 $f7

    db $10                                        ; $6dda: $10
    add h                                         ; $6ddb: $84
    ld l, d                                       ; $6ddc: $6a
    push de                                       ; $6ddd: $d5
    jp $f372                                      ; $6dde: $c3 $72 $f3


    sbc [hl]                                      ; $6de1: $9e
    xor e                                         ; $6de2: $ab
    ccf                                           ; $6de3: $3f
    ld h, d                                       ; $6de4: $62
    ccf                                           ; $6de5: $3f
    and l                                         ; $6de6: $a5
    xor $e0                                       ; $6de7: $ee $e0
    or l                                          ; $6de9: $b5
    push de                                       ; $6dea: $d5
    ld hl, $9bfd                                  ; $6deb: $21 $fd $9b
    ld sp, hl                                     ; $6dee: $f9
    cp $57                                        ; $6def: $fe $57
    add e                                         ; $6df1: $83
    or a                                          ; $6df2: $b7
    daa                                           ; $6df3: $27
    ld a, h                                       ; $6df4: $7c
    push bc                                       ; $6df5: $c5
    ld e, d                                       ; $6df6: $5a
    ld a, d                                       ; $6df7: $7a
    rrca                                          ; $6df8: $0f
    cp c                                          ; $6df9: $b9
    xor c                                         ; $6dfa: $a9
    call $f070                                    ; $6dfb: $cd $70 $f0
    and d                                         ; $6dfe: $a2
    call nc, $bbd2                                ; $6dff: $d4 $d2 $bb
    ld b, l                                       ; $6e02: $45
    ld a, e                                       ; $6e03: $7b
    add a                                         ; $6e04: $87
    db $e4                                        ; $6e05: $e4
    ld c, c                                       ; $6e06: $49
    pop hl                                        ; $6e07: $e1
    adc [hl]                                      ; $6e08: $8e
    ld hl, sp+$02                                 ; $6e09: $f8 $02
    sbc $be                                       ; $6e0b: $de $be
    rst $08                                       ; $6e0d: $cf
    ld a, d                                       ; $6e0e: $7a
    set 7, d                                      ; $6e0f: $cb $fa
    ld e, $72                                     ; $6e11: $1e $72
    add e                                         ; $6e13: $83
    ld [hl], e                                    ; $6e14: $73
    push af                                       ; $6e15: $f5
    ld b, a                                       ; $6e16: $47
    xor h                                         ; $6e17: $ac
    or [hl]                                       ; $6e18: $b6
    sub h                                         ; $6e19: $94
    ret                                           ; $6e1a: $c9


    rst $18                                       ; $6e1b: $df
    rst $10                                       ; $6e1c: $d7
    sbc $73                                       ; $6e1d: $de $73
    or l                                          ; $6e1f: $b5
    or a                                          ; $6e20: $b7
    ld e, d                                       ; $6e21: $5a
    push af                                       ; $6e22: $f5
    sbc [hl]                                      ; $6e23: $9e
    ld hl, sp-$3c                                 ; $6e24: $f8 $c4
    xor e                                         ; $6e26: $ab
    db $eb                                        ; $6e27: $eb
    ld e, b                                       ; $6e28: $58
    ld h, e                                       ; $6e29: $63
    sub e                                         ; $6e2a: $93
    sub h                                         ; $6e2b: $94
    add hl, hl                                    ; $6e2c: $29
    push bc                                       ; $6e2d: $c5
    cp $95                                        ; $6e2e: $fe $95
    ldh [rIF], a                                  ; $6e30: $e0 $0f
    adc h                                         ; $6e32: $8c
    ld [hl], b                                    ; $6e33: $70
    ld l, [hl]                                    ; $6e34: $6e
    ld h, $63                                     ; $6e35: $26 $63
    adc a                                         ; $6e37: $8f
    ld h, e                                       ; $6e38: $63
    ld l, c                                       ; $6e39: $69
    jr nz, @-$5a                                  ; $6e3a: $20 $a4

    add hl, sp                                    ; $6e3c: $39
    ld c, c                                       ; $6e3d: $49
    pop hl                                        ; $6e3e: $e1
    ld h, $7f                                     ; $6e3f: $26 $7f
    sub c                                         ; $6e41: $91
    ld sp, $751d                                  ; $6e42: $31 $1d $75
    ld bc, $2658                                  ; $6e45: $01 $58 $26
    ld e, $f1                                     ; $6e48: $1e $f1
    dec b                                         ; $6e4a: $05
    call c, $a1f7                                 ; $6e4b: $dc $f7 $a1
    ld a, [hl-]                                   ; $6e4e: $3a
    and h                                         ; $6e4f: $a4
    sbc a                                         ; $6e50: $9f
    ld d, d                                       ; $6e51: $52
    rst $30                                       ; $6e52: $f7
    add h                                         ; $6e53: $84
    xor a                                         ; $6e54: $af
    ld e, b                                       ; $6e55: $58
    dec bc                                        ; $6e56: $0b
    ld c, $08                                     ; $6e57: $0e $08
    adc c                                         ; $6e59: $89
    ccf                                           ; $6e5a: $3f
    rst $30                                       ; $6e5b: $f7
    dec hl                                        ; $6e5c: $2b
    and d                                         ; $6e5d: $a2
    ld l, a                                       ; $6e5e: $6f
    ld l, h                                       ; $6e5f: $6c
    cp $10                                        ; $6e60: $fe $10
    ld a, h                                       ; $6e62: $7c
    ld [hl], h                                    ; $6e63: $74
    ld [hl], $0f                                  ; $6e64: $36 $0f
    sbc d                                         ; $6e66: $9a
    ld [hl], $73                                  ; $6e67: $36 $73
    ld h, [hl]                                    ; $6e69: $66
    sub $5b                                       ; $6e6a: $d6 $5b
    or l                                          ; $6e6c: $b5
    cp d                                          ; $6e6d: $ba
    ld a, [hl-]                                   ; $6e6e: $3a
    call c, Call_038_5f11                         ; $6e6f: $dc $11 $5f
    ret nz                                        ; $6e72: $c0

    db $db                                        ; $6e73: $db
    ret c                                         ; $6e74: $d8

    ld l, d                                       ; $6e75: $6a
    rst $00                                       ; $6e76: $c7
    ld a, [$2ce8]                                 ; $6e77: $fa $e8 $2c
    rla                                           ; $6e7a: $17

Jump_038_6e7b:
    adc l                                         ; $6e7b: $8d
    xor e                                         ; $6e7c: $ab
    inc hl                                        ; $6e7d: $23
    ld a, a                                       ; $6e7e: $7f
    ld d, $dd                                     ; $6e7f: $16 $dd
    rst $08                                       ; $6e81: $cf
    ld e, a                                       ; $6e82: $5f
    sbc c                                         ; $6e83: $99
    inc bc                                        ; $6e84: $03
    ld h, c                                       ; $6e85: $61
    ld [$f12d], a                                 ; $6e86: $ea $2d $f1
    add l                                         ; $6e89: $85
    cp l                                          ; $6e8a: $bd
    ld e, l                                       ; $6e8b: $5d
    ld a, [hl-]                                   ; $6e8c: $3a
    inc l                                         ; $6e8d: $2c
    jr nc, jr_038_6eb4                            ; $6e8e: $30 $24

    rlca                                          ; $6e90: $07
    ld c, c                                       ; $6e91: $49
    xor d                                         ; $6e92: $aa
    rst $28                                       ; $6e93: $ef
    inc hl                                        ; $6e94: $23
    call nc, $deb1                                ; $6e95: $d4 $b1 $de
    ld c, $55                                     ; $6e98: $0e $55
    jr z, @+$26                                   ; $6e9a: $28 $24

    inc b                                         ; $6e9c: $04
    or l                                          ; $6e9d: $b5
    add hl, de                                    ; $6e9e: $19
    ld h, [hl]                                    ; $6e9f: $66
    adc $bc                                       ; $6ea0: $ce $bc
    ld [$2d69], sp                                ; $6ea2: $08 $69 $2d
    rst $28                                       ; $6ea5: $ef
    ld d, e                                       ; $6ea6: $53
    ldh a, [$a6]                                  ; $6ea7: $f0 $a6
    sbc l                                         ; $6ea9: $9d
    rst $20                                       ; $6eaa: $e7
    xor b                                         ; $6eab: $a8
    ld h, e                                       ; $6eac: $63
    cp l                                          ; $6ead: $bd
    push bc                                       ; $6eae: $c5
    adc e                                         ; $6eaf: $8b
    ld a, [c]                                     ; $6eb0: $f2

Jump_038_6eb1:
    rst $20                                       ; $6eb1: $e7
    dec l                                         ; $6eb2: $2d
    and e                                         ; $6eb3: $a3

jr_038_6eb4:
    inc sp                                        ; $6eb4: $33
    cpl                                           ; $6eb5: $2f
    jp nz, $5d5f                                  ; $6eb6: $c2 $5f $5d

    or d                                          ; $6eb9: $b2
    ld [$e5a0], a                                 ; $6eba: $ea $a0 $e5
    xor $d5                                       ; $6ebd: $ee $d5
    sbc $73                                       ; $6ebf: $de $73
    or l                                          ; $6ec1: $b5
    sub b                                         ; $6ec2: $90
    ld hl, sp-$33                                 ; $6ec3: $f8 $cd
    ld h, l                                       ; $6ec5: $65
    adc $3d                                       ; $6ec6: $ce $3d
    ld [hl], h                                    ; $6ec8: $74
    xor [hl]                                      ; $6ec9: $ae
    cp c                                          ; $6eca: $b9
    ld c, e                                       ; $6ecb: $4b
    sub b                                         ; $6ecc: $90
    and h                                         ; $6ecd: $a4
    ld a, [$9363]                                 ; $6ece: $fa $63 $93
    cp a                                          ; $6ed1: $bf
    ld a, [de]                                    ; $6ed2: $1a
    add b                                         ; $6ed3: $80
    jp $aa4b                                      ; $6ed4: $c3 $4b $aa


    ld e, d                                       ; $6ed7: $5a
    db $dd                                        ; $6ed8: $dd
    ld a, e                                       ; $6ed9: $7b
    ld [c], a                                     ; $6eda: $e2
    and e                                         ; $6edb: $a3
    xor [hl]                                      ; $6edc: $ae
    cp $bb                                        ; $6edd: $fe $bb
    ld h, l                                       ; $6edf: $65
    jp nz, $8507                                  ; $6ee0: $c2 $07 $85

    sbc l                                         ; $6ee3: $9d
    and h                                         ; $6ee4: $a4
    ld b, e                                       ; $6ee5: $43
    dec d                                         ; $6ee6: $15
    ld a, [bc]                                    ; $6ee7: $0a
    add hl, bc                                    ; $6ee8: $09
    ld b, c                                       ; $6ee9: $41
    ld l, l                                       ; $6eea: $6d
    sub [hl]                                      ; $6eeb: $96
    halt                                          ; $6eec: $76
    db $e4                                        ; $6eed: $e4
    sub a                                         ; $6eee: $97
    ld e, e                                       ; $6eef: $5b
    ld e, b                                       ; $6ef0: $58
    ld e, h                                       ; $6ef1: $5c
    dec e                                         ; $6ef2: $1d
    ld l, $13                                     ; $6ef3: $2e $13
    ld c, h                                       ; $6ef5: $4c
    xor c                                         ; $6ef6: $a9
    ei                                            ; $6ef7: $fb
    dec d                                         ; $6ef8: $15
    ld d, c                                       ; $6ef9: $51
    ld l, l                                       ; $6efa: $6d
    jp hl                                         ; $6efb: $e9


    ld d, b                                       ; $6efc: $50
    sub [hl]                                      ; $6efd: $96
    dec c                                         ; $6efe: $0d
    xor d                                         ; $6eff: $aa
    push de                                       ; $6f00: $d5
    ld h, [hl]                                    ; $6f01: $66
    dec e                                         ; $6f02: $1d
    cp h                                          ; $6f03: $bc
    or [hl]                                       ; $6f04: $b6
    ret                                           ; $6f05: $c9


    ld e, a                                       ; $6f06: $5f
    ld h, h                                       ; $6f07: $64
    call z, Call_038_7fb9                         ; $6f08: $cc $b9 $7f
    xor e                                         ; $6f0b: $ab
    dec l                                         ; $6f0c: $2d
    push de                                       ; $6f0d: $d5
    xor d                                         ; $6f0e: $aa
    jp c, Jump_038_465b                           ; $6f0f: $da $5b $46

    ld h, a                                       ; $6f12: $67
    ld e, [hl]                                    ; $6f13: $5e
    add h                                         ; $6f14: $84
    cp a                                          ; $6f15: $bf
    cp d                                          ; $6f16: $ba
    inc bc                                        ; $6f17: $03
    db $f4                                        ; $6f18: $f4
    inc bc                                        ; $6f19: $03
    add hl, sp                                    ; $6f1a: $39
    inc l                                         ; $6f1b: $2c
    sbc $1e                                       ; $6f1c: $de $1e
    ld h, e                                       ; $6f1e: $63
    di                                            ; $6f1f: $f3
    rlca                                          ; $6f20: $07
    ld b, [hl]                                    ; $6f21: $46
    jr c, jr_038_6f7b                             ; $6f22: $38 $57

    xor l                                         ; $6f24: $ad
    xor [hl]                                      ; $6f25: $ae
    ld d, $12                                     ; $6f26: $16 $12
    cp a                                          ; $6f28: $bf
    cp c                                          ; $6f29: $b9
    ld b, e                                       ; $6f2a: $43
    daa                                           ; $6f2b: $27
    ld e, $b1                                     ; $6f2c: $1e $b1
    rst $10                                       ; $6f2e: $d7
    nop                                           ; $6f2f: $00
    sub c                                         ; $6f30: $91
    ld [hl], $61                                  ; $6f31: $36 $61
    xor e                                         ; $6f33: $ab
    jp $a3e8                                      ; $6f34: $c3 $e8 $a3


    jp $6a82                                      ; $6f37: $c3 $82 $6a


    db $e4                                        ; $6f3a: $e4
    cpl                                           ; $6f3b: $2f
    db $e4                                        ; $6f3c: $e4
    jr z, @+$13                                   ; $6f3d: $28 $11

    xor e                                         ; $6f3f: $ab
    adc l                                         ; $6f40: $8d
    ld d, b                                       ; $6f41: $50
    xor l                                         ; $6f42: $ad
    ld a, [$38d5]                                 ; $6f43: $fa $d5 $38
    ld d, $ed                                     ; $6f46: $16 $ed
    and e                                         ; $6f48: $a3
    ld c, h                                       ; $6f49: $4c
    ld hl, sp+$10                                 ; $6f4a: $f8 $10
    ld [$f371], sp                                ; $6f4c: $08 $71 $f3
    ld d, $af                                     ; $6f4f: $16 $af
    ld a, e                                       ; $6f51: $7b
    cp b                                          ; $6f52: $b8
    add hl, bc                                    ; $6f53: $09
    ld c, e                                       ; $6f54: $4b
    ld e, h                                       ; $6f55: $5c
    ld [hl], d                                    ; $6f56: $72
    ld a, h                                       ; $6f57: $7c
    adc b                                         ; $6f58: $88
    ld l, e                                       ; $6f59: $6b
    cp l                                          ; $6f5a: $bd
    dec h                                         ; $6f5b: $25
    or c                                          ; $6f5c: $b1
    sub [hl]                                      ; $6f5d: $96
    ld l, d                                       ; $6f5e: $6a
    ld l, a                                       ; $6f5f: $6f
    ld h, a                                       ; $6f60: $67
    di                                            ; $6f61: $f3
    and b                                         ; $6f62: $a0
    jp hl                                         ; $6f63: $e9


    cp c                                          ; $6f64: $b9
    jp c, $eeb1                                   ; $6f65: $da $b1 $ee

    ld [hl], b                                    ; $6f68: $70
    ld hl, $13fe                                  ; $6f69: $21 $fe $13
    or l                                          ; $6f6c: $b5
    ld e, c                                       ; $6f6d: $59
    push de                                       ; $6f6e: $d5
    ld [$12ce], a                                 ; $6f6f: $ea $ce $12
    ei                                            ; $6f72: $fb
    sub a                                         ; $6f73: $97
    db $ec                                        ; $6f74: $ec
    ld c, l                                       ; $6f75: $4d
    ld [hl], e                                    ; $6f76: $73
    and e                                         ; $6f77: $a3
    cp l                                          ; $6f78: $bd
    ld e, e                                       ; $6f79: $5b
    xor l                                         ; $6f7a: $ad

jr_038_6f7b:
    xor d                                         ; $6f7b: $aa
    cp l                                          ; $6f7c: $bd
    ld h, l                                       ; $6f7d: $65
    ld [hl], h                                    ; $6f7e: $74
    and $45                                       ; $6f7f: $e6 $45
    ld hl, sp-$55                                 ; $6f81: $f8 $ab
    dec sp                                        ; $6f83: $3b
    ld l, b                                       ; $6f84: $68
    cp c                                          ; $6f85: $b9
    ld a, e                                       ; $6f86: $7b
    or l                                          ; $6f87: $b5
    or a                                          ; $6f88: $b7
    rst $00                                       ; $6f89: $c7
    ret c                                         ; $6f8a: $d8

    db $fc                                        ; $6f8b: $fc
    add c                                         ; $6f8c: $81
    ld de, $d5ce                                  ; $6f8d: $11 $ce $d5
    ld b, d                                       ; $6f90: $42
    ld [c], a                                     ; $6f91: $e2
    scf                                           ; $6f92: $37
    sub a                                         ; $6f93: $97
    add hl, sp                                    ; $6f94: $39
    rst $30                                       ; $6f95: $f7
    ret nc                                        ; $6f96: $d0

    cp c                                          ; $6f97: $b9
    and $2e                                       ; $6f98: $e6 $2e
    ld b, c                                       ; $6f9a: $41
    sub d                                         ; $6f9b: $92
    ld [$4d8f], a                                 ; $6f9c: $ea $8f $4d
    cp $6a                                        ; $6f9f: $fe $6a
    nop                                           ; $6fa1: $00
    ld c, $2f                                     ; $6fa2: $0e $2f
    add hl, hl                                    ; $6fa4: $29
    db $ed                                        ; $6fa5: $ed
    add sp, -$3c                                  ; $6fa6: $e8 $c4
    ld b, a                                       ; $6fa8: $47
    ld e, l                                       ; $6fa9: $5d
    db $fd                                        ; $6faa: $fd
    ld [hl], a                                    ; $6fab: $77
    set 5, b                                      ; $6fac: $cb $e8
    call z, $f08b                                 ; $6fae: $cc $8b $f0
    ld d, a                                       ; $6fb1: $57
    sbc a                                         ; $6fb2: $9f
    xor e                                         ; $6fb3: $ab
    adc [hl]                                      ; $6fb4: $8e
    sub d                                         ; $6fb5: $92
    ld d, l                                       ; $6fb6: $55
    dec l                                         ; $6fb7: $2d
    call nz, $e27f                                ; $6fb8: $c4 $7f $e2
    dec a                                         ; $6fbb: $3d
    rst $30                                       ; $6fbc: $f7
    ld l, [hl]                                    ; $6fbd: $6e
    jp z, $cb9f                                   ; $6fbe: $ca $9f $cb

    add sp, -$34                                  ; $6fc1: $e8 $cc
    adc e                                         ; $6fc3: $8b
    sub b                                         ; $6fc4: $90

Jump_038_6fc5:
    cp b                                          ; $6fc5: $b8
    jp c, $aad5                                   ; $6fc6: $da $d5 $aa

    xor h                                         ; $6fc9: $ac
    ld sp, $0c80                                  ; $6fca: $31 $80 $0c
    ld l, c                                       ; $6fcd: $69
    ld b, a                                       ; $6fce: $47
    ld a, [hl]                                    ; $6fcf: $7e
    cp c                                          ; $6fd0: $b9
    add l                                         ; $6fd1: $85
    push bc                                       ; $6fd2: $c5
    push de                                       ; $6fd3: $d5
    sbc $32                                       ; $6fd4: $de $32
    ld a, [hl-]                                   ; $6fd6: $3a
    di                                            ; $6fd7: $f3
    ld [hl+], a                                   ; $6fd8: $22
    db $fc                                        ; $6fd9: $fc
    push de                                       ; $6fda: $d5
    rst $20                                       ; $6fdb: $e7
    ld l, d                                       ; $6fdc: $6a
    ld l, a                                       ; $6fdd: $6f
    or l                                          ; $6fde: $b5
    ld [$e5a0], a                                 ; $6fdf: $ea $a0 $e5
    xor $d5                                       ; $6fe2: $ee $d5
    sbc $1e                                       ; $6fe4: $de $1e
    ld h, e                                       ; $6fe6: $63
    di                                            ; $6fe7: $f3
    rlca                                          ; $6fe8: $07
    ld b, [hl]                                    ; $6fe9: $46
    xor b                                         ; $6fea: $a8
    ld e, d                                       ; $6feb: $5a
    ld e, l                                       ; $6fec: $5d
    dec l                                         ; $6fed: $2d
    inc h                                         ; $6fee: $24
    ld a, [hl]                                    ; $6fef: $7e
    ld [hl], e                                    ; $6ff0: $73
    add a                                         ; $6ff1: $87
    ld c, [hl]                                    ; $6ff2: $4e
    inc a                                         ; $6ff3: $3c
    ld h, d                                       ; $6ff4: $62
    xor a                                         ; $6ff5: $af
    ld bc, $cd22                                  ; $6ff6: $01 $22 $cd
    ld bc, $2943                                  ; $6ff9: $01 $43 $29
    ld [hl], l                                    ; $6ffc: $75
    ld c, a                                       ; $6ffd: $4f
    ld hl, sp-$76                                 ; $6ffe: $f8 $8a
    or l                                          ; $7000: $b5
    add b                                         ; $7001: $80
    inc h                                         ; $7002: $24
    xor $cd                                       ; $7003: $ee $cd
    cp l                                          ; $7005: $bd
    ld e, e                                       ; $7006: $5b
    or h                                          ; $7007: $b4
    or a                                          ; $7008: $b7
    or c                                          ; $7009: $b1
    dec e                                         ; $700a: $1d
    ld h, c                                       ; $700b: $61
    ld b, h                                       ; $700c: $44
    db $d3                                        ; $700d: $d3
    db $ed                                        ; $700e: $ed
    or e                                          ; $700f: $b3
    ld h, h                                       ; $7010: $64
    ld b, [hl]                                    ; $7011: $46
    jr nc, @-$59                                  ; $7012: $30 $a5

    sub b                                         ; $7014: $90
    halt                                          ; $7015: $76
    or h                                          ; $7016: $b4

Call_038_7017:
    ld [hl], a                                    ; $7017: $77
    xor e                                         ; $7018: $ab
    ld d, l                                       ; $7019: $55
    dec e                                         ; $701a: $1d
    db $eb                                        ; $701b: $eb
    db $ed                                        ; $701c: $ed
    ld [$9a23], sp                                ; $701d: $08 $23 $9a
    or $2b                                        ; $7020: $f6 $2b
    cp h                                          ; $7022: $bc
    daa                                           ; $7023: $27
    ld a, $8a                                     ; $7024: $3e $8a
    ld d, b                                       ; $7026: $50
    or l                                          ; $7027: $b5
    cp d                                          ; $7028: $ba
    add e                                         ; $7029: $83
    sub [hl]                                      ; $702a: $96
    cp e                                          ; $702b: $bb
    ld d, a                                       ; $702c: $57
    dec de                                        ; $702d: $1b
    pop hl                                        ; $702e: $e1
    call c, Call_038_45bb                         ; $702f: $dc $bb $45
    ld a, e                                       ; $7032: $7b
    dec de                                        ; $7033: $1b
    ld e, e                                       ; $7034: $5b
    rst $00                                       ; $7035: $c7
    ld a, [$b0e8]                                 ; $7036: $fa $e8 $b0
    and b                                         ; $7039: $a0
    ld a, [de]                                    ; $703a: $1a
    ld sp, hl                                     ; $703b: $f9
    dec bc                                        ; $703c: $0b
    add hl, sp                                    ; $703d: $39
    ld a, [$7529]                                 ; $703e: $fa $29 $75
    or l                                          ; $7041: $b5
    ld h, e                                       ; $7042: $63
    db $dd                                        ; $7043: $dd
    inc de                                        ; $7044: $13
    inc d                                         ; $7045: $14
    ld a, h                                       ; $7046: $7c
    ldh a, [$f6]                                  ; $7047: $f0 $f6
    ld l, a                                       ; $7049: $6f
    ld h, [hl]                                    ; $704a: $66
    or d                                          ; $704b: $b2
    inc hl                                        ; $704c: $23
    add e                                         ; $704d: $83
    or h                                          ; $704e: $b4
    and e                                         ; $704f: $a3
    inc de                                        ; $7050: $13
    rra                                           ; $7051: $1f
    ld [hl], l                                    ; $7052: $75
    ld [hl], l                                    ; $7053: $75
    cp b                                          ; $7054: $b8
    sbc c                                         ; $7055: $99
    rst $28                                       ; $7056: $ef
    and h                                         ; $7057: $a4
    ld b, l                                       ; $7058: $45
    cp $c0                                        ; $7059: $fe $c0
    db $db                                        ; $705b: $db
    inc de                                        ; $705c: $13
    inc d                                         ; $705d: $14
    ld a, h                                       ; $705e: $7c
    ldh a, [$f6]                                  ; $705f: $f0 $f6
    dec hl                                        ; $7061: $2b
    xor h                                         ; $7062: $ac
    ld e, d                                       ; $7063: $5a
    ld e, l                                       ; $7064: $5d
    dec l                                         ; $7065: $2d
    inc h                                         ; $7066: $24
    ld a, [hl]                                    ; $7067: $7e
    ld [hl], e                                    ; $7068: $73
    push af                                       ; $7069: $f5
    rst $18                                       ; $706a: $df
    db $ed                                        ; $706b: $ed
    ld d, a                                       ; $706c: $57
    ld b, h                                       ; $706d: $44
    sbc c                                         ; $706e: $99
    ld [hl], e                                    ; $706f: $73
    rrca                                          ; $7070: $0f
    sbc l                                         ; $7071: $9d
    ld l, e                                       ; $7072: $6b
    xor $73                                       ; $7073: $ee $73
    push de                                       ; $7075: $d5
    ld d, c                                       ; $7076: $51
    inc c                                         ; $7077: $0c
    sub a                                         ; $7078: $97
    xor h                                         ; $7079: $ac
    ld a, [hl-]                                   ; $707a: $3a
    ld l, b                                       ; $707b: $68
    add hl, sp                                    ; $707c: $39
    ld [bc], a                                    ; $707d: $02
    ld sp, hl                                     ; $707e: $f9
    di                                            ; $707f: $f3
    and [hl]                                      ; $7080: $a6

Call_038_7081:
    add hl, sp                                    ; $7081: $39
    ld c, c                                       ; $7082: $49
    xor d                                         ; $7083: $aa
    xor h                                         ; $7084: $ac
    ld sp, $0c80                                  ; $7085: $31 $80 $0c
    dec a                                         ; $7088: $3d

jr_038_7089:
    push de                                       ; $7089: $d5
    ld b, b                                       ; $708a: $40
    add [hl]                                      ; $708b: $86
    ld a, [hl-]                                   ; $708c: $3a
    or [hl]                                       ; $708d: $b6
    daa                                           ; $708e: $27
    jr z, jr_038_7089                             ; $708f: $28 $f8

    ldh [$a5], a                                  ; $7091: $e0 $a5
    ld a, $3d                                     ; $7093: $3e $3d
    ld l, [hl]                                    ; $7095: $6e
    rst $10                                       ; $7096: $d7
    and [hl]                                      ; $7097: $a6
    sbc l                                         ; $7098: $9d
    ld e, l                                       ; $7099: $5d
    ld l, l                                       ; $709a: $6d
    ld l, a                                       ; $709b: $6f
    ld a, a                                       ; $709c: $7f
    rla                                           ; $709d: $17
    and c                                         ; $709e: $a1
    ld e, d                                       ; $709f: $5a
    push af                                       ; $70a0: $f5
    inc b                                         ; $70a1: $04
    dec b                                         ; $70a2: $05
    rra                                           ; $70a3: $1f

Jump_038_70a4:
    cp h                                          ; $70a4: $bc
    dec h                                         ; $70a5: $25
    ld c, b                                       ; $70a6: $48
    jp nc, $be13                                  ; $70a7: $d2 $13 $be

    ld h, d                                       ; $70aa: $62
    dec l                                         ; $70ab: $2d
    jr nz, @-$75                                  ; $70ac: $20 $89

    ld a, e                                       ; $70ae: $7b
    ld [hl], e                                    ; $70af: $73
    push de                                       ; $70b0: $d5
    ld [$65ce], a                                 ; $70b1: $ea $ce $65
    or d                                          ; $70b4: $b2
    rlca                                          ; $70b5: $07
    ret nz                                        ; $70b6: $c0

    push bc                                       ; $70b7: $c5
    ld a, a                                       ; $70b8: $7f
    inc e                                         ; $70b9: $1c
    and [hl]                                      ; $70ba: $a6
    sbc e                                         ; $70bb: $9b

Call_038_70bc:
    ld [hl], $49                                  ; $70bc: $36 $49
    ld c, b                                       ; $70be: $48
    db $fc                                        ; $70bf: $fc
    and $7e                                       ; $70c0: $e6 $7e
    ld b, l                                       ; $70c2: $45
    sub h                                         ; $70c3: $94
    add hl, sp                                    ; $70c4: $39
    rst $30                                       ; $70c5: $f7
    ret nc                                        ; $70c6: $d0

    cp c                                          ; $70c7: $b9
    and $ae                                       ; $70c8: $e6 $ae
    ld e, d                                       ; $70ca: $5a
    db $dd                                        ; $70cb: $dd
    ld a, e                                       ; $70cc: $7b
    ld [c], a                                     ; $70cd: $e2
    and e                                         ; $70ce: $a3
    xor [hl]                                      ; $70cf: $ae
    cp $d8                                        ; $70d0: $fe $d8
    inc de                                        ; $70d2: $13
    inc d                                         ; $70d3: $14
    ld a, h                                       ; $70d4: $7c
    ldh a, [rHDMA2]                               ; $70d5: $f0 $52
    sbc a                                         ; $70d7: $9f
    ld e, $b7                                     ; $70d8: $1e $b7
    ld l, e                                       ; $70da: $6b
    ei                                            ; $70db: $fb
    dec d                                         ; $70dc: $15
    ld d, [hl]                                    ; $70dd: $56
    ei                                            ; $70de: $fb
    ld l, b                                       ; $70df: $68
    ld a, [c]                                     ; $70e0: $f2
    ld d, a                                       ; $70e1: $57
    inc bc                                        ; $70e2: $03
    ld [hl], b                                    ; $70e3: $70
    ld a, b                                       ; $70e4: $78
    ld c, c                                       ; $70e5: $49
    db $fd                                        ; $70e6: $fd
    ld a, [bc]                                    ; $70e7: $0a
    db $d3                                        ; $70e8: $d3
    ld h, $a9                                     ; $70e9: $26 $a9
    sbc $fe                                       ; $70eb: $de $fe
    ld l, $42                                     ; $70ed: $2e $42
    ld [hl], l                                    ; $70ef: $75
    ld c, b                                       ; $70f0: $48
    ld d, a                                       ; $70f1: $57
    ld l, l                                       ; $70f2: $6d
    or l                                          ; $70f3: $b5
    ld h, e                                       ; $70f4: $63
    db $dd                                        ; $70f5: $dd
    inc de                                        ; $70f6: $13
    inc d                                         ; $70f7: $14
    ld a, h                                       ; $70f8: $7c
    ldh a, [rRP]                                  ; $70f9: $f0 $56
    xor l                                         ; $70fb: $ad
    xor [hl]                                      ; $70fc: $ae
    halt                                          ; $70fd: $76
    ld l, h                                       ; $70fe: $6c
    rst $20                                       ; $70ff: $e7
    ld [hl-], a                                   ; $7100: $32
    reti                                          ; $7101: $d9


    inc bc                                        ; $7102: $03
    ret nz                                        ; $7103: $c0

    ld a, [hl+]                                   ; $7104: $2a
    cp $fa                                        ; $7105: $fe $fa
    rla                                           ; $7107: $17
    db $fd                                        ; $7108: $fd
    cp h                                          ; $7109: $bc
    ld l, c                                       ; $710a: $69
    ld c, $a3                                     ; $710b: $0e $a3
    cp l                                          ; $710d: $bd
    ld e, e                                       ; $710e: $5b
    xor l                                         ; $710f: $ad
    xor d                                         ; $7110: $aa
    ld b, e                                       ; $7111: $43
    xor d                                         ; $7112: $aa
    dec e                                         ; $7113: $1d
    db $db                                        ; $7114: $db
    ld e, c                                       ; $7115: $59

jr_038_7116:
    ld l, $1a                                     ; $7116: $2e $1a
    ld d, a                                       ; $7118: $57
    ld b, a                                       ; $7119: $47
    cp $2c                                        ; $711a: $fe $2c
    ld a, d                                       ; $711c: $7a
    ld l, c                                       ; $711d: $69
    ld c, e                                       ; $711e: $4b
    or l                                          ; $711f: $b5
    ld h, e                                       ; $7120: $63
    dec sp                                        ; $7121: $3b
    bit 0, l                                      ; $7122: $cb $45
    db $e3                                        ; $7124: $e3
    ld [$12dc], a                                 ; $7125: $ea $dc $12
    inc bc                                        ; $7128: $03
    inc [hl]                                      ; $7129: $34
    cp b                                          ; $712a: $b8
    jp nz, $45fe                                  ; $712b: $c2 $fe $45

    ccf                                           ; $712e: $3f
    ld l, a                                       ; $712f: $6f
    adc a                                         ; $7130: $8f
    or c                                          ; $7131: $b1
    ld sp, hl                                     ; $7132: $f9
    inc bc                                        ; $7133: $03
    inc hl                                        ; $7134: $23
    sbc h                                         ; $7135: $9c
    xor e                                         ; $7136: $ab
    add l                                         ; $7137: $85
    call nz, $ee6f                                ; $7138: $c4 $6f $ee
    ld d, a                                       ; $713b: $57
    ld b, h                                       ; $713c: $44
    sbc c                                         ; $713d: $99
    ld [hl], e                                    ; $713e: $73
    rrca                                          ; $713f: $0f
    sbc l                                         ; $7140: $9d
    ld l, e                                       ; $7141: $6b
    xor $73                                       ; $7142: $ee $73
    push de                                       ; $7144: $d5
    ld d, c                                       ; $7145: $51
    or d                                          ; $7146: $b2
    ld a, [hl-]                                   ; $7147: $3a
    sbc d                                         ; $7148: $9a
    db $fc                                        ; $7149: $fc
    push de                                       ; $714a: $d5
    nop                                           ; $714b: $00
    inc e                                         ; $714c: $1c
    ld e, [hl]                                    ; $714d: $5e
    ld d, d                                       ; $714e: $52
    ret                                           ; $714f: $c9


    xor d                                         ; $7150: $aa
    sbc c                                         ; $7151: $99
    jp hl                                         ; $7152: $e9


    rst $18                                       ; $7153: $df
    call z, $769b                                 ; $7154: $cc $9b $76
    ld [hl], h                                    ; $7157: $74
    ld [c], a                                     ; $7158: $e2
    and e                                         ; $7159: $a3
    xor [hl]                                      ; $715a: $ae
    cp $bb                                        ; $715b: $fe $bb
    sbc l                                         ; $715d: $9d
    push hl                                       ; $715e: $e5
    and d                                         ; $715f: $a2
    ld [hl], c                                    ; $7160: $71
    ld [hl], l                                    ; $7161: $75
    db $e4                                        ; $7162: $e4
    rst $08                                       ; $7163: $cf
    and d                                         ; $7164: $a2
    xor h                                         ; $7165: $ac
    ret                                           ; $7166: $c9


    pop hl                                        ; $7167: $e1
    and a                                         ; $7168: $a7
    ld [hl], $c3                                  ; $7169: $36 $c3
    cp e                                          ; $716b: $bb
    inc bc                                        ; $716c: $03
    db $dd                                        ; $716d: $dd
    ld e, c                                       ; $716e: $59
    ld l, $1a                                     ; $716f: $2e $1a
    ld d, a                                       ; $7171: $57
    rst $20                                       ; $7172: $e7
    sub [hl]                                      ; $7173: $96
    jr jr_038_7116                                ; $7174: $18 $a0

    pop bc                                        ; $7176: $c1
    dec d                                         ; $7177: $15
    and [hl]                                      ; $7178: $a6
    add hl, sp                                    ; $7179: $39
    ld c, c                                       ; $717a: $49
    xor d                                         ; $717b: $aa
    ld [$087e], sp                                ; $717c: $08 $7e $08
    cp l                                          ; $717f: $bd
    add hl, hl                                    ; $7180: $29
    ld hl, $f077                                  ; $7181: $21 $77 $f0
    sub d                                         ; $7184: $92
    ld a, [hl-]                                   ; $7185: $3a
    sub $47                                       ; $7186: $d6 $47
    ld c, a                                       ; $7188: $4f
    ld hl, sp-$76                                 ; $7189: $f8 $8a
    or l                                          ; $718b: $b5
    ld e, b                                       ; $718c: $58
    or h                                          ; $718d: $b4
    ld [hl-], a                                   ; $718e: $32
    and l                                         ; $718f: $a5
    ld d, l                                       ; $7190: $55
    xor e                                         ; $7191: $ab
    ei                                            ; $7192: $fb
    ld a, $42                                     ; $7193: $3e $42
    rlca                                          ; $7195: $07
    dec l                                         ; $7196: $2d
    ret z                                         ; $7197: $c8

    ld e, a                                       ; $7198: $5f
    ld e, b                                       ; $7199: $58
    ld a, e                                       ; $719a: $7b
    db $dd                                        ; $719b: $dd
    add hl, sp                                    ; $719c: $39
    ld b, $20                                     ; $719d: $06 $20
    xor [hl]                                      ; $719f: $ae
    push af                                       ; $71a0: $f5
    ld c, [hl]                                    ; $71a1: $4e
    rst $18                                       ; $71a2: $df
    sub c                                         ; $71a3: $91
    ld bc, $96d5                                  ; $71a4: $01 $d5 $96

jr_038_71a7:
    adc $31                                       ; $71a7: $ce $31
    nop                                           ; $71a9: $00
    ld [hl], c                                    ; $71aa: $71
    ld l, l                                       ; $71ab: $6d
    ld c, a                                       ; $71ac: $4f
    ld hl, sp-$76                                 ; $71ad: $f8 $8a
    or l                                          ; $71af: $b5
    ldh [$80], a                                  ; $71b0: $e0 $80

jr_038_71b2:
    jr z, jr_038_71b2                             ; $71b2: $28 $fe

    ld a, d                                       ; $71b4: $7a
    ei                                            ; $71b5: $fb
    cp e                                          ; $71b6: $bb
    ld [$aad5], sp                                ; $71b7: $08 $d5 $aa
    adc [hl]                                      ; $71ba: $8e
    push af                                       ; $71bb: $f5
    or $84                                        ; $71bc: $f6 $84
    xor a                                         ; $71be: $af
    ld e, b                                       ; $71bf: $58
    dec bc                                        ; $71c0: $0b
    ld c, $88                                     ; $71c1: $0e $88
    ld [c], a                                     ; $71c3: $e2
    xor a                                         ; $71c4: $af
    ld a, a                                       ; $71c5: $7f
    rst $28                                       ; $71c6: $ef
    ld e, [hl]                                    ; $71c7: $5e
    db $ed                                        ; $71c8: $ed
    ld c, l                                       ; $71c9: $4d
    dec sp                                        ; $71ca: $3b
    ld [hl-], a                                   ; $71cb: $32
    and b                                         ; $71cc: $a0
    jp c, Jump_000_39d2                           ; $71cd: $da $d2 $39

    ld b, $20                                     ; $71d0: $06 $20
    xor [hl]                                      ; $71d2: $ae
    dec l                                         ; $71d3: $2d
    and e                                         ; $71d4: $a3
    inc sp                                        ; $71d5: $33
    cpl                                           ; $71d6: $2f
    jp nz, $dd5f                                  ; $71d7: $c2 $5f $dd

    db $db                                        ; $71da: $db
    rst $18                                       ; $71db: $df
    ld b, l                                       ; $71dc: $45
    xor b                                         ; $71dd: $a8
    ld d, [hl]                                    ; $71de: $56
    ld [hl], l                                    ; $71df: $75
    xor h                                         ; $71e0: $ac
    or a                                          ; $71e1: $b7
    adc h                                         ; $71e2: $8c
    adc $bc                                       ; $71e3: $ce $bc
    ld [$757f], sp                                ; $71e5: $08 $7f $75
    rlca                                          ; $71e8: $07
    dec l                                         ; $71e9: $2d
    ld [hl], a                                    ; $71ea: $77
    xor a                                         ; $71eb: $af
    or $a6                                        ; $71ec: $f6 $a6
    dec e                                         ; $71ee: $1d
    add hl, de                                    ; $71ef: $19
    ld d, b                                       ; $71f0: $50
    ld l, l                                       ; $71f1: $6d
    jp hl                                         ; $71f2: $e9


    inc e                                         ; $71f3: $1c
    inc bc                                        ; $71f4: $03
    db $10                                        ; $71f5: $10
    rst $10                                       ; $71f6: $d7
    halt                                          ; $71f7: $76
    call nz, Call_038_7017                        ; $71f8: $c4 $17 $70
    ld l, a                                       ; $71fb: $6f
    ld a, a                                       ; $71fc: $7f
    rla                                           ; $71fd: $17
    and c                                         ; $71fe: $a1
    ld e, d                                       ; $71ff: $5a
    ld d, l                                       ; $7200: $55
    add a                                         ; $7201: $87
    dec sp                                        ; $7202: $3b
    inc l                                         ; $7203: $2c
    xor b                                         ; $7204: $a8
    cp [hl]                                       ; $7205: $be
    ld a, l                                       ; $7206: $7d
    ld bc, $596f                                  ; $7207: $01 $6f $59
    dec bc                                        ; $720a: $0b
    jp hl                                         ; $720b: $e9


    dec e                                         ; $720c: $1d
    ld h, b                                       ; $720d: $60
    ld l, c                                       ; $720e: $69
    or d                                          ; $720f: $b2
    ld c, a                                       ; $7210: $4f
    rst $30                                       ; $7211: $f7
    ld d, [hl]                                    ; $7212: $56
    xor l                                         ; $7213: $ad
    xor $09                                       ; $7214: $ee $09
    ld e, a                                       ; $7216: $5f
    or c                                          ; $7217: $b1
    ld d, $4b                                     ; $7218: $16 $4b
    ld e, c                                       ; $721a: $59
    xor a                                         ; $721b: $af
    ld [bc], a                                    ; $721c: $02
    or d                                          ; $721d: $b2
    scf                                           ; $721e: $37
    db $ed                                        ; $721f: $ed
    ret z                                         ; $7220: $c8

    add b                                         ; $7221: $80
    ld l, d                                       ; $7222: $6a
    ld c, e                                       ; $7223: $4b
    rst $20                                       ; $7224: $e7
    jr jr_038_71a7                                ; $7225: $18 $80

    cp b                                          ; $7227: $b8
    or [hl]                                       ; $7228: $b6

Jump_038_7229:
    or e                                          ; $7229: $b3
    ret nc                                        ; $722a: $d0

    ldh a, [$f3]                                  ; $722b: $f0 $f3
    or $f6                                        ; $722d: $f6 $f6
    ld [hl], a                                    ; $722f: $77
    ld de, $55aa                                  ; $7230: $11 $aa $55

jr_038_7233:
    rst $28                                       ; $7233: $ef
    adc c                                         ; $7234: $89
    ld c, a                                       ; $7235: $4f
    cp h                                          ; $7236: $bc
    cp d                                          ; $7237: $ba
    adc [hl]                                      ; $7238: $8e
    dec [hl]                                      ; $7239: $35
    ld [hl], $49                                  ; $723a: $36 $49
    sbc c                                         ; $723c: $99
    ld d, d                                       ; $723d: $52
    inc l                                         ; $723e: $2c
    ld b, c                                       ; $723f: $41
    jp $9bcf                                      ; $7240: $c3 $cf $9b


    ld [hl], $c9                                  ; $7243: $36 $c9
    or c                                          ; $7245: $b1
    ld l, [hl]                                    ; $7246: $6e
    sub d                                         ; $7247: $92

Jump_038_7248:
    ld [de], a                                    ; $7248: $12
    cp $de                                        ; $7249: $fe $de
    and a                                         ; $724b: $a7
    ldh [$89], a                                  ; $724c: $e0 $89
    xor e                                         ; $724e: $ab
    ld d, [hl]                                    ; $724f: $56
    ld [hl], a                                    ; $7250: $77
    db $e4                                        ; $7251: $e4
    rst $08                                       ; $7252: $cf
    jp nz, Jump_038_6a03                          ; $7253: $c2 $03 $6a

    ld l, a                                       ; $7256: $6f
    ldh [$de], a                                  ; $7257: $e0 $de
    dec l                                         ; $7259: $2d
    jp c, $315b                                   ; $725a: $da $5b $31

    ld a, a                                       ; $725d: $7f
    add b                                         ; $725e: $80
    db $fd                                        ; $725f: $fd
    sbc e                                         ; $7260: $9b
    sbc c                                         ; $7261: $99
    db $ec                                        ; $7262: $ec
    ret z                                         ; $7263: $c8

    jr nz, jr_038_7233                            ; $7264: $20 $cd

    ld bc, $83a3                                  ; $7266: $01 $a3 $83
    jp nc, Jump_038_75db                          ; $7269: $d2 $db $75

    inc e                                         ; $726c: $1c
    sbc $b2                                       ; $726d: $de $b2
    adc [hl]                                      ; $726f: $8e
    and e                                         ; $7270: $a3
    daa                                           ; $7271: $27
    ld a, h                                       ; $7272: $7c
    push bc                                       ; $7273: $c5
    ld e, d                                       ; $7274: $5a
    ld [hl], b                                    ; $7275: $70
    ld b, b                                       ; $7276: $40
    call nc, $fcc4                                ; $7277: $d4 $c4 $fc
    xor c                                         ; $727a: $a9
    dec b                                         ; $727b: $05
    adc e                                         ; $727c: $8b
    inc b                                         ; $727d: $04
    ld a, a                                       ; $727e: $7f
    sub b                                         ; $727f: $90
    halt                                          ; $7280: $76
    db $e4                                        ; $7281: $e4
    rst $20                                       ; $7282: $e7
    xor a                                         ; $7283: $af
    add a                                         ; $7284: $87
    ld h, e                                       ; $7285: $63
    db $dd                                        ; $7286: $dd
    ld h, c                                       ; $7287: $61
    cp [hl]                                       ; $7288: $be
    dec sp                                        ; $7289: $3b
    ld d, e                                       ; $728a: $53
    sbc e                                         ; $728b: $9b
    ld a, c                                       ; $728c: $79
    cp e                                          ; $728d: $bb
    sbc a                                         ; $728e: $9f
    cp a                                          ; $728f: $bf
    ld [hl], e                                    ; $7290: $73
    push de                                       ; $7291: $d5
    ld d, c                                       ; $7292: $51
    rst $00                                       ; $7293: $c7
    ld b, [hl]                                    ; $7294: $46
    and $32                                       ; $7295: $e6 $32
    ld a, [hl-]                                   ; $7297: $3a
    di                                            ; $7298: $f3
    ld [hl+], a                                   ; $7299: $22
    inc h                                         ; $729a: $24
    xor [hl]                                      ; $729b: $ae
    halt                                          ; $729c: $76
    ret                                           ; $729d: $c9


    ld [$9328], a                                 ; $729e: $ea $28 $93
    cp a                                          ; $72a1: $bf
    cp e                                          ; $72a2: $bb
    ld e, c                                       ; $72a3: $59
    ld l, a                                       ; $72a4: $6f
    ret                                           ; $72a5: $c9


    xor d                                         ; $72a6: $aa
    xor h                                         ; $72a7: $ac
    call nz, $de66                                ; $72a8: $c4 $66 $de
    or h                                          ; $72ab: $b4
    and e                                         ; $72ac: $a3
    cp l                                          ; $72ad: $bd
    ld e, e                                       ; $72ae: $5b
    xor l                                         ; $72af: $ad
    ld l, d                                       ; $72b0: $6a
    inc l                                         ; $72b1: $2c
    ld a, [c]                                     ; $72b2: $f2
    rst $30                                       ; $72b3: $f7
    add hl, bc                                    ; $72b4: $09
    ld [bc], a                                    ; $72b5: $02
    pop hl                                        ; $72b6: $e1
    ld e, h                                       ; $72b7: $5c
    rst $00                                       ; $72b8: $c7
    ld a, d                                       ; $72b9: $7a
    set 5, b                                      ; $72ba: $cb $e8
    call z, $f08b                                 ; $72bc: $cc $8b $f0
    ld d, a                                       ; $72bf: $57
    rst $30                                       ; $72c0: $f7
    dec hl                                        ; $72c1: $2b
    and d                                         ; $72c2: $a2
    ld a, [hl-]                                   ; $72c3: $3a
    ld e, h                                       ; $72c4: $5c
    dec bc                                        ; $72c5: $0b
    ld [hl], c                                    ; $72c6: $71
    adc c                                         ; $72c7: $89
    or [hl]                                       ; $72c8: $b6

Jump_038_72c9:
    ret nc                                        ; $72c9: $d0

    ldh [$cf], a                                  ; $72ca: $e0 $cf
    ld c, l                                       ; $72cc: $4d
    ld e, $fb                                     ; $72cd: $1e $fb
    cp c                                          ; $72cf: $b9
    ld a, a                                       ; $72d0: $7f
    ret                                           ; $72d1: $c9


    ld [$f599], a                                 ; $72d2: $ea $99 $f5
    sbc [hl]                                      ; $72d5: $9e
    ld a, e                                       ; $72d6: $7b
    ei                                            ; $72d7: $fb
    cp e                                          ; $72d8: $bb
    ld [$aad5], sp                                ; $72d9: $08 $d5 $aa
    add $1e                                       ; $72dc: $c6 $1e
    ld bc, $fe45                                  ; $72de: $01 $45 $fe
    xor $16                                       ; $72e1: $ee $16
    adc e                                         ; $72e3: $8b
    or a                                          ; $72e4: $b7
    adc h                                         ; $72e5: $8c
    adc $bc                                       ; $72e6: $ce $bc
    ld [$ab89], sp                                ; $72e8: $08 $89 $ab
    cp l                                          ; $72eb: $bd
    dec e                                         ; $72ec: $1d
    or h                                          ; $72ed: $b4
    and b                                         ; $72ee: $a0
    ld [c], a                                     ; $72ef: $e2
    rst $08                                       ; $72f0: $cf
    sbc e                                         ; $72f1: $9b
    halt                                          ; $72f2: $76
    or h                                          ; $72f3: $b4
    ld [hl], a                                    ; $72f4: $77
    xor e                                         ; $72f5: $ab
    ld d, l                                       ; $72f6: $55
    ret                                           ; $72f7: $c9


    xor d                                         ; $72f8: $aa
    add e                                         ; $72f9: $83
    ld h, c                                       ; $72fa: $61
    ld [$e2ce], a                                 ; $72fb: $ea $ce $e2
    ld b, a                                       ; $72fe: $47
    dec l                                         ; $72ff: $2d
    dec a                                         ; $7300: $3d
    ld a, $7f                                     ; $7301: $3e $7f
    ld [$1ee7], sp                                ; $7303: $08 $e7 $1e
    ld a, [bc]                                    ; $7306: $0a
    ld de, $55aa                                  ; $7307: $11 $aa $55
    rlca                                          ; $730a: $07
    xor a                                         ; $730b: $af
    db $ed                                        ; $730c: $ed
    ldh [rNR51], a                                ; $730d: $e0 $25
    db $eb                                        ; $730f: $eb
    or d                                          ; $7310: $b2
    adc $62                                       ; $7311: $ce $62
    rst $10                                       ; $7313: $d7
    sbc e                                         ; $7314: $9b
    and $a3                                       ; $7315: $e6 $a3
    inc de                                        ; $7317: $13
    rra                                           ; $7318: $1f
    ld [hl], l                                    ; $7319: $75
    ld [hl], l                                    ; $731a: $75
    cp b                                          ; $731b: $b8
    ld [de], a                                    ; $731c: $12
    db $fc                                        ; $731d: $fc
    ld b, c                                       ; $731e: $41
    ld h, h                                       ; $731f: $64
    xor $88                                       ; $7320: $ee $88
    db $eb                                        ; $7322: $eb
    ld h, b                                       ; $7323: $60
    ld h, e                                       ; $7324: $63
    ccf                                           ; $7325: $3f
    call nz, $fdb5                                ; $7326: $c4 $b5 $fd
    ld a, [bc]                                    ; $7329: $0a
    dec sp                                        ; $732a: $3b
    jp nz, $a688                                  ; $732b: $c2 $88 $a6

    ld d, l                                       ; $732e: $55
    xor e                                         ; $732f: $ab
    ld a, e                                       ; $7330: $7b
    add d                                         ; $7331: $82
    add d                                         ; $7332: $82
    rrca                                          ; $7333: $0f
    sbc $7e                                       ; $7334: $de $7e
    add l                                         ; $7336: $85
    rst $20                                       ; $7337: $e7
    xor d                                         ; $7338: $aa
    and e                                         ; $7339: $a3
    ld a, [hl-]                                   ; $733a: $3a
    call c, $be13                                 ; $733b: $dc $13 $be
    ld h, d                                       ; $733e: $62
    dec l                                         ; $733f: $2d
    jr nz, jr_038_73c1                            ; $7340: $20 $7f

    ld l, a                                       ; $7342: $6f
    inc de                                        ; $7343: $13
    rrca                                          ; $7344: $0f
    ld d, l                                       ; $7345: $55
    ld b, h                                       ; $7346: $44
    or $59                                        ; $7347: $f6 $59
    sub a                                         ; $7349: $97
    xor h                                         ; $734a: $ac
    ld l, d                                       ; $734b: $6a
    ld hl, $9448                                  ; $734c: $21 $48 $94
    ld a, d                                       ; $734f: $7a
    db $d3                                        ; $7350: $d3
    ld h, $09                                     ; $7351: $26 $09
    adc c                                         ; $7353: $89
    rst $18                                       ; $7354: $df
    call c, $af99                                 ; $7355: $dc $99 $af
    dec b                                         ; $7358: $05
    cp c                                          ; $7359: $b9
    ld l, b                                       ; $735a: $68
    ld b, a                                       ; $735b: $47
    ld a, l                                       ; $735c: $7d
    db $dd                                        ; $735d: $dd
    and c                                         ; $735e: $a1
    adc d                                         ; $735f: $8a
    sbc b                                         ; $7360: $98
    ld h, h                                       ; $7361: $64
    jr z, jr_038_73df                             ; $7362: $28 $7b

    xor [hl]                                      ; $7364: $ae
    ld a, [hl-]                                   ; $7365: $3a
    ld [$7758], a                                 ; $7366: $ea $58 $77
    xor b                                         ; $7369: $a8
    jp nz, Jump_038_7ffb                          ; $736a: $c2 $fb $7f

    or h                                          ; $736d: $b4
    ld h, h                                       ; $736e: $64
    ld d, l                                       ; $736f: $55
    db $10                                        ; $7370: $10
    inc de                                        ; $7371: $13
    add h                                         ; $7372: $84
    scf                                           ; $7373: $37
    ld l, l                                       ; $7374: $6d
    sub e                                         ; $7375: $93
    add h                                         ; $7376: $84
    call nz, $ee6f                                ; $7377: $c4 $6f $ee
    call z, $82d7                                 ; $737a: $cc $d7 $82
    ld e, h                                       ; $737d: $5c
    or h                                          ; $737e: $b4
    and e                                         ; $737f: $a3
    cp [hl]                                       ; $7380: $be
    xor [hl]                                      ; $7381: $ae
    sbc b                                         ; $7382: $98
    ccf                                           ; $7383: $3f
    ret nz                                        ; $7384: $c0

    ld [hl], e                                    ; $7385: $73
    push de                                       ; $7386: $d5
    ld d, c                                       ; $7387: $51
    or d                                          ; $7388: $b2
    sub d                                         ; $7389: $92
    ld l, [hl]                                    ; $738a: $6e
    ld [hl+], a                                   ; $738b: $22
    ld a, a                                       ; $738c: $7f
    ld [$8ede], sp                                ; $738d: $08 $de $8e
    ld hl, sp-$20                                 ; $7390: $f8 $e0
    db $ec                                        ; $7392: $ec
    sub d                                         ; $7393: $92
    ld [hl], b                                    ; $7394: $70
    ret                                           ; $7395: $c9


    xor d                                         ; $7396: $aa
    sbc c                                         ; $7397: $99
    jp hl                                         ; $7398: $e9


    rst $18                                       ; $7399: $df
    call z, $ee7b                                 ; $739a: $cc $7b $ee
    and l                                         ; $739d: $a5
    dec l                                         ; $739e: $2d
    push de                                       ; $739f: $d5
    ld b, d                                       ; $73a0: $42
    ld [c], a                                     ; $73a1: $e2
    scf                                           ; $73a2: $37
    ld [hl], a                                    ; $73a3: $77
    and $6b                                       ; $73a4: $e6 $6b
    ld b, c                                       ; $73a6: $41
    ld l, $da                                     ; $73a7: $2e $da
    ld d, c                                       ; $73a9: $51
    ld e, a                                       ; $73aa: $5f
    sub a                                         ; $73ab: $97
    add $de                                       ; $73ac: $c6 $de
    ldh a, [$5c]                                  ; $73ae: $f0 $5c
    ld [hl], l                                    ; $73b0: $75
    ld [hl], h                                    ; $73b1: $74
    cpl                                           ; $73b2: $2f
    cp $ea                                        ; $73b3: $fe $ea
    ret c                                         ; $73b5: $d8

    db $e3                                        ; $73b6: $e3
    db $d3                                        ; $73b7: $d3
    sub d                                         ; $73b8: $92
    sub l                                         ; $73b9: $95
    sub b                                         ; $73ba: $90
    ld hl, sp-$53                                 ; $73bb: $f8 $ad
    ld h, h                                       ; $73bd: $64
    ld d, l                                       ; $73be: $55
    inc e                                         ; $73bf: $1c
    sub b                                         ; $73c0: $90

jr_038_73c1:
    ret c                                         ; $73c1: $d8

    call z, $b55b                                 ; $73c2: $cc $5b $b5
    cp d                                          ; $73c5: $ba
    jp c, Jump_000_2eb1                           ; $73c6: $da $b1 $2e

Jump_038_73c9:
    ld e, c                                       ; $73c9: $59
    dec c                                         ; $73ca: $0d
    ld e, [hl]                                    ; $73cb: $5e
    jp nc, $20cc                                  ; $73cc: $d2 $cc $20

    rla                                           ; $73cf: $17
    ld b, c                                       ; $73d0: $41
    ld a, b                                       ; $73d1: $78
    db $dd                                        ; $73d2: $dd
    and c                                         ; $73d3: $a1
    ld a, [bc]                                    ; $73d4: $0a
    rst $28                                       ; $73d5: $ef
    rst $38                                       ; $73d6: $ff
    pop de                                        ; $73d7: $d1
    sub d                                         ; $73d8: $92
    ld d, l                                       ; $73d9: $55
    inc de                                        ; $73da: $13
    ld d, a                                       ; $73db: $57
    ld e, e                                       ; $73dc: $5b
    ld [hl], $ed                                  ; $73dd: $36 $ed

jr_038_73df:
    ld l, b                                       ; $73df: $68
    rst $28                                       ; $73e0: $ef
    ld d, [hl]                                    ; $73e1: $56
    xor e                                         ; $73e2: $ab
    ld e, $01                                     ; $73e3: $1e $01
    push de                                       ; $73e5: $d5
    adc [hl]                                      ; $73e6: $8e
    or l                                          ; $73e7: $b5
    inc [hl]                                      ; $73e8: $34
    inc sp                                        ; $73e9: $33
    cp $03                                        ; $73ea: $fe $03

Jump_038_73ec:
    cp h                                          ; $73ec: $bc
    dec e                                         ; $73ed: $1d
    xor d                                         ; $73ee: $aa
    ldh a, [$fe]                                  ; $73ef: $f0 $fe
    rra                                           ; $73f1: $1f
    dec l                                         ; $73f2: $2d
    ld e, c                                       ; $73f3: $59
    ld de, $d612                                  ; $73f4: $11 $12 $d6
    sbc $b2                                       ; $73f7: $de $b2
    add c                                         ; $73f9: $81
    ld [hl], b                                    ; $73fa: $70
    xor [hl]                                      ; $73fb: $ae
    ld d, $12                                     ; $73fc: $16 $12
    cp a                                          ; $73fe: $bf
    cp c                                          ; $73ff: $b9
    ld b, e                                       ; $7400: $43
    daa                                           ; $7401: $27
    ld e, $b1                                     ; $7402: $1e $b1
    rst $10                                       ; $7404: $d7
    nop                                           ; $7405: $00
    ld [hl], c                                    ; $7406: $71
    xor [hl]                                      ; $7407: $ae
    ld a, [hl-]                                   ; $7408: $3a
    adc d                                         ; $7409: $8a
    pop hl                                        ; $740a: $e1
    sub d                                         ; $740b: $92
    ld d, l                                       ; $740c: $55
    ld e, c                                       ; $740d: $59
    inc hl                                        ; $740e: $23
    inc h                                         ; $740f: $24
    ld b, d                                       ; $7410: $42
    ld h, h                                       ; $7411: $64
    sbc $b4                                       ; $7412: $de $b4
    ld h, l                                       ; $7414: $65
    ld a, [c]                                     ; $7415: $f2
    ld [hl], a                                    ; $7416: $77
    rst $38                                       ; $7417: $ff
    ld b, d                                       ; $7418: $42
    halt                                          ; $7419: $76
    sub e                                         ; $741a: $93
    inc de                                        ; $741b: $13
    ld l, a                                       ; $741c: $6f
    db $fc                                        ; $741d: $fc
    ld a, c                                       ; $741e: $79
    rst $08                                       ; $741f: $cf
    push de                                       ; $7420: $d5
    pop hl                                        ; $7421: $e1
    xor [hl]                                      ; $7422: $ae
    ld e, c                                       ; $7423: $59
    ld l, a                                       ; $7424: $6f
    or l                                          ; $7425: $b5
    or a                                          ; $7426: $b7
    add e                                         ; $7427: $83
    rst $10                                       ; $7428: $d7
    ld d, [hl]                                    ; $7429: $56
    add a                                         ; $742a: $87
    inc [hl]                                      ; $742b: $34
    di                                            ; $742c: $f3
    dec a                                         ; $742d: $3d
    pop af                                        ; $742e: $f1
    ld d, c                                       ; $742f: $51
    ldh a, [$36]                                  ; $7430: $f0 $36
    add hl, hl                                    ; $7432: $29
    ld [hl], $f3                                  ; $7433: $36 $f3
    ld d, $c1                                     ; $7435: $16 $c1
    rst $08                                       ; $7437: $cf
    ld a, e                                       ; $7438: $7b
    ld l, $6b                                     ; $7439: $2e $6b
    db $fc                                        ; $743b: $fc
    sbc c                                         ; $743c: $99
    rst $30                                       ; $743d: $f7
    ld e, h                                       ; $743e: $5c
    db $fd                                        ; $743f: $fd
    ld de, $1dab                                  ; $7440: $11 $ab $1d
    db $eb                                        ; $7443: $eb
    ld c, $55                                     ; $7444: $0e $55
    ld a, b                                       ; $7446: $78
    rst $38                                       ; $7447: $ff
    adc a                                         ; $7448: $8f
    or $76                                        ; $7449: $f6 $76
    adc c                                         ; $744b: $89
    ld hl, sp+$06                                 ; $744c: $f8 $06
    cp l                                          ; $744e: $bd
    ld a, a                                       ; $744f: $7f
    jp hl                                         ; $7450: $e9


    call nz, $d53d                                ; $7451: $c4 $3d $d5
    dec a                                         ; $7454: $3d
    db $fc                                        ; $7455: $fc
    and h                                         ; $7456: $a4
    ret                                           ; $7457: $c9


    adc c                                         ; $7458: $89
    scf                                           ; $7459: $37
    cp $bc                                        ; $745a: $fe $bc
    rst $20                                       ; $745c: $e7
    ld l, d                                       ; $745d: $6a
    inc hl                                        ; $745e: $23
    ld e, h                                       ; $745f: $5c
    ld h, l                                       ; $7460: $65
    adc l                                         ; $7461: $8d
    ld l, b                                       ; $7462: $68
    add hl, de                                    ; $7463: $19
    jp nc, $f68e                                  ; $7464: $d2 $8e $f6

    ld l, [hl]                                    ; $7467: $6e
    or l                                          ; $7468: $b5
    xor d                                         ; $7469: $aa
    or $56                                        ; $746a: $f6 $56
    add d                                         ; $746c: $82
    ccf                                           ; $746d: $3f
    adc b                                         ; $746e: $88
    call z, Call_000_11db                         ; $746f: $cc $db $11
    ld b, [hl]                                    ; $7472: $46
    inc [hl]                                      ; $7473: $34
    xor l                                         ; $7474: $ad
    ld e, d                                       ; $7475: $5a
    ld e, l                                       ; $7476: $5d
    dec e                                         ; $7477: $1d
    xor [hl]                                      ; $7478: $ae

jr_038_7479:
    inc b                                         ; $7479: $04
    ld a, a                                       ; $747a: $7f
    db $10                                        ; $747b: $10
    sbc c                                         ; $747c: $99
    or a                                          ; $747d: $b7
    daa                                           ; $747e: $27
    jr z, jr_038_7479                             ; $747f: $28 $f8

    ldh [$ed], a                                  ; $7481: $e0 $ed
    ld d, a                                       ; $7483: $57
    sbc b                                         ; $7484: $98
    ld sp, hl                                     ; $7485: $f9
    sbc [hl]                                      ; $7486: $9e
    ld hl, sp+$28                                 ; $7487: $f8 $28
    db $f4                                        ; $7489: $f4
    ld a, l                                       ; $748a: $7d
    add h                                         ; $748b: $84
    ld [hl], e                                    ; $748c: $73
    rst $18                                       ; $748d: $df
    ld b, a                                       ; $748e: $47
    xor b                                         ; $748f: $a8
    ld d, [hl]                                    ; $7490: $56
    push de                                       ; $7491: $d5
    pop hl                                        ; $7492: $e1
    ld c, $55                                     ; $7493: $0e $55
    ld b, h                                       ; $7495: $44
    or $59                                        ; $7496: $f6 $59
    rst $10                                       ; $7498: $d7
    ld b, d                                       ; $7499: $42
    ld e, h                                       ; $749a: $5c
    inc [hl]                                      ; $749b: $34
    inc de                                        ; $749c: $13
    rlca                                          ; $749d: $07
    ld a, a                                       ; $749e: $7f
    ld h, l                                       ; $749f: $65
    adc l                                         ; $74a0: $8d
    ldh a, [$57]                                  ; $74a1: $f0 $57
    ld a, e                                       ; $74a3: $7b
    add a                                         ; $74a4: $87
    inc [hl]                                      ; $74a5: $34
    ld c, c                                       ; $74a6: $49
    push af                                       ; $74a7: $f5
    ld a, l                                       ; $74a8: $7d
    add h                                         ; $74a9: $84
    add $62                                       ; $74aa: $c6 $62
    ld h, [hl]                                    ; $74ac: $66
    db $fc                                        ; $74ad: $fc
    rlca                                          ; $74ae: $07
    sub h                                         ; $74af: $94
    ld a, h                                       ; $74b0: $7c
    rra                                           ; $74b1: $1f
    sbc e                                         ; $74b2: $9b
    ld [de], a                                    ; $74b3: $12
    sbc l                                         ; $74b4: $9d
    rst $10                                       ; $74b5: $d7
    add d                                         ; $74b6: $82
    adc d                                         ; $74b7: $8a
    ccf                                           ; $74b8: $3f
    sbc a                                         ; $74b9: $9f
    xor e                                         ; $74ba: $ab
    adc [hl]                                      ; $74bb: $8e
    ld [$2570], a                                 ; $74bc: $ea $70 $25
    ld hl, sp-$7d                                 ; $74bf: $f8 $83
    ret z                                         ; $74c1: $c8

    call c, $d711                                 ; $74c2: $dc $11 $d7
    pop bc                                        ; $74c5: $c1
    add $7e                                       ; $74c6: $c6 $7e
    adc b                                         ; $74c8: $88
    ld l, e                                       ; $74c9: $6b
    ld c, e                                       ; $74ca: $4b
    ld d, [hl]                                    ; $74cb: $56
    dec h                                         ; $74cc: $25
    ld h, d                                       ; $74cd: $62
    or l                                          ; $74ce: $b5
    scf                                           ; $74cf: $37
    call $f301                                    ; $74d0: $cd $01 $f3
    ld e, d                                       ; $74d3: $5a
    ld d, b                                       ; $74d4: $50
    pop af                                        ; $74d5: $f1
    rst $20                                       ; $74d6: $e7
    ld [hl], e                                    ; $74d7: $73
    ld b, a                                       ; $74d8: $47
    ld a, h                                       ; $74d9: $7c
    ld bc, $c0ef                                  ; $74da: $01 $ef $c0
    rst $38                                       ; $74dd: $ff
    ld [c], a                                     ; $74de: $e2
    sub d                                         ; $74df: $92
    ld d, l                                       ; $74e0: $55
    adc c                                         ; $74e1: $89
    ld e, b                                       ; $74e2: $58
    db $ed                                        ; $74e3: $ed
    ld c, l                                       ; $74e4: $4d
    dec sp                                        ; $74e5: $3b
    call z, Call_038_6777                         ; $74e6: $cc $77 $67
    xor [hl]                                      ; $74e9: $ae
    or $76                                        ; $74ea: $f6 $76
    ld h, [hl]                                    ; $74ec: $66
    dec h                                         ; $74ed: $25
    ld a, b                                       ; $74ee: $78
    ld c, c                                       ; $74ef: $49
    cp a                                          ; $74f0: $bf
    ld [hl+], a                                   ; $74f1: $22
    ld [$7758], a                                 ; $74f2: $ea $58 $77
    call nz, Call_038_7017                        ; $74f5: $c4 $17 $70
    push de                                       ; $74f8: $d5
    ld [$216a], a                                 ; $74f9: $ea $6a $21
    pop af                                        ; $74fc: $f1
    sbc e                                         ; $74fd: $9b
    dec sp                                        ; $74fe: $3b
    ld [hl], h                                    ; $74ff: $74
    ld [c], a                                     ; $7500: $e2
    ld de, $0d7b                                  ; $7501: $11 $7b $0d
    db $10                                        ; $7504: $10
    rst $20                                       ; $7505: $e7
    xor d                                         ; $7506: $aa
    and e                                         ; $7507: $a3
    ld a, [hl-]                                   ; $7508: $3a
    call c, Call_038_5f11                         ; $7509: $dc $11 $5f
    ret nz                                        ; $750c: $c0

    ld d, l                                       ; $750d: $55
    rlca                                          ; $750e: $07
    ld e, c                                       ; $750f: $59
    ld l, c                                       ; $7510: $69
    pop af                                        ; $7511: $f1
    di                                            ; $7512: $f3
    and [hl]                                      ; $7513: $a6
    ld l, l                                       ; $7514: $6d
    sub d                                         ; $7515: $92
    ld hl, sp-$47                                 ; $7516: $f8 $b9
    adc [hl]                                      ; $7518: $8e
    ld [hl], l                                    ; $7519: $75
    ret                                           ; $751a: $c9


    ld [hl], a                                    ; $751b: $77
    rlca                                          ; $751c: $07
    cp b                                          ; $751d: $b8
    inc hl                                        ; $751e: $23
    cp [hl]                                       ; $751f: $be
    add b                                         ; $7520: $80
    xor e                                         ; $7521: $ab
    adc [hl]                                      ; $7522: $8e
    ld [hl], e                                    ; $7523: $73
    ld h, e                                       ; $7524: $63
    or l                                          ; $7525: $b5
    adc a                                         ; $7526: $8f
    ld l, d                                       ; $7527: $6a
    ld d, l                                       ; $7528: $55
    db $ed                                        ; $7529: $ed
    db $ed                                        ; $752a: $ed
    cp h                                          ; $752b: $bc
    sub a                                         ; $752c: $97
    ld h, h                                       ; $752d: $64
    ld a, a                                       ; $752e: $7f
    or e                                          ; $752f: $b3
    sbc $c3                                       ; $7530: $de $c3
    jp c, Jump_000_2ef2                           ; $7532: $da $f2 $2e

    adc d                                         ; $7535: $8a
    sub b                                         ; $7536: $90
    halt                                          ; $7537: $76
    or h                                          ; $7538: $b4
    ld [hl], a                                    ; $7539: $77
    xor e                                         ; $753a: $ab
    ld d, l                                       ; $753b: $55
    dec e                                         ; $753c: $1d
    db $db                                        ; $753d: $db
    ld de, $c05f                                  ; $753e: $11 $5f $c0
    dec sp                                        ; $7541: $3b
    ldh a, [$bf]                                  ; $7542: $f0 $bf
    db $f4                                        ; $7544: $f4
    dec hl                                        ; $7545: $2b

jr_038_7546:
    ld [hl+], a                                   ; $7546: $22

Jump_038_7547:
    or e                                          ; $7547: $b3
    ld [hl], $bf                                  ; $7548: $36 $bf
    ld b, c                                       ; $754a: $41
    rst $18                                       ; $754b: $df
    ld b, a                                       ; $754c: $47
    jr c, jr_038_7546                             ; $754d: $38 $f7

    ld l, [hl]                                    ; $754f: $6e
    pop de                                        ; $7550: $d1
    sbc $ea                                       ; $7551: $de $ea
    ld [hl], b                                    ; $7553: $70
    ld e, c                                       ; $7554: $59
    add a                                         ; $7555: $87
    or $76                                        ; $7556: $f6 $76
    call nz, $f017                                ; $7558: $c4 $17 $f0
    or $2b                                        ; $755b: $f6 $2b
    xor h                                         ; $755d: $ac
    or $51                                        ; $755e: $f6 $51
    and $40                                       ; $7560: $e6 $40
    sbc b                                         ; $7562: $98
    ld [hl], $f3                                  ; $7563: $36 $f3
    ld e, [hl]                                    ; $7565: $5e
    rst $00                                       ; $7566: $c7
    pop hl                                        ; $7567: $e1
    ld c, l                                       ; $7568: $4d
    dec sp                                        ; $7569: $3b
    ld c, e                                       ; $756a: $4b
    xor h                                         ; $756b: $ac
    halt                                          ; $756c: $76
    ccf                                           ; $756d: $3f
    and l                                         ; $756e: $a5
    xor $88                                       ; $756f: $ee $88
    cpl                                           ; $7571: $2f
    ldh [rNR33], a                                ; $7572: $e0 $1d
    ld hl, sp+$5f                                 ; $7574: $f8 $5f
    ld a, h                                       ; $7576: $7c
    xor [hl]                                      ; $7577: $ae
    ld a, [hl-]                                   ; $7578: $3a
    xor d                                         ; $7579: $aa
    ccf                                           ; $757a: $3f
    sub [hl]                                      ; $757b: $96
    add hl, sp                                    ; $757c: $39
    db $10                                        ; $757d: $10
    and [hl]                                      ; $757e: $a6
    dec h                                         ; $757f: $25
    xor e                                         ; $7580: $ab
    ld h, [hl]                                    ; $7581: $66
    cp [hl]                                       ; $7582: $be
    rst $00                                       ; $7583: $c7
    xor [hl]                                      ; $7584: $ae
    scf                                           ; $7585: $37
    call $cc01                                    ; $7586: $cd $01 $cc
    adc e                                         ; $7589: $8b
    ld d, d                                       ; $758a: $52
    jr nc, jr_038_75cf                            ; $758b: $30 $42

    or l                                          ; $758d: $b5
    xor d                                         ; $758e: $aa
    ld c, $fe                                     ; $758f: $0e $fe
    ld [$e3d8], a                                 ; $7591: $ea $d8 $e3
    db $d3                                        ; $7594: $d3
    ld c, $5a                                     ; $7595: $0e $5a
    add sp, $57                                   ; $7597: $e8 $57
    add h                                         ; $7599: $84
    rst $30                                       ; $759a: $f7
    ld e, h                                       ; $759b: $5c
    dec l                                         ; $759c: $2d
    inc h                                         ; $759d: $24
    ld a, [hl]                                    ; $759e: $7e
    ld [hl], e                                    ; $759f: $73
    dec e                                         ; $75a0: $1d
    ld c, e                                       ; $75a1: $4b
    ld a, h                                       ; $75a2: $7c
    cp $fa                                        ; $75a3: $fe $fa
    dec d                                         ; $75a5: $15
    ld d, c                                       ; $75a6: $51
    and $f0                                       ; $75a7: $e6 $f0
    reti                                          ; $75a9: $d9


    add [hl]                                      ; $75aa: $86
    rst $08                                       ; $75ab: $cf
    inc a                                         ; $75ac: $3c

jr_038_75ad:
    ld [hl], a                                    ; $75ad: $77
    jp c, $bfa4                                   ; $75ae: $da $a4 $bf

    ld e, e                                       ; $75b1: $5b
    dec bc                                        ; $75b2: $0b
    ld a, [c]                                     ; $75b3: $f2
    rst $20                                       ; $75b4: $e7
    ld e, b                                       ; $75b5: $58
    xor b                                         ; $75b6: $a8
    ld h, e                                       ; $75b7: $63
    sbc e                                         ; $75b8: $9b
    inc e                                         ; $75b9: $1c
    ld a, e                                       ; $75ba: $7b
    ld [hl], a                                    ; $75bb: $77
    ld h, b                                       ; $75bc: $60
    push af                                       ; $75bd: $f5
    sub a                                         ; $75be: $97
    xor a                                         ; $75bf: $af
    adc b                                         ; $75c0: $88
    ld [hl], e                                    ; $75c1: $73
    rst $28                                       ; $75c2: $ef
    ld d, a                                       ; $75c3: $57
    or l                                          ; $75c4: $b5
    xor d                                         ; $75c5: $aa
    ld c, $fe                                     ; $75c6: $0e $fe
    sbc d                                         ; $75c8: $9a
    ld e, c                                       ; $75c9: $59
    cp [hl]                                       ; $75ca: $be
    halt                                          ; $75cb: $76
    ld e, c                                       ; $75cc: $59
    inc de                                        ; $75cd: $13
    or c                                          ; $75ce: $b1

jr_038_75cf:
    jp c, Jump_038_6908                           ; $75cf: $da $08 $69

    ld c, $49                                     ; $75d2: $0e $49
    ld b, d                                       ; $75d4: $42
    ld [c], a                                     ; $75d5: $e2
    scf                                           ; $75d6: $37
    ld [hl], a                                    ; $75d7: $77
    add sp, -$3c                                  ; $75d8: $e8 $c4
    inc hl                                        ; $75da: $23

Jump_038_75db:
    or $1a                                        ; $75db: $f6 $1a
    jr nz, jr_038_75ad                            ; $75dd: $20 $ce

    ld d, l                                       ; $75df: $55
    ld b, a                                       ; $75e0: $47
    rst $30                                       ; $75e1: $f7
    di                                            ; $75e2: $f3
    rst $10                                       ; $75e3: $d7
    ld b, c                                       ; $75e4: $41
    dec bc                                        ; $75e5: $0b
    ld a, e                                       ; $75e6: $7b
    ld c, c                                       ; $75e7: $49
    and $f5                                       ; $75e8: $e6 $f5
    sub [hl]                                      ; $75ea: $96
    pop de                                        ; $75eb: $d1
    sbc c                                         ; $75ec: $99
    rla                                           ; $75ed: $17
    ld hl, $b571                                  ; $75ee: $21 $71 $b5
    or a                                          ; $75f1: $b7
    ld h, h                                       ; $75f2: $64
    ld d, l                                       ; $75f3: $55
    ld d, h                                       ; $75f4: $54
    db $fc                                        ; $75f5: $fc
    ld a, c                                       ; $75f6: $79
    rst $08                                       ; $75f7: $cf
    push de                                       ; $75f8: $d5
    pop hl                                        ; $75f9: $e1
    ld h, d                                       ; $75fa: $62
    ldh a, [$57]                                  ; $75fb: $f0 $57
    or l                                          ; $75fd: $b5
    ld b, a                                       ; $75fe: $47
    nop                                           ; $75ff: $00
    sbc b                                         ; $7600: $98
    or d                                          ; $7601: $b2
    ld e, a                                       ; $7602: $5f
    ld a, [hl-]                                   ; $7603: $3a
    ld a, b                                       ; $7604: $78
    ld c, c                                       ; $7605: $49
    ld [hl], l                                    ; $7606: $75
    ld c, b                                       ; $7607: $48
    ld e, c                                       ; $7608: $59
    inc de                                        ; $7609: $13
    or c                                          ; $760a: $b1
    jp c, $b69b                                   ; $760b: $da $9b $b6

    and e                                         ; $760e: $a3
    cp l                                          ; $760f: $bd
    ld e, e                                       ; $7610: $5b
    inc c                                         ; $7611: $0c
    cp $0a                                        ; $7612: $fe $0a
    rra                                           ; $7614: $1f
    jr nc, @-$6d                                  ; $7615: $30 $91

    ccf                                           ; $7617: $3f
    ld a, [de]                                    ; $7618: $1a
    db $fc                                        ; $7619: $fc
    push de                                       ; $761a: $d5
    or c                                          ; $761b: $b1
    ld h, l                                       ; $761c: $65
    ld [hl], h                                    ; $761d: $74
    and $45                                       ; $761e: $e6 $45
    ld hl, sp-$55                                 ; $7620: $f8 $ab
    dec de                                        ; $7622: $1b
    ld e, e                                       ; $7623: $5b
    db $ed                                        ; $7624: $ed
    ld e, b                                       ; $7625: $58
    ld c, e                                       ; $7626: $4b
    ld h, a                                       ; $7627: $67
    ld c, a                                       ; $7628: $4f
    ld a, h                                       ; $7629: $7c
    ld l, $6b                                     ; $762a: $2e $6b
    ld [hl+], a                                   ; $762c: $22
    ld d, [hl]                                    ; $762d: $56
    dec de                                        ; $762e: $1b
    adc $bd                                       ; $762f: $ce $bd
    add a                                         ; $7631: $87
    add sp, -$16                                  ; $7632: $e8 $ea
    sub b                                         ; $7634: $90
    add $d6                                       ; $7635: $c6 $d6
    or c                                          ; $7637: $b1
    ld a, $9a                                     ; $7638: $3e $9a
    inc e                                         ; $763a: $1c
    ld a, e                                       ; $763b: $7b
    ld [hl], a                                    ; $763c: $77
    ld h, b                                       ; $763d: $60
    adc a                                         ; $763e: $8f
    add b                                         ; $763f: $80

jr_038_7640:
    call z, $a0e0                                 ; $7640: $cc $e0 $a0
    ld [hl], b                                    ; $7643: $70
    xor $fd                                       ; $7644: $ee $fd
    ld h, e                                       ; $7646: $63
    or l                                          ; $7647: $b5
    ld l, d                                       ; $7648: $6a
    ld h, [hl]                                    ; $7649: $66
    ld b, d                                       ; $764a: $42
    xor l                                         ; $764b: $ad
    or $f6                                        ; $764c: $f6 $f6
    ld a, l                                       ; $764e: $7d
    add h                                         ; $764f: $84
    inc [hl]                                      ; $7650: $34
    rlca                                          ; $7651: $07
    adc h                                         ; $7652: $8c
    ld a, [hl]                                    ; $7653: $7e
    ld h, l                                       ; $7654: $65
    inc bc                                        ; $7655: $03
    ret nz                                        ; $7656: $c0

    dec h                                         ; $7657: $25
    xor e                                         ; $7658: $ab
    adc [hl]                                      ; $7659: $8e
    sub d                                         ; $765a: $92
    adc e                                         ; $765b: $8b
    jr nc, jr_038_7640                            ; $765c: $30 $e2

    dec h                                         ; $765e: $25
    ld h, l                                       ; $765f: $65
    xor $1f                                       ; $7660: $ee $1f
    ld [hl], b                                    ; $7662: $70
    push de                                       ; $7663: $d5
    ld [$8bbe], a                                 ; $7664: $ea $be $8b
    ld d, [hl]                                    ; $7667: $56
    add a                                         ; $7668: $87
    sub h                                         ; $7669: $94
    ld [hl], l                                    ; $766a: $75
    inc [hl]                                      ; $766b: $34
    sbc $51                                       ; $766c: $de $51
    db $ed                                        ; $766e: $ed
    ld e, b                                       ; $766f: $58
    rst $30                                       ; $7670: $f7
    add h                                         ; $7671: $84
    xor a                                         ; $7672: $af
    ld e, b                                       ; $7673: $58
    dec bc                                        ; $7674: $0b
    ld [hl], c                                    ; $7675: $71
    ret                                           ; $7676: $c9


    ld h, c                                       ; $7677: $61
    jp c, $9ecf                                   ; $7678: $da $cf $9e

    sbc e                                         ; $767b: $9b
    db $fc                                        ; $767c: $fc
    ld b, l                                       ; $767d: $45
    add $a4                                       ; $767e: $c6 $a4
    add hl, sp                                    ; $7680: $39
    call z, $abf0                                 ; $7681: $cc $f0 $ab
    ld c, $a9                                     ; $7684: $0e $a9
    ld c, $77                                     ; $7686: $0e $77
    jr @-$75                                      ; $7688: $18 $89

    ccf                                           ; $768a: $3f
    ld c, e                                       ; $768b: $4b
    ld h, e                                       ; $768c: $63
    xor e                                         ; $768d: $ab
    cp l                                          ; $768e: $bd
    sbc l                                         ; $768f: $9d
    set 3, c                                      ; $7690: $cb $d9
    and a                                         ; $7692: $a7
    sbc $8a                                       ; $7693: $de $8a
    ld a, d                                       ; $7695: $7a
    sub c                                         ; $7696: $91
    push af                                       ; $7697: $f5
    ld l, a                                       ; $7698: $6f
    jp c, $fc8e                                   ; $7699: $da $8e $fc

    db $db                                        ; $769c: $db
    db $db                                        ; $769d: $db
    rst $18                                       ; $769e: $df
    db $ed                                        ; $769f: $ed
    add [hl]                                      ; $76a0: $86
    ld a, e                                       ; $76a1: $7b
    rrca                                          ; $76a2: $0f
    ld b, h                                       ; $76a3: $44
    rst $28                                       ; $76a4: $ef
    cp c                                          ; $76a5: $b9
    ld e, a                                       ; $76a6: $5f
    ld de, $7fbd                                  ; $76a7: $11 $bd $7f
    inc l                                         ; $76aa: $2c
    ld b, c                                       ; $76ab: $41
    sub d                                         ; $76ac: $92
    add $82                                       ; $76ad: $c6 $82
    push bc                                       ; $76af: $c5
    adc b                                         ; $76b0: $88
    ld a, a                                       ; $76b1: $7f
    pop bc                                        ; $76b2: $c1
    ld c, l                                       ; $76b3: $4d
    adc d                                         ; $76b4: $8a
    call $e3dc                                    ; $76b5: $cd $dc $e3
    ld l, a                                       ; $76b8: $6f
    ld de, $1ec6                                  ; $76b9: $11 $c6 $1e
    rlca                                          ; $76bc: $07
    sbc d                                         ; $76bd: $9a
    and [hl]                                      ; $76be: $a6
    ld l, c                                       ; $76bf: $69
    ld c, $73                                     ; $76c0: $0e $73
    cp h                                          ; $76c2: $bc
    ld [hl], l                                    ; $76c3: $75
    add hl, de                                    ; $76c4: $19
    cp l                                          ; $76c5: $bd
    ld a, [hl]                                    ; $76c6: $7e
    ld b, a                                       ; $76c7: $47
    ld h, h                                       ; $76c8: $64
    ld l, d                                       ; $76c9: $6a
    or e                                          ; $76ca: $b3
    ld [$442f], a                                 ; $76cb: $ea $2f $44
    scf                                           ; $76ce: $37
    ld a, h                                       ; $76cf: $7c
    db $fc                                        ; $76d0: $fc
    push de                                       ; $76d1: $d5
    push de                                       ; $76d2: $d5
    pop hl                                        ; $76d3: $e1
    ld c, $5a                                     ; $76d4: $0e $5a
    ret c                                         ; $76d6: $d8

    dec bc                                        ; $76d7: $0b
    cp h                                          ; $76d8: $bc
    xor $50                                       ; $76d9: $ee $50
    ld d, $1c                                     ; $76db: $16 $1c
    ld d, h                                       ; $76dd: $54
    ld l, l                                       ; $76de: $6d
    ld d, [hl]                                    ; $76df: $56
    sub $20                                       ; $76e0: $d6 $20
    ld b, $6f                                     ; $76e2: $06 $6f
    sbc d                                         ; $76e4: $9a
    inc bc                                        ; $76e5: $03
    ld c, c                                       ; $76e6: $49
    xor d                                         ; $76e7: $aa
    ld a, b                                       ; $76e8: $78
    ld d, c                                       ; $76e9: $51
    ld a, [bc]                                    ; $76ea: $0a
    ld b, [hl]                                    ; $76eb: $46
    jr z, jr_038_7747                             ; $76ec: $28 $59

    ld [hl], l                                    ; $76ee: $75
    sub h                                         ; $76ef: $94
    ld e, h                                       ; $76f0: $5c
    add h                                         ; $76f1: $84
    ld de, $e92f                                  ; $76f2: $11 $2f $e9
    sbc h                                         ; $76f5: $9c
    ld a, [hl+]                                   ; $76f6: $2a
    ld b, h                                       ; $76f7: $44
    ld c, h                                       ; $76f8: $4c
    ld l, c                                       ; $76f9: $69
    inc sp                                        ; $76fa: $33
    ccf                                           ; $76fb: $3f
    ld l, a                                       ; $76fc: $6f
    push de                                       ; $76fd: $d5
    ld [$3bc6], a                                 ; $76fe: $ea $c6 $3b
    adc d                                         ; $7701: $8a
    ccf                                           ; $7702: $3f
    di                                            ; $7703: $f3
    sbc [hl]                                      ; $7704: $9e
    xor e                                         ; $7705: $ab
    ccf                                           ; $7706: $3f
    ld h, d                                       ; $7707: $62
    or l                                          ; $7708: $b5
    xor d                                         ; $7709: $aa
    pop hl                                        ; $770a: $e1
    cp $b1                                        ; $770b: $fe $b1
    sbc c                                         ; $770d: $99
    add hl, bc                                    ; $770e: $09
    or l                                          ; $770f: $b5
    jp c, $f7db                                   ; $7710: $da $db $f7

    ld de, $d5ce                                  ; $7713: $11 $ce $d5
    rra                                           ; $7716: $1f
    xor e                                         ; $7717: $ab
    dec e                                         ; $7718: $1d
    db $eb                                        ; $7719: $eb
    adc [hl]                                      ; $771a: $8e
    sub b                                         ; $771b: $90
    cp a                                          ; $771c: $bf
    or a                                          ; $771d: $b7
    rst $20                                       ; $771e: $e7
    add b                                         ; $771f: $80
    ld a, $07                                     ; $7720: $3e $07
    add l                                         ; $7722: $85
    inc [hl]                                      ; $7723: $34
    rlca                                          ; $7724: $07
    add hl, bc                                    ; $7725: $09
    db $fc                                        ; $7726: $fc
    push af                                       ; $7727: $f5
    ld c, [hl]                                    ; $7728: $4e
    ld e, d                                       ; $7729: $5a
    db $e4                                        ; $772a: $e4
    rrca                                          ; $772b: $0f
    ld a, h                                       ; $772c: $7c
    xor [hl]                                      ; $772d: $ae
    or c                                          ; $772e: $b1
    ld e, c                                       ; $772f: $59
    ld [hl+], a                                   ; $7730: $22
    db $eb                                        ; $7731: $eb
    sbc $bd                                       ; $7732: $de $bd
    sub c                                         ; $7734: $91
    ld e, c                                       ; $7735: $59
    sbc d                                         ; $7736: $9a
    ld c, h                                       ; $7737: $4c
    ld a, d                                       ; $7738: $7a
    ld l, e                                       ; $7739: $6b
    jp hl                                         ; $773a: $e9


    ld d, a                                       ; $773b: $57
    ld b, h                                       ; $773c: $44
    or l                                          ; $773d: $b5
    adc a                                         ; $773e: $8f
    ld [hl-], a                                   ; $773f: $32
    ld sp, hl                                     ; $7740: $f9
    ld d, e                                       ; $7741: $53
    inc [hl]                                      ; $7742: $34
    inc sp                                        ; $7743: $33
    ld c, l                                       ; $7744: $4d
    ld e, h                                       ; $7745: $5c
    db $ed                                        ; $7746: $ed

jr_038_7747:
    inc [hl]                                      ; $7747: $34
    rlca                                          ; $7748: $07
    ld c, c                                       ; $7749: $49
    pop hl                                        ; $774a: $e1
    ld h, $93                                     ; $774b: $26 $93
    sbc $5a                                       ; $774d: $de $5a
    xor d                                         ; $774f: $aa
    cpl                                           ; $7750: $2f
    add c                                         ; $7751: $81
    ld l, d                                       ; $7752: $6a
    ld sp, hl                                     ; $7753: $f9
    ld l, d                                       ; $7754: $6a
    inc e                                         ; $7755: $1c
    ld l, a                                       ; $7756: $6f
    jp hl                                         ; $7757: $e9


    ld b, a                                       ; $7758: $47
    db $f4                                        ; $7759: $f4
    or $54                                        ; $775a: $f6 $54
    ld l, e                                       ; $775c: $6b
    ld l, a                                       ; $775d: $6f
    sbc c                                         ; $775e: $99
    inc bc                                        ; $775f: $03
    sbc a                                         ; $7760: $9f
    inc e                                         ; $7761: $1c
    sub [hl]                                      ; $7762: $96
    db $ec                                        ; $7763: $ec
    ld l, a                                       ; $7764: $6f
    ld d, [hl]                                    ; $7765: $56
    or d                                          ; $7766: $b2
    xor d                                         ; $7767: $aa
    ld h, e                                       ; $7768: $63
    ld a, l                                       ; $7769: $7d

Call_038_776a:
    ld d, h                                       ; $776a: $54
    dec l                                         ; $776b: $2d
    ld a, [c]                                     ; $776c: $f2
    scf                                           ; $776d: $37
    or $7a                                        ; $776e: $f6 $7a
    dec sp                                        ; $7770: $3b
    ld e, h                                       ; $7771: $5c
    xor b                                         ; $7772: $a8
    reti                                          ; $7773: $d9


    dec c                                         ; $7774: $0d
    db $ec                                        ; $7775: $ec
    db $dd                                        ; $7776: $dd
    and d                                         ; $7777: $a2
    cp l                                          ; $7778: $bd
    ld l, c                                       ; $7779: $69
    ld c, $09                                     ; $777a: $0e $09
    db $fc                                        ; $777c: $fc
    push af                                       ; $777d: $f5
    ld a, l                                       ; $777e: $7d
    sub $3d                                       ; $777f: $d6 $3d
    ld b, d                                       ; $7781: $42
    ld a, d                                       ; $7782: $7a
    jr c, @-$28                                   ; $7783: $38 $d6

    ld e, l                                       ; $7785: $5d
    dec hl                                        ; $7786: $2b
    ld l, a                                       ; $7787: $6f
    ld b, a                                       ; $7788: $47
    rlca                                          ; $7789: $07
    push de                                       ; $778a: $d5
    call nc, $82da                                ; $778b: $d4 $da $82
    db $fc                                        ; $778e: $fc
    xor c                                         ; $778f: $a9
    rst $20                                       ; $7790: $e7
    ld c, $8e                                     ; $7791: $0e $8e
    ld c, l                                       ; $7793: $4d
    ld l, c                                       ; $7794: $69
    ld h, h                                       ; $7795: $64
    dec d                                         ; $7796: $15
    dec d                                         ; $7797: $15
    dec de                                        ; $7798: $1b
    ld d, $38                                     ; $7799: $16 $38

Jump_038_779b:
    rst $30                                       ; $779b: $f7
    xor $a0                                       ; $779c: $ee $a0
    dec c                                         ; $779e: $0d
    cp $aa                                        ; $779f: $fe $aa
    push hl                                       ; $77a1: $e5
    xor e                                         ; $77a2: $ab
    ld [hl], c                                    ; $77a3: $71
    cp h                                          ; $77a4: $bc
    dec e                                         ; $77a5: $1d
    or h                                          ; $77a6: $b4
    and b                                         ; $77a7: $a0
    sbc a                                         ; $77a8: $9f
    rla                                           ; $77a9: $17
    ld l, b                                       ; $77aa: $68
    ldh a, [$d7]                                  ; $77ab: $f0 $d7
    xor a                                         ; $77ad: $af
    adc b                                         ; $77ae: $88
    ld a, [hl-]                                   ; $77af: $3a
    or [hl]                                       ; $77b0: $b6
    inc bc                                        ; $77b1: $03
    rst $38                                       ; $77b2: $ff
    ld c, e                                       ; $77b3: $4b
    add a                                         ; $77b4: $87
    add a                                         ; $77b5: $87
    and l                                         ; $77b6: $a5
    sbc c                                         ; $77b7: $99
    ld b, c                                       ; $77b8: $41

Jump_038_77b9:
    inc c                                         ; $77b9: $0c
    sbc $be                                       ; $77ba: $de $be
    rst $08                                       ; $77bc: $cf
    ld a, [hl-]                                   ; $77bd: $3a
    call Call_000_0901                            ; $77be: $cd $01 $09
    db $fc                                        ; $77c1: $fc
    push af                                       ; $77c2: $f5
    xor $18                                       ; $77c3: $ee $18
    and a                                         ; $77c5: $a7
    rst $30                                       ; $77c6: $f7
    sub b                                         ; $77c7: $90
    dec de                                        ; $77c8: $1b
    dec c                                         ; $77c9: $0d
    cp $ba                                        ; $77ca: $fe $ba
    pop bc                                        ; $77cc: $c1
    rra                                           ; $77cd: $1f
    sbc h                                         ; $77ce: $9c
    ld a, e                                       ; $77cf: $7b
    rst $38                                       ; $77d0: $ff
    and d                                         ; $77d1: $a2
    adc [hl]                                      ; $77d2: $8e
    ld h, d                                       ; $77d3: $62
    cp b                                          ; $77d4: $b8
    dec de                                        ; $77d5: $1b
    db $fc                                        ; $77d6: $fc
    ld b, c                                       ; $77d7: $41
    rst $00                                       ; $77d8: $c7
    ld h, $c0                                     ; $77d9: $26 $c0
    jp nc, $d264                                  ; $77db: $d2 $64 $d2

    ld e, e                                       ; $77de: $5b
    cp $bc                                        ; $77df: $fe $bc
    dec h                                         ; $77e1: $25
    xor e                                         ; $77e2: $ab
    and e                                         ; $77e3: $a3
    ld b, e                                       ; $77e4: $43
    ld e, c                                       ; $77e5: $59
    xor a                                         ; $77e6: $af
    ld [hl], $a2                                  ; $77e7: $36 $a2
    or a                                          ; $77e9: $b7
    ld l, b                                       ; $77ea: $68
    add hl, de                                    ; $77eb: $19
    inc c                                         ; $77ec: $0c
    adc e                                         ; $77ed: $8b
    scf                                           ; $77ee: $37
    call $8c01                                    ; $77ef: $cd $01 $8c
    ld h, $28                                     ; $77f2: $26 $28
    add hl, hl                                    ; $77f4: $29
    inc sp                                        ; $77f5: $33
    dec e                                         ; $77f6: $1d
    ld hl, sp+$08                                 ; $77f7: $f8 $08
    ld b, $37                                     ; $77f9: $06 $37
    db $10                                        ; $77fb: $10
    xor d                                         ; $77fc: $aa
    cpl                                           ; $77fd: $2f
    cp $8a                                        ; $77fe: $fe $8a
    ld a, [hl]                                    ; $7800: $7e
    ld d, d                                       ; $7801: $52
    ld l, d                                       ; $7802: $6a
    ld a, [hl]                                    ; $7803: $7e
    or e                                          ; $7804: $b3
    and h                                         ; $7805: $a4
    add hl, sp                                    ; $7806: $39
    ret                                           ; $7807: $c9


    rra                                           ; $7808: $1f
    and c                                         ; $7809: $a1
    ld e, d                                       ; $780a: $5a
    push af                                       ; $780b: $f5
    ld d, h                                       ; $780c: $54
    rra                                           ; $780d: $1f
    sbc a                                         ; $780e: $9f
    ld h, d                                       ; $780f: $62
    dec e                                         ; $7810: $1d
    db $eb                                        ; $7811: $eb
    and e                                         ; $7812: $a3
    ret                                           ; $7813: $c9


    ld [$336d], a                                 ; $7814: $ea $6d $33
    set 2, a                                      ; $7817: $cb $d7
    cp [hl]                                       ; $7819: $be
    dec sp                                        ; $781a: $3b
    jp Jump_038_56c6                              ; $781b: $c3 $c6 $56


    add a                                         ; $781e: $87
    dec sp                                        ; $781f: $3b
    ld d, h                                       ; $7820: $54
    ld h, l                                       ; $7821: $65
    sbc $66                                       ; $7822: $de $66
    ld b, [hl]                                    ; $7824: $46
    ccf                                           ; $7825: $3f
    rst $28                                       ; $7826: $ef
    adc h                                         ; $7827: $8c
    ld c, l                                       ; $7828: $4d
    ld a, [$40d8]                                 ; $7829: $fa $d8 $40
    xor b                                         ; $782c: $a8
    ld h, e                                       ; $782d: $63
    adc e                                         ; $782e: $8b
    ld a, [hl]                                    ; $782f: $7e
    ld d, d                                       ; $7830: $52
    sub $6a                                       ; $7831: $d6 $6a
    ld b, l                                       ; $7833: $45
    cp l                                          ; $7834: $bd
    ret z                                         ; $7835: $c8

    cp h                                          ; $7836: $bc
    jp c, Jump_038_4658                           ; $7837: $da $58 $46

Call_038_783a:
    inc de                                        ; $783a: $13
    and h                                         ; $783b: $a4
    ld b, a                                       ; $783c: $47
    db $d3                                        ; $783d: $d3
    inc e                                         ; $783e: $1c
    and e                                         ; $783f: $a3
    cp a                                          ; $7840: $bf

Call_038_7841:
    xor b                                         ; $7841: $a8
    and e                                         ; $7842: $a3
    ld h, d                                       ; $7843: $62
    ld l, l                                       ; $7844: $6d
    add sp, $0b                                   ; $7845: $e8 $0b
    ld c, e                                       ; $7847: $4b
    dec e                                         ; $7848: $1d
    sbc c                                         ; $7849: $99
    rla                                           ; $784a: $17
    ld l, b                                       ; $784b: $68
    ldh a, [$d7]                                  ; $784c: $f0 $d7
    ld d, e                                       ; $784e: $53
    xor l                                         ; $784f: $ad
    dec l                                         ; $7850: $2d
    dec h                                         ; $7851: $25
    or c                                          ; $7852: $b1
    sub [hl]                                      ; $7853: $96
    ld h, $93                                     ; $7854: $26 $93
    sbc $5a                                       ; $7856: $de $5a
    ld h, [hl]                                    ; $7858: $66
    call z, Call_000_0901                         ; $7859: $cc $01 $09
    db $fc                                        ; $785c: $fc
    ld [hl], l                                    ; $785d: $75
    ret nc                                        ; $785e: $d0

    ld [hl], d                                    ; $785f: $72
    inc b                                         ; $7860: $04
    and d                                         ; $7861: $a2
    xor e                                         ; $7862: $ab
    cp l                                          ; $7863: $bd
    ld h, l                                       ; $7864: $65
    inc [hl]                                      ; $7865: $34
    ld b, c                                       ; $7866: $41
    ld c, c                                       ; $7867: $49
    sbc c                                         ; $7868: $99
    add hl, hl                                    ; $7869: $29
    ld a, [hl]                                    ; $786a: $7e
    ld a, [$87a1]                                 ; $786b: $fa $a1 $87
    ld h, e                                       ; $786e: $63
    dec l                                         ; $786f: $2d
    dec e                                         ; $7870: $1d
    xor c                                         ; $7871: $a9
    nop                                           ; $7872: $00
    inc l                                         ; $7873: $2c
    ld l, c                                       ; $7874: $69
    ld c, $49                                     ; $7875: $0e $49
    rra                                           ; $7877: $1f
    cp e                                          ; $7878: $bb
    adc c                                         ; $7879: $89
    db $fc                                        ; $787a: $fc
    ld hl, $23b8                                  ; $787b: $21 $b8 $23
    ccf                                           ; $787e: $3f
    dec a                                         ; $787f: $3d
    rst $30                                       ; $7880: $f7
    xor $dd                                       ; $7881: $ee $dd
    ld b, $7f                                     ; $7883: $06 $7f
    dec h                                         ; $7885: $25
    xor e                                         ; $7886: $ab
    and e                                         ; $7887: $a3
    or e                                          ; $7888: $b3
    ld c, b                                       ; $7889: $48
    ldh [$d8], a                                  ; $788a: $e0 $d8
    jp nc, $cfcc                                  ; $788c: $d2 $cc $cf

    rst $20                                       ; $788f: $e7
    jp nc, $d88f                                  ; $7890: $d2 $8f $d8

    ldh [$af], a                                  ; $7893: $e0 $af
    ld b, a                                       ; $7895: $47
    ld c, b                                       ; $7896: $48
    dec e                                         ; $7897: $1d
    db $db                                        ; $7898: $db
    add c                                         ; $7899: $81
    rst $38                                       ; $789a: $ff
    and l                                         ; $789b: $a5
    or e                                          ; $789c: $b3
    ld e, b                                       ; $789d: $58
    ld e, e                                       ; $789e: $5b
    or [hl]                                       ; $789f: $b6
    ld a, a                                       ; $78a0: $7f
    xor e                                         ; $78a1: $ab
    cp l                                          ; $78a2: $bd
    dec e                                         ; $78a3: $1d
    ld [hl], c                                    ; $78a4: $71
    dec c                                         ; $78a5: $0d
    db $10                                        ; $78a6: $10
    cp l                                          ; $78a7: $bd
    ld d, c                                       ; $78a8: $51
    or e                                          ; $78a9: $b3
    sbc $34                                       ; $78aa: $de $34
    rlca                                          ; $78ac: $07
    ld c, c                                       ; $78ad: $49
    ld h, c                                       ; $78ae: $61
    or h                                          ; $78af: $b4
    call nc, $99b1                                ; $78b0: $d4 $b1 $99
    reti                                          ; $78b3: $d9


    and b                                         ; $78b4: $a0
    jp c, Jump_000_32e0                           ; $78b5: $da $e0 $32

    jp hl                                         ; $78b8: $e9


    jr jr_038_7933                                ; $78b9: $18 $78

    sub [hl]                                      ; $78bb: $96
    ret c                                         ; $78bc: $d8

    ld hl, $2e1d                                  ; $78bd: $21 $1d $2e
    ld b, l                                       ; $78c0: $45
    cp b                                          ; $78c1: $b8
    jr z, @+$3b                                   ; $78c2: $28 $39

    inc l                                         ; $78c4: $2c
    ret nc                                        ; $78c5: $d0

    ld h, a                                       ; $78c6: $67
    ld d, c                                       ; $78c7: $51
    rst $00                                       ; $78c8: $c7
    cp c                                          ; $78c9: $b9
    rst $30                                       ; $78ca: $f7
    ld [hl], b                                    ; $78cb: $70
    dec e                                         ; $78cc: $1d
    ld e, e                                       ; $78cd: $5b
    rlca                                          ; $78ce: $07
    ld d, b                                       ; $78cf: $50
    ld c, e                                       ; $78d0: $4b
    add hl, de                                    ; $78d1: $19

Call_038_78d2:
    cpl                                           ; $78d2: $2f
    ld a, [hl]                                    ; $78d3: $7e
    inc sp                                        ; $78d4: $33
    ld c, l                                       ; $78d5: $4d
    ld [hl], e                                    ; $78d6: $73
    add hl, bc                                    ; $78d7: $09
    db $fc                                        ; $78d8: $fc
    push af                                       ; $78d9: $f5
    ld a, l                                       ; $78da: $7d
    sub $3d                                       ; $78db: $d6 $3d
    ld [bc], a                                    ; $78dd: $02
    ld a, [hl-]                                   ; $78de: $3a
    ld a, [c]                                     ; $78df: $f2
    ld d, e                                       ; $78e0: $53
    ld [c], a                                     ; $78e1: $e2
    ld a, [de]                                    ; $78e2: $1a
    db $d3                                        ; $78e3: $d3
    cp l                                          ; $78e4: $bd
    ld hl, sp-$55                                 ; $78e5: $f8 $ab
    ld h, e                                       ; $78e7: $63
    sbc e                                         ; $78e8: $9b
    ld c, h                                       ; $78e9: $4c
    ld a, d                                       ; $78ea: $7a
    res 3, a                                      ; $78eb: $cb $9f
    or a                                          ; $78ed: $b7
    ld h, h                                       ; $78ee: $64
    ld d, l                                       ; $78ef: $55
    ld d, c                                       ; $78f0: $51
    inc bc                                        ; $78f1: $03
    add h                                         ; $78f2: $84
    ld [hl], a                                    ; $78f3: $77
    ld c, b                                       ; $78f4: $48
    ld c, $23                                     ; $78f5: $0e $23
    dec e                                         ; $78f7: $1d
    db $eb                                        ; $78f8: $eb
    adc $71                                       ; $78f9: $ce $71
    db $fc                                        ; $78fb: $fc
    ld e, $9f                                     ; $78fc: $1e $9f
    ccf                                           ; $78fe: $3f
    xor b                                         ; $78ff: $a8
    ld h, e                                       ; $7900: $63
    ld a, e                                       ; $7901: $7b
    rrca                                          ; $7902: $0f
    cp c                                          ; $7903: $b9
    pop de                                        ; $7904: $d1
    ldh [$af], a                                  ; $7905: $e0 $af
    ret z                                         ; $7907: $c8

    rst $18                                       ; $7908: $df
    pop af                                        ; $7909: $f1
    ld sp, hl                                     ; $790a: $f9
    db $ed                                        ; $790b: $ed
    ld a, l                                       ; $790c: $7d
    ld [bc], a                                    ; $790d: $02
    adc h                                         ; $790e: $8c
    ld c, l                                       ; $790f: $4d
    ld h, $bd                                     ; $7910: $26 $bd
    or l                                          ; $7912: $b5

jr_038_7913:
    db $10                                        ; $7913: $10
    ld [de], a                                    ; $7914: $12
    or a                                          ; $7915: $b7
    adc a                                         ; $7916: $8f
    ld l, b                                       ; $7917: $68
    and a                                         ; $7918: $a7
    add hl, sp                                    ; $7919: $39
    inc hl                                        ; $791a: $23
    rst $38                                       ; $791b: $ff
    ld d, $c3                                     ; $791c: $16 $c3
    rrca                                          ; $791e: $0f
    cp d                                          ; $791f: $ba
    pop bc                                        ; $7920: $c1
    rra                                           ; $7921: $1f
    db $f4                                        ; $7922: $f4
    ld [hl+], a                                   ; $7923: $22
    and b                                         ; $7924: $a0
    ret                                           ; $7925: $c9


    and h                                         ; $7926: $a4
    or a                                          ; $7927: $b7
    sub [hl]                                      ; $7928: $96
    add $56                                       ; $7929: $c6 $56
    ld a, e                                       ; $792b: $7b
    ld a, e                                       ; $792c: $7b
    or c                                          ; $792d: $b1
    ld d, $6f                                     ; $792e: $16 $6f
    sbc c                                         ; $7930: $99
    ld [hl], b                                    ; $7931: $70
    pop af                                        ; $7932: $f1

jr_038_7933:
    db $db                                        ; $7933: $db
    db $dd                                        ; $7934: $dd
    ld [hl], d                                    ; $7935: $72
    di                                            ; $7936: $f3
    and [hl]                                      ; $7937: $a6
    sbc l                                         ; $7938: $9d
    ld e, e                                       ; $7939: $5b
    inc a                                         ; $793a: $3c
    jr nc, @-$1e                                  ; $793b: $30 $e0

    db $ed                                        ; $793d: $ed
    and b                                         ; $793e: $a0
    push hl                                       ; $793f: $e5
    ld e, $22                                     ; $7940: $1e $22
    sbc $62                                       ; $7942: $de $62
    jr c, jr_038_7913                             ; $7944: $38 $cd

    ld bc, $1d23                                  ; $7946: $01 $23 $1d
    db $db                                        ; $7949: $db
    ld a, c                                       ; $794a: $79
    ccf                                           ; $794b: $3f
    ld e, b                                       ; $794c: $58
    sbc d                                         ; $794d: $9a
    ld sp, hl                                     ; $794e: $f9
    ld b, c                                       ; $794f: $41
    ld c, a                                       ; $7950: $4f
    or l                                          ; $7951: $b5
    or $76                                        ; $7952: $f6 $76
    jr z, @-$13                                   ; $7954: $28 $eb

    push de                                       ; $7956: $d5
    dec a                                         ; $7957: $3d
    ld [bc], a                                    ; $7958: $02
    xor d                                         ; $7959: $aa
    cp l                                          ; $795a: $bd
    ld c, l                                       ; $795b: $4d
    ld h, $bd                                     ; $795c: $26 $bd
    or l                                          ; $795e: $b5
    ld l, h                                       ; $795f: $6c
    ret                                           ; $7960: $c9


    xor d                                         ; $7961: $aa
    jp $900c                                      ; $7962: $c3 $0c $90


    and $23                                       ; $7965: $e6 $23
    dec e                                         ; $7967: $1d
    db $eb                                        ; $7968: $eb
    adc $23                                       ; $7969: $ce $23
    rst $10                                       ; $796b: $d7
    pop af                                        ; $796c: $f1
    adc e                                         ; $796d: $8b
    ccf                                           ; $796e: $3f
    inc bc                                        ; $796f: $03
    scf                                           ; $7970: $37
    adc [hl]                                      ; $7971: $8e
    jp Jump_038_7d32                              ; $7972: $c3 $32 $7d


    rst $00                                       ; $7975: $c7
    rra                                           ; $7976: $1f
    ld e, $5b                                     ; $7977: $1e $5b
    sub [hl]                                      ; $7979: $96
    add $6a                                       ; $797a: $c6 $6a
    ld h, e                                       ; $797c: $63
    sub e                                         ; $797d: $93
    push de                                       ; $797e: $d5
    db $db                                        ; $797f: $db
    ld [de], a                                    ; $7980: $12
    or c                                          ; $7981: $b1
    jp c, $afd0                                   ; $7982: $da $d0 $af

    ld hl, sp-$15                                 ; $7985: $f8 $eb
    pop af                                        ; $7987: $f1
    ld l, c                                       ; $7988: $69
    dec e                                         ; $7989: $1d
    db $db                                        ; $798a: $db
    ld de, $6c97                                  ; $798b: $11 $97 $6c
    ld a, [hl-]                                   ; $798e: $3a
    ld a, [hl]                                    ; $798f: $7e
    ld c, $09                                     ; $7990: $0e $09
    db $fc                                        ; $7992: $fc
    sub l                                         ; $7993: $95
    sub b                                         ; $7994: $90
    sbc a                                         ; $7995: $9f
    cp c                                          ; $7996: $b9
    ld b, a                                       ; $7997: $47
    ldh a, [rPCM34]                               ; $7998: $f0 $77
    xor $c5                                       ; $799a: $ee $c5
    halt                                          ; $799c: $76
    and h                                         ; $799d: $a4
    ld h, b                                       ; $799e: $60
    jp c, Jump_000_2fd9                           ; $799f: $da $d9 $2f

    sub c                                         ; $79a2: $91
    ret nz                                        ; $79a3: $c0

    ld a, [hl-]                                   ; $79a4: $3a
    sub $db                                       ; $79a5: $d6 $db
    pop de                                        ; $79a7: $d1
    ld b, $b8                                     ; $79a8: $06 $b8
    db $fd                                        ; $79aa: $fd
    ld h, e                                       ; $79ab: $63
    add b                                         ; $79ac: $80
    ld l, b                                       ; $79ad: $68
    and $cc                                       ; $79ae: $e6 $cc
    ld e, e                                       ; $79b0: $5b
    rst $00                                       ; $79b1: $c7
    ld [hl], $59                                  ; $79b2: $36 $59
    cp l                                          ; $79b4: $bd
    ld l, l                                       ; $79b5: $6d
    and $7b                                       ; $79b6: $e6 $7b
    db $ec                                        ; $79b8: $ec
    ld a, d                                       ; $79b9: $7a
    ld a, e                                       ; $79ba: $7b
    dec de                                        ; $79bb: $1b
    ld a, e                                       ; $79bc: $7b
    rla                                           ; $79bd: $17
    sbc h                                         ; $79be: $9c
    and $49                                       ; $79bf: $e6 $49
    adc [hl]                                      ; $79c1: $8e
    ld [hl], l                                    ; $79c2: $75
    ld h, a                                       ; $79c3: $67
    ld de, $d5ab                                  ; $79c4: $11 $ab $d5
    or c                                          ; $79c7: $b1
    ld c, l                                       ; $79c8: $4d
    or [hl]                                       ; $79c9: $b6
    inc e                                         ; $79ca: $1c
    or c                                          ; $79cb: $b1
    xor $fb                                       ; $79cc: $ee $fb
    ld d, b                                       ; $79ce: $50
    rst $00                                       ; $79cf: $c7
    ld a, d                                       ; $79d0: $7a
    ld c, e                                       ; $79d1: $4b
    ld c, $1f                                     ; $79d2: $0e $1f
    inc [hl]                                      ; $79d4: $34
    ld hl, sp-$0d                                 ; $79d5: $f8 $f3
    halt                                          ; $79d7: $76
    ld a, b                                       ; $79d8: $78
    ld e, b                                       ; $79d9: $58
    ld l, [hl]                                    ; $79da: $6e
    rst $10                                       ; $79db: $d7
    nop                                           ; $79dc: $00
    sub c                                         ; $79dd: $91
    and $4c                                       ; $79de: $e6 $4c
    rlca                                          ; $79e0: $07
    inc [hl]                                      ; $79e1: $34
    ld hl, sp+$6b                                 ; $79e2: $f8 $6b
    ld l, h                                       ; $79e4: $6c
    sub e                                         ; $79e5: $93
    xor a                                         ; $79e6: $af
    db $ec                                        ; $79e7: $ec
    cp $05                                        ; $79e8: $fe $05
    or b                                          ; $79ea: $b0
    ld l, h                                       ; $79eb: $6c
    db $ec                                        ; $79ec: $ec
    cp c                                          ; $79ed: $b9
    inc b                                         ; $79ee: $04
    jp hl                                         ; $79ef: $e9


    ld d, c                                       ; $79f0: $51
    scf                                           ; $79f1: $37
    ld hl, sp-$15                                 ; $79f2: $f8 $eb
    ld de, $f5fc                                  ; $79f4: $11 $fc $f5
    ld e, $ee                                     ; $79f7: $1e $ee
    ld d, a                                       ; $79f9: $57
    ld e, b                                       ; $79fa: $58
    db $ed                                        ; $79fb: $ed
    and e                                         ; $79fc: $a3
    jp $99a3                                      ; $79fd: $c3 $a3 $99


    rlca                                          ; $7a00: $07
    ld c, h                                       ; $7a01: $4c
    add hl, hl                                    ; $7a02: $29
    and h                                         ; $7a03: $a4
    add hl, sp                                    ; $7a04: $39
    ret                                           ; $7a05: $c9


    ld e, $73                                     ; $7a06: $1e $73
    xor $dd                                       ; $7a08: $ee $dd
    jp nc, $a1f7                                  ; $7a0a: $d2 $f7 $a1

    add a                                         ; $7a0d: $87
    ld h, e                                       ; $7a0e: $63
    cp l                                          ; $7a0f: $bd
    dec e                                         ; $7a10: $1d
    ld h, c                                       ; $7a11: $61
    ld b, h                                       ; $7a12: $44
    db $d3                                        ; $7a13: $d3
    sbc e                                         ; $7a14: $9b
    ld [c], a                                     ; $7a15: $e2
    rst $08                                       ; $7a16: $cf
    db $db                                        ; $7a17: $db
    add c                                         ; $7a18: $81
    adc e                                         ; $7a19: $8b
    cp a                                          ; $7a1a: $bf
    or b                                          ; $7a1b: $b0
    ret nz                                        ; $7a1c: $c0

    adc h                                         ; $7a1d: $8c
    add hl, sp                                    ; $7a1e: $39
    add hl, bc                                    ; $7a1f: $09
    ld e, e                                       ; $7a20: $5b
    and $fe                                       ; $7a21: $e6 $fe
    ld bc, $e763                                  ; $7a23: $01 $63 $e7
    ld e, c                                       ; $7a26: $59
    or b                                          ; $7a27: $b0
    ld c, b                                       ; $7a28: $48
    ldh a, [rTAC]                                 ; $7a29: $f0 $07
    ld a, l                                       ; $7a2b: $7d
    sbc a                                         ; $7a2c: $9f
    ld [hl], l                                    ; $7a2d: $75
    add e                                         ; $7a2e: $83
    cp a                                          ; $7a2f: $bf
    add $71                                       ; $7a30: $c6 $71
    ld e, b                                       ; $7a32: $58
    xor d                                         ; $7a33: $aa
    ccf                                           ; $7a34: $3f
    sub [hl]                                      ; $7a35: $96
    pop de                                        ; $7a36: $d1
    inc b                                         ; $7a37: $04
    jp hl                                         ; $7a38: $e9


    pop de                                        ; $7a39: $d1
    ld [hl], e                                    ; $7a3a: $73
    ccf                                           ; $7a3b: $3f
    push bc                                       ; $7a3c: $c5
    sbc $49                                       ; $7a3d: $de $49
    and d                                         ; $7a3f: $a2
    db $dd                                        ; $7a40: $dd
    ldh [$af], a                                  ; $7a41: $e0 $af
    ld e, a                                       ; $7a43: $5f
    ld de, $eb95                                  ; $7a44: $11 $95 $eb
    ld a, c                                       ; $7a47: $79
    dec sp                                        ; $7a48: $3b
    inc a                                         ; $7a49: $3c
    inc l                                         ; $7a4a: $2c
    ld e, e                                       ; $7a4b: $5b
    ld a, [$e115]                                 ; $7a4c: $fa $15 $e1
    ld c, l                                       ; $7a4f: $4d
    ld [hl], e                                    ; $7a50: $73
    add hl, bc                                    ; $7a51: $09
    db $fc                                        ; $7a52: $fc
    sub l                                         ; $7a53: $95
    adc l                                         ; $7a54: $8d
    dec l                                         ; $7a55: $2d
    ld e, [hl]                                    ; $7a56: $5e
    dec a                                         ; $7a57: $3d
    ld c, b                                       ; $7a58: $48
    jp c, Jump_000_06e7                           ; $7a59: $da $e7 $06

    ld a, a                                       ; $7a5c: $7f
    cp l                                          ; $7a5d: $bd
    sub e                                         ; $7a5e: $93
    ld b, h                                       ; $7a5f: $44
    cp e                                          ; $7a60: $bb
    ld b, a                                       ; $7a61: $47
    ldh a, [$d7]                                  ; $7a62: $f0 $d7
    ld d, e                                       ; $7a64: $53
    dec c                                         ; $7a65: $0d
    ld h, h                                       ; $7a66: $64
    add sp, $3f                                   ; $7a67: $e8 $3f
    ld c, d                                       ; $7a69: $4a
    jp $822c                                      ; $7a6a: $c3 $2c $82


    or a                                          ; $7a6d: $b7
    or c                                          ; $7a6e: $b1
    ld [hl], l                                    ; $7a6f: $75
    ld l, h                                       ; $7a70: $6c
    sub c                                         ; $7a71: $91
    cp a                                          ; $7a72: $bf
    or c                                          ; $7a73: $b1
    rst $10                                       ; $7a74: $d7
    ld a, b                                       ; $7a75: $78
    xor $dd                                       ; $7a76: $ee $dd
    pop bc                                        ; $7a78: $c1
    sbc a                                         ; $7a79: $9f
    or c                                          ; $7a7a: $b1
    or e                                          ; $7a7b: $b3
    ld e, b                                       ; $7a7c: $58
    ld e, e                                       ; $7a7d: $5b
    ld e, b                                       ; $7a7e: $58
    inc bc                                        ; $7a7f: $03
    call nc, Call_000_37b1                        ; $7a80: $d4 $b1 $37
    add l                                         ; $7a83: $85
    db $fc                                        ; $7a84: $fc
    sbc c                                         ; $7a85: $99
    ld l, [hl]                                    ; $7a86: $6e
    sbc d                                         ; $7a87: $9a
    inc bc                                        ; $7a88: $03
    ld c, c                                       ; $7a89: $49
    pop hl                                        ; $7a8a: $e1
    ld h, $93                                     ; $7a8b: $26 $93
    sbc $5a                                       ; $7a8d: $de $5a
    ld h, $66                                     ; $7a8f: $26 $66
    ld b, $a8                                     ; $7a91: $06 $a8
    rrca                                          ; $7a93: $0f
    ld [hl], c                                    ; $7a94: $71
    ld l, l                                       ; $7a95: $6d
    or l                                          ; $7a96: $b5
    ld a, h                                       ; $7a97: $7c
    dec [hl]                                      ; $7a98: $35
    adc [hl]                                      ; $7a99: $8e
    or a                                          ; $7a9a: $b7
    rst $30                                       ; $7a9b: $f7
    db $10                                        ; $7a9c: $10
    ld e, l                                       ; $7a9d: $5d
    ld a, [$c337]                                 ; $7a9e: $fa $37 $c3
    ld a, a                                       ; $7aa1: $7f
    sub h                                         ; $7aa2: $94
    or l                                          ; $7aa3: $b5
    or $de                                        ; $7aa4: $f6 $de
    ld l, b                                       ; $7aa6: $68
    ldh a, [$97]                                  ; $7aa7: $f0 $97
    and $73                                       ; $7aa9: $e6 $73
    dec hl                                        ; $7aab: $2b
    add sp, $11                                   ; $7aac: $e8 $11
    jp nc, Jump_000_1cd9                          ; $7aae: $d2 $d9 $1c

    ld a, [$e0dc]                                 ; $7ab1: $fa $dc $e0
    xor a                                         ; $7ab4: $af
    rst $28                                       ; $7ab5: $ef
    or e                                          ; $7ab6: $b3
    xor $cd                                       ; $7ab7: $ee $cd
    or c                                          ; $7ab9: $b1
    xor $6c                                       ; $7aba: $ee $6c
    ld a, [bc]                                    ; $7abc: $0a
    and c                                         ; $7abd: $a1
    ld h, h                                       ; $7abe: $64
    ld [hl], l                                    ; $7abf: $75
    sub h                                         ; $7ac0: $94
    add hl, sp                                    ; $7ac1: $39
    jr nz, @-$18                                  ; $7ac2: $20 $e6

    rst $08                                       ; $7ac4: $cf
    sbc e                                         ; $7ac5: $9b
    halt                                          ; $7ac6: $76
    and h                                         ; $7ac7: $a4
    ld h, e                                       ; $7ac8: $63
    sbc e                                         ; $7ac9: $9b
    ld c, h                                       ; $7aca: $4c
    ld a, d                                       ; $7acb: $7a
    ld l, e                                       ; $7acc: $6b
    ld sp, hl                                     ; $7acd: $f9
    ld a, [hl+]                                   ; $7ace: $2a
    ld [hl], e                                    ; $7acf: $73
    ld b, c                                       ; $7ad0: $41
    ld b, c                                       ; $7ad1: $41
    adc a                                         ; $7ad2: $8f
    sub b                                         ; $7ad3: $90
    sbc $fd                                       ; $7ad4: $de $fd
    jp nc, $091c                                  ; $7ad6: $d2 $1c $09

    db $fc                                        ; $7ad9: $fc
    push af                                       ; $7ada: $f5
    dec h                                         ; $7adb: $25
    ld [bc], a                                    ; $7adc: $02
    cp b                                          ; $7add: $b8
    sbc c                                         ; $7ade: $99
    ld e, h                                       ; $7adf: $5c
    db $e3                                        ; $7ae0: $e3
    cp b                                          ; $7ae1: $b8
    or e                                          ; $7ae2: $b3
    add hl, hl                                    ; $7ae3: $29
    add h                                         ; $7ae4: $84
    ld a, [hl]                                    ; $7ae5: $7e
    ld b, l                                       ; $7ae6: $45
    call nc, $deb1                                ; $7ae7: $d4 $b1 $de
    sbc $56                                       ; $7aea: $de $56
    pop hl                                        ; $7aec: $e1
    add b                                         ; $7aed: $80
    ld b, h                                       ; $7aee: $44
    and $6d                                       ; $7aef: $e6 $6d
    ld [hl], d                                    ; $7af1: $72
    ld [c], a                                     ; $7af2: $e2
    ld e, e                                       ; $7af3: $5b
    cp $bc                                        ; $7af4: $fe $bc
    ret z                                         ; $7af6: $c8

    sbc a                                         ; $7af7: $9f
    rst $30                                       ; $7af8: $f7
    ld h, [hl]                                    ; $7af9: $66
    sbc d                                         ; $7afa: $9a
    and $c9                                       ; $7afb: $e6 $c9
    sub [hl]                                      ; $7afd: $96
    inc hl                                        ; $7afe: $23
    sub $c5                                       ; $7aff: $d6 $c5
    ldh a, [$83]                                  ; $7b01: $f0 $83
    ld a, $2b                                     ; $7b03: $3e $2b
    ld [hl], b                                    ; $7b05: $70
    adc a                                         ; $7b06: $8f
    ld c, a                                       ; $7b07: $4f
    ld a, e                                       ; $7b08: $7b
    rrca                                          ; $7b09: $0f
    ld l, e                                       ; $7b0a: $6b
    ld c, e                                       ; $7b0b: $4b
    cp a                                          ; $7b0c: $bf
    jp nz, $ef73                                  ; $7b0d: $c2 $73 $ef

    pop hl                                        ; $7b10: $e1
    ld a, [hl-]                                   ; $7b11: $3a
    or [hl]                                       ; $7b12: $b6
    sbc c                                         ; $7b13: $99
    ld b, l                                       ; $7b14: $45
    dec c                                         ; $7b15: $0d
    db $10                                        ; $7b16: $10
    ld h, b                                       ; $7b17: $60
    ld l, h                                       ; $7b18: $6c
    or d                                          ; $7b19: $b2
    ld a, d                                       ; $7b1a: $7a
    sbc e                                         ; $7b1b: $9b
    and $09                                       ; $7b1c: $e6 $09
    db $fc                                        ; $7b1e: $fc
    push af                                       ; $7b1f: $f5
    ld a, l                                       ; $7b20: $7d
    sub $dd                                       ; $7b21: $d6 $dd
    ldh [rIF], a                                  ; $7b23: $e0 $0f
    sbc d                                         ; $7b25: $9a
    ld a, c                                       ; $7b26: $79
    ld d, l                                       ; $7b27: $55
    ld d, [hl]                                    ; $7b28: $56
    add d                                         ; $7b29: $82
    inc h                                         ; $7b2a: $24
    push de                                       ; $7b2b: $d5
    pop hl                                        ; $7b2c: $e1
    adc [hl]                                      ; $7b2d: $8e
    ld [de], a                                    ; $7b2e: $12
    ld [de], a                                    ; $7b2f: $12
    and c                                         ; $7b30: $a1
    ld [hl], $6b                                  ; $7b31: $36 $6b
    ld h, [hl]                                    ; $7b33: $66
    ld l, d                                       ; $7b34: $6a
    ld e, c                                       ; $7b35: $59
    ld c, b                                       ; $7b36: $48
    db $db                                        ; $7b37: $db
    pop de                                        ; $7b38: $d1
    adc c                                         ; $7b39: $89
    ld [c], a                                     ; $7b3a: $e2
    ld b, $7f                                     ; $7b3b: $06 $7f
    push de                                       ; $7b3d: $d5
    rla                                           ; $7b3e: $17
    ld a, a                                       ; $7b3f: $7f
    ld e, l                                       ; $7b40: $5d
    dec h                                         ; $7b41: $25
    ld [hl], l                                    ; $7b42: $75
    ld l, h                                       ; $7b43: $6c
    ld c, a                                       ; $7b44: $4f
    ld h, d                                       ; $7b45: $62
    dec l                                         ; $7b46: $2d
    inc b                                         ; $7b47: $04
    dec c                                         ; $7b48: $0d
    ld h, a                                       ; $7b49: $67
    sub [hl]                                      ; $7b4a: $96
    sbc $c3                                       ; $7b4b: $de $c3
    ld c, l                                       ; $7b4d: $4d
    or [hl]                                       ; $7b4e: $b6
    inc e                                         ; $7b4f: $1c
    or c                                          ; $7b50: $b1
    ld c, [hl]                                    ; $7b51: $4e
    ld [hl], e                                    ; $7b52: $73
    ld c, c                                       ; $7b53: $49
    pop hl                                        ; $7b54: $e1
    adc [hl]                                      ; $7b55: $8e
    or $47                                        ; $7b56: $f6 $47
    ld [$1331], a                                 ; $7b58: $ea $31 $13
    sbc a                                         ; $7b5b: $9f
    ld [hl], b                                    ; $7b5c: $70
    rrca                                          ; $7b5d: $0f
    ld c, d                                       ; $7b5e: $4a
    ld h, e                                       ; $7b5f: $63
    inc sp                                        ; $7b60: $33
    scf                                           ; $7b61: $37
    and e                                         ; $7b62: $a3
    ld c, $fe                                     ; $7b63: $0e $fe
    cp h                                          ; $7b65: $bc
    push bc                                       ; $7b66: $c5
    ldh [$af], a                                  ; $7b67: $e0 $af
    rst $30                                       ; $7b69: $f7
    sub b                                         ; $7b6a: $90
    dec de                                        ; $7b6b: $1b
    dec c                                         ; $7b6c: $0d
    cp $ce                                        ; $7b6d: $fe $ce
    cp l                                          ; $7b6f: $bd
    add a                                         ; $7b70: $87
    db $eb                                        ; $7b71: $eb
    ret c                                         ; $7b72: $d8

    ld c, $8f                                     ; $7b73: $0e $8f
    ld l, d                                       ; $7b75: $6a
    rra                                           ; $7b76: $1f
    db $fd                                        ; $7b77: $fd
    xor e                                         ; $7b78: $ab
    dec l                                         ; $7b79: $2d
    sbc $34                                       ; $7b7a: $de $34
    rlca                                          ; $7b7c: $07
    and e                                         ; $7b7d: $a3
    db $e4                                        ; $7b7e: $e4
    ld [hl+], a                                   ; $7b7f: $22
    adc h                                         ; $7b80: $8c
    ld a, b                                       ; $7b81: $78
    ld c, c                                       ; $7b82: $49
    ld b, a                                       ; $7b83: $47
    ld [hl], d                                    ; $7b84: $72
    add $6b                                       ; $7b85: $c6 $6b
    ld a, a                                       ; $7b87: $7f
    or $29                                        ; $7b88: $f6 $29
    db $ed                                        ; $7b8a: $ed
    db $fd                                        ; $7b8b: $fd
    di                                            ; $7b8c: $f3
    rlca                                          ; $7b8d: $07
    dec h                                         ; $7b8e: $25
    or c                                          ; $7b8f: $b1
    sub [hl]                                      ; $7b90: $96
    add $13                                       ; $7b91: $c6 $13
    sub a                                         ; $7b93: $97
    ld d, c                                       ; $7b94: $51
    add $10                                       ; $7b95: $c6 $10
    ld b, h                                       ; $7b97: $44
    xor h                                         ; $7b98: $ac
    cp [hl]                                       ; $7b99: $be
    ld h, h                                       ; $7b9a: $64
    ld h, d                                       ; $7b9b: $62
    ld h, $7f                                     ; $7b9c: $26 $7f
    inc h                                         ; $7b9e: $24
    ld l, d                                       ; $7b9f: $6a
    add hl, sp                                    ; $7ba0: $39
    rst $30                                       ; $7ba1: $f7
    ld e, $ae                                     ; $7ba2: $1e $ae
    ld h, e                                       ; $7ba4: $63
    ld e, l                                       ; $7ba5: $5d
    ld b, [hl]                                    ; $7ba6: $46
    xor d                                         ; $7ba7: $aa
    ld hl, sp-$33                                 ; $7ba8: $f8 $cd
    dec h                                         ; $7baa: $25
    or c                                          ; $7bab: $b1
    sub [hl]                                      ; $7bac: $96
    add $13                                       ; $7bad: $c6 $13
    ld [hl], a                                    ; $7baf: $77

Call_038_7bb0:
    inc b                                         ; $7bb0: $04
    jp hl                                         ; $7bb1: $e9


    and $4d                                       ; $7bb2: $e6 $4d
    ld [hl], e                                    ; $7bb4: $73
    ld c, c                                       ; $7bb5: $49
    pop hl                                        ; $7bb6: $e1
    ld h, $93                                     ; $7bb7: $26 $93
    sbc $5a                                       ; $7bb9: $de $5a
    ld d, b                                       ; $7bbb: $50
    dec c                                         ; $7bbc: $0d
    inc c                                         ; $7bbd: $0c
    ld hl, sp+$5c                                 ; $7bbe: $f8 $5c
    dec e                                         ; $7bc0: $1d
    xor $3d                                       ; $7bc1: $ee $3d
    and h                                         ; $7bc3: $a4
    rst $08                                       ; $7bc4: $cf
    ld a, [bc]                                    ; $7bc5: $0a
    db $dc, $91, $01                              ; $7bc6: $dc $91 $01
    ldh a, [$b3]                                  ; $7bc9: $f0 $b3
    ld h, [hl]                                    ; $7bcb: $66
    adc $8c                                       ; $7bcc: $ce $8c
    add sp, -$13                                  ; $7bce: $e8 $ed
    ei                                            ; $7bd0: $fb
    xor h                                         ; $7bd1: $ac
    rst $30                                       ; $7bd2: $f7
    call c, $97fb                                 ; $7bd3: $dc $fb $97
    sbc $43                                       ; $7bd6: $de $43

Call_038_7bd8:
    ld l, [hl]                                    ; $7bd8: $6e
    inc [hl]                                      ; $7bd9: $34
    ld hl, sp+$2b                                 ; $7bda: $f8 $2b
    dec [hl]                                      ; $7bdc: $35
    cp a                                          ; $7bdd: $bf
    ld e, c                                       ; $7bde: $59
    add [hl]                                      ; $7bdf: $86
    db $e4                                        ; $7be0: $e4
    jp $c7b1                                      ; $7be1: $c3 $b1 $c7


    rst $20                                       ; $7be4: $e7
    rrca                                          ; $7be5: $0f
    ld a, d                                       ; $7be6: $7a
    add h                                         ; $7be7: $84
    db $f4                                        ; $7be8: $f4
    ld d, e                                       ; $7be9: $53
    ld a, d                                       ; $7bea: $7a
    inc h                                         ; $7beb: $24
    ld a, $1a                                     ; $7bec: $3e $1a
    db $fc                                        ; $7bee: $fc
    push af                                       ; $7bef: $f5
    ld e, $72                                     ; $7bf0: $1e $72
    and e                                         ; $7bf2: $a3
    pop bc                                        ; $7bf3: $c1
    ld e, a                                       ; $7bf4: $5f
    sbc c                                         ; $7bf5: $99
    inc bc                                        ; $7bf6: $03
    ld a, a                                       ; $7bf7: $7f
    sbc h                                         ; $7bf8: $9c
    ld [hl], e                                    ; $7bf9: $73
    adc a                                         ; $7bfa: $8f
    add b                                         ; $7bfb: $80
    ld a, [hl-]                                   ; $7bfc: $3a
    sub $47                                       ; $7bfd: $d6 $47
    ld h, a                                       ; $7bff: $67
    or c                                          ; $7c00: $b1
    or [hl]                                       ; $7c01: $b6
    call c, $b4c2                                 ; $7c02: $dc $c2 $b4
    ld h, h                                       ; $7c05: $64
    ld d, l                                       ; $7c06: $55
    db $e4                                        ; $7c07: $e4
    ld c, a                                       ; $7c08: $4f
    inc e                                         ; $7c09: $1c
    xor h                                         ; $7c0a: $ac
    scf                                           ; $7c0b: $37
    call $8c01                                    ; $7c0c: $cd $01 $8c
    ld a, [bc]                                    ; $7c0f: $0a
    sbc d                                         ; $7c10: $9a
    ld sp, hl                                     ; $7c11: $f9
    ld hl, sp-$04                                 ; $7c12: $f8 $fc
    pop bc                                        ; $7c14: $c1
    cp c                                          ; $7c15: $b9
    ret                                           ; $7c16: $c9


    ld e, a                                       ; $7c17: $5f
    ld h, h                                       ; $7c18: $64
    call z, Call_000_1c90                         ; $7c19: $cc $90 $1c
    add hl, bc                                    ; $7c1c: $09
    db $fc                                        ; $7c1d: $fc
    push af                                       ; $7c1e: $f5
    or $77                                        ; $7c1f: $f6 $77
    xor e                                         ; $7c21: $ab
    cp l                                          ; $7c22: $bd
    ld h, l                                       ; $7c23: $65
    ld a, [c]                                     ; $7c24: $f2
    and a                                         ; $7c25: $a7
    add sp, $5f                                   ; $7c26: $e8 $5f
    ld [c], a                                     ; $7c28: $e2
    ld l, a                                       ; $7c29: $6f
    sub $db                                       ; $7c2a: $d6 $db
    ld d, a                                       ; $7c2c: $57
    ld b, a                                       ; $7c2d: $47
    dec l                                         ; $7c2e: $2d
    rst $30                                       ; $7c2f: $f7
    cpl                                           ; $7c30: $2f
    ldh [rNR33], a                                ; $7c31: $e0 $1d
    jp nc, $94a1                                  ; $7c33: $d2 $a1 $94

    cp d                                          ; $7c36: $ba
    and e                                         ; $7c37: $a3
    db $fd                                        ; $7c38: $fd
    sub c                                         ; $7c39: $91
    ld a, d                                       ; $7c3a: $7a
    inc c                                         ; $7c3b: $0c
    ld [hl], $f3                                  ; $7c3c: $36 $f3
    di                                            ; $7c3e: $f3
    halt                                          ; $7c3f: $76
    ccf                                           ; $7c40: $3f
    ld a, a                                       ; $7c41: $7f
    ld c, l                                       ; $7c42: $4d
    cp [hl]                                       ; $7c43: $be
    or d                                          ; $7c44: $b2
    ei                                            ; $7c45: $fb
    rla                                           ; $7c46: $17
    ret nz                                        ; $7c47: $c0

    inc [hl]                                      ; $7c48: $34
    rlca                                          ; $7c49: $07
    adc h                                         ; $7c4a: $8c
    ld a, [bc]                                    ; $7c4b: $0a
    sbc d                                         ; $7c4c: $9a
    ld sp, hl                                     ; $7c4d: $f9
    ld hl, sp-$04                                 ; $7c4e: $f8 $fc
    pop bc                                        ; $7c50: $c1
    sub b                                         ; $7c51: $90
    ld h, $f0                                     ; $7c52: $26 $f0
    rst $10                                       ; $7c54: $d7
    ld [hl], a                                    ; $7c55: $77
    ld de, $cf84                                  ; $7c56: $11 $84 $cf
    push de                                       ; $7c59: $d5
    rra                                           ; $7c5a: $1f
    or c                                          ; $7c5b: $b1
    pop bc                                        ; $7c5c: $c1
    ld e, a                                       ; $7c5d: $5f
    cp a                                          ; $7c5e: $bf
    ld [c], a                                     ; $7c5f: $e2
    xor a                                         ; $7c60: $af
    ei                                            ; $7c61: $fb
    ld sp, hl                                     ; $7c62: $f9
    dec hl                                        ; $7c63: $2b
    and e                                         ; $7c64: $a3
    adc h                                         ; $7c65: $8c
    ld hl, $5888                                  ; $7c66: $21 $88 $58
    ld a, l                                       ; $7c69: $7d
    ld c, c                                       ; $7c6a: $49
    ld l, a                                       ; $7c6b: $6f
    rst $10                                       ; $7c6c: $d7
    ld [hl], c                                    ; $7c6d: $71
    ld a, b                                       ; $7c6e: $78
    ld c, b                                       ; $7c6f: $48
    ld c, $23                                     ; $7c70: $0e $23
    rst $38                                       ; $7c72: $ff
    ld a, [c]                                     ; $7c73: $f2
    rst $20                                       ; $7c74: $e7
    ld [hl-], a                                   ; $7c75: $32
    adc d                                         ; $7c76: $8a
    add e                                         ; $7c77: $83
    ret nz                                        ; $7c78: $c0

    cp [hl]                                       ; $7c79: $be
    rst $08                                       ; $7c7a: $cf
    ld a, d                                       ; $7c7b: $7a
    adc e                                         ; $7c7c: $8b
    rst $10                                       ; $7c7d: $d7
    db $fd                                        ; $7c7e: $fd
    ld a, d                                       ; $7c7f: $7a
    or h                                          ; $7c80: $b4
    daa                                           ; $7c81: $27
    inc h                                         ; $7c82: $24
    cp [hl]                                       ; $7c83: $be
    push af                                       ; $7c84: $f5
    cp c                                          ; $7c85: $b9
    sbc a                                         ; $7c86: $9f
    ld h, d                                       ; $7c87: $62
    cp a                                          ; $7c88: $bf
    ld [c], a                                     ; $7c89: $e2
    xor a                                         ; $7c8a: $af
    ld c, h                                       ; $7c8b: $4c
    cp $36                                        ; $7c8c: $fe $36
    sub c                                         ; $7c8e: $91
    dec [hl]                                      ; $7c8f: $35
    ld c, l                                       ; $7c90: $4d
    ld [hl], e                                    ; $7c91: $73
    ret                                           ; $7c92: $c9


    and h                                         ; $7c93: $a4
    or a                                          ; $7c94: $b7
    sub [hl]                                      ; $7c95: $96
    cp [hl]                                       ; $7c96: $be
    rst $08                                       ; $7c97: $cf
    ld a, d                                       ; $7c98: $7a
    ld c, e                                       ; $7c99: $4b
    cp [hl]                                       ; $7c9a: $be
    ld a, a                                       ; $7c9b: $7f
    jp hl                                         ; $7c9c: $e9


    call $eeb1                                    ; $7c9d: $cd $b1 $ee
    ld l, h                                       ; $7ca0: $6c
    ld sp, $e030                                  ; $7ca1: $31 $30 $e0
    dec a                                         ; $7ca4: $3d
    rst $30                                       ; $7ca5: $f7
    or e                                          ; $7ca6: $b3
    sub [hl]                                      ; $7ca7: $96
    ld e, $7f                                     ; $7ca8: $1e $7f
    ld sp, hl                                     ; $7caa: $f9
    ld [hl], e                                    ; $7cab: $73
    add hl, de                                    ; $7cac: $19
    push bc                                       ; $7cad: $c5
    ld b, c                                       ; $7cae: $41
    ld h, b                                       ; $7caf: $60
    rst $18                                       ; $7cb0: $df
    ld h, a                                       ; $7cb1: $67
    cp l                                          ; $7cb2: $bd
    dec a                                         ; $7cb3: $3d
    ld hl, $adf1                                  ; $7cb4: $21 $f1 $ad
    db $d3                                        ; $7cb7: $d3
    inc e                                         ; $7cb8: $1c
    add hl, bc                                    ; $7cb9: $09
    db $fc                                        ; $7cba: $fc
    sub l                                         ; $7cbb: $95
    adc l                                         ; $7cbc: $8d
    dec l                                         ; $7cbd: $2d
    ld e, [hl]                                    ; $7cbe: $5e
    db $fd                                        ; $7cbf: $fd
    adc d                                         ; $7cc0: $8a
    ret z                                         ; $7cc1: $c8

    inc l                                         ; $7cc2: $2c
    adc $e0                                       ; $7cc3: $ce $e0
    ld e, h                                       ; $7cc5: $5c
    db $fd                                        ; $7cc6: $fd
    ld de, $fc1b                                  ; $7cc7: $11 $1b $fc
    push af                                       ; $7cca: $f5
    ld d, h                                       ; $7ccb: $54
    inc bc                                        ; $7ccc: $03
    add hl, de                                    ; $7ccd: $19
    ld a, [$52c2]                                 ; $7cce: $fa $c2 $52
    ld [hl], $76                                  ; $7cd1: $36 $76
    ld c, b                                       ; $7cd3: $48
    inc de                                        ; $7cd4: $13
    ld hl, sp-$15                                 ; $7cd5: $f8 $eb
    db $dd                                        ; $7cd7: $dd
    and d                                         ; $7cd8: $a2
    ld e, l                                       ; $7cd9: $5d
    rst $00                                       ; $7cda: $c7
    cp d                                          ; $7cdb: $ba
    inc hl                                        ; $7cdc: $23
    cp l                                          ; $7cdd: $bd
    sbc c                                         ; $7cde: $99
    ld c, e                                       ; $7cdf: $4b
    dec l                                         ; $7ce0: $2d
    db $eb                                        ; $7ce1: $eb
    xor l                                         ; $7ce2: $ad
    ld e, d                                       ; $7ce3: $5a
    ld e, l                                       ; $7ce4: $5d
    db $f4                                        ; $7ce5: $f4
    sub e                                         ; $7ce6: $93
    ld h, [hl]                                    ; $7ce7: $66
    ld a, [bc]                                    ; $7ce8: $0a
    call c, Call_000_2fd9                         ; $7ce9: $dc $d9 $2f
    ldh a, [$96]                                  ; $7cec: $f0 $96
    push af                                       ; $7cee: $f5
    db $ed                                        ; $7cef: $ed
    ld a, [hl-]                                   ; $7cf0: $3a
    ld c, $ef                                     ; $7cf1: $0e $ef
    sub b                                         ; $7cf3: $90
    inc e                                         ; $7cf4: $1c
    and e                                         ; $7cf5: $a3
    cp a                                          ; $7cf6: $bf
    xor b                                         ; $7cf7: $a8
    and e                                         ; $7cf8: $a3
    rst $30                                       ; $7cf9: $f7
    db $10                                        ; $7cfa: $10
    ld e, l                                       ; $7cfb: $5d
    ld h, e                                       ; $7cfc: $63
    db $e3                                        ; $7cfd: $e3
    jr c, jr_038_7d2c                             ; $7cfe: $38 $2c

    push bc                                       ; $7d00: $c5
    xor e                                         ; $7d01: $ab
    ret z                                         ; $7d02: $c8

    rst $18                                       ; $7d03: $df
    sbc d                                         ; $7d04: $9a
    jp nc, $bc8e                                  ; $7d05: $d2 $8e $bc

    inc h                                         ; $7d08: $24
    di                                            ; $7d09: $f3
    adc $98                                       ; $7d0a: $ce $98
    inc bc                                        ; $7d0c: $03
    inc hl                                        ; $7d0d: $23
    cpl                                           ; $7d0e: $2f
    ret                                           ; $7d0f: $c9


    cp h                                          ; $7d10: $bc
    dec c                                         ; $7d11: $0d
    add h                                         ; $7d12: $84
    ld e, $8e                                     ; $7d13: $1e $8e
    xor l                                         ; $7d15: $ad
    dec b                                         ; $7d16: $05
    pop bc                                        ; $7d17: $c1
    ld d, d                                       ; $7d18: $52
    ld h, $7f                                     ; $7d19: $26 $7f
    adc d                                         ; $7d1b: $8a
    jp nz, Jump_000_3acf                          ; $7d1c: $c2 $cf $3a

    ld [hl], c                                    ; $7d1f: $71
    add e                                         ; $7d20: $83
    cp a                                          ; $7d21: $bf
    sbc $2d                                       ; $7d22: $de $2d
    jp c, $fe45                                   ; $7d24: $da $45 $fe

    xor [hl]                                      ; $7d27: $ae
    dec l                                         ; $7d28: $2d
    db $eb                                        ; $7d29: $eb
    jr c, jr_038_7d66                             ; $7d2a: $38 $3a

jr_038_7d2c:
    ld d, h                                       ; $7d2c: $54
    ld de, $cff7                                  ; $7d2d: $11 $f7 $cf
    sbc a                                         ; $7d30: $9f
    or a                                          ; $7d31: $b7

Jump_038_7d32:
    ld [hl], b                                    ; $7d32: $70
    pop bc                                        ; $7d33: $c1
    and a                                         ; $7d34: $a7
    db $fd                                        ; $7d35: $fd
    adc d                                         ; $7d36: $8a
    ret z                                         ; $7d37: $c8

    inc l                                         ; $7d38: $2c
    adc $a0                                       ; $7d39: $ce $a0
    add sp, -$28                                  ; $7d3b: $e8 $d8
    inc [hl]                                      ; $7d3d: $34
    rlca                                          ; $7d3e: $07
    ld c, c                                       ; $7d3f: $49
    xor d                                         ; $7d40: $aa
    scf                                           ; $7d41: $37
    rst $28                                       ; $7d42: $ef
    ld [hl+], a                                   ; $7d43: $22
    ld [hl], h                                    ; $7d44: $74
    cpl                                           ; $7d45: $2f
    cp $7a                                        ; $7d46: $fe $7a
    ld [hl], e                                    ; $7d48: $73
    xor h                                         ; $7d49: $ac
    dec sp                                        ; $7d4a: $3b
    ld [c], a                                     ; $7d4b: $e2
    dec bc                                        ; $7d4c: $0b
    ld a, b                                       ; $7d4d: $78
    ld l, a                                       ; $7d4e: $6f
    rst $10                                       ; $7d4f: $d7
    pop bc                                        ; $7d50: $c1
    add $7e                                       ; $7d51: $c6 $7e
    adc b                                         ; $7d53: $88
    ld l, e                                       ; $7d54: $6b
    add a                                         ; $7d55: $87
    db $e4                                        ; $7d56: $e4
    and e                                         ; $7d57: $a3
    add e                                         ; $7d58: $83
    jp nc, Jump_038_75db                          ; $7d59: $d2 $db $75

    inc e                                         ; $7d5c: $1c
    sbc $92                                       ; $7d5d: $de $92
    sub l                                         ; $7d5f: $95
    sub b                                         ; $7d60: $90
    ld hl, sp-$13                                 ; $7d61: $f8 $ed
    call c, Call_000_2fe4                         ; $7d63: $dc $e4 $2f

jr_038_7d66:
    ld [hl-], a                                   ; $7d66: $32
    ld h, $6d                                     ; $7d67: $26 $6d
    sub e                                         ; $7d69: $93
    ld a, [hl]                                    ; $7d6a: $7e
    or l                                          ; $7d6b: $b5
    xor d                                         ; $7d6c: $aa
    ld e, c                                       ; $7d6d: $59
    ld l, a                                       ; $7d6e: $6f

Call_038_7d6f:
    dec e                                         ; $7d6f: $1d
    db $eb                                        ; $7d70: $eb
    ld [c], a                                     ; $7d71: $e2
    push de                                       ; $7d72: $d5

Call_038_7d73:
    ld h, a                                       ; $7d73: $67
    add hl, de                                    ; $7d74: $19
    cp h                                          ; $7d75: $bc
    ld b, h                                       ; $7d76: $44
    ld a, [hl]                                    ; $7d77: $7e
    and $d5                                       ; $7d78: $e6 $d5
    xor $6c                                       ; $7d7a: $ee $6c
    ld c, $04                                     ; $7d7c: $0e $04
    or l                                          ; $7d7e: $b5
    ld e, c                                       ; $7d7f: $59
    cp a                                          ; $7d80: $bf
    ld [hl+], a                                   ; $7d81: $22
    xor d                                         ; $7d82: $aa
    dec e                                         ; $7d83: $1d
    db $eb                                        ; $7d84: $eb
    and e                                         ; $7d85: $a3
    jp $de8c                                      ; $7d86: $c3 $8c $de


    ld c, $5e                                     ; $7d89: $0e $5e
    sub h                                         ; $7d8b: $94
    or d                                          ; $7d8c: $b2
    ld a, [c]                                     ; $7d8d: $f2
    ld sp, hl                                     ; $7d8e: $f9
    add e                                         ; $7d8f: $83
    cp [hl]                                       ; $7d90: $be
    adc a                                         ; $7d91: $8f
    ld [hl], b                                    ; $7d92: $70
    xor $3d                                       ; $7d93: $ee $3d
    jr z, jr_038_7e04                             ; $7d95: $28 $6d

    ldh a, [$57]                                  ; $7d97: $f0 $57
    dec e                                         ; $7d99: $1d
    db $fc                                        ; $7d9a: $fc
    sub l                                         ; $7d9b: $95
    dec [hl]                                      ; $7d9c: $35
    cp l                                          ; $7d9d: $bd
    sbc $7a                                       ; $7d9e: $de $7a
    rst $08                                       ; $7da0: $cf
    adc l                                         ; $7da1: $8d
    push de                                       ; $7da2: $d5
    ld a, $1a                                     ; $7da3: $3e $1a
    db $fc                                        ; $7da5: $fc
    ld d, l                                       ; $7da6: $55
    add a                                         ; $7da7: $87
    inc [hl]                                      ; $7da8: $34
    inc sp                                        ; $7da9: $33
    jp nz, $f007                                  ; $7daa: $c2 $07 $f0

    cp c                                          ; $7dad: $b9
    ld a, [hl-]                                   ; $7dae: $3a
    call c, $8ae1                                 ; $7daf: $dc $e1 $8a
    ld a, d                                       ; $7db2: $7a
    ld c, a                                       ; $7db3: $4f
    db $fd                                        ; $7db4: $fd
    sbc c                                         ; $7db5: $99
    ld l, $59                                     ; $7db6: $2e $59
    sub l                                         ; $7db8: $95
    call nz, $d37a                                ; $7db9: $c4 $7a $d3
    inc e                                         ; $7dbc: $1c
    adc h                                         ; $7dbd: $8c
    ld a, [bc]                                    ; $7dbe: $0a
    sbc d                                         ; $7dbf: $9a
    ld sp, hl                                     ; $7dc0: $f9
    ld hl, sp-$04                                 ; $7dc1: $f8 $fc
    pop bc                                        ; $7dc3: $c1
    cp c                                          ; $7dc4: $b9
    ret                                           ; $7dc5: $c9


    ld e, a                                       ; $7dc6: $5f
    ld h, h                                       ; $7dc7: $64
    ld c, h                                       ; $7dc8: $4c
    jp c, $a926                                   ; $7dc9: $da $26 $a9

    sbc $fe                                       ; $7dcc: $de $fe
    ld l, $42                                     ; $7dce: $2e $42
    ld c, a                                       ; $7dd0: $4f
    or l                                          ; $7dd1: $b5
    or [hl]                                       ; $7dd2: $b6
    sub b                                         ; $7dd3: $90
    dec e                                         ; $7dd4: $1d
    ld d, b                                       ; $7dd5: $50
    or d                                          ; $7dd6: $b2
    ld [de], a                                    ; $7dd7: $12
    ld [de], a                                    ; $7dd8: $12
    cp a                                          ; $7dd9: $bf
    db $dd                                        ; $7dda: $dd
    xor [hl]                                      ; $7ddb: $ae
    db $e3                                        ; $7ddc: $e3
    ldh a, [$9e]                                  ; $7ddd: $f0 $9e
    xor e                                         ; $7ddf: $ab
    adc [hl]                                      ; $7de0: $8e
    sub d                                         ; $7de1: $92
    ld d, l                                       ; $7de2: $55
    add hl, bc                                    ; $7de3: $09
    ld a, [de]                                    ; $7de4: $1a
    adc $bc                                       ; $7de5: $ce $bc
    ld l, c                                       ; $7de7: $69
    ld c, $b3                                     ; $7de8: $0e $b3
    ld a, [$abf8]                                 ; $7dea: $fa $f8 $ab
    ei                                            ; $7ded: $fb
    ld a, $f4                                     ; $7dee: $3e $f4
    ld [$6669], sp                                ; $7df0: $08 $69 $66
    db $fc                                        ; $7df3: $fc
    add hl, de                                    ; $7df4: $19
    sbc h                                         ; $7df5: $9c
    dec de                                        ; $7df6: $1b
    db $fc                                        ; $7df7: $fc
    dec d                                         ; $7df8: $15
    cpl                                           ; $7df9: $2f
    ld c, d                                       ; $7dfa: $4a
    xor e                                         ; $7dfb: $ab
    cp l                                          ; $7dfc: $bd
    ld c, l                                       ; $7dfd: $4d
    cp $0a                                        ; $7dfe: $fe $0a
    inc sp                                        ; $7e00: $33
    rlca                                          ; $7e01: $07
    ld b, d                                       ; $7e02: $42
    rlca                                          ; $7e03: $07

jr_038_7e04:
    xor a                                         ; $7e04: $af
    dec l                                         ; $7e05: $2d
    and e                                         ; $7e06: $a3
    adc h                                         ; $7e07: $8c
    ld hl, $5888                                  ; $7e08: $21 $88 $58
    ld a, l                                       ; $7e0b: $7d
    ld c, c                                       ; $7e0c: $49
    ld d, c                                       ; $7e0d: $51
    pop af                                        ; $7e0e: $f1
    rst $20                                       ; $7e0f: $e7
    dec a                                         ; $7e10: $3d
    rst $30                                       ; $7e11: $f7
    or e                                          ; $7e12: $b3
    sub [hl]                                      ; $7e13: $96
    ld b, $7f                                     ; $7e14: $06 $7f
    ld b, l                                       ; $7e16: $45
    ccf                                           ; $7e17: $3f
    scf                                           ; $7e18: $37
    sbc $f6                                       ; $7e19: $de $f6
    add l                                         ; $7e1b: $85
    and l                                         ; $7e1c: $a5
    dec de                                        ; $7e1d: $1b
    sub d                                         ; $7e1e: $92
    ld a, c                                       ; $7e1f: $79
    push af                                       ; $7e20: $f5
    db $fd                                        ; $7e21: $fd
    ld c, d                                       ; $7e22: $4a
    ld [hl], e                                    ; $7e23: $73
    ld c, c                                       ; $7e24: $49
    pop hl                                        ; $7e25: $e1
    ld h, $7f                                     ; $7e26: $26 $7f
    add l                                         ; $7e28: $85
    sbc c                                         ; $7e29: $99
    inc bc                                        ; $7e2a: $03
    pop bc                                        ; $7e2b: $c1
    jp nc, Jump_038_779b                          ; $7e2c: $d2 $9b $77

    cp l                                          ; $7e2f: $bd
    push de                                       ; $7e30: $d5
    pop hl                                        ; $7e31: $e1
    adc [hl]                                      ; $7e32: $8e
    ld a, [$f788]                                 ; $7e33: $fa $88 $f7
    or c                                          ; $7e36: $b1
    dec b                                         ; $7e37: $05
    inc l                                         ; $7e38: $2c
    adc l                                         ; $7e39: $8d
    daa                                           ; $7e3a: $27
    sub [hl]                                      ; $7e3b: $96
    ld a, [hl-]                                   ; $7e3c: $3a
    ld [hl-], a                                   ; $7e3d: $32
    xor a                                         ; $7e3e: $af
    or a                                          ; $7e3f: $b7
    ret                                           ; $7e40: $c9


    adc c                                         ; $7e41: $89
    ld a, [bc]                                    ; $7e42: $0a
    dec l                                         ; $7e43: $2d
    rst $20                                       ; $7e44: $e7
    ld a, [hl]                                    ; $7e45: $7e
    sub $d2                                       ; $7e46: $d6 $d2
    ldh [$af], a                                  ; $7e48: $e0 $af
    ld l, h                                       ; $7e4a: $6c
    ld l, h                                       ; $7e4b: $6c
    ret                                           ; $7e4c: $c9


    xor d                                         ; $7e4d: $aa
    add h                                         ; $7e4e: $84
    inc hl                                        ; $7e4f: $23
    di                                            ; $7e50: $f3
    cp c                                          ; $7e51: $b9
    adc [hl]                                      ; $7e52: $8e
    push af                                       ; $7e53: $f5
    sub [hl]                                      ; $7e54: $96
    xor h                                         ; $7e55: $ac
    ld c, d                                       ; $7e56: $4a
    ret z                                         ; $7e57: $c8

    rst $08                                       ; $7e58: $cf
    cp h                                          ; $7e59: $bc
    ld l, c                                       ; $7e5a: $69
    ld c, $c9                                     ; $7e5b: $0e $c9
    ld e, a                                       ; $7e5d: $5f
    ld h, c                                       ; $7e5e: $61
    and $40                                       ; $7e5f: $e6 $40
    or b                                          ; $7e61: $b0
    db $f4                                        ; $7e62: $f4
    and $5d                                       ; $7e63: $e6 $5d
    ld l, a                                       ; $7e65: $6f
    ld b, a                                       ; $7e66: $47
    ld a, l                                       ; $7e67: $7d
    call nz, $d8fb                                ; $7e68: $c4 $fb $d8
    ld [bc], a                                    ; $7e6b: $02
    sub [hl]                                      ; $7e6c: $96
    or h                                          ; $7e6d: $b4
    ld c, h                                       ; $7e6e: $4c
    push bc                                       ; $7e6f: $c5
    sbc a                                         ; $7e70: $9f
    db $eb                                        ; $7e71: $eb
    ld e, b                                       ; $7e72: $58
    ld l, a                                       ; $7e73: $6f
    rst $20                                       ; $7e74: $e7
    or l                                          ; $7e75: $b5
    jr nz, jr_038_7ed4                            ; $7e76: $20 $5c

    jp nz, $bd7a                                  ; $7e78: $c2 $7a $bd

    ld d, l                                       ; $7e7b: $55
    xor e                                         ; $7e7c: $ab
    ld c, e                                       ; $7e7d: $4b
    ret z                                         ; $7e7e: $c8

    rst $08                                       ; $7e7f: $cf
    ld a, [de]                                    ; $7e80: $1a
    ld l, a                                       ; $7e81: $6f
    db $eb                                        ; $7e82: $eb
    ld e, b                                       ; $7e83: $58
    ld [c], a                                     ; $7e84: $e2
    di                                            ; $7e85: $f3
    sub a                                         ; $7e86: $97
    and $8c                                       ; $7e87: $e6 $8c
    ld c, $04                                     ; $7e89: $0e $04
    ld c, e                                       ; $7e8b: $4b
    ld b, c                                       ; $7e8c: $41
    inc e                                         ; $7e8d: $1c
    xor h                                         ; $7e8e: $ac
    or a                                          ; $7e8f: $b7
    ei                                            ; $7e90: $fb
    ld sp, hl                                     ; $7e91: $f9
    inc bc                                        ; $7e92: $03
    ld l, h                                       ; $7e93: $6c
    inc a                                         ; $7e94: $3c
    jp hl                                         ; $7e95: $e9


    inc a                                         ; $7e96: $3c
    ld a, e                                       ; $7e97: $7b
    scf                                           ; $7e98: $37
    ld a, d                                       ; $7e99: $7a
    xor e                                         ; $7e9a: $ab
    ld d, [hl]                                    ; $7e9b: $56
    rst $30                                       ; $7e9c: $f7
    and $5d                                       ; $7e9d: $e6 $5d
    ld l, a                                       ; $7e9f: $6f
    rlca                                          ; $7ea0: $07
    jp Jump_038_65d4                              ; $7ea1: $c3 $d4 $65


    db $f4                                        ; $7ea4: $f4
    ld [hl], e                                    ; $7ea5: $73
    inc e                                         ; $7ea6: $1c
    dec de                                        ; $7ea7: $1b
    adc b                                         ; $7ea8: $88
    ld c, [hl]                                    ; $7ea9: $4e
    dec sp                                        ; $7eaa: $3b
    ld l, a                                       ; $7eab: $6f
    sbc b                                         ; $7eac: $98
    ld d, d                                       ; $7ead: $52
    rlca                                          ; $7eae: $07
    ld a, a                                       ; $7eaf: $7f
    ret nc                                        ; $7eb0: $d0

    xor a                                         ; $7eb1: $af
    ld hl, sp-$15                                 ; $7eb2: $f8 $eb
    xor b                                         ; $7eb4: $a8
    adc a                                         ; $7eb5: $8f
    ld a, b                                       ; $7eb6: $78
    rra                                           ; $7eb7: $1f
    ld e, e                                       ; $7eb8: $5b
    ret nz                                        ; $7eb9: $c0

    jp nc, Jump_038_4d34                          ; $7eba: $d2 $34 $4d

    ld [hl], e                                    ; $7ebd: $73
    adc h                                         ; $7ebe: $8c
    ld a, [hl]                                    ; $7ebf: $7e
    ld l, [hl]                                    ; $7ec0: $6e
    ld l, h                                       ; $7ec1: $6c
    or l                                          ; $7ec2: $b5
    or a                                          ; $7ec3: $b7
    ld l, b                                       ; $7ec4: $68
    cp $10                                        ; $7ec5: $fe $10
    cp h                                          ; $7ec7: $bc
    ld h, l                                       ; $7ec8: $65
    jp nz, Jump_038_6fc5                          ; $7ec9: $c2 $c5 $6f

    ld d, l                                       ; $7ecc: $55
    xor e                                         ; $7ecd: $ab
    ld c, e                                       ; $7ece: $4b
    ret z                                         ; $7ecf: $c8

    rst $08                                       ; $7ed0: $cf
    ld e, h                                       ; $7ed1: $5c
    db $ed                                        ; $7ed2: $ed
    xor l                                         ; $7ed3: $ad

jr_038_7ed4:
    dec b                                         ; $7ed4: $05
    pop bc                                        ; $7ed5: $c1
    ld e, e                                       ; $7ed6: $5b
    ld b, [hl]                                    ; $7ed7: $46
    rlca                                          ; $7ed8: $07
    jp nz, $dab9                                  ; $7ed9: $c2 $b9 $da

    ld d, d                                       ; $7edc: $52
    dec e                                         ; $7edd: $1d

jr_038_7ede:
    ld d, d                                       ; $7ede: $52
    ld [de], a                                    ; $7edf: $12
    ld l, e                                       ; $7ee0: $6b
    xor c                                         ; $7ee1: $a9
    or $76                                        ; $7ee2: $f6 $76
    or h                                          ; $7ee4: $b4
    or e                                          ; $7ee5: $b3
    jp nc, Jump_038_4544                          ; $7ee6: $d2 $44 $45

    ld b, b                                       ; $7ee9: $40
    sbc d                                         ; $7eea: $9a
    inc bc                                        ; $7eeb: $03
    ld c, c                                       ; $7eec: $49
    sub [hl]                                      ; $7eed: $96
    adc $f2                                       ; $7eee: $ce $f2
    ld de, $e23a                                  ; $7ef0: $11 $3a $e2
    ld a, [de]                                    ; $7ef3: $1a
    jr nz, jr_038_7ede                            ; $7ef4: $20 $e8

    add l                                         ; $7ef6: $85
    xor $ec                                       ; $7ef7: $ee $ec
    pop bc                                        ; $7ef9: $c1
    ld l, a                                       ; $7efa: $6f
    dec d                                         ; $7efb: $15
    ld h, e                                       ; $7efc: $63
    add sp, -$50                                  ; $7efd: $e8 $b0
    ld b, b                                       ; $7eff: $40
    sub c                                         ; $7f00: $91
    cp a                                          ; $7f01: $bf
    ld l, e                                       ; $7f02: $6b
    adc e                                         ; $7f03: $8b
    ld a, [hl]                                    ; $7f04: $7e
    ld d, d                                       ; $7f05: $52
    ld a, [$7337]                                 ; $7f06: $fa $37 $73
    ld h, e                                       ; $7f09: $63
    sbc e                                         ; $7f0a: $9b
    ld a, h                                       ; $7f0b: $7c
    ld h, l                                       ; $7f0c: $65
    rst $30                                       ; $7f0d: $f7
    cpl                                           ; $7f0e: $2f
    add b                                         ; $7f0f: $80
    ld l, c                                       ; $7f10: $69
    rst $20                                       ; $7f11: $e7
    dec c                                         ; $7f12: $0d
    ld d, e                                       ; $7f13: $53

Jump_038_7f14:
    ld [$0fe0], a                                 ; $7f14: $ea $e0 $0f
    ld a, d                                       ; $7f17: $7a
    ei                                            ; $7f18: $fb
    cp e                                          ; $7f19: $bb
    or l                                          ; $7f1a: $b5
    ld d, h                                       ; $7f1b: $54
    add a                                         ; $7f1c: $87
    db $f4                                        ; $7f1d: $f4
    call nc, $bbdf                                ; $7f1e: $d4 $df $bb
    inc bc                                        ; $7f21: $03

Jump_038_7f22:
jr_038_7f22:
    inc l                                         ; $7f22: $2c
    rst $08                                       ; $7f23: $cf
    sub h                                         ; $7f24: $94
    ldh a, [$a6]                                  ; $7f25: $f0 $a6
    add hl, sp                                    ; $7f27: $39
    ld c, h                                       ; $7f28: $4c
    push bc                                       ; $7f29: $c5
    sbc a                                         ; $7f2a: $9f
    xor e                                         ; $7f2b: $ab
    push bc                                       ; $7f2c: $c5
    ld d, c                                       ; $7f2d: $51
    ld h, $5c                                     ; $7f2e: $26 $5c
    db $fc                                        ; $7f30: $fc
    halt                                          ; $7f31: $76
    or a                                          ; $7f32: $b7
    call c, Call_000_37dc                         ; $7f33: $dc $dc $37
    or $b3                                        ; $7f36: $f6 $b3
    ld [hl], h                                    ; $7f38: $74
    ccf                                           ; $7f39: $3f
    ld a, a                                       ; $7f3a: $7f
    push de                                       ; $7f3b: $d5
    ld a, $9a                                     ; $7f3c: $3e $9a
    db $fc                                        ; $7f3e: $fc
    dec d                                         ; $7f3f: $15
    ld h, [hl]                                    ; $7f40: $66
    ld c, $84                                     ; $7f41: $0e $84
    ld c, $5e                                     ; $7f43: $0e $5e
    ld e, e                                       ; $7f45: $5b
    ld b, [hl]                                    ; $7f46: $46
    add hl, de                                    ; $7f47: $19
    ld b, e                                       ; $7f48: $43
    db $10                                        ; $7f49: $10
    or c                                          ; $7f4a: $b1
    ld a, [$3492]                                 ; $7f4b: $fa $92 $34
    rlca                                          ; $7f4e: $07
    di                                            ; $7f4f: $f3
    ld e, d                                       ; $7f50: $5a
    ld d, b                                       ; $7f51: $50
    pop af                                        ; $7f52: $f1
    rst $20                                       ; $7f53: $e7
    ld l, d                                       ; $7f54: $6a
    rst $00                                       ; $7f55: $c7
    sub [hl]                                      ; $7f56: $96
    sub c                                         ; $7f57: $91
    sub d                                         ; $7f58: $92
    ld hl, sp-$53                                 ; $7f59: $f8 $ad
    ld a, [$afe2]                                 ; $7f5b: $fa $e2 $af
    rst $00                                       ; $7f5e: $c7
    and a                                         ; $7f5f: $a7
    adc l                                         ; $7f60: $8d
    xor l                                         ; $7f61: $ad
    or [hl]                                       ; $7f62: $b6
    ld [hl], h                                    ; $7f63: $74
    or $c4                                        ; $7f64: $f6 $c4
    rst $20                                       ; $7f66: $e7
    ld l, d                                       ; $7f67: $6a
    ld h, e                                       ; $7f68: $63
    add hl, de                                    ; $7f69: $19
    ld a, l                                       ; $7f6a: $7d
    jr c, jr_038_7f83                             ; $7f6b: $38 $16

    ld sp, hl                                     ; $7f6d: $f9
    ei                                            ; $7f6e: $fb
    inc b                                         ; $7f6f: $04
    and b                                         ; $7f70: $a0
    ld a, h                                       ; $7f71: $7c
    ld [hl], l                                    ; $7f72: $75
    ld h, b                                       ; $7f73: $60
    rlca                                          ; $7f74: $07
    xor a                                         ; $7f75: $af
    dec l                                         ; $7f76: $2d
    and e                                         ; $7f77: $a3
    adc h                                         ; $7f78: $8c
    ld hl, $5888                                  ; $7f79: $21 $88 $58
    ld a, l                                       ; $7f7c: $7d
    ret                                           ; $7f7d: $c9


    cp c                                          ; $7f7e: $b9
    add e                                         ; $7f7f: $83
    ld h, c                                       ; $7f80: $61
    ld c, d                                       ; $7f81: $4a
    dec e                                         ; $7f82: $1d

jr_038_7f83:
    db $fc                                        ; $7f83: $fc
    ld b, c                                       ; $7f84: $41
    db $e3                                        ; $7f85: $e3
    jr z, jr_038_7f22                             ; $7f86: $28 $9a

    ccf                                           ; $7f88: $3f
    inc b                                         ; $7f89: $04
    ld l, a                                       ; $7f8a: $6f
    sbc c                                         ; $7f8b: $99
    ld [hl], b                                    ; $7f8c: $70
    pop af                                        ; $7f8d: $f1
    ld e, e                                       ; $7f8e: $5b
    cpl                                           ; $7f8f: $2f
    ld l, l                                       ; $7f90: $6d
    add hl, hl                                    ; $7f91: $29
    ld e, [hl]                                    ; $7f92: $5e
    ld c, l                                       ; $7f93: $4d
    db $d3                                        ; $7f94: $d3
    inc [hl]                                      ; $7f95: $34
    rlca                                          ; $7f96: $07
    ld c, c                                       ; $7f97: $49
    xor d                                         ; $7f98: $aa
    add a                                         ; $7f99: $87
    ld b, d                                       ; $7f9a: $42
    add h                                         ; $7f9b: $84
    ld l, d                                       ; $7f9c: $6a
    ld l, a                                       ; $7f9d: $6f
    ld h, a                                       ; $7f9e: $67
    ld sp, hl                                     ; $7f9f: $f9
    ld [$711d], sp                                ; $7fa0: $08 $1d $71
    dec c                                         ; $7fa3: $0d
    db $10                                        ; $7fa4: $10
    db $f4                                        ; $7fa5: $f4
    ld b, d                                       ; $7fa6: $42
    ld l, a                                       ; $7fa7: $6f
    ld h, a                                       ; $7fa8: $67
    rrca                                          ; $7fa9: $0f
    ld a, [hl]                                    ; $7faa: $7e
    dec hl                                        ; $7fab: $2b
    ld hl, $f33f                                  ; $7fac: $21 $3f $f3
    and [hl]                                      ; $7faf: $a6
    ld h, l                                       ; $7fb0: $65
    db $f4                                        ; $7fb1: $f4
    xor e                                         ; $7fb2: $ab
    ld c, $77                                     ; $7fb3: $0e $77
    ld l, [hl]                                    ; $7fb5: $6e
    pop af                                        ; $7fb6: $f1
    ret nz                                        ; $7fb7: $c0

    add b                                         ; $7fb8: $80

Call_038_7fb9:
Jump_038_7fb9:
    or a                                          ; $7fb9: $b7
    cpl                                           ; $7fba: $2f
    or $2b                                        ; $7fbb: $f6 $2b
    ld [hl+], a                                   ; $7fbd: $22
    call $b301                                    ; $7fbe: $cd $01 $b3
    ret z                                         ; $7fc1: $c8

    rst $08                                       ; $7fc2: $cf
    xor d                                         ; $7fc3: $aa
    cpl                                           ; $7fc4: $2f
    cp $9a                                        ; $7fc5: $fe $9a
    and [hl]                                      ; $7fc7: $a6
    ld l, c                                       ; $7fc8: $69
    or l                                          ; $7fc9: $b5
    ld [$31dd], a                                 ; $7fca: $ea $dd $31
    ld c, $14                                     ; $7fcd: $0e $14
    ld sp, hl                                     ; $7fcf: $f9
    cp e                                          ; $7fd0: $bb
    or $5c                                        ; $7fd1: $f6 $5c
    dec e                                         ; $7fd3: $1d
    ld b, [hl]                                    ; $7fd4: $46
    ld l, a                                       ; $7fd5: $6f
    add hl, de                                    ; $7fd6: $19
    dec e                                         ; $7fd7: $1d
    ld [$d34d], sp                                ; $7fd8: $08 $4d $d3
    or h                                          ; $7fdb: $b4
    jp c, Jump_038_59db                           ; $7fdc: $da $db $59

    ld a, $42                                     ; $7fdf: $3e $42
    ld b, a                                       ; $7fe1: $47
    ld e, h                                       ; $7fe2: $5c
    inc bc                                        ; $7fe3: $03
    inc b                                         ; $7fe4: $04
    cp l                                          ; $7fe5: $bd
    ret nc                                        ; $7fe6: $d0

    db $db                                        ; $7fe7: $db
    reti                                          ; $7fe8: $d9


    add e                                         ; $7fe9: $83
    ld [c], a                                     ; $7fea: $e2
    cp c                                          ; $7feb: $b9
    sub a                                         ; $7fec: $97
    or [hl]                                       ; $7fed: $b6
    inc d                                         ; $7fee: $14
    xor a                                         ; $7fef: $af
    ld h, $be                                     ; $7ff0: $26 $be
    and l                                         ; $7ff2: $a5
    pop bc                                        ; $7ff3: $c1
    ld e, a                                       ; $7ff4: $5f
    db $d3                                        ; $7ff5: $d3
    inc [hl]                                      ; $7ff6: $34
    call $ff01                                    ; $7ff7: $cd $01 $ff
    rst $38                                       ; $7ffa: $ff

Jump_038_7ffb:
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
