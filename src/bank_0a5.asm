; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a5", ROMX[$4000], BANK[$a5]

    db $a5

    ret nc                                        ; $4001: $d0

    ld [de], a                                    ; $4002: $12

Call_0a5_4003:
    adc c                                         ; $4003: $89
    inc c                                         ; $4004: $0c
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $c360                                  ; $4007: $01 $60 $c3
    db $fd                                        ; $400a: $fd
    add e                                         ; $400b: $83
    db $fd                                        ; $400c: $fd
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    ld l, a                                       ; $400f: $6f
    nop                                           ; $4010: $00
    sub b                                         ; $4011: $90
    cp a                                          ; $4012: $bf
    ret nz                                        ; $4013: $c0

    cpl                                           ; $4014: $2f
    ret nc                                        ; $4015: $d0

    rst $18                                       ; $4016: $df
    and b                                         ; $4017: $a0
    xor a                                         ; $4018: $af
    nop                                           ; $4019: $00
    ret nc                                        ; $401a: $d0

    rst $10                                       ; $401b: $d7
    add sp, $2f                                   ; $401c: $e8 $2f
    ret nc                                        ; $401e: $d0

    rst $38                                       ; $401f: $ff
    add b                                         ; $4020: $80

Jump_0a5_4021:
    rst $38                                       ; $4021: $ff
    ld b, b                                       ; $4022: $40
    nop                                           ; $4023: $00
    ld [bc], a                                    ; $4024: $02
    ld e, b                                       ; $4025: $58
    scf                                           ; $4026: $37
    ret z                                         ; $4027: $c8

    db $db                                        ; $4028: $db
    and h                                         ; $4029: $a4
    cpl                                           ; $402a: $2f
    ret nc                                        ; $402b: $d0

    nop                                           ; $402c: $00
    rst $10                                       ; $402d: $d7
    xor b                                         ; $402e: $a8
    ccf                                           ; $402f: $3f
    ret nz                                        ; $4030: $c0

    rst $18                                       ; $4031: $df
    and b                                         ; $4032: $a0
    cpl                                           ; $4033: $2f
    ret nc                                        ; $4034: $d0

    nop                                           ; $4035: $00
    rst $30                                       ; $4036: $f7
    adc b                                         ; $4037: $88
    rst $38                                       ; $4038: $ff
    ld bc, $0bf4                                  ; $4039: $01 $f4 $0b
    ei                                            ; $403c: $fb
    dec b                                         ; $403d: $05
    ld [$03fc], sp                                ; $403e: $08 $fc $03
    db $eb                                        ; $4041: $eb
    dec d                                         ; $4042: $15
    ld [$0700], sp                                ; $4043: $08 $00 $07
    db $fd                                        ; $4046: $fd
    inc bc                                        ; $4047: $03
    nop                                           ; $4048: $00
    ld e, a                                       ; $4049: $5f
    and b                                         ; $404a: $a0
    or a                                          ; $404b: $b7
    ret z                                         ; $404c: $c8

    db $db                                        ; $404d: $db
    db $e4                                        ; $404e: $e4
    xor a                                         ; $404f: $af
    ret nc                                        ; $4050: $d0

    add b                                         ; $4051: $80
    jr nz, jr_0a5_405c                            ; $4052: $20 $08

    scf                                           ; $4054: $37
    ret z                                         ; $4055: $c8

    rst $18                                       ; $4056: $df
    and b                                         ; $4057: $a0
    ld e, [hl]                                    ; $4058: $5e
    and b                                         ; $4059: $a0
    or [hl]                                       ; $405a: $b6
    nop                                           ; $405b: $00

jr_0a5_405c:
    ret z                                         ; $405c: $c8

    jp c, $aee4                                   ; $405d: $da $e4 $ae

    ret nc                                        ; $4060: $d0

    ld a, $c0                                     ; $4061: $3e $c0
    sbc $00                                       ; $4063: $de $00
    and b                                         ; $4065: $a0
    ld [hl], $c8                                  ; $4066: $36 $c8
    sbc $a0                                       ; $4068: $de $a0
    ld l, [hl]                                    ; $406a: $6e
    sub b                                         ; $406b: $90
    cp [hl]                                       ; $406c: $be
    nop                                           ; $406d: $00
    ret nz                                        ; $406e: $c0

    ld l, $d0                                     ; $406f: $2e $d0
    sbc $a0                                       ; $4071: $de $a0
    xor [hl]                                      ; $4073: $ae
    ret nc                                        ; $4074: $d0

    sub $00                                       ; $4075: $d6 $00
    add sp, $2e                                   ; $4077: $e8 $2e
    ret nc                                        ; $4079: $d0

    cp $80                                        ; $407a: $fe $80
    ld l, a                                       ; $407c: $6f
    ld de, $0074                                  ; $407d: $11 $74 $00
    dec bc                                        ; $4080: $0b
    ld a, e                                       ; $4081: $7b
    dec b                                         ; $4082: $05
    ld a, h                                       ; $4083: $7c
    inc bc                                        ; $4084: $03
    ld l, e                                       ; $4085: $6b
    dec d                                         ; $4086: $15
    ld [hl], h                                    ; $4087: $74
    ld bc, $5b0b                                  ; $4088: $01 $0b $5b
    dec h                                         ; $408b: $25
    ld l, h                                       ; $408c: $6c
    inc de                                        ; $408d: $13
    ld a, a                                       ; $408e: $7f
    ld bc, $3810                                  ; $408f: $01 $10 $38
    nop                                           ; $4092: $00
    ld a, e                                       ; $4093: $7b
    rlca                                          ; $4094: $07
    ld a, l                                       ; $4095: $7d
    inc bc                                        ; $4096: $03
    or e                                          ; $4097: $b3
    cp $8f                                        ; $4098: $fe $8f
    xor l                                         ; $409a: $ad
    nop                                           ; $409b: $00
    add h                                         ; $409c: $84
    call nc, $a88c                                ; $409d: $d4 $8c $a8
    adc b                                         ; $40a0: $88
    ret c                                         ; $40a1: $d8

    sbc a                                         ; $40a2: $9f
    cp a                                          ; $40a3: $bf
    nop                                           ; $40a4: $00
    ld a, [c]                                     ; $40a5: $f2
    rst $38                                       ; $40a6: $ff
    sbc a                                         ; $40a7: $9f
    ld [c], a                                     ; $40a8: $e2
    rrca                                          ; $40a9: $0f
    ld [$9c97], sp                                ; $40aa: $08 $97 $9c
    nop                                           ; $40ad: $00
    ld h, e                                       ; $40ae: $63
    ld a, a                                       ; $40af: $7f
    ld hl, $733f                                  ; $40b0: $21 $3f $73
    ld e, [hl]                                    ; $40b3: $5e
    sbc $ac                                       ; $40b4: $de $ac
    nop                                           ; $40b6: $00
    xor h                                         ; $40b7: $ac
    ld d, h                                       ; $40b8: $54
    ld d, h                                       ; $40b9: $54
    xor h                                         ; $40ba: $ac
    ld [c], a                                     ; $40bb: $e2
    ccf                                           ; $40bc: $3f
    push af                                       ; $40bd: $f5
    ld e, [hl]                                    ; $40be: $5e
    nop                                           ; $40bf: $00
    res 1, h                                      ; $40c0: $cb $8c
    add a                                         ; $40c2: $87
    inc b                                         ; $40c3: $04
    inc bc                                        ; $40c4: $03
    ld [bc], a                                    ; $40c5: $02
    ld bc, $0001                                  ; $40c6: $01 $01 $00
    ld [bc], a                                    ; $40c9: $02
    inc bc                                        ; $40ca: $03
    ld [bc], a                                    ; $40cb: $02

jr_0a5_40cc:
    ld [bc], a                                    ; $40cc: $02
    pop hl                                        ; $40cd: $e1
    ccf                                           ; $40ce: $3f
    pop af                                        ; $40cf: $f1
    rra                                           ; $40d0: $1f
    add b                                         ; $40d1: $80
    ld [bc], a                                    ; $40d2: $02
    nop                                           ; $40d3: $00
    ld a, a                                       ; $40d4: $7f
    adc a                                         ; $40d5: $8f
    rst $18                                       ; $40d6: $df
    ld bc, $01ab                                  ; $40d7: $01 $ab $01
    ld d, l                                       ; $40da: $55
    nop                                           ; $40db: $00
    inc bc                                        ; $40dc: $03
    xor e                                         ; $40dd: $ab
    cp $85                                        ; $40de: $fe $85
    db $fd                                        ; $40e0: $fd
    add [hl]                                      ; $40e1: $86
    cp $f5                                        ; $40e2: $fe $f5
    nop                                           ; $40e4: $00
    adc a                                         ; $40e5: $8f
    rst $38                                       ; $40e6: $ff
    add c                                         ; $40e7: $81
    rst $38                                       ; $40e8: $ff
    add e                                         ; $40e9: $83
    cp $86                                        ; $40ea: $fe $86
    db $fc                                        ; $40ec: $fc
    nop                                           ; $40ed: $00
    adc h                                         ; $40ee: $8c
    ld hl, sp-$54                                 ; $40ef: $f8 $ac
    ld e, h                                       ; $40f1: $5c
    ld d, d                                       ; $40f2: $52
    cp [hl]                                       ; $40f3: $be
    and e                                         ; $40f4: $a3
    ld a, a                                       ; $40f5: $7f
    db $10                                        ; $40f6: $10
    pop bc                                        ; $40f7: $c1
    rst $38                                       ; $40f8: $ff
    ret nz                                        ; $40f9: $c0

    ld b, h                                       ; $40fa: $44
    nop                                           ; $40fb: $00
    inc de                                        ; $40fc: $13
    rra                                           ; $40fd: $1f
    dec c                                         ; $40fe: $0d
    rrca                                          ; $40ff: $0f
    ld [$0f0d], sp                                ; $4100: $08 $0d $0f
    ld [hl], b                                    ; $4103: $70
    ld a, a                                       ; $4104: $7f
    push hl                                       ; $4105: $e5
    ld [$ff81], sp                                ; $4106: $08 $81 $ff
    jp $fe00                                      ; $4109: $c3 $00 $fe


    ld a, $fc                                     ; $410c: $3e $fc
    inc c                                         ; $410e: $0c
    ld hl, sp+$05                                 ; $410f: $f8 $05
    ld d, a                                       ; $4111: $57
    adc c                                         ; $4112: $89
    nop                                           ; $4113: $00
    xor a                                         ; $4114: $af
    pop de                                        ; $4115: $d1
    rst $18                                       ; $4116: $df
    pop af                                        ; $4117: $f1
    cp a                                          ; $4118: $bf
    sub c                                         ; $4119: $91
    rra                                           ; $411a: $1f
    add hl, bc                                    ; $411b: $09
    nop                                           ; $411c: $00
    rrca                                          ; $411d: $0f
    dec b                                         ; $411e: $05
    rlca                                          ; $411f: $07
    rrca                                          ; $4120: $0f
    dec bc                                        ; $4121: $0b
    cp $fe                                        ; $4122: $fe $fe
    di                                            ; $4124: $f3
    nop                                           ; $4125: $00
    add e                                         ; $4126: $83
    add d                                         ; $4127: $82
    add e                                         ; $4128: $83
    ld [c], a                                     ; $4129: $e2
    db $e3                                        ; $412a: $e3
    sbc [hl]                                      ; $412b: $9e
    rst $38                                       ; $412c: $ff
    add d                                         ; $412d: $82
    add b                                         ; $412e: $80
    ld b, h                                       ; $412f: $44
    nop                                           ; $4130: $00
    pop bc                                        ; $4131: $c1
    rst $38                                       ; $4132: $ff
    rlca                                          ; $4133: $07
    rlca                                          ; $4134: $07
    ret z                                         ; $4135: $c8

    rst $08                                       ; $4136: $cf
    jr nc, @+$22                                  ; $4137: $30 $20

    rst $38                                       ; $4139: $ff
    ld [$0002], sp                                ; $413a: $08 $02 $00
    ld a, a                                       ; $413d: $7f

jr_0a5_413e:
    rst $38                                       ; $413e: $ff
    ret                                           ; $413f: $c9


    adc [hl]                                      ; $4140: $8e
    adc e                                         ; $4141: $8b
    nop                                           ; $4142: $00
    inc c                                         ; $4143: $0c
    jr jr_0a5_413e                                ; $4144: $18 $f8

    and [hl]                                      ; $4146: $a6
    cp $61                                        ; $4147: $fe $61
    rst $38                                       ; $4149: $ff
    jr nz, jr_0a5_40cc                            ; $414a: $20 $80

    ld [bc], a                                    ; $414c: $02
    nop                                           ; $414d: $00
    ld l, $ff                                     ; $414e: $2e $ff
    pop af                                        ; $4150: $f1
    rst $38                                       ; $4151: $ff
    pop bc                                        ; $4152: $c1

jr_0a5_4153:
    ld a, a                                       ; $4153: $7f
    rla                                           ; $4154: $17
    nop                                           ; $4155: $00
    add hl, de                                    ; $4156: $19
    cpl                                           ; $4157: $2f
    ld sp, $d9ff                                  ; $4158: $31 $ff $d9
    cp a                                          ; $415b: $bf
    rst $00                                       ; $415c: $c7
    cp a                                          ; $415d: $bf
    nop                                           ; $415e: $00
    pop bc                                        ; $415f: $c1
    rst $38                                       ; $4160: $ff
    add c                                         ; $4161: $81
    ld a, a                                       ; $4162: $7f
    cp a                                          ; $4163: $bf
    pop hl                                        ; $4164: $e1
    rst $38                                       ; $4165: $ff
    cp a                                          ; $4166: $bf
    ld [de], a                                    ; $4167: $12
    ret nz                                        ; $4168: $c0

    rst $18                                       ; $4169: $df
    ldh [$30], a                                  ; $416a: $e0 $30
    add hl, sp                                    ; $416c: $39
    add b                                         ; $416d: $80
    rst $38                                       ; $416e: $ff
    ld d, b                                       ; $416f: $50
    ld c, c                                       ; $4170: $49
    ld [hl], a                                    ; $4171: $77
    db $10                                        ; $4172: $10
    adc b                                         ; $4173: $88
    xor d                                         ; $4174: $aa
    ld d, l                                       ; $4175: $55
    ld h, b                                       ; $4176: $60
    add hl, sp                                    ; $4177: $39
    ei                                            ; $4178: $fb
    inc b                                         ; $4179: $04
    db $fd                                        ; $417a: $fd
    ld [bc], a                                    ; $417b: $02
    add b                                         ; $417c: $80
    db $10                                        ; $417d: $10
    ld c, b                                       ; $417e: $48
    cp $01                                        ; $417f: $fe $01
    ld a, a                                       ; $4181: $7f
    add b                                         ; $4182: $80
    xor d                                         ; $4183: $aa
    ld d, l                                       ; $4184: $55
    nop                                           ; $4185: $00
    ld de, $7fff                                  ; $4186: $11 $ff $7f
    add b                                         ; $4189: $80
    add e                                         ; $418a: $83
    add hl, hl                                    ; $418b: $29
    rst $38                                       ; $418c: $ff
    rst $38                                       ; $418d: $ff
    xor d                                         ; $418e: $aa
    ld b, $08                                     ; $418f: $06 $08
    ld h, d                                       ; $4191: $62
    nop                                           ; $4192: $00
    db $10                                        ; $4193: $10
    ld c, b                                       ; $4194: $48
    add b                                         ; $4195: $80
    add hl, bc                                    ; $4196: $09
    db $eb                                        ; $4197: $eb
    rla                                           ; $4198: $17
    push af                                       ; $4199: $f5
    add h                                         ; $419a: $84
    ld bc, $00f4                                  ; $419b: $01 $f4 $00
    dec bc                                        ; $419e: $0b
    ld l, l                                       ; $419f: $6d
    sub e                                         ; $41a0: $93
    add b                                         ; $41a1: $80
    ld a, a                                       ; $41a2: $7f
    ld [hl], $c8                                  ; $41a3: $36 $c8
    jp c, $a40a                                   ; $41a5: $da $0a $a4

    ld l, $d0                                     ; $41a8: $2e $d0
    sub $a0                                       ; $41aa: $d6 $a0
    ld bc, $a0de                                  ; $41ac: $01 $de $a0
    ld bc, $0192                                  ; $41af: $01 $92 $01
    db $ec                                        ; $41b2: $ec
    nop                                           ; $41b3: $00
    rst $38                                       ; $41b4: $ff
    cp $01                                        ; $41b5: $fe $01
    ld [bc], a                                    ; $41b7: $02
    db $fd                                        ; $41b8: $fd
    ld [bc], a                                    ; $41b9: $02
    ld [$4081], sp                                ; $41ba: $08 $81 $40
    jr jr_0a5_4153                                ; $41bd: $18 $94

    db $fc                                        ; $41bf: $fc
    xor [hl]                                      ; $41c0: $ae
    ld a, [c]                                     ; $41c1: $f2
    rst $18                                       ; $41c2: $df
    pop hl                                        ; $41c3: $e1
    sbc [hl]                                      ; $41c4: $9e
    ld [$fe00], sp                                ; $41c5: $08 $00 $fe
    add e                                         ; $41c8: $83
    cp $83                                        ; $41c9: $fe $83
    rst $38                                       ; $41cb: $ff
    rst $38                                       ; $41cc: $ff
    scf                                           ; $41cd: $37
    jr c, jr_0a5_41d0                             ; $41ce: $38 $00

jr_0a5_41d0:
    ld e, a                                       ; $41d0: $5f
    ld h, b                                       ; $41d1: $60
    rst $38                                       ; $41d2: $ff
    add b                                         ; $41d3: $80
    ld a, a                                       ; $41d4: $7f
    pop bc                                        ; $41d5: $c1
    ld a, $f3                                     ; $41d6: $3e $f3
    db $10                                        ; $41d8: $10
    inc c                                         ; $41d9: $0c
    rst $38                                       ; $41da: $ff
    inc b                                         ; $41db: $04
    dec e                                         ; $41dc: $1d
    ld [bc], a                                    ; $41dd: $02
    adc b                                         ; $41de: $88
    ld hl, sp-$70                                 ; $41df: $f8 $90
    ldh a, [rP1]                                  ; $41e1: $f0 $00
    ret nc                                        ; $41e3: $d0

    ldh a, [$38]                                  ; $41e4: $f0 $38
    ld hl, sp+$07                                 ; $41e6: $f8 $07
    rst $38                                       ; $41e8: $ff
    inc bc                                        ; $41e9: $03
    cp $40                                        ; $41ea: $fe $40
    ld bc, $022d                                  ; $41ec: $01 $2d $02
    dec de                                        ; $41ef: $1b
    dec d                                         ; $41f0: $15
    dec [hl]                                      ; $41f1: $35
    dec hl                                        ; $41f2: $2b
    ld l, e                                       ; $41f3: $6b
    ld d, l                                       ; $41f4: $55
    rlca                                          ; $41f5: $07
    push de                                       ; $41f6: $d5
    xor e                                         ; $41f7: $ab
    xor e                                         ; $41f8: $ab
    ld d, l                                       ; $41f9: $55
    ld d, l                                       ; $41fa: $55
    inc b                                         ; $41fb: $04
    nop                                           ; $41fc: $00
    ld a, l                                       ; $41fd: $7d
    ld [$0802], sp                                ; $41fe: $08 $02 $08
    inc d                                         ; $4201: $14

jr_0a5_4202:
    xor d                                         ; $4202: $aa
    nop                                           ; $4203: $00
    ld d, l                                       ; $4204: $55
    inc b                                         ; $4205: $04
    nop                                           ; $4206: $00
    rst $38                                       ; $4207: $ff
    ld [$0c00], sp                                ; $4208: $08 $00 $0c
    rst $38                                       ; $420b: $ff
    ld [bc], a                                    ; $420c: $02
    ld sp, hl                                     ; $420d: $f9
    ld c, $1c                                     ; $420e: $0e $1c
    rst $28                                       ; $4210: $ef
    jr jr_0a5_4202                                ; $4211: $18 $ef

    inc b                                         ; $4213: $04
    adc b                                         ; $4214: $88
    inc c                                         ; $4215: $0c
    add b                                         ; $4216: $80
    or b                                          ; $4217: $b0
    db $10                                        ; $4218: $10
    xor d                                         ; $4219: $aa
    rst $38                                       ; $421a: $ff
    push af                                       ; $421b: $f5
    rst $38                                       ; $421c: $ff
    rst $18                                       ; $421d: $df
    ccf                                           ; $421e: $3f
    dec bc                                        ; $421f: $0b
    nop                                           ; $4220: $00
    rlca                                          ; $4221: $07
    sbc d                                         ; $4222: $9a
    nop                                           ; $4223: $00
    and e                                         ; $4224: $a3
    inc e                                         ; $4225: $1c
    inc e                                         ; $4226: $1c
    inc hl                                        ; $4227: $23
    dec e                                         ; $4228: $1d
    nop                                           ; $4229: $00
    ld hl, sp+$38                                 ; $422a: $f8 $38
    di                                            ; $422c: $f3
    ld [hl], e                                    ; $422d: $73
    db $e4                                        ; $422e: $e4
    db $e4                                        ; $422f: $e4
    ret z                                         ; $4230: $c8

    ld b, a                                       ; $4231: $47
    nop                                           ; $4232: $00
    sbc b                                         ; $4233: $98
    ld a, [de]                                    ; $4234: $1a
    sbc l                                         ; $4235: $9d
    ld e, $4f                                     ; $4236: $1e $4f
    ld b, l                                       ; $4238: $45
    add e                                         ; $4239: $83
    xor e                                         ; $423a: $ab
    nop                                           ; $423b: $00
    rra                                           ; $423c: $1f
    inc de                                        ; $423d: $13
    call z, Call_000_2050                         ; $423e: $cc $50 $20
    jr nz, jr_0a5_4254                            ; $4241: $20 $11

    pop hl                                        ; $4243: $e1
    nop                                           ; $4244: $00
    inc de                                        ; $4245: $13
    sub [hl]                                      ; $4246: $96
    ld h, a                                       ; $4247: $67
    ld a, l                                       ; $4248: $7d
    rst $08                                       ; $4249: $cf
    rst $38                                       ; $424a: $ff
    sbc a                                         ; $424b: $9f
    ld h, e                                       ; $424c: $63
    nop                                           ; $424d: $00
    add h                                         ; $424e: $84
    inc b                                         ; $424f: $04
    inc bc                                        ; $4250: $03
    cp e                                          ; $4251: $bb
    ld a, l                                       ; $4252: $7d
    rst $20                                       ; $4253: $e7

jr_0a5_4254:
    cp $82                                        ; $4254: $fe $82

jr_0a5_4256:
    jr nz, @+$01                                  ; $4256: $20 $ff

    ld a, l                                       ; $4258: $7d
    xor e                                         ; $4259: $ab
    ld [bc], a                                    ; $425a: $02
    cp $ff                                        ; $425b: $fe $ff
    ld d, c                                       ; $425d: $51
    jr nz, @+$30                                  ; $425e: $20 $2e

    nop                                           ; $4260: $00
    ld b, b                                       ; $4261: $40
    cp a                                          ; $4262: $bf
    ld b, b                                       ; $4263: $40
    ld a, a                                       ; $4264: $7f
    add b                                         ; $4265: $80
    ld a, a                                       ; $4266: $7f
    add b                                         ; $4267: $80
    cp a                                          ; $4268: $bf
    nop                                           ; $4269: $00
    ret nz                                        ; $426a: $c0

    rst $10                                       ; $426b: $d7
    add sp, -$56                                  ; $426c: $e8 $aa
    push af                                       ; $426e: $f5
    sub b                                         ; $426f: $90
    ld h, b                                       ; $4270: $60
    ld l, c                                       ; $4271: $69
    nop                                           ; $4272: $00
    db $10                                        ; $4273: $10
    xor e                                         ; $4274: $ab
    ld de, $23d7                                  ; $4275: $11 $d7 $23
    jp $a327                                      ; $4278: $c3 $27 $a3


    nop                                           ; $427b: $00
    ld b, a                                       ; $427c: $47
    add l                                         ; $427d: $85
    ld b, e                                       ; $427e: $43
    sbc c                                         ; $427f: $99
    add b                                         ; $4280: $80
    ld [hl], a                                    ; $4281: $77
    ccf                                           ; $4282: $3f
    ld a, a                                       ; $4283: $7f
    add h                                         ; $4284: $84
    db $d3                                        ; $4285: $d3
    ld [hl-], a                                   ; $4286: $32
    ld sp, hl                                     ; $4287: $f9
    cp $88                                        ; $4288: $fe $88
    ld [hl], b                                    ; $428a: $70
    ldh [$0a], a                                  ; $428b: $e0 $0a
    cp $ff                                        ; $428d: $fe $ff
    nop                                           ; $428f: $00
    ld a, [$d5fc]                                 ; $4290: $fa $fc $d5
    ldh [$5a], a                                  ; $4293: $e0 $5a
    add b                                         ; $4295: $80
    ld b, e                                       ; $4296: $43
    inc a                                         ; $4297: $3c
    jr z, jr_0a5_4256                             ; $4298: $28 $bc

    ld b, e                                       ; $429a: $43
    ldh [rWY], a                                  ; $429b: $e0 $4a
    pop bc                                        ; $429d: $c1
    ld b, b                                       ; $429e: $40
    ld bc, $0b91                                  ; $429f: $01 $91 $0b
    rst $30                                       ; $42a2: $f7
    nop                                           ; $42a3: $00
    add hl, bc                                    ; $42a4: $09
    ld l, c                                       ; $42a5: $69
    sbc b                                         ; $42a6: $98
    ld hl, sp-$10                                 ; $42a7: $f8 $f0
    sub h                                         ; $42a9: $94
    ld h, e                                       ; $42aa: $63
    adc e                                         ; $42ab: $8b
    nop                                           ; $42ac: $00
    inc b                                         ; $42ad: $04
    ld b, [hl]                                    ; $42ae: $46
    adc c                                         ; $42af: $89
    sub h                                         ; $42b0: $94
    set 7, a                                      ; $42b1: $cb $ff
    rst $38                                       ; $42b3: $ff
    db $fc                                        ; $42b4: $fc
    nop                                           ; $42b5: $00
    rst $38                                       ; $42b6: $ff
    ld h, [hl]                                    ; $42b7: $66
    ld hl, sp+$01                                 ; $42b8: $f8 $01
    nop                                           ; $42ba: $00
    ld b, $f8                                     ; $42bb: $06 $f8
    ldh a, [rP1]                                  ; $42bd: $f0 $00
    rrca                                          ; $42bf: $0f
    ld l, $d1                                     ; $42c0: $2e $d1
    nop                                           ; $42c2: $00
    rst $38                                       ; $42c3: $ff
    ret z                                         ; $42c4: $c8

    ldh [$d0], a                                  ; $42c5: $e0 $d0
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    and b                                         ; $42c9: $a0
    inc bc                                        ; $42ca: $03
    ld b, e                                       ; $42cb: $43
    inc b                                         ; $42cc: $04
    and d                                         ; $42cd: $a2
    inc b                                         ; $42ce: $04

Call_0a5_42cf:
    ld c, c                                       ; $42cf: $49
    nop                                           ; $42d0: $00
    add h                                         ; $42d1: $84
    rlca                                          ; $42d2: $07
    ret z                                         ; $42d3: $c8

    add a                                         ; $42d4: $87
    ld c, b                                       ; $42d5: $48
    ld b, l                                       ; $42d6: $45
    rrca                                          ; $42d7: $0f
    xor e                                         ; $42d8: $ab
    nop                                           ; $42d9: $00
    rlca                                          ; $42da: $07
    push bc                                       ; $42db: $c5
    inc bc                                        ; $42dc: $03
    nop                                           ; $42dd: $00
    ldh a, [$72]                                  ; $42de: $f0 $72
    inc c                                         ; $42e0: $0c
    dec c                                         ; $42e1: $0d
    jr nz, jr_0a5_42e6                            ; $42e2: $20 $02

    push de                                       ; $42e4: $d5
    ld c, c                                       ; $42e5: $49

jr_0a5_42e6:
    ld bc, $df80                                  ; $42e6: $01 $80 $df
    ldh a, [$9f]                                  ; $42e9: $f0 $9f
    sub b                                         ; $42eb: $90
    nop                                           ; $42ec: $00
    ccf                                           ; $42ed: $3f

jr_0a5_42ee:
    xor b                                         ; $42ee: $a8
    ld a, a                                       ; $42ef: $7f
    inc [hl]                                      ; $42f0: $34
    ld a, a                                       ; $42f1: $7f
    ld e, [hl]                                    ; $42f2: $5e
    ccf                                           ; $42f3: $3f
    cpl                                           ; $42f4: $2f
    ld de, $151f                                  ; $42f5: $11 $1f $15
    db $e3                                        ; $42f8: $e3
    rra                                           ; $42f9: $1f
    dec sp                                        ; $42fa: $3b
    add c                                         ; $42fb: $81
    rst $38                                       ; $42fc: $ff
    ld c, e                                       ; $42fd: $4b
    or b                                          ; $42fe: $b0
    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00
    rla                                           ; $4301: $17
    ret z                                         ; $4302: $c8

    rrca                                          ; $4303: $0f
    ret nc                                        ; $4304: $d0

    ld [hl], a                                    ; $4305: $77
    sbc b                                         ; $4306: $98
    ld a, d                                       ; $4307: $7a
    sbc l                                         ; $4308: $9d
    nop                                           ; $4309: $00
    sbc l                                         ; $430a: $9d
    adc a                                         ; $430b: $8f
    ld c, $87                                     ; $430c: $0e $87
    add a                                         ; $430e: $87
    inc bc                                        ; $430f: $03
    ld b, d                                       ; $4310: $42
    ld bc, $fa10                                  ; $4311: $01 $10 $fa
    inc b                                         ; $4314: $04
    ld hl, sp+$02                                 ; $4315: $f8 $02
    nop                                           ; $4317: $00
    ld sp, hl                                     ; $4318: $f9
    inc b                                         ; $4319: $04
    ld [hl], l                                    ; $431a: $75
    adc b                                         ; $431b: $88
    nop                                           ; $431c: $00
    xor e                                         ; $431d: $ab
    ret c                                         ; $431e: $d8

    ld e, e                                       ; $431f: $5b
    ld hl, sp-$47                                 ; $4320: $f8 $b9
    ld hl, sp-$2b                                 ; $4322: $f8 $d5
    ld a, e                                       ; $4324: $7b
    nop                                           ; $4325: $00
    ld l, e                                       ; $4326: $6b
    ccf                                           ; $4327: $3f
    scf                                           ; $4328: $37
    ld a, $be                                     ; $4329: $3e $be
    inc e                                         ; $432b: $1c
    jr nz, jr_0a5_42ee                            ; $432c: $20 $c0

    ld bc, $38c4                                  ; $432e: $01 $c4 $38
    ld a, [de]                                    ; $4331: $1a
    inc b                                         ; $4332: $04
    db $fc                                        ; $4333: $fc
    ld [bc], a                                    ; $4334: $02
    and d                                         ; $4335: $a2
    inc d                                         ; $4336: $14
    ld bc, $1101                                  ; $4337: $01 $01 $11
    jr nz, @+$4e                                  ; $433a: $20 $4c

    jr nz, jr_0a5_437d                            ; $433c: $20 $3f

    ld b, b                                       ; $433e: $40
    rst $38                                       ; $433f: $ff
    add sp, $00                                   ; $4340: $e8 $00
    nop                                           ; $4342: $00
    rst $18                                       ; $4343: $df
    ld h, b                                       ; $4344: $60
    add hl, hl                                    ; $4345: $29
    nop                                           ; $4346: $00
    ld d, d                                       ; $4347: $52
    add c                                         ; $4348: $81
    sub c                                         ; $4349: $91
    ld h, d                                       ; $434a: $62
    nop                                           ; $434b: $00
    ld l, b                                       ; $434c: $68
    inc de                                        ; $434d: $13
    xor h                                         ; $434e: $ac
    inc de                                        ; $434f: $13
    and h                                         ; $4350: $a4
    inc de                                        ; $4351: $13
    ldh [rNR22], a                                ; $4352: $e0 $17
    ld [bc], a                                    ; $4354: $02
    db $e4                                        ; $4355: $e4
    rla                                           ; $4356: $17
    ld h, a                                       ; $4357: $67
    sbc b                                         ; $4358: $98
    ret nz                                        ; $4359: $c0

    ccf                                           ; $435a: $3f
    add e                                         ; $435b: $83
    ld c, e                                       ; $435c: $4b
    db $fc                                        ; $435d: $fc
    nop                                           ; $435e: $00
    ld [bc], a                                    ; $435f: $02
    ld a, [c]                                     ; $4360: $f2
    inc c                                         ; $4361: $0c
    ld d, [hl]                                    ; $4362: $56
    xor h                                         ; $4363: $ac
    adc l                                         ; $4364: $8d
    ld hl, sp+$7a                                 ; $4365: $f8 $7a
    nop                                           ; $4367: $00
    ldh a, [$d1]                                  ; $4368: $f0 $d1
    db $e4                                        ; $436a: $e4
    ret nz                                        ; $436b: $c0

    ld [bc], a                                    ; $436c: $02
    ld [$6f07], sp                                ; $436d: $08 $07 $6f
    nop                                           ; $4370: $00
    ld d, b                                       ; $4371: $50
    ld d, a                                       ; $4372: $57

jr_0a5_4373:
    ld l, b                                       ; $4373: $68
    dec hl                                        ; $4374: $2b
    ld [hl], h                                    ; $4375: $74
    dec h                                         ; $4376: $25
    ld a, [hl-]                                   ; $4377: $3a
    ld [hl-], a                                   ; $4378: $32
    nop                                           ; $4379: $00
    dec a                                         ; $437a: $3d
    jr jr_0a5_43bc                                ; $437b: $18 $3f

jr_0a5_437d:
    adc l                                         ; $437d: $8d
    rra                                           ; $437e: $1f
    sub $0f                                       ; $437f: $d6 $0f
    xor $00                                       ; $4381: $ee $00
    rla                                           ; $4383: $17
    push de                                       ; $4384: $d5
    daa                                           ; $4385: $27
    ld [$1727], a                                 ; $4386: $ea $27 $17
    db $e3                                        ; $4389: $e3
    ld c, e                                       ; $438a: $4b
    ld bc, $81e1                                  ; $438b: $01 $e1 $81
    ret nc                                        ; $438e: $d0

    inc h                                         ; $438f: $24
    adc b                                         ; $4390: $88
    ld [hl+], a                                   ; $4391: $22
    inc e                                         ; $4392: $1c
    cp a                                          ; $4393: $bf
    dec bc                                        ; $4394: $0b
    inc b                                         ; $4395: $04
    add b                                         ; $4396: $80
    rst $38                                       ; $4397: $ff
    ld d, b                                       ; $4398: $50
    rst $38                                       ; $4399: $ff
    db $ec                                        ; $439a: $ec
    ld c, h                                       ; $439b: $4c
    ld bc, $7fff                                  ; $439c: $01 $ff $7f
    ld [bc], a                                    ; $439f: $02
    ld e, a                                       ; $43a0: $5f
    ccf                                           ; $43a1: $3f
    add b                                         ; $43a2: $80
    ld a, a                                       ; $43a3: $7f
    rra                                           ; $43a4: $1f
    ldh [rHDMA2], a                               ; $43a5: $e0 $52
    jr c, jr_0a5_43ee                             ; $43a7: $38 $45

    nop                                           ; $43a9: $00
    rst $38                                       ; $43aa: $ff
    jr nz, jr_0a5_4373                            ; $43ab: $20 $c6

    adc b                                         ; $43ad: $88
    ld [hl], b                                    ; $43ae: $70
    ld a, [hl+]                                   ; $43af: $2a
    ret c                                         ; $43b0: $d8

    dec c                                         ; $43b1: $0d
    nop                                           ; $43b2: $00
    ld hl, sp+$1a                                 ; $43b3: $f8 $1a
    pop af                                        ; $43b5: $f1
    ld [hl], c                                    ; $43b6: $71
    and $e6                                       ; $43b7: $e6 $e6
    ret z                                         ; $43b9: $c8

    ret                                           ; $43ba: $c9


    nop                                           ; $43bb: $00

jr_0a5_43bc:
    sub b                                         ; $43bc: $90
    ld d, h                                       ; $43bd: $54
    inc hl                                        ; $43be: $23
    ld [hl+], a                                   ; $43bf: $22
    ld b, b                                       ; $43c0: $40
    ccf                                           ; $43c1: $3f
    ld b, b                                       ; $43c2: $40
    ld l, a                                       ; $43c3: $6f
    nop                                           ; $43c4: $00
    jr nc, jr_0a5_4401                            ; $43c5: $30 $3a

    db $dd                                        ; $43c7: $dd
    sub $2f                                       ; $43c8: $d6 $2f
    dec h                                         ; $43ca: $25
    inc de                                        ; $43cb: $13
    pop de                                        ; $43cc: $d1
    nop                                           ; $43cd: $00
    ld [$9c63], sp                                ; $43ce: $08 $63 $9c
    adc d                                         ; $43d1: $8a
    ld h, b                                       ; $43d2: $60
    db $ed                                        ; $43d3: $ed
    db $10                                        ; $43d4: $10
    db $eb                                        ; $43d5: $eb
    nop                                           ; $43d6: $00
    ld de, $63b7                                  ; $43d7: $11 $b7 $63
    db $e3                                        ; $43da: $e3
    rst $00                                       ; $43db: $c7
    jp $8587                                      ; $43dc: $c3 $87 $85


    nop                                           ; $43df: $00
    inc bc                                        ; $43e0: $03
    xor a                                         ; $43e1: $af
    rst $38                                       ; $43e2: $ff
    db $fc                                        ; $43e3: $fc
    cp $f4                                        ; $43e4: $fe $f4
    ld a, b                                       ; $43e6: $78
    ld d, b                                       ; $43e7: $50
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    inc l                                         ; $43ea: $2c
    inc bc                                        ; $43eb: $03
    rla                                           ; $43ec: $17
    rrca                                          ; $43ed: $0f

jr_0a5_43ee:
    inc a                                         ; $43ee: $3c
    rra                                           ; $43ef: $1f
    or a                                          ; $43f0: $b7
    jr nz, jr_0a5_4472                            ; $43f1: $20 $7f

    sbc a                                         ; $43f3: $9f
    cp d                                          ; $43f4: $ba
    nop                                           ; $43f5: $00
    rra                                           ; $43f6: $1f
    ld h, b                                       ; $43f7: $60
    dec e                                         ; $43f8: $1d
    ld [hl-], a                                   ; $43f9: $32
    adc d                                         ; $43fa: $8a
    nop                                           ; $43fb: $00
    dec e                                         ; $43fc: $1d
    db $db                                        ; $43fd: $db
    rst $20                                       ; $43fe: $e7
    ld a, e                                       ; $43ff: $7b
    db $fc                                        ; $4400: $fc

jr_0a5_4401:
    rrca                                          ; $4401: $0f
    rst $38                                       ; $4402: $ff
    db $f4                                        ; $4403: $f4
    ld b, b                                       ; $4404: $40
    ld [$00f0], sp                                ; $4405: $08 $f0 $00
    dec b                                         ; $4408: $05
    ld [c], a                                     ; $4409: $e2
    add hl, de                                    ; $440a: $19
    and c                                         ; $440b: $a1
    ld [hl], d                                    ; $440c: $72
    ld b, d                                       ; $440d: $42
    nop                                           ; $440e: $00
    db $e4                                        ; $440f: $e4
    inc bc                                        ; $4410: $03

jr_0a5_4411:
    call nz, $8443                                ; $4411: $c4 $43 $84
    add hl, bc                                    ; $4414: $09
    ld [hl], b                                    ; $4415: $70
    ld [hl], c                                    ; $4416: $71

jr_0a5_4417:
    ld [bc], a                                    ; $4417: $02
    adc [hl]                                      ; $4418: $8e
    adc [hl]                                      ; $4419: $8e
    ld bc, $0031                                  ; $441a: $01 $31 $00
    ld a, [hl]                                    ; $441d: $7e
    ld c, b                                       ; $441e: $48
    inc h                                         ; $441f: $24
    jp nz, Jump_000_3c00                          ; $4420: $c2 $00 $3c

    cp b                                          ; $4423: $b8
    ld b, [hl]                                    ; $4424: $46
    dec b                                         ; $4425: $05
    ld a, [$fe01]                                 ; $4426: $fa $01 $fe
    ld bc, $fe20                                  ; $4429: $01 $20 $fe
    nop                                           ; $442c: $00
    ld [bc], a                                    ; $442d: $02
    nop                                           ; $442e: $00
    ld [bc], a                                    ; $442f: $02
    db $fd                                        ; $4430: $fd
    cp d                                          ; $4431: $ba
    ld a, h                                       ; $4432: $7c
    ld hl, $8000                                  ; $4433: $21 $00 $80
    inc e                                         ; $4436: $1c
    ld b, b                                       ; $4437: $40
    and c                                         ; $4438: $a1
    ld e, $42                                     ; $4439: $1e $42
    ld hl, $003f                                  ; $443b: $21 $3f $00
    ld b, b                                       ; $443e: $40
    ld l, d                                       ; $443f: $6a
    sub l                                         ; $4440: $95
    ld d, l                                       ; $4441: $55
    rst $28                                       ; $4442: $ef
    ld de, $008c                                  ; $4443: $11 $8c $00
    nop                                           ; $4446: $00
    ld e, [hl]                                    ; $4447: $5e
    xor h                                         ; $4448: $ac
    inc de                                        ; $4449: $13
    db $10                                        ; $444a: $10
    ld a, a                                       ; $444b: $7f
    sub d                                         ; $444c: $92
    ccf                                           ; $444d: $3f
    dec a                                         ; $444e: $3d
    nop                                           ; $444f: $00
    sbc [hl]                                      ; $4450: $9e
    adc d                                         ; $4451: $8a
    sbc h                                         ; $4452: $9c
    inc c                                         ; $4453: $0c
    add b                                         ; $4454: $80
    ld l, b                                       ; $4455: $68
    ldh a, [$90]                                  ; $4456: $f0 $90
    nop                                           ; $4458: $00

jr_0a5_4459:
    ld h, b                                       ; $4459: $60
    ld h, [hl]                                    ; $445a: $66
    nop                                           ; $445b: $00
    ld [$4707], sp                                ; $445c: $08 $07 $47
    jr c, jr_0a5_4411                             ; $445f: $38 $b0

    jr nz, jr_0a5_44a3                            ; $4461: $20 $40

    xor [hl]                                      ; $4463: $ae
    sbc d                                         ; $4464: $9a
    nop                                           ; $4465: $00
    ld a, [bc]                                    ; $4466: $0a
    db $fd                                        ; $4467: $fd
    ld bc, $09fc                                  ; $4468: $01 $fc $09
    nop                                           ; $446b: $00
    db $fc                                        ; $446c: $fc
    ld a, [hl+]                                   ; $446d: $2a
    db $fc                                        ; $446e: $fc
    add hl, de                                    ; $446f: $19
    db $fc                                        ; $4470: $fc
    or [hl]                                       ; $4471: $b6

jr_0a5_4472:
    ld hl, sp-$14                                 ; $4472: $f8 $ec
    nop                                           ; $4474: $00
    ldh a, [$37]                                  ; $4475: $f0 $37
    adc $be                                       ; $4477: $ce $be
    rst $38                                       ; $4479: $ff
    ld [hl], d                                    ; $447a: $72
    db $fc                                        ; $447b: $fc
    sbc b                                         ; $447c: $98
    nop                                           ; $447d: $00
    ld h, b                                       ; $447e: $60
    add h                                         ; $447f: $84
    inc bc                                        ; $4480: $03
    ld [hl+], a                                   ; $4481: $22
    inc e                                         ; $4482: $1c
    ld d, e                                       ; $4483: $53
    jr nz, jr_0a5_44e5                            ; $4484: $20 $5f

    nop                                           ; $4486: $00
    jr nz, jr_0a5_44b8                            ; $4487: $20 $2f

    jr nc, jr_0a5_4417                            ; $4489: $30 $8c

    nop                                           ; $448b: $00

jr_0a5_448c:
    ld hl, $9e1e                                  ; $448c: $21 $1e $9e
    ld [$6361], sp                                ; $448f: $08 $61 $63
    add b                                         ; $4492: $80
    ld b, $b8                                     ; $4493: $06 $b8
    inc h                                         ; $4495: $24
    ld e, a                                       ; $4496: $5f
    jr nz, jr_0a5_44c4                            ; $4497: $20 $2b

    nop                                           ; $4499: $00
    inc [hl]                                      ; $449a: $34
    or l                                          ; $449b: $b5
    ld a, [de]                                    ; $449c: $1a
    ld e, d                                       ; $449d: $5a
    adc a                                         ; $449e: $8f
    xor a                                         ; $449f: $af
    ld b, a                                       ; $44a0: $47
    ld d, l                                       ; $44a1: $55
    nop                                           ; $44a2: $00

jr_0a5_44a3:
    inc hl                                        ; $44a3: $23
    db $eb                                        ; $44a4: $eb
    db $10                                        ; $44a5: $10
    ldh a, [$08]                                  ; $44a6: $f0 $08
    ld a, a                                       ; $44a8: $7f
    ccf                                           ; $44a9: $3f
    pop hl                                        ; $44aa: $e1
    ld [$df7f], sp                                ; $44ab: $08 $7f $df
    rst $38                                       ; $44ae: $ff
    cp a                                          ; $44af: $bf
    ld e, e                                       ; $44b0: $5b
    ld [bc], a                                    ; $44b1: $02
    db $fc                                        ; $44b2: $fc
    cp $ff                                        ; $44b3: $fe $ff
    nop                                           ; $44b5: $00
    db $fc                                        ; $44b6: $fc
    db $fc                                        ; $44b7: $fc

jr_0a5_44b8:
    ld sp, hl                                     ; $44b8: $f9
    or a                                          ; $44b9: $b7
    jr jr_0a5_4459                                ; $44ba: $18 $9d

    adc [hl]                                      ; $44bc: $8e
    ld c, [hl]                                    ; $44bd: $4e
    nop                                           ; $44be: $00
    add a                                         ; $44bf: $87
    and a                                         ; $44c0: $a7
    inc bc                                        ; $44c1: $03

jr_0a5_44c2:
    nop                                           ; $44c2: $00
    ld a, l                                       ; $44c3: $7d

jr_0a5_44c4:
    jr c, jr_0a5_448c                             ; $44c4: $38 $c6

    ld h, l                                       ; $44c6: $65
    nop                                           ; $44c7: $00
    sbc d                                         ; $44c8: $9a
    ld [bc], a                                    ; $44c9: $02
    db $fd                                        ; $44ca: $fd
    rst $38                                       ; $44cb: $ff
    nop                                           ; $44cc: $00

jr_0a5_44cd:
    ld a, d                                       ; $44cd: $7a
    add l                                         ; $44ce: $85
    inc h                                         ; $44cf: $24
    jr nz, jr_0a5_44cd                            ; $44d0: $20 $fb

    db $d3                                        ; $44d2: $d3
    ld a, d                                       ; $44d3: $7a
    ld [bc], a                                    ; $44d4: $02
    cp [hl]                                       ; $44d5: $be
    ld a, h                                       ; $44d6: $7c
    cp b                                          ; $44d7: $b8
    nop                                           ; $44d8: $00
    ld b, h                                       ; $44d9: $44
    nop                                           ; $44da: $00
    inc bc                                        ; $44db: $03
    ldh a, [$08]                                  ; $44dc: $f0 $08
    xor d                                         ; $44de: $aa
    ld d, c                                       ; $44df: $51
    call nc, $45e3                                ; $44e0: $d4 $e3 $45
    nop                                           ; $44e3: $00
    add [hl]                                      ; $44e4: $86

jr_0a5_44e5:
    add h                                         ; $44e5: $84
    rlca                                          ; $44e6: $07
    inc c                                         ; $44e7: $0c
    daa                                           ; $44e8: $27
    add [hl]                                      ; $44e9: $86
    ld d, e                                       ; $44ea: $53
    inc de                                        ; $44eb: $13
    nop                                           ; $44ec: $00
    db $eb                                        ; $44ed: $eb
    ld [hl], e                                    ; $44ee: $73
    ld sp, hl                                     ; $44ef: $f9
    ld c, b                                       ; $44f0: $48
    inc sp                                        ; $44f1: $33
    dec d                                         ; $44f2: $15
    add e                                         ; $44f3: $83
    and e                                         ; $44f4: $a3
    nop                                           ; $44f5: $00
    ld c, c                                       ; $44f6: $49
    ret nz                                        ; $44f7: $c0

    ld sp, $20c5                                  ; $44f8: $31 $c5 $20
    add $28                                       ; $44fb: $c6 $28
    xor b                                         ; $44fd: $a8
    jr @+$53                                      ; $44fe: $18 $51

    inc b                                         ; $4500: $04
    ei                                            ; $4501: $fb
    ld e, d                                       ; $4502: $5a
    dec bc                                        ; $4503: $0b
    ld b, b                                       ; $4504: $40
    inc c                                         ; $4505: $0c
    add b                                         ; $4506: $80
    rst $38                                       ; $4507: $ff
    ld b, c                                       ; $4508: $41
    add b                                         ; $4509: $80
    nop                                           ; $450a: $00
    inc b                                         ; $450b: $04
    and e                                         ; $450c: $a3
    inc e                                         ; $450d: $1c
    ld e, h                                       ; $450e: $5c
    jr nz, jr_0a5_44c2                            ; $450f: $20 $b1

    ld b, b                                       ; $4511: $40
    xor a                                         ; $4512: $af
    db $10                                        ; $4513: $10
    ld b, b                                       ; $4514: $40
    rra                                           ; $4515: $1f
    and b                                         ; $4516: $a0
    ld [bc], a                                    ; $4517: $02
    ld [$20bf], sp                                ; $4518: $08 $bf $20
    db $ed                                        ; $451b: $ed
    ld de, $1404                                  ; $451c: $11 $04 $14
    ld [$04ea], sp                                ; $451f: $08 $ea $04
    db $f4                                        ; $4522: $f4
    add e                                         ; $4523: $83
    inc bc                                        ; $4524: $03
    rst $38                                       ; $4525: $ff
    ld [bc], a                                    ; $4526: $02
    ld [bc], a                                    ; $4527: $02
    ld a, [$fe06]                                 ; $4528: $fa $06 $fe
    inc b                                         ; $452b: $04
    rst $30                                       ; $452c: $f7
    adc b                                         ; $452d: $88
    ld [de], a                                    ; $452e: $12
    ld e, h                                       ; $452f: $5c
    rst $38                                       ; $4530: $ff
    ld [hl], d                                    ; $4531: $72
    add b                                         ; $4532: $80
    ld [hl-], a                                   ; $4533: $32
    ld l, l                                       ; $4534: $6d
    add d                                         ; $4535: $82
    ld l, l                                       ; $4536: $6d
    ld [hl], d                                    ; $4537: $72
    ld e, l                                       ; $4538: $5d
    db $ec                                        ; $4539: $ec
    inc de                                        ; $453a: $13
    ld a, [c]                                     ; $453b: $f2
    ld c, e                                       ; $453c: $4b
    db $fd                                        ; $453d: $fd
    ld bc, $f603                                  ; $453e: $01 $03 $f6
    add hl, bc                                    ; $4541: $09
    ei                                            ; $4542: $fb
    dec b                                         ; $4543: $05
    db $ec                                        ; $4544: $ec
    inc de                                        ; $4545: $13
    add d                                         ; $4546: $82
    dec c                                         ; $4547: $0d
    nop                                           ; $4548: $00
    push af                                       ; $4549: $f5
    dec bc                                        ; $454a: $0b
    db $db                                        ; $454b: $db
    daa                                           ; $454c: $27
    db $ed                                        ; $454d: $ed
    inc de                                        ; $454e: $13
    ld a, [$9005]                                 ; $454f: $fa $05 $90
    sub d                                         ; $4552: $92
    ld l, l                                       ; $4553: $6d
    rst $28                                       ; $4554: $ef
    ld de, $3da2                                  ; $4555: $11 $a2 $3d
    db $db                                        ; $4558: $db
    dec h                                         ; $4559: $25
    ld a, e                                       ; $455a: $7b
    dec b                                         ; $455b: $05
    inc d                                         ; $455c: $14
    ld l, h                                       ; $455d: $6c
    inc de                                        ; $455e: $13
    ld a, e                                       ; $455f: $7b
    or b                                          ; $4560: $b0
    dec b                                         ; $4561: $05
    ld [hl], l                                    ; $4562: $75
    ld l, $10                                     ; $4563: $2e $10
    sub b                                         ; $4565: $90
    ld l, a                                       ; $4566: $6f
    sbc [hl]                                      ; $4567: $9e
    ldh [$5d], a                                  ; $4568: $e0 $5d
    ld [hl], a                                    ; $456a: $77
    adc b                                         ; $456b: $88
    pop af                                        ; $456c: $f1
    dec c                                         ; $456d: $0d
    ld [hl], d                                    ; $456e: $72
    ld d, h                                       ; $456f: $54
    add d                                         ; $4570: $82
    inc b                                         ; $4571: $04
    ld [hl], d                                    ; $4572: $72
    ld c, h                                       ; $4573: $4c
    nop                                           ; $4574: $00
    jr @+$01                                      ; $4575: $18 $ff

    ccf                                           ; $4577: $3f
    ret nz                                        ; $4578: $c0

    xor e                                         ; $4579: $ab
    ld [bc], a                                    ; $457a: $02
    ld [bc], a                                    ; $457b: $02
    jr nc, jr_0a5_4581                            ; $457c: $30 $03

    rst $38                                       ; $457e: $ff
    ld sp, hl                                     ; $457f: $f9
    ld e, d                                       ; $4580: $5a

jr_0a5_4581:
    rlca                                          ; $4581: $07
    ld d, e                                       ; $4582: $53
    inc bc                                        ; $4583: $03
    rst $30                                       ; $4584: $f7
    inc b                                         ; $4585: $04
    jr z, jr_0a5_45a4                             ; $4586: $28 $1c

    jr jr_0a5_4609                                ; $4588: $18 $7f

    scf                                           ; $458a: $37
    ld b, $3c                                     ; $458b: $06 $3c
    dec b                                         ; $458d: $05
    jp $fb44                                      ; $458e: $c3 $44 $fb


    ld b, h                                       ; $4591: $44
    ei                                            ; $4592: $fb
    inc e                                         ; $4593: $1c
    jr @-$0d                                      ; $4594: $18 $f1

    jr z, jr_0a5_4598                             ; $4596: $28 $00

jr_0a5_4598:
    inc bc                                        ; $4598: $03
    ld a, c                                       ; $4599: $79
    add a                                         ; $459a: $87
    adc e                                         ; $459b: $8b
    rst $30                                       ; $459c: $f7
    adc c                                         ; $459d: $89
    rst $30                                       ; $459e: $f7
    ld d, b                                       ; $459f: $50
    ld c, [hl]                                    ; $45a0: $4e
    ld [c], a                                     ; $45a1: $e2
    inc c                                         ; $45a2: $0c
    ld [c], a                                     ; $45a3: $e2

jr_0a5_45a4:
    ret nc                                        ; $45a4: $d0

    ld e, b                                       ; $45a5: $58
    jp nz, $b20c                                  ; $45a6: $c2 $0c $b2

    ld e, h                                       ; $45a9: $5c
    ld b, h                                       ; $45aa: $44
    ei                                            ; $45ab: $fb
    ld a, b                                       ; $45ac: $78
    ld [hl], h                                    ; $45ad: $74
    ld d, b                                       ; $45ae: $50
    xor e                                         ; $45af: $ab
    nop                                           ; $45b0: $00
    rst $00                                       ; $45b1: $c7
    pop de                                        ; $45b2: $d1
    rst $18                                       ; $45b3: $df
    ld b, e                                       ; $45b4: $43
    rst $18                                       ; $45b5: $df
    reti                                          ; $45b6: $d9


    ld b, a                                       ; $45b7: $47
    ld c, e                                       ; $45b8: $4b
    ld b, $d7                                     ; $45b9: $06 $d7
    ld l, c                                       ; $45bb: $69
    rst $00                                       ; $45bc: $c7
    dec sp                                        ; $45bd: $3b
    rst $20                                       ; $45be: $e7
    ld [hl], b                                    ; $45bf: $70
    jr z, jr_0a5_4636                             ; $45c0: $28 $74

    jr z, @+$57                                   ; $45c2: $28 $55

    ld h, b                                       ; $45c4: $60
    rst $38                                       ; $45c5: $ff
    adc h                                         ; $45c6: $8c
    jr c, jr_0a5_463d                             ; $45c7: $38 $74

    ld [$ff55], sp                                ; $45c9: $08 $55 $ff
    ld h, h                                       ; $45cc: $64
    bit 6, b                                      ; $45cd: $cb $70
    nop                                           ; $45cf: $00
    rst $30                                       ; $45d0: $f7
    db $10                                        ; $45d1: $10
    rst $30                                       ; $45d2: $f7
    scf                                           ; $45d3: $37
    ret nc                                        ; $45d4: $d0

    ld d, b                                       ; $45d5: $50
    rst $30                                       ; $45d6: $f7
    ld l, b                                       ; $45d7: $68
    inc bc                                        ; $45d8: $03
    rst $00                                       ; $45d9: $c7
    ld [hl], b                                    ; $45da: $70
    rst $28                                       ; $45db: $ef
    ld b, b                                       ; $45dc: $40
    rst $38                                       ; $45dd: $ff
    adc e                                         ; $45de: $8b
    adc h                                         ; $45df: $8c
    db $10                                        ; $45e0: $10
    or h                                          ; $45e1: $b4
    jr c, jr_0a5_45e4                             ; $45e2: $38 $00

jr_0a5_45e4:
    nop                                           ; $45e4: $00
    add b                                         ; $45e5: $80
    ld h, b                                       ; $45e6: $60
    ld a, a                                       ; $45e7: $7f
    rra                                           ; $45e8: $1f
    and b                                         ; $45e9: $a0
    ccf                                           ; $45ea: $3f
    ld b, b                                       ; $45eb: $40
    ld [bc], a                                    ; $45ec: $02
    dec sp                                        ; $45ed: $3b
    ld b, h                                       ; $45ee: $44
    dec [hl]                                      ; $45ef: $35
    ld c, [hl]                                    ; $45f0: $4e
    dec sp                                        ; $45f1: $3b
    ld b, h                                       ; $45f2: $44
    ld [$bb18], sp                                ; $45f3: $08 $18 $bb
    nop                                           ; $45f6: $00
    ld b, h                                       ; $45f7: $44
    dec hl                                        ; $45f8: $2b
    ld d, h                                       ; $45f9: $54

jr_0a5_45fa:
    ld d, l                                       ; $45fa: $55
    rst $38                                       ; $45fb: $ff
    cp a                                          ; $45fc: $bf
    ld b, b                                       ; $45fd: $40
    jr nz, jr_0a5_4600                            ; $45fe: $20 $00

jr_0a5_4600:
    rst $18                                       ; $4600: $df
    and b                                         ; $4601: $a0
    ld e, a                                       ; $4602: $5f
    call c, $ac22                                 ; $4603: $dc $22 $ac
    ld [hl], d                                    ; $4606: $72
    db $dd                                        ; $4607: $dd
    nop                                           ; $4608: $00

jr_0a5_4609:
    ld [hl+], a                                   ; $4609: $22
    ld d, h                                       ; $460a: $54
    xor d                                         ; $460b: $aa
    ld d, h                                       ; $460c: $54
    rst $38                                       ; $460d: $ff
    db $fd                                        ; $460e: $fd
    ld [bc], a                                    ; $460f: $02
    inc b                                         ; $4610: $04
    ld b, b                                       ; $4611: $40
    ei                                            ; $4612: $fb
    or [hl]                                       ; $4613: $b6
    ld [bc], a                                    ; $4614: $02
    add b                                         ; $4615: $80
    ld e, h                                       ; $4616: $5c
    ld h, e                                       ; $4617: $63
    ld a, $41                                     ; $4618: $3e $41
    ld a, [hl+]                                   ; $461a: $2a
    nop                                           ; $461b: $00
    ld d, l                                       ; $461c: $55
    ld bc, $63bf                                  ; $461d: $01 $bf $63
    ld a, a                                       ; $4620: $7f
    ld b, c                                       ; $4621: $41
    ld a, a                                       ; $4622: $7f
    inc e                                         ; $4623: $1c
    add l                                         ; $4624: $85
    inc c                                         ; $4625: $0c
    jr jr_0a5_46a7                                ; $4626: $18 $7f

    ld h, e                                       ; $4628: $63
    ld a, a                                       ; $4629: $7f
    ld e, l                                       ; $462a: $5d
    ld a, [bc]                                    ; $462b: $0a
    ld b, b                                       ; $462c: $40
    cp [hl]                                       ; $462d: $be
    jr nz, jr_0a5_4630                            ; $462e: $20 $00

jr_0a5_4630:
    add c                                         ; $4630: $81
    ld b, b                                       ; $4631: $40
    jr z, jr_0a5_45fa                             ; $4632: $28 $c6

    cp $ba                                        ; $4634: $fe $ba

jr_0a5_4636:
    add $7d                                       ; $4636: $c6 $7d
    add d                                         ; $4638: $82
    ld b, b                                       ; $4639: $40
    jr c, jr_0a5_4680                             ; $463a: $38 $44

    rst $18                                       ; $463c: $df

jr_0a5_463d:
    add c                                         ; $463d: $81
    ld d, a                                       ; $463e: $57
    ld a, a                                       ; $463f: $7f
    rst $38                                       ; $4640: $ff
    ld sp, hl                                     ; $4641: $f9
    sub c                                         ; $4642: $91
    ld h, a                                       ; $4643: $67
    db $d3                                        ; $4644: $d3
    db $e4                                        ; $4645: $e4
    nop                                           ; $4646: $00
    dec [hl]                                      ; $4647: $35
    ld a, [$fbd8]                                 ; $4648: $fa $d8 $fb
    ld sp, hl                                     ; $464b: $f9
    ei                                            ; $464c: $fb
    ldh a, [$f9]                                  ; $464d: $f0 $f9
    ld [bc], a                                    ; $464f: $02
    ld hl, sp-$10                                 ; $4650: $f8 $f0
    di                                            ; $4652: $f3
    ldh [rLY], a                                  ; $4653: $e0 $44
    add e                                         ; $4655: $83
    add b                                         ; $4656: $80
    rrca                                          ; $4657: $0f
    cp a                                          ; $4658: $bf
    nop                                           ; $4659: $00
    ld b, b                                       ; $465a: $40
    ld e, l                                       ; $465b: $5d
    and e                                         ; $465c: $a3
    adc d                                         ; $465d: $8a
    rst $30                                       ; $465e: $f7
    ld l, h                                       ; $465f: $6c
    cp $20                                        ; $4660: $fe $20
    nop                                           ; $4662: $00
    inc e                                         ; $4663: $1c
    db $10                                        ; $4664: $10
    pop hl                                        ; $4665: $e1
    ld a, a                                       ; $4666: $7f
    ld a, a                                       ; $4667: $7f
    rra                                           ; $4668: $1f
    ccf                                           ; $4669: $3f
    ld d, $01                                     ; $466a: $16 $01
    rrca                                          ; $466c: $0f
    ld sp, $80c0                                  ; $466d: $31 $c0 $80
    ld a, a                                       ; $4670: $7f
    pop af                                        ; $4671: $f1
    ld c, $9b                                     ; $4672: $0e $9b
    rrca                                          ; $4674: $0f
    nop                                           ; $4675: $00
    db $fd                                        ; $4676: $fd
    cp $c8                                        ; $4677: $fe $c8
    ld a, [c]                                     ; $4679: $f2
    ld h, c                                       ; $467a: $61
    add h                                         ; $467b: $84
    adc e                                         ; $467c: $8b
    ld [hl], b                                    ; $467d: $70
    nop                                           ; $467e: $00
    dec b                                         ; $467f: $05

jr_0a5_4680:
    ld hl, sp+$67                                 ; $4680: $f8 $67
    sbc b                                         ; $4682: $98
    nop                                           ; $4683: $00
    db $fc                                        ; $4684: $fc
    ld [$01fc], sp                                ; $4685: $08 $fc $01
    inc hl                                        ; $4688: $23
    inc e                                         ; $4689: $1c
    sub h                                         ; $468a: $94
    ld h, b                                       ; $468b: $60
    ld l, a                                       ; $468c: $6f
    add b                                         ; $468d: $80
    ld e, a                                       ; $468e: $5f
    jr nc, jr_0a5_4696                            ; $468f: $30 $05

    nop                                           ; $4691: $00
    ld e, a                                       ; $4692: $5f
    and b                                         ; $4693: $a0
    adc e                                         ; $4694: $8b
    ld [hl], h                                    ; $4695: $74

jr_0a5_4696:
    ld d, h                                       ; $4696: $54
    dec sp                                        ; $4697: $3b
    db $e4                                        ; $4698: $e4
    add hl, de                                    ; $4699: $19
    inc b                                         ; $469a: $04
    add hl, de                                    ; $469b: $19
    inc b                                         ; $469c: $04
    jp z, $ea04                                   ; $469d: $ca $04 $ea

    add [hl]                                      ; $46a0: $86
    inc b                                         ; $46a1: $04
    db $f4                                        ; $46a2: $f4
    add hl, bc                                    ; $46a3: $09
    nop                                           ; $46a4: $00
    pop de                                        ; $46a5: $d1
    ld a, [hl-]                                   ; $46a6: $3a

jr_0a5_46a7:
    ld h, d                                       ; $46a7: $62
    db $f4                                        ; $46a8: $f4
    add [hl]                                      ; $46a9: $86
    ld e, c                                       ; $46aa: $59
    sub l                                         ; $46ab: $95
    ld c, [hl]                                    ; $46ac: $4e
    nop                                           ; $46ad: $00
    ld a, [bc]                                    ; $46ae: $0a
    rst $00                                       ; $46af: $c7
    inc bc                                        ; $46b0: $03
    add b                                         ; $46b1: $80
    ld c, h                                       ; $46b2: $4c
    jr nc, jr_0a5_4636                            ; $46b3: $30 $81

    ld a, [hl]                                    ; $46b5: $7e
    nop                                           ; $46b6: $00
    jr c, jr_0a5_4680                             ; $46b7: $38 $c7

    ld b, d                                       ; $46b9: $42
    cp l                                          ; $46ba: $bd
    ldh [rP1], a                                  ; $46bb: $e0 $00
    db $eb                                        ; $46bd: $eb
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    ret                                           ; $46c0: $c9


    rst $38                                       ; $46c1: $ff
    jp c, Jump_000_04a1                           ; $46c2: $da $a1 $04

    ei                                            ; $46c5: $fb
    jp z, $00bf                                   ; $46c6: $ca $bf $00

    ld d, a                                       ; $46c9: $57
    xor b                                         ; $46ca: $a8
    xor l                                         ; $46cb: $ad
    ret z                                         ; $46cc: $c8

    cp a                                          ; $46cd: $bf
    ld b, b                                       ; $46ce: $40
    ret c                                         ; $46cf: $d8

    daa                                           ; $46d0: $27
    nop                                           ; $46d1: $00
    adc d                                         ; $46d2: $8a
    rst $38                                       ; $46d3: $ff
    ld d, h                                       ; $46d4: $54
    adc e                                         ; $46d5: $8b
    ret z                                         ; $46d6: $c8

    scf                                           ; $46d7: $37
    xor d                                         ; $46d8: $aa
    rst $38                                       ; $46d9: $ff
    nop                                           ; $46da: $00
    inc de                                        ; $46db: $13
    ldh [rIE], a                                  ; $46dc: $e0 $ff
    nop                                           ; $46de: $00
    add b                                         ; $46df: $80
    rst $38                                       ; $46e0: $ff
    add e                                         ; $46e1: $83
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    rst $10                                       ; $46e4: $d7
    cp $ef                                        ; $46e5: $fe $ef
    ld a, h                                       ; $46e7: $7c
    ld a, h                                       ; $46e8: $7c
    add hl, sp                                    ; $46e9: $39
    ld [bc], a                                    ; $46ea: $02
    add c                                         ; $46eb: $81
    nop                                           ; $46ec: $00
    and e                                         ; $46ed: $a3
    ld b, c                                       ; $46ee: $41
    ld b, c                                       ; $46ef: $41
    inc sp                                        ; $46f0: $33
    db $10                                        ; $46f1: $10
    add sp, -$54                                  ; $46f2: $e8 $ac
    ret z                                         ; $46f4: $c8

    nop                                           ; $46f5: $00
    ld d, a                                       ; $46f6: $57

jr_0a5_46f7:
    xor b                                         ; $46f7: $a8
    adc a                                         ; $46f8: $8f
    cp d                                          ; $46f9: $ba
    ld b, a                                       ; $46fa: $47
    cp b                                          ; $46fb: $b8
    xor a                                         ; $46fc: $af
    ret c                                         ; $46fd: $d8

    nop                                           ; $46fe: $00
    inc b                                         ; $46ff: $04
    db $db                                        ; $4700: $db
    ld hl, sp-$71                                 ; $4701: $f8 $8f
    ld d, [hl]                                    ; $4703: $56
    dec l                                         ; $4704: $2d
    dec c                                         ; $4705: $0d
    or [hl]                                       ; $4706: $b6
    inc b                                         ; $4707: $04
    ld e, $a5                                     ; $4708: $1e $a5
    adc l                                         ; $470a: $8d
    or [hl]                                       ; $470b: $b6
    sbc [hl]                                      ; $470c: $9e
    inc b                                         ; $470d: $04
    jr nz, jr_0a5_46f7                            ; $470e: $20 $e7

    jr jr_0a5_4712                                ; $4710: $18 $00

jr_0a5_4712:
    jp $e17c                                      ; $4712: $c3 $7c $e1


    rra                                           ; $4715: $1f
    ld sp, $1f0e                                  ; $4716: $31 $0e $1f
    db $10                                        ; $4719: $10
    jr nz, jr_0a5_4733                            ; $471a: $20 $17

    ld bc, $051d                                  ; $471c: $01 $1d $05
    jr nz, jr_0a5_4761                            ; $471f: $20 $40

    xor a                                         ; $4721: $af
    sbc l                                         ; $4722: $9d
    xor e                                         ; $4723: $ab
    nop                                           ; $4724: $00
    daa                                           ; $4725: $27
    sbc b                                         ; $4726: $98
    call c, Call_000_20a8                         ; $4727: $dc $a8 $20
    ret c                                         ; $472a: $d8

    sbc c                                         ; $472b: $99
    add sp, $00                                   ; $472c: $e8 $00
    ld h, a                                       ; $472e: $67
    sbc h                                         ; $472f: $9c
    rst $28                                       ; $4730: $ef
    sbc b                                         ; $4731: $98
    sbc h                                         ; $4732: $9c

jr_0a5_4733:
    and a                                         ; $4733: $a7
    adc l                                         ; $4734: $8d
    or [hl]                                       ; $4735: $b6
    nop                                           ; $4736: $00
    adc a                                         ; $4737: $8f
    or h                                          ; $4738: $b4
    sub a                                         ; $4739: $97
    xor h                                         ; $473a: $ac
    rst $18                                       ; $473b: $df
    and h                                         ; $473c: $a4
    sbc a                                         ; $473d: $9f
    and h                                         ; $473e: $a4
    jp nc, $0804                                  ; $473f: $d2 $04 $08

    ret nc                                        ; $4742: $d0

    ld c, $ae                                     ; $4743: $0e $ae
    ld b, [hl]                                    ; $4745: $46
    inc bc                                        ; $4746: $03
    xor [hl]                                      ; $4747: $ae
    ld d, c                                       ; $4748: $51
    ld a, [de]                                    ; $4749: $1a
    rrca                                          ; $474a: $0f
    xor [hl]                                      ; $474b: $ae
    nop                                           ; $474c: $00
    ld d, c                                       ; $474d: $51
    sbc a                                         ; $474e: $9f
    db $e4                                        ; $474f: $e4
    sbc a                                         ; $4750: $9f
    and h                                         ; $4751: $a4
    rst $10                                       ; $4752: $d7
    db $ec                                        ; $4753: $ec
    add l                                         ; $4754: $85
    cpl                                           ; $4755: $2f
    cp $c4                                        ; $4756: $fe $c4
    ld a, b                                       ; $4758: $78
    nop                                           ; $4759: $00
    ret nz                                        ; $475a: $c0

    cp d                                          ; $475b: $ba
    inc b                                         ; $475c: $04
    ld a, [de]                                    ; $475d: $1a
    jr z, jr_0a5_47dc                             ; $475e: $28 $7c

    ld a, [de]                                    ; $4760: $1a

jr_0a5_4761:
    dec a                                         ; $4761: $3d
    rrca                                          ; $4762: $0f
    nop                                           ; $4763: $00
    rra                                           ; $4764: $1f
    ldh [rNR44], a                                ; $4765: $e0 $23
    call c, $e01f                                 ; $4767: $dc $1f $e0
    daa                                           ; $476a: $27
    ret c                                         ; $476b: $d8

    inc c                                         ; $476c: $0c
    ld e, a                                       ; $476d: $5f
    and b                                         ; $476e: $a0
    ld e, a                                       ; $476f: $5f
    and b                                         ; $4770: $a0
    inc e                                         ; $4771: $1c
    rrca                                          ; $4772: $0f
    ld d, d                                       ; $4773: $52
    ld c, a                                       ; $4774: $4f
    db $fc                                        ; $4775: $fc
    inc bc                                        ; $4776: $03
    jp Jump_0a5_5810                              ; $4777: $c3 $10 $58


    jr nz, jr_0a5_4794                            ; $477a: $20 $18

    cp $01                                        ; $477c: $fe $01
    db $fd                                        ; $477e: $fd
    ld [bc], a                                    ; $477f: $02
    call Call_000_1206                            ; $4780: $cd $06 $12
    jr nz, jr_0a5_4785                            ; $4783: $20 $00

jr_0a5_4785:
    ld a, b                                       ; $4785: $78
    add a                                         ; $4786: $87
    ld [hl], a                                    ; $4787: $77
    adc a                                         ; $4788: $8f
    ld l, b                                       ; $4789: $68
    sbc a                                         ; $478a: $9f
    ld d, a                                       ; $478b: $57
    cp a                                          ; $478c: $bf
    nop                                           ; $478d: $00
    ld e, a                                       ; $478e: $5f
    cp a                                          ; $478f: $bf
    ld e, a                                       ; $4790: $5f
    or a                                          ; $4791: $b7
    ld c, a                                       ; $4792: $4f
    adc e                                         ; $4793: $8b

jr_0a5_4794:
    ei                                            ; $4794: $fb
    ld b, $00                                     ; $4795: $06 $00
    ld a, e                                       ; $4797: $7b
    add a                                         ; $4798: $87
    cp b                                          ; $4799: $b8
    jp Jump_0a5_63d9                              ; $479a: $c3 $d9 $63


    db $ed                                        ; $479d: $ed
    or b                                          ; $479e: $b0
    nop                                           ; $479f: $00
    xor e                                         ; $47a0: $ab
    rst $30                                       ; $47a1: $f7
    xor c                                         ; $47a2: $a9
    di                                            ; $47a3: $f3
    ld e, b                                       ; $47a4: $58
    push bc                                       ; $47a5: $c5
    cp a                                          ; $47a6: $bf
    ld b, b                                       ; $47a7: $40
    ld a, [bc]                                    ; $47a8: $0a
    cp a                                          ; $47a9: $bf
    ret nz                                        ; $47aa: $c0

    ld a, a                                       ; $47ab: $7f
    ret nz                                        ; $47ac: $c0

    inc b                                         ; $47ad: $04
    nop                                           ; $47ae: $00
    add b                                         ; $47af: $80
    ld a, [bc]                                    ; $47b0: $0a
    db $10                                        ; $47b1: $10
    add b                                         ; $47b2: $80
    nop                                           ; $47b3: $00
    ld h, a                                       ; $47b4: $67
    sub a                                         ; $47b5: $97
    ld [hl], b                                    ; $47b6: $70
    adc b                                         ; $47b7: $88
    ld a, b                                       ; $47b8: $78
    add a                                         ; $47b9: $87
    ld a, a                                       ; $47ba: $7f
    add b                                         ; $47bb: $80
    dec b                                         ; $47bc: $05
    ld [hl], b                                    ; $47bd: $70
    adc a                                         ; $47be: $8f
    ld l, e                                       ; $47bf: $6b
    sbc a                                         ; $47c0: $9f
    ld h, b                                       ; $47c1: $60
    ld b, $00                                     ; $47c2: $06 $00
    sbc a                                         ; $47c4: $9f
    inc l                                         ; $47c5: $2c
    ld [bc], a                                    ; $47c6: $02
    ld [hl], b                                    ; $47c7: $70
    ld a, a                                       ; $47c8: $7f
    dec h                                         ; $47c9: $25
    inc bc                                        ; $47ca: $03
    sub b                                         ; $47cb: $90
    ld c, $0a                                     ; $47cc: $0e $0a
    ld [$807f], sp                                ; $47ce: $08 $7f $80
    db $db                                        ; $47d1: $db
    inc h                                         ; $47d2: $24
    nop                                           ; $47d3: $00
    rst $10                                       ; $47d4: $d7
    jr z, @+$51                                   ; $47d5: $28 $4f

    or b                                          ; $47d7: $b0
    xor l                                         ; $47d8: $ad
    ld d, d                                       ; $47d9: $52
    dec de                                        ; $47da: $1b
    db $e4                                        ; $47db: $e4

jr_0a5_47dc:
    add hl, de                                    ; $47dc: $19
    and a                                         ; $47dd: $a7
    ld e, b                                       ; $47de: $58
    rra                                           ; $47df: $1f
    ld [hl-], a                                   ; $47e0: $32
    ld bc, $4fe2                                  ; $47e1: $01 $e2 $4f
    ld d, a                                       ; $47e4: $57
    xor b                                         ; $47e5: $a8
    ld h, b                                       ; $47e6: $60
    ld e, e                                       ; $47e7: $5b
    ret nz                                        ; $47e8: $c0

    ldh a, [rVBK]                                 ; $47e9: $f0 $4f
    jp c, $c019                                   ; $47eb: $da $19 $c0

    rst $38                                       ; $47ee: $ff
    adc a                                         ; $47ef: $8f
    rst $38                                       ; $47f0: $ff
    sbc a                                         ; $47f1: $9f
    rst $38                                       ; $47f2: $ff
    inc b                                         ; $47f3: $04
    sbc d                                         ; $47f4: $9a
    rst $38                                       ; $47f5: $ff
    sub l                                         ; $47f6: $95
    rst $38                                       ; $47f7: $ff

jr_0a5_47f8:
    sub b                                         ; $47f8: $90
    inc b                                         ; $47f9: $04
    nop                                           ; $47fa: $00
    ldh a, [rIE]                                  ; $47fb: $f0 $ff
    db $10                                        ; $47fd: $10
    ld bc, $f1ff                                  ; $47fe: $01 $ff $f1
    inc d                                         ; $4801: $14
    ld [bc], a                                    ; $4802: $02
    xor c                                         ; $4803: $a9
    rst $38                                       ; $4804: $ff
    ld e, c                                       ; $4805: $59
    rst $38                                       ; $4806: $ff
    ld b, b                                       ; $4807: $40
    add hl, bc                                    ; $4808: $09
    inc b                                         ; $4809: $04
    nop                                           ; $480a: $00
    rrca                                          ; $480b: $0f
    rst $38                                       ; $480c: $ff
    dec b                                         ; $480d: $05
    rst $28                                       ; $480e: $ef
    ret nc                                        ; $480f: $d0

    xor a                                         ; $4810: $af
    dec b                                         ; $4811: $05
    ld b, [hl]                                    ; $4812: $46
    cp c                                          ; $4813: $b9
    sub h                                         ; $4814: $94
    res 6, c                                      ; $4815: $cb $b1
    and $16                                       ; $4817: $e6 $16
    ld d, l                                       ; $4819: $55
    ld [c], a                                     ; $481a: $e2
    ld [bc], a                                    ; $481b: $02
    ld bc, $c629                                  ; $481c: $01 $29 $c6
    ld b, l                                       ; $481f: $45
    cp b                                          ; $4820: $b8
    and c                                         ; $4821: $a1
    ld e, $8c                                     ; $4822: $1e $8c
    db $10                                        ; $4824: $10
    jr nz, jr_0a5_4827                            ; $4825: $20 $00

jr_0a5_4827:
    ld [bc], a                                    ; $4827: $02
    ld a, l                                       ; $4828: $7d
    ld [$0677], sp                                ; $4829: $08 $77 $06
    ld e, c                                       ; $482c: $59
    inc c                                         ; $482d: $0c
    or e                                          ; $482e: $b3
    nop                                           ; $482f: $00
    ld [$0057], sp                                ; $4830: $08 $57 $00
    ccf                                           ; $4833: $3f
    nop                                           ; $4834: $00
    ld d, a                                       ; $4835: $57
    nop                                           ; $4836: $00
    sub h                                         ; $4837: $94
    nop                                           ; $4838: $00

jr_0a5_4839:
    jp nz, $c03d                                  ; $4839: $c2 $3d $c0

    ccf                                           ; $483c: $3f
    jp nz, $863d                                  ; $483d: $c2 $3d $86

    ld l, c                                       ; $4840: $69
    ld [$f906], sp                                ; $4841: $08 $06 $f9
    add d                                         ; $4844: $82
    ld l, l                                       ; $4845: $6d
    and c                                         ; $4846: $a1
    rlca                                          ; $4847: $07
    ld l, d                                       ; $4848: $6a
    inc bc                                        ; $4849: $03
    db $fc                                        ; $484a: $fc
    jr nz, jr_0a5_4850                            ; $484b: $20 $03

    db $ec                                        ; $484d: $ec
    cp $07                                        ; $484e: $fe $07

jr_0a5_4850:
    db $ed                                        ; $4850: $ed
    ld [bc], a                                    ; $4851: $02
    db $dd                                        ; $4852: $dd
    ld [bc], a                                    ; $4853: $02
    db $ed                                        ; $4854: $ed
    ld [bc], a                                    ; $4855: $02
    nop                                           ; $4856: $00
    rst $08                                       ; $4857: $cf
    nop                                           ; $4858: $00
    and c                                         ; $4859: $a1
    ld b, d                                       ; $485a: $42
    cp l                                          ; $485b: $bd
    or d                                          ; $485c: $b2
    inc c                                         ; $485d: $0c
    ld b, $50                                     ; $485e: $06 $50
    jp hl                                         ; $4860: $e9


    db $10                                        ; $4861: $10
    jr nz, jr_0a5_4887                            ; $4862: $20 $23

    and d                                         ; $4864: $a2
    rrca                                          ; $4865: $0f
    adc b                                         ; $4866: $88
    rlca                                          ; $4867: $07
    sbc c                                         ; $4868: $99
    ld d, $00                                     ; $4869: $16 $00
    or $40                                        ; $486b: $f6 $40
    inc hl                                        ; $486d: $23
    ret nz                                        ; $486e: $c0

    inc de                                        ; $486f: $13
    ld [c], a                                     ; $4870: $e2
    rst $38                                       ; $4871: $ff
    jr nz, jr_0a5_47f8                            ; $4872: $20 $84

    or d                                          ; $4874: $b2
    rrca                                          ; $4875: $0f
    pop hl                                        ; $4876: $e1
    ld e, [hl]                                    ; $4877: $5e
    ld sp, $c00f                                  ; $4878: $31 $0f $c0
    ld bc, $e300                                  ; $487b: $01 $00 $e3
    nop                                           ; $487e: $00
    ld [bc], a                                    ; $487f: $02
    rst $38                                       ; $4880: $ff
    jr nz, jr_0a5_48d8                            ; $4881: $20 $55

    rst $38                                       ; $4883: $ff
    sub e                                         ; $4884: $93
    inc c                                         ; $4885: $0c
    dec hl                                        ; $4886: $2b

jr_0a5_4887:
    ld [$54d4], sp                                ; $4887: $08 $d4 $54
    dec hl                                        ; $488a: $2b
    db $d3                                        ; $488b: $d3
    add b                                         ; $488c: $80
    jr nz, jr_0a5_4839                            ; $488d: $20 $aa

    ld a, a                                       ; $488f: $7f
    ld [hl], a                                    ; $4890: $77
    nop                                           ; $4891: $00
    cp [hl]                                       ; $4892: $be
    sbc h                                         ; $4893: $9c
    ld a, $29                                     ; $4894: $3e $29
    inc e                                         ; $4896: $1c
    ld [bc], a                                    ; $4897: $02
    jr jr_0a5_48a8                                ; $4898: $18 $0e

    ld [bc], a                                    ; $489a: $02
    ld bc, $8f57                                  ; $489b: $01 $57 $8f
    cp a                                          ; $489e: $bf
    rst $18                                       ; $489f: $df
    rra                                           ; $48a0: $1f
    ld [hl], h                                    ; $48a1: $74
    dec b                                         ; $48a2: $05
    ld [hl], l                                    ; $48a3: $75
    nop                                           ; $48a4: $00
    ld a, [hl-]                                   ; $48a5: $3a
    ld e, d                                       ; $48a6: $5a
    dec a                                         ; $48a7: $3d

jr_0a5_48a8:
    ld l, h                                       ; $48a8: $6c
    sbc a                                         ; $48a9: $9f
    ld b, a                                       ; $48aa: $47
    inc bc                                        ; $48ab: $03
    jr nc, jr_0a5_48ae                            ; $48ac: $30 $00

jr_0a5_48ae:
    ret nz                                        ; $48ae: $c0

    ld a, [$f5fc]                                 ; $48af: $fa $fc $f5
    inc c                                         ; $48b2: $0c
    db $eb                                        ; $48b3: $eb
    add hl, de                                    ; $48b4: $19
    reti                                          ; $48b5: $d9


    nop                                           ; $48b6: $00
    dec sp                                        ; $48b7: $3b
    or c                                          ; $48b8: $b1
    ld [hl], e                                    ; $48b9: $73
    db $e3                                        ; $48ba: $e3
    pop hl                                        ; $48bb: $e1
    adc l                                         ; $48bc: $8d
    pop bc                                        ; $48bd: $c1
    inc hl                                        ; $48be: $23
    nop                                           ; $48bf: $00
    inc e                                         ; $48c0: $1c
    ld e, l                                       ; $48c1: $5d
    ld [hl+], a                                   ; $48c2: $22
    pop af                                        ; $48c3: $f1
    cp a                                          ; $48c4: $bf
    rst $28                                       ; $48c5: $ef
    ld a, a                                       ; $48c6: $7f
    ld e, a                                       ; $48c7: $5f
    add b                                         ; $48c8: $80
    db $f4                                        ; $48c9: $f4
    ld b, d                                       ; $48ca: $42
    ld e, h                                       ; $48cb: $5c
    cp $ef                                        ; $48cc: $fe $ef
    cp $ff                                        ; $48ce: $fe $ff
    cp $fd                                        ; $48d0: $fe $fd
    nop                                           ; $48d2: $00
    cp $fe                                        ; $48d3: $fe $fe
    db $fd                                        ; $48d5: $fd
    ld hl, sp-$03                                 ; $48d6: $f8 $fd

jr_0a5_48d8:
    pop af                                        ; $48d8: $f1
    ld sp, hl                                     ; $48d9: $f9
    pop hl                                        ; $48da: $e1
    nop                                           ; $48db: $00
    ldh a, [$32]                                  ; $48dc: $f0 $32
    ld b, c                                       ; $48de: $41
    sbc [hl]                                      ; $48df: $9e
    ld b, c                                       ; $48e0: $41
    ld a, l                                       ; $48e1: $7d
    add d                                         ; $48e2: $82
    ld a, d                                       ; $48e3: $7a
    nop                                           ; $48e4: $00
    add l                                         ; $48e5: $85
    xor l                                         ; $48e6: $ad
    ld e, d                                       ; $48e7: $5a
    ld e, d                                       ; $48e8: $5a
    or l                                          ; $48e9: $b5
    cp b                                          ; $48ea: $b8
    rst $28                                       ; $48eb: $ef
    db $fc                                        ; $48ec: $fc
    nop                                           ; $48ed: $00
    rst $08                                       ; $48ee: $cf
    rst $10                                       ; $48ef: $d7
    jp $dba5                                      ; $48f0: $c3 $a5 $db


    ld d, d                                       ; $48f3: $52
    adc a                                         ; $48f4: $8f
    and l                                         ; $48f5: $a5
    nop                                           ; $48f6: $00
    sbc e                                         ; $48f7: $9b
    ld a, [bc]                                    ; $48f8: $0a
    cp e                                          ; $48f9: $bb
    push hl                                       ; $48fa: $e5
    sbc e                                         ; $48fb: $9b
    ld a, [de]                                    ; $48fc: $1a
    xor e                                         ; $48fd: $ab
    jp hl                                         ; $48fe: $e9


    nop                                           ; $48ff: $00
    adc e                                         ; $4900: $8b
    ld d, $ab                                     ; $4901: $16 $ab
    jp hl                                         ; $4903: $e9


    add e                                         ; $4904: $83
    ld [hl-], a                                   ; $4905: $32
    add e                                         ; $4906: $83
    reti                                          ; $4907: $d9


    nop                                           ; $4908: $00
    and e                                         ; $4909: $a3
    ld h, $db                                     ; $490a: $26 $db
    db $dd                                        ; $490c: $dd
    xor e                                         ; $490d: $ab
    ld [hl+], a                                   ; $490e: $22
    rst $38                                       ; $490f: $ff
    sbc c                                         ; $4910: $99
    ld h, b                                       ; $4911: $60
    rst $28                                       ; $4912: $ef
    ldh a, [$59]                                  ; $4913: $f0 $59
    sbc d                                         ; $4915: $9a
    inc c                                         ; $4916: $0c

jr_0a5_4917:
    ld a, a                                       ; $4917: $7f
    add b                                         ; $4918: $80
    rst $30                                       ; $4919: $f7
    ld [$006b], sp                                ; $491a: $08 $6b $00
    sbc h                                         ; $491d: $9c
    db $e3                                        ; $491e: $e3
    inc e                                         ; $491f: $1c
    xor d                                         ; $4920: $aa
    ld e, l                                       ; $4921: $5d
    ld l, d                                       ; $4922: $6a
    sbc l                                         ; $4923: $9d
    ld [$1d40], a                                 ; $4924: $ea $40 $1d
    xor [hl]                                      ; $4927: $ae
    inc c                                         ; $4928: $0c
    jp $bd3c                                      ; $4929: $c3 $3c $bd


    ld a, [hl]                                    ; $492c: $7e
    ld h, d                                       ; $492d: $62
    rst $18                                       ; $492e: $df
    rlca                                          ; $492f: $07
    db $fd                                        ; $4930: $fd
    cp a                                          ; $4931: $bf
    cp a                                          ; $4932: $bf
    rst $38                                       ; $4933: $ff
    cp a                                          ; $4934: $bf
    ld b, h                                       ; $4935: $44
    inc c                                         ; $4936: $0c
    inc c                                         ; $4937: $0c
    ld [hl-], a                                   ; $4938: $32
    xor [hl]                                      ; $4939: $ae
    add hl, bc                                    ; $493a: $09
    ld [$08e3], sp                                ; $493b: $08 $e3 $08
    db $e3                                        ; $493e: $e3
    inc d                                         ; $493f: $14
    db $f4                                        ; $4940: $f4
    ld c, h                                       ; $4941: $4c
    ld e, [hl]                                    ; $4942: $5e
    ld a, d                                       ; $4943: $7a
    inc a                                         ; $4944: $3c
    inc b                                         ; $4945: $04
    cp l                                          ; $4946: $bd
    add c                                         ; $4947: $81
    ld b, d                                       ; $4948: $42
    jp $c73c                                      ; $4949: $c3 $3c $c7


    cpl                                           ; $494c: $2f
    rst $00                                       ; $494d: $c7
    jr c, jr_0a5_4950                             ; $494e: $38 $00

jr_0a5_4950:
    cp e                                          ; $4950: $bb
    ld c, h                                       ; $4951: $4c
    cp e                                          ; $4952: $bb
    ld a, h                                       ; $4953: $7c
    jp $b378                                      ; $4954: $c3 $78 $b3


    ld a, b                                       ; $4957: $78
    nop                                           ; $4958: $00
    rst $10                                       ; $4959: $d7
    jr nz, jr_0a5_4917                            ; $495a: $20 $bb

    ld e, h                                       ; $495c: $5c
    or e                                          ; $495d: $b3
    ld a, b                                       ; $495e: $78
    jp $f034                                      ; $495f: $c3 $34 $f0


    ld [hl], b                                    ; $4962: $70
    ld l, b                                       ; $4963: $68
    cp d                                          ; $4964: $ba
    inc e                                         ; $4965: $1c
    ld [bc], a                                    ; $4966: $02
    jr z, jr_0a5_4987                             ; $4967: $28 $1e

    dec c                                         ; $4969: $0d
    ld a, h                                       ; $496a: $7c
    add e                                         ; $496b: $83
    cp e                                          ; $496c: $bb
    rst $00                                       ; $496d: $c7
    nop                                           ; $496e: $00
    ld [hl], $cd                                  ; $496f: $36 $cd
    xor a                                         ; $4971: $af
    db $db                                        ; $4972: $db
    xor e                                         ; $4973: $ab
    rst $18                                       ; $4974: $df
    xor e                                         ; $4975: $ab
    rst $18                                       ; $4976: $df
    ld h, b                                       ; $4977: $60
    ld a, a                                       ; $4978: $7f
    ld [hl], h                                    ; $4979: $74
    ld [bc], a                                    ; $497a: $02
    ld d, h                                       ; $497b: $54
    ld c, l                                       ; $497c: $4d
    dec [hl]                                      ; $497d: $35

jr_0a5_497e:
    add a                                         ; $497e: $87
    inc sp                                        ; $497f: $33
    ld c, e                                       ; $4980: $4b
    ld hl, sp+$18                                 ; $4981: $f8 $18
    inc b                                         ; $4983: $04
    db $fc                                        ; $4984: $fc
    inc bc                                        ; $4985: $03
    ld b, b                                       ; $4986: $40

jr_0a5_4987:
    ld c, b                                       ; $4987: $48
    ld a, [$e005]                                 ; $4988: $fa $05 $e0
    cpl                                           ; $498b: $2f
    ldh a, [$03]                                  ; $498c: $f0 $03
    rst $10                                       ; $498e: $d7
    ld hl, sp-$09                                 ; $498f: $f8 $f7
    ld hl, sp-$09                                 ; $4991: $f8 $f7
    ret c                                         ; $4993: $d8

    ld l, [hl]                                    ; $4994: $6e
    dec c                                         ; $4995: $0d
    xor b                                         ; $4996: $a8
    ld a, [bc]                                    ; $4997: $0a
    ret nz                                        ; $4998: $c0

    and $0b                                       ; $4999: $e6 $0b
    ld e, b                                       ; $499b: $58
    ld a, [bc]                                    ; $499c: $0a
    db $ec                                        ; $499d: $ec
    and e                                         ; $499e: $a3

jr_0a5_499f:
    set 2, h                                      ; $499f: $cb $d4
    dec de                                        ; $49a1: $1b
    daa                                           ; $49a2: $27
    jr nz, jr_0a5_49e1                            ; $49a3: $20 $3c

    rst $00                                       ; $49a5: $c7
    cp d                                          ; $49a6: $ba
    dec b                                         ; $49a7: $05
    ld [bc], a                                    ; $49a8: $02
    ei                                            ; $49a9: $fb
    dec b                                         ; $49aa: $05
    ei                                            ; $49ab: $fb
    rlca                                          ; $49ac: $07
    rst $10                                       ; $49ad: $d7
    ld l, b                                       ; $49ae: $68
    ld a, [bc]                                    ; $49af: $0a
    ld l, d                                       ; $49b0: $6a
    ld [bc], a                                    ; $49b1: $02
    add b                                         ; $49b2: $80
    cp c                                          ; $49b3: $b9
    rlca                                          ; $49b4: $07
    nop                                           ; $49b5: $00
    ld [$4a08], sp                                ; $49b6: $08 $08 $4a
    jr c, jr_0a5_497e                             ; $49b9: $38 $c3

    rra                                           ; $49bb: $1f
    jr nz, jr_0a5_49fd                            ; $49bc: $20 $3f

    ld b, b                                       ; $49be: $40
    and b                                         ; $49bf: $a0
    ld a, b                                       ; $49c0: $78
    ei                                            ; $49c1: $fb
    inc b                                         ; $49c2: $04
    push af                                       ; $49c3: $f5
    ld c, $f1                                     ; $49c4: $0e $f1
    jr nc, jr_0a5_49d6                            ; $49c6: $30 $0e

    push af                                       ; $49c8: $f5
    ld [bc], a                                    ; $49c9: $02
    db $10                                        ; $49ca: $10
    cp [hl]                                       ; $49cb: $be
    dec c                                         ; $49cc: $0d
    pop hl                                        ; $49cd: $e1
    ld e, $de                                     ; $49ce: $1e $de
    ccf                                           ; $49d0: $3f
    nop                                           ; $49d1: $00
    or c                                          ; $49d2: $b1
    ld l, a                                       ; $49d3: $6f
    ld a, [hl]                                    ; $49d4: $7e
    rst $18                                       ; $49d5: $df

jr_0a5_49d6:
    ld e, a                                       ; $49d6: $5f
    rst $38                                       ; $49d7: $ff
    ld e, a                                       ; $49d8: $5f
    cp $c0                                        ; $49d9: $fe $c0
    jr nc, jr_0a5_4a08                            ; $49db: $30 $2b

    ld e, b                                       ; $49dd: $58
    jr jr_0a5_499f                                ; $49de: $18 $bf

    ret nz                                        ; $49e0: $c0

jr_0a5_49e1:
    pop af                                        ; $49e1: $f1
    inc b                                         ; $49e2: $04
    pop af                                        ; $49e3: $f1
    ld a, [bc]                                    ; $49e4: $0a
    add b                                         ; $49e5: $80
    inc b                                         ; $49e6: $04
    ld c, [hl]                                    ; $49e7: $4e
    xor a                                         ; $49e8: $af
    dec a                                         ; $49e9: $3d
    sbc [hl]                                      ; $49ea: $9e
    ld e, [hl]                                    ; $49eb: $5e
    ret nz                                        ; $49ec: $c0

    ld hl, $40e1                                  ; $49ed: $21 $e1 $40
    ld e, $18                                     ; $49f0: $1e $18
    ld l, $63                                     ; $49f2: $2e $63
    inc e                                         ; $49f4: $1c
    ld e, l                                       ; $49f5: $5d
    and [hl]                                      ; $49f6: $a6
    db $dd                                        ; $49f7: $dd
    ld a, $00                                     ; $49f8: $3e $00
    pop hl                                        ; $49fa: $e1
    inc a                                         ; $49fb: $3c
    reti                                          ; $49fc: $d9


jr_0a5_49fd:
    inc a                                         ; $49fd: $3c
    db $eb                                        ; $49fe: $eb
    db $10                                        ; $49ff: $10

jr_0a5_4a00:
    db $dd                                        ; $4a00: $dd
    ld l, $08                                     ; $4a01: $2e $08
    reti                                          ; $4a03: $d9


    inc a                                         ; $4a04: $3c
    pop hl                                        ; $4a05: $e1
    ld a, [de]                                    ; $4a06: $1a
    ld [hl-], a                                   ; $4a07: $32

jr_0a5_4a08:
    ld e, [hl]                                    ; $4a08: $5e
    ld a, [de]                                    ; $4a09: $1a
    push hl                                       ; $4a0a: $e5
    jr jr_0a5_4a0d                                ; $4a0b: $18 $00

jr_0a5_4a0d:
    rst $20                                       ; $4a0d: $e7
    ld [$08b7], sp                                ; $4a0e: $08 $b7 $08
    rst $30                                       ; $4a11: $f7
    ld [$00b7], sp                                ; $4a12: $08 $b7 $00
    nop                                           ; $4a15: $00
    rst $18                                       ; $4a16: $df
    nop                                           ; $4a17: $00
    sbc [hl]                                      ; $4a18: $9e
    nop                                           ; $4a19: $00
    ld d, [hl]                                    ; $4a1a: $56
    nop                                           ; $4a1b: $00
    cp $10                                        ; $4a1c: $fe $10
    nop                                           ; $4a1e: $00
    ld l, [hl]                                    ; $4a1f: $6e
    jr nz, jr_0a5_4a00                            ; $4a20: $20 $de

    jr nc, jr_0a5_4a73                            ; $4a22: $30 $4f

    db $10                                        ; $4a24: $10
    xor $00                                       ; $4a25: $ee $00
    ld b, b                                       ; $4a27: $40
    ld a, [hl]                                    ; $4a28: $7e
    inc b                                         ; $4a29: $04
    nop                                           ; $4a2a: $00
    add hl, hl                                    ; $4a2b: $29
    add hl, bc                                    ; $4a2c: $09
    ld [hl], b                                    ; $4a2d: $70
    ld [hl], c                                    ; $4a2e: $71
    adc [hl]                                      ; $4a2f: $8e
    adc [hl]                                      ; $4a30: $8e
    dec c                                         ; $4a31: $0d
    ld bc, $0031                                  ; $4a32: $01 $31 $00
    ld a, d                                       ; $4a35: $7a
    sub b                                         ; $4a36: $90
    daa                                           ; $4a37: $27
    ld b, b                                       ; $4a38: $40
    ccf                                           ; $4a39: $3f
    ld b, l                                       ; $4a3a: $45
    ld b, b                                       ; $4a3b: $40
    rla                                           ; $4a3c: $17
    nop                                           ; $4a3d: $00
    push de                                       ; $4a3e: $d5
    and $33                                       ; $4a3f: $e6 $33
    rst $38                                       ; $4a41: $ff
    reti                                          ; $4a42: $d9


    ei                                            ; $4a43: $fb
    ld hl, sp-$08                                 ; $4a44: $f8 $f8
    ld b, l                                       ; $4a46: $45
    ldh a, [$03]                                  ; $4a47: $f0 $03
    nop                                           ; $4a49: $00
    ldh a, [$e0]                                  ; $4a4a: $f0 $e0
    ld b, b                                       ; $4a4c: $40
    ld c, $07                                     ; $4a4d: $0e $07
    inc l                                         ; $4a4f: $2c

jr_0a5_4a50:
    ld l, e                                       ; $4a50: $6b
    ld [bc], a                                    ; $4a51: $02
    nop                                           ; $4a52: $00
    ld a, h                                       ; $4a53: $7c
    cp $00                                        ; $4a54: $fe $00
    nop                                           ; $4a56: $00
    inc d                                         ; $4a57: $14
    inc bc                                        ; $4a58: $03
    ld [hl+], a                                   ; $4a59: $22
    inc c                                         ; $4a5a: $0c
    jr nz, @+$1e                                  ; $4a5b: $20 $1c

    db $10                                        ; $4a5d: $10
    ldh [$0c], a                                  ; $4a5e: $e0 $0c
    ld h, b                                       ; $4a60: $60
    add h                                         ; $4a61: $84
    adc d                                         ; $4a62: $8a
    ld [hl], b                                    ; $4a63: $70
    inc b                                         ; $4a64: $04
    jr nz, @-$06                                  ; $4a65: $20 $f8

    ld h, [hl]                                    ; $4a67: $66
    ldh [rNR14], a                                ; $4a68: $e0 $14
    stop                                          ; $4a6a: $10 $00
    ld b, b                                       ; $4a6c: $40
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    jr z, jr_0a5_4a71                             ; $4a6f: $28 $00

jr_0a5_4a71:
    add b                                         ; $4a71: $80
    inc b                                         ; $4a72: $04

jr_0a5_4a73:
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    ld a, [bc]                                    ; $4a75: $0a
    nop                                           ; $4a76: $00
    ld [$3000], sp                                ; $4a77: $08 $00 $30
    nop                                           ; $4a7a: $00
    jr nz, jr_0a5_4ae5                            ; $4a7b: $20 $68

    ld b, b                                       ; $4a7d: $40
    ld d, b                                       ; $4a7e: $50
    ld b, b                                       ; $4a7f: $40
    ld h, c                                       ; $4a80: $61
    ld b, b                                       ; $4a81: $40
    ld [hl], d                                    ; $4a82: $72
    nop                                           ; $4a83: $00
    ld h, b                                       ; $4a84: $60
    ld a, b                                       ; $4a85: $78
    jr nc, jr_0a5_4ac3                            ; $4a86: $30 $3b

    inc e                                         ; $4a88: $1c
    ld l, $1f                                     ; $4a89: $2e $1f
    add b                                         ; $4a8b: $80
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    jr nz, jr_0a5_4a50                            ; $4a8e: $20 $c0

    ld d, b                                       ; $4a90: $50
    jr nz, jr_0a5_4ab3                            ; $4a91: $20 $20

    db $10                                        ; $4a93: $10
    db $e4                                        ; $4a94: $e4
    nop                                           ; $4a95: $00
    db $10                                        ; $4a96: $10
    sub b                                         ; $4a97: $90
    ld h, b                                       ; $4a98: $60
    ld [hl], b                                    ; $4a99: $70
    ret nz                                        ; $4a9a: $c0

    db $fc                                        ; $4a9b: $fc
    sbc b                                         ; $4a9c: $98
    dec bc                                        ; $4a9d: $0b
    nop                                           ; $4a9e: $00
    rla                                           ; $4a9f: $17
    inc bc                                        ; $4aa0: $03
    ld d, $00                                     ; $4aa1: $16 $00
    inc l                                         ; $4aa3: $2c
    inc b                                         ; $4aa4: $04
    inc l                                         ; $4aa5: $2c
    ld [$1844], sp                                ; $4aa6: $08 $44 $18
    jr nz, jr_0a5_4ac3                            ; $4aa9: $20 $18

    ld [hl], a                                    ; $4aab: $77
    ld a, $7f                                     ; $4aac: $3e $7f
    add d                                         ; $4aae: $82
    dec [hl]                                      ; $4aaf: $35
    ld sp, hl                                     ; $4ab0: $f9
    cp $20                                        ; $4ab1: $fe $20

jr_0a5_4ab3:
    adc b                                         ; $4ab3: $88
    ld [hl], b                                    ; $4ab4: $70
    ld c, h                                       ; $4ab5: $4c
    ld [$8080], sp                                ; $4ab6: $08 $80 $80
    add d                                         ; $4ab9: $82
    add b                                         ; $4aba: $80
    sub l                                         ; $4abb: $95
    nop                                           ; $4abc: $00
    add b                                         ; $4abd: $80
    ld e, d                                       ; $4abe: $5a
    add b                                         ; $4abf: $80
    ld b, e                                       ; $4ac0: $43
    inc a                                         ; $4ac1: $3c
    cp h                                          ; $4ac2: $bc

jr_0a5_4ac3:
    ld b, e                                       ; $4ac3: $43
    ld b, [hl]                                    ; $4ac4: $46
    ld [bc], a                                    ; $4ac5: $02
    reti                                          ; $4ac6: $d9


    sub l                                         ; $4ac7: $95
    adc $0a                                       ; $4ac8: $ce $0a
    add a                                         ; $4aca: $87
    inc bc                                        ; $4acb: $03
    ld h, h                                       ; $4acc: $64
    nop                                           ; $4acd: $00
    jr nc, jr_0a5_4ad4                            ; $4ace: $30 $04

    ret nz                                        ; $4ad0: $c0

    ld c, b                                       ; $4ad1: $48
    jr nc, @-$62                                  ; $4ad2: $30 $9c

jr_0a5_4ad4:
    ld [$3af0], sp                                ; $4ad4: $08 $f0 $3a
    ld a, [bc]                                    ; $4ad7: $0a
    ld bc, $1300                                  ; $4ad8: $01 $00 $13
    rlca                                          ; $4adb: $07
    inc b                                         ; $4adc: $04
    rrca                                          ; $4add: $0f
    ld h, $04                                     ; $4ade: $26 $04
    ld b, [hl]                                    ; $4ae0: $46
    ld [bc], a                                    ; $4ae1: $02
    nop                                           ; $4ae2: $00
    dec hl                                        ; $4ae3: $2b
    ld [bc], a                                    ; $4ae4: $02

jr_0a5_4ae5:
    ld d, $02                                     ; $4ae5: $16 $02
    rlca                                          ; $4ae7: $07
    ld b, $1e                                     ; $4ae8: $06 $1e
    inc c                                         ; $4aea: $0c
    nop                                           ; $4aeb: $00
    call c, Call_0a5_7038                         ; $4aec: $dc $38 $70
    ld hl, sp+$08                                 ; $4aef: $f8 $08
    rrca                                          ; $4af1: $0f
    rrca                                          ; $4af2: $0f
    rra                                           ; $4af3: $1f
    add b                                         ; $4af4: $80
    ld [bc], a                                    ; $4af5: $02
    ld [$0f07], sp                                ; $4af6: $08 $07 $0f
    inc bc                                        ; $4af9: $03
    rlca                                          ; $4afa: $07
    nop                                           ; $4afb: $00
    ld bc, $4000                                  ; $4afc: $01 $00 $40
    nop                                           ; $4aff: $00
    ldh [rWY], a                                  ; $4b00: $e0 $4a
    ld [hl], c                                    ; $4b02: $71
    ld sp, hl                                     ; $4b03: $f9
    ld d, c                                       ; $4b04: $51
    nop                                           ; $4b05: $00
    ldh a, [$e8]                                  ; $4b06: $f0 $e8
    nop                                           ; $4b08: $00
    call nz, Call_0a5_6068                        ; $4b09: $c4 $68 $60
    inc [hl]                                      ; $4b0c: $34
    jr z, @+$36                                   ; $4b0d: $28 $34

    inc [hl]                                      ; $4b0f: $34
    ld e, $c8                                     ; $4b10: $1e $c8
    jr nc, jr_0a5_4b2c                            ; $4b12: $30 $18

    inc hl                                        ; $4b14: $23
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    inc b                                         ; $4b17: $04
    add hl, hl                                    ; $4b18: $29
    ld [$4100], sp                                ; $4b19: $08 $00 $41
    nop                                           ; $4b1c: $00
    inc b                                         ; $4b1d: $04
    ld c, $01                                     ; $4b1e: $0e $01
    ld b, c                                       ; $4b20: $41
    ld a, $24                                     ; $4b21: $3e $24
    call nz, Call_000_2000                        ; $4b23: $c4 $00 $20
    inc bc                                        ; $4b26: $03
    nop                                           ; $4b27: $00
    ld b, e                                       ; $4b28: $43
    inc b                                         ; $4b29: $04
    ld [hl+], a                                   ; $4b2a: $22
    inc b                                         ; $4b2b: $04

jr_0a5_4b2c:
    adc c                                         ; $4b2c: $89
    inc b                                         ; $4b2d: $04
    rlca                                          ; $4b2e: $07
    ret z                                         ; $4b2f: $c8

    nop                                           ; $4b30: $00
    and a                                         ; $4b31: $a7
    ld c, b                                       ; $4b32: $48
    ld bc, $0400                                  ; $4b33: $01 $00 $04
    inc bc                                        ; $4b36: $03
    ld bc, $0006                                  ; $4b37: $01 $06 $00
    nop                                           ; $4b3a: $00
    rlca                                          ; $4b3b: $07
    inc b                                         ; $4b3c: $04
    rlca                                          ; $4b3d: $07
    ld b, $03                                     ; $4b3e: $06 $03
    inc bc                                        ; $4b40: $03
    ld bc, $1102                                  ; $4b41: $01 $02 $11
    ldh [$38], a                                  ; $4b44: $e0 $38
    rst $00                                       ; $4b46: $c7
    ret nz                                        ; $4b47: $c0

    ccf                                           ; $4b48: $3f
    and e                                         ; $4b49: $a3
    rra                                           ; $4b4a: $1f
    add c                                         ; $4b4b: $81
    nop                                           ; $4b4c: $00
    rst $38                                       ; $4b4d: $ff
    ld c, e                                       ; $4b4e: $4b
    rst $38                                       ; $4b4f: $ff
    cp $ff                                        ; $4b50: $fe $ff
    scf                                           ; $4b52: $37
    ret z                                         ; $4b53: $c8

    cpl                                           ; $4b54: $2f
    nop                                           ; $4b55: $00
    ret nc                                        ; $4b56: $d0

    ld [hl], a                                    ; $4b57: $77
    sbc b                                         ; $4b58: $98
    ld a, d                                       ; $4b59: $7a
    sbc l                                         ; $4b5a: $9d
    sbc l                                         ; $4b5b: $9d
    adc a                                         ; $4b5c: $8f
    ld c, $08                                     ; $4b5d: $0e $08

jr_0a5_4b5f:
    add a                                         ; $4b5f: $87
    add a                                         ; $4b60: $87
    inc bc                                        ; $4b61: $03
    ld b, d                                       ; $4b62: $42
    adc b                                         ; $4b63: $88
    ld [bc], a                                    ; $4b64: $02
    jp c, $ea24                                   ; $4b65: $da $24 $ea

    nop                                           ; $4b68: $00
    inc d                                         ; $4b69: $14
    ld a, [c]                                     ; $4b6a: $f2
    dec c                                         ; $4b6b: $0d
    or h                                          ; $4b6c: $b4
    ld c, d                                       ; $4b6d: $4a
    ret c                                         ; $4b6e: $d8

    daa                                           ; $4b6f: $27
    db $e4                                        ; $4b70: $e4
    inc c                                         ; $4b71: $0c
    ld a, [de]                                    ; $4b72: $1a
    xor b                                         ; $4b73: $a8
    ld d, a                                       ; $4b74: $57
    rst $38                                       ; $4b75: $ff
    jr z, jr_0a5_4b78                             ; $4b76: $28 $00

jr_0a5_4b78:
    ld h, e                                       ; $4b78: $63
    ld l, $17                                     ; $4b79: $2e $17
    add sp, $00                                   ; $4b7b: $e8 $00
    dec bc                                        ; $4b7d: $0b
    db $f4                                        ; $4b7e: $f4
    rst $10                                       ; $4b7f: $d7
    res 6, c                                      ; $4b80: $cb $b1
    rst $00                                       ; $4b82: $c7
    ld c, [hl]                                    ; $4b83: $4e
    and e                                         ; $4b84: $a3
    nop                                           ; $4b85: $00
    or l                                          ; $4b86: $b5
    db $e3                                        ; $4b87: $e3
    ld c, d                                       ; $4b88: $4a
    and a                                         ; $4b89: $a7
    pop af                                        ; $4b8a: $f1
    and a                                         ; $4b8b: $a7
    ld a, [bc]                                    ; $4b8c: $0a
    rst $30                                       ; $4b8d: $f7
    nop                                           ; $4b8e: $00
    db $ed                                        ; $4b8f: $ed
    or e                                          ; $4b90: $b3
    ld [de], a                                    ; $4b91: $12
    db $eb                                        ; $4b92: $eb
    and l                                         ; $4b93: $a5
    rrc d                                         ; $4b94: $cb $0a
    db $e3                                        ; $4b96: $e3
    nop                                           ; $4b97: $00
    or l                                          ; $4b98: $b5
    bit 1, d                                      ; $4b99: $cb $4a
    db $e3                                        ; $4b9b: $e3
    push af                                       ; $4b9c: $f5
    bit 4, [hl]                                   ; $4b9d: $cb $66
    db $db                                        ; $4b9f: $db
    ld hl, $dbbd                                  ; $4ba0: $21 $bd $db
    jr nc, jr_0a5_4bed                            ; $4ba3: $30 $48

    ret nc                                        ; $4ba5: $d0

    cpl                                           ; $4ba6: $2f
    add sp, $17                                   ; $4ba7: $e8 $17
    ld h, $1b                                     ; $4ba9: $26 $1b
    ldh a, [rTMA]                                 ; $4bab: $f0 $06
    jr c, jr_0a5_4b5f                             ; $4bad: $38 $b0

    ld e, a                                       ; $4baf: $5f
    ld b, [hl]                                    ; $4bb0: $46
    dec l                                         ; $4bb1: $2d
    add $0f                                       ; $4bb2: $c6 $0f
    rra                                           ; $4bb4: $1f
    ldh [$ef], a                                  ; $4bb5: $e0 $ef
    sub b                                         ; $4bb7: $90
    inc b                                         ; $4bb8: $04
    rst $28                                       ; $4bb9: $ef
    ldh a, [$fe]                                  ; $4bba: $f0 $fe
    nop                                           ; $4bbc: $00
    ld a, [hl]                                    ; $4bbd: $7e
    ld a, [bc]                                    ; $4bbe: $0a
    dec b                                         ; $4bbf: $05
    sbc $61                                       ; $4bc0: $de $61

jr_0a5_4bc2:
    nop                                           ; $4bc2: $00
    xor $b0                                       ; $4bc3: $ee $b0
    xor [hl]                                      ; $4bc5: $ae
    pop af                                        ; $4bc6: $f1
    xor a                                         ; $4bc7: $af
    ldh a, [$5f]                                  ; $4bc8: $f0 $5f
    ret nz                                        ; $4bca: $c0

    nop                                           ; $4bcb: $00
    rra                                           ; $4bcc: $1f
    ldh a, [$6f]                                  ; $4bcd: $f0 $6f
    ldh a, [$5f]                                  ; $4bcf: $f0 $5f
    jr nz, jr_0a5_4bc2                            ; $4bd1: $20 $ef

    ret nc                                        ; $4bd3: $d0

    inc c                                         ; $4bd4: $0c
    ld l, a                                       ; $4bd5: $6f
    ldh a, [$1f]                                  ; $4bd6: $f0 $1f
    ld h, b                                       ; $4bd8: $60
    db $ec                                        ; $4bd9: $ec
    rrca                                          ; $4bda: $0f
    ld b, b                                       ; $4bdb: $40
    dec l                                         ; $4bdc: $2d
    ld a, h                                       ; $4bdd: $7c
    add e                                         ; $4bde: $83
    inc e                                         ; $4bdf: $1c
    ld a, d                                       ; $4be0: $7a
    add a                                         ; $4be1: $87
    ld a, b                                       ; $4be2: $78
    ld b, $00                                     ; $4be3: $06 $00
    ld b, b                                       ; $4be5: $40
    dec l                                         ; $4be6: $2d
    ld a, $00                                     ; $4be7: $3e $00
    ldh a, [rIF]                                  ; $4be9: $f0 $0f
    ld h, l                                       ; $4beb: $65
    db $10                                        ; $4bec: $10

jr_0a5_4bed:
    jr nc, jr_0a5_4c5c                            ; $4bed: $30 $6d

    inc a                                         ; $4bef: $3c
    dec sp                                        ; $4bf0: $3b
    db $fd                                        ; $4bf1: $fd
    ld [bc], a                                    ; $4bf2: $02
    sbc $12                                       ; $4bf3: $de $12
    ret nz                                        ; $4bf5: $c0

    ld l, d                                       ; $4bf6: $6a
    dec bc                                        ; $4bf7: $0b
    inc bc                                        ; $4bf8: $03
    ld [$d415], a                                 ; $4bf9: $ea $15 $d4
    dec hl                                        ; $4bfc: $2b
    ld a, [hl]                                    ; $4bfd: $7e
    add c                                         ; $4bfe: $81
    ld [hl], h                                    ; $4bff: $74
    dec de                                        ; $4c00: $1b
    and b                                         ; $4c01: $a0
    jr z, jr_0a5_4c06                             ; $4c02: $28 $02

    ld a, e                                       ; $4c04: $7b
    add h                                         ; $4c05: $84

jr_0a5_4c06:
    ld d, [hl]                                    ; $4c06: $56
    xor c                                         ; $4c07: $a9

Jump_0a5_4c08:
    cpl                                           ; $4c08: $2f
    ret nc                                        ; $4c09: $d0

    adc d                                         ; $4c0a: $8a
    dec l                                         ; $4c0b: $2d
    pop de                                        ; $4c0c: $d1
    nop                                           ; $4c0d: $00
    ld l, [hl]                                    ; $4c0e: $6e
    xor $b9                                       ; $4c0f: $ee $b9
    xor [hl]                                      ; $4c11: $ae
    rst $38                                       ; $4c12: $ff
    and c                                         ; $4c13: $a1
    rst $28                                       ; $4c14: $ef
    ld b, [hl]                                    ; $4c15: $46
    nop                                           ; $4c16: $00
    rst $08                                       ; $4c17: $cf
    and $e9                                       ; $4c18: $e6 $e9
    ld c, $11                                     ; $4c1a: $0e $11
    ld e, $e1                                     ; $4c1c: $1e $e1
    cp $00                                        ; $4c1e: $fe $00
    ld bc, $31ce                                  ; $4c20: $01 $ce $31
    ld d, $f9                                     ; $4c23: $16 $f9
    add $c1                                       ; $4c25: $c6 $c1
    ld c, $00                                     ; $4c27: $0e $00
    ld sp, $a295                                  ; $4c29: $31 $95 $a2
    ld l, $5d                                     ; $4c2c: $2e $5d
    ld h, [hl]                                    ; $4c2e: $66
    adc a                                         ; $4c2f: $8f
    pop hl                                        ; $4c30: $e1
    ld c, [hl]                                    ; $4c31: $4e
    ld d, $b2                                     ; $4c32: $16 $b2
    dec l                                         ; $4c34: $2d
    ld a, h                                       ; $4c35: $7c
    add e                                         ; $4c36: $83
    ld [c], a                                     ; $4c37: $e2
    ret z                                         ; $4c38: $c8

    xor b                                         ; $4c39: $a8
    inc bc                                        ; $4c3a: $03
    ld [hl], h                                    ; $4c3b: $74
    ld b, $c3                                     ; $4c3c: $06 $c3
    ld hl, $80fc                                  ; $4c3e: $21 $fc $80
    ld a, h                                       ; $4c41: $7c
    ld d, $c0                                     ; $4c42: $16 $c0
    rst $38                                       ; $4c44: $ff
    add e                                         ; $4c45: $83
    db $fd                                        ; $4c46: $fd
    halt                                          ; $4c47: $76
    ld c, $c0                                     ; $4c48: $0e $c0
    ld a, [hl]                                    ; $4c4a: $7e
    ld c, $7c                                     ; $4c4b: $0e $7c
    ld e, $ff                                     ; $4c4d: $1e $ff
    rst $38                                       ; $4c4f: $ff
    jp Jump_000_03fd                              ; $4c50: $c3 $fd $03


    db $fd                                        ; $4c53: $fd
    ld de, $3dc3                                  ; $4c54: $11 $c3 $3d
    inc bc                                        ; $4c57: $03
    ld b, $00                                     ; $4c58: $06 $00
    inc bc                                        ; $4c5a: $03
    db $fd                                        ; $4c5b: $fd

jr_0a5_4c5c:
    ld bc, $07cc                                  ; $4c5c: $01 $cc $07
    ld [$fbe7], sp                                ; $4c5f: $08 $e7 $fb
    rst $00                                       ; $4c62: $c7
    ei                                            ; $4c63: $fb
    inc b                                         ; $4c64: $04
    ld c, b                                       ; $4c65: $48
    db $f4                                        ; $4c66: $f4
    dec bc                                        ; $4c67: $0b
    db $eb                                        ; $4c68: $eb
    nop                                           ; $4c69: $00
    rla                                           ; $4c6a: $17
    push af                                       ; $4c6b: $f5
    dec bc                                        ; $4c6c: $0b
    ei                                            ; $4c6d: $fb
    dec b                                         ; $4c6e: $05
    db $f4                                        ; $4c6f: $f4
    dec bc                                        ; $4c70: $0b
    ld l, l                                       ; $4c71: $6d
    ld h, b                                       ; $4c72: $60
    sub e                                         ; $4c73: $93
    or e                                          ; $4c74: $b3
    inc bc                                        ; $4c75: $03
    sbc $06                                       ; $4c76: $de $06
    pop af                                        ; $4c78: $f1
    ld c, $ee                                     ; $4c79: $0e $ee
    add hl, de                                    ; $4c7b: $19
    xor $00                                       ; $4c7c: $ee $00
    rra                                           ; $4c7e: $1f
    pop hl                                        ; $4c7f: $e1
    rrca                                          ; $4c80: $0f
    and $0f                                       ; $4c81: $e6 $0f
    push af                                       ; $4c83: $f5
    ld [bc], a                                    ; $4c84: $02
    xor $00                                       ; $4c85: $ee $00
    dec e                                         ; $4c87: $1d
    and $0f                                       ; $4c88: $e6 $0f
    ld h, c                                       ; $4c8a: $61
    sub [hl]                                      ; $4c8b: $96
    cp a                                          ; $4c8c: $bf
    ret nz                                        ; $4c8d: $c0

    rst $18                                       ; $4c8e: $df
    ld b, $60                                     ; $4c8f: $06 $60
    rst $28                                       ; $4c91: $ef
    or b                                          ; $4c92: $b0
    xor a                                         ; $4c93: $af
    ldh a, [$30]                                  ; $4c94: $f0 $30
    add hl, bc                                    ; $4c96: $09
    ld h, b                                       ; $4c97: $60
    ld e, $73                                     ; $4c98: $1e $73
    nop                                           ; $4c9a: $00
    adc a                                         ; $4c9b: $8f
    ld l, b                                       ; $4c9c: $68
    sbc h                                         ; $4c9d: $9c
    ld h, b                                       ; $4c9e: $60
    inc bc                                        ; $4c9f: $03
    ld [hl], e                                    ; $4ca0: $73
    adc h                                         ; $4ca1: $8c
    ld a, a                                       ; $4ca2: $7f
    ld [hl], b                                    ; $4ca3: $70
    nop                                           ; $4ca4: $00
    ld h, b                                       ; $4ca5: $60
    ld e, $5c                                     ; $4ca6: $1e $5c
    ld e, $6a                                     ; $4ca8: $1e $6a
    inc l                                         ; $4caa: $2c
    cp [hl]                                       ; $4cab: $be
    ld b, c                                       ; $4cac: $41
    sbc $21                                       ; $4cad: $de $21
    nop                                           ; $4caf: $00
    db $f4                                        ; $4cb0: $f4
    dec bc                                        ; $4cb1: $0b
    ld [$fc15], a                                 ; $4cb2: $ea $15 $fc
    inc bc                                        ; $4cb5: $03
    cp $01                                        ; $4cb6: $fe $01
    nop                                           ; $4cb8: $00
    add a                                         ; $4cb9: $87
    ld a, b                                       ; $4cba: $78
    ld b, e                                       ; $4cbb: $43
    adc h                                         ; $4cbc: $8c
    ld e, c                                       ; $4cbd: $59
    db $e3                                        ; $4cbe: $e3
    inc sp                                        ; $4cbf: $33
    ldh [rP1], a                                  ; $4cc0: $e0 $00
    jp hl                                         ; $4cc2: $e9


    ld h, $df                                     ; $4cc3: $26 $df
    inc a                                         ; $4cc5: $3c
    push af                                       ; $4cc6: $f5
    inc c                                         ; $4cc7: $0c
    ld [hl], l                                    ; $4cc8: $75
    call z, $b100                                 ; $4cc9: $cc $00 $b1
    xor h                                         ; $4ccc: $ac
    db $dd                                        ; $4ccd: $dd
    sbc b                                         ; $4cce: $98
    ld [$e049], a                                 ; $4ccf: $ea $49 $e0
    ld sp, $1700                                  ; $4cd2: $31 $00 $17
    pop hl                                        ; $4cd5: $e1
    ld l, a                                       ; $4cd6: $6f
    and a                                         ; $4cd7: $a7
    ld a, h                                       ; $4cd8: $7c
    xor a                                         ; $4cd9: $af
    ld a, d                                       ; $4cda: $7a
    cp l                                          ; $4cdb: $bd
    ld c, $c3                                     ; $4cdc: $0e $c3
    db $fd                                        ; $4cde: $fd
    add d                                         ; $4cdf: $82
    db $fd                                        ; $4ce0: $fd
    ret nz                                        ; $4ce1: $c0

    jr c, @+$37                                   ; $4ce2: $38 $35

    ld c, $a6                                     ; $4ce4: $0e $a6
    nop                                           ; $4ce6: $00
    ld bc, $b080                                  ; $4ce7: $01 $80 $b0
    jr jr_0a5_4cef                                ; $4cea: $18 $03

    db $fd                                        ; $4cec: $fd
    add e                                         ; $4ced: $83
    db $fd                                        ; $4cee: $fd

jr_0a5_4cef:
    xor b                                         ; $4cef: $a8
    rst $38                                       ; $4cf0: $ff
    ld b, b                                       ; $4cf1: $40
    and b                                         ; $4cf2: $a0
    ld d, [hl]                                    ; $4cf3: $56
    rlca                                          ; $4cf4: $07
    nop                                           ; $4cf5: $00
    sub $07                                       ; $4cf6: $d6 $07
    dec b                                         ; $4cf8: $05
    rst $38                                       ; $4cf9: $ff

jr_0a5_4cfa:
    adc e                                         ; $4cfa: $8b
    rst $38                                       ; $4cfb: $ff
    rlca                                          ; $4cfc: $07
    xor c                                         ; $4cfd: $a9
    ld a, [hl]                                    ; $4cfe: $7e
    ld b, $17                                     ; $4cff: $06 $17
    add d                                         ; $4d01: $82
    ld b, $1f                                     ; $4d02: $06 $1f
    inc b                                         ; $4d04: $04

jr_0a5_4d05:
    jr nc, jr_0a5_4d05                            ; $4d05: $30 $fe

    ld bc, $062e                                  ; $4d07: $01 $2e $06
    ret nz                                        ; $4d0a: $c0

    ld [bc], a                                    ; $4d0b: $02
    nop                                           ; $4d0c: $00
    ld [hl], b                                    ; $4d0d: $70
    rrca                                          ; $4d0e: $0f
    xor d                                         ; $4d0f: $aa
    rst $38                                       ; $4d10: $ff
    inc c                                         ; $4d11: $0c
    rst $38                                       ; $4d12: $ff
    ld sp, hl                                     ; $4d13: $f9
    ld c, $0a                                     ; $4d14: $0e $0a
    inc e                                         ; $4d16: $1c
    rst $28                                       ; $4d17: $ef
    jr @-$0f                                      ; $4d18: $18 $ef

    inc b                                         ; $4d1a: $04

jr_0a5_4d1b:
    adc b                                         ; $4d1b: $88
    inc c                                         ; $4d1c: $0c
    jr nz, jr_0a5_4d1f                            ; $4d1d: $20 $00

jr_0a5_4d1f:
    rst $38                                       ; $4d1f: $ff
    or h                                          ; $4d20: $b4
    ld [hl+], a                                   ; $4d21: $22
    ld bc, $56c3                                  ; $4d22: $01 $c3 $56
    nop                                           ; $4d25: $00
    inc b                                         ; $4d26: $04
    ld [$10c1], sp                                ; $4d27: $08 $c1 $10
    db $10                                        ; $4d2a: $10
    rst $38                                       ; $4d2b: $ff
    push af                                       ; $4d2c: $f5
    jr nz, @+$01                                  ; $4d2d: $20 $ff

    xor b                                         ; $4d2f: $a8
    inc b                                         ; $4d30: $04
    ld c, b                                       ; $4d31: $48
    add a                                         ; $4d32: $87
    ld c, b                                       ; $4d33: $48
    rla                                           ; $4d34: $17
    ret z                                         ; $4d35: $c8

    rrca                                          ; $4d36: $0f
    add d                                         ; $4d37: $82
    or d                                          ; $4d38: $b2
    ld b, d                                       ; $4d39: $42
    db $fd                                        ; $4d3a: $fd
    ld [bc], a                                    ; $4d3b: $02
    ld a, [$f804]                                 ; $4d3c: $fa $04 $f8
    ld [bc], a                                    ; $4d3f: $02
    nop                                           ; $4d40: $00
    ld sp, hl                                     ; $4d41: $f9
    nop                                           ; $4d42: $00
    inc b                                         ; $4d43: $04
    ld [hl], l                                    ; $4d44: $75
    adc b                                         ; $4d45: $88
    xor e                                         ; $4d46: $ab
    ret c                                         ; $4d47: $d8

    ld e, e                                       ; $4d48: $5b
    ld hl, sp+$42                                 ; $4d49: $f8 $42
    nop                                           ; $4d4b: $00
    ld bc, $8c11                                  ; $4d4c: $01 $11 $8c
    nop                                           ; $4d4f: $00
    ld e, [hl]                                    ; $4d50: $5e
    xor h                                         ; $4d51: $ac
    inc de                                        ; $4d52: $13
    stop                                          ; $4d53: $10 $00
    ld a, a                                       ; $4d55: $7f
    sub d                                         ; $4d56: $92
    ccf                                           ; $4d57: $3f
    dec a                                         ; $4d58: $3d
    sbc [hl]                                      ; $4d59: $9e
    adc d                                         ; $4d5a: $8a
    sbc h                                         ; $4d5b: $9c

Jump_0a5_4d5c:
    cp c                                          ; $4d5c: $b9
    nop                                           ; $4d5d: $00
    ld hl, sp+$68                                 ; $4d5e: $f8 $68
    ldh a, [$90]                                  ; $4d60: $f0 $90
    ld h, b                                       ; $4d62: $60
    ld h, [hl]                                    ; $4d63: $66
    nop                                           ; $4d64: $00
    ld [$0700], sp                                ; $4d65: $08 $00 $07
    ld b, a                                       ; $4d68: $47
    jr c, jr_0a5_4d1b                             ; $4d69: $38 $b0

    ld b, b                                       ; $4d6b: $40
    xor [hl]                                      ; $4d6c: $ae
    ld b, b                                       ; $4d6d: $40
    inc c                                         ; $4d6e: $0c
    nop                                           ; $4d6f: $00
    add b                                         ; $4d70: $80
    adc h                                         ; $4d71: $8c
    nop                                           ; $4d72: $00
    ld hl, $9e1e                                  ; $4d73: $21 $1e $9e
    ld h, c                                       ; $4d76: $61
    ld h, e                                       ; $4d77: $63
    jr nz, jr_0a5_4cfa                            ; $4d78: $20 $80

    ld b, $f0                                     ; $4d7a: $06 $f0
    inc h                                         ; $4d7c: $24
    ld e, a                                       ; $4d7d: $5f
    jr nz, jr_0a5_4dab                            ; $4d7e: $20 $2b

    inc [hl]                                      ; $4d80: $34
    or l                                          ; $4d81: $b5
    nop                                           ; $4d82: $00
    ld a, [de]                                    ; $4d83: $1a
    ld e, d                                       ; $4d84: $5a
    adc a                                         ; $4d85: $8f
    xor a                                         ; $4d86: $af
    ld b, a                                       ; $4d87: $47
    ld d, l                                       ; $4d88: $55
    inc hl                                        ; $4d89: $23
    db $eb                                        ; $4d8a: $eb
    ld b, c                                       ; $4d8b: $41
    db $10                                        ; $4d8c: $10
    cp $0f                                        ; $4d8d: $fe $0f
    ld a, d                                       ; $4d8f: $7a
    add l                                         ; $4d90: $85
    inc h                                         ; $4d91: $24
    ei                                            ; $4d92: $fb

jr_0a5_4d93:
    db $d3                                        ; $4d93: $d3
    inc e                                         ; $4d94: $1c
    inc bc                                        ; $4d95: $03
    nop                                           ; $4d96: $00
    cp [hl]                                       ; $4d97: $be
    ld a, h                                       ; $4d98: $7c
    cp b                                          ; $4d99: $b8
    nop                                           ; $4d9a: $00
    ldh a, [$08]                                  ; $4d9b: $f0 $08
    ldh a, [$08]                                  ; $4d9d: $f0 $08
    nop                                           ; $4d9f: $00
    xor d                                         ; $4da0: $aa
    ld d, c                                       ; $4da1: $51
    call nc, $45e3                                ; $4da2: $d4 $e3 $45
    add [hl]                                      ; $4da5: $86
    add h                                         ; $4da6: $84
    rlca                                          ; $4da7: $07
    nop                                           ; $4da8: $00
    inc c                                         ; $4da9: $0c
    daa                                           ; $4daa: $27

jr_0a5_4dab:
    add [hl]                                      ; $4dab: $86
    ld d, e                                       ; $4dac: $53
    ld b, h                                       ; $4dad: $44
    inc bc                                        ; $4dae: $03
    and e                                         ; $4daf: $a3
    inc e                                         ; $4db0: $1c
    nop                                           ; $4db1: $00
    ld e, h                                       ; $4db2: $5c
    jr nz, @-$4d                                  ; $4db3: $20 $b1

    ld b, b                                       ; $4db5: $40
    xor a                                         ; $4db6: $af
    ld b, b                                       ; $4db7: $40
    rra                                           ; $4db8: $1f
    and b                                         ; $4db9: $a0
    add b                                         ; $4dba: $80
    ld [bc], a                                    ; $4dbb: $02
    ld [$eb13], sp                                ; $4dbc: $08 $13 $eb
    db $ed                                        ; $4dbf: $ed
    ld de, $0814                                  ; $4dc0: $11 $14 $08
    ld [$0420], a                                 ; $4dc3: $ea $20 $04
    db $f4                                        ; $4dc6: $f4
    dec d                                         ; $4dc7: $15
    rlca                                          ; $4dc8: $07
    rst $38                                       ; $4dc9: $ff
    ld [bc], a                                    ; $4dca: $02
    ld a, [$bf06]                                 ; $4dcb: $fa $06 $bf
    ld c, c                                       ; $4dce: $49
    jr nz, jr_0a5_4d93                            ; $4dcf: $20 $c2

    ld e, [hl]                                    ; $4dd1: $5e
    cp $04                                        ; $4dd2: $fe $04
    jp nz, $fa5e                                  ; $4dd4: $c2 $5e $fa

    db $fc                                        ; $4dd7: $fc
    or d                                          ; $4dd8: $b2
    ld e, [hl]                                    ; $4dd9: $5e
    jr nz, jr_0a5_4e39                            ; $4dda: $20 $5d

    ld [hl+], a                                   ; $4ddc: $22
    or d                                          ; $4ddd: $b2
    ld e, [hl]                                    ; $4dde: $5e
    ld [hl], h                                    ; $4ddf: $74
    sbc e                                         ; $4de0: $9b
    ld l, c                                       ; $4de1: $69
    or a                                          ; $4de2: $b7
    ld l, l                                       ; $4de3: $6d
    nop                                           ; $4de4: $00
    cp $c1                                        ; $4de5: $fe $c1
    cp $b6                                        ; $4de7: $fe $b6
    ret                                           ; $4de9: $c9


    ld e, d                                       ; $4dea: $5a
    add c                                         ; $4deb: $81
    and [hl]                                      ; $4dec: $a6
    nop                                           ; $4ded: $00
    pop de                                        ; $4dee: $d1
    call Call_0a5_65f3                            ; $4def: $cd $f3 $65
    sbc [hl]                                      ; $4df2: $9e
    sbc d                                         ; $4df3: $9a
    inc c                                         ; $4df4: $0c
    ld [hl], l                                    ; $4df5: $75
    nop                                           ; $4df6: $00
    adc [hl]                                      ; $4df7: $8e
    adc c                                         ; $4df8: $89
    di                                            ; $4df9: $f3
    ld [hl], l                                    ; $4dfa: $75
    and d                                         ; $4dfb: $a2
    cp [hl]                                       ; $4dfc: $be
    jr nz, jr_0a5_4e58                            ; $4dfd: $20 $59

    nop                                           ; $4dff: $00
    cp h                                          ; $4e00: $bc
    or e                                          ; $4e01: $b3
    call z, $c708                                 ; $4e02: $cc $08 $c7
    jp c, $f445                                   ; $4e05: $da $45 $f4

    nop                                           ; $4e08: $00
    ld c, b                                       ; $4e09: $48
    ld [hl], a                                    ; $4e0a: $77
    ld hl, sp-$76                                 ; $4e0b: $f8 $8a
    rst $00                                       ; $4e0d: $c7
    sbc l                                         ; $4e0e: $9d
    ld b, e                                       ; $4e0f: $43
    ld a, b                                       ; $4e10: $78
    nop                                           ; $4e11: $00
    add l                                         ; $4e12: $85
    or e                                          ; $4e13: $b3
    ld sp, hl                                     ; $4e14: $f9
    ld b, [hl]                                    ; $4e15: $46
    sbc c                                         ; $4e16: $99
    or a                                          ; $4e17: $b7
    rra                                           ; $4e18: $1f
    ld [$1100], a                                 ; $4e19: $ea $00 $11
    rla                                           ; $4e1c: $17
    pop hl                                        ; $4e1d: $e1
    call c, $1ae3                                 ; $4e1e: $dc $e3 $1a
    db $e4                                        ; $4e21: $e4
    ld c, d                                       ; $4e22: $4a
    rrca                                          ; $4e23: $0f
    sbc h                                         ; $4e24: $9c
    cp l                                          ; $4e25: $bd
    ld [de], a                                    ; $4e26: $12
    sbc a                                         ; $4e27: $9f
    ld a, h                                       ; $4e28: $7c
    ld bc, $5804                                  ; $4e29: $01 $04 $58
    ld [bc], a                                    ; $4e2c: $02
    ld [$3814], sp                                ; $4e2d: $08 $14 $38
    nop                                           ; $4e30: $00
    ld [c], a                                     ; $4e31: $e2
    ld de, $a157                                  ; $4e32: $11 $57 $a1
    call c, $fde3                                 ; $4e35: $dc $e3 $fd
    ld [hl+], a                                   ; $4e38: $22

jr_0a5_4e39:
    nop                                           ; $4e39: $00
    adc d                                         ; $4e3a: $8a
    ld a, h                                       ; $4e3b: $7c
    dec [hl]                                      ; $4e3c: $35
    call z, $84cb                                 ; $4e3d: $cc $cb $84
    cp h                                          ; $4e40: $bc
    rst $00                                       ; $4e41: $c7
    nop                                           ; $4e42: $00
    ld [bc], a                                    ; $4e43: $02
    db $fd                                        ; $4e44: $fd
    dec b                                         ; $4e45: $05
    sbc b                                         ; $4e46: $98
    rst $30                                       ; $4e47: $f7
    adc b                                         ; $4e48: $88
    ld [hl], h                                    ; $4e49: $74
    rst $08                                       ; $4e4a: $cf
    nop                                           ; $4e4b: $00
    adc l                                         ; $4e4c: $8d

jr_0a5_4e4d:
    ld a, [hl]                                    ; $4e4d: $7e
    jp nc, $a924                                  ; $4e4e: $d2 $24 $a9

    ld b, h                                       ; $4e51: $44
    dec de                                        ; $4e52: $1b
    db $e4                                        ; $4e53: $e4
    nop                                           ; $4e54: $00
    ld l, c                                       ; $4e55: $69
    or a                                          ; $4e56: $b7
    or l                                          ; $4e57: $b5

jr_0a5_4e58:
    jr jr_0a5_4e4d                                ; $4e58: $18 $f3

    jr jr_0a5_4eb2                                ; $4e5a: $18 $56

    cp c                                          ; $4e5c: $b9
    nop                                           ; $4e5d: $00
    sbc b                                         ; $4e5e: $98
    rst $20                                       ; $4e5f: $e7
    ld b, a                                       ; $4e60: $47
    ld [c], a                                     ; $4e61: $e2
    ld e, a                                       ; $4e62: $5f
    or d                                          ; $4e63: $b2
    xor l                                         ; $4e64: $ad
    ld e, $00                                     ; $4e65: $1e $00
    ld [$7217], a                                 ; $4e67: $ea $17 $72
    add c                                         ; $4e6a: $81
    xor [hl]                                      ; $4e6b: $ae
    pop de                                        ; $4e6c: $d1
    ld c, h                                       ; $4e6d: $4c
    cp $00                                        ; $4e6e: $fe $00
    ld d, c                                       ; $4e70: $51
    and d                                         ; $4e71: $a2
    ld e, l                                       ; $4e72: $5d
    ld [hl+], a                                   ; $4e73: $22
    db $ec                                        ; $4e74: $ec
    rra                                           ; $4e75: $1f
    ld d, e                                       ; $4e76: $53
    cp a                                          ; $4e77: $bf
    ld [$885c], a                                 ; $4e78: $ea $5c $88
    ldh a, [$39]                                  ; $4e7b: $f0 $39
    db $fc                                        ; $4e7d: $fc
    add hl, bc                                    ; $4e7e: $09
    rlca                                          ; $4e7f: $07
    ld [$8a12], sp                                ; $4e80: $08 $12 $8a
    db $10                                        ; $4e83: $10
    ld [bc], a                                    ; $4e84: $02
    add b                                         ; $4e85: $80
    add b                                         ; $4e86: $80
    db $fc                                        ; $4e87: $fc
    ld [bc], a                                    ; $4e88: $02
    ld h, l                                       ; $4e89: $65
    di                                            ; $4e8a: $f3
    inc e                                         ; $4e8b: $1c
    di                                            ; $4e8c: $f3
    ld e, c                                       ; $4e8d: $59
    sub a                                         ; $4e8e: $97
    and h                                         ; $4e8f: $a4
    nop                                           ; $4e90: $00
    add hl, de                                    ; $4e91: $19
    db $eb                                        ; $4e92: $eb
    ld de, $b16f                                  ; $4e93: $11 $6f $b1
    call z, Call_0a5_74fb                         ; $4e96: $cc $fb $74
    nop                                           ; $4e99: $00
    adc $89                                       ; $4e9a: $ce $89
    call nz, $c43f                                ; $4e9c: $c4 $3f $c4
    or h                                          ; $4e9f: $b4
    rst $38                                       ; $4ea0: $ff
    inc h                                         ; $4ea1: $24
    nop                                           ; $4ea2: $00
    sbc [hl]                                      ; $4ea3: $9e
    and c                                         ; $4ea4: $a1
    ld [de], a                                    ; $4ea5: $12
    call nc, $be23                                ; $4ea6: $d4 $23 $be
    ld h, e                                       ; $4ea9: $63
    ld c, l                                       ; $4eaa: $4d
    nop                                           ; $4eab: $00
    rst $38                                       ; $4eac: $ff
    ld b, [hl]                                    ; $4ead: $46
    sbc c                                         ; $4eae: $99
    ld [c], a                                     ; $4eaf: $e2
    sub c                                         ; $4eb0: $91
    ld l, [hl]                                    ; $4eb1: $6e

jr_0a5_4eb2:
    pop af                                        ; $4eb2: $f1
    xor b                                         ; $4eb3: $a8
    nop                                           ; $4eb4: $00
    rst $18                                       ; $4eb5: $df
    ld d, b                                       ; $4eb6: $50
    adc a                                         ; $4eb7: $8f
    inc hl                                        ; $4eb8: $23
    sbc h                                         ; $4eb9: $9c
    ld h, d                                       ; $4eba: $62
    sbc l                                         ; $4ebb: $9d
    ld [$f700], sp                                ; $4ebc: $08 $00 $f7
    sbc [hl]                                      ; $4ebf: $9e
    ld h, e                                       ; $4ec0: $63
    sub e                                         ; $4ec1: $93
    ld l, a                                       ; $4ec2: $6f
    sub d                                         ; $4ec3: $92
    ld l, a                                       ; $4ec4: $6f
    jp z, Jump_000_3f00                           ; $4ec5: $ca $00 $3f

    cp $1f                                        ; $4ec8: $fe $1f
    ld a, $d1                                     ; $4eca: $3e $d1
    cp b                                          ; $4ecc: $b8
    ld h, a                                       ; $4ecd: $67
    ld [hl], l                                    ; $4ece: $75
    nop                                           ; $4ecf: $00
    rst $28                                       ; $4ed0: $ef
    ld a, d                                       ; $4ed1: $7a
    add l                                         ; $4ed2: $85
    sub c                                         ; $4ed3: $91
    rrca                                          ; $4ed4: $0f
    ld hl, $c21f                                  ; $4ed5: $21 $1f $c2
    nop                                           ; $4ed8: $00
    ccf                                           ; $4ed9: $3f
    and l                                         ; $4eda: $a5
    ld e, a                                       ; $4edb: $5f
    jp $85bf                                      ; $4edc: $c3 $bf $85


    rst $38                                       ; $4edf: $ff
    ld c, e                                       ; $4ee0: $4b
    nop                                           ; $4ee1: $00
    cp a                                          ; $4ee2: $bf
    add a                                         ; $4ee3: $87
    ld a, a                                       ; $4ee4: $7f
    adc e                                         ; $4ee5: $8b
    rst $38                                       ; $4ee6: $ff
    add a                                         ; $4ee7: $87
    ld a, a                                       ; $4ee8: $7f
    rrca                                          ; $4ee9: $0f
    ld [$97ff], sp                                ; $4eea: $08 $ff $97
    ld a, a                                       ; $4eed: $7f
    adc a                                         ; $4eee: $8f
    add sp, $00                                   ; $4eef: $e8 $00
    xor a                                         ; $4ef1: $af
    rst $38                                       ; $4ef2: $ff
    xor [hl]                                      ; $4ef3: $ae
    nop                                           ; $4ef4: $00
    ld a, a                                       ; $4ef5: $7f
    ld a, [c]                                     ; $4ef6: $f2
    ld a, a                                       ; $4ef7: $7f
    ld b, l                                       ; $4ef8: $45
    rst $38                                       ; $4ef9: $ff
    ld a, [bc]                                    ; $4efa: $0a
    rst $38                                       ; $4efb: $ff
    ld d, l                                       ; $4efc: $55
    nop                                           ; $4efd: $00
    rst $38                                       ; $4efe: $ff
    xor d                                         ; $4eff: $aa
    ld a, a                                       ; $4f00: $7f
    rst $10                                       ; $4f01: $d7
    ld a, a                                       ; $4f02: $7f
    dec l                                         ; $4f03: $2d
    cp h                                          ; $4f04: $bc
    sbc d                                         ; $4f05: $9a
    nop                                           ; $4f06: $00
    ld e, c                                       ; $4f07: $59
    db $ed                                        ; $4f08: $ed
    ld b, e                                       ; $4f09: $43
    db $db                                        ; $4f0a: $db
    ld b, a                                       ; $4f0b: $47
    ld d, l                                       ; $4f0c: $55
    rst $08                                       ; $4f0d: $cf
    ld e, a                                       ; $4f0e: $5f
    nop                                           ; $4f0f: $00
    rr d                                          ; $4f10: $cb $1a
    rst $00                                       ; $4f12: $c7
    adc l                                         ; $4f13: $8d
    ld b, a                                       ; $4f14: $47
    or [hl]                                       ; $4f15: $b6
    ld c, a                                       ; $4f16: $4f
    call $ff00                                    ; $4f17: $cd $00 $ff
    cp $7d                                        ; $4f1a: $fe $7d
    dec a                                         ; $4f1c: $3d
    cp d                                          ; $4f1d: $ba
    and [hl]                                      ; $4f1e: $a6
    reti                                          ; $4f1f: $d9


    db $db                                        ; $4f20: $db
    nop                                           ; $4f21: $00
    ldh a, [$75]                                  ; $4f22: $f0 $75
    ldh [$a8], a                                  ; $4f24: $e0 $a8
    ld h, c                                       ; $4f26: $61
    ld d, b                                       ; $4f27: $50
    db $e3                                        ; $4f28: $e3
    ld h, e                                       ; $4f29: $63
    nop                                           ; $4f2a: $00
    rst $08                                       ; $4f2b: $cf
    ld a, d                                       ; $4f2c: $7a
    pop bc                                        ; $4f2d: $c1
    ld e, l                                       ; $4f2e: $5d
    db $e3                                        ; $4f2f: $e3
    ld c, [hl]                                    ; $4f30: $4e

jr_0a5_4f31:
    pop af                                        ; $4f31: $f1
    ld h, d                                       ; $4f32: $62
    nop                                           ; $4f33: $00
    db $fd                                        ; $4f34: $fd
    ld a, c                                       ; $4f35: $79
    cp a                                          ; $4f36: $bf
    ld a, a                                       ; $4f37: $7f
    sbc a                                         ; $4f38: $9f
    ld d, l                                       ; $4f39: $55
    cp a                                          ; $4f3a: $bf
    dec e                                         ; $4f3b: $1d
    ld [bc], a                                    ; $4f3c: $02
    jp z, $94ba                                   ; $4f3d: $ca $ba $94

    ld a, c                                       ; $4f40: $79
    db $e4                                        ; $4f41: $e4
    ei                                            ; $4f42: $fb
    ld d, d                                       ; $4f43: $52
    inc b                                         ; $4f44: $04
    add b                                         ; $4f45: $80
    add b                                         ; $4f46: $80
    ret z                                         ; $4f47: $c8

    dec d                                         ; $4f48: $15
    and b                                         ; $4f49: $a0
    ld de, $0cff                                  ; $4f4a: $11 $ff $0c
    ld b, d                                       ; $4f4d: $42
    rst $38                                       ; $4f4e: $ff
    ld bc, $8360                                  ; $4f4f: $01 $60 $83
    rst $38                                       ; $4f52: $ff
    pop bc                                        ; $4f53: $c1
    cp a                                          ; $4f54: $bf
    inc b                                         ; $4f55: $04
    ld c, b                                       ; $4f56: $48
    nop                                           ; $4f57: $00
    ld [bc], a                                    ; $4f58: $02
    rst $38                                       ; $4f59: $ff
    ld de, $aaee                                  ; $4f5a: $11 $ee $aa
    ld b, c                                       ; $4f5d: $41
    nop                                           ; $4f5e: $00
    daa                                           ; $4f5f: $27

jr_0a5_4f60:
    nop                                           ; $4f60: $00
    or b                                          ; $4f61: $b0
    nop                                           ; $4f62: $00
    ld e, a                                       ; $4f63: $5f
    ld c, b                                       ; $4f64: $48
    rra                                           ; $4f65: $1f
    ld [hl-], a                                   ; $4f66: $32
    db $dd                                        ; $4f67: $dd
    or b                                          ; $4f68: $b0
    ld a, a                                       ; $4f69: $7f
    ld d, c                                       ; $4f6a: $51
    nop                                           ; $4f6b: $00
    ld a, $a0                                     ; $4f6c: $3e $a0
    ccf                                           ; $4f6e: $3f
    ld d, b                                       ; $4f6f: $50
    cp a                                          ; $4f70: $bf
    db $eb                                        ; $4f71: $eb
    rst $38                                       ; $4f72: $ff
    dec b                                         ; $4f73: $05
    nop                                           ; $4f74: $00
    ei                                            ; $4f75: $fb
    xor e                                         ; $4f76: $ab
    ld b, c                                       ; $4f77: $41
    ld d, l                                       ; $4f78: $55
    xor c                                         ; $4f79: $a9
    ld [de], a                                    ; $4f7a: $12
    db $ed                                        ; $4f7b: $ed
    ld b, l                                       ; $4f7c: $45
    db $10                                        ; $4f7d: $10
    cp b                                          ; $4f7e: $b8
    jr nz, jr_0a5_4f60                            ; $4f7f: $20 $df

    jr nz, jr_0a5_4f8b                            ; $4f81: $20 $08

    add h                                         ; $4f83: $84
    ei                                            ; $4f84: $fb
    xor e                                         ; $4f85: $ab
    pop de                                        ; $4f86: $d1

jr_0a5_4f87:
    nop                                           ; $4f87: $00
    add l                                         ; $4f88: $85
    ld sp, hl                                     ; $4f89: $f9
    ld e, b                                       ; $4f8a: $58

jr_0a5_4f8b:
    cp a                                          ; $4f8b: $bf
    db $fd                                        ; $4f8c: $fd
    rst $38                                       ; $4f8d: $ff
    nop                                           ; $4f8e: $00
    rst $38                                       ; $4f8f: $ff
    inc b                                         ; $4f90: $04
    adc d                                         ; $4f91: $8a
    db $f4                                        ; $4f92: $f4
    ld de, $80ee                                  ; $4f93: $11 $ee $80
    ld e, e                                       ; $4f96: $5b
    nop                                           ; $4f97: $00
    ld [c], a                                     ; $4f98: $e2
    ld a, l                                       ; $4f99: $7d
    nop                                           ; $4f9a: $00
    inc bc                                        ; $4f9b: $03
    db $fd                                        ; $4f9c: $fd
    ld a, a                                       ; $4f9d: $7f
    rst $38                                       ; $4f9e: $ff
    ld l, b                                       ; $4f9f: $68
    sbc a                                         ; $4fa0: $9f
    ld a, [c]                                     ; $4fa1: $f2
    dec e                                         ; $4fa2: $1d
    nop                                           ; $4fa3: $00
    ld c, b                                       ; $4fa4: $48
    sbc a                                         ; $4fa5: $9f
    jr nc, jr_0a5_4f87                            ; $4fa6: $30 $df

    rst $28                                       ; $4fa8: $ef
    rst $38                                       ; $4fa9: $ff
    ret nz                                        ; $4faa: $c0

    ld a, a                                       ; $4fab: $7f
    jr nz, jr_0a5_4f31                            ; $4fac: $20 $83

    db $fd                                        ; $4fae: $fd
    ld c, d                                       ; $4faf: $4a
    nop                                           ; $4fb0: $00
    ld a, a                                       ; $4fb1: $7f
    ld [hl], b                                    ; $4fb2: $70
    ccf                                           ; $4fb3: $3f
    and c                                         ; $4fb4: $a1
    ld a, $80                                     ; $4fb5: $3e $80
    ld b, h                                       ; $4fb7: $44
    ld [$d12b], sp                                ; $4fb8: $08 $2b $d1
    ld [hl], l                                    ; $4fbb: $75
    ld l, d                                       ; $4fbc: $6a
    and b                                         ; $4fbd: $a0
    ld a, a                                       ; $4fbe: $7f
    ld b, b                                       ; $4fbf: $40
    add b                                         ; $4fc0: $80
    add l                                         ; $4fc1: $85
    nop                                           ; $4fc2: $00
    inc e                                         ; $4fc3: $1c
    rst $28                                       ; $4fc4: $ef
    and h                                         ; $4fc5: $a4
    ld c, a                                       ; $4fc6: $4f
    ld e, b                                       ; $4fc7: $58
    adc a                                         ; $4fc8: $8f
    and h                                         ; $4fc9: $a4
    ld [bc], a                                    ; $4fca: $02
    ld c, a                                       ; $4fcb: $4f
    dec h                                         ; $4fcc: $25
    ld a, d                                       ; $4fcd: $7a
    ret nz                                        ; $4fce: $c0

    ld a, a                                       ; $4fcf: $7f
    ld h, b                                       ; $4fd0: $60
    sub l                                         ; $4fd1: $95
    nop                                           ; $4fd2: $00
    rla                                           ; $4fd3: $17
    nop                                           ; $4fd4: $00
    db $e3                                        ; $4fd5: $e3
    xor e                                         ; $4fd6: $ab
    ld d, e                                       ; $4fd7: $53
    rlca                                          ; $4fd8: $07
    ei                                            ; $4fd9: $fb
    dec bc                                        ; $4fda: $0b
    rst $30                                       ; $4fdb: $f7
    ld d, l                                       ; $4fdc: $55
    nop                                           ; $4fdd: $00
    ld hl, $fd02                                  ; $4fde: $21 $02 $fd
    dec b                                         ; $4fe1: $05
    ei                                            ; $4fe2: $fb
    rst $38                                       ; $4fe3: $ff
    rst $38                                       ; $4fe4: $ff
    ld a, [bc]                                    ; $4fe5: $0a
    nop                                           ; $4fe6: $00
    rst $30                                       ; $4fe7: $f7
    ld d, h                                       ; $4fe8: $54
    and a                                         ; $4fe9: $a7
    ld a, [bc]                                    ; $4fea: $0a
    rst $30                                       ; $4feb: $f7
    nop                                           ; $4fec: $00
    rst $38                                       ; $4fed: $ff
    xor a                                         ; $4fee: $af
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff
    ld b, b                                       ; $4ff1: $40
    rst $38                                       ; $4ff2: $ff
    adc c                                         ; $4ff3: $89
    or $40                                        ; $4ff4: $f6 $40
    rst $38                                       ; $4ff6: $ff
    add b                                         ; $4ff7: $80
    nop                                           ; $4ff8: $00
    rst $38                                       ; $4ff9: $ff
    db $fd                                        ; $4ffa: $fd
    rst $38                                       ; $4ffb: $ff
    ld a, [hl-]                                   ; $4ffc: $3a
    db $dd                                        ; $4ffd: $dd
    ld d, b                                       ; $4ffe: $50
    cp a                                          ; $4fff: $bf
    push af                                       ; $5000: $f5

Call_0a5_5001:
    nop                                           ; $5001: $00
    rst $38                                       ; $5002: $ff
    xor b                                         ; $5003: $a8
    rra                                           ; $5004: $1f
    ld d, b                                       ; $5005: $50
    sbc a                                         ; $5006: $9f
    xor d                                         ; $5007: $aa
    ld e, l                                       ; $5008: $5d
    stop                                          ; $5009: $10 $00
    rst $38                                       ; $500b: $ff
    ld a, d                                       ; $500c: $7a
    rst $38                                       ; $500d: $ff
    xor e                                         ; $500e: $ab
    ld b, c                                       ; $500f: $41
    dec d                                         ; $5010: $15
    jp hl                                         ; $5011: $e9


    ld d, a                                       ; $5012: $57
    add h                                         ; $5013: $84
    ld d, h                                       ; $5014: $54
    nop                                           ; $5015: $00
    inc d                                         ; $5016: $14
    jp hl                                         ; $5017: $e9


    and e                                         ; $5018: $a3
    ld e, l                                       ; $5019: $5d

jr_0a5_501a:
    or d                                          ; $501a: $b2
    ld [$f708], sp                                ; $501b: $08 $08 $f7
    nop                                           ; $501e: $00
    add l                                         ; $501f: $85
    ld a, [$c03f]                                 ; $5020: $fa $3f $c0
    sbc d                                         ; $5023: $9a
    db $fd                                        ; $5024: $fd
    dec h                                         ; $5025: $25
    ret nz                                        ; $5026: $c0

    nop                                           ; $5027: $00
    sub h                                         ; $5028: $94
    db $eb                                        ; $5029: $eb
    add hl, hl                                    ; $502a: $29
    add $bb                                       ; $502b: $c6 $bb

Jump_0a5_502d:
    ret nz                                        ; $502d: $c0

    inc c                                         ; $502e: $0c
    rst $38                                       ; $502f: $ff
    nop                                           ; $5030: $00
    or e                                          ; $5031: $b3
    ret nz                                        ; $5032: $c0

    db $ec                                        ; $5033: $ec
    nop                                           ; $5034: $00
    cp d                                          ; $5035: $ba
    push bc                                       ; $5036: $c5
    push af                                       ; $5037: $f5
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    or l                                          ; $503a: $b5
    ld c, d                                       ; $503b: $4a
    ld c, d                                       ; $503c: $4a
    or c                                          ; $503d: $b1
    dec [hl]                                      ; $503e: $35
    nop                                           ; $503f: $00
    and d                                         ; $5040: $a2

jr_0a5_5041:
    rst $18                                       ; $5041: $df
    nop                                           ; $5042: $00
    ld b, d                                       ; $5043: $42
    nop                                           ; $5044: $00
    push de                                       ; $5045: $d5
    nop                                           ; $5046: $00
    ld h, a                                       ; $5047: $67
    ld hl, sp-$47                                 ; $5048: $f8 $b9
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    adc d                                         ; $504c: $8a
    ld [hl], l                                    ; $504d: $75
    push de                                       ; $504e: $d5
    ld a, [hl+]                                   ; $504f: $2a
    ld d, d                                       ; $5050: $52
    nop                                           ; $5051: $00
    db $f4                                        ; $5052: $f4
    dec bc                                        ; $5053: $0b
    nop                                           ; $5054: $00
    db $dd                                        ; $5055: $dd
    nop                                           ; $5056: $00
    ld c, d                                       ; $5057: $4a
    nop                                           ; $5058: $00
    ld c, d                                       ; $5059: $4a
    push af                                       ; $505a: $f5
    db $dd                                        ; $505b: $dd
    nop                                           ; $505c: $00
    nop                                           ; $505d: $00
    pop de                                        ; $505e: $d1
    ld l, $5a                                     ; $505f: $2e $5a
    dec b                                         ; $5061: $05
    cp a                                          ; $5062: $bf
    nop                                           ; $5063: $00
    xor c                                         ; $5064: $a9
    or $00                                        ; $5065: $f6 $00
    sub h                                         ; $5067: $94
    nop                                           ; $5068: $00
    rla                                           ; $5069: $17
    add sp, -$57                                  ; $506a: $e8 $a9
    sub $26                                       ; $506c: $d6 $26
    ret nz                                        ; $506e: $c0

    jr nz, jr_0a5_501a                            ; $506f: $20 $a9

    cp $44                                        ; $5071: $fe $44
    jr @-$7e                                      ; $5073: $18 $80

    ret nz                                        ; $5075: $c0

    or e                                          ; $5076: $b3
    ld c, h                                       ; $5077: $4c
    ld d, l                                       ; $5078: $55
    inc b                                         ; $5079: $04
    and d                                         ; $507a: $a2
    ld h, d                                       ; $507b: $62
    nop                                           ; $507c: $00
    ld [hl], d                                    ; $507d: $72
    db $fd                                        ; $507e: $fd
    ld b, h                                       ; $507f: $44
    jr jr_0a5_5082                                ; $5080: $18 $00

jr_0a5_5082:
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    ld a, [hl+]                                   ; $5084: $2a
    call nc, Call_000_2855                        ; $5085: $d4 $55 $28
    xor [hl]                                      ; $5088: $ae
    nop                                           ; $5089: $00
    and d                                         ; $508a: $a2
    ld a, l                                       ; $508b: $7d
    add b                                         ; $508c: $80
    ld b, h                                       ; $508d: $44
    jr jr_0a5_5090                                ; $508e: $18 $00

jr_0a5_5090:
    nop                                           ; $5090: $00
    call nc, $ab2b                                ; $5091: $d4 $2b $ab
    ld d, h                                       ; $5094: $54
    ld l, l                                       ; $5095: $6d
    stop                                          ; $5096: $10 $00
    ld d, c                                       ; $5098: $51
    cp a                                          ; $5099: $bf
    ld b, h                                       ; $509a: $44
    jr jr_0a5_509d                                ; $509b: $18 $00

jr_0a5_509d:
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    rst $38                                       ; $509f: $ff
    ld [$ff7f], sp                                ; $50a0: $08 $7f $ff
    ld a, c                                       ; $50a3: $79
    ld sp, hl                                     ; $50a4: $f9
    ld [bc], a                                    ; $50a5: $02
    nop                                           ; $50a6: $00
    rst $38                                       ; $50a7: $ff
    ld c, b                                       ; $50a8: $48
    rst $08                                       ; $50a9: $cf
    inc c                                         ; $50aa: $0c
    ld a, c                                       ; $50ab: $79
    ret                                           ; $50ac: $c9


    ld [hl], c                                    ; $50ad: $71
    ret                                           ; $50ae: $c9


    ld c, d                                       ; $50af: $4a
    add hl, bc                                    ; $50b0: $09
    ld [hl], h                                    ; $50b1: $74
    ld bc, $ff3f                                  ; $50b2: $01 $3f $ff
    ld bc, $ea3f                                  ; $50b5: $01 $3f $ea
    ccf                                           ; $50b8: $3f
    db $e3                                        ; $50b9: $e3
    inc hl                                        ; $50ba: $23
    db $dd                                        ; $50bb: $dd
    inc hl                                        ; $50bc: $23
    db $10                                        ; $50bd: $10
    jr nz, jr_0a5_5041                            ; $50be: $20 $81

    add a                                         ; $50c0: $87
    ld bc, $ffaa                                  ; $50c1: $01 $aa $ff
    db $fc                                        ; $50c4: $fc
    db $fc                                        ; $50c5: $fc
    ld d, a                                       ; $50c6: $57
    db $fc                                        ; $50c7: $fc
    jr nz, jr_0a5_50da                            ; $50c8: $20 $10

    nop                                           ; $50ca: $00
    db $fc                                        ; $50cb: $fc
    rst $38                                       ; $50cc: $ff
    db $e4                                        ; $50cd: $e4
    db $e4                                        ; $50ce: $e4
    rst $38                                       ; $50cf: $ff
    cp h                                          ; $50d0: $bc
    rst $20                                       ; $50d1: $e7
    ccf                                           ; $50d2: $3f
    ld bc, $fb24                                  ; $50d3: $01 $24 $fb
    inc h                                         ; $50d6: $24
    ld c, b                                       ; $50d7: $48
    ret                                           ; $50d8: $c9


    ld b, b                                       ; $50d9: $40

jr_0a5_50da:
    ret                                           ; $50da: $c9


    inc b                                         ; $50db: $04
    nop                                           ; $50dc: $00
    ld [$50ff], sp                                ; $50dd: $08 $ff $50
    ldh [$7f], a                                  ; $50e0: $e0 $7f
    ld c, d                                       ; $50e2: $4a
    nop                                           ; $50e3: $00
    ld a, a                                       ; $50e4: $7f
    ld sp, hl                                     ; $50e5: $f9
    ld [c], a                                     ; $50e6: $e2
    ld c, $23                                     ; $50e7: $0e $23
    ret nz                                        ; $50e9: $c0

    inc hl                                        ; $50ea: $23
    ld [c], a                                     ; $50eb: $e2
    ld [hl], $00                                  ; $50ec: $36 $00
    ld e, c                                       ; $50ee: $59
    nop                                           ; $50ef: $00
    cp e                                          ; $50f0: $bb
    ld de, $18a8                                  ; $50f1: $11 $a8 $18
    db $fc                                        ; $50f4: $fc
    nop                                           ; $50f5: $00
    db $fc                                        ; $50f6: $fc
    inc b                                         ; $50f7: $04
    nop                                           ; $50f8: $00
    db $10                                        ; $50f9: $10
    jr nz, jr_0a5_513b                            ; $50fa: $20 $3f

    ccf                                           ; $50fc: $3f
    rra                                           ; $50fd: $1f
    inc b                                         ; $50fe: $04
    inc h                                         ; $50ff: $24
    dec de                                        ; $5100: $1b
    inc h                                         ; $5101: $24
    rra                                           ; $5102: $1f
    inc h                                         ; $5103: $24
    jr nz, jr_0a5_512e                            ; $5104: $20 $28

    rst $08                                       ; $5106: $cf
    rst $08                                       ; $5107: $cf
    nop                                           ; $5108: $00
    db $fc                                        ; $5109: $fc
    inc bc                                        ; $510a: $03
    sub l                                         ; $510b: $95
    ld a, a                                       ; $510c: $7f
    call c, Call_0a5_5503                         ; $510d: $dc $03 $55
    xor e                                         ; $5110: $ab
    nop                                           ; $5111: $00
    xor h                                         ; $5112: $ac
    ld b, e                                       ; $5113: $43
    db $fd                                        ; $5114: $fd
    inc bc                                        ; $5115: $03
    jr @+$01                                      ; $5116: $18 $ff

    and l                                         ; $5118: $a5
    inc bc                                        ; $5119: $03
    nop                                           ; $511a: $00
    or [hl]                                       ; $511b: $b6
    ld a, h                                       ; $511c: $7c
    ld d, [hl]                                    ; $511d: $56
    inc a                                         ; $511e: $3c
    and [hl]                                      ; $511f: $a6
    inc a                                         ; $5120: $3c
    ld d, [hl]                                    ; $5121: $56
    cp h                                          ; $5122: $bc
    nop                                           ; $5123: $00
    xor $fc                                       ; $5124: $ee $fc
    ld b, $fc                                     ; $5126: $06 $fc
    and [hl]                                      ; $5128: $a6
    ld c, h                                       ; $5129: $4c
    ld d, [hl]                                    ; $512a: $56
    xor h                                         ; $512b: $ac
    nop                                           ; $512c: $00
    rst $38                                       ; $512d: $ff

jr_0a5_512e:
    nop                                           ; $512e: $00
    rst $30                                       ; $512f: $f7
    rrca                                          ; $5130: $0f
    cp b                                          ; $5131: $b8
    ld a, a                                       ; $5132: $7f
    and $f9                                       ; $5133: $e6 $f9
    inc b                                         ; $5135: $04
    or c                                          ; $5136: $b1
    rst $08                                       ; $5137: $cf
    ld c, e                                       ; $5138: $4b
    cp a                                          ; $5139: $bf
    rra                                           ; $513a: $1f

jr_0a5_513b:
    xor h                                         ; $513b: $ac
    nop                                           ; $513c: $00
    add h                                         ; $513d: $84
    ld a, e                                       ; $513e: $7b
    ld [bc], a                                    ; $513f: $02
    ld c, l                                       ; $5140: $4d
    or e                                          ; $5141: $b3
    ld [hl], h                                    ; $5142: $74
    inc bc                                        ; $5143: $03
    ld d, c                                       ; $5144: $51
    cp a                                          ; $5145: $bf
    inc [hl]                                      ; $5146: $34
    jr jr_0a5_514a                                ; $5147: $18 $01

    nop                                           ; $5149: $00

jr_0a5_514a:
    inc bc                                        ; $514a: $03
    ld b, $fc                                     ; $514b: $06 $fc
    ld a, [hl]                                    ; $514d: $7e
    db $fc                                        ; $514e: $fc
    ld l, [hl]                                    ; $514f: $6e
    sbc h                                         ; $5150: $9c
    or $00                                        ; $5151: $f6 $00
    inc e                                         ; $5153: $1c
    ld c, [hl]                                    ; $5154: $4e
    sbc h                                         ; $5155: $9c
    ld [hl], $dc                                  ; $5156: $36 $dc
    xor $fc                                       ; $5158: $ee $fc
    add $40                                       ; $515a: $c6 $40
    ld a, h                                       ; $515c: $7c
    jr nc, @+$2c                                  ; $515d: $30 $2a

    or $f9                                        ; $515f: $f6 $f9
    ld sp, hl                                     ; $5161: $f9
    or $ed                                        ; $5162: $f6 $ed
    ld a, [c]                                     ; $5164: $f2
    inc b                                         ; $5165: $04
    rst $28                                       ; $5166: $ef
    ldh a, [rP1]                                  ; $5167: $f0 $00
    rst $38                                       ; $5169: $ff
    cp $02                                        ; $516a: $fe $02
    nop                                           ; $516c: $00
    ld a, [c]                                     ; $516d: $f2
    di                                            ; $516e: $f3
    nop                                           ; $516f: $00
    ld a, [c]                                     ; $5170: $f2
    di                                            ; $5171: $f3
    ld [hl], d                                    ; $5172: $72
    sbc a                                         ; $5173: $9f
    jp nc, $a2bf                                  ; $5174: $d2 $bf $a2

    db $d3                                        ; $5177: $d3
    nop                                           ; $5178: $00
    ld h, $7c                                     ; $5179: $26 $7c
    add $7c                                       ; $517b: $c6 $7c
    ld h, [hl]                                    ; $517d: $66
    db $fc                                        ; $517e: $fc
    cp $fc                                        ; $517f: $fe $fc
    nop                                           ; $5181: $00
    ld d, $e4                                     ; $5182: $16 $e4
    xor [hl]                                      ; $5184: $ae

jr_0a5_5185:
    ld d, h                                       ; $5185: $54
    ld b, $fc                                     ; $5186: $06 $fc
    ld c, $f4                                     ; $5188: $0e $f4
    inc c                                         ; $518a: $0c
    rst $00                                       ; $518b: $c7
    ld hl, sp-$45                                 ; $518c: $f8 $bb
    call nz, Call_000_0211                        ; $518e: $c4 $11 $02
    or c                                          ; $5191: $b1
    nop                                           ; $5192: $00
    ccf                                           ; $5193: $3f
    ret nz                                        ; $5194: $c0

    nop                                           ; $5195: $00
    ld c, a                                       ; $5196: $4f
    or b                                          ; $5197: $b0
    or e                                          ; $5198: $b3
    call z, $b352                                 ; $5199: $cc $52 $b3
    ld h, d                                       ; $519c: $62
    sub e                                         ; $519d: $93
    ld [bc], a                                    ; $519e: $02
    ld [hl], d                                    ; $519f: $72
    sub e                                         ; $51a0: $93
    ld [bc], a                                    ; $51a1: $02
    rst $38                                       ; $51a2: $ff
    ld a, [bc]                                    ; $51a3: $0a
    rlca                                          ; $51a4: $07
    jr c, jr_0a5_51af                             ; $51a5: $38 $08

    cp $00                                        ; $51a7: $fe $00
    sbc a                                         ; $51a9: $9f
    or $fc                                        ; $51aa: $f6 $fc
    xor [hl]                                      ; $51ac: $ae
    inc e                                         ; $51ad: $1c
    ld d, [hl]                                    ; $51ae: $56

jr_0a5_51af:
    sbc h                                         ; $51af: $9c
    xor [hl]                                      ; $51b0: $ae
    jr nz, jr_0a5_520f                            ; $51b1: $20 $5c

    ld d, $68                                     ; $51b3: $16 $68
    nop                                           ; $51b5: $00
    xor [hl]                                      ; $51b6: $ae
    ld b, h                                       ; $51b7: $44
    ld d, $ec                                     ; $51b8: $16 $ec
    db $dd                                        ; $51ba: $dd
    nop                                           ; $51bb: $00
    ld [c], a                                     ; $51bc: $e2
    xor $f1                                       ; $51bd: $ee $f1
    rst $30                                       ; $51bf: $f7
    ld hl, sp-$05                                 ; $51c0: $f8 $fb
    db $fc                                        ; $51c2: $fc
    db $fd                                        ; $51c3: $fd
    ld b, c                                       ; $51c4: $41
    cp $58                                        ; $51c5: $fe $58
    ld [$ffff], sp                                ; $51c7: $08 $ff $ff
    jr z, @-$1f                                   ; $51ca: $28 $df

    db $10                                        ; $51cc: $10
    and e                                         ; $51cd: $a3
    ld [bc], a                                    ; $51ce: $02
    ld bc, $7fe0                                  ; $51cf: $01 $e0 $7f
    ld l, c                                       ; $51d2: $69
    or $c0                                        ; $51d3: $f6 $c0
    ld a, a                                       ; $51d5: $7f
    jr nz, jr_0a5_5185                            ; $51d6: $20 $ad

    ld [bc], a                                    ; $51d8: $02
    nop                                           ; $51d9: $00
    inc bc                                        ; $51da: $03
    db $fd                                        ; $51db: $fd
    ld bc, $57ff                                  ; $51dc: $01 $ff $57
    rst $38                                       ; $51df: $ff
    ld a, [hl+]                                   ; $51e0: $2a
    rst $10                                       ; $51e1: $d7
    nop                                           ; $51e2: $00
    ld d, h                                       ; $51e3: $54
    adc a                                         ; $51e4: $8f
    ld a, [hl+]                                   ; $51e5: $2a
    rst $00                                       ; $51e6: $c7
    inc d                                         ; $51e7: $14
    rst $28                                       ; $51e8: $ef
    rst $38                                       ; $51e9: $ff
    rst $38                                       ; $51ea: $ff
    jr nz, @-$5c                                  ; $51eb: $20 $a2

    db $dd                                        ; $51ed: $dd
    ld l, b                                       ; $51ee: $68
    ld a, [bc]                                    ; $51ef: $0a
    ld [bc], a                                    ; $51f0: $02
    db $fd                                        ; $51f1: $fd
    dec d                                         ; $51f2: $15
    pop hl                                        ; $51f3: $e1
    xor d                                         ; $51f4: $aa
    ld b, b                                       ; $51f5: $40
    ld d, l                                       ; $51f6: $55
    jr z, jr_0a5_5203                             ; $51f7: $28 $0a

    ld l, [hl]                                    ; $51f9: $6e
    sub b                                         ; $51fa: $90
    adc $31                                       ; $51fb: $ce $31
    ei                                            ; $51fd: $fb
    ld [$6600], sp                                ; $51fe: $08 $00 $66
    ld e, c                                       ; $5201: $59
    ld l, [hl]                                    ; $5202: $6e

jr_0a5_5203:
    pop af                                        ; $5203: $f1
    xor a                                         ; $5204: $af
    ld d, d                                       ; $5205: $52
    cp [hl]                                       ; $5206: $be
    sub b                                         ; $5207: $90
    nop                                           ; $5208: $00
    dec a                                         ; $5209: $3d
    sub b                                         ; $520a: $90
    cp [hl]                                       ; $520b: $be
    nop                                           ; $520c: $00
    ei                                            ; $520d: $fb
    inc b                                         ; $520e: $04

jr_0a5_520f:
    xor [hl]                                      ; $520f: $ae
    ld e, e                                       ; $5210: $5b
    nop                                           ; $5211: $00
    ld e, l                                       ; $5212: $5d
    add [hl]                                      ; $5213: $86
    ld a, e                                       ; $5214: $7b
    xor h                                         ; $5215: $ac
    adc d                                         ; $5216: $8a
    ld c, c                                       ; $5217: $49
    sbc [hl]                                      ; $5218: $9e
    daa                                           ; $5219: $27
    nop                                           ; $521a: $00
    db $eb                                        ; $521b: $eb
    xor l                                         ; $521c: $ad
    pop hl                                        ; $521d: $e1
    ld e, $47                                     ; $521e: $1e $47
    ld h, b                                       ; $5220: $60
    push hl                                       ; $5221: $e5
    jr jr_0a5_5224                                ; $5222: $18 $00

jr_0a5_5224:
    jp hl                                         ; $5224: $e9


    rla                                           ; $5225: $17
    srl l                                         ; $5226: $cb $3d
    jp z, Jump_0a5_7011                           ; $5228: $ca $11 $70

    xor l                                         ; $522b: $ad
    nop                                           ; $522c: $00
    add l                                         ; $522d: $85
    ld a, b                                       ; $522e: $78
    and $13                                       ; $522f: $e6 $13
    ld [de], a                                    ; $5231: $12
    and h                                         ; $5232: $a4
    ld a, d                                       ; $5233: $7a
    add b                                         ; $5234: $80
    nop                                           ; $5235: $00
    db $fd                                        ; $5236: $fd
    ret nz                                        ; $5237: $c0

    ret c                                         ; $5238: $d8

    and $af                                       ; $5239: $e6 $af
    ld d, h                                       ; $523b: $54
    swap h                                        ; $523c: $cb $34
    nop                                           ; $523e: $00
    ei                                            ; $523f: $fb
    rrca                                          ; $5240: $0f
    sbc [hl]                                      ; $5241: $9e
    ld h, e                                       ; $5242: $63
    add $35                                       ; $5243: $c6 $35
    dec l                                         ; $5245: $2d
    ld d, e                                       ; $5246: $53
    nop                                           ; $5247: $00
    xor [hl]                                      ; $5248: $ae
    ld d, d                                       ; $5249: $52
    sbc c                                         ; $524a: $99
    halt                                          ; $524b: $76
    ld e, c                                       ; $524c: $59
    cp a                                          ; $524d: $bf
    add [hl]                                      ; $524e: $86
    ld l, e                                       ; $524f: $6b
    nop                                           ; $5250: $00
    sbc b                                         ; $5251: $98
    ld h, a                                       ; $5252: $67
    or e                                          ; $5253: $b3
    ld d, h                                       ; $5254: $54
    ld l, [hl]                                    ; $5255: $6e
    ld a, e                                       ; $5256: $7b
    db $ed                                        ; $5257: $ed
    add hl, bc                                    ; $5258: $09
    nop                                           ; $5259: $00
    db $ed                                        ; $525a: $ed
    ld [de], a                                    ; $525b: $12
    ld d, e                                       ; $525c: $53
    ld l, h                                       ; $525d: $6c
    sbc d                                         ; $525e: $9a
    ld d, l                                       ; $525f: $55
    scf                                           ; $5260: $37
    add c                                         ; $5261: $81
    nop                                           ; $5262: $00
    ld [$7c77], sp                                ; $5263: $08 $77 $7c
    inc bc                                        ; $5266: $03
    push de                                       ; $5267: $d5
    cp e                                          ; $5268: $bb
    db $db                                        ; $5269: $db
    ld b, $00                                     ; $526a: $06 $00
    ld a, b                                       ; $526c: $78
    rst $20                                       ; $526d: $e7
    ld d, a                                       ; $526e: $57
    xor b                                         ; $526f: $a8
    db $fd                                        ; $5270: $fd
    adc $d6                                       ; $5271: $ce $d6
    xor c                                         ; $5273: $a9
    nop                                           ; $5274: $00
    sbc d                                         ; $5275: $9a
    ld [hl], h                                    ; $5276: $74
    cp h                                          ; $5277: $bc
    ld c, d                                       ; $5278: $4a
    and e                                         ; $5279: $a3
    ld [hl], h                                    ; $527a: $74
    cp e                                          ; $527b: $bb
    ld h, b                                       ; $527c: $60
    nop                                           ; $527d: $00
    ld a, [$3603]                                 ; $527e: $fa $03 $36
    db $dd                                        ; $5281: $dd
    xor e                                         ; $5282: $ab
    ld a, h                                       ; $5283: $7c
    ld [c], a                                     ; $5284: $e2
    xor c                                         ; $5285: $a9
    nop                                           ; $5286: $00
    ld b, d                                       ; $5287: $42
    cp l                                          ; $5288: $bd
    rla                                           ; $5289: $17
    ld l, b                                       ; $528a: $68
    dec e                                         ; $528b: $1d
    xor b                                         ; $528c: $a8
    db $db                                        ; $528d: $db
    ld [$dd00], sp                                ; $528e: $08 $00 $dd
    ld [hl], $f4                                  ; $5291: $36 $f4
    dec de                                        ; $5293: $1b
    rst $08                                       ; $5294: $cf
    jr c, jr_0a5_52f2                             ; $5295: $38 $5b

    ld h, $00                                     ; $5297: $26 $00
    ld [hl], a                                    ; $5299: $77
    dec bc                                        ; $529a: $0b
    ld a, a                                       ; $529b: $7f
    ld sp, hl                                     ; $529c: $f9
    ld a, a                                       ; $529d: $7f
    ld sp, hl                                     ; $529e: $f9
    ld c, d                                       ; $529f: $4a
    rst $08                                       ; $52a0: $cf
    ld bc, $cf7d                                  ; $52a1: $01 $7d $cf
    ld [hl], a                                    ; $52a4: $77
    ret                                           ; $52a5: $c9


    ld c, [hl]                                    ; $52a6: $4e
    ret                                           ; $52a7: $c9


    ld b, [hl]                                    ; $52a8: $46
    inc b                                         ; $52a9: $04
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    rst $38                                       ; $52ac: $ff
    rra                                           ; $52ad: $1f
    ld de, $04f1                                  ; $52ae: $11 $f1 $04
    ei                                            ; $52b1: $fb
    ei                                            ; $52b2: $fb
    dec d                                         ; $52b3: $15
    ld a, [bc]                                    ; $52b4: $0a
    push af                                       ; $52b5: $f5
    dec de                                        ; $52b6: $1b
    ldh [rNR11], a                                ; $52b7: $e0 $11
    ld [bc], a                                    ; $52b9: $02
    ld [HeaderManufacturerCode], sp               ; $52ba: $08 $3f $01
    nop                                           ; $52bd: $00
    ld a, [hl+]                                   ; $52be: $2a
    xor b                                         ; $52bf: $a8
    dec b                                         ; $52c0: $05
    nop                                           ; $52c1: $00
    dec d                                         ; $52c2: $15
    ld b, $00                                     ; $52c3: $06 $00
    nop                                           ; $52c5: $00
    ld a, [bc]                                    ; $52c6: $0a
    nop                                           ; $52c7: $00
    rst $08                                       ; $52c8: $cf
    rst $08                                       ; $52c9: $cf
    rst $18                                       ; $52ca: $df
    nop                                           ; $52cb: $00
    rst $08                                       ; $52cc: $cf
    xor a                                         ; $52cd: $af
    ret z                                         ; $52ce: $c8

    call Call_0a5_42cf                            ; $52cf: $cd $cf $42
    rst $08                                       ; $52d2: $cf
    adc a                                         ; $52d3: $8f
    inc b                                         ; $52d4: $04
    ret z                                         ; $52d5: $c8

    rlca                                          ; $52d6: $07
    ret z                                         ; $52d7: $c8

    adc a                                         ; $52d8: $8f
    ret z                                         ; $52d9: $c8

    ld a, [$ff31]                                 ; $52da: $fa $31 $ff
    ld c, a                                       ; $52dd: $4f
    inc b                                         ; $52de: $04
    rst $08                                       ; $52df: $cf
    ld c, a                                       ; $52e0: $4f
    rst $08                                       ; $52e1: $cf
    ld c, [hl]                                    ; $52e2: $4e
    ld sp, hl                                     ; $52e3: $f9
    ld a, [$3f31]                                 ; $52e4: $fa $31 $3f
    rst $38                                       ; $52e7: $ff
    inc b                                         ; $52e8: $04
    daa                                           ; $52e9: $27
    daa                                           ; $52ea: $27
    rst $38                                       ; $52eb: $ff
    dec a                                         ; $52ec: $3d
    rst $20                                       ; $52ed: $e7
    ld a, [bc]                                    ; $52ee: $0a
    ld a, [hl-]                                   ; $52ef: $3a
    rst $38                                       ; $52f0: $ff
    rst $20                                       ; $52f1: $e7

jr_0a5_52f2:
    ld [de], a                                    ; $52f2: $12
    rst $20                                       ; $52f3: $e7
    rst $38                                       ; $52f4: $ff
    ld e, l                                       ; $52f5: $5d
    db $10                                        ; $52f6: $10
    ld c, b                                       ; $52f7: $48
    db $fc                                        ; $52f8: $fc
    rst $38                                       ; $52f9: $ff
    ld d, b                                       ; $52fa: $50
    ld [bc], a                                    ; $52fb: $02
    ld c, e                                       ; $52fc: $4b
    ld b, $fd                                     ; $52fd: $06 $fd
    ld b, l                                       ; $52ff: $45
    bit 1, d                                      ; $5300: $cb $4a
    call Call_000_087a                            ; $5302: $cd $7a $08
    ld b, h                                       ; $5305: $44
    ld a, [de]                                    ; $5306: $1a
    db $fc                                        ; $5307: $fc
    inc bc                                        ; $5308: $03
    inc h                                         ; $5309: $24
    rst $18                                       ; $530a: $df
    inc h                                         ; $530b: $24
    ld hl, sp+$24                                 ; $530c: $f8 $24
    ret c                                         ; $530e: $d8

    inc b                                         ; $530f: $04
    nop                                           ; $5310: $00
    ld b, h                                       ; $5311: $44
    ld a, [de]                                    ; $5312: $1a
    ld bc, $273f                                  ; $5313: $01 $3f $27
    ld a, [$1d27]                                 ; $5316: $fa $27 $1d
    daa                                           ; $5319: $27
    jr jr_0a5_5320                                ; $531a: $18 $04

    nop                                           ; $531c: $00
    add b                                         ; $531d: $80
    ld d, h                                       ; $531e: $54
    ld a, [de]                                    ; $531f: $1a

jr_0a5_5320:
    rst $00                                       ; $5320: $c7
    call nz, $c4bb                                ; $5321: $c4 $bb $c4
    ld b, a                                       ; $5324: $47
    call nz, $c003                                ; $5325: $c4 $03 $c0

jr_0a5_5328:
    inc b                                         ; $5328: $04
    nop                                           ; $5329: $00
    ld h, h                                       ; $532a: $64
    ld a, [de]                                    ; $532b: $1a
    and b                                         ; $532c: $a0
    ld e, a                                       ; $532d: $5f
    rla                                           ; $532e: $17
    add c                                         ; $532f: $81
    and h                                         ; $5330: $a4
    ld d, d                                       ; $5331: $52
    nop                                           ; $5332: $00
    ld [hl+], a                                   ; $5333: $22
    jp hl                                         ; $5334: $e9


    ld h, e                                       ; $5335: $63
    adc l                                         ; $5336: $8d
    ld hl, $90de                                  ; $5337: $21 $de $90
    ld h, c                                       ; $533a: $61
    nop                                           ; $533b: $00
    rst $18                                       ; $533c: $df
    ld h, d                                       ; $533d: $62
    cp $14                                        ; $533e: $fe $14
    ld l, a                                       ; $5340: $6f
    sub b                                         ; $5341: $90
    cp d                                          ; $5342: $ba
    ld b, h                                       ; $5343: $44
    nop                                           ; $5344: $00
    or e                                          ; $5345: $b3
    rst $08                                       ; $5346: $cf
    sbc [hl]                                      ; $5347: $9e
    ld h, h                                       ; $5348: $64
    ld l, a                                       ; $5349: $6f
    jr nc, jr_0a5_5328                            ; $534a: $30 $dc

    ld bc, $f800                                  ; $534c: $01 $00 $f8
    inc hl                                        ; $534f: $23
    rst $18                                       ; $5350: $df
    nop                                           ; $5351: $00
    db $db                                        ; $5352: $db
    jr nz, @+$5f                                  ; $5353: $20 $5d

    ld b, b                                       ; $5355: $40
    nop                                           ; $5356: $00
    ld a, a                                       ; $5357: $7f
    ld b, $6b                                     ; $5358: $06 $6b
    sub h                                         ; $535a: $94
    call $de13                                    ; $535b: $cd $13 $de
    ld hl, $4400                                  ; $535e: $21 $00 $44
    ld [hl], c                                    ; $5361: $71
    ld a, [c]                                     ; $5362: $f2
    sub e                                         ; $5363: $93
    cp d                                          ; $5364: $ba
    rst $30                                       ; $5365: $f7
    add $fb                                       ; $5366: $c6 $fb
    nop                                           ; $5368: $00
    cp d                                          ; $5369: $ba
    rst $30                                       ; $536a: $f7
    halt                                          ; $536b: $76
    sbc e                                         ; $536c: $9b
    ld [c], a                                     ; $536d: $e2
    sub e                                         ; $536e: $93
    ld h, d                                       ; $536f: $62
    sub e                                         ; $5370: $93
    inc bc                                        ; $5371: $03
    ld [c], a                                     ; $5372: $e2
    sub e                                         ; $5373: $93
    rlca                                          ; $5374: $07
    db $fc                                        ; $5375: $fc
    dec b                                         ; $5376: $05
    cp $94                                        ; $5377: $fe $94
    inc bc                                        ; $5379: $03
    or b                                          ; $537a: $b0
    ld sp, $11cc                                  ; $537b: $31 $cc $11
    inc bc                                        ; $537e: $03

jr_0a5_537f:
    inc bc                                        ; $537f: $03
    inc de                                        ; $5380: $13
    ld bc, $b0ff                                  ; $5381: $01 $ff $b0
    add hl, de                                    ; $5384: $19
    ld a, [bc]                                    ; $5385: $0a
    ld a, [hl+]                                   ; $5386: $2a
    sbc [hl]                                      ; $5387: $9e
    sbc a                                         ; $5388: $9f
    add b                                         ; $5389: $80
    ld [bc], a                                    ; $538a: $02
    nop                                           ; $538b: $00
    rst $38                                       ; $538c: $ff
    ld [de], a                                    ; $538d: $12
    di                                            ; $538e: $f3
    ld a, a                                       ; $538f: $7f
    nop                                           ; $5390: $00
    dec h                                         ; $5391: $25
    sbc d                                         ; $5392: $9a
    nop                                           ; $5393: $00
    halt                                          ; $5394: $76
    add c                                         ; $5395: $81
    pop bc                                        ; $5396: $c1
    sbc [hl]                                      ; $5397: $9e
    push af                                       ; $5398: $f5
    dec bc                                        ; $5399: $0b
    ret                                           ; $539a: $c9


    inc [hl]                                      ; $539b: $34
    nop                                           ; $539c: $00
    xor h                                         ; $539d: $ac
    ld de, $64bf                                  ; $539e: $11 $bf $64
    add sp, $06                                   ; $53a1: $e8 $06
    push af                                       ; $53a3: $f5
    ld a, [bc]                                    ; $53a4: $0a
    nop                                           ; $53a5: $00
    di                                            ; $53a6: $f3
    ld [$9d62], sp                                ; $53a7: $08 $62 $9d
    ld hl, sp+$04                                 ; $53aa: $f8 $04
    rst $20                                       ; $53ac: $e7
    jr jr_0a5_53af                                ; $53ad: $18 $00

jr_0a5_53af:
    dec bc                                        ; $53af: $0b
    and b                                         ; $53b0: $a0
    xor $01                                       ; $53b1: $ee $01
    sbc [hl]                                      ; $53b3: $9e
    sub e                                         ; $53b4: $93
    adc [hl]                                      ; $53b5: $8e
    sub e                                         ; $53b6: $93
    jr jr_0a5_53cb                                ; $53b7: $18 $12

    sub e                                         ; $53b9: $93
    ld [bc], a                                    ; $53ba: $02
    inc b                                         ; $53bb: $04
    ld [$1244], sp                                ; $53bc: $08 $44 $12
    ld c, [hl]                                    ; $53bf: $4e
    jr nc, jr_0a5_537f                            ; $53c0: $30 $bd

    nop                                           ; $53c2: $00
    ld b, $d6                                     ; $53c3: $06 $d6
    ld a, l                                       ; $53c5: $7d
    ld a, d                                       ; $53c6: $7a
    add l                                         ; $53c7: $85
    ld e, e                                       ; $53c8: $5b
    and h                                         ; $53c9: $a4
    ret c                                         ; $53ca: $d8

jr_0a5_53cb:
    nop                                           ; $53cb: $00
    rra                                           ; $53cc: $1f
    ld c, $f7                                     ; $53cd: $0e $f7
    ld [$bd91], a                                 ; $53cf: $ea $91 $bd
    ld b, b                                       ; $53d2: $40
    ld e, [hl]                                    ; $53d3: $5e
    nop                                           ; $53d4: $00
    and c                                         ; $53d5: $a1
    db $fd                                        ; $53d6: $fd
    inc bc                                        ; $53d7: $03
    rst $28                                       ; $53d8: $ef
    ld [de], a                                    ; $53d9: $12
    rst $38                                       ; $53da: $ff
    ld b, b                                       ; $53db: $40
    xor e                                         ; $53dc: $ab
    nop                                           ; $53dd: $00
    ld a, h                                       ; $53de: $7c
    and l                                         ; $53df: $a5
    rst $18                                       ; $53e0: $df
    or e                                          ; $53e1: $b3
    ld e, h                                       ; $53e2: $5c
    db $f4                                        ; $53e3: $f4
    ld e, c                                       ; $53e4: $59
    inc l                                         ; $53e5: $2c
    nop                                           ; $53e6: $00
    jp nc, Jump_000_2ddb                          ; $53e7: $d2 $db $2d

    rst $00                                       ; $53ea: $c7
    xor e                                         ; $53eb: $ab
    inc l                                         ; $53ec: $2c
    call nc, Call_000_00c9                        ; $53ed: $d4 $c9 $00
    ld [hl], $c7                                  ; $53f0: $36 $c7
    inc a                                         ; $53f2: $3c
    adc h                                         ; $53f3: $8c
    dec hl                                        ; $53f4: $2b
    add sp, $15                                   ; $53f5: $e8 $15
    ei                                            ; $53f7: $fb
    nop                                           ; $53f8: $00
    ld l, l                                       ; $53f9: $6d
    ld [hl+], a                                   ; $53fa: $22
    db $fd                                        ; $53fb: $fd
    ld [hl], e                                    ; $53fc: $73
    adc [hl]                                      ; $53fd: $8e
    rst $30                                       ; $53fe: $f7
    sbc h                                         ; $53ff: $9c
    rst $38                                       ; $5400: $ff
    nop                                           ; $5401: $00
    ld h, b                                       ; $5402: $60
    push bc                                       ; $5403: $c5
    cp [hl]                                       ; $5404: $be
    xor b                                         ; $5405: $a8
    rla                                           ; $5406: $17
    adc l                                         ; $5407: $8d
    ld a, [c]                                     ; $5408: $f2
    ld sp, $fc00                                  ; $5409: $31 $00 $fc
    reti                                          ; $540c: $d9


    ld l, b                                       ; $540d: $68
    rst $10                                       ; $540e: $d7
    dec a                                         ; $540f: $3d
    ld [hl], a                                    ; $5410: $77
    adc [hl]                                      ; $5411: $8e
    cp l                                          ; $5412: $bd
    nop                                           ; $5413: $00
    ld [hl], d                                    ; $5414: $72
    inc d                                         ; $5415: $14
    xor a                                         ; $5416: $af
    ld [hl], $e1                                  ; $5417: $36 $e1
    ld e, $63                                     ; $5419: $1e $63
    ld h, h                                       ; $541b: $64
    nop                                           ; $541c: $00
    sub a                                         ; $541d: $97
    ld a, a                                       ; $541e: $7f
    ldh [$87], a                                  ; $541f: $e0 $87
    cp b                                          ; $5421: $b8
    push af                                       ; $5422: $f5
    jp z, Jump_000_00ba                           ; $5423: $ca $ba $00

    ld b, l                                       ; $5426: $45
    db $db                                        ; $5427: $db

jr_0a5_5428:
    ld h, [hl]                                    ; $5428: $66
    or $3d                                        ; $5429: $f6 $3d
    ret z                                         ; $542b: $c8

    scf                                           ; $542c: $37
    ld e, [hl]                                    ; $542d: $5e
    nop                                           ; $542e: $00
    ldh [rNR13], a                                ; $542f: $e0 $13
    add sp, -$64                                  ; $5431: $e8 $9c
    ld d, a                                       ; $5433: $57
    sbc a                                         ; $5434: $9f
    ldh a, [$ed]                                  ; $5435: $f0 $ed
    nop                                           ; $5437: $00
    db $10                                        ; $5438: $10
    db $fd                                        ; $5439: $fd
    ld b, c                                       ; $543a: $41
    cp [hl]                                       ; $543b: $be
    ld h, d                                       ; $543c: $62
    dec d                                         ; $543d: $15
    adc d                                         ; $543e: $8a
    push hl                                       ; $543f: $e5
    nop                                           ; $5440: $00
    ld a, [bc]                                    ; $5441: $0a
    ld b, [hl]                                    ; $5442: $46
    dec a                                         ; $5443: $3d
    ld sp, hl                                     ; $5444: $f9
    ld b, $af                                     ; $5445: $06 $af
    ret nc                                        ; $5447: $d0

    cp [hl]                                       ; $5448: $be
    nop                                           ; $5449: $00
    ld b, c                                       ; $544a: $41
    ld [$6311], a                                 ; $544b: $ea $11 $63
    inc a                                         ; $544e: $3c
    cp $21                                        ; $544f: $fe $21
    ei                                            ; $5451: $fb
    nop                                           ; $5452: $00
    inc h                                         ; $5453: $24
    halt                                          ; $5454: $76
    adc c                                         ; $5455: $89
    db $d3                                        ; $5456: $d3
    inc l                                         ; $5457: $2c
    ei                                            ; $5458: $fb
    ld b, h                                       ; $5459: $44
    db $e3                                        ; $545a: $e3
    nop                                           ; $545b: $00
    inc e                                         ; $545c: $1c
    ld b, a                                       ; $545d: $47
    adc e                                         ; $545e: $8b
    rst $30                                       ; $545f: $f7
    dec hl                                        ; $5460: $2b
    cp a                                          ; $5461: $bf
    ld b, c                                       ; $5462: $41
    cp c                                          ; $5463: $b9
    nop                                           ; $5464: $00
    adc $5e                                       ; $5465: $ce $5e
    cp d                                          ; $5467: $ba
    rst $38                                       ; $5468: $ff
    ld [bc], a                                    ; $5469: $02
    jp $061b                                      ; $546a: $c3 $1b $06


    nop                                           ; $546d: $00
    pop bc                                        ; $546e: $c1
    push af                                       ; $546f: $f5
    ld c, d                                       ; $5470: $4a
    db $eb                                        ; $5471: $eb
    inc b                                         ; $5472: $04
    db $fc                                        ; $5473: $fc
    inc de                                        ; $5474: $13
    cp $00                                        ; $5475: $fe $00
    jr nc, jr_0a5_5428                            ; $5477: $30 $af

    ld e, b                                       ; $5479: $58
    sbc a                                         ; $547a: $9f
    ld h, b                                       ; $547b: $60
    cp $05                                        ; $547c: $fe $05
    adc [hl]                                      ; $547e: $8e
    nop                                           ; $547f: $00
    ld a, e                                       ; $5480: $7b
    ld a, l                                       ; $5481: $7d
    add d                                         ; $5482: $82
    rst $30                                       ; $5483: $f7
    nop                                           ; $5484: $00
    dec de                                        ; $5485: $1b
    and $4e                                       ; $5486: $e6 $4e
    nop                                           ; $5488: $00
    sub c                                         ; $5489: $91
    cp $41                                        ; $548a: $fe $41
    ld a, [hl]                                    ; $548c: $7e
    ld bc, $be40                                  ; $548d: $01 $40 $be
    inc a                                         ; $5490: $3c
    nop                                           ; $5491: $00
    jp $b05f                                      ; $5492: $c3 $5f $b0


    call c, $d522                                 ; $5495: $dc $22 $d5
    ld l, $43                                     ; $5498: $2e $43
    nop                                           ; $549a: $00
    or b                                          ; $549b: $b0
    rra                                           ; $549c: $1f
    ldh [$9b], a                                  ; $549d: $e0 $9b
    ld h, d                                       ; $549f: $62
    push hl                                       ; $54a0: $e5
    jr @-$1a                                      ; $54a1: $18 $e4

    nop                                           ; $54a3: $00
    sbc c                                         ; $54a4: $99
    reti                                          ; $54a5: $d9


    jr nc, @-$18                                  ; $54a6: $30 $e6

    add hl, de                                    ; $54a8: $19
    or l                                          ; $54a9: $b5
    dec bc                                        ; $54aa: $0b
    jp nz, Jump_000_3f00                          ; $54ab: $c2 $00 $3f

    xor [hl]                                      ; $54ae: $ae
    ld [hl], c                                    ; $54af: $71
    ld h, b                                       ; $54b0: $60
    rst $10                                       ; $54b1: $d7
    dec l                                         ; $54b2: $2d
    ld d, d                                       ; $54b3: $52
    ld a, [$6500]                                 ; $54b4: $fa $00 $65
    db $fc                                        ; $54b7: $fc
    dec bc                                        ; $54b8: $0b
    sbc c                                         ; $54b9: $99
    ld h, a                                       ; $54ba: $67
    adc a                                         ; $54bb: $8f
    ld h, b                                       ; $54bc: $60
    push af                                       ; $54bd: $f5
    nop                                           ; $54be: $00
    ld a, [bc]                                    ; $54bf: $0a
    rst $28                                       ; $54c0: $ef
    ld e, b                                       ; $54c1: $58
    ld c, l                                       ; $54c2: $4d
    ld a, [c]                                     ; $54c3: $f2
    sbc e                                         ; $54c4: $9b
    ld h, b                                       ; $54c5: $60
    ld c, h                                       ; $54c6: $4c
    nop                                           ; $54c7: $00
    or [hl]                                       ; $54c8: $b6
    ld a, a                                       ; $54c9: $7f
    add b                                         ; $54ca: $80
    cp $83                                        ; $54cb: $fe $83
    or l                                          ; $54cd: $b5
    add hl, bc                                    ; $54ce: $09
    rla                                           ; $54cf: $17
    nop                                           ; $54d0: $00
    ld l, b                                       ; $54d1: $68
    cp h                                          ; $54d2: $bc
    ld b, e                                       ; $54d3: $43
    and d                                         ; $54d4: $a2
    ld d, l                                       ; $54d5: $55
    add sp, $17                                   ; $54d6: $e8 $17
    ld a, l                                       ; $54d8: $7d
    nop                                           ; $54d9: $00
    add d                                         ; $54da: $82
    ld [hl], a                                    ; $54db: $77
    sbc b                                         ; $54dc: $98
    ei                                            ; $54dd: $fb
    ld c, h                                       ; $54de: $4c
    rst $10                                       ; $54df: $d7
    add hl, sp                                    ; $54e0: $39
    rst $30                                       ; $54e1: $f7
    nop                                           ; $54e2: $00
    ld [$42bf], sp                                ; $54e3: $08 $bf $42
    ld hl, $dacf                                  ; $54e6: $21 $cf $da
    inc h                                         ; $54e9: $24
    ld a, [c]                                     ; $54ea: $f2
    nop                                           ; $54eb: $00
    or e                                          ; $54ec: $b3
    jp z, Jump_0a5_6315                           ; $54ed: $ca $15 $63

    or h                                          ; $54f0: $b4
    ld [bc], a                                    ; $54f1: $02
    ld a, a                                       ; $54f2: $7f
    ld c, b                                       ; $54f3: $48
    nop                                           ; $54f4: $00
    and b                                         ; $54f5: $a0
    ld h, c                                       ; $54f6: $61
    ldh [$88], a                                  ; $54f7: $e0 $88
    and b                                         ; $54f9: $a0
    call nc, $80e8                                ; $54fa: $d4 $e8 $80
    nop                                           ; $54fd: $00
    ld h, c                                       ; $54fe: $61
    ret nz                                        ; $54ff: $c0

    ld h, c                                       ; $5500: $61
    ldh a, [rNR51]                                ; $5501: $f0 $25

Call_0a5_5503:
    daa                                           ; $5503: $27
    sub b                                         ; $5504: $90

jr_0a5_5505:
    xor $00                                       ; $5505: $ee $00
    ld sp, $41ae                                  ; $5507: $31 $ae $41
    ld a, a                                       ; $550a: $7f
    add b                                         ; $550b: $80
    rst $10                                       ; $550c: $d7

jr_0a5_550d:
    ld [$003f], sp                                ; $550d: $08 $3f $00
    pop bc                                        ; $5510: $c1
    reti                                          ; $5511: $d9


    add [hl]                                      ; $5512: $86
    ld e, l                                       ; $5513: $5d
    inc h                                         ; $5514: $24
    push af                                       ; $5515: $f5
    ld a, [bc]                                    ; $5516: $0a
    pop de                                        ; $5517: $d1
    nop                                           ; $5518: $00
    jr z, jr_0a5_5505                             ; $5519: $28 $ea

    ld hl, $28d7                                  ; $551b: $21 $d7 $28
    db $eb                                        ; $551e: $eb
    inc e                                         ; $551f: $1c
    ld [hl], l                                    ; $5520: $75
    nop                                           ; $5521: $00
    add b                                         ; $5522: $80
    cp $01                                        ; $5523: $fe $01
    call $7414                                    ; $5525: $cd $14 $74
    db $eb                                        ; $5528: $eb
    ld hl, sp+$00                                 ; $5529: $f8 $00
    dec sp                                        ; $552b: $3b
    rst $18                                       ; $552c: $df
    db $10                                        ; $552d: $10
    push af                                       ; $552e: $f5
    ld a, [hl+]                                   ; $552f: $2a
    ld sp, hl                                     ; $5530: $f9
    add c                                         ; $5531: $81
    or c                                          ; $5532: $b1
    nop                                           ; $5533: $00
    ld c, [hl]                                    ; $5534: $4e
    dec [hl]                                      ; $5535: $35
    ld c, d                                       ; $5536: $4a
    db $db                                        ; $5537: $db
    inc h                                         ; $5538: $24
    and $21                                       ; $5539: $e6 $21
    ld [$2100], a                                 ; $553b: $ea $00 $21
    ld c, b                                       ; $553e: $48
    and c                                         ; $553f: $a1
    call c, $c421                                 ; $5540: $dc $21 $c4
    ld h, c                                       ; $5543: $61
    ret c                                         ; $5544: $d8

    nop                                           ; $5545: $00
    ld hl, $a141                                  ; $5546: $21 $41 $a1
    pop hl                                        ; $5549: $e1
    ld hl, $14e1                                  ; $554a: $21 $e1 $14
    or a                                          ; $554d: $b7
    nop                                           ; $554e: $00
    ld c, h                                       ; $554f: $4c
    ld c, $d1                                     ; $5550: $0e $d1
    ld h, $38                                     ; $5552: $26 $38
    ldh [rTAC], a                                 ; $5554: $e0 $07
    ld h, e                                       ; $5556: $63
    nop                                           ; $5557: $00
    ld e, [hl]                                    ; $5558: $5e
    jp hl                                         ; $5559: $e9


    ld h, $e7                                     ; $555a: $26 $e7
    jr @+$42                                      ; $555c: $18 $40

    and c                                         ; $555e: $a1
    ret nz                                        ; $555f: $c0

    nop                                           ; $5560: $00
    ld hl, $21c2                                  ; $5561: $21 $c2 $21
    ld d, b                                       ; $5564: $50
    ld h, e                                       ; $5565: $63
    ld h, b                                       ; $5566: $60
    pop hl                                        ; $5567: $e1
    sub h                                         ; $5568: $94
    nop                                           ; $5569: $00
    ld l, c                                       ; $556a: $69
    sbc d                                         ; $556b: $9a
    and l                                         ; $556c: $a5
    inc c                                         ; $556d: $0c
    or c                                          ; $556e: $b1
    nop                                           ; $556f: $00
    rst $38                                       ; $5570: $ff
    inc bc                                        ; $5571: $03
    nop                                           ; $5572: $00
    jr c, jr_0a5_5575                             ; $5573: $38 $00

jr_0a5_5575:
    db $10                                        ; $5575: $10
    ld a, [bc]                                    ; $5576: $0a
    jr nz, jr_0a5_5579                            ; $5577: $20 $00

jr_0a5_5579:
    add c                                         ; $5579: $81
    nop                                           ; $557a: $00
    ld b, b                                       ; $557b: $40
    rst $38                                       ; $557c: $ff
    jr nz, jr_0a5_5588                            ; $557d: $20 $09

    nop                                           ; $557f: $00
    rst $38                                       ; $5580: $ff
    inc b                                         ; $5581: $04
    jr nz, jr_0a5_550d                            ; $5582: $20 $89

    nop                                           ; $5584: $00
    ld [bc], a                                    ; $5585: $02
    inc l                                         ; $5586: $2c
    nop                                           ; $5587: $00

jr_0a5_5588:
    inc b                                         ; $5588: $04
    ld b, b                                       ; $5589: $40
    nop                                           ; $558a: $00
    rst $38                                       ; $558b: $ff
    jr nz, jr_0a5_5597                            ; $558c: $20 $09

    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    rst $38                                       ; $5590: $ff
    ld b, [hl]                                    ; $5591: $46
    adc b                                         ; $5592: $88
    and b                                         ; $5593: $a0
    ld a, [de]                                    ; $5594: $1a
    nop                                           ; $5595: $00
    ld [bc], a                                    ; $5596: $02

jr_0a5_5597:
    jr @+$12                                      ; $5597: $18 $10

    inc bc                                        ; $5599: $03
    inc b                                         ; $559a: $04
    rst $38                                       ; $559b: $ff
    ret nz                                        ; $559c: $c0

    ld [$ff01], sp                                ; $559d: $08 $01 $ff
    nop                                           ; $55a0: $00
    jr nc, jr_0a5_55a3                            ; $55a1: $30 $00

jr_0a5_55a3:
    ld d, b                                       ; $55a3: $50
    ld [$0060], sp                                ; $55a4: $08 $60 $00
    ld bc, $0004                                  ; $55a7: $01 $04 $00
    rst $38                                       ; $55aa: $ff
    ret                                           ; $55ab: $c9


    ret nz                                        ; $55ac: $c0

    ld [$5930], sp                                ; $55ad: $08 $30 $59
    ld [$3005], a                                 ; $55b0: $ea $05 $30
    ld e, c                                       ; $55b3: $59
    nop                                           ; $55b4: $00
    rst $38                                       ; $55b5: $ff
    ret nz                                        ; $55b6: $c0

    ld e, b                                       ; $55b7: $58
    nop                                           ; $55b8: $00
    inc b                                         ; $55b9: $04
    rst $38                                       ; $55ba: $ff
    ld c, d                                       ; $55bb: $4a
    or l                                          ; $55bc: $b5
    ldh a, [$80]                                  ; $55bd: $f0 $80
    and b                                         ; $55bf: $a0
    ret nz                                        ; $55c0: $c0

    nop                                           ; $55c1: $00
    or l                                          ; $55c2: $b5
    ret nz                                        ; $55c3: $c0

    sub l                                         ; $55c4: $95
    ld [$ff80], a                                 ; $55c5: $ea $80 $ff
    adc d                                         ; $55c8: $8a
    push af                                       ; $55c9: $f5
    nop                                           ; $55ca: $00
    ret nc                                        ; $55cb: $d0

    rst $38                                       ; $55cc: $ff
    cp [hl]                                       ; $55cd: $be
    ld bc, $05fa                                  ; $55ce: $01 $fa $05
    xor [hl]                                      ; $55d1: $ae
    ld e, e                                       ; $55d2: $5b
    ld [$875c], sp                                ; $55d3: $08 $5c $87
    ld a, d                                       ; $55d6: $7a
    xor l                                         ; $55d7: $ad
    ldh [rNR31], a                                ; $55d8: $e0 $1b
    ld de, $a402                                  ; $55da: $11 $02 $a4
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    add b                                         ; $55df: $80
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    ret nz                                        ; $55e2: $c0

    add hl, hl                                    ; $55e3: $29
    rst $08                                       ; $55e4: $cf
    ld d, d                                       ; $55e5: $52
    nop                                           ; $55e6: $00
    add hl, bc                                    ; $55e7: $09
    jr nc, @+$0f                                  ; $55e8: $30 $0d

    dec b                                         ; $55ea: $05
    ld [$0261], sp                                ; $55eb: $08 $61 $02
    ld sp, $0401                                  ; $55ee: $31 $01 $04
    ld d, d                                       ; $55f1: $52
    ld bc, $0250                                  ; $55f2: $01 $50 $02
    ld bc, $50ff                                  ; $55f5: $01 $ff $50
    ld a, [de]                                    ; $55f8: $1a
    nop                                           ; $55f9: $00
    ld [$e5ff], a                                 ; $55fa: $ea $ff $e5
    rst $38                                       ; $55fd: $ff
    sbc d                                         ; $55fe: $9a
    rst $20                                       ; $55ff: $e7
    dec l                                         ; $5600: $2d
    jp Jump_0a5_6500                              ; $5601: $c3 $00 $65


    add e                                         ; $5604: $83
    xor c                                         ; $5605: $a9
    jp $8345                                      ; $5606: $c3 $45 $83


    and c                                         ; $5609: $a1
    jp $0140                                      ; $560a: $c3 $40 $01


    adc e                                         ; $560d: $8b
    ld [bc], a                                    ; $560e: $02
    db $fd                                        ; $560f: $fd
    inc bc                                        ; $5610: $03
    rst $08                                       ; $5611: $cf
    ld sp, $4bb5                                  ; $5612: $31 $b5 $4b
    nop                                           ; $5615: $00
    rst $08                                       ; $5616: $cf
    ld a, c                                       ; $5617: $79
    db $fd                                        ; $5618: $fd
    inc sp                                        ; $5619: $33
    or a                                          ; $561a: $b7
    ld c, c                                       ; $561b: $49
    ld a, c                                       ; $561c: $79
    add a                                         ; $561d: $87
    nop                                           ; $561e: $00
    rst $38                                       ; $561f: $ff
    add l                                         ; $5620: $85
    xor l                                         ; $5621: $ad
    rst $10                                       ; $5622: $d7
    sub a                                         ; $5623: $97
    db $ed                                        ; $5624: $ed
    ld c, c                                       ; $5625: $49
    rst $38                                       ; $5626: $ff
    nop                                           ; $5627: $00
    scf                                           ; $5628: $37
    ld sp, hl                                     ; $5629: $f9
    dec c                                         ; $562a: $0d
    di                                            ; $562b: $f3
    rra                                           ; $562c: $1f
    pop hl                                        ; $562d: $e1
    ld d, e                                       ; $562e: $53
    inc a                                         ; $562f: $3c
    nop                                           ; $5630: $00
    and l                                         ; $5631: $a5
    jp c, Jump_000_03bc                           ; $5632: $da $bc $03

    or c                                          ; $5635: $b1
    ld c, [hl]                                    ; $5636: $4e
    sub l                                         ; $5637: $95
    adc d                                         ; $5638: $8a
    nop                                           ; $5639: $00
    jp c, Jump_000_2e05                           ; $563a: $da $05 $2e

    ret c                                         ; $563d: $d8

    ld l, [hl]                                    ; $563e: $6e
    and b                                         ; $563f: $a0
    ret nz                                        ; $5640: $c0

    dec [hl]                                      ; $5641: $35
    nop                                           ; $5642: $00
    db $10                                        ; $5643: $10
    and c                                         ; $5644: $a1
    ld b, h                                       ; $5645: $44
    and c                                         ; $5646: $a1
    call z, $c0e3                                 ; $5647: $cc $e3 $c0
    push hl                                       ; $564a: $e5
    nop                                           ; $564b: $00
    sub b                                         ; $564c: $90
    ld h, c                                       ; $564d: $61
    ret nz                                        ; $564e: $c0

    ld hl, $21c3                                  ; $564f: $21 $c3 $21
    ld c, d                                       ; $5652: $4a
    dec h                                         ; $5653: $25
    ld b, b                                       ; $5654: $40
    pop de                                        ; $5655: $d1
    ld [de], a                                    ; $5656: $12
    ld bc, $e360                                  ; $5657: $01 $60 $e3
    ld e, b                                       ; $565a: $58
    and c                                         ; $565b: $a1
    ret c                                         ; $565c: $d8

    pop hl                                        ; $565d: $e1
    nop                                           ; $565e: $00
    ret nz                                        ; $565f: $c0

    or c                                          ; $5660: $b1
    sbc b                                         ; $5661: $98
    ld h, c                                       ; $5662: $61
    ret z                                         ; $5663: $c8

    ld h, c                                       ; $5664: $61
    ld [$00e1], sp                                ; $5665: $08 $e1 $00
    jp $d521                                      ; $5668: $c3 $21 $d5


    and c                                         ; $566b: $a1
    ld d, $e1                                     ; $566c: $16 $e1
    jp nz, Jump_000_0021                          ; $566e: $c2 $21 $00

    ret z                                         ; $5671: $c8

    ld sp, $2984                                  ; $5672: $31 $84 $29
    ld a, [bc]                                    ; $5675: $0a
    ld h, c                                       ; $5676: $61
    ld c, b                                       ; $5677: $48
    and c                                         ; $5678: $a1
    inc bc                                        ; $5679: $03
    ld h, b                                       ; $567a: $60
    pop hl                                        ; $567b: $e1
    adc b                                         ; $567c: $88
    and c                                         ; $567d: $a1
    call nc, $90e9                                ; $567e: $d4 $e9 $90
    add hl, de                                    ; $5681: $19
    ld h, b                                       ; $5682: $60
    inc h                                         ; $5683: $24
    db $10                                        ; $5684: $10
    ld d, e                                       ; $5685: $53
    sbc b                                         ; $5686: $98
    ld [hl], a                                    ; $5687: $77
    ld h, b                                       ; $5688: $60
    inc e                                         ; $5689: $1c
    inc bc                                        ; $568a: $03
    inc c                                         ; $568b: $0c
    ld l, $9b                                     ; $568c: $2e $9b
    nop                                           ; $568e: $00
    dec c                                         ; $568f: $0d
    add hl, bc                                    ; $5690: $09
    add l                                         ; $5691: $85
    ld l, d                                       ; $5692: $6a
    and e                                         ; $5693: $a3
    inc c                                         ; $5694: $0c
    ld [bc], a                                    ; $5695: $02
    call Call_000_2701                            ; $5696: $cd $01 $27
    adc c                                         ; $5699: $89
    ld h, b                                       ; $569a: $60
    rra                                           ; $569b: $1f
    add l                                         ; $569c: $85
    jp Jump_000_02a1                              ; $569d: $c3 $a1 $02


    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    sbc l                                         ; $56a2: $9d
    jp $c3bd                                      ; $56a3: $c3 $bd $c3


    db $d3                                        ; $56a6: $d3
    rst $28                                       ; $56a7: $ef
    or l                                          ; $56a8: $b5
    rlc b                                         ; $56a9: $cb $00
    xor c                                         ; $56ab: $a9
    rst $10                                       ; $56ac: $d7
    cp h                                          ; $56ad: $bc
    ld c, e                                       ; $56ae: $4b
    and d                                         ; $56af: $a2
    ld [hl], l                                    ; $56b0: $75
    cp d                                          ; $56b1: $ba
    ld h, c                                       ; $56b2: $61
    sub b                                         ; $56b3: $90
    ld h, b                                       ; $56b4: $60
    inc c                                         ; $56b5: $0c
    xor d                                         ; $56b6: $aa
    ld a, l                                       ; $56b7: $7d
    ld h, b                                       ; $56b8: $60
    inc c                                         ; $56b9: $0c
    rlca                                          ; $56ba: $07
    ld e, b                                       ; $56bb: $58
    db $dd                                        ; $56bc: $dd
    ld [$2b00], sp                                ; $56bd: $08 $00 $2b
    ld [$8e25], sp                                ; $56c0: $08 $25 $8e
    call nc, $3f0b                                ; $56c3: $d4 $0b $3f
    ld [$3300], sp                                ; $56c6: $08 $00 $33
    ld c, $27                                     ; $56c9: $0e $27
    dec bc                                        ; $56cb: $0b
    sub c                                         ; $56cc: $91
    rst $28                                       ; $56cd: $ef
    xor c                                         ; $56ce: $a9
    rst $10                                       ; $56cf: $d7
    nop                                           ; $56d0: $00
    add c                                         ; $56d1: $81
    rst $38                                       ; $56d2: $ff
    sub c                                         ; $56d3: $91
    rst $28                                       ; $56d4: $ef
    add e                                         ; $56d5: $83

jr_0a5_56d6:
    rst $38                                       ; $56d6: $ff
    add l                                         ; $56d7: $85
    rst $38                                       ; $56d8: $ff

jr_0a5_56d9:
    ld h, b                                       ; $56d9: $60
    set 1, l                                      ; $56da: $cb $cd
    rlca                                          ; $56dc: $07
    ldh [rNR30], a                                ; $56dd: $e0 $1a
    ld [hl], d                                    ; $56df: $72
    adc a                                         ; $56e0: $8f
    or $9d                                        ; $56e1: $f6 $9d
    cp $00                                        ; $56e3: $fe $00
    ld h, c                                       ; $56e5: $61
    call nz, $a8bf                                ; $56e6: $c4 $bf $a8
    rla                                           ; $56e9: $17
    ld h, l                                       ; $56ea: $65
    ld a, [bc]                                    ; $56eb: $0a
    sub c                                         ; $56ec: $91
    nop                                           ; $56ed: $00
    inc c                                         ; $56ee: $0c
    adc c                                         ; $56ef: $89
    ld l, b                                       ; $56f0: $68
    scf                                           ; $56f1: $37
    adc l                                         ; $56f2: $8d
    rlca                                          ; $56f3: $07
    adc $45                                       ; $56f4: $ce $45
    inc b                                         ; $56f6: $04
    ld a, [bc]                                    ; $56f7: $0a
    inc h                                         ; $56f8: $24
    ld c, a                                       ; $56f9: $4f
    nop                                           ; $56fa: $00
    ccf                                           ; $56fb: $3f

Jump_0a5_56fc:
    add b                                         ; $56fc: $80
    ld e, d                                       ; $56fd: $5a
    nop                                           ; $56fe: $00
    rst $38                                       ; $56ff: $ff

Jump_0a5_5700:
    sub b                                         ; $5700: $90
    add b                                         ; $5701: $80
    ld e, d                                       ; $5702: $5a
    nop                                           ; $5703: $00
    rst $38                                       ; $5704: $ff
    ldh a, [rSC]                                  ; $5705: $f0 $02
    pop hl                                        ; $5707: $e1
    ld [de], a                                    ; $5708: $12
    jp hl                                         ; $5709: $e9


    sbc h                                         ; $570a: $9c
    ld [de], a                                    ; $570b: $12
    ld d, a                                       ; $570c: $57
    sbc [hl]                                      ; $570d: $9e
    pop af                                        ; $570e: $f1
    ldh a, [rNR30]                                ; $570f: $f0 $1a
    ld bc, $d020                                  ; $5711: $01 $20 $d0
    add hl, de                                    ; $5714: $19
    add b                                         ; $5715: $80
    ld c, c                                       ; $5716: $49
    rst $38                                       ; $5717: $ff
    ldh a, [rNR30]                                ; $5718: $f0 $1a
    ld b, b                                       ; $571a: $40
    ld bc, $19d0                                  ; $571b: $01 $d0 $19
    nop                                           ; $571e: $00
    rst $38                                       ; $571f: $ff
    sub b                                         ; $5720: $90
    ld a, [de]                                    ; $5721: $1a
    inc h                                         ; $5722: $24
    inc bc                                        ; $5723: $03
    db $10                                        ; $5724: $10
    ret nc                                        ; $5725: $d0

    add hl, de                                    ; $5726: $19
    nop                                           ; $5727: $00
    rst $38                                       ; $5728: $ff
    sub b                                         ; $5729: $90
    ld a, [de]                                    ; $572a: $1a
    ld a, $ff                                     ; $572b: $3e $ff
    inc b                                         ; $572d: $04
    rst $30                                       ; $572e: $f7
    rst $38                                       ; $572f: $ff
    sbc a                                         ; $5730: $9f
    ld a, a                                       ; $5731: $7f
    ld a, a                                       ; $5732: $7f
    jr nz, jr_0a5_573b                            ; $5733: $20 $06

    rst $38                                       ; $5735: $ff
    ldh a, [$c0]                                  ; $5736: $f0 $c0
    ret z                                         ; $5738: $c8

    dec c                                         ; $5739: $0d
    db $fc                                        ; $573a: $fc

jr_0a5_573b:
    dec e                                         ; $573b: $1d
    rst $38                                       ; $573c: $ff
    nop                                           ; $573d: $00
    ld hl, sp+$05                                 ; $573e: $f8 $05
    ld [hl], b                                    ; $5740: $70
    adc b                                         ; $5741: $88
    ld [$8070], sp                                ; $5742: $08 $70 $80
    and b                                         ; $5745: $a0
    ld d, b                                       ; $5746: $50
    db $10                                        ; $5747: $10
    jr z, jr_0a5_56d9                             ; $5748: $28 $8f

    ld d, b                                       ; $574a: $50
    rlca                                          ; $574b: $07
    jr jr_0a5_56d6                                ; $574c: $18 $88

    rlca                                          ; $574e: $07
    nop                                           ; $574f: $00
    dec d                                         ; $5750: $15
    ld [bc], a                                    ; $5751: $02
    inc e                                         ; $5752: $1c
    ld c, $07                                     ; $5753: $0e $07
    ld hl, sp+$38                                 ; $5755: $f8 $38
    db $10                                        ; $5757: $10
    ret nz                                        ; $5758: $c0

    ld b, b                                       ; $5759: $40
    add b                                         ; $575a: $80
    ld bc, $8200                                  ; $575b: $01 $00 $82
    add d                                         ; $575e: $82
    rst $38                                       ; $575f: $ff
    db $fc                                        ; $5760: $fc
    inc b                                         ; $5761: $04
    ei                                            ; $5762: $fb
    db $fc                                        ; $5763: $fc
    or $f9                                        ; $5764: $f6 $f9
    db $fd                                        ; $5766: $fd
    ld e, d                                       ; $5767: $5a
    ld b, $9f                                     ; $5768: $06 $9f
    ld h, b                                       ; $576a: $60
    add b                                         ; $576b: $80
    jr c, jr_0a5_577c                             ; $576c: $38 $0e

    or b                                          ; $576e: $b0
    ld b, b                                       ; $576f: $40
    ret nc                                        ; $5770: $d0

    jr z, jr_0a5_578b                             ; $5771: $28 $18

    db $e4                                        ; $5773: $e4
    sbc h                                         ; $5774: $9c
    nop                                           ; $5775: $00
    ld h, d                                       ; $5776: $62
    ld e, [hl]                                    ; $5777: $5e
    pop hl                                        ; $5778: $e1
    xor a                                         ; $5779: $af
    ret nc                                        ; $577a: $d0

    rst $30                                       ; $577b: $f7

jr_0a5_577c:
    ld [$00f7], sp                                ; $577c: $08 $f7 $00
    ld [$0007], sp                                ; $577f: $08 $07 $00
    rlca                                          ; $5782: $07
    ld [$100f], sp                                ; $5783: $08 $0f $10
    rra                                           ; $5786: $1f
    nop                                           ; $5787: $00
    jr nz, jr_0a5_57c9                            ; $5788: $20 $3f

    ld b, b                                       ; $578a: $40

jr_0a5_578b:
    ld a, [hl]                                    ; $578b: $7e
    add c                                         ; $578c: $81
    ld sp, hl                                     ; $578d: $f9
    ld b, $f7                                     ; $578e: $06 $f7
    nop                                           ; $5790: $00
    ld [$f4f4], sp                                ; $5791: $08 $f4 $f4
    ld a, l                                       ; $5794: $7d
    adc l                                         ; $5795: $8d
    ld a, [hl]                                    ; $5796: $7e
    add d                                         ; $5797: $82
    ccf                                           ; $5798: $3f
    nop                                           ; $5799: $00
    jp $a25e                                      ; $579a: $c3 $5e $a2


    cp a                                          ; $579d: $bf
    jp $c27e                                      ; $579e: $c3 $7e $c2


jr_0a5_57a1:
    cp $40                                        ; $57a1: $fe $40
    ld [bc], a                                    ; $57a3: $02
    ld [hl], b                                    ; $57a4: $70
    jr z, @+$01                                   ; $57a5: $28 $ff

    nop                                           ; $57a7: $00

jr_0a5_57a8:
    ld a, a                                       ; $57a8: $7f
    add b                                         ; $57a9: $80
    cp a                                          ; $57aa: $bf
    ld b, b                                       ; $57ab: $40
    nop                                           ; $57ac: $00
    cp h                                          ; $57ad: $bc
    ld a, a                                       ; $57ae: $7f
    rst $08                                       ; $57af: $cf
    jr nc, jr_0a5_57a1                            ; $57b0: $30 $ef

    db $10                                        ; $57b2: $10
    rst $30                                       ; $57b3: $f7
    ld [$c700], sp                                ; $57b4: $08 $00 $c7
    jr c, jr_0a5_57a8                             ; $57b7: $38 $ef

    db $10                                        ; $57b9: $10
    rst $18                                       ; $57ba: $df
    jr nz, @-$1f                                  ; $57bb: $20 $df

    jr nz, jr_0a5_57bf                            ; $57bd: $20 $00

jr_0a5_57bf:
    rst $38                                       ; $57bf: $ff
    jr nz, @-$0b                                  ; $57c0: $20 $f3

    inc c                                         ; $57c2: $0c
    ei                                            ; $57c3: $fb
    inc b                                         ; $57c4: $04
    rst $30                                       ; $57c5: $f7
    ld [$f308], sp                                ; $57c6: $08 $08 $f3

jr_0a5_57c9:
    inc c                                         ; $57c9: $0c
    rst $28                                       ; $57ca: $ef
    db $10                                        ; $57cb: $10
    jr jr_0a5_57ce                                ; $57cc: $18 $00

jr_0a5_57ce:
    jr @+$01                                      ; $57ce: $18 $ff

    rrca                                          ; $57d0: $0f
    db $10                                        ; $57d1: $10
    rst $38                                       ; $57d2: $ff
    ld bc, $93fe                                  ; $57d3: $01 $fe $93
    ld [bc], a                                    ; $57d6: $02
    rst $38                                       ; $57d7: $ff
    nop                                           ; $57d8: $00
    db $fd                                        ; $57d9: $fd
    ld [bc], a                                    ; $57da: $02
    nop                                           ; $57db: $00
    cp $01                                        ; $57dc: $fe $01
    pop af                                        ; $57de: $f1
    ld c, $e7                                     ; $57df: $0e $e7
    ld hl, sp+$3f                                 ; $57e1: $f8 $3f
    db $e3                                        ; $57e3: $e3
    nop                                           ; $57e4: $00
    ld a, a                                       ; $57e5: $7f
    ret nz                                        ; $57e6: $c0

    ld a, a                                       ; $57e7: $7f

jr_0a5_57e8:
    ret nz                                        ; $57e8: $c0

    ld c, d                                       ; $57e9: $4a
    or l                                          ; $57ea: $b5
    rst $18                                       ; $57eb: $df
    jr nz, jr_0a5_57ee                            ; $57ec: $20 $00

jr_0a5_57ee:
    push de                                       ; $57ee: $d5
    ld a, [hl+]                                   ; $57ef: $2a
    ld [$6015], a                                 ; $57f0: $ea $15 $60
    sbc a                                         ; $57f3: $9f
    rst $38                                       ; $57f4: $ff

jr_0a5_57f5:
    ret nz                                        ; $57f5: $c0

    add b                                         ; $57f6: $80
    cp [hl]                                       ; $57f7: $be
    ld c, $aa                                     ; $57f8: $0e $aa
    ld d, l                                       ; $57fa: $55
    rst $38                                       ; $57fb: $ff
    nop                                           ; $57fc: $00
    ld d, l                                       ; $57fd: $55
    xor d                                         ; $57fe: $aa
    xor d                                         ; $57ff: $aa
    ld [hl], b                                    ; $5800: $70
    ld d, l                                       ; $5801: $55
    cp [hl]                                       ; $5802: $be
    rlca                                          ; $5803: $07
    call z, Call_000_1016                         ; $5804: $cc $16 $10
    jr c, jr_0a5_57e8                             ; $5807: $38 $df

    ld h, b                                       ; $5809: $60
    rst $18                                       ; $580a: $df
    ld h, b                                       ; $580b: $60
    nop                                           ; $580c: $00
    rst $38                                       ; $580d: $ff
    jr nz, jr_0a5_57bf                            ; $580e: $20 $af

Jump_0a5_5810:
jr_0a5_5810:
    ld [hl], b                                    ; $5810: $70
    rst $28                                       ; $5811: $ef
    db $10                                        ; $5812: $10
    ld c, a                                       ; $5813: $4f
    or b                                          ; $5814: $b0
    ld [$58a7], sp                                ; $5815: $08 $a7 $58
    rlca                                          ; $5818: $07
    ld hl, sp-$14                                 ; $5819: $f8 $ec
    ld d, $c0                                     ; $581b: $16 $c0
    ccf                                           ; $581d: $3f
    jr nz, jr_0a5_5820                            ; $581e: $20 $00

jr_0a5_5820:
    rra                                           ; $5820: $1f
    jr jr_0a5_582a                                ; $5821: $18 $07

    inc b                                         ; $5823: $04
    inc bc                                        ; $5824: $03
    ld [bc], a                                    ; $5825: $02
    ld b, e                                       ; $5826: $43
    ld b, d                                       ; $5827: $42
    nop                                           ; $5828: $00
    ld h, b                                       ; $5829: $60

jr_0a5_582a:
    ccf                                           ; $582a: $3f
    ld [hl], c                                    ; $582b: $71
    ld l, $6a                                     ; $582c: $2e $6a
    ld sp, $3f60                                  ; $582e: $31 $60 $3f
    nop                                           ; $5831: $00
    ld a, a                                       ; $5832: $7f
    ccf                                           ; $5833: $3f
    ld [hl], b                                    ; $5834: $70
    ccf                                           ; $5835: $3f
    ld l, b                                       ; $5836: $68
    ccf                                           ; $5837: $3f
    ld [hl], d                                    ; $5838: $72
    dec a                                         ; $5839: $3d
    nop                                           ; $583a: $00
    add e                                         ; $583b: $83
    add d                                         ; $583c: $82
    inc bc                                        ; $583d: $03
    ld [bc], a                                    ; $583e: $02
    rlca                                          ; $583f: $07
    rlca                                          ; $5840: $07
    and b                                         ; $5841: $a0
    and b                                         ; $5842: $a0
    inc b                                         ; $5843: $04
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    db $f4                                        ; $5846: $f4
    db $f4                                        ; $5847: $f4
    add b                                         ; $5848: $80
    xor c                                         ; $5849: $a9
    ld [bc], a                                    ; $584a: $02
    ld a, b                                       ; $584b: $78
    ccf                                           ; $584c: $3f
    nop                                           ; $584d: $00
    ld a, l                                       ; $584e: $7d
    ccf                                           ; $584f: $3f
    ld h, b                                       ; $5850: $60
    ccf                                           ; $5851: $3f
    ld l, d                                       ; $5852: $6a
    inc [hl]                                      ; $5853: $34
    ld [hl], c                                    ; $5854: $71
    ld l, $80                                     ; $5855: $2e $80
    inc h                                         ; $5857: $24
    ld [$3d62], sp                                ; $5858: $08 $62 $3d
    nop                                           ; $585b: $00
    ldh [$e0], a                                  ; $585c: $e0 $e0
    db $10                                        ; $585e: $10
    ldh [rP1], a                                  ; $585f: $e0 $00
    db $10                                        ; $5861: $10
    ret nz                                        ; $5862: $c0

    jr nz, jr_0a5_57f5                            ; $5863: $20 $90

    ld d, b                                       ; $5865: $50
    jr z, jr_0a5_5810                             ; $5866: $28 $a8

    push de                                       ; $5868: $d5
    ld [bc], a                                    ; $5869: $02
    push de                                       ; $586a: $d5
    ld a, [$75fa]                                 ; $586b: $fa $fa $75
    ld a, [hl+]                                   ; $586e: $2a
    ld h, b                                       ; $586f: $60
    jr nz, jr_0a5_5872                            ; $5870: $20 $00

jr_0a5_5872:
    ld a, a                                       ; $5872: $7f
    ld [bc], a                                    ; $5873: $02
    ccf                                           ; $5874: $3f
    ld a, h                                       ; $5875: $7c
    cpl                                           ; $5876: $2f
    ld h, h                                       ; $5877: $64
    ccf                                           ; $5878: $3f
    ld a, b                                       ; $5879: $78
    inc b                                         ; $587a: $04
    nop                                           ; $587b: $00
    xor l                                         ; $587c: $ad
    nop                                           ; $587d: $00
    ld a, l                                       ; $587e: $7d
    rst $18                                       ; $587f: $df
    ccf                                           ; $5880: $3f
    ld a, [c]                                     ; $5881: $f2
    rra                                           ; $5882: $1f
    db $fd                                        ; $5883: $fd
    inc bc                                        ; $5884: $03
    cp $82                                        ; $5885: $fe $82
    or [hl]                                       ; $5887: $b6
    ld [bc], a                                    ; $5888: $02
    di                                            ; $5889: $f3
    rrca                                          ; $588a: $0f
    add a                                         ; $588b: $87
    ld a, a                                       ; $588c: $7f
    ld l, a                                       ; $588d: $6f
    ld a, $00                                     ; $588e: $3e $00

Call_0a5_5890:
    ld l, c                                       ; $5890: $69
    ld b, b                                       ; $5891: $40
    ld [hl], $24                                  ; $5892: $36 $24
    ld [$3f7d], sp                                ; $5894: $08 $7d $3f
    ld a, d                                       ; $5897: $7a
    dec a                                         ; $5898: $3d
    ld [hl], b                                    ; $5899: $70
    ccf                                           ; $589a: $3f
    nop                                           ; $589b: $00
    cp b                                          ; $589c: $b8
    rra                                           ; $589d: $1f
    ld e, d                                       ; $589e: $5a
    dec e                                         ; $589f: $1d
    xor d                                         ; $58a0: $aa
    ld e, l                                       ; $58a1: $5d
    ld d, b                                       ; $58a2: $50
    cp a                                          ; $58a3: $bf
    nop                                           ; $58a4: $00

jr_0a5_58a5:
    ld l, a                                       ; $58a5: $6f
    rst $38                                       ; $58a6: $ff
    sub e                                         ; $58a7: $93
    db $ed                                        ; $58a8: $ed
    rlca                                          ; $58a9: $07
    ld sp, hl                                     ; $58aa: $f9
    add e                                         ; $58ab: $83
    db $fd                                        ; $58ac: $fd
    ld [bc], a                                    ; $58ad: $02
    ld [de], a                                    ; $58ae: $12
    db $ed                                        ; $58af: $ed
    ld b, l                                       ; $58b0: $45
    cp b                                          ; $58b1: $b8
    jr nz, @-$1f                                  ; $58b2: $20 $df

    inc sp                                        ; $58b4: $33
    ld c, $84                                     ; $58b5: $0e $84
    nop                                           ; $58b7: $00
    ei                                            ; $58b8: $fb
    xor e                                         ; $58b9: $ab
    pop de                                        ; $58ba: $d1
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    or b                                          ; $58bd: $b0
    ld a, a                                       ; $58be: $7f
    ld d, c                                       ; $58bf: $51
    nop                                           ; $58c0: $00
    ld a, $a0                                     ; $58c1: $3e $a0
    ccf                                           ; $58c3: $3f
    ld d, b                                       ; $58c4: $50
    cp a                                          ; $58c5: $bf
    db $eb                                        ; $58c6: $eb
    rst $38                                       ; $58c7: $ff
    dec b                                         ; $58c8: $05
    ld [bc], a                                    ; $58c9: $02
    ei                                            ; $58ca: $fb
    xor e                                         ; $58cb: $ab
    ld b, c                                       ; $58cc: $41
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    add c                                         ; $58cf: $81
    pop de                                        ; $58d0: $d1
    rlca                                          ; $58d1: $07
    dec bc                                        ; $58d2: $0b
    inc b                                         ; $58d3: $04
    pop af                                        ; $58d4: $f1
    ld d, l                                       ; $58d5: $55
    and c                                         ; $58d6: $a1
    inc bc                                        ; $58d7: $03
    db $fd                                        ; $58d8: $fd
    ld a, $0f                                     ; $58d9: $3e $0f
    add e                                         ; $58db: $83
    db $fd                                        ; $58dc: $fd
    ret nz                                        ; $58dd: $c0

    jp hl                                         ; $58de: $e9


    nop                                           ; $58df: $00
    and l                                         ; $58e0: $a5
    dec b                                         ; $58e1: $05
    ret nz                                        ; $58e2: $c0

    nop                                           ; $58e3: $00
    cp a                                          ; $58e4: $bf
    ld b, b                                       ; $58e5: $40
    sbc a                                         ; $58e6: $9f
    ld h, b                                       ; $58e7: $60
    ld a, h                                       ; $58e8: $7c
    cp a                                          ; $58e9: $bf
    ld [bc], a                                    ; $58ea: $02
    nop                                           ; $58eb: $00
    db $10                                        ; $58ec: $10
    jr jr_0a5_58a5                                ; $58ed: $18 $b6

    dec d                                         ; $58ef: $15
    add $17                                       ; $58f0: $c6 $17
    jr nz, jr_0a5_58fc                            ; $58f2: $20 $08

    cp $01                                        ; $58f4: $fe $01
    ld de, $0102                                  ; $58f6: $11 $02 $01
    ld a, [$2002]                                 ; $58f9: $fa $02 $20

jr_0a5_58fc:
    sub l                                         ; $58fc: $95
    jp hl                                         ; $58fd: $e9


    add e                                         ; $58fe: $83
    sub d                                         ; $58ff: $92
    rlca                                          ; $5900: $07
    ld b, b                                       ; $5901: $40
    xor a                                         ; $5902: $af
    sbc b                                         ; $5903: $98
    rlca                                          ; $5904: $07
    rla                                           ; $5905: $17
    jp hl                                         ; $5906: $e9


    dec hl                                        ; $5907: $2b
    push bc                                       ; $5908: $c5
    inc bc                                        ; $5909: $03
    db $fd                                        ; $590a: $fd
    rst $00                                       ; $590b: $c7
    inc [hl]                                      ; $590c: $34
    ld [$2004], sp                                ; $590d: $08 $04 $20
    ld a, a                                       ; $5910: $7f
    add b                                         ; $5911: $80
    ld a, a                                       ; $5912: $7f
    adc [hl]                                      ; $5913: $8e
    add hl, sp                                    ; $5914: $39
    ld d, a                                       ; $5915: $57
    db $10                                        ; $5916: $10
    rst $38                                       ; $5917: $ff
    dec b                                         ; $5918: $05
    add c                                         ; $5919: $81
    jr c, @+$2a                                   ; $591a: $38 $28

    ld a, [$f601]                                 ; $591c: $fa $01 $f6
    ld sp, hl                                     ; $591f: $f9
    ld [bc], a                                    ; $5920: $02
    db $fd                                        ; $5921: $fd
    ld a, h                                       ; $5922: $7c
    ld bc, $8280                                  ; $5923: $01 $80 $82
    nop                                           ; $5926: $00
    sub a                                         ; $5927: $97
    pop hl                                        ; $5928: $e1
    inc bc                                        ; $5929: $03
    db $fd                                        ; $592a: $fd
    add e                                         ; $592b: $83
    db $fd                                        ; $592c: $fd
    ld e, a                                       ; $592d: $5f
    rlca                                          ; $592e: $07
    rst $38                                       ; $592f: $ff
    xor c                                         ; $5930: $a9
    rra                                           ; $5931: $1f
    ld d, e                                       ; $5932: $53
    sbc l                                         ; $5933: $9d
    ld a, d                                       ; $5934: $7a
    jr c, jr_0a5_5981                             ; $5935: $38 $4a

    jr jr_0a5_59b3                                ; $5937: $18 $7a

    jr c, @-$3e                                   ; $5939: $38 $c0

    ld c, d                                       ; $593b: $4a
    ld a, [de]                                    ; $593c: $1a
    ld a, d                                       ; $593d: $7a
    nop                                           ; $593e: $00
    ld sp, $49ea                                  ; $593f: $31 $ea $49
    jp c, $b269                                   ; $5942: $da $69 $b2

    nop                                           ; $5945: $00
    ld a, c                                       ; $5946: $79
    add d                                         ; $5947: $82
    ld a, c                                       ; $5948: $79
    jp z, $fa31                                   ; $5949: $ca $31 $fa

    ld bc, $20d8                                  ; $594c: $01 $d8 $20
    rst $38                                       ; $594f: $ff
    db $fd                                        ; $5950: $fd
    and e                                         ; $5951: $a3
    ld bc, $f4ca                                  ; $5952: $01 $ca $f4
    pop de                                        ; $5955: $d1
    xor $c0                                       ; $5956: $ee $c0
    add d                                         ; $5958: $82
    rla                                           ; $5959: $17
    rlca                                          ; $595a: $07
    ld [c], a                                     ; $595b: $e2
    db $fd                                        ; $595c: $fd
    push de                                       ; $595d: $d5
    ld [$b3e0], a                                 ; $595e: $ea $e0 $b3
    ld bc, $02ff                                  ; $5961: $01 $ff $02
    rst $38                                       ; $5964: $ff
    call c, $c4ef                                 ; $5965: $dc $ef $c4
    rst $28                                       ; $5968: $ef
    ret c                                         ; $5969: $d8

    inc b                                         ; $596a: $04
    nop                                           ; $596b: $00
    rst $28                                       ; $596c: $ef
    adc b                                         ; $596d: $88
    pop bc                                        ; $596e: $c1
    ld bc, $f6c9                                  ; $596f: $01 $c9 $f6
    ret nz                                        ; $5972: $c0

    rst $00                                       ; $5973: $c7
    ld bc, $fffd                                  ; $5974: $01 $fd $ff
    jp c, $fd21                                   ; $5977: $da $21 $fd

    ret nc                                        ; $597a: $d0

    add b                                         ; $597b: $80
    ld a, $fe                                     ; $597c: $3e $fe
    add b                                         ; $597e: $80
    rst $38                                       ; $597f: $ff
    add b                                         ; $5980: $80

jr_0a5_5981:
    ld c, c                                       ; $5981: $49
    rlca                                          ; $5982: $07
    add d                                         ; $5983: $82
    sub b                                         ; $5984: $90
    ld l, $60                                     ; $5985: $2e $60
    rst $38                                       ; $5987: $ff
    ret nz                                        ; $5988: $c0

    ld a, a                                       ; $5989: $7f
    jr nz, jr_0a5_599c                            ; $598a: $20 $10

    ld b, b                                       ; $598c: $40
    inc b                                         ; $598d: $04
    ld e, b                                       ; $598e: $58
    rst $38                                       ; $598f: $ff
    or b                                          ; $5990: $b0
    ld e, [hl]                                    ; $5991: $5e
    nop                                           ; $5992: $00
    ld l, $00                                     ; $5993: $2e $00
    jr nc, jr_0a5_599f                            ; $5995: $30 $08

    add sp, $3f                                   ; $5997: $e8 $3f
    ret nc                                        ; $5999: $d0

    ld c, b                                       ; $599a: $48
    ld a, a                                       ; $599b: $7f

jr_0a5_599c:
    ld l, $08                                     ; $599c: $2e $08
    ld l, c                                       ; $599e: $69

jr_0a5_599f:
    or $30                                        ; $599f: $f6 $30
    jr @+$2d                                      ; $59a1: $18 $2b

    db $dd                                        ; $59a3: $dd
    ld e, c                                       ; $59a4: $59
    ld b, $bf                                     ; $59a5: $06 $bf
    rst $38                                       ; $59a7: $ff
    rst $38                                       ; $59a8: $ff
    xor e                                         ; $59a9: $ab
    push de                                       ; $59aa: $d5
    jp nz, Jump_0a5_4c08                          ; $59ab: $c2 $08 $4c

    add hl, bc                                    ; $59ae: $09
    ret z                                         ; $59af: $c8

    ld [hl+], a                                   ; $59b0: $22
    rst $38                                       ; $59b1: $ff
    ret nc                                        ; $59b2: $d0

jr_0a5_59b3:
    sbc a                                         ; $59b3: $9f
    rlca                                          ; $59b4: $07
    ldh [rIE], a                                  ; $59b5: $e0 $ff
    jp hl                                         ; $59b7: $e9


    ld [hl], h                                    ; $59b8: $74
    nop                                           ; $59b9: $00
    ldh [$82], a                                  ; $59ba: $e0 $82
    xor c                                         ; $59bc: $a9
    rlca                                          ; $59bd: $07
    ld de, $11ff                                  ; $59be: $11 $ff $11
    jr nz, jr_0a5_5a04                            ; $59c1: $20 $41

    sub d                                         ; $59c3: $92
    inc b                                         ; $59c4: $04
    ld [$0010], sp                                ; $59c5: $08 $10 $00
    or d                                          ; $59c8: $b2
    rst $38                                       ; $59c9: $ff
    and b                                         ; $59ca: $a0
    dec d                                         ; $59cb: $15
    rst $38                                       ; $59cc: $ff
    jr z, jr_0a5_59cf                             ; $59cd: $28 $00

jr_0a5_59cf:
    ld bc, $2001                                  ; $59cf: $01 $01 $20
    jr z, jr_0a5_59d4                             ; $59d2: $28 $00

jr_0a5_59d4:
    inc d                                         ; $59d4: $14
    ld [$ff00], sp                                ; $59d5: $08 $00 $ff
    ld h, b                                       ; $59d8: $60
    ld c, $10                                     ; $59d9: $0e $10
    and l                                         ; $59db: $a5
    ld e, d                                       ; $59dc: $5a
    ld l, e                                       ; $59dd: $6b
    ld e, [hl]                                    ; $59de: $5e
    ld bc, $006d                                  ; $59df: $01 $6d $00
    ld l, d                                       ; $59e2: $6a
    sub l                                         ; $59e3: $95
    ld b, c                                       ; $59e4: $41
    nop                                           ; $59e5: $00
    ld [de], a                                    ; $59e6: $12
    rlca                                          ; $59e7: $07
    nop                                           ; $59e8: $00
    rst $38                                       ; $59e9: $ff
    sub a                                         ; $59ea: $97
    ld l, b                                       ; $59eb: $68
    ld a, [bc]                                    ; $59ec: $0a
    ld l, [hl]                                    ; $59ed: $6e
    ld bc, $7a02                                  ; $59ee: $01 $02 $7a
    nop                                           ; $59f1: $00
    xor d                                         ; $59f2: $aa
    ld e, l                                       ; $59f3: $5d
    ld [$04ff], sp                                ; $59f4: $08 $ff $04
    ld [$0061], sp                                ; $59f7: $08 $61 $00
    sbc [hl]                                      ; $59fa: $9e
    jr nz, jr_0a5_59fd                            ; $59fb: $20 $00

jr_0a5_59fd:
    ld bc, $b900                                  ; $59fd: $01 $00 $b9
    nop                                           ; $5a00: $00
    cp d                                          ; $5a01: $ba
    dec b                                         ; $5a02: $05
    ld b, l                                       ; $5a03: $45

jr_0a5_5a04:
    nop                                           ; $5a04: $00
    rst $38                                       ; $5a05: $ff
    and l                                         ; $5a06: $a5
    ld e, d                                       ; $5a07: $5a
    ld c, l                                       ; $5a08: $4d
    dec de                                        ; $5a09: $1b
    add b                                         ; $5a0a: $80
    ld b, e                                       ; $5a0b: $43
    rlca                                          ; $5a0c: $07
    nop                                           ; $5a0d: $00
    ld [bc], a                                    ; $5a0e: $02
    rst $38                                       ; $5a0f: $ff
    and c                                         ; $5a10: $a1
    rst $38                                       ; $5a11: $ff
    ld a, [hl-]                                   ; $5a12: $3a
    ret nz                                        ; $5a13: $c0

    ld d, h                                       ; $5a14: $54
    add b                                         ; $5a15: $80
    nop                                           ; $5a16: $00
    ld [$08ff], sp                                ; $5a17: $08 $ff $08
    rst $38                                       ; $5a1a: $ff
    jr z, @+$01                                   ; $5a1b: $28 $ff

    jr @+$01                                      ; $5a1d: $18 $ff

    nop                                           ; $5a1f: $00
    xor h                                         ; $5a20: $ac

jr_0a5_5a21:
    rst $38                                       ; $5a21: $ff
    ld e, a                                       ; $5a22: $5f
    rst $38                                       ; $5a23: $ff
    ret                                           ; $5a24: $c9


    ld a, $63                                     ; $5a25: $3e $63
    inc e                                         ; $5a27: $1c
    and a                                         ; $5a28: $a7
    ld [hl], c                                    ; $5a29: $71

jr_0a5_5a2a:
    add hl, sp                                    ; $5a2a: $39
    jr z, jr_0a5_5a9a                             ; $5a2b: $28 $6d

    rlca                                          ; $5a2d: $07
    ld b, l                                       ; $5a2e: $45
    nop                                           ; $5a2f: $00
    ldh [$5d], a                                  ; $5a30: $e0 $5d
    cp h                                          ; $5a32: $bc
    ld bc, $56b0                                  ; $5a33: $01 $b0 $56
    nop                                           ; $5a36: $00
    inc hl                                        ; $5a37: $23
    rst $38                                       ; $5a38: $ff
    jr nc, jr_0a5_5a3b                            ; $5a39: $30 $00

jr_0a5_5a3b:
    ld [bc], a                                    ; $5a3b: $02
    inc b                                         ; $5a3c: $04
    add hl, hl                                    ; $5a3d: $29
    ld d, h                                       ; $5a3e: $54
    ld h, h                                       ; $5a3f: $64
    add l                                         ; $5a40: $85
    ei                                            ; $5a41: $fb
    rlca                                          ; $5a42: $07
    ldh [rNR51], a                                ; $5a43: $e0 $25
    nop                                           ; $5a45: $00
    and c                                         ; $5a46: $a1
    ld h, h                                       ; $5a47: $64
    ld bc, $0210                                  ; $5a48: $01 $10 $02
    nop                                           ; $5a4b: $00
    ld h, b                                       ; $5a4c: $60
    ldh a, [$a4]                                  ; $5a4d: $f0 $a4
    ld e, b                                       ; $5a4f: $58
    cp d                                          ; $5a50: $ba
    sub l                                         ; $5a51: $95
    inc a                                         ; $5a52: $3c
    sub b                                         ; $5a53: $90
    add b                                         ; $5a54: $80
    rra                                           ; $5a55: $1f
    inc bc                                        ; $5a56: $03
    ld h, $8e                                     ; $5a57: $26 $8e
    dec b                                         ; $5a59: $05
    add hl, hl                                    ; $5a5a: $29
    ld b, $03                                     ; $5a5b: $06 $03
    ld b, h                                       ; $5a5d: $44
    ld [bc], a                                    ; $5a5e: $02
    ld a, [de]                                    ; $5a5f: $1a
    add l                                         ; $5a60: $85
    ld a, [bc]                                    ; $5a61: $0a
    add l                                         ; $5a62: $85
    dec bc                                        ; $5a63: $0b
    and h                                         ; $5a64: $a4
    ldh [$5e], a                                  ; $5a65: $e0 $5e
    ld l, e                                       ; $5a67: $6b
    nop                                           ; $5a68: $00
    add h                                         ; $5a69: $84
    db $10                                        ; $5a6a: $10
    add a                                         ; $5a6b: $87
    ld [hl-], a                                   ; $5a6c: $32
    add h                                         ; $5a6d: $84
    inc bc                                        ; $5a6e: $03
    adc h                                         ; $5a6f: $8c
    dec de                                        ; $5a70: $1b
    nop                                           ; $5a71: $00
    call nz, $e516                                ; $5a72: $c4 $16 $e5
    ld d, d                                       ; $5a75: $52
    add a                                         ; $5a76: $87
    ld bc, $0396                                  ; $5a77: $01 $96 $03
    nop                                           ; $5a7a: $00
    sub h                                         ; $5a7b: $94
    ld a, $80                                     ; $5a7c: $3e $80
    ld a, e                                       ; $5a7e: $7b
    add h                                         ; $5a7f: $84

Jump_0a5_5a80:
    ld l, $db                                     ; $5a80: $2e $db
    ld e, l                                       ; $5a82: $5d
    ld bc, $7b86                                  ; $5a83: $01 $86 $7b
    xor h                                         ; $5a86: $ac
    ld a, [bc]                                    ; $5a87: $0a
    ret                                           ; $5a88: $c9


    ld e, $a7                                     ; $5a89: $1e $a7
    sub b                                         ; $5a8b: $90
    dec b                                         ; $5a8c: $05
    nop                                           ; $5a8d: $00
    add [hl]                                      ; $5a8e: $86
    inc hl                                        ; $5a8f: $23
    add h                                         ; $5a90: $84
    ld bc, $0184                                  ; $5a91: $01 $84 $01
    rst $00                                       ; $5a94: $c7
    inc hl                                        ; $5a95: $23
    nop                                           ; $5a96: $00
    push bc                                       ; $5a97: $c5
    ld d, d                                       ; $5a98: $52
    add l                                         ; $5a99: $85

jr_0a5_5a9a:
    jr nc, jr_0a5_5a21                            ; $5a9a: $30 $85

    ld bc, $a08c                                  ; $5a9c: $01 $8c $a0
    nop                                           ; $5a9f: $00
    ld b, b                                       ; $5aa0: $40
    ld d, b                                       ; $5aa1: $50
    add b                                         ; $5aa2: $80
    nop                                           ; $5aa3: $00
    add b                                         ; $5aa4: $80
    ldh [rP1], a                                  ; $5aa5: $e0 $00
    ld d, b                                       ; $5aa7: $50
    jr nz, jr_0a5_5a2a                            ; $5aa8: $20 $80

    and b                                         ; $5aaa: $a0
    inc b                                         ; $5aab: $04
    nop                                           ; $5aac: $00
    ld l, d                                       ; $5aad: $6a
    sub b                                         ; $5aae: $90
    ld a, [hl-]                                   ; $5aaf: $3a
    inc c                                         ; $5ab0: $0c
    rla                                           ; $5ab1: $17
    nop                                           ; $5ab2: $00
    ld [$0856], sp                                ; $5ab3: $08 $56 $08
    inc [hl]                                      ; $5ab6: $34
    ld [$085e], sp                                ; $5ab7: $08 $5e $08
    dec [hl]                                      ; $5aba: $35
    rlca                                          ; $5abb: $07
    ld [$087f], sp                                ; $5abc: $08 $7f $08
    jp c, $bc2d                                   ; $5abf: $da $2d $bc

    dec b                                         ; $5ac2: $05
    ld [bc], a                                    ; $5ac3: $02
    db $10                                        ; $5ac4: $10
    ld [$0008], sp                                ; $5ac5: $08 $08 $00
    adc l                                         ; $5ac8: $8d
    nop                                           ; $5ac9: $00
    jp c, Jump_0a5_5c00                           ; $5aca: $da $00 $5c

    jr nc, @-$54                                  ; $5acd: $30 $aa

    stop                                          ; $5acf: $10 $00
    ld l, b                                       ; $5ad1: $68
    db $10                                        ; $5ad2: $10
    inc l                                         ; $5ad3: $2c
    db $10                                        ; $5ad4: $10
    ld a, d                                       ; $5ad5: $7a
    db $10                                        ; $5ad6: $10
    xor h                                         ; $5ad7: $ac
    stop                                          ; $5ad8: $10 $00
    cp $10                                        ; $5ada: $fe $10
    ld e, e                                       ; $5adc: $5b
    or h                                          ; $5add: $b4
    add b                                         ; $5ade: $80
    rst $38                                       ; $5adf: $ff
    ld [$41f5], a                                 ; $5ae0: $ea $f5 $41
    call nc, Call_000_04e8                        ; $5ae3: $d4 $e8 $04
    ld a, [hl+]                                   ; $5ae6: $2a
    push de                                       ; $5ae7: $d5
    xor b                                         ; $5ae8: $a8
    rst $38                                       ; $5ae9: $ff
    xor b                                         ; $5aea: $a8
    ldh a, [rDIV]                                 ; $5aeb: $f0 $04
    rlca                                          ; $5aed: $07
    inc e                                         ; $5aee: $1c
    rst $38                                       ; $5aef: $ff
    call c, $aa7f                                 ; $5af0: $dc $7f $aa
    ld hl, sp+$04                                 ; $5af3: $f8 $04
    sbc h                                         ; $5af5: $9c
    dec bc                                        ; $5af6: $0b
    and $0a                                       ; $5af7: $e6 $0a
    ld [hl], d                                    ; $5af9: $72
    nop                                           ; $5afa: $00
    ld a, [de]                                    ; $5afb: $1a
    nop                                           ; $5afc: $00
    ret c                                         ; $5afd: $d8

    add hl, bc                                    ; $5afe: $09
    inc l                                         ; $5aff: $2c
    add hl, de                                    ; $5b00: $19
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    ld d, b                                       ; $5b03: $50
    ld e, a                                       ; $5b04: $5f
    ld bc, $ff00                                  ; $5b05: $01 $00 $ff
    db $f4                                        ; $5b08: $f4
    ld e, c                                       ; $5b09: $59
    inc l                                         ; $5b0a: $2c
    jp nc, Jump_000_2ddb                          ; $5b0b: $d2 $db $2d

    rst $00                                       ; $5b0e: $c7
    nop                                           ; $5b0f: $00
    xor e                                         ; $5b10: $ab
    inc l                                         ; $5b11: $2c
    call nc, Call_000_36c9                        ; $5b12: $d4 $c9 $36
    rst $00                                       ; $5b15: $c7
    inc a                                         ; $5b16: $3c
    ld [$3080], sp                                ; $5b17: $08 $80 $30
    dec h                                         ; $5b1a: $25
    ld [hl], e                                    ; $5b1b: $73
    adc [hl]                                      ; $5b1c: $8e
    rst $30                                       ; $5b1d: $f7
    sbc h                                         ; $5b1e: $9c
    rst $38                                       ; $5b1f: $ff
    ld h, b                                       ; $5b20: $60
    push bc                                       ; $5b21: $c5
    nop                                           ; $5b22: $00
    cp [hl]                                       ; $5b23: $be
    nop                                           ; $5b24: $00
    rst $38                                       ; $5b25: $ff
    adc l                                         ; $5b26: $8d
    ld a, [c]                                     ; $5b27: $f2
    ld sp, $d9fc                                  ; $5b28: $31 $fc $d9
    nop                                           ; $5b2b: $00
    ld l, b                                       ; $5b2c: $68
    rst $10                                       ; $5b2d: $d7
    dec a                                         ; $5b2e: $3d
    ld [hl], a                                    ; $5b2f: $77
    adc [hl]                                      ; $5b30: $8e
    cp l                                          ; $5b31: $bd

Call_0a5_5b32:
    ld [hl], d                                    ; $5b32: $72
    inc d                                         ; $5b33: $14
    inc b                                         ; $5b34: $04
    xor a                                         ; $5b35: $af
    jr nz, @+$01                                  ; $5b36: $20 $ff

    sub b                                         ; $5b38: $90
    nop                                           ; $5b39: $00
    ret nz                                        ; $5b3a: $c0

    add hl, de                                    ; $5b3b: $19
    nop                                           ; $5b3c: $00
    rst $38                                       ; $5b3d: $ff
    sub b                                         ; $5b3e: $90
    ld h, b                                       ; $5b3f: $60
    rra                                           ; $5b40: $1f
    ld a, [bc]                                    ; $5b41: $0a
    nop                                           ; $5b42: $00
    ret nz                                        ; $5b43: $c0

    add hl, de                                    ; $5b44: $19
    ret nz                                        ; $5b45: $c0

    rst $38                                       ; $5b46: $ff
    cp d                                          ; $5b47: $ba
    ld b, l                                       ; $5b48: $45
    sub d                                         ; $5b49: $92
    ret nz                                        ; $5b4a: $c0

    add hl, bc                                    ; $5b4b: $09
    adc e                                         ; $5b4c: $8b
    ld h, b                                       ; $5b4d: $60
    nop                                           ; $5b4e: $00
    rra                                           ; $5b4f: $1f
    sub b                                         ; $5b50: $90
    rst $38                                       ; $5b51: $ff
    jr nc, jr_0a5_5b71                            ; $5b52: $30 $1d

    dec b                                         ; $5b54: $05
    nop                                           ; $5b55: $00
    ld [bc], a                                    ; $5b56: $02
    ld [bc], a                                    ; $5b57: $02
    ld bc, $010a                                  ; $5b58: $01 $0a $01
    rlca                                          ; $5b5b: $07
    nop                                           ; $5b5c: $00
    ld a, [bc]                                    ; $5b5d: $0a
    jr nz, jr_0a5_5b61                            ; $5b5e: $20 $01

    dec b                                         ; $5b60: $05

jr_0a5_5b61:
    inc b                                         ; $5b61: $04
    nop                                           ; $5b62: $00
    ld d, [hl]                                    ; $5b63: $56
    add hl, bc                                    ; $5b64: $09
    ldh [rNR14], a                                ; $5b65: $e0 $14
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    or b                                          ; $5b69: $b0
    ld h, h                                       ; $5b6a: $64
    sub b                                         ; $5b6b: $90
    db $ec                                        ; $5b6c: $ec
    db $d3                                        ; $5b6d: $d3
    ret nz                                        ; $5b6e: $c0

    db $f4                                        ; $5b6f: $f4
    and b                                         ; $5b70: $a0

jr_0a5_5b71:
    nop                                           ; $5b71: $00
    ld d, b                                       ; $5b72: $50
    pop bc                                        ; $5b73: $c1
    jr nc, @-$1b                                  ; $5b74: $30 $e3

    db $10                                        ; $5b76: $10
    ld l, d                                       ; $5b77: $6a
    inc d                                         ; $5b78: $14
    ret nc                                        ; $5b79: $d0

    nop                                           ; $5b7a: $00
    or b                                          ; $5b7b: $b0
    ret nz                                        ; $5b7c: $c0

    db $10                                        ; $5b7d: $10
    ld h, b                                       ; $5b7e: $60
    ld a, [c]                                     ; $5b7f: $f2
    ld c, b                                       ; $5b80: $48
    or b                                          ; $5b81: $b0
    jp hl                                         ; $5b82: $e9


    nop                                           ; $5b83: $00
    ret nc                                        ; $5b84: $d0

jr_0a5_5b85:
    ret nz                                        ; $5b85: $c0

    or b                                          ; $5b86: $b0
    sbc c                                         ; $5b87: $99
    ld [hl], b                                    ; $5b88: $70
    ld hl, sp+$51                                 ; $5b89: $f8 $51
    jr z, jr_0a5_5b8d                             ; $5b8b: $28 $00

jr_0a5_5b8d:
    ret nc                                        ; $5b8d: $d0

    jp $c530                                      ; $5b8e: $c3 $30 $c5


    or b                                          ; $5b91: $b0
    daa                                           ; $5b92: $27
    ret nc                                        ; $5b93: $d0

jr_0a5_5b94:
    jp nz, Jump_000_3000                          ; $5b94: $c2 $00 $30

    ret z                                         ; $5b97: $c8

    jr nc, jr_0a5_5b9e                            ; $5b98: $30 $04

    ld hl, sp+$1e                                 ; $5b9a: $f8 $1e
    db $e3                                        ; $5b9c: $e3
    ld b, [hl]                                    ; $5b9d: $46

jr_0a5_5b9e:
    nop                                           ; $5b9e: $00
    or l                                          ; $5b9f: $b5
    dec l                                         ; $5ba0: $2d
    db $d3                                        ; $5ba1: $d3
    ld l, $d2                                     ; $5ba2: $2e $d2
    add hl, de                                    ; $5ba4: $19
    or $59                                        ; $5ba5: $f6 $59
    nop                                           ; $5ba7: $00
    cp a                                          ; $5ba8: $bf
    ld b, $eb                                     ; $5ba9: $06 $eb
    jr jr_0a5_5b94                                ; $5bab: $18 $e7

    inc bc                                        ; $5bad: $03
    add h                                         ; $5bae: $84
    ld a, [hl+]                                   ; $5baf: $2a
    nop                                           ; $5bb0: $00
    sub a                                         ; $5bb1: $97
    ld bc, $0185                                  ; $5bb2: $01 $85 $01
    and $2b                                       ; $5bb5: $e6 $2b
    add h                                         ; $5bb7: $84
    ld [bc], a                                    ; $5bb8: $02
    nop                                           ; $5bb9: $00
    call $852b                                    ; $5bba: $cd $2b $85
    ld h, b                                       ; $5bbd: $60
    sub a                                         ; $5bbe: $97
    inc a                                         ; $5bbf: $3c
    jp z, Jump_000_0023                           ; $5bc0: $ca $23 $00

    db $f4                                        ; $5bc3: $f4
    dec sp                                        ; $5bc4: $3b
    ldh [$7a], a                                  ; $5bc5: $e0 $7a
    add e                                         ; $5bc7: $83
    ld [hl], $dd                                  ; $5bc8: $36 $dd
    dec hl                                        ; $5bca: $2b
    ld b, b                                       ; $5bcb: $40
    db $fc                                        ; $5bcc: $fc
    db $10                                        ; $5bcd: $10
    ld c, $0b                                     ; $5bce: $0e $0b
    call nc, $8451                                ; $5bd0: $d4 $51 $84
    inc hl                                        ; $5bd3: $23
    adc h                                         ; $5bd4: $8c
    nop                                           ; $5bd5: $00
    dec l                                         ; $5bd6: $2d
    add [hl]                                      ; $5bd7: $86
    ld d, b                                       ; $5bd8: $50
    add a                                         ; $5bd9: $87
    inc sp                                        ; $5bda: $33
    add h                                         ; $5bdb: $84
    dec sp                                        ; $5bdc: $3b
    add [hl]                                      ; $5bdd: $86
    ld [bc], a                                    ; $5bde: $02
    inc hl                                        ; $5bdf: $23
    adc a                                         ; $5be0: $8f
    ld l, b                                       ; $5be1: $68
    sub l                                         ; $5be2: $95
    ld a, e                                       ; $5be3: $7b
    db $ed                                        ; $5be4: $ed
    ret nc                                        ; $5be5: $d0

    jr jr_0a5_5c67                                ; $5be6: $18 $7f

    nop                                           ; $5be8: $00
    ldh [$c5], a                                  ; $5be9: $e0 $c5
    cp [hl]                                       ; $5beb: $be
    jr z, jr_0a5_5b85                             ; $5bec: $28 $97

    pop hl                                        ; $5bee: $e1
    add [hl]                                      ; $5bef: $86
    ld de, $8400                                  ; $5bf0: $11 $00 $84
    ld bc, $3fe4                                  ; $5bf3: $01 $e4 $3f
    add l                                         ; $5bf6: $85
    rrca                                          ; $5bf7: $0f
    add $41                                       ; $5bf8: $c6 $41
    nop                                           ; $5bfa: $00
    add [hl]                                      ; $5bfb: $86
    inc h                                         ; $5bfc: $24
    rst $00                                       ; $5bfd: $c7
    ld a, [bc]                                    ; $5bfe: $0a
    or l                                          ; $5bff: $b5

Jump_0a5_5c00:
    ld c, b                                       ; $5c00: $48
    or a                                          ; $5c01: $b7
    ld e, [hl]                                    ; $5c02: $5e
    ld bc, $13e0                                  ; $5c03: $01 $e0 $13
    add sp, $1c                                   ; $5c06: $e8 $1c
    rst $10                                       ; $5c08: $d7
    sbc a                                         ; $5c09: $9f
    ldh a, [$e0]                                  ; $5c0a: $f0 $e0
    dec h                                         ; $5c0c: $25

jr_0a5_5c0d:
    nop                                           ; $5c0d: $00
    and [hl]                                      ; $5c0e: $a6
    ld bc, $0ea6                                  ; $5c0f: $01 $a6 $0e
    add l                                         ; $5c12: $85
    add hl, hl                                    ; $5c13: $29
    add [hl]                                      ; $5c14: $86
    add e                                         ; $5c15: $83
    ld c, h                                       ; $5c16: $4c
    call nz, $19e0                                ; $5c17: $c4 $e0 $19
    db $fd                                        ; $5c1a: $fd
    inc bc                                        ; $5c1b: $03
    db $10                                        ; $5c1c: $10
    rrca                                          ; $5c1d: $0f
    inc b                                         ; $5c1e: $04
    jr c, jr_0a5_5ca0                             ; $5c1f: $38 $7f

    add b                                         ; $5c21: $80
    nop                                           ; $5c22: $00
    ld b, b                                       ; $5c23: $40
    add b                                         ; $5c24: $80
    dec hl                                        ; $5c25: $2b
    push af                                       ; $5c26: $f5
    dec [hl]                                      ; $5c27: $35
    db $e3                                        ; $5c28: $e3
    add hl, hl                                    ; $5c29: $29
    rst $30                                       ; $5c2a: $f7
    nop                                           ; $5c2b: $00
    db $e3                                        ; $5c2c: $e3
    db $fd                                        ; $5c2d: $fd
    ld h, l                                       ; $5c2e: $65
    cp e                                          ; $5c2f: $bb
    and e                                         ; $5c30: $a3
    ld a, l                                       ; $5c31: $7d
    db $f4                                        ; $5c32: $f4
    rrca                                          ; $5c33: $0f
    nop                                           ; $5c34: $00
    ld a, [bc]                                    ; $5c35: $0a
    rrca                                          ; $5c36: $0f
    push bc                                       ; $5c37: $c5
    dec hl                                        ; $5c38: $2b
    xor e                                         ; $5c39: $ab
    add hl, bc                                    ; $5c3a: $09
    ld b, [hl]                                    ; $5c3b: $46
    xor c                                         ; $5c3c: $a9
    ld [bc], a                                    ; $5c3d: $02
    dec bc                                        ; $5c3e: $0b
    jp hl                                         ; $5c3f: $e9


    ld b, $e9                                     ; $5c40: $06 $e9
    db $eb                                        ; $5c42: $eb
    jp hl                                         ; $5c43: $e9


    jr nc, jr_0a5_5c8e                            ; $5c44: $30 $48

    dec b                                         ; $5c46: $05
    nop                                           ; $5c47: $00
    ei                                            ; $5c48: $fb
    rst $30                                       ; $5c49: $f7
    add hl, bc                                    ; $5c4a: $09
    ld h, c                                       ; $5c4b: $61
    cp a                                          ; $5c4c: $bf
    and l                                         ; $5c4d: $a5
    ld a, e                                       ; $5c4e: $7b
    ld hl, $ff00                                  ; $5c4f: $21 $00 $ff
    ccf                                           ; $5c52: $3f
    rst $38                                       ; $5c53: $ff
    dec [hl]                                      ; $5c54: $35
    db $e3                                        ; $5c55: $e3
    dec hl                                        ; $5c56: $2b
    pop af                                        ; $5c57: $f1
    push hl                                       ; $5c58: $e5
    nop                                           ; $5c59: $00
    ei                                            ; $5c5a: $fb
    ld h, c                                       ; $5c5b: $61
    cp a                                          ; $5c5c: $bf
    and [hl]                                      ; $5c5d: $a6
    add hl, bc                                    ; $5c5e: $09
    ld c, e                                       ; $5c5f: $4b
    add hl, hl                                    ; $5c60: $29
    add [hl]                                      ; $5c61: $86
    ld b, b                                       ; $5c62: $40
    ld l, c                                       ; $5c63: $69
    inc l                                         ; $5c64: $2c

jr_0a5_5c65:
    jr jr_0a5_5c0d                                ; $5c65: $18 $a6

jr_0a5_5c67:
    ld c, c                                       ; $5c67: $49
    ld c, e                                       ; $5c68: $4b
    xor c                                         ; $5c69: $a9
    ld [hl], l                                    ; $5c6a: $75
    adc e                                         ; $5c6b: $8b
    jr nz, jr_0a5_5c65                            ; $5c6c: $20 $f7

    add hl, bc                                    ; $5c6e: $09

jr_0a5_5c6f:
    inc b                                         ; $5c6f: $04
    jr z, jr_0a5_5c6f                             ; $5c70: $28 $fd

    ei                                            ; $5c72: $fb
    ld a, a                                       ; $5c73: $7f
    adc c                                         ; $5c74: $89
    cp a                                          ; $5c75: $bf
    inc b                                         ; $5c76: $04
    ld a, a                                       ; $5c77: $7f
    ld l, e                                       ; $5c78: $6b
    or c                                          ; $5c79: $b1
    dec h                                         ; $5c7a: $25
    ei                                            ; $5c7b: $fb
    inc b                                         ; $5c7c: $04
    ld [$fd23], sp                                ; $5c7d: $08 $23 $fd
    inc c                                         ; $5c80: $0c
    dec h                                         ; $5c81: $25
    ei                                            ; $5c82: $fb
    pop hl                                        ; $5c83: $e1
    rst $38                                       ; $5c84: $ff
    inc l                                         ; $5c85: $2c
    ld [$1830], sp                                ; $5c86: $08 $30 $18
    dec bc                                        ; $5c89: $0b
    jp hl                                         ; $5c8a: $e9


    nop                                           ; $5c8b: $00
    and $e9                                       ; $5c8c: $e6 $e9

jr_0a5_5c8e:
    ld c, e                                       ; $5c8e: $4b
    xor c                                         ; $5c8f: $a9
    and $21                                       ; $5c90: $e6 $21
    ld [$0021], a                                 ; $5c92: $ea $21 $00
    ld c, b                                       ; $5c95: $48
    and c                                         ; $5c96: $a1
    call c, $c421                                 ; $5c97: $dc $21 $c4
    ld h, c                                       ; $5c9a: $61
    ret c                                         ; $5c9b: $d8

    ld hl, $4100                                  ; $5c9c: $21 $00 $41
    and c                                         ; $5c9f: $a1

jr_0a5_5ca0:
    pop hl                                        ; $5ca0: $e1
    jr nz, jr_0a5_5ce3                            ; $5ca1: $20 $40

    and b                                         ; $5ca3: $a0
    pop bc                                        ; $5ca4: $c1
    jr nz, jr_0a5_5ca7                            ; $5ca5: $20 $00

jr_0a5_5ca7:
    jp nz, Jump_0a5_4021                          ; $5ca7: $c2 $21 $40

    ld a, a                                       ; $5caa: $7f
    ld l, [hl]                                    ; $5cab: $6e
    pop af                                        ; $5cac: $f1
    xor a                                         ; $5cad: $af
    ld d, d                                       ; $5cae: $52
    ld [$90be], sp                                ; $5caf: $08 $be $90
    dec a                                         ; $5cb2: $3d
    sub b                                         ; $5cb3: $90
    sub b                                         ; $5cb4: $90
    ld c, d                                       ; $5cb5: $4a
    ld b, b                                       ; $5cb6: $40
    rst $38                                       ; $5cb7: $ff
    jr jr_0a5_5cba                                ; $5cb8: $18 $00

jr_0a5_5cba:
    nop                                           ; $5cba: $00
    db $fc                                        ; $5cbb: $fc
    inc de                                        ; $5cbc: $13
    cp $30                                        ; $5cbd: $fe $30
    xor a                                         ; $5cbf: $af
    ld e, b                                       ; $5cc0: $58
    sbc a                                         ; $5cc1: $9f
    inc b                                         ; $5cc2: $04
    ld h, b                                       ; $5cc3: $60
    cp $05                                        ; $5cc4: $fe $05
    adc [hl]                                      ; $5cc6: $8e
    ld a, e                                       ; $5cc7: $7b
    or h                                          ; $5cc8: $b4
    inc bc                                        ; $5cc9: $03
    db $10                                        ; $5cca: $10
    daa                                           ; $5ccb: $27
    nop                                           ; $5ccc: $00

jr_0a5_5ccd:
    sub b                                         ; $5ccd: $90
    xor $31                                       ; $5cce: $ee $31
    xor [hl]                                      ; $5cd0: $ae
    ld b, c                                       ; $5cd1: $41
    ld a, a                                       ; $5cd2: $7f
    add b                                         ; $5cd3: $80
    rst $10                                       ; $5cd4: $d7
    nop                                           ; $5cd5: $00
    ld [$c13f], sp                                ; $5cd6: $08 $3f $c1
    add b                                         ; $5cd9: $80
    rst $38                                       ; $5cda: $ff
    inc b                                         ; $5cdb: $04
    xor c                                         ; $5cdc: $a9
    push af                                       ; $5cdd: $f5
    nop                                           ; $5cde: $00
    ld a, [bc]                                    ; $5cdf: $0a
    pop de                                        ; $5ce0: $d1
    jr z, jr_0a5_5ccd                             ; $5ce1: $28 $ea

jr_0a5_5ce3:
    ld hl, $28d7                                  ; $5ce3: $21 $d7 $28
    db $eb                                        ; $5ce6: $eb
    nop                                           ; $5ce7: $00
    inc e                                         ; $5ce8: $1c
    ld [hl], l                                    ; $5ce9: $75
    add b                                         ; $5cea: $80
    nop                                           ; $5ceb: $00
    rst $38                                       ; $5cec: $ff
    ld a, b                                       ; $5ced: $78
    nop                                           ; $5cee: $00
    inc l                                         ; $5cef: $2c
    nop                                           ; $5cf0: $00
    db $10                                        ; $5cf1: $10
    ld e, d                                       ; $5cf2: $5a
    add b                                         ; $5cf3: $80
    inc bc                                        ; $5cf4: $03
    nop                                           ; $5cf5: $00
    inc b                                         ; $5cf6: $04
    rst $38                                       ; $5cf7: $ff
    ld a, e                                       ; $5cf8: $7b
    inc b                                         ; $5cf9: $04
    xor h                                         ; $5cfa: $ac
    adc d                                         ; $5cfb: $8a
    ld c, c                                       ; $5cfc: $49
    sbc [hl]                                      ; $5cfd: $9e
    daa                                           ; $5cfe: $27
    or b                                          ; $5cff: $b0
    ld [bc], a                                    ; $5d00: $02
    ld [bc], a                                    ; $5d01: $02
    and h                                         ; $5d02: $a4
    add b                                         ; $5d03: $80
    xor [hl]                                      ; $5d04: $ae
    inc bc                                        ; $5d05: $03
    ld bc, $cbff                                  ; $5d06: $01 $ff $cb
    dec a                                         ; $5d09: $3d
    jp z, Jump_0a5_7011                           ; $5d0a: $ca $11 $70

    nop                                           ; $5d0d: $00
    xor l                                         ; $5d0e: $ad
    add l                                         ; $5d0f: $85
    ld a, b                                       ; $5d10: $78
    ld h, c                                       ; $5d11: $61
    ld [bc], a                                    ; $5d12: $02
    ld sp, $5204                                  ; $5d13: $31 $04 $52
    nop                                           ; $5d16: $00

jr_0a5_5d17:
    ld bc, $ff80                                  ; $5d17: $01 $80 $ff
    push af                                       ; $5d1a: $f5
    dec bc                                        ; $5d1b: $0b
    ret                                           ; $5d1c: $c9


    inc [hl]                                      ; $5d1d: $34
    xor h                                         ; $5d1e: $ac
    nop                                           ; $5d1f: $00
    ld de, $64bf                                  ; $5d20: $11 $bf $64
    ld b, h                                       ; $5d23: $44
    db $10                                        ; $5d24: $10
    ld de, $006a                                  ; $5d25: $11 $6a $00
    nop                                           ; $5d28: $00

jr_0a5_5d29:
    add hl, bc                                    ; $5d29: $09
    nop                                           ; $5d2a: $00
    rst $38                                       ; $5d2b: $ff
    ld hl, sp+$04                                 ; $5d2c: $f8 $04
    rst $20                                       ; $5d2e: $e7
    jr jr_0a5_5d3c                                ; $5d2f: $18 $0b

    nop                                           ; $5d31: $00
    and b                                         ; $5d32: $a0
    xor $01                                       ; $5d33: $ee $01
    dec c                                         ; $5d35: $0d
    ei                                            ; $5d36: $fb
    rst $38                                       ; $5d37: $ff
    ld sp, hl                                     ; $5d38: $f9
    dec b                                         ; $5d39: $05
    db $10                                        ; $5d3a: $10
    ei                                            ; $5d3b: $fb

jr_0a5_5d3c:
    rrca                                          ; $5d3c: $0f
    pop af                                        ; $5d3d: $f1
    jr c, jr_0a5_5d69                             ; $5d3e: $38 $29

    ld h, l                                       ; $5d40: $65
    cp e                                          ; $5d41: $bb
    and c                                         ; $5d42: $a1
    ld a, a                                       ; $5d43: $7f
    jr nz, jr_0a5_5dc5                            ; $5d44: $20 $7f

    cp a                                          ; $5d46: $bf
    jp nc, $2918                                  ; $5d47: $d2 $18 $29

    rst $30                                       ; $5d4a: $f7
    dec h                                         ; $5d4b: $25
    ei                                            ; $5d4c: $fb
    and [hl]                                      ; $5d4d: $a6
    jr jr_0a5_5d99                                ; $5d4e: $18 $49

    ld l, e                                       ; $5d50: $6b
    adc c                                         ; $5d51: $89
    ret nc                                        ; $5d52: $d0

    jr z, jr_0a5_5d29                             ; $5d53: $28 $d4

    ld [$ff81], sp                                ; $5d55: $08 $81 $ff
    ret nz                                        ; $5d58: $c0

    ccf                                           ; $5d59: $3f
    cp a                                          ; $5d5a: $bf
    add b                                         ; $5d5b: $80
    inc b                                         ; $5d5c: $04
    jr nz, jr_0a5_5d17                            ; $5d5d: $20 $b8

    ld a, [bc]                                    ; $5d5f: $0a
    ld d, c                                       ; $5d60: $51
    ld c, $bc                                     ; $5d61: $0e $bc
    ld a, [de]                                    ; $5d63: $1a
    nop                                           ; $5d64: $00
    inc b                                         ; $5d65: $04
    ret nz                                        ; $5d66: $c0

    rlca                                          ; $5d67: $07
    add [hl]                                      ; $5d68: $86

jr_0a5_5d69:
    or b                                          ; $5d69: $b0
    ld c, e                                       ; $5d6a: $4b
    nop                                           ; $5d6b: $00
    rst $38                                       ; $5d6c: $ff
    ld b, b                                       ; $5d6d: $40

jr_0a5_5d6e:
    inc h                                         ; $5d6e: $24
    or b                                          ; $5d6f: $b0
    ld c, e                                       ; $5d70: $4b
    sbc e                                         ; $5d71: $9b
    ld bc, $8400                                  ; $5d72: $01 $00 $84
    or b                                          ; $5d75: $b0
    dec de                                        ; $5d76: $1b
    jr nz, @+$01                                  ; $5d77: $20 $ff

    ldh [rTAC], a                                 ; $5d79: $e0 $07
    or b                                          ; $5d7b: $b0
    ld c, e                                       ; $5d7c: $4b
    ld b, b                                       ; $5d7d: $40
    rst $38                                       ; $5d7e: $ff
    add d                                         ; $5d7f: $82
    db $10                                        ; $5d80: $10
    add hl, hl                                    ; $5d81: $29
    ld b, d                                       ; $5d82: $42
    rst $38                                       ; $5d83: $ff
    ld a, [hl]                                    ; $5d84: $7e
    jp $027a                                      ; $5d85: $c3 $7a $02


    ld b, b                                       ; $5d88: $40
    add b                                         ; $5d89: $80
    jr nz, @+$01                                  ; $5d8a: $20 $ff

    ld a, a                                       ; $5d8c: $7f
    ld e, c                                       ; $5d8d: $59
    rlca                                          ; $5d8e: $07
    call nz, $aabb                                ; $5d8f: $c4 $bb $aa
    push de                                       ; $5d92: $d5
    rst $38                                       ; $5d93: $ff
    ld [bc], a                                    ; $5d94: $02
    rst $38                                       ; $5d95: $ff
    rst $18                                       ; $5d96: $df
    cp a                                          ; $5d97: $bf
    sub b                                         ; $5d98: $90

jr_0a5_5d99:
    rst $38                                       ; $5d99: $ff
    ld bc, $05be                                  ; $5d9a: $01 $be $05
    ld bc, $0100                                  ; $5d9d: $01 $00 $01
    xor c                                         ; $5da0: $a9
    ld d, a                                       ; $5da1: $57
    dec d                                         ; $5da2: $15
    db $eb                                        ; $5da3: $eb
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    ld sp, hl                                     ; $5da6: $f9
    nop                                           ; $5da7: $00

jr_0a5_5da8:
    rst $38                                       ; $5da8: $ff
    dec bc                                        ; $5da9: $0b
    db $fd                                        ; $5daa: $fd
    ret nc                                        ; $5dab: $d0

    or b                                          ; $5dac: $b0
    or l                                          ; $5dad: $b5
    jp c, Jump_000_08d0                           ; $5dae: $da $d0 $08

    cp a                                          ; $5db1: $bf
    sbc a                                         ; $5db2: $9f
    rst $38                                       ; $5db3: $ff
    sbc a                                         ; $5db4: $9f
    cp b                                          ; $5db5: $b8
    inc b                                         ; $5db6: $04
    cp a                                          ; $5db7: $bf
    ret nz                                        ; $5db8: $c0

    cp a                                          ; $5db9: $bf
    nop                                           ; $5dba: $00
    ret nz                                        ; $5dbb: $c0

    dec c                                         ; $5dbc: $0d
    dec bc                                        ; $5dbd: $0b
    db $db                                        ; $5dbe: $db
    dec l                                         ; $5dbf: $2d
    xor c                                         ; $5dc0: $a9
    ld e, a                                       ; $5dc1: $5f
    ei                                            ; $5dc2: $fb
    ld b, b                                       ; $5dc3: $40
    db $fd                                        ; $5dc4: $fd

jr_0a5_5dc5:
    inc e                                         ; $5dc5: $1c
    nop                                           ; $5dc6: $00
    rst $38                                       ; $5dc7: $ff
    db $fd                                        ; $5dc8: $fd
    inc bc                                        ; $5dc9: $03
    db $fd                                        ; $5dca: $fd
    inc bc                                        ; $5dcb: $03
    xor d                                         ; $5dcc: $aa
    nop                                           ; $5dcd: $00
    push de                                       ; $5dce: $d5
    nop                                           ; $5dcf: $00
    ldh [$a8], a                                  ; $5dd0: $e0 $a8
    ret nc                                        ; $5dd2: $d0

    ld d, [hl]                                    ; $5dd3: $56
    and b                                         ; $5dd4: $a0
    ret nz                                        ; $5dd5: $c0

    ld c, $90                                     ; $5dd6: $0e $90
    ld d, b                                       ; $5dd8: $50
    add b                                         ; $5dd9: $80
    ret nz                                        ; $5dda: $c0

    inc c                                         ; $5ddb: $0c
    ld [bc], a                                    ; $5ddc: $02
    inc b                                         ; $5ddd: $04
    rlca                                          ; $5dde: $07
    and d                                         ; $5ddf: $a2
    dec bc                                        ; $5de0: $0b
    ld [bc], a                                    ; $5de1: $02
    ld [hl+], a                                   ; $5de2: $22
    ld bc, $3902                                  ; $5de3: $01 $02 $39
    inc b                                         ; $5de6: $04
    ld [bc], a                                    ; $5de7: $02
    ld [$1002], sp                                ; $5de8: $08 $02 $10
    jr jr_0a5_5d6e                                ; $5deb: $18 $81

    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    add [hl]                                      ; $5def: $86
    nop                                           ; $5df0: $00
    adc b                                         ; $5df1: $88
    nop                                           ; $5df2: $00
    ld a, [bc]                                    ; $5df3: $0a
    add b                                         ; $5df4: $80
    add b                                         ; $5df5: $80
    ld b, b                                       ; $5df6: $40
    db $10                                        ; $5df7: $10
    jr nz, jr_0a5_5e12                            ; $5df8: $20 $18

    ldh [rP1], a                                  ; $5dfa: $e0 $00
    jr jr_0a5_5dfe                                ; $5dfc: $18 $00

jr_0a5_5dfe:
    call nz, $7000                                ; $5dfe: $c4 $00 $70
    inc d                                         ; $5e01: $14
    jr z, jr_0a5_5e04                             ; $5e02: $28 $00

jr_0a5_5e04:
    inc [hl]                                      ; $5e04: $34
    ld [$2804], sp                                ; $5e05: $08 $04 $28

jr_0a5_5e08:
    pop bc                                        ; $5e08: $c1
    add b                                         ; $5e09: $80
    ld b, [hl]                                    ; $5e0a: $46
    add b                                         ; $5e0b: $80
    nop                                           ; $5e0c: $00
    inc b                                         ; $5e0d: $04
    ld a, [bc]                                    ; $5e0e: $0a
    nop                                           ; $5e0f: $00
    ld b, $01                                     ; $5e10: $06 $01

jr_0a5_5e12:
    ld b, $00                                     ; $5e12: $06 $00
    rlca                                          ; $5e14: $07
    ret nz                                        ; $5e15: $c0

    jr z, jr_0a5_5e1b                             ; $5e16: $28 $03

    ld h, $10                                     ; $5e18: $26 $10
    inc d                                         ; $5e1a: $14

jr_0a5_5e1b:
    add b                                         ; $5e1b: $80
    adc h                                         ; $5e1c: $8c
    db $10                                        ; $5e1d: $10
    jr jr_0a5_5da8                                ; $5e1e: $18 $88

    ld bc, $880e                                  ; $5e20: $01 $0e $88
    rrca                                          ; $5e23: $0f
    add [hl]                                      ; $5e24: $86
    add a                                         ; $5e25: $87
    ld bc, $6803                                  ; $5e26: $01 $03 $68
    ld b, $00                                     ; $5e29: $06 $00
    ld a, [bc]                                    ; $5e2b: $0a
    nop                                           ; $5e2c: $00
    ld [$0602], sp                                ; $5e2d: $08 $02 $06
    inc b                                         ; $5e30: $04
    inc e                                         ; $5e31: $1c
    inc b                                         ; $5e32: $04
    ld b, $fc                                     ; $5e33: $06 $fc
    jr @-$06                                      ; $5e35: $18 $f8

    ldh [$f0], a                                  ; $5e37: $e0 $f0
    ld a, b                                       ; $5e39: $78
    ld b, $10                                     ; $5e3a: $06 $10
    ld e, c                                       ; $5e3c: $59
    ld bc, $0000                                  ; $5e3d: $01 $00 $00
    ld [de], a                                    ; $5e40: $12
    add l                                         ; $5e41: $85
    ld c, e                                       ; $5e42: $4b
    add h                                         ; $5e43: $84
    ld d, d                                       ; $5e44: $52
    add l                                         ; $5e45: $85
    dec de                                        ; $5e46: $1b
    nop                                           ; $5e47: $00
    and h                                         ; $5e48: $a4
    inc bc                                        ; $5e49: $03
    add h                                         ; $5e4a: $84
    dec de                                        ; $5e4b: $1b
    call nz, $a703                                ; $5e4c: $c4 $03 $a7
    dec de                                        ; $5e4f: $1b
    ld b, d                                       ; $5e50: $42
    rlca                                          ; $5e51: $07
    or b                                          ; $5e52: $b0
    inc e                                         ; $5e53: $1c
    jr nz, @+$01                                  ; $5e54: $20 $ff

    push hl                                       ; $5e56: $e5
    ld [bc], a                                    ; $5e57: $02
    ret nz                                        ; $5e58: $c0

    inc e                                         ; $5e59: $1c
    ld a, [hl+]                                   ; $5e5a: $2a
    nop                                           ; $5e5b: $00
    inc d                                         ; $5e5c: $14
    ld e, d                                       ; $5e5d: $5a
    add l                                         ; $5e5e: $85
    inc bc                                        ; $5e5f: $03
    inc b                                         ; $5e60: $04
    ld b, d                                       ; $5e61: $42
    db $fd                                        ; $5e62: $fd
    ld l, d                                       ; $5e63: $6a
    ld l, h                                       ; $5e64: $6c
    push af                                       ; $5e65: $f5
    jr nz, jr_0a5_5e82                            ; $5e66: $20 $1a

    or b                                          ; $5e68: $b0
    ld [$5401], sp                                ; $5e69: $08 $01 $54
    inc h                                         ; $5e6c: $24
    ld e, e                                       ; $5e6d: $5b
    inc c                                         ; $5e6e: $0c
    xor e                                         ; $5e6f: $ab
    ld d, l                                       ; $5e70: $55
    nop                                           ; $5e71: $00
    ld [$f507], sp                                ; $5e72: $08 $07 $f5
    inc bc                                        ; $5e75: $03
    ld a, [bc]                                    ; $5e76: $0a
    dec b                                         ; $5e77: $05
    rla                                           ; $5e78: $17
    ld bc, $2218                                  ; $5e79: $01 $18 $22
    ld bc, $c803                                  ; $5e7c: $01 $03 $c8
    ld b, $6f                                     ; $5e7f: $06 $6f
    inc c                                         ; $5e81: $0c

jr_0a5_5e82:
    inc bc                                        ; $5e82: $03
    nop                                           ; $5e83: $00
    ld c, h                                       ; $5e84: $4c
    nop                                           ; $5e85: $00
    jr nc, jr_0a5_5e08                            ; $5e86: $30 $80

    ld a, a                                       ; $5e88: $7f
    stop                                          ; $5e89: $10 $00
    ld a, [hl+]                                   ; $5e8b: $2a
    nop                                           ; $5e8c: $00
    rlca                                          ; $5e8d: $07
    ld b, b                                       ; $5e8e: $40
    jr c, @+$16                                   ; $5e8f: $38 $14

    ld [$0103], sp                                ; $5e91: $08 $03 $01
    add d                                         ; $5e94: $82
    ld bc, $f103                                  ; $5e95: $01 $03 $f1
    nop                                           ; $5e98: $00
    ld [hl+], a                                   ; $5e99: $22
    ld bc, $0193                                  ; $5e9a: $01 $93 $01
    add d                                         ; $5e9d: $82
    ld [hl], c                                    ; $5e9e: $71
    ld b, d                                       ; $5e9f: $42
    jp Jump_0a5_5700                              ; $5ea0: $c3 $00 $57


    ld [$d66b], a                                 ; $5ea3: $ea $6b $d6
    ld d, a                                       ; $5ea6: $57
    ld [$f64b], a                                 ; $5ea7: $ea $4b $f6
    ld [bc], a                                    ; $5eaa: $02
    ld a, a                                       ; $5eab: $7f
    cp $35                                        ; $5eac: $fe $35
    xor $2d                                       ; $5eae: $ee $2d
    or $40                                        ; $5eb0: $f6 $40
    add hl, bc                                    ; $5eb2: $09
    db $fc                                        ; $5eb3: $fc
    add b                                         ; $5eb4: $80
    ld [bc], a                                    ; $5eb5: $02
    ld b, b                                       ; $5eb6: $40
    ret z                                         ; $5eb7: $c8

    add b                                         ; $5eb8: $80
    ld c, d                                       ; $5eb9: $4a
    add b                                         ; $5eba: $80
    ret nz                                        ; $5ebb: $c0

    sub b                                         ; $5ebc: $90
    ld d, h                                       ; $5ebd: $54
    nop                                           ; $5ebe: $00
    add b                                         ; $5ebf: $80
    call z, Call_0a5_5890                         ; $5ec0: $cc $90 $58
    adc b                                         ; $5ec3: $88
    adc $88                                       ; $5ec4: $ce $88
    ld c, a                                       ; $5ec6: $4f
    ld a, b                                       ; $5ec7: $78
    add [hl]                                      ; $5ec8: $86
    or $18                                        ; $5ec9: $f6 $18
    add $38                                       ; $5ecb: $c6 $38
    ld a, e                                       ; $5ecd: $7b
    ld b, b                                       ; $5ece: $40
    jp c, Jump_000_1814                           ; $5ecf: $da $14 $18

    nop                                           ; $5ed2: $00
    inc hl                                        ; $5ed3: $23
    add b                                         ; $5ed4: $80
    ld b, d                                       ; $5ed5: $42
    inc b                                         ; $5ed6: $04
    nop                                           ; $5ed7: $00
    ld b, b                                       ; $5ed8: $40
    ld d, b                                       ; $5ed9: $50
    nop                                           ; $5eda: $00
    jr nc, jr_0a5_5f1d                            ; $5edb: $30 $40

    ld h, b                                       ; $5edd: $60
    nop                                           ; $5ede: $00
    jr nz, jr_0a5_5f19                            ; $5edf: $20 $38

    jr nz, jr_0a5_5f46                            ; $5ee1: $20 $63

    ld bc, $0112                                  ; $5ee3: $01 $12 $01
    ld d, e                                       ; $5ee6: $53
    nop                                           ; $5ee7: $00
    ld bc, $0902                                  ; $5ee8: $01 $02 $09
    dec hl                                        ; $5eeb: $2b
    ld bc, $0922                                  ; $5eec: $01 $22 $09
    dec de                                        ; $5eef: $1b
    nop                                           ; $5ef0: $00
    ld de, $1172                                  ; $5ef1: $11 $72 $11
    add e                                         ; $5ef4: $83
    rst $38                                       ; $5ef5: $ff
    ld b, c                                       ; $5ef6: $41
    cp a                                          ; $5ef7: $bf
    add e                                         ; $5ef8: $83
    ld [de], a                                    ; $5ef9: $12
    ld a, a                                       ; $5efa: $7f
    ld bc, $87ff                                  ; $5efb: $01 $ff $87
    inc bc                                        ; $5efe: $03
    rst $38                                       ; $5eff: $ff
    xor e                                         ; $5f00: $ab
    or [hl]                                       ; $5f01: $b6
    rlca                                          ; $5f02: $07
    sub b                                         ; $5f03: $90
    ld c, $6f                                     ; $5f04: $0e $6f
    add hl, bc                                    ; $5f06: $09
    ld b, d                                       ; $5f07: $42
    rst $38                                       ; $5f08: $ff
    ld bc, $8360                                  ; $5f09: $01 $60 $83
    rst $38                                       ; $5f0c: $ff
    pop bc                                        ; $5f0d: $c1
    cp a                                          ; $5f0e: $bf
    inc b                                         ; $5f0f: $04
    ld c, b                                       ; $5f10: $48
    add b                                         ; $5f11: $80
    nop                                           ; $5f12: $00
    rst $38                                       ; $5f13: $ff
    halt                                          ; $5f14: $76
    rst $38                                       ; $5f15: $ff
    sbc [hl]                                      ; $5f16: $9e
    pop hl                                        ; $5f17: $e1
    nop                                           ; $5f18: $00

jr_0a5_5f19:
    rst $38                                       ; $5f19: $ff
    adc d                                         ; $5f1a: $8a

jr_0a5_5f1b:
    nop                                           ; $5f1b: $00
    push af                                       ; $5f1c: $f5

jr_0a5_5f1d:
    nop                                           ; $5f1d: $00
    rst $38                                       ; $5f1e: $ff
    push de                                       ; $5f1f: $d5
    rst $38                                       ; $5f20: $ff
    dec d                                         ; $5f21: $15
    ld [$0000], a                                 ; $5f22: $ea $00 $00

jr_0a5_5f25:
    rst $38                                       ; $5f25: $ff
    xor h                                         ; $5f26: $ac
    rst $38                                       ; $5f27: $ff
    cp d                                          ; $5f28: $ba
    ld b, l                                       ; $5f29: $45

Call_0a5_5f2a:
    rla                                           ; $5f2a: $17
    add sp, -$03                                  ; $5f2b: $e8 $fd
    nop                                           ; $5f2d: $00
    ld [bc], a                                    ; $5f2e: $02
    nop                                           ; $5f2f: $00
    rst $38                                       ; $5f30: $ff
    dec hl                                        ; $5f31: $2b
    rst $38                                       ; $5f32: $ff
    ld d, b                                       ; $5f33: $50
    xor a                                         ; $5f34: $af
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    rst $38                                       ; $5f37: $ff
    and a                                         ; $5f38: $a7
    rst $38                                       ; $5f39: $ff
    add b                                         ; $5f3a: $80
    ld a, a                                       ; $5f3b: $7f
    push af                                       ; $5f3c: $f5
    ld a, [bc]                                    ; $5f3d: $0a
    ld [bc], a                                    ; $5f3e: $02
    nop                                           ; $5f3f: $00
    db $fd                                        ; $5f40: $fd
    nop                                           ; $5f41: $00
    rst $38                                       ; $5f42: $ff
    ld d, h                                       ; $5f43: $54
    rst $38                                       ; $5f44: $ff
    ld [bc], a                                    ; $5f45: $02

jr_0a5_5f46:
    db $fd                                        ; $5f46: $fd
    add b                                         ; $5f47: $80
    ld [bc], a                                    ; $5f48: $02
    rst $38                                       ; $5f49: $ff
    jr z, @-$27                                   ; $5f4a: $28 $d7

    add b                                         ; $5f4c: $80
    rst $38                                       ; $5f4d: $ff
    ld e, l                                       ; $5f4e: $5d
    jr nc, jr_0a5_5f61                            ; $5f4f: $30 $10

    xor d                                         ; $5f51: $aa
    ld b, $d5                                     ; $5f52: $06 $d5
    nop                                           ; $5f54: $00
    rst $38                                       ; $5f55: $ff
    db $ed                                        ; $5f56: $ed
    ld [de], a                                    ; $5f57: $12
    ld a, [de]                                    ; $5f58: $1a
    ld [$183a], sp                                ; $5f59: $08 $3a $18
    cp a                                          ; $5f5c: $bf
    nop                                           ; $5f5d: $00
    ld b, b                                       ; $5f5e: $40
    nop                                           ; $5f5f: $00
    rst $38                                       ; $5f60: $ff

jr_0a5_5f61:
    nop                                           ; $5f61: $00
    rst $38                                       ; $5f62: $ff
    xor l                                         ; $5f63: $ad
    ld d, d                                       ; $5f64: $52
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    rst $38                                       ; $5f67: $ff
    ld a, [bc]                                    ; $5f68: $0a
    rst $38                                       ; $5f69: $ff
    ld e, l                                       ; $5f6a: $5d
    and d                                         ; $5f6b: $a2
    cpl                                           ; $5f6c: $2f
    ret nc                                        ; $5f6d: $d0

    ld d, l                                       ; $5f6e: $55
    jr nz, jr_0a5_5f1b                            ; $5f6f: $20 $aa

    nop                                           ; $5f71: $00
    ld a, a                                       ; $5f72: $7f
    nop                                           ; $5f73: $00
    ld [$dbff], a                                 ; $5f74: $ea $ff $db
    ldh [$f5], a                                  ; $5f77: $e0 $f5
    nop                                           ; $5f79: $00
    ret nz                                        ; $5f7a: $c0

    db $db                                        ; $5f7b: $db
    ldh [$f1], a                                  ; $5f7c: $e0 $f1
    ret nz                                        ; $5f7e: $c0

    pop de                                        ; $5f7f: $d1
    ldh [$a0], a                                  ; $5f80: $e0 $a0
    ld b, b                                       ; $5f82: $40
    rst $08                                       ; $5f83: $cf
    sub b                                         ; $5f84: $90
    ld [$ff7f], sp                                ; $5f85: $08 $7f $ff
    cp $7d                                        ; $5f88: $fe $7d
    ld a, l                                       ; $5f8a: $7d
    cp $02                                        ; $5f8b: $fe $02
    cp $7c                                        ; $5f8d: $fe $7c
    ld d, l                                       ; $5f8f: $55
    db $fc                                        ; $5f90: $fc
    xor b                                         ; $5f91: $a8
    ld a, h                                       ; $5f92: $7c
    and b                                         ; $5f93: $a0

jr_0a5_5f94:
    jr jr_0a5_5f25                                ; $5f94: $18 $8f

    nop                                           ; $5f96: $00
    ld a, a                                       ; $5f97: $7f
    ld d, a                                       ; $5f98: $57
    xor d                                         ; $5f99: $aa
    xor d                                         ; $5f9a: $aa
    ld [bc], a                                    ; $5f9b: $02
    ld d, a                                       ; $5f9c: $57
    ld [bc], a                                    ; $5f9d: $02
    inc b                                         ; $5f9e: $04
    nop                                           ; $5f9f: $00
    inc b                                         ; $5fa0: $04
    call z, $89d0                                 ; $5fa1: $cc $d0 $89
    jp nc, $c09b                                  ; $5fa4: $d2 $9b $c0

    adc [hl]                                      ; $5fa7: $8e
    db $10                                        ; $5fa8: $10
    ldh [$80], a                                  ; $5fa9: $e0 $80
    pop af                                        ; $5fab: $f1
    cp d                                          ; $5fac: $ba
    ld [$ebf4], sp                                ; $5fad: $08 $f4 $eb
    sub $7c                                       ; $5fb0: $d6 $7c
    inc c                                         ; $5fb2: $0c
    dec hl                                        ; $5fb3: $2b
    ld a, h                                       ; $5fb4: $7c
    nop                                           ; $5fb5: $00
    ld a, a                                       ; $5fb6: $7f
    ld e, b                                       ; $5fb7: $58
    ld [$08ca], sp                                ; $5fb8: $08 $ca $08
    ld a, h                                       ; $5fbb: $7c
    rst $38                                       ; $5fbc: $ff
    dec c                                         ; $5fbd: $0d
    xor [hl]                                      ; $5fbe: $ae
    inc b                                         ; $5fbf: $04
    push de                                       ; $5fc0: $d5
    ld l, $66                                     ; $5fc1: $2e $66
    ld [$1810], sp                                ; $5fc3: $08 $10 $18
    ld e, a                                       ; $5fc6: $5f
    and b                                         ; $5fc7: $a0
    nop                                           ; $5fc8: $00
    ld b, d                                       ; $5fc9: $42
    ld b, l                                       ; $5fca: $45
    ld [hl], h                                    ; $5fcb: $74
    nop                                           ; $5fcc: $00
    ld a, [hl+]                                   ; $5fcd: $2a
    push de                                       ; $5fce: $d5
    push de                                       ; $5fcf: $d5
    ld a, [hl+]                                   ; $5fd0: $2a
    halt                                          ; $5fd1: $76
    ld [$09be], sp                                ; $5fd2: $08 $be $09
    ld b, c                                       ; $5fd5: $41
    nop                                           ; $5fd6: $00
    rst $38                                       ; $5fd7: $ff
    ld e, a                                       ; $5fd8: $5f
    add h                                         ; $5fd9: $84
    nop                                           ; $5fda: $00
    xor a                                         ; $5fdb: $af
    ld d, b                                       ; $5fdc: $50
    adc d                                         ; $5fdd: $8a
    ld [$9d01], sp                                ; $5fde: $08 $01 $9d
    rst $38                                       ; $5fe1: $ff
    xor b                                         ; $5fe2: $a8
    ld d, a                                       ; $5fe3: $57
    nop                                           ; $5fe4: $00
    rst $38                                       ; $5fe5: $ff
    jp nc, $001e                                  ; $5fe6: $d2 $1e $00

    nop                                           ; $5fe9: $00
    db $f4                                        ; $5fea: $f4

jr_0a5_5feb:
    dec bc                                        ; $5feb: $0b
    cp d                                          ; $5fec: $ba
    ld b, l                                       ; $5fed: $45
    nop                                           ; $5fee: $00
    rst $38                                       ; $5fef: $ff
    ld [bc], a                                    ; $5ff0: $02
    rst $38                                       ; $5ff1: $ff
    jr nz, jr_0a5_5f94                            ; $5ff2: $20 $a0

    ld e, a                                       ; $5ff4: $5f
    inc e                                         ; $5ff5: $1c
    nop                                           ; $5ff6: $00
    rst $38                                       ; $5ff7: $ff
    ld [$5d15], a                                 ; $5ff8: $ea $15 $5d
    and d                                         ; $5ffb: $a2
    and l                                         ; $5ffc: $a5
    ret nc                                        ; $5ffd: $d0

    ld [$ae96], sp                                ; $5ffe: $08 $96 $ae
    nop                                           ; $6001: $00
    ld d, a                                       ; $6002: $57
    xor b                                         ; $6003: $a8
    inc h                                         ; $6004: $24
    ld [$600a], sp                                ; $6005: $08 $0a $60
    ld [$0014], sp                                ; $6008: $08 $14 $00
    xor d                                         ; $600b: $aa
    ld d, l                                       ; $600c: $55
    ld b, $28                                     ; $600d: $06 $28
    sub d                                         ; $600f: $92
    ret z                                         ; $6010: $c8

    nop                                           ; $6011: $00
    jp c, $9025                                   ; $6012: $da $25 $90

    ld l, $08                                     ; $6015: $2e $08
    rst $38                                       ; $6017: $ff
    nop                                           ; $6018: $00
    ld b, h                                       ; $6019: $44
    ld [$ff2a], sp                                ; $601a: $08 $2a $ff
    dec b                                         ; $601d: $05
    ld a, [$de88]                                 ; $601e: $fa $88 $de
    jr jr_0a5_6077                                ; $6021: $18 $54

    xor e                                         ; $6023: $ab
    ld a, [bc]                                    ; $6024: $0a
    ld a, [hl+]                                   ; $6025: $2a
    ld bc, $ffae                                  ; $6026: $01 $ae $ff
    ld b, b                                       ; $6029: $40
    jr jr_0a5_5feb                                ; $602a: $18 $bf

    push af                                       ; $602c: $f5
    ld a, [bc]                                    ; $602d: $0a
    ld a, [bc]                                    ; $602e: $0a
    ld [$1960], sp                                ; $602f: $08 $60 $19
    adc e                                         ; $6032: $8b
    push af                                       ; $6033: $f5
    ld d, l                                       ; $6034: $55
    ld bc, $abab                                  ; $6035: $01 $ab $ab
    ld bc, $0154                                  ; $6038: $01 $54 $01
    ld bc, $7001                                  ; $603b: $01 $01 $70
    add hl, sp                                    ; $603e: $39
    ld [hl], b                                    ; $603f: $70
    and e                                         ; $6040: $a3
    adc c                                         ; $6041: $89
    nop                                           ; $6042: $00
    ld bc, $8311                                  ; $6043: $01 $11 $83
    ld hl, $fde2                                  ; $6046: $21 $e2 $fd
    rst $38                                       ; $6049: $ff
    add b                                         ; $604a: $80
    nop                                           ; $604b: $00
    xor d                                         ; $604c: $aa
    add b                                         ; $604d: $80
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    db $fd                                        ; $6050: $fd
    rst $38                                       ; $6051: $ff
    ei                                            ; $6052: $fb
    db $fc                                        ; $6053: $fc

jr_0a5_6054:
    jr nz, jr_0a5_6054                            ; $6054: $20 $fe

    ld hl, sp+$04                                 ; $6056: $f8 $04
    nop                                           ; $6058: $00
    ld a, b                                       ; $6059: $78
    jp nc, $ac7c                                  ; $605a: $d2 $7c $ac

    ld a, c                                       ; $605d: $79
    ld [$01aa], sp                                ; $605e: $08 $aa $01
    ld a, a                                       ; $6061: $7f
    add c                                         ; $6062: $81
    ret nc                                        ; $6063: $d0

    jr c, @-$04                                   ; $6064: $38 $fa

    db $fd                                        ; $6066: $fd
    nop                                           ; $6067: $00

Call_0a5_6068:
    sbc b                                         ; $6068: $98
    ld bc, $aa00                                  ; $6069: $01 $00 $aa
    nop                                           ; $606c: $00
    ld a, [hl]                                    ; $606d: $7e
    add hl, bc                                    ; $606e: $09
    cp d                                          ; $606f: $ba
    add hl, bc                                    ; $6070: $09
    xor d                                         ; $6071: $aa
    ld d, l                                       ; $6072: $55
    add b                                         ; $6073: $80
    ld bc, $4080                                  ; $6074: $01 $80 $40

jr_0a5_6077:
    ld b, b                                       ; $6077: $40
    ld [$5740], a                                 ; $6078: $ea $40 $57
    add sp, $00                                   ; $607b: $e8 $00
    add hl, de                                    ; $607d: $19
    nop                                           ; $607e: $00
    cp e                                          ; $607f: $bb
    ld a, h                                       ; $6080: $7c
    ld d, c                                       ; $6081: $51
    ld a, d                                       ; $6082: $7a
    add hl, hl                                    ; $6083: $29
    ld a, d                                       ; $6084: $7a
    add e                                         ; $6085: $83
    ld a, b                                       ; $6086: $78
    ld [$7c81], sp                                ; $6087: $08 $81 $7c
    nop                                           ; $608a: $00
    cp $da                                        ; $608b: $fe $da
    add hl, bc                                    ; $608d: $09
    pop bc                                        ; $608e: $c1
    inc a                                         ; $608f: $3c
    ld bc, $ff0a                                  ; $6090: $01 $0a $ff
    ld e, [hl]                                    ; $6093: $5e
    rst $38                                       ; $6094: $ff
    ld d, c                                       ; $6095: $51
    and [hl]                                      ; $6096: $a6
    ld bc, $eaa9                                  ; $6097: $01 $a9 $ea
    nop                                           ; $609a: $00
    xor e                                         ; $609b: $ab
    and b                                         ; $609c: $a0
    ldh [rP1], a                                  ; $609d: $e0 $00
    push af                                       ; $609f: $f5
    ld [hl], h                                    ; $60a0: $74
    nop                                           ; $60a1: $00
    ld d, c                                       ; $60a2: $51
    nop                                           ; $60a3: $00
    inc b                                         ; $60a4: $04
    nop                                           ; $60a5: $00
    ld b, b                                       ; $60a6: $40
    ret nz                                        ; $60a7: $c0

    ld c, c                                       ; $60a8: $49
    ld [$004d], sp                                ; $60a9: $08 $4d $00
    xor [hl]                                      ; $60ac: $ae
    nop                                           ; $60ad: $00
    ld b, l                                       ; $60ae: $45
    nop                                           ; $60af: $00
    stop                                          ; $60b0: $10 $00
    ld d, c                                       ; $60b2: $51
    ld bc, $200e                                  ; $60b3: $01 $0e $20
    nop                                           ; $60b6: $00
    and c                                         ; $60b7: $a1
    ld bc, $0056                                  ; $60b8: $01 $56 $00
    add hl, hl                                    ; $60bb: $29
    inc e                                         ; $60bc: $1c
    jr jr_0a5_60bf                                ; $60bd: $18 $00

jr_0a5_60bf:
    ld bc, $0100                                  ; $60bf: $01 $00 $01
    ld bc, $1500                                  ; $60c2: $01 $00 $15
    db $eb                                        ; $60c5: $eb
    add b                                         ; $60c6: $80
    jr nz, @+$81                                  ; $60c7: $20 $7f

    ld bc, $01a4                                  ; $60c9: $01 $a4 $01
    xor c                                         ; $60cc: $a9
    ld d, a                                       ; $60cd: $57
    ld b, b                                       ; $60ce: $40
    cp a                                          ; $60cf: $bf
    dec d                                         ; $60d0: $15
    ld h, e                                       ; $60d1: $63
    db $eb                                        ; $60d2: $eb
    ret nz                                        ; $60d3: $c0

    ld bc, $4001                                  ; $60d4: $01 $01 $40
    stop                                          ; $60d7: $10 $00
    ld [bc], a                                    ; $60d9: $02
    rrca                                          ; $60da: $0f
    ld c, b                                       ; $60db: $48
    sbc e                                         ; $60dc: $9b
    nop                                           ; $60dd: $00
    ld b, h                                       ; $60de: $44
    ld [hl+], a                                   ; $60df: $22
    db $10                                        ; $60e0: $10
    ld d, b                                       ; $60e1: $50
    jr nz, jr_0a5_60e4                            ; $60e2: $20 $00

jr_0a5_60e4:
    ld de, $01e1                                  ; $60e4: $11 $e1 $01
    ld e, a                                       ; $60e7: $5f
    rst $38                                       ; $60e8: $ff
    nop                                           ; $60e9: $00
    ld l, a                                       ; $60ea: $6f
    rra                                           ; $60eb: $1f
    cp a                                          ; $60ec: $bf
    rrca                                          ; $60ed: $0f
    ld l, a                                       ; $60ee: $6f
    rra                                           ; $60ef: $1f
    ccf                                           ; $60f0: $3f
    rrca                                          ; $60f1: $0f
    nop                                           ; $60f2: $00
    dec hl                                        ; $60f3: $2b
    rra                                           ; $60f4: $1f
    rla                                           ; $60f5: $17
    rst $28                                       ; $60f6: $ef
    ld d, b                                       ; $60f7: $50
    nop                                           ; $60f8: $00
    ld hl, $0000                                  ; $60f9: $21 $00 $00
    ld d, b                                       ; $60fc: $50
    nop                                           ; $60fd: $00
    ld [$f500], a                                 ; $60fe: $ea $00 $f5
    nop                                           ; $6101: $00
    jp c, RST_00                                  ; $6102: $da $00 $00

    db $ed                                        ; $6105: $ed
    nop                                           ; $6106: $00
    ld a, [hl]                                    ; $6107: $7e
    add b                                         ; $6108: $80
    add b                                         ; $6109: $80
    nop                                           ; $610a: $00
    dec h                                         ; $610b: $25
    nop                                           ; $610c: $00
    db $10                                        ; $610d: $10
    ld c, e                                       ; $610e: $4b
    nop                                           ; $610f: $00
    and l                                         ; $6110: $a5
    jp $ef01                                      ; $6111: $c3 $01 $ef


    nop                                           ; $6114: $00
    cp $01                                        ; $6115: $fe $01
    dec d                                         ; $6117: $15
    push af                                       ; $6118: $f5
    ld a, [bc]                                    ; $6119: $0a
    add h                                         ; $611a: $84
    ld [hl], $00                                  ; $611b: $36 $00
    push de                                       ; $611d: $d5
    jr nz, jr_0a5_6120                            ; $611e: $20 $00

jr_0a5_6120:
    or l                                          ; $6120: $b5
    db $10                                        ; $6121: $10
    ld [$0000], sp                                ; $6122: $08 $00 $00
    ld a, a                                       ; $6125: $7f
    add b                                         ; $6126: $80
    sbc e                                         ; $6127: $9b
    rrca                                          ; $6128: $0f
    daa                                           ; $6129: $27
    ld c, a                                       ; $612a: $4f
    ld h, e                                       ; $612b: $63
    inc b                                         ; $612c: $04
    rrca                                          ; $612d: $0f
    jp $031f                                      ; $612e: $c3 $1f $03


    ccf                                           ; $6131: $3f
    xor d                                         ; $6132: $aa
    ld a, [bc]                                    ; $6133: $0a
    rst $28                                       ; $6134: $ef
    rra                                           ; $6135: $1f
    ld b, b                                       ; $6136: $40
    nop                                           ; $6137: $00
    db $ed                                        ; $6138: $ed
    ld bc, $3857                                  ; $6139: $01 $57 $38

jr_0a5_613c:
    halt                                          ; $613c: $76
    rrca                                          ; $613d: $0f
    ld a, l                                       ; $613e: $7d
    inc bc                                        ; $613f: $03
    ld b, b                                       ; $6140: $40
    ld a, a                                       ; $6141: $7f
    rst $30                                       ; $6142: $f7
    ld bc, $007f                                  ; $6143: $01 $7f $00
    dec hl                                        ; $6146: $2b
    ld bc, $01fe                                  ; $6147: $01 $fe $01
    ld b, b                                       ; $614a: $40
    rst $38                                       ; $614b: $ff
    inc b                                         ; $614c: $04
    nop                                           ; $614d: $00
    rst $18                                       ; $614e: $df
    pop hl                                        ; $614f: $e1
    ld l, [hl]                                    ; $6150: $6e
    pop af                                        ; $6151: $f1
    rst $08                                       ; $6152: $cf
    dec a                                         ; $6153: $3d
    nop                                           ; $6154: $00
    cp $01                                        ; $6155: $fe $01
    cp a                                          ; $6157: $bf
    ld b, b                                       ; $6158: $40
    ld a, [hl]                                    ; $6159: $7e
    add c                                         ; $615a: $81
    ld a, l                                       ; $615b: $7d
    add d                                         ; $615c: $82
    nop                                           ; $615d: $00
    ld l, $d1                                     ; $615e: $2e $d1
    ld d, l                                       ; $6160: $55
    xor d                                         ; $6161: $aa
    ld a, [bc]                                    ; $6162: $0a
    push af                                       ; $6163: $f5
    jr nz, @-$1f                                  ; $6164: $20 $df

    nop                                           ; $6166: $00
    inc b                                         ; $6167: $04
    ei                                            ; $6168: $fb
    ld [$f5f5], a                                 ; $6169: $ea $f5 $f5
    ldh [$ea], a                                  ; $616c: $e0 $ea
    ldh [rP1], a                                  ; $616e: $e0 $00
    ret nz                                        ; $6170: $c0

    ldh [$b5], a                                  ; $6171: $e0 $b5
    ldh [$de], a                                  ; $6173: $e0 $de
    pop hl                                        ; $6175: $e1
    xor d                                         ; $6176: $aa
    rst $38                                       ; $6177: $ff
    nop                                           ; $6178: $00
    add b                                         ; $6179: $80
    rst $38                                       ; $617a: $ff
    cp d                                          ; $617b: $ba
    ld d, l                                       ; $617c: $55
    ld d, l                                       ; $617d: $55
    db $10                                        ; $617e: $10
    cp a                                          ; $617f: $bf
    stop                                          ; $6180: $10 $00
    inc [hl]                                      ; $6182: $34
    dec hl                                        ; $6183: $2b
    ld a, a                                       ; $6184: $7f
    jr nz, jr_0a5_613c                            ; $6185: $20 $b5

    ld h, b                                       ; $6187: $60
    add b                                         ; $6188: $80
    ldh [rP1], a                                  ; $6189: $e0 $00
    nop                                           ; $618b: $00
    ldh [$af], a                                  ; $618c: $e0 $af
    ld e, a                                       ; $618e: $5f
    ld e, a                                       ; $618f: $5f
    rrca                                          ; $6190: $0f
    rst $38                                       ; $6191: $ff
    rrca                                          ; $6192: $0f
    add b                                         ; $6193: $80
    ld h, a                                       ; $6194: $67
    ld [bc], a                                    ; $6195: $02
    db $10                                        ; $6196: $10
    ld d, l                                       ; $6197: $55
    db $10                                        ; $6198: $10
    db $10                                        ; $6199: $10
    db $10                                        ; $619a: $10
    ld [$6008], sp                                ; $619b: $08 $08 $60
    add b                                         ; $619e: $80
    inc h                                         ; $619f: $24
    nop                                           ; $61a0: $00
    inc d                                         ; $61a1: $14
    dec bc                                        ; $61a2: $0b
    sub l                                         ; $61a3: $95
    ld [$c0aa], a                                 ; $61a4: $ea $aa $c0
    add b                                         ; $61a7: $80
    ld bc, $91c0                                  ; $61a8: $01 $c0 $91
    adc $15                                       ; $61ab: $ce $15
    ldh [$1f], a                                  ; $61ad: $e0 $1f
    ldh [rNR50], a                                ; $61af: $e0 $24
    dec bc                                        ; $61b1: $0b
    add b                                         ; $61b2: $80
    ret nz                                        ; $61b3: $c0

    add hl, bc                                    ; $61b4: $09
    ld bc, $a901                                  ; $61b5: $01 $01 $a9
    ld bc, $085d                                  ; $61b8: $01 $5d $08
    xor d                                         ; $61bb: $aa
    ld b, b                                       ; $61bc: $40
    ld e, l                                       ; $61bd: $5d
    inc [hl]                                      ; $61be: $34
    ld c, e                                       ; $61bf: $4b
    adc [hl]                                      ; $61c0: $8e
    pop af                                        ; $61c1: $f1
    cp b                                          ; $61c2: $b8
    ret nz                                        ; $61c3: $c0

    add c                                         ; $61c4: $81
    ret nz                                        ; $61c5: $c0

    inc b                                         ; $61c6: $04
    add b                                         ; $61c7: $80
    rst $38                                       ; $61c8: $ff
    cp a                                          ; $61c9: $bf
    ret nz                                        ; $61ca: $c0

    and b                                         ; $61cb: $a0
    ld b, $00                                     ; $61cc: $06 $00
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    ld bc, $ff01                                  ; $61d0: $01 $01 $ff
    cp $01                                        ; $61d3: $fe $01
    ld d, c                                       ; $61d5: $51
    ld bc, $0600                                  ; $61d6: $01 $00 $06
    nop                                           ; $61d9: $00
    jp nz, $0155                                  ; $61da: $c2 $55 $01

    ld e, l                                       ; $61dd: $5d
    inc bc                                        ; $61de: $03
    ld d, c                                       ; $61df: $51
    xor a                                         ; $61e0: $af
    rst $38                                       ; $61e1: $ff
    add b                                         ; $61e2: $80
    and l                                         ; $61e3: $a5
    ld bc, $4080                                  ; $61e4: $01 $80 $40
    nop                                           ; $61e7: $00
    ld b, $00                                     ; $61e8: $06 $00
    ld a, d                                       ; $61ea: $7a
    add l                                         ; $61eb: $85
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    ld l, h                                       ; $61ee: $6c
    stop                                          ; $61ef: $10 $00
    sub $28                                       ; $61f1: $d6 $28
    db $ed                                        ; $61f3: $ed
    db $10                                        ; $61f4: $10
    ld d, a                                       ; $61f5: $57
    xor b                                         ; $61f6: $a8
    xor d                                         ; $61f7: $aa
    push af                                       ; $61f8: $f5
    ld b, b                                       ; $61f9: $40
    call nc, Call_000_1298                        ; $61fa: $d4 $98 $12
    ld d, h                                       ; $61fd: $54
    dec sp                                        ; $61fe: $3b
    ld [c], a                                     ; $61ff: $e2
    dec a                                         ; $6200: $3d
    push de                                       ; $6201: $d5
    ld a, [hl-]                                   ; $6202: $3a
    nop                                           ; $6203: $00
    jp z, $9435                                   ; $6204: $ca $35 $94

    ld a, e                                       ; $6207: $7b
    jp nc, Jump_000_34fd                          ; $6208: $d2 $fd $34

    ei                                            ; $620b: $fb
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    rst $38                                       ; $620e: $ff
    ld b, c                                       ; $620f: $41
    cp [hl]                                       ; $6210: $be
    sub h                                         ; $6211: $94
    ld l, e                                       ; $6212: $6b
    ld [bc], a                                    ; $6213: $02
    db $fd                                        ; $6214: $fd
    inc b                                         ; $6215: $04
    add hl, bc                                    ; $6216: $09
    or $40                                        ; $6217: $f6 $40
    rst $38                                       ; $6219: $ff
    dec h                                         ; $621a: $25
    sub b                                         ; $621b: $90
    ld [bc], a                                    ; $621c: $02
    adc b                                         ; $621d: $88
    ld [hl], a                                    ; $621e: $77
    nop                                           ; $621f: $00

jr_0a5_6220:
    db $fd                                        ; $6220: $fd
    ld hl, sp-$08                                 ; $6221: $f8 $f8
    ld hl, sp-$06                                 ; $6223: $f8 $fa
    ld sp, hl                                     ; $6225: $f9
    ld d, c                                       ; $6226: $51
    xor [hl]                                      ; $6227: $ae
    nop                                           ; $6228: $00
    rst $30                                       ; $6229: $f7
    ld [$0850], sp                                ; $622a: $08 $50 $08
    nop                                           ; $622d: $00
    rrca                                          ; $622e: $0f
    rlca                                          ; $622f: $07
    ld [$5540], sp                                ; $6230: $08 $40 $55
    ld bc, $3502                                  ; $6233: $01 $02 $35
    ret nz                                        ; $6236: $c0

jr_0a5_6237:
    ret nz                                        ; $6237: $c0

    ccf                                           ; $6238: $3f
    rra                                           ; $6239: $1f
    nop                                           ; $623a: $00
    ld b, b                                       ; $623b: $40
    ld a, [hl+]                                   ; $623c: $2a
    xor l                                         ; $623d: $ad
    ld bc, $00ff                                  ; $623e: $01 $ff $00
    ld a, [hl]                                    ; $6241: $7e
    jr c, jr_0a5_627f                             ; $6242: $38 $3b

    inc a                                         ; $6244: $3c
    nop                                           ; $6245: $00
    ld a, $38                                     ; $6246: $3e $38
    ld a, [hl+]                                   ; $6248: $2a
    db $fc                                        ; $6249: $fc
    call nc, $2939                                ; $624a: $d4 $39 $29
    ld a, [hl-]                                   ; $624d: $3a
    nop                                           ; $624e: $00
    ld de, $c3fa                                  ; $624f: $11 $fa $c3
    jr c, jr_0a5_6220                             ; $6252: $38 $cc

    ld [bc], a                                    ; $6254: $02
    and h                                         ; $6255: $a4
    ld [de], a                                    ; $6256: $12
    nop                                           ; $6257: $00
    or [hl]                                       ; $6258: $b6
    nop                                           ; $6259: $00
    sbc h                                         ; $625a: $9c
    ld b, c                                       ; $625b: $41
    nop                                           ; $625c: $00
    db $e3                                        ; $625d: $e3
    sub c                                         ; $625e: $91
    ld a, [bc]                                    ; $625f: $0a
    nop                                           ; $6260: $00
    ld hl, $634a                                  ; $6261: $21 $4a $63
    ld [$0854], sp                                ; $6264: $08 $54 $08
    ldh a, [rIF]                                  ; $6267: $f0 $0f
    db $f4                                        ; $6269: $f4
    db $e4                                        ; $626a: $e4
    ld c, e                                       ; $626b: $4b
    db $e3                                        ; $626c: $e3
    add hl, bc                                    ; $626d: $09
    db $f4                                        ; $626e: $f4
    dec bc                                        ; $626f: $0b
    rra                                           ; $6270: $1f
    ld [bc], a                                    ; $6271: $02
    cp $04                                        ; $6272: $fe $04
    ld [$3c01], sp                                ; $6274: $08 $01 $3c
    add b                                         ; $6277: $80
    ld a, [hl+]                                   ; $6278: $2a
    ld a, [bc]                                    ; $6279: $0a
    ld d, a                                       ; $627a: $57
    rst $38                                       ; $627b: $ff
    db $db                                        ; $627c: $db
    rlca                                          ; $627d: $07
    xor a                                         ; $627e: $af

jr_0a5_627f:
    inc bc                                        ; $627f: $03
    db $db                                        ; $6280: $db
    ld bc, $8f07                                  ; $6281: $01 $07 $8f

jr_0a5_6284:
    inc bc                                        ; $6284: $03
    pop bc                                        ; $6285: $c1
    inc e                                         ; $6286: $1c
    nop                                           ; $6287: $00
    ld a, $f0                                     ; $6288: $3e $f0
    db $10                                        ; $628a: $10
    jr nz, jr_0a5_6237                            ; $628b: $20 $aa

    xor d                                         ; $628d: $aa
    ld l, e                                       ; $628e: $6b
    ld [bc], a                                    ; $628f: $02

jr_0a5_6290:
    ld b, [hl]                                    ; $6290: $46
    jr c, jr_0a5_6284                             ; $6291: $38 $f1

    cp $ff                                        ; $6293: $fe $ff
    nop                                           ; $6295: $00
    ld b, b                                       ; $6296: $40
    ld d, l                                       ; $6297: $55
    ld b, b                                       ; $6298: $40
    ld b, b                                       ; $6299: $40
    ld b, b                                       ; $629a: $40
    add b                                         ; $629b: $80
    add b                                         ; $629c: $80
    push de                                       ; $629d: $d5
    nop                                           ; $629e: $00
    add b                                         ; $629f: $80
    xor a                                         ; $62a0: $af
    ret nc                                        ; $62a1: $d0

    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    ld [hl], h                                    ; $62a4: $74
    cp a                                          ; $62a5: $bf
    db $eb                                        ; $62a6: $eb
    nop                                           ; $62a7: $00
    ld a, $74                                     ; $62a8: $3e $74
    ld a, $0a                                     ; $62aa: $3e $0a
    ld a, $00                                     ; $62ac: $3e $00
    ld a, $40                                     ; $62ae: $3e $40
    jr nz, jr_0a5_62f1                            ; $62b0: $20 $3f

    ret nz                                        ; $62b2: $c0

    sub h                                         ; $62b3: $94
    ld bc, $0789                                  ; $62b4: $01 $89 $07
    ld b, $7b                                     ; $62b7: $06 $7b
    ld h, l                                       ; $62b9: $65
    nop                                           ; $62ba: $00
    add e                                         ; $62bb: $83
    ld c, d                                       ; $62bc: $4a
    sub e                                         ; $62bd: $93
    ret c                                         ; $62be: $d8

    inc bc                                        ; $62bf: $03
    ld [hl], b                                    ; $62c0: $70
    rlca                                          ; $62c1: $07
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    adc a                                         ; $62c4: $8f
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    jr c, jr_0a5_6290                             ; $62c7: $38 $c7

    db $e3                                        ; $62c9: $e3
    nop                                           ; $62ca: $00
    dec b                                         ; $62cb: $05
    and b                                         ; $62cc: $a0
    sbc d                                         ; $62cd: $9a
    db $10                                        ; $62ce: $10
    add b                                         ; $62cf: $80
    ld l, d                                       ; $62d0: $6a
    db $10                                        ; $62d1: $10
    ld [hl+], a                                   ; $62d2: $22
    ldh [rNR10], a                                ; $62d3: $e0 $10
    ldh [$a8], a                                  ; $62d5: $e0 $a8
    nop                                           ; $62d7: $00
    ld [hl], b                                    ; $62d8: $70
    ld [hl], b                                    ; $62d9: $70
    and b                                         ; $62da: $a0
    or l                                          ; $62db: $b5
    ld h, b                                       ; $62dc: $60
    ld a, [hl+]                                   ; $62dd: $2a
    ldh a, [$94]                                  ; $62de: $f0 $94
    ld [$62e0], sp                                ; $62e0: $08 $e0 $62
    ldh [rHDMA2], a                               ; $62e3: $e0 $52
    nop                                           ; $62e5: $00
    ld [bc], a                                    ; $62e6: $02
    ld d, h                                       ; $62e7: $54
    nop                                           ; $62e8: $00
    and c                                         ; $62e9: $a1
    ld [bc], a                                    ; $62ea: $02
    nop                                           ; $62eb: $00
    ld e, e                                       ; $62ec: $5b
    and b                                         ; $62ed: $a0
    push de                                       ; $62ee: $d5
    ld [bc], a                                    ; $62ef: $02
    ld b, b                                       ; $62f0: $40

jr_0a5_62f1:
    call nz, $bd00                                ; $62f1: $c4 $00 $bd
    nop                                           ; $62f4: $00
    db $10                                        ; $62f5: $10
    ld [$3d10], sp                                ; $62f6: $08 $10 $3d
    nop                                           ; $62f9: $00
    dec hl                                        ; $62fa: $2b
    db $10                                        ; $62fb: $10
    ld e, [hl]                                    ; $62fc: $5e
    nop                                           ; $62fd: $00
    and b                                         ; $62fe: $a0
    ld c, e                                       ; $62ff: $4b
    jr nc, jr_0a5_6341                            ; $6300: $30 $3f

    nop                                           ; $6302: $00
    ld c, $10                                     ; $6303: $0e $10
    xor a                                         ; $6305: $af
    nop                                           ; $6306: $00
    ld d, b                                       ; $6307: $50
    db $db                                        ; $6308: $db
    jr nz, @-$11                                  ; $6309: $20 $ed

    db $10                                        ; $630b: $10
    sbc $00                                       ; $630c: $de $00
    db $fd                                        ; $630e: $fd
    ld [$5a00], sp                                ; $630f: $08 $00 $5a
    nop                                           ; $6312: $00
    xor a                                         ; $6313: $af
    ld a, [bc]                                    ; $6314: $0a

Jump_0a5_6315:
    ld [bc], a                                    ; $6315: $02
    cp a                                          ; $6316: $bf
    rrca                                          ; $6317: $0f
    rst $28                                       ; $6318: $ef
    or h                                          ; $6319: $b4
    ld a, $02                                     ; $631a: $3e $02
    xor e                                         ; $631c: $ab
    ld a, [hl-]                                   ; $631d: $3a
    ld [bc], a                                    ; $631e: $02
    ld a, [bc]                                    ; $631f: $0a
    ld a, [de]                                    ; $6320: $1a
    xor d                                         ; $6321: $aa
    ld d, [hl]                                    ; $6322: $56
    inc b                                         ; $6323: $04
    sub l                                         ; $6324: $95
    ld [$cb01], a                                 ; $6325: $ea $01 $cb
    db $f4                                        ; $6328: $f4
    and c                                         ; $6329: $a1
    cp $d4                                        ; $632a: $fe $d4
    rst $38                                       ; $632c: $ff
    xor d                                         ; $632d: $aa
    cp l                                          ; $632e: $bd
    inc b                                         ; $632f: $04
    nop                                           ; $6330: $00
    xor e                                         ; $6331: $ab
    rst $38                                       ; $6332: $ff
    ld d, l                                       ; $6333: $55
    rst $38                                       ; $6334: $ff
    ld b, e                                       ; $6335: $43
    cp a                                          ; $6336: $bf
    xor c                                         ; $6337: $a9
    ld d, a                                       ; $6338: $57
    inc b                                         ; $6339: $04
    ld d, e                                       ; $633a: $53
    xor a                                         ; $633b: $af
    add hl, bc                                    ; $633c: $09
    rst $30                                       ; $633d: $f7
    xor c                                         ; $633e: $a9
    ldh [rNR10], a                                ; $633f: $e0 $10

jr_0a5_6341:
    ld a, a                                       ; $6341: $7f
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    ld e, a                                       ; $6344: $5f
    ld [hl+], a                                   ; $6345: $22
    ld l, l                                       ; $6346: $6d
    ld [hl], $7b                                  ; $6347: $36 $7b
    inc e                                         ; $6349: $1c
    ld l, a                                       ; $634a: $6f
    inc e                                         ; $634b: $1c
    ld [$365b], sp                                ; $634c: $08 $5b $36
    ld a, l                                       ; $634f: $7d
    ld [bc], a                                    ; $6350: $02
    ld a, [hl-]                                   ; $6351: $3a
    ld a, [hl+]                                   ; $6352: $2a
    ld d, a                                       ; $6353: $57
    xor a                                         ; $6354: $af
    xor a                                         ; $6355: $af
    ld b, $07                                     ; $6356: $06 $07
    rlca                                          ; $6358: $07
    rlca                                          ; $6359: $07
    and a                                         ; $635a: $a7
    rlca                                          ; $635b: $07
    ld b, b                                       ; $635c: $40
    ld a, [bc]                                    ; $635d: $0a
    ld [hl+], a                                   ; $635e: $22
    nop                                           ; $635f: $00
    ccf                                           ; $6360: $3f
    jr nc, jr_0a5_63de                            ; $6361: $30 $7b

    ld b, $42                                     ; $6363: $06 $42
    ld a, [de]                                    ; $6365: $1a
    ld b, b                                       ; $6366: $40
    ld a, [bc]                                    ; $6367: $0a

jr_0a5_6368:
    ld l, a                                       ; $6368: $6f
    pop af                                        ; $6369: $f1
    cp $f9                                        ; $636a: $fe $f9
    ld [$f9f7], sp                                ; $636c: $08 $f7 $f9
    cp [hl]                                       ; $636f: $be
    pop bc                                        ; $6370: $c1
    ld c, b                                       ; $6371: $48
    ld a, [bc]                                    ; $6372: $0a
    rlca                                          ; $6373: $07
    rst $38                                       ; $6374: $ff
    ei                                            ; $6375: $fb
    dec bc                                        ; $6376: $0b
    rlca                                          ; $6377: $07
    ld b, a                                       ; $6378: $47
    rlca                                          ; $6379: $07
    inc bc                                        ; $637a: $03
    ld b, $00                                     ; $637b: $06 $00
    inc bc                                        ; $637d: $03
    ld b, $00                                     ; $637e: $06 $00
    ld d, d                                       ; $6380: $52

jr_0a5_6381:
    inc bc                                        ; $6381: $03
    jr nz, jr_0a5_6384                            ; $6382: $20 $00

jr_0a5_6384:
    ld a, [hl]                                    ; $6384: $7e
    or l                                          ; $6385: $b5
    inc b                                         ; $6386: $04
    push de                                       ; $6387: $d5
    ld a, [hl+]                                   ; $6388: $2a
    ld l, d                                       ; $6389: $6a
    db $fd                                        ; $638a: $fd
    sub l                                         ; $638b: $95
    add b                                         ; $638c: $80
    cp h                                          ; $638d: $bc
    inc b                                         ; $638e: $04
    jr z, jr_0a5_6368                             ; $638f: $28 $d7

    xor a                                         ; $6391: $af
    ld d, b                                       ; $6392: $50
    rst $10                                       ; $6393: $d7
    jr z, jr_0a5_6381                             ; $6394: $28 $eb

    nop                                           ; $6396: $00
    inc d                                         ; $6397: $14
    rst $10                                       ; $6398: $d7
    jr c, jr_0a5_6403                             ; $6399: $38 $68

    rra                                           ; $639b: $1f
    push de                                       ; $639c: $d5
    ccf                                           ; $639d: $3f
    ld h, b                                       ; $639e: $60
    nop                                           ; $639f: $00
    rra                                           ; $63a0: $1f
    jp nc, $553d                                  ; $63a1: $d2 $3d $55

    ld a, [hl-]                                   ; $63a4: $3a
    ld [c], a                                     ; $63a5: $e2
    dec a                                         ; $63a6: $3d
    ret c                                         ; $63a7: $d8

    nop                                           ; $63a8: $00
    ccf                                           ; $63a9: $3f
    push bc                                       ; $63aa: $c5
    ccf                                           ; $63ab: $3f
    sub d                                         ; $63ac: $92
    ld a, a                                       ; $63ad: $7f
    call nc, Call_000_3afb                        ; $63ae: $d4 $fb $3a
    nop                                           ; $63b1: $00
    push af                                       ; $63b2: $f5
    dec d                                         ; $63b3: $15
    ld a, [$e31c]                                 ; $63b4: $fa $1c $e3
    adc b                                         ; $63b7: $88
    ld [hl], a                                    ; $63b8: $77
    ld b, h                                       ; $63b9: $44
    ld [bc], a                                    ; $63ba: $02
    cp e                                          ; $63bb: $bb
    nop                                           ; $63bc: $00
    rst $38                                       ; $63bd: $ff
    sub c                                         ; $63be: $91
    cp $08                                        ; $63bf: $fe $08
    call z, $0201                                 ; $63c1: $cc $01 $02
    inc hl                                        ; $63c4: $23
    db $fd                                        ; $63c5: $fd
    rst $38                                       ; $63c6: $ff
    ld [hl], h                                    ; $63c7: $74
    ld [bc], a                                    ; $63c8: $02
    add b                                         ; $63c9: $80
    rst $38                                       ; $63ca: $ff
    ret nz                                        ; $63cb: $c0

    ld c, b                                       ; $63cc: $48
    dec b                                         ; $63cd: $05
    inc b                                         ; $63ce: $04
    ld [$c13f], sp                                ; $63cf: $08 $3f $c1
    cp a                                          ; $63d2: $bf
    ld b, a                                       ; $63d3: $47
    inc b                                         ; $63d4: $04
    or [hl]                                       ; $63d5: $b6
    inc bc                                        ; $63d6: $03
    and d                                         ; $63d7: $a2
    inc e                                         ; $63d8: $1c

Jump_0a5_63d9:
    ret nz                                        ; $63d9: $c0

    ld [$3b70], sp                                ; $63da: $08 $70 $3b
    sbc e                                         ; $63dd: $9b

jr_0a5_63de:
    nop                                           ; $63de: $00
    ld bc, $0008                                  ; $63df: $01 $08 $00
    db $10                                        ; $63e2: $10

jr_0a5_63e3:
    rst $00                                       ; $63e3: $c7
    rst $38                                       ; $63e4: $ff
    db $e3                                        ; $63e5: $e3
    rst $18                                       ; $63e6: $df
    inc b                                         ; $63e7: $04
    ld c, b                                       ; $63e8: $48
    nop                                           ; $63e9: $00
    jr nz, @+$12                                  ; $63ea: $20 $10

    ld a, [hl-]                                   ; $63ec: $3a
    db $10                                        ; $63ed: $10
    ld d, a                                       ; $63ee: $57
    jr c, jr_0a5_640c                             ; $63ef: $38 $1b

    adc h                                         ; $63f1: $8c
    nop                                           ; $63f2: $00
    inc b                                         ; $63f3: $04
    rlca                                          ; $63f4: $07
    add e                                         ; $63f5: $83
    ld bc, $0140                                  ; $63f6: $01 $40 $01
    xor d                                         ; $63f9: $aa
    ld bc, $3c00                                  ; $63fa: $01 $00 $3c
    jp $fc00                                      ; $63fd: $c3 $00 $fc


    ldh a, [$f8]                                  ; $6400: $f0 $f8
    dec [hl]                                      ; $6402: $35

jr_0a5_6403:
    ld [$8100], sp                                ; $6403: $08 $00 $81
    ld c, $4e                                     ; $6406: $0e $4e
    rlca                                          ; $6408: $07
    xor a                                         ; $6409: $af
    add hl, de                                    ; $640a: $19
    rra                                           ; $640b: $1f

jr_0a5_640c:
    ldh a, [rTIMA]                                ; $640c: $f0 $05
    add e                                         ; $640e: $83
    rst $38                                       ; $640f: $ff
    ld b, c                                       ; $6410: $41
    cp a                                          ; $6411: $bf
    add e                                         ; $6412: $83
    and d                                         ; $6413: $a2
    inc bc                                        ; $6414: $03
    inc bc                                        ; $6415: $03
    ld a, d                                       ; $6416: $7a

jr_0a5_6417:
    ld [bc], a                                    ; $6417: $02
    ld d, b                                       ; $6418: $50
    xor e                                         ; $6419: $ab
    call $3005                                    ; $641a: $cd $05 $30
    ld h, d                                       ; $641d: $62
    dec b                                         ; $641e: $05
    or b                                          ; $641f: $b0
    ld a, a                                       ; $6420: $7f
    ld h, b                                       ; $6421: $60
    cp a                                          ; $6422: $bf
    jr nz, jr_0a5_63e3                            ; $6423: $20 $be

    ld a, a                                       ; $6425: $7f
    ld [hl], b                                    ; $6426: $70
    add hl, de                                    ; $6427: $19
    ld b, l                                       ; $6428: $45
    cp d                                          ; $6429: $ba
    ld [c], a                                     ; $642a: $e2
    dec e                                         ; $642b: $1d
    ld d, c                                       ; $642c: $51
    inc b                                         ; $642d: $04
    xor [hl]                                      ; $642e: $ae
    nop                                           ; $642f: $00
    rst $38                                       ; $6430: $ff
    and l                                         ; $6431: $a5
    rst $38                                       ; $6432: $ff
    ld [hl], b                                    ; $6433: $70
    add hl, de                                    ; $6434: $19
    call nc, Call_0a5_5001                        ; $6435: $d4 $01 $50
    xor b                                         ; $6438: $a8
    ret c                                         ; $6439: $d8

    inc bc                                        ; $643a: $03
    jr nz, jr_0a5_6417                            ; $643b: $20 $da

    inc bc                                        ; $643d: $03
    ret nz                                        ; $643e: $c0

    ld bc, $0021                                  ; $643f: $01 $21 $00
    jr nz, @+$12                                  ; $6442: $20 $10

    ld bc, $3820                                  ; $6444: $01 $20 $38
    ld d, h                                       ; $6447: $54
    cp a                                          ; $6448: $bf
    xor e                                         ; $6449: $ab
    ld d, h                                       ; $644a: $54
    rst $18                                       ; $644b: $df
    nop                                           ; $644c: $00
    jr nz, jr_0a5_6464                            ; $644d: $20 $15

    ldh [$aa], a                                  ; $644f: $e0 $aa
    ld h, b                                       ; $6451: $60
    db $10                                        ; $6452: $10
    ldh [$30], a                                  ; $6453: $e0 $30
    nop                                           ; $6455: $00
    ldh [$e9], a                                  ; $6456: $e0 $e9
    ldh a, [rHDMA4]                               ; $6458: $f0 $54
    ldh [$a2], a                                  ; $645a: $e0 $a2
    ld h, b                                       ; $645c: $60
    ld d, h                                       ; $645d: $54
    ld [hl+], a                                   ; $645e: $22
    and b                                         ; $645f: $a0
    ld d, h                                       ; $6460: $54
    call nc, Call_0a5_4003                        ; $6461: $d4 $03 $40

jr_0a5_6464:
    nop                                           ; $6464: $00
    dec d                                         ; $6465: $15
    call z, Call_000_0203                         ; $6466: $cc $03 $02
    add b                                         ; $6469: $80
    sbc a                                         ; $646a: $9f
    nop                                           ; $646b: $00
    and l                                         ; $646c: $a5

jr_0a5_646d:
    nop                                           ; $646d: $00
    ld bc, $8110                                  ; $646e: $01 $10 $81
    db $10                                        ; $6471: $10
    ld [hl], c                                    ; $6472: $71

jr_0a5_6473:
    nop                                           ; $6473: $00
    db $10                                        ; $6474: $10
    pop de                                        ; $6475: $d1
    jr nc, jr_0a5_64e9                            ; $6476: $30 $71

    ldh [$e1], a                                  ; $6478: $e0 $e1
    add b                                         ; $647a: $80
    call nz, $0100                                ; $647b: $c4 $00 $01
    inc bc                                        ; $647e: $03
    nop                                           ; $647f: $00
    and d                                         ; $6480: $a2
    ld b, b                                       ; $6481: $40
    ret nc                                        ; $6482: $d0

    jr nz, jr_0a5_646d                            ; $6483: $20 $e8

    nop                                           ; $6485: $00
    db $10                                        ; $6486: $10
    ret nc                                        ; $6487: $d0

    jr nz, jr_0a5_64ff                            ; $6488: $20 $75

    nop                                           ; $648a: $00
    push bc                                       ; $648b: $c5
    ld a, [hl-]                                   ; $648c: $3a

jr_0a5_648d:
    ld l, d                                       ; $648d: $6a
    inc d                                         ; $648e: $14
    dec d                                         ; $648f: $15
    rst $10                                       ; $6490: $d7

jr_0a5_6491:
    jr c, jr_0a5_6473                             ; $6491: $38 $e0

    add hl, sp                                    ; $6493: $39
    ld e, d                                       ; $6494: $5a
    ld h, [hl]                                    ; $6495: $66
    dec b                                         ; $6496: $05
    cp $00                                        ; $6497: $fe $00
    nop                                           ; $6499: $00
    add sp, $01                                   ; $649a: $e8 $01
    dec d                                         ; $649c: $15
    nop                                           ; $649d: $00
    ld [bc], a                                    ; $649e: $02
    add hl, bc                                    ; $649f: $09
    ld b, h                                       ; $64a0: $44
    add hl, bc                                    ; $64a1: $09
    nop                                           ; $64a2: $00
    or [hl]                                       ; $64a3: $b6
    add hl, bc                                    ; $64a4: $09
    ld h, [hl]                                    ; $64a5: $66
    sbc c                                         ; $64a6: $99
    ld [$f4f5], a                                 ; $64a7: $ea $f5 $f4
    dec bc                                        ; $64aa: $0b
    add b                                         ; $64ab: $80
    ld d, b                                       ; $64ac: $50
    add hl, sp                                    ; $64ad: $39
    ld l, d                                       ; $64ae: $6a
    inc d                                         ; $64af: $14
    inc d                                         ; $64b0: $14
    nop                                           ; $64b1: $00

jr_0a5_64b2:
    xor b                                         ; $64b2: $a8
    nop                                           ; $64b3: $00
    xor l                                         ; $64b4: $ad
    nop                                           ; $64b5: $00
    ld [hl], b                                    ; $64b6: $70
    rst $10                                       ; $64b7: $d7
    jr c, @-$50                                   ; $64b8: $38 $ae

    ld [hl], b                                    ; $64ba: $70
    ld e, e                                       ; $64bb: $5b
    and b                                         ; $64bc: $a0
    adc l                                         ; $64bd: $8d
    nop                                           ; $64be: $00
    ld [hl], b                                    ; $64bf: $70
    cp d                                          ; $64c0: $ba
    nop                                           ; $64c1: $00

jr_0a5_64c2:
    dec l                                         ; $64c2: $2d
    db $10                                        ; $64c3: $10
    ld e, [hl]                                    ; $64c4: $5e
    jr nz, jr_0a5_64c2                            ; $64c5: $20 $fb

    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    ld [hl], a                                    ; $64c9: $77
    nop                                           ; $64ca: $00
    xor l                                         ; $64cb: $ad
    nop                                           ; $64cc: $00
    rst $10                                       ; $64cd: $d7
    nop                                           ; $64ce: $00
    ld l, e                                       ; $64cf: $6b
    adc b                                         ; $64d0: $88

jr_0a5_64d1:
    ld [bc], a                                    ; $64d1: $02
    ld [bc], a                                    ; $64d2: $02
    rst $28                                       ; $64d3: $ef
    nop                                           ; $64d4: $00
    sbc $90                                       ; $64d5: $de $90
    ld c, b                                       ; $64d7: $48
    jr nz, @+$24                                  ; $64d8: $20 $22

    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    inc d                                         ; $64dc: $14
    nop                                           ; $64dd: $00

jr_0a5_64de:
    scf                                           ; $64de: $37
    ld [$100f], sp                                ; $64df: $08 $0f $10
    dec [hl]                                      ; $64e2: $35

jr_0a5_64e3:
    ld [$4f00], sp                                ; $64e3: $08 $00 $4f
    jr nc, jr_0a5_648d                            ; $64e6: $30 $a5

    rra                                           ; $64e8: $1f

jr_0a5_64e9:
    dec b                                         ; $64e9: $05
    ld a, [de]                                    ; $64ea: $1a
    ld a, [hl+]                                   ; $64eb: $2a
    dec d                                         ; $64ec: $15
    inc [hl]                                      ; $64ed: $34
    ld d, a                                       ; $64ee: $57
    jr jr_0a5_6491                                ; $64ef: $18 $a0

    add hl, sp                                    ; $64f1: $39
    ld [hl], b                                    ; $64f2: $70
    jr jr_0a5_6517                                ; $64f3: $18 $22

    adc $04                                       ; $64f5: $ce $04
    jr z, jr_0a5_6509                             ; $64f7: $28 $10

    nop                                           ; $64f9: $00
    ld d, b                                       ; $64fa: $50
    jr nz, jr_0a5_64b2                            ; $64fb: $20 $b5

    nop                                           ; $64fd: $00
    dec b                                         ; $64fe: $05

jr_0a5_64ff:
    ld a, [de]                                    ; $64ff: $1a

Jump_0a5_6500:
    cpl                                           ; $6500: $2f
    db $10                                        ; $6501: $10
    jr nc, jr_0a5_6552                            ; $6502: $30 $4e

    db $10                                        ; $6504: $10
    ld [hl], b                                    ; $6505: $70
    ld a, [hl-]                                   ; $6506: $3a
    ldh [rNR23], a                                ; $6507: $e0 $18

jr_0a5_6509:
    xor l                                         ; $6509: $ad
    db $10                                        ; $650a: $10
    rla                                           ; $650b: $17
    jr jr_0a5_650e                                ; $650c: $18 $00

jr_0a5_650e:
    ld l, $10                                     ; $650e: $2e $10
    dec sp                                        ; $6510: $3b
    nop                                           ; $6511: $00
    ld c, l                                       ; $6512: $4d
    or b                                          ; $6513: $b0
    ld e, d                                       ; $6514: $5a
    ldh [$08], a                                  ; $6515: $e0 $08

jr_0a5_6517:
    xor l                                         ; $6517: $ad
    ld [hl], b                                    ; $6518: $70
    ld e, [hl]                                    ; $6519: $5e
    and b                                         ; $651a: $a0
    add b                                         ; $651b: $80
    ld a, [hl-]                                   ; $651c: $3a
    adc e                                         ; $651d: $8b
    ldh a, [$df]                                  ; $651e: $f0 $df
    db $10                                        ; $6520: $10
    jr nz, jr_0a5_64d1                            ; $6521: $20 $ae

    ld d, b                                       ; $6523: $50
    ldh [$39], a                                  ; $6524: $e0 $39
    swap h                                        ; $6526: $cb $34

jr_0a5_6528:
    ld [hl], d                                    ; $6528: $72
    nop                                           ; $6529: $00
    jr nc, @-$2e                                  ; $652a: $30 $d0

    jr nz, jr_0a5_64de                            ; $652c: $20 $b0

    dec sp                                        ; $652e: $3b
    or b                                          ; $652f: $b0
    jr jr_0a5_6509                                ; $6530: $18 $d7

    jr z, jr_0a5_64e3                             ; $6532: $28 $af

    ld d, b                                       ; $6534: $50
    nop                                           ; $6535: $00
    push de                                       ; $6536: $d5
    jr z, jr_0a5_6528                             ; $6537: $28 $ef

    db $10                                        ; $6539: $10
    ld b, l                                       ; $653a: $45
    ccf                                           ; $653b: $3f
    cp $1f                                        ; $653c: $fe $1f
    nop                                           ; $653e: $00
    ld d, b                                       ; $653f: $50
    ccf                                           ; $6540: $3f
    ld [c], a                                     ; $6541: $e2
    dec e                                         ; $6542: $1d
    and d                                         ; $6543: $a2
    ld h, b                                       ; $6544: $60
    push de                                       ; $6545: $d5
    jr nz, jr_0a5_6548                            ; $6546: $20 $00

jr_0a5_6548:
    xor d                                         ; $6548: $aa
    ld h, b                                       ; $6549: $60
    ld d, b                                       ; $654a: $50
    and b                                         ; $654b: $a0
    add c                                         ; $654c: $81
    ld h, b                                       ; $654d: $60
    db $f4                                        ; $654e: $f4
    ldh [rDIV], a                                 ; $654f: $e0 $04
    ld a, [bc]                                    ; $6551: $0a

jr_0a5_6552:
    ldh a, [$30]                                  ; $6552: $f0 $30
    ldh [rNR10], a                                ; $6554: $e0 $10
    ld a, $05                                     ; $6556: $3e $05
    sub h                                         ; $6558: $94
    nop                                           ; $6559: $00
    ld b, h                                       ; $655a: $44
    ld b, c                                       ; $655b: $41
    and a                                         ; $655c: $a7
    dec b                                         ; $655d: $05
    ld [de], a                                    ; $655e: $12
    nop                                           ; $655f: $00
    and b                                         ; $6560: $a0
    pop de                                        ; $6561: $d1
    ld bc, $7bb4                                  ; $6562: $01 $b4 $7b
    nop                                           ; $6565: $00
    jp nz, $b53d                                  ; $6566: $c2 $3d $b5

    ld a, d                                       ; $6569: $7a
    ld c, d                                       ; $656a: $4a
    or l                                          ; $656b: $b5
    sub h                                         ; $656c: $94
    ld a, e                                       ; $656d: $7b
    nop                                           ; $656e: $00
    sub d                                         ; $656f: $92
    db $fd                                        ; $6570: $fd
    call nc, $a03b                                ; $6571: $d4 $3b $a0
    ld e, a                                       ; $6574: $5f
    jr nz, @+$01                                  ; $6575: $20 $ff

    nop                                           ; $6577: $00
    ld [de], a                                    ; $6578: $12
    db $fd                                        ; $6579: $fd
    and c                                         ; $657a: $a1
    ld a, [hl]                                    ; $657b: $7e
    ld [hl], b                                    ; $657c: $70
    cp a                                          ; $657d: $bf
    xor h                                         ; $657e: $ac
    ld a, a                                       ; $657f: $7f
    nop                                           ; $6580: $00
    dec h                                         ; $6581: $25
    ld a, [$f08f]                                 ; $6582: $fa $8f $f0
    ld l, [hl]                                    ; $6585: $6e
    ldh a, [$a5]                                  ; $6586: $f0 $a5
    ld e, d                                       ; $6588: $5a
    jr z, jr_0a5_6593                             ; $6589: $28 $08

    rst $30                                       ; $658b: $f7
    and b                                         ; $658c: $a0
    add hl, bc                                    ; $658d: $09
    xor [hl]                                      ; $658e: $ae
    add b                                         ; $658f: $80
    ld hl, $3fd0                                  ; $6590: $21 $d0 $3f

jr_0a5_6593:
    and b                                         ; $6593: $a0
    nop                                           ; $6594: $00
    ld e, a                                       ; $6595: $5f
    ret nc                                        ; $6596: $d0

    ccf                                           ; $6597: $3f
    ldh [$1f], a                                  ; $6598: $e0 $1f
    ld e, [hl]                                    ; $659a: $5e
    ccf                                           ; $659b: $3f
    push af                                       ; $659c: $f5
    ld b, $1f                                     ; $659d: $06 $1f
    ld b, b                                       ; $659f: $40
    ccf                                           ; $65a0: $3f
    ld a, [c]                                     ; $65a1: $f2
    dec e                                         ; $65a2: $1d
    ret nz                                        ; $65a3: $c0

    add hl, sp                                    ; $65a4: $39
    jr nc, jr_0a5_65c3                            ; $65a5: $30 $1c

    dec e                                         ; $65a7: $1d
    nop                                           ; $65a8: $00
    ldh a, [$a8]                                  ; $65a9: $f0 $a8
    ld [hl], b                                    ; $65ab: $70
    dec e                                         ; $65ac: $1d
    ldh [$2b], a                                  ; $65ad: $e0 $2b
    ldh a, [$fe]                                  ; $65af: $f0 $fe
    ld bc, $cbe0                                  ; $65b1: $01 $e0 $cb
    ldh a, [$3f]                                  ; $65b4: $f0 $3f
    ldh [$0e], a                                  ; $65b6: $e0 $0e
    ldh a, [rLCDC]                                ; $65b8: $f0 $40
    inc a                                         ; $65ba: $3c
    nop                                           ; $65bb: $00
    or d                                          ; $65bc: $b2
    dec e                                         ; $65bd: $1d
    inc [hl]                                      ; $65be: $34

jr_0a5_65bf:
    dec de                                        ; $65bf: $1b
    ld b, b                                       ; $65c0: $40
    ccf                                           ; $65c1: $3f
    scf                                           ; $65c2: $37

jr_0a5_65c3:
    add sp, $01                                   ; $65c3: $e8 $01
    rrca                                          ; $65c5: $0f
    ldh a, [$b5]                                  ; $65c6: $f0 $b5
    ld l, b                                       ; $65c8: $68
    ld l, a                                       ; $65c9: $6f
    or b                                          ; $65ca: $b0
    and l                                         ; $65cb: $a5
    nop                                           ; $65cc: $00
    ld [hl+], a                                   ; $65cd: $22
    pop bc                                        ; $65ce: $c1
    ret nz                                        ; $65cf: $c0

    ld a, [hl-]                                   ; $65d0: $3a
    ld [hl], b                                    ; $65d1: $70
    dec de                                        ; $65d2: $1b
    jr nc, jr_0a5_65f4                            ; $65d3: $30 $1f

    nop                                           ; $65d5: $00
    rra                                           ; $65d6: $1f
    or b                                          ; $65d7: $b0
    inc b                                         ; $65d8: $04

jr_0a5_65d9:
    nop                                           ; $65d9: $00
    inc b                                         ; $65da: $04
    cp [hl]                                       ; $65db: $be
    rra                                           ; $65dc: $1f
    ld c, d                                       ; $65dd: $4a
    jr nc, jr_0a5_6614                            ; $65de: $30 $34

    or b                                          ; $65e0: $b0
    dec b                                         ; $65e1: $05
    rst $38                                       ; $65e2: $ff
    ldh [$88], a                                  ; $65e3: $e0 $88
    jr nc, @+$5f                                  ; $65e5: $30 $5d

    ld [$80f7], sp                                ; $65e7: $08 $f7 $80
    ret z                                         ; $65ea: $c8

    rlca                                          ; $65eb: $07
    ld sp, hl                                     ; $65ec: $f9
    rst $38                                       ; $65ed: $ff
    cp [hl]                                       ; $65ee: $be
    sbc $86                                       ; $65ef: $de $86
    rlca                                          ; $65f1: $07
    ld a, h                                       ; $65f2: $7c

Call_0a5_65f3:
    rla                                           ; $65f3: $17

jr_0a5_65f4:
    add sp, $61                                   ; $65f4: $e8 $61
    inc bc                                        ; $65f6: $03
    inc b                                         ; $65f7: $04
    ld b, b                                       ; $65f8: $40
    ret nz                                        ; $65f9: $c0

    inc a                                         ; $65fa: $3c
    ret nz                                        ; $65fb: $c0

    dec de                                        ; $65fc: $1b
    cp c                                          ; $65fd: $b9
    nop                                           ; $65fe: $00
    ld b, a                                       ; $65ff: $47
    ret nc                                        ; $6600: $d0

    cpl                                           ; $6601: $2f
    dec h                                         ; $6602: $25
    db $db                                        ; $6603: $db
    adc b                                         ; $6604: $88
    ld [hl], a                                    ; $6605: $77
    ld b, c                                       ; $6606: $41
    ld h, b                                       ; $6607: $60
    cp a                                          ; $6608: $bf
    add a                                         ; $6609: $87
    dec b                                         ; $660a: $05
    cp $04                                        ; $660b: $fe $04
    cpl                                           ; $660d: $2f
    db $10                                        ; $660e: $10
    rla                                           ; $660f: $17
    ld [$00ab], sp                                ; $6610: $08 $ab $00
    inc d                                         ; $6613: $14

jr_0a5_6614:
    rla                                           ; $6614: $17
    jr jr_0a5_65bf                                ; $6615: $18 $a8

    rra                                           ; $6617: $1f
    ld d, l                                       ; $6618: $55
    ccf                                           ; $6619: $3f
    jr nz, jr_0a5_661c                            ; $661a: $20 $00

jr_0a5_661c:
    rra                                           ; $661c: $1f
    ld [hl-], a                                   ; $661d: $32
    dec e                                         ; $661e: $1d
    ld b, e                                       ; $661f: $43
    rst $38                                       ; $6620: $ff
    add l                                         ; $6621: $85
    rst $38                                       ; $6622: $ff
    dec hl                                        ; $6623: $2b
    adc d                                         ; $6624: $8a

jr_0a5_6625:
    ld h, b                                       ; $6625: $60
    inc b                                         ; $6626: $04
    db $fd                                        ; $6627: $fd
    rst $38                                       ; $6628: $ff
    rst $28                                       ; $6629: $ef
    rl a                                          ; $662a: $cb $17
    ld de, $1680                                  ; $662c: $11 $80 $16
    ld [$e4c0], sp                                ; $662f: $08 $c0 $e4
    ld bc, $1a20                                  ; $6632: $01 $20 $1a
    ld d, h                                       ; $6635: $54
    dec de                                        ; $6636: $1b
    and d                                         ; $6637: $a2
    dec e                                         ; $6638: $1d
    dec d                                         ; $6639: $15
    ld a, [de]                                    ; $663a: $1a
    ld [$15aa], sp                                ; $663b: $08 $aa $15
    ld d, h                                       ; $663e: $54
    dec sp                                        ; $663f: $3b
    jr nz, jr_0a5_665b                            ; $6640: $20 $19

    ld c, l                                       ; $6642: $4d
    jr nc, @-$07                                  ; $6643: $30 $f7

    nop                                           ; $6645: $00
    jr c, @-$30                                   ; $6646: $38 $ce

    jr nc, jr_0a5_6625                            ; $6648: $30 $db

    jr nz, jr_0a5_65d9                            ; $664a: $20 $8d

    ld [hl], b                                    ; $664c: $70
    ld e, d                                       ; $664d: $5a
    rlca                                          ; $664e: $07
    jr nz, jr_0a5_667e                            ; $664f: $20 $2d

    db $10                                        ; $6651: $10
    ld e, $00                                     ; $6652: $1e $00
    db $10                                        ; $6654: $10
    add hl, sp                                    ; $6655: $39
    ld [hl], b                                    ; $6656: $70
    add hl, de                                    ; $6657: $19
    ret nc                                        ; $6658: $d0

    ld a, [hl-]                                   ; $6659: $3a
    ret nz                                        ; $665a: $c0

jr_0a5_665b:
    sub b                                         ; $665b: $90
    dec de                                        ; $665c: $1b
    ld [hl], b                                    ; $665d: $70
    ld [$142b], sp                                ; $665e: $08 $2b $14
    ld d, a                                       ; $6661: $57
    jr c, @-$56                                   ; $6662: $38 $a8

    rra                                           ; $6664: $1f
    ld bc, $1f15                                  ; $6665: $01 $15 $1f
    jr nz, @+$21                                  ; $6668: $20 $1f

    ld d, d                                       ; $666a: $52
    dec e                                         ; $666b: $1d
    ld bc, $02bc                                  ; $666c: $01 $bc $02
    nop                                           ; $666f: $00
    ld bc, $b0e0                                  ; $6670: $01 $e0 $b0
    ld h, b                                       ; $6673: $60
    ld a, [hl+]                                   ; $6674: $2a
    pop af                                        ; $6675: $f1
    or l                                          ; $6676: $b5
    ld a, a                                       ; $6677: $7f
    inc c                                         ; $6678: $0c
    ld b, b                                       ; $6679: $40
    cp a                                          ; $667a: $bf
    or d                                          ; $667b: $b2
    ld a, l                                       ; $667c: $7d
    ld [hl], b                                    ; $667d: $70

jr_0a5_667e:
    jr c, jr_0a5_66f0                             ; $667e: $38 $70

    dec e                                         ; $6680: $1d
    inc d                                         ; $6681: $14
    ei                                            ; $6682: $fb
    nop                                           ; $6683: $00
    and d                                         ; $6684: $a2
    ld a, l                                       ; $6685: $7d
    dec [hl]                                      ; $6686: $35
    ld a, [$f50a]                                 ; $6687: $fa $0a $f5
    or h                                          ; $668a: $b4
    ei                                            ; $668b: $fb
    ld [bc], a                                    ; $668c: $02
    ld d, d                                       ; $668d: $52
    db $fd                                        ; $668e: $fd
    or h                                          ; $668f: $b4
    ld a, e                                       ; $6690: $7b
    ld b, b                                       ; $6691: $40
    cp a                                          ; $6692: $bf
    ld d, b                                       ; $6693: $50
    add hl, sp                                    ; $6694: $39
    db $eb                                        ; $6695: $eb
    nop                                           ; $6696: $00
    ldh a, [$1f]                                  ; $6697: $f0 $1f
    ldh [$2e], a                                  ; $6699: $e0 $2e
    ldh a, [$b0]                                  ; $669b: $f0 $b0
    ld e, a                                       ; $669d: $5f
    ret nz                                        ; $669e: $c0

    nop                                           ; $669f: $00
    ccf                                           ; $66a0: $3f

jr_0a5_66a1:
    ldh a, [$1f]                                  ; $66a1: $f0 $1f
    ret nz                                        ; $66a3: $c0

    ccf                                           ; $66a4: $3f
    ld a, [hl]                                    ; $66a5: $7e
    rra                                           ; $66a6: $1f
    push bc                                       ; $66a7: $c5
    nop                                           ; $66a8: $00
    ld a, [hl-]                                   ; $66a9: $3a
    ld l, a                                       ; $66aa: $6f
    db $10                                        ; $66ab: $10
    adc $30                                       ; $66ac: $ce $30
    rla                                           ; $66ae: $17
    add sp, $2f                                   ; $66af: $e8 $2f
    nop                                           ; $66b1: $00
    ldh a, [$15]                                  ; $66b2: $f0 $15
    add sp, -$51                                  ; $66b4: $e8 $af
    ld [hl], b                                    ; $66b6: $70
    dec h                                         ; $66b7: $25
    rst $38                                       ; $66b8: $ff
    xor d                                         ; $66b9: $aa
    nop                                           ; $66ba: $00
    ld [hl], b                                    ; $66bb: $70
    ld d, h                                       ; $66bc: $54
    and b                                         ; $66bd: $a0
    and d                                         ; $66be: $a2
    ld h, b                                       ; $66bf: $60
    cp l                                          ; $66c0: $bd
    ld [hl], b                                    ; $66c1: $70
    ret z                                         ; $66c2: $c8

    ld bc, $bd30                                  ; $66c3: $01 $30 $bd
    ld h, b                                       ; $66c6: $60
    ld c, e                                       ; $66c7: $4b
    or b                                          ; $66c8: $b0
    sbc [hl]                                      ; $66c9: $9e
    ld h, b                                       ; $66ca: $60
    or b                                          ; $66cb: $b0
    inc e                                         ; $66cc: $1c
    ld b, b                                       ; $66cd: $40
    ld d, l                                       ; $66ce: $55
    call nz, Call_000_1007                        ; $66cf: $c4 $07 $10
    nop                                           ; $66d2: $00
    or b                                          ; $66d3: $b0
    nop                                           ; $66d4: $00
    ld c, c                                       ; $66d5: $49
    jr nc, jr_0a5_66de                            ; $66d6: $30 $06

    call nc, Call_000_22e0                        ; $66d8: $d4 $e0 $22
    ldh [rNR14], a                                ; $66db: $e0 $14
    inc b                                         ; $66dd: $04

jr_0a5_66de:
    nop                                           ; $66de: $00
    ldh a, [$2c]                                  ; $66df: $f0 $2c
    dec h                                         ; $66e1: $25
    nop                                           ; $66e2: $00
    ld a, [$f58a]                                 ; $66e3: $fa $8a $f5
    ld [hl], a                                    ; $66e6: $77
    ld hl, sp+$0d                                 ; $66e7: $f8 $0d
    ldh a, [$b7]                                  ; $66e9: $f0 $b7
    ld bc, $0e78                                  ; $66eb: $01 $78 $0e
    ldh a, [$3b]                                  ; $66ee: $f0 $3b

jr_0a5_66f0:
    ldh [$ed], a                                  ; $66f0: $e0 $ed
    ldh a, [rSVBK]                                ; $66f2: $f0 $70
    ld a, [de]                                    ; $66f4: $1a
    ld b, b                                       ; $66f5: $40
    push de                                       ; $66f6: $d5
    db $f4                                        ; $66f7: $f4
    ld [bc], a                                    ; $66f8: $02
    ld a, $00                                     ; $66f9: $3e $00
    ld b, b                                       ; $66fb: $40
    ld bc, $8000                                  ; $66fc: $01 $00 $80
    ld [bc], a                                    ; $66ff: $02
    xor c                                         ; $6700: $a9
    nop                                           ; $6701: $00
    sbc $01                                       ; $6702: $de $01
    or a                                          ; $6704: $b7
    rst $08                                       ; $6705: $cf
    sub b                                         ; $6706: $90
    scf                                           ; $6707: $37
    add b                                         ; $6708: $80
    ld [bc], a                                    ; $6709: $02
    inc bc                                        ; $670a: $03
    add b                                         ; $670b: $80
    sbc h                                         ; $670c: $9c
    add b                                         ; $670d: $80
    add b                                         ; $670e: $80
    jr nz, jr_0a5_66a1                            ; $670f: $20 $90

    ld c, a                                       ; $6711: $4f
    ret nz                                        ; $6712: $c0

    db $e3                                        ; $6713: $e3
    ld b, d                                       ; $6714: $42
    rlca                                          ; $6715: $07
    sub b                                         ; $6716: $90
    ld b, a                                       ; $6717: $47
    or d                                          ; $6718: $b2
    rla                                           ; $6719: $17
    cp $78                                        ; $671a: $fe $78
    inc a                                         ; $671c: $3c
    sbc l                                         ; $671d: $9d
    daa                                           ; $671e: $27
    ld a, l                                       ; $671f: $7d
    rlca                                          ; $6720: $07
    nop                                           ; $6721: $00
    inc b                                         ; $6722: $04
    ld [bc], a                                    ; $6723: $02
    inc b                                         ; $6724: $04
    jr nz, jr_0a5_6767                            ; $6725: $20 $40

    jr nz, jr_0a5_6769                            ; $6727: $20 $40

    ld [hl], b                                    ; $6729: $70
    nop                                           ; $672a: $00
    jr nz, jr_0a5_6765                            ; $672b: $20 $38

    db $10                                        ; $672d: $10
    rst $28                                       ; $672e: $ef
    jr @+$0a                                      ; $672f: $18 $08

    rlca                                          ; $6731: $07
    rlca                                          ; $6732: $07
    ld [$8103], sp                                ; $6733: $08 $03 $81
    ld [bc], a                                    ; $6736: $02
    nop                                           ; $6737: $00
    add $06                                       ; $6738: $c6 $06
    jr nc, jr_0a5_674c                            ; $673a: $30 $10

    xor $00                                       ; $673c: $ee $00
    ld sp, $40c0                                  ; $673e: $31 $c0 $40
    ld d, b                                       ; $6741: $50
    add b                                         ; $6742: $80
    ld a, [hl+]                                   ; $6743: $2a
    ret nz                                        ; $6744: $c0

    rra                                           ; $6745: $1f
    ld b, b                                       ; $6746: $40
    ldh [$d9], a                                  ; $6747: $e0 $d9
    scf                                           ; $6749: $37
    add b                                         ; $674a: $80
    nop                                           ; $674b: $00

jr_0a5_674c:
    ld b, b                                       ; $674c: $40
    and b                                         ; $674d: $a0
    ld b, b                                       ; $674e: $40
    sub c                                         ; $674f: $91
    nop                                           ; $6750: $00
    add b                                         ; $6751: $80
    ld c, a                                       ; $6752: $4f
    inc b                                         ; $6753: $04
    and [hl]                                      ; $6754: $a6
    inc bc                                        ; $6755: $03
    ld e, e                                       ; $6756: $5b
    ld bc, $80f5                                  ; $6757: $01 $f5 $80
    add sp, $07                                   ; $675a: $e8 $07
    ld a, a                                       ; $675c: $7f
    nop                                           ; $675d: $00
    ld a, [$f505]                                 ; $675e: $fa $05 $f5
    ld a, [bc]                                    ; $6761: $0a
    ld d, h                                       ; $6762: $54
    nop                                           ; $6763: $00
    ld [bc], a                                    ; $6764: $02

jr_0a5_6765:
    add sp, $04                                   ; $6765: $e8 $04

jr_0a5_6767:
    sbc h                                         ; $6767: $9c
    db $e4                                        ; $6768: $e4

jr_0a5_6769:
    ld a, [hl]                                    ; $6769: $7e
    db $fc                                        ; $676a: $fc
    push hl                                       ; $676b: $e5
    nop                                           ; $676c: $00
    ld e, $da                                     ; $676d: $1e $da
    rlca                                          ; $676f: $07
    db $ed                                        ; $6770: $ed
    inc bc                                        ; $6771: $03
    ld a, a                                       ; $6772: $7f
    add b                                         ; $6773: $80
    rra                                           ; $6774: $1f
    nop                                           ; $6775: $00
    ccf                                           ; $6776: $3f
    dec e                                         ; $6777: $1d
    ld [$0803], sp                                ; $6778: $08 $03 $08
    sub l                                         ; $677b: $95
    ld [$0047], sp                                ; $677c: $08 $47 $00
    jr @+$01                                      ; $677f: $18 $ff

    db $10                                        ; $6781: $10
    xor $f1                                       ; $6782: $ee $f1
    dec [hl]                                      ; $6784: $35
    jp z, $a4b8                                   ; $6785: $ca $b8 $a4

    ldh [rSB], a                                  ; $6788: $e0 $01
    inc h                                         ; $678a: $24
    ldh [rSB], a                                  ; $678b: $e0 $01
    ld b, b                                       ; $678d: $40
    cp a                                          ; $678e: $bf
    or h                                          ; $678f: $b4
    inc e                                         ; $6790: $1c
    cp a                                          ; $6791: $bf
    ld b, b                                       ; $6792: $40
    nop                                           ; $6793: $00

jr_0a5_6794:
    ld e, a                                       ; $6794: $5f
    and b                                         ; $6795: $a0
    ccf                                           ; $6796: $3f
    ret nz                                        ; $6797: $c0

    sbc a                                         ; $6798: $9f
    ld h, b                                       ; $6799: $60
    ld c, e                                       ; $679a: $4b
    or h                                          ; $679b: $b4
    nop                                           ; $679c: $00
    dec d                                         ; $679d: $15
    ld [$d52a], a                                 ; $679e: $ea $2a $d5
    ld bc, $e8fe                                  ; $67a1: $01 $fe $e8
    rla                                           ; $67a4: $17

jr_0a5_67a5:
    nop                                           ; $67a5: $00
    ld a, [c]                                     ; $67a6: $f2
    dec c                                         ; $67a7: $0d
    push hl                                       ; $67a8: $e5
    ld a, [de]                                    ; $67a9: $1a
    jp nc, $a42d                                  ; $67aa: $d2 $2d $a4

    ld e, e                                       ; $67ad: $5b
    inc bc                                        ; $67ae: $03
    ret nz                                        ; $67af: $c0

    ccf                                           ; $67b0: $3f
    sub b                                         ; $67b1: $90
    ld l, a                                       ; $67b2: $6f
    jr nz, jr_0a5_6794                            ; $67b3: $20 $df

    ldh [$08], a                                  ; $67b5: $e0 $08
    ld a, [$ab0f]                                 ; $67b7: $fa $0f $ab
    ld bc, $0488                                  ; $67ba: $01 $88 $04
    ld b, h                                       ; $67bd: $44
    inc b                                         ; $67be: $04
    ld c, b                                       ; $67bf: $48
    db $ec                                        ; $67c0: $ec
    rlca                                          ; $67c1: $07
    ld e, d                                       ; $67c2: $5a
    cp $07                                        ; $67c3: $fe $07
    add b                                         ; $67c5: $80
    jr z, jr_0a5_6818                             ; $67c6: $28 $50

    ld d, b                                       ; $67c8: $50
    db $10                                        ; $67c9: $10
    ld b, $50                                     ; $67ca: $06 $50
    ldh a, [rTAC]                                 ; $67cc: $f0 $07
    pop hl                                        ; $67ce: $e1
    ld e, $c0                                     ; $67cf: $1e $c0
    ld hl, $a100                                  ; $67d1: $21 $00 $a1
    ld b, b                                       ; $67d4: $40
    ld de, $b8e0                                  ; $67d5: $11 $e0 $b8
    ld b, a                                       ; $67d8: $47
    pop de                                        ; $67d9: $d1
    ld l, $06                                     ; $67da: $2e $06
    inc h                                         ; $67dc: $24
    jp c, $7689                                   ; $67dd: $da $89 $76

    ld b, d                                       ; $67e0: $42
    ld d, b                                       ; $67e1: $50
    ld [bc], a                                    ; $67e2: $02
    ld h, $0d                                     ; $67e3: $26 $0d
    rst $28                                       ; $67e5: $ef
    nop                                           ; $67e6: $00
    ld [hl], b                                    ; $67e7: $70
    ld d, $0f                                     ; $67e8: $16 $0f

jr_0a5_67ea:
    dec b                                         ; $67ea: $05
    ld [bc], a                                    ; $67eb: $02
    inc bc                                        ; $67ec: $03
    inc b                                         ; $67ed: $04
    adc c                                         ; $67ee: $89
    ld bc, $6904                                  ; $67ef: $01 $04 $69

jr_0a5_67f2:
    sbc b                                         ; $67f2: $98
    db $fd                                        ; $67f3: $fd
    ld hl, sp+$0b                                 ; $67f4: $f8 $0b
    db $fc                                        ; $67f6: $fc
    ldh a, [$1f]                                  ; $67f7: $f0 $1f
    ld [bc], a                                    ; $67f9: $02
    cp [hl]                                       ; $67fa: $be
    ld h, c                                       ; $67fb: $61
    rst $30                                       ; $67fc: $f7
    ld a, c                                       ; $67fd: $79
    ld l, $f1                                     ; $67fe: $2e $f1
    ld hl, sp+$0f                                 ; $6800: $f8 $0f
    add h                                         ; $6802: $84
    ld a, [hl+]                                   ; $6803: $2a
    ei                                            ; $6804: $fb
    ld b, b                                       ; $6805: $40
    ld [$f506], sp                                ; $6806: $08 $06 $f5
    or b                                          ; $6809: $b0
    ld [bc], a                                    ; $680a: $02
    ei                                            ; $680b: $fb
    ldh [rNR34], a                                ; $680c: $e0 $1e
    rst $38                                       ; $680e: $ff
    ld b, [hl]                                    ; $680f: $46
    adc b                                         ; $6810: $88
    ld c, $05                                     ; $6811: $0e $05

jr_0a5_6813:
    ld c, d                                       ; $6813: $4a
    rst $38                                       ; $6814: $ff
    sub a                                         ; $6815: $97
    add $07                                       ; $6816: $c6 $07

jr_0a5_6818:
    jp nz, $420a                                  ; $6818: $c2 $0a $42

    nop                                           ; $681b: $00
    jr nz, jr_0a5_6813                            ; $681c: $20 $f5

    jr nz, jr_0a5_67ea                            ; $681e: $20 $ca

    jr nz, jr_0a5_67f2                            ; $6820: $20 $d0

    jr nz, jr_0a5_67a5                            ; $6822: $20 $81

    ld c, $60                                     ; $6824: $0e $60
    or h                                          ; $6826: $b4
    nop                                           ; $6827: $00
    ld a, [hl+]                                   ; $6828: $2a
    jr @+$06                                      ; $6829: $18 $04

    db $f4                                        ; $682b: $f4
    inc b                                         ; $682c: $04
    ld a, [hl]                                    ; $682d: $7e
    ld b, $10                                     ; $682e: $06 $10
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    xor d                                         ; $6832: $aa
    ld de, $3f5e                                  ; $6833: $11 $5e $3f
    jr nc, jr_0a5_6857                            ; $6836: $30 $1f

    ld [hl+], a                                   ; $6838: $22
    ld [hl], h                                    ; $6839: $74
    dec e                                         ; $683a: $1d
    sub b                                         ; $683b: $90
    ld a, [hl-]                                   ; $683c: $3a
    ldh [rNR33], a                                ; $683d: $e0 $1d
    ld b, b                                       ; $683f: $40
    ld a, [hl-]                                   ; $6840: $3a
    and l                                         ; $6841: $a5
    or [hl]                                       ; $6842: $b6
    inc bc                                        ; $6843: $03
    or a                                          ; $6844: $b7
    ld a, b                                       ; $6845: $78
    nop                                           ; $6846: $00
    ld d, l                                       ; $6847: $55
    ld a, [de]                                    ; $6848: $1a
    and d                                         ; $6849: $a2
    dec e                                         ; $684a: $1d
    jr jr_0a5_686c                                ; $684b: $18 $1f

    and l                                         ; $684d: $a5
    rra                                           ; $684e: $1f
    nop                                           ; $684f: $00
    ld d, d                                       ; $6850: $52
    ccf                                           ; $6851: $3f
    sub h                                         ; $6852: $94
    ei                                            ; $6853: $fb
    jp c, $b535                                   ; $6854: $da $35 $b5

jr_0a5_6857:
    ld e, d                                       ; $6857: $5a
    inc d                                         ; $6858: $14
    ld b, d                                       ; $6859: $42
    rst $38                                       ; $685a: $ff
    add h                                         ; $685b: $84
    ret nc                                        ; $685c: $d0

    ld [bc], a                                    ; $685d: $02
    ld d, [hl]                                    ; $685e: $56
    ret nc                                        ; $685f: $d0

    ld [hl-], a                                   ; $6860: $32
    add l                                         ; $6861: $85
    cp $40                                        ; $6862: $fe $40
    ld b, e                                       ; $6864: $43
    add b                                         ; $6865: $80
    ld d, b                                       ; $6866: $50
    jr nz, jr_0a5_6888                            ; $6867: $20 $1f

    ld [de], a                                    ; $6869: $12
    dec e                                         ; $686a: $1d
    and c                                         ; $686b: $a1

jr_0a5_686c:
    ld e, $1c                                     ; $686c: $1e $1c
    db $10                                        ; $686e: $10
    rra                                           ; $686f: $1f
    xor h                                         ; $6870: $ac
    ld h, b                                       ; $6871: $60
    inc hl                                        ; $6872: $23
    ldh [$3b], a                                  ; $6873: $e0 $3b
    ldh a, [rNR34]                                ; $6875: $f0 $1e
    ldh a, [rIF]                                  ; $6877: $f0 $0f
    nop                                           ; $6879: $00
    add sp, $30                                   ; $687a: $e8 $30
    rst $08                                       ; $687c: $cf
    ld h, a                                       ; $687d: $67
    rst $28                                       ; $687e: $ef
    ld e, b                                       ; $687f: $58
    rst $10                                       ; $6880: $d7
    ld a, b                                       ; $6881: $78
    nop                                           ; $6882: $00
    rst $28                                       ; $6883: $ef
    ld e, b                                       ; $6884: $58
    call nc, $abef                                ; $6885: $d4 $ef $ab

jr_0a5_6888:
    rst $30                                       ; $6888: $f7
    rrca                                          ; $6889: $0f
    ldh a, [rP1]                                  ; $688a: $f0 $00
    scf                                           ; $688c: $37
    inc c                                         ; $688d: $0c
    di                                            ; $688e: $f3
    and $f7                                       ; $688f: $e6 $f7
    ld a, [de]                                    ; $6891: $1a
    db $eb                                        ; $6892: $eb
    ld e, $00                                     ; $6893: $1e $00
    rst $30                                       ; $6895: $f7
    ld a, [de]                                    ; $6896: $1a
    dec hl                                        ; $6897: $2b
    rst $30                                       ; $6898: $f7
    push de                                       ; $6899: $d5
    rst $28                                       ; $689a: $ef
    sub b                                         ; $689b: $90
    ld hl, sp+$00                                 ; $689c: $f8 $00
    add $ff                                       ; $689e: $c6 $ff
    cp [hl]                                       ; $68a0: $be
    jp hl                                         ; $68a1: $e9


    sbc h                                         ; $68a2: $9c
    jp hl                                         ; $68a3: $e9


    adc $ff                                       ; $68a4: $ce $ff
    nop                                           ; $68a6: $00
    sbc b                                         ; $68a7: $98
    rst $28                                       ; $68a8: $ef
    sbc $e9                                       ; $68a9: $de $e9
    cp h                                          ; $68ab: $bc
    jp hl                                         ; $68ac: $e9


    add hl, bc                                    ; $68ad: $09
    rra                                           ; $68ae: $1f
    nop                                           ; $68af: $00
    ld h, e                                       ; $68b0: $63
    rst $38                                       ; $68b1: $ff
    ld a, l                                       ; $68b2: $7d
    rla                                           ; $68b3: $17
    add hl, sp                                    ; $68b4: $39
    rla                                           ; $68b5: $17
    ld [hl], e                                    ; $68b6: $73
    ld a, a                                       ; $68b7: $7f
    ld [bc], a                                    ; $68b8: $02
    add hl, de                                    ; $68b9: $19
    rst $30                                       ; $68ba: $f7
    ld e, e                                       ; $68bb: $5b
    scf                                           ; $68bc: $37
    ld d, l                                       ; $68bd: $55
    ccf                                           ; $68be: $3f
    ld d, b                                       ; $68bf: $50
    ld a, [bc]                                    ; $68c0: $0a
    ld l, $08                                     ; $68c1: $2e $08
    ldh a, [rNR31]                                ; $68c3: $f0 $1b
    ldh [$ad], a                                  ; $68c5: $e0 $ad
    ld d, b                                       ; $68c7: $50
    ld [hl+], a                                   ; $68c8: $22
    ret nz                                        ; $68c9: $c0

    ccf                                           ; $68ca: $3f
    or d                                          ; $68cb: $b2
    inc bc                                        ; $68cc: $03
    ld e, l                                       ; $68cd: $5d
    pop bc                                        ; $68ce: $c1
    ld a, $f0                                     ; $68cf: $3e $f0
    rra                                           ; $68d1: $1f
    ld c, h                                       ; $68d2: $4c
    sub b                                         ; $68d3: $90
    inc h                                         ; $68d4: $24
    ld d, b                                       ; $68d5: $50
    inc a                                         ; $68d6: $3c
    ret nz                                        ; $68d7: $c0

    or b                                          ; $68d8: $b0
    ld e, $80                                     ; $68d9: $1e $80
    inc a                                         ; $68db: $3c
    ld d, d                                       ; $68dc: $52
    dec a                                         ; $68dd: $3d
    inc [hl]                                      ; $68de: $34

jr_0a5_68df:
    dec de                                        ; $68df: $1b
    nop                                           ; $68e0: $00
    rra                                           ; $68e1: $1f
    add b                                         ; $68e2: $80
    jr nz, jr_0a5_68f4                            ; $68e3: $20 $0f

    ld h, b                                       ; $68e5: $60
    rra                                           ; $68e6: $1f
    ld [hl], a                                    ; $68e7: $77
    rrca                                          ; $68e8: $0f
    ld e, e                                       ; $68e9: $5b
    inc h                                         ; $68ea: $24
    ld c, l                                       ; $68eb: $4d
    dec b                                         ; $68ec: $05
    ld [hl-], a                                   ; $68ed: $32
    ld d, [hl]                                    ; $68ee: $56
    add hl, sp                                    ; $68ef: $39
    ld e, e                                       ; $68f0: $5b
    inc l                                         ; $68f1: $2c
    db $10                                        ; $68f2: $10
    inc c                                         ; $68f3: $0c

jr_0a5_68f4:
    jr nc, jr_0a5_6960                            ; $68f4: $30 $6a

    inc b                                         ; $68f6: $04
    ld a, h                                       ; $68f7: $7c
    cp [hl]                                       ; $68f8: $be
    ld d, b                                       ; $68f9: $50
    dec h                                         ; $68fa: $25
    jr nc, jr_0a5_693b                            ; $68fb: $30 $3e

    ret nz                                        ; $68fd: $c0

    dec e                                         ; $68fe: $1d
    ld [hl], b                                    ; $68ff: $70
    inc a                                         ; $6900: $3c
    jr nz, jr_0a5_6920                            ; $6901: $20 $1d

    db $dd                                        ; $6903: $dd
    ld h, $00                                     ; $6904: $26 $00
    ld e, e                                       ; $6906: $5b
    jr nz, jr_0a5_68df                            ; $6907: $20 $d6

    ld hl, $234d                                  ; $6909: $21 $4d $23
    db $db                                        ; $690c: $db
    ld h, $00                                     ; $690d: $26 $00
    ld [hl], a                                    ; $690f: $77
    inc c                                         ; $6910: $0c
    ldh [$1f], a                                  ; $6911: $e0 $1f
    ld a, a                                       ; $6913: $7f
    add b                                         ; $6914: $80
    adc h                                         ; $6915: $8c
    rst $38                                       ; $6916: $ff
    nop                                           ; $6917: $00
    sbc $e9                                       ; $6918: $de $e9
    db $fc                                        ; $691a: $fc
    jp hl                                         ; $691b: $e9


    sbc $69                                       ; $691c: $de $69
    add sp, $7d                                   ; $691e: $e8 $7d

jr_0a5_6920:
    nop                                           ; $6920: $00
    rst $10                                       ; $6921: $d7
    ld a, a                                       ; $6922: $7f
    cp $3d                                        ; $6923: $fe $3d
    cp $0f                                        ; $6925: $fe $0f
    ld [hl], c                                    ; $6927: $71
    rst $38                                       ; $6928: $ff
    nop                                           ; $6929: $00
    ei                                            ; $692a: $fb
    rla                                           ; $692b: $17
    ld a, a                                       ; $692c: $7f
    rla                                           ; $692d: $17
    ld a, e                                       ; $692e: $7b
    ld d, $17                                     ; $692f: $16 $17
    ld a, $01                                     ; $6931: $3e $01
    db $eb                                        ; $6933: $eb
    cp $3f                                        ; $6934: $fe $3f
    inc a                                         ; $6936: $3c
    cp a                                          ; $6937: $bf
    ldh a, [rSC]                                  ; $6938: $f0 $02
    ld c, h                                       ; $693a: $4c

jr_0a5_693b:
    ld b, $03                                     ; $693b: $06 $03
    ld [$b0f0], sp                                ; $693d: $08 $f0 $b0
    ld h, b                                       ; $6940: $60
    dec [hl]                                      ; $6941: $35
    ldh [$50], a                                  ; $6942: $e0 $50
    add hl, de                                    ; $6944: $19
    ld [hl], b                                    ; $6945: $70
    rrca                                          ; $6946: $0f
    nop                                           ; $6947: $00
    rlca                                          ; $6948: $07
    ld sp, hl                                     ; $6949: $f9
    xor $e1                                       ; $694a: $ee $e1
    db $db                                        ; $694c: $db
    dec b                                         ; $694d: $05
    or d                                          ; $694e: $b2
    dec c                                         ; $694f: $0d
    ld bc, $1d6b                                  ; $6950: $01 $6b $1d
    jp c, $e035                                   ; $6953: $da $35 $e0

    rra                                           ; $6956: $1f
    adc e                                         ; $6957: $8b
    sbc e                                         ; $6958: $9b
    ld [bc], a                                    ; $6959: $02
    sub b                                         ; $695a: $90
    ld [bc], a                                    ; $695b: $02
    db $10                                        ; $695c: $10
    add b                                         ; $695d: $80
    ret nz                                        ; $695e: $c0

    ld [bc], a                                    ; $695f: $02

jr_0a5_6960:
    nop                                           ; $6960: $00
    ld bc, $81ff                                  ; $6961: $01 $ff $81
    ld a, a                                       ; $6964: $7f
    ld [$0759], sp                                ; $6965: $08 $59 $07
    inc bc                                        ; $6968: $03
    ld bc, $2802                                  ; $6969: $01 $02 $28
    ldh [$80], a                                  ; $696c: $e0 $80
    xor a                                         ; $696e: $af
    ld bc, $b1f0                                  ; $696f: $01 $f0 $b1
    rst $08                                       ; $6972: $cf
    add b                                         ; $6973: $80
    ret nz                                        ; $6974: $c0

    add a                                         ; $6975: $87
    ret nz                                        ; $6976: $c0

    ld a, [$000f]                                 ; $6977: $fa $0f $00
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    inc bc                                        ; $697c: $03
    ld bc, $0157                                  ; $697d: $01 $57 $01
    ld [hl], l                                    ; $6980: $75
    rst $38                                       ; $6981: $ff
    nop                                           ; $6982: $00
    dec e                                         ; $6983: $1d
    inc bc                                        ; $6984: $03
    sub l                                         ; $6985: $95
    ld a, a                                       ; $6986: $7f
    ld [hl], l                                    ; $6987: $75
    adc e                                         ; $6988: $8b
    xor c                                         ; $6989: $a9
    ld d, a                                       ; $698a: $57
    add b                                         ; $698b: $80
    ld e, [hl]                                    ; $698c: $5e
    rrca                                          ; $698d: $0f
    sbc a                                         ; $698e: $9f
    rst $38                                       ; $698f: $ff
    adc b                                         ; $6990: $88
    rst $38                                       ; $6991: $ff
    and h                                         ; $6992: $a4
    rst $38                                       ; $6993: $ff
    or d                                          ; $6994: $b2
    ld [bc], a                                    ; $6995: $02
    rst $38                                       ; $6996: $ff
    xor c                                         ; $6997: $a9
    rst $38                                       ; $6998: $ff
    and h                                         ; $6999: $a4
    rst $18                                       ; $699a: $df
    add d                                         ; $699b: $82
    ld b, $07                                     ; $699c: $06 $07
    ld sp, hl                                     ; $699e: $f9
    nop                                           ; $699f: $00
    rst $38                                       ; $69a0: $ff
    ld de, $25ef                                  ; $69a1: $11 $ef $25
    rst $18                                       ; $69a4: $df
    ld c, l                                       ; $69a5: $4d
    cp a                                          ; $69a6: $bf
    sub l                                         ; $69a7: $95
    nop                                           ; $69a8: $00
    ld a, a                                       ; $69a9: $7f
    dec h                                         ; $69aa: $25
    rst $38                                       ; $69ab: $ff

jr_0a5_69ac:
    ld b, l                                       ; $69ac: $45
    ei                                            ; $69ad: $fb
    and h                                         ; $69ae: $a4
    db $db                                        ; $69af: $db
    xor c                                         ; $69b0: $a9
    nop                                           ; $69b1: $00
    rst $10                                       ; $69b2: $d7
    or d                                          ; $69b3: $b2
    rst $08                                       ; $69b4: $cf
    and h                                         ; $69b5: $a4
    rst $18                                       ; $69b6: $df
    adc b                                         ; $69b7: $88
    rst $38                                       ; $69b8: $ff
    sbc a                                         ; $69b9: $9f
    jr nz, jr_0a5_69ac                            ; $69ba: $20 $f0

    add b                                         ; $69bc: $80
    ret nc                                        ; $69bd: $d0

    rlca                                          ; $69be: $07
    ld hl, $95ff                                  ; $69bf: $21 $ff $95
    ei                                            ; $69c2: $fb
    ld c, l                                       ; $69c3: $4d
    nop                                           ; $69c4: $00
    ei                                            ; $69c5: $fb
    dec h                                         ; $69c6: $25
    rst $38                                       ; $69c7: $ff
    ld de, $f9ff                                  ; $69c8: $11 $ff $f9

jr_0a5_69cb:
    rrca                                          ; $69cb: $0f
    ld bc, $e080                                  ; $69cc: $01 $80 $e0
    rrca                                          ; $69cf: $0f
    ld h, l                                       ; $69d0: $65
    jp c, Jump_0a5_6b25                           ; $69d1: $da $25 $6b

    sub l                                         ; $69d4: $95
    or d                                          ; $69d5: $b2
    call $db00                                    ; $69d6: $cd $00 $db
    ld h, l                                       ; $69d9: $65
    xor $31                                       ; $69da: $ee $31
    rlca                                          ; $69dc: $07
    ld sp, hl                                     ; $69dd: $f9
    cp $01                                        ; $69de: $fe $01
    ld c, [hl]                                    ; $69e0: $4e
    add c                                         ; $69e1: $81
    xor h                                         ; $69e2: $ac
    scf                                           ; $69e3: $37
    ret nz                                        ; $69e4: $c0

    cp a                                          ; $69e5: $bf
    and b                                         ; $69e6: $a0
    rla                                           ; $69e7: $17
    ld e, b                                       ; $69e8: $58
    rlca                                          ; $69e9: $07
    ld h, b                                       ; $69ea: $60
    cpl                                           ; $69eb: $2f
    inc bc                                        ; $69ec: $03
    ldh [$c0], a                                  ; $69ed: $e0 $c0
    rlca                                          ; $69ef: $07
    ld b, b                                       ; $69f0: $40
    add hl, bc                                    ; $69f1: $09
    ld [bc], a                                    ; $69f2: $02
    ld [$077b], sp                                ; $69f3: $08 $7b $07
    halt                                          ; $69f6: $76
    rrca                                          ; $69f7: $0f
    ld [hl], e                                    ; $69f8: $73
    add hl, de                                    ; $69f9: $19
    inc a                                         ; $69fa: $3c
    ld a, a                                       ; $69fb: $7f
    nop                                           ; $69fc: $00

jr_0a5_69fd:
    jr nc, jr_0a5_6a0e                            ; $69fd: $30 $0f

    or $05                                        ; $69ff: $f6 $05
    ldh [$a9], a                                  ; $6a01: $e0 $a9
    jr nc, @+$29                                  ; $6a03: $30 $27

    adc e                                         ; $6a05: $8b
    and b                                         ; $6a06: $a0
    ld a, $0b                                     ; $6a07: $3e $0b
    inc d                                         ; $6a09: $14
    ld [hl-], a                                   ; $6a0a: $32
    jp c, $a202                                   ; $6a0b: $da $02 $a2

jr_0a5_6a0e:
    inc a                                         ; $6a0e: $3c
    rlca                                          ; $6a0f: $07
    halt                                          ; $6a10: $76
    dec b                                         ; $6a11: $05
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    ld b, c                                       ; $6a14: $41
    and b                                         ; $6a15: $a0
    sub h                                         ; $6a16: $94
    ldh [$ca], a                                  ; $6a17: $e0 $ca
    jr nc, jr_0a5_69cb                            ; $6a19: $30 $b0

    db $10                                        ; $6a1b: $10
    ld b, b                                       ; $6a1c: $40
    pop bc                                        ; $6a1d: $c1
    jr nz, jr_0a5_6a24                            ; $6a1e: $20 $04

    ld [$00f0], sp                                ; $6a20: $08 $f0 $00
    ld c, d                                       ; $6a23: $4a

jr_0a5_6a24:
    ld sp, $e502                                  ; $6a24: $31 $02 $e5
    ld a, [de]                                    ; $6a27: $1a
    ld c, d                                       ; $6a28: $4a
    dec [hl]                                      ; $6a29: $35
    rst $30                                       ; $6a2a: $f7
    jr jr_0a5_69fd                                ; $6a2b: $18 $d0

    ld a, [bc]                                    ; $6a2d: $0a
    db $eb                                        ; $6a2e: $eb
    inc b                                         ; $6a2f: $04
    dec e                                         ; $6a30: $1d
    ld l, [hl]                                    ; $6a31: $6e
    pop af                                        ; $6a32: $f1
    cp a                                          ; $6a33: $bf
    pop bc                                        ; $6a34: $c1
    ret c                                         ; $6a35: $d8

    ld a, [bc]                                    ; $6a36: $0a
    cp $01                                        ; $6a37: $fe $01
    ldh [rSVBK], a                                ; $6a39: $e0 $70
    ld a, $e0                                     ; $6a3b: $3e $e0
    inc e                                         ; $6a3d: $1c
    db $10                                        ; $6a3e: $10
    dec a                                         ; $6a3f: $3d
    ld a, [$0de0]                                 ; $6a40: $fa $e0 $0d
    ldh a, [$3e]                                  ; $6a43: $f0 $3e
    ld a, b                                       ; $6a45: $78
    ldh [$50], a                                  ; $6a46: $e0 $50
    ld a, $f0                                     ; $6a48: $3e $f0
    dec e                                         ; $6a4a: $1d
    ret nc                                        ; $6a4b: $d0

    dec a                                         ; $6a4c: $3d
    ret nc                                        ; $6a4d: $d0

    ld a, [de]                                    ; $6a4e: $1a
    add d                                         ; $6a4f: $82
    rst $20                                       ; $6a50: $e7
    add b                                         ; $6a51: $80
    nop                                           ; $6a52: $00
    db $db                                        ; $6a53: $db
    add d                                         ; $6a54: $82
    jp nc, $c1ac                                  ; $6a55: $d2 $ac $c1

    sbc h                                         ; $6a58: $9c
    pop hl                                        ; $6a59: $e1
    add d                                         ; $6a5a: $82
    nop                                           ; $6a5b: $00
    db $e4                                        ; $6a5c: $e4
    add c                                         ; $6a5d: $81
    jp c, $d282                                   ; $6a5e: $da $82 $d2

    and c                                         ; $6a61: $a1
    rst $20                                       ; $6a62: $e7
    ld bc, $db00                                  ; $6a63: $01 $00 $db
    ld b, c                                       ; $6a66: $41
    ld d, e                                       ; $6a67: $53
    dec l                                         ; $6a68: $2d
    add e                                         ; $6a69: $83
    ld hl, $c127                                  ; $6a6a: $21 $27 $c1
    nop                                           ; $6a6d: $00
    dec de                                        ; $6a6e: $1b
    pop bc                                        ; $6a6f: $c1
    inc de                                        ; $6a70: $13
    dec l                                         ; $6a71: $2d
    ld b, e                                       ; $6a72: $43
    xor h                                         ; $6a73: $ac
    pop bc                                        ; $6a74: $c1
    add b                                         ; $6a75: $80
    nop                                           ; $6a76: $00
    push hl                                       ; $6a77: $e5
    add d                                         ; $6a78: $82
    ret c                                         ; $6a79: $d8

    add c                                         ; $6a7a: $81
    jp nc, $c3ac                                  ; $6a7b: $d2 $ac $c3

    push de                                       ; $6a7e: $d5
    ld bc, $a8ea                                  ; $6a7f: $01 $ea $a8
    rst $30                                       ; $6a82: $f7
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    dec e                                         ; $6a85: $1d
    and e                                         ; $6a86: $a3
    ld a, [de]                                    ; $6a87: $1a
    jr jr_0a5_6a90                                ; $6a88: $18 $06

    xor l                                         ; $6a8a: $ad
    ld b, e                                       ; $6a8b: $43
    ld d, e                                       ; $6a8c: $53
    xor a                                         ; $6a8d: $af
    add l                                         ; $6a8e: $85
    di                                            ; $6a8f: $f3

jr_0a5_6a90:
    dec b                                         ; $6a90: $05
    sub b                                         ; $6a91: $90
    ld [bc], a                                    ; $6a92: $02
    add sp, $03                                   ; $6a93: $e8 $03
    dec bc                                        ; $6a95: $0b
    db $f4                                        ; $6a96: $f4
    or a                                          ; $6a97: $b7
    ld a, b                                       ; $6a98: $78
    jr z, @+$01                                   ; $6a99: $28 $ff

    ld b, b                                       ; $6a9b: $40
    dec e                                         ; $6a9c: $1d
    ret nc                                        ; $6a9d: $d0

    ld a, [hl-]                                   ; $6a9e: $3a
    ldh [$d0], a                                  ; $6a9f: $e0 $d0
    dec e                                         ; $6aa1: $1d
    or b                                          ; $6aa2: $b0
    ld a, $90                                     ; $6aa3: $3e $90
    ld e, $80                                     ; $6aa5: $1e $80
    ld a, a                                       ; $6aa7: $7f
    rra                                           ; $6aa8: $1f
    ld a, a                                       ; $6aa9: $7f
    adc b                                         ; $6aaa: $88
    nop                                           ; $6aab: $00
    ld a, a                                       ; $6aac: $7f
    inc h                                         ; $6aad: $24
    ld a, a                                       ; $6aae: $7f
    or d                                          ; $6aaf: $b2
    ld a, a                                       ; $6ab0: $7f
    add hl, hl                                    ; $6ab1: $29
    ld a, a                                       ; $6ab2: $7f
    and h                                         ; $6ab3: $a4
    ld b, $5f                                     ; $6ab4: $06 $5f
    ld [bc], a                                    ; $6ab6: $02
    rst $38                                       ; $6ab7: $ff
    ld a, [$c685]                                 ; $6ab8: $fa $85 $c6
    add hl, bc                                    ; $6abb: $09
    jp z, $8009                                   ; $6abc: $ca $09 $80

    ld c, a                                       ; $6abf: $4f
    ret nz                                        ; $6ac0: $c0

    inc b                                         ; $6ac1: $04
    ld [$7f81], sp                                ; $6ac2: $08 $81 $7f
    swap c                                        ; $6ac5: $cb $31
    push de                                       ; $6ac7: $d5
    ld de, $0818                                  ; $6ac8: $11 $18 $08
    ld hl, $3218                                  ; $6acb: $21 $18 $32
    rst $38                                       ; $6ace: $ff
    ret nz                                        ; $6acf: $c0

    sub b                                         ; $6ad0: $90
    add hl, bc                                    ; $6ad1: $09
    ld e, $38                                     ; $6ad2: $1e $38
    db $fd                                        ; $6ad4: $fd
    inc bc                                        ; $6ad5: $03
    sub b                                         ; $6ad6: $90
    add hl, bc                                    ; $6ad7: $09
    ldh a, [$0d]                                  ; $6ad8: $f0 $0d
    ld [hl], d                                    ; $6ada: $72
    ld [$ff42], sp                                ; $6adb: $08 $42 $ff
    ld bc, $8360                                  ; $6ade: $01 $60 $83
    rst $38                                       ; $6ae1: $ff
    pop bc                                        ; $6ae2: $c1
    cp a                                          ; $6ae3: $bf
    inc b                                         ; $6ae4: $04
    ld c, b                                       ; $6ae5: $48
    rst $38                                       ; $6ae6: $ff
    jr nz, @+$01                                  ; $6ae7: $20 $ff

    xor d                                         ; $6ae9: $aa
    inc hl                                        ; $6aea: $23
    nop                                           ; $6aeb: $00
    xor d                                         ; $6aec: $aa
    rst $38                                       ; $6aed: $ff
    ld d, l                                       ; $6aee: $55
    rst $38                                       ; $6aef: $ff
    nop                                           ; $6af0: $00
    adc $04                                       ; $6af1: $ce $04
    db $10                                        ; $6af3: $10
    db $10                                        ; $6af4: $10
    ld e, b                                       ; $6af5: $58
    ccf                                           ; $6af6: $3f
    ret nz                                        ; $6af7: $c0

    jr nz, jr_0a5_6b52                            ; $6af8: $20 $58

    ld hl, $3008                                  ; $6afa: $21 $08 $30
    ld c, b                                       ; $6afd: $48
    db $fc                                        ; $6afe: $fc
    inc de                                        ; $6aff: $13
    inc bc                                        ; $6b00: $03
    ld d, l                                       ; $6b01: $55
    xor d                                         ; $6b02: $aa
    jr c, jr_0a5_6b05                             ; $6b03: $38 $00

jr_0a5_6b05:
    xor d                                         ; $6b05: $aa
    xor d                                         ; $6b06: $aa
    ccf                                           ; $6b07: $3f

jr_0a5_6b08:
    nop                                           ; $6b08: $00
    inc b                                         ; $6b09: $04
    ld [$ff00], sp                                ; $6b0a: $08 $00 $ff
    nop                                           ; $6b0d: $00
    ld d, l                                       ; $6b0e: $55
    cp a                                          ; $6b0f: $bf
    cp a                                          ; $6b10: $bf
    ld a, a                                       ; $6b11: $7f
    rst $38                                       ; $6b12: $ff
    ccf                                           ; $6b13: $3f
    ld b, b                                       ; $6b14: $40
    cp a                                          ; $6b15: $bf
    ld [bc], a                                    ; $6b16: $02
    nop                                           ; $6b17: $00
    rst $38                                       ; $6b18: $ff
    ccf                                           ; $6b19: $3f
    or l                                          ; $6b1a: $b5
    ld e, a                                       ; $6b1b: $5f
    sub d                                         ; $6b1c: $92
    ld h, b                                       ; $6b1d: $60
    ret nz                                        ; $6b1e: $c0

    inc [hl]                                      ; $6b1f: $34
    nop                                           ; $6b20: $00
    add e                                         ; $6b21: $83
    jr nc, jr_0a5_6b79                            ; $6b22: $30 $55

    rst $38                                       ; $6b24: $ff

Jump_0a5_6b25:
    ld d, l                                       ; $6b25: $55
    nop                                           ; $6b26: $00
    ld d, d                                       ; $6b27: $52
    db $fd                                        ; $6b28: $fd
    inc b                                         ; $6b29: $04
    db $fd                                        ; $6b2a: $fd
    cp $fd                                        ; $6b2b: $fe $fd
    cp $ff                                        ; $6b2d: $fe $ff
    inc b                                         ; $6b2f: $04
    db $10                                        ; $6b30: $10
    ld d, l                                       ; $6b31: $55
    cp $04                                        ; $6b32: $fe $04
    ld d, c                                       ; $6b34: $51
    ld l, $bf                                     ; $6b35: $2e $bf
    ld a, a                                       ; $6b37: $7f
    ld bc, $0002                                  ; $6b38: $01 $02 $00
    add c                                         ; $6b3b: $81
    ld a, a                                       ; $6b3c: $7f
    ld [$2fd7], sp                                ; $6b3d: $08 $d7 $2f
    add c                                         ; $6b40: $81
    ld a, a                                       ; $6b41: $7f
    sbc [hl]                                      ; $6b42: $9e
    nop                                           ; $6b43: $00
    ld a, a                                       ; $6b44: $7f
    adc a                                         ; $6b45: $8f
    ld a, a                                       ; $6b46: $7f
    jr nz, jr_0a5_6b08                            ; $6b47: $20 $bf

    ld e, a                                       ; $6b49: $5f
    inc b                                         ; $6b4a: $04
    jr @-$47                                      ; $6b4b: $18 $b7

    ld e, a                                       ; $6b4d: $5f
    adc e                                         ; $6b4e: $8b
    ld a, a                                       ; $6b4f: $7f
    rst $18                                       ; $6b50: $df
    ld [bc], a                                    ; $6b51: $02

jr_0a5_6b52:
    ccf                                           ; $6b52: $3f
    or [hl]                                       ; $6b53: $b6
    rrca                                          ; $6b54: $0f
    ld a, [hl+]                                   ; $6b55: $2a
    sbc a                                         ; $6b56: $9f
    sub [hl]                                      ; $6b57: $96
    inc b                                         ; $6b58: $04

jr_0a5_6b59:
    jr nz, jr_0a5_6b71                            ; $6b59: $20 $16

jr_0a5_6b5b:
    nop                                           ; $6b5b: $00
    adc a                                         ; $6b5c: $8f
    call $fd9f                                    ; $6b5d: $cd $9f $fd
    cp $f9                                        ; $6b60: $fe $f9
    cp $f5                                        ; $6b62: $fe $f5
    add b                                         ; $6b64: $80
    inc b                                         ; $6b65: $04
    db $10                                        ; $6b66: $10
    jp hl                                         ; $6b67: $e9


    cp $d5                                        ; $6b68: $fe $d5
    cp $fb                                        ; $6b6a: $fe $fb
    db $fc                                        ; $6b6c: $fc
    ld b, e                                       ; $6b6d: $43
    ld b, b                                       ; $6b6e: $40
    ld a, $02                                     ; $6b6f: $3e $02

jr_0a5_6b71:
    ld e, b                                       ; $6b71: $58
    ld e, e                                       ; $6b72: $5b
    add h                                         ; $6b73: $84
    ld hl, $70c8                                  ; $6b74: $21 $c8 $70
    adc b                                         ; $6b77: $88

jr_0a5_6b78:
    nop                                           ; $6b78: $00

jr_0a5_6b79:
    dec [hl]                                      ; $6b79: $35
    ret z                                         ; $6b7a: $c8

    ld l, c                                       ; $6b7b: $69
    cp $3e                                        ; $6b7c: $fe $3e
    ret nz                                        ; $6b7e: $c0

    ld a, a                                       ; $6b7f: $7f
    add b                                         ; $6b80: $80
    nop                                           ; $6b81: $00
    ld a, $c0                                     ; $6b82: $3e $c0
    sbc d                                         ; $6b84: $9a
    ld a, l                                       ; $6b85: $7d
    ld a, a                                       ; $6b86: $7f
    jr c, jr_0a5_6b97                             ; $6b87: $38 $0e

    jr c, jr_0a5_6b8b                             ; $6b89: $38 $00

jr_0a5_6b8b:
    ld e, a                                       ; $6b8b: $5f
    jr z, jr_0a5_6b5b                             ; $6b8c: $28 $cd

    ld a, [hl-]                                   ; $6b8e: $3a
    sbc [hl]                                      ; $6b8f: $9e
    add hl, hl                                    ; $6b90: $29
    ld c, a                                       ; $6b91: $4f

jr_0a5_6b92:
    xor b                                         ; $6b92: $a8
    nop                                           ; $6b93: $00
    ld e, $a9                                     ; $6b94: $1e $a9
    sub h                                         ; $6b96: $94

jr_0a5_6b97:
    ld l, e                                       ; $6b97: $6b
    ld c, d                                       ; $6b98: $4a
    db $10                                        ; $6b99: $10

jr_0a5_6b9a:
    ld hl, $0010                                  ; $6b9a: $21 $10 $00
    ld a, e                                       ; $6b9d: $7b
    nop                                           ; $6b9e: $00
    jr z, jr_0a5_6b78                             ; $6b9f: $28 $d7

    adc e                                         ; $6ba1: $8b
    nop                                           ; $6ba2: $00

jr_0a5_6ba3:
    dec b                                         ; $6ba3: $05
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    xor a                                         ; $6ba6: $af
    nop                                           ; $6ba7: $00
    dec d                                         ; $6ba8: $15
    ld [$ff00], a                                 ; $6ba9: $ea $00 $ff
    dec d                                         ; $6bac: $15
    ld [$2a08], a                                 ; $6bad: $ea $08 $2a
    push de                                       ; $6bb0: $d5
    ccf                                           ; $6bb1: $3f
    ret nz                                        ; $6bb2: $c0

    inc b                                         ; $6bb3: $04
    ld [$c03f], sp                                ; $6bb4: $08 $3f $c0
    cp c                                          ; $6bb7: $b9
    ld [bc], a                                    ; $6bb8: $02
    cp $3f                                        ; $6bb9: $fe $3f
    ret z                                         ; $6bbb: $c8

    halt                                          ; $6bbc: $76
    adc b                                         ; $6bbd: $88
    scf                                           ; $6bbe: $37
    ld b, b                                       ; $6bbf: $40
    db $10                                        ; $6bc0: $10
    ld a, [hl]                                    ; $6bc1: $7e
    nop                                           ; $6bc2: $00
    add b                                         ; $6bc3: $80
    ccf                                           ; $6bc4: $3f
    ret nz                                        ; $6bc5: $c0

    call Call_0a5_5f2a                            ; $6bc6: $cd $2a $5f
    jr z, jr_0a5_6b59                             ; $6bc9: $28 $8e

    nop                                           ; $6bcb: $00
    jr z, jr_0a5_6c1d                             ; $6bcc: $28 $4f

    jr z, jr_0a5_6b9a                             ; $6bce: $28 $ca

    dec l                                         ; $6bd0: $2d
    rrca                                          ; $6bd1: $0f
    xor b                                         ; $6bd2: $a8
    ld c, [hl]                                    ; $6bd3: $4e
    nop                                           ; $6bd4: $00
    xor c                                         ; $6bd5: $a9
    ld c, $a9                                     ; $6bd6: $0e $a9
    inc [hl]                                      ; $6bd8: $34
    bit 1, d                                      ; $6bd9: $cb $4a
    db $10                                        ; $6bdb: $10
    ld sp, $0000                                  ; $6bdc: $31 $00 $00
    ld l, e                                       ; $6bdf: $6b
    db $10                                        ; $6be0: $10
    ld [hl], b                                    ; $6be1: $70
    adc a                                         ; $6be2: $8f
    add d                                         ; $6be3: $82
    nop                                           ; $6be4: $00
    ld b, c                                       ; $6be5: $41
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    xor e                                         ; $6be8: $ab
    nop                                           ; $6be9: $00
    call nc, $b6ff                                ; $6bea: $d4 $ff $b6
    ret z                                         ; $6bed: $c8

    rst $38                                       ; $6bee: $ff
    nop                                           ; $6bef: $00
    adc b                                         ; $6bf0: $88
    or [hl]                                       ; $6bf1: $b6
    ret z                                         ; $6bf2: $c8

    db $e4                                        ; $6bf3: $e4
    rst $38                                       ; $6bf4: $ff
    cp [hl]                                       ; $6bf5: $be
    ret nz                                        ; $6bf6: $c0

    rst $38                                       ; $6bf7: $ff
    nop                                           ; $6bf8: $00
    add b                                         ; $6bf9: $80
    cp [hl]                                       ; $6bfa: $be
    ret nz                                        ; $6bfb: $c0

    call z, $8e2b                                 ; $6bfc: $cc $2b $8e
    jr z, jr_0a5_6c4f                             ; $6bff: $28 $4e

    nop                                           ; $6c01: $00
    jr z, jr_0a5_6ba3                             ; $6c02: $28 $9f

    jr z, jr_0a5_6b92                             ; $6c04: $28 $8c

    ld l, e                                       ; $6c06: $6b
    ld e, $a9                                     ; $6c07: $1e $a9
    adc $00                                       ; $6c09: $ce $00
    add hl, hl                                    ; $6c0b: $29
    ld e, $a9                                     ; $6c0c: $1e $a9
    ld e, h                                       ; $6c0e: $5c
    and e                                         ; $6c0f: $a3
    and l                                         ; $6c10: $a5
    db $10                                        ; $6c11: $10
    ld [$1004], sp                                ; $6c12: $08 $04 $10
    and l                                         ; $6c15: $a5
    db $10                                        ; $6c16: $10
    ld d, h                                       ; $6c17: $54
    xor e                                         ; $6c18: $ab
    jr nc, jr_0a5_6c33                            ; $6c19: $30 $18

    xor d                                         ; $6c1b: $aa
    push af                                       ; $6c1c: $f5

jr_0a5_6c1d:
    nop                                           ; $6c1d: $00
    db $fd                                        ; $6c1e: $fd
    add e                                         ; $6c1f: $83
    cp e                                          ; $6c20: $bb
    add $fc                                       ; $6c21: $c6 $fc
    add [hl]                                      ; $6c23: $86
    or a                                          ; $6c24: $b7
    db $fd                                        ; $6c25: $fd
    nop                                           ; $6c26: $00
    ld sp, hl                                     ; $6c27: $f9
    adc l                                         ; $6c28: $8d
    cp e                                          ; $6c29: $bb
    call $ffbd                                    ; $6c2a: $cd $bd $ff
    ld a, [hl]                                    ; $6c2d: $7e
    rst $38                                       ; $6c2e: $ff
    nop                                           ; $6c2f: $00
    xor e                                         ; $6c30: $ab
    rst $38                                       ; $6c31: $ff
    ld a, [hl]                                    ; $6c32: $7e

jr_0a5_6c33:
    ld a, a                                       ; $6c33: $7f
    jp $81ff                                      ; $6c34: $c3 $ff $81


    rst $38                                       ; $6c37: $ff
    nop                                           ; $6c38: $00
    adc c                                         ; $6c39: $89
    rst $30                                       ; $6c3a: $f7
    push de                                       ; $6c3b: $d5
    xor e                                         ; $6c3c: $ab
    ld [$f9d7], a                                 ; $6c3d: $ea $d7 $f9
    ld b, $00                                     ; $6c40: $06 $00
    cp a                                          ; $6c42: $bf
    ret nz                                        ; $6c43: $c0

    rst $18                                       ; $6c44: $df
    ldh [$7f], a                                  ; $6c45: $e0 $7f
    ldh [$e4], a                                  ; $6c47: $e0 $e4
    ld a, e                                       ; $6c49: $7b
    nop                                           ; $6c4a: $00
    ld a, a                                       ; $6c4b: $7f
    ld [hl], b                                    ; $6c4c: $70
    ld a, a                                       ; $6c4d: $7f
    ld [hl], b                                    ; $6c4e: $70

jr_0a5_6c4f:
    push af                                       ; $6c4f: $f5
    ld a, a                                       ; $6c50: $7f
    ld b, e                                       ; $6c51: $43
    ccf                                           ; $6c52: $3f
    add b                                         ; $6c53: $80
    ld [bc], a                                    ; $6c54: $02
    ld e, b                                       ; $6c55: $58
    sbc b                                         ; $6c56: $98
    ldh [rLCDC], a                                ; $6c57: $e0 $40
    rst $38                                       ; $6c59: $ff
    add b                                         ; $6c5a: $80
    ret nz                                        ; $6c5b: $c0

    ld e, a                                       ; $6c5c: $5f
    nop                                           ; $6c5d: $00
    ret nz                                        ; $6c5e: $c0

    sub b                                         ; $6c5f: $90
    rst $08                                       ; $6c60: $cf
    ld d, b                                       ; $6c61: $50
    rst $08                                       ; $6c62: $cf
    and b                                         ; $6c63: $a0
    rst $18                                       ; $6c64: $df
    ld a, a                                       ; $6c65: $7f
    inc e                                         ; $6c66: $1c
    rst $38                                       ; $6c67: $ff
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    ld [hl], l                                    ; $6c6a: $75
    ld bc, $1803                                  ; $6c6b: $01 $03 $18
    cp [hl]                                       ; $6c6e: $be
    ld de, $0106                                  ; $6c6f: $11 $06 $01
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00
    rst $38                                       ; $6c74: $ff
    inc c                                         ; $6c75: $0c
    rlca                                          ; $6c76: $07
    db $f4                                        ; $6c77: $f4
    rrca                                          ; $6c78: $0f
    inc b                                         ; $6c79: $04
    rst $38                                       ; $6c7a: $ff
    sub h                                         ; $6c7b: $94
    ld [bc], a                                    ; $6c7c: $02
    ld [$fffc], sp                                ; $6c7d: $08 $fc $ff
    ret nc                                        ; $6c80: $d0

    jr z, @-$15                                   ; $6c81: $28 $e9

    ret nc                                        ; $6c83: $d0

    jr nz, @+$01                                  ; $6c84: $20 $ff

    rst $38                                       ; $6c86: $ff
    ld c, h                                       ; $6c87: $4c
    add b                                         ; $6c88: $80
    ld [bc], a                                    ; $6c89: $02
    nop                                           ; $6c8a: $00
    ret nz                                        ; $6c8b: $c0

    cp a                                          ; $6c8c: $bf
    inc b                                         ; $6c8d: $04
    jr jr_0a5_6c90                                ; $6c8e: $18 $00

jr_0a5_6c90:
    ld a, [bc]                                    ; $6c90: $0a
    nop                                           ; $6c91: $00
    rst $38                                       ; $6c92: $ff
    jr nc, @-$54                                  ; $6c93: $30 $aa

    ld d, l                                       ; $6c95: $55
    ld a, $18                                     ; $6c96: $3e $18
    ld a, [bc]                                    ; $6c98: $0a
    ld a, [bc]                                    ; $6c99: $0a
    add e                                         ; $6c9a: $83
    rst $38                                       ; $6c9b: $ff
    ld b, c                                       ; $6c9c: $41
    cp a                                          ; $6c9d: $bf
    ld bc, $7f83                                  ; $6c9e: $01 $83 $7f
    ld bc, $03ff                                  ; $6ca1: $01 $ff $03
    rst $38                                       ; $6ca4: $ff
    ld bc, $009a                                  ; $6ca5: $01 $9a $00
    add b                                         ; $6ca8: $80
    ld l, $08                                     ; $6ca9: $2e $08
    ld b, b                                       ; $6cab: $40
    ret nz                                        ; $6cac: $c0

    sbc a                                         ; $6cad: $9f
    ret nz                                        ; $6cae: $c0

    ld d, b                                       ; $6caf: $50
    rst $08                                       ; $6cb0: $cf
    sub b                                         ; $6cb1: $90
    inc bc                                        ; $6cb2: $03
    rst $08                                       ; $6cb3: $cf
    ld h, b                                       ; $6cb4: $60
    rst $18                                       ; $6cb5: $df
    cp a                                          ; $6cb6: $bf
    rst $38                                       ; $6cb7: $ff
    ld b, b                                       ; $6cb8: $40
    db $e3                                        ; $6cb9: $e3
    add hl, bc                                    ; $6cba: $09
    ld l, [hl]                                    ; $6cbb: $6e
    ld b, b                                       ; $6cbc: $40
    ld b, b                                       ; $6cbd: $40
    nop                                           ; $6cbe: $00
    jr z, jr_0a5_6cc1                             ; $6cbf: $28 $00

jr_0a5_6cc1:
    rrca                                          ; $6cc1: $0f
    dec b                                         ; $6cc2: $05
    push af                                       ; $6cc3: $f5
    dec c                                         ; $6cc4: $0d
    dec b                                         ; $6cc5: $05
    db $fd                                        ; $6cc6: $fd
    adc e                                         ; $6cc7: $8b
    ld [bc], a                                    ; $6cc8: $02
    ld [$fdff], sp                                ; $6cc9: $08 $ff $fd
    nop                                           ; $6ccc: $00
    sbc h                                         ; $6ccd: $9c
    ld d, b                                       ; $6cce: $50
    add b                                         ; $6ccf: $80
    ld [hl+], a                                   ; $6cd0: $22
    ld [$502e], sp                                ; $6cd1: $08 $2e $50
    ld [hl], b                                    ; $6cd4: $70
    rst $38                                       ; $6cd5: $ff
    sbc h                                         ; $6cd6: $9c
    ld d, b                                       ; $6cd7: $50
    ld l, [hl]                                    ; $6cd8: $6e
    ld a, [bc]                                    ; $6cd9: $0a
    ldh [$58], a                                  ; $6cda: $e0 $58
    jp nz, $ff3f                                  ; $6cdc: $c2 $3f $ff

    rst $38                                       ; $6cdf: $ff
    nop                                           ; $6ce0: $00
    push de                                       ; $6ce1: $d5
    rst $38                                       ; $6ce2: $ff
    and b                                         ; $6ce3: $a0
    rst $38                                       ; $6ce4: $ff
    db $fd                                        ; $6ce5: $fd
    rst $38                                       ; $6ce6: $ff
    and a                                         ; $6ce7: $a7
    ld hl, sp+$05                                 ; $6ce8: $f8 $05
    sub $f8                                       ; $6cea: $d6 $f8
    and e                                         ; $6cec: $a3
    db $fc                                        ; $6ced: $fc
    call nc, Call_000_1236                        ; $6cee: $d4 $36 $12
    nop                                           ; $6cf1: $00
    inc d                                         ; $6cf2: $14
    nop                                           ; $6cf3: $00
    ld bc, $3fc0                                  ; $6cf4: $01 $c0 $3f
    ld [hl], b                                    ; $6cf7: $70
    ccf                                           ; $6cf8: $3f
    ld c, d                                       ; $6cf9: $4a
    ccf                                           ; $6cfa: $3f
    or $10                                        ; $6cfb: $f6 $10
    jr nz, jr_0a5_6cff                            ; $6cfd: $20 $00

jr_0a5_6cff:
    xor $ff                                       ; $6cff: $ee $ff
    xor a                                         ; $6d01: $af
    ld d, b                                       ; $6d02: $50
    ld [bc], a                                    ; $6d03: $02
    db $fd                                        ; $6d04: $fd
    add b                                         ; $6d05: $80
    rst $38                                       ; $6d06: $ff
    nop                                           ; $6d07: $00

jr_0a5_6d08:
    ld d, a                                       ; $6d08: $57
    rst $38                                       ; $6d09: $ff
    push de                                       ; $6d0a: $d5
    ld b, b                                       ; $6d0b: $40
    ld [$7d40], a                                 ; $6d0c: $ea $40 $7d
    rst $00                                       ; $6d0f: $c7
    nop                                           ; $6d10: $00
    ld a, [hl]                                    ; $6d11: $7e
    ld sp, hl                                     ; $6d12: $f9
    sub e                                         ; $6d13: $93
    ld bc, $01fe                                  ; $6d14: $01 $fe $01
    dec bc                                        ; $6d17: $0b
    push af                                       ; $6d18: $f5
    nop                                           ; $6d19: $00
    and e                                         ; $6d1a: $a3

jr_0a5_6d1b:
    rst $38                                       ; $6d1b: $ff
    ld bc, $ac06                                  ; $6d1c: $01 $06 $ac
    rlca                                          ; $6d1f: $07
    ld d, [hl]                                    ; $6d20: $56
    rst $38                                       ; $6d21: $ff
    nop                                           ; $6d22: $00
    push de                                       ; $6d23: $d5
    nop                                           ; $6d24: $00
    cp [hl]                                       ; $6d25: $be
    ld b, b                                       ; $6d26: $40
    ld e, a                                       ; $6d27: $5f
    and b                                         ; $6d28: $a0
    ld a, [bc]                                    ; $6d29: $0a
    push af                                       ; $6d2a: $f5
    db $10                                        ; $6d2b: $10
    db $ed                                        ; $6d2c: $ed
    rst $38                                       ; $6d2d: $ff
    or c                                          ; $6d2e: $b1
    sub h                                         ; $6d2f: $94
    ld [bc], a                                    ; $6d30: $02
    ld b, b                                       ; $6d31: $40
    rst $38                                       ; $6d32: $ff
    ld a, l                                       ; $6d33: $7d
    ccf                                           ; $6d34: $3f
    nop                                           ; $6d35: $00
    db $fd                                        ; $6d36: $fd
    jr nz, jr_0a5_6d08                            ; $6d37: $20 $cf

    jr nc, jr_0a5_6d1b                            ; $6d39: $30 $e0

    ccf                                           ; $6d3b: $3f
    push af                                       ; $6d3c: $f5
    rst $38                                       ; $6d3d: $ff
    inc b                                         ; $6d3e: $04
    ld a, [$1f80]                                 ; $6d3f: $fa $80 $1f
    ldh [$80], a                                  ; $6d42: $e0 $80
    ld h, b                                       ; $6d44: $60
    nop                                           ; $6d45: $00
    ld d, a                                       ; $6d46: $57
    ld [$f704], sp                                ; $6d47: $08 $04 $f7
    ld [$9e69], sp                                ; $6d4a: $08 $69 $9e
    ld e, a                                       ; $6d4d: $5f
    rra                                           ; $6d4e: $1f
    inc bc                                        ; $6d4f: $03
    ld [$40ff], a                                 ; $6d50: $ea $ff $40
    pop de                                        ; $6d53: $d1
    inc b                                         ; $6d54: $04
    inc bc                                        ; $6d55: $03
    rst $18                                       ; $6d56: $df
    ldh a, [$a7]                                  ; $6d57: $f0 $a7
    ld hl, sp-$30                                 ; $6d59: $f8 $d0
    rst $38                                       ; $6d5b: $ff
    ld b, c                                       ; $6d5c: $41
    ld sp, hl                                     ; $6d5d: $f9
    inc c                                         ; $6d5e: $0c
    inc de                                        ; $6d5f: $13
    db $10                                        ; $6d60: $10
    rst $38                                       ; $6d61: $ff
    or a                                          ; $6d62: $b7
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    ld d, b                                       ; $6d65: $50
    nop                                           ; $6d66: $00
    ld de, $e916                                  ; $6d67: $11 $16 $e9
    db $fd                                        ; $6d6a: $fd
    inc e                                         ; $6d6b: $1c
    inc de                                        ; $6d6c: $13
    nop                                           ; $6d6d: $00
    rst $38                                       ; $6d6e: $ff
    ld a, l                                       ; $6d6f: $7d
    ld a, [$1002]                                 ; $6d70: $fa $02 $10
    ld a, [hl]                                    ; $6d73: $7e
    add b                                         ; $6d74: $80
    inc bc                                        ; $6d75: $03
    sub b                                         ; $6d76: $90
    nop                                           ; $6d77: $00
    rst $08                                       ; $6d78: $cf
    ld [bc], a                                    ; $6d79: $02
    db $fc                                        ; $6d7a: $fc
    inc bc                                        ; $6d7b: $03
    ld b, b                                       ; $6d7c: $40
    ld [bc], a                                    ; $6d7d: $02
    ld a, b                                       ; $6d7e: $78
    nop                                           ; $6d7f: $00
    inc c                                         ; $6d80: $0c
    db $10                                        ; $6d81: $10
    rst $38                                       ; $6d82: $ff
    db $10                                        ; $6d83: $10
    ld d, d                                       ; $6d84: $52
    cp l                                          ; $6d85: $bd
    db $10                                        ; $6d86: $10
    cp c                                          ; $6d87: $b9
    rst $38                                       ; $6d88: $ff
    call nc, Call_000_02f4                        ; $6d89: $d4 $f4 $02
    ld bc, $fefe                                  ; $6d8c: $01 $fe $fe
    rst $38                                       ; $6d8f: $ff
    ld b, $17                                     ; $6d90: $06 $17
    ld [$0ef9], sp                                ; $6d92: $08 $f9 $0e
    xor b                                         ; $6d95: $a8
    ld c, a                                       ; $6d96: $4f
    ld [$0050], sp                                ; $6d97: $08 $50 $00
    ret nc                                        ; $6d9a: $d0

    nop                                           ; $6d9b: $00
    rst $38                                       ; $6d9c: $ff
    cp $ff                                        ; $6d9d: $fe $ff
    xor a                                         ; $6d9f: $af
    ldh a, [$d2]                                  ; $6da0: $f0 $d2
    db $fd                                        ; $6da2: $fd
    and b                                         ; $6da3: $a0
    jr nz, @+$01                                  ; $6da4: $20 $ff

    rst $10                                       ; $6da6: $d7

jr_0a5_6da7:
    ld e, h                                       ; $6da7: $5c
    inc de                                        ; $6da8: $13
    ld de, $93ee                                  ; $6da9: $11 $ee $93
    rst $38                                       ; $6dac: $ff
    ld l, e                                       ; $6dad: $6b
    ld [bc], a                                    ; $6dae: $02
    call nc, $ea15                                ; $6daf: $d4 $15 $ea
    ld b, d                                       ; $6db2: $42
    db $fd                                        ; $6db3: $fd
    or h                                          ; $6db4: $b4
    db $10                                        ; $6db5: $10
    jr jr_0a5_6da7                                ; $6db6: $18 $ef

    nop                                           ; $6db8: $00
    ld [$dfff], a                                 ; $6db9: $ea $ff $df
    ld h, b                                       ; $6dbc: $60
    rlca                                          ; $6dbd: $07
    ld hl, sp-$40                                 ; $6dbe: $f8 $c0
    ld a, a                                       ; $6dc0: $7f
    nop                                           ; $6dc1: $00
    ld sp, hl                                     ; $6dc2: $f9
    rst $38                                       ; $6dc3: $ff
    ld [$0000], sp                                ; $6dc4: $08 $00 $00
    ld [$0800], sp                                ; $6dc7: $08 $00 $08
    ld [bc], a                                    ; $6dca: $02
    add h                                         ; $6dcb: $84
    ld [$004a], sp                                ; $6dcc: $08 $4a $00
    adc e                                         ; $6dcf: $8b

jr_0a5_6dd0:
    ld [hl], h                                    ; $6dd0: $74
    call z, Call_000_0001                         ; $6dd1: $cc $01 $00
    ld [$0103], sp                                ; $6dd4: $08 $03 $01
    ld [bc], a                                    ; $6dd7: $02
    ld bc, $0804                                  ; $6dd8: $01 $04 $08
    xor e                                         ; $6ddb: $ab
    ld bc, $000e                                  ; $6ddc: $01 $0e $00
    pop af                                        ; $6ddf: $f1
    ld b, e                                       ; $6de0: $43
    ld bc, $4102                                  ; $6de1: $01 $02 $41
    rst $00                                       ; $6de4: $c7
    rst $38                                       ; $6de5: $ff
    db $e3                                        ; $6de6: $e3
    ld b, b                                       ; $6de7: $40
    rst $18                                       ; $6de8: $df
    inc b                                         ; $6de9: $04
    ld c, b                                       ; $6dea: $48
    add b                                         ; $6deb: $80
    nop                                           ; $6dec: $00
    ld d, l                                       ; $6ded: $55
    nop                                           ; $6dee: $00
    jr nz, jr_0a5_6dd0                            ; $6def: $20 $df

    add b                                         ; $6df1: $80
    ld [hl], $08                                  ; $6df2: $36 $08
    adc h                                         ; $6df4: $8c
    nop                                           ; $6df5: $00
    ld c, d                                       ; $6df6: $4a
    nop                                           ; $6df7: $00
    add h                                         ; $6df8: $84
    ld a, e                                       ; $6df9: $7b
    inc hl                                        ; $6dfa: $23
    inc b                                         ; $6dfb: $04
    ld b, c                                       ; $6dfc: $41
    ld d, d                                       ; $6dfd: $52
    ld bc, $9d63                                  ; $6dfe: $01 $63 $9d
    inc [hl]                                      ; $6e01: $34
    jr z, @+$64                                   ; $6e02: $28 $62

    sbc l                                         ; $6e04: $9d
    ret z                                         ; $6e05: $c8

    ld b, h                                       ; $6e06: $44
    ld [$0824], sp                                ; $6e07: $08 $24 $08
    sub b                                         ; $6e0a: $90
    ld l, a                                       ; $6e0b: $6f
    ld e, d                                       ; $6e0c: $5a
    ld [$0884], sp                                ; $6e0d: $08 $84 $08
    inc bc                                        ; $6e10: $03
    nop                                           ; $6e11: $00
    ld b, c                                       ; $6e12: $41
    ld [bc], a                                    ; $6e13: $02
    ld b, c                                       ; $6e14: $41
    ld h, e                                       ; $6e15: $63
    ld bc, $0156                                  ; $6e16: $01 $56 $01
    rst $20                                       ; $6e19: $e7
    ld b, d                                       ; $6e1a: $42
    add hl, de                                    ; $6e1b: $19
    ld e, b                                       ; $6e1c: $58
    jr @+$54                                      ; $6e1d: $18 $52

    ld [$c738], sp                                ; $6e1f: $08 $38 $c7
    inc h                                         ; $6e22: $24
    jr z, jr_0a5_6e68                             ; $6e23: $28 $43

    ld bc, $00bc                                  ; $6e25: $01 $bc $00

jr_0a5_6e28:
    ld [$01ab], sp                                ; $6e28: $08 $ab $01
    ld b, [hl]                                    ; $6e2b: $46
    cp c                                          ; $6e2c: $b9
    ld l, b                                       ; $6e2d: $68
    ld [$2300], sp                                ; $6e2e: $08 $00 $23
    ld b, c                                       ; $6e31: $41

jr_0a5_6e32:
    ld [de], a                                    ; $6e32: $12
    ld b, c                                       ; $6e33: $41
    rst $00                                       ; $6e34: $c7
    add hl, sp                                    ; $6e35: $39
    ld [bc], a                                    ; $6e36: $02
    ld bc, $f900                                  ; $6e37: $01 $00 $f9
    ld c, $f2                                     ; $6e3a: $0e $f2
    rrca                                          ; $6e3c: $0f
    dec c                                         ; $6e3d: $0d
    rst $38                                       ; $6e3e: $ff
    di                                            ; $6e3f: $f3
    rst $38                                       ; $6e40: $ff
    nop                                           ; $6e41: $00
    xor [hl]                                      ; $6e42: $ae
    ld d, c                                       ; $6e43: $51
    inc b                                         ; $6e44: $04
    ei                                            ; $6e45: $fb
    ld d, b                                       ; $6e46: $50
    rst $38                                       ; $6e47: $ff
    adc c                                         ; $6e48: $89
    rst $38                                       ; $6e49: $ff
    inc b                                         ; $6e4a: $04
    ld [hl], e                                    ; $6e4b: $73
    adc h                                         ; $6e4c: $8c
    dec h                                         ; $6e4d: $25
    sbc $44                                       ; $6e4e: $de $44
    ld b, l                                       ; $6e50: $45
    inc b                                         ; $6e51: $04
    cp l                                          ; $6e52: $bd
    ret nz                                        ; $6e53: $c0

    nop                                           ; $6e54: $00
    adc a                                         ; $6e55: $8f
    ldh a, [$80]                                  ; $6e56: $f0 $80
    rst $38                                       ; $6e58: $ff
    rst $30                                       ; $6e59: $f7
    rst $38                                       ; $6e5a: $ff
    or l                                          ; $6e5b: $b5
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    cp $00                                        ; $6e5e: $fe $00
    ld d, l                                       ; $6e60: $55
    xor d                                         ; $6e61: $aa
    pop af                                        ; $6e62: $f1
    rst $38                                       ; $6e63: $ff
    ld b, c                                       ; $6e64: $41
    ld b, $01                                     ; $6e65: $06 $01
    db $ec                                        ; $6e67: $ec

jr_0a5_6e68:
    rlca                                          ; $6e68: $07
    jr c, jr_0a5_6e32                             ; $6e69: $38 $c7

    inc b                                         ; $6e6b: $04
    rst $38                                       ; $6e6c: $ff
    ld d, l                                       ; $6e6d: $55
    add b                                         ; $6e6e: $80
    ld bc, $ff00                                  ; $6e6f: $01 $00 $ff
    ld b, b                                       ; $6e72: $40
    adc d                                         ; $6e73: $8a
    rst $38                                       ; $6e74: $ff
    ld e, a                                       ; $6e75: $5f
    and b                                         ; $6e76: $a0
    xor d                                         ; $6e77: $aa
    ld d, l                                       ; $6e78: $55
    nop                                           ; $6e79: $00
    ld d, l                                       ; $6e7a: $55
    xor d                                         ; $6e7b: $aa
    inc bc                                        ; $6e7c: $03
    db $fd                                        ; $6e7d: $fd
    rst $28                                       ; $6e7e: $ef
    jr nc, jr_0a5_6e28                            ; $6e7f: $30 $a7

    ld a, b                                       ; $6e81: $78
    db $10                                        ; $6e82: $10
    ld hl, $bafe                                  ; $6e83: $21 $fe $ba
    db $10                                        ; $6e86: $10
    db $10                                        ; $6e87: $10
    inc b                                         ; $6e88: $04
    ei                                            ; $6e89: $fb
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    nop                                           ; $6e8c: $00
    dec l                                         ; $6e8d: $2d
    ld b, $f8                                     ; $6e8e: $06 $f8
    rlca                                          ; $6e90: $07
    ld d, b                                       ; $6e91: $50
    xor a                                         ; $6e92: $af
    ld d, a                                       ; $6e93: $57
    rst $38                                       ; $6e94: $ff
    nop                                           ; $6e95: $00
    cp h                                          ; $6e96: $bc
    ret nz                                        ; $6e97: $c0

    sbc a                                         ; $6e98: $9f
    ldh [$85], a                                  ; $6e99: $e0 $85
    ld a, [$ffcf]                                 ; $6e9b: $fa $cf $ff
    ld b, c                                       ; $6e9e: $41
    rst $10                                       ; $6e9f: $d7
    or e                                          ; $6ea0: $b3
    ld [bc], a                                    ; $6ea1: $02
    dec d                                         ; $6ea2: $15
    ld [$ffd3], a                                 ; $6ea3: $ea $d3 $ff
    ld a, c                                       ; $6ea6: $79
    sub b                                         ; $6ea7: $90
    ld bc, $0400                                  ; $6ea8: $01 $00 $04
    ei                                            ; $6eab: $fb
    ld [hl], a                                    ; $6eac: $77
    rst $38                                       ; $6ead: $ff
    cp l                                          ; $6eae: $bd
    cp $e7                                        ; $6eaf: $fe $e7
    jr jr_0a5_6eb3                                ; $6eb1: $18 $00

jr_0a5_6eb3:
    ld [hl], b                                    ; $6eb3: $70
    sbc a                                         ; $6eb4: $9f
    cp a                                          ; $6eb5: $bf
    rst $38                                       ; $6eb6: $ff
    sub a                                         ; $6eb7: $97
    add sp, -$40                                  ; $6eb8: $e8 $c0
    rst $38                                       ; $6eba: $ff
    nop                                           ; $6ebb: $00
    xor b                                         ; $6ebc: $a8
    rst $38                                       ; $6ebd: $ff
    cp e                                          ; $6ebe: $bb
    rst $38                                       ; $6ebf: $ff
    ld a, [hl]                                    ; $6ec0: $7e
    jr nz, @-$17                                  ; $6ec1: $20 $e7

    jr c, jr_0a5_6ec5                             ; $6ec3: $38 $00

jr_0a5_6ec5:
    jr nz, @+$01                                  ; $6ec5: $20 $ff

    db $eb                                        ; $6ec7: $eb
    rst $38                                       ; $6ec8: $ff
    ld d, e                                       ; $6ec9: $53
    ld bc, $01ff                                  ; $6eca: $01 $ff $01
    nop                                           ; $6ecd: $00
    ld e, d                                       ; $6ece: $5a
    and l                                         ; $6ecf: $a5
    ld d, a                                       ; $6ed0: $57
    rst $38                                       ; $6ed1: $ff
    cp a                                          ; $6ed2: $bf
    db $10                                        ; $6ed3: $10
    rst $30                                       ; $6ed4: $f7
    jr jr_0a5_6ed7                                ; $6ed5: $18 $00

jr_0a5_6ed7:
    db $10                                        ; $6ed7: $10
    rst $38                                       ; $6ed8: $ff
    ld h, a                                       ; $6ed9: $67
    rst $38                                       ; $6eda: $ff
    dec b                                         ; $6edb: $05
    ld a, [$ff80]                                 ; $6edc: $fa $80 $ff
    ld b, c                                       ; $6edf: $41
    ld b, c                                       ; $6ee0: $41
    xor h                                         ; $6ee1: $ac
    inc b                                         ; $6ee2: $04
    rst $30                                       ; $6ee3: $f7
    ld [$1ce3], sp                                ; $6ee4: $08 $e3 $1c
    ld [$0224], sp                                ; $6ee7: $08 $24 $02
    nop                                           ; $6eea: $00
    db $fd                                        ; $6eeb: $fd
    inc bc                                        ; $6eec: $03
    jr z, @-$27                                   ; $6eed: $28 $d7

    ld bc, $f6ff                                  ; $6eef: $01 $ff $f6
    rst $38                                       ; $6ef2: $ff
    ld b, h                                       ; $6ef3: $44
    ld b, d                                       ; $6ef4: $42
    jr z, jr_0a5_6ef7                             ; $6ef5: $28 $00

jr_0a5_6ef7:
    xor c                                         ; $6ef7: $a9
    ld d, a                                       ; $6ef8: $57
    sbc [hl]                                      ; $6ef9: $9e
    sbc d                                         ; $6efa: $9a
    inc b                                         ; $6efb: $04
    ld d, a                                       ; $6efc: $57
    xor b                                         ; $6efd: $a8
    add b                                         ; $6efe: $80
    jr z, jr_0a5_6f0b                             ; $6eff: $28 $0a

    dec [hl]                                      ; $6f01: $35
    ld a, [de]                                    ; $6f02: $1a
    ld a, [c]                                     ; $6f03: $f2
    dec e                                         ; $6f04: $1d
    or b                                          ; $6f05: $b0
    ld e, a                                       ; $6f06: $5f
    xor $00                                       ; $6f07: $ee $00
    rst $38                                       ; $6f09: $ff
    ld d, h                                       ; $6f0a: $54

jr_0a5_6f0b:
    xor e                                         ; $6f0b: $ab
    xor e                                         ; $6f0c: $ab
    ld d, l                                       ; $6f0d: $55
    ld d, l                                       ; $6f0e: $55
    xor e                                         ; $6f0f: $ab
    ld b, a                                       ; $6f10: $47
    jr nz, @+$01                                  ; $6f11: $20 $ff

    ld e, d                                       ; $6f13: $5a
    sbc b                                         ; $6f14: $98
    nop                                           ; $6f15: $00
    dec b                                         ; $6f16: $05
    ld a, [$ff55]                                 ; $6f17: $fa $55 $ff
    ld b, c                                       ; $6f1a: $41
    add b                                         ; $6f1b: $80
    ld d, d                                       ; $6f1c: $52
    ld bc, $01f5                                  ; $6f1d: $01 $f5 $01
    ld [hl], a                                    ; $6f20: $77
    rst $38                                       ; $6f21: $ff
    ld [hl], l                                    ; $6f22: $75
    ld a, [hl+]                                   ; $6f23: $2a
    xor d                                         ; $6f24: $aa
    jr z, jr_0a5_6f9c                             ; $6f25: $28 $75

    ld h, b                                       ; $6f27: $60
    or $04                                        ; $6f28: $f6 $04
    ld a, d                                       ; $6f2a: $7a
    call c, $0503                                 ; $6f2b: $dc $03 $05
    ld a, [$00e0]                                 ; $6f2e: $fa $e0 $00
    rst $38                                       ; $6f31: $ff
    sbc a                                         ; $6f32: $9f
    ld [$5cab], sp                                ; $6f33: $08 $ab $5c
    ld e, b                                       ; $6f36: $58
    xor a                                         ; $6f37: $af
    db $db                                        ; $6f38: $db
    ld bc, $80ff                                  ; $6f39: $01 $ff $80
    nop                                           ; $6f3c: $00
    ld a, [$7f00]                                 ; $6f3d: $fa $00 $7f
    add b                                         ; $6f40: $80
    ret nc                                        ; $6f41: $d0

    ld [bc], a                                    ; $6f42: $02
    nop                                           ; $6f43: $00
    ld [bc], a                                    ; $6f44: $02
    xor d                                         ; $6f45: $aa
    inc bc                                        ; $6f46: $03
    call nc, $aa03                                ; $6f47: $d4 $03 $aa
    rst $38                                       ; $6f4a: $ff
    ld e, a                                       ; $6f4b: $5f
    nop                                           ; $6f4c: $00
    ldh [$c7], a                                  ; $6f4d: $e0 $c7
    ld a, b                                       ; $6f4f: $78
    nop                                           ; $6f50: $00
    rst $38                                       ; $6f51: $ff
    ld l, a                                       ; $6f52: $6f
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    add b                                         ; $6f55: $80
    ldh a, [rSB]                                  ; $6f56: $f0 $01
    ld a, [hl+]                                   ; $6f58: $2a
    rst $10                                       ; $6f59: $d7
    pop af                                        ; $6f5a: $f1
    rst $38                                       ; $6f5b: $ff
    ldh a, [$1f]                                  ; $6f5c: $f0 $1f
    ld hl, sp+$28                                 ; $6f5e: $f8 $28
    rra                                           ; $6f60: $1f
    dec b                                         ; $6f61: $05
    jr @+$03                                      ; $6f62: $18 $01

    cp $68                                        ; $6f64: $fe $68
    ld [bc], a                                    ; $6f66: $02
    xor e                                         ; $6f67: $ab
    ld d, l                                       ; $6f68: $55
    cp d                                          ; $6f69: $ba
    nop                                           ; $6f6a: $00
    rst $38                                       ; $6f6b: $ff
    ld d, l                                       ; $6f6c: $55
    ld [$f50a], a                                 ; $6f6d: $ea $0a $f5
    dec b                                         ; $6f70: $05
    ld a, [$2040]                                 ; $6f71: $fa $40 $20
    rst $38                                       ; $6f74: $ff
    ld [$0036], a                                 ; $6f75: $ea $36 $00
    dec d                                         ; $6f78: $15
    ld [$ff99], a                                 ; $6f79: $ea $99 $ff
    pop af                                        ; $6f7c: $f1
    nop                                           ; $6f7d: $00
    ld c, $ac                                     ; $6f7e: $0e $ac
    ld d, a                                       ; $6f80: $57
    ld d, b                                       ; $6f81: $50
    xor a                                         ; $6f82: $af
    add l                                         ; $6f83: $85
    ld a, a                                       ; $6f84: $7f
    dec hl                                        ; $6f85: $2b
    add d                                         ; $6f86: $82
    ld c, b                                       ; $6f87: $48
    dec b                                         ; $6f88: $05
    and b                                         ; $6f89: $a0
    rst $38                                       ; $6f8a: $ff
    ei                                            ; $6f8b: $fb
    rst $38                                       ; $6f8c: $ff
    ld d, h                                       ; $6f8d: $54
    inc c                                         ; $6f8e: $0c
    dec b                                         ; $6f8f: $05
    ld a, [hl+]                                   ; $6f90: $2a
    inc b                                         ; $6f91: $04
    push de                                       ; $6f92: $d5
    rst $08                                       ; $6f93: $cf
    rst $38                                       ; $6f94: $ff
    jp c, Jump_0a5_56fc                           ; $6f95: $da $fc $56

    ld [$ff76], sp                                ; $6f98: $08 $76 $ff
    ld b, c                                       ; $6f9b: $41

jr_0a5_6f9c:
    ld a, a                                       ; $6f9c: $7f
    ret z                                         ; $6f9d: $c8

    nop                                           ; $6f9e: $00
    or c                                          ; $6f9f: $b1
    ld e, [hl]                                    ; $6fa0: $5e
    sbc [hl]                                      ; $6fa1: $9e
    rst $38                                       ; $6fa2: $ff
    pop de                                        ; $6fa3: $d1
    inc h                                         ; $6fa4: $24
    dec b                                         ; $6fa5: $05
    nop                                           ; $6fa6: $00
    dec hl                                        ; $6fa7: $2b
    call nc, $ffeb                                ; $6fa8: $d4 $eb $ff
    jr nc, jr_0a5_6fcc                            ; $6fab: $30 $1f

    nop                                           ; $6fad: $00
    rra                                           ; $6fae: $1f
    inc b                                         ; $6faf: $04
    xor d                                         ; $6fb0: $aa
    rra                                           ; $6fb1: $1f
    sub e                                         ; $6fb2: $93
    rst $38                                       ; $6fb3: $ff
    dec a                                         ; $6fb4: $3d
    ld e, b                                       ; $6fb5: $58
    ld de, $ffea                                  ; $6fb6: $11 $ea $ff
    nop                                           ; $6fb9: $00
    ld a, l                                       ; $6fba: $7d
    add e                                         ; $6fbb: $83
    ld [$81f7], sp                                ; $6fbc: $08 $f7 $81
    rst $38                                       ; $6fbf: $ff
    push hl                                       ; $6fc0: $e5
    rst $38                                       ; $6fc1: $ff
    nop                                           ; $6fc2: $00
    ld d, l                                       ; $6fc3: $55
    ld d, l                                       ; $6fc4: $55
    add b                                         ; $6fc5: $80
    rst $38                                       ; $6fc6: $ff
    cp e                                          ; $6fc7: $bb
    call z, $ddbb                                 ; $6fc8: $cc $bb $dd
    add b                                         ; $6fcb: $80

jr_0a5_6fcc:
    ld [bc], a                                    ; $6fcc: $02
    jr z, jr_0a5_7024                             ; $6fcd: $28 $55

    ld d, l                                       ; $6fcf: $55
    ld bc, $ddff                                  ; $6fd0: $01 $ff $dd
    ld h, a                                       ; $6fd3: $67
    db $dd                                        ; $6fd4: $dd
    ld h, l                                       ; $6fd5: $65
    rst $28                                       ; $6fd6: $ef
    ld [bc], a                                    ; $6fd7: $02
    jr z, jr_0a5_6ff4                             ; $6fd8: $28 $1a

    jr c, @-$43                                   ; $6fda: $38 $bb

    db $dd                                        ; $6fdc: $dd
    ld h, b                                       ; $6fdd: $60
    inc bc                                        ; $6fde: $03
    add b                                         ; $6fdf: $80
    ld a, [de]                                    ; $6fe0: $1a
    jr c, jr_0a5_6ff6                             ; $6fe1: $38 $13

    db $dd                                        ; $6fe3: $dd
    rst $28                                       ; $6fe4: $ef
    ld bc, $02b6                                  ; $6fe5: $01 $b6 $02
    add b                                         ; $6fe8: $80
    ld a, a                                       ; $6fe9: $7f
    jr nz, jr_0a5_7045                            ; $6fea: $20 $59

    jp nc, $8005                                  ; $6fec: $d2 $05 $80

    jr nz, jr_0a5_7042                            ; $6fef: $20 $51

    db $f4                                        ; $6ff1: $f4
    rst $38                                       ; $6ff2: $ff
    or [hl]                                       ; $6ff3: $b6

jr_0a5_6ff4:
    add sp, -$41                                  ; $6ff4: $e8 $bf

jr_0a5_6ff6:
    add sp, -$4a                                  ; $6ff6: $e8 $b6
    nop                                           ; $6ff8: $00
    add sp, -$4c                                  ; $6ff9: $e8 $b4
    rst $38                                       ; $6ffb: $ff
    cp [hl]                                       ; $6ffc: $be
    ldh [$bf], a                                  ; $6ffd: $e0 $bf
    ldh [$be], a                                  ; $6fff: $e0 $be
    nop                                           ; $7001: $00
    ldh [$af], a                                  ; $7002: $e0 $af
    ldh a, [$bd]                                  ; $7004: $f0 $bd
    db $e3                                        ; $7006: $e3
    cp e                                          ; $7007: $bb
    and $bc                                       ; $7008: $e6 $bc
    nop                                           ; $700a: $00
    and $b7                                       ; $700b: $e6 $b7
    db $fd                                        ; $700d: $fd
    cp c                                          ; $700e: $b9
    db $ed                                        ; $700f: $ed
    cp e                                          ; $7010: $bb

Jump_0a5_7011:
    db $ed                                        ; $7011: $ed
    cp l                                          ; $7012: $bd
    add b                                         ; $7013: $80
    ld d, d                                       ; $7014: $52
    ld bc, $ffeb                                  ; $7015: $01 $eb $ff
    push af                                       ; $7018: $f5
    cp $ea                                        ; $7019: $fe $ea
    rst $38                                       ; $701b: $ff
    pop af                                        ; $701c: $f1
    jr nz, @+$01                                  ; $701d: $20 $ff

    jp hl                                         ; $701f: $e9


    inc b                                         ; $7020: $04
    nop                                           ; $7021: $00
    ldh [rIE], a                                  ; $7022: $e0 $ff

jr_0a5_7024:
    rst $30                                       ; $7024: $f7
    xor $ef                                       ; $7025: $ee $ef
    nop                                           ; $7027: $00
    rst $30                                       ; $7028: $f7
    ld a, [hl]                                    ; $7029: $7e
    nop                                           ; $702a: $00
    add c                                         ; $702b: $81
    nop                                           ; $702c: $00
    rst $20                                       ; $702d: $e7
    add c                                         ; $702e: $81
    ld b, d                                       ; $702f: $42
    nop                                           ; $7030: $00
    jp $00c3                                      ; $7031: $c3 $c3 $00


    cp l                                          ; $7034: $bd
    jp $f869                                      ; $7035: $c3 $69 $f8


Call_0a5_7038:
    call $f800                                    ; $7038: $cd $00 $f8
    xor c                                         ; $703b: $a9
    ld a, b                                       ; $703c: $78
    ld c, l                                       ; $703d: $4d
    ld hl, sp-$75                                 ; $703e: $f8 $8b
    rst $38                                       ; $7040: $ff
    adc b                                         ; $7041: $88

jr_0a5_7042:
    adc c                                         ; $7042: $89
    ld [bc], a                                    ; $7043: $02
    nop                                           ; $7044: $00

jr_0a5_7045:
    rrca                                          ; $7045: $0f
    rst $30                                       ; $7046: $f7
    ldh a, [rNR50]                                ; $7047: $f0 $24

jr_0a5_7049:
    nop                                           ; $7049: $00
    pop af                                        ; $704a: $f1
    cp $04                                        ; $704b: $fe $04
    jr jr_0a5_7092                                ; $704d: $18 $43

    pop hl                                        ; $704f: $e1
    ld [$8000], sp                                ; $7050: $08 $00 $80
    ld a, a                                       ; $7053: $7f
    ld hl, sp+$07                                 ; $7054: $f8 $07
    adc e                                         ; $7056: $8b
    inc d                                         ; $7057: $14
    inc b                                         ; $7058: $04
    jr nz, jr_0a5_7067                            ; $7059: $20 $0c

    rrca                                          ; $705b: $0f
    ldh a, [$1f]                                  ; $705c: $f0 $1f
    ldh [rNR10], a                                ; $705e: $e0 $10

jr_0a5_7060:
    ld c, b                                       ; $7060: $48
    inc h                                         ; $7061: $24
    ld [$fee1], sp                                ; $7062: $08 $e1 $fe
    jr nc, jr_0a5_7049                            ; $7065: $30 $e2

jr_0a5_7067:
    db $fd                                        ; $7067: $fd
    inc b                                         ; $7068: $04
    jr z, jr_0a5_709f                             ; $7069: $28 $34

    ld c, $ea                                     ; $706b: $0e $ea
    ld d, l                                       ; $706d: $55
    db $fd                                        ; $706e: $fd
    ld a, [hl+]                                   ; $706f: $2a
    ld bc, $00ff                                  ; $7070: $01 $ff $00
    rst $18                                       ; $7073: $df
    jr nz, jr_0a5_7060                            ; $7074: $20 $ea

    dec d                                         ; $7076: $15
    push af                                       ; $7077: $f5
    ld l, l                                       ; $7078: $6d
    inc bc                                        ; $7079: $03
    and b                                         ; $707a: $a0
    ld c, d                                       ; $707b: $4a
    ld a, [bc]                                    ; $707c: $0a
    db $fd                                        ; $707d: $fd
    ld [hl], l                                    ; $707e: $75
    inc bc                                        ; $707f: $03
    rst $30                                       ; $7080: $f7
    ld [$14eb], sp                                ; $7081: $08 $eb $14
    ld e, a                                       ; $7084: $5f
    nop                                           ; $7085: $00
    xor d                                         ; $7086: $aa
    and l                                         ; $7087: $a5
    ld a, [$f44b]                                 ; $7088: $fa $4b $f4
    and l                                         ; $708b: $a5
    ld a, [$c87d]                                 ; $708c: $fa $7d $c8
    ld e, e                                       ; $708f: $5b
    inc b                                         ; $7090: $04
    add b                                         ; $7091: $80

jr_0a5_7092:
    dec de                                        ; $7092: $1b
    ld [$ea15], a                                 ; $7093: $ea $15 $ea
    add hl, bc                                    ; $7096: $09
    push de                                       ; $7097: $d5
    rst $38                                       ; $7098: $ff
    ld b, b                                       ; $7099: $40
    add c                                         ; $709a: $81
    db $10                                        ; $709b: $10
    inc h                                         ; $709c: $24
    xor d                                         ; $709d: $aa
    ld d, l                                       ; $709e: $55

jr_0a5_709f:
    push de                                       ; $709f: $d5
    ld a, [hl+]                                   ; $70a0: $2a
    ld [$1015], a                                 ; $70a1: $ea $15 $10
    inc a                                         ; $70a4: $3c
    adc b                                         ; $70a5: $88
    and e                                         ; $70a6: $a3
    inc d                                         ; $70a7: $14
    ld b, l                                       ; $70a8: $45
    ld a, a                                       ; $70a9: $7f
    xor b                                         ; $70aa: $a8
    cp a                                          ; $70ab: $bf
    inc b                                         ; $70ac: $04
    nop                                           ; $70ad: $00
    xor e                                         ; $70ae: $ab
    ld d, l                                       ; $70af: $55
    ld bc, $aaf7                                  ; $70b0: $01 $f7 $aa
    ei                                            ; $70b3: $fb
    inc b                                         ; $70b4: $04
    db $fd                                        ; $70b5: $fd
    ld [bc], a                                    ; $70b6: $02
    cp $dd                                        ; $70b7: $fe $dd
    ld b, $60                                     ; $70b9: $06 $60
    cp a                                          ; $70bb: $bf
    db $10                                        ; $70bc: $10
    inc b                                         ; $70bd: $04
    ld e, b                                       ; $70be: $58
    ld [$fba4], sp                                ; $70bf: $08 $a4 $fb
    ld c, d                                       ; $70c2: $4a
    push af                                       ; $70c3: $f5
    and l                                         ; $70c4: $a5
    ld b, d                                       ; $70c5: $42
    ei                                            ; $70c6: $fb
    add b                                         ; $70c7: $80
    dec sp                                        ; $70c8: $3b
    dec e                                         ; $70c9: $1d
    ldh [rSC], a                                  ; $70ca: $e0 $02
    db $fd                                        ; $70cc: $fd
    ldh a, [$0b]                                  ; $70cd: $f0 $0b
    ld d, e                                       ; $70cf: $53
    add l                                         ; $70d0: $85
    ldh a, [rNR44]                                ; $70d1: $f0 $23
    ld a, $c0                                     ; $70d3: $3e $c0
    ld c, a                                       ; $70d5: $4f
    ldh a, [$f0]                                  ; $70d6: $f0 $f0
    dec bc                                        ; $70d8: $0b
    db $ed                                        ; $70d9: $ed
    ldh a, [rNR44]                                ; $70da: $f0 $23
    nop                                           ; $70dc: $00
    rst $38                                       ; $70dd: $ff
    nop                                           ; $70de: $00
    db $fd                                        ; $70df: $fd
    ld [bc], a                                    ; $70e0: $02
    xor d                                         ; $70e1: $aa
    ld d, l                                       ; $70e2: $55
    ld d, a                                       ; $70e3: $57
    xor d                                         ; $70e4: $aa
    inc bc                                        ; $70e5: $03
    rst $28                                       ; $70e6: $ef
    db $10                                        ; $70e7: $10
    rst $38                                       ; $70e8: $ff
    nop                                           ; $70e9: $00
    ld a, [$9815]                                 ; $70ea: $fa $15 $98
    ld [$0058], sp                                ; $70ed: $08 $58 $00
    ld c, c                                       ; $70f0: $49
    ld d, h                                       ; $70f1: $54
    dec d                                         ; $70f2: $15
    inc c                                         ; $70f3: $0c
    db $fd                                        ; $70f4: $fd
    ld a, [bc]                                    ; $70f5: $0a
    or $06                                        ; $70f6: $f6 $06
    xor d                                         ; $70f8: $aa
    and l                                         ; $70f9: $a5
    ld d, b                                       ; $70fa: $50
    nop                                           ; $70fb: $00
    jr c, @-$5a                                   ; $70fc: $38 $a4

    ei                                            ; $70fe: $fb
    sub b                                         ; $70ff: $90
    inc a                                         ; $7100: $3c
    ld [$f00b], sp                                ; $7101: $08 $0b $f0
    ld c, e                                       ; $7104: $4b
    db $f4                                        ; $7105: $f4
    rrca                                          ; $7106: $0f
    xor [hl]                                      ; $7107: $ae
    ld c, c                                       ; $7108: $49
    ld d, a                                       ; $7109: $57
    ldh a, [rWX]                                  ; $710a: $f0 $4b
    and b                                         ; $710c: $a0
    ld a, a                                       ; $710d: $7f
    ldh [$5a], a                                  ; $710e: $e0 $5a
    ld de, $e0fe                                  ; $7110: $11 $fe $e0
    ld e, d                                       ; $7113: $5a
    ld [$0479], a                                 ; $7114: $ea $79 $04
    ld b, $07                                     ; $7117: $06 $07

jr_0a5_7119:
    add b                                         ; $7119: $80
    dec e                                         ; $711a: $1d
    inc bc                                        ; $711b: $03
    xor h                                         ; $711c: $ac
    rlca                                          ; $711d: $07
    ld [$10c8], a                                 ; $711e: $ea $c8 $10
    rst $18                                       ; $7121: $df
    sub h                                         ; $7122: $94
    add l                                         ; $7123: $85
    inc b                                         ; $7124: $04
    ld d, a                                       ; $7125: $57
    xor b                                         ; $7126: $a8
    ld a, b                                       ; $7127: $78
    nop                                           ; $7128: $00
    add b                                         ; $7129: $80
    and a                                         ; $712a: $a7
    rlca                                          ; $712b: $07
    jr nz, jr_0a5_7119                            ; $712c: $20 $eb

    ld [$ff14], sp                                ; $712e: $08 $14 $ff
    xor d                                         ; $7131: $aa
    ei                                            ; $7132: $fb
    xor [hl]                                      ; $7133: $ae
    ld [bc], a                                    ; $7134: $02
    xor a                                         ; $7135: $af
    ld d, b                                       ; $7136: $50
    push af                                       ; $7137: $f5
    nop                                           ; $7138: $00
    xor d                                         ; $7139: $aa
    cp $01                                        ; $713a: $fe $01
    db $fc                                        ; $713c: $fc
    ld [bc], a                                    ; $713d: $02
    ld sp, hl                                     ; $713e: $f9
    inc b                                         ; $713f: $04
    ld a, [c]                                     ; $7140: $f2
    nop                                           ; $7141: $00
    add hl, bc                                    ; $7142: $09
    push af                                       ; $7143: $f5
    dec bc                                        ; $7144: $0b
    di                                            ; $7145: $f3
    dec bc                                        ; $7146: $0b
    ei                                            ; $7147: $fb
    dec c                                         ; $7148: $0d
    db $fc                                        ; $7149: $fc
    ld h, h                                       ; $714a: $64
    rrca                                          ; $714b: $0f
    or $02                                        ; $714c: $f6 $02
    adc [hl]                                      ; $714e: $8e
    rrca                                          ; $714f: $0f
    xor d                                         ; $7150: $aa
    cp $84                                        ; $7151: $fe $84
    ld hl, $f807                                  ; $7153: $21 $07 $f8
    nop                                           ; $7156: $00
    ld e, e                                       ; $7157: $5b
    inc b                                         ; $7158: $04
    ld bc, $acfa                                  ; $7159: $01 $fa $ac
    ld sp, hl                                     ; $715c: $f9
    ld e, b                                       ; $715d: $58
    db $fd                                        ; $715e: $fd
    ld [bc], a                                    ; $715f: $02
    xor b                                         ; $7160: $a8
    db $fd                                        ; $7161: $fd
    pop de                                        ; $7162: $d1
    ei                                            ; $7163: $fb
    db $eb                                        ; $7164: $eb
    push af                                       ; $7165: $f5
    jr c, jr_0a5_7184                             ; $7166: $38 $1c

    adc b                                         ; $7168: $88
    ld d, b                                       ; $7169: $50
    ld [hl], a                                    ; $716a: $77
    jr z, @+$1e                                   ; $716b: $28 $1c

    ld d, h                                       ; $716d: $54
    ld [hl], b                                    ; $716e: $70
    inc d                                         ; $716f: $14
    and e                                         ; $7170: $a3
    ld bc, $718e                                  ; $7171: $01 $8e $71
    sub c                                         ; $7174: $91
    inc b                                         ; $7175: $04
    inc e                                         ; $7176: $1c
    ld d, [hl]                                    ; $7177: $56
    ld bc, $0221                                  ; $7178: $01 $21 $02
    jp c, Jump_0a5_74ff                           ; $717b: $da $ff $74

    inc b                                         ; $717e: $04
    nop                                           ; $717f: $00
    and h                                         ; $7180: $a4
    ld [$8120], sp                                ; $7181: $08 $20 $81

jr_0a5_7184:
    inc l                                         ; $7184: $2c
    ld [hl], $c0                                  ; $7185: $36 $c0
    cp a                                          ; $7187: $bf
    ld a, [$3a0f]                                 ; $7188: $fa $0f $3a
    rra                                           ; $718b: $1f
    ld h, b                                       ; $718c: $60
    ld hl, sp+$0a                                 ; $718d: $f8 $0a
    dec b                                         ; $718f: $05
    add b                                         ; $7190: $80
    add hl, sp                                    ; $7191: $39
    ld e, l                                       ; $7192: $5d
    rst $38                                       ; $7193: $ff
    ld l, d                                       ; $7194: $6a
    dec [hl]                                      ; $7195: $35
    ld b, b                                       ; $7196: $40
    ld h, h                                       ; $7197: $64
    ccf                                           ; $7198: $3f
    sub b                                         ; $7199: $90
    dec a                                         ; $719a: $3d
    ld b, b                                       ; $719b: $40
    ld e, h                                       ; $719c: $5c
    db $db                                        ; $719d: $db
    ld a, a                                       ; $719e: $7f
    ld b, b                                       ; $719f: $40
    ld e, h                                       ; $71a0: $5c
    rst $18                                       ; $71a1: $df
    rst $38                                       ; $71a2: $ff
    ld l, b                                       ; $71a3: $68
    ld a, a                                       ; $71a4: $7f
    jp nz, $4000                                  ; $71a5: $c2 $00 $40

    ld bc, $afab                                  ; $71a8: $01 $ab $af
    ld c, $ae                                     ; $71ab: $0e $ae
    ld d, c                                       ; $71ad: $51
    rst $38                                       ; $71ae: $ff
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    cp l                                          ; $71b1: $bd
    ld b, d                                       ; $71b2: $42
    cp h                                          ; $71b3: $bc
    ld b, e                                       ; $71b4: $43
    ld d, [hl]                                    ; $71b5: $56
    xor e                                         ; $71b6: $ab
    ld [hl], l                                    ; $71b7: $75
    nop                                           ; $71b8: $00
    rst $38                                       ; $71b9: $ff
    cp [hl]                                       ; $71ba: $be
    ld b, b                                       ; $71bb: $40
    rst $18                                       ; $71bc: $df
    and b                                         ; $71bd: $a0
    xor a                                         ; $71be: $af
    ld d, b                                       ; $71bf: $50
    rst $38                                       ; $71c0: $ff
    jr nz, jr_0a5_71c5                            ; $71c1: $20 $02

    ld [de], a                                    ; $71c3: $12
    ld e, b                                       ; $71c4: $58

jr_0a5_71c5:
    ld [bc], a                                    ; $71c5: $02
    ld e, b                                       ; $71c6: $58
    and a                                         ; $71c7: $a7
    or l                                          ; $71c8: $b5
    jp z, Jump_000_007e                           ; $71c9: $ca $7e $00

    add c                                         ; $71cc: $81
    cp l                                          ; $71cd: $bd
    jp nz, $807f                                  ; $71ce: $c2 $7f $80

    cp a                                          ; $71d1: $bf
    ret nz                                        ; $71d2: $c0

    add h                                         ; $71d3: $84
    nop                                           ; $71d4: $00
    rst $38                                       ; $71d5: $ff
    ld [$a5ff], sp                                ; $71d6: $08 $ff $a5
    ld e, d                                       ; $71d9: $5a
    ld e, e                                       ; $71da: $5b
    and h                                         ; $71db: $a4
    rst $38                                       ; $71dc: $ff
    ld bc, $fe00                                  ; $71dd: $01 $00 $fe
    ld bc, $02fd                                  ; $71e0: $01 $fd $02
    db $fc                                        ; $71e3: $fc
    ld [bc], a                                    ; $71e4: $02

jr_0a5_71e5:
    inc d                                         ; $71e5: $14
    ld [$04d0], sp                                ; $71e6: $08 $d0 $04
    ld c, b                                       ; $71e9: $48
    inc d                                         ; $71ea: $14
    ld [$02fd], sp                                ; $71eb: $08 $fd $02
    ld b, b                                       ; $71ee: $40
    add hl, bc                                    ; $71ef: $09
    rst $38                                       ; $71f0: $ff
    and h                                         ; $71f1: $a4
    ld e, a                                       ; $71f2: $5f
    nop                                           ; $71f3: $00
    ld d, c                                       ; $71f4: $51
    xor [hl]                                      ; $71f5: $ae
    ld [$f715], a                                 ; $71f6: $ea $15 $f7
    ld [$02fd], sp                                ; $71f9: $08 $fd $02
    and b                                         ; $71fc: $a0
    db $eb                                        ; $71fd: $eb
    ld c, $14                                     ; $71fe: $0e $14
    ld b, b                                       ; $7200: $40
    nop                                           ; $7201: $00
    ld d, b                                       ; $7202: $50
    cp a                                          ; $7203: $bf
    jr nz, jr_0a5_71e5                            ; $7204: $20 $df

    ld d, l                                       ; $7206: $55
    nop                                           ; $7207: $00
    cp d                                          ; $7208: $ba
    and e                                         ; $7209: $a3
    ld e, h                                       ; $720a: $5c
    ld d, [hl]                                    ; $720b: $56
    cp c                                          ; $720c: $b9
    db $eb                                        ; $720d: $eb
    inc d                                         ; $720e: $14
    ld hl, $ff00                                  ; $720f: $21 $00 $ff
    adc b                                         ; $7212: $88
    rst $30                                       ; $7213: $f7
    ld e, d                                       ; $7214: $5a
    and l                                         ; $7215: $a5

jr_0a5_7216:
    or l                                          ; $7216: $b5
    ld c, d                                       ; $7217: $4a
    rst $28                                       ; $7218: $ef
    ld a, h                                       ; $7219: $7c
    db $10                                        ; $721a: $10
    ld d, b                                       ; $721b: $50
    jr jr_0a5_724e                                ; $721c: $18 $30

    jr c, @+$43                                   ; $721e: $38 $41

    rlca                                          ; $7220: $07
    dec de                                        ; $7221: $1b
    rrca                                          ; $7222: $0f
    inc b                                         ; $7223: $04
    ld h, b                                       ; $7224: $60
    ld [hl], a                                    ; $7225: $77
    sbc b                                         ; $7226: $98
    ld [$12ed], sp                                ; $7227: $08 $ed $12
    rst $20                                       ; $722a: $e7
    jr jr_0a5_7297                                ; $722b: $18 $6a

    ld bc, $ef0a                                  ; $722d: $01 $0a $ef
    db $10                                        ; $7230: $10
    add hl, hl                                    ; $7231: $29
    rst $10                                       ; $7232: $d7
    jr z, jr_0a5_726b                             ; $7233: $28 $36

    nop                                           ; $7235: $00
    add c                                         ; $7236: $81
    ld b, c                                       ; $7237: $41
    rrca                                          ; $7238: $0f
    db $fd                                        ; $7239: $fd
    add d                                         ; $723a: $82
    inc l                                         ; $723b: $2c
    jr nc, jr_0a5_7216                            ; $723c: $30 $d8

    xor b                                         ; $723e: $a8
    ld [bc], a                                    ; $723f: $02
    add h                                         ; $7240: $84
    ld a, [bc]                                    ; $7241: $0a
    rst $38                                       ; $7242: $ff
    sbc [hl]                                      ; $7243: $9e
    nop                                           ; $7244: $00
    ld [hl], b                                    ; $7245: $70
    ld [bc], a                                    ; $7246: $02
    ld a, [hl+]                                   ; $7247: $2a
    ld bc, $00fe                                  ; $7248: $01 $fe $00
    add c                                         ; $724b: $81
    nop                                           ; $724c: $00
    ld a, l                                       ; $724d: $7d

jr_0a5_724e:
    ld l, b                                       ; $724e: $68
    ld sp, hl                                     ; $724f: $f9
    inc [hl]                                      ; $7250: $34
    ld sp, hl                                     ; $7251: $f9
    db $fc                                        ; $7252: $fc
    nop                                           ; $7253: $00
    ld sp, hl                                     ; $7254: $f9
    or h                                          ; $7255: $b4
    add hl, sp                                    ; $7256: $39
    ld b, h                                       ; $7257: $44
    add hl, bc                                    ; $7258: $09
    inc h                                         ; $7259: $24
    or $0f                                        ; $725a: $f6 $0f
    nop                                           ; $725c: $00
    cp $07                                        ; $725d: $fe $07
    db $fd                                        ; $725f: $fd
    ld b, $82                                     ; $7260: $06 $82
    ld a, h                                       ; $7262: $7c
    add c                                         ; $7263: $81
    add b                                         ; $7264: $80
    ld b, $29                                     ; $7265: $06 $29
    sub a                                         ; $7267: $97

jr_0a5_7268:
    sbc l                                         ; $7268: $9d
    and b                                         ; $7269: $a0
    ld a, [hl+]                                   ; $726a: $2a

jr_0a5_726b:
    ret nz                                        ; $726b: $c0

    ld de, $02c4                                  ; $726c: $11 $c4 $02
    ld a, [hl+]                                   ; $726f: $2a
    ld h, b                                       ; $7270: $60
    ld a, [$07b7]                                 ; $7271: $fa $b7 $07
    ret nz                                        ; $7274: $c0

    ld bc, $212a                                  ; $7275: $01 $2a $21
    inc b                                         ; $7278: $04
    ld bc, $0024                                  ; $7279: $01 $24 $00

jr_0a5_727c:
    ld bc, $c124                                  ; $727c: $01 $24 $c1
    db $e4                                        ; $727f: $e4
    dec b                                         ; $7280: $05
    ld hl, sp-$7f                                 ; $7281: $f8 $81
    nop                                           ; $7283: $00
    ld b, b                                       ; $7284: $40
    ld bc, $0368                                  ; $7285: $01 $68 $03
    sub b                                         ; $7288: $90
    and b                                         ; $7289: $a0
    ld [hl+], a                                   ; $728a: $22
    add [hl]                                      ; $728b: $86
    sub h                                         ; $728c: $94
    and [hl]                                      ; $728d: $a6
    nop                                           ; $728e: $00

jr_0a5_728f:
    jr nz, @-$7e                                  ; $728f: $20 $80

    sub b                                         ; $7291: $90
    and b                                         ; $7292: $a0
    jr z, @-$67                                   ; $7293: $28 $97

    add e                                         ; $7295: $83
    add b                                         ; $7296: $80

jr_0a5_7297:
    ld b, $3e                                     ; $7297: $06 $3e
    pop bc                                        ; $7299: $c1
    cp d                                          ; $729a: $ba
    dec d                                         ; $729b: $15
    db $fd                                        ; $729c: $fd
    ld [hl], d                                    ; $729d: $72
    dec b                                         ; $729e: $05
    db $e4                                        ; $729f: $e4
    ld a, [bc]                                    ; $72a0: $0a
    push af                                       ; $72a1: $f5
    add b                                         ; $72a2: $80
    add sp, $02                                   ; $72a3: $e8 $02
    rst $30                                       ; $72a5: $f7
    ld a, [hl+]                                   ; $72a6: $2a
    and l                                         ; $72a7: $a5
    ld e, b                                       ; $72a8: $58
    ld bc, $7904                                  ; $72a9: $01 $04 $79
    ld b, b                                       ; $72ac: $40
    ld l, h                                       ; $72ad: $6c
    ld h, b                                       ; $72ae: $60
    jr c, @-$3c                                   ; $72af: $38 $c2

    add c                                         ; $72b1: $81
    jp $c280                                      ; $72b2: $c3 $80 $c2


    add b                                         ; $72b5: $80
    jr z, @-$02                                   ; $72b6: $28 $fc

    add b                                         ; $72b8: $80
    ld h, b                                       ; $72b9: $60
    jr z, @-$43                                   ; $72ba: $28 $bb

    ld d, b                                       ; $72bc: $50
    ld e, e                                       ; $72bd: $5b
    ld a, [hl+]                                   ; $72be: $2a
    db $fc                                        ; $72bf: $fc
    inc bc                                        ; $72c0: $03
    nop                                           ; $72c1: $00
    ld hl, sp+$04                                 ; $72c2: $f8 $04
    di                                            ; $72c4: $f3
    add hl, bc                                    ; $72c5: $09
    rst $20                                       ; $72c6: $e7
    ld [de], a                                    ; $72c7: $12
    ld [c], a                                     ; $72c8: $e2
    inc d                                         ; $72c9: $14
    nop                                           ; $72ca: $00
    call z, $c424                                 ; $72cb: $cc $24 $c4
    jr z, jr_0a5_7268                             ; $72ce: $28 $98

    ld c, b                                       ; $72d0: $48
    adc b                                         ; $72d1: $88
    ld d, b                                       ; $72d2: $50
    nop                                           ; $72d3: $00
    sbc b                                         ; $72d4: $98
    ld d, b                                       ; $72d5: $50
    jr nc, jr_0a5_7268                            ; $72d6: $30 $90

    db $10                                        ; $72d8: $10
    and b                                         ; $72d9: $a0
    jr nc, jr_0a5_727c                            ; $72da: $30 $a0

    ld [bc], a                                    ; $72dc: $02
    jr z, jr_0a5_728f                             ; $72dd: $28 $b0

    or e                                          ; $72df: $b3
    xor h                                         ; $72e0: $ac
    ldh a, [$a0]                                  ; $72e1: $f0 $a0
    ld h, h                                       ; $72e3: $64
    add hl, bc                                    ; $72e4: $09
    ld a, e                                       ; $72e5: $7b
    nop                                           ; $72e6: $00
    add h                                         ; $72e7: $84
    or a                                          ; $72e8: $b7
    ret z                                         ; $72e9: $c8

    ld l, d                                       ; $72ea: $6a
    sub l                                         ; $72eb: $95
    sub c                                         ; $72ec: $91
    xor $52                                       ; $72ed: $ee $52
    nop                                           ; $72ef: $00
    db $fd                                        ; $72f0: $fd
    adc b                                         ; $72f1: $88
    rst $38                                       ; $72f2: $ff
    jp z, $6592                                   ; $72f3: $ca $92 $65

    ret                                           ; $72f6: $c9


    db $d3                                        ; $72f7: $d3
    nop                                           ; $72f8: $00
    ld h, a                                       ; $72f9: $67
    xor b                                         ; $72fa: $a8
    ld [hl], b                                    ; $72fb: $70
    db $db                                        ; $72fc: $db
    inc a                                         ; $72fd: $3c
    ld h, a                                       ; $72fe: $67
    sbc a                                         ; $72ff: $9f
    ld [bc], a                                    ; $7300: $02
    inc b                                         ; $7301: $04
    rst $38                                       ; $7302: $ff
    ld d, e                                       ; $7303: $53
    cp $c0                                        ; $7304: $fe $c0
    ld a, a                                       ; $7306: $7f
    ld h, b                                       ; $7307: $60
    ld e, a                                       ; $7308: $5f
    nop                                           ; $7309: $00
    rst $38                                       ; $730a: $ff
    add b                                         ; $730b: $80
    ld h, b                                       ; $730c: $60
    ld e, a                                       ; $730d: $5f
    cp a                                          ; $730e: $bf
    ret nz                                        ; $730f: $c0

    rra                                           ; $7310: $1f
    jr nz, @-$2f                                  ; $7311: $20 $cf

    sub b                                         ; $7313: $90
    rst $20                                       ; $7314: $e7
    nop                                           ; $7315: $00
    ld c, b                                       ; $7316: $48
    ld b, a                                       ; $7317: $47
    jr z, @+$35                                   ; $7318: $28 $33

    inc h                                         ; $731a: $24
    inc hl                                        ; $731b: $23
    inc d                                         ; $731c: $14
    add hl, de                                    ; $731d: $19
    ld bc, $f712                                  ; $731e: $01 $12 $f7
    ld [$12ed], sp                                ; $7321: $08 $ed $12
    rst $38                                       ; $7324: $ff
    nop                                           ; $7325: $00
    ld l, $0b                                     ; $7326: $2e $0b
    ret z                                         ; $7328: $c8

    ld b, $18                                     ; $7329: $06 $18
    jr nz, @+$2a                                  ; $732b: $20 $28

    ld b, [hl]                                    ; $732d: $46
    add hl, hl                                    ; $732e: $29
    jr nz, @+$1a                                  ; $732f: $20 $18

    ld de, $190a                                  ; $7331: $11 $0a $19
    nop                                           ; $7334: $00
    ld a, [bc]                                    ; $7335: $0a
    inc c                                         ; $7336: $0c
    add hl, bc                                    ; $7337: $09
    ld [$0c05], sp                                ; $7338: $08 $05 $0c
    dec b                                         ; $733b: $05
    inc d                                         ; $733c: $14
    inc b                                         ; $733d: $04
    dec c                                         ; $733e: $0d
    call Call_000_0b35                            ; $733f: $cd $35 $0b
    dec b                                         ; $7342: $05
    inc l                                         ; $7343: $2c

jr_0a5_7344:
    ld c, h                                       ; $7344: $4c
    ld a, a                                       ; $7345: $7f
    add b                                         ; $7346: $80
    ld [$807f], sp                                ; $7347: $08 $7f $80
    db $10                                        ; $734a: $10
    dec bc                                        ; $734b: $0b
    jr nz, jr_0a5_73a6                            ; $734c: $20 $58

    sub e                                         ; $734e: $93
    adc c                                         ; $734f: $89
    ld h, [hl]                                    ; $7350: $66
    nop                                           ; $7351: $00
    ld d, e                                       ; $7352: $53
    jp z, $14e7                                   ; $7353: $ca $e7 $14

    rrca                                          ; $7356: $0f
    ret c                                         ; $7357: $d8

    ccf                                           ; $7358: $3f
    ldh [$08], a                                  ; $7359: $e0 $08
    rst $38                                       ; $735b: $ff
    add c                                         ; $735c: $81
    cp $a0                                        ; $735d: $fe $a0
    ld b, b                                       ; $735f: $40
    ld [bc], a                                    ; $7360: $02
    ld a, a                                       ; $7361: $7f
    add b                                         ; $7362: $80
    scf                                           ; $7363: $37
    nop                                           ; $7364: $00
    ret z                                         ; $7365: $c8

    ld [$5015], a                                 ; $7366: $ea $15 $50
    xor a                                         ; $7369: $af
    adc b                                         ; $736a: $88
    ld a, a                                       ; $736b: $7f
    ld de, $ff32                                  ; $736c: $11 $32 $ff
    ld b, h                                       ; $736f: $44
    ldh [$0c], a                                  ; $7370: $e0 $0c
    ldh [$57], a                                  ; $7372: $e0 $57
    nop                                           ; $7374: $00
    rst $38                                       ; $7375: $ff
    ldh [$5f], a                                  ; $7376: $e0 $5f
    ld [bc], a                                    ; $7378: $02
    ld [hl], h                                    ; $7379: $74
    rst $38                                       ; $737a: $ff
    or b                                          ; $737b: $b0
    ld e, a                                       ; $737c: $5f
    jr nc, jr_0a5_7387                            ; $737d: $30 $08

    or b                                          ; $737f: $b0
    ld c, a                                       ; $7380: $4f
    cp a                                          ; $7381: $bf
    xor h                                         ; $7382: $ac
    inc d                                         ; $7383: $14
    push af                                       ; $7384: $f5
    ld a, [hl+]                                   ; $7385: $2a
    ld c, h                                       ; $7386: $4c

jr_0a5_7387:
    db $eb                                        ; $7387: $eb
    jr z, @+$06                                   ; $7388: $28 $04

    cp d                                          ; $738a: $ba
    ld b, l                                       ; $738b: $45
    ret z                                         ; $738c: $c8

    ld bc, $142c                                  ; $738d: $01 $2c $14
    rst $10                                       ; $7390: $d7
    ld a, [hl+]                                   ; $7391: $2a
    ld b, h                                       ; $7392: $44
    ei                                            ; $7393: $fb
    sub b                                         ; $7394: $90
    inc b                                         ; $7395: $04
    xor [hl]                                      ; $7396: $ae
    ld d, c                                       ; $7397: $51
    rst $30                                       ; $7398: $f7
    and b                                         ; $7399: $a0
    ld b, c                                       ; $739a: $41
    and e                                         ; $739b: $a3
    nop                                           ; $739c: $00
    ld de, $2f50                                  ; $739d: $11 $50 $2f
    rst $38                                       ; $73a0: $ff
    and b                                         ; $73a1: $a0
    ld h, c                                       ; $73a2: $61
    and b                                         ; $73a3: $a0
    rst $18                                       ; $73a4: $df
    ccf                                           ; $73a5: $3f

jr_0a5_73a6:
    jr nc, jr_0a5_740c                            ; $73a6: $30 $64

    jr nc, jr_0a5_7344                            ; $73a8: $30 $9a

    ld a, a                                       ; $73aa: $7f
    jr nz, jr_0a5_7408                            ; $73ab: $20 $5b

    sub b                                         ; $73ad: $90
    ld a, [bc]                                    ; $73ae: $0a
    ld b, b                                       ; $73af: $40
    cp a                                          ; $73b0: $bf
    ld [$0017], a                                 ; $73b1: $ea $17 $00
    push de                                       ; $73b4: $d5
    ld a, [hl+]                                   ; $73b5: $2a
    rst $28                                       ; $73b6: $ef
    db $10                                        ; $73b7: $10
    ld a, [$f705]                                 ; $73b8: $fa $05 $f7
    ld [$809d], sp                                ; $73bb: $08 $9d $80
    ld a, [hl+]                                   ; $73be: $2a
    ld l, a                                       ; $73bf: $6f
    sub b                                         ; $73c0: $90
    add b                                         ; $73c1: $80
    ld a, [hl-]                                   ; $73c2: $3a
    jr nz, jr_0a5_73dd                            ; $73c3: $20 $18

    ld [hl], $1d                                  ; $73c5: $36 $1d
    db $ed                                        ; $73c7: $ed
    ld b, d                                       ; $73c8: $42
    ld bc, $fd00                                  ; $73c9: $01 $00 $fd
    ld [bc], a                                    ; $73cc: $02
    jp c, $b525                                   ; $73cd: $da $25 $b5

    ld c, d                                       ; $73d0: $4a
    add sp, $17                                   ; $73d1: $e8 $17
    ld [$2fd2], sp                                ; $73d3: $08 $d2 $2f
    db $ec                                        ; $73d6: $ec
    rla                                           ; $73d7: $17
    ldh [rNR30], a                                ; $73d8: $e0 $1a
    cp l                                          ; $73da: $bd
    ld b, d                                       ; $73db: $42
    ld a, l                                       ; $73dc: $7d

jr_0a5_73dd:
    ld bc, $bd82                                  ; $73dd: $01 $82 $bd
    ld b, d                                       ; $73e0: $42
    ld [hl], l                                    ; $73e1: $75
    adc d                                         ; $73e2: $8a
    xor l                                         ; $73e3: $ad
    jp nc, Jump_0a5_4d5c                          ; $73e4: $d2 $5c $4d

    ret nz                                        ; $73e7: $c0

    ld l, b                                       ; $73e8: $68
    dec c                                         ; $73e9: $0d
    ldh a, [$3a]                                  ; $73ea: $f0 $3a
    cp $01                                        ; $73ec: $fe $01
    ei                                            ; $73ee: $fb
    add h                                         ; $73ef: $84
    db $fd                                        ; $73f0: $fd
    add d                                         ; $73f1: $82
    nop                                           ; $73f2: $00
    jr z, @+$01                                   ; $73f3: $28 $ff

    sub l                                         ; $73f5: $95
    ld a, e                                       ; $73f6: $7b
    ld c, d                                       ; $73f7: $4a
    or l                                          ; $73f8: $b5
    db $dd                                        ; $73f9: $dd
    inc hl                                        ; $73fa: $23
    nop                                           ; $73fb: $00
    cp [hl]                                       ; $73fc: $be
    ld b, c                                       ; $73fd: $41
    db $fd                                        ; $73fe: $fd
    inc bc                                        ; $73ff: $03
    cp $01                                        ; $7400: $fe $01
    ld l, l                                       ; $7402: $6d
    sub e                                         ; $7403: $93
    nop                                           ; $7404: $00
    cp $81                                        ; $7405: $fe $81
    push af                                       ; $7407: $f5

jr_0a5_7408:
    adc d                                         ; $7408: $8a
    cp $81                                        ; $7409: $fe $81
    db $ec                                        ; $740b: $ec

jr_0a5_740c:
    sub e                                         ; $740c: $93
    nop                                           ; $740d: $00
    ld a, [$d185]                                 ; $740e: $fa $85 $d1
    xor [hl]                                      ; $7411: $ae
    ld [$f097], a                                 ; $7412: $ea $97 $f0
    adc a                                         ; $7415: $8f
    nop                                           ; $7416: $00
    cp $01                                        ; $7417: $fe $01
    ld [hl], l                                    ; $7419: $75
    adc e                                         ; $741a: $8b
    cp [hl]                                       ; $741b: $be
    ld b, c                                       ; $741c: $41
    ld a, l                                       ; $741d: $7d
    add e                                         ; $741e: $83
    nop                                           ; $741f: $00
    sbc $21                                       ; $7420: $de $21
    dec a                                         ; $7422: $3d
    jp $a15e                                      ; $7423: $c3 $5e $a1


    cp l                                          ; $7426: $bd
    ld b, e                                       ; $7427: $43
    db $10                                        ; $7428: $10
    cp e                                          ; $7429: $bb
    inc d                                         ; $742a: $14
    db $fd                                        ; $742b: $fd
    xor d                                         ; $742c: $aa
    ld b, $d5                                     ; $742d: $06 $d5
    xor d                                         ; $742f: $aa
    db $eb                                        ; $7430: $eb
    inc d                                         ; $7431: $14
    ld [bc], a                                    ; $7432: $02
    ld [hl], l                                    ; $7433: $75
    ld a, [hl+]                                   ; $7434: $2a
    db $eb                                        ; $7435: $eb
    inc d                                         ; $7436: $14
    rst $30                                       ; $7437: $f7
    xor d                                         ; $7438: $aa
    ld b, b                                       ; $7439: $40
    ld a, [bc]                                    ; $743a: $0a
    db $eb                                        ; $743b: $eb
    ld hl, $7d54                                  ; $743c: $21 $54 $7d
    sub b                                         ; $743f: $90
    dec d                                         ; $7440: $15
    db $eb                                        ; $7441: $eb
    inc d                                         ; $7442: $14
    push af                                       ; $7443: $f5
    xor d                                         ; $7444: $aa
    jr nz, @+$23                                  ; $7445: $20 $21

    ld b, b                                       ; $7447: $40
    xor d                                         ; $7448: $aa
    jr nz, jr_0a5_7454                            ; $7449: $20 $09

    cp e                                          ; $744b: $bb
    ld b, h                                       ; $744c: $44
    ld d, l                                       ; $744d: $55
    xor d                                         ; $744e: $aa
    rst $38                                       ; $744f: $ff
    ld d, h                                       ; $7450: $54
    ret nz                                        ; $7451: $c0

    jr nz, jr_0a5_7465                            ; $7452: $20 $11

jr_0a5_7454:
    add b                                         ; $7454: $80
    inc b                                         ; $7455: $04
    rst $18                                       ; $7456: $df
    jr nz, jr_0a5_7408                            ; $7457: $20 $af

    ld d, b                                       ; $7459: $50
    ld [hl], a                                    ; $745a: $77
    xor d                                         ; $745b: $aa
    nop                                           ; $745c: $00
    jp nc, $a42f                                  ; $745d: $d2 $2f $a4

    ld e, a                                       ; $7460: $5f
    pop de                                        ; $7461: $d1
    ld a, $ac                                     ; $7462: $3e $ac
    ld d, a                                       ; $7464: $57

jr_0a5_7465:
    nop                                           ; $7465: $00
    pop de                                        ; $7466: $d1
    ld a, $a2                                     ; $7467: $3e $a2
    ld e, l                                       ; $7469: $5d
    call Call_0a5_5b32                            ; $746a: $cd $32 $5b
    and h                                         ; $746d: $a4
    add hl, bc                                    ; $746e: $09
    ld e, h                                       ; $746f: $5c
    and e                                         ; $7470: $a3
    cp b                                          ; $7471: $b8
    ld b, h                                       ; $7472: $44
    ld [hl], b                                    ; $7473: $70
    ld a, [bc]                                    ; $7474: $0a
    ld h, d                                       ; $7475: $62
    sub h                                         ; $7476: $94
    ld [hl], b                                    ; $7477: $70
    ld a, [de]                                    ; $7478: $1a
    sbc c                                         ; $7479: $99
    inc c                                         ; $747a: $0c
    ld c, $fb                                     ; $747b: $0e $fb
    inc b                                         ; $747d: $04
    cp [hl]                                       ; $747e: $be
    dec bc                                        ; $747f: $0b
    ld b, $08                                     ; $7480: $06 $08
    ei                                            ; $7482: $fb
    inc b                                         ; $7483: $04
    ld a, d                                       ; $7484: $7a
    dec bc                                        ; $7485: $0b
    nop                                           ; $7486: $00
    rst $10                                       ; $7487: $d7
    jr z, jr_0a5_74f9                             ; $7488: $28 $6f

    sub b                                         ; $748a: $90
    or a                                          ; $748b: $b7
    ld c, b                                       ; $748c: $48
    db $eb                                        ; $748d: $eb
    inc d                                         ; $748e: $14
    nop                                           ; $748f: $00
    ld a, a                                       ; $7490: $7f
    add b                                         ; $7491: $80
    ld [hl], a                                    ; $7492: $77
    adc b                                         ; $7493: $88
    rst $28                                       ; $7494: $ef
    db $10                                        ; $7495: $10
    ei                                            ; $7496: $fb
    inc b                                         ; $7497: $04
    nop                                           ; $7498: $00
    rst $30                                       ; $7499: $f7
    ld [$04fb], sp                                ; $749a: $08 $fb $04
    or c                                          ; $749d: $b1
    ld c, [hl]                                    ; $749e: $4e
    ld a, d                                       ; $749f: $7a
    add l                                         ; $74a0: $85
    nop                                           ; $74a1: $00
    ld d, l                                       ; $74a2: $55
    xor [hl]                                      ; $74a3: $ae
    ld h, d                                       ; $74a4: $62
    sbc l                                         ; $74a5: $9d
    ld l, l                                       ; $74a6: $6d
    sub d                                         ; $74a7: $92
    ld a, a                                       ; $74a8: $7f
    add b                                         ; $74a9: $80
    jr nz, @+$37                                  ; $74aa: $20 $35

    jp z, Jump_000_39e0                           ; $74ac: $ca $e0 $39

    ld d, l                                       ; $74af: $55
    xor [hl]                                      ; $74b0: $ae
    ld l, d                                       ; $74b1: $6a
    sbc l                                         ; $74b2: $9d
    ld d, l                                       ; $74b3: $55
    nop                                           ; $74b4: $00
    xor [hl]                                      ; $74b5: $ae
    xor d                                         ; $74b6: $aa
    ld e, a                                       ; $74b7: $5f
    ld d, [hl]                                    ; $74b8: $56
    xor a                                         ; $74b9: $af
    adc l                                         ; $74ba: $8d
    ld a, a                                       ; $74bb: $7f
    ld l, $ec                                     ; $74bc: $2e $ec
    ldh [rTIMA], a                                ; $74be: $e0 $05
    ld [hl], d                                    ; $74c0: $72
    rlca                                          ; $74c1: $07

jr_0a5_74c2:
    sub b                                         ; $74c2: $90
    ld d, d                                       ; $74c3: $52
    add b                                         ; $74c4: $80
    ldh a, [$61]                                  ; $74c5: $f0 $61
    ld c, [hl]                                    ; $74c7: $4e
    ld e, d                                       ; $74c8: $5a
    ld a, a                                       ; $74c9: $7f
    add b                                         ; $74ca: $80
    add b                                         ; $74cb: $80
    ret nc                                        ; $74cc: $d0

    ld a, [bc]                                    ; $74cd: $0a
    ld d, e                                       ; $74ce: $53
    rst $20                                       ; $74cf: $e7
    jr z, jr_0a5_74c2                             ; $74d0: $28 $f0

    dec de                                        ; $74d2: $1b
    db $fc                                        ; $74d3: $fc
    ld b, a                                       ; $74d4: $47
    nop                                           ; $74d5: $00
    rst $38                                       ; $74d6: $ff
    add d                                         ; $74d7: $82
    rst $38                                       ; $74d8: $ff
    db $d3                                        ; $74d9: $d3
    cp $a9                                        ; $74da: $fe $a9
    rst $10                                       ; $74dc: $d7
    stop                                          ; $74dd: $10 $00
    cpl                                           ; $74df: $2f
    jp nz, $e19f                                  ; $74e0: $c2 $9f $e1

    ld c, a                                       ; $74e3: $4f
    ld b, d                                       ; $74e4: $42
    cpl                                           ; $74e5: $2f
    jr nc, jr_0a5_74e8                            ; $74e6: $30 $00

jr_0a5_74e8:
    daa                                           ; $74e8: $27
    ld hl, $1816                                  ; $74e9: $21 $16 $18
    inc de                                        ; $74ec: $13
    halt                                          ; $74ed: $76
    adc c                                         ; $74ee: $89
    ld l, l                                       ; $74ef: $6d
    db $10                                        ; $74f0: $10
    sub e                                         ; $74f1: $93
    ld e, [hl]                                    ; $74f2: $5e
    and c                                         ; $74f3: $a1
    inc c                                         ; $74f4: $0c
    add hl, de                                    ; $74f5: $19
    ld e, [hl]                                    ; $74f6: $5e
    and c                                         ; $74f7: $a1
    db $fd                                        ; $74f8: $fd

jr_0a5_74f9:
    inc bc                                        ; $74f9: $03
    ld [bc], a                                    ; $74fa: $02

Call_0a5_74fb:
    ld a, [hl]                                    ; $74fb: $7e
    add c                                         ; $74fc: $81
    db $dd                                        ; $74fd: $dd
    inc hl                                        ; $74fe: $23

Jump_0a5_74ff:
    cp $01                                        ; $74ff: $fe $01
    inc c                                         ; $7501: $0c
    ld [$043d], sp                                ; $7502: $08 $3d $04
    jp $817e                                      ; $7505: $c3 $7e $81


    dec a                                         ; $7508: $3d
    jp Jump_0a5_5a80                              ; $7509: $c3 $80 $5a


    xor b                                         ; $750c: $a8
    rst $38                                       ; $750d: $ff
    nop                                           ; $750e: $00
    ld a, [hl]                                    ; $750f: $7e
    add c                                         ; $7510: $81
    ld a, l                                       ; $7511: $7d
    add e                                         ; $7512: $83
    halt                                          ; $7513: $76
    adc c                                         ; $7514: $89
    db $ed                                        ; $7515: $ed
    inc de                                        ; $7516: $13
    ld bc, $a956                                  ; $7517: $01 $56 $a9
    adc c                                         ; $751a: $89
    ld [hl], a                                    ; $751b: $77
    ld d, b                                       ; $751c: $50
    cp a                                          ; $751d: $bf
    ld c, c                                       ; $751e: $49
    sub h                                         ; $751f: $94
    ld [bc], a                                    ; $7520: $02
    add d                                         ; $7521: $82
    add b                                         ; $7522: $80
    ld l, b                                       ; $7523: $68
    rst $30                                       ; $7524: $f7
    ld [$54ab], sp                                ; $7525: $08 $ab $54
    push de                                       ; $7528: $d5
    ret z                                         ; $7529: $c8

    ld b, $7d                                     ; $752a: $06 $7d
    nop                                           ; $752c: $00
    add d                                         ; $752d: $82
    xor e                                         ; $752e: $ab
    ld d, h                                       ; $752f: $54
    rst $30                                       ; $7530: $f7
    xor d                                         ; $7531: $aa
    cp a                                          ; $7532: $bf
    ret nz                                        ; $7533: $c0

    add b                                         ; $7534: $80
    jr nz, @+$01                                  ; $7535: $20 $ff

    ld a, a                                       ; $7537: $7f
    sub [hl]                                      ; $7538: $96
    ld b, b                                       ; $7539: $40
    rst $10                                       ; $753a: $d7
    ld a, b                                       ; $753b: $78
    cp $01                                        ; $753c: $fe $01
    dec d                                         ; $753e: $15
    ld [$d3ea], sp                                ; $753f: $08 $ea $d3
    rst $38                                       ; $7542: $ff
    ld a, c                                       ; $7543: $79
    or b                                          ; $7544: $b0
    ld [bc], a                                    ; $7545: $02
    inc b                                         ; $7546: $04
    ei                                            ; $7547: $fb
    ld [hl], a                                    ; $7548: $77
    and d                                         ; $7549: $a2
    jr nc, jr_0a5_755c                            ; $754a: $30 $10

    cp d                                          ; $754c: $ba
    ld c, b                                       ; $754d: $48
    ld b, $bf                                     ; $754e: $06 $bf
    ld b, b                                       ; $7550: $40
    push de                                       ; $7551: $d5
    cp b                                          ; $7552: $b8
    dec d                                         ; $7553: $15
    nop                                           ; $7554: $00
    ld c, h                                       ; $7555: $4c

jr_0a5_7556:
    rst $38                                       ; $7556: $ff
    sub b                                         ; $7557: $90
    ld e, [hl]                                    ; $7558: $5e
    ld bc, $90fe                                  ; $7559: $01 $fe $90

jr_0a5_755c:
    ld l, [hl]                                    ; $755c: $6e
    jp nc, $ff07                                  ; $755d: $d2 $07 $ff

    rst $30                                       ; $7560: $f7
    nop                                           ; $7561: $00
    rst $28                                       ; $7562: $ef
    xor a                                         ; $7563: $af
    rst $38                                       ; $7564: $ff
    cp a                                          ; $7565: $bf
    rst $38                                       ; $7566: $ff
    cp l                                          ; $7567: $bd
    cp $5b                                        ; $7568: $fe $5b
    inc e                                         ; $756a: $1c
    db $fc                                        ; $756b: $fc
    or a                                          ; $756c: $b7
    ld a, b                                       ; $756d: $78
    add sp, $0e                                   ; $756e: $e8 $0e
    sub b                                         ; $7570: $90
    ld b, $e0                                     ; $7571: $06 $e0
    ld b, $af                                     ; $7573: $06 $af
    ld d, b                                       ; $7575: $50
    nop                                           ; $7576: $00
    ld d, l                                       ; $7577: $55
    xor d                                         ; $7578: $aa
    ld d, b                                       ; $7579: $50
    dec bc                                        ; $757a: $0b
    xor d                                         ; $757b: $aa
    rlca                                          ; $757c: $07
    ld b, d                                       ; $757d: $42
    rst $38                                       ; $757e: $ff
    ld bc, $8360                                  ; $757f: $01 $60 $83
    rst $38                                       ; $7582: $ff
    pop bc                                        ; $7583: $c1
    cp a                                          ; $7584: $bf
    inc b                                         ; $7585: $04
    ld c, b                                       ; $7586: $48
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    rst $38                                       ; $7589: $ff
    inc d                                         ; $758a: $14
    db $eb                                        ; $758b: $eb
    xor d                                         ; $758c: $aa
    ld d, l                                       ; $758d: $55
    ld e, e                                       ; $758e: $5b
    and b                                         ; $758f: $a0
    cp l                                          ; $7590: $bd
    nop                                           ; $7591: $00
    ld b, d                                       ; $7592: $42
    rst $30                                       ; $7593: $f7
    nop                                           ; $7594: $00
    db $dd                                        ; $7595: $dd
    nop                                           ; $7596: $00
    cp d                                          ; $7597: $ba
    nop                                           ; $7598: $00
    add b                                         ; $7599: $80
    add b                                         ; $759a: $80
    ld [bc], a                                    ; $759b: $02
    ld [$8001], sp                                ; $759c: $08 $01 $80
    ld a, [bc]                                    ; $759f: $0a
    add c                                         ; $75a0: $81
    ld d, h                                       ; $75a1: $54
    add c                                         ; $75a2: $81
    jr z, jr_0a5_75a5                             ; $75a3: $28 $00

jr_0a5_75a5:
    add c                                         ; $75a5: $81
    ld b, b                                       ; $75a6: $40
    add c                                         ; $75a7: $81
    nop                                           ; $75a8: $00
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    inc bc                                        ; $75ab: $03
    add h                                         ; $75ac: $84
    inc c                                         ; $75ad: $0c
    ld l, h                                       ; $75ae: $6c
    nop                                           ; $75af: $00
    sub b                                         ; $75b0: $90
    ld l, b                                       ; $75b1: $68
    add hl, bc                                    ; $75b2: $09
    nop                                           ; $75b3: $00
    inc bc                                        ; $75b4: $03
    db $10                                        ; $75b5: $10
    ld [hl], h                                    ; $75b6: $74
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    ld l, c                                       ; $75b9: $69
    nop                                           ; $75ba: $00
    jr nc, jr_0a5_75bd                            ; $75bb: $30 $00

jr_0a5_75bd:
    inc b                                         ; $75bd: $04
    nop                                           ; $75be: $00
    jr nz, jr_0a5_75c1                            ; $75bf: $20 $00

jr_0a5_75c1:
    ld b, b                                       ; $75c1: $40
    db $10                                        ; $75c2: $10
    inc de                                        ; $75c3: $13
    db $10                                        ; $75c4: $10
    add d                                         ; $75c5: $82
    dec b                                         ; $75c6: $05
    adc h                                         ; $75c7: $8c
    ld [de], a                                    ; $75c8: $12
    sub b                                         ; $75c9: $90
    ld [$9000], sp                                ; $75ca: $08 $00 $90
    nop                                           ; $75cd: $00
    sub b                                         ; $75ce: $90
    nop                                           ; $75cf: $00
    sub c                                         ; $75d0: $91
    ld a, [bc]                                    ; $75d1: $0a
    adc d                                         ; $75d2: $8a
    dec d                                         ; $75d3: $15
    jr nz, jr_0a5_7556                            ; $75d4: $20 $80

    ld [bc], a                                    ; $75d6: $02
    jr z, @+$12                                   ; $75d7: $28 $10

    ld bc, $0001                                  ; $75d9: $01 $01 $00
    add hl, de                                    ; $75dc: $19
    ld [hl+], a                                   ; $75dd: $22
    ld [bc], a                                    ; $75de: $02
    ld h, [hl]                                    ; $75df: $66
    sbc b                                         ; $75e0: $98
    nop                                           ; $75e1: $00
    ld d, b                                       ; $75e2: $50
    ld [bc], a                                    ; $75e3: $02
    and d                                         ; $75e4: $a2
    jr c, jr_0a5_760f                             ; $75e5: $38 $28

    ld b, b                                       ; $75e7: $40
    jr z, jr_0a5_75ea                             ; $75e8: $28 $00

jr_0a5_75ea:
    ld [$004c], sp                                ; $75ea: $08 $4c $00
    sub d                                         ; $75ed: $92
    ld e, h                                       ; $75ee: $5c
    nop                                           ; $75ef: $00
    add d                                         ; $75f0: $82
    ld [bc], a                                    ; $75f1: $02
    add h                                         ; $75f2: $84
    nop                                           ; $75f3: $00
    inc b                                         ; $75f4: $04
    adc c                                         ; $75f5: $89
    add hl, bc                                    ; $75f6: $09
    add d                                         ; $75f7: $82
    ld [bc], a                                    ; $75f8: $02
    add l                                         ; $75f9: $85
    dec b                                         ; $75fa: $05
    xor e                                         ; $75fb: $ab
    nop                                           ; $75fc: $00
    dec hl                                        ; $75fd: $2b
    push bc                                       ; $75fe: $c5
    ld b, l                                       ; $75ff: $45
    inc b                                         ; $7600: $04
    inc b                                         ; $7601: $04
    ld de, $a211                                  ; $7602: $11 $11 $a2
    nop                                           ; $7605: $00
    and [hl]                                      ; $7606: $a6
    ld b, c                                       ; $7607: $41
    ld l, d                                       ; $7608: $6a
    xor d                                         ; $7609: $aa
    db $fd                                        ; $760a: $fd
    rst $18                                       ; $760b: $df
    di                                            ; $760c: $f3
    db $eb                                        ; $760d: $eb
    nop                                           ; $760e: $00

jr_0a5_760f:
    db $e4                                        ; $760f: $e4
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    dec h                                         ; $7612: $25
    nop                                           ; $7613: $00
    ld e, d                                       ; $7614: $5a
    nop                                           ; $7615: $00
    or [hl]                                       ; $7616: $b6
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    db $fd                                        ; $7619: $fd
    nop                                           ; $761a: $00
    cp e                                          ; $761b: $bb
    nop                                           ; $761c: $00
    rst $38                                       ; $761d: $ff
    nop                                           ; $761e: $00
    xor [hl]                                      ; $761f: $ae
    nop                                           ; $7620: $00
    ld b, c                                       ; $7621: $41
    ld a, a                                       ; $7622: $7f
    add b                                         ; $7623: $80
    xor a                                         ; $7624: $af
    cpl                                           ; $7625: $2f
    sbc $5e                                       ; $7626: $de $5e
    cp a                                          ; $7628: $bf
    db $10                                        ; $7629: $10
    ccf                                           ; $762a: $3f
    rst $38                                       ; $762b: $ff
    ld a, a                                       ; $762c: $7f
    ld [bc], a                                    ; $762d: $02
    nop                                           ; $762e: $00
    ld a, b                                       ; $762f: $78
    ld a, b                                       ; $7630: $78
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    ld [de], a                                    ; $7633: $12
    nop                                           ; $7634: $00
    ld a, a                                       ; $7635: $7f
    ld a, a                                       ; $7636: $7f
    jp nc, $1f30                                  ; $7637: $d2 $30 $1f

    rra                                           ; $763a: $1f
    stop                                          ; $763b: $10 $00
    ld [bc], a                                    ; $763d: $02
    nop                                           ; $763e: $00
    inc b                                         ; $763f: $04
    call nz, Call_000_2420                        ; $7640: $c4 $20 $24
    ld b, d                                       ; $7643: $42
    ld [de], a                                    ; $7644: $12
    inc c                                         ; $7645: $0c
    dec bc                                        ; $7646: $0b
    nop                                           ; $7647: $00
    ld de, $000a                                  ; $7648: $11 $0a $00
    ld [hl], c                                    ; $764b: $71
    adc d                                         ; $764c: $8a
    add b                                         ; $764d: $80
    ld b, b                                       ; $764e: $40
    dec b                                         ; $764f: $05
    nop                                           ; $7650: $00
    ld b, $0a                                     ; $7651: $06 $0a
    add hl, bc                                    ; $7653: $09
    dec d                                         ; $7654: $15
    ld d, $8a                                     ; $7655: $16 $8a
    adc e                                         ; $7657: $8b
    rla                                           ; $7658: $17
    nop                                           ; $7659: $00
    rla                                           ; $765a: $17
    dec hl                                        ; $765b: $2b
    dec hl                                        ; $765c: $2b
    rst $18                                       ; $765d: $df
    ld e, a                                       ; $765e: $5f
    ld [hl], a                                    ; $765f: $77
    or a                                          ; $7660: $b7
    rst $38                                       ; $7661: $ff
    nop                                           ; $7662: $00
    cp $7d                                        ; $7663: $fe $7d
    ld a, [hl]                                    ; $7665: $7e
    ld a, e                                       ; $7666: $7b
    cp $d7                                        ; $7667: $fe $d7
    ld a, [hl]                                    ; $7669: $7e
    cpl                                           ; $766a: $2f

jr_0a5_766b:
    jr nz, jr_0a5_766b                            ; $766b: $20 $fe

    rst $18                                       ; $766d: $df
    inc b                                         ; $766e: $04
    stop                                          ; $766f: $10 $00
    rst $38                                       ; $7671: $ff
    add hl, hl                                    ; $7672: $29
    sub $f6                                       ; $7673: $d6 $f6
    nop                                           ; $7675: $00
    add hl, bc                                    ; $7676: $09
    ld e, l                                       ; $7677: $5d
    add d                                         ; $7678: $82
    or $08                                        ; $7679: $f6 $08
    ld [hl], a                                    ; $767b: $77
    add b                                         ; $767c: $80
    rst $38                                       ; $767d: $ff
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    ld e, l                                       ; $7680: $5d
    add b                                         ; $7681: $80
    adc d                                         ; $7682: $8a
    ld a, [bc]                                    ; $7683: $0a
    sub l                                         ; $7684: $95
    dec d                                         ; $7685: $15
    xor [hl]                                      ; $7686: $ae
    nop                                           ; $7687: $00
    ld l, $4a                                     ; $7688: $2e $4a
    push de                                       ; $768a: $d5
    rla                                           ; $768b: $17
    rrca                                          ; $768c: $0f
    sbc a                                         ; $768d: $9f
    xor a                                         ; $768e: $af
    ld l, $00                                     ; $768f: $2e $00
    ld c, a                                       ; $7691: $4f
    ld d, l                                       ; $7692: $55
    ccf                                           ; $7693: $3f
    cpl                                           ; $7694: $2f
    ld c, a                                       ; $7695: $4f
    ld e, a                                       ; $7696: $5f
    ccf                                           ; $7697: $3f
    ld a, a                                       ; $7698: $7f
    ld h, b                                       ; $7699: $60
    cp a                                          ; $769a: $bf
    ld [hl], b                                    ; $769b: $70
    nop                                           ; $769c: $00
    add hl, sp                                    ; $769d: $39
    ld hl, $fe3f                                  ; $769e: $21 $3f $fe
    rst $18                                       ; $76a1: $df
    cp [hl]                                       ; $76a2: $be
    cp a                                          ; $76a3: $bf
    nop                                           ; $76a4: $00
    sbc $df                                       ; $76a5: $de $df
    cp $ff                                        ; $76a7: $fe $ff
    sbc $9f                                       ; $76a9: $de $9f
    cp $ff                                        ; $76ab: $fe $ff
    nop                                           ; $76ad: $00
    cp [hl]                                       ; $76ae: $be
    db $db                                        ; $76af: $db
    or [hl]                                       ; $76b0: $b6
    rst $28                                       ; $76b1: $ef
    nop                                           ; $76b2: $00
    ld e, e                                       ; $76b3: $5b
    add b                                         ; $76b4: $80
    xor $00                                       ; $76b5: $ee $00
    nop                                           ; $76b7: $00
    ld a, h                                       ; $76b8: $7c
    add b                                         ; $76b9: $80
    ldh a, [rP1]                                  ; $76ba: $f0 $00
    ld h, h                                       ; $76bc: $64
    add b                                         ; $76bd: $80
    ret nz                                        ; $76be: $c0

    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    ld b, b                                       ; $76c1: $40
    add b                                         ; $76c2: $80
    db $eb                                        ; $76c3: $eb
    cp a                                          ; $76c4: $bf
    ld a, a                                       ; $76c5: $7f
    ld e, a                                       ; $76c6: $5f
    xor a                                         ; $76c7: $af
    nop                                           ; $76c8: $00
    rst $08                                       ; $76c9: $cf
    rst $18                                       ; $76ca: $df
    ccf                                           ; $76cb: $3f
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    ld a, a                                       ; $76ce: $7f
    ld a, a                                       ; $76cf: $7f
    ld h, l                                       ; $76d0: $65
    db $10                                        ; $76d1: $10
    sbc e                                         ; $76d2: $9b
    ei                                            ; $76d3: $fb
    db $fc                                        ; $76d4: $fc
    ld [hl], b                                    ; $76d5: $70
    add hl, sp                                    ; $76d6: $39
    ld [$65ea], a                                 ; $76d7: $ea $ea $65
    sub l                                         ; $76da: $95
    nop                                           ; $76db: $00
    sub d                                         ; $76dc: $92
    ld l, b                                       ; $76dd: $68
    or l                                          ; $76de: $b5
    ret z                                         ; $76df: $c8

    rst $38                                       ; $76e0: $ff
    ld a, [$f8f5]                                 ; $76e1: $fa $f5 $f8
    nop                                           ; $76e4: $00
    xor c                                         ; $76e5: $a9
    and h                                         ; $76e6: $a4
    ld d, l                                       ; $76e7: $55
    ld c, h                                       ; $76e8: $4c
    xor c                                         ; $76e9: $a9
    sbc b                                         ; $76ea: $98
    ld d, c                                       ; $76eb: $51
    ld h, d                                       ; $76ec: $62
    inc [hl]                                      ; $76ed: $34
    ld h, c                                       ; $76ee: $61
    sub h                                         ; $76ef: $94
    inc [hl]                                      ; $76f0: $34
    ld [$2804], sp                                ; $76f1: $08 $04 $28
    call nz, VBlankInterrupt                      ; $76f4: $c4 $40 $00
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    ld [$fefe], sp                                ; $76f9: $08 $fe $fe
    db $fd                                        ; $76fc: $fd
    db $fd                                        ; $76fd: $fd
    jr nc, jr_0a5_7718                            ; $76fe: $30 $18

    push de                                       ; $7700: $d5
    push de                                       ; $7701: $d5
    rst $38                                       ; $7702: $ff
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    ld sp, hl                                     ; $7705: $f9
    or $e8                                        ; $7706: $f6 $e8
    db $fd                                        ; $7708: $fd
    pop de                                        ; $7709: $d1
    ei                                            ; $770a: $fb
    xor d                                         ; $770b: $aa
    ld [bc], a                                    ; $770c: $02
    cp [hl]                                       ; $770d: $be
    ld d, b                                       ; $770e: $50
    ld [hl], b                                    ; $770f: $70
    and h                                         ; $7710: $a4
    and h                                         ; $7711: $a4
    nop                                           ; $7712: $00
    inc b                                         ; $7713: $04
    ld bc, $0081                                  ; $7714: $01 $81 $00
    ld l, b                                       ; $7717: $68

jr_0a5_7718:
    add c                                         ; $7718: $81
    ret nc                                        ; $7719: $d0

    ld bc, $0180                                  ; $771a: $01 $80 $01
    nop                                           ; $771d: $00
    ld bc, $0000                                  ; $771e: $01 $00 $00
    pop af                                        ; $7721: $f1
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    pop af                                        ; $7724: $f1
    rst $38                                       ; $7725: $ff

jr_0a5_7726:
    nop                                           ; $7726: $00
    ret nz                                        ; $7727: $c0

    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    ld d, c                                       ; $772a: $51
    add b                                         ; $772b: $80
    add sp, $00                                   ; $772c: $e8 $00
    ld d, b                                       ; $772e: $50
    add b                                         ; $772f: $80
    ld sp, hl                                     ; $7730: $f9
    jr nz, jr_0a5_7733                            ; $7731: $20 $00

jr_0a5_7733:
    ld l, [hl]                                    ; $7733: $6e
    ret nz                                        ; $7734: $c0

    nop                                           ; $7735: $00
    ld a, e                                       ; $7736: $7b
    add h                                         ; $7737: $84
    ld e, [hl]                                    ; $7738: $5e
    ld b, e                                       ; $7739: $43
    ld e, a                                       ; $773a: $5f
    inc d                                         ; $773b: $14
    ld b, c                                       ; $773c: $41
    ld e, a                                       ; $773d: $5f
    ld b, b                                       ; $773e: $40
    ld [bc], a                                    ; $773f: $02
    jr nc, jr_0a5_7792                            ; $7740: $30 $50

    scf                                           ; $7742: $37
    ld bc, $80ff                                  ; $7743: $01 $ff $80
    add b                                         ; $7746: $80
    ld [bc], a                                    ; $7747: $02
    nop                                           ; $7748: $00
    jp $c57f                                      ; $7749: $c3 $7f $c5


    ld a, [hl]                                    ; $774c: $7e
    db $db                                        ; $774d: $db
    ld a, h                                       ; $774e: $7c
    rst $30                                       ; $774f: $f7
    nop                                           ; $7750: $00
    jr c, jr_0a5_7772                             ; $7751: $38 $1f

    ld hl, sp+$17                                 ; $7753: $f8 $17
    ld hl, sp+$3f                                 ; $7755: $f8 $3f
    ldh a, [$6f]                                  ; $7757: $f0 $6f
    ld bc, $dff0                                  ; $7759: $01 $f0 $df
    ldh [rIE], a                                  ; $775c: $e0 $ff
    jr @+$01                                      ; $775e: $18 $ff

    inc e                                         ; $7760: $1c
    dec e                                         ; $7761: $1d
    nop                                           ; $7762: $00
    add b                                         ; $7763: $80
    ld [bc], a                                    ; $7764: $02
    jr nz, jr_0a5_7726                            ; $7765: $20 $bf

    ld b, b                                       ; $7767: $40
    sbc $61                                       ; $7768: $de $61
    rst $28                                       ; $776a: $ef
    ld [hl], c                                    ; $776b: $71
    rst $18                                       ; $776c: $df
    nop                                           ; $776d: $00
    ld [hl], c                                    ; $776e: $71
    ld c, a                                       ; $776f: $4f
    ld e, b                                       ; $7770: $58
    ld b, a                                       ; $7771: $47

jr_0a5_7772:
    ld e, [hl]                                    ; $7772: $5e
    ld e, a                                       ; $7773: $5f
    ld e, a                                       ; $7774: $5f
    ld e, a                                       ; $7775: $5f
    rlca                                          ; $7776: $07
    ld d, c                                       ; $7777: $51
    ld c, a                                       ; $7778: $4f
    ld e, b                                       ; $7779: $58
    ld e, a                                       ; $777a: $5f
    ld d, b                                       ; $777b: $50
    ld c, b                                       ; $777c: $48
    ld [$3822], sp                                ; $777d: $08 $22 $38
    inc l                                         ; $7780: $2c
    jr jr_0a5_7783                                ; $7781: $18 $00

jr_0a5_7783:
    cp l                                          ; $7783: $bd
    ld [hl], e                                    ; $7784: $73
    rst $38                                       ; $7785: $ff
    ld [hl], e                                    ; $7786: $73
    cp $0f                                        ; $7787: $fe $0f
    add sp, $1f                                   ; $7789: $e8 $1f
    ld a, [bc]                                    ; $778b: $0a
    ret nc                                        ; $778c: $d0

    ccf                                           ; $778d: $3f
    rst $28                                       ; $778e: $ef
    ld a, a                                       ; $778f: $7f
    ld d, b                                       ; $7790: $50
    nop                                           ; $7791: $00

jr_0a5_7792:
    ld a, b                                       ; $7792: $78
    ld l, h                                       ; $7793: $6c
    jr c, jr_0a5_77f4                             ; $7794: $38 $5e

    ld c, $40                                     ; $7796: $0e $40
    ld e, l                                       ; $7798: $5d
    ld b, b                                       ; $7799: $40
    ld c, b                                       ; $779a: $48
    jr nc, jr_0a5_779d                            ; $779b: $30 $00

jr_0a5_779d:
    ld b, e                                       ; $779d: $43
    ld [bc], a                                    ; $779e: $02
    inc b                                         ; $779f: $04
    nop                                           ; $77a0: $00
    rra                                           ; $77a1: $1f
    ld [bc], a                                    ; $77a2: $02
    nop                                           ; $77a3: $00
    xor a                                         ; $77a4: $af
    nop                                           ; $77a5: $00
    rst $30                                       ; $77a6: $f7
    nop                                           ; $77a7: $00
    ld [c], a                                     ; $77a8: $e2
    ld h, b                                       ; $77a9: $60

jr_0a5_77aa:
    jr nz, jr_0a5_77aa                            ; $77aa: $20 $fe

    ld [$fd01], sp                                ; $77ac: $08 $01 $fd
    inc bc                                        ; $77af: $03
    cp $02                                        ; $77b0: $fe $02
    db $10                                        ; $77b2: $10
    rst $38                                       ; $77b3: $ff
    rlca                                          ; $77b4: $07
    db $fc                                        ; $77b5: $fc
    jr nc, jr_0a5_7837                            ; $77b6: $30 $7f

    ldh a, [$92]                                  ; $77b8: $f0 $92
    nop                                           ; $77ba: $00
    ld a, c                                       ; $77bb: $79
    jr z, @+$5f                                   ; $77bc: $28 $5d

    ld b, b                                       ; $77be: $40
    ld e, [hl]                                    ; $77bf: $5e
    ld d, b                                       ; $77c0: $50
    add b                                         ; $77c1: $80
    ld l, h                                       ; $77c2: $6c
    nop                                           ; $77c3: $00

jr_0a5_77c4:
    ld e, [hl]                                    ; $77c4: $5e
    ld e, a                                       ; $77c5: $5f
    ld b, b                                       ; $77c6: $40
    ld b, b                                       ; $77c7: $40
    ld b, b                                       ; $77c8: $40
    ld a, a                                       ; $77c9: $7f
    ld a, a                                       ; $77ca: $7f
    ld e, a                                       ; $77cb: $5f
    nop                                           ; $77cc: $00
    inc [hl]                                      ; $77cd: $34
    nop                                           ; $77ce: $00
    xor a                                         ; $77cf: $af
    inc a                                         ; $77d0: $3c
    nop                                           ; $77d1: $00
    ld b, h                                       ; $77d2: $44
    ld [$00ee], sp                                ; $77d3: $08 $ee $00
    dec b                                         ; $77d6: $05
    nop                                           ; $77d7: $00
    ld [hl-], a                                   ; $77d8: $32
    nop                                           ; $77d9: $00
    ld e, b                                       ; $77da: $58
    inc bc                                        ; $77db: $03
    inc a                                         ; $77dc: $3c
    nop                                           ; $77dd: $00
    ld bc, $2810                                  ; $77de: $01 $10 $28
    ret nc                                        ; $77e1: $d0

    jr jr_0a5_77c4                                ; $77e2: $18 $e0

    rst $38                                       ; $77e4: $ff
    ld [hl], b                                    ; $77e5: $70
    ret nz                                        ; $77e6: $c0

    ld hl, $2000                                  ; $77e7: $21 $00 $20
    ld [$0af5], sp                                ; $77ea: $08 $f5 $0a
    rst $28                                       ; $77ed: $ef
    db $10                                        ; $77ee: $10
    ld d, [hl]                                    ; $77ef: $56
    xor c                                         ; $77f0: $a9
    nop                                           ; $77f1: $00
    xor l                                         ; $77f2: $ad
    ld d, d                                       ; $77f3: $52

jr_0a5_77f4:
    ld c, b                                       ; $77f4: $48
    or a                                          ; $77f5: $b7
    ld [bc], a                                    ; $77f6: $02
    rst $38                                       ; $77f7: $ff
    ld b, l                                       ; $77f8: $45
    rst $38                                       ; $77f9: $ff
    nop                                           ; $77fa: $00
    xor e                                         ; $77fb: $ab
    rst $38                                       ; $77fc: $ff
    ld d, l                                       ; $77fd: $55
    rst $38                                       ; $77fe: $ff
    ld d, l                                       ; $77ff: $55
    xor d                                         ; $7800: $aa
    add d                                         ; $7801: $82
    ld a, l                                       ; $7802: $7d
    nop                                           ; $7803: $00
    add hl, bc                                    ; $7804: $09
    cp $11                                        ; $7805: $fe $11
    cp $22                                        ; $7807: $fe $22
    db $fd                                        ; $7809: $fd
    ld d, h                                       ; $780a: $54
    rst $38                                       ; $780b: $ff
    ld b, b                                       ; $780c: $40
    ld [$0010], a                                 ; $780d: $ea $10 $00
    ld a, a                                       ; $7810: $7f
    add b                                         ; $7811: $80
    sbc $21                                       ; $7812: $de $21
    xor l                                         ; $7814: $ad
    ld d, d                                       ; $7815: $52
    nop                                           ; $7816: $00
    ld c, $f1                                     ; $7817: $0e $f1
    dec h                                         ; $7819: $25
    ld a, [$ff50]                                 ; $781a: $fa $50 $ff
    cp d                                          ; $781d: $ba
    rst $38                                       ; $781e: $ff
    nop                                           ; $781f: $00
    db $e3                                        ; $7820: $e3
    db $fc                                        ; $7821: $fc
    sbc [hl]                                      ; $7822: $9e
    ld a, a                                       ; $7823: $7f
    nop                                           ; $7824: $00
    rst $38                                       ; $7825: $ff
    ld de, $00fe                                  ; $7826: $11 $fe $00
    add b                                         ; $7829: $80
    ld a, a                                       ; $782a: $7f
    inc d                                         ; $782b: $14
    db $eb                                        ; $782c: $eb
    nop                                           ; $782d: $00
    rst $38                                       ; $782e: $ff
    ld a, [bc]                                    ; $782f: $0a
    or $00                                        ; $7830: $f6 $00
    db $eb                                        ; $7832: $eb
    dec d                                         ; $7833: $15
    adc a                                         ; $7834: $8f
    ld a, [c]                                     ; $7835: $f2
    ld a, [hl]                                    ; $7836: $7e

jr_0a5_7837:
    rst $38                                       ; $7837: $ff
    ld l, $e1                                     ; $7838: $2e $e1
    nop                                           ; $783a: $00
    ld e, l                                       ; $783b: $5d
    ret z                                         ; $783c: $c8

    xor d                                         ; $783d: $aa
    add h                                         ; $783e: $84
    ld [hl], l                                    ; $783f: $75
    ld [hl+], a                                   ; $7840: $22
    xor d                                         ; $7841: $aa
    stop                                          ; $7842: $10 $00
    rst $38                                       ; $7844: $ff
    ld [bc], a                                    ; $7845: $02
    and $19                                       ; $7846: $e6 $19
    ccf                                           ; $7848: $3f
    ret nz                                        ; $7849: $c0

    cp b                                          ; $784a: $b8
    rst $38                                       ; $784b: $ff
    nop                                           ; $784c: $00
    ld e, d                                       ; $784d: $5a
    rlca                                          ; $784e: $07
    and d                                         ; $784f: $a2
    ld c, b                                       ; $7850: $48
    ld d, l                                       ; $7851: $55
    ld [bc], a                                    ; $7852: $02
    xor d                                         ; $7853: $aa
    ld d, b                                       ; $7854: $50
    nop                                           ; $7855: $00
    push hl                                       ; $7856: $e5
    db $fc                                        ; $7857: $fc
    ld l, [hl]                                    ; $7858: $6e
    rra                                           ; $7859: $1f
    ld bc, $0086                                  ; $785a: $01 $86 $00
    ld de, $2800                                  ; $785d: $11 $00 $28
    ld [$0449], sp                                ; $7860: $08 $49 $04
    nop                                           ; $7863: $00
    ld c, c                                       ; $7864: $49
    call nz, RST_00                               ; $7865: $c4 $00 $00
    ld d, h                                       ; $7868: $54
    ld bc, $f08a                                  ; $7869: $01 $8a $f0
    or d                                          ; $786c: $b2
    ld a, a                                       ; $786d: $7f
    ld d, $01                                     ; $786e: $16 $01
    nop                                           ; $7870: $00
    ld [$1020], sp                                ; $7871: $08 $20 $10
    ld b, h                                       ; $7874: $44
    ld b, b                                       ; $7875: $40
    ld de, $02a3                                  ; $7876: $11 $a3 $02
    inc b                                         ; $7879: $04
    ld [hl], c                                    ; $787a: $71
    inc h                                         ; $787b: $24
    and d                                         ; $787c: $a2
    ld [$3015], sp                                ; $787d: $08 $15 $30
    nop                                           ; $7880: $00
    ld a, [de]                                    ; $7881: $1a
    ld b, a                                       ; $7882: $47
    nop                                           ; $7883: $00
    ret nz                                        ; $7884: $c0

    sub h                                         ; $7885: $94
    adc d                                         ; $7886: $8a
    nop                                           ; $7887: $00
    dec h                                         ; $7888: $25
    ld b, b                                       ; $7889: $40
    db $e3                                        ; $788a: $e3
    db $fc                                        ; $788b: $fc
    nop                                           ; $788c: $00
    cp a                                          ; $788d: $bf
    ld e, a                                       ; $788e: $5f
    ld d, l                                       ; $788f: $55
    xor d                                         ; $7890: $aa
    cp d                                          ; $7891: $ba
    ld d, l                                       ; $7892: $55
    ld d, l                                       ; $7893: $55
    ld [hl+], a                                   ; $7894: $22
    nop                                           ; $7895: $00
    xor d                                         ; $7896: $aa
    ld d, c                                       ; $7897: $51
    ld [hl], a                                    ; $7898: $77
    xor d                                         ; $7899: $aa
    xor d                                         ; $789a: $aa
    ld d, l                                       ; $789b: $55
    dec d                                         ; $789c: $15
    ld b, h                                       ; $789d: $44
    nop                                           ; $789e: $00
    inc c                                         ; $789f: $0c

jr_0a5_78a0:
    ld hl, sp+$76                                 ; $78a0: $f8 $76
    rst $38                                       ; $78a2: $ff
    xor e                                         ; $78a3: $ab
    ld d, l                                       ; $78a4: $55
    push de                                       ; $78a5: $d5
    adc d                                         ; $78a6: $8a
    nop                                           ; $78a7: $00
    xor d                                         ; $78a8: $aa
    ld d, c                                       ; $78a9: $51
    ld d, l                                       ; $78aa: $55
    adc d                                         ; $78ab: $8a
    cp e                                          ; $78ac: $bb
    dec d                                         ; $78ad: $15
    ld c, b                                       ; $78ae: $48
    ld [de], a                                    ; $78af: $12
    nop                                           ; $78b0: $00
    and h                                         ; $78b1: $a4
    ld [$c210], sp                                ; $78b2: $08 $10 $c2
    ld [hl], b                                    ; $78b5: $70
    rst $38                                       ; $78b6: $ff
    ld h, l                                       ; $78b7: $65
    cp a                                          ; $78b8: $bf
    inc b                                         ; $78b9: $04
    jp $a47d                                      ; $78ba: $c3 $7d $a4


    db $db                                        ; $78bd: $db
    db $10                                        ; $78be: $10
    or b                                          ; $78bf: $b0
    nop                                           ; $78c0: $00
    rst $10                                       ; $78c1: $d7
    jr z, jr_0a5_78c4                             ; $78c2: $28 $00

jr_0a5_78c4:
    jp hl                                         ; $78c4: $e9


    ld d, $d2                                     ; $78c5: $16 $d2
    dec l                                         ; $78c7: $2d
    add b                                         ; $78c8: $80
    ld a, a                                       ; $78c9: $7f
    jr nz, @+$01                                  ; $78ca: $20 $ff

    ret z                                         ; $78cc: $c8

    or b                                          ; $78cd: $b0
    jr jr_0a5_78a0                                ; $78ce: $18 $d0

    ld e, b                                       ; $78d0: $58
    scf                                           ; $78d1: $37
    ret z                                         ; $78d2: $c8

    ret nz                                        ; $78d3: $c0

    ld e, b                                       ; $78d4: $58
    ld a, [c]                                     ; $78d5: $f2
    dec e                                         ; $78d6: $1d
    add sp, $00                                   ; $78d7: $e8 $00
    scf                                           ; $78d9: $37
    pop bc                                        ; $78da: $c1
    ld a, [hl]                                    ; $78db: $7e
    add h                                         ; $78dc: $84
    rst $38                                       ; $78dd: $ff
    pop hl                                        ; $78de: $e1
    rst $38                                       ; $78df: $ff
    db $eb                                        ; $78e0: $eb
    ld [$551f], sp                                ; $78e1: $08 $1f $55
    ld [$13aa], sp                                ; $78e4: $08 $aa $13
    ld [bc], a                                    ; $78e7: $02
    ld a, [hl+]                                   ; $78e8: $2a
    db $fd                                        ; $78e9: $fd
    add hl, bc                                    ; $78ea: $09
    nop                                           ; $78eb: $00
    or $30                                        ; $78ec: $f6 $30
    rst $28                                       ; $78ee: $ef
    ld b, d                                       ; $78ef: $42
    cp a                                          ; $78f0: $bf
    add h                                         ; $78f1: $84
    ei                                            ; $78f2: $fb
    push de                                       ; $78f3: $d5
    nop                                           ; $78f4: $00
    ld a, [hl]                                    ; $78f5: $7e
    adc a                                         ; $78f6: $8f
    add c                                         ; $78f7: $81
    rlca                                          ; $78f8: $07
    rst $38                                       ; $78f9: $ff
    add e                                         ; $78fa: $83
    cp $21                                        ; $78fb: $fe $21
    nop                                           ; $78fd: $00
    rst $38                                       ; $78fe: $ff
    db $10                                        ; $78ff: $10
    rst $28                                       ; $7900: $ef
    ld c, b                                       ; $7901: $48
    cp a                                          ; $7902: $bf
    ld bc, $14fe                                  ; $7903: $01 $fe $14
    nop                                           ; $7906: $00
    ei                                            ; $7907: $fb
    xor c                                         ; $7908: $a9
    rst $38                                       ; $7909: $ff
    ld b, l                                       ; $790a: $45
    sub c                                         ; $790b: $91
    adc d                                         ; $790c: $8a
    ld [hl+], a                                   ; $790d: $22
    ld d, b                                       ; $790e: $50
    nop                                           ; $790f: $00
    inc b                                         ; $7910: $04
    add sp, $0a                                   ; $7911: $e8 $0a
    pop af                                        ; $7913: $f1
    cp $6b                                        ; $7914: $fe $6b
    rra                                           ; $7916: $1f
    add c                                         ; $7917: $81
    nop                                           ; $7918: $00
    inc d                                         ; $7919: $14
    db $10                                        ; $791a: $10
    ld bc, $0050                                  ; $791b: $01 $50 $00
    inc h                                         ; $791e: $24
    add c                                         ; $791f: $81
    ld [de], a                                    ; $7920: $12
    nop                                           ; $7921: $00
    jr z, jr_0a5_7975                             ; $7922: $28 $51

    nop                                           ; $7924: $00
    xor b                                         ; $7925: $a8
    nop                                           ; $7926: $00
    add [hl]                                      ; $7927: $86
    ld hl, sp-$52                                 ; $7928: $f8 $ae
    nop                                           ; $792a: $00
    ld a, a                                       ; $792b: $7f
    ld d, [hl]                                    ; $792c: $56
    ld bc, $07bf                                  ; $792d: $01 $bf $07
    nop                                           ; $7930: $00
    ld hl, $0094                                  ; $7931: $21 $94 $00
    ld b, b                                       ; $7934: $40
    jr nz, @+$04                                  ; $7935: $20 $02

    adc c                                         ; $7937: $89
    ld bc, $2401                                  ; $7938: $01 $01 $24
    ld [hl-], a                                   ; $793b: $32
    inc b                                         ; $793c: $04
    ret nz                                        ; $793d: $c0

    xor b                                         ; $793e: $a8
    rst $38                                       ; $793f: $ff
    jr nz, jr_0a5_7996                            ; $7940: $20 $54

    ret nc                                        ; $7942: $d0

    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    ld h, b                                       ; $7945: $60
    nop                                           ; $7946: $00
    add b                                         ; $7947: $80
    jp $9dfc                                      ; $7948: $c3 $fc $9d


    ld a, a                                       ; $794b: $7f
    ld [$2af7], sp                                ; $794c: $08 $f7 $2a
    nop                                           ; $794f: $00
    rst $38                                       ; $7950: $ff
    ld bc, $a80c                                  ; $7951: $01 $0c $a8
    nop                                           ; $7954: $00
    ld b, d                                       ; $7955: $42
    ld de, $00aa                                  ; $7956: $11 $aa $00
    nop                                           ; $7959: $00
    ld b, l                                       ; $795a: $45
    db $10                                        ; $795b: $10
    adc [hl]                                      ; $795c: $8e
    ldh a, [$7b]                                  ; $795d: $f0 $7b
    rst $38                                       ; $795f: $ff
    or e                                          ; $7960: $b3
    nop                                           ; $7961: $00
    add l                                         ; $7962: $85
    rra                                           ; $7963: $1f
    rlca                                          ; $7964: $07
    ld a, [hl+]                                   ; $7965: $2a
    adc l                                         ; $7966: $8d
    push de                                       ; $7967: $d5
    jr jr_0a5_7974                                ; $7968: $18 $0a

    nop                                           ; $796a: $00
    dec [hl]                                      ; $796b: $35
    ld d, l                                       ; $796c: $55
    ld [$d4be], a                                 ; $796d: $ea $be $d4
    ld d, l                                       ; $7970: $55
    xor d                                         ; $7971: $aa
    ld a, b                                       ; $7972: $78
    nop                                           ; $7973: $00

jr_0a5_7974:
    rst $38                                       ; $7974: $ff

jr_0a5_7975:
    pop hl                                        ; $7975: $e1
    cp $7c                                        ; $7976: $fe $7c
    rra                                           ; $7978: $1f
    ld de, $a440                                  ; $7979: $11 $40 $a4
    nop                                           ; $797c: $00
    ld bc, $8850                                  ; $797d: $01 $50 $88
    add d                                         ; $7980: $82
    nop                                           ; $7981: $00
    dec h                                         ; $7982: $25
    db $10                                        ; $7983: $10
    jp z, RST_00                                  ; $7984: $ca $00 $00

    ld d, [hl]                                    ; $7987: $56
    xor e                                         ; $7988: $ab
    adc h                                         ; $7989: $8c
    rst $30                                       ; $798a: $f7
    xor [hl]                                      ; $798b: $ae
    ld a, a                                       ; $798c: $7f
    ld b, $00                                     ; $798d: $06 $00
    ld bc, $802a                                  ; $798f: $01 $2a $80
    sub d                                         ; $7992: $92
    ld b, d                                       ; $7993: $42
    nop                                           ; $7994: $00
    inc d                                         ; $7995: $14

jr_0a5_7996:
    ld c, e                                       ; $7996: $4b
    nop                                           ; $7997: $00
    add b                                         ; $7998: $80
    ld c, c                                       ; $7999: $49
    rst $30                                       ; $799a: $f7
    inc bc                                        ; $799b: $03
    cp $12                                        ; $799c: $fe $12
    db $ed                                        ; $799e: $ed
    and b                                         ; $799f: $a0
    nop                                           ; $79a0: $00
    rst $38                                       ; $79a1: $ff
    add hl, de                                    ; $79a2: $19
    rlca                                          ; $79a3: $07
    ld b, d                                       ; $79a4: $42
    add e                                         ; $79a5: $83
    dec l                                         ; $79a6: $2d
    ld b, [hl]                                    ; $79a7: $46
    ld a, [de]                                    ; $79a8: $1a
    nop                                           ; $79a9: $00
    dec c                                         ; $79aa: $0d
    ld [c], a                                     ; $79ab: $e2
    db $fd                                        ; $79ac: $fd
    cp a                                          ; $79ad: $bf
    rra                                           ; $79ae: $1f
    ld d, l                                       ; $79af: $55
    nop                                           ; $79b0: $00
    xor e                                         ; $79b1: $ab
    nop                                           ; $79b2: $00
    inc d                                         ; $79b3: $14
    ld d, l                                       ; $79b4: $55
    add c                                         ; $79b5: $81
    cp d                                          ; $79b6: $ba
    ld d, $56                                     ; $79b7: $16 $56
    ld b, h                                       ; $79b9: $44
    xor h                                         ; $79ba: $ac
    nop                                           ; $79bb: $00
    ld [$4120], sp                                ; $79bc: $08 $20 $41
    add h                                         ; $79bf: $84
    ldh a, [rRP]                                  ; $79c0: $f0 $56
    ld a, a                                       ; $79c2: $7f
    adc $00                                       ; $79c3: $ce $00
    add c                                         ; $79c5: $81
    dec b                                         ; $79c6: $05
    ld d, b                                       ; $79c7: $50
    ld [$a202], sp                                ; $79c8: $08 $02 $a2
    ld [$0014], sp                                ; $79cb: $08 $14 $00
    ld b, b                                       ; $79ce: $40
    ld d, a                                       ; $79cf: $57
    ld a, [de]                                    ; $79d0: $1a
    dec hl                                        ; $79d1: $2b
    ld sp, $ea55                                  ; $79d2: $31 $55 $ea
    or b                                          ; $79d5: $b0
    nop                                           ; $79d6: $00
    rst $38                                       ; $79d7: $ff
    ld a, d                                       ; $79d8: $7a
    rlca                                          ; $79d9: $07
    adc [hl]                                      ; $79da: $8e
    jr nz, jr_0a5_79e5                            ; $79db: $20 $08

    inc d                                         ; $79dd: $14
    sub b                                         ; $79de: $90
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    pop af                                        ; $79e1: $f1
    cp $ef                                        ; $79e2: $fe $ef
    rra                                           ; $79e4: $1f

jr_0a5_79e5:
    sub $29                                       ; $79e5: $d6 $29
    ld l, a                                       ; $79e7: $6f
    nop                                           ; $79e8: $00
    sub b                                         ; $79e9: $90
    rst $30                                       ; $79ea: $f7
    ld a, [bc]                                    ; $79eb: $0a
    ld l, e                                       ; $79ec: $6b
    sub h                                         ; $79ed: $94
    db $dd                                        ; $79ee: $dd
    and d                                         ; $79ef: $a2
    rst $28                                       ; $79f0: $ef
    nop                                           ; $79f1: $00
    ld de, $0188                                  ; $79f2: $11 $88 $01
    adc h                                         ; $79f5: $8c
    ldh a, [$9c]                                  ; $79f6: $f0 $9c
    ld a, a                                       ; $79f8: $7f
    xor $00                                       ; $79f9: $ee $00
    ld de, $a45b                                  ; $79fb: $11 $5b $a4
    db $ed                                        ; $79fe: $ed
    ld [de], a                                    ; $79ff: $12

jr_0a5_7a00:
    rst $30                                       ; $7a00: $f7
    ld [$00dd], sp                                ; $7a01: $08 $dd $00
    ld h, d                                       ; $7a04: $62
    jr nc, jr_0a5_7a51                            ; $7a05: $30 $4a

    db $10                                        ; $7a07: $10

jr_0a5_7a08:
    inc b                                         ; $7a08: $04
    jr nc, @-$3d                                  ; $7a09: $30 $c1

    ldh a, [rP1]                                  ; $7a0b: $f0 $00
    rst $38                                       ; $7a0d: $ff
    cp e                                          ; $7a0e: $bb
    ld d, a                                       ; $7a0f: $57
    rst $38                                       ; $7a10: $ff
    jr z, jr_0a5_7a00                             ; $7a11: $28 $ed

    ld d, d                                       ; $7a13: $52
    rst $30                                       ; $7a14: $f7
    nop                                           ; $7a15: $00
    adc b                                         ; $7a16: $88
    nop                                           ; $7a17: $00
    rst $38                                       ; $7a18: $ff
    ld d, b                                       ; $7a19: $50
    xor [hl]                                      ; $7a1a: $ae
    ld b, l                                       ; $7a1b: $45
    db $fc                                        ; $7a1c: $fc
    ld [$f808], sp                                ; $7a1d: $08 $08 $f8
    pop af                                        ; $7a20: $f1
    cp $bb                                        ; $7a21: $fe $bb
    adc b                                         ; $7a23: $88
    ld bc, $55ee                                  ; $7a24: $01 $ee $55
    ld b, b                                       ; $7a27: $40
    nop                                           ; $7a28: $00
    ld b, l                                       ; $7a29: $45
    xor d                                         ; $7a2a: $aa
    nop                                           ; $7a2b: $00
    ld d, a                                       ; $7a2c: $57
    ld [bc], a                                    ; $7a2d: $02
    and b                                         ; $7a2e: $a0
    ld [$08c2], sp                                ; $7a2f: $08 $c2 $08
    inc b                                         ; $7a32: $04
    adc l                                         ; $7a33: $8d
    ldh a, [$7e]                                  ; $7a34: $f0 $7e
    adc b                                         ; $7a36: $88
    ld bc, $073f                                  ; $7a37: $01 $3f $07
    adc b                                         ; $7a3a: $88
    nop                                           ; $7a3b: $00
    jr nz, jr_0a5_7a93                            ; $7a3c: $20 $55

    nop                                           ; $7a3e: $00
    ld [bc], a                                    ; $7a3f: $02
    inc d                                         ; $7a40: $14
    add hl, hl                                    ; $7a41: $29
    add b                                         ; $7a42: $80
    ld b, h                                       ; $7a43: $44
    nop                                           ; $7a44: $00
    ld [bc], a                                    ; $7a45: $02
    jr nc, jr_0a5_7a08                            ; $7a46: $30 $c0

    ret c                                         ; $7a48: $d8

    rst $38                                       ; $7a49: $ff
    ld [hl], l                                    ; $7a4a: $75
    ld [hl+], a                                   ; $7a4b: $22
    ld [$5100], a                                 ; $7a4c: $ea $00 $51
    ld d, l                                       ; $7a4f: $55
    xor d                                         ; $7a50: $aa

jr_0a5_7a51:
    xor d                                         ; $7a51: $aa
    ld b, l                                       ; $7a52: $45
    pop hl                                        ; $7a53: $e1
    cp $df                                        ; $7a54: $fe $df
    nop                                           ; $7a56: $00
    ccf                                           ; $7a57: $3f
    add a                                         ; $7a58: $87
    inc b                                         ; $7a59: $04
    ld e, $a9                                     ; $7a5a: $1e $a9
    ld e, l                                       ; $7a5c: $5d
    jr z, @-$53                                   ; $7a5d: $28 $ab

    nop                                           ; $7a5f: $00
    ld b, l                                       ; $7a60: $45
    rst $10                                       ; $7a61: $d7
    xor d                                         ; $7a62: $aa
    xor a                                         ; $7a63: $af
    dec d                                         ; $7a64: $15
    ld e, l                                       ; $7a65: $5d
    xor b                                         ; $7a66: $a8
    ld a, [de]                                    ; $7a67: $1a
    nop                                           ; $7a68: $00
    ldh a, [$d6]                                  ; $7a69: $f0 $d6
    ld a, a                                       ; $7a6b: $7f
    xor l                                         ; $7a6c: $ad
    ld d, e                                       ; $7a6d: $53
    jp nc, $8a87                                  ; $7a6e: $d2 $87 $8a

    nop                                           ; $7a71: $00
    jr nz, jr_0a5_7ab8                            ; $7a72: $20 $44

    ld de, $02a8                                  ; $7a74: $11 $a8 $02
    dec b                                         ; $7a77: $05
    ld d, b                                       ; $7a78: $50
    xor b                                         ; $7a79: $a8
    nop                                           ; $7a7a: $00
    ld [bc], a                                    ; $7a7b: $02
    dec d                                         ; $7a7c: $15
    ret nz                                        ; $7a7d: $c0

    ld a, b                                       ; $7a7e: $78
    rst $38                                       ; $7a7f: $ff
    dec c                                         ; $7a80: $0d
    ld d, d                                       ; $7a81: $52
    ld [hl], a                                    ; $7a82: $77
    nop                                           ; $7a83: $00
    jr z, jr_0a5_7af3                             ; $7a84: $28 $6d

    ld d, d                                       ; $7a86: $52
    cp a                                          ; $7a87: $bf
    pop bc                                        ; $7a88: $c1
    db $e3                                        ; $7a89: $e3
    db $fc                                        ; $7a8a: $fc
    ei                                            ; $7a8b: $fb
    nop                                           ; $7a8c: $00
    rra                                           ; $7a8d: $1f
    ld l, h                                       ; $7a8e: $6c
    or a                                          ; $7a8f: $b7
    ret c                                         ; $7a90: $d8

    cpl                                           ; $7a91: $2f
    ld d, a                                       ; $7a92: $57

jr_0a5_7a93:
    xor b                                         ; $7a93: $a8
    cp a                                          ; $7a94: $bf
    nop                                           ; $7a95: $00
    ld b, h                                       ; $7a96: $44
    rst $28                                       ; $7a97: $ef
    db $10                                        ; $7a98: $10
    cp [hl]                                       ; $7a99: $be
    ld b, c                                       ; $7a9a: $41
    ei                                            ; $7a9b: $fb
    inc b                                         ; $7a9c: $04
    adc l                                         ; $7a9d: $8d
    nop                                           ; $7a9e: $00
    ld a, [c]                                     ; $7a9f: $f2
    ld e, [hl]                                    ; $7aa0: $5e
    rst $38                                       ; $7aa1: $ff
    ld bc, $daff                                  ; $7aa2: $01 $ff $da
    daa                                           ; $7aa5: $27
    ld a, l                                       ; $7aa6: $7d
    nop                                           ; $7aa7: $00
    add d                                         ; $7aa8: $82
    jp c, $f725                                   ; $7aa9: $da $25 $f7

    ld a, [bc]                                    ; $7aac: $0a
    ld a, a                                       ; $7aad: $7f
    sub b                                         ; $7aae: $90
    push af                                       ; $7aaf: $f5
    ld [$3f0a], sp                                ; $7ab0: $08 $0a $3f
    ret nz                                        ; $7ab3: $c0

    ld hl, sp+$7c                                 ; $7ab4: $f8 $7c
    inc bc                                        ; $7ab6: $03
    ld a, [hl+]                                   ; $7ab7: $2a

jr_0a5_7ab8:
    push de                                       ; $7ab8: $d5
    add b                                         ; $7ab9: $80
    nop                                           ; $7aba: $00
    rst $38                                       ; $7abb: $ff
    ld a, [bc]                                    ; $7abc: $0a
    push af                                       ; $7abd: $f5
    add b                                         ; $7abe: $80
    rst $38                                       ; $7abf: $ff
    ld e, $ff                                     ; $7ac0: $1e $ff
    xor d                                         ; $7ac2: $aa
    ld bc, $01d5                                  ; $7ac3: $01 $d5 $01
    cp $00                                        ; $7ac6: $fe $00
    rst $38                                       ; $7ac8: $ff
    xor d                                         ; $7ac9: $aa

jr_0a5_7aca:
    ld d, l                                       ; $7aca: $55
    inc b                                         ; $7acb: $04
    jr @+$4e                                      ; $7acc: $18 $4c

    ld d, a                                       ; $7ace: $57
    ld a, [bc]                                    ; $7acf: $0a
    nop                                           ; $7ad0: $00
    ld d, l                                       ; $7ad1: $55
    xor d                                         ; $7ad2: $aa
    db $10                                        ; $7ad3: $10
    ld [$0080], sp                                ; $7ad4: $08 $80 $00
    ld d, l                                       ; $7ad7: $55
    ld a, l                                       ; $7ad8: $7d
    nop                                           ; $7ad9: $00
    add b                                         ; $7ada: $80
    call nc, $80ff                                ; $7adb: $d4 $ff $80
    ld a, a                                       ; $7ade: $7f
    ld d, l                                       ; $7adf: $55
    xor d                                         ; $7ae0: $aa
    add b                                         ; $7ae1: $80
    ld [$07ff], sp                                ; $7ae2: $08 $ff $07
    ld hl, sp-$62                                 ; $7ae5: $f8 $9e
    inc [hl]                                      ; $7ae7: $34
    nop                                           ; $7ae8: $00
    sub l                                         ; $7ae9: $95
    ld [$0800], a                                 ; $7aea: $ea $00 $08
    rst $38                                       ; $7aed: $ff
    sbc [hl]                                      ; $7aee: $9e
    ldh [$0a], a                                  ; $7aef: $e0 $0a
    ld a, $00                                     ; $7af1: $3e $00

jr_0a5_7af3:
    ld d, l                                       ; $7af3: $55
    nop                                           ; $7af4: $00
    add d                                         ; $7af5: $82
    sub d                                         ; $7af6: $92
    ld a, [hl+]                                   ; $7af7: $2a
    jr z, jr_0a5_7afa                             ; $7af8: $28 $00

jr_0a5_7afa:
    db $fd                                        ; $7afa: $fd
    inc [hl]                                      ; $7afb: $34
    ld [$af00], sp                                ; $7afc: $08 $00 $af
    ld a, [hl-]                                   ; $7aff: $3a
    db $10                                        ; $7b00: $10
    ld [bc], a                                    ; $7b01: $02
    ld [$aafd], sp                                ; $7b02: $08 $fd $aa
    nop                                           ; $7b05: $00
    ld c, c                                       ; $7b06: $49
    ld d, h                                       ; $7b07: $54
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    rst $38                                       ; $7b0a: $ff
    add d                                         ; $7b0b: $82
    add hl, bc                                    ; $7b0c: $09
    db $fd                                        ; $7b0d: $fd
    nop                                           ; $7b0e: $00
    rst $38                                       ; $7b0f: $ff
    cp l                                          ; $7b10: $bd
    ld l, b                                       ; $7b11: $68
    nop                                           ; $7b12: $00
    sbc l                                         ; $7b13: $9d
    ldh [$5e], a                                  ; $7b14: $e0 $5e
    ld [$1501], sp                                ; $7b16: $08 $01 $15
    ld [$55aa], a                                 ; $7b19: $ea $aa $55
    rlca                                          ; $7b1c: $07
    ld hl, sp+$50                                 ; $7b1d: $f8 $50
    ld a, [hl+]                                   ; $7b1f: $2a
    db $10                                        ; $7b20: $10
    pop bc                                        ; $7b21: $c1
    db $fc                                        ; $7b22: $fc
    inc bc                                        ; $7b23: $03
    ld d, h                                       ; $7b24: $54
    nop                                           ; $7b25: $00
    xor b                                         ; $7b26: $a8
    ld d, a                                       ; $7b27: $57
    rst $38                                       ; $7b28: $ff
    nop                                           ; $7b29: $00
    ld a, [bc]                                    ; $7b2a: $0a
    db $10                                        ; $7b2b: $10
    jr nz, @+$43                                  ; $7b2c: $20 $41

    xor d                                         ; $7b2e: $aa
    ld bc, $ab06                                  ; $7b2f: $01 $06 $ab
    rst $18                                       ; $7b32: $df
    push de                                       ; $7b33: $d5
    cp e                                          ; $7b34: $bb
    xor d                                         ; $7b35: $aa
    inc b                                         ; $7b36: $04
    nop                                           ; $7b37: $00
    scf                                           ; $7b38: $37
    xor e                                         ; $7b39: $ab
    rst $38                                       ; $7b3a: $ff
    ld [$1100], sp                                ; $7b3b: $08 $00 $11
    ld d, $5f                                     ; $7b3e: $16 $5f
    rla                                           ; $7b40: $17
    ld b, $49                                     ; $7b41: $06 $49
    dec e                                         ; $7b43: $1d
    db $10                                        ; $7b44: $10
    jr jr_0a5_7aca                                ; $7b45: $18 $83

    ld h, $3e                                     ; $7b47: $26 $3e
    xor e                                         ; $7b49: $ab
    rst $38                                       ; $7b4a: $ff
    rst $18                                       ; $7b4b: $df
    cp e                                          ; $7b4c: $bb
    cp e                                          ; $7b4d: $bb
    dec [hl]                                      ; $7b4e: $35
    ld b, $04                                     ; $7b4f: $06 $04

jr_0a5_7b51:
    jr z, jr_0a5_7b53                             ; $7b51: $28 $00

jr_0a5_7b53:
    ld [c], a                                     ; $7b53: $e2
    ld a, d                                       ; $7b54: $7a
    ld a, [c]                                     ; $7b55: $f2
    ld a, [hl-]                                   ; $7b56: $3a
    jp nc, $b23a                                  ; $7b57: $d2 $3a $b2

    ld a, d                                       ; $7b5a: $7a
    ld [de], a                                    ; $7b5b: $12
    ld b, d                                       ; $7b5c: $42
    ld a, [$0282]                                 ; $7b5d: $fa $82 $02
    nop                                           ; $7b60: $00
    ld [bc], a                                    ; $7b61: $02
    ld a, [$3e30]                                 ; $7b62: $fa $30 $3e
    ld [hl], a                                    ; $7b65: $77
    nop                                           ; $7b66: $00
    add b                                         ; $7b67: $80
    db $dd                                        ; $7b68: $dd
    nop                                           ; $7b69: $00
    ld a, d                                       ; $7b6a: $7a
    add b                                         ; $7b6b: $80
    add b                                         ; $7b6c: $80
    ld [$0080], sp                                ; $7b6d: $08 $80 $00
    db $10                                        ; $7b70: $10
    add b                                         ; $7b71: $80
    add hl, hl                                    ; $7b72: $29
    add l                                         ; $7b73: $85
    ld d, d                                       ; $7b74: $52
    add d                                         ; $7b75: $82
    dec h                                         ; $7b76: $25
    add b                                         ; $7b77: $80
    ld h, b                                       ; $7b78: $60
    ld [bc], a                                    ; $7b79: $02
    inc a                                         ; $7b7a: $3c
    ld c, $28                                     ; $7b7b: $0e $28
    ld c, $12                                     ; $7b7d: $0e $12
    add hl, hl                                    ; $7b7f: $29
    add hl, hl                                    ; $7b80: $29
    ld d, d                                       ; $7b81: $52
    ld c, c                                       ; $7b82: $49
    ld d, $20                                     ; $7b83: $16 $20
    nop                                           ; $7b85: $00
    add hl, bc                                    ; $7b86: $09
    inc [hl]                                      ; $7b87: $34
    ld c, $02                                     ; $7b88: $0e $02
    inc [hl]                                      ; $7b8a: $34
    nop                                           ; $7b8b: $00
    inc b                                         ; $7b8c: $04
    jr jr_0a5_7b51                                ; $7b8d: $18 $c2

    nop                                           ; $7b8f: $00
    ld a, [$fa7a]                                 ; $7b90: $fa $7a $fa
    or d                                          ; $7b93: $b2
    ld a, d                                       ; $7b94: $7a
    db $f4                                        ; $7b95: $f4
    nop                                           ; $7b96: $00
    ld l, c                                       ; $7b97: $69
    adc [hl]                                      ; $7b98: $8e
    inc a                                         ; $7b99: $3c
    dec b                                         ; $7b9a: $05
    ld b, h                                       ; $7b9b: $44
    add b                                         ; $7b9c: $80
    ldh [$c4], a                                  ; $7b9d: $e0 $c4
    inc b                                         ; $7b9f: $04
    ld b, b                                       ; $7ba0: $40
    dec c                                         ; $7ba1: $0d
    ld [hl], b                                    ; $7ba2: $70
    ld c, $81                                     ; $7ba3: $0e $81
    nop                                           ; $7ba5: $00
    ld a, [bc]                                    ; $7ba6: $0a
    adc d                                         ; $7ba7: $8a
    dec h                                         ; $7ba8: $25
    add [hl]                                      ; $7ba9: $86
    ld d, c                                       ; $7baa: $51
    adc b                                         ; $7bab: $88
    ld h, $84                                     ; $7bac: $26 $84
    nop                                           ; $7bae: $00
    ld c, b                                       ; $7baf: $48
    add h                                         ; $7bb0: $84
    ld [$1000], sp                                ; $7bb1: $08 $00 $10
    db $10                                        ; $7bb4: $10
    jr nz, jr_0a5_7be7                            ; $7bb5: $20 $30

    ld bc, $3181                                  ; $7bb7: $01 $81 $31
    ld [$2881], sp                                ; $7bba: $08 $81 $28
    ld [$3305], sp                                ; $7bbd: $08 $05 $33
    ld c, $1d                                     ; $7bc0: $0e $1d
    ld [$3af2], a                                 ; $7bc2: $ea $f2 $3a
    ld b, d                                       ; $7bc5: $42
    jr nc, jr_0a5_7c14                            ; $7bc6: $30 $4c

    ld [$3d40], sp                                ; $7bc8: $08 $40 $3d
    ld c, b                                       ; $7bcb: $48
    add b                                         ; $7bcc: $80
    dec b                                         ; $7bcd: $05
    ld a, [bc]                                    ; $7bce: $0a
    ld d, d                                       ; $7bcf: $52
    add b                                         ; $7bd0: $80
    add b                                         ; $7bd1: $80
    ld b, h                                       ; $7bd2: $44
    ld d, b                                       ; $7bd3: $50
    ld e, [hl]                                    ; $7bd4: $5e
    nop                                           ; $7bd5: $00
    ld d, b                                       ; $7bd6: $50
    ld c, $a2                                     ; $7bd7: $0e $a2
    nop                                           ; $7bd9: $00
    ld b, c                                       ; $7bda: $41
    ld b, c                                       ; $7bdb: $41
    xor d                                         ; $7bdc: $aa
    xor d                                         ; $7bdd: $aa
    rst $18                                       ; $7bde: $df
    rst $18                                       ; $7bdf: $df
    rst $28                                       ; $7be0: $ef
    rst $28                                       ; $7be1: $ef
    jr nz, @+$01                                  ; $7be2: $20 $ff

    rst $38                                       ; $7be4: $ff
    inc a                                         ; $7be5: $3c
    ld b, b                                       ; $7be6: $40

jr_0a5_7be7:
    ld [bc], a                                    ; $7be7: $02
    cp $fe                                        ; $7be8: $fe $fe
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    push hl                                       ; $7bed: $e5
    nop                                           ; $7bee: $00
    ld e, d                                       ; $7bef: $5a
    add b                                         ; $7bf0: $80
    or $00                                        ; $7bf1: $f6 $00
    ld a, l                                       ; $7bf3: $7d
    add b                                         ; $7bf4: $80
    rrca                                          ; $7bf5: $0f
    ei                                            ; $7bf6: $fb
    nop                                           ; $7bf7: $00
    ld a, a                                       ; $7bf8: $7f
    add b                                         ; $7bf9: $80
    ld h, b                                       ; $7bfa: $60
    ld h, [hl]                                    ; $7bfb: $66
    ld e, e                                       ; $7bfc: $5b
    ld c, $60                                     ; $7bfd: $0e $60
    ld c, [hl]                                    ; $7bff: $4e
    dec sp                                        ; $7c00: $3b
    rrca                                          ; $7c01: $0f
    add b                                         ; $7c02: $80
    rst $30                                       ; $7c03: $f7
    ld d, $08                                     ; $7c04: $16 $08
    db $10                                        ; $7c06: $10
    ld [de], a                                    ; $7c07: $12
    ld hl, $9023                                  ; $7c08: $21 $23 $90
    ldh [rP1], a                                  ; $7c0b: $e0 $00
    ld [bc], a                                    ; $7c0d: $02
    ld b, b                                       ; $7c0e: $40
    and b                                         ; $7c0f: $a0
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    rlca                                          ; $7c12: $07
    rlca                                          ; $7c13: $07

jr_0a5_7c14:
    dec hl                                        ; $7c14: $2b
    nop                                           ; $7c15: $00

jr_0a5_7c16:
    ld c, a                                       ; $7c16: $4f
    ld d, [hl]                                    ; $7c17: $56
    cp [hl]                                       ; $7c18: $be
    adc e                                         ; $7c19: $8b
    ld e, e                                       ; $7c1a: $5b
    rla                                           ; $7c1b: $17
    cp a                                          ; $7c1c: $bf
    dec hl                                        ; $7c1d: $2b
    nop                                           ; $7c1e: $00
    dec sp                                        ; $7c1f: $3b
    ld e, a                                       ; $7c20: $5f
    ld a, a                                       ; $7c21: $7f
    scf                                           ; $7c22: $37
    ld [hl], a                                    ; $7c23: $77
    rst $38                                       ; $7c24: $ff
    cp $7f                                        ; $7c25: $fe $7f
    db $10                                        ; $7c27: $10
    ld a, [hl]                                    ; $7c28: $7e
    rst $38                                       ; $7c29: $ff
    cp $02                                        ; $7c2a: $fe $02
    jr c, jr_0a5_7c38                             ; $7c2c: $38 $0a

    ld a, [hl+]                                   ; $7c2e: $2a
    ld sp, $0015                                  ; $7c2f: $31 $15 $00
    inc c                                         ; $7c32: $0c
    ld a, [hl-]                                   ; $7c33: $3a
    ld b, $99                                     ; $7c34: $06 $99
    sbc e                                         ; $7c36: $9b
    inc h                                         ; $7c37: $24

jr_0a5_7c38:
    adc $1f                                       ; $7c38: $ce $1f
    nop                                           ; $7c3a: $00
    cpl                                           ; $7c3b: $2f
    ld l, a                                       ; $7c3c: $6f
    ld d, a                                       ; $7c3d: $57
    ld d, a                                       ; $7c3e: $57
    cpl                                           ; $7c3f: $2f
    cpl                                           ; $7c40: $2f
    ld a, a                                       ; $7c41: $7f
    ld a, a                                       ; $7c42: $7f
    inc b                                         ; $7c43: $04
    cp a                                          ; $7c44: $bf
    cp a                                          ; $7c45: $bf
    xor $ff                                       ; $7c46: $ee $ff
    db $dd                                        ; $7c48: $dd
    adc d                                         ; $7c49: $8a
    ld bc, $ffd7                                  ; $7c4a: $01 $d7 $ff
    ld l, b                                       ; $7c4d: $68
    cp a                                          ; $7c4e: $bf
    rst $28                                       ; $7c4f: $ef
    dec b                                         ; $7c50: $05
    ld l, $18                                     ; $7c51: $2e $18
    ld a, a                                       ; $7c53: $7f
    inc [hl]                                      ; $7c54: $34
    jr nz, jr_0a5_7c16                            ; $7c55: $20 $bf

    cp a                                          ; $7c57: $bf
    ld a, a                                       ; $7c58: $7f
    ld c, $7f                                     ; $7c59: $0e $7f
    rst $28                                       ; $7c5b: $ef
    rst $28                                       ; $7c5c: $ef
    ld e, a                                       ; $7c5d: $5f
    sub c                                         ; $7c5e: $91
    ld bc, $607a                                  ; $7c5f: $01 $7a $60
    db $10                                        ; $7c62: $10
    ld d, $ea                                     ; $7c63: $16 $ea
    nop                                           ; $7c65: $00
    ld [$fcfd], a                                 ; $7c66: $ea $fd $fc
    ei                                            ; $7c69: $fb
    ld a, [$f4f5]                                 ; $7c6a: $fa $f5 $f4
    xor c                                         ; $7c6d: $a9
    nop                                           ; $7c6e: $00
    xor b                                         ; $7c6f: $a8
    ld d, l                                       ; $7c70: $55
    ld d, h                                       ; $7c71: $54
    xor c                                         ; $7c72: $a9
    xor b                                         ; $7c73: $a8
    ld b, c                                       ; $7c74: $41
    ld b, b                                       ; $7c75: $40
    ld de, $1000                                  ; $7c76: $11 $00 $10
    db $f4                                        ; $7c79: $f4
    db $f4                                        ; $7c7a: $f4
    add sp, -$18                                  ; $7c7b: $e8 $e8
    pop af                                        ; $7c7d: $f1
    pop af                                        ; $7c7e: $f1
    xor d                                         ; $7c7f: $aa
    ld de, $50aa                                  ; $7c80: $11 $aa $50
    ld d, b                                       ; $7c83: $50
    jr nz, jr_0a5_7ca4                            ; $7c84: $20 $1e

    ld hl, $8120                                  ; $7c86: $21 $20 $81
    ld e, $16                                     ; $7c89: $1e $16
    sbc c                                         ; $7c8b: $99
    jr nz, jr_0a5_7cbc                            ; $7c8c: $20 $2e

    ld [hl], l                                    ; $7c8e: $75
    adc d                                         ; $7c8f: $8a
    jr nz, jr_0a5_7cef                            ; $7c90: $20 $5d

    ld [hl], b                                    ; $7c92: $70
    ld a, [de]                                    ; $7c93: $1a
    and b                                         ; $7c94: $a0
    ld e, a                                       ; $7c95: $5f
    inc e                                         ; $7c96: $1c
    ld a, [bc]                                    ; $7c97: $0a
    ld [hl], d                                    ; $7c98: $72
    nop                                           ; $7c99: $00
    inc l                                         ; $7c9a: $2c
    dec b                                         ; $7c9b: $05
    add b                                         ; $7c9c: $80
    ld a, [de]                                    ; $7c9d: $1a
    ld a, [bc]                                    ; $7c9e: $0a
    nop                                           ; $7c9f: $00
    nop                                           ; $7ca0: $00
    sub d                                         ; $7ca1: $92
    sbc d                                         ; $7ca2: $9a
    ld [bc], a                                    ; $7ca3: $02

jr_0a5_7ca4:
    ld d, h                                       ; $7ca4: $54
    add hl, hl                                    ; $7ca5: $29
    xor e                                         ; $7ca6: $ab
    ld bc, $0a96                                  ; $7ca7: $01 $96 $0a
    xor e                                         ; $7caa: $ab
    ld a, [de]                                    ; $7cab: $1a
    nop                                           ; $7cac: $00
    inc bc                                        ; $7cad: $03
    db $f4                                        ; $7cae: $f4
    or [hl]                                       ; $7caf: $b6
    inc b                                         ; $7cb0: $04
    ld bc, $ff00                                  ; $7cb1: $01 $00 $ff
    adc d                                         ; $7cb4: $8a
    ld [hl], l                                    ; $7cb5: $75
    ld d, l                                       ; $7cb6: $55
    nop                                           ; $7cb7: $00
    cp $a4                                        ; $7cb8: $fe $a4
    ld [hl+], a                                   ; $7cba: $22
    nop                                           ; $7cbb: $00

jr_0a5_7cbc:
    xor e                                         ; $7cbc: $ab
    nop                                           ; $7cbd: $00
    xor b                                         ; $7cbe: $a8
    rst $38                                       ; $7cbf: $ff
    xor e                                         ; $7cc0: $ab
    ld d, a                                       ; $7cc1: $57
    db $f4                                        ; $7cc2: $f4
    inc c                                         ; $7cc3: $0c
    nop                                           ; $7cc4: $00
    xor e                                         ; $7cc5: $ab
    ei                                            ; $7cc6: $fb
    xor e                                         ; $7cc7: $ab
    ld e, e                                       ; $7cc8: $5b
    inc c                                         ; $7cc9: $0c
    ld hl, sp-$5b                                 ; $7cca: $f8 $a5
    ld e, [hl]                                    ; $7ccc: $5e
    nop                                           ; $7ccd: $00
    ld b, $ff                                     ; $7cce: $06 $ff
    ld a, [hl+]                                   ; $7cd0: $2a
    db $fc                                        ; $7cd1: $fc
    pop hl                                        ; $7cd2: $e1
    rst $18                                       ; $7cd3: $df
    jr nz, jr_0a5_7d15                            ; $7cd4: $20 $3f

    nop                                           ; $7cd6: $00
    db $dd                                        ; $7cd7: $dd
    rst $18                                       ; $7cd8: $df
    jp c, Jump_000_31d5                           ; $7cd9: $da $d5 $31

    rra                                           ; $7cdc: $1f
    xor b                                         ; $7cdd: $a8
    ld [hl], a                                    ; $7cde: $77
    ld [$ff61], sp                                ; $7cdf: $08 $61 $ff
    ld d, b                                       ; $7ce2: $50
    ccf                                           ; $7ce3: $3f
    ld d, h                                       ; $7ce4: $54
    ld [$55aa], sp                                ; $7ce5: $08 $aa $55
    rst $38                                       ; $7ce8: $ff
    jr z, jr_0a5_7ceb                             ; $7ce9: $28 $00

jr_0a5_7ceb:
    ret nc                                        ; $7ceb: $d0

    add sp, $02                                   ; $7cec: $e8 $02
    ld d, a                                       ; $7cee: $57

jr_0a5_7cef:
    or c                                          ; $7cef: $b1
    ld b, $b4                                     ; $7cf0: $06 $b4
    ld e, b                                       ; $7cf2: $58
    ld e, b                                       ; $7cf3: $58
    nop                                           ; $7cf4: $00
    or b                                          ; $7cf5: $b0
    cp b                                          ; $7cf6: $b8
    ld d, b                                       ; $7cf7: $50
    ldh a, [rNR23]                                ; $7cf8: $f0 $18
    ld e, h                                       ; $7cfa: $5c
    ld hl, sp-$53                                 ; $7cfb: $f8 $ad
    nop                                           ; $7cfd: $00
    ld d, [hl]                                    ; $7cfe: $56
    dec bc                                        ; $7cff: $0b
    rst $38                                       ; $7d00: $ff
    dec b                                         ; $7d01: $05
    rst $38                                       ; $7d02: $ff
    dec hl                                        ; $7d03: $2b
    dec e                                         ; $7d04: $1d
    jr c, jr_0a5_7d07                             ; $7d05: $38 $00

jr_0a5_7d07:
    rrca                                          ; $7d07: $0f
    add hl, sp                                    ; $7d08: $39
    rrca                                          ; $7d09: $0f
    ld l, b                                       ; $7d0a: $68
    rra                                           ; $7d0b: $1f
    db $dd                                        ; $7d0c: $dd
    ccf                                           ; $7d0d: $3f
    ld [hl-], a                                   ; $7d0e: $32
    add hl, de                                    ; $7d0f: $19
    db $fd                                        ; $7d10: $fd
    jp hl                                         ; $7d11: $e9


    rst $38                                       ; $7d12: $ff
    and [hl]                                      ; $7d13: $a6
    ld [bc], a                                    ; $7d14: $02

jr_0a5_7d15:
    ld a, [de]                                    ; $7d15: $1a
    rrca                                          ; $7d16: $0f
    rst $38                                       ; $7d17: $ff
    push af                                       ; $7d18: $f5
    inc sp                                        ; $7d19: $33
    ld bc, $7080                                  ; $7d1a: $01 $80 $70
    ld a, [hl+]                                   ; $7d1d: $2a
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    adc e                                         ; $7d20: $8b
    push af                                       ; $7d21: $f5
    ld [hl], l                                    ; $7d22: $75
    db $db                                        ; $7d23: $db
    adc e                                         ; $7d24: $8b
    ld b, l                                       ; $7d25: $45
    db $fd                                        ; $7d26: $fd
    inc b                                         ; $7d27: $04
    ld [$dff5], sp                                ; $7d28: $08 $f5 $df
    rlc h                                         ; $7d2b: $cb $04
    nop                                           ; $7d2d: $00
    db $db                                        ; $7d2e: $db
    ld de, $2907                                  ; $7d2f: $11 $07 $29
    rst $18                                       ; $7d32: $df
    rst $38                                       ; $7d33: $ff
    inc b                                         ; $7d34: $04
    jr @+$01                                      ; $7d35: $18 $ff

    adc $16                                       ; $7d37: $ce $16
    ret nz                                        ; $7d39: $c0

    cp a                                          ; $7d3a: $bf
    inc b                                         ; $7d3b: $04
    jr jr_0a5_7db6                                ; $7d3c: $18 $78

    pop bc                                        ; $7d3e: $c1
    ld b, c                                       ; $7d3f: $41
    ld bc, $1b52                                  ; $7d40: $01 $52 $1b
    add sp, $0e                                   ; $7d43: $e8 $0e
    call c, $010a                                 ; $7d45: $dc $0a $01
    cp $56                                        ; $7d48: $fe $56
    nop                                           ; $7d4a: $00
    xor c                                         ; $7d4b: $a9
    cp e                                          ; $7d4c: $bb
    ld b, b                                       ; $7d4d: $40
    ld l, l                                       ; $7d4e: $6d
    add b                                         ; $7d4f: $80
    db $db                                        ; $7d50: $db
    nop                                           ; $7d51: $00
    or a                                          ; $7d52: $b7
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    ld a, [bc]                                    ; $7d55: $0a
    nop                                           ; $7d56: $00
    ld d, l                                       ; $7d57: $55
    nop                                           ; $7d58: $00
    add e                                         ; $7d59: $83
    rst $38                                       ; $7d5a: $ff
    ld b, c                                       ; $7d5b: $41
    inc bc                                        ; $7d5c: $03
    cp a                                          ; $7d5d: $bf
    add e                                         ; $7d5e: $83
    ld a, a                                       ; $7d5f: $7f
    ld bc, $03ff                                  ; $7d60: $01 $ff $03
    sbc h                                         ; $7d63: $9c
    inc bc                                        ; $7d64: $03
    ld e, h                                       ; $7d65: $5c
    ld [$1000], sp                                ; $7d66: $08 $00 $10
    rst $28                                       ; $7d69: $ef
    ld hl, $d6df                                  ; $7d6a: $21 $df $d6
    add hl, hl                                    ; $7d6d: $29
    ld l, l                                       ; $7d6e: $6d
    inc de                                        ; $7d6f: $13
    nop                                           ; $7d70: $00
    cp $01                                        ; $7d71: $fe $01
    cp e                                          ; $7d73: $bb
    ld bc, $0176                                  ; $7d74: $01 $76 $01
    db $eb                                        ; $7d77: $eb
    nop                                           ; $7d78: $00
    ld bc, $aa55                                  ; $7d79: $01 $55 $aa
    ld d, l                                       ; $7d7c: $55
    add b                                         ; $7d7d: $80
    ld a, [hl+]                                   ; $7d7e: $2a
    add b                                         ; $7d7f: $80
    ld b, b                                       ; $7d80: $40
    xor e                                         ; $7d81: $ab
    ld [bc], a                                    ; $7d82: $02
    ld [hl+], a                                   ; $7d83: $22
    ld a, [bc]                                    ; $7d84: $0a
    add b                                         ; $7d85: $80
    ld a, [bc]                                    ; $7d86: $0a
    ld [$aa55], sp                                ; $7d87: $08 $55 $aa
    ld d, d                                       ; $7d8a: $52
    ld a, d                                       ; $7d8b: $7a
    ld b, $50                                     ; $7d8c: $06 $50
    ret z                                         ; $7d8e: $c8

    inc a                                         ; $7d8f: $3c
    nop                                           ; $7d90: $00
    db $dd                                        ; $7d91: $dd
    ld bc, $aa00                                  ; $7d92: $01 $00 $aa
    jr nz, jr_0a5_7d97                            ; $7d95: $20 $00

jr_0a5_7d97:
    xor d                                         ; $7d97: $aa
    nop                                           ; $7d98: $00
    dec d                                         ; $7d99: $15
    xor b                                         ; $7d9a: $a8
    adc h                                         ; $7d9b: $8c
    ld b, $90                                     ; $7d9c: $06 $90
    sub b                                         ; $7d9e: $90
    ld b, $55                                     ; $7d9f: $06 $55
    stop                                          ; $7da1: $10 $00
    push de                                       ; $7da3: $d5
    xor d                                         ; $7da4: $aa
    ld a, a                                       ; $7da5: $7f
    ret nz                                        ; $7da6: $c0

    ld c, a                                       ; $7da7: $4f
    rlca                                          ; $7da8: $07
    inc b                                         ; $7da9: $04
    jr c, @+$57                                   ; $7daa: $38 $55

    xor d                                         ; $7dac: $aa
    rst $38                                       ; $7dad: $ff
    nop                                           ; $7dae: $00
    add b                                         ; $7daf: $80
    ld a, a                                       ; $7db0: $7f
    rst $20                                       ; $7db1: $e7
    ldh a, [rTAC]                                 ; $7db2: $f0 $07
    ld c, d                                       ; $7db4: $4a
    daa                                           ; $7db5: $27

jr_0a5_7db6:
    db $10                                        ; $7db6: $10
    ld [$fe01], sp                                ; $7db7: $08 $01 $fe
    ld hl, sp+$07                                 ; $7dba: $f8 $07
    ld e, d                                       ; $7dbc: $5a
    cpl                                           ; $7dbd: $2f
    inc l                                         ; $7dbe: $2c
    ld b, b                                       ; $7dbf: $40
    ld a, [hl-]                                   ; $7dc0: $3a
    ret nz                                        ; $7dc1: $c0

    add b                                         ; $7dc2: $80
    rst $18                                       ; $7dc3: $df
    rlca                                          ; $7dc4: $07
    ld d, b                                       ; $7dc5: $50
    ld b, a                                       ; $7dc6: $47
    db $e3                                        ; $7dc7: $e3
    ld c, $aa                                     ; $7dc8: $0e $aa
    sbc [hl]                                      ; $7dca: $9e
    rlca                                          ; $7dcb: $07
    xor d                                         ; $7dcc: $aa
    inc sp                                        ; $7dcd: $33
    rst $38                                       ; $7dce: $ff
    push de                                       ; $7dcf: $d5
    pop af                                        ; $7dd0: $f1
    rlca                                          ; $7dd1: $07
    inc b                                         ; $7dd2: $04
    ld [$807f], sp                                ; $7dd3: $08 $7f $80
    ld c, a                                       ; $7dd6: $4f
    nop                                           ; $7dd7: $00
    and h                                         ; $7dd8: $a4
    inc bc                                        ; $7dd9: $03
    ld h, b                                       ; $7dda: $60
    ld d, l                                       ; $7ddb: $55
    and [hl]                                      ; $7ddc: $a6
    inc bc                                        ; $7ddd: $03
    inc b                                         ; $7dde: $04
    ld [$00ff], sp                                ; $7ddf: $08 $ff $00
    ld d, h                                       ; $7de2: $54
    xor e                                         ; $7de3: $ab
    ld a, [hl+]                                   ; $7de4: $2a
    nop                                           ; $7de5: $00
    ld bc, $0154                                  ; $7de6: $01 $54 $01
    ld a, [bc]                                    ; $7de9: $0a
    ld bc, HeaderLogo                             ; $7dea: $01 $04 $01
    xor d                                         ; $7ded: $aa
    add l                                         ; $7dee: $85
    ld [$aa00], sp                                ; $7def: $08 $00 $aa
    ld bc, $ab55                                  ; $7df2: $01 $55 $ab
    inc c                                         ; $7df5: $0c
    rlca                                          ; $7df6: $07
    ld bc, $3804                                  ; $7df7: $01 $04 $38
    ld h, b                                       ; $7dfa: $60
    xor e                                         ; $7dfb: $ab
    ret c                                         ; $7dfc: $d8

    db $10                                        ; $7dfd: $10
    jr nc, jr_0a5_7e28                            ; $7dfe: $30 $28

    cp $01                                        ; $7e00: $fe $01
    rst $00                                       ; $7e02: $c7
    rst $38                                       ; $7e03: $ff
    db $e3                                        ; $7e04: $e3
    ld b, b                                       ; $7e05: $40
    rst $18                                       ; $7e06: $df
    inc b                                         ; $7e07: $04
    ld c, b                                       ; $7e08: $48
    adc e                                         ; $7e09: $8b
    nop                                           ; $7e0a: $00
    ld e, $00                                     ; $7e0b: $1e $00
    inc h                                         ; $7e0d: $24
    nop                                           ; $7e0e: $00
    ld l, b                                       ; $7e0f: $68
    ld c, b                                       ; $7e10: $48
    adc b                                         ; $7e11: $88
    inc de                                        ; $7e12: $13
    dec b                                         ; $7e13: $05
    ld c, b                                       ; $7e14: $48
    ld bc, $0760                                  ; $7e15: $01 $60 $07
    add b                                         ; $7e18: $80
    nop                                           ; $7e19: $00
    ld [hl+], a                                   ; $7e1a: $22
    ld [$4400], sp                                ; $7e1b: $08 $00 $44
    nop                                           ; $7e1e: $00
    ld de, $0006                                  ; $7e1f: $11 $06 $00
    ld d, l                                       ; $7e22: $55
    nop                                           ; $7e23: $00
    ei                                            ; $7e24: $fb
    nop                                           ; $7e25: $00
    nop                                           ; $7e26: $00
    ld l, a                                       ; $7e27: $6f

jr_0a5_7e28:
    add b                                         ; $7e28: $80
    rst $18                                       ; $7e29: $df
    nop                                           ; $7e2a: $00
    ld [hl], a                                    ; $7e2b: $77
    adc b                                         ; $7e2c: $88
    xor $40                                       ; $7e2d: $ee $40
    ld de, $5f40                                  ; $7e2f: $11 $40 $5f
    add h                                         ; $7e32: $84
    ld bc, $004f                                  ; $7e33: $01 $4f $00
    add h                                         ; $7e36: $84
    ld bc, $4971                                  ; $7e37: $01 $71 $49
    ld sp, $3200                                  ; $7e3a: $31 $00 $32
    nop                                           ; $7e3d: $00
    inc b                                         ; $7e3e: $04
    ld b, b                                       ; $7e3f: $40
    inc b                                         ; $7e40: $04
    ld bc, $0421                                  ; $7e41: $01 $21 $04
    nop                                           ; $7e44: $00
    inc b                                         ; $7e45: $04
    ld c, c                                       ; $7e46: $49
    nop                                           ; $7e47: $00
    inc d                                         ; $7e48: $14
    ld bc, $142b                                  ; $7e49: $01 $2b $14
    rlca                                          ; $7e4c: $07
    xor e                                         ; $7e4d: $ab
    nop                                           ; $7e4e: $00
    nop                                           ; $7e4f: $00
    ld a, [hl]                                    ; $7e50: $7e
    ld bc, $00dd                                  ; $7e51: $01 $dd $00
    halt                                          ; $7e54: $76
    add hl, bc                                    ; $7e55: $09
    rst $28                                       ; $7e56: $ef
    stop                                          ; $7e57: $10 $00
    cp $01                                        ; $7e59: $fe $01
    sub $29                                       ; $7e5b: $d6 $29
    jp hl                                         ; $7e5d: $e9


    rla                                           ; $7e5e: $17
    jp nc, Jump_0a5_502d                          ; $7e5f: $d2 $2d $50

    add c                                         ; $7e62: $81
    ret nc                                        ; $7e63: $d0

    ld b, $55                                     ; $7e64: $06 $55
    add b                                         ; $7e66: $80
    rlca                                          ; $7e67: $07
    add b                                         ; $7e68: $80
    add b                                         ; $7e69: $80
    ld d, h                                       ; $7e6a: $54
    add b                                         ; $7e6b: $80
    ld h, b                                       ; $7e6c: $60
    adc d                                         ; $7e6d: $8a
    jr nc, jr_0a5_7e71                            ; $7e6e: $30 $01

    or [hl]                                       ; $7e70: $b6

jr_0a5_7e71:
    add hl, bc                                    ; $7e71: $09
    di                                            ; $7e72: $f3
    rst $38                                       ; $7e73: $ff
    ld d, d                                       ; $7e74: $52
    rst $38                                       ; $7e75: $ff
    ld b, l                                       ; $7e76: $45
    cp b                                          ; $7e77: $b8
    ret c                                         ; $7e78: $d8

    rlca                                          ; $7e79: $07
    ld a, [hl+]                                   ; $7e7a: $2a
    sbc $0f                                       ; $7e7b: $de $0f
    cp $07                                        ; $7e7d: $fe $07
    ld l, [hl]                                    ; $7e7f: $6e
    inc c                                         ; $7e80: $0c
    ld d, b                                       ; $7e81: $50
    nop                                           ; $7e82: $00
    ld [bc], a                                    ; $7e83: $02
    jr nz, jr_0a5_7e86                            ; $7e84: $20 $00

jr_0a5_7e86:
    inc d                                         ; $7e86: $14
    db $10                                        ; $7e87: $10
    ld b, b                                       ; $7e88: $40
    dec bc                                        ; $7e89: $0b
    ld bc, $0184                                  ; $7e8a: $01 $84 $01
    ld bc, $e0c0                                  ; $7e8d: $01 $c0 $e0
    nop                                           ; $7e90: $00
    push hl                                       ; $7e91: $e5
    nop                                           ; $7e92: $00
    rst $38                                       ; $7e93: $ff
    rst $08                                       ; $7e94: $cf
    rst $38                                       ; $7e95: $ff
    adc d                                         ; $7e96: $8a
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    inc b                                         ; $7e99: $04
    db $f4                                        ; $7e9a: $f4
    rst $38                                       ; $7e9b: $ff
    jp c, Jump_0a5_74ff                           ; $7e9c: $da $ff $74

    inc b                                         ; $7e9f: $04
    nop                                           ; $7ea0: $00
    db $f4                                        ; $7ea1: $f4
    rst $38                                       ; $7ea2: $ff
    ld d, d                                       ; $7ea3: $52
    ld e, d                                       ; $7ea4: $5a
    inc c                                         ; $7ea5: $0c
    ld [$fc81], sp                                ; $7ea6: $08 $81 $fc
    ld sp, $bfc0                                  ; $7ea9: $31 $c0 $bf
    cp h                                          ; $7eac: $bc
    inc e                                         ; $7ead: $1c
    ld bc, $ff58                                  ; $7eae: $01 $58 $ff
    ldh [$29], a                                  ; $7eb1: $e0 $29
    inc bc                                        ; $7eb3: $03
    db $10                                        ; $7eb4: $10
    ld [bc], a                                    ; $7eb5: $02
    add b                                         ; $7eb6: $80
    add hl, de                                    ; $7eb7: $19
    ld a, [$fdfd]                                 ; $7eb8: $fa $fd $fd
    nop                                           ; $7ebb: $00
    ld [bc], a                                    ; $7ebc: $02
    ld a, [$fd05]                                 ; $7ebd: $fa $05 $fd
    ld [bc], a                                    ; $7ec0: $02
    db $eb                                        ; $7ec1: $eb
    inc d                                         ; $7ec2: $14
    rst $10                                       ; $7ec3: $d7
    ld c, b                                       ; $7ec4: $48
    jr z, @+$72                                   ; $7ec5: $28 $70

    ld e, c                                       ; $7ec7: $59
    ld d, l                                       ; $7ec8: $55
    xor e                                         ; $7ec9: $ab
    ldh [$0a], a                                  ; $7eca: $e0 $0a
    xor d                                         ; $7ecc: $aa
    ld d, l                                       ; $7ecd: $55
    ld e, a                                       ; $7ece: $5f
    ld bc, $aea1                                  ; $7ecf: $01 $a1 $ae
    ld d, c                                       ; $7ed2: $51
    ld [hl], a                                    ; $7ed3: $77
    adc c                                         ; $7ed4: $89
    cp $01                                        ; $7ed5: $fe $01
    ret nc                                        ; $7ed7: $d0

    ld e, c                                       ; $7ed8: $59
    nop                                           ; $7ed9: $00
    ld a, e                                       ; $7eda: $7b
    add h                                         ; $7edb: $84
    db $fd                                        ; $7edc: $fd
    add d                                         ; $7edd: $82
    ld l, d                                       ; $7ede: $6a
    sub l                                         ; $7edf: $95
    push de                                       ; $7ee0: $d5
    xor d                                         ; $7ee1: $aa
    jr nz, @+$71                                  ; $7ee2: $20 $6f

    sub b                                         ; $7ee4: $90
    or b                                          ; $7ee5: $b0
    add hl, sp                                    ; $7ee6: $39
    cp a                                          ; $7ee7: $bf
    ld b, b                                       ; $7ee8: $40
    ld e, a                                       ; $7ee9: $5f
    and b                                         ; $7eea: $a0
    xor e                                         ; $7eeb: $ab

jr_0a5_7eec:
    ld b, $54                                     ; $7eec: $06 $54
    rst $10                                       ; $7eee: $d7
    jr z, jr_0a5_7eec                             ; $7eef: $28 $fb

    inc b                                         ; $7ef1: $04
    or b                                          ; $7ef2: $b0
    add hl, bc                                    ; $7ef3: $09
    add sp, $19                                   ; $7ef4: $e8 $19
    rst $18                                       ; $7ef6: $df
    ld b, b                                       ; $7ef7: $40
    jr nz, @-$3e                                  ; $7ef8: $20 $c0

    add hl, hl                                    ; $7efa: $29

    db $5c, $00, $4e, $04, $01, $70, $00, $00, $04, $48, $02, $68, $20, $00, $09, $fd
    db $04, $48, $01, $00, $05, $08, $04, $88, $03, $10, $52, $18, $00, $10, $58, $e3
    db $14, $40, $76, $38, $10, $68, $04, $04, $09, $04, $08, $49, $28, $ff, $44, $08
    db $10, $40, $8c, $18, $10, $50, $90, $18, $38, $28, $40, $20, $da, $58, $ff, $c0
    db $58, $53, $10, $b5, $88, $74, $48, $0f, $58, $84, $18, $9c, $20, $a4, $30, $ff
    db $ac, $10, $e4, $18, $4c, $b0, $10, $78, $28, $51, $22, $09, $4f, $09, $04, $68
    db $ff, $82, $11, $65, $49, $9f, $01, $e5, $08, $04, $b8, $c7, $58, $7c, $49, $10
    db $40, $ff, $b4, $31, $f0, $19, $24, $69, $10, $70, $04, $c0, $14, $62, $40, $78
    db $30, $ca, $ff, $00, $6a, $e7, $38, $04, $28, $83, $59, $b3, $10, $00, $31, $ab
    db $02, $28, $30, $ff, $34, $20, $00, $5a, $34, $0a, $04, $58, $70, $4a, $de, $3a
    db $71, $50, $e0, $0a, $ff, $3a, $32, $6c, $4a, $10, $40, $24, $30, $64, $28, $1c
    db $23, $2c, $63, $4e, $0b, $f0, $c9, $38, $30, $18, $3c, $3a, $7c, $0b

    jr jr_0a5_7fbb                                ; $7fb9: $18 $00

jr_0a5_7fbb:
    ld e, a                                       ; $7fbb: $5f
    inc b                                         ; $7fbc: $04
    ld bc, $00c0                                  ; $7fbd: $01 $c0 $00
    ld bc, $1200                                  ; $7fc0: $01 $00 $12
    ld l, b                                       ; $7fc3: $68

jr_0a5_7fc4:
    ld c, $b8                                     ; $7fc4: $0e $b8
    ld sp, $0420                                  ; $7fc6: $31 $20 $04
    ld h, b                                       ; $7fc9: $60
    rst $38                                       ; $7fca: $ff
    ld d, b                                       ; $7fcb: $50
    ld h, b                                       ; $7fcc: $60
    ld h, e                                       ; $7fcd: $63
    ld [hl], b                                    ; $7fce: $70
    ld d, h                                       ; $7fcf: $54
    jr jr_0a5_7fd6                                ; $7fd0: $18 $04

    jr @+$34                                      ; $7fd2: $18 $32

    jr z, @+$14                                   ; $7fd4: $28 $12

jr_0a5_7fd6:
    ld c, b                                       ; $7fd6: $48
    dec l                                         ; $7fd7: $2d
    ld h, b                                       ; $7fd8: $60
    ld b, l                                       ; $7fd9: $45

jr_0a5_7fda:
    jr jr_0a5_7fda                                ; $7fda: $18 $fe

    inc b                                         ; $7fdc: $04
    ld b, b                                       ; $7fdd: $40
    rlca                                          ; $7fde: $07
    jr c, @+$72                                   ; $7fdf: $38 $70

    jr c, @-$7e                                   ; $7fe1: $38 $80

    ld d, b                                       ; $7fe3: $50
    sub b                                         ; $7fe4: $90
    ld a, b                                       ; $7fe5: $78
    ld de, $5fe0                                  ; $7fe6: $11 $e0 $5f
    ld d, b                                       ; $7fe9: $50
    inc b                                         ; $7fea: $04
    nop                                           ; $7feb: $00
    jr c, jr_0a5_7fc4                             ; $7fec: $38 $d6

    ld e, d                                       ; $7fee: $5a
    adc h                                         ; $7fef: $8c
    ld sp, $0000                                  ; $7ff0: $31 $00 $00
    rst $38                                       ; $7ff3: $ff
    ld a, a                                       ; $7ff4: $7f
    call c, $f502                                 ; $7ff5: $dc $02 $f5
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
